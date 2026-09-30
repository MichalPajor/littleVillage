namespace LittleVillage;

public partial class App : Application
{
    public App()
    {
        InitializeComponent();

        // Gra jest zawsze czarno-biała — niezależnie od motywu systemu.
        UserAppTheme = AppTheme.Light;
    }

    protected override Window CreateWindow(IActivationState? activationState) =>
        new(new AppShell()) { Title = "Mała wioska" };
}
