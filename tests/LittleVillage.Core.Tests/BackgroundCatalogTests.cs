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
}
