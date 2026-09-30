using System.Text;

namespace LittleVillage.Core.Text;

/// <summary>Numeracja opcji wyboru cyframi rzymskimi (I, II, III…).</summary>
public static class RomanNumeral
{
    private static readonly (int Value, string Symbol)[] Map =
    [
        (1000, "M"), (900, "CM"), (500, "D"), (400, "CD"),
        (100, "C"), (90, "XC"), (50, "L"), (40, "XL"),
        (10, "X"), (9, "IX"), (5, "V"), (4, "IV"), (1, "I"),
    ];

    public static string From(int number)
    {
        ArgumentOutOfRangeException.ThrowIfLessThan(number, 1);
        ArgumentOutOfRangeException.ThrowIfGreaterThan(number, 3999);

        var builder = new StringBuilder();
        foreach (var (value, symbol) in Map)
        {
            while (number >= value)
            {
                builder.Append(symbol);
                number -= value;
            }
        }

        return builder.ToString();
    }
}
