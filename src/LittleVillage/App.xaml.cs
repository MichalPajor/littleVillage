using LittleVillage.Services;

namespace LittleVillage;

public partial class App : Application
{
    public App(IThemeService theme, ISettingsService settings)
    {
        InitializeComponent();

        // Zapamiętany tryb jasny/ciemny okien z tekstem i ustawienia gracza — zanim powstanie pierwszy ekran.
        theme.Apply();
        settings.Apply();

        // Gra jest zawsze czarno-biała — niezależnie od motywu systemu.
        UserAppTheme = AppTheme.Light;
    }

    protected override Window CreateWindow(IActivationState? activationState) =>
        new(new AppShell()) { Title = "Mała wioska" };
}
