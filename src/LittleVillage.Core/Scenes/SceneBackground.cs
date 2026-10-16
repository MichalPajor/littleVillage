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

    /// <summary>Migotanie — mrugające światełka, ślepia. Amplituda = minimalna nieprzezroczystość (0–1).</summary>
    Flicker,

    /// <summary>
    /// Płomień — rozciąga się i kurczy od podstawy (punkt zaczepienia = podstawa ognia), faluje i lekko się kołysze.
    /// Amplituda = siła rozciągania (np. 0,12 = ±12% wysokości).
    /// </summary>
    Flame,

    /// <summary>
    /// Unoszenie z wygasaniem — iskry, popiół: warstwa wędruje w górę, pojawia się i gaśnie, po czym zaczyna od nowa.
    /// Amplituda = wysokość wzlotu w jednostkach płótna.
    /// </summary>
    Rise,

    /// <summary>
    /// Błądzenie po ósemce — motyle, ważki, świetliki, ptaki. Amplituda = promień w jednostkach płótna;
    /// <see cref="LayerAnimation.Flap"/> dodaje trzepot (ściskanie w poziomie).
    /// </summary>
    Wander,

    /// <summary>Kręgi na wodzie — warstwa rośnie od środka i zanika. Amplituda = skala końcowa (1 = pełny rozmiar).</summary>
    Ripple,

    /// <summary>
    /// Lot po łuku z punktu startu o (<see cref="LayerAnimation.Dx"/>, <see cref="LayerAnimation.Dy"/>) —
    /// strzała, skok do wody. Amplituda = wysokość łuku w jednostkach płótna. Obrót: <see cref="LayerAnimation.Spin"/>
    /// albo wzdłuż toru (<see cref="LayerAnimation.Tangent"/>).
    /// </summary>
    Arc,

    /// <summary>Rozbłysk — krótki, podwójny błysk (błyskawica). Amplituda = największa nieprzezroczystość.</summary>
    Flash,

    /// <summary>Unoszenie z wiatrem — puch dmuchawców: przesuwa się o (Dx, Dy) i faluje. Amplituda = wysokość fali.</summary>
    Float,

    /// <summary>Trafienie — wlatuje z odległości Dx i drga po uderzeniu (strzała w tarczy). Amplituda = drgania w stopniach.</summary>
    Strike,

    /// <summary>Powolne przesunięcie o (Dx, Dy) — zachodzące słońce. Zwykle jednorazowe (<see cref="LayerAnimation.Once"/>).</summary>
    Slide,

    /// <summary>Klatki — warstwa przełącza obrazki z <see cref="BackgroundLayer.Frames"/> (bieg, dziobanie, chlapanie).</summary>
    Frames,
}

/// <summary>Parametry animacji warstwy.</summary>
/// <remarks>
/// Właściwości z wartością domyślną mają <c>set</c>, nie <c>init</c>: generator System.Text.Json ustawia właściwości
/// <c>init</c> zawsze (brakujące w pliku na 0), przez co domyślne wartości by przepadały.
/// </remarks>
public sealed record LayerAnimation
{
    public LayerAnimationType Type { get; init; } = LayerAnimationType.None;

    /// <summary>Siła efektu — znaczenie zależy od <see cref="Type"/>.</summary>
    public double Amplitude { get; set; } = 1;

    /// <summary>Długość jednego cyklu w milisekundach.</summary>
    public uint Duration { get; set; } = 4000;

    /// <summary>Punkt zaczepienia obrotu w poziomie (0 = lewa krawędź warstwy, 1 = prawa).</summary>
    public double AnchorX { get; set; } = 0.5;

    /// <summary>Punkt zaczepienia obrotu w pionie (0 = góra warstwy, 1 = dół).</summary>
    public double AnchorY { get; set; } = 1;

    /// <summary>Przesunięcie fazy (0–1), by kilka warstw nie ruszało się identycznie.</summary>
    public double Phase { get; init; }

    /// <summary>Przesunięcie w poziomie (Arc, Float, Strike, Slide) w jednostkach płótna.</summary>
    public double Dx { get; init; }

    /// <summary>Przesunięcie w pionie (Arc, Float, Slide) w jednostkach płótna; dodatnie = w dół.</summary>
    public double Dy { get; init; }

    /// <summary>Obrót w stopniach w trakcie lotu (Arc) — np. skok na głowę.</summary>
    public double Spin { get; init; }

    /// <summary>Obrót wzdłuż toru lotu (Arc) — strzała zawsze grotem do przodu.</summary>
    public bool Tangent { get; init; }

    /// <summary>Siła trzepotu skrzydeł (Wander), 0–1.</summary>
    public double Flap { get; init; }

    /// <summary>
    /// Animacja odgrywana raz: od odsłonięcia warstwy (<see cref="BackgroundLayer.RevealOn"/>)
    /// albo od pokazania tła; potem warstwa zostaje w końcowym położeniu.
    /// </summary>
    public bool Once { get; init; }
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

    /// <summary>
    /// Nazwa odsłonięcia (tag <c># pokaz: nazwa</c> w fabule). Warstwa z tą wartością jest na starcie
    /// niewidoczna i pojawia się dopiero, gdy gracz doczyta do akapitu z tagiem — tło nie zdradza fabuły.
    /// </summary>
    public string? RevealOn { get; init; }

    /// <summary>
    /// Nazwa odsłonięcia, przy którym warstwa znika (przenikaniem) — np. nauczyciel schodzi z biurka,
    /// gdy ten sam tekst odsłania go przy oknie. Kilka nazw po przecinku — znika przy pierwszej z nich.
    /// </summary>
    public string? HideOn { get; init; }

    /// <summary>Kolejne obrazki dla animacji <see cref="LayerAnimationType.Frames"/> (pierwszy zastępuje <see cref="Image"/>).</summary>
    public IReadOnlyList<string>? Frames { get; init; }

    /// <summary>Opóźnienie pojawienia się w ms — od pokazania tła albo od odsłonięcia (np. gwiazdy zapalające się po kolei, tęcza po burzy).</summary>
    public uint AppearAfter { get; init; }

    /// <summary>Po ilu ms od pojawienia się warstwa znika (np. deszcz ustępuje, mgła się rozwiewa). 0 = zostaje.</summary>
    public uint HideAfter { get; init; }

    /// <summary>Czas przenikania przy pojawianiu się i znikaniu, w ms.</summary>
    public uint FadeDuration { get; set; } = 900;

    /// <summary>Nie odwracać kolorów w trybie ciemnym (np. biały rozbłysk błyskawicy).</summary>
    public bool NoInvert { get; init; }

    /// <summary>Głębia do paralaksy (0 = tło, nieruchome; 1 = pierwszy plan). Brak = według kolejności warstw.</summary>
    public double? Depth { get; init; }
}

/// <summary>Tło sceny złożone z warstw. Płótno skalowane jest jak „AspectFill” (wypełnia ekran, nadmiar przycięty).</summary>
public sealed record SceneBackground
{
    public string Key { get; init; } = string.Empty;

    /// <summary>Szerokość płótna, w którego jednostkach podane są warstwy.</summary>
    public double Width { get; set; } = 390;

    /// <summary>Wysokość płótna.</summary>
    public double Height { get; set; } = 844;

    /// <summary>Kolor pod warstwami (#RRGGBB).</summary>
    public string BackgroundColor { get; set; } = "#EDEBE6";

    public IReadOnlyList<BackgroundLayer> Layers { get; init; } = [];
}
