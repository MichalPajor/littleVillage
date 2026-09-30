using LittleVillage.ViewModels;

namespace LittleVillage.Views;

public partial class SplashPage : BasePage
{
    private bool _animated;

    public SplashPage(SplashViewModel viewModel) : base(viewModel)
    {
        InitializeComponent();
    }

    protected override void OnAppearing()
    {
        base.OnAppearing();

        if (!_animated)
        {
            _animated = true;
            _ = PlayIntroAsync();
        }
    }

    // Animacja wejścia — czysto wizualna, dlatego w code-behind, nie w ViewModelu.
    private async Task PlayIntroAsync()
    {
        await Task.Delay(250);
        await Task.WhenAll(
            TitleLabel.FadeToAsync(1, 1100, Easing.CubicOut),
            TitleLabel.TranslateToAsync(0, 0, 1100, Easing.CubicOut));

        await Task.WhenAll(
            Blood.FadeToAsync(1, 120),
            Blood.ScaleToAsync(1, 380, Easing.SpringOut));

        await Task.WhenAll(
            Underline.FadeToAsync(1, 500),
            Subtitle.FadeToAsync(0.8, 700));
    }
}
