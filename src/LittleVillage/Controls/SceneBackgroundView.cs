using LittleVillage.Core.Scenes;
using Microsoft.Maui.Devices.Sensors;

namespace LittleVillage.Controls;

/// <summary>
/// Tło sceny złożone z warstw (obrazków) z animacjami: kołysanie drzew, dryf chmur, mruganie oczu w lesie,
/// motyle, kręgi na wodzie, strzały w locie… Płótno skaluje się jak „AspectFill”. Zmiana tła = płynne przenikanie.
/// Przy przechylaniu telefonu warstwy przesuwają się zależnie od głębi (paralaksa).
/// </summary>
public sealed class SceneBackgroundView : ContentView
{
    public static readonly BindableProperty SceneProperty = BindableProperty.Create(
        nameof(Scene), typeof(SceneBackground), typeof(SceneBackgroundView),
        propertyChanged: (b, o, n) => ((SceneBackgroundView)b).OnSceneChanged((SceneBackground?)o, (SceneBackground?)n));

    public static readonly BindableProperty IsInvertedProperty = BindableProperty.Create(
        nameof(IsInverted), typeof(bool), typeof(SceneBackgroundView), false,
        propertyChanged: (b, _, n) => ((SceneBackgroundView)b)._current?.SetInverted((bool)n));

    private const string AnimationName = "SceneLayer";
    private const uint CrossFadeDuration = 700;

    // Paralaksa: przechył ±3 m/s² przesuwa pierwszy plan o tyle jednostek płótna (nadmiar płótna przy AspectFill to ok. 5).
    private const double ParallaxShift = 4;
    private const double ParallaxTilt = 3;
    private const double ParallaxSmoothing = 0.12;

    // Jeden czujnik dla wszystkich widoków tła: nowa strona ładuje się, zanim poprzednia zniknie,
    // więc każdy widok tylko się zapisuje, a czujnik działa, dopóki ktokolwiek słucha.
    private static readonly object TiltLock = new();
    private static event Action<double, double>? TiltChanged;
    private static int s_listeners;
    private static double s_tiltX;
    private static double s_tiltY;

    private readonly Grid _root = new() { IsClippedToBounds = true };
    private SceneLayerSet? _current;
    private bool _isLoaded;
    private bool _listening;

    public SceneBackgroundView()
    {
        Content = _root;
        InputTransparent = true;
        SizeChanged += (_, _) => _current?.Arrange(Width, Height);
        Loaded += (_, _) => { _isLoaded = true; _current?.StartAnimations(); StartParallax(); };
        Unloaded += (_, _) => { _isLoaded = false; _current?.StopAnimations(); StopParallax(); };
    }

    public SceneBackground? Scene
    {
        get => (SceneBackground?)GetValue(SceneProperty);
        set => SetValue(SceneProperty, value);
    }

    /// <summary>Tryb ciemny: tło odwrócone filtrem kolorów (jasny papier ciemnieje, kreska jaśnieje, czerwień zostaje).</summary>
    public bool IsInverted
    {
        get => (bool)GetValue(IsInvertedProperty);
        set => SetValue(IsInvertedProperty, value);
    }

    /// <summary>
    /// Ukrywa wszystkie warstwy odsłaniane przez tekst (<c>revealOn</c>) poza podanymi — te widać od razu.
    /// Wywoływane przy każdej nowej stronie fabuły.
    /// </summary>
    public void ResetReveals(IEnumerable<string> alreadyRevealed) => _current?.ResetReveals(alreadyRevealed);

    /// <summary>Płynnie odsłania warstwy oznaczone tą nazwą (tag <c># pokaz: nazwa</c>).</summary>
    public void Reveal(string name) => _current?.Reveal(name);

    private async void OnSceneChanged(SceneBackground? oldScene, SceneBackground? newScene)
    {
        if (newScene is null || ReferenceEquals(oldScene, newScene) || newScene.Key == _current?.Scene.Key)
        {
            return;
        }

        var previous = _current;
        var next = new SceneLayerSet(newScene, IsInverted) { Opacity = previous is null ? 1 : 0 };
        _current = next;

        _root.Add(next);
        next.Arrange(Width, Height);
        next.Parallax(s_tiltX, s_tiltY);
        if (_isLoaded)
        {
            next.StartAnimations();
        }

        if (previous is null)
        {
            return;
        }

        await next.FadeToAsync(1, CrossFadeDuration, Easing.CubicInOut);
        previous.StopAnimations();
        _root.Remove(previous);
    }

