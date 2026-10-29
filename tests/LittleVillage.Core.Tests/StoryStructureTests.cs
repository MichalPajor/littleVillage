using System.Text.RegularExpressions;
using LittleVillage.Core.Story;
using LittleVillage.InkBuild;

namespace LittleVillage.Core.Tests;

public sealed partial class StoryStructureTests
{
    private const string Original = """
        # tlo: las
        # tytul: Las
        Szedł przez las. # pokaz: wilk
        * [Iść dalej] Poszedł. -> END
        * [Wrócić] Wrócił. -> END
        """;

    [Fact]
    public void Translated_text_and_translatable_tags_keep_the_structure()
    {
        var translated = InkTestStory.FromSource("""
            # tlo: las
            # tytul: Forest
            He walked through the forest. # pokaz: wilk
            * [Go on] He went. -> END
            * [Go back] He returned. -> END
            """);

        Assert.Empty(StoryStructure.Compare(InkTestStory.FromSource(Original), translated));
    }

    [Theory]
    [InlineData("# tlo: pole")]                       // inne tło
    [InlineData("# tlo: las\n# dalej")]               // dodany znacznik
    [InlineData("# tlo: las\n~ temp x = 1")]          // dodana logika
    public void Changed_structure_is_reported(string firstLine)
    {
        var changed = InkTestStory.FromSource(Original.Replace("# tlo: las", firstLine));

        Assert.NotEmpty(StoryStructure.Compare(InkTestStory.FromSource(Original), changed));
    }

    [Fact]
    public void Missing_choice_is_reported_with_nearby_original_text()
    {
        var changed = InkTestStory.FromSource(Original.Replace("* [Wrócić] Wrócił. -> END", ""));

        var difference = Assert.Single(StoryStructure.Compare(InkTestStory.FromSource(Original), changed).Take(1));
        Assert.False(string.IsNullOrEmpty(difference.Original));
    }

    [Fact]
    public void Game_story_translated_by_machine_keeps_its_structure() =>
        Assert.Empty(StoryStructure.Compare(InkTestStory.Game, InkTestStory.GameIn("xx")));

    /// <summary>Każde tłumaczenie w Story/&lt;język&gt;: kompiluje się, ma strukturę oryginału, a nazwy rozdziałów w tagach zgadzają się z księgą.</summary>
    [Fact]
    public void Every_translation_matches_the_original()
    {
        var stories = Directory.GetDirectories(Path.GetDirectoryName(TestPaths.MainInk)!)
            .Where(d => File.Exists(Path.Combine(d, "main.ink")))
            .Select(d => (Language: Path.GetFileName(d), Json: InkTestStory.FromFile(Path.Combine(d, "main.ink"))))
            .Append((Language: "pl", Json: InkTestStory.Game));

        foreach (var (language, json) in stories)
        {
            Assert.True(StoryStructure.Compare(InkTestStory.Game, json).Count == 0, $"Tłumaczenie „{language}” odbiega od oryginału.");
            AssertChapterTagsMatchBook(json);
        }
    }

    [Fact]
    public void Chapter_tags_of_machine_translation_match_its_book() => AssertChapterTagsMatchBook(InkTestStory.GameIn("xx"));

    // Strona z „# rozdzial: …” zaczyna rozdział tylko wtedy, gdy nazwa jest taka jak w funkcji nazwa_rozdzialu.
    private static void AssertChapterTagsMatchBook(string json)
    {
        var engine = new InkStoryEngine();
        engine.Load(json);
        var names = engine.GetChapters().Select(c => c.Name).ToHashSet();

        var tags = ChapterTag().Matches(json).Select(m => System.Text.Json.JsonSerializer.Deserialize<string>($"\"{m.Groups[1].Value}\"")!).ToArray();
        Assert.NotEmpty(tags);
        Assert.All(tags, tag => Assert.Contains(tag, names));
    }

    [GeneratedRegex(@"""\^rozdzial:\s*((?:[^""\\]|\\.)*)""")]
    private static partial Regex ChapterTag();
}
