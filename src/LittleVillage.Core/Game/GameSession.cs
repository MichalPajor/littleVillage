using LittleVillage.Core.Persistence;
using LittleVillage.Core.Scenes;
using LittleVillage.Core.Story;

namespace LittleVillage.Core.Game;

/// <inheritdoc />
public sealed class GameSession(
    IStoryEngine engine,
    IStoryAssetSource assets,
    ISaveGameRepository saves,
    TimeProvider timeProvider) : IGameSession
{
    private readonly SemaphoreSlim _initializationLock = new(1, 1);

    public bool IsInitialized { get; private set; }

    public StoryPage? CurrentPage { get; private set; }

    public BackgroundCatalog Backgrounds { get; private set; } = BackgroundCatalog.Empty;

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
        return await ShowAsync(engine.StartNew(), cancellationToken);
    }

    public async Task<StoryPage> ContinueSavedGameAsync(CancellationToken cancellationToken = default)
    {
        EnsureInitialized();

        var snapshot = await saves.LoadAsync(cancellationToken)
            ?? throw new InvalidOperationException("Brak zapisanej gry.");

        engine.RestoreState(snapshot.InkState, snapshot.Page.BackgroundKey, RevealList.AllOn(snapshot.Page));
        CurrentPage = snapshot.Page;
        return snapshot.Page;
    }

    public async Task<StoryPage> AdvanceAsync(int? choiceIndex, CancellationToken cancellationToken = default)
    {
        EnsureInitialized();
        var page = CurrentPage ?? throw new InvalidOperationException("Gra nie została rozpoczęta.");

        var next = page.Ending switch
        {
            PageEnding.Choices when choiceIndex is { } index => engine.Choose(index),
            PageEnding.Choices => throw new InvalidOperationException("Ta strona wymaga wybrania opcji."),
            PageEnding.Continue => engine.Continue(),
            PageEnding.Death => throw new InvalidOperationException("Bohater nie żyje — wczytaj ostatni zapis."),
            _ => throw new InvalidOperationException("Opowieść dobiegła końca."),
        };

        return await ShowAsync(next, cancellationToken);
    }

    public IReadOnlyList<InventoryItem> GetInventory() =>
        IsInitialized && CurrentPage is not null ? engine.GetInventory() : [];

    public async Task FinishAsync(CancellationToken cancellationToken = default)
    {
        CurrentPage = null;
        await saves.DeleteAsync(cancellationToken);
    }

    private async Task<StoryPage> ShowAsync(StoryPage page, CancellationToken cancellationToken)
    {
        CurrentPage = page;

        if (page.Ending == PageEnding.End)
        {
            await saves.DeleteAsync(cancellationToken);
        }
        else if (page.Ending == PageEnding.Death)
        {
            // Zapis zostaje na stronie z decyzją, która doprowadziła do śmierci — stąd gracz spróbuje jeszcze raz.
        }
        else
        {
            var snapshot = new GameSnapshot(GameSnapshot.CurrentFormatVersion, engine.SaveState(), page, timeProvider.GetUtcNow());
            await saves.SaveAsync(snapshot, cancellationToken);
        }

        return page;
    }

    private void EnsureInitialized()
    {
        if (!IsInitialized)
        {
            throw new InvalidOperationException("Sesja gry nie została zainicjalizowana.");
        }
    }
}
