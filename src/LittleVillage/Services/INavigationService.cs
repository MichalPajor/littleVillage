namespace LittleVillage.Services;

/// <summary>Nawigacja między ekranami — ViewModele nie znają Shell.</summary>
public interface INavigationService
{
    Task GoToMainMenuAsync();

    Task GoToGameAsync();

    Task GoToStoryBookAsync();

    Task GoToSettingsAsync();

    Task GoBackAsync();

    /// <summary>Buduje ekrany od nowa (np. po zmianie języka) i wraca do ustawień.</summary>
    Task ReloadAtSettingsAsync();
}
