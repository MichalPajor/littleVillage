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
        await first.StartNewGameAsync();
        var afterChoice = await first.AdvanceAsync(1);

        var second = CreateSession();
        await second.InitializeAsync();
        Assert.True(await second.HasSavedGameAsync());

        var restored = await second.ContinueSavedGameAsync();

        Assert.Equal(afterChoice.Ending, restored.Ending);
        Assert.Equal(afterChoice.BackgroundKey, restored.BackgroundKey);
        Assert.Equal(afterChoice.Blocks, restored.Blocks);
        Assert.Contains(second.GetInventory(), i => i.Id == "siekiera");
    }

    [Fact]
    public async Task Reaching_the_end_deletes_the_save()
    {
        var session = CreateSession();
        await session.InitializeAsync();
        await session.StartNewGameAsync();

        var page = await session.AdvanceAsync(2);
        while (page.Ending == PageEnding.Continue)
        {
            page = await session.AdvanceAsync(null);
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