    private void StartParallax()
    {
        if (_listening)
        {
            return;
        }

        _listening = true;
        TiltChanged += OnTilt;
        lock (TiltLock)
        {
            if (s_listeners++ > 0)
            {
                return;
            }

            try
            {
                if (Accelerometer.Default.IsSupported)
                {
                    Accelerometer.Default.ReadingChanged += OnReading;
                    if (!Accelerometer.Default.IsMonitoring)
                    {
                        Accelerometer.Default.Start(SensorSpeed.UI);
                    }
                }
            }
            catch (Exception)
            {
                // Brak czujnika albo brak dostępu — tło po prostu się nie przechyla.
            }
        }
    }

    private void StopParallax()
    {
        if (!_listening)
        {
            return;
        }

        _listening = false;
        TiltChanged -= OnTilt;
        lock (TiltLock)
        {
            if (--s_listeners > 0)
            {
                return;
            }

            try
            {
                Accelerometer.Default.ReadingChanged -= OnReading;
                if (Accelerometer.Default.IsMonitoring)
                {
                    Accelerometer.Default.Stop();
                }
            }
            catch (Exception)
            {
                // Czujnik już zatrzymany.
            }
        }
    }

    private static void OnReading(object? sender, AccelerometerChangedEventArgs e)
    {
        // Odczyt w g; przeliczamy na m/s² i wygładzamy, żeby tło nie drżało w dłoni.
        var x = Math.Clamp(e.Reading.Acceleration.X * 9.81 / ParallaxTilt, -1, 1);
        var y = Math.Clamp((e.Reading.Acceleration.Z * 9.81 - 3) / ParallaxTilt, -1, 1);
        s_tiltX += (x - s_tiltX) * ParallaxSmoothing;
        s_tiltY += (y - s_tiltY) * ParallaxSmoothing;
        TiltChanged?.Invoke(s_tiltX, s_tiltY);
    }

    private void OnTilt(double x, double y) => Dispatcher.Dispatch(() => _current?.Parallax(x, y));

    /// <summary>Jedna warstwa: obrazek (albo klatki) w pojemniku. Pojemnik = odsłanianie i paralaksa, widok = animacje.</summary>
    private sealed class LayerEntry(View view, ContentView holder, BackgroundLayer layer, IReadOnlyList<Image> images, double depth)
    {
        public View View { get; } = view;

        public ContentView Holder { get; } = holder;

        public BackgroundLayer Layer { get; } = layer;

        public IReadOnlyList<Image> Images { get; } = images;

        public double Depth { get; } = depth;

        public bool Shown { get; set; }
    }

    /// <summary>Komplet warstw jednego tła.</summary>
    private sealed class SceneLayerSet : AbsoluteLayout
    {
        private const string TimelineName = "LayerTimeline";

        private readonly List<LayerEntry> _layers = [];
        private double _scale = 1;
        private bool _inverted;

        public SceneLayerSet(SceneBackground scene, bool inverted)
        {
            Scene = scene;
            _inverted = inverted;
            BackgroundColor = SceneColors.Map(Color.FromArgb(scene.BackgroundColor), inverted);

            var count = scene.Layers.Count;
            for (var i = 0; i < count; i++)
            {
                var layer = scene.Layers[i];
                var sources = layer.Frames is { Count: > 0 } frames ? frames : [layer.Image];
                var images = sources.Select(source => new Image { Source = source, Aspect = Aspect.Fill }).ToList();
                foreach (var image in images)
                {
                    image.HandlerChanged += (_, _) => SceneColors.ApplyFilter(image, _inverted && !layer.NoInvert);
                }

                View view = images.Count == 1 ? images[0] : BuildFrames(images);
                if (layer.Animation is { } animation)
                {
                    view.AnchorX = animation.AnchorX;
                    view.AnchorY = animation.AnchorY;
                }

                var holder = new ContentView { Content = view, Opacity = StartsHidden(layer) ? 0 : 1 };
                var depth = layer.Depth ?? (count > 1 ? (double)i / (count - 1) : 0);
                _layers.Add(new LayerEntry(view, holder, layer, images, depth));
                Add(holder);
            }
        }

