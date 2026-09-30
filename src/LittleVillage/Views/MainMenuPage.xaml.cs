using LittleVillage.ViewModels;

namespace LittleVillage.Views;

public partial class MainMenuPage : BasePage
{
    public MainMenuPage(MainMenuViewModel viewModel) : base(viewModel)
    {
        InitializeComponent();
    }

    protected override void OnAppearing()
    {
        base.OnAppearing();

        // Okno menu wjeżdża od dołu.
        MenuFrame.TranslationY = 60;
        MenuFrame.Opacity = 0;
        _ = Task.WhenAll(
            MenuFrame.TranslateToAsync(0, 0, 600, Easing.CubicOut),
            MenuFrame.FadeToAsync(1, 500));
    }
}
