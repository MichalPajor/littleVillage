using LittleVillage.Core.Game;
using LittleVillage.Core.Localization;

namespace LittleVillage.Services;

/// <summary>Czyta dane gry z zasobów aplikacji (Resources/Raw oraz fabułę skompilowaną przy budowaniu).</summary>
public sealed class MauiStoryAssetSource : IStoryAssetSource
{
    private const string StoryFile = "story.json";
    private const string BackgroundsFile = "backgrounds.json";

    // Tłumaczenie: story.<język>.json obok oryginału; bez niego — polska fabuła.
    public async Task<string> LoadStoryJsonAsync(string language, CancellationToken cancellationToken = default)
    {
        if (language != GameLanguage.DefaultCode && await FileSystem.AppPackageFileExistsAsync($"story.{language}.json"))
        {
            return await ReadAsync($"story.{language}.json", cancellationToken);
        }

        return await ReadAsync(StoryFile, cancellationToken);
    }

    public Task<string> LoadBackgroundsJsonAsync(CancellationToken cancellationToken = default) =>
        ReadAsync(BackgroundsFile, cancellationToken);

    private static async Task<string> ReadAsync(string fileName, CancellationToken cancellationToken)
    {
        await using var stream = await FileSystem.OpenAppPackageFileAsync(fileName);
        using var reader = new StreamReader(stream);
        return await reader.ReadToEndAsync(cancellationToken);
    }
}
