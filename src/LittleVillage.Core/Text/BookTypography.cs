using System.Text.RegularExpressions;

namespace LittleVillage.Core.Text;

/// <summary>
/// Zasady łamania wierszy jak w książce: myślnik nie zaczyna nowego wiersza, a w polskim, czeskim i słowackim
/// także jednoliterowy wyraz („i”, „w”, „z”…) nie zostaje na końcu wiersza — wiąże je twarda spacja.
/// </summary>
public static partial class BookTypography
{
    private const char NoBreakSpace = ' ';

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
        return DashAfterSpace().Replace(bound, $"{NoBreakSpace}–");
    }

    [GeneratedRegex(@"(?<![\p{L}\p{N}])([aiouwzAIOUWZ]) ")]
    private static partial Regex PolishShortWordBeforeSpace();

    [GeneratedRegex(@"(?<![\p{L}\p{N}])([aikosuvzAIKOSUVZ]) ")]
    private static partial Regex CzechShortWordBeforeSpace();

    [GeneratedRegex(@" –")]
    private static partial Regex DashAfterSpace();
}
