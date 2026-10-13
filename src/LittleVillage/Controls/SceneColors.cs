namespace LittleVillage.Controls;

/// <summary>
/// Odwracanie kolorów tła w trybie ciemnym — bez osobnych rysunków. Przekształcenie liniowe dobrane do palety teł:
/// jasny papier (#EDEBE6) staje się prawie czarny (#151312), czarna kreska jasnoszara (#CDCDCD),
/// a czerwień (#A8101A) zostaje bez zmian. Liniowość zachowuje przejścia (kreskowanie, wygładzone krawędzie).
/// </summary>
public static class SceneColors
{
    // Wiersze: R', G', B' = a·R + b·G + c·B + przesunięcie (kanały 0–255); alfa bez zmian.
    private static readonly float[] Matrix =
    [
        -0.1613f, -0.6187f, 0f, 0f, 205f,
        -1.1613f, 0.3813f, 0f, 0f, 205f,
        -1.1177f, 0f, 0.3377f, 0f, 205f,
        0f, 0f, 0f, 1f, 0f,
    ];

    /// <summary>Kolor po odwróceniu (np. kolor płótna tła).</summary>
    public static Color Map(Color color, bool inverted)
    {
        if (!inverted)
        {
            return color;
        }

        float Row(int r) => Math.Clamp(
            (Matrix[r * 5] * color.Red * 255 + Matrix[r * 5 + 1] * color.Green * 255 + Matrix[r * 5 + 2] * color.Blue * 255 + Matrix[r * 5 + 4]) / 255f, 0f, 1f);

        return new Color(Row(0), Row(1), Row(2), color.Alpha);
    }

    /// <summary>Nakłada (albo zdejmuje) filtr kolorów na natywny obrazek warstwy.</summary>
    public static void ApplyFilter(Image image, bool inverted)
    {
#if ANDROID
        if (image.Handler?.PlatformView is Android.Widget.ImageView view)
        {
            if (inverted)
            {
                view.SetColorFilter(new Android.Graphics.ColorMatrixColorFilter(Matrix));
            }
            else
            {
                view.ClearColorFilter();
            }
        }
#endif
    }
}
