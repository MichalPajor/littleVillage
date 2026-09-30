using LittleVillage.ViewModels;
using Microsoft.Extensions.Logging;
#if ANDROID || IOS
using CommunityToolkit.Maui.Behaviors;
using CommunityToolkit.Maui.Core;
#endif

namespace LittleVillage.Views;

/// <summary>
/// Bazowa strona: ustawia ViewModel jako BindingContext, przekazuje mu zdarzenia cyklu życia
/// i przyciemnia pasek statusu (styl gry: czerń + papier).
/// </summary>
public abstract class BasePage : ContentPage
{
    protected BasePage(ViewModelBase viewModel)
    {
        ViewModel = viewModel;
        BindingContext = viewModel;
        Shell.SetNavBarIsVisible(this, false);

        // Treść omija paski systemowe (Android 15+ wymusza tryb „od krawędzi do krawędzi”);
        // pod paskami widać czarne tło strony.
        SafeAreaEdges = new SafeAreaEdges(SafeAreaRegions.Container);

#if ANDROID || IOS
        Behaviors.Add(new StatusBarBehavior
        {
            StatusBarColor = Theme.Palette.Ink,
            StatusBarStyle = StatusBarStyle.LightContent,
        });
#endif
    }

    protected ViewModelBase ViewModel { get; }

    protected override async void OnAppearing()
    {
        base.OnAppearing();
        await RunSafelyAsync(ViewModel.OnAppearingAsync);
    }

    protected override async void OnDisappearing()
    {
        base.OnDisappearing();
        await RunSafelyAsync(ViewModel.OnDisappearingAsync);
    }

    private async Task RunSafelyAsync(Func<Task> action)
    {
        try
        {
            await action();
        }
        catch (Exception exception)
        {
            // async void — nieobsłużony wyjątek zamknąłby aplikację.
            Handler?.MauiContext?.Services.GetService<ILogger<BasePage>>()?.LogError(exception, "Błąd w cyklu życia strony {Page}.", GetType().Name);
        }
    }
}
