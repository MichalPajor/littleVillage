using LittleVillage.Core.Story;

namespace LittleVillage.Core.Tests;

/// <summary>Testy prawdziwej fabuły gry — pilnują, by zmiany w plikach .ink niczego nie zepsuły.</summary>
public sealed class GameStoryTests
{
    private static InkStoryEngine CreateEngine()
    {
        var engine = new InkStoryEngine();
        engine.Load(InkTestStory.Game);
        return engine;
    }

    [Fact]
    public void Story_compiles_without_errors()
    {
        var result = InkBuild.InkStoryCompiler.Compile(TestPaths.MainInk);

        Assert.True(result.Succeeded, string.Join(Environment.NewLine, result.Diagnostics));
        Assert.DoesNotContain(result.Diagnostics, d => d.Severity == Ink.ErrorType.Warning);
    }

    [Fact]
    public void Prologue_opens_with_chapter_title_and_village_background()
    {
        var page = CreateEngine().StartNew();

        Assert.Equal("zapadlina", page.BackgroundKey);
        Assert.Equal(StoryBlockKind.Chapter, page.Blocks[0].Kind);
        Assert.Equal("Prolog", page.Blocks[0].Text);
        Assert.Equal(StoryBlockKind.Title, page.Blocks[1].Kind);
        Assert.Equal("Zapadlina", page.Blocks[1].Text);
        Assert.True(page.Blocks[2].HasDropCap);
        Assert.Single(page.Blocks, b => b.HasDropCap);
        Assert.Single(page.Blocks, b => b.Kind == StoryBlockKind.Divider);
    }

    [Fact]
    public void Maciek_chooses_one_of_three_places_for_the_hut()
    {
        var page = CreateEngine().StartNew();

        Assert.Equal(PageEnding.Choices, page.Ending);
        Assert.Equal("Gdzie Maciek postawi chatę?", page.Question);
        Assert.Equal(
            ["Na skraju lasu, od wschodu.", "Przy mokradłach, na północy.", "Nad jeziorem."],
            page.Choices.Select(c => c.Text));
    }

    [Fact]
    public void Starting_inventory_is_what_Maciek_carries()
    {
        var engine = CreateEngine();
        engine.StartNew();

        var inventory = engine.GetInventory();

        Assert.Equal(["siekiera", "chleb"], inventory.Select(i => i.Id));
        Assert.All(inventory, i => Assert.False(string.IsNullOrWhiteSpace(i.Description)));
    }

    [Theory]
    [InlineData(0)]
    [InlineData(1)]
    [InlineData(2)]
    public void Every_choice_reaches_the_end_without_leftover_tags(int choice)
    {
        var engine = CreateEngine();
        engine.StartNew();
        var page = engine.Choose(choice);

        for (var guard = 0; page.Ending == PageEnding.Continue && guard < 20; guard++)
        {
            page = engine.Continue();
        }

        Assert.Equal(PageEnding.End, page.Ending);
        Assert.Equal("zapadlina", page.BackgroundKey);
        Assert.All(page.Blocks, b => Assert.DoesNotContain("#", b.Text));
    }

    [Fact]
    public void Saved_state_restores_the_choice_page()
    {
        var engine = CreateEngine();
        engine.StartNew();
        var state = engine.SaveState();

        var restored = CreateEngine();
        restored.RestoreState(state, "zapadlina");

        Assert.Equal(PageEnding.End, restored.Choose(2).Ending);
    }
}
