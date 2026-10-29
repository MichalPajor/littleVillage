using LittleVillage.Core.Game;
using LittleVillage.Core.Persistence;
using LittleVillage.Core.Story;

namespace LittleVillage.Core.Tests;

public sealed class GameSessionTests : IDisposable
{
    private readonly string _saveDirectory = Path.Combine(Path.GetTempPath(), $"lv-save-{Guid.NewGuid():N}");

    public void Dispose()
    {
        if (Directory.Exists(_saveDirectory))
        {
            Directory.Delete(_saveDirectory, recursive: true);
        }
    }

    private readonly FakeFullVersion _fullVersion = new() { IsUnlocked = true };

    private readonly FixedStoryLanguage _language = new("pl");

    private GameSession CreateSession() =>
        new(new InkStoryEngine(), new FakeAssets(), new JsonFileSaveGameRepository(_saveDirectory), new JsonFileProgressRepository(_saveDirectory), _fullVersion, _language, TimeProvider.System);

    [Fact]
    public async Task New_game_is_autosaved_and_can_be_continued_in_a_new_session()
    {
        var first = CreateSession();
        await first.InitializeAsync();
        var started = await first.StartNewGameAsync();

        var second = CreateSession();
        await second.InitializeAsync();
        Assert.True(await second.HasSavedGameAsync());

        var restored = await second.ContinueSavedGameAsync();

        Assert.Equal(started.Ending, restored.Ending);
        Assert.Equal(started.BackgroundKey, restored.BackgroundKey);
        Assert.Equal(started.Blocks, restored.Blocks);
        Assert.Equal(started.Choices, restored.Choices);
        Assert.Contains(second.GetInventory(), i => i.Id == "siekiera");

        // Wznowiona gra przyjmuje wybór dokładnie tak, jak przerwana.
        Assert.Equal("budowa_las", (await second.AdvanceAsync(0)).BackgroundKey);
    }

    [Fact]
    public async Task Reaching_the_end_deletes_the_save()
    {
        var session = CreateSession();
        await session.InitializeAsync();
        await session.StartNewGameAsync();

        // Nad jeziorem, zostaje w szałasie, rano zostaje, mówi chłopcu prawdę, bierze figurkę i krzesiwo, idzie dalej,
        // sprzedaje figurkę handlarzowi i mówi żonie prawdę; strony bez wyborów przewijamy „Dalej”.
        // + wybory rozdzialu pierwszego, a dalej same pierwsze opcje (nadmiarowe zostaja w kolejce)
        var choices = new Queue<int>([2, 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, .. Enumerable.Repeat(0, 80)]);
        var page = session.CurrentPage!;
        var gates = 0;
        while (page.Ending != PageEnding.End)
        {
            gates += page.RequiresFullVersion ? 1 : 0;
            page = await session.AdvanceAsync(page.Ending == PageEnding.Choices ? choices.Dequeue() : null);
        }

        Assert.Equal(1, gates);
        Assert.NotNull(session.LastEnding);
        Assert.Contains(session.GetEndings(), e => e.Id == session.LastEnding!.Id && e.Discovered);

        // Odkryte zakończenie i początki rozdziałów zostają po skończonej grze — także w nowej sesji.
        var next = CreateSession();
        await next.InitializeAsync();
        Assert.Single(next.GetEndings(), e => e.Discovered);
        Assert.All(next.GetChapters(), c => Assert.True(c.Reached));

        Assert.Equal(PageEnding.End, page.Ending);
        Assert.False(await session.HasSavedGameAsync());
    }

    [Fact]
    public async Task Choice_page_requires_a_choice()
    {
        var session = CreateSession();
        await session.InitializeAsync();
        await session.StartNewGameAsync();

        await Assert.ThrowsAsync<InvalidOperationException>(() => session.AdvanceAsync(null));
    }

