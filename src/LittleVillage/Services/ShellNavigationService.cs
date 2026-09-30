namespace LittleVillage.Services;

public sealed class ShellNavigationService : INavigationService
{
    public Task GoToMainMenuAsync() => Shell.Current.GoToAsync($"//{Routes.MainMenu}", animate: false);

    public Task GoToGameAsync() => Shell.Current.GoToAsync(Routes.Game);

    public Task GoBackAsync() => Shell.Current.GoToAsync("..");
}
