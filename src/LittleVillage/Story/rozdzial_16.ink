// ------------------------------------------------------------
//  Rozdział szesnasty — W głąb boru. Jaromir wchodzi do boru po Marysię.
//  Ścieżki zawracają: ubranie na lewą stronę (las wyjmuje mu z pamięci twarz
//  córki, pies ucieka sam), nacięcia na pniach (las jęczy), pies (poziomki
//  i ostry mech) albo dziura w chmurach z rady płanetnika (pragnienie).
//  O zmierzchu głosy: odpowiedział Marysi (Leszy go policzył), milczał albo
//  poszedł za Frankiem (biały wilk). Bagno z garnkami i błędnice: za światłami
//  (rozpruta torba), krąg z soli, wilk (rana dłoni), różaniec (spalony)
//  albo krzesiwo (pożar porostu). W sercu boru dąb i starzec, który zdejmuje
//  kapelusz i rośnie w Pana Lasu: „Usiądź, wnuku Maćka. Porozmawiamy”.
// ------------------------------------------------------------

=== rozdzial_szesnasty ===
# tlo: skraj_bor
# rozdzial: Rozdział szesnasty
# tytul: W głąb boru
Siedemdziesiąt lat po tym, jak dziadek Maciek zszedł do Zapadliny z tobołkiem na ramieniu, Jaromir pierwszy raz spojrzał w stronę lasu – nie tak, jak patrzy się na bór z pola, z bezpiecznej strony płotu, tylko tak, jak patrzy się na drogę, którą trzeba przejść.
Stał na skraju młodnika, z siekierą w ręku i z torbą na ramieniu. Wstążkę Marysi okręcił sobie wokół nadgarstka, żeby czuć ją przy każdym ruchu.
{ obietnica_bor:
    Kiedyś obiecał ojcu, że nigdy nie wejdzie do boru, choćby nie wiem kto go wołał. Dotrzymywał tego słowa przez trzynaście lat. Pierwszy krok między sosnami postawił ostrożnie, z sercem w gardle, i czuł, że łamie coś, czego już nie da się poskładać.
- else:
    Nigdy nie wszedł głębiej niż na skraj. Nikt mu nie zabraniał – po prostu nogi same zawracały, kiedy świerki zaczynały stać za gęsto.
}
{ droga_do_boru:
    Na przesiece Urbaniaka z każdego pieńka sterczały jasne pędy, a koleiny zarosły mchem, choć jesienią jeździły nimi wozy. Przy pierwszych wielkich sosnach droga się kończyła i dalej nie było już nic poza borem.
- else:
    Przedarł się przez młodnik, który podszedł pod wieś w noc pożaru. Świerki stały tak gęsto, że musiał się przeciskać bokiem, a igły sypały mu się za kołnierz.
}
{ ekwipunek ? szczenie_psa:
    Za opłotkami dogonił go pies – musiał się wyrwać Hance z progu. Jaromir nie miał serca go odpędzać. Podsunął mu drewniak Marysi; pies obwąchał go, zaskomlał cienko i pobiegł przodem. # pokaz: pies
}
Za pierwszymi sosnami wszystko ucichło. Igły spadały z gałęzi pionowo, bez szelestu, bo nie było wiatru, który by je zniósł. Łąka za jego plecami ociekała rosą, a tu ziemia była sucha i ciepła, mech chrzęścił pod butami jak stary pergamin, a w powietrzu wisiał zapach żywicy i suchego drewna, od którego drapało w gardle.{ rada_przed_borem == rada_planetnika: „Tam, gdzie nie pada” – przypomniał sobie Jaromir i zacisnął palce na trzonku siekiery.} # pokaz: igly
Szedł prosto przed siebie, aż słońce stanęło wysoko. A potem świerki rozstąpiły się i zobaczył przed sobą mokrą łąkę, stratowane żyto i jałowiec na skraju młodnika. Wrócił w to samo miejsce, z którego wyszedł. Spróbował drugi raz, trzymając słońce po prawej ręce. I trzeci. Za każdym razem bór wyprowadzał go z powrotem pod wieś – łagodnie, uprzejmie, tak jak odprowadza się do furtki gościa, którego nikt nie zapraszał.{ ekwipunek ? szczenie_psa: Pies przy każdej próbie zostawał trochę w tyle, z nosem przy korze, i wracał do niego niechętnie, skomląc.}
# pytanie: Jak Jaromir przejdzie przez bór?
*   [Wywrócić ubranie na lewą stronę, jak uczył pan Ignacy.]
    ~ wejscie_do_boru = ubranie_na_lewo
    # tlo: bor_suchy
    Zdjął kapotę z koszulą i włożył je z powrotem szwami na wierzch.{ glos_w_lesie == kozuch: Dokładnie tak, jak tamtej zimowej nocy, kiedy miał dziewięć lat i stał w śniegu pod borem.} Kiedy ruszył znowu, ścieżka przestała zawracać. Las przyjął go jak swojego – gałęzie same odchylały się na boki, a mech prowadził stopy.
    { ekwipunek ? szczenie_psa:
        ~ ekwipunek -= szczenie_psa
        ~ pies_pobiegl_sam = true
        Pies obwąchał go z daleka i zjeżył sierść, tak jak na obcego. A potem pobiegł dalej sam, za zapachem Marysi, i zniknął między pniami. Jaromir wołał go, aż zachrypł. # pokaz: pies_ucieka # tobolek
    }
    Szedł długo. Pod wieczór przysiadł na korzeniu i spróbował przypomnieć sobie twarz Marysi – i przestraszył się. Widział wstążkę, widział drewniaki, słyszał jej śmiech, ale buzia rozmywała mu się jak odbicie w wodzie, do której ktoś wrzucił kamień. Zacisnął powieki i szeptał po kolei: piegi na nosie, ząbek, który rósł jej krzywo, dołek w lewym policzku. Bór uznał go za swojego – i po cichu wyjmował z niego to, co było jego własne. # dalej