    [Fact]
    public async Task Free_part_ends_after_chapter_four_until_the_full_version_is_bought()
    {
        _fullVersion.IsUnlocked = false;
        var session = CreateSession();
        await session.InitializeAsync();
        await session.StartNewGameAsync();

        var choices = new Queue<int>([2, 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, .. Enumerable.Repeat(0, 80)]);
        var page = session.CurrentPage!;
        while (!page.RequiresFullVersion)
        {
            page = await session.AdvanceAsync(page.Ending == PageEnding.Choices ? choices.Dequeue() : null);
        }

        Assert.Contains(page.Blocks, b => b.Text.Contains("Koniec rozdziału czwartego", StringComparison.Ordinal));
        await Assert.ThrowsAsync<FullVersionRequiredException>(() => session.AdvanceAsync(null));

        // Zapis zostaje na ostatniej darmowej stronie — po zakupie gra rusza stąd dalej.
        var resumed = CreateSession();
        await resumed.InitializeAsync();
        Assert.True((await resumed.ContinueSavedGameAsync()).RequiresFullVersion);

        _fullVersion.IsUnlocked = true;
        var next = await resumed.AdvanceAsync(null);
        Assert.Contains(next.Blocks, b => b.Kind == StoryBlockKind.Chapter && b.Text == "Rozdział piąty");
    }

    [Fact]
    public async Task Chapters_come_from_the_story_and_the_paid_part_starts_at_chapter_five()
    {
        var session = CreateSession();
        await session.InitializeAsync();

        var chapters = session.GetChapters();
        Assert.Equal(21, chapters.Count);
        Assert.Equal("Prolog", chapters[0].Name);
        Assert.Equal("Rozdział dwudziesty", chapters[^1].Name);
        Assert.Equal(["Prolog", "Rozdział pierwszy", "Rozdział drugi", "Rozdział trzeci", "Rozdział czwarty"],
            chapters.Where(c => !c.RequiresFullVersion).Select(c => c.Name));
        Assert.All(chapters, c => Assert.False(c.Reached));
        Assert.Equal(8, session.GetEndings().Count);
        Assert.All(session.GetEndings(), e => Assert.False(string.IsNullOrWhiteSpace(e.Title)));
    }

    [Fact]
    public async Task A_reached_chapter_can_be_started_again_from_its_first_page()
    {
        var session = CreateSession();
        await session.InitializeAsync();
        await session.StartNewGameAsync();

        var choices = new Queue<int>([2, 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, .. Enumerable.Repeat(0, 80)]);
        var page = session.CurrentPage!;
        while (!page.Blocks.Any(b => b.Kind == StoryBlockKind.Chapter && b.Text == "Rozdział drugi"))
        {
            page = await session.AdvanceAsync(page.Ending == PageEnding.Choices ? choices.Dequeue() : null);
        }

        var chapterTwo = page;
        page = await session.AdvanceAsync(page.Ending == PageEnding.Choices ? choices.Dequeue() : null);

        var chapters = session.GetChapters();
        Assert.True(chapters.Single(c => c.Id == "rozdz_1").Reached);
        Assert.Equal("Szkoła", chapters.Single(c => c.Id == "rozdz_2").Title);
        Assert.False(chapters.Single(c => c.Id == "rozdz_3").Reached);

        var again = CreateSession();
        await again.InitializeAsync();
        var start = await again.StartChapterAsync("rozdz_2");
        Assert.Equal(chapterTwo.Blocks, start.Blocks);
        Assert.Equal(chapterTwo.Choices, start.Choices);

        // Rozdział od piątego wzwyż — tylko z pełną wersją (tu: jeszcze nieodwiedzony).
        await Assert.ThrowsAsync<InvalidOperationException>(() => again.StartChapterAsync("rozdz_5"));
    }

