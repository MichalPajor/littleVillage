using LittleVillage.Theme;
using Microsoft.Maui.Controls.Shapes;

namespace LittleVillage.Controls;

/// <summary>
/// Ramka okna z makiety: półprzezroczysty papier, gruba ramka, cienka linia wewnętrzna
/// i plama krwi na lewym górnym rogu.
/// </summary>
[ContentProperty(nameof(FrameContent))]
public sealed class InkFrame : ContentView
{
    public static readonly BindableProperty FrameContentProperty = BindableProperty.Create(
        nameof(FrameContent), typeof(View), typeof(InkFrame),
        propertyChanged: (b, _, n) => ((InkFrame)b)._contentHost.Content = (View?)n);

    public static readonly BindableProperty ShowBloodProperty = BindableProperty.Create(
        nameof(ShowBlood), typeof(bool), typeof(InkFrame), true,
        propertyChanged: (b, _, n) => ((InkFrame)b)._blood.IsVisible = (bool)n);

    public static readonly BindableProperty FrameCornerRadiusProperty = BindableProperty.Create(
        nameof(FrameCornerRadius), typeof(CornerRadius), typeof(InkFrame), new CornerRadius(6, 10, 8, 12),
        propertyChanged: (b, _, n) => ((InkFrame)b)._outer.StrokeShape = new RoundRectangle { CornerRadius = (CornerRadius)n });

    /// <summary>Tło okna — domyślnie półprzezroczysty papier (okno fabuły); nieprzezroczysty dla okien nakładanych.</summary>
    public static readonly BindableProperty FrameBackgroundColorProperty = BindableProperty.Create(
        nameof(FrameBackgroundColor), typeof(Color), typeof(InkFrame), Palette.PaperTranslucent,
        propertyChanged: (b, _, n) => ((InkFrame)b)._outer.BackgroundColor = (Color)n);

    private readonly Border _outer;
    private readonly ContentView _contentHost;
    private readonly Image _blood;

    public InkFrame()
    {
        _contentHost = new ContentView();

        var innerLine = new Border
        {
            Margin = 5,
            Stroke = Palette.Ink,
            StrokeThickness = 1.5,
            StrokeShape = new Rectangle(),
            BackgroundColor = Colors.Transparent,
            InputTransparent = true,
        };

        _outer = new Border
        {
            BackgroundColor = FrameBackgroundColor,
            Stroke = Palette.Ink,
            StrokeThickness = 4,
            StrokeShape = new RoundRectangle { CornerRadius = FrameCornerRadius },
            Content = new Grid { Children = { innerLine, _contentHost } },
        };

        _blood = new Image
        {
            Source = "decor_blood.png",
            WidthRequest = 66,
            HeightRequest = 70,
            TranslationX = -24,
            TranslationY = -24,
            HorizontalOptions = LayoutOptions.Start,
            VerticalOptions = LayoutOptions.Start,
            InputTransparent = true,
        };

        Content = new Grid { Children = { _outer, _blood } };
    }

    public View? FrameContent
    {
        get => (View?)GetValue(FrameContentProperty);
        set => SetValue(FrameContentProperty, value);
    }

    public bool ShowBlood
    {
        get => (bool)GetValue(ShowBloodProperty);
        set => SetValue(ShowBloodProperty, value);
    }

    public Color FrameBackgroundColor
    {
        get => (Color)GetValue(FrameBackgroundColorProperty);
        set => SetValue(FrameBackgroundColorProperty, value);
    }

    public CornerRadius FrameCornerRadius
    {
        get => (CornerRadius)GetValue(FrameCornerRadiusProperty);
        set => SetValue(FrameCornerRadiusProperty, value);
    }
}
