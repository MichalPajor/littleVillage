using LittleVillage.Core.Localization;

namespace LittleVillage.Services;

/// <summary>Język gry: wybrany przez gracza albo — domyślnie — język telefonu.</summary>
public interface ILanguageService
{
    /// <summary>Języki, które mają już tłumaczenie.</summary>
    IReadOnlyList<GameLanguage> Available { get; }

    /// <summary>Kod języka, w którym gra właśnie mówi.</summary>
    string Current { get; }

    /// <summary>Wybór gracza; <c>null</c> — jak w telefonie.</summary>
    string? Preferred { get; }

    /// <summary>Ustawia kulturę napisów interfejsu (wywoływane przy starcie, zanim powstanie pierwszy ekran).</summary>
    void Apply();

    /// <summary>Zapamiętuje wybór gracza; zwraca <c>true</c>, gdy zmienił się język gry.</summary>
    bool SetPreferred(string? code);
}
