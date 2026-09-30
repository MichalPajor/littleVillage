namespace LittleVillage.Core.Game;

/// <summary>Źródło plików z danymi gry (skompilowana fabuła, definicje teł).</summary>
public interface IStoryAssetSource
{
    /// <summary>Wczytuje skompilowaną fabułę ink (JSON).</summary>
    Task<string> LoadStoryJsonAsync(CancellationToken cancellationToken = default);

    /// <summary>Wczytuje definicje teł scen (JSON).</summary>
    Task<string> LoadBackgroundsJsonAsync(CancellationToken cancellationToken = default);
}
