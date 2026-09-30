using System.Text.RegularExpressions;
using Ink;

namespace LittleVillage.InkBuild;

/// <summary>Komunikat kompilatora ink z lokalizacją w pliku źródłowym.</summary>
public sealed record InkDiagnostic(ErrorType Severity, string? File, int? Line, string Message);

/// <summary>Wynik kompilacji fabuły.</summary>
public sealed record InkCompilationResult(string? Json, IReadOnlyList<InkDiagnostic> Diagnostics)
{
    public bool Succeeded => Json is not null && Diagnostics.All(d => d.Severity != ErrorType.Error);
}

/// <summary>Kompiluje plik .ink (wraz z INCLUDE) do formatu JSON czytanego przez runtime ink.</summary>
public static partial class InkStoryCompiler
{
    public static InkCompilationResult Compile(string mainInkPath)
    {
        var fullPath = Path.GetFullPath(mainInkPath);
        var diagnostics = new List<InkDiagnostic>();

        var compiler = new Compiler(File.ReadAllText(fullPath), new Compiler.Options
        {
            sourceFilename = Path.GetFileName(fullPath),
            countAllVisits = true,
            fileHandler = new RelativeFileHandler(Path.GetDirectoryName(fullPath)!),
            errorHandler = (message, type) => diagnostics.Add(ParseDiagnostic(message, type)),
        });

        var story = compiler.Compile();
        var json = story is null || diagnostics.Any(d => d.Severity == ErrorType.Error) ? null : story.ToJson();
        return new InkCompilationResult(json, diagnostics);
    }

    private static InkDiagnostic ParseDiagnostic(string message, ErrorType type)
    {
        var match = DiagnosticPattern().Match(message);
        return match.Success
            ? new InkDiagnostic(type, match.Groups["file"].Success ? match.Groups["file"].Value : null, int.Parse(match.Groups["line"].Value), match.Groups["text"].Value)
            : new InkDiagnostic(type, null, null, message);
    }

    // Format ink: "ERROR: 'plik.ink' line 12: treść" lub "WARNING: line 12: treść".
    [GeneratedRegex(@"^(?:ERROR|WARNING|TODO|RUNTIME ERROR|RUNTIME WARNING):\s*(?:'(?<file>[^']+)'\s*)?line (?<line>\d+):\s*(?<text>.*)$", RegexOptions.Singleline)]
    private static partial Regex DiagnosticPattern();

    private sealed class RelativeFileHandler(string rootDirectory) : IFileHandler
    {
        public string ResolveInkFilename(string includeName) => Path.Combine(rootDirectory, includeName);

        public string LoadInkFileContents(string fullFilename) => File.ReadAllText(fullFilename);
    }
}
