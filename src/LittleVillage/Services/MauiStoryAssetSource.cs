using LittleVillage.Core.Game;

namespace LittleVillage.Services;

/// <summary>Czyta dane gry z zasobów aplikacji (Resources/Raw oraz fabułę skompilowaną przy budowaniu).</summary>
public sealed class MauiStoryAssetSource : IStoryAssetSource
{
    private const string StoryFile = "story.json";
    private const string BackgroundsFile = "backgrounds.json";

    public Task<string> LoadStoryJsonAsync(CancellationToken cancellationToken = default) =>
        ReadAsync(StoryFile, cancellationToken);

    public Task<string> LoadBackgroundsJsonAsync(CancellationToken cancellationToken = default) =>
        ReadAsync(BackgroundsFile, cancellationToken);

    private static async Task<string> ReadAsync(string fileName, CancellationToken cancellationToken)
    {
        await using var stream = await FileSystem.OpenAppPackageFileAsync(fileName);
        using var reader = new StreamReader(stream);
        return await reader.ReadToEndAsync(cancellationToken);
    }
}
