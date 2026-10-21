// ------------------------------------------------------------
//  Zapiski — bestiariusz. Każda istota ma kilka wpisów (etapów),
//  które fabuła odsłania dopiero wtedy, gdy bohater czegoś się dowie:
//      ~ zapiski += licho_2
//  Kolejność na liście = kolejność kart. Tytuł karty bierze się z
//  najnowszego odsłoniętego wpisu (np. „Jednooka żebraczka” → „Licho”).
//  Wpisy nie mówią więcej, niż w tej chwili wiedzą postacie.
// ------------------------------------------------------------

LIST Zapiski = stwor_1, zielarka_1, pan_lasu_1, starzec_1, polnocnica_1, polnocnica_2, dziad_1, stwor_2, zielarka_2, ogniki_1, uboze_1, pan_lasu_2, poludnica_1, pan_lasu_3, rusalki_1, uboze_2, licho_1, licho_2, licho_3, pan_lasu_4, starzec_2, tropy_1, mamuny_1, odmieniec_1, mamuny_2, tropy_2, pan_lasu_5, strzyga_1, strzyga_2, mamuny_3, starzec_3, ogniki_2, stwor_3, zielarka_3, pan_lasu_6, uboze_3, zytnia_baba_1, zytnia_baba_2, pan_lasu_7, planetnik_1, tropy_3, blednice_1, starzec_4, pan_lasu_8, pan_lasu_9, zielarka_4, tropy_4
VAR zapiski = ()

=== function tytul_zapisku(z)
{ z:
    - stwor_1:      ~ return "Stwór z zarośli"
    - stwor_2:      ~ return "Topielec"
    - zielarka_1:   ~ return "Zielarka znad jeziora"
    - zielarka_2:   ~ return "Zielarka znad jeziora"
    - pan_lasu_1:   ~ return "Pan Lasu"
    - pan_lasu_2:   ~ return "Pan Lasu"
    - pan_lasu_3:   ~ return "Pan Lasu"
    - pan_lasu_4:   ~ return "Pan Lasu"
    - starzec_1:    ~ return "Starzec w kapeluszu z mchu"
    - starzec_2:    ~ return "Starzec w kapeluszu z mchu"
    - polnocnica_1: ~ return "Północnica"
    - polnocnica_2: ~ return "Północnica"
    - dziad_1:      ~ return "Dziad z lirą"
    - ogniki_1:     ~ return "Błędne ogniki"
    - uboze_1:      ~ return "Ubożę"
    - uboze_2:      ~ return "Ubożę"
    - poludnica_1:  ~ return "Południca"
    - rusalki_1:    ~ return "Rusałki"
    - licho_1:      ~ return "Jednooka żebraczka"
    - licho_2:      ~ return "Licho"
    - licho_3:      ~ return "Licho"
    - tropy_1:      ~ return "Pod oknem"
    - tropy_2:      ~ return "Biały wilk"
    - pan_lasu_5:   ~ return "Pan Lasu"
    - mamuny_1:     ~ return "Mamuny"
    - mamuny_2:     ~ return "Mamuny"
    - odmieniec_1:  ~ return "Odmieniec"
    - strzyga_1:    ~ return "Zmarły, który nie stygnie"
    - strzyga_2:    ~ return "Strzyga"
    - mamuny_3:     ~ return "Mamuny"
    - starzec_3:    ~ return "Starzec w kapeluszu z mchu"
    - ogniki_2:     ~ return "Błędne ogniki"
    - stwor_3:      ~ return "Topielec"
    - zielarka_3:   ~ return "Zielarka znad jeziora"
    - pan_lasu_6:   ~ return "Pan Lasu"
    - uboze_3:      ~ return "Ubożę"
    - zytnia_baba_1: ~ return "Kobieta w życie"
    - zytnia_baba_2: ~ return "Żytnia baba"
    - pan_lasu_7:   ~ return "Pan Lasu"
    - planetnik_1:  ~ return "Płanetnik"
    - tropy_3:      ~ return "Biały wilk"
    - blednice_1:   ~ return "Błędnice"
    - starzec_4:    ~ return "Starzec w kapeluszu z mchu"
    - pan_lasu_8:   ~ return "Pan Lasu"
    - pan_lasu_9:   ~ return "Pan Lasu"
    - zielarka_4:   ~ return "Zielarka znad jeziora"
    - tropy_4:      ~ return "Biały wilk"
}
~ return ""

