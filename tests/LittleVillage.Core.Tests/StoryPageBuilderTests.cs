using LittleVillage.Core.Story;

namespace LittleVillage.Core.Tests;

public sealed class InkStoryEngineTests
{
    private static InkStoryEngine Load(string ink)
    {
        var engine = new InkStoryEngine();
        engine.Load(InkTestStory.FromSource(ink));
        return engine;
    }

    [Fact]
    public void Background_persists_between_pages_until_changed()
    {
        var engine = Load("""
            # tlo: las
            Pierwsza. # dalej
            Druga. # dalej
            # tlo: chata
            Trzecia.
            -> END
            """);

        Assert.Equal("las", engine.StartNew().BackgroundKey);
        Assert.Equal("las", engine.Continue().BackgroundKey);
        Assert.Equal("chata", engine.Continue().BackgroundKey);
    }

    [Fact]
    public void Tags_with_polish_letters_and_case_are_accepted()
    {
        var page = Load("""
            # Tło: bór
            # Tytuł: Noc
            Tekst.
            -> END
            """).StartNew();

        Assert.Equal("bór", page.BackgroundKey);
        Assert.Equal(StoryBlockKind.Title, page.Blocks[0].Kind);
    }

    [Fact]
    public void Default_question_is_used_when_scene_has_none()
    {
        var page = Load("""
            Tekst.
            * [A] -> END
            * [B] -> END
            """).StartNew();

        Assert.Equal("Co robisz?", page.Question);
        Assert.Equal(["A", "B"], page.Choices.Select(c => c.Text));
    }

    [Fact]
    public void Choosing_out_of_range_throws()
    {
        var engine = Load("""
            * [A] -> END
            """);
        engine.StartNew();

        Assert.Throws<ArgumentOutOfRangeException>(() => engine.Choose(5));
    }

    [Fact]
    public void Item_name_falls_back_to_list_identifier_without_function()
    {
        var engine = Load("""
            LIST Rzeczy = stary_klucz
            VAR ekwipunek = (stary_klucz)
            Tekst.
            -> END
            """);
        engine.StartNew();

        Assert.Equal("stary klucz", Assert.Single(engine.GetInventory()).Name);
    }
}