*   [Znaczyć drogę siekierą na pniach.]
    ~ wejscie_do_boru = naciete_pnie
    # tlo: bor_suchy
    Na każdym dziesiątym pniu zostawiał głębokie nacięcie, na wysokości twarzy. Żywica, która wyciekała z ran, była zimna jak woda ze studni i tak lepka, że zalepiała ostrze – musiał je wyrywać z pnia całym ciężarem ciała. Po godzinie obejrzał się. Nacięcia, które zrobił na początku, zarastały mu w oczach – kora zsuwała się na nie jak powieka. # pokaz: naciecia
    Ale to wystarczyło: kiedy ścieżka chciała zawrócić, widział świeże rany przed sobą i szedł dalej. Gdzieś z głębi boru, bardzo daleko, dobiegł go jęk – niski, przeciągły, jakby przewracało się stare drzewo. Albo jakby ktoś bardzo duży syknął z bólu. Jaromir nie zatrzymał się, ale ręce zaczęły mu drżeć i do wieczora nie przestały. # dalej
*   { ekwipunek ? szczenie_psa } [Zaufać psu – nos się nie gubi.]
    ~ wejscie_do_boru = za_psem
    # tlo: bor_suchy
    – Szukaj – szepnął Jaromir i jeszcze raz podsunął psu drewniak. – Szukaj Marysi.
    Tym razem nie wołał go z powrotem. Pies szedł z nosem przy ziemi, zygzakiem, czasem przystawał i wąchał korę na wysokości dziecięcej rączki. Ścieżki skręcały, rozwidlały się i zawracały, ale pies ich nie słuchał – przełaził przez wykroty, przeciskał się pod zwalonymi pniami, prosto za zapachem. Jaromir szedł za nim, podarty, posiniaczony, z ustami pełnymi igieł. # pokaz: pies_trop
    Pod wieczór pies stanął przy zwalonej sośnie i zaskowyczał. Na sęku wisiała nitka czerwonej wełny – z rękawka Marysi. A pod sękiem, na mchu, ktoś położył garść poziomek, równo, jedna przy drugiej, jak dla dziecka. Pachniały tak słodko, że Jaromirowi napłynęła ślina do ust; od rana nie miał nic w ustach.{ rada_przed_borem == rada_jagny: „Co znajdziesz w borze, nie jedz” – przypomniał sobie i zacisnął pięść, aż paznokcie weszły mu w dłoń.} Odciągnął psa siłą. Dopiero wtedy zobaczył, że zwierzak ma krew na łapach – mech wokół poziomek był ostry jak tłuczone szkło. # pokaz: poziomki # dalej
