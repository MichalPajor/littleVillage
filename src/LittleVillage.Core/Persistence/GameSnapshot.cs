using LittleVillage.Core.Story;

namespace LittleVillage.Core.Persistence;

/// <summary>Zapis gry: stan silnika ink + aktualnie wyświetlana strona.</summary>
/// <param name="Chapter">Rozdział, w którym gracz jest (element listy ink <c>Rozdzialy</c>).</param>
/// <param name="ChapterTitle">Tytuł rozdziału z jego pierwszej strony.</param>
/// <param name="RecentChoices">Ostatnie decyzje gracza (od najstarszej) — do przypomnienia „Poprzednio…”.</param>
public sealed record GameSnapshot(
    int FormatVersion,
    string InkState,
    StoryPage Page,
    DateTimeOffset SavedAt,
    string? Chapter = null,
    string? ChapterTitle = null,
    IReadOnlyList<string>? RecentChoices = null)
{
    public const int CurrentFormatVersion = 1;
}
