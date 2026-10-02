using LittleVillage.Theme;

namespace LittleVillage.Services;

/// <summary>
/// Podmienia kolory w zasobach aplikacji. Widoki korzystają z nich przez DynamicResource,
/// więc przełączenie zmienia wygląd od razu, bez przeładowania ekranu.
/// </summary>
public sealed class ThemeService(IPreferences preferences) : IThemeService
{
    private const string PreferenceKey = "dark_mode";

    public bool IsDark { get; private set; } = preferences.Get(PreferenceKey, false);

    public void Apply()
    {
        if (Application.Current?.Resources is not { } resources)
        {
            return;
        }

        resources["TextInk"] = IsDark ? Palette.Paper : Palette.Ink;
        resources["TextMuted"] = IsDark ? Palette.AshLight : Palette.Ash;
        resources["PanelBackground"] = IsDark ? Palette.NightTranslucent : Palette.PaperTranslucent;
        resources["PanelSolid"] = IsDark ? Palette.Night : Palette.Paper;
        resources["PanelStroke"] = IsDark ? Palette.Paper : Palette.Ink;
        resources["ButtonFace"] = IsDark ? Palette.Night : Palette.Paper;
        resources["ButtonInk"] = IsDark ? Palette.Paper : Palette.Ink;
    }

    public void SetDark(bool isDark)
    {
        IsDark = isDark;
        preferences.Set(PreferenceKey, isDark);
        Apply();
    }
}