*   { rada_przed_borem == rada_planetnika } [Iść tam, gdzie nad borem nie ma chmur.]
    ~ wejscie_do_boru = pod_czystym_niebem
    # tlo: bor_suchy
    Zamiast patrzeć na ścieżki, patrzył w górę. Nad lasem ciągnęły szare, ciężkie chmury – a między koronami, daleko, ziała dziura czystego nieba, wokół której chmury się rozstępowały, tak jak nurt opływa kamień. Szedł pod tę dziurę, choćby przez wykroty i chaszcze, choćby w poprzek każdej ścieżki, i las nie mógł go wyprowadzić, bo nie szedł żadną z jego dróg. # pokaz: niebo
    Ale kark bolał go od zadzierania głowy, nogi miał zdarte do krwi o korzenie, których nie widział, a wody nie wziął – w Zapadlinie nikt nie nosił wody do lasu. Pod wieczór język przysychał mu do podniebienia, a każdy strumyk, który mijał, szemrał tak zachęcająco, że musiał odwracać od niego głowę. # dalej
-   -> glosy_w_borze

= glosy_w_borze
# tlo: glosy_noc
O zmierzchu zaczęły go wołać.
Najpierw Hanka. Z lewej strony, zza gęstych świerków.
– Jaromir! Wracaj! Ona jest w domu, wróciła sama, słyszysz? Wracaj!
{ pani_w_zbozu_noc == za_spiewem:
    Głos był cały – ciepły, trochę zachrypnięty, taki, jakim Hanka mówiła, zanim tamto w zbożu zabrało jej połowę. Jaromir zacisnął zęby. Teraz ledwie szeptała.
- else:
    Głos był jej, w każdym zachrypnięciu. Jaromir zrobił krok w tamtą stronę, zanim przypomniał sobie, że Hanka stała w progu, kiedy wychodził, i nie miała zamiaru ruszać się z domu.
}
Potem matka, z prawej, ciepło i łagodnie, tak jak mówiła do niego, kiedy był mały:
– Synku, zimno mi. Zgubiłam się.{ glos_w_lesie == odpowiedzial: Te same słowa, co tamtej zimy, kiedy miał dziewięć lat i odpowiedział. Co do jednego.}
Potem Franek – tamten Franek, brat Antka – wesoło, z daleka, tak samo jak wołał go kiedyś nad jezioro:
– Jaromir! Tędy! Chodź, coś ci pokażę!
A na końcu, cienko, z głębi boru, zapłakało dziecko.
– Tata! Tata, boję się!
# pytanie: Co zrobi Jaromir?
*   [Odpowiedzieć Marysi.]
    ~ glosy_boru = odpowiedzial_marysi
    – Marysiu! – Krzyk wyrwał mu się sam. – Jestem! Idę do ciebie!
    Płacz urwał się w pół. Las zamilkł. A potem, gdzieś bardzo blisko, nad samą jego głową, ktoś zaczął powoli, z namaszczeniem, liczyć: # pokaz: liczy
    – …siedemset dziewięćdziesiąt osiem… siedemset dziewięćdziesiąt dziewięć… – Pauza. – I ty. Osiemset. Ten jest mój.
    { glos_w_lesie == odpowiedzial && zawolal_do_lasu:
        – Mówiłem, że cię policzę, kiedy przyjdzie pora – dodał ten sam głos, spokojnie, prawie z czułością. – Przyszła.
    }
    Jaromir upadł na kolana. Przez chwilę nie mógł złapać tchu – coś ciężkiego leżało mu na piersi i przyciskało. Kiedy wstał, był pewien jednego: od tej chwili las wiedział, kim jest, i nie musiał go już szukać. # dalej
*   [Milczeć i iść dalej.]
    ~ glosy_boru = milczal
    Gryzł rękaw kapoty, żeby nie odpowiedzieć; w ustach miał smak wełny i krwi. Hanka wołała coraz rozpaczliwiej, matka płakała, Franek śmiał się i przywoływał. A Marysia… Marysia płakała przez całą noc, bliżej i dalej, z jednej i z drugiej strony, i powtarzała „tata, tata”, a każde „tata” trafiało go tam, gdzie mała przytulała się w nocy – pod obojczyk. W końcu zaczęła pytać, czemu nie przychodzi.
    Szedł. Nie odpowiedział ani razu. Nad ranem płacz ucichł – nie urwał się, tylko powoli, cichutko zgasł, jak u dziecka, które zmęczyło się wołaniem i zasnęło. Jaromir długo stał bez ruchu i nie wiedział, czy powinien się z tego cieszyć. # pokaz: swit # dalej
