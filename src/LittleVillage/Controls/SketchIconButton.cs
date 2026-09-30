using CommunityToolkit.Maui.Behaviors;

namespace LittleVillage.Controls;

/// <summary>Kwadratowy przycisk z ikoną: „Dalej”, zwijanie okna, plecak.</summary>
public sealed class SketchIconButton : SketchButton
{
    public static readonly BindableProperty IconProperty = BindableProperty.Create(
        nameof(Icon), typeof(ImageSource), typeof(SketchIconButton),
        propertyChanged: (b, _, n) => ((SketchIconButton)b)._image.Source = (ImageSource?)n);

    public static readonly BindableProperty IconSizeProperty = BindableProperty.Create(
        nameof(IconSize), typeof(double), typeof(SketchIconButton), 30d,
        propertyChanged: (b, _, n) => ((SketchIconButton)b)._image.WidthRequest = ((SketchIconButton)b)._image.HeightRequest = (double)n);

    public static readonly BindableProperty FaceSizeProperty = BindableProperty.Create(
        nameof(FaceSize), typeof(Size), typeof(SketchIconButton), new Size(58, 58),
        propertyChanged: (b, _, _) => ((SketchIconButton)b).ApplyFaceSize());

    private readonly Image _image;
    private readonly IconTintColorBehavior _tint = new();

    public SketchIconButton()
    {
        _image = new Image
        {
            WidthRequest = IconSize,
            HeightRequest = IconSize,
            HorizontalOptions = LayoutOptions.Center,
            VerticalOptions = LayoutOptions.Center,
            Behaviors = { _tint },
        };

        Face.Content = _image;
        Face.Padding = 0;
        ApplyFaceSize();
    }

    /// <summary>Ikona — dowolny obrazek (SVG/PNG). Kolor jest nadpisywany kolorem atramentu/papieru.</summary>
    public ImageSource? Icon
    {
        get => (ImageSource?)GetValue(IconProperty);
        set => SetValue(IconProperty, value);
    }

    public double IconSize
    {
        get => (double)GetValue(IconSizeProperty);
        set => SetValue(IconSizeProperty, value);
    }

    /// <summary>Rozmiar samej ramki (bez cienia), np. 58,58.</summary>
    public Size FaceSize
    {
        get => (Size)GetValue(FaceSizeProperty);
        set => SetValue(FaceSizeProperty, value);
    }

    protected override void ApplyForeground(Color foreground) => _tint.TintColor = foreground;

    private void ApplyFaceSize()
    {
        Face.WidthRequest = FaceSize.Width;
        Face.HeightRequest = FaceSize.Height;
    }
}
