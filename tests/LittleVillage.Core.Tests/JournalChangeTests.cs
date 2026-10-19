using LittleVillage.Core.Story;

namespace LittleVillage.Core.Tests;

public sealed class JournalChangeTests
{
    private static JournalEntry Card(string id, string title, params string[] notes) =>
        new(id, title, notes.Select(n => "tekst " + n).ToArray(), notes);

    [Theory]
    [InlineData("licho_2", "licho")]
    [InlineData("pan_lasu_10", "pan_lasu")]
    [InlineData("odmieniec_1", "odmieniec")]
    [InlineData("bez_numeru", "bez_numeru")]
    public void Card_key_strips_the_stage_number(string noteId, string card)
    {
        Assert.Equal(card, JournalEntry.CardOf(noteId));
    }

    [Fact]
    public void New_card_and_new_note_on_a_known_card_are_reported()
    {
        var before = new[] { Card("licho", "Jednooka żebraczka", "licho_1") };
        var after = new[] { Card("licho", "Licho", "licho_1", "licho_2"), Card("mamuny", "Mamuny", "mamuny_1") };

        var change = JournalChange.Between(before, after);

        Assert.Equal([("Licho", false), ("Mamuny", true)], change.Updates.Select(u => (u.Title, u.IsNewCard)));
    }

    [Fact]
    public void Same_journal_is_no_change()
    {
        var cards = new[] { Card("licho", "Licho", "licho_1") };
        Assert.True(JournalChange.Between(cards, cards).IsEmpty);
    }
}
