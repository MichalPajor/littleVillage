using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using LittleVillage.Core.Game;
using LittleVillage.Core.Scenes;
using LittleVillage.Services;
using Microsoft.Extensions.Logging;

namespace LittleVillage.ViewModels;

/// <summary>Menu główne: Nowa gra / Kontynuuj.</summary>
public sealed partial class MainMenuViewModel(
    IGameSession session,
    INavigationService navigation,
    IDialogService dialogs,
    ILogger<MainMenuViewModel> logger) : ViewModelBase
{
    [ObservableProperty]
    [NotifyCanExecuteChangedFor(nameof(ContinueCommand))]
    public partial bool CanContinue { get; set; }

    /// <summary>Czy pytamy gracza o nadpisanie istniejącego zapisu.</summary>
    [ObservableProperty]
    [NotifyPropertyChangedFor(nameof(IsMainMenuVisible))]
    public partial bool IsConfirmingNewGame { get; set; }

    [ObservableProperty]
    public partial SceneBackground? Scene { get; set; }

    public bool IsMainMenuVisible => !IsConfirmingNewGame;

    public override async Task OnAppearingAsync()
    {
        IsConfirmingNewGame = false;
        try
        {
            await session.InitializeAsync();
            Scene = session.Backgrounds.Resolve(null);
            CanContinue = await session.HasSavedGameAsync();
        }
        catch (Exception exception)
        {
            logger.LogError(exception, "Nie udało się przygotować menu.");
            await dialogs.AlertAsync("Coś poszło nie tak", exception.Message);
        }
    }

    [RelayCommand(AllowConcurrentExecutions = false)]
    private async Task NewGameAsync()
    {
        if (CanContinue)
        {
            IsConfirmingNewGame = true;
            return;
        }

        await StartNewGameAsync();
    }

    [RelayCommand(AllowConcurrentExecutions = false)]
    private Task ConfirmNewGameAsync() => StartNewGameAsync();

    [RelayCommand]
    private void CancelNewGame() => IsConfirmingNewGame = false;

    [RelayCommand(CanExecute = nameof(CanContinue), AllowConcurrentExecutions = false)]
    private Task ContinueAsync() => RunAsync(() => session.ContinueSavedGameAsync());

    private Task StartNewGameAsync() => RunAsync(() => session.StartNewGameAsync());

    private async Task RunAsync(Func<Task> start)
    {
        try
        {
            IsBusy = true;
            await start();
            await navigation.GoToGameAsync();
        }
        catch (Exception exception)
        {
            logger.LogError(exception, "Nie udało się rozpocząć gry.");
            await dialogs.AlertAsync("Coś poszło nie tak", exception.Message);
        }
        finally
        {
            IsBusy = false;
        }
    }
}