*   [Pójść za głosem Franka.]
    ~ glosy_boru = za_frankiem
    ~ zapiski += tropy_3
    – Franek? – szepnął Jaromir i skręcił w lewo, między świerki.
    Głos prowadził go długo, śmiał się, przywoływał, aż w końcu zamilkł nad wykrotem. W ciemności, na zwalonym pniu, siedział biały wilk. # pokaz: wilk
    { oblawa_wilk == wydal_wilka:
        Na boku miał starą, źle zagojoną ranę po kuli – gruby, nagi pręt skóry wśród białej sierści. Kiedy zobaczył Jaromira, położył uszy po sobie i obnażył kły. Nie zaatakował. Ale przez całą noc Jaromir słyszał za sobą jego kroki – i wiedział, że wilk nie idzie za nim po to, żeby go strzec. # pokaz: rana # dalej
    - else:
        Był chudszy niż wtedy w młodniku, a na pysku przybyło mu siwizny – jak u starego psa, choć od obławy minęły ledwie dwie zimy. Patrzył na Jaromira bez złości. Potem zeskoczył z pnia, odwrócił łeb, sprawdzając, czy Jaromir idzie za nim, i ruszył w ciemność. # dalej
    }
-   -> bagno_w_borze

= bagno_w_borze
# tlo: bagno_blednice
Następnego dnia pod wieczór bór obniżył się i zamienił w bagno.
Między pniami zgniłych olch stała woda – brunatna, nieruchoma, z tęczowym kożuchem na wierzchu – a z niej sterczały kępy turzycy. Pachniało kiszonym liściem i starym żelazem; każdy wdech osiadał na języku rdzą. Na drugim brzegu, tam gdzie las znów się wznosił, ziemia była sucha i szara. Tam nie padało. Ale żeby tam dojść, trzeba było przejść przez to.
Przy brzegu, gdzie woda była płytka i przejrzysta, leżały gliniane garnki – przewrócone dnem do góry, jeden przy drugim, coraz dalej, jak okiem sięgnąć. Jaromir przypomniał sobie sen, który zeszłej wiosny śniły dzieci w Zapadlinie, i poczuł, jak cierpnie mu skóra na karku. # pokaz: garnki
~ zapiski += blednice_1
A potem nad wodą zapaliły się światła. # pokaz: blednice
Najpierw jedno, potem drugie, potem kilkanaście – blade kule wielkości głowy dziecka, unoszące się nad turzycą. W każdej, jak w pęcherzu z mydlin, kuliła się mała postać o oczach jak dwa czarne ziarenka. Nie przypominały ogników znad mokradeł pod wsią – tamte tylko mrugały z daleka. Te podpływały blisko, szeptały i popiskiwały cienko, jak pisklęta w gnieździe, i odpływały w głąb bagna, raz po raz zawracając ku niemu. Zapraszały.
# pytanie: Jak Jaromir przejdzie przez bagno?
*   [Iść za światłami.]
    ~ przejscie_bagna = za_blednicami
    Szedł za nimi z kępy na kępę, a światła wiły się przed nim, popiskiwały, czekały. Przez chwilę zdawało mu się, że naprawdę prowadzą go przez bagno.
    Kiedy zrobiło się szaro, zobaczył, że przez całą noc obchodził w kółko jedną i tę samą kępę – wydeptaną do gołej ziemi. Torba wisiała mu na ramieniu rozpruta od dołu do góry. Chleb, ser, sól i wełniak Marysi zniknęły.{ ekwipunek ? ksiega: Razem z nimi księga pana Ignacego.} Ocalał tylko drewniak, który nosił za pazuchą. Kawałek dalej, na turzycy, leżał rozpostarty wełniak, jakby ktoś go przymierzał – i zanim Jaromir zdążył zrobić krok, woda wciągnęła go pod siebie. # pokaz: welniak # tobolek
    ~ ekwipunek -= ksiega
    Przeszedł na drugi brzeg o świcie, po kępach, które w świetle dnia były dobrze widoczne. Trząsł się – nie z zimna. # dalej
