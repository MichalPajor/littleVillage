using LittleVillage.Core.Game;
using LittleVillage.Core.Persistence;
using LittleVillage.Core.Scenes;
using LittleVillage.Core.Story;

namespace LittleVillage.Core.Tests;

/// <summary>Odsłanianie warstw tła tagiem <c># pokaz</c> — tło nie zdradza fabuły, zanim gracz doczyta.</summary>
public sealed class RevealTests
{
    private static InkStoryEngine Load(string ink)
    {
        var engine = new InkStoryEngine();
        engine.Load(InkTestStory.FromSource(ink));
        return engine;
    }

    [Theory]
    [InlineData("pokaz: pies", "pies")]
    [InlineData("Pokaż: pies, topielec", "pies, topielec")]
    public void Reveal_tag_is_parsed(string raw, string value) =>
        Assert.Equal(new StoryTag(StoryTag.Reveal, value), StoryTag.Parse(raw));

    [Fact]
    public void Reveal_tag_attaches_to_its_paragraph_only()
    {
        var page = Load("""
            Pierwszy akapit.
            Drugi akapit. # pokaz: pies
            # pokaz: topielec, cialo
            Trzeci akapit.
            -> END
            """).StartNew();

        Assert.Equal([null, "pies", "topielec, cialo"], page.Blocks.Select(b => b.Reveal));
    }

    [Fact]
    public void Trailing_reveal_without_paragraph_goes_to_the_last_paragraph()
    {
        var page = Load("""
            Tekst. # pokaz: a
            # pokaz: b
            * [Wybór] -> END
            """).StartNew();

        Assert.Equal("a, b", Assert.Single(page.Blocks).Reveal);
    }

    [Fact]
    public void Revealed_layers_stay_visible_on_next_pages_with_the_same_background()
    {
        var engine = Load("""
            # tlo: las
            Pies. # pokaz: pies # dalej
            Dalej las. # dalej
            # tlo: chata
            Chata.
            -> END
            """);

        var first = engine.StartNew();
        var second = engine.Continue();
        var third = engine.Continue();

        Assert.Null(first.AlreadyRevealed);
        Assert.Equal("pies", second.AlreadyRevealed);
        Assert.Equal("chata", third.BackgroundKey);
        Assert.Null(third.AlreadyRevealed);
    }

    [Fact]
    public void Restored_game_remembers_what_was_revealed()
    {
        var engine = Load("""
            # tlo: las
            Pies. # pokaz: pies # dalej
            Dalej las.
            -> END
            """);
        var page = engine.StartNew();
        var state = engine.SaveState();

        var restored = Load("""
            # tlo: las
            Pies. # pokaz: pies # dalej
            Dalej las.
            -> END
            """);
        restored.RestoreState(state, page.BackgroundKey, RevealList.AllOn(page));

        Assert.Equal("pies", restored.Continue().AlreadyRevealed);
    }

    [Fact]
    public async Task Old_save_without_reveals_still_loads()
    {
        var directory = Path.Combine(Path.GetTempPath(), $"lv-reveal-{Guid.NewGuid():N}");
        Directory.CreateDirectory(directory);
        try
        {
            // Zapis z wersji sprzed odsłaniania: brak pól "reveal" i "alreadyRevealed".
            File.WriteAllText(Path.Combine(directory, "autosave.json"), """
                {"formatVersion":1,"inkState":"{}","savedAt":"2026-10-01T10:00:00+00:00",
                 "page":{"blocks":[{"kind":"Paragraph","text":"Tekst","hasDropCap":false}],
                         "choices":[],"ending":"Continue","backgroundKey":"las","question":null}}
                """);

            var snapshot = await new JsonFileSaveGameRepository(directory).LoadAsync();

            Assert.NotNull(snapshot);
            Assert.Null(snapshot.Page.AlreadyRevealed);
            Assert.Null(snapshot.Page.Blocks[0].Reveal);
        }
        finally
        {
            Directory.Delete(directory, recursive: true);
        }
    }

    [Fact]
    public void Background_layers_can_wait_for_a_reveal()
    {
        var catalog = BackgroundCatalog.Parse("""
            { "backgrounds": { "a": { "layers": [
                { "image": "a.png", "width": 1, "height": 1 },
                { "image": "b.png", "width": 1, "height": 1, "revealOn": "pies" } ] } } }
            """);

        Assert.Equal([null, "pies"], catalog.Resolve("a")!.Layers.Select(l => l.RevealOn));
    }

    // ----- strażnicy prawdziwej fabuły -----

