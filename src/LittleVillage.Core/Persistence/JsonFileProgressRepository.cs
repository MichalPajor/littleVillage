using System.Text.Json;

namespace LittleVillage.Core.Persistence;

/// <summary>Przechowuje postęp w pliku JSON obok autozapisu.</summary>
public sealed class JsonFileProgressRepository(string directory) : IProgressRepository
{
    private const string FileName = "postep.json";

    private readonly string _path = Path.Combine(directory, FileName);

    public async Task<GameProgress> LoadAsync(CancellationToken cancellationToken = default)
    {
        if (!File.Exists(_path))
        {
            return GameProgress.Empty;
        }

        try
        {
            await using var stream = File.OpenRead(_path);
            return await JsonSerializer.DeserializeAsync(stream, SaveJsonContext.Default.GameProgress, cancellationToken) ?? GameProgress.Empty;
        }
        catch (JsonException)
        {
            return GameProgress.Empty;
        }
    }

    public async Task SaveAsync(GameProgress progress, CancellationToken cancellationToken = default)
    {
        ArgumentNullException.ThrowIfNull(progress);
        Directory.CreateDirectory(directory);

        var temporaryPath = _path + ".tmp";
        await using (var stream = File.Create(temporaryPath))
        {
            await JsonSerializer.SerializeAsync(stream, progress, SaveJsonContext.Default.GameProgress, cancellationToken);
        }

        File.Move(temporaryPath, _path, overwrite: true);
    }
}
