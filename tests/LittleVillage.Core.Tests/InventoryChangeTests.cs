using LittleVillage.Core.Story;

namespace LittleVillage.Core.Tests;

public sealed class InventoryChangeTests
{
    private static InventoryItem Item(string id) => new(id, id.ToUpperInvariant(), null);

    [Fact]
    public void Detects_added_and_removed_items_by_id()
    {
        var change = InventoryChange.Between([Item("nozyk"), Item("mak")], [Item("nozyk"), Item("ksiega")]);

        Assert.Equal(["ksiega"], change.Added.Select(i => i.Id));
        Assert.Equal(["mak"], change.Removed.Select(i => i.Id));
        Assert.False(change.IsEmpty);
    }

    [Fact]
    public void Same_inventory_is_no_change()
    {
        Assert.True(InventoryChange.Between([Item("nozyk")], [Item("nozyk")]).IsEmpty);
    }

    [Fact]
    public void Real_story_reports_the_knife_from_father()
    {
        var engine = new InkStoryEngine();
        engine.Load(InkTestStory.Game);
        var page = engine.StartNew();
        var choices = new Queue<int>([0, 1, 1, 0, 1, 0, 0, 1, 0, 1, 0, 0]);
        var before = engine.GetInventory();
        InventoryChange? knife = null;
        for (var guard = 0; guard < 2000 && knife is null && page.Ending is not (PageEnding.End or PageEnding.Death); guard++)
        {
            page = page.Ending == PageEnding.Choices ? engine.Choose(Math.Min(choices.Count > 0 ? choices.Dequeue() : 0, page.Choices.Count - 1)) : engine.Continue();
            var now = engine.GetInventory();
            var change = InventoryChange.Between(before, now);
            if (change.Added.Any(i => i.Id == "nozyk"))
            {
                knife = change;
            }

            before = now;
        }

        Assert.NotNull(knife);
        Assert.Equal("Nożyk", knife!.Added.Single(i => i.Id == "nozyk").Name);
    }
}
