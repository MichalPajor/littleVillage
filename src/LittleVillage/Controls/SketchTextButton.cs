using LittleVillage.Theme;

namespace LittleVillage.Controls;

/// <summary>Przycisk z napisem (menu główne).</summary>
public sealed class SketchTextButton : SketchButton
{
    public static readonly BindableProperty TextProperty = BindableProperty.Create(
        nameof(Text), typeof(string), typeof(SketchTextButton), string.Empty,
        propertyChanged: (b, _, n) => ((SketchTextButton)b)._label.Text = (string)n);

    private readonly Label _label;

    public SketchTextButton()
    {
        _label = new Label
        {
            FontFamily = Fonts.Display,
            FontSize = 26,
            HorizontalTextAlignment = TextAlignment.Center,
            VerticalTextAlignment = TextAlignment.Center,
        };

        StrokeThickness = 4;
        ShadowOffset = 5;
        CornerRadius = new CornerRadius(14, 10, 12, 16);
        Face.Padding = new Thickness(20, 10);
        Face.MinimumHeightRequest = 56;
        Face.Content = _label;
    }

    public string Text
    {
        get => (string)GetValue(TextProperty);
        set => SetValue(TextProperty, value);
    }

    protected override void ApplyForeground(Color foreground) => _label.TextColor = foreground;
}
