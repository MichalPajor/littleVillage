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
    void RestoreState(string stateJson, string? backgroundKey);

    /// <summary>Zwraca bieżący ekwipunek gracza.</summary>
    IReadOnlyList<InventoryItem> GetInventory();
}