    // Rozdzial drugi: kazdy ogon prologu i rozdzialu pierwszego konczy sie innym zestawem wyborow (wszystkie opcje choc raz).
    private static readonly int[][] ChapterTwoTails = [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1], [0, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 2, 2, 2], [1, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 1]];

    private static readonly int[][] AllPaths =
        [.. new[] { 0, 1, 2 }.SelectMany(place => new[] { new[] { place, 1 }, [place, 0, 0], [place, 0, 1] })
            .SelectMany(path => new[] { new[] { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }, [1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1], [0, 1, 1, 0, 0, 0, 0, 2, 1, 0], [1, 1, 0, 1, 1, 0, 1, 1, 0, 0, 0, 1] }
                .Select((tail, i) => path.Concat(tail).Concat(ChapterTwoTails[i]).ToArray())),
            // spokojny prolog bez psa az do ubozecia, ktore Jaromir udaje, ze nie widzi (# pokaz: slady)
            [0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 1, 2, 2, 1, 1, 1],
            // ksiega: uklon Poludnicy i Jaromir sam przy kapliczkach
            [0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 3, 0, 1, 1]];

    // Rozdzial siodmy (Zielone Swiatki): ogony z wyborami innymi niz domyslne — smiech z piolunu, krzyz albo sila, los korali, dlonie.
    private static readonly int[][] ChapterSevenTails = [[1, 0, 1, 1], [0, 2, 2, 0], [0, 1, 0, 1]];

    private static readonly int[][] ChapterSevenPaths = [.. ChapterSevenTails.Select(tail => ToChapterSeven().Concat(tail).ToArray())];

    /// <summary>Wybory pierwszej sciezki, ktora dochodzi do strony z piolunem (tlo „swiatki”), az do tego wyboru.</summary>
    private static int[] ToChapterSeven()
    {
        foreach (var path in AllPaths.Reverse())
        {
            var engine = new InkStoryEngine();
            engine.Load(InkTestStory.Game);
            var page = engine.StartNew();
            var queue = new Queue<int>(path);
            var chosen = new List<int>();
            while (page.Ending is not (PageEnding.End or PageEnding.Death))
            {
                if (page.Ending == PageEnding.Choices && page.BackgroundKey == "swiatki")
                {
                    return [.. chosen];
                }

                if (page.Ending == PageEnding.Choices)
                {
                    chosen.Add(Math.Min(queue.Count > 0 ? queue.Dequeue() : 0, page.Choices.Count - 1));
                    page = engine.Choose(chosen[^1]);
                }
                else
                {
                    page = engine.Continue();
                }
            }
        }

        throw new InvalidOperationException("Żadna ścieżka nie dochodzi do rozdziału siódmego.");
    }

    private static IEnumerable<StoryPage> PlayAll()
    {
        foreach (var choices in AllPaths.Concat(ChapterSevenPaths))
        {
            var engine = new InkStoryEngine();
            engine.Load(InkTestStory.Game);
            var page = engine.StartNew();
            var queue = new Queue<int>(choices);
            yield return page;
            while (page.Ending is not (PageEnding.End or PageEnding.Death))
            {
                // Ogon wyborow jest wspolny dla sciezek z psem i bez (inna liczba wyborow), wiec za duzy numer opcji przycinamy.
                page = page.Ending == PageEnding.Choices ? engine.Choose(Math.Min(queue.Count > 0 ? queue.Dequeue() : 0, page.Choices.Count - 1)) : engine.Continue();
                yield return page;
            }
        }
    }

    private static BackgroundCatalog GameBackgrounds() => BackgroundCatalog.Parse(File.ReadAllText(TestPaths.BackgroundsJson));

    [Fact]
    public void Every_reveal_in_the_story_has_a_hidden_layer_on_its_background()
    {
        var catalog = GameBackgrounds();

        foreach (var page in PlayAll())
        {
            var layers = catalog.Resolve(page.BackgroundKey)!.Layers;
            foreach (var name in page.Blocks.SelectMany(b => RevealList.Split(b.Reveal)))
            {
                Assert.True(
                    layers.Any(l => string.Equals(l.RevealOn, name, StringComparison.OrdinalIgnoreCase)),
                    $"Tag „# pokaz: {name}” na tle „{page.BackgroundKey}”, ale to tło nie ma warstwy z revealOn = {name}.");
            }
        }
    }

    [Fact]
    public void Every_layer_that_hides_on_a_reveal_gets_that_reveal_on_its_background()
    {
        var catalog = GameBackgrounds();
        var pages = PlayAll().ToList();

        foreach (var key in pages.Select(p => p.BackgroundKey).Distinct())
        {
            var revealed = pages.Where(p => p.BackgroundKey == key)
                .SelectMany(p => p.Blocks.SelectMany(b => RevealList.Split(b.Reveal)))
                .ToHashSet(StringComparer.OrdinalIgnoreCase);

            foreach (var layer in catalog.Resolve(key)!.Layers.Where(l => l.HideOn is not null))
            {
                Assert.True(RevealList.Split(layer.HideOn).All(revealed.Contains),
                    $"Warstwa „{layer.Image}” na tle „{key}” znika przy „# pokaz: {layer.HideOn}”, którego fabuła na tym tle nie używa.");
            }
        }
    }

    [Fact]
    public void Every_hidden_layer_used_by_the_story_gets_revealed_somewhere()
    {
        var catalog = GameBackgrounds();
        var pages = PlayAll().ToList();

        foreach (var key in pages.Select(p => p.BackgroundKey).Distinct())
        {
            var revealed = pages.Where(p => p.BackgroundKey == key)
                .SelectMany(p => p.Blocks.SelectMany(b => RevealList.Split(b.Reveal)))
                .ToHashSet(StringComparer.OrdinalIgnoreCase);

            foreach (var hidden in catalog.Resolve(key)!.Layers.Where(l => l.RevealOn is not null))
            {
                Assert.True(revealed.Contains(hidden.RevealOn!),
                    $"Warstwa „{hidden.Image}” na tle „{key}” czeka na „# pokaz: {hidden.RevealOn}”, którego fabuła nigdy nie używa — byłaby niewidoczna.");
            }
        }
    }

    [Fact]
    public void Creature_and_dog_are_hidden_until_the_text_reveals_them()
    {
        var catalog = GameBackgrounds();

        foreach (var key in new[] { "zarosla_noc", "zmierzch_zdobycz", "zmierzch_obrona" })
        {
            Assert.Contains(catalog.Resolve(key)!.Layers, l => l.RevealOn is not null);
        }

        var dogPage = PlayAll().First(p => p.BackgroundKey == "zarosla_noc");
        Assert.Null(dogPage.Blocks[0].Reveal);
        Assert.Contains(dogPage.Blocks, b => b.Reveal == "pies" && b.Text.StartsWith("W gęstych krzakach"));
    }
}
