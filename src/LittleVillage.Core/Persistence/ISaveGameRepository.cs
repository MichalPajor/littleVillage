namespace LittleVillage.Core.Persistence;

/// <summary>Miejsce przechowywania zapisu gry (jeden slot — autozapis).</summary>
public interface ISaveGameRepository
{
    Task<bool> ExistsAsync(CancellationToken cancellationToken = default);

    Task<GameSnapshot?> LoadAsync(CancellationToken cancellationToken = default);

    Task SaveAsync(GameSnapshot snapshot, CancellationToken cancellationToken = default);

    Task DeleteAsync(CancellationToken cancellationToken = default);
}
