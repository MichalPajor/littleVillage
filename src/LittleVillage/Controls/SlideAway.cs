namespace LittleVillage.Controls;

/// <summary>
/// Właściwości dołączone do animowanego wysuwania elementu za prawą krawędź ekranu
/// (zwijanie okna fabuły, by podziwiać tło).
/// </summary>
public static class SlideAway
{
    public static readonly BindableProperty IsCollapsedProperty = BindableProperty.CreateAttached(
        "IsCollapsed", typeof(bool), typeof(SlideAway), false, propertyChanged: OnIsCollapsedChanged);

    /// <summary>Czy przesunięcie ma uwzględniać szerokość elementu (true dla okna, false dla przycisku).</summary>
    public static readonly BindableProperty IncludeWidthProperty = BindableProperty.CreateAttached(
        "IncludeWidth", typeof(bool), typeof(SlideAway), true);

    /// <summary>Dodatkowy dystans przesunięcia (poza prawym marginesem elementu).</summary>
    public static readonly BindableProperty ExtraDistanceProperty = BindableProperty.CreateAttached(
        "ExtraDistance", typeof(double), typeof(SlideAway), 0d);

    public static bool GetIsCollapsed(BindableObject view) => (bool)view.GetValue(IsCollapsedProperty);

    public static void SetIsCollapsed(BindableObject view, bool value) => view.SetValue(IsCollapsedProperty, value);

    public static bool GetIncludeWidth(BindableObject view) => (bool)view.GetValue(IncludeWidthProperty);

    public static void SetIncludeWidth(BindableObject view, bool value) => view.SetValue(IncludeWidthProperty, value);

    public static double GetExtraDistance(BindableObject view) => (double)view.GetValue(ExtraDistanceProperty);

    public static void SetExtraDistance(BindableObject view, double value) => view.SetValue(ExtraDistanceProperty, value);

    private static async void OnIsCollapsedChanged(BindableObject bindable, object oldValue, object newValue)
    {
        if (bindable is not VisualElement element)
        {
            return;
        }

        var margin = element is View view ? view.Margin.Right : 0;
        var width = GetIncludeWidth(element) ? element.Width : 0;
        var target = (bool)newValue ? width + margin + GetExtraDistance(element) : 0;

        element.CancelAnimations();
        await element.TranslateToAsync(target, element.TranslationY, 350, Easing.CubicInOut);
    }
}
