using System.Collections.ObjectModel;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using LittleVillage.Core.Game;
using LittleVillage.Core.Scenes;
using LittleVillage.Resources.Strings;
using LittleVillage.Services;

namespace LittleVillage.ViewModels;

/// <summary>Pozycja na liście języków; kod <c>null</c> — jak w telefonie.</summary>
public sealed class LanguageItem(string name, string? code, Func<string?, Task> choose)
{
    public string Name { get; } = name;

    // Polecenie z domknięciem, nie CommandParameter — parametr bywa jeszcze pusty przy pierwszym stuknięciu.
    public IAsyncRelayCommand Command { get; } = new AsyncRelayCommand(() => choose(code));
}

/// <summary>Ustawienia: wielkość tekstu, ruch tła, język.</summary>
public sealed partial class SettingsViewModel(
    IGameSession session,
    ISettingsService settings,
    ILanguageService language,
    INavigationService navigation) : ViewModelBase
{
    [ObservableProperty]
    public partial SceneBackground? Scene { get; set; }

    [ObservableProperty]
    public partial string? TextSizeLabel { get; set; }

    [ObservableProperty]
    public partial string? ParallaxLabel { get; set; }

    [ObservableProperty]
    public partial string? LanguageLabel { get; set; }

    [ObservableProperty]
    [NotifyPropertyChangedFor(nameof(IsSettingsListVisible))]
    public partial bool IsLanguageListOpen { get; set; }

    public bool IsSettingsListVisible => !IsLanguageListOpen;

    public ObservableCollection<LanguageItem> Languages { get; } = [];

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
    private void OpenLanguages()
    {
        Languages.Clear();
        Languages.Add(new LanguageItem(AppResources.LanguageDeviceOption, null, ChooseLanguageAsync));
        foreach (var available in language.Available)
        {
            Languages.Add(new LanguageItem(available.NativeName, available.Code, ChooseLanguageAsync));
        }

        IsLanguageListOpen = true;
    }

    private async Task ChooseLanguageAsync(string? code)
    {
        IsLanguageListOpen = false;
        if (language.SetPreferred(code))
        {
            // Napisy są wczytywane przy tworzeniu ekranów — budujemy je od nowa w nowym języku.
            await navigation.ReloadAtSettingsAsync();
            return;
        }

        Refresh();
    }

    [RelayCommand]
    private Task CloseAsync()
    {
        if (IsLanguageListOpen)
        {
            IsLanguageListOpen = false;
            return Task.CompletedTask;
        }

        return navigation.GoBackAsync();
    }

    private void Refresh()
    {
        TextSizeLabel = settings.TextSize switch
        {
            TextSize.Small => AppResources.TextSizeSmall,
            TextSize.Large => AppResources.TextSizeLarge,
            _ => AppResources.TextSizeMedium,
        };
        ParallaxLabel = settings.Parallax ? AppResources.ParallaxOn : AppResources.ParallaxOff;
        var languageName = language.Preferred is null
            ? AppResources.LanguageDevice
            : language.Available.First(l => l.Code == language.Current).NativeName;
        LanguageLabel = string.Format(AppResources.LanguageButton, languageName);
    }
}
