using CommunityToolkit.Mvvm.ComponentModel;

namespace LittleVillage.ViewModels;

/// <summary>Wspólna baza ViewModeli.</summary>
public abstract partial class ViewModelBase : ObservableObject
{
    [ObservableProperty]
    public partial bool IsBusy { get; set; }

    /// <summary>Wywoływane, gdy strona pojawia się na ekranie.</summary>
    public virtual Task OnAppearingAsync() => Task.CompletedTask;

    /// <summary>Wywoływane, gdy strona znika z ekranu.</summary>
    public virtual Task OnDisappearingAsync() => Task.CompletedTask;
}
