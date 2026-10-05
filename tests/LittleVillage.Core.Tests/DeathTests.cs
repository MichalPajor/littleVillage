using LittleVillage.Core.Game;
using LittleVillage.Core.Persistence;
using LittleVillage.Core.Story;

namespace LittleVillage.Core.Tests;

/// <summary>Śmierć bohatera (tag <c># smierc</c>): koniec gry z powrotem do strony z fatalną decyzją.</summary>
public sealed class DeathTests : IDisposable
{
    private const string Story = """
        # tlo: las
        Mokradła. Ktoś woła twoje imię.
        * [Idę za głosem.]
            Bagno wciągnęło cię po szyję. # smierc
            -> END
        * [Idę dalej.]
            Głos ucichł.
            -> END
        """;

    private readonly string _saveDirectory = Path.Combine(Path.GetTempPath(), $"lv-death-{Guid.NewGuid():N}");

    public void Dispose()
    {
        if (Directory.Exists(_saveDirectory))
        {
            Directory.Delete(_saveDirectory, recursive: true);
        }
    }

    private GameSession CreateSession() =>
        new(new InkStoryEngine(), new Assets(InkTestStory.FromSource(Story)), new JsonFileSaveGameRepository(_saveDirectory), TimeProvider.System);

    [Fact]
    public void Death_tag_ends_the_page_with_death()
    {
        var engine = new InkStoryEngine();
        engine.Load(InkTestStory.FromSource(Story));
        engine.StartNew();

        Assert.Equal(PageEnding.Death, engine.Choose(0).Ending);
    }

    [Fact]
    public void Surviving_path_is_a_normal_end()
    {
        var engine = new InkStoryEngine();
        engine.Load(InkTestStory.FromSource(Story));
        engine.StartNew();

        Assert.Equal(PageEnding.End, engine.Choose(1).Ending);
    }

    [Fact]
    public async Task After_death_the_save_still_points_at_the_fatal_choice()
    {
        var session = CreateSession();
        await session.InitializeAsync();
        var choicePage = await session.StartNewGameAsync();

        var death = await session.AdvanceAsync(0);
        Assert.Equal(PageEnding.Death, death.Ending);
        Assert.True(await session.HasSavedGameAsync());

        var again = await session.ContinueSavedGameAsync();
        Assert.Equal(choicePage.Blocks, again.Blocks);
        Assert.Equal(PageEnding.Choices, again.Ending);

        // Tym razem gracz wybiera inaczej i przeżywa.
        Assert.Equal(PageEnding.End, (await session.AdvanceAsync(1)).Ending);
    }

    [Fact]
    public async Task Cannot_advance_from_death()
    {
        var session = CreateSession();
        await session.InitializeAsync();
        await session.StartNewGameAsync();
        await session.AdvanceAsync(0);

        await Assert.ThrowsAsync<InvalidOperationException>(() => session.AdvanceAsync(null));
    }

    private sealed class Assets(string story) : IStoryAssetSource
    {
        public Task<string> LoadStoryJsonAsync(CancellationToken cancellationToken = default) => Task.FromResult(story);

        public Task<string> LoadBackgroundsJsonAsync(CancellationToken cancellationToken = default) =>
            File.ReadAllTextAsync(TestPaths.BackgroundsJson, cancellationToken);
    }
}
