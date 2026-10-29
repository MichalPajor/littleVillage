using LittleVillage.Core.Story;
using LittleVillage.Core.Text;

namespace LittleVillage.Core.Tests;

public sealed class TextTests
{
    [Theory]
    [InlineData(1, "I")]
    [InlineData(3, "III")]
    [InlineData(4, "IV")]
    [InlineData(9, "IX")]
    [InlineData(14, "XIV")]
    public void Roman_numerals(int number, string expected) => Assert.Equal(expected, RomanNumeral.From(number));

    [Theory]
    [InlineData("ziemia była sucha i szara", "ziemia była sucha i\u00A0szara")]
    [InlineData("Z czoła wystrzeliło, a w borze", "Z\u00A0czoła wystrzeliło, a\u00A0w\u00A0borze")]
    [InlineData("stała woda – brunatna", "stała woda\u00A0– brunatna")]
    [InlineData("Marysia i tata", "Marysia i\u00A0tata")]
    [InlineData("bór i", "bór i")]
    public void Short_words_and_dashes_stay_with_their_neighbours(string text, string expected) => Assert.Equal(expected, BookTypography.KeepTogether(text));

    [Theory]
    [InlineData("cs", "šel k lesu", "šel k\u00A0lesu")]
    [InlineData("sk", "išiel s otcom", "išiel s\u00A0otcom")]
    [InlineData("en", "a wolf and a dog", "a wolf and a dog")]
    [InlineData("en", "the forest – old", "the forest\u00A0– old")]
    [InlineData("en", "once more—on the threshold", "once more\u2060—on the threshold")]
    [InlineData("pl", "poszedł k lesu", "poszedł k lesu")]
    public void Short_word_rules_depend_on_language(string language, string text, string expected) =>
        Assert.Equal(expected, BookTypography.KeepTogether(text, language));

    [Fact]
    public void Italic_markup_is_split_into_runs()
    {
        var runs = InlineMarkup.Parse("Nie patrz w las. _On patrzy._ Koniec");

        Assert.Equal(
            [new TextRun("Nie patrz w las. ", false), new TextRun("On patrzy.", true), new TextRun(" Koniec", false)],
            runs);
    }

    [Theory]
    [InlineData("tlo: wies_noc", "tlo", "wies_noc")]
    [InlineData(" Tło :  Wieś nocą ", "tlo", "Wieś nocą")]
    [InlineData("ROZDZIAŁ: Pierwszy", "rozdzial", "Pierwszy")]
    [InlineData("dalej", "dalej", null)]
    public void Tags_are_normalized(string raw, string name, string? value) =>
        Assert.Equal(new StoryTag(name, value), StoryTag.Parse(raw));
}
