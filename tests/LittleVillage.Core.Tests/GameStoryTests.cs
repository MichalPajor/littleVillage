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
    public void First_page_matches_mockup_layout()
    {
        var page = CreateEngine().StartNew();

        Assert.Equal("wies_noc", page.BackgroundKey);
        Assert.Equal(PageEnding.Choices, page.Ending);
        Assert.Equal("Co robisz?", page.Question);
        Assert.Equal(3, page.Choices.Count);

        Assert.Equal(StoryBlockKind.Chapter, page.Blocks[0].Kind);
        Assert.Equal("Rozdział pierwszy", page.Blocks[0].Text);
        Assert.Equal(StoryBlockKind.Title, page.Blocks[1].Kind);
        Assert.Equal(StoryBlockKind.Paragraph, page.Blocks[2].Kind);
        Assert.True(page.Blocks[2].HasDropCap);
        Assert.Equal(StoryBlockKind.Divider, page.Blocks[^1].Kind);
        Assert.Single(page.Blocks, b => b.HasDropCap);
    }

    [Fact]
    public void Starting_inventory_uses_names_from_ink()
    {
        var engine = CreateEngine();
        engine.StartNew();

        var inventory = engine.GetInventory();

        Assert.Equal(["krzesiwo", "chleb"], inventory.Select(i => i.Id));
        Assert.Equal("Pajda chleba", inventory[1].Name);
        Assert.False(string.IsNullOrWhiteSpace(inventory[1].Description));
    }

    [Fact]
    public void Barn_path_adds_lamp_pauses_and_remembers_it_at_the_end()
    {
        var engine = CreateEngine();
        engine.StartNew();

        var barn = engine.Choose(0);
        Assert.Equal(PageEnding.Continue, barn.Ending);
        Assert.Contains(engine.GetInventory(), i => i is { Id: "kaganek", Name: "Kaganek" });

        var end = engine.Continue();
        Assert.Equal(PageEnding.End, end.Ending);
        Assert.Contains(end.Blocks, b => b.Text.StartsWith("Kaganek w twojej dłoni"));
        Assert.Contains(end.Blocks, b => b.Kind == StoryBlockKind.Divider);
        Assert.Equal("wies_noc", end.BackgroundKey);
    }

    [Theory]
    [InlineData(0)]
    [InlineData(1)]
    [InlineData(2)]
    public void Every_first_choice_reaches_the_end(int choice)
    {
        var engine = CreateEngine();
        var page = engine.StartNew();
        page = engine.Choose(choice);

        for (var guard = 0; page.Ending == PageEnding.Continue && guard < 20; guard++)
        {
            page = engine.Continue();
        }

        Assert.Equal(PageEnding.End, page.Ending);
        Assert.All(page.Blocks, b => Assert.DoesNotContain("#", b.Text));
    }

    [Fact]
    public void Saved_state_restores_choices_and_inventory()
    {
        var engine = CreateEngine();
        engine.StartNew();
        engine.Choose(1);
        var state = engine.SaveState();

        var restored = CreateEngine();
        restored.RestoreState(state, "wies_noc");

        Assert.Contains(restored.GetInventory(), i => i.Id == "siekiera");
        Assert.Equal(PageEnding.End, restored.Continue().Ending);
    }
}
