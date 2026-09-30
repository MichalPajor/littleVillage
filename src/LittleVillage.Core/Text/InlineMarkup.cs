namespace LittleVillage.Core.Text;

/// <summary>Fragment tekstu o jednolitym formatowaniu.</summary>
public readonly record struct TextRun(string Text, bool IsItalic);

/// <summary>
/// Prosty znacznik formatowania w tekście fabuły: <c>_kursywa_</c>.
/// Używany do didaskaliów, myśli bohatera, podpowiedzi.
/// </summary>
public static class InlineMarkup
{
    private const char ItalicMarker = '_';

    public static IReadOnlyList<TextRun> Parse(string? text)
    {
        if (string.IsNullOrEmpty(text))
        {
            return [];
        }

        var runs = new List<TextRun>();
        var italic = false;
        var start = 0;

        for (var i = 0; i < text.Length; i++)
        {
            if (text[i] != ItalicMarker)
            {
                continue;
            }

            if (i > start)
            {
                runs.Add(new TextRun(text[start..i], italic));
            }

            italic = !italic;
            start = i + 1;
        }

        if (start < text.Length)
        {
            runs.Add(new TextRun(text[start..], italic));
        }

        return runs;
    }
}
