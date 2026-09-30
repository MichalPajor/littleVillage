using System.Text.Json;
using System.Text.Json.Serialization;
using LittleVillage.Core.Story;

namespace LittleVillage.Core.Persistence;

/// <summary>Przechowuje zapis gry w pliku JSON we wskazanym katalogu.</summary>
public sealed class JsonFileSaveGameRepository(string directory) : ISaveGameRepository
{
    private const string FileName = "autosave.json";

    private readonly string _path = Path.Combine(directory, FileName);

    public Task<bool> ExistsAsync(CancellationToken cancellationToken = default) =>
        Task.FromResult(File.Exists(_path));

    public async Task<GameSnapshot?> LoadAsync(CancellationToken cancellationToken = default)
    {
        if (!File.Exists(_path))
        {
            return null;
        }

        try
        {
            await using var stream = File.OpenRead(_path);
            var snapshot = await JsonSerializer.DeserializeAsync(stream, SaveJsonContext.Default.GameSnapshot, cancellationToken);
            return snapshot?.FormatVersion == GameSnapshot.CurrentFormatVersion ? snapshot : null;
        }
        catch (JsonException)
        {
            // Uszkodzony lub niezgodny zapis traktujemy jak jego brak.
            return null;
        }
    }

    public async Task SaveAsync(GameSnapshot snapshot, CancellationToken cancellationToken = default)
    {
        ArgumentNullException.ThrowIfNull(snapshot);
        Directory.CreateDirectory(directory);

        // Zapis do pliku tymczasowego i podmiana — przerwanie w trakcie nie niszczy poprzedniego zapisu.
        var temporaryPath = _path + ".tmp";
        await using (var stream = File.Create(temporaryPath))
        {
            await JsonSerializer.SerializeAsync(stream, snapshot, SaveJsonContext.Default.GameSnapshot, cancellationToken);
        }

        File.Move(temporaryPath, _path, overwrite: true);
    }

    public Task DeleteAsync(CancellationToken cancellationToken = default)
    {
        File.Delete(_path);
        return Task.CompletedTask;
    }
}

[JsonSourceGenerationOptions(
    PropertyNamingPolicy = JsonKnownNamingPolicy.CamelCase,
    UseStringEnumConverter = true)]
[JsonSerializable(typeof(GameSnapshot))]
[JsonSerializable(typeof(StoryPage))]
internal sealed partial class SaveJsonContext : JsonSerializerContext;
