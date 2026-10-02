using LittleVillage.Core.Story;

namespace LittleVillage.Core.Tests;

/// <summary>Testy prawdziwej fabuły gry — pilnują, by zmiany w plikach .ink niczego nie zepsuły.</summary>
public sealed class GameStoryTests
{
    // Indeksy wyborów w prologu.
    private const int Forest = 0, Marsh = 1, Lake = 2;
    private const int GoOut = 0, Stay = 1;
    private const int FeedDog = 0, KeepBread = 1;

    private static InkStoryEngine CreateEngine()
    {
        var engine = new InkStoryEngine();
        engine.Load(InkTestStory.Game);
        return engine;
    }

    /// <summary>Gra wybierając kolejno podane opcje; strony bez wyborów przewija „Dalej”. Zwraca wszystkie strony.</summary>
    private static List<StoryPage> Play(InkStoryEngine engine, params int[] choices)
    {
        var pages = new List<StoryPage> { engine.StartNew() };
        var queue = new Queue<int>(choices);

        for (var guard = 0; guard < 50; guard++)
        {
            var page = pages[^1];
            switch (page.Ending)
            {
                case PageEnding.Continue:
                    pages.Add(engine.Continue());
                    break;
                case PageEnding.Choices when queue.Count > 0:
                    pages.Add(engine.Choose(queue.Dequeue()));
                    break;
                default:
                    return pages;
            }
        }

        throw new InvalidOperationException("Fabuła nie dochodzi do końca ani do wyboru.");
    }

    private static IEnumerable<string> Inventory(InkStoryEngine engine) => engine.GetInventory().Select(i => i.Id);

    [Fact]
    public void Story_compiles_without_errors()
    {
        var result = InkBuild.InkStoryCompiler.Compile(TestPaths.MainInk);

        Assert.True(result.Succeeded, string.Join(Environment.NewLine, result.Diagnostics));
        Assert.DoesNotContain(result.Diagnostics, d => d.Severity == Ink.ErrorType.Warning);
    }

    [Fact]
    public void Prologue_opens_with_chapter_title_and_village_background()
    {
        var page = CreateEngine().StartNew();

        Assert.Equal("zapadlina", page.BackgroundKey);
        Assert.Equal(StoryBlockKind.Chapter, page.Blocks[0].Kind);
        Assert.Equal("Prolog", page.Blocks[0].Text);
        Assert.Equal(StoryBlockKind.Title, page.Blocks[1].Kind);
        Assert.Equal("Zapadlina", page.Blocks[1].Text);
        Assert.True(page.Blocks[2].HasDropCap);
        Assert.Single(page.Blocks, b => b.HasDropCap);
        Assert.Single(page.Blocks, b => b.Kind == StoryBlockKind.Divider);
    }

    [Fact]
    public void Maciek_chooses_one_of_three_places_for_the_hut()
    {
        var page = CreateEngine().StartNew();

        Assert.Equal(PageEnding.Choices, page.Ending);
        Assert.Equal("Gdzie Maciek postawi chatę?", page.Question);
        Assert.Equal(
            ["Na skraju lasu, od wschodu.", "Przy mokradłach, na północy.", "Nad jeziorem."],
            page.Choices.Select(c => c.Text));
    }

    [Fact]
    public void Starting_inventory_is_what_Maciek_carries()
    {
        var engine = CreateEngine();
        engine.StartNew();

        var inventory = engine.GetInventory();

        Assert.Equal(["siekiera", "chleb"], inventory.Select(i => i.Id));
        Assert.All(inventory, i => Assert.False(string.IsNullOrWhiteSpace(i.Description)));
    }

