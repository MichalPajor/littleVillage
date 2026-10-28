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

    /// <summary>Zmienna ink (typu LIST) z odsłoniętymi wpisami zapisków (bestiariusza).</summary>
    public string JournalVariable { get; init; } = "zapiski";

    /// <summary>Funkcja ink zwracająca tytuł karty dla wpisu: <c>=== function tytul_zapisku(z)</c>.</summary>
    public string JournalTitleFunction { get; init; } = "tytul_zapisku";

    /// <summary>Funkcja ink wypisująca treść wpisu: <c>=== function tresc_zapisku(z)</c>.</summary>
    public string JournalTextFunction { get; init; } = "tresc_zapisku";

    /// <summary>Lista ink z rozdziałami do wyboru w menu (kolejność = kolejność w opowieści).</summary>
    public string ChaptersList { get; init; } = "Rozdzialy";

    /// <summary>Funkcja ink zwracająca nazwę rozdziału, taką jak w tagu <c># rozdzial:</c>.</summary>
    public string ChapterNameFunction { get; init; } = "nazwa_rozdzialu";

    /// <summary>Funkcja ink: czy rozdział jest w pełnej wersji.</summary>
    public string ChapterFullVersionFunction { get; init; } = "rozdzial_w_pelnej_wersji";

    /// <summary>Lista ink ze wszystkimi zakończeniami.</summary>
    public string EndingsList { get; init; } = "Zakonczenia";

    /// <summary>Funkcja ink zwracająca zakończenie, do którego doszedł gracz.</summary>
    public string EndingFunction { get; init; } = "zakonczenie";

    /// <summary>Funkcja ink zwracająca tytuł zakończenia.</summary>
    public string EndingTitleFunction { get; init; } = "tytul_zakonczenia";

    /// <summary>Pytanie nad opcjami, gdy scena nie ustawi własnego tagiem <c># pytanie:</c>.</summary>
    public string DefaultQuestion { get; init; } = "Co robisz?";
}
