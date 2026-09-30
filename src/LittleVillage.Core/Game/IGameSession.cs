using LittleVillage.Core.Scenes;
using LittleVillage.Core.Story;

namespace LittleVillage.Core.Game;

/// <summary>Przebieg rozgrywki: nowa gra, kontynuacja, kolejne strony, autozapis.</summary>
public interface IGameSession
{
    bool IsInitialized { get; }

    /// <summary>Aktualnie wyświetlana strona (null przed rozpoczęciem gry).</summary>
    StoryPage? CurrentPage { get; }

    BackgroundCatalog Backgrounds { get; }

    /// <summary>Wczytuje fabułę i tła. Wywoływane raz, na ekranie powitalnym.</summary>
    Task InitializeAsync(CancellationToken cancellationToken = default);

    Task<bool> HasSavedGameAsync(CancellationToken cancellationToken = default);

    Task<StoryPage> StartNewGameAsync(CancellationToken cancellationToken = default);

    Task<StoryPage> ContinueSavedGameAsync(CancellationToken cancellationToken = default);

    /// <summary>Przechodzi dalej: wybiera opcję (gdy strona ma wybory) lub kontynuuje.</summary>
    Task<StoryPage> AdvanceAsync(int? choiceIndex, CancellationToken cancellationToken = default);

    IReadOnlyList<InventoryItem> GetInventory();

    /// <summary>Kończy grę i usuwa zapis.</summary>
    Task FinishAsync(CancellationToken cancellationToken = default);
}