    [Theory]
    [InlineData(Forest, "budowa_las", "skraj lasu", "Las nigdy nie milkł")]
    [InlineData(Marsh, "budowa_mokradla", "łąki przy mokradłach", "Bagna nigdy nie spały")]
    [InlineData(Lake, "budowa_jezioro", "brzeg jeziora", "Jezioro nocą oddychało")]
    public void Building_and_nights_depend_on_the_chosen_place(int place, string background, string placeText, string nightText)
    {
        var engine = CreateEngine();
        engine.StartNew();

        var building = engine.Choose(place);
        Assert.Equal(background, building.BackgroundKey);
        Assert.Equal(PageEnding.Continue, building.Ending);
        Assert.Equal("Chata", building.Blocks.Single(b => b.Kind == StoryBlockKind.Title).Text);
        Assert.Contains(building.Blocks, b => b.Text.Contains(placeText));
        Assert.Contains(building.Blocks, b => b.Text.Contains("szałasie z gałęzi"));

        var nights = engine.Continue();
        Assert.Equal(background, nights.BackgroundKey);
        Assert.Contains(nights.Blocks, b => b.Text.StartsWith(nightText));
        Assert.Contains(nights.Blocks, b => b.Text.Contains("wycie"));
        Assert.Equal("Co powinien zrobić Maciek?", nights.Question);
        Assert.Equal(2, nights.Choices.Count);
        Assert.StartsWith("Wziąć siekierę", nights.Choices[GoOut].Text);
        Assert.StartsWith("Zostać w szałasie", nights.Choices[Stay].Text);
    }

    private static bool Has(IEnumerable<StoryPage> pages, string text) =>
        pages.SelectMany(p => p.Blocks).Any(b => b.Text.Contains(text));

    [Fact]
    public void Staying_in_the_shelter_skips_the_dog_and_finds_it_dead_next_day()
    {
        var engine = CreateEngine();

        var pages = Play(engine, Forest, Stay);

        Assert.DoesNotContain(pages, p => p.BackgroundKey == "zarosla_noc");
        Assert.True(Has(pages, "ślady łap"));
        Assert.True(Has(pages, "Muchy już go obsiadły"));
        Assert.True(Has(pages, "Rozsądny człowiek siedzi w szałasie"));
        Assert.Equal("zmierzch_zdobycz", pages[^1].BackgroundKey);
    }

    [Fact]
    public void Going_out_finds_the_young_dog_at_night()
    {
        var engine = CreateEngine();

        var dogPage = Play(engine, Marsh, GoOut)[^1];

        Assert.Equal("zarosla_noc", dogPage.BackgroundKey);
        Assert.Contains(dogPage.Blocks, b => b.Text.Contains("długi i wąski"));
        Assert.Equal(["Dać psu kawałek chleba.", "Nie dawać i wrócić do szałasu."], dogPage.Choices.Select(c => c.Text));
    }

    [Fact]
    public void Feeding_the_dog_uses_up_the_bread_and_the_dog_defends_Maciek()
    {
        var engine = CreateEngine();

        var pages = Play(engine, Lake, GoOut, FeedDog);

        Assert.True(Has(pages, "śniadania nie będzie"));
        Assert.True(Has(pages, "– Żyjesz – mruknął."));
        Assert.False(Has(pages, "Muchy już go obsiadły"));
        Assert.Equal("zmierzch_obrona", pages[^1].BackgroundKey);
        Assert.True(Has(pages, "miał towarzysza"));
        Assert.Equal(["siekiera", "pies_towarzysz"], Inventory(engine));
        Assert.Equal("Pies – towarzysz", engine.GetInventory()[1].Name);
    }

    [Fact]
    public void Refusing_the_dog_means_eating_the_bread_and_finding_it_dead()
    {
        var engine = CreateEngine();

        var pages = Play(engine, Forest, GoOut, KeepBread);

        Assert.True(Has(pages, "Sam ledwo zipię"));
        Assert.True(Has(pages, "zjadł ostatni kawałek chleba"));
        Assert.True(Has(pages, "Sam ledwo zipałem"));
        Assert.Equal("zmierzch_zdobycz", pages[^1].BackgroundKey);
        Assert.Equal(["siekiera"], Inventory(engine));
    }

    [Theory]
    [InlineData(Forest, "budowa_las", "skraju mokradeł, pół godziny drogi")]
    [InlineData(Marsh, "budowa_mokradla", "brodzić po nią w zimnym błocie")]
    [InlineData(Lake, "budowa_jezioro", "szepcze za plecami")]
    public void Roof_page_keeps_the_place_background_and_reed_sentence(int place, string background, string reedText)
    {
        var pages = Play(CreateEngine(), place, Stay);

        var roof = pages.Single(p => p.Blocks.Any(b => b.Kind == StoryBlockKind.Title && b.Text == "Dach"));
        Assert.Equal(background, roof.BackgroundKey);
        Assert.Contains(roof.Blocks, b => b.Text.Contains(reedText));
    }

