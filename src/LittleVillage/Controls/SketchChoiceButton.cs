using LittleVillage.Theme;

namespace LittleVillage.Controls;

/// <summary>Opcja wyboru fabuły: numer rzymski + tekst zawijany w wielu liniach.</summary>
public sealed class SketchChoiceButton : SketchButton
{
    public static readonly BindableProperty NumeralProperty = BindableProperty.Create(
        nameof(Numeral), typeof(string), typeof(SketchChoiceButton), string.Empty,
        propertyChanged: (b, _, n) => ((SketchChoiceButton)b)._numeral.Text = (string)n);

    public static readonly BindableProperty TextProperty = BindableProperty.Create(
        nameof(Text), typeof(string), typeof(SketchChoiceButton), string.Empty,
        propertyChanged: (b, _, n) => ((SketchChoiceButton)b)._text.Text = (string)n);

    private readonly Label _numeral;
    private readonly Label _text;

    public SketchChoiceButton()
    {
        _numeral = new Label
        {
            FontFamily = Fonts.Display,
            FontSize = 22,
            MinimumWidthRequest = 26,
            VerticalOptions = LayoutOptions.Start,
        };

        _text = new Label
        {
            FontFamily = Fonts.Body,
            FontSize = 16,
            LineHeight = 1.35,
            LineBreakMode = LineBreakMode.WordWrap,
            VerticalOptions = LayoutOptions.Center,
        };

        var layout = new Grid
        {
            ColumnDefinitions = [new ColumnDefinition(GridLength.Auto), new ColumnDefinition(GridLength.Star)],
            ColumnSpacing = 12,
        };
        layout.Add(_numeral, 0);
        layout.Add(_text, 1);

        StrokeThickness = 3;
        ShadowOffset = 4;
        Face.Padding = new Thickness(14, 12);
        Face.Content = layout;
    }

    public string Numeral
    {
        get => (string)GetValue(NumeralProperty);
        set => SetValue(NumeralProperty, value);
    }

    public string Text
    {
        get => (string)GetValue(TextProperty);
        set => SetValue(TextProperty, value);
    }

    protected override void ApplyForeground(Color foreground)
    {
        _numeral.TextColor = foreground;
        _text.TextColor = foreground;
    }
}
