using System.Windows.Input;
using CommunityToolkit.Maui.Behaviors;
using CommunityToolkit.Maui.Core;
using LittleVillage.Theme;
using Microsoft.Maui.Controls.Shapes;

namespace LittleVillage.Controls;

/// <summary>
/// Bazowy przycisk w stylu makiety: gruba ramka, nieregularne zaokrąglenia, twardy cień.
/// Wciśnięty lub wybrany: odwrócone kolory i przesunięcie „w cień”.
/// Cień to osobna ramka pod spodem — działa identycznie na każdej platformie.
/// </summary>
public abstract class SketchButton : ContentView
{
    public static readonly BindableProperty CommandProperty = BindableProperty.Create(
        nameof(Command), typeof(ICommand), typeof(SketchButton), propertyChanged: OnCommandChanged);

    public static readonly BindableProperty CommandParameterProperty = BindableProperty.Create(
        nameof(CommandParameter), typeof(object), typeof(SketchButton), propertyChanged: OnCommandChanged);

    public static readonly BindableProperty IsSelectedProperty = BindableProperty.Create(
        nameof(IsSelected), typeof(bool), typeof(SketchButton), false, propertyChanged: OnVisualChanged);

    public static readonly BindableProperty FaceColorProperty = BindableProperty.Create(
        nameof(FaceColor), typeof(Color), typeof(SketchButton), Palette.Paper, propertyChanged: OnVisualChanged);

    public static readonly BindableProperty InkColorProperty = BindableProperty.Create(
        nameof(InkColor), typeof(Color), typeof(SketchButton), Palette.Ink, propertyChanged: OnVisualChanged);

    public static readonly BindableProperty StrokeThicknessProperty = BindableProperty.Create(
        nameof(StrokeThickness), typeof(double), typeof(SketchButton), 3d, propertyChanged: OnShapeChanged);

    public static readonly BindableProperty CornerRadiusProperty = BindableProperty.Create(
        nameof(CornerRadius), typeof(CornerRadius), typeof(SketchButton), new CornerRadius(10, 14, 13, 9), propertyChanged: OnShapeChanged);

    public static readonly BindableProperty ShadowOffsetProperty = BindableProperty.Create(
        nameof(ShadowOffset), typeof(double), typeof(SketchButton), 4d, propertyChanged: OnShapeChanged);

    private readonly Border _shadow;
    private readonly Border _face;
    private readonly TouchBehavior _touch;
    private ICommand? _subscribedCommand;
    private bool _isPressed;

    protected SketchButton()
    {
        _shadow = new Border { StrokeThickness = 0, InputTransparent = true };
        _face = new Border();

        var root = new Grid { Children = { _shadow, _face } };

        _touch = new TouchBehavior { ShouldMakeChildrenInputTransparent = true };
        _touch.CurrentTouchStateChanged += OnTouchStateChanged;
        root.Behaviors.Add(_touch);

        Content = root;
        ApplyShape();
    }

    public ICommand? Command
    {
        get => (ICommand?)GetValue(CommandProperty);
        set => SetValue(CommandProperty, value);
    }

    public object? CommandParameter
    {
        get => GetValue(CommandParameterProperty);
        set => SetValue(CommandParameterProperty, value);
    }

    /// <summary>Trwale „wciśnięty” — np. wybrana opcja fabuły.</summary>
    public bool IsSelected
    {
        get => (bool)GetValue(IsSelectedProperty);
        set => SetValue(IsSelectedProperty, value);
    }

    public Color FaceColor
    {
        get => (Color)GetValue(FaceColorProperty);
        set => SetValue(FaceColorProperty, value);
    }

    public Color InkColor
    {
        get => (Color)GetValue(InkColorProperty);
        set => SetValue(InkColorProperty, value);
    }

    public double StrokeThickness
    {
        get => (double)GetValue(StrokeThicknessProperty);
        set => SetValue(StrokeThicknessProperty, value);
    }

