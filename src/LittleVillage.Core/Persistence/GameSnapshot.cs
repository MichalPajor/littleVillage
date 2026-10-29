using LittleVillage.Core.Story;

namespace LittleVillage.Core.Persistence;

/// <summary>Zapis gry: stan silnika ink + aktualnie wyświetlana strona.</summary>
/// <param name="Chapter">Rozdział, w którym gracz jest (element listy ink <c>Rozdzialy</c>).</param>
/// <param name="ChapterTitle">Tytuł rozdziału z jego pierwszej strony.</param>
/// <param name="RecentChoices">Ostatnie decyzje gracza (od najstarszej) — do przypomnienia „Poprzednio…”.</param>
/// <param name="Language">Język tekstu strony (null — zapis sprzed tłumaczeń, po polsku).</param>
/// <param name="Origin">Skąd strona się wzięła — by po zmianie języka napisać ją od nowa.</param>
public sealed record GameSnapshot(
    int FormatVersion,
    string InkState,
    StoryPage Page,
    DateTimeOffset SavedAt,
    string? Chapter = null,
    string? ChapterTitle = null,
    IReadOnlyList<string>? RecentChoices = null,
    string? Language = null,
    PageOrigin? Origin = null)
{
    public const int CurrentFormatVersion = 1;
}

/// <summary>
/// Stan sprzed strony i ruch, który do niej doprowadził. Tłumaczenia mają tę samą strukturę co oryginał,
/// więc ten sam stan wczytany do fabuły w innym języku daje tę samą stronę — w nowym języku.
/// </summary>
/// <param name="InkState">Stan ink przed stroną; null — początek opowieści.</param>
/// <param name="BackgroundKey">Tło przed stroną.</param>
/// <param name="Revealed">Warstwy tła odsłonięte przed stroną.</param>
/// <param name="ChoiceIndex">Wybrana opcja; null — strona po „dalej”.</param>
public sealed record PageOrigin(string? InkState, string? BackgroundKey, IReadOnlyList<string>? Revealed, int? ChoiceIndex);
