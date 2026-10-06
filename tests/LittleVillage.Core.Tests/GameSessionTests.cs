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

    private GameSession CreateSession() =>
        new(new InkStoryEngine(), new FakeAssets(), new JsonFileSaveGameRepository(_saveDirectory), TimeProvider.System);

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
        var choices = new Queue<int>([2, 1, 0, 0, 0, 0, 1, 1, 0]);
        var page = session.CurrentPage!;
        while (page.Ending != PageEnding.End)
        {
            page = await session.AdvanceAsync(page.Ending == PageEnding.Choices ? choices.Dequeue() : null);
        }

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

    private sealed class FakeAssets : IStoryAssetSource
    {
        public Task<string> LoadStoryJsonAsync(CancellationToken cancellationToken = default) =>
            Task.FromResult(InkTestStory.Game);

        public Task<string> LoadBackgroundsJsonAsync(CancellationToken cancellationToken = default) =>
            File.ReadAllTextAsync(TestPaths.BackgroundsJson, cancellationToken);
    }
}