        public SceneBackground Scene { get; }

        public void SetInverted(bool inverted)
        {
            _inverted = inverted;
            BackgroundColor = SceneColors.Map(Color.FromArgb(Scene.BackgroundColor), inverted);
            foreach (var entry in _layers)
            {
                foreach (var image in entry.Images)
                {
                    SceneColors.ApplyFilter(image, inverted && !entry.Layer.NoInvert);
                }
            }
        }

        /// <summary>Rozmieszcza warstwy tak, by płótno wypełniło widok (nadmiar przycięty, środek widoczny).</summary>
        public void Arrange(double width, double height)
        {
            if (width <= 0 || height <= 0)
            {
                return;
            }

            _scale = Math.Max(width / Scene.Width, height / Scene.Height);
            var offsetX = (width - Scene.Width * _scale) / 2;
            var offsetY = (height - Scene.Height * _scale) / 2;

            foreach (var entry in _layers)
            {
                var layer = entry.Layer;
                SetLayoutBounds((IView)entry.Holder, new Rect(
                    offsetX + layer.X * _scale,
                    offsetY + layer.Y * _scale,
                    layer.Width * _scale,
                    layer.Height * _scale));
            }
        }

        /// <summary>Przesuwa warstwy zgodnie z przechyłem telefonu (-1…1); bliższe warstwy bardziej.</summary>
        public void Parallax(double tiltX, double tiltY)
        {
            foreach (var entry in _layers)
            {
                entry.Holder.TranslationX = -tiltX * entry.Depth * ParallaxShift * _scale;
                entry.Holder.TranslationY = tiltY * entry.Depth * ParallaxShift * 0.5 * _scale;
            }
        }

        public void StartAnimations()
        {
            foreach (var entry in _layers)
            {
                if (entry.Layer.Animation is { Type: not LayerAnimationType.None, Once: false } animation)
                {
                    entry.View.AbortAnimation(AnimationName);
                    new Animation(t => Apply(entry, animation, (t + animation.Phase) % 1), 0, 1)
                        .Commit(entry.View, AnimationName, length: Math.Max(animation.Duration, 100u), easing: Easing.Linear, repeat: () => true);
                }

                // Warstwy bez odsłaniania żyją od pokazania tła: pojawiają się/znikają po czasie, jednorazowe animacje ruszają.
                if (entry.Layer.RevealOn is null && !entry.Shown)
                {
                    Show(entry);
                }
            }
        }

        public void StopAnimations()
        {
            foreach (var entry in _layers)
            {
                entry.View.AbortAnimation(AnimationName);
                entry.Holder.AbortAnimation(TimelineName);
            }
        }

        public void ResetReveals(IEnumerable<string> alreadyRevealed)
        {
            var visible = new HashSet<string>(alreadyRevealed, StringComparer.OrdinalIgnoreCase);
            foreach (var entry in _layers)
            {
                if (entry.Layer.RevealOn is not { } name)
                {
                    continue;
                }

                entry.Holder.AbortAnimation(TimelineName);
                var revealed = visible.Contains(name);
                entry.Shown = revealed;

                // Odsłonięte na wcześniejszej stronie: od razu stan końcowy (to, co miało zniknąć, już zniknęło).
                entry.Holder.Opacity = revealed && entry.Layer.HideAfter == 0 ? 1 : 0;
                if (entry.Layer.Animation is { Once: true } once)
                {
                    entry.View.AbortAnimation(AnimationName);
                    Apply(entry, once, revealed ? 1 : 0);
                }
            }
        }

        public void Reveal(string name)
        {
            foreach (var entry in _layers)
            {
                if (!entry.Shown && string.Equals(entry.Layer.RevealOn, name, StringComparison.OrdinalIgnoreCase))
                {
                    Show(entry);
                }
            }
        }

        private static bool StartsHidden(BackgroundLayer layer) => layer.RevealOn is not null || layer.AppearAfter > 0;