    /// <summary>Różne promienie narożników dają efekt ręcznie rysowanej ramki.</summary>
    public CornerRadius CornerRadius
    {
        get => (CornerRadius)GetValue(CornerRadiusProperty);
        set => SetValue(CornerRadiusProperty, value);
    }

    public double ShadowOffset
    {
        get => (double)GetValue(ShadowOffsetProperty);
        set => SetValue(ShadowOffsetProperty, value);
    }

    /// <summary>Ramka z treścią przycisku (do ustawienia rozmiaru i wypełnienia w klasach pochodnych).</summary>
    protected Border Face => _face;

    /// <summary>Klasy pochodne kolorują treść (tekst, ikonę) aktualnym kolorem pierwszego planu.</summary>
    protected abstract void ApplyForeground(Color foreground);

    protected override void OnPropertyChanged(string? propertyName = null)
    {
        base.OnPropertyChanged(propertyName);

        if (propertyName == IsEnabledProperty.PropertyName)
        {
            Opacity = IsEnabled ? 1 : 0.45;
            _touch.IsEnabled = IsEnabled;
        }
    }

    protected override void OnHandlerChanged()
    {
        base.OnHandlerChanged();
        UpdateVisualState();
    }

    private static void OnVisualChanged(BindableObject bindable, object oldValue, object newValue) =>
        ((SketchButton)bindable).UpdateVisualState();

    private static void OnShapeChanged(BindableObject bindable, object oldValue, object newValue) =>
        ((SketchButton)bindable).ApplyShape();

    private static void OnCommandChanged(BindableObject bindable, object oldValue, object newValue)
    {
        var button = (SketchButton)bindable;

        if (button._subscribedCommand is not null)
        {
            button._subscribedCommand.CanExecuteChanged -= button.OnCanExecuteChanged;
        }

        button._subscribedCommand = button.Command;
        if (button._subscribedCommand is not null)
        {
            button._subscribedCommand.CanExecuteChanged += button.OnCanExecuteChanged;
        }

        button._touch.Command = button.Command;
        button._touch.CommandParameter = button.CommandParameter;
        button.OnCanExecuteChanged(button, EventArgs.Empty);
    }

    private void OnCanExecuteChanged(object? sender, EventArgs e) =>
        IsEnabled = Command?.CanExecute(CommandParameter) ?? true;

    private void OnTouchStateChanged(object? sender, TouchStateChangedEventArgs e)
    {
        _isPressed = e.State == TouchState.Pressed;
        UpdateVisualState();
    }

    private void ApplyShape()
    {
        var offset = ShadowOffset;

        _face.StrokeShape = new RoundRectangle { CornerRadius = CornerRadius };
        _shadow.StrokeShape = new RoundRectangle { CornerRadius = CornerRadius };
        _face.StrokeThickness = StrokeThickness;
        _face.Margin = new Thickness(0, 0, offset, offset);
        _shadow.Margin = new Thickness(offset, offset, 0, 0);

        UpdateVisualState();
    }

    private void UpdateVisualState()
    {
        var inverted = _isPressed || IsSelected;
        var foreground = inverted ? FaceColor : InkColor;

        _face.Stroke = InkColor;
        _face.BackgroundColor = inverted ? InkColor : FaceColor;
        _shadow.BackgroundColor = InkColor;

        // Wciśnięty: wchodzi całkiem w cień. Wybrany: zostaje 1 px cienia (jak na makiecie).
        var shift = _isPressed ? ShadowOffset : IsSelected ? Math.Max(0, ShadowOffset - 1) : 0;
        _face.TranslationX = shift;
        _face.TranslationY = shift;

        // Konstruktor bazowy działa przed konstruktorem klasy pochodnej — jej treść może jeszcze nie istnieć.
        // Kolor zostanie nałożony ponownie w OnHandlerChanged.
        if (_face.Content is not null)
        {
            ApplyForeground(foreground);
        }
    }
}
