using Android.App;
using Android.Content.PM;
using Android.OS;
using AndroidX.Core.View;

namespace LittleVillage;

[Activity(Theme = "@style/Maui.SplashTheme", MainLauncher = true, LaunchMode = LaunchMode.SingleTop, ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation | ConfigChanges.UiMode | ConfigChanges.ScreenLayout | ConfigChanges.SmallestScreenSize | ConfigChanges.Density)]
public class MainActivity : MauiAppCompatActivity
{
    protected override void OnCreate(Bundle? savedInstanceState)
    {
        base.OnCreate(savedInstanceState);

        if (Window is not { } window)
        {
            return;
        }

        // Pasek nawigacji: bez jasnej nakładki kontrastu, jasne ikony na czarnym tle gry.
        if (OperatingSystem.IsAndroidVersionAtLeast(29))
        {
            window.NavigationBarContrastEnforced = false;
        }

        if (WindowCompat.GetInsetsController(window, window.DecorView) is { } insets)
        {
            insets.AppearanceLightNavigationBars = false;
        }
    }
}
