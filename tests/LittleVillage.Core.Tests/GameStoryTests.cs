using LittleVillage.Core.Story;

namespace LittleVillage.Core.Tests;

/// <summary>Testy prawdziwej fabuły gry — pilnują, by zmiany w plikach .ink niczego nie zepsuły.</summary>
public sealed class GameStoryTests
{
    // Indeksy wyborów w prologu.
    private const int Forest = 0, Marsh = 1, Lake = 2;
    private const int GoOut = 0, Stay = 1;
    private const int FeedDog = 0, KeepBread = 1;
    private const int StayHere = 0, Leave = 1;          // rano po nocy z topielcem
    private const int TellBoy = 0, SendBoyAway = 1;      // rozmowa u Andrzeja
    private const int Search = 0, Avoid = 1;             // zgliszcza chaty wiedzmy
    private const int TakeFlint = 0, LeaveFlint = 1;     // krzesiwo w popiele
    private const int FollowVoice = 0, WalkOn = 1;       // glos z mokradel
    private const int SellToWitch = 0, SellToDealer = 1; // figurka w miescie
    private const int TellWife = 0, KeepQuiet = 1;       // rozmowa z zona

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

        for (var guard = 0; guard < 400; guard++)
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

    /// <summary>Ekwipunek Maćka na końcu prologu — rozdział pierwszy zaczyna Jaromir z pustym tobołkiem.</summary>
    private static IReadOnlyList<InventoryItem> InventoryAtPrologueEnd(params int[] choices)
    {
        var engine = CreateEngine();
        var page = engine.StartNew();
        var queue = new Queue<int>(choices);
        for (var guard = 0; guard < 200 && !page.Blocks.Any(b => b.Text == "_Koniec prologu._"); guard++)
        {
            page = page.Ending == PageEnding.Choices ? engine.Choose(queue.Dequeue()) : engine.Continue();
        }

        return engine.GetInventory();
    }

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
        Assert.Contains(building.Blocks, b => b.Text.Contains("Sypiał w szałasie"));

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
        Assert.True(Has(pages, "Muchy już go obsiadły"));
        Assert.True(Has(pages, "Rozsądny człowiek siedzi w szałasie"));
        Assert.Contains(pages, p => p.BackgroundKey == "zmierzch_zdobycz");
    }

    [Fact]
    public void Going_out_finds_the_young_dog_at_night()
    {
        var engine = CreateEngine();

        var dogPage = Play(engine, Marsh, GoOut)[^1];

        Assert.Equal("zarosla_noc", dogPage.BackgroundKey);
        Assert.Contains(dogPage.Blocks, b => b.Text.Contains("długi i wąski"));
        Assert.Equal(["Da psu kawałek chleba.", "Nie da i wróci do szałasu."], dogPage.Choices.Select(c => c.Text));
    }

    [Fact]
    public void Feeding_the_dog_uses_up_the_bread_and_the_dog_defends_Maciek()
    {
        var engine = CreateEngine();

        var pages = Play(engine, Lake, GoOut, FeedDog);

        Assert.True(Has(pages, "śniadania nie będzie"));
        Assert.True(Has(pages, "– Żyjesz – mruknął."));
        Assert.False(Has(pages, "Muchy już go obsiadły"));
        Assert.Contains(pages, p => p.BackgroundKey == "zmierzch_obrona");
        Assert.True(Has(pages, "nie był już sam"));
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
        Assert.Contains(pages, p => p.BackgroundKey == "zmierzch_zdobycz");
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

        // Chata stoi przy samym bagnie — stwór znika tuż obok, a nie „gdzieś na mokradłach”.
        foreach (var pages in new[] { Play(CreateEngine(), place, Stay), Play(CreateEngine(), place, GoOut, FeedDog) })
        {
            Assert.Equal(expected, Has(pages, "pobliski"));
            Assert.Equal(expected, Has(pages, "stwór nie uciekł daleko"));
            Assert.DoesNotContain(pages.SelectMany(p => p.Blocks), b => b.Text.Contains("  "));
        }
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
            foreach (var tail in new int[][]
            {
                [StayHere, TellBoy, Search, TakeFlint, WalkOn, SellToWitch, TellWife, .. Summer, .. School, .. Winter, .. Spring, .. Sawmill, .. Noon, .. Bridge7, .. Pentecost, .. LeanSummer, .. Wedding, .. Births, .. Hunt, .. Grave, .. Dream, .. Fire, .. Kupala, .. DeepForest, .. OakTalk, .. Choice, .. Dawn, .. LastNight],
                [StayHere, TellBoy, Search, LeaveFlint, WalkOn, SellToDealer, KeepQuiet, .. Summer, .. School, .. Winter, .. Spring, .. Sawmill, .. Noon, .. Bridge7, .. Pentecost, .. LeanSummer, .. Wedding, .. Births, .. Hunt, .. Grave, .. Dream, .. Fire, .. Kupala, .. DeepForest, .. OakTalk, .. Choice, .. Dawn, .. LastNight],
                [Leave, SendBoyAway, Avoid, WalkOn, KeepQuiet, .. Summer, .. School, .. Winter, .. Spring, .. Sawmill, .. Noon, .. Bridge7, .. Pentecost, .. LeanSummer, .. Wedding, .. Births, .. Hunt, .. Grave, .. Dream, .. Fire, .. Kupala, .. DeepForest, .. OakTalk, .. Choice, .. Dawn, .. LastNight],
            })
            {
                data.Add([place, Stay, .. tail]);
                data.Add([place, GoOut, FeedDog, .. tail]);
                data.Add([place, GoOut, KeepBread, .. tail]);
            }
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
        // spacja przed kropka lub przecinkiem albo podwojna spacja zdradza zle zlozony warunek ink ("{ war: a | b }.")
        Assert.All(pages.SelectMany(p => p.Blocks), b => Assert.DoesNotMatch(@" [.,;:!?]|  ", b.Text));
        // brak spacji po kropce zdradza warunek doklejony bez spacji ("makiem.{ war: Obok…}" -> "makiem.Obok")
        Assert.All(pages.SelectMany(p => p.Blocks), b => Assert.DoesNotMatch(@"\p{Ll}[.!?…]\p{Lu}", b.Text));
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

    // ----- Zgliszcza: poranek po topielcu, dach, rozmowa u Andrzeja -----

    [Theory]
    [InlineData(Forest, "chata_las")]
    [InlineData(Marsh, "chata_mokradla")]
    [InlineData(Lake, "chata_jezioro")]
    public void Morning_after_the_creature_is_at_the_hut_of_the_chosen_place(int place, string background)
    {
        var pages = Play(CreateEngine(), place, Stay);

        var morning = pages[^1];
        Assert.Equal(background, morning.BackgroundKey);
        Assert.Equal("Zgliszcza", morning.Blocks.Single(b => b.Kind == StoryBlockKind.Title).Text);
        Assert.Equal("Co postanowi Maciek?", morning.Question);
        Assert.Equal(2, morning.Choices.Count);
    }

    [Fact]
    public void Dog_joins_the_bundle_only_when_the_player_reads_that_they_slept_together()
    {
        var pages = Play(CreateEngine(), Forest, GoOut, FeedDog);

        var night = pages.Single(p => p.Blocks.Any(b => b.Text.StartsWith("Tej nocy weszli do szałasu razem.")));
        Assert.Single(night.Blocks, b => b.AnnouncesChanges);
        Assert.StartsWith("Tej nocy weszli do szałasu razem.", night.Blocks.Single(b => b.AnnouncesChanges).Text);
        Assert.All(pages.Where(p => p != night).SelectMany(p => p.Blocks), b => Assert.False(b.AnnouncesChanges));
    }

    [Fact]
    public void Morning_shows_the_creature_tracks_only_when_the_dog_is_dead()
    {
        var dead = Play(CreateEngine(), Forest, GoOut, KeepBread)[^1];
        var alive = Play(CreateEngine(), Forest, GoOut, FeedDog)[^1];

        Assert.Contains(dead.Blocks, b => b.Reveal == "slady" && b.Text.Contains("krople krwi"));
        Assert.DoesNotContain(alive.Blocks, b => b.Reveal == "slady");
        Assert.Contains(alive.Blocks, b => b.Text.StartsWith("Pies leżał przy wejściu do szałasu"));
    }

    [Fact]
    public void Leaving_turns_back_and_the_dog_waits_on_the_slope()
    {
        var pages = Play(CreateEngine(), Lake, GoOut, FeedDog, Leave);

        Assert.True(Has(pages, "Nie miał dokąd pójść, i tyle."));
        Assert.True(Has(pages, "Pies szedł za nim kawałek"));
        Assert.False(Has(pages, "Nie po to budowałem"));
    }

    [Fact]
    public void Roof_gets_finished_and_the_last_thatch_is_revealed()
    {
        var pages = Play(CreateEngine(), Marsh, Stay, StayHere);

        var roof = pages.Single(p => p.Blocks.Any(b => b.Text.StartsWith("Ostatnie snopy trzciny")));
        Assert.Equal("chata_mokradla", roof.BackgroundKey);
        Assert.Contains(roof.Blocks, b => b.Reveal == "dach");
        Assert.Equal(PageEnding.Continue, roof.Ending);
    }

    [Fact]
    public void At_Andrzejs_the_boy_asks_and_Maciek_decides()
    {
        var pages = Play(CreateEngine(), Forest, Stay, StayHere);

        var talk = pages[^1];
        Assert.Equal("izba_andrzeja", talk.BackgroundKey);
        Assert.Contains(talk.Blocks, b => b.Text == "– Czy to prawda? – zapytał.");
        Assert.StartsWith("Potwierdzi stanowczo", talk.Choices[TellBoy].Text);
        Assert.StartsWith("Uśmiechnie się", talk.Choices[SendBoyAway].Text);
    }

    [Theory]
    [InlineData(TellBoy, "Niech dzieciak słucha", "drzwi zostawił uchylone")]
    [InlineData(SendBoyAway, "drzwi zostawił uchylone", "Niech dzieciak słucha")]
    public void Telling_the_boy_or_sending_him_away(int choice, string present, string absent)
    {
        var pages = Play(CreateEngine(), Forest, Stay, StayHere, choice);

        Assert.True(Has(pages, present));
        Assert.False(Has(pages, absent));
        Assert.True(Has(pages, "Mój dziad opowiadał o czymś takim."));
    }

    [Theory]
    [InlineData(TellBoy, "Staś siedział bez ruchu", "Za uchylonymi drzwiami")]
    [InlineData(SendBoyAway, "Za uchylonymi drzwiami", "Staś siedział bez ruchu")]
    public void Legend_is_told_with_the_boy_listening_one_way_or_another(int choice, string present, string absent)
    {
        var pages = Play(CreateEngine(), Forest, Stay, StayHere, choice);

        var legend = pages.Single(p => p.BackgroundKey == "legenda");
        Assert.Contains(legend.Blocks, b => b.Text.Contains("Zielarka.") && b.Reveal is null);
        Assert.Contains(legend.Blocks, b => b.Reveal == "chlopi, ogien" && b.Text.StartsWith("Pewnej nocy kilku chłopów"));
        Assert.Contains(legend.Blocks, b => b.Reveal == "wegielki" && b.Text.Contains("tlił się kaganek"));
        Assert.True(Has(pages, present));
        Assert.False(Has(pages, absent));
    }

    [Theory]
    [InlineData(Forest, null)]
    [InlineData(Marsh, "Każdej nocy widział te światełka")]
    [InlineData(Lake, "Swoją chatę postawił dokładnie tam")]
    public void Legend_hits_Maciek_differently_depending_on_the_hut(int place, string? text)
    {
        var legend = Play(CreateEngine(), place, Stay, StayHere, TellBoy).Single(p => p.BackgroundKey == "legenda");

        Assert.Equal(text is not null, legend.Blocks.Any(b => b.Text.Contains("Maciek poczuł, jak zimno") || b.Text.StartsWith("Maciek zbladł")));
        if (text is not null)
        {
            Assert.Contains(legend.Blocks, b => b.Text.Contains(text));
        }
    }

    // ----- Strażnik: tag "# dalej" w osobnej linii przed przejściem do innej sceny przyczepia się
    //       do pierwszej linii tamtej sceny - strona "przecieka" do następnej. -----

    [Theory]
    [MemberData(nameof(AllProloguePaths))]
    public void Pages_never_leak_into_the_next_scene(int[] choices)
    {
        var pages = Play(CreateEngine(), choices);

        foreach (var page in pages)
        {
            // Tytuł sceny zawsze otwiera stronę, nigdy nie trafia w jej środek.
            var title = page.Blocks.Select((b, i) => (b, i)).Where(x => x.b.Kind == StoryBlockKind.Title).Select(x => x.i);
            Assert.All(title, i => Assert.True(i <= 1, $"Tytuł w środku strony: {page.Blocks[i].Text}"));
        }

        // Pierwsze zdania kolejnych scen nie mogą trafić na stronę poprzedniej.
        (string Earlier, string Next)[] boundaries =
        [
            ("Muchy już go obsiadły", "Mijały dni"),
            ("zmrużył oka", "Zaczęło świtać"),
            ("Zielarka.", "Wracając od Andrzeja"),
        ];
        foreach (var (earlier, next) in boundaries)
        {
            Assert.DoesNotContain(pages, p => p.Blocks.Any(b => b.Text.Contains(earlier)) && p.Blocks.Any(b => b.Text.StartsWith(next)));
        }
    }

    // ----- Zgliszcza chaty wiedzmy -----

    [Theory]
    [InlineData(Forest, false)]
    [InlineData(Lake, true)]
    public void Ruins_page_follows_the_legend_and_offers_a_search(int place, bool seesThemFromHome)
    {
        var page = Play(CreateEngine(), place, Stay, StayHere, TellBoy)[^1];

        Assert.Equal("zgliszcza", page.BackgroundKey);
        Assert.StartsWith("Wracając od Andrzeja", page.Blocks[0].Text);
        Assert.Equal(seesThemFromHome, page.Blocks.Any(b => b.Text.Contains("sterczące jak żebra")));
        Assert.Equal(["Pójdzie do zgliszcz i przeszuka popiół.", "Będzie się trzymał od nich z daleka."], page.Choices.Select(c => c.Text));
    }

    [Fact]
    public void Searching_the_ashes_finds_the_figurine_and_the_flint()
    {
        var engine = CreateEngine();

        var page = Play(engine, Forest, GoOut, FeedDog, StayHere, TellBoy, Search)[^1];

        Assert.Contains(page.Blocks, b => b.Reveal == "maciek" && b.Text.StartsWith("Rozgarnął trzciny siekierą"));
        Assert.Contains(page.Blocks, b => b.Text.Contains("warknął cicho na jego kieszeń"));
        Assert.Equal("Czy Maciek weźmie krzesiwo?", page.Question);
        Assert.Contains("figurka", Inventory(engine));
        Assert.DoesNotContain("krzesiwo", Inventory(engine));
    }

    [Theory]
    [InlineData(TakeFlint, true)]
    [InlineData(LeaveFlint, false)]
    public void Flint_goes_to_the_inventory_only_when_taken(int choice, bool taken)
    {
        var engine = CreateEngine();

        Play(engine, Lake, Stay, StayHere, TellBoy, Search, choice);

        Assert.Equal(taken, Inventory(engine).Contains("krzesiwo"));
        Assert.Contains("figurka", Inventory(engine));
    }

    [Fact]
    public void Avoiding_the_ruins_leaves_inventory_untouched()
    {
        var engine = CreateEngine();

        var pages = Play(engine, Forest, Stay, Leave, SendBoyAway, Avoid);

        Assert.True(Has(pages, "Niektórych rzeczy lepiej nie ruszać."));
        Assert.Equal(["siekiera"], Inventory(engine));
    }

    [Fact]
    public void Dog_does_not_growl_when_there_is_no_dog()
    {
        var page = Play(CreateEngine(), Forest, Stay, StayHere, TellBoy, Search)[^1];

        Assert.DoesNotContain(page.Blocks, b => b.Text.Contains("warknął"));
    }

    // ----- Wieczór przy chacie -----

    [Fact]
    public void With_the_flint_Maciek_lights_a_fire_and_the_dog_lies_by_it()
    {
        var evening = Play(CreateEngine(), Marsh, GoOut, FeedDog, StayHere, TellBoy, Search, TakeFlint).Single(p => p.BackgroundKey!.StartsWith("wieczor_"));

        Assert.Equal("wieczor_mokradla", evening.BackgroundKey);
        Assert.Contains(evening.Blocks, b => b.Reveal == "ogien" && b.Text.EndsWith("zatliła się iskra."));
        Assert.Contains(evening.Blocks, b => b.Reveal == "pies" && b.Text.StartsWith("Pies położył się"));
        Assert.Contains(evening.Blocks, b => b.Text.Contains("Figurkę spróbuje sprzedać"));
    }

    [Fact]
    public void Without_the_flint_the_evening_is_cold_and_the_fire_never_appears()
    {
        var evening = Play(CreateEngine(), Lake, GoOut, FeedDog, StayHere, TellBoy, Search, LeaveFlint).Single(p => p.BackgroundKey!.StartsWith("wieczor_"));

        Assert.Equal("wieczor_jezioro", evening.BackgroundKey);
        Assert.Contains(evening.Blocks, b => b.Text.StartsWith("Wieczór zapadł chłodny i ciemny."));
        Assert.DoesNotContain(evening.Blocks, b => b.Reveal is not null);
        Assert.Contains(evening.Blocks, b => b.Text.Contains("Figurkę spróbuje sprzedać"));
    }

    [Fact]
    public void Without_the_figurine_there_is_nothing_to_sell()
    {
        var evening = Play(CreateEngine(), Forest, Stay, Leave, SendBoyAway, Avoid).Single(p => p.BackgroundKey!.StartsWith("wieczor_"));

        Assert.Equal("wieczor_las", evening.BackgroundKey);
        Assert.DoesNotContain(evening.Blocks, b => b.Text.Contains("Figurkę"));
        Assert.Contains(evening.Blocks, b => b.Text.Contains("przyprowadzi tu rodzinę"));
    }

    // ----- Droga do miasta: glos z mokradel -----

    [Fact]
    public void Road_to_town_starts_at_dawn_with_the_voice_choice()
    {
        var road = Play(CreateEngine(), Forest, GoOut, FeedDog, StayHere, TellBoy, Search, TakeFlint)[^1];

        Assert.Equal("sciezka", road.BackgroundKey);
        Assert.Contains(road.Blocks, b => b.Reveal == "pies" && b.Text.StartsWith("Pies szedł tuż przy jego boku"));
        Assert.Contains(road.Blocks, b => b.Reveal == "swiatelko");
        Assert.Contains(road.Blocks, b => b.Text.Contains("jak jego ukochanej żony"));
        Assert.StartsWith("Pójdzie w stronę głosu", road.Choices[FollowVoice].Text);
    }

    [Fact]
    public void Following_the_voice_with_the_dog_ends_with_a_rescue_and_the_ridge()
    {
        var pages = Play(CreateEngine(), Lake, GoOut, FeedDog, StayHere, TellBoy, Search, TakeFlint, FollowVoice);

        var rescue = pages.Single(p => p.BackgroundKey == "sciezka_po");
        Assert.Contains(rescue.Blocks, b => b.Reveal == "upadek" && b.Text.StartsWith("Leżał w błocie"));
        var ridge = pages.Single(p => p.Blocks.Any(b => b.Text.StartsWith("Na Bukowym Grzbiecie")));
        Assert.Equal("zapadlina", ridge.BackgroundKey);
        Assert.Equal("gosciniec", pages[pages.IndexOf(ridge) + 1].BackgroundKey);
    }

    [Theory]
    [InlineData(TakeFlint, "iskry", "Trzecia iskra skoczyła prosto w ślepia.", "Nie wrócił po nią.")]
    [InlineData(LeaveFlint, "andrzej", "Nie słuchaj głosów znad wody.", "– Wzięło swoje – mruknął Andrzej")]
    public void Following_the_voice_without_the_dog_the_bog_takes_the_figurine_but_maciek_survives(int flint, string rescuer, string text, string loss)
    {
        var engine = CreateEngine();
        var pages = Play(engine, [Marsh, Stay, StayHere, TellBoy, Search, flint, FollowVoice]);

        Assert.DoesNotContain(pages, p => p.Ending == PageEnding.Death);
        var bog = On(pages, "sciezka_ratunek")[0];
        Assert.Contains(bog.Blocks, b => b.Reveal == "oczy" && b.Text.Contains("o jakich mówił Andrzej"));
        Assert.Contains(bog.Blocks, b => b.Reveal != null && b.Reveal.Contains(rescuer) && b.Reveal.Contains("ratunek"));
        Assert.True(Has([bog], text));
        Assert.Contains(bog.Blocks, b => b.Reveal == "figurka");
        Assert.True(Has([bog], loss));
        Assert.EndsWith("ani do końca jego życia.", bog.Blocks[^1].Text);
        Assert.DoesNotContain("figurka", Inventory(engine));

        // bez figurki w miescie nie ma staruchy — prolog konczy sie spokojnymi latami
        Assert.Contains(pages, p => p.BackgroundKey == "zapadlina" && Has([p], "Na Bukowym Grzbiecie"));
        Assert.DoesNotContain(pages, p => Has([p], "stara kobieta w kapturze"));
    }

    [Fact]
    public void Bog_marks_on_grandfathers_legs_come_back_in_chapter_four()
    {
        var pages = Play(CreateEngine(), [Marsh, Stay, Leave, SendBoyAway, Avoid, FollowVoice, KeepQuiet, .. Summer, .. School, .. NoDogWinter, KeepRibbon, DontLook]);

        var bog = On(pages, "sciezka_ratunek")[0];
        Assert.True(Has([bog], "Nie słuchaj głosów znad wody."));
        Assert.DoesNotContain(bog.Blocks, b => b.Reveal == "figurka");
        Assert.True(Has(On(pages, "izba_wieczor"), "Pokazywał mi pręgi na łydkach, po pięć z każdej strony"));
    }

    [Fact]
    public void Walking_on_ignores_the_voice_and_reaches_the_ridge()
    {
        var pages = Play(CreateEngine(), Forest, Stay, Leave, SendBoyAway, Avoid, WalkOn);

        Assert.True(Has(pages, "Głos wołał jeszcze dwa razy"));
        Assert.DoesNotContain(pages, p => p.Ending == PageEnding.Death);
        Assert.Contains(pages, p => p.BackgroundKey == "zapadlina" && p.Blocks.Any(b => b.Text.StartsWith("Na Bukowym Grzbiecie")));
    }

    [Fact]
    public void Visit_avoids_repeating_names_in_neighbouring_sentences()
    {
        var talk = Play(CreateEngine(), Forest, Stay, StayHere)[^1];

        Assert.Contains(talk.Blocks, b => b.Text.Contains("Staś, syn gospodarza,") && b.Text.Contains("Na widok gościa"));
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

    // ----- Miasto, rodzina i zakonczenie prologu -----

    // Z psem, figurka i krzesiwem, az do wyboru w miescie.
    private static readonly int[] ToTownWithDogAndFigurine = [Lake, GoOut, FeedDog, StayHere, TellBoy, Search, TakeFlint, WalkOn];

    [Fact]
    public void In_town_the_old_woman_offers_more_for_the_figurine_and_the_dog_growls_at_her()
    {
        var pages = Play(CreateEngine(), ToTownWithDogAndFigurine);

        Assert.Contains(pages, p => p.BackgroundKey == "gosciniec" && p.Blocks[0].Text == "Prolog");
        Assert.True(Has(pages, "To nie żaden święty"));
        Assert.True(Has(pages, "– Dwa grosze – rzekł w końcu."));
        var oldWoman = pages[^1];
        Assert.Equal("zaulek", oldWoman.BackgroundKey);
        Assert.Contains(oldWoman.Blocks, b => b.Reveal == "starucha" && b.Text.Contains("zasnute bielmem"));
        Assert.Contains(oldWoman.Blocks, b => b.Reveal == "pies" && b.Text.StartsWith("Pies obwąchał jej koszyk"));
        Assert.Equal("Komu Maciek sprzeda figurkę?", oldWoman.Question);
        Assert.StartsWith("Staruszce", oldWoman.Choices[SellToWitch].Text);
        Assert.StartsWith("Handlarzowi", oldWoman.Choices[SellToDealer].Text);
    }

    [Fact]
    public void Without_the_figurine_Maciek_only_shops_and_never_meets_the_old_woman()
    {
        var engine = CreateEngine();
        var pages = Play(engine, Forest, Stay, Leave, SendBoyAway, Avoid, WalkOn);

        Assert.DoesNotContain(pages, p => p.BackgroundKey == "zaulek");
        Assert.False(Has(pages, "drewnianą postać"));
        Assert.True(Has(pages, "nasiona różnych warzyw"));
        Assert.Equal("czworaki", pages[^1].BackgroundKey);
        Assert.Equal("Czy Maciek opowie żonie o tamtej nocy?", pages[^1].Question);
        Assert.Contains("zapasy", Inventory(engine));
        Assert.Contains("nasiona", Inventory(engine));
    }

    [Fact]
    public void Selling_to_the_old_woman_with_the_dog_ends_with_the_fight_and_Andrzej()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. ToTownWithDogAndFigurine, SellToWitch, TellWife]);

        Assert.True(Has(pages, "kosz sadzeniaków"));
        Assert.True(Has(pages, "Drugą oddał psu."));
        Assert.True(Has(pages, "Wiedziała, o czym mówi."));
        Assert.True(Has(pages, "Tego wieczoru przed nową chatą zapłonął ogień"));
        Assert.True(Has(pages, "Chata nad jeziorem. Mężczyzna, kobieta i dziecko."));
        Assert.Contains(pages, p => p.BackgroundKey == "czary");
        Assert.Contains(pages, p => p.BackgroundKey == "noc_atak" && Has([p], "obudził ich pies"));
        var fight = pages.Single(p => p.BackgroundKey == "walka");
        Assert.Contains(fight.Blocks, b => b.Reveal == "kaluza");
        Assert.True(Has(pages, "Pies leżał obok"));
        Assert.DoesNotContain(pages, p => p.BackgroundKey is "pod_podloga" or "kapliczki");
        var bundle = InventoryAtPrologueEnd([.. ToTownWithDogAndFigurine, SellToWitch, TellWife]);
        Assert.DoesNotContain(bundle, i => i.Id == "figurka");
        Assert.StartsWith("Dwa bochenki", bundle.Single(i => i.Id == "zapasy").Description);
        AssertPrologueEndsWithJaromir(pages);
    }

    [Fact]
    public void Selling_to_the_old_woman_without_the_dog_ends_with_the_massacre_under_the_floor()
    {
        var pages = Play(CreateEngine(), Marsh, Stay, StayHere, TellBoy, Search, LeaveFlint, WalkOn, SellToWitch, KeepQuiet);

        Assert.True(Has(pages, "uniosła brwi"));
        Assert.True(Has(pages, "zjedli wieczerzę na progu nowej chaty"));
        Assert.True(Has(pages, "Chata przy mokradłach."));
        Assert.True(Has(pages, "obudził ich huk"));
        var underFloor = pages.Single(p => p.BackgroundKey == "pod_podloga");
        Assert.Contains(underFloor.Blocks, b => b.Reveal == "krew");
        Assert.Contains(underFloor.Blocks, b => b.Text == "Matka krzyczała dłużej.");
        Assert.True(Has(pages, "wychował razem ze Stasiem"));
        Assert.DoesNotContain(pages, p => p.BackgroundKey == "walka");
        AssertPrologueEndsWithJaromir(pages);
    }

    [Theory]
    [InlineData(Forest, SellToDealer)]
    [InlineData(Marsh, SellToDealer)]
    public void Selling_to_the_dealer_brings_peaceful_years_with_chapels(int place, int sale)
    {
        var engine = CreateEngine();
        var pages = Play(engine, place, GoOut, FeedDog, StayHere, TellBoy, Search, LeaveFlint, WalkOn, sale, TellWife);

        Assert.True(Has(pages, "odliczył dwa grosze"));
        Assert.StartsWith("Bochenek chleba", InventoryAtPrologueEnd(place, GoOut, FeedDog, StayHere, TellBoy, Search, LeaveFlint, WalkOn, sale, TellWife)
            .Single(i => i.Id == "zapasy").Description);
        Assert.DoesNotContain(pages, p => p.BackgroundKey is "czary" or "noc_atak" or "walka" or "pod_podloga");
        var years = pages.First(p => p.BackgroundKey == "kapliczki");
        Assert.Contains(years.Blocks, b => b.Reveal == "kapliczki");
        Assert.True(Has(pages, "Pies zestarzał się przy progu"));
        AssertPrologueEndsWithJaromir(pages);
    }

    [Fact]
    public void Without_the_figurine_the_prologue_ends_peacefully()
    {
        var pages = Play(CreateEngine(), Forest, Stay, Leave, SendBoyAway, Avoid, WalkOn, KeepQuiet);

        Assert.Contains(pages, p => p.BackgroundKey == "kapliczki");
        Assert.False(Has(pages, "Pies zestarzał się"));
        AssertPrologueEndsWithJaromir(pages);
    }

    [Theory]
    [InlineData(Forest, "chata_las", "Na skraju lasu, w cieniu świerków, z dachem")]
    [InlineData(Marsh, "chata_mokradla", "Na łące przy mokradłach, na kamiennej podmurówce, z dachem")]
    [InlineData(Lake, "chata_jezioro", "Nad jeziorem, wśród szumiących trzcin, z dachem")]
    public void Family_arrives_at_the_hut_built_in_the_chosen_place(int place, string background, string text)
    {
        var pages = Play(CreateEngine(), place, Stay, Leave, SendBoyAway, Avoid, WalkOn, TellWife);

        var home = pages.Single(p => p.Blocks.Any(b => b.Text.StartsWith("Chata stała tam, gdzie ją Maciek zostawił.")));
        Assert.Equal(background, home.BackgroundKey);
        Assert.Contains(home.Blocks, b => b.Reveal == "dach" && b.Text.Contains(text));
        Assert.Contains(home.Blocks, b => b.Reveal == "rodzina");
        Assert.True(Has(pages, "Piwniczka"));
    }

    private static void AssertPrologueEndsWithJaromir(List<StoryPage> pages)
    {
        Assert.True(Has(pages, "Dali mu na imię Jaromir."));
        Assert.True(Has(pages, "kapliczki"));
        Assert.Contains(pages, p => p.Blocks.Any(b => b.Text == "_Koniec prologu._") && p.Ending == PageEnding.Continue);
        Assert.Contains(pages, p => p.BackgroundKey == "zapadlina_lato");
    }

    // ----- Rozdzial pierwszy: Lato -----

    // Wybory w rozdziale pierwszym.
    private const int CalmBreakfast = 0, RunOut = 1;            // sniadanie
    private const int Contest = 0, PracticeAlone = 1;           // zawody z Hanka
    private const int Shell = 0, Feather = 1, Nail = 2;         // skarb w bazie
    private const int FirstOption = 0, SecondOption = 1;        // odwaga nad jeziorem (kolejnosc zalezy od zakonczenia prologu)
    private const int ComeHome = 0, PlayOn = 1;                 // wolanie matki

    private const int Shout = 0, WalkFaster = 1;                // liczenie we mgle (rozdzial drugi)
    private const int Defend = 0, FetchTeacher = 1, LookAway = 2; // Bartek i tabliczka Antka
    private const int TakeBark = 0, LeaveBark = 1;              // kora ze spirali
    private const int FetchRibbon = 0, LeaveRibbon = 1;         // wstazka Hanki w lesie
    private const int BorrowBook = 0, LeaveBook = 1;            // ksiega pana Ignacego
    private const int AskHanka = 0;                             // rada na polnocnice (z ksiega: 1 = ksiega, 2 = ojciec)
    private const int LetIn = 0, KeepOut = 1;                   // dziad w Wigilie
    private const int Answer = 0, TurnCoat = 1, RunAway = 2;    // glos matki z boru

    private static readonly int[] Summer = [RunOut, Contest, Shell, FirstOption, PlayOn];
    private static readonly int[] School = [Shout, Defend, TakeBark, FetchRibbon, BorrowBook];
    private static readonly int[] Winter = [AskHanka, LetIn, 0, 0, 0];  // imie psa (gdy jest), glos z boru, kolyska
    private static readonly int[] NoDogWinter = [AskHanka, LetIn, Answer, 0];      // bez psa: bez imienia
    private static readonly int[] DogWinter = [AskHanka, LetIn, 0, Answer, 0];     // z psem: imie, glos, kolyska
    private static readonly int[] Spring = [0, 0, 0, 0];                           // wstazka, obejrzenie, obietnica, kapliczka
    private static readonly int[] Sawmill = [0, 0, 0, 0];                          // tartak, ostrzezenie, zoladz, uboze
    private static readonly int[] Noon = [0, 0, 0, 0];                             // trzy zagadki, czy powiedziec ojcu
    private static readonly int[] Bridge7 = [0];                                   // Zaduszki: chleb pod kapliczke
    private static readonly int[] Pentecost = [0, 0, 0, 0];                        // piolun, ratunek Franka, korale, pod bzem
    private static readonly int[] LeanSummer = [0, 0, 0, 0, 0];                    // licho przy studni, wyrab z ojcem, drag, pukanie, kapliczki
    private static readonly int[] Wedding = [0, 0, 0, 0];                          // swaty, Franek, podarunek kowala, starzec na skraju lasu
    private static readonly int[] Births = [0, 0, 0];                              // kolyska, trzecia noc, skarb dla corki
    private static readonly int[] Hunt = [0, 0, 0];                                // noc wilkow, obietnica Antkowi, oblawa
    private static readonly int[] Grave = [0, 0, 0];                               // zeby zmarlego, polnoc, pochowek
    private static readonly int[] Dream = [0, 0, 0, 0];                            // figurka, Jagna, noc na kladce, co z figurka
    private static readonly int[] Fire = [0, 0, 0];                                // szarwark, noc ognia, uklad z Urbaniakiem
    private static readonly int[] Kupala = [0, 0, 0];                              // noc swietojanska, zytnia baba, rada przed borem
    private static readonly int[] DeepForest = [0, 0, 0, 0];                       // sciezki w borze, glosy, bagno, starzec
    private static readonly int[] OakTalk = [0, 0, 0];                             // pytanie do Pana Lasu, wilk, zastaw
    private static readonly int[] Choice = [0];                                    // po czym Jaromir pozna corke
    private static readonly int[] Dawn = [0, 0];                                   // dlug u Jagny albo cialo, calun
    private static readonly int[] LastNight = [0];                                 // granica, miejsce albo ogien
    private static readonly int[] CursedPrologue = [.. ToTownWithDogAndFigurine, SellToWitch, TellWife];
    private static readonly int[] PeacefulPrologue = [Forest, Stay, Leave, SendBoyAway, Avoid, WalkOn, KeepQuiet];

    /// <summary>Wszystkie strony z danym tlem (wybor dzieli strone na dwie).</summary>
    private static List<StoryPage> On(List<StoryPage> pages, string background) => pages.Where(p => p.BackgroundKey == background).ToList();

    public static TheoryData<int[], string, string?, bool> ChapterOneVariants() => new()
    {
        // figurka u staruchy: dom na pagorku, milczacy ojciec; z psem zyje babka Marianna
        { [.. ToTownWithDogAndFigurine, SellToWitch, TellWife], "Jaromir mieszkał w chałupie na pagórku", "Mówił mało", true },
        { [Marsh, Stay, StayHere, TellBoy, Search, LeaveFlint, WalkOn, SellToWitch, KeepQuiet], "Jaromir mieszkał w chałupie na pagórku", "Mówił mało", false },
        // spokojne lata: chata dziadka Macka w wybranym miejscu, ojciec opowiada bajki
        { [Forest, GoOut, FeedDog, StayHere, TellBoy, Search, LeaveFlint, WalkOn, SellToDealer, TellWife], "Jaromir mieszkał w chacie pod lasem", "Lubił żartować", false },
        { [Marsh, Stay, Leave, SendBoyAway, Avoid, WalkOn, KeepQuiet], "Jaromir mieszkał w chacie przy mokradłach", "Lubił żartować", false },
        { [Lake, Stay, Leave, SendBoyAway, Avoid, WalkOn, TellWife], "Jaromir mieszkał w chacie nad jeziorem", "Lubił żartować", false },
    };

    [Theory]
    [MemberData(nameof(ChapterOneVariants))]
    public void Chapter_one_follows_every_prologue_ending(int[] choices, string home, string? father, bool grandmother)
    {
        var pages = Play(CreateEngine(), choices);

        var summer = pages.First(p => p.BackgroundKey == "zapadlina_lato");
        Assert.Equal("Rozdział pierwszy", summer.Blocks[0].Text);
        Assert.Equal("Lato", summer.Blocks.Single(b => b.Kind == StoryBlockKind.Title).Text);
        Assert.Contains(summer.Blocks, b => b.Text.Contains("Przy drogach stało mnóstwo kapliczek"));
        Assert.Contains(summer.Blocks, b => b.Text.StartsWith(home));
        Assert.Contains(summer.Blocks, b => b.Text.Contains(father!));
        Assert.Equal(grandmother, Has([summer], "babka Marianna"));
        Assert.Equal(PageEnding.Continue, summer.Ending);
        Assert.DoesNotContain(summer.Blocks, b => b.Text.Contains("  "));
        // Przedmioty Maćka znikają bez powiadomień — Jaromir po prostu zaczyna z pustym tobołkiem.
        Assert.True(summer.ResetsInventory);
        Assert.DoesNotContain(pages.Where(p => p != summer), p => p.ResetsInventory);
    }

    [Theory]
    [InlineData(RunOut, "– Idę do sąsiadów! – i już pędził przez podwórze")]
    [InlineData(CalmBreakfast, "łyżkę miodu na chleb")]
    public void Chapter_one_morning_runs_to_the_neighbours(int breakfast, string text)
    {
        var morning = On(Play(CreateEngine(), [.. PeacefulPrologue, breakfast]), "poranek");

        Assert.StartsWith("Budziło go pianie koguta", morning[0].Blocks[0].Text);
        Assert.Equal("Co zrobi Jaromir?", morning[0].Question);
        Assert.StartsWith("Usiądzie i zje spokojnie", morning[0].Choices[CalmBreakfast].Text);
        Assert.Contains(morning.SelectMany(p => p.Blocks), b => b.Reveal == "jaromir" && b.Text.Contains(text));
        Assert.Contains(morning.SelectMany(p => p.Blocks), b => b.Reveal == "dzieci" && b.Text.Contains("nadbiegała Hanka"));
        Assert.EndsWith("że i tak zdecyduje on sam.", morning[^1].Blocks[^1].Text);
        Assert.False(Has(morning, "Józek"));
    }

    [Theory]
    [InlineData(false, "Ojciec pomógł mu wystrugać ten miecz, śmiejąc się")]
    [InlineData(true, "Ojciec bez słowa pomógł mu zaostrzyć miecz")]
    public void Chapter_one_war_with_weeds_depends_on_the_father(bool cursed, string father)
    {
        var pages = Play(CreateEngine(), [.. cursed ? CursedPrologue : PeacefulPrologue, RunOut]);

        var war = pages.First(p => p.BackgroundKey == "laka_bitwa");
        Assert.Equal("Najczęściej zaczynało się od wojny.", war.Blocks[0].Text);
        Assert.Contains(war.Blocks, b => b.Text.Contains(father));
        Assert.Contains(war.Blocks, b => b.Reveal == "bitwa" && b.Text.Contains("kolczaste łby fruwały dookoła"));
        Assert.EndsWith("jak iskry z ogniska.", war.Blocks[^1].Text);
        Assert.Equal(PageEnding.Continue, war.Ending);
    }

    [Theory]
    [InlineData(Contest, "Przegrywał, oczywiście.")]
    [InlineData(PracticeAlone, "Odchodził na koniec miedzy")]
    public void Chapter_one_bows_contest_with_Hanka_and_the_knife(int contest, string text)
    {
        var engine = CreateEngine();
        var bows = On(Play(engine, [.. PeacefulPrologue, RunOut, contest]), "luki");

        Assert.Equal("Kiedy znudziły im się miecze, przychodziła pora na łuki.", bows[0].Blocks[0].Text);
        Assert.Contains(bows[0].Blocks, b => b.Text.Contains("Franek wybierał z niej gałąź o odpowiedniej długości"));
        Assert.Contains(bows[0].Blocks, b => b.Reveal == "hanka" && b.Text.StartsWith("Celem był snop słomy"));
        Assert.Equal("Czy Jaromir zmierzy się z Hanką?", bows[0].Question);
        Assert.StartsWith(text, bows[1].Blocks[0].Text);
        Assert.Contains(bows[1].Blocks, b => b.Reveal == "trafienie" && b.Text.StartsWith("Raz Jaromir trafił w sam środek koła."));
        Assert.Equal("Nożyk", engine.GetInventory().Single(i => i.Id == "nozyk").Name);
    }

    [Theory]
    [InlineData(Shell, "Zawinął ją w liść łopianu")]
    [InlineData(Feather, "żeby świeciło od razu po otwarciu wieka")]
    [InlineData(Nail, "Owinął go w szmatkę jak relikwię")]
    public void Chapter_one_treasure_hidden_in_the_base(int treasure, string text)
    {
        var baseInTree = On(Play(CreateEngine(), [.. PeacefulPrologue, RunOut, Contest, treasure]), "baza");

        Assert.Equal("Co Jaromir schowa do skrzynki na skarby?", baseInTree[0].Question);
        Assert.Equal(3, baseInTree[0].Choices.Count);
        Assert.Contains(text, baseInTree[1].Blocks[0].Text);
        Assert.Contains(baseInTree[1].Blocks, b => b.Reveal == "burza");
    }

    [Theory]
    [InlineData(true, FirstOption, "Czy Jaromir posłucha ojca?", "nie ruszył się z płycizny")]
    [InlineData(true, SecondOption, "Czy Jaromir posłucha ojca?", "coś śliskiego otarło mu się o łydkę")]
    [InlineData(false, FirstOption, "Czy Jaromir przyjmie zakład?", "położył dłoń na najwyższym z nich")]
    [InlineData(false, SecondOption, "Czy Jaromir przyjmie zakład?", "dotknął czarnego drewna czubkiem palca")]
    public void Chapter_one_courage_at_the_lake(bool cursed, int choice, string question, string text)
    {
        var lake = On(Play(CreateEngine(), [.. cursed ? CursedPrologue : PeacefulPrologue, RunOut, Contest, Shell, choice]), "jezioro_lato");

        Assert.Equal(question, lake[0].Question);
        Assert.Contains(lake[1].Blocks, b => b.Text.Contains(text));
        Assert.StartsWith("Po kąpieli suszyli się na trawie", lake[1].Blocks[1].Text);
    }

    [Theory]
    [InlineData(ComeHome, "Chłopiec nie kazał na siebie czekać")]
    [InlineData(PlayOn, "Chłopiec udawał, że nie słyszy")]
    public void Chapter_one_mothers_call_in_the_evening(int call, string text)
    {
        var evening = On(Play(CreateEngine(), [.. PeacefulPrologue, RunOut, Contest, Shell, FirstOption, call]), "wieczor_lato");

        Assert.Equal("Czy Jaromir wróci od razu?", evening[0].Question);
        Assert.Contains(evening[1].Blocks, b => b.Reveal == "jaromir" && b.Text.Contains(text) && b.Text.Contains("drewnianym słupku"));
        Assert.StartsWith("Wracał brudny", evening[1].Blocks[1].Text);
    }

    [Theory]
    [InlineData(true)]
    [InlineData(false)]
    public void Chapter_one_summer_day_from_the_base_to_the_evening(bool cursed)
    {
        var pages = Play(CreateEngine(), [.. cursed ? CursedPrologue : PeacefulPrologue, .. Summer]);

        var baseInTree = On(pages, "baza");
        Assert.Contains(baseInTree[0].Blocks, b => b.Text.Contains("w koronie starego bzu"));
        Assert.Contains(baseInTree[0].Blocks, b => b.Text.Contains(cursed ? "ze stodoły Stasia" : "ze stodoły ojca Jaromira"));
        Assert.Contains(baseInTree[0].Blocks, b => b.Text.Contains("czwórce było więc całkiem wygodnie"));

        var lake = On(pages, "jezioro_lato");
        Assert.Contains(lake[0].Blocks, b => b.Reveal == "kapiel");
        Assert.Equal(cursed, Has(lake, "nigdy nie wchodził głębiej niż po pas"));
        Assert.Equal(!cursed, Has(lake, "czarne kikuty zwęglonych bali"));

        var evening = On(pages, "wieczor_lato");
        Assert.Contains(evening[0].Blocks, b => b.Reveal == "matka" && b.Text == "– Jaroooomir! Do doooomu!");
        Assert.Equal(cursed, Has(evening, "drzwi są dobrze zaryglowane"));
        Assert.Equal(cursed, Has(evening, "Babka Marianna"));
        Assert.Equal(!cursed, Has(evening, "zaczynał przysypiać w połowie"));

        var golden = pages.Last(p => p.BackgroundKey == "zapadlina_lato" && Has([p], "Takich dni"));
        Assert.StartsWith("Takich dni było bez liku.", golden.Blocks[0].Text);
        Assert.False(Has(pages, "Józek"));
        var end = pages[pages.IndexOf(golden) + 1];
        Assert.Equal("_Koniec rozdziału pierwszego._", end.Blocks[^1].Text);
        Assert.Equal(PageEnding.Continue, end.Ending);
    }

    [Fact]
    public void Chapter_one_starts_Jaromir_with_an_empty_bundle()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. ToTownWithDogAndFigurine, SellToDealer, TellWife]);

        Assert.Contains(pages, p => p.BackgroundKey == "zapadlina_lato");
        Assert.Empty(engine.GetInventory());
    }

    // ----- Rozdzial drugi: Szkola -----

    [Theory]
    [InlineData(true, "gdyby nie Agnieszka", "Ty będziesz czytał")]
    [InlineData(false, "Ty będziesz czytał za nas obu", "Z liter pole")]
    public void Chapter_two_opens_in_autumn_with_the_father_of_the_prologue_ending(bool cursed, string father, string absent)
    {
        var pages = Play(CreateEngine(), [.. cursed ? CursedPrologue : PeacefulPrologue, .. Summer]);

        var autumn = On(pages, "jesien").Single();
        Assert.Equal("Rozdział drugi", autumn.Blocks[0].Text);
        Assert.Equal("Szkoła", autumn.Blocks.Single(b => b.Kind == StoryBlockKind.Title).Text);
        Assert.StartsWith("Lato skończyło się tak, jak kończy się każde lato", autumn.Blocks.First(b => b.Kind == StoryBlockKind.Paragraph).Text);
        Assert.True(Has([autumn], father));
        Assert.False(Has([autumn], absent));
        Assert.Contains(autumn.Blocks, b => b.Reveal == "jaromir" && b.Text.StartsWith("Matka uszyła mu z lnianego płótna torbę"));
        Assert.EndsWith("Antek, Hanka i on.", autumn.Blocks[^1].Text);
        Assert.Equal(PageEnding.Continue, autumn.Ending);
    }

    [Theory]
    [InlineData(Shout, true, "ktoś powiedział spokojnie:")]
    [InlineData(WalkFaster, false, "Antek odważył się obejrzeć.")]
    public void Chapter_two_counting_in_the_fog_remembers_the_call(int choice, bool called, string text)
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulPrologue, .. Summer, choice]);

        var fog = On(pages, "droga_bor");
        Assert.StartsWith("Pierwszego dnia wyszli jeszcze przed świtem.", fog[0].Blocks[0].Text);
        Assert.Equal("– …czterysta jeden… czterysta dwa… czterysta trzy…", fog[0].Blocks.Single(b => b.Text.Contains("czterysta jeden")).Text);
        Assert.Equal("Co zrobi Jaromir?", fog[0].Question);
        Assert.Equal(["Zawołać, kto tam jest?", "Iść szybciej i nie oglądać się za siebie."], fog[0].Choices.Select(c => c.Text));
        Assert.True(Has(fog.Skip(1), text));
        Assert.Equal(called, fog[1].Blocks.Any(b => b.Reveal == "oczy" && b.Text == "– …czterysta cztery."));
        Assert.Equal(called, System.Text.Json.JsonDocument.Parse(engine.SaveState()).RootElement.GetProperty("variablesState").TryGetProperty("zawolal_do_lasu", out var v) && v.GetBoolean());
        Assert.Equal(PageEnding.Continue, fog[1].Ending);
    }

    [Theory]
    [InlineData(Defend, "stanal", "obrona", "Jaromirowi został po tym guz na czole")]
    [InlineData(FetchTeacher, "poskarzyl", "ignacy", "skarżypyty kończą w młyńskim stawie")]
    [InlineData(LookAway, "odwrocil_wzrok", "tabliczka", "Jaromir czuł na plecach jego wzrok")]
    public void Chapter_two_school_and_Bartek_with_Anteks_slate(int choice, string attitude, string reveal, string text)
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulPrologue, .. Summer, Shout, choice]);

        var school = On(pages, "szkola_izba");
        Assert.StartsWith("Szkoła mieściła się w drewnianym budynku", school[0].Blocks[0].Text);
        Assert.Contains(school[0].Blocks, b => b.Reveal == "bartek" && b.Text.StartsWith("Pewnego dnia, gdy pan Ignacy wyszedł"));
        Assert.Equal("Jak zachowa się Jaromir?", school[0].Question);
        Assert.Equal(3, school[0].Choices.Count);
        Assert.Contains(school[1].Blocks, b => b.Reveal == reveal);
        Assert.True(Has([school[1]], text));
        Assert.Equal(PageEnding.Continue, school[1].Ending);
        var state = System.Text.Json.JsonDocument.Parse(engine.SaveState()).RootElement.GetProperty("variablesState");
        Assert.True(state.GetProperty("obrona_antka").GetProperty("list").TryGetProperty($"ObronaAntka.{attitude}", out _));
    }

    [Fact]
    public void Chapter_two_friday_story_about_the_Lord_of_the_Forest()
    {
        var pages = Play(CreateEngine(), [.. PeacefulPrologue, .. Summer, .. School]);

        var friday = On(pages, "szkola_podania")[0];
        Assert.StartsWith("Najlepsze w szkole były ostatnie pół godziny w piątki.", friday.Blocks[0].Text);
        Assert.Contains(friday.Blocks, b => b.Reveal == "cien" && b.Text.Contains("Jedni Borowym, inni Panem Lasu"));
        Assert.Contains(friday.Blocks, b => b.Text.Contains("włożyć je na lewą stronę"));
        Assert.Contains(friday.Blocks, b => b.Reveal == "okno" && b.Text.Contains("zaciąga płócienną zasłonkę"));
        Assert.Equal(PageEnding.Continue, friday.Ending);
        Assert.True(Has(pages, "Hanka z kawałkiem szczypy w ręku"));
    }

    [Theory]
    [InlineData(TakeBark, "kora", "śniło mu się, że ktoś liczy pod jego oknem")]
    [InlineData(LeaveBark, "spirala", "wzrok płata mu figle")]
    public void Chapter_two_bark_torn_in_a_spiral(int choice, string reveal, string text)
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulPrologue, .. Summer, Shout, Defend, choice]);

        var pine = On(pages, "sosna_spirala");
        Assert.StartsWith("W drodze powrotnej, na skraju lasu", pine[0].Blocks[0].Text);
        Assert.Contains(pine[0].Blocks, b => b.Text.Contains("krople świeżej żywicy"));
        Assert.Equal("Czy Jaromir weźmie korę?", pine[0].Question);
        Assert.Contains(pine[1].Blocks, b => b.Reveal == reveal);
        Assert.True(Has([pine[1]], text));
        Assert.Equal(choice == TakeBark, Inventory(engine).Contains("kora"));
        if (choice == TakeBark)
        {
            Assert.Equal("Kora ze znakiem", engine.GetInventory().Single(i => i.Id == "kora").Name);
        }
    }

    [Fact]
    public void Chapter_two_ribbon_fetched_from_the_forest_meets_the_old_man()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulPrologue, .. Summer, Shout, Defend, TakeBark, FetchRibbon]);

        var wind = On(pages, "wstazka_wiatr").Single();
        Assert.StartsWith("W październiku przyszły wiatry.", wind.Blocks[0].Text);
        Assert.Equal("Czy Jaromir pójdzie po wstążkę?", wind.Question);

        var forest = On(pages, "bor_starzec")[0];
        Assert.Equal("– Zaraz wrócę – powiedział i zanim ktokolwiek zdążył go zatrzymać, wszedł między drzewa.", forest.Blocks[0].Text);
        Assert.Contains(forest.Blocks, b => b.Reveal == "starzec" && b.Text.Contains("kożuch wywrócony włosiem na wierzch"));
        Assert.Contains(forest.Blocks, b => b.Reveal == "zniknal" && b.Text.StartsWith("Starca nie było."));
        Assert.EndsWith("było ledwie po południu.", forest.Blocks[^1].Text);
        Assert.True(System.Text.Json.JsonDocument.Parse(engine.SaveState()).RootElement.GetProperty("variablesState").GetProperty("poszedl_po_wstazke").GetBoolean());
        Assert.DoesNotContain(pages, p => p.BackgroundKey == "jesien_plot");
    }

    [Fact]
    public void Chapter_two_ribbon_left_in_the_forest_returns_tied_to_the_fence()
    {
        var pages = Play(CreateEngine(), [.. PeacefulPrologue, .. Summer, Shout, Defend, TakeBark, LeaveRibbon]);

        var wind = On(pages, "wstazka_wiatr");
        Assert.StartsWith("– Nie chodź tam – szepnął", wind[1].Blocks[0].Text);
        Assert.EndsWith("czerwona i samotna.", wind[1].Blocks[^1].Text);
        var fence = On(pages, "jesien_plot")[0];
        Assert.Contains(fence.Blocks, b => b.Reveal == "kokarda" && b.Text.Contains("na kokardę"));
        Assert.DoesNotContain(pages, p => p.BackgroundKey == "bor_starzec");
    }

    [Theory]
    [InlineData(TakeBark, FetchRibbon, BorrowBook)]
    [InlineData(LeaveBark, LeaveRibbon, LeaveBook)]
    public void Chapter_two_teacher_shows_his_book(int bark, int ribbon, int book)
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulPrologue, .. Summer, Shout, Defend, bark, ribbon, book]);

        var desk = On(pages, "szkola_ksiega");
        Assert.StartsWith("Przez kilka dni Jaromir nosił w sobie to, co się stało.", desk[0].Blocks[0].Text);
        Assert.True(Has(desk, ribbon == FetchRibbon ? "o starcu w kożuchu wywróconym na lewą stronę" : "o wstążce, która sama wróciła na płot"));
        Assert.Equal(bark == TakeBark, desk[0].Blocks.Any(b => b.Reveal == "kora" && b.Text.Contains("porównał je z rysunkiem")));
        Assert.Contains(desk[0].Blocks, b => b.Reveal == "ksiega" && b.Text.Contains("„Opowiadania z okolic Bukowego Grzbietu, spisane przez Ignacego Zawadę”"));
        Assert.Equal("Czy Jaromir weźmie księgę?", desk[0].Question);
        Assert.Contains(desk[1].Blocks, b => b.Reveal == (book == BorrowBook ? "pozyczka" : "prog"));
        Assert.Equal(book == BorrowBook, Inventory(engine).Contains("ksiega"));
        Assert.Equal(bark == TakeBark, Inventory(engine).Contains("kora"));
        if (book == BorrowBook)
        {
            Assert.Equal("Księga opowiadań", engine.GetInventory().Single(i => i.Id == "ksiega").Name);
        }
    }

    [Theory]
    [InlineData(true, BorrowBook, "długo chodzi po izbie")]
    [InlineData(false, LeaveBook, "dostanie miskę kaszy")]
    public void Chapter_two_ends_with_tracks_in_the_first_snow(bool cursed, int book, string father)
    {
        var pages = Play(CreateEngine(), [.. cursed ? CursedPrologue : PeacefulPrologue, .. Summer, Shout, Defend, TakeBark, FetchRibbon, book]);

        var snow = On(pages, "pierwszy_snieg")[0];
        Assert.StartsWith("W listopadzie dni zrobiły się krótkie i szare", snow.Blocks[0].Text);
        Assert.Equal(book == BorrowBook, Has([snow], "wyciągał spod siennika księgę pana Ignacego"));
        Assert.True(Has([snow], father));
        Assert.Contains(snow.Blocks, b => b.Reveal == "snieg" && b.Text.StartsWith("W nocy z niedzieli na poniedziałek spadł pierwszy śnieg."));
        Assert.StartsWith("Długo stał przy zimnej szybie i patrzył w stronę boru", snow.Blocks[^1].Text);
        Assert.Contains(pages, p => p.Blocks.Any(b => b.Text == "_Koniec rozdziału drugiego._"));
    }

    // ----- Rozdzial trzeci: Wigilia -----

    [Theory]
    [InlineData(Shout, "ktoś zna teraz jego głos")]
    [InlineData(WalkFaster, "starał się nie odwracać głowy w stronę drzew")]
    public void Chapter_three_opens_with_advent_lanterns_on_the_forest_path(int fog, string text)
    {
        var pages = Play(CreateEngine(), [.. PeacefulPrologue, .. Summer, fog, Defend, TakeBark, FetchRibbon, BorrowBook]);

        Assert.Contains(pages, p => p.Blocks.Any(b => b.Text == "_Koniec rozdziału drugiego._"));
        var advent = On(pages, "roraty")[0];
        Assert.Equal("Rozdział trzeci", advent.Blocks[0].Text);
        Assert.Equal("Wigilia", advent.Blocks.Single(b => b.Kind == StoryBlockKind.Title).Text);
        Assert.Contains(advent.Blocks, b => b.Text.Contains("dzieci szły do Bukowca na roraty"));
        Assert.True(Has([advent], text));
        Assert.Contains(advent.Blocks, b => b.Reveal == "antek" && b.Text.StartsWith("Antek coraz częściej zostawał w tyle."));
        Assert.Equal(PageEnding.Continue, advent.Ending);
    }

    public static TheoryData<int[], bool, string, string, string?> ChapterThreeAdvice() => new()
    {
        // bez ksiegi: Hanka albo ojciec (opcja ksiegi ukryta)
        { [.. PeacefulPrologue, .. Summer, Shout, Defend, TakeBark, FetchRibbon, LeaveBook, 0], false, "przerwa_sniezki", "Babka mówiła, że to północnica", "hanka" },
        { [.. PeacefulPrologue, .. Summer, Shout, Defend, TakeBark, FetchRibbon, LeaveBook, 1], false, "izba_noc", "Ale to bajki, synu.", "ojciec" },
        { [.. CursedPrologue, .. Summer, Shout, Defend, TakeBark, FetchRibbon, LeaveBook, 1], false, "izba_noc", "I nikomu ani słowa, rozumiesz?", "ojciec" },
        // z ksiega: trzy rady, ksiega opowiada o maku
        { [.. PeacefulPrologue, .. Summer, Shout, Defend, TakeBark, FetchRibbon, BorrowBook, 1], true, "izba_noc", "garść maku, północnica musi policzyć", "ksiega" },
    };

    [Theory]
    [MemberData(nameof(ChapterThreeAdvice))]
    public void Chapter_three_Antek_asks_for_help_against_the_midnight_wraith(int[] choices, bool book, string background, string text, string? reveal)
    {
        var pages = Play(CreateEngine(), choices);

        var talk = On(pages, "przerwa_sniezki")[0];
        Assert.Contains(talk.Blocks, b => b.Text.StartsWith("Na przerwie, gdy reszta obrzucała się śnieżkami pod kościółkiem"));
        Assert.Contains(talk.Blocks, b => b.Text.Contains("Po północy. Najpierw robi się zimno"));
        Assert.Equal("U kogo Jaromir będzie szukał rady?", talk.Question);
        Assert.Equal(book ? 3 : 2, talk.Choices.Count);
        var advice = pages[pages.IndexOf(talk) + 1];
        Assert.Equal(background, advice.BackgroundKey);
        Assert.True(Has([advice], text));
        Assert.Contains(advice.Blocks, b => b.Reveal == reveal);
        Assert.DoesNotContain(pages.SelectMany(p => p.Blocks), b => System.Text.RegularExpressions.Regex.IsMatch(b.Text, "(?<![Pp]ół)nocnic"));
    }

    [Theory]
    [InlineData(LetIn, "lira", "Pachniesz lasem, chłopcze")]
    [InlineData(KeepOut, "rygiel", "nie było już nikogo")]
    public void Chapter_three_beggar_knocks_on_christmas_eve(int choice, string reveal, string text)
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulPrologue, .. Summer, .. School, AskHanka, choice]);

        var eve = On(pages, "wigilia");
        Assert.StartsWith("W ostatni dzień przed świętami Jaromir przyniósł do szkoły księgę", eve[0].Blocks[0].Text);
        Assert.Contains(eve[0].Blocks, b => b.Reveal == "gwiazdka");
        Assert.Contains(eve[0].Blocks, b => b.Reveal == "dziad" && b.Text.StartsWith("Na progu stał dziad –"));
        Assert.Equal("Czy dziad zostanie na wieczerzy?", eve[0].Question);
        Assert.Contains(eve[1].Blocks, b => b.Reveal == reveal);
        Assert.True(Has([eve[1]], text));
        Assert.Contains("Nauczyciel pozwolił ją zatrzymać", engine.GetInventory().Single(i => i.Id == "ksiega").Description);
        // bez psa w prologu nie ma szczeniaka — od razu noc w sniegu
        Assert.DoesNotContain(pages, p => p.BackgroundKey == "wigilia_szczeniak");
        Assert.Equal("noc_snieg", pages[^1].BackgroundKey);
    }

    [Theory]
    [InlineData(0, "Burek")]
    [InlineData(1, "Łapek")]
    [InlineData(2, "Grom")]
    public void Chapter_three_puppy_from_grandfathers_dog_gets_a_name(int name, string expected)
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. CursedPrologue, .. Summer, .. School, AskHanka, LetIn, name]);

        var puppy = On(pages, "wigilia_szczeniak");
        Assert.StartsWith("Po wieczerzy przyszedł stary Staś.", puppy[0].Blocks[0].Text);
        Assert.Contains(puppy[0].Blocks, b => b.Reveal == "pies" && b.Text.Contains("białą łatę na piersi"));
        Assert.True(Has([puppy[0]], "Babka Marianna"));
        Assert.Equal(["Burek.", "Łapek.", "Grom."], puppy[0].Choices.Select(c => c.Text));
        Assert.StartsWith($"– {expected} – powtórzył Staś", puppy[1].Blocks[0].Text);
        Assert.Equal(expected, engine.GetInventory().Single(i => i.Id == "szczeniak").Name);
        Assert.Contains(pages.Last().Blocks, b => b.Text.Contains("Szczeniak uniósł łeb"));
    }

    [Theory]
    [InlineData(BorrowBook, 1, Answer, "Znowu ty. Policzę cię", "oczy")]
    [InlineData(BorrowBook, 1, TurnCoat, "Gdzie jesteś?", "kroki")]
    [InlineData(LeaveBook, 0, RunAway, "kłuło go jak nożem", "bieg")]
    public void Chapter_three_mothers_voice_calls_from_the_forest(int book, int advice, int choice, string text, string reveal)
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulPrologue, .. Summer, Shout, Defend, TakeBark, FetchRibbon, book, advice, KeepOut, choice]);

        var night = On(pages, "noc_snieg");
        Assert.StartsWith("Na pasterkę do Bukowca tego roku nikt nie poszedł", night[0].Blocks[0].Text);
        Assert.Equal(book == BorrowBook, Has([night[0]], "szmatkę z makiem"));
        Assert.Equal(book == BorrowBook, Inventory(engine).Contains("mak"));
        Assert.Contains(night[0].Blocks, b => b.Text == "– Synku, chodź do mnie. Zimno mi. Zgubiłam się.");
        Assert.Equal(3, night[0].Choices.Count);
        Assert.Contains(night[1].Blocks, b => b.Reveal == reveal);
        Assert.True(Has([night[1]], text));
    }

    [Theory]
    [InlineData(BorrowBook, 1, 0, "noz", "Niech zostanie u Zosi", false, true)]
    [InlineData(BorrowBook, 1, 1, "mak", "Jedno – zaszeptała", true, false)]
    [InlineData(BorrowBook, 1, 2, "krzyk", "wracała przez kolejne noce", true, false)]
    [InlineData(LeaveBook, 0, 1, "krzyk", "wracała przez kolejne noce", true, false)]
    public void Chapter_three_midnight_wraith_over_the_cradle(int book, int advice, int choice, string reveal, string text, bool keepsKnife, bool hadPoppy)
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulPrologue, .. Summer, Shout, Defend, TakeBark, FetchRibbon, book, advice, LetIn, TurnCoat, choice]);

        var cradle = On(pages, "kolyska");
        Assert.StartsWith("Antek czekał przy oknie", cradle[0].Blocks[0].Text);
        Assert.Contains(cradle[0].Blocks, b => b.Reveal == "polnocnica" && b.Text.Contains("w całunie postrzępionym u dołu"));
        Assert.Equal(book == BorrowBook ? 3 : 2, cradle[0].Choices.Count);
        Assert.Contains(cradle[1].Blocks, b => b.Reveal != null && b.Reveal.Contains(reveal));
        Assert.Contains(cradle[1].Blocks, b => b.Reveal == "kogut");
        Assert.True(Has([cradle[1]], text));
        Assert.Equal(keepsKnife, Inventory(engine).Contains("nozyk"));
        Assert.False(Inventory(engine).Contains("mak"));            // mak tylko na te jedna noc
        Assert.Equal(reveal == "krzyk", Has([cradle[1]], "co szeptał mu dziad"));
        _ = hadPoppy;
    }

    [Theory]
    [InlineData(BorrowBook, 1, 0, "Nikt z dorosłych nie wiedział, skąd w kołysce wziął się nożyk.", "Od tamtej nocy Antek nie zostawał już w tyle.")]
    [InlineData(BorrowBook, 1, 1, "Po maku nie było śladu", "Od tamtej nocy Antek nie zostawał już w tyle.")]
    [InlineData(LeaveBook, 0, 1, "drobna, szara plamka", "Antek nie miał do Jaromira żalu.")]
    public void Chapter_three_ends_with_christmas_and_hankas_warning(int book, int advice, int cradle, string zosia, string antek)
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulPrologue, .. Summer, Shout, Defend, TakeBark, FetchRibbon, book, advice, LetIn, TurnCoat, cradle]);

        var christmas = On(pages, "koledy")[0];
        Assert.True(Has([christmas], zosia));
        Assert.True(Has([christmas], antek));
        Assert.Contains(christmas.Blocks, b => b.Reveal == "kulig" && b.Text.StartsWith("Przyszły święta"));
        Assert.Contains(christmas.Blocks, b => b.Reveal == "hanka");
        Assert.EndsWith("Ktoś musi jej wskazać drogę.", christmas.Blocks[^1].Text);
        Assert.Contains(pages, p => p.Blocks.Any(b => b.Text == "_Koniec rozdziału trzeciego._"));
        Assert.Equal("stodola_marzanna", pages[^1].BackgroundKey);
        Assert.DoesNotContain("mak", Inventory(engine));
    }

    // ----- Rozdzial czwarty: Marzanna -----

    private const int TieRibbon = 0, KeepRibbon = 1;     // wstazka Hanki dla Marzanny
    private const int LookBack = 0, DontLook = 1;        // za topiona Marzanna
    private const int Promise = 0, StaySilent = 1;       // obietnica: nigdy do boru
    private const int RaiseShrine = 0, FetchAdults = 1;  // przewrocona kapliczka

    private static readonly int[] PeacefulToSpring = [.. PeacefulPrologue, .. Summer, .. School, .. NoDogWinter];
    private static readonly int[] CursedToSpring = [.. CursedPrologue, .. Summer, .. School, .. DogWinter];
    private static readonly int[] OrphanToSpring = [Marsh, Stay, StayHere, TellBoy, Search, LeaveFlint, WalkOn, SellToWitch, KeepQuiet, .. Summer, .. School, .. NoDogWinter];

    [Theory]
    [InlineData(TieRibbon, "wstazka", "Czerwień na szarej słomie wyglądała jak rana.")]
    [InlineData(KeepRibbon, null, "schowała wstążkę do kieszeni fartucha")]
    public void Chapter_four_making_marzanna_with_hankas_ribbon(int ribbon, string? reveal, string text)
    {
        var pages = Play(CreateEngine(), [.. PeacefulToSpring, ribbon]);

        var barn = On(pages, "stodola_marzanna");
        Assert.Equal("Rozdział czwarty", barn[0].Blocks[0].Text);
        Assert.Equal("Marzanna", barn[0].Blocks.Single(b => b.Kind == StoryBlockKind.Title).Text);
        Assert.Contains(barn[0].Blocks, b => b.Text.StartsWith("W marcu zaczęło wreszcie kapać z dachów") && b.Text.Contains("kapać z dachów"));
        Assert.Contains(barn[0].Blocks, b => b.Reveal == "kukla");
        Assert.True(Has([barn[0]], "starca w kapeluszu z mchu i czerwień"));
        Assert.Equal("Czy Hanka odda Marzannie wstążkę?", barn[0].Question);
        Assert.True(Has([barn[1]], text));
        Assert.Equal(reveal != null, barn[1].Blocks.Any(b => b.Reveal == "wstazka"));
    }

    [Theory]
    [InlineData(TieRibbon, LookBack, "reka", "Pazury powoli nawijały na siebie czerwoną wstążkę.")]
    [InlineData(KeepRibbon, LookBack, "reka", "Tej nocy Jaromir dostał gorączki.")]
    [InlineData(TieRibbon, DontLook, "chichot", "z rozplecionym warkoczem")]
    [InlineData(KeepRibbon, DontLook, "chichot", "Długo jeszcze żadne z nich nie odezwało się słowem.")]
    public void Chapter_four_drowning_marzanna_something_pulls_her_under(int ribbon, int look, string reveal, string text)
    {
        var pages = Play(CreateEngine(), [.. PeacefulToSpring, ribbon, look]);

        var pond = On(pages, "rozlewisko");
        Assert.Contains(pond[0].Blocks, b => b.Text == "„Marzanno, Marzanno, zimowa panienko,");
        Assert.Contains(pond[0].Blocks, b => b.Reveal == "rzut");
        Assert.Contains(pond[0].Blocks, b => b.Reveal == "tonie" && b.Text.Contains("jakby ktoś szarpnął ją od spodu"));
        Assert.Contains(pond[0].Blocks, b => b.Reveal == "ucieczka");
        Assert.True(Has([pond[0]], "W księdze pana Ignacego czytał"));
        Assert.Contains(pond[1].Blocks, b => b.Reveal == reveal);
        Assert.True(Has([pond[1]], text));
        Assert.Equal(ribbon == KeepRibbon || look == DontLook, !Has([pond[1]], "Pazury powoli nawijały"));
    }

    [Fact]
    public void Chapter_four_dying_grandmother_tells_the_truth_and_gives_the_flint()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. CursedToSpring, TieRibbon, DontLook, Promise]);

        var bed = On(pages, "babka_lozko");
        Assert.StartsWith("Tej wiosny babka Marianna już nie wstała.", bed[0].Blocks[0].Text);
        Assert.Contains(bed[0].Blocks, b => b.Reveal == "siekiera");
        Assert.Contains(bed[0].Blocks, b => b.Reveal == "krzesiwo" && b.Text.Contains("małe, poczerniałe krzesiwo"));
        Assert.Equal("Czy Jaromir obieca?", bed[0].Question);
        Assert.Contains(bed[1].Blocks, b => b.Reveal == "swieca" && b.Text.StartsWith("Marianna zmarła kilka dni później, w Wielki Czwartek."));
        Assert.Contains("Babka Marianna oddała je Jaromirowi", engine.GetInventory().Single(i => i.Id == "krzesiwo").Description);
    }

    [Theory]
    [InlineData(true, "prog_noc", "Dlatego sprawdzam rygiel.", Promise, "jak ciężko przyjdzie mu kiedyś dotrzymać tego słowa")]
    [InlineData(false, "izba_wieczor", "„Pilnuj kapliczek, Dobruś. To nie były bajki”.", StaySilent, "Ojciec długo patrzył mu w oczy")]
    public void Chapter_four_father_tells_the_truth(bool orphan, string background, string text, int promise, string answer)
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. orphan ? OrphanToSpring : PeacefulToSpring, KeepRibbon, DontLook, promise]);

        var talk = On(pages, background);
        Assert.True(Has([talk[0]], text));
        Assert.Contains(talk[0].Blocks, b => b.Text == "– Obiecaj mi jedno – poprosił. – Że nigdy nie wejdziesz do boru. Choćby nie wiem kto cię wołał.");
        Assert.True(Has([talk[1]], answer));
        Assert.DoesNotContain(pages, p => p.BackgroundKey == "babka_lozko");
        Assert.DoesNotContain("krzesiwo", Inventory(engine));
    }

    [Theory]
    [InlineData(RaiseShrine, "podniesiona", "Dobrze zrobiliście")]
    [InlineData(FetchAdults, "latarnia", "Ktoś tu nie chce kapliczek")]
    public void Chapter_four_overturned_shrine_and_the_men_from_town(int shrine, string reveal, string text)
    {
        var pages = Play(CreateEngine(), [.. CursedToSpring, TieRibbon, DontLook, Promise, shrine]);

        var chapel = On(pages, "kapliczka_przewrocona");
        Assert.StartsWith("Po Wielkanocy ziemia zaczęła obsychać", chapel[0].Blocks[0].Text);
        Assert.Contains(chapel[0].Blocks, b => b.Reveal == "spirala");
        Assert.Contains(chapel[0].Blocks, b => b.Reveal == "pies" && b.Text.StartsWith("Burek zjeżył sierść"));
        Assert.Contains(chapel[1].Blocks, b => b.Reveal == reveal);
        Assert.True(Has([chapel[1]], text));

        var town = On(pages, "urbaniak")[0];
        Assert.Contains(town.Blocks, b => b.Reveal == "znaki" && b.Text.Contains("wycinali na korze dębów białe znaki"));
        Assert.Contains(town.Blocks, b => b.Reveal == "odjazd" && b.Text.Contains("Będzie tartak."));
        Assert.Contains(town.Blocks, b => b.Reveal == "noc");
        Assert.Contains(pages, p => p.Blocks.Any(b => b.Text == "_Koniec rozdziału czwartego._"));
        Assert.Equal("tartak", pages[^1].BackgroundKey);
    }

    // ----- Rozdzial piaty: Tartak -----

    private const int JoinSawmill = 0, RefuseSawmill = 1;      // praca w tartaku
    private const int WarnFranek = 0, KeepQuietOak = 1;        // ostrzezenie przed scieciem debu
    private const int TakeAcorn = 0, LeaveAcorn = 1;           // zoladz spod debu
    private const int FeedSprite = 0, ChaseSprite = 1, IgnoreSprite = 2; // uboze

    private static readonly int[] PeacefulToSawmill = [.. PeacefulToSpring, KeepRibbon, DontLook, Promise, RaiseShrine];
    private static readonly int[] CursedToSawmill = [.. CursedToSpring, KeepRibbon, DontLook, Promise, RaiseShrine];

    [Theory]
    [InlineData(JoinSawmill, "ognisko_tartak", "Las się upomni", true)]
    [InlineData(RefuseSawmill, "pole_orka", "zdejmował czapkę i żegnał się", false)]
    public void Chapter_five_sawmill_work_or_the_field(int job, string background, string text, bool coins)
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. CursedToSawmill, job]);

        var years = On(pages, "budowa_tartaku")[0];
        Assert.Equal("Rozdział piąty", years.Blocks[0].Text);
        Assert.Equal("Tartak", years.Blocks.Single(b => b.Kind == StoryBlockKind.Title).Text);
        Assert.True(Has([years], "Po tamtej wiośnie czas zaczął płynąć szybciej"));
        Assert.Contains(years.Blocks, b => b.Reveal == "budowa");
        var mill = On(pages, "tartak");
        Assert.StartsWith("Odkąd nad strugą, która spływała z boru do jeziora, stanął tartak pana Urbaniaka", mill[0].Blocks[0].Text);
        Assert.True(Has([mill[0]], "wracali z zapłatą, jakiej wcześniej w Zapadlinie nie widywano"));
        Assert.True(Has([mill[0]], "wyprowadził go za płot bez słowa"));
        Assert.True(Has([mill[0]], "Burek wyrósł na dużego psa"));
        Assert.Equal("Czy Jaromir pójdzie do tartaku?", mill[0].Question);
        var summer = On(pages, background)[0];
        Assert.True(Has([summer], text));
        Assert.True(Has([summer], "trzy długie, świeże pręgi"));
        Assert.Equal(coins, Inventory(engine).Contains("monety"));
    }

    [Theory]
    [InlineData(WarnFranek, "Urbaniak wyrzucił go z roboty", "Dwaj tracze z tartaku", "Franek do tartaku nie wrócił.")]
    [InlineData(KeepQuietOak, "widzi go takiego po raz ostatni", "Franek i drugi tracz", "coś go woła – cienkim, śpiewnym głosem")]
    public void Chapter_five_old_oak_is_cut_down(int warn, string afterWarn, string cutters, string franek)
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToSawmill, RefuseSawmill, warn, TakeAcorn, FeedSprite]);

        var oak = On(pages, "stary_dab");
        Assert.Contains(oak[0].Blocks, b => b.Reveal == "znak");
        Assert.True(Has([oak[0]], "Stary Dąb na skraju boru – pisał nauczyciel"));
        Assert.True(Has([oak[1]], afterWarn));

        var cut = On(pages, "sciecie_debu");
        Assert.True(Has([cut[0]], cutters));
        Assert.Contains(cut[0].Blocks, b => b.Reveal == "sok");
        Assert.Contains(cut[0].Blocks, b => b.Reveal == "upadek");
        Assert.True(Has([cut[0]], "na sośnie przy ścieżce i na słupie kapliczki"));
        Assert.Contains(cut[1].Blocks, b => b.Reveal == "zoladz");
        Assert.Equal("Żołądź ze Starego Dębu", engine.GetInventory().Single(i => i.Id == "zoladz").Name);
        Assert.True(Has(On(pages, "przed_zniwami"), franek));
    }

    [Theory]
    [InlineData(FeedSprite, "mleko", "Pomogę, kiedy przyjdzie pora.")]
    [InlineData(ChaseSprite, "myszy", "krowa przestała dawać mleko")]
    [InlineData(IgnoreSprite, "slady", "rozgrzebany jak przez kurę")]
    public void Chapter_five_household_sprite_behind_the_stove(int choice, string reveal, string text)
    {
        var pages = Play(CreateEngine(), [.. CursedToSawmill, RefuseSawmill, WarnFranek, LeaveAcorn, choice]);

        var stove = On(pages, "uboze_piec");
        Assert.Contains(stove[0].Blocks, b => b.Reveal == "uboze" && b.Text.Contains("czerwoną, spiczastą czapeczkę"));
        Assert.True(Has([stove[0]], "co babka mówiła kiedyś o ubożętach"));
        Assert.Equal(3, stove[0].Choices.Count);
        Assert.Contains(stove[1].Blocks, b => b.Reveal != null && b.Reveal.Contains(reveal));
        Assert.True(Has([stove[1]], text));

        var harvest = On(pages, "przed_zniwami")[0];
        Assert.Contains(harvest.Blocks, b => b.Reveal == "slady" && b.Text.Contains("kępy mchu"));
        Assert.EndsWith("Zbliżały się żniwa.", harvest.Blocks[^1].Text);
        Assert.Contains(pages, p => p.Blocks.Any(b => b.Text == "_Koniec rozdziału piątego._"));
        Assert.Contains(pages, p => p.BackgroundKey == "zniwa");
    }

    // ----- Rozdzial szosty: Poludnica -----

    private static readonly int[] PeacefulToNoon = [.. PeacefulToSawmill, RefuseSawmill, WarnFranek, TakeAcorn, FeedSprite];
    private const int TellFather = 0, KeepSecret = 1;

    [Theory]
    // wiatr, zyto, Pan Lasu — bez pomylki: ostrzezenie i mak dla Hanki
    [InlineData(new[] { 1, 1, 1 }, 0, "czerwony_ksiezyc", "Pilnuj ich, póki stoją.")]
    // jedna pomylka
    [InlineData(new[] { 1, 1, 0 }, 1, "czerwony_ksiezyc", "Mogło być gorzej")]
    // trzy zle odpowiedzi, pierwsza darowana za odwage z rozdz. 1: dwa ciecia, zamach, Hanka z woda, goraczka
    [InlineData(new[] { 0, 0, 0 }, 2, "goraczka", "Chłopiec zamknął oczy")]
    public void Chapter_six_three_riddles_of_the_noon_wraith(int[] answers, int mistakes, string after, string text)
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToNoon, .. answers, TellFather]);

        var field = On(pages, "zniwa")[0];
        Assert.Equal("Rozdział szósty", field.Blocks[0].Text);
        Assert.Equal("Samo południe", field.Blocks.Single(b => b.Kind == StoryBlockKind.Title).Text);
        Assert.True(Has([field], "Od kilku tygodni nie spadła ani kropla deszczu"));
        Assert.Contains(field.Blocks, b => b.Reveal == "sam");

        var noon = On(pages, "poludnica");
        Assert.Contains(noon[0].Blocks, b => b.Reveal == "poludnica" && b.Text == "Między kłosami pojawiła się kobieta.");
        Assert.True(Has(noon, "Południca chodzi po polach w największy skwar"));
        Assert.Equal(mistakes, noon.SelectMany(p => p.Blocks).Count(b => b.Reveal == "ciecie"));
        Assert.True(Has(noon, text));
        Assert.Contains(noon.SelectMany(p => p.Blocks), b => b.Reveal == "dzban");
        Assert.Equal(after, pages.First(p => p.BackgroundKey is "goraczka" or "czerwony_ksiezyc").BackgroundKey);
        Assert.Equal(mistakes >= 2, Has(pages, "a w majakach wciąż widział białe oczy"));
        Assert.Equal(mistakes >= 2, Has(pages, "blizna w kształcie półksiężyca"));
        Assert.Equal(mistakes < 2, Has(pages, "schowała mak do medalika"));
    }

    [Fact]
    public void Chapter_six_book_answer_makes_the_noon_wraith_bow()
    {
        var pages = Play(CreateEngine(), [.. PeacefulToNoon, 1, 3, 1, KeepSecret]);

        var noon = On(pages, "poludnica");
        Assert.Contains(noon.SelectMany(p => p.Blocks), b => b.Reveal == "uklon" && b.Text.Contains("pochyliła głowę"));
        Assert.True(Has(noon, "Takiej odpowiedzi nie słyszałam od stu lat"));
        var shrines = On(pages, "kapliczki_noc")[0];
        Assert.Contains(shrines.Blocks, b => b.Reveal == "jaromir" && b.Text.Contains("obchodzili najbliższe kapliczki"));
        Assert.Contains(pages, p => p.Blocks.Any(b => b.Text == "_Koniec rozdziału szóstego._"));
    }

    [Fact]
    public void Chapter_six_without_the_book_only_three_answers_to_the_second_riddle()
    {
        var pages = Play(CreateEngine(), [.. PeacefulPrologue, .. Summer, Shout, Defend, TakeBark, FetchRibbon, LeaveBook, .. NoDogWinter, .. Spring, .. Sawmill, 0]);

        var noon = On(pages, "poludnica");
        Assert.False(Has(noon, "Południca chodzi po polach"));
        Assert.Equal(3, noon.Last().Choices.Count);
        Assert.DoesNotContain(noon.Last().Choices, c => c.Text.StartsWith("Ziarno"));
    }

    // ----- Rozdzial siodmy: pomosty od zniw do Zielonych Swiatek -----

    [Theory]
    [InlineData(0, "kapliczki_noc", "zielony liść dębu", true)]
    [InlineData(1, "izba_noc", "wrzuciła je do pieca", false)]
    public void Chapter_seven_bridges_autumn_all_souls_winter_and_easter(int bread, string background, string text, bool pact)
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToNoon, 0, 0, 0, TellFather, bread]);

        var autumn = On(pages, "wykopki")[0];
        Assert.Equal("Rozdział siódmy", autumn.Blocks[0].Text);
        Assert.Equal("Zielone Świątki", autumn.Blocks.Single(b => b.Kind == StoryBlockKind.Title).Text);
        Assert.True(Has([autumn], "babie lato długo snuło się nad ścierniskami"));
        Assert.Contains(autumn.Blocks, b => b.Reveal == "zmrok");
        var allSouls = On(pages, "zaduszki")[0];
        Assert.Contains(allSouls.Blocks, b => b.Reveal == "okruchy");
        Assert.Equal(2, allSouls.Choices.Count);
        Assert.True(Has(On(pages, background), text));
        Assert.Equal(pact, System.Text.Json.JsonDocument.Parse(engine.SaveState()).RootElement.GetProperty("variablesState").TryGetProperty("chleb_dla_dziadow", out var v) && v.GetBoolean());
        var winter = On(pages, "zima_przedzenie")[0];
        Assert.True(Has([winter], "przez trzy miesiące we wsi panowała cisza"));
        Assert.Contains(winter.Blocks, b => b.Reveal == "uboze");
        var easter = On(pages, "wielkanoc")[0];
        Assert.Contains(easter.Blocks, b => b.Reveal == "dyngus");
        Assert.True(Has([easter], "Jaromir miał już czternaście lat"));
        Assert.Equal("swiatki", pages[^1].BackgroundKey);
        Assert.Equal(PageEnding.Choices, pages[^1].Ending);
        Assert.True(Has(On(pages, "zniwa"), "Jaromir miał trzynaście lat"));
    }

    // ----- Rozdzial siodmy: Zielone Swiatki i rusalki -----

    private const int TakeWormwood = 0, LaughAtWormwood = 1;
    private static readonly int[] PeacefulToPentecost = [.. PeacefulToNoon, 0, 0, 0, TellFather, 0];

    private static bool Variable(InkStoryEngine engine, string name, string value) =>
        System.Text.Json.JsonDocument.Parse(engine.SaveState()).RootElement.GetProperty("variablesState").GetProperty(name).ToString().Contains(value);

    [Fact]
    public void Chapter_seven_wormwood_drives_the_rusalki_away_and_the_village_names_them()
    {
        var engine = CreateEngine();
        Play(engine, [.. PeacefulToPentecost, TakeWormwood]);
        Assert.Contains("piolun", Inventory(engine));

        var pages = Play(engine, [.. PeacefulToPentecost, TakeWormwood, 0, 0, 0]);
        var shallows = On(pages, "rusalki")[0];
        Assert.Equal(3, shallows.Choices.Count);
        Assert.Contains(shallows.Blocks, b => b.Reveal == "rusalki");
        Assert.True(Has([shallows], "na jej szyi czerwieniały korale z jarzębiny"));
        Assert.DoesNotContain("piolun", Inventory(engine));
        Assert.DoesNotContain("korale", Inventory(engine));
        Assert.True(Has(On(pages, "rusalki"), "Rusałki zawyły"));
        var shore = On(pages, "brzeg_noc");
        Assert.True(Has(shore, "To była Kaśka – szepnęła Hanka"));
        Assert.True(Has(shore, "powtarzali jedno słowo: rusałki"));
        Assert.True(Has(On(pages, "pomost_rano"), "przycisnęła do piersi"));
        Assert.True(Has(On(pages, "bez_zachod"), "Nie rusałek – tylko tego, że ciebie też wciągną"));
        Assert.True(Variable(engine, "pocalunek", "true") || Variable(engine, "pocalunek", "True"));
        Assert.True(Variable(engine, "ratunek_franka", "piolunem"));
        Assert.Contains(pages, p => p.Blocks.Any(b => b.Text == "_Koniec rozdziału siódmego._"));
        Assert.Equal("studnia", pages[^1].BackgroundKey);
    }

    [Fact]
    public void Chapter_seven_without_wormwood_hanka_calls_kaska_by_name_and_the_beads_stay_wet()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToPentecost, LaughAtWormwood, 1, 2, 1]);
        Assert.True(Has(pages, "Twoja babka jeszcze w strzygi wierzy?"));
        var shallows = On(pages, "rusalki")[0];
        Assert.Equal(2, shallows.Choices.Count);
        Assert.DoesNotContain(shallows.Choices, c => c.Text.Contains("piołun"));
        Assert.True(Has(On(pages, "rusalki"), "Kaśka! Kaśka Wójcikówna! Puść go!"));
        Assert.False(Has(On(pages, "brzeg_noc"), "To była Kaśka – szepnęła Hanka"));
        Assert.True(Has(On(pages, "brzeg_noc"), "siniaki w kształcie drobnych, dziewczęcych palców"));
        Assert.Contains("korale", Inventory(engine));
        Assert.Equal("Korale z jarzębiny", engine.GetInventory().Single(i => i.Id == "korale").Name);
        Assert.True(Has(On(pages, "bez_zachod"), "Wziął ją tylko za rękę"));
        Assert.Equal("studnia", pages[^1].BackgroundKey);
    }

    [Fact]
    public void Chapter_seven_the_cross_does_not_burn_them_and_the_beads_go_back_to_the_lake()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToPentecost, TakeWormwood, 1, 1, 0]);

        Assert.Contains("piolun", Inventory(engine));
        Assert.True(Has(On(pages, "rusalki"), "Krzyż nas nie pali, chłopcze"));
        Assert.True(Has(On(pages, "brzeg_noc"), "Chodził nad jezioro każdego wieczoru"));
        Assert.True(Has(On(pages, "pomost_rano"), "Korale plusnęły cicho"));
        Assert.DoesNotContain("korale", Inventory(engine));
        Assert.Equal("studnia", pages[^1].BackgroundKey);
    }

    // ----- Rozdzial osmy: Chude lato (licho) -----

    private static readonly int[] PeacefulToLeanSummer = [.. PeacefulToPentecost, 0, 0, 0, 0];

    [Fact]
    public void Chapter_eight_bread_for_the_beggar_sends_the_misfortune_to_the_sawmill()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToLeanSummer, 0, 0, 0, 0, 0]);

        var drought = On(pages, "susza")[0];
        Assert.Equal("Rozdział ósmy", drought.Blocks[0].Text);
        Assert.Equal("Chude lato", drought.Blocks.Single(b => b.Kind == StoryBlockKind.Title).Text);
        var well = On(pages, "studnia")[0];
        Assert.Contains(well.Blocks, b => b.Reveal == "zebraczka");
        Assert.True(Has(On(pages, "wyreb"), "przygniótł go od kolan w dół"));
        var wounded = On(pages, "izba_ranny");
        Assert.True(Has(wounded, "– Licho – rzekła stara"));
        Assert.True(Has(wounded, "Mądry chłopak"));
        Assert.True(Has(wounded, "Krzywo, ale się zrośnie"));
        Assert.True(Has(On(pages, "drzwi_noc"), "u Urbaniaka pękła na pół wielka piła"));
        var forest = On(pages, "bor_blizej");
        Assert.True(Has(forest, "Tylko przy tej jednej, której Jaromir nie dał ruszyć"));
        Assert.True(Has(forest, "Ojciec wstał po miesiącu"));
        Assert.True(Has(forest, "szedł Franek"));
        Assert.True(Variable(engine, "licho_noc", "ugoszczone"));
        Assert.Contains(pages, p => p.Blocks.Any(b => b.Text == "_Koniec rozdziału ósmego._"));
        Assert.Equal("swaty", pages[^1].BackgroundKey);
    }

    [Fact]
    public void Chapter_eight_staying_home_driving_it_away_burns_the_forge_and_the_saint_is_saved()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToLeanSummer, 1, 1, 1, 1]);

        Assert.True(Has(On(pages, "studnia"), "Zapamiętam cię, synku"));
        Assert.Empty(On(pages, "wyreb"));
        Assert.True(Has(On(pages, "droga_wyreb"), "jakby ją kto pchnął"));
        Assert.True(Has(On(pages, "izba_ranny"), "To teraz cię zapamiętało"));
        Assert.True(Has(On(pages, "izba_ranny"), "Zrośnie się albo nie"));
        Assert.True(Has(On(pages, "drzwi_noc"), "spłonęła kuźnia"));
        Assert.Equal("Świątek z kapliczki", engine.GetInventory().Single(i => i.Id == "swiatek").Name);
        Assert.False(Has(On(pages, "bor_blizej"), "Tylko przy tej jednej"));
        Assert.True(Has(On(pages, "bor_blizej"), "chodził już tylko o kulach"));
        Assert.Equal("swaty", pages[^1].BackgroundKey);
    }

    [Fact]
    public void Chapter_eight_silence_at_the_door_and_running_for_help()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToLeanSummer, 2, 0, 1, 2, 2]);

        Assert.True(Has(On(pages, "studnia"), "cuchnie mułem"));
        Assert.True(Has(On(pages, "wyreb"), "zwymiotował w paprocie"));
        Assert.True(Has(On(pages, "drzwi_noc"), "westchnęło zza drzwi głosem matki"));
        Assert.False(Has(On(pages, "drzwi_noc"), "babki Marianny"));
        Assert.True(Has(On(pages, "kapliczki_wykop"), "garść miedziaków"));
        Assert.DoesNotContain("swiatek", Inventory(engine));
        Assert.Equal("swaty", pages[^1].BackgroundKey);
    }

    [Fact]
    public void Chapter_eight_coins_from_the_sawmill_can_be_given_to_father()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToLeanSummer, 0]);
        var hasCoins = Inventory(engine).Contains("monety");

        var table = pages[^1];
        Assert.Equal("izba_sierpien", table.BackgroundKey);
        Assert.Equal(hasCoins ? 3 : 2, table.Choices.Count);
        if (hasCoins)
        {
            Play(engine, [.. PeacefulToLeanSummer, 0, 2]);
            Assert.DoesNotContain("monety", Inventory(engine));
        }
    }

    // ----- Rozdzial dziewiaty: Wesele -----

    private static readonly int[] PeacefulToWedding = [.. PeacefulToLeanSummer, 0, 0, 0, 0, 0];

    [Fact]
    public void Chapter_nine_old_ways_horseshoe_and_cake_for_the_old_man()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToWedding, 0, 0, 0, 0]);

        var winter = On(pages, "glodna_zima")[0];
        Assert.Equal("Rozdział dziewiąty", winter.Blocks[0].Text);
        Assert.Equal("Wesele", winter.Blocks.Single(b => b.Kind == StoryBlockKind.Title).Text);
        Assert.True(Has([winter], "W Wigilię w żadnej chałupie"));
        Assert.True(Has(On(pages, "piec_lat"), "Jaromir miał już dziewiętnaście lat"));
        Assert.True(Has(On(pages, "swaty"), "przewiązała nią butelkę"));
        Assert.True(Has(On(pages, "skraj_kapota"), "wywrócona na lewą stronę"));
        var wedding = On(pages, "slub_droga");
        Assert.True(Has(wedding, "Mnie zostawił ją mój ojciec, kiedy umierał"));
        Assert.True(Has(wedding, "położyła pod nią gałązkę ruty"));
        Assert.True(Has(wedding, "Nad drzwiami, ramionami do góry"));
        Assert.Equal("Podkowa kowala", engine.GetInventory().Single(i => i.Id == "podkowa").Name);
        Assert.Equal("Siekiera dziadka Maćka", engine.GetInventory().Single(i => i.Id == "siekiera").Name);
        Assert.Contains(On(pages, "wesele_noc")[0].Blocks, b => b.Reveal == "starzec");
        Assert.True(Has(On(pages, "wesele_noc"), "jak gospodarz gospodarzowi"));
        Assert.True(Has(On(pages, "pierwszy_ranek"), "ziemia była goła i ciemna"));
        Assert.Contains(pages, p => p.Blocks.Any(b => b.Text == "_Koniec rozdziału dziewiątego._"));
        Assert.Equal("izba_kolyska", pages[^1].BackgroundKey);
    }

    [Fact]
    public void Chapter_nine_alone_to_the_smith_cross_for_hanka_and_the_old_man_speaks()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToWedding, 1, 1, 1, 1]);

        Assert.True(Has(On(pages, "swaty"), "Bez swata? Bez gorzałki?"));
        Assert.True(Has(On(pages, "wesele_noc"), "nie bawił się z innymi"));
        Assert.Equal("Krzyżyk kowala", engine.GetInventory().Single(i => i.Id == "krzyzyk").Name);
        Assert.DoesNotContain("podkowa", Inventory(engine));
        Assert.True(Has(On(pages, "slub_droga"), "żelazny krzyżyk od ojca"));
        Assert.True(Has(On(pages, "wesele_noc"), "Dobrze się żenisz, wnuku Maćka. Pilnuj jej."));
        var morning = On(pages, "pierwszy_ranek");
        Assert.True(Has(morning, "zasypała odtajałe miejsce"));
        Assert.True(Has(morning, "z żelaznym krzyżykiem na szyi"));
        Assert.Equal("izba_kolyska", pages[^1].BackgroundKey);
    }

    [Fact]
    public void Chapter_nine_grandmothers_advice_and_the_barred_door()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToWedding, 0, 2, 0, 2]);

        Assert.True(Has(On(pages, "izba_babki"), "Módl się za niego"));
        Assert.False(Has(pages, "głód wygoni z boru wilki"));
        Assert.True(Has(On(pages, "wesele_noc"), "aż do pierwszego kura"));
        Assert.False(Has(On(pages, "wesele_noc"), "sprawdził zasuwę"));
        Assert.True(Has(On(pages, "pierwszy_ranek"), "przeleżało pod ścianą całą noc"));
        Assert.True(Variable(engine, "weselny_gosc", "zaryglowany"));
        Assert.Equal("izba_kolyska", pages[^1].BackgroundKey);
    }

    // ----- Rozdzial dziesiaty: Narodziny (mamuny) -----

    private static readonly int[] PeacefulToBirth = [.. PeacefulToWedding, 0, 0, 0, 0];

    [Fact]
    public void Chapter_ten_shielding_the_cradle_keeps_marysia_and_the_treasure_goes_to_her()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToBirth, 0, 0, 0]);

        var winter = On(pages, "izba_zimowa")[0];
        Assert.Equal("Rozdział dziesiąty", winter.Blocks[0].Text);
        Assert.Equal("Narodziny", winter.Blocks.Single(b => b.Kind == StoryBlockKind.Title).Text);
        Assert.Equal("Gromnica", engine.GetInventory().Single(i => i.Id == "gromnica").Name);
        Assert.True(Has(On(pages, "przyzba_swit"), "po prababce Mariannie"));
        Assert.Contains(On(pages, "noc_mamun")[0].Blocks, b => b.Reveal == "mamuny");
        Assert.True(Has(On(pages, "chrzest"), "Chrzestnym był Antek"));
        Assert.Empty(On(pages, "odmieniec"));
        Assert.True(Has(On(pages, "baza_wrzesien"), "Żebyś zawsze wiedział, że jest twoja"));
        Assert.True(Variable(engine, "skarb_dla_corki", "true") || Variable(engine, "skarb_dla_corki", "True"));
        Assert.Contains(pages, p => p.Blocks.Any(b => b.Text == "_Koniec rozdziału dziesiątego._"));
        Assert.Equal("owczarnia_noc", pages[^1].BackgroundKey);
    }

    [Fact]
    public void Chapter_ten_calling_hanka_without_the_cross_lets_them_swap_and_the_crossroads_needs_a_pact()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToBirth, 0, 1, 0, 1, 1]);

        Assert.True(Has(On(pages, "noc_mamun"), "nie zapłakało, choć matka szlochała"));
        Assert.True(Has(On(pages, "odmieniec"), "To nie wasze"));
        Assert.True(Has(On(pages, "rozstaje"), "Za darmo nic nie oddajemy"));
        var lake = On(pages, "jezioro_mamun");
        Assert.True(Has(lake, "A jak choć raz zapomnisz, przyjdziemy po swoje."));
        Assert.True(Has(lake, "Pachniała mułem i tatarakiem"));
        Assert.True(Has(On(pages, "jesien_okno"), "w czerwcu będzie musiał zanieść na kamień chleb i wianek"));
        Assert.True(Variable(engine, "uklad_z_mamunami", "dar_swietojanski"));
        Assert.Equal("owczarnia_noc", pages[^1].BackgroundKey);
    }

    [Fact]
    public void Chapter_ten_christening_the_changeling_costs_the_childhood_treasure_twice_over()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToBirth, 2, 2, 1, 0]);

        Assert.True(Has(On(pages, "chrzest"), "kawałek brzozowego pnia"));
        Assert.True(Has(pages, "Zabiliście im dziecko"));
        Assert.True(Has(On(pages, "jezioro_mamun"), "A za nasze…"));
        Assert.True(Has(On(pages, "baza_wrzesien"), "Była pusta"));
        Assert.Single(On(pages, "baza_wrzesien"));
        Assert.True(Has(On(pages, "jesien_okno"), "garść mokrego mchu"));
        Assert.Equal("owczarnia_noc", pages[^1].BackgroundKey);
    }

    [Fact]
    public void Chapter_ten_giving_away_years_greys_his_temples()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToBirth, 1, 2, 0, 2, 0]);

        Assert.True(Has(On(pages, "noc_mamun"), "Omijały kołyskę od strony, z której wystawało ostrze siekiery."));
        Assert.True(Has(On(pages, "jezioro_mamun"), "– Siedem – powiedziała"));
        Assert.True(Has(On(pages, "jesien_okno"), "skronie posiwiały mu jak u starego"));
        Assert.Equal("owczarnia_noc", pages[^1].BackgroundKey);
    }

    [Fact]
    public void Chapter_ten_the_smiths_cross_wakes_hanka()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToWedding, 0, 0, 1, 0, 0, 1, 0]);

        Assert.True(Has(On(pages, "noc_mamun"), "Żelazny krzyżyk na jej szyi zrobił się nagle lodowaty"));
        Assert.Empty(On(pages, "odmieniec"));
        Assert.False(Has(pages, "nie zapłakało, choć matka szlochała"));
        Assert.Equal("owczarnia_noc", pages[^1].BackgroundKey);
    }

    [Fact]
    public void Chapter_ten_the_book_teaches_the_eggshell_trick()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToBirth, 0, 1]);
        var changeling = pages[^1];
        Assert.Equal("odmieniec", changeling.BackgroundKey);
        var hasBook = Inventory(engine).Contains("ksiega");
        Assert.Equal(hasBook ? 3 : 2, changeling.Choices.Count);
        if (hasBook)
        {
            pages = Play(engine, [.. PeacefulToBirth, 0, 1, 2, 0]);
            Assert.True(Has(On(pages, "odmieniec"), "Stara jestem jak ten bór"));
            Assert.Empty(On(pages, "jezioro_mamun"));
            Assert.Equal("owczarnia_noc", pages[^1].BackgroundKey);
        }
    }

    // ----- Rozdzial jedenasty: Oblawa (bialy wilk) -----

    private static readonly int[] PeacefulToHunt = [.. PeacefulToBirth, 0, 0, 0];

    [Fact]
    public void Chapter_eleven_sparing_the_white_wolf_brings_a_hare_and_names_the_card()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToHunt, 0, 0, 1]);

        var frost = On(pages, "mroz_izba")[0];
        Assert.Equal("Rozdział jedenasty", frost.Blocks[0].Text);
        Assert.Equal("Obława", frost.Blocks.Single(b => b.Kind == StoryBlockKind.Title).Text);
        Assert.True(Has([frost], "zanim ktokolwiek zdążył jej użyć"));
        Assert.True(Has(On(pages, "owczarnia_noc"), "jak rozkaz"));
        Assert.Contains(On(pages, "oblawa_mlodnik")[0].Blocks, b => b.Reveal == "wilk");
        Assert.True(Has(On(pages, "oblawa_mlodnik"), "Na mokradła!"));
        Assert.True(Has(On(pages, "oblawa_mlodnik"), "ruszył za nimi"));
        Assert.True(Has(On(pages, "po_oblawie"), "Głupi, dobry Franek."));
        var wolf = engine.GetJournal().Single(c => c.Id == "tropy");
        Assert.Equal("Biały wilk", wolf.Title);
        Assert.Contains("zając z przegryzionym karkiem", wolf.Notes[^1]);
        Assert.Contains(pages, p => p.Blocks.Any(b => b.Text == "_Koniec rozdziału jedenastego._"));
        Assert.Equal("czuwanie_izba", pages[^1].BackgroundKey);
    }

    [Fact]
    public void Chapter_eleven_betraying_the_wolf_despite_the_promise_costs_antek()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToHunt, 0, 0, 0]);

        Assert.True(Has(On(pages, "oblawa_mlodnik"), "Trafiony!"));
        Assert.True(Has(On(pages, "oblawa_mlodnik"), "uderzył go w twarz"));
        Assert.True(Has(On(pages, "po_oblawie"), "pełne bólu"));
        Assert.False(Has(pages, "Głupi, dobry Franek."));
        Assert.True(Has(On(pages, "odwilz"), "nie odezwał się do niego aż do żniw"));
        Assert.Contains("kulę od gajowego", engine.GetJournal().Single(c => c.Id == "tropy").Notes[^1]);
        Assert.Equal("czuwanie_izba", pages[^1].BackgroundKey);
    }

    [Fact]
    public void Chapter_eleven_without_a_promise_antek_still_comes_and_the_door_watch_loses_sheep()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToHunt, 1, 1, 0]);

        Assert.True(Has(On(pages, "owczarnia_noc"), "Dwie owce zagryzione"));
        Assert.True(Has(On(pages, "gajowy_karczma"), "Franka nie ma od ponad roku."));
        Assert.True(Has(On(pages, "odwilz"), "Przyszedł dopiero na Wielkanoc"));
        Assert.Equal("czuwanie_izba", pages[^1].BackgroundKey);
    }

    [Fact]
    public void Chapter_eleven_childhood_aim_throws_a_stone_at_the_barrel()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToHunt, 0, 0]);
        Assert.Equal(3, pages[^1].Choices.Count);

        pages = Play(engine, [.. PeacefulToHunt, 0, 0, 2]);
        Assert.True(Has(On(pages, "oblawa_mlodnik"), "Kamień trafił w lufę."));
        Assert.True(Has(On(pages, "po_oblawie"), "trzy tygodnie przy zwózce drewna"));
        Assert.True(Has(On(pages, "po_oblawie"), "Głupi, dobry Franek."));
        Assert.Equal("czuwanie_izba", pages[^1].BackgroundKey);
    }

    [Fact]
    public void Chapter_eleven_the_old_dog_dies_guarding_the_barn_and_a_pup_comes_in_spring()
    {
        var engine = CreateEngine();
        var page = engine.StartNew();
        var queue = new Queue<int>([.. CursedToSpring]);
        var pages = new List<StoryPage> { page };
        for (var guard = 0; guard < 400 && !(page.BackgroundKey == "owczarnia_noc" && page.Ending == PageEnding.Choices); guard++)
        {
            page = page.Ending == PageEnding.Choices ? engine.Choose(Math.Min(queue.Count > 0 ? queue.Dequeue() : 0, page.Choices.Count - 1)) : engine.Continue();
            pages.Add(page);
        }

        Assert.Equal("owczarnia_noc", page.BackgroundKey);
        Assert.Contains("szczeniak", Inventory(engine));
        page = engine.Choose(1);
        pages.Add(page);
        for (var guard = 0; guard < 100 && page.BackgroundKey != "skraj_bor" && page.Ending is not (PageEnding.End or PageEnding.Death); guard++)
        {
            page = page.Ending == PageEnding.Choices ? engine.Choose(0) : engine.Continue();
            pages.Add(page);
        }

        Assert.True(Has(pages, "Był martwy, ale tuż obok"));
        Assert.DoesNotContain("szczeniak", Inventory(engine));
        // w borze (rozdzial szesnasty) szczenie jest juz wyrosnietym psem
        Assert.Equal("Rudy pies", engine.GetInventory().Single(i => i.Id == "szczenie_psa").Name);
        Assert.True(Has(pages, "Stary Staś przyniósł je w czapce"));
    }

    // ----- Rozdzial dwunasty: Czuwanie przy zmarlym (strzyga) -----

    private static readonly int[] PeacefulToGrave = [.. PeacefulToHunt, 0, 0, 0];

    [Fact]
    public void Chapter_twelve_old_burial_behind_the_wall_puts_the_strzyga_to_rest()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToGrave, 0, 0]);
        var withPoppy = engine.SaveState().Contains("\"mak_w_medaliku\":true");
        Assert.Equal("cmentarz_bukowiec", pages[^1].BackgroundKey);
        Assert.Equal(withPoppy ? 3 : 2, pages[^1].Choices.Count);
        var unnamed = engine.GetJournal().Single(c => c.Id == "strzyga");
        Assert.Equal("Zmarły, który nie stygnie", unnamed.Title);
        Assert.StartsWith("Stary Wójcik miał dwa rzędy zębów", unnamed.Notes[0]);

        pages = Play(engine, [.. PeacefulToGrave, 0, 0, 0]);
        var spring = On(pages, "wiosna_orka")[0];
        Assert.Equal("Rozdział dwunasty", spring.Blocks[0].Text);
        Assert.Equal("Czuwanie przy zmarłym", spring.Blocks.Single(b => b.Kind == StoryBlockKind.Title).Text);
        Assert.True(Has(On(pages, "lato_podworze"), "Usłyszała tylko jedno."));
        Assert.True(Has(On(pages, "czuwanie_izba"), "Dwa rzędy zębów"));
        Assert.True(Has(On(pages, "polnoc_strzyga"), "Na twarz go!"));
        Assert.True(Has(On(pages, "cmentarz_bukowiec"), "Dziękuję ci, synku"));
        Assert.True(Has(On(pages, "cmentarz_bukowiec"), "siadała na kamieniu przy rozstajach"));
        Assert.Empty(On(pages, "strzyga_okno"));
        Assert.True(Has(On(pages, "wigilia_stol"), "W jej chałupie co noc paliła się świeca"));
        Assert.True(Has(On(pages, "wigilia_stol"), "garść mchu"));
        var journal = engine.GetJournal();
        var strzyga = journal.Single(c => c.Id == "strzyga");
        Assert.Equal("Strzyga", strzyga.Title);
        Assert.Contains("ugryzł Antka", strzyga.Notes[^1]);
        Assert.Contains("więcej nie wrócił", strzyga.Notes[^1]);
        Assert.DoesNotContain("Pomyliła się", journal.Single(c => c.Id == "mamuny").Notes[^1]);
        Assert.Contains("zielonego mchu", journal.Single(c => c.Id == "starzec").Notes[^1]);
        Assert.Contains(pages, p => p.Blocks.Any(b => b.Text == "_Koniec rozdziału dwunastego._"));
        Assert.Contains(pages[^1].BackgroundKey, ChapterThirteenFigurinePages);
    }

    [Fact]
    public void Chapter_twelve_the_candle_burns_out_and_a_priestly_burial_brings_him_back_to_the_window()
    {
        var engine = CreateEngine();
        Play(engine, [.. PeacefulToGrave, 1]);
        Assert.Contains("gromnica", Inventory(engine));
        var pages = Play(engine, [.. PeacefulToGrave, 1, 2, 1, 0]);

        Assert.True(Has(On(pages, "czuwanie_izba"), "Nie godzi się."));
        Assert.True(Has(On(pages, "polnoc_strzyga"), "Kaśka…"));
        Assert.DoesNotContain("gromnica", Inventory(engine));
        Assert.True(Has(On(pages, "cmentarz_bukowiec"), "On tam nie wytrzyma."));
        Assert.True(Has(On(pages, "strzyga_okno"), "dzisiaj pytał o małą"));
        Assert.Contains(On(pages, "strzyga_okno").SelectMany(p => p.Blocks), b => b.Reveal == "strzyga");
        Assert.True(Has(On(pages, "cmentarz_bukowiec"), "zbezcześcili grób"));
        var strzyga = engine.GetJournal().Single(c => c.Id == "strzyga");
        Assert.StartsWith("Ludzie mówili, że stary Wójcik urodził się z zębami.", strzyga.Notes[0]);
        Assert.Contains("imię córki", strzyga.Notes[^1]);
        Assert.Contains("rozkopali jego grób", strzyga.Notes[^1]);
        Assert.True(Has(On(pages, "wigilia_stol"), "przetrwała do wiosny"));
        Assert.Contains(pages[^1].BackgroundKey, ChapterThirteenFigurinePages);
    }

    [Fact]
    public void Chapter_twelve_keeping_watch_at_the_cradle_costs_the_widow_her_life()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToGrave, 0, 1, 1, 1]);

        Assert.True(Has(On(pages, "polnoc_strzyga"), "Czarnej i gęstej jak smoła."));
        Assert.True(Has(On(pages, "strzyga_okno"), "dwa drobne, czerwone nakłucia"));
        Assert.True(Has(On(pages, "wigilia_stol"), "Chałupa Wójcików stała pusta"));
        Assert.False(Has(pages, "W jej chałupie co noc paliła się świeca"));
        var journal = engine.GetJournal();
        Assert.Contains("martwą Wójcikową", journal.Single(c => c.Id == "strzyga").Notes[^1]);
        Assert.Contains("Pomyliła się", journal.Single(c => c.Id == "mamuny").Notes[^1]);
        Assert.Contains(pages[^1].BackgroundKey, ChapterThirteenFigurinePages);
    }

    // ----- Rozdzial trzynasty: Wspolny sen (figurka) -----

    private static readonly string[] ChapterThirteenFigurinePages = ["jagna_izba", "jarmark", "zgliszcza_kra", "kladka_naprawa"];
    private static readonly int[] PeacefulToDream = [.. PeacefulToGrave, 0, 0, 0];

    [Fact]
    public void Chapter_thirteen_the_figurine_from_the_ashes_will_not_burn_and_ends_up_chained()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToDream, 0, 0, 0, 0]);

        var thaw = On(pages, "przednowek")[0];
        Assert.Equal("Rozdział trzynasty", thaw.Blocks[0].Text);
        Assert.Equal("Wspólny sen", thaw.Blocks.Single(b => b.Kind == StoryBlockKind.Title).Text);
        Assert.True(Has(On(pages, "zgliszcza_kra"), "wystrugam ci konia z wozem"));
        Assert.True(Has(On(pages, "sen_kladka"), "Jednego brakuje"));
        Assert.True(Has(On(pages, "sen_kladka"), "To lalka"));
        Assert.True(Has(On(pages, "noc_kladka"), "przeorał Jaromirowi pazurami bark"));
        Assert.True(Has(On(pages, "skrzynia_izba"), "okręcił skrzynię łańcuchem"));
        Assert.True(Has(On(pages, "wiosna_paliki"), "będzie miał na imię Franek"));
        Assert.True(Has(On(pages, "wiosna_paliki"), "drogę do lasu"));
        Assert.Contains("figurka", Inventory(engine));
        var journal = engine.GetJournal();
        Assert.Contains("łańcuchem", journal.Single(c => c.Id == "zielarka").Notes[^1]);
        Assert.Contains("za kładką", journal.Single(c => c.Id == "ogniki").Notes[^1]);
        Assert.Contains("rozorał mu bark", journal.Single(c => c.Id == "stwor").Notes[^1]);
        Assert.Contains(pages, p => p.Blocks.Any(b => b.Text == "_Koniec rozdziału trzynastego._"));
        Assert.Equal("karczma_zeszyt", pages[^1].BackgroundKey);
    }

    [Fact]
    public void Chapter_thirteen_giving_the_figurine_to_the_drowner_puts_out_the_lights_at_once()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToDream, 1, 1, 1]);

        Assert.True(Has(On(pages, "zgliszcza_kra"), "Ty jesteś wnukiem Maćka"));
        Assert.True(Has(On(pages, "sen_kladka"), "Jak ognie dojdą do progu"));
        Assert.True(Has(On(pages, "noc_kladka"), "jak matka dziecko"));
        Assert.Empty(On(pages, "skrzynia_izba"));
        Assert.True(Has(On(pages, "wiosna_paliki"), "nie zapaliły się już ani razu"));
        Assert.DoesNotContain("figurka", Inventory(engine));
        Assert.Contains("ten, kto mieszka pod kładką", engine.GetJournal().Single(c => c.Id == "zielarka").Notes[^1]);
        Assert.Equal("karczma_zeszyt", pages[^1].BackgroundKey);
    }

    [Fact]
    public void Chapter_thirteen_the_lantern_burns_the_chapel_and_jagna_takes_the_figurine_only_if_trusted()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToDream, 0, 1, 2]);
        Assert.Equal("skrzynia_izba", pages[^1].BackgroundKey);
        Assert.Equal(2, pages[^1].Choices.Count);

        pages = Play(engine, [.. PeacefulToDream, 0, 0, 2, 2]);
        Assert.True(Has(On(pages, "noc_kladka"), "spłonęła połowa szuwarów i kapliczka przy kładce"));
        Assert.True(Has(On(pages, "skrzynia_izba"), "Już nie wróci."));
        Assert.True(Has(On(pages, "wiosna_paliki"), "brzozowy krzyż"));
        Assert.DoesNotContain("figurka", Inventory(engine));
        Assert.Contains("Jagna zabrała", engine.GetJournal().Single(c => c.Id == "zielarka").Notes[^1]);
        Assert.Equal("karczma_zeszyt", pages[^1].BackgroundKey);
    }

    // ----- Rozdzial czternasty: Kapliczki plona -----

    private static readonly int[] PeacefulToFire = [.. PeacefulToDream, 0, 0, 0, 0];

    [Fact]
    public void Chapter_fourteen_standing_up_costs_the_cow_saves_the_chapel_and_the_debt_buys_a_road()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToFire, 0, 0, 0]);

        var stakes = On(pages, "paliki_pedy")[0];
        Assert.Equal("Rozdział czternasty", stakes.Blocks[0].Text);
        Assert.Equal("Kapliczki płoną", stakes.Blocks.Single(b => b.Kind == StoryBlockKind.Title).Text);
        Assert.True(Has(On(pages, "karczma_zeszyt"), "wyprowadził Jaromirowi krowę z obory"));
        Assert.True(Has(On(pages, "noc_ognia"), "szarpnięcie za włosy"));
        Assert.True(Has(On(pages, "noc_ognia"), "Wyniósł z ognia świątka"));
        Assert.True(Has(On(pages, "pogorzelisko"), "wyrwał z zeszytu kartki"));
        Assert.True(Has(On(pages, "zima_mlodnik"), "wystruganego z lipy"));
        var journal = engine.GetJournal();
        Assert.Contains("pierwszych wielkich sosen", journal.Single(c => c.Id == "pan_lasu").Notes[^1]);
        Assert.Contains("szarpaniem za włosy", journal.Single(c => c.Id == "uboze").Notes[^1]);
        Assert.Contains(pages, p => p.Blocks.Any(b => b.Text == "_Koniec rozdziału czternastego._"));
        Assert.Equal("sobotka", pages[^1].BackgroundKey);
    }

    [Fact]
    public void Chapter_fourteen_working_the_road_saving_szymon_and_refusing_the_deal()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToFire, 1, 1, 1]);

        Assert.True(Has(On(pages, "karczma_zeszyt"), "Judasz"));
        Assert.True(Has(On(pages, "noc_ognia"), "zaparte od zewnątrz drągiem"));
        Assert.True(Has(On(pages, "pogorzelisko"), "Komornik przyjechał w październiku"));
        Assert.True(Has(On(pages, "zima_mlodnik"), "brzozowy krzyżyk"));
        Assert.True(Has(On(pages, "zima_mlodnik"), "Plama żywicy"));
        Assert.Contains("granicy spalonych kapliczek", engine.GetJournal().Single(c => c.Id == "pan_lasu").Notes[^1]);
        Assert.Equal("sobotka", pages[^1].BackgroundKey);
    }

    [Fact]
    public void Chapter_fourteen_the_sprite_lets_jaromir_wake_the_village_at_the_cost_of_his_hands()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToFire, 2]);
        Assert.Equal("noc_ognia", pages[^1].BackgroundKey);
        Assert.Equal(3, pages[^1].Choices.Count);

        pages = Play(engine, [.. PeacefulToFire, 2, 2, 0]);
        Assert.True(Has(On(pages, "karczma_zeszyt"), "ślubne korale"));
        Assert.True(Has(On(pages, "noc_ognia"), "spalone do żywego mięsa"));
        Assert.True(Has(On(pages, "zima_mlodnik"), "goiły się powoli"));
        Assert.Equal("sobotka", pages[^1].BackgroundKey);
    }

    // ----- Rozdzial pietnasty: Noc Kupaly -----

    private static readonly int[] PeacefulToKupala = [.. PeacefulToFire, 0, 0, 0];

    [Fact]
    public void Chapter_fifteen_at_the_bonfire_marysia_slips_away_and_the_rye_woman_is_chased_until_dawn()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToKupala, 0, 0, 0]);

        var spring = On(pages, "wiosna_okruszki")[0];
        Assert.Equal("Rozdział piętnasty", spring.Blocks[0].Text);
        Assert.Equal("Noc Kupały", spring.Blocks.Single(b => b.Kind == StoryBlockKind.Title).Text);
        Assert.True(Has([spring], "Dla pani"));
        Assert.True(Has(On(pages, "sobotka"), "trafiła ręką w pustkę"));
        Assert.True(Has(On(pages, "zyto_noc"), "Mama śpiewa"));
        Assert.True(Has(On(pages, "zyto_noc"), "ości z kłosów"));
        Assert.True(Has(On(pages, "rano_kupala"), "Komuś ją niosła"));
        Assert.True(Has(On(pages, "targ_jagna"), "pierwszą rzecz, którą wyniesiesz z boru"));
        Assert.True(Has(On(pages, "torba_noc"), "wełniak Marysi"));
        Assert.Contains("bucik_marysi", Inventory(engine));
        Assert.Contains("wstazka_marysi", Inventory(engine));
        var journal = engine.GetJournal();
        Assert.Equal("Żytnia baba", journal.Single(c => c.Id == "zytnia_baba").Title);
        Assert.Contains("nie zabija, tylko trzyma", journal.Single(c => c.Id == "pan_lasu").Notes[^1]);
        Assert.Contains(pages, p => p.Blocks.Any(b => b.Text == "_Koniec rozdziału piętnastego._"));
        Assert.Equal("skraj_bor", pages[^1].BackgroundKey);
        Assert.Equal(PageEnding.Choices, pages[^1].Ending);
    }

    [Fact]
    public void Chapter_fifteen_following_the_song_costs_hanka_her_voice_and_the_priest_takes_an_oath()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToKupala, 1, 1, 1]);

        Assert.True(Has(On(pages, "izba_kupala"), "Rygiel był odsunięty"));
        Assert.True(Has(On(pages, "zyto_noc"), "Nie po ciemku"));
        Assert.True(Has(On(pages, "zyto_noc"), "nigdy nie zaśpiewała"));
        Assert.True(Has(On(pages, "chrzest"), "Przysięgnij mi na ten różaniec"));
        Assert.Contains("rozaniec", Inventory(engine));
        Assert.Contains("głosem matki", engine.GetJournal().Single(c => c.Id == "zytnia_baba").Notes[^1]);
        Assert.Equal("skraj_bor", pages[^1].BackgroundKey);
    }

    [Fact]
    public void Chapter_fifteen_torches_trample_the_rye_and_the_cloud_man_takes_the_field()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToKupala, 0, 2, 2]);

        Assert.True(Has(On(pages, "zyto_noc"), "chleba starczyło tylko do Bożego Narodzenia"));
        Assert.True(Has(On(pages, "planetnik_burza"), "Twoje pole wezmę ja"));
        Assert.Equal("Płanetnik", engine.GetJournal().Single(c => c.Id == "planetnik").Title);
        Assert.Equal("skraj_bor", pages[^1].BackgroundKey);
    }

    // ----- Rozdzial szesnasty: W glab boru -----

    /// <summary>Gra dalej od podanej strony, wybierając opcje po fragmencie ich tekstu. Zwraca kolejne strony.</summary>
    private static List<StoryPage> PlayByText(InkStoryEngine engine, StoryPage page, params string[] choices)
    {
        var pages = new List<StoryPage>();
        var queue = new Queue<string>(choices);
        for (var guard = 0; guard < 400; guard++)
        {
            switch (page.Ending)
            {
                case PageEnding.Continue:
                    page = engine.Continue();
                    break;
                case PageEnding.Choices when queue.Count > 0:
                    var text = queue.Dequeue();
                    page = engine.Choose(page.Choices.Select((c, i) => (c, i)).Single(x => x.c.Text.Contains(text)).i);
                    break;
                default:
                    return pages;
            }

            pages.Add(page);
        }

        throw new InvalidOperationException("Fabuła nie dochodzi do końca ani do wyboru.");
    }

    /// <summary>Gra podanymi wyborami, a dalej pierwszą opcją — aż do strony z wyborem na tle <paramref name="background"/>.</summary>
    private static List<StoryPage> PlayTo(InkStoryEngine engine, string background, params int[] choices)
    {
        var pages = new List<StoryPage> { engine.StartNew() };
        var queue = new Queue<int>(choices);
        for (var guard = 0; guard < 400; guard++)
        {
            var page = pages[^1];
            if (page.BackgroundKey == background && page.Ending == PageEnding.Choices)
            {
                return pages;
            }

            pages.Add(page.Ending == PageEnding.Choices ? engine.Choose(queue.Count > 0 ? queue.Dequeue() : 0) : engine.Continue());
        }

        throw new InvalidOperationException($"Fabuła nie dochodzi do tła {background}.");
    }

    [Fact]
    public void Chapter_sixteen_inside_out_clothes_an_answered_voice_and_the_lights_rip_the_bag()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToKupala, 0, 0, 0]);
        pages.AddRange(PlayByText(engine, pages[^1], "Wywrócić ubranie", "Odpowiedzieć Marysi", "Iść za światłami", "Zdjąć czapkę"));

        var edge = On(pages, "skraj_bor")[0];
        Assert.Equal("Rozdział szesnasty", edge.Blocks[0].Text);
        Assert.Equal("W głąb boru", edge.Blocks.Single(b => b.Kind == StoryBlockKind.Title).Text);
        Assert.True(Has([edge], "obiecał ojcu"));
        Assert.True(Has(On(pages, "bor_suchy"), "Bór uznał go za swojego"));
        Assert.True(Has(On(pages, "glosy_noc"), "Osiemset. Ten jest mój."));
        Assert.True(Has(On(pages, "bagno_blednice"), "rozpruta od dołu do góry"));
        Assert.True(Has(On(pages, "serce_boru"), "Tego się po was nie spodziewałem"));
        Assert.True(Has(On(pages, "serce_boru"), "Usiądź, wnuku Maćka"));
        var journal = engine.GetJournal();
        Assert.Equal("Błędnice", journal.Single(c => c.Id == "blednice").Title);
        Assert.Contains("Wodzą dokoła", journal.Single(c => c.Id == "blednice").Notes[^1]);
        Assert.Contains("nie rzucał cienia", journal.Single(c => c.Id == "pan_lasu").Notes[^1]);
        Assert.Equal("W sercu boru zdjął kapelusz.", journal.Single(c => c.Id == "starzec").Notes[^1]);
        Assert.Contains(pages, p => p.Blocks.Any(b => b.Text == "_Koniec rozdziału szesnastego._"));
        Assert.Equal("pod_debem", pages[^1].BackgroundKey);
        Assert.Equal(PageEnding.Choices, pages[^1].Ending);
    }

    [Fact]
    public void Chapter_sixteen_notched_trees_the_wounded_wolf_and_the_rosary_burns()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToKupala, 1, 1, 1]);
        Assert.Contains("rozaniec", Inventory(engine));
        pages.AddRange(PlayByText(engine, pages[^1], "Znaczyć drogę", "Pójść za głosem Franka", "różaniec", "Unieść siekierę"));

        Assert.True(Has(On(pages, "bor_suchy"), "zalepiała ostrze"));
        Assert.True(Has(On(pages, "glosy_noc"), "ledwie szeptała"));
        Assert.True(Has(On(pages, "glosy_noc"), "źle zagojoną ranę po kuli"));
        Assert.DoesNotContain(pages.Single(p => p.BackgroundKey == "bagno_blednice" && p.Ending == PageEnding.Choices).Choices, c => c.Text.Contains("białym wilkiem"));
        Assert.True(Has(On(pages, "bagno_blednice"), "różaniec w jego dłoni był zwęglony"));
        Assert.DoesNotContain("rozaniec", Inventory(engine));
        Assert.True(Has(On(pages, "serce_boru"), "zraniłeś setkę moich drzew"));
        Assert.Contains("nie po to, żeby go strzec", engine.GetJournal().Single(c => c.Id == "tropy").Notes[^1]);
        Assert.Contains("Od modlitwy gasną", engine.GetJournal().Single(c => c.Id == "blednice").Notes[^1]);
    }

    [Fact]
    public void Chapter_sixteen_clear_sky_silence_and_a_salt_circle()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToKupala, 0, 2, 2]);
        pages.AddRange(PlayByText(engine, pages[^1], "nad borem nie ma chmur", "Milczeć", "krąg z soli", "Zawołać Marysię"));

        Assert.True(Has(On(pages, "skraj_bor"), "Tam, gdzie nie pada"));
        Assert.True(Has(On(pages, "bor_suchy"), "dziura czystego nieba"));
        Assert.True(Has(On(pages, "glosy_noc"), "smak wełny i krwi"));
        Assert.True(Has(On(pages, "bagno_blednice"), "wtopiona w mech"));
        Assert.True(Has(On(pages, "serce_boru"), "z bagna, przez które dopiero co przeszedł"));
        Assert.DoesNotContain(engine.GetJournal(), c => c.Id == "tropy" && c.Notes.Count > 2);
    }

    [Fact]
    public void Chapter_sixteen_the_spared_wolf_leads_across_the_bog_and_bites()
    {
        var engine = CreateEngine();
        var pages = PlayTo(engine, "skraj_bor", [.. PeacefulToHunt, 0, 0, 1]);
        pages.AddRange(PlayByText(engine, pages[^1], "Wywrócić ubranie", "Pójść za głosem Franka", "białym wilkiem", "Zdjąć czapkę"));

        Assert.True(Has(On(pages, "glosy_noc"), "chudszy niż wtedy w młodniku"));
        Assert.True(Has(On(pages, "bagno_blednice"), "kły rozcięły Jaromirowi wierzch dłoni"));
        Assert.Contains("ostrzegawczo, ale do krwi", engine.GetJournal().Single(c => c.Id == "tropy").Notes[^1]);
    }

    [Fact]
    public void Chapter_sixteen_flint_sparks_keep_the_lights_away_and_set_the_moss_alight()
    {
        var engine = CreateEngine();
        var pages = PlayTo(engine, "skraj_bor", [Forest, Stay, StayHere, TellBoy, Search, TakeFlint, WalkOn, SellToWitch, TellWife, .. Summer, .. School, .. Winter, .. Spring, .. Sawmill, .. Noon, .. Bridge7, .. Pentecost, .. LeanSummer, .. Wedding, .. Births, .. Hunt, .. Grave, .. Dream, .. Fire]);
        Assert.Contains("krzesiwo", Inventory(engine));
        pages.AddRange(PlayByText(engine, pages[^1], "Znaczyć drogę", "Milczeć", "Krzesać iskry", "Zdjąć czapkę"));

        Assert.True(Has(On(pages, "bagno_blednice"), "porost zajął się w jednej chwili"));
        Assert.Contains("Boją się iskier", engine.GetJournal().Single(c => c.Id == "blednice").Notes[^1]);
        Assert.Equal("pod_debem", pages[^1].BackgroundKey);
    }

    // ----- Rozdzial siedemnasty: Rozmowa w borze -----

    [Fact]
    public void Chapter_seventeen_where_is_marysia_the_wounded_wolf_and_the_axe_left_as_a_pledge()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToKupala, 0, 0, 0]);
        pages.AddRange(PlayByText(engine, pages[^1], "Wywrócić ubranie", "Odpowiedzieć Marysi", "Iść za światłami", "Zdjąć czapkę",
            "Gdzie jest Marysia", "Nazwać go po imieniu", "Siekierę dziadka"));

        var meadow = On(pages, "wies_sianokosy")[0];
        Assert.Equal("Rozdział siedemnasty", meadow.Blocks[0].Text);
        Assert.Equal("Rozmowa w borze", meadow.Blocks.Single(b => b.Kind == StoryBlockKind.Title).Text);
        Assert.True(Has([meadow], "Nikt nie śpiewał"));
        Assert.True(Has(On(pages, "pod_debem"), "Moje dzieci nigdy nie płaczą"));
        Assert.True(Has(On(pages, "pod_debem"), "Kości dzieci waszych będą połamane"));
        Assert.True(Has(On(pages, "pod_debem"), "wbił siekierę w najbliższy świerk"));
        Assert.True(Has(On(pages, "pod_debem"), "tylną ścianę ojcowskiej izby"));
        Assert.True(Has(On(pages, "pod_debem"), "Wpatrywał się w podaną dłoń"));
        Assert.True(Has(On(pages, "pod_debem"), "Zabrałeś mu nim rok wilczego życia"));
        Assert.DoesNotContain("siekiera", Inventory(engine));
        Assert.True(Has(On(pages, "noc_pod_debem"), "nigdy nie doszła dalej niż do połowy"));
        var journal = engine.GetJournal();
        Assert.Contains("Jego dzieci nie mają cienia", journal.Single(c => c.Id == "pan_lasu").Notes[^1]);
        Assert.Contains("Oddał go Panu Lasu", journal.Single(c => c.Id == "tropy").Notes[^1]);
        Assert.Contains(pages, p => p.Blocks.Any(b => b.Text == "_Koniec rozdziału siedemnastego._"));
        Assert.Equal("dzieci_debu", pages[^1].BackgroundKey);
        Assert.Equal(PageEnding.Choices, pages[^1].Ending);
    }

    [Fact]
    public void Chapter_seventeen_who_he_is_the_spared_wolf_brings_the_shoe_and_the_shadow_is_pledged()
    {
        var engine = CreateEngine();
        var pages = PlayTo(engine, "skraj_bor", [.. PeacefulToHunt, 0, 0, 1]);
        pages.AddRange(PlayByText(engine, pages[^1], "Wywrócić ubranie", "Pójść za głosem Franka", "białym wilkiem", "Zdjąć czapkę",
            "Kim jest", "Opowiedzieć mu o Antku", "Swój cień"));

        Assert.True(Has(On(pages, "pod_debem"), "Twoja krew wsiąkła mi w ziemię"));
        Assert.True(Has(On(pages, "pod_debem"), "Ja też kiedyś przyszedłem tu sam"));
        Assert.True(Has(On(pages, "pod_debem"), "Z twoją pamięcią w głowie nie pożyje długo"));
        Assert.True(Has(On(pages, "noc_pod_debem"), "Biały wilk leżał przy jego boku"));
        Assert.True(Has(On(pages, "noc_pod_debem"), "wsuwa się pomiędzy korzenie dębu"));
        Assert.Equal("Drewniaki Marysi", engine.GetInventory().Single(i => i.Id == "bucik_marysi").Name);
        var wolf = engine.GetJournal().Single(c => c.Id == "tropy").Notes[^1];
        Assert.Contains("Położył go Jaromirowi u stóp", wolf);
        Assert.Contains("kawałek wilczego życia", wolf);
        Assert.Contains("ktoś inny będzie liczył za niego", engine.GetJournal().Single(c => c.Id == "pan_lasu").Notes[^1]);
    }

    [Fact]
    public void Chapter_seventeen_the_curse_a_cold_stare_at_the_wolf_and_the_flint_thrown_away()
    {
        var engine = CreateEngine();
        var pages = PlayTo(engine, "skraj_bor", [Forest, Stay, StayHere, TellBoy, Search, TakeFlint, WalkOn, SellToWitch, TellWife, .. Summer, .. School, .. Winter, .. Spring, .. Sawmill, .. Noon, .. Bridge7, .. Pentecost, .. LeanSummer, .. Wedding, .. Births, .. Hunt, .. Grave, .. Dream, .. Fire]);
        pages.AddRange(PlayByText(engine, pages[^1], "Znaczyć drogę", "Milczeć", "Krzesać iskry", "Unieść siekierę",
            "Za co wieś", "Nie ruszać się", "Krzesiwo dziadka"));

        Assert.True(Has(On(pages, "pod_debem"), "Zapaliłeś mi bór"));
        Assert.True(Has(On(pages, "pod_debem"), "Albo ogień, który ją zaczął"));
        Assert.True(Has(On(pages, "pod_debem"), "zarośnięte pokrzywą podwaliny"));
        Assert.True(Has(On(pages, "pod_debem"), "Jesteś w tym podobny do mnie"));
        Assert.DoesNotContain("krzesiwo", Inventory(engine));
        Assert.Contains("ten sam żar", engine.GetJournal().Single(c => c.Id == "zielarka").Notes[^1]);
        Assert.Equal("dzieci_debu", pages[^1].BackgroundKey);
    }

    // ----- Rozdzial osiemnasty: Wybor -----

    private static readonly string[] PeacefulForestToOak = ["Wywrócić ubranie", "Odpowiedzieć Marysi", "Iść za światłami", "Zdjąć czapkę", "Gdzie jest Marysia", "Nazwać go po imieniu", "Siekierę dziadka"];

    [Fact]
    public void Chapter_eighteen_the_melody_finds_marysia_and_the_lord_of_the_forest_announces_all_souls()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToKupala, 0, 0, 0]);
        pages.AddRange(PlayByText(engine, pages[^1], [.. PeacefulForestToOak, "Zanucić jej melodię"]));

        var room = On(pages, "izba_swit")[0];
        Assert.Equal("Rozdział osiemnasty", room.Blocks[0].Text);
        Assert.Equal("Wybór", room.Blocks.Single(b => b.Kind == StoryBlockKind.Title).Text);
        Assert.True(Has([room], "krzesał ogień do nowej szczypki"));
        Assert.True(Has(On(pages, "dzieci_debu"), "Te we włosach dziewczynek były nowe"));
        Assert.True(Has(On(pages, "dzieci_debu"), "Patrzył, która zamknie usta"));
        Assert.True(Has(On(pages, "dzieci_debu"), "Ta płakała za wszystkie"));
        Assert.True(Has(On(pages, "dzieci_debu"), "Nikt mu siekiery nie oddał"));
        Assert.True(Has(On(pages, "dzieci_debu"), "W Zaduszki przyjdę do wsi"));
        var children = engine.GetJournal().Single(c => c.Id == "dzieci");
        Assert.Equal("Dzieci spod dębu", children.Title);
        Assert.Contains("Śpiewają melodię do samego końca", children.Notes[^1]);
        Assert.Contains("Nie rzucają cienia", children.Notes[^1]);
        Assert.Contains(pages, p => p.Blocks.Any(b => b.Text == "_Koniec rozdziału osiemnastego._"));
        Assert.Equal(PageEnding.Choices, pages[^1].Ending);
    }

    [Fact]
    public void Chapter_eighteen_inside_out_eyes_pick_the_wrong_child_who_goes_cold_at_the_forest_edge()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToKupala, 0, 0, 0]);
        pages.AddRange(PlayByText(engine, pages[^1], [.. PeacefulForestToOak, "Przyjrzeć się buziom"]));

        Assert.True(Has(On(pages, "dzieci_debu"), "patrzy na świat na opak"));
        Assert.True(Has(On(pages, "skraj_powrot"), "Więcej nie zaczął"));
        Assert.True(Has(On(pages, "skraj_powrot"), "Pochowasz je jak swoje"));
        Assert.Contains("chowa je jak swoje", engine.GetJournal().Single(c => c.Id == "pan_lasu").Notes[^1]);
        Assert.Equal("laka_swit", pages[^1].BackgroundKey);
    }

    [Fact]
    public void Chapter_eighteen_the_treasure_from_the_hideout_shows_which_child_is_real()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToKupala, 0, 0, 0]);
        pages.AddRange(PlayByText(engine, pages[^1], [.. PeacefulForestToOak, "Szukać skarbu z bazy"]));

        Assert.True(Has(On(pages, "dzieci_debu"), "Pochylał się nad każdą szyją"));
        Assert.True(Has(On(pages, "dzieci_debu"), "Palce wplątała w rzemyk"));
        Assert.Contains("gładkie i nowe", engine.GetJournal().Single(c => c.Id == "dzieci").Notes[^1]);
    }

    [Fact]
    public void Chapter_eighteen_franek_finds_her_and_stays_under_the_oak()
    {
        var engine = CreateEngine();
        var pages = PlayTo(engine, "skraj_bor", [.. PeacefulToHunt, 0, 0, 1]);
        pages.AddRange(PlayByText(engine, pages[^1], "Wywrócić ubranie", "Pójść za głosem Franka", "białym wilkiem", "Zdjąć czapkę",
            "Kim jest", "Opowiedzieć mu o Antku", "Swój cień", "Poprosić Franka o pomoc"));

        Assert.True(Has(On(pages, "dzieci_debu"), "zbyt duży jak na dziecko"));
        Assert.True(Has(On(pages, "dzieci_debu"), "Moi nie pomagają ludziom"));
        Assert.True(Has(On(pages, "dzieci_debu"), "nic za nim nie szło"));
        Assert.Contains("Został pod dębem", engine.GetJournal().Single(c => c.Id == "tropy").Notes[^1]);
        Assert.Equal(PageEnding.Choices, pages[^1].Ending);
    }

    [Fact]
    public void Chapter_eighteen_the_pledged_shadow_lies_under_a_false_child()
    {
        var engine = CreateEngine();
        var pages = PlayTo(engine, "skraj_bor", [.. PeacefulToHunt, 0, 0, 1]);
        pages.AddRange(PlayByText(engine, pages[^1], "Wywrócić ubranie", "Pójść za głosem Franka", "białym wilkiem", "Zdjąć czapkę",
            "Kim jest", "Opowiedzieć mu o Antku", "Swój cień", "Wziąć tę, która rzuca cień"));

        Assert.True(Has(On(pages, "dzieci_debu"), "szeroki w ramionach, długi, jego własny"));
        Assert.True(Has(On(pages, "skraj_powrot"), "Pochowasz je jak swoje"));
    }

    // ----- Rozdzial dziewietnasty: Swit -----

    [Fact]
    public void Chapter_nineteen_the_ribbon_pays_jagna_and_jaromir_tears_the_shroud_himself()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToKupala, 0, 0, 0]);
        pages.AddRange(PlayByText(engine, pages[^1], [.. PeacefulForestToOak, "Zanucić jej melodię", "Wstążkę z nadgarstka", "Wyrwać im całun samemu"]));

        var meadow = On(pages, "laka_swit")[0];
        Assert.Equal("Rozdział dziewiętnasty", meadow.Blocks[0].Text);
        Assert.Equal("Świt", meadow.Blocks.Single(b => b.Kind == StoryBlockKind.Title).Text);
        Assert.True(Has([meadow], "Na pokosach zaszkliła się rosa"));
        Assert.True(Has(On(pages, "wies_sianokosy"), "Wyszła z boru, zanim wyniosłem córkę"));
        Assert.DoesNotContain("wstazka_marysi", Inventory(engine));
        Assert.True(Has(On(pages, "calun_noc"), "Nie my wybieramy"));
        Assert.True(Has(On(pages, "calun_noc"), "za darmo nic z płótna nie schodzi"));
        Assert.True(Has(On(pages, "calun_noc"), "Do kosy już nie stanął"));
        Assert.True(Has(On(pages, "jesien_zaduszki"), "zgasły jednym tchem"));
        var journal = engine.GetJournal();
        Assert.Contains("Same nie wybierają", journal.Single(c => c.Id == "mamuny").Notes[^1]);
        Assert.Contains("co do joty", journal.Single(c => c.Id == "pan_lasu").Notes[^1]);
        Assert.Contains(pages, p => p.Blocks.Any(b => b.Text == "_Koniec rozdziału dziewiętnastego._"));
        Assert.Equal("swita", pages[^1].BackgroundKey);
        Assert.Equal(PageEnding.Choices, pages[^1].Ending);
    }

    [Fact]
    public void Chapter_nineteen_the_shoe_pays_jagna_and_antek_loses_his_arm()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToKupala, 0, 0, 0]);
        pages.AddRange(PlayByText(engine, pages[^1], [.. PeacefulForestToOak, "Zanucić jej melodię", "Drewniak, który niósł", "Pobiec po Antka"]));

        Assert.True(Has(On(pages, "wies_sianokosy"), "chodziła boso do pierwszego śniegu"));
        Assert.DoesNotContain("bucik_marysi", Inventory(engine));
        Assert.True(Has(On(pages, "calun_noc"), "Do kuźni Antek już nie wrócił"));
        Assert.True(Has(On(pages, "jesien_zaduszki"), "Prawą trzymał w kieszeni"));
    }

    [Fact]
    public void Chapter_nineteen_franek_tears_the_shroud_and_drowns()
    {
        var engine = CreateEngine();
        var pages = PlayTo(engine, "skraj_bor", [.. PeacefulToHunt, 0, 0, 1]);
        pages.AddRange(PlayByText(engine, pages[^1], "Wywrócić ubranie", "Pójść za głosem Franka", "białym wilkiem", "Zdjąć czapkę",
            "Kim jest", "Opowiedzieć mu o Antku", "Swój cień", "Zanucić jej melodię", "Odmówić", "Zawołać białego wilka"));

        Assert.True(Has(On(pages, "laka_swit"), "odprowadził ich do ostatnich świerków"));
        Assert.True(Has(On(pages, "laka_swit"), "gdzie powinien leżeć jego cień"));
        Assert.True(Has(On(pages, "wies_sianokosy"), "Dług nie gnije"));
        Assert.True(Has(On(pages, "calun_noc"), "To on – powiedział tylko"));
        Assert.True(Has(On(pages, "calun_noc"), "nie pożyje długo"));
        Assert.Contains("Rozdarł mamunom całun", engine.GetJournal().Single(c => c.Id == "tropy").Notes[^1]);
    }

    [Fact]
    public void Chapter_nineteen_the_mamuny_pact_passes_to_marysia()
    {
        var engine = CreateEngine();
        var pages = PlayTo(engine, "sobotka", [.. PeacefulToBirth, 0, 2, 0, 1, 0]);
        Assert.Contains(pages[^1].Choices, c => c.Text.Contains("Zanieść dar mamunom"));
        pages.AddRange(PlayByText(engine, pages[^1], ["Zanieść dar mamunom", "Rzucić się na nią", "do Jagny",
            .. PeacefulForestToOak, "Zanucić jej melodię", "Odmówić", "Przypomnieć im umowę"]));

        Assert.True(Has(On(pages, "calun_noc"), "Dotrzymałyśmy"));
        Assert.True(Has(On(pages, "calun_noc"), "Niech będzie: póki żyje ona"));
        Assert.True(Has(On(pages, "jesien_zaduszki"), "bochen na płaskie kamienie"));
        Assert.Contains("także Marysia", engine.GetJournal().Single(c => c.Id == "mamuny").Notes[^1]);
    }

    [Fact]
    public void Chapter_nineteen_jagna_takes_the_wooden_child_and_the_coffin_stays_empty()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToKupala, 0, 0, 0]);
        pages.AddRange(PlayByText(engine, pages[^1], [.. PeacefulForestToOak, "Przyjrzeć się buziom", "Oddać je Jagnie"]));

        Assert.True(Has(On(pages, "laka_swit"), "Włosy nie pachniały niczym"));
        Assert.True(Has(On(pages, "laka_swit"), "To jest drewno"));
        Assert.True(Has(On(pages, "pogrzeb"), "Ciała w trumience nie było"));
        Assert.True(Has(On(pages, "pogrzeb"), "z drewna starego bzu"));
        Assert.True(Has(On(pages, "jesien_zaduszki"), "Patrzył na nią i jej nie poznał"));
        Assert.True(Has(On(pages, "jesien_zaduszki"), "Paliła się tylko gromnica Hanki"));
        Assert.Contains("wie, co się z takim robi", engine.GetJournal().Single(c => c.Id == "dzieci").Notes[^1]);
        Assert.Equal(PageEnding.Choices, pages[^1].Ending);
    }

    [Fact]
    public void Chapter_nineteen_without_a_debt_the_child_is_buried_under_the_young_forest()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToKupala, 1, 1, 1]);
        pages.AddRange(PlayByText(engine, pages[^1], "Znaczyć drogę", "Pójść za głosem Franka", "różaniec", "Unieść siekierę",
            "Gdzie jest Marysia", "Nie ruszać się", "Siekierę dziadka", "Zawołać ją po imieniu", "Pochować je pod młodnikiem"));

        Assert.True(Has(On(pages, "laka_swit"), "Albo ogień, albo pod lasem"));
        Assert.True(Has(On(pages, "skraj_powrot"), "kij z zawiązaną czerwoną wstążką"));
        Assert.True(Has(On(pages, "skraj_powrot"), "siekierą pożyczoną od teścia"));
        Assert.True(Has(On(pages, "jesien_zaduszki"), "Gdyby nie zawołał jej po imieniu"));
        Assert.Equal(PageEnding.Choices, pages[^1].Ending);
    }

    // ----- Rozdzial dwudziesty: Ostatnia noc -----

    private static readonly string[] RibbonDawn = [.. PeacefulForestToOak, "Zanucić jej melodię", "Wstążkę z nadgarstka", "Wyrwać im całun samemu"];

    private static int[] WithoutAcorn(int[] path)
    {
        var copy = path.ToArray();
        copy[PeacefulToSawmill.Length + 2] = LeaveAcorn;
        return copy;
    }

    [Fact]
    public void Chapter_twenty_the_acorn_frees_the_children_for_good()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToKupala, 0, 0, 0]);
        Assert.Contains("zoladz", Inventory(engine));
        pages.AddRange(PlayByText(engine, pages[^1], [.. RibbonDawn, "Zwrócić mu granicę"]));

        var mist = On(pages, "dziady")[0];
        Assert.Equal("Rozdział dwudziesty", mist.Blocks[0].Text);
        Assert.Equal("Ostatnia noc", mist.Blocks.Single(b => b.Kind == StoryBlockKind.Title).Text);
        Assert.True(Has(On(pages, "swita"), "Przyszedłem policzyć się do końca"));
        Assert.DoesNotContain(On(pages, "swita").SelectMany(p => p.Choices), c => c.Text.Contains("Skrzesać ogień"));
        Assert.True(Has(On(pages, "granica"), "do jakiej roboty"));
        Assert.True(Has(On(pages, "granica"), "Ty mi oddałeś moje"));
        Assert.True(Has(On(pages, "epilog_dab"), "Od pół wieku nie przepadło żadne"));
        Assert.True(Has(On(pages, "epilog_dab"), "dzieci Marysi"));
        Assert.DoesNotContain("zoladz", Inventory(engine));
        Assert.DoesNotContain("siekiera", Inventory(engine));
        Assert.Contains("nie bierze już dzieci", engine.GetJournal().Single(c => c.Id == "pan_lasu").Notes[^1]);
        Assert.Equal("_Koniec._", pages[^1].Blocks[^1].Text);
        Assert.Equal(PageEnding.End, pages[^1].Ending);
    }

    [Fact]
    public void Chapter_twenty_without_the_acorn_the_old_price_returns()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. WithoutAcorn(PeacefulToKupala), 0, 0, 0]);
        Assert.DoesNotContain("zoladz", Inventory(engine));
        pages.AddRange(PlayByText(engine, pages[^1], [.. RibbonDawn, "Zwrócić mu granicę"]));

        Assert.True(Has(On(pages, "granica"), "jedno dziecko na pokolenie, w noc świętojańską"));
        Assert.True(Has(On(pages, "granica"), "Umarli nie poszli za nim"));
        Assert.False(Has(pages, "kiełek"));
        Assert.True(Has(On(pages, "epilog_dab"), "mała od Kowalczyków"));
        Assert.Equal(PageEnding.End, pages[^1].Ending);
    }

    [Fact]
    public void Chapter_twenty_jaromir_takes_the_hat_and_says_goodbye()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToKupala, 0, 0, 0]);
        pages.AddRange(PlayByText(engine, pages[^1], [.. RibbonDawn, "Zająć jego miejsce", "Pożegnać się z Hanką i z Marysią"]));

        Assert.True(Has(On(pages, "miejsce"), "Będę blisko"));
        Assert.True(Has(On(pages, "miejsce"), "Teraz ty licz"));
        Assert.True(Has(On(pages, "epilog_bor"), "Jaromir. Za płotem."));
        Assert.Contains("Teraz ty licz", engine.GetJournal().Single(c => c.Id == "pan_lasu").Notes[^1]);
        Assert.Equal(PageEnding.End, pages[^1].Ending);
    }

    [Fact]
    public void Chapter_twenty_jaromir_leaves_without_a_word_and_takes_his_daughter()
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulToKupala, 0, 0, 0]);
        pages.AddRange(PlayByText(engine, pages[^1], [.. PeacefulForestToOak, "Przyjrzeć się buziom", "Oddać je Jagnie", "Zająć jego miejsce", "Odejść bez słowa"]));

        Assert.True(Has(On(pages, "dziady"), "Tylko gromnica Hanki paliła się"));
        Assert.True(Has(On(pages, "swita"), "Oddaję, co nie moje"));
        Assert.True(Has(On(pages, "miejsce"), "Idziemy do domu, tato?"));
        Assert.True(Has(On(pages, "epilog_bor"), "położyła na krzyżu jego czapkę"));
        Assert.Equal(PageEnding.End, pages[^1].Ending);
    }

    private static readonly int[] FlintPath = [Forest, Stay, StayHere, TellBoy, Search, TakeFlint, WalkOn, SellToWitch, TellWife, .. Summer, .. School, .. Winter, .. Spring, .. Sawmill, .. Noon, .. Bridge7, .. Pentecost, .. LeanSummer, .. Wedding, .. Births, .. Hunt, .. Grave, .. Dream, .. Fire, .. Kupala, .. DeepForest, .. OakTalk, .. Choice, .. Dawn];

    [Fact]
    public void Chapter_twenty_the_acorn_lets_the_dead_daughter_go_with_the_dead()
    {
        var engine = CreateEngine();
        var pages = PlayTo(engine, "swita", FlintPath);
        pages.AddRange(PlayByText(engine, pages[^1], "Zwrócić mu granicę"));

        Assert.True(Has(On(pages, "granica"), "Żywej wam jej nie oddam"));
        Assert.True(Has(On(pages, "granica"), "dziadek Maciek wyciągnął do niej dłoń"));
        Assert.False(Has(On(pages, "granica"), "Umarli nie poszli za nim"));
        Assert.True(Has(On(pages, "epilog_dab"), "wnuki Antka"));
    }

    [Theory]
    [InlineData("Biec do własnej chałupy", "Franka mi pilnuj", "grób Antka")]
    [InlineData("Gasić płomienie", "Żar wypalił mu oczy", "Nie widział go, ale czuł")]
    [InlineData("Orać przesiekę", "połowa Zapadliny leżała w popiele", "cegła nie płonie")]
    public void Chapter_twenty_the_fire_burns_the_forest_and_takes_its_price(string choice, string night, string epilogue)
    {
        var engine = CreateEngine();
        var pages = PlayTo(engine, "swita", FlintPath);
        Assert.Contains("krzesiwo", Inventory(engine));
        pages.AddRange(PlayByText(engine, pages[^1], "Skrzesać ogień", choice));

        Assert.True(Has(On(pages, "pozar_boru"), "Policzone"));
        Assert.True(Has(On(pages, "pozar_boru"), night));
        Assert.True(Has(On(pages, "epilog_wrzosy"), epilogue));
        Assert.True(Has(On(pages, "epilog_wrzosy"), "lasu, którego już nie ma"));
        Assert.Contains("Policzone", engine.GetJournal().Single(c => c.Id == "pan_lasu").Notes[^1]);
        Assert.Equal(PageEnding.End, pages[^1].Ending);
    }

    // ----- Zapiski (bestiariusz): karty odslaniane etapami -----

    [Fact]
    public void Journal_cards_open_step_by_step_and_rename_when_the_creature_is_named()
    {
        var engine = CreateEngine();
        Play(engine, [.. PeacefulToLeanSummer, 0]);
        var beggar = engine.GetJournal().Single(c => c.Id == "licho");
        Assert.Equal("Jednooka żebraczka", beggar.Title);
        Assert.Single(beggar.Notes);
        Assert.DoesNotContain(engine.GetJournal(), c => c.Id == "mamuny");

        Play(engine, [.. PeacefulToLeanSummer, 0, 0, 0, 0]);
        var named = engine.GetJournal().Single(c => c.Id == "licho");
        Assert.Equal("Licho", named.Title);
        Assert.Equal(2, named.Notes.Count);
        Assert.Contains("oczy, które Pan Lasu wysyła", named.Notes[1]);
    }

    [Fact]
    public void Journal_notes_follow_the_players_choices()
    {
        var engine = CreateEngine();
        Play(engine, [.. PeacefulToBirth, 0, 1, 0, 1, 1]);
        var journal = engine.GetJournal();

        Assert.Equal(["stwor", "zielarka", "pan_lasu", "starzec", "polnocnica", "dziad", "uboze", "poludnica", "rusalki", "licho", "tropy", "mamuny", "odmieniec"],
            journal.Select(c => c.Id).Where(id => id != "ogniki"));
        Assert.Equal("Topielec", journal.Single(c => c.Id == "stwor").Title);
        Assert.Equal(4, journal.Single(c => c.Id == "pan_lasu").Notes.Count);
        Assert.Contains("chleb i wianek na kamieniu", journal.Single(c => c.Id == "mamuny").Notes[^1]);
        Assert.Contains("pękła piła", journal.Single(c => c.Id == "licho").Notes[^1]);
    }

    [Theory]
    [MemberData(nameof(AllProloguePaths))]
    public void Every_journal_note_is_clean_text(int[] choices)
    {
        var engine = CreateEngine();
        Play(engine, choices);

        foreach (var card in engine.GetJournal())
        {
            Assert.False(string.IsNullOrWhiteSpace(card.Title));
            Assert.Equal(card.NoteIds.Count, card.Notes.Count);
            Assert.All(card.Notes, note => Assert.DoesNotMatch(@"[{}#|]| [.,;:!?]|  |\p{Ll}[.!?…]\p{Lu}", note));
        }
    }
}

