namespace LittleVillage.Theme;

/// <summary>
/// Czcionki gry. Pliki rejestrujemy w <see cref="MauiProgram"/> pod aliasami poniżej, a ekrany biorą czcionki
/// języka gry: <see cref="Body"/>, <see cref="Display"/>… (w kodzie) albo zasoby <c>FontBody</c>, <c>FontDisplay</c>…
/// (w stylach, przez DynamicResource). Japoński ma własną czcionkę — Alegreya i Pirata One nie mają jego znaków.
/// </summary>
public static class Fonts
{
    public const string Alegreya = "Alegreya";
    public const string AlegreyaItalic = "AlegreyaItalic";
    public const string AlegreyaBold = "AlegreyaBold";
    public const string PirataOne = "PirataOne";

    /// <summary>Shippori Mincho (odchudzona: tools/Fonts/subset_font.py) — książkowy krój japoński.</summary>
    public const string ShipporiMincho = "ShipporiMincho";
    public const string ShipporiMinchoBold = "ShipporiMinchoBold";

    /// <summary>Tekst fabuły, opcje.</summary>
    public static string Body { get; private set; } = Alegreya;

    public static string BodyItalic { get; private set; } = AlegreyaItalic;

    public static string BodyBold { get; private set; } = AlegreyaBold;

    /// <summary>Tytuły, przyciski, numery opcji.</summary>
    public static string Display { get; private set; } = PirataOne;

    /// <summary>Czcionki dla języka gry — ekrany tworzone później już ich używają.</summary>
    public static void UseFor(string language, ResourceDictionary? resources)
    {
        var japanese = language == "ja";
        Body = japanese ? ShipporiMincho : Alegreya;
        BodyItalic = japanese ? ShipporiMincho : AlegreyaItalic;     // japoński nie zna kursywy
        BodyBold = japanese ? ShipporiMinchoBold : AlegreyaBold;
        Display = japanese ? ShipporiMinchoBold : PirataOne;

        if (resources is not null)
        {
            resources["FontBody"] = Body;
            resources["FontBodyItalic"] = BodyItalic;
            resources["FontBodyBold"] = BodyBold;
            resources["FontDisplay"] = Display;
        }
    }
}
