using LittleVillage.Core.Game;
using LittleVillage.Core.Localization;

namespace LittleVillage.Services;

/// <summary>Język gry: wybrany przez gracza albo — domyślnie — język telefonu.</summary>
public interface ILanguageService : IStoryLanguage
{
    /// <summary>Języki, które mają już tłumaczenie.</summary>
    IReadOnlyList<GameLanguage> Available { get; }

    /// <summary>Wybór gracza; <c>null</c> — jak w telefonie.</summary>
    string? Preferred { get; }

    /// <summary>Ustawia napisy interfejsu i czcionki języka gry (wywoływane przy starcie, zanim powstanie pierwszy ekran).</summary>
    void Apply();

    /// <summary>Zapamiętuje wybór gracza; zwraca <c>true</c>, gdy zmienił się język gry.</summary>
    bool SetPreferred(string? code);
}
