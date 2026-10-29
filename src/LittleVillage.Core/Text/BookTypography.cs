using System.Text.RegularExpressions;

namespace LittleVillage.Core.Text;

/// <summary>
/// Zasady łamania wierszy jak w książce: myślnik (także pauza bez spacji, jak po angielsku) nie zaczyna nowego wiersza, a w polskim, czeskim i słowackim
/// także jednoliterowy wyraz („i”, „w”, „z”…) nie zostaje na końcu wiersza — wiąże je twarda spacja.
/// </summary>
public static partial class BookTypography
{
    private const char NoBreakSpace = ' ';

    // Niewidoczny znak, który nie pozwala złamać wiersza w tym miejscu (pauza zostaje przy poprzednim słowie).
    private const char WordJoiner = '\u2060';

    public static string KeepTogether(string text, string language = "pl")
    {
        // Jednoliterowe spójniki i przyimki: polskie „a i o u w z”, czeskie i słowackie „a i k o s u v z”.
        var shortWord = language switch
        {
            "pl" => PolishShortWordBeforeSpace(),
            "cs" or "sk" => CzechShortWordBeforeSpace(),
            _ => null,
        };
        var bound = shortWord is null ? text : shortWord.Replace(text, $"$1{NoBreakSpace}");
        return EmDashAfterWord().Replace(DashAfterSpace().Replace(bound, $"{NoBreakSpace}–"), $"$1{WordJoiner}—");
    }

    [GeneratedRegex(@"(?<![\p{L}\p{N}])([aiouwzAIOUWZ]) ")]
    private static partial Regex PolishShortWordBeforeSpace();

    [GeneratedRegex(@"(?<![\p{L}\p{N}])([aikosuvzAIKOSUVZ]) ")]
    private static partial Regex CzechShortWordBeforeSpace();

    [GeneratedRegex(@" –")]
    private static partial Regex DashAfterSpace();

    [GeneratedRegex(@"(\S)—")]
    private static partial Regex EmDashAfterWord();
}
