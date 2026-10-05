using System.Globalization;
using System.Text;

namespace LittleVillage.Core.Story;

/// <summary>
/// Tag ink w postaci <c># nazwa: wartość</c> lub <c># nazwa</c>.
/// Nazwa jest normalizowana (małe litery, bez polskich znaków), więc <c># Tło:</c> i <c># tlo:</c> działają tak samo.
/// </summary>
public readonly record struct StoryTag(string Name, string? Value)
{
    public const string Background = "tlo";
    public const string Chapter = "rozdzial";
    public const string Title = "tytul";
    public const string Question = "pytanie";
    public const string Divider = "ozdobnik";
    public const string Continue = "dalej";
    public const string Reveal = "pokaz";
    public const string Death = "smierc";

    public static StoryTag Parse(string rawTag)
    {
        ArgumentNullException.ThrowIfNull(rawTag);

        var separator = rawTag.IndexOf(':');
        var name = separator < 0 ? rawTag : rawTag[..separator];
        var value = separator < 0 ? null : rawTag[(separator + 1)..].Trim();

        return new StoryTag(Normalize(name), string.IsNullOrEmpty(value) ? null : value);
    }

    private static string Normalize(string name)
    {
        var decomposed = name.Trim().ToLowerInvariant().Replace('ł', 'l').Normalize(NormalizationForm.FormD);
        var builder = new StringBuilder(decomposed.Length);
        foreach (var c in decomposed)
        {
            if (CharUnicodeInfo.GetUnicodeCategory(c) != UnicodeCategory.NonSpacingMark)
            {
                builder.Append(c);
            }
        }

        return builder.ToString().Normalize(NormalizationForm.FormC);
    }
}
