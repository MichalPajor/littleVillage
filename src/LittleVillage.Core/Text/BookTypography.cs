using System.Text.RegularExpressions;

namespace LittleVillage.Core.Text;

/// <summary>
/// Polskie zasady łamania wierszy jak w książce: jednoliterowy wyraz („i”, „w”, „z”…) nie zostaje
/// na końcu wiersza, a myślnik nie zaczyna nowego — wiąże je twarda spacja.
/// </summary>
public static partial class BookTypography
{
    private const char NoBreakSpace = ' ';

    public static string KeepTogether(string text) =>
        DashAfterSpace().Replace(ShortWordBeforeSpace().Replace(text, $"$1{NoBreakSpace}"), $"{NoBreakSpace}–");

    [GeneratedRegex(@"(?<![\p{L}\p{N}])([aiouwzAIOUWZ]) ")]
    private static partial Regex ShortWordBeforeSpace();

    [GeneratedRegex(@" –")]
    private static partial Regex DashAfterSpace();
}
