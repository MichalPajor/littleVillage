using CommunityToolkit.Maui.Behaviors;
using LittleVillage.Theme;

namespace LittleVillage.Controls;

/// <summary>
/// Obrazek jednobarwny (ozdobnik, kreska) barwiony podanym kolorem — w trybie ciemnym jasny na czarnym tle.
/// Kolor ustawia styl domyślny (DynamicResource), więc zmiana motywu działa od razu.
/// </summary>
public sealed class ThemedImage : Image
{
    public static readonly BindableProperty TintColorProperty = BindableProperty.Create(
        nameof(TintColor), typeof(Color), typeof(ThemedImage), Palette.Ink,
        propertyChanged: (b, _, n) => ((ThemedImage)b)._tint.TintColor = (Color)n);

    private readonly IconTintColorBehavior _tint = new() { TintColor = Palette.Ink };

    public ThemedImage()
    {
        Behaviors.Add(_tint);
    }

    public Color TintColor
    {
        get => (Color)GetValue(TintColorProperty);
        set => SetValue(TintColorProperty, value);
    }
}
