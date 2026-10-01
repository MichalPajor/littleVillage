namespace LittleVillage.Theme;

/// <summary>
/// Paleta z makiety: czerń, papier, biel i czerwień — czerwień wyłącznie dla krwi.
/// Jedyne źródło kolorów: Colors.xaml odwołuje się tutaj przez x:Static.
/// </summary>
public static class Palette
{
    /// <summary>Atrament — kontury, tekst, cienie.</summary>
    public static readonly Color Ink = Color.FromArgb("#000000");

    /// <summary>Papier — tło, przyciski.</summary>
    public static readonly Color Paper = Color.FromArgb("#EDEBE6");

    /// <summary>Okno fabuły: papier kryjący w 96% — tło ledwie prześwituje, tekst czytelny.</summary>
    public static readonly Color PaperTranslucent = Color.FromRgba(237, 235, 230, 245);

    /// <summary>Biel — światła: księżyc, ściany.</summary>
    public static readonly Color White = Color.FromArgb("#FFFFFF");

    /// <summary>Popiół — podpisy, podpowiedzi.</summary>
    public static readonly Color Ash = Color.FromArgb("#5E5E5E");

    /// <summary>Krew — jedyny kolor.</summary>
    public static readonly Color Blood = Color.FromArgb("#A8101A");

    /// <summary>Krew zakrzepła — cień w plamach krwi.</summary>
    public static readonly Color BloodDark = Color.FromArgb("#5C0409");

    /// <summary>Przyciemnienie pod oknami nakładanymi na ekran (ekwipunek).</summary>
    public static readonly Color Scrim = Color.FromRgba(0, 0, 0, 170);
}
