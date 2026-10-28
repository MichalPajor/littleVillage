using LittleVillage.Core.Persistence;
using LittleVillage.Core.Scenes;
using LittleVillage.Core.Story;

namespace LittleVillage.Core.Game;

/// <inheritdoc />
public sealed class GameSession(
    IStoryEngine engine,
    IStoryAssetSource assets,
    ISaveGameRepository saves,
    IProgressRepository progressStore,
    IFullVersion fullVersion,
    TimeProvider timeProvider) : IGameSession
{
    /// <summary>Ile ostatnich decyzji pamiętamy do przypomnienia „Poprzednio…”.</summary>
    private const int RecentChoiceCount = 3;

    private readonly SemaphoreSlim _initializationLock = new(1, 1);
    private readonly List<string> _recentChoices = [];
    private IReadOnlyList<StoryChapter> _chapters = [];
    private IReadOnlyList<StoryEnding> _endings = [];
    private GameProgress _progress = GameProgress.Empty;
    private string? _chapter;
    private string? _chapterTitle;
    private GameRecap? _recap;

    public bool IsInitialized { get; private set; }

    public StoryPage? CurrentPage { get; private set; }

    public BackgroundCatalog Backgrounds { get; private set; } = BackgroundCatalog.Empty;

    public EndingEntry? LastEnding { get; private set; }

    public async Task InitializeAsync(CancellationToken cancellationToken = default)
    {
        await _initializationLock.WaitAsync(cancellationToken);
        try
        {
            if (IsInitialized)
            {
                return;
            }

            var storyJson = await assets.LoadStoryJsonAsync(cancellationToken);
            var backgroundsJson = await assets.LoadBackgroundsJsonAsync(cancellationToken);

            // Parsowanie fabuły bywa kosztowne przy dużych historiach — poza wątkiem UI.
            await Task.Run(() => engine.Load(storyJson), cancellationToken);
            Backgrounds = BackgroundCatalog.Parse(backgroundsJson);
            _chapters = engine.GetChapters();
            _endings = engine.GetEndings();
            _progress = await progressStore.LoadAsync(cancellationToken);
            IsInitialized = true;
        }
        finally
        {
            _initializationLock.Release();
        }
    }

    public Task<bool> HasSavedGameAsync(CancellationToken cancellationToken = default) =>
        saves.ExistsAsync(cancellationToken);

    public async Task<StoryPage> StartNewGameAsync(CancellationToken cancellationToken = default)
    {
        EnsureInitialized();
        ResetRun(null, null, []);
        return await ShowAsync(engine.StartNew(), cancellationToken);
    }

    public async Task<StoryPage> ContinueSavedGameAsync(CancellationToken cancellationToken = default)
    {
        EnsureInitialized();

        var snapshot = await saves.LoadAsync(cancellationToken)
            ?? throw new InvalidOperationException("Brak zapisanej gry.");

        Restore(snapshot);
        _recap = new GameRecap(ChapterName(snapshot.Chapter), snapshot.ChapterTitle, snapshot.RecentChoices ?? [], snapshot.SavedAt);
        return snapshot.Page;
    }

    public async Task<StoryPage> StartChapterAsync(string chapterId, CancellationToken cancellationToken = default)
    {
        EnsureInitialized();

        var checkpoint = _progress.Chapters.FirstOrDefault(c => c.Chapter == chapterId)
            ?? throw new InvalidOperationException("Gracz jeszcze nie doszedł do tego rozdziału.");
        if (_chapters.FirstOrDefault(c => c.Id == chapterId) is { RequiresFullVersion: true } && !fullVersion.IsUnlocked)
        {
            throw new FullVersionRequiredException();
        }

        Restore(checkpoint.Snapshot);
        await saves.SaveAsync(checkpoint.Snapshot with { SavedAt = timeProvider.GetUtcNow() }, cancellationToken);
        return checkpoint.Snapshot.Page;
    }

    public async Task<StoryPage> AdvanceAsync(int? choiceIndex, CancellationToken cancellationToken = default)
    {
        EnsureInitialized();
        var page = CurrentPage ?? throw new InvalidOperationException("Gra nie została rozpoczęta.");

        if (page.RequiresFullVersion && !fullVersion.IsUnlocked)
        {
            throw new FullVersionRequiredException();
        }

        var next = page.Ending switch
        {
            PageEnding.Choices when choiceIndex is { } index => Choose(page, index),
            PageEnding.Choices => throw new InvalidOperationException("Ta strona wymaga wybrania opcji."),
            PageEnding.Continue => engine.Continue(),
            PageEnding.Death => throw new InvalidOperationException("Bohater nie żyje — wczytaj ostatni zapis."),
            _ => throw new InvalidOperationException("Opowieść dobiegła końca."),
        };

        return await ShowAsync(next, cancellationToken);
    }

    public IReadOnlyList<InventoryItem> GetInventory() =>
        IsInitialized && CurrentPage is not null ? engine.GetInventory() : [];

    public IReadOnlyList<JournalEntry> GetJournal() =>
        IsInitialized && CurrentPage is not null ? engine.GetJournal() : [];

    public IReadOnlyList<ChapterEntry> GetChapters() =>
        _chapters.Select(chapter =>
        {
            var checkpoint = _progress.Chapters.FirstOrDefault(c => c.Chapter == chapter.Id);
            return new ChapterEntry(chapter.Id, chapter.Name, checkpoint?.Title, checkpoint is not null, chapter.RequiresFullVersion);
        }).ToArray();

    public IReadOnlyList<EndingEntry> GetEndings() =>
        _endings.Select(ending => new EndingEntry(ending.Id, ending.Title, _progress.Endings.Contains(ending.Id))).ToArray();

    public GameRecap? TakeRecap()
    {
        var recap = _recap;
        _recap = null;
        return recap;
    }

    public async Task FinishAsync(CancellationToken cancellationToken = default)
    {
        CurrentPage = null;
        await saves.DeleteAsync(cancellationToken);
    }

    private StoryPage Choose(StoryPage page, int index)
    {
        if (page.Choices.FirstOrDefault(c => c.Index == index) is { } choice)
        {
            _recentChoices.Add(choice.Text);
            if (_recentChoices.Count > RecentChoiceCount)
            {
                _recentChoices.RemoveAt(0);
            }
        }

        return engine.Choose(index);
    }

    private async Task<StoryPage> ShowAsync(StoryPage page, CancellationToken cancellationToken)
    {
        CurrentPage = page;
        var enteredChapter = EnterChapter(page);
        var snapshot = new GameSnapshot(GameSnapshot.CurrentFormatVersion, engine.SaveState(), page, timeProvider.GetUtcNow(),
            _chapter, _chapterTitle, _recentChoices.ToArray());

        if (page.Ending == PageEnding.End)
        {
            await saves.DeleteAsync(cancellationToken);
            await RecordEndingAsync(cancellationToken);
        }
        else if (page.Ending == PageEnding.Death)
        {
            // Zapis zostaje na stronie z decyzją, która doprowadziła do śmierci — stąd gracz spróbuje jeszcze raz.
        }
        else
        {
            await saves.SaveAsync(snapshot, cancellationToken);
            if (enteredChapter)
            {
                await SaveCheckpointAsync(snapshot, cancellationToken);
            }
        }

        return page;
    }

    /// <summary>Strona z nagłówkiem nowego rozdziału (inna nazwa niż dotąd) — zaczyna rozdział.</summary>
    /// <remarks>Tytuł bierzemy z każdego nagłówka — prolog ma kilka części („Chata”, „Dach”…), przypomnienie pokazuje bieżącą.</remarks>
    private bool EnterChapter(StoryPage page)
    {
        var name = page.Blocks.FirstOrDefault(b => b.Kind == StoryBlockKind.Chapter)?.Text;
        var chapter = _chapters.FirstOrDefault(c => c.Name == name);
        if (chapter is null)
        {
            return false;
        }

        _chapterTitle = page.Blocks.FirstOrDefault(b => b.Kind == StoryBlockKind.Title)?.Text ?? _chapterTitle;
        if (chapter.Id == _chapter)
        {
            return false;
        }

        _chapter = chapter.Id;
        return true;
    }

    private async Task SaveCheckpointAsync(GameSnapshot snapshot, CancellationToken cancellationToken)
    {
        var checkpoint = new ChapterCheckpoint(snapshot.Chapter!, snapshot.ChapterTitle, snapshot);
        _progress = _progress with { Chapters = [.. _progress.Chapters.Where(c => c.Chapter != checkpoint.Chapter), checkpoint] };
        await progressStore.SaveAsync(_progress, cancellationToken);
    }

    private async Task RecordEndingAsync(CancellationToken cancellationToken)
    {
        LastEnding = null;
        if (engine.GetReachedEnding() is not { } id)
        {
            return;
        }

        if (!_progress.Endings.Contains(id))
        {
            _progress = _progress with { Endings = [.. _progress.Endings, id] };
            await progressStore.SaveAsync(_progress, cancellationToken);
        }

        LastEnding = GetEndings().FirstOrDefault(e => e.Id == id);
    }

    private void Restore(GameSnapshot snapshot)
    {
        engine.RestoreState(snapshot.InkState, snapshot.Page.BackgroundKey, RevealList.AllOn(snapshot.Page));
        CurrentPage = snapshot.Page;
        ResetRun(snapshot.Chapter, snapshot.ChapterTitle, snapshot.RecentChoices ?? []);
    }

    private void ResetRun(string? chapter, string? chapterTitle, IEnumerable<string> recentChoices)
    {
        _chapter = chapter;
        _chapterTitle = chapterTitle;
        _recentChoices.Clear();
        _recentChoices.AddRange(recentChoices);
        _recap = null;
        LastEnding = null;
    }

    private string? ChapterName(string? chapterId) => _chapters.FirstOrDefault(c => c.Id == chapterId)?.Name;

    private void EnsureInitialized()
    {
        if (!IsInitialized)
        {
            throw new InvalidOperationException("Sesja gry nie została zainicjalizowana.");
        }
    }
}
