namespace LittleVillage.Services;

public sealed class ShellNavigationService : INavigationService
{
    public Task GoToMainMenuAsync() => Shell.Current.GoToAsync($"//{Routes.MainMenu}", animate: false);

    // Gra zawsze nad menu głównym — także gdy zaczyna się z księgi opowieści (powrót z gry prowadzi do menu).
    public Task GoToGameAsync() => Shell.Current.GoToAsync($"//{Routes.MainMenu}/{Routes.Game}");

    public Task GoToStoryBookAsync() => Shell.Current.GoToAsync(Routes.StoryBook);

    public Task GoToSettingsAsync() => Shell.Current.GoToAsync(Routes.Settings);

    public Task GoBackAsync() => Shell.Current.GoToAsync("..");

    // Napisy z plików językowych trafiają do ekranów przy ich tworzeniu — nowy Shell, bez ekranu powitalnego.
    public async Task ReloadAtSettingsAsync()
    {
        if (Application.Current?.Windows is not [var window, ..])
        {
            return;
        }

        var shell = new AppShell();
        window.Page = shell;
        await shell.GoToAsync($"//{Routes.MainMenu}", animate: false);
        await shell.GoToAsync(Routes.Settings, animate: false);
    }
}
