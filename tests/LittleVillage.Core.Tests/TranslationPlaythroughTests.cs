using System.Text.RegularExpressions;
using LittleVillage.Core.Story;

namespace LittleVillage.Core.Tests;

/// <summary>
/// Każde tłumaczenie przechodzone razem z oryginałem — tymi samymi (losowymi) wyborami, przez całą grę:
/// strony, wybory, tobołek, zapiski i zakończenia muszą się zgadzać, a tekst nie może zgubić treści ani mieć polskich resztek.
/// </summary>
public sealed partial class TranslationPlaythroughTests
{
    private const int Runs = 60;

    // Polskie imiona i słowa, które w tłumaczeniu zostają (słowniczek): wolno im mieć polskie litery.
    private static readonly HashSet<string> KeptPolishWords = new(StringComparer.OrdinalIgnoreCase)
    {
        "Staś", "Józek", "Kaśka", "Wójcik", "Wójciks", "Wójcikowa", "Dobrosław", "Dobruś", "turoń", "Łukasz", "Bożena", "Małgosia",
    };

    // Imię z polskimi znakami albo jego dopełniacz (niem. „Józeks”, „Dobrosławs”).
    private static bool IsKeptName(string word) =>
        KeptPolishWords.Contains(word) || (word.EndsWith('s') && KeptPolishWords.Contains(word[..^1]));

    public static TheoryData<string> Translations()
    {
        var data = new TheoryData<string>();
        foreach (var directory in Directory.GetDirectories(Path.GetDirectoryName(TestPaths.MainInk)!).Order(StringComparer.Ordinal))
        {
            if (File.Exists(Path.Combine(directory, "main.ink")))
            {
                data.Add(Path.GetFileName(directory));
            }
        }

        return data;
    }

    [Theory]
    [MemberData(nameof(Translations))]
    public void Translation_plays_exactly_like_the_original(string language)
    {
        var translatedJson = InkTestStory.FromFile(Path.Combine(Path.GetDirectoryName(TestPaths.MainInk)!, language, "main.ink"));
        var endings = new HashSet<string>();
        var problems = new List<string>();

        for (var run = 0; run < Runs; run++)
        {
            var random = new Random(run);
            var (original, translated) = (Load(InkTestStory.Game, problems, "pl"), Load(translatedJson, problems, language));
            var (a, b) = (original.StartNew(), translated.StartNew());

            for (var step = 0; step < 3000; step++)
            {
                ComparePages(a, b, original, translated, language, $"przebieg {run}, strona {step}", problems);
                if (problems.Count > 20 || a.Ending is PageEnding.End or PageEnding.Death)
                {
                    break;
                }

                if (a.Ending == PageEnding.Choices)
                {
                    var choice = random.Next(a.Choices.Count);
                    (a, b) = (original.Choose(choice), translated.Choose(choice));
                }
                else
                {
                    (a, b) = (original.Continue(), translated.Continue());
                }
            }

            if (a.Ending == PageEnding.End)
            {
                var id = original.GetReachedEnding();
                Assert.Equal(id, translated.GetReachedEnding());
                endings.Add(id!);
            }

            Assert.True(problems.Count == 0, string.Join(Environment.NewLine, problems.Take(20)));
        }

        // Wszystkie zakończenia osiągalne i każde ma tytuł w tłumaczeniu.
        var engine = Load(translatedJson, problems, language);
        var all = engine.GetEndings();
        Assert.Equal(all.Select(e => e.Id).Order(), endings.Order());
        Assert.All(all, e => Assert.False(string.IsNullOrWhiteSpace(e.Title)));
    }

    private static InkStoryEngine Load(string json, List<string> problems, string language)
    {
        var engine = new InkStoryEngine();
        engine.StoryWarning += (_, message) => problems.Add($"[{language}] ink: {message}");
        engine.Load(json);
        return engine;
    }

    private static void ComparePages(StoryPage a, StoryPage b, InkStoryEngine original, InkStoryEngine translated, string language, string where, List<string> problems)
    {
        void Check(bool ok, string message)
        {
            if (!ok)
            {
                problems.Add($"{where}: {message} (oryginał: „{Shorten(a.Blocks.FirstOrDefault()?.Text)}”)");
            }
        }

        Check(a.BackgroundKey == b.BackgroundKey, $"tło {a.BackgroundKey} ≠ {b.BackgroundKey}");
        Check(a.Ending == b.Ending, $"koniec strony {a.Ending} ≠ {b.Ending}");
        Check(a.Blocks.Select(x => (x.Kind, x.Reveal)).SequenceEqual(b.Blocks.Select(x => (x.Kind, x.Reveal))), "inne akapity lub odsłony warstw");
        Check(a.Choices.Count == b.Choices.Count, $"wyborów {a.Choices.Count} ≠ {b.Choices.Count}");
        Check(a.RequiresFullVersion == b.RequiresFullVersion && a.RequestsReview == b.RequestsReview, "znaczniki pełnej wersji / oceny");
        IEnumerable<string> texts = b.Blocks.Where(x => x.Kind != StoryBlockKind.Divider).Select(x => x.Text)
            .Concat(b.Choices.Select(c => c.Text))
            .Concat(b.Question is { } q ? [q] : []);

        // Tobołek i zapiski (kosztowne — ink liczy je funkcjami) tylko tam, gdzie gracz zwykle do nich zagląda: przy wyborach i na końcu.
        if (a.Ending != PageEnding.Continue)
        {
            Check(original.GetInventory().Select(i => i.Id).SequenceEqual(translated.GetInventory().Select(i => i.Id)), "inny tobołek");
            Check(original.GetJournal().Select(j => j.Id).SequenceEqual(translated.GetJournal().Select(j => j.Id)), "inne zapiski");
            texts = texts
                .Concat(translated.GetInventory().SelectMany(i => i.Description is null ? [i.Name] : new[] { i.Name, i.Description }))
                .Concat(translated.GetJournal().SelectMany(j => j.Notes.Prepend(j.Title)));
        }
        foreach (var text in texts)
        {
            Check(!string.IsNullOrWhiteSpace(text), "pusty tekst");
            Check(!Syntax().IsMatch(text ?? ""), $"resztki składni ink w „{Shorten(text)}”");
            foreach (Match word in PolishWord().Matches(text ?? ""))
            {
                var bare = word.Value.Split('’', '\'')[0];
                Check(IsKeptName(bare), $"[{language}] polskie słowo „{word.Value}” w „{Shorten(text)}”");
            }
        }
    }

    private static string Shorten(string? text) => text is null ? "" : text.Length <= 70 ? text : text[..70] + "…";

    [GeneratedRegex(@"[\p{L}’']*[ąćęłńóśźżĄĆĘŁŃÓŚŹŻ][\p{L}’']*")]
    private static partial Regex PolishWord();

    [GeneratedRegex(@"[{}\[\]|]|->|<>|^\s*[#~=*+]|\s#\s")]
    private static partial Regex Syntax();
}
