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
            foreach (var tail in new[] { new[] { StayHere, TellBoy, Search, TakeFlint, WalkOn }, [Leave, SendBoyAway, Avoid, WalkOn] })
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
            ("nie mógł zmrużyć oka", "Zaczęło świtać"),
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
        Assert.Equal("zapadlina", pages[^1].BackgroundKey);
        Assert.Contains(pages[^1].Blocks, b => b.Text.StartsWith("Na Bukowym Grzbiecie"));
        Assert.Equal(PageEnding.End, pages[^1].Ending);
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
        Assert.Equal("zapadlina", pages[^1].BackgroundKey);
        Assert.Equal(PageEnding.End, pages[^1].Ending);
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
}