    [Theory]
    [InlineData(Forest, false)]
    [InlineData(Marsh, true)]
    [InlineData(Lake, false)]
    public void Fear_for_the_hut_only_when_it_stands_by_the_marsh(int place, bool expected)
    {
        Assert.Equal(expected, Has(Play(CreateEngine(), place, Stay), "może popełnił błąd"));
        Assert.Equal(expected, Has(Play(CreateEngine(), place, GoOut, FeedDog), "może popełnił błąd"));
    }

    [Theory]
    [MemberData(nameof(AllProloguePaths))]
    public void Roof_page_is_a_separate_page_after_the_night(int[] choices)
    {
        var pages = Play(CreateEngine(), choices);

        var roofIndex = pages.FindIndex(p => p.Blocks.Any(b => b.Kind == StoryBlockKind.Title && b.Text == "Dach"));
        Assert.True(roofIndex > 0);
        Assert.Equal(StoryBlockKind.Chapter, pages[roofIndex].Blocks[0].Kind);
        Assert.Equal(PageEnding.Continue, pages[roofIndex - 1].Ending);
    }

    [Fact]
    public void Dog_scene_keeps_its_night_background_until_the_page_ends()
    {
        var pages = Play(CreateEngine(), Forest, GoOut, FeedDog);

        var fed = pages.Single(p => p.Blocks.Any(b => b.Text.Contains("śniadania nie będzie")));
        Assert.Equal("zarosla_noc", fed.BackgroundKey);
    }

    [Fact]
    public void Evening_starts_at_dusk_before_the_creature_appears()
    {
        var pages = Play(CreateEngine(), Lake, Stay);

        var dusk = pages.Single(p => p.BackgroundKey == "zmierzch");
        Assert.Equal(PageEnding.Continue, dusk.Ending);
        Assert.Contains(dusk.Blocks, b => b.Text.StartsWith("Obudziła go cisza"));
        Assert.True(Has(pages, "zawilce"));
        Assert.True(Has(pages, "żurawinę"));
    }

    public static TheoryData<int[]> AllProloguePaths()
    {
        var data = new TheoryData<int[]>();
        foreach (var place in new[] { Forest, Marsh, Lake })
        {
            data.Add([place, Stay]);
            data.Add([place, GoOut, FeedDog]);
            data.Add([place, GoOut, KeepBread]);
        }

        return data;
    }

    [Theory]
    [MemberData(nameof(AllProloguePaths))]
    public void Every_prologue_path_reaches_the_end_without_leftover_tags(int[] choices)
    {
        var pages = Play(CreateEngine(), choices);

        Assert.Equal(PageEnding.End, pages[^1].Ending);
        Assert.All(pages.SelectMany(p => p.Blocks), b => Assert.DoesNotContain("#", b.Text));
        Assert.All(pages, p => Assert.False(string.IsNullOrEmpty(p.BackgroundKey)));
    }

    [Theory]
    [MemberData(nameof(AllProloguePaths))]
    public void Every_background_used_by_the_story_exists(int[] choices)
    {
        var catalog = Scenes.BackgroundCatalog.Parse(File.ReadAllText(TestPaths.BackgroundsJson));

        foreach (var key in Play(CreateEngine(), choices).Select(p => p.BackgroundKey).Distinct())
        {
            // Resolve zwraca tło domyślne dla nieznanego klucza — literówka w „# tlo:” byłaby niewidoczna.
            Assert.Equal(key, catalog.Resolve(key)?.Key);
        }
    }

    [Fact]
    public void Saved_state_restores_the_choice_page()
    {
        var engine = CreateEngine();
        engine.StartNew();
        var state = engine.SaveState();

        var restored = CreateEngine();
        restored.RestoreState(state, "zapadlina");

        Assert.Equal("budowa_jezioro", restored.Choose(Lake).BackgroundKey);
    }
}
