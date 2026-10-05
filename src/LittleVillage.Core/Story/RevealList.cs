namespace LittleVillage.Core.Story;

/// <summary>
/// Lista nazw odsłanianych warstw tła zapisana jako tekst („pies, topielec”).
/// Tekst zamiast kolekcji, bo rekordy stron porównujemy i zapisujemy wartościowo.
/// </summary>
public static class RevealList
{
    public static IReadOnlyList<string> Split(string? value) =>
        string.IsNullOrWhiteSpace(value)
            ? []
            : value.Split(',', StringSplitOptions.RemoveEmptyEntries | StringSplitOptions.TrimEntries)
                .Distinct(StringComparer.OrdinalIgnoreCase)
                .ToArray();

    public static string? Join(IEnumerable<string> names)
    {
        var list = names.Where(n => !string.IsNullOrWhiteSpace(n)).Select(n => n.Trim())
            .Distinct(StringComparer.OrdinalIgnoreCase).ToArray();
        return list.Length == 0 ? null : string.Join(", ", list);
    }

    /// <summary>Wszystko, co widać na stronie po jej doczytaniu: wcześniej odsłonięte + odsłonięte na niej.</summary>
    public static IReadOnlyList<string> AllOn(StoryPage page) =>
        Split(page.AlreadyRevealed).Concat(page.Blocks.SelectMany(b => Split(b.Reveal)))
            .Distinct(StringComparer.OrdinalIgnoreCase).ToArray();
}
