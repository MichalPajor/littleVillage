using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using LittleVillage.Core.Game;
using LittleVillage.Core.Scenes;
using LittleVillage.Services;

namespace LittleVillage.ViewModels;

/// <summary>Ustawienia: wielkość tekstu, ruch tła.</summary>
public sealed partial class SettingsViewModel(
    IGameSession session,
    ISettingsService settings,
    INavigationService navigation) : ViewModelBase
{
    [ObservableProperty]
    public partial SceneBackground? Scene { get; set; }

    [ObservableProperty]
    public partial string? TextSizeLabel { get; set; }

    [ObservableProperty]
    public partial string? ParallaxLabel { get; set; }

    public override async Task OnAppearingAsync()
    {
        await session.InitializeAsync();
        Scene = session.Backgrounds.Resolve(null);
        Refresh();
    }

    [RelayCommand]
    private void ChangeTextSize()
    {
        settings.SetTextSize(settings.TextSize switch
        {
            TextSize.Small => TextSize.Medium,
            TextSize.Medium => TextSize.Large,
            _ => TextSize.Small,
        });
        Refresh();
    }

    [RelayCommand]
    private void ToggleParallax()
    {
        settings.SetParallax(!settings.Parallax);
        Refresh();
    }

    [RelayCommand]
    private Task CloseAsync() => navigation.GoBackAsync();

    private void Refresh()
    {
        TextSizeLabel = settings.TextSize switch
        {
            TextSize.Small => "Tekst: mały",
            TextSize.Large => "Tekst: duży",
            _ => "Tekst: średni",
        };
        ParallaxLabel = settings.Parallax ? "Ruch tła: tak" : "Ruch tła: nie";
    }
}
