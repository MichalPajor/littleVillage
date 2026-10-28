namespace LittleVillage.Core.Story;

/// <summary>Rodzaj elementu tekstu wyświetlanego w oknie fabuły.</summary>
public enum StoryBlockKind
{
    /// <summary>Mały nagłówek kursywą, np. „Rozdział pierwszy” (tag <c># rozdzial:</c>).</summary>
    Chapter,

    /// <summary>Duży tytuł z podkreśleniem (tag <c># tytul:</c>).</summary>
    Title,

    /// <summary>Zwykły akapit tekstu fabuły.</summary>
    Paragraph,

    /// <summary>Ozdobny separator (tag <c># ozdobnik</c>).</summary>
    Divider,
}

/// <summary>Pojedynczy element strony fabuły.</summary>
/// <param name="Kind">Rodzaj elementu.</param>
/// <param name="Text">Tekst (pusty dla separatora).</param>
/// <param name="HasDropCap">Czy akapit zaczyna się inicjałem (pierwszy akapit po tytule).</param>
/// <param name="Reveal">
/// Warstwy tła odsłaniane, gdy gracz doczyta do tego akapitu (tag <c># pokaz: nazwa</c>),
/// zapisane jako lista rozdzielona przecinkami — patrz <see cref="RevealList"/>.
/// </param>
public sealed record StoryBlock(StoryBlockKind Kind, string Text, bool HasDropCap = false, string? Reveal = null, bool AnnouncesChanges = false);

/// <summary>Opcja wyboru dostępna na końcu strony.</summary>
/// <param name="Index">Indeks wyboru w silniku ink.</param>
/// <param name="Text">Tekst wyświetlany graczowi.</param>
public sealed record StoryChoice(int Index, string Text);

/// <summary>Jak kończy się strona fabuły.</summary>
public enum PageEnding
{
    /// <summary>Gracz musi wybrać jedną z opcji.</summary>
    Choices,

    /// <summary>Brak wyborów — przycisk „Dalej” od razu dostępny (tag <c># dalej</c>).</summary>
    Continue,

    /// <summary>Koniec opowieści.</summary>
    End,

    /// <summary>
    /// Śmierć bohatera (tag <c># smierc</c> na końcu sceny). Zapis nie jest nadpisywany ani usuwany —
    /// gracz wraca do strony z decyzją, która do niej doprowadziła.
    /// </summary>
    Death,
}

/// <summary>Jedna „strona” fabuły: tekst, tło i sposób przejścia dalej.</summary>
/// <param name="AlreadyRevealed">
/// Warstwy tła odsłonięte już na wcześniejszych stronach z tym samym tłem — widoczne od razu
/// (lista rozdzielona przecinkami, <see cref="RevealList"/>).
/// </param>
/// <param name="ResetsInventory">Tobołek zmienił się na tej stronie po cichu — bez „+ / − przedmiot”.</param>
/// <param name="RequiresFullVersion">Ostatnia strona darmowej części — przejście dalej wymaga pełnej wersji.</param>
/// <param name="RequestsReview">Dobry moment na prośbę o ocenę gry (tag <c># ocena</c>).</param>
public sealed record StoryPage(
    IReadOnlyList<StoryBlock> Blocks,
    IReadOnlyList<StoryChoice> Choices,
    PageEnding Ending,
    string? BackgroundKey,
    string? Question,
    string? AlreadyRevealed = null,
    bool ResetsInventory = false,
    bool RequiresFullVersion = false,
    bool RequestsReview = false);

/// <summary>Przedmiot w ekwipunku gracza.</summary>
/// <param name="Id">Nazwa elementu listy ink, np. <c>kaganek</c>.</param>
/// <param name="Name">Nazwa wyświetlana.</param>
/// <param name="Description">Opis (opcjonalny).</param>
public sealed record InventoryItem(string Id, string Name, string? Description);

/// <summary>Karta w zapiskach (bestiariuszu): jedna istota i odsłonięte dotąd wpisy o niej.</summary>
/// <param name="Id">Klucz istoty, np. <c>licho</c> (z elementów listy ink <c>licho_1</c>, <c>licho_2</c>…).</param>
/// <param name="Title">Tytuł z najnowszego wpisu — karta może zmienić nazwę, gdy bohater dowie się więcej.</param>
/// <param name="Notes">Treść kolejnych wpisów, od najstarszego.</param>
/// <param name="NoteIds">Elementy listy ink odpowiadające wpisom.</param>
public sealed record JournalEntry(string Id, string Title, IReadOnlyList<string> Notes, IReadOnlyList<string> NoteIds)
{
    /// <summary>Klucz istoty z nazwy wpisu: <c>licho_2</c> → <c>licho</c>.</summary>
    public static string CardOf(string noteId)
    {
        var cut = noteId.LastIndexOf('_');
        return cut > 0 && cut < noteId.Length - 1 && noteId[(cut + 1)..].All(char.IsDigit) ? noteId[..cut] : noteId;
    }
}

/// <summary>Rozdział z księgi opowieści (lista ink <c>Rozdzialy</c>).</summary>
/// <param name="Id">Element listy, np. <c>rozdz_5</c>.</param>
/// <param name="Name">Nazwa jak w tagu <c># rozdzial:</c>, np. „Rozdział piąty”.</param>
/// <param name="RequiresFullVersion">Rozdział za darmową częścią.</param>
public sealed record StoryChapter(string Id, string Name, bool RequiresFullVersion);

/// <summary>Zakończenie opowieści (lista ink <c>Zakonczenia</c>).</summary>
public sealed record StoryEnding(string Id, string Title);
