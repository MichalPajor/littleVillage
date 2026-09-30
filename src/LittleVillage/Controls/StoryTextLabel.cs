using LittleVillage.Core.Text;
using LittleVillage.Theme;

namespace LittleVillage.Controls;

/// <summary>
/// Akapit fabuły: obsługuje <c>_kursywę_</c> i inicjał (pierwsza litera czcionką Pirata One).
/// </summary>
public sealed class StoryTextLabel : Label
{
    public static readonly BindableProperty StoryTextProperty = BindableProperty.Create(
        nameof(StoryText), typeof(string), typeof(StoryTextLabel), string.Empty,
        propertyChanged: (b, _, _) => ((StoryTextLabel)b).Rebuild());

    public static readonly BindableProperty HasDropCapProperty = BindableProperty.Create(
        nameof(HasDropCap), typeof(bool), typeof(StoryTextLabel), false,
        propertyChanged: (b, _, _) => ((StoryTextLabel)b).Rebuild());

    public static readonly BindableProperty DropCapFontSizeProperty = BindableProperty.Create(
        nameof(DropCapFontSize), typeof(double), typeof(StoryTextLabel), 40d,
        propertyChanged: (b, _, _) => ((StoryTextLabel)b).Rebuild());

    public string StoryText
    {
        get => (string)GetValue(StoryTextProperty);
        set => SetValue(StoryTextProperty, value);
    }

    public bool HasDropCap
    {
        get => (bool)GetValue(HasDropCapProperty);
        set => SetValue(HasDropCapProperty, value);
    }

    public double DropCapFontSize
    {
        get => (double)GetValue(DropCapFontSizeProperty);
        set => SetValue(DropCapFontSizeProperty, value);
    }

    private void Rebuild()
    {
        var formatted = new FormattedString();
        var runs = InlineMarkup.Parse(StoryText);

        for (var i = 0; i < runs.Count; i++)
        {
            var (text, italic) = runs[i];

            if (i == 0 && HasDropCap && text.Length > 0)
            {
                formatted.Spans.Add(new Span
                {
                    Text = text[..1],
                    FontFamily = Fonts.Display,
                    FontSize = DropCapFontSize,
                });
                text = text[1..];
            }

            formatted.Spans.Add(new Span
            {
                Text = text,
                FontFamily = italic ? Fonts.BodyItalic : Fonts.Body,
            });
        }

        FormattedText = formatted;
    }
}
