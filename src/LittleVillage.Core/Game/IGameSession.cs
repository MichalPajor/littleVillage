using LittleVillage.Core.Scenes;
using LittleVillage.Core.Story;

namespace LittleVillage.Core.Game;

/// <summary>Przebieg rozgrywki: nowa gra, kontynuacja, kolejne strony, autozapis.</summary>
public interface IGameSession
{
    bool IsInitialized { get; }

    /// <summary>Aktualnie wyświetlana strona (null przed rozpoczęciem gry).</summary>
    StoryPage? CurrentPage { get; }

    BackgroundCatalog Backgrounds { get; }

    /// <summary>Zakończenie, do którego doszedł gracz na ostatniej stronie (null w trakcie opowieści).</summary>
    EndingEntry? LastEnding { get; }

    /// <summary>Wczytuje fabułę i tła. Wywoływane raz, na ekranie powitalnym.</summary>
    Task InitializeAsync(CancellationToken cancellationToken = default);

    Task<bool> HasSavedGameAsync(CancellationToken cancellationToken = default);

    Task<StoryPage> StartNewGameAsync(CancellationToken cancellationToken = default);

    Task<StoryPage> ContinueSavedGameAsync(CancellationToken cancellationToken = default);

    /// <summary>Zaczyna od pierwszej strony rozdziału, do którego gracz już kiedyś doszedł (nadpisuje autozapis).</summary>
    /// <exception cref="FullVersionRequiredException">Rozdział jest w pełnej wersji, a ta nie jest kupiona.</exception>
    Task<StoryPage> StartChapterAsync(string chapterId, CancellationToken cancellationToken = default);

    /// <summary>Przechodzi dalej: wybiera opcję (gdy strona ma wybory) lub kontynuuje.</summary>
    /// <exception cref="FullVersionRequiredException">Koniec darmowej części, a pełna wersja nie jest kupiona.</exception>
    Task<StoryPage> AdvanceAsync(int? choiceIndex, CancellationToken cancellationToken = default);

    IReadOnlyList<InventoryItem> GetInventory();

    IReadOnlyList<JournalEntry> GetJournal();

    /// <summary>Rozdziały z księgi opowieści: które już odwiedzone (można od nich zacząć), które jeszcze nie.</summary>
    IReadOnlyList<ChapterEntry> GetChapters();

    /// <summary>Wszystkie zakończenia i to, które gracz już odkrył.</summary>
    IReadOnlyList<EndingEntry> GetEndings();

    /// <summary>Przypomnienie po wczytaniu zapisu (raz — kolejne wywołania zwracają null).</summary>
    GameRecap? TakeRecap();

    /// <summary>Kończy grę i usuwa zapis.</summary>
    Task FinishAsync(CancellationToken cancellationToken = default);
}

/// <summary>Rozdział w menu „Rozdziały”.</summary>
/// <param name="Title">Tytuł rozdziału — znany dopiero, gdy gracz do niego doszedł.</param>
/// <param name="Reached">Gracz był już w tym rozdziale — można od niego zacząć.</param>
public sealed record ChapterEntry(string Id, string Name, string? Title, bool Reached, bool RequiresFullVersion);

/// <summary>Zakończenie w menu „Zakończenia”.</summary>
public sealed record EndingEntry(string Id, string Title, bool Discovered);

/// <summary>„Poprzednio…”: gdzie gracz przerwał i co ostatnio wybrał.</summary>
public sealed record GameRecap(string? ChapterName, string? ChapterTitle, IReadOnlyList<string> RecentChoices, DateTimeOffset SavedAt);
