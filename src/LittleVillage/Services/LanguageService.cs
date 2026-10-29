using System.Globalization;
using LittleVillage.Core.Localization;
using LittleVillage.Resources.Strings;
using LittleVillage.Theme;

namespace LittleVillage.Services;

public sealed class LanguageService(IPreferences preferences) : ILanguageService
{
    private const string PreferredKey = "jezyk";

    /// <summary>Języki z gotowym tłumaczeniem interfejsu i fabuły — kolejne dopisujemy, gdy będą przetłumaczone.</summary>
    private static readonly string[] Translated = [GameLanguage.DefaultCode, "en"];

    // Język telefonu zapamiętany przed pierwszą zmianą kultury przez grę.
    private readonly CultureInfo _deviceCulture = CultureInfo.CurrentUICulture;

    public IReadOnlyList<GameLanguage> Available { get; } = GameLanguage.All.Where(l => Translated.Contains(l.Code)).ToArray();

    public string? Preferred { get; private set; } = preferences.Get<string?>(PreferredKey, null);

    public string Current => GameLanguage.Resolve(Preferred, _deviceCulture, Translated);

    public void Apply()
    {
        var culture = CultureInfo.GetCultureInfo(Current);
        CultureInfo.DefaultThreadCurrentUICulture = culture;
        CultureInfo.CurrentUICulture = culture;
        AppResources.Culture = culture;
        Fonts.UseFor(Current, Application.Current?.Resources);
    }

    public bool SetPreferred(string? code)
    {
        var previous = Current;
        Preferred = code;
        if (code is null)
        {
            preferences.Remove(PreferredKey);
        }
        else
        {
            preferences.Set(PreferredKey, code);
        }

        Apply();
        return Current != previous;
    }
}
