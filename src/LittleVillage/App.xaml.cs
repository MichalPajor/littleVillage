using LittleVillage.Services;

namespace LittleVillage;

public partial class App : Application
{
    public App(IThemeService theme)
    {
        InitializeComponent();

        // Zapamiętany tryb jasny/ciemny okien z tekstem — zanim powstanie pierwszy ekran.
        theme.Apply();

        // Gra jest zawsze czarno-biała — niezależnie od motywu systemu.
        UserAppTheme = AppTheme.Light;
    }

    protected override Window CreateWindow(IActivationState? activationState) =>
        new(new AppShell()) { Title = "Mała wioska" };
}
