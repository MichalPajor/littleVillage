using LittleVillage.Core.Scenes;

namespace LittleVillage.Controls;

/// <summary>
/// Tło sceny złożone z warstw (obrazków) z zapętlonymi animacjami: kołysanie drzew, dryf chmur,
/// mruganie oczu w lesie… Płótno skaluje się jak „AspectFill”. Zmiana tła = płynne przenikanie.
/// </summary>
public sealed class SceneBackgroundView : ContentView
{
    public static readonly BindableProperty SceneProperty = BindableProperty.Create(
        nameof(Scene), typeof(SceneBackground), typeof(SceneBackgroundView),
        propertyChanged: (b, o, n) => ((SceneBackgroundView)b).OnSceneChanged((SceneBackground?)o, (SceneBackground?)n));

    private const string AnimationName = "SceneLayer";
    private const uint CrossFadeDuration = 700;

    private readonly Grid _root = new() { IsClippedToBounds = true };
    private SceneLayerSet? _current;
    private bool _isLoaded;

    public SceneBackgroundView()
    {
        Content = _root;
        InputTransparent = true;
        SizeChanged += (_, _) => _current?.Arrange(Width, Height);
        Loaded += (_, _) => { _isLoaded = true; _current?.StartAnimations(); };
        Unloaded += (_, _) => { _isLoaded = false; _current?.StopAnimations(); };
    }

    public SceneBackground? Scene
    {
        get => (SceneBackground?)GetValue(SceneProperty);
        set => SetValue(SceneProperty, value);
    }

    private async void OnSceneChanged(SceneBackground? oldScene, SceneBackground? newScene)
    {
        if (newScene is null || ReferenceEquals(oldScene, newScene) || newScene.Key == _current?.Scene.Key)
        {
            return;
        }

        var previous = _current;
        var next = new SceneLayerSet(newScene) { Opacity = previous is null ? 1 : 0 };
        _current = next;

        _root.Add(next);
        next.Arrange(Width, Height);
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

    /// <summary>Komplet warstw jednego tła.</summary>
    private sealed class SceneLayerSet : AbsoluteLayout
    {
        private readonly List<(Image View, BackgroundLayer Layer)> _layers = [];
        private double _scale = 1;

        public SceneLayerSet(SceneBackground scene)
        {
            Scene = scene;
            BackgroundColor = Color.FromArgb(scene.BackgroundColor);

            foreach (var layer in scene.Layers)
            {
                var image = new Image { Source = layer.Image, Aspect = Aspect.Fill };
                if (layer.Animation is { } animation)
                {
                    image.AnchorX = animation.AnchorX;
                    image.AnchorY = animation.AnchorY;
                }

                _layers.Add((image, layer));
                Add(image);
            }
        }

        public SceneBackground Scene { get; }

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

            foreach (var (view, layer) in _layers)
            {
                SetLayoutBounds((IView)view, new Rect(
                    offsetX + layer.X * _scale,
                    offsetY + layer.Y * _scale,
                    layer.Width * _scale,
                    layer.Height * _scale));
            }
        }

        public void StartAnimations()
        {
            foreach (var (view, layer) in _layers)
            {
                if (layer.Animation is not { Type: not LayerAnimationType.None } animation)
                {
                    continue;
                }

                view.AbortAnimation(AnimationName);
                new Animation(t => Apply(view, animation, (t + animation.Phase) % 1), 0, 1)
                    .Commit(view, AnimationName, length: Math.Max(animation.Duration, 100u), easing: Easing.Linear, repeat: () => true);
            }
        }

        public void StopAnimations()
        {
            foreach (var (view, _) in _layers)
            {
                view.AbortAnimation(AnimationName);
            }
        }

        private void Apply(Image view, LayerAnimation animation, double t)
        {
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
                case LayerAnimationType.Flicker:
                    var noise = 0.5 + 0.3 * Math.Sin(t * 2 * Math.PI * 7) + 0.2 * Math.Sin(t * 2 * Math.PI * 13 + 1.3);
                    view.Opacity = animation.Amplitude + (1 - animation.Amplitude) * Math.Clamp(noise, 0, 1);
                    break;
            }
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
    }
}