    [Fact]
    public async Task After_language_change_the_saved_page_and_chapters_are_rewritten_in_the_new_language()
    {
        var session = CreateSession();
        await session.InitializeAsync();
        await session.StartNewGameAsync();

        var choices = new Queue<int>([2, 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, .. Enumerable.Repeat(0, 80)]);
        var page = session.CurrentPage!;
        while (!page.Blocks.Any(b => b.Kind == StoryBlockKind.Chapter && b.Text == "Rozdział drugi"))
        {
            page = await session.AdvanceAsync(page.Ending == PageEnding.Choices ? choices.Dequeue() : null);
        }

        // Kilka stron dalej, na stronie z wyborami.
        do
        {
            page = await session.AdvanceAsync(page.Ending == PageEnding.Choices ? choices.Dequeue() : null);
        }
        while (page.Ending != PageEnding.Choices);

        var polish = page;

        // Gracz zmienia język w ustawieniach — ta sama sesja wczytuje fabułę od nowa.
        _language.Current = "xx";
        Assert.False(session.IsInitialized);
        await session.InitializeAsync();
        Assert.Null(session.CurrentPage);

        var translated = await session.ContinueSavedGameAsync();
        Assert.Equal(polish.BackgroundKey, translated.BackgroundKey);
        Assert.Equal(polish.Blocks.Count, translated.Blocks.Count);
        Assert.All(translated.Blocks.Where(b => b.Kind == StoryBlockKind.Paragraph), b => Assert.StartsWith("[xx] ", b.Text));
        Assert.Equal(polish.Choices.Select(c => $"[xx] {c.Text}"), translated.Choices.Select(c => c.Text));
        Assert.StartsWith("[xx] ", translated.Question);

        // Przypomnienie: rozdział w nowym języku, bez decyzji podjętych jeszcze po polsku.
        var recap = session.TakeRecap();
        Assert.Equal("[xx] Rozdział drugi", recap!.ChapterName);
        Assert.Empty(recap.RecentChoices);

        // Księga opowieści w nowym języku — także w nowej sesji.
        var again = CreateSession();
        await again.InitializeAsync();
        Assert.Equal("[xx] Szkoła", again.GetChapters().Single(c => c.Id == "rozdz_2").Title);
        var start = await again.StartChapterAsync("rozdz_2");
        Assert.Contains(start.Blocks, b => b.Kind == StoryBlockKind.Chapter && b.Text == "[xx] Rozdział drugi");

        // Gra toczy się dalej po przetłumaczonej stronie, a zapis wraca do polskiego tak samo.
        var next = await session.AdvanceAsync(translated.Choices[0].Index);
        Assert.All(next.Blocks.Where(b => b.Kind == StoryBlockKind.Paragraph), b => Assert.StartsWith("[xx] ", b.Text));

        _language.Current = "pl";
        var back = CreateSession();
        await back.InitializeAsync();
        var restored = await back.ContinueSavedGameAsync();
        Assert.Equal(next.BackgroundKey, restored.BackgroundKey);
        Assert.Equal(next.Blocks.Select(b => b.Text.Replace("[xx] ", "")), restored.Blocks.Select(b => b.Text));
    }

    [Fact]
    public async Task Continuing_a_save_recalls_the_chapter_and_the_last_decisions()
    {
        var session = CreateSession();
        await session.InitializeAsync();
        var page = await session.StartNewGameAsync();
        var picked = new List<string>();
        foreach (var index in new[] { 2, 1, 0, 0 })
        {
            while (page.Ending != PageEnding.Choices)
            {
                page = await session.AdvanceAsync(null);
            }

            picked.Add(page.Choices[index].Text);
            page = await session.AdvanceAsync(page.Choices[index].Index);
        }

        var resumed = CreateSession();
        await resumed.InitializeAsync();
        await resumed.ContinueSavedGameAsync();
        var recap = resumed.TakeRecap();

        Assert.NotNull(recap);
        Assert.Equal("Prolog", recap.ChapterName);
        Assert.Equal(picked[^3..], recap.RecentChoices);
        Assert.Null(resumed.TakeRecap());
    }

    private sealed class FakeFullVersion : IFullVersion
    {
        public bool IsUnlocked { get; set; }
    }

    private sealed class FakeAssets : IStoryAssetSource
    {
        // „xx” — próbne tłumaczenie: oryginał z tekstem poprzedzonym znacznikiem języka.
        public Task<string> LoadStoryJsonAsync(string language, CancellationToken cancellationToken = default) =>
            Task.FromResult(language == "xx" ? InkTestStory.GameIn("xx") : InkTestStory.Game);

        public Task<string> LoadBackgroundsJsonAsync(CancellationToken cancellationToken = default) =>
            File.ReadAllTextAsync(TestPaths.BackgroundsJson, cancellationToken);
    }
}