*   [Usypać krąg z soli i czekać do świtu.]
    ~ przejscie_bagna = krag_z_soli
    Wyjął z torby szmatkę z solą, którą zawiązała mu Hanka, i usypał wokół siebie krąg na suchej kępie. Usiadł w środku z siekierą na kolanach. # pokaz: krag
    Światła krążyły wokół kręgu przez całą noc, coraz bliżej, coraz natarczywiej, szeptały do niego głosem Hanki, głosem matki, głosem Marysi. Nad ranem jedna z kul przysiadła tuż przy soli i Jaromir zobaczył w niej, wyraźnie jak w lustrze, buzię swojej córki – piegi, krzywy ząbek, dołek w policzku. Uśmiechała się do niego i wyciągała rączki. Siedział z dłońmi wciśniętymi pod uda, żeby po nią nie sięgnąć. Nie przeszła przez sól. Zgasła razem z innymi, kiedy wstało słońce.
    W szarym świetle zobaczył przez bagno wąską groblę z pni, której w nocy nie było widać. Przeszedł po niej. Soli już nie miał – cała została w kręgu, wtopiona w mech. # pokaz: grobla # dalej
*   { glosy_boru == za_frankiem && oblawa_wilk != wydal_wilka } [Iść za białym wilkiem.]
    ~ przejscie_bagna = za_wilkiem
    Wilk nie patrzył na światła. Szedł przez bagno pewnie, po kępach, których Jaromir w ciemności w ogóle nie widział, i co kilka kroków odwracał łeb. Jaromir stawiał stopy dokładnie tam, gdzie on. Światła syczały ze złości i trzymały się z daleka. # pokaz: wilk
    Na drugim brzegu wilk stanął i pierwszy raz spojrzał Jaromirowi prosto w oczy. Jaromir nie wytrzymał. Wyciągnął rękę, żeby go dotknąć.
    – Franek? – szepnął.
    Wilk kłapnął zębami – szybko, krótko, jak pies, który ostrzega, a nie gryzie. Ale kły rozcięły Jaromirowi wierzch dłoni do kości. Kiedy podniósł głowę, wilka już nie było. Krew kapała mu z palców na szary porost i długo nie chciała stanąć. # pokaz: krew # dalej
*   { ekwipunek ? rozaniec } [Zacisnąć w dłoni różaniec i iść przed siebie, modląc się na głos.]
    ~ przejscie_bagna = z_rozancem
    – Zdrowaś Maryjo, łaski pełna… – zaczął Jaromir i zrobił pierwszy krok.
    Światła zawyły – wysoko, przenikliwie, jak ptaki w sidłach – i zgasły wszystkie naraz. Zapadła ciemność tak gęsta, że nie widział własnych rąk. Szedł po omacku, badając kępy trzonkiem siekiery, i modlił się, aż wysechło mu gardło. # pokaz: ciemnosc
    ~ ekwipunek -= rozaniec
    Przeszedł. Ale kiedy dotarł do drugiego brzegu, różaniec w jego dłoni był zwęglony, a paciorki rozsypały się w popiół przy pierwszym dotknięciu. # tobolek # dalej
*   { ekwipunek ? krzesiwo } [Krzesać iskry i iść za ich blaskiem.]
    ~ przejscie_bagna = z_krzesiwem
    Wyjął krzesiwo dziadka i uderzył – raz, drugi. Iskry sypnęły się na turzycę, a światła odskoczyły od nich z piskiem, jak oparzone. Szedł przez bagno, krzesząc co kilka kroków, i kule rozstępowały się przed nim. # pokaz: iskry
    Na drugim brzegu iskra spadła w szary porost – i porost zajął się w jednej chwili, jak proch. Jaromir zadeptywał płomień, zdarł kapotę i tłukł nią ogień, aż popękała mu skóra na dłoniach. Zdusił go. Ale w borze zrobiło się nagle tak cicho, że słyszał własne serce, i długo nie mógł się pozbyć pewności, że każde drzewo wokół niego wstrzymało oddech. # pokaz: ogien # dalej
-   -> serce_boru

