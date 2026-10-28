using LittleVillage.Controls;

namespace LittleVillage.Services;

/// <summary>
/// Wielkość tekstu trafia do zasobów aplikacji (style czytają ją przez DynamicResource), więc zmiana działa od razu.
/// </summary>
public sealed class SettingsService(IPreferences preferences) : ISettingsService
{
    private const string TextSizeKey = "wielkosc_tekstu";
    private const string ParallaxKey = "ruch_tla";

    public TextSize TextSize { get; private set; } = (TextSize)preferences.Get(TextSizeKey, (int)TextSize.Medium);

    public bool Parallax { get; private set; } = preferences.Get(ParallaxKey, true);

    public void Apply()
    {
        SceneBackgroundView.ParallaxEnabled = Parallax;
        if (Application.Current?.Resources is not { } resources)
        {
            return;
        }

        // Akapit opowieści / tekst opcji wyboru.
        (resources["StoryTextSize"], resources["ChoiceTextSize"]) = TextSize switch
        {
            TextSize.Small => (15d, 14d),
            TextSize.Large => (20d, 19d),
            _ => (17d, 16d),
        };
    }

    public void SetTextSize(TextSize size)
    {
        TextSize = size;
        preferences.Set(TextSizeKey, (int)size);
        Apply();
    }

    public void SetParallax(bool enabled)
    {
        Parallax = enabled;
        preferences.Set(ParallaxKey, enabled);
        Apply();
    }
}
