using LittleVillage.Core.Game;
using LittleVillage.Resources.Strings;
using LittleVillage.Services;
using Microsoft.Extensions.Logging;

namespace LittleVillage.ViewModels;

/// <summary>Ekran powitalny: wczytuje fabułę i tła, potem przechodzi do menu.</summary>
public sealed class SplashViewModel(
    IGameSession session,
    INavigationService navigation,
    IDialogService dialogs,
    IFullVersionStore store,
    ILogger<SplashViewModel> logger) : ViewModelBase
{
    /// <summary>Minimalny czas wyświetlania — by animacja wejścia zdążyła wybrzmieć.</summary>
    public static readonly TimeSpan MinimumDisplayTime = TimeSpan.FromSeconds(2.8);

    private bool _started;

    public override async Task OnAppearingAsync()
    {
        if (_started)
        {
            return;
        }

        _started = true;
        IsBusy = true;

        // Po cichu, w tle: zakup z innego telefonu albo sprzed reinstalacji, zwrot pieniędzy.
        _ = store.RestoreAsync();

        try
        {
            await Task.WhenAll(session.InitializeAsync(), Task.Delay(MinimumDisplayTime));
            await navigation.GoToMainMenuAsync();
        }
        catch (Exception exception)
        {
            logger.LogError(exception, "Nie udało się wczytać danych gry.");
            await dialogs.AlertAsync(AppResources.ErrorTitle, $"{AppResources.LoadStoryFailed}\n{exception.Message}");
        }
        finally
        {
            IsBusy = false;
        }
    }
}