        private static Grid BuildFrames(IReadOnlyList<Image> images)
        {
            var grid = new Grid();
            for (var i = 0; i < images.Count; i++)
            {
                images[i].Opacity = i == 0 ? 1 : 0;
                grid.Add(images[i]);
            }

            return grid;
        }

        /// <summary>Oś czasu warstwy: opóźnienie, pojawienie się, ewentualne zniknięcie; do tego jednorazowa animacja.</summary>
        private void Show(LayerEntry entry)
        {
            entry.Shown = true;
            var layer = entry.Layer;
            var fade = Math.Max(layer.FadeDuration, 1u);

            if (StartsHidden(layer) || layer.HideAfter > 0)
            {
                var start = entry.Holder.Opacity;
                var appearEnd = layer.AppearAfter + (start < 1 ? fade : 0);
                var total = appearEnd + (layer.HideAfter > 0 ? layer.HideAfter + fade : 0);
                entry.Holder.AbortAnimation(TimelineName);
                new Animation(t =>
                    {
                        var ms = t * total;
                        entry.Holder.Opacity = ms < layer.AppearAfter ? start
                            : ms < appearEnd ? start + (1 - start) * (ms - layer.AppearAfter) / fade
                            : layer.HideAfter > 0 && ms > appearEnd + layer.HideAfter ? Math.Max(0, 1 - (ms - appearEnd - layer.HideAfter) / fade)
                            : 1;
                    }, 0, 1)
                    .Commit(entry.Holder, TimelineName, length: Math.Max(total, 1u), easing: Easing.Linear);
            }

            if (layer.Animation is { Once: true } once)
            {
                entry.View.AbortAnimation(AnimationName);
                new Animation(t => Apply(entry, once, t), 0, 1)
                    .Commit(entry.View, AnimationName, length: Math.Max(once.Duration, 100u), easing: Easing.Linear);
            }
        }

        private void Apply(LayerEntry entry, LayerAnimation animation, double t)
        {
            var view = entry.View;
            var wave = Math.Sin(t * 2 * Math.PI);

            switch (animation.Type)
            {
                case LayerAnimationType.Sway:
                    view.Rotation = animation.Amplitude * wave;
                    break;
                case LayerAnimationType.Drift:
                    view.TranslationX = animation.Amplitude * _scale * wave;
                    break;
                case LayerAnimationType.Bob:
                    view.TranslationY = animation.Amplitude * _scale * wave;
                    break;
                case LayerAnimationType.Blink:
                    view.Opacity = BlinkOpacity(t);
                    break;
                case LayerAnimationType.Flame:
                    // Dwa nakładające się rytmy dają nieregularne „lizanie”; szerokość lekko odwrotnie do wysokości.
                    var stretch = 0.6 * wave + 0.4 * Math.Sin(t * 2 * Math.PI * 3 + 1.1);
                    view.ScaleY = 1 + animation.Amplitude * stretch;
                    view.ScaleX = 1 - animation.Amplitude * 0.35 * Math.Sin(t * 2 * Math.PI * 2 + 0.5);
                    view.Rotation = animation.Amplitude * 10 * Math.Sin(t * 2 * Math.PI + 0.7);
                    break;
                case LayerAnimationType.Rise:
                    view.TranslationY = -animation.Amplitude * _scale * t;
                    view.Opacity = t < 0.15 ? t / 0.15 : (1 - t) / 0.85;
                    break;
                case LayerAnimationType.Flicker:
                    var noise = 0.5 + 0.3 * Math.Sin(t * 2 * Math.PI * 7) + 0.2 * Math.Sin(t * 2 * Math.PI * 13 + 1.3);
                    view.Opacity = animation.Amplitude + (1 - animation.Amplitude) * Math.Clamp(noise, 0, 1);
                    break;
                case LayerAnimationType.Wander:
                    // Ósemka: pełny obieg w poziomie, dwa w pionie; trzepot = szybkie ściskanie w poziomie.
                    view.TranslationX = animation.Amplitude * _scale * wave;
                    view.TranslationY = animation.Amplitude * 0.5 * _scale * Math.Sin(t * 4 * Math.PI);
                    if (animation.Flap > 0)
                    {
                        view.ScaleX = 1 - animation.Flap * Math.Abs(Math.Sin(t * 2 * Math.PI * 9));
                    }

                    break;
                case LayerAnimationType.Ripple:
                    view.Scale = (0.2 + 0.8 * t) * animation.Amplitude;
                    view.Opacity = t < 0.05 ? t / 0.05 : 1 - t;
                    break;
                case LayerAnimationType.Arc:
                    ApplyArc(view, animation, t);
                    break;
                case LayerAnimationType.Flash:
                    view.Opacity = animation.Amplitude * FlashOpacity(t);
                    break;
                case LayerAnimationType.Float:
                    view.TranslationX = animation.Dx * _scale * t;
                    view.TranslationY = (animation.Dy * t + animation.Amplitude * Math.Sin(t * 2 * Math.PI * 3)) * _scale;
                    view.Rotation = 12 * Math.Sin(t * 2 * Math.PI * 2);
                    view.Opacity = t < 0.1 ? t / 0.1 : t > 0.85 ? (1 - t) / 0.15 : 1;
                    break;
                case LayerAnimationType.Strike:
                    // Wlatuje przez pierwsze 15% cyklu, potem drga coraz słabiej.
                    if (t < 0.15)
                    {
                        view.TranslationX = -animation.Dx * _scale * (1 - t / 0.15);
                        view.Rotation = 0;
                    }
                    else
                    {
                        var since = t - 0.15;
                        view.TranslationX = 0;
                        view.Rotation = animation.Amplitude * Math.Exp(-6 * since) * Math.Sin(since * 2 * Math.PI * 9);
                    }

                    break;
                case LayerAnimationType.Slide:
                    var eased = 1 - (1 - t) * (1 - t);
                    view.TranslationX = animation.Dx * _scale * eased;
                    view.TranslationY = animation.Dy * _scale * eased;
                    break;
                case LayerAnimationType.Frames:
                    var index = Math.Min((int)(t * entry.Images.Count), entry.Images.Count - 1);
                    for (var i = 0; i < entry.Images.Count; i++)
                    {
                        entry.Images[i].Opacity = i == index ? 1 : 0;
                    }

                    break;
            }
        }

