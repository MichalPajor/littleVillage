using Ink;
using LittleVillage.InkBuild;

// Użycie: LittleVillage.InkBuild <katalog Story> <katalog wyjściowy>
// Story/main.ink (oryginał, polski) -> story.json; Story/<język>/main.ink (tłumaczenie) -> story.<język>.json.
// Tłumaczenie musi mieć strukturę oryginału (StoryStructure) — inaczej błąd kompilacji.
// Komunikaty wypisywane są w formacie MSBuild, więc błędy fabuły widać na liście błędów IDE.
if (args.Length != 2)
{
    Console.Error.WriteLine("Użycie: LittleVillage.InkBuild <katalog Story> <katalog wyjściowy>");
    return 2;
}

var (storyDirectory, outputDirectory) = (Path.GetFullPath(args[0]), Path.GetFullPath(args[1]));
var original = Compile(Path.Combine(storyDirectory, "main.ink"), Path.Combine(outputDirectory, "story.json"));
if (original is null)
{
    return 1;
}

var failed = false;
foreach (var languageDirectory in Directory.GetDirectories(storyDirectory).Order(StringComparer.Ordinal))
{
    var main = Path.Combine(languageDirectory, "main.ink");
    if (!File.Exists(main))
    {
        continue;
    }

    var language = Path.GetFileName(languageDirectory);
    var translated = Compile(main, Path.Combine(outputDirectory, $"story.{language}.json"), original);
    failed |= translated is null;
}

return failed ? 1 : 0;

// Kompiluje fabułę i zapisuje JSON; przy tłumaczeniu najpierw porównuje strukturę z oryginałem.
static string? Compile(string input, string output, string? originalJson = null)
{
    if (!File.Exists(input))
    {
        Console.Error.WriteLine($"{input}: error INK0000: Nie znaleziono pliku fabuły.");
        return null;
    }

    var result = InkStoryCompiler.Compile(input);
    var inputDirectory = Path.GetDirectoryName(input)!;

    foreach (var diagnostic in result.Diagnostics)
    {
        var file = diagnostic.File is null ? input : Path.GetFullPath(Path.Combine(inputDirectory, diagnostic.File));
        var location = diagnostic.Line is { } line ? $"{file}({line})" : file;
        var (severity, code) = diagnostic.Severity switch
        {
            ErrorType.Error => ("error", "INK0001"),
            ErrorType.Warning => ("warning", "INK0002"),
            _ => ("warning", "INK0003"),
        };

        Console.WriteLine($"{location}: {severity} {code}: {diagnostic.Message}");
    }

    if (!result.Succeeded)
    {
        return null;
    }

    if (originalJson is not null)
    {
        var differences = StoryStructure.Compare(originalJson, result.Json!);
        foreach (var difference in differences)
        {
            Console.WriteLine($"{input}: error INK0010: Tłumaczenie odbiega od oryginału w {difference.Path} (przy „{difference.Original}”): {difference.Message}");
        }

        if (differences.Count > 0)
        {
            return null;
        }
    }

    Directory.CreateDirectory(Path.GetDirectoryName(output)!);
    File.WriteAllText(output, result.Json);
    Console.WriteLine($"Fabuła skompilowana: {Path.GetRelativePath(Path.GetDirectoryName(inputDirectory)!, input)} -> {output}");
    return result.Json;
}
