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
public sealed record StoryBlock(StoryBlockKind Kind, string Text, bool HasDropCap = false);

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
}

/// <summary>Jedna „strona” fabuły: tekst, tło i sposób przejścia dalej.</summary>
public sealed record StoryPage(
    IReadOnlyList<StoryBlock> Blocks,
    IReadOnlyList<StoryChoice> Choices,
    PageEnding Ending,
    string? BackgroundKey,
    string? Question);

/// <summary>Przedmiot w ekwipunku gracza.</summary>
/// <param name="Id">Nazwa elementu listy ink, np. <c>kaganek</c>.</param>
/// <param name="Name">Nazwa wyświetlana.</param>
/// <param name="Description">Opis (opcjonalny).</param>
public sealed record InventoryItem(string Id, string Name, string? Description);
