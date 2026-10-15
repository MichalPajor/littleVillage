using LittleVillage.Core.Scenes;

namespace LittleVillage.Core.Tests;

public sealed class BackgroundCatalogTests
{
    [Fact]
    public void Game_backgrounds_file_is_valid_and_references_existing_images()
    {
        var catalog = BackgroundCatalog.Parse(File.ReadAllText(TestPaths.BackgroundsJson));
        var imagesDirectory = Path.Combine(TestPaths.App, "Resources", "Images");

        Assert.NotNull(catalog.DefaultKey);
        foreach (var layer in catalog.Keys.SelectMany(key => catalog.Resolve(key)!.Layers))
        {
            var name = Path.GetFileNameWithoutExtension(layer.Image);
            Assert.True(
                Directory.EnumerateFiles(imagesDirectory, name + ".*").Any(),
                $"Brak obrazka warstwy '{layer.Image}' w Resources/Images.");
            Assert.True(layer.Width > 0 && layer.Height > 0, $"Warstwa '{layer.Image}' nie ma rozmiaru.");
        }
    }

    [Fact]
    public void Unknown_key_resolves_to_default()
    {
        var catalog = BackgroundCatalog.Parse("""
            {
              "default": "a",
              "backgrounds": {
                "a": { "layers": [ { "image": "a.png", "width": 10, "height": 10 } ] },
                "b": { "layers": [ { "image": "b.png", "width": 10, "height": 10,
                                     "animation": { "type": "sway", "amplitude": 2 } } ] }
              }
            }
            """);

        Assert.Equal("a", catalog.Resolve("nieznane")!.Key);
        Assert.Equal(LayerAnimationType.Sway, catalog.Resolve("B")!.Layers[0].Animation!.Type);
    }

    [Fact]
    public void Advanced_layer_options_are_parsed()
    {
        var catalog = BackgroundCatalog.Parse("""
            {
              "backgrounds": {
                "a": { "layers": [
                  { "image": "a1.png", "x": 0, "y": 0, "width": 10, "height": 10,
                    "animation": { "type": "arc", "amplitude": 30, "dx": -50, "dy": 40, "spin": -170, "tangent": true, "once": true },
                    "revealOn": "kapiel", "appearAfter": 15000, "hideAfter": 20000, "fadeDuration": 3000, "noInvert": true, "depth": 0 },
                  { "image": "k1.png", "frames": ["k1.png", "k2.png"], "x": 0, "y": 0, "width": 10, "height": 10,
                    "animation": { "type": "frames", "duration": 500 } },
                  { "image": "m.png", "x": 0, "y": 0, "width": 10, "height": 10, "animation": { "type": "wander", "amplitude": 26, "flap": 0.6 } }
                ] }
              }
            }
            """);

        var layers = catalog.Resolve("a")!.Layers;
        var arc = layers[0];
        Assert.Equal(LayerAnimationType.Arc, arc.Animation!.Type);
        Assert.Equal((-50, 40, -170), (arc.Animation.Dx, arc.Animation.Dy, arc.Animation.Spin));
        Assert.True(arc.Animation.Tangent && arc.Animation.Once);
        Assert.Equal((15000u, 20000u, 3000u), (arc.AppearAfter, arc.HideAfter, arc.FadeDuration));
        Assert.True(arc.NoInvert);
        Assert.Equal(0, arc.Depth);
        Assert.Equal(["k1.png", "k2.png"], layers[1].Frames);
        Assert.Equal(LayerAnimationType.Frames, layers[1].Animation!.Type);
        Assert.Equal(0.6, layers[2].Animation!.Flap);
        Assert.Equal((1d, 4000u, 0.5), (layers[2].Animation!.AnchorY, layers[2].Animation!.Duration, layers[2].Animation!.AnchorX));
        Assert.Null(layers[2].Depth);
        Assert.Equal(900u, layers[2].FadeDuration);
    }

    [Fact]
    public void Game_backgrounds_use_advanced_options_consistently()
    {
        var catalog = BackgroundCatalog.Parse(File.ReadAllText(TestPaths.BackgroundsJson));
        var imagesDirectory = Path.Combine(TestPaths.App, "Resources", "Images");
        var layers = catalog.Keys.SelectMany(key => catalog.Resolve(key)!.Layers).ToList();

        foreach (var layer in layers.Where(l => l.Frames is not null))
        {
            Assert.Equal(LayerAnimationType.Frames, layer.Animation?.Type);
            Assert.True(layer.Frames!.Count >= 2, $"Warstwa '{layer.Image}' ma za mało klatek.");
            Assert.Equal(layer.Image, layer.Frames[0]);
            foreach (var frame in layer.Frames)
            {
                Assert.True(Directory.EnumerateFiles(imagesDirectory, Path.GetFileNameWithoutExtension(frame) + ".*").Any(), $"Brak klatki '{frame}'.");
            }
        }

        Assert.All(layers.Where(l => l.Animation?.Type == LayerAnimationType.Frames), l => Assert.NotNull(l.Frames));
        Assert.All(layers.Where(l => l.Animation?.Type == LayerAnimationType.Flash && l.Width >= 390), l => Assert.True(l.NoInvert));
        Assert.Contains(layers, l => l.Animation?.Type == LayerAnimationType.Arc);
        Assert.Contains(layers, l => l.Animation?.Type == LayerAnimationType.Wander);
        Assert.Contains(layers, l => l.Animation?.Type == LayerAnimationType.Ripple);
        Assert.Contains(layers, l => l.Animation is { Type: LayerAnimationType.Strike, Once: true });
        Assert.Contains(layers, l => l.Animation is { Type: LayerAnimationType.Slide, Once: true });
        Assert.Contains(layers, l => l.Animation?.Type == LayerAnimationType.Float);
        Assert.Contains(layers, l => l.AppearAfter > 0);
        Assert.Contains(layers, l => l.HideAfter > 0);
    }
}
