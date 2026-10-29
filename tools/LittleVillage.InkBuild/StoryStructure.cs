using System.Text;
using System.Text.Json.Nodes;

namespace LittleVillage.InkBuild;

/// <summary>Miejsce, w którym tłumaczenie odbiega od struktury oryginału.</summary>
/// <param name="Path">Ścieżka w skompilowanej fabule (wątek, szew, numer elementu).</param>
/// <param name="Original">Najbliższy tekst oryginału — by łatwo znaleźć to miejsce w pliku .ink.</param>
public sealed record StructureDifference(string Path, string Original, string Message);

/// <summary>
/// Struktura skompilowanej fabuły bez przetłumaczalnego tekstu. Tłumaczenie musi mieć dokładnie tę samą strukturę
/// co oryginał: te same sceny, wybory, warunki, zmienne i znaczniki (np. <c># tlo:</c>, <c># pokaz:</c>) —
/// zmienia się tylko tekst oraz wartości znaczników z tekstem dla gracza (<c># tytul:</c>, <c># rozdzial:</c>,
/// <c># pytanie:</c>). Dzięki temu zapis gry z jednego języka wczytuje się w każdym innym.
/// </summary>
public static class StoryStructure
{
    /// <summary>Znaczniki, których wartość jest tekstem dla gracza (tłumaczona); pozostałe muszą zostać jak w oryginale.</summary>
    public static IReadOnlySet<string> TranslatableTags { get; } = new HashSet<string> { "tytul", "rozdzial", "pytanie" };

    public static IReadOnlyList<StructureDifference> Compare(string originalJson, string translatedJson, int maxDifferences = 20)
    {
        var differences = new List<StructureDifference>();
        Compare(Normalize(JsonNode.Parse(originalJson)), Normalize(JsonNode.Parse(translatedJson)), JsonNode.Parse(originalJson), "", differences, maxDifferences);
        return differences;
    }

    /// <summary>Zamienia tekst (<c>"^…"</c>) na samo <c>"^"</c>; w znacznikach zostawia nazwę, a wartość tylko gdy nie jest do tłumaczenia.</summary>
    public static JsonNode? Normalize(JsonNode? node) => Transform(node, text => "");

    /// <summary>Przepisuje każdy tekst dla gracza funkcją <paramref name="translate"/> (struktura zostaje) — dla testów.</summary>
    public static string Translate(string json, Func<string, string> translate) =>
        Transform(JsonNode.Parse(json), translate)!.ToJsonString();

    private static JsonNode? Transform(JsonNode? node, Func<string, string> translate)
    {
        switch (node)
        {
            case JsonArray array:
            {
                var result = new JsonArray();
                var inTag = false;
                foreach (var item in array)
                {
                    if (item is JsonValue value && value.TryGetValue(out string? s))
                    {
                        if (s == "#") inTag = true;
                        else if (s == "/#") inTag = false;
                        else if (s.StartsWith('^'))
                        {
                            result.Add(JsonValue.Create("^" + (inTag ? TransformTag(s[1..], translate) : translate(s[1..]))));
                            continue;
                        }
                    }

                    result.Add(Transform(item, translate));
                }

                return result;
            }

            case JsonObject obj:
            {
                var result = new JsonObject();
                foreach (var (key, value) in obj)
                {
                    // Znacznik w starszym formacie: {"#": "tlo: las"}.
                    result[key] = key == "#" && value is JsonValue tag && tag.TryGetValue(out string? text)
                        ? JsonValue.Create(TransformTag(text, translate))
                        : Transform(value, translate);
                }

                return result;
            }

            default:
                return node?.DeepClone();
        }
    }

    private static string TransformTag(string tag, Func<string, string> translate)
    {
        var separator = tag.IndexOf(':');
        var name = (separator < 0 ? tag : tag[..separator]).Trim();
        if (separator < 0 || !TranslatableTags.Contains(Normalize(name)))
        {
            return tag;
        }

        var translated = translate(tag[(separator + 1)..].Trim());
        return translated.Length == 0 ? name + ":" : $"{name}: {translated}";
    }

    // Jak StoryTag w grze: małe litery, bez polskich znaków („Tytuł” = „tytul”).
    private static string Normalize(string name)
    {
        var decomposed = name.ToLowerInvariant().Replace('ł', 'l').Normalize(NormalizationForm.FormD);
        return new string(decomposed.Where(c => char.GetUnicodeCategory(c) != System.Globalization.UnicodeCategory.NonSpacingMark).ToArray());
    }

    private static void Compare(JsonNode? original, JsonNode? translated, JsonNode? source, string path, List<StructureDifference> differences, int max)
    {
        if (differences.Count >= max)
        {
            return;
        }

        switch (original, translated)
        {
            case (JsonArray a, JsonArray b):
                for (var i = 0; i < Math.Min(a.Count, b.Count); i++)
                {
                    Compare(a[i], b[i], (source as JsonArray)?[i], $"{path}.{i}", differences, max);
                }

                if (a.Count != b.Count)
                {
                    differences.Add(new(path.TrimStart('.'), NearestText(source, a.Count), $"liczba elementów: oryginał {a.Count}, tłumaczenie {b.Count} (dodany lub brakujący wiersz, wybór, warunek albo znacznik)"));
                }

                break;

            case (JsonObject a, JsonObject b):
                foreach (var (key, value) in a)
                {
                    if (b.ContainsKey(key))
                    {
                        Compare(value, b[key], (source as JsonObject)?[key], key == "#f" || key == "#n" ? path : $"{path}.{key}", differences, max);
                    }
                    else
                    {
                        differences.Add(new(path.TrimStart('.'), NearestText(source, 0), $"brak „{key}” (scena, szew, wybór albo zmienna z oryginału)"));
                    }
                }

                foreach (var key in b.Select(p => p.Key).Where(k => !a.ContainsKey(k)))
                {
                    differences.Add(new(path.TrimStart('.'), NearestText(source, 0), $"nadmiarowe „{key}”, którego nie ma w oryginale"));
                }

                break;

            default:
                if (!JsonNode.DeepEquals(original, translated))
                {
                    differences.Add(new(path.TrimStart('.'), Describe(source), $"oryginał {original?.ToJsonString()}, tłumaczenie {translated?.ToJsonString()}"));
                }

                break;
        }
    }

    // Tekst oryginału przy danym miejscu — pierwszy „^…” w okolicy (szukając wstecz, potem w głąb).
    private static string NearestText(JsonNode? container, int index)
    {
        if (container is JsonArray array)
        {
            for (var i = Math.Min(index, array.Count - 1); i >= 0; i--)
            {
                if (FirstText(array[i]) is { } text)
                {
                    return text;
                }
            }
        }

        return FirstText(container) ?? "";
    }

    private static string Describe(JsonNode? node) =>
        node is JsonValue value && value.TryGetValue(out string? s) && s.StartsWith('^') ? s[1..] : node?.ToJsonString() ?? "";

    private static string? FirstText(JsonNode? node) => node switch
    {
        JsonValue value when value.TryGetValue(out string? s) && s.StartsWith('^') && s.Trim().Length > 1 => s[1..].Trim(),
        JsonArray array => array.Select(FirstText).FirstOrDefault(t => t is not null),
        JsonObject obj => obj.Select(p => FirstText(p.Value)).FirstOrDefault(t => t is not null),
        _ => null,
    };
}
