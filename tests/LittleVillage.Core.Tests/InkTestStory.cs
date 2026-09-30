using LittleVillage.InkBuild;

namespace LittleVillage.Core.Tests;

/// <summary>Kompiluje fabułę z tekstu lub z pliku na potrzeby testów.</summary>
internal static class InkTestStory
{
    private static readonly Lazy<string> GameStory = new(() => CompileFile(TestPaths.MainInk));

    public static string Game => GameStory.Value;

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

    private static string CompileFile(string path)
    {
        var result = InkStoryCompiler.Compile(path);
        Assert.True(result.Succeeded, string.Join(Environment.NewLine, result.Diagnostics));
        return result.Json!;
    }
}
