using LittleVillage.InkBuild;

namespace LittleVillage.Core.Tests;

/// <summary>Kompiluje fabułę z tekstu lub z pliku na potrzeby testów.</summary>
internal static class InkTestStory
{
    private static readonly Lazy<string> GameStory = new(() => CompileFile(TestPaths.MainInk));

    private static readonly Dictionary<string, string> Translations = [];

    public static string Game => GameStory.Value;

    /// <summary>Próbne tłumaczenie fabuły gry: ta sama struktura, każdy tekst poprzedzony „[język]”.</summary>
    public static string GameIn(string language)
    {
        lock (Translations)
        {
            if (!Translations.TryGetValue(language, out var json))
            {
                json = StoryStructure.Translate(Game, text => text.Trim().Length == 0 ? text : $"[{language}] {text}");
                Translations[language] = json;
            }

            return json;
        }
    }

    public static string FromSource(string inkSource)
    {
        var path = Path.Combine(Path.GetTempPath(), $"lv-test-{Guid.NewGuid():N}.ink");
        File.WriteAllText(path, inkSource);
        try
        {
            return CompileFile(path);
        }
        finally
        {
            File.Delete(path);
        }
    }

    public static string FromFile(string path) => CompileFile(path);

    private static string CompileFile(string path)
    {
        var result = InkStoryCompiler.Compile(path);
        Assert.True(result.Succeeded, string.Join(Environment.NewLine, result.Diagnostics));
        return result.Json!;
    }
}
