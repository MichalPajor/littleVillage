using System.Globalization;
using LittleVillage.Core.Localization;

namespace LittleVillage.Core.Tests;

public sealed class GameLanguageTests
{
    private static readonly string[] Available = ["pl", "en", "pt"];

    [Fact]
    public void Player_choice_wins_over_phone_language()
    {
        Assert.Equal("pl", GameLanguage.Resolve("pl", new CultureInfo("en-US"), Available));
    }

    [Theory]
    [InlineData("en-GB", "en")]
    [InlineData("pt-BR", "pt")]
    [InlineData("pt-PT", "pt")]
    [InlineData("pl-PL", "pl")]
    public void Without_choice_phone_language_is_used(string device, string expected)
    {
        Assert.Equal(expected, GameLanguage.Resolve(null, new CultureInfo(device), Available));
    }

    [Fact]
    public void Unknown_phone_language_falls_back_to_english()
    {
        Assert.Equal("en", GameLanguage.Resolve(null, new CultureInfo("hu-HU"), Available));
    }

    [Fact]
    public void Without_english_translation_unknown_phone_language_falls_back_to_polish()
    {
        Assert.Equal("pl", GameLanguage.Resolve(null, new CultureInfo("hu-HU"), ["pl"]));
    }

    [Fact]
    public void Choice_of_language_without_translation_is_ignored()
    {
        // Np. gracz wybrał język, którego tłumaczenie potem wycofano.
        Assert.Equal("en", GameLanguage.Resolve("ja", new CultureInfo("en-US"), Available));
    }

    [Fact]
    public void Every_language_has_unique_code()
    {
        Assert.Equal(GameLanguage.All.Count, GameLanguage.All.Select(l => l.Code).Distinct().Count());
        Assert.Equal(GameLanguage.DefaultCode, GameLanguage.All[0].Code);
    }
}
