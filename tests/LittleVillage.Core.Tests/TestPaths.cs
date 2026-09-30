namespace LittleVillage.Core.Tests;

internal static class TestPaths
{
    private static readonly Lazy<string> RepositoryRoot = new(() =>
    {
        var directory = new DirectoryInfo(AppContext.BaseDirectory);
        while (directory is not null && !File.Exists(Path.Combine(directory.FullName, "LittleVillage.slnx")))
        {
            directory = directory.Parent;
        }

        return directory?.FullName ?? throw new DirectoryNotFoundException("Nie znaleziono katalogu solucji.");
    });

    public static string App => Path.Combine(RepositoryRoot.Value, "src", "LittleVillage");

    public static string MainInk => Path.Combine(App, "Story", "main.ink");

    public static string BackgroundsJson => Path.Combine(App, "Resources", "Raw", "backgrounds.json");
}
