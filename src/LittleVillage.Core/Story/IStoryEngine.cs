namespace LittleVillage.Core.Story;

/// <summary>Abstrakcja silnika fabuły — oddziela resztę gry od biblioteki ink.</summary>
public interface IStoryEngine
{
    /// <summary>Czy fabuła została wczytana.</summary>
    bool IsLoaded { get; }

    /// <summary>Wczytuje skompilowaną fabułę (JSON wygenerowany z plików .ink).</summary>
    void Load(string compiledStoryJson);

    /// <summary>Resetuje stan i zwraca pierwszą stronę.</summary>
    StoryPage StartNew();

    /// <summary>Wybiera opcję i zwraca kolejną stronę.</summary>
    StoryPage Choose(int choiceIndex);

    /// <summary>Kontynuuje stronę zakończoną tagiem <c># dalej</c>.</summary>
    StoryPage Continue();

    /// <summary>Serializuje stan ink (zmienne, odwiedzone sceny, przedmioty).</summary>
    string SaveState();

    /// <summary>Przywraca stan ink zapisany przez <see cref="SaveState"/>.</summary>
    /// <param name="revealed">Warstwy tła odsłonięte już na wyświetlanej stronie i wcześniej przy tym samym tle.</param>
    void RestoreState(string stateJson, string? backgroundKey, IEnumerable<string>? revealed = null);

    /// <summary>Zwraca bieżący ekwipunek gracza.</summary>
    IReadOnlyList<InventoryItem> GetInventory();

    /// <summary>Zwraca karty zapisków (bestiariusza) z wpisami odsłoniętymi dotąd przez fabułę.</summary>
    IReadOnlyList<JournalEntry> GetJournal();

    /// <summary>Wszystkie rozdziały z księgi opowieści, w kolejności opowieści.</summary>
    IReadOnlyList<StoryChapter> GetChapters();

    /// <summary>Wszystkie zakończenia opowieści.</summary>
    IReadOnlyList<StoryEnding> GetEndings();

    /// <summary>Zakończenie, do którego doszedł gracz (null przed końcem opowieści).</summary>
    string? GetReachedEnding();
}
