namespace LittleVillage.Core.Story;

/// <summary>Zmiana ekwipunku między dwiema stronami — co trafiło do tobołka, a co z niego zniknęło.</summary>
public sealed record InventoryChange(IReadOnlyList<InventoryItem> Added, IReadOnlyList<InventoryItem> Removed)
{
    public bool IsEmpty => Added.Count == 0 && Removed.Count == 0;

    /// <summary>Porównuje ekwipunek przed i po (po identyfikatorach); kolejność jak w ekwipunku.</summary>
    public static InventoryChange Between(IReadOnlyList<InventoryItem> before, IReadOnlyList<InventoryItem> after)
    {
        var beforeIds = before.Select(i => i.Id).ToHashSet(StringComparer.Ordinal);
        var afterIds = after.Select(i => i.Id).ToHashSet(StringComparer.Ordinal);
        return new InventoryChange(
            after.Where(i => !beforeIds.Contains(i.Id)).ToArray(),
            before.Where(i => !afterIds.Contains(i.Id)).ToArray());
    }
}
