namespace LittleVillage.Core.Story;

/// <summary>Konwencje nazw używane w plikach .ink.</summary>
public sealed class InkStoryOptions
{
    /// <summary>Zmienna ink (typu LIST) przechowująca ekwipunek.</summary>
    public string InventoryVariable { get; init; } = "ekwipunek";

    /// <summary>Funkcja ink zwracająca nazwę przedmiotu: <c>=== function nazwa_przedmiotu(p)</c>.</summary>
    public string ItemNameFunction { get; init; } = "nazwa_przedmiotu";

    /// <summary>Funkcja ink zwracająca opis przedmiotu: <c>=== function opis_przedmiotu(p)</c>.</summary>
    public string ItemDescriptionFunction { get; init; } = "opis_przedmiotu";

    /// <summary>Pytanie nad opcjami, gdy scena nie ustawi własnego tagiem <c># pytanie:</c>.</summary>
    public string DefaultQuestion { get; init; } = "Co robisz?";
}
