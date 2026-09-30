using Ink;
using LittleVillage.InkBuild;

// Użycie: LittleVillage.InkBuild <main.ink> <story.json>
// Komunikaty wypisywane są w formacie MSBuild, więc błędy fabuły widać na liście błędów IDE.
if (args.Length != 2)
{
    Console.Error.WriteLine("Użycie: LittleVillage.InkBuild <main.ink> <story.json>");
    return 2;
}

var (input, output) = (Path.GetFullPath(args[0]), Path.GetFullPath(args[1]));
if (!File.Exists(input))
{
    Console.Error.WriteLine($"{input}: error INK0000: Nie znaleziono pliku fabuły.");
    return 1;
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
    return 1;
}

Directory.CreateDirectory(Path.GetDirectoryName(output)!);
await File.WriteAllTextAsync(output, result.Json);
Console.WriteLine($"Fabuła skompilowana: {Path.GetFileName(input)} -> {output}");
return 0;
