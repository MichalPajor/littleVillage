using System.Text.Json.Serialization;

namespace LittleVillage.Core.Scenes;

/// <summary>Rodzaj zapętlonej animacji warstwy tła.</summary>
[JsonConverter(typeof(JsonStringEnumConverter<LayerAnimationType>))]
public enum LayerAnimationType
{
    /// <summary>Brak animacji.</summary>
    None,

    /// <summary>Kołysanie (obrót wokół punktu zaczepienia) — drzewa, zawieszone przedmioty. Amplituda w stopniach.</summary>
    Sway,

    /// <summary>Dryf w poziomie — chmury, mgła. Amplituda w jednostkach płótna.</summary>
    Drift,

    /// <summary>Unoszenie w pionie — ptaki, duchy. Amplituda w jednostkach płótna.</summary>
    Bob,

    /// <summary>Mruganie — oczy w lesie. Znika na krótko pod koniec cyklu.</summary>
    Blink,

    /// <summary>Migotanie — płomień świecy, kaganka. Amplituda = minimalna nieprzezroczystość (0–1).</summary>
    Flicker,
}

/// <summary>Parametry animacji warstwy.</summary>
public sealed record LayerAnimation
{
    public LayerAnimationType Type { get; init; } = LayerAnimationType.None;

    /// <summary>Siła efektu — znaczenie zależy od <see cref="Type"/>.</summary>
    public double Amplitude { get; init; } = 1;

    /// <summary>Długość jednego cyklu w milisekundach.</summary>
    public uint Duration { get; init; } = 4000;

    /// <summary>Punkt zaczepienia obrotu w poziomie (0 = lewa krawędź warstwy, 1 = prawa).</summary>
    public double AnchorX { get; init; } = 0.5;

    /// <summary>Punkt zaczepienia obrotu w pionie (0 = góra warstwy, 1 = dół).</summary>
    public double AnchorY { get; init; } = 1;

    /// <summary>Przesunięcie fazy (0–1), by kilka warstw nie ruszało się identycznie.</summary>
    public double Phase { get; init; }
}

/// <summary>Jedna warstwa tła — obrazek umieszczony w układzie współrzędnych płótna.</summary>
public sealed record BackgroundLayer
{
    /// <summary>Nazwa obrazka MAUI, np. <c>bg_wies_noc_tlo.png</c> (źródło może być SVG).</summary>
    public required string Image { get; init; }

    public double X { get; init; }

    public double Y { get; init; }

    public double Width { get; init; }

    public double Height { get; init; }

    public LayerAnimation? Animation { get; init; }
}

/// <summary>Tło sceny złożone z warstw. Płótno skalowane jest jak „AspectFill” (wypełnia ekran, nadmiar przycięty).</summary>
public sealed record SceneBackground
{
    public string Key { get; init; } = string.Empty;

    /// <summary>Szerokość płótna, w którego jednostkach podane są warstwy.</summary>
    public double Width { get; init; } = 390;

    /// <summary>Wysokość płótna.</summary>
    public double Height { get; init; } = 844;

    /// <summary>Kolor pod warstwami (#RRGGBB).</summary>
    public string BackgroundColor { get; init; } = "#EDEBE6";

    public IReadOnlyList<BackgroundLayer> Layers { get; init; } = [];
}
