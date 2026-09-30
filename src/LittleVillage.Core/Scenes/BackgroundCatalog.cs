using System.Text.Json;
using System.Text.Json.Serialization;

namespace LittleVillage.Core.Scenes;

/// <summary>
/// Katalog teł scen wczytywany z pliku <c>backgrounds.json</c>.
/// Klucze odpowiadają wartościom tagu <c># tlo: klucz</c> w plikach .ink.
/// </summary>
public sealed class BackgroundCatalog
{
    private readonly IReadOnlyDictionary<string, SceneBackground> _backgrounds;

    private BackgroundCatalog(IReadOnlyDictionary<string, SceneBackground> backgrounds, string? defaultKey)
    {
        _backgrounds = backgrounds;
        DefaultKey = defaultKey is not null && backgrounds.ContainsKey(defaultKey)
            ? defaultKey
            : backgrounds.Keys.FirstOrDefault();
    }

    public static BackgroundCatalog Empty { get; } = new(new Dictionary<string, SceneBackground>(), null);

    /// <summary>Tło używane, gdy scena nie wskazała żadnego lub wskazała nieznane.</summary>
    public string? DefaultKey { get; }

    public IEnumerable<string> Keys => _backgrounds.Keys;

    public static BackgroundCatalog Parse(string json)
    {
        var document = JsonSerializer.Deserialize(json, SceneJsonContext.Default.BackgroundCatalogDocument)
            ?? throw new JsonException("Plik teł jest pusty.");

        var backgrounds = document.Backgrounds.ToDictionary(
            pair => pair.Key,
            pair => pair.Value with { Key = pair.Key },
            StringComparer.OrdinalIgnoreCase);

        return new BackgroundCatalog(backgrounds, document.Default);
    }

    /// <summary>Zwraca tło o podanym kluczu, a gdy go nie ma — tło domyślne.</summary>
    public SceneBackground? Resolve(string? key)
    {
        if (key is not null && _backgrounds.TryGetValue(key, out var background))
        {
            return background;
        }

        return DefaultKey is null ? null : _backgrounds[DefaultKey];
    }
}

internal sealed record BackgroundCatalogDocument
{
    public string? Default { get; init; }

    public Dictionary<string, SceneBackground> Backgrounds { get; init; } = [];
}

[JsonSourceGenerationOptions(
    PropertyNamingPolicy = JsonKnownNamingPolicy.CamelCase,
    PropertyNameCaseInsensitive = true,
    ReadCommentHandling = JsonCommentHandling.Skip,
    AllowTrailingCommas = true)]
[JsonSerializable(typeof(BackgroundCatalogDocument))]
internal sealed partial class SceneJsonContext : JsonSerializerContext;
