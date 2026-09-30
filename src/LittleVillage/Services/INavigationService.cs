namespace LittleVillage.Services;

/// <summary>Nawigacja między ekranami — ViewModele nie znają Shell.</summary>
public interface INavigationService
{
    Task GoToMainMenuAsync();

    Task GoToGameAsync();

    Task GoBackAsync();
}