= serce_boru
# tlo: serce_boru
Za bagnem las był inny.
Drzewa stały rzadziej, ale były tak stare, że Jaromir nie potrafił objąć wzrokiem ich koron. Kora zrosła się z mchem w jedno, szare i miękkie jak sierść. Pod stopami nie rosła trawa, tylko suchy, szary porost, a powietrze było tak ciężkie i nieruchome, że każdy oddech smakował pyłem. Tu nie padało. Nigdy.
Na środku polany stał dąb – większy, niż był kiedyś Stary Dąb, tak wielki, że jego korzenie wychodziły z ziemi niczym grzbiety ogromnych ryb. W pniu ziała szczelina, wysoka na dwóch ludzi, a z niej ciągnęło chłodem piwnicy.
Zza dębu, cicho, dobiegał śpiew. Melodia Marysi – krótka, smutna. Tylko że tym razem nie urywała się w połowie. Ktoś dośpiewywał ją do końca głębokim, chropowatym głosem, podobnym do skrzypienia drzewa na wietrze. Jaromir nigdy nie słyszał, jak się kończy. Poczuł się okradziony: to on miał pierwszy usłyszeć ten koniec – razem z nią, przy jej łóżku. # pokaz: spiew
Z cienia dębu wyszedł starzec. # pokaz: starzec
Jaromir poznał go od razu – to on stał na skraju lasu w noc jego wesela{ poszedl_po_wstazke:, i to on przed laty czekał w półmroku boru przy wstążce Hanki}. Tylko że wtedy był daleko. Teraz Jaromir widział, że kożuch nie jest uszyty, tylko zrośnięty, jak kora, a mech na kapeluszu jest świeży i wilgotny, choć tutaj nigdy nie spadła ani kropla deszczu. Starzec nie rzucał cienia.
– Siedemdziesiąt lat czekałem – powiedział. Głos szedł nie z jego ust, tylko zewsząd – z drzew, z ziemi, z powietrza. – Aż któryś z was przyjdzie tu sam.
# pytanie: Co zrobi Jaromir?
*   [Zdjąć czapkę i ukłonić się jak przed najstarszym we wsi.]
    ~ przed_panem_lasu = uklon
    Jaromir zdjął czapkę i skłonił się nisko. Starzec przyglądał mu się długo, a potem, po raz pierwszy, coś w jego twarzy drgnęło.
    – Grzeczny – powiedział. – Tego się po was nie spodziewałem. # dalej
*   [Unieść siekierę i zażądać córki.]
    ~ przed_panem_lasu = uniosl_siekiere
    – Oddaj mi ją – powiedział Jaromir i uniósł siekierę. – Oddaj mi córkę.
    Starzec spojrzał na siekierę, a liście na jego lasce poczerniały i zwinęły się. # pokaz: liscie
    – {siekiera_dziadka:Znam to żelazo|Znam takie żelazo} – powiedział cicho.{ wejscie_do_boru == naciete_pnie: – A ty zraniłeś setkę moich drzew. Pamiętam każde.} # dalej
*   [Zawołać Marysię.]
    ~ przed_panem_lasu = zawolal_marysie
    – Marysiu! – krzyknął Jaromir. – Marysiu, to tata!
    Śpiew urwał się. Przez jedną straszną chwilę panowała cisza. A potem odpowiedział mu śmiech – dziecięcy, beztroski, szczęśliwy, śmiech Marysi. Tylko że dobiegł zza jego pleców, z bagna, przez które dopiero co przeszedł.
    Starzec pokręcił głową nad kimś, kto popełnił oczywisty błąd. # dalej
-   ~ zapiski += (starzec_4, pan_lasu_8)
Starzec zdjął kapelusz z mchu. Pod nim nie było twarzy, tylko kora – i dwoje jasnych, nieruchomych oczu, osadzonych w niej głęboko jak sęki. A potem zaczął rosnąć. Kożuch rozpadł się w mech i porosty, laska wrosła w ziemię, a broda spłynęła mu do kolan, potem do ziemi, szara i miękka jak mech na północnej stronie pni. Z czoła wystrzeliło mu poroże, rozłożyste i splątane jak gałęzie wiatrołomu. Rósł, aż jego głowa znalazła się wśród koron i zaszumiały wokół niej liście. # pokaz: pan_lasu
Pan Lasu pochylił się nad Jaromirem.
– Usiądź, wnuku Maćka – powiedział, a od jego głosu zadrżały liście w całym borze. – Porozmawiamy. # dalej
-> rozdzial_szesnasty_ciag_dalszy


// Koniec rozdziału szesnastego — dalej rozdział siedemnasty.
=== rozdzial_szesnasty_ciag_dalszy ===
# ozdobnik
_Koniec rozdziału szesnastego._ # dalej
-> rozdzial_siedemnasty
