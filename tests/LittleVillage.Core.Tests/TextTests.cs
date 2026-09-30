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
