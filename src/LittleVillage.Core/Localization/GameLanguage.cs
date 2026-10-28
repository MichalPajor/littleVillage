using System.Globalization;

namespace LittleVillage.Core.Localization;

/// <summary>Język gry: kod (jak w nazwach kultur .NET) i nazwa we własnym języku — tak pokazujemy go w ustawieniach.</summary>
public sealed record GameLanguage(string Code, string NativeName)
{
    /// <summary>Język oryginału — napisy i fabuła, do których wracamy, gdy brakuje tłumaczenia.</summary>
    public const string DefaultCode = "pl";

    /// <summary>Język dla telefonów, których języka gra nie zna.</summary>
    public const string FallbackCode = "en";

    /// <summary>Wszystkie planowane języki; dostępne są tylko te, które mają już tłumaczenie.</summary>
    public static IReadOnlyList<GameLanguage> All { get; } =
    [
        new("pl", "Polski"),
        new("en", "English"),
        new("de", "Deutsch"),
        new("es", "Español"),
        new("pt", "Português (Brasil)"),
        new("fr", "Français"),
        new("it", "Italiano"),
        new("cs", "Čeština"),
        new("sk", "Slovenčina"),
        new("ja", "日本語"),
    ];

    /// <summary>
    /// Wybór gracza (<paramref name="preferred"/>), a bez niego język telefonu — o ile gra go zna.
    /// W przeciwnym razie angielski (a dopóki nie ma tłumaczenia angielskiego — polski).
    /// </summary>
    public static string Resolve(string? preferred, CultureInfo deviceCulture, IReadOnlyCollection<string> available)
    {
        if (preferred is not null && available.Contains(preferred))
        {
            return preferred;
        }

        for (var culture = deviceCulture; !string.IsNullOrEmpty(culture.Name); culture = culture.Parent)
        {
            if (available.Contains(culture.TwoLetterISOLanguageName))
            {
                return culture.TwoLetterISOLanguageName;
            }
        }

        return available.Contains(FallbackCode) ? FallbackCode : DefaultCode;
    }
}