=== function tresc_zapisku(z)
{ z:
- stwor_1:
    Wyższy od człowieka o trzy głowy, zgarbiony, z rękami zwisającymi niemal do ziemi i długimi, mokrymi włosami. Cuchnie bagnem. Przyszedł z mgły, kiedy ucichły świerszcze i żaby, i odszedł w stronę mokradeł. {czary.noc:Maciek zobaczył go jeszcze raz – w progu własnej chaty.|Maciek widział go tylko raz – i nie zapomniał nigdy.}
- stwor_2:
    Po pół wieku wrócił, kiedy dzieci topiły Marzannę – {obejrzal_sie:szara ręka wciągnęła kukłę pod wodę|coś szarpnęło kukłę od spodu i wciągnęło pod wodę}.{figurka_u_staruchy && los_psa == oswojony: „Takie jak on nie umierają. Czekają”.} Starzy mówią, że kto utonie bez księdza, nie idzie ani do nieba, ani do piekła, tylko zostaje w wodzie. Na dnie trzyma dusze topielców pod glinianymi garnkami, odwróconymi do góry dnem, i nocami przewraca je jeden po drugim. Kiedy który garnek pęknie, dusza ulatuje bąblem na powierzchnię.
- zielarka_1:
    Mieszkała nad jeziorem, tam gdzie w trzcinach sterczą zwęglone bale. Leczyła ludzi ziołami, dopóki nie zaczęła gadać po nocach z kimś, kogo nikt nie widział. Kiedy we wsi zaczęło się psuć mleko i padać bydło, chłopi zabili jej drzwi deskami i podpalili chatę. Umierając, przeklęła wieś i każdego, kto w niej kiedyś zamieszka. Ci, którzy ją spalili, nie dożyli zimy – jeden po drugim weszli w bagno.
- zielarka_2:
    Klątwa nie wygasła razem z ogniem. Dziadek Maciek nosił ją w sobie przez całe życie – {figurka_u_staruchy:i zapłacił za nią więcej, niż chciał komukolwiek powiedzieć|a synowi opowiadał o niej jak o bajce, choć sam nigdy się z niej nie śmiał}.{chata_macka != nad_jeziorem: Do dziś nikt w Zapadlinie nie buduje się nad jeziorem po zachodniej stronie.}
- pan_lasu_1:
    Starzy różnie go nazywają – Borowy, Pan Lasu – a najstarsi wcale, bo po imieniu lepiej go nie wołać. Mieszka w najgłębszej części boru i pilnuje go, jak gospodarz pilnuje swojej zagrody. Kto wejdzie tam bez pytania, tego zwodzi tak, że chodzi w kółko. Kto zabłądzi, niech zdejmie ubranie i włoży je na lewą stronę – wtedy Borowy się gubi, bo myśli, że ma przed sobą jednego ze swoich.
- pan_lasu_2:
    Są drzewa, których pilnuje jak własnego serca. Stary Dąb na skraju boru był granicą – póki stał, las kończył się tam, gdzie się kończył.{ franek_scial_dab: Pierwsze cięcie zadał mu Franek.}{pracowal_w_tartaku: Stary Wawrzyniec z tartaku bajał, że kiedy pierwsi ludzie zeszli w tę dolinę, musieli obiecać, że za Stary Dąb nie przejdą z siekierą – i dopiero wtedy las się cofnął. „Kapliczki są jak gwoździe w płocie. Wyrwiesz jeden, płot jeszcze stoi. Wyrwiesz wszystkie…”}
- pan_lasu_3:
    {ostrzezenie_poludnicy:Południca powiedziała to wprost: Pan Lasu się budzi. Z każdym ściętym drzewem jego sen jest płytszy, a kiedy się obudzi, przyjdzie po swoje.|Coś się zmieniło po ścięciu Starego Dębu. W ogrodach, między grządkami, w jedną noc wyrastał mech jak spod najstarszych świerków, a zieleń od strony boru co rano stała bliżej płotów.}
- pan_lasu_4:
    Kiedy ludzie Urbaniaka wykopali kapliczki spod boru, w dołach po nich w jedną noc wyrosły młode świerki. Bór jakby z każdym dniem stał bliżej wsi.{ kapliczki_drogi == obronil_kapliczke: Ostała się tylko jedna kapliczka – ta, której Jaromir bronił.}
- starzec_1:
    {poszedl_po_wstazke:Stał w półmroku boru, tak wysoki, że musiałby się schylić, żeby wejść do chaty. Kożuch wywrócony włosiem na wierzch, przepasany sznurkiem, kapelusz z mchu o szerokim rondzie, a pod nim tylko dwa jasne punkty oczu. Opierał się na sękatej lasce, z której wyrastały liście. W dłoni trzymał wstążkę Hanki.|Ktoś narysował go w księdze pana Ignacego: starzec w ubraniu wywróconym na lewą stronę, w kapeluszu z mchu.}{czytal_ksiege: Pod rysunkiem w księdze stało: „Kto go spotka, niech zrobi tak samo jak on. Tamten przychodzi z drugiej strony, gdzie wszystko jest odwrotnie”.}
- starzec_2:
    Przyszedł na wesele Jaromira i Hanki – stanął na skraju lasu i kiwał głową do taktu weselnej muzyki.{ poszedl_po_wstazke: Nie postarzał się ani o dzień.} {weselny_gosc == ugoszczony_kolaczem:Przyjął kołacz i skinął głową jak gospodarz gospodarzowi.|{weselny_gosc == zapytany:Przemówił głosem jak wiatr w koronach drzew: „Dobrze się żenisz, wnuku Maćka. Pilnuj jej”. W szronie zostały ślady butów – lewy po prawej stronie, prawy po lewej.|Stał tam aż do pierwszego kura.}}
- polnocnica_1:
    Przychodzi po północy do niemowląt. Najpierw robi się zimno, potem w izbie coś szeleści jak suche liście. Antek widział tylko coś jasnego nad kołyską i czarne włosy do samej podłogi. Dziecko zamiast płakać świszcze, jakby nie mogło złapać tchu. Boi się żelaza pod poduszką.{rada_jaromira == ksiega_rada: Księga pana Ignacego dodaje, że rozsypany mak musi policzyć ziarenko po ziarenku – a liczyć potrafi tylko do świtu.}
- polnocnica_2:
    Z bliska widać ją całą: unosi się nad deskami, nie dotykając ich stopami, w całunie postrzępionym u dołu, z twarzą chudą jak trupia czaszka, z oczami jak dwie czarne studnie i drobnymi, ostrymi zębami. {rada_jaromira == hanka:Babka Hanki mówi, że to dusza matki, która umarła przy porodzie, zanim ksiądz zdążył ją wywieść – swojego dziecka nie utuliła, więc chodzi do cudzych. I że nigdy nie przychodzi sama z siebie: ktoś musi jej wskazać drogę. }{polnocnica == przegnana_nozem:Zosię uratował nożyk wsunięty pod poduszkę.|{polnocnica == policzyla_mak:Zosię uratował mak – liczyła do świtu i nie zdążyła.|Zosia przeżyła, ale na jej czole została szara plamka, jak od dotyku brudnego palca.}}
- dziad_1:
    Zapukał w Wigilię, ledwie przełamali się opłatkiem: zgarbiony, w łachmanach, z lirą na plecach, z oczami białymi jak mleko. {wpuscil_dziada:Zjadł niewiele, zaśpiewał pieśń o duszach, które w tę noc wracają do swoich chałup, i odszedł w noc, choć nikt nie widział, w którą stronę. Wychodząc, szepnął Jaromirowi: „Pachniesz lasem, chłopcze”.|Nie wpuścili go. Odszedł w stronę boru i zniknął w śnieżnej kurzawie w połowie pola.} W Wigilię nie odprawia się dziadów od progu, bo nigdy nie wiadomo, kto przyszedł – czasem to dusza kogoś z rodziny wraca w przebraniu, żeby zobaczyć, czy jeszcze ją pamiętają.
- ogniki_1:
    Blade światełka nad mokradłami przy kładce, które zapalają się o zmierzchu i chichoczą jak ktoś, kto dostał prezent. Baby mówią, że to ci, co spalili zielarkę znad jeziora – weszli w bagno i do dziś świecą tam po nocach. Kto pójdzie za takim ognikiem, ten już nie wróci.
- uboze_1:
    Maleńki staruszek nie większy od kury, w połatanej kapocie i czerwonej czapeczce, z siwą brodą owiniętą wokół kurzych nóżek. Mieszka za piecem w starych chałupach. Kto je karmi, temu darzy się w obejściu; kto przegoni, ten ściąga na dom biedę. Ubożę przychodzi razem z pierwszym gospodarzem i zostaje, dopóki chałupa stoi. Kiedy spłonie, odchodzi razem z dymem i już nie wraca.
- uboze_2:
    {uboze == nakarmione:Odwdzięcza się po cichu: w spiżarni nie lęgną się myszy, w dzbanie zawsze jest więcej mleka, niż się nalało, a w głodną zimę mąka jakoś nie chce się skończyć. Tylko że co przybędzie w jednej chałupie, ubywa w drugiej – u Stasiowych przez te same miesiące kwaśniało mleko.|{uboze == przegnane:Odkąd je przegoniono, chałupa jakby ich nie lubiła: kury przestały się nieść, a w spiżarni co chwila coś się psuło.|Nikt go już potem nie widział. Czasem tylko rano popiół na przypiecku bywał rozgrzebany, jak przez kurę, która szuka miejsca na noc.}}
- poludnica_1:
    Wysoka, biała kobieta w długiej koszuli, która w samo południe przychodzi na pola. Nie dotyka stopami ziemi, oczy ma białe, bez źrenic, a w ręce sierp. Kto pracuje w największy skwar, temu zadaje zagadki – za każdą pomyłkę tnie sierpem.{ not figurka_u_staruchy: Podobno była kiedyś najlepszą żniwiarką w okolicy: założyła się z parobkami, że sama zeżnie cały łan do południa, i nie zeszła z pola w największy upał. Znaleźli ją wieczorem z sierpem w ręku i z kłosami we włosach.}{ poludnica_uklon: Przed odpowiedzią z księgi skłoniła głowę.}{ poludnica_darowala: Jedną pomyłkę Jaromirowi darowała, bo nie cofnął się przed sierpem.}{ blizna_sierpa: Jaromirowi została po niej blizna w kształcie półksiężyca.}
- rusalki_1:
    Dusze utopionych dziewcząt. W Zielone Świątki wychodzą z jeziora i tańczą w księżycowym świetle – młode, blade, w mokrych lnianych koszulach, z wiankami z sitowia i oczami całymi czarnymi, bez białek. Wabią śpiewem bez słów i wciągają w toń każdego, kto da się skusić. Z wody wychodzą tylko od Zielonych Świątek do świętego Jana; przez resztę roku śpią w mule na dnie. Jedną z nich była Kaśka Wójcikówna.{ratunek_franka == piolunem: Piołunu boją się bardziej niż ognia – ale tej, która go dała, nie zapominają. Woda nie oddała wianka Hanki.|{ratunek_franka == krzyzem: Krzyż ich nie pali – „byłyśmy tu przed nim”. Puściły Franka, ale woda nie poszła spać głodna – rano w sitowiu znaleziono Bartka, syna młynarza.| Kaśka puściła Franka, kiedy Hanka zawołała ją po imieniu. Na policzku Jaromira, tam gdzie go dotknęła, została biała, zimna plama.}}
- licho_1:
    Mała, przygarbiona żebraczka, ledwie do pasa dorosłemu, owinięta w tyle łachmanów, że nie wiadomo, gdzie się kończy jeden, a zaczyna drugi. Ma tylko jedno oko, z czerwoną obwódką; w miejscu drugiego jest gładka, szara skóra. Jej cień jest za długi i pada pod słońce, w drugą stronę niż wszystkie inne. Kto ją zobaczy pod swoim płotem, ten nazajutrz ma nieszczęście.
- licho_2:
    Babka Hanki nazwała je po imieniu: Licho, co nie śpi. Chodzi od chałupy do chałupy i siada tam, gdzie mu dobrze – gdzie las rąbią, a świętości przestawiają z kąta w kąt. Nie wejdzie do chałupy, dopóki ktoś go nie zawoła. Przegonione idzie do sąsiada; ugoszczone odchodzi syte. Mówią, że drugie oko zostało w borze, bo Licho to oczy, które Pan Lasu wysyła między ludzi – co zobaczy jedno, to wie drugie.
- licho_3:
    {licho_noc == ugoszczone:Kiedy dostało słoniny, poszło drogą do tartaku – i rano u Urbaniaka pękła piła, a w stajni padł mu najlepszy koń.|{licho_noc == odpedzone:Przegnane głownią uciekło w stronę kuźni – tej nocy kuźnia kowala spłonęła.|Do rana prosiło pod drzwiami cudzymi głosami, a deska, w którą stukało, zbutwiała w jedną noc. Nikt mu nie odpowiedział.}} W październiku odeszło drogą pod borem i weszło między drzewa, jakby ktoś je zawołał.
- tropy_1:
    Rano po weselu całe podwórze było białe od szronu – tylko pod oknem nowej izby ziemia była goła, stopiona w szeroki owal, jakby coś dużego i ciepłego przeleżało tam całą noc, zwinięte w kłębek. Ziemia była jeszcze letnia. Hanka zasypała to miejsce popiołem i kazała nikomu nie mówić.
- mamuny_1:
    Mieszkają nad jeziorem. Same rodzą dzieci brzydkie i chorowite, więc kradną ludziom zdrowe – póki dziecko nie jest ochrzczone – a w kołysce podrzucają swoje. Latem, po nocach, słychać, jak tłuką kijankami pranie o kamienie. Babka Hanki mówi, że piorą całuny dla tych, którzy umrą we wsi przed następną wiosną – a nad każdym całunem wołają czyjeś imię. Lepiej nie podsłuchiwać. Boją się czerwieni, żelaza i gromnicy.
- mamuny_2:
    Wysokie i garbate, z głowami zbyt dużymi na wątłe szyje i włosami jak zeschłe gałązki, w łachmanach z mchu i kory. Ich dotyk jest zimny i mokry.{noc_mamun == zaslonil: Kiedy nie dostaną dziecka, zabierają matce mleko.} Potrafią nucić głosem kogoś bliskiego i zmusić śpiącego, żeby sam zdjął ochronę z kołyski.{podmiana:{uklad_z_mamunami == oddany_skarb: Za Marysię wzięły dziecięcy skarb Jaromira i cisnęły go w jezioro.|{uklad_z_mamunami == dar_swietojanski: Za Marysię Jaromir obiecał im co roku, w noc świętojańską, chleb i wianek na kamieniu przy brzegu. Jeśli zapomni, przyjdą po swoje.|{uklad_z_mamunami == oddane_lata: Za Marysię wzięły Jaromirowi lata życia – jego skronie posiwiały jak u starego.| Podmianę odwróciła dopiero woda gotowana w skorupkach jajek.}}}}{sposob_na_odmienca == chrzest_odmienca: Nie zapomną, że ich dziecko obrócono w drzazgi.}
- odmieniec_1:
    Dziecko mamun, podrzucone w miejsce ludzkiego. Z daleka wygląda jak tamto, ale jest cięższe i zimne, skórę ma jak korę, a oczy ciemniejsze niż oczy jakiegokolwiek dziecka. Nie płacze, tylko bez ustanku je, a kiedy myśli, że nikt nie patrzy, uśmiecha się jak stara kobieta. Podmianę da się odwrócić tylko przez siedem dni.
- tropy_2:
    Ogromny basior, większy od każdego wilka we wsi, chudy tak, że pod białą sierścią widać wszystkie żebra. Prowadzi watahę, ale sam do obór nie podchodzi.{noc_wilkow == bronil_obory: Jednym wyciem potrafi odwołać ją od obory.} Na przedniej łapie ma obręcz wytartej, jaśniejszej sierści, w tym samym miejscu, gdzie Franek miał trzy pręgi od pazurów. Oczy ma ludzkie: jasne, smutne, z wyraźną źrenicą. Antek mówi, że nie pomyliłby ich z żadnymi innymi.{oblawa_wilk == wydal_wilka: Dostał kulę od gajowego Pawlika i uszedł do boru, zostawiając krwawą smugę na śniegu. Od tamtej pory jego wycie brzmi inaczej.| Przeżył obławę. Następnego ranka na pniaku przy płocie leżał zając z przegryzionym karkiem.}{noc_na_kladce != (): W noc, kiedy Józek poszedł we śnie na kładkę, coś białego przemknęło po grobli za mokradłami – a topielec odwrócił łeb na jego wycie.}
- pan_lasu_5:
    Młodnik, który przez kilka lat podszedł od boru pod same opłotki, stał się kryjówką dla wilków. Starzy mówią, że las nie rośnie w stronę wsi bez powodu: najpierw przychodzą drzewa, potem zwierzęta, a na końcu ten, kto nimi rządzi.
- strzyga_1:
    {sprawdzil_zeby:Stary Wójcik miał dwa rzędy zębów – jeden za drugim, drobnych i ostrych jak u szczupaka.|Ludzie mówili, że stary Wójcik urodził się z zębami.} Kto rodzi się z zębami albo z dwoma sercami, ma dwie dusze. Po śmierci jedna idzie do Boga, a druga zostaje w ciele i nie daje mu spokoju: ciało nie stygnie, policzki są różowe, powieki się nie domykają. Około północy taki zmarły wstaje. Dawniej chowano go twarzą do ziemi, z sierpem nad gardłem i z makiem w trumnie – żeby nie mógł się odwrócić, żeby się poranił, jeśli spróbuje wstać, i żeby mak uśpił go aż do Sądu.
- strzyga_2:
    {polnoc_strzygi == na_twarz:Przewrócony twarzą do deski, szarpał się aż do pierwszego kura i ugryzł Antka w dłoń. Rana długo nie chciała się zagoić.|{polnoc_strzygi == sierp_przy_szyi:Kiedy sierp dotknął jego szyi, popłynęła z niej czarna, gęsta krew.|Uspokoiła go dopiero gromnica w dłoniach; wypowiedział wtedy imię córki.}} {pochowek_wojcika == pochowany_za_murem:Pochowano go za cmentarnym murem, twarzą do ziemi, i więcej nie wrócił.|{pochowek_wojcika == pochowany_z_makiem:Spoczął w poświęconej ziemi z makiem Hanki na piersi i więcej nie wrócił. Ksiądz za ten mak do Wielkanocy odsunął ją od komunii.|{trzy_noce == rozkopany_grob:Wrócił po trzech nocach i stał pod oknem nad kołyską Marysi, aż Jaromir z Antkiem rozkopali jego grób.|Wrócił po trzech nocach. Odszedł od okna, za którym spała Marysia – ale tego ranka znaleziono martwą Wójcikową.}}}
- mamuny_3:
    Nad praniem wołają po imieniu tych, dla których piorą całuny. Wójcikowa podsłuchała je w czerwcu z trzcin i usłyszała tylko jedno imię. W listopadzie umarł jej mąż.{trzy_noce == czuwanie_przy_kolysce: Pomyliła się – albo nie chciała usłyszeć drugiego.}
- starzec_3:
    W Wigilię Hanka zostawiła na stole nakrycie dla wędrowca. Rano na talerzu, w miejscu opłatka, leżała garść świeżego, zielonego mchu – w samym środku zimy.
- ogniki_2:
    Kiedy figurka wróciła do Zapadliny, ogniki zaczęły podchodzić pod płoty – co noc bliżej, jakby czekały, aż ktoś otworzy drzwi.{los_figurki == figurka_w_skrzyni: Palą się dalej, ale za kładką, daleko od płotów.}{los_figurki == figurka_pod_kapliczka || los_figurki == figurka_u_jagny || los_figurki == figurka_u_stwora: Zgasły wszystkie naraz tej samej nocy, kiedy figurka przestała wołać.}
- stwor_3:
    Wrócił na mokradła razem z figurką. Dzieci we wsi śniły o nim ten sam sen: stoi pod kładką w czarnej wodzie, przewraca gliniane garnki, zagląda pod każdy, a potem mówi, że jednego brakuje.{figurka_u_staruchy: Na ramieniu ma głęboką, starą bliznę po siekierze dziadka Maćka.}{noc_na_kladce == siekiera_na_kladce: Jaromir zranił go siekierą, a on rozorał mu bark.}{noc_na_kladce == figurka_dla_stwora: Kiedy dostał figurkę, puścił chłopca i przycisnął ją do piersi jak matka dziecko. Schodząc pod wodę, pociągnął za sobą starą kładkę.}{noc_na_kladce == latarnia_na_wodzie: Ognia boi się bardziej niż żelaza – uciekł przed płonącym olejem.}
- zielarka_3:
    {zaufal_jagnie:Jagna mówi, że figurka to lalka: zielarka wystrugała ją z korzenia wyciągniętego z bagna i nadała jej imię tego, który mieszka w wodzie. Kto ma lalkę, za tym on idzie. Ognia lalka się nie boi – uciszy ją tylko poświęcona ziemia.{odrzucil_figurke: Odepchniętej nie da się już nikomu oddać.}|Nadpalona figurka znad jeziora wróciła do Zapadliny po ponad sześćdziesięciu latach – a razem z nią wróciły sny.}{los_figurki == figurka_pod_kapliczka: Leży teraz pod kapliczką, a gdzie – wie tylko Jaromir.}{los_figurki == figurka_u_jagny: Jagna zabrała ją ze sobą, tak daleko, żeby nie dosłyszał.}{los_figurki == figurka_w_skrzyni: Ogień jej nie wziął. Leży w skrzyni pod łóżkiem, okręconej łańcuchem.}{los_figurki == figurka_u_stwora: Ma ją teraz ten, kto mieszka pod kładką.}
- pan_lasu_6:
    W noc, kiedy spłonęły kapliczki, bór przyszedł pod wieś o całe pole. Drzewa, które stały rano w miejscu ścierniska, wyglądały, jakby rosły tam od lat. Paliki pod drogę Urbaniaka puszczały pędy, a z pieńków na przesiece co rano wyrastały nowe gałązki.{droga_do_boru: Droga doszła do pierwszych wielkich sosen i tam się urwała – nikt nie chciał rąbać dalej.}{szarwark && not droga_do_boru && rozdzial_czternasty.pierwszy_snieg_czternasty: Młodnik stanął na granicy spalonych kapliczek i więcej nie urósł.}
- uboze_3:
    Obudziło gospodarza szarpaniem za włosy, kiedy od lasu szedł ogień. Bało się tak, że trzęsła mu się broda. Ubożę pamięta, kto je karmił.
- zytnia_baba_1:
    Niska, przygarbiona, szeroka w biodrach jak snop, z twarzą pomarszczoną jak spieczona skórka chleba i z włosami z kłosów. Pachnie ciepłym ziarnem. Przykuca między kłosami i kołysze przed dziećmi tym, co do nich należy, jak grzechotką.
- zytnia_baba_2:
    Stary Staś mówi, że żytnia baba łapie dzieci w zbożu i tam je zostawia – ale Marysi nie zostawiła. Przeprowadziła ją przez pole aż pod las, jakby komuś ją niosła.{pani_w_zbozu_noc == gonil_babe: Kto ją goni, ten krąży po polu do świtu, a w ranach od źdźbeł zostają mu ości, które wrastają coraz głębiej.}{pani_w_zbozu_noc == za_spiewem: Śpiewa głosem matki – a matce zostaje potem głos pęknięty na pół.}{pani_w_zbozu_noc == z_pochodniami: Kiedy szuka jej cała wieś, ucieka – ale zostawia za sobą stratowane pole.}
- pan_lasu_7:
    {rada_przed_borem == rada_ksiedza:W księgach parafialnych zapisano, że raz na kilkadziesiąt lat z wsi pod borem znika dziecko, zawsze w noc świętojańską. Te, które wracają, nie pamiętają niczego.|{rada_przed_borem == rada_jagny:Jagna mówi, że las bierze dzieci, kiedy jego pan się budzi – nie zabija, tylko trzyma.|Płanetnik mówi, że nad borem chmury się rozstępują i odkąd ludzie pamiętają, nie spadła tam ani kropla deszczu.}}
- planetnik_1:
    Wysoki starzec w łachmanach, z brodą rozwianą wiatrem i z workiem na plecach. Chodzi przed burzą i prowadzi chmury na powrozie. Kto da mu chleba, nad tego polem chmury nie pękną – a kto go o coś zapyta, zapłaci polem.
- tropy_3:
    {oblawa_wilk == wydal_wilka:Rana po kuli źle się zagoiła. W borze szedł za Jaromirem przez całą noc – nie po to, żeby go strzec.|Odnalazł Jaromira w borze, kiedy ten poszedł za głosem Franka.{przejscie_bagna == za_wilkiem: Przeprowadził go przez bagno. Kiedy Jaromir wyciągnął do niego rękę i nazwał go Frankiem, kłapnął zębami – ostrzegawczo, ale do krwi.}}
- blednice_1:
    Blade kule światła nad bagnem w głębi boru, wielkości głowy dziecka. W każdej kuli siedzi skulona mała postać o oczach jak czarne ziarenka. To nie ogniki spod wsi: nie mrugają z daleka, tylko podpływają blisko, popiskują jak pisklęta i zapraszają.{przejscie_bagna == za_blednicami: Wodzą w kółko wokół jednej kępy aż do świtu i zabierają, co kto ma w torbie.}{przejscie_bagna == krag_z_soli: Nie przechodzą przez sól, choćby miały twarz kogoś najbliższego.}{przejscie_bagna == za_wilkiem: Trzymają się z daleka od białego wilka.}{przejscie_bagna == z_rozancem: Od modlitwy gasną z wyciem – ale biorą coś w zamian.}{przejscie_bagna == z_krzesiwem: Boją się iskier.}
- starzec_4:
    W sercu boru zdjął kapelusz.
- pan_lasu_8:
    W sercu boru, gdzie nigdy nie pada, stoi dąb większy, niż był kiedyś Stary Dąb. Tam starzec w kapeluszu z mchu zdjął kapelusz. Pod nim była kora. Z czoła wystrzeliło mu poroże, a on sam urósł ponad korony drzew i nie rzucał cienia. Czekał siedemdziesiąt lat, aż ktoś z rodu Maćka przyjdzie do niego sam.
- pan_lasu_9:
    Dolina była kiedyś jego, od grzbietu po jezioro. Cofnął się, kiedy pierwszy z ludzi przyszedł pod Stary Dąb bez siekiery i powiedział: dalej nie pójdziemy. W zamian Pan Lasu bierze jedno dziecko na pokolenie, w noc świętojańską, i oddaje je, zanim zapomni dom. Dąb był granicą, umowa płotem, a kapliczki gwoździami.{chata_macka == przy_lesie: Maciek, który o niczym nie wiedział, postawił chałupę po stronie boru i pierwszego ranka wbił siekierę w świerk. Od niego zaczęło się liczenie.} Marysię wziął, żeby nie zabrały jej te znad wody; żytnią babę posłał po nią sam. Tym razem każe za nią zapłacić, bo umowę zerwała wieś, nie on.{pytanie_do_leszego == kim_jest: Był w dolinie, zanim zeszli do niej pierwsi ludzie. Liczy stare drzewa ścięte za granicą i ludzi, którzy sami mu się oddali. Kiedy doliczy do tysiąca, zaśnie na dobre, a ktoś inny będzie liczył za niego. On też kiedyś przyszedł do boru sam.}{pytanie_do_leszego == gdzie_marysia: Jego dzieci nie mają cienia.}
- zielarka_4:
    Przychodzili do niej ci znad wody – i Pan Lasu. Pokazał jej kiedyś w wodzie chatę w ogniu – jej własną – ale nie uwierzyła. Płonąc, przeklęła wieś cudzymi rękami: „Kości dzieci waszych będą połamane, a krew ich wypita”. Póki stał Stary Dąb, słowo było silniejsze od przekleństwa.{pytanie_do_leszego == o_klatwe: Zdejmie klątwę ten, kto zwróci Panu Lasu granicę, albo ten, kto zajmie jego miejsce. Albo ogień, który ją zaczął – ale po nim nie zostanie ani bór, ani wieś.}{zastaw_u_leszego == zastaw_krzesiwo: Krzesiwo, które Maciek znalazł w jej popiele, nosi w sobie ten sam żar, który ją spalił.}
- tropy_4:
    Przyniósł pod dąb drugi drewniak Marysi – ten, który został w zbożu. {wilk_przy_jaromirze:Położył go Jaromirowi u stóp i przez całą noc leżał przy nim.|Oddał go Panu Lasu i siedzi przy nim, obojętny jak drzewa.}{wilk_pod_debem != nie_ruszal_sie: Każde ludzkie słowo, które mu się przypomni, zabiera mu kawałek wilczego życia.}
}