        /// <summary>Lot po paraboli przez 70% cyklu, chwila w miejscu docelowym i wygaśnięcie.</summary>
        private void ApplyArc(View view, LayerAnimation animation, double t)
        {
            var p = Math.Min(t / 0.7, 1);
            var lift = 4 * animation.Amplitude * p * (1 - p);
            view.TranslationX = animation.Dx * _scale * p;
            view.TranslationY = (animation.Dy * p - lift) * _scale;

            var rotation = animation.Spin * p;
            if (animation.Tangent)
            {
                var slope = animation.Dy - 4 * animation.Amplitude * (1 - 2 * p);
                rotation += Math.Atan2(slope, animation.Dx) * 180 / Math.PI;
            }

            view.Rotation = rotation;
            view.Opacity = t < 0.05 ? t / 0.05 : t > 0.85 ? (1 - t) / 0.15 : 1;
        }

        // Otwarte przez większość cyklu, podwójne mrugnięcie na końcu.
        private static double BlinkOpacity(double t) => t switch
        {
            < 0.86 => 1,
            < 0.88 => 1 - (t - 0.86) / 0.02,
            < 0.90 => 0,
            < 0.92 => (t - 0.90) / 0.02,
            < 0.94 => 1,
            < 0.95 => 1 - (t - 0.94) / 0.01,
            < 0.96 => 0,
            < 0.97 => (t - 0.96) / 0.01,
            _ => 1,
        };

        // Podwójny błysk: mocny, krótka przerwa, słabszy; przez resztę cyklu ciemno.
        private static double FlashOpacity(double t) => t switch
        {
            < 0.30 => 0,
            < 0.31 => (t - 0.30) / 0.01,
            < 0.33 => 1 - (t - 0.31) / 0.02,
            < 0.36 => 0,
            < 0.365 => (t - 0.36) / 0.005 * 0.7,
            < 0.40 => 0.7 * (1 - (t - 0.365) / 0.035),
            _ => 0,
        };
    }
}
