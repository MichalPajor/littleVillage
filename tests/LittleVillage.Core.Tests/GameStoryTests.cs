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

        for (var guard = 0; guard < 120; guard++)
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
                [StayHere, TellBoy, Search, TakeFlint, WalkOn, SellToWitch, TellWife, .. Summer, .. School],
                [StayHere, TellBoy, Search, LeaveFlint, WalkOn, SellToDealer, KeepQuiet, .. Summer, .. School],
                [Leave, SendBoyAway, Avoid, WalkOn, KeepQuiet, .. Summer, .. School],
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
    public void Morning_shows_the_creature_tracks_only_when_the_dog_is_dead()
    {
        var dead = Play(CreateEngine(), Forest, GoOut, KeepBread)[^1];
        var alive = Play(CreateEngine(), Forest, GoOut, FeedDog)[^1];

        Assert.Contains(dead.Blocks, b => b.Reveal == "slady" && b.Text.Contains("plamy krwi"));
        Assert.DoesNotContain(alive.Blocks, b => b.Reveal == "slady");
        Assert.Contains(alive.Blocks, b => b.Text.StartsWith("Pies leżał przy wejściu do szałasu"));
    }

    [Fact]
    public void Leaving_turns_back_and_the_dog_waits_on_the_slope()
    {
        var pages = Play(CreateEngine(), Lake, GoOut, FeedDog, Leave);

        Assert.True(Has(pages, "Po prostu nie miał dokąd pójść."));
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
        Assert.Contains(legend.Blocks, b => b.Reveal == "wegielki" && b.Text.Contains("żarzące się węgielki"));
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
        Assert.Contains(road.Blocks, b => b.Text.Contains("głos jego żony"));
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
    [InlineData(Stay)]
    [InlineData(GoOut, KeepBread)]
    public void Following_the_voice_without_the_dog_drowns_Maciek(params int[] dogChoices)
    {
        var pages = Play(CreateEngine(), [Marsh, .. dogChoices, StayHere, TellBoy, Search, TakeFlint, FollowVoice]);

        var death = pages[^1];
        Assert.Equal(PageEnding.Death, death.Ending);
        Assert.Equal("sciezka_smierc", death.BackgroundKey);
        Assert.Contains(death.Blocks, b => b.Reveal == "oczy" && b.Text.Contains("Żarzące się jak węgielki"));
        Assert.Contains(death.Blocks, b => b.Reveal == "bagno");
        Assert.EndsWith("pod który nikt już nie wróci.", death.Blocks[^1].Text);
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
        Assert.Contains(oldWoman.Blocks, b => b.Reveal == "pies" && b.Text.StartsWith("Pies zjeżył sierść"));
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
        Assert.True(Has(pages, "zjedli kolację na progu nowej chaty"));
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

        var home = pages.Single(p => p.Blocks.Any(b => b.Text.StartsWith("Chata stała tam, gdzie ją zostawił.")));
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

    private static readonly int[] Summer = [RunOut, Contest, Shell, FirstOption, PlayOn];
    private static readonly int[] School = [Shout, Defend, TakeBark, FetchRibbon, BorrowBook];
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
    [InlineData(false, "Ojciec pomógł mu go wystrugać, śmiejąc się")]
    [InlineData(true, "Ojciec bez słowa pomógł mu go zaostrzyć")]
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

        Assert.Equal("Kiedy miecze się nudziły, przychodziła pora na łuki.", bows[0].Blocks[0].Text);
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
        Assert.StartsWith("Potem suszyli się na trawie", lake[1].Blocks[1].Text);
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
        Assert.Equal(!cursed, Has(evening, "morzył sen w połowie"));

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
        Assert.Contains(friday.Blocks, b => b.Reveal == "cien" && b.Text.Contains("liczy swoje drzewa"));
        Assert.Contains(friday.Blocks, b => b.Text.Contains("włożyć je na lewą stronę"));
        Assert.Contains(friday.Blocks, b => b.Reveal == "okno" && b.Text.EndsWith("czerniała ściana boru."));
        Assert.Equal(PageEnding.Continue, friday.Ending);
        Assert.True(Has(pages, "Hanka z kawałkiem szczypy w ręku"));
    }

    [Theory]
    [InlineData(TakeBark, "kora", "śniło mu się, że ktoś liczy pod jego oknem")]
    [InlineData(LeaveBark, "spirala", "zmierzch płata figle")]
    public void Chapter_two_bark_torn_in_a_spiral(int choice, string reveal, string text)
    {
        var engine = CreateEngine();
        var pages = Play(engine, [.. PeacefulPrologue, .. Summer, Shout, Defend, choice]);

        var pine = On(pages, "sosna_spirala");
        Assert.StartsWith("W drodze powrotnej, na skraju lasu", pine[0].Blocks[0].Text);
        Assert.Contains(pine[0].Blocks, b => b.Text.Contains("długimi palcami zakończonymi ostrymi pazurami"));
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
        Assert.StartsWith("Przez kilka dni nosił w sobie to, co się stało.", desk[0].Blocks[0].Text);
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
    [InlineData(true, BorrowBook, "sprawdził rygiel w drzwiach")]
    [InlineData(false, LeaveBook, "dostanie miskę kaszy")]
    public void Chapter_two_ends_with_tracks_in_the_first_snow(bool cursed, int book, string father)
    {
        var pages = Play(CreateEngine(), [.. cursed ? CursedPrologue : PeacefulPrologue, .. Summer, Shout, Defend, TakeBark, FetchRibbon, book]);

        var snow = On(pages, "pierwszy_snieg")[0];
        Assert.StartsWith("Przyszedł listopad.", snow.Blocks[0].Text);
        Assert.Equal(book == BorrowBook, Has([snow], "wyciągał spod siennika księgę pana Ignacego"));
        Assert.True(Has([snow], father));
        Assert.Contains(snow.Blocks, b => b.Reveal == "snieg" && b.Text.StartsWith("W nocy z niedzieli na poniedziałek spadł pierwszy śnieg."));
        Assert.Contains(snow.Blocks, b => b.Reveal == "slady" && b.Text.Contains("Długich, wąskich."));
        Assert.Equal("Chłopak pomyślał, że zostawił je pewnie jakiś jeleń szukający jedzenia.", snow.Blocks[^1].Text);
        Assert.Contains(pages, p => p.Blocks.Any(b => b.Text == "_Koniec rozdziału drugiego._"));
        Assert.Equal("_Ciąg dalszy nastąpi…_", pages[^1].Blocks[^1].Text);
        Assert.Equal(PageEnding.End, pages[^1].Ending);
    }
}
