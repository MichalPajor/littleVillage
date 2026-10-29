using LittleVillage.Resources.Strings;
using LittleVillage.Services;

namespace LittleVillage;

public partial class App : Application
{
    public App(ILanguageService language, IThemeService theme, ISettingsService settings)
    {
        InitializeComponent();

        // Język (napisy, czcionki) przed pierwszym ekranem — ekrany biorą je przy tworzeniu.
        language.Apply();

        // Zapamiętany tryb jasny/ciemny okien z tekstem i ustawienia gracza — zanim powstanie pierwszy ekran.
        theme.Apply();
        settings.Apply();

        // Gra jest zawsze czarno-biała — niezależnie od motywu systemu.
        UserAppTheme = AppTheme.Light;
    }

    protected override Window CreateWindow(IActivationState? activationState) =>
        new(new AppShell()) { Title = AppResources.GameTitle };
}
