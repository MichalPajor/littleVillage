// ------------------------------------------------------------
//  Rozdział trzynasty — Wspólny sen (figurka). Przednówek i roztopy po
//  zimie ze strzygą (Jaromir ma dwadzieścia dwa lata, Marysia półtora roku).
//  Figurka z prologu wraca: [starucha] przywozi ją wnuczka Jagna, [handlarz]
//  leży na jarmarku, [bez zgliszcz] Józek wygrzebuje ją z popiołu po chacie
//  zielarki, [bagno] wypływa z mokradeł. Odrzucona — i tak wraca do chałupy.
//  Dzieci śnią ten sam sen, ogniki podchodzą pod płoty; zaufać Jagnie albo nie.
//  W Wielki Czwartek Józek idzie we śnie na kładkę, gdzie czeka topielec:
//  siekiera (rozorany bark), figurka rzucona w wodę albo latarnia (płonie
//  kapliczka przy kładce). Potem: piec (figurka nie płonie), kapliczka albo
//  Jagna. W maju syn Antka, Franek; w czerwcu paliki pod drogę Urbaniaka.
// ------------------------------------------------------------

=== rozdzial_trzynasty ===
# tlo: przednowek
# rozdzial: Rozdział trzynasty
# tytul: Wspólny sen
Na Gromniczną zima zelżała, ale nie ustąpiła. Śnieg leżał na polach do połowy marca, szary i zbity, a w chałupach jadło się już kaszę bez okrasy i wydzielało ziemniaki z kopca po garści.{ polnoc_strzygi == na_twarz: Ręka Antka zagoiła się dopiero na przednówku – zostały na niej dwa półkola drobnych, białych blizn, które Jadwisia całowała, kiedy myślała, że nikt nie widzi.} {trzy_noce == czuwanie_przy_kolysce:Do chałupy Wójcików nikt się nie wprowadził. W lutym przegniły dach zapadł się w nocy pod śniegiem z hukiem, który obudził pół wsi.|Wójcikowa przeleżała zimę w gorączce, ale w marcu wyszła przed chałupę o kiju i pierwsze, co zrobiła, to przyniosła Marysi garść suszonych jabłek.}
{ ekwipunek ? szczenie_psa:
    Marysia skończyła półtora roku. Biegała po izbie, przewracała się, wstawała i biegła dalej, a słowa łapała w lot, jak wróbel okruchy. Rude szczenię wyrosło przez zimę na długonogiego psiaka, który chodził za nią krok w krok i warczał na każdego, kto podniósł na nią głos – nawet na matkę. # pokaz: szczenie
- else:
    Marysia skończyła półtora roku. Biegała po izbie, przewracała się, wstawała i biegła dalej, a słów znała już tyle, że Hanka liczyła je na palcach.
}
Odwilż przyszła naraz. W jedną noc ciepły wiatr zdmuchnął śnieg z pól, a rano mokradła za kładką wezbrały tak, że woda podeszła pod same opłotki. Lód na jeziorze pękał z trzaskiem przez trzy dni. Czwartej nocy nad mokradłami po raz pierwszy od lat zapaliły się światełka. # pokaz: ogniki # dalej
{ figurka_u_staruchy: -> figurka_od_jagny }
{ not przeszukal_zgliszcza: -> figurka_ze_zgliszcz }
{ figurka_w_bagnie: -> figurka_z_bagna }
-> figurka_na_jarmarku

= figurka_od_jagny
# tlo: jagna_izba
W połowie marca do Zapadliny przyjechała wozem obca kobieta – chuda, w szarej chuście, z jednym okiem zasnutym bielmem. Pytała o wnuka tego Maćka, który ponad sześćdziesiąt lat temu postawił tu chatę. Ludzie wskazali jej chałupę Jaromira.
– Mam na imię Jagna – powiedziała, kiedy usiadła na ławie. – Moja babka mieszkała w mieście, za rynkiem. Przed śmiercią kazała mi przyrzec, że to oddam.
Wyjęła z kosza zawiniątko w czarnej szmacie i rozwinęła je na stole. Figurka z drewna, nadpalona z jednej strony, z kosmykiem siwych włosów okręconym wokół szyi. {los_psa == oswojony && zona_wie:Jaromir nigdy figurki nie widział, a mimo to poznał ją od razu – z tego, co kiedyś opowiedziała mu babka Marianna.|Jaromir nigdy figurki nie widział i nigdy o niej nie słyszał, a mimo to na jej widok zrobiło mu się zimno, jakby ktoś otworzył drzwi na mróz.} # pokaz: figurka
– Babka kupiła ją od waszego dziadka na rynku – mówiła Jagna cicho, nie podnosząc wzroku. – I zrobiła z nią coś, za co płaciła do końca życia. Nie wiem dokładnie co – w gorączce bredziła o lalce i o wodzie. Wiem tylko, że umierała źle. I że ostatnie, co powiedziała, to: „Oddaj ją tam, skąd przyszła”.
# pytanie: Co zrobi Jaromir?
*   [Wziąć figurkę.]
    ~ ekwipunek += figurka
    Jaromir owinął figurkę z powrotem w szmatę i schował do skrzyni pod łóżkiem. Jagna odetchnęła, jakby ktoś zdjął jej z pleców wór kamieni. Na odchodnym powiedziała, że do Zielonych Świątek zostanie w Bukowcu u siostry i będzie sprzedawać zioła na targu. # dalej
*   [Kazać jej odejść razem z figurką.]
    ~ odrzucil_figurke = true
    – Zabierz to – powiedział Jaromir. – I nie wracaj.
    Jagna popatrzyła na niego długo zdrowym okiem i zawinęła figurkę. Od progu rzuciła tylko, że do Zielonych Świątek będzie w Bukowcu u siostry.
    ~ ekwipunek += figurka
    Ale rano, kiedy Hanka otworzyła drzwi, figurka leżała na progu. Szmata była mokra i cuchnęła bagnem. Jaromir schował figurkę do skrzyni, zanim zobaczyła ją Marysia. # pokaz: prog # dalej
-   -> wspolny_sen

= figurka_na_jarmarku
# tlo: jarmark
W połowie marca Jaromir pojechał do miasta na jarmark z łyżkami, które strugał przez zimę. Sprzedał wszystkie przed południem i chodził jeszcze między straganami, szukając dla Marysi czegoś na odpust. Przy ostatnim kramie, u starego handlarza starzyzną, między pękniętymi garnkami a zardzewiałymi podkowami leżała figurka z drewna – nadpalona z jednej strony, z twarzą wytartą na gładko przez cudze palce. # pokaz: figurka
Jaromir wziął ją do ręki. Drewno było zimne i wilgotne, choć dzień był suchy.
– Ładna, co? – zarechotał handlarz. – Mój dziad kupił ją od jakiegoś chłopa, kiedy sam był jeszcze młody. Od tamtej pory nikt jej nie chciał. Dla ciebie za grosz.
# pytanie: Co zrobi Jaromir?
*   [Kupić figurkę.]
    ~ ekwipunek += figurka
    Jaromir zapłacił, owinął figurkę w chustkę i schował za pazuchę. Całą drogę powrotną czuł ją przy sercu jak kawałek lodu. W domu włożył ją do skrzyni pod łóżkiem. # dalej
*   [Odłożyć ją i odejść.]
    ~ odrzucil_figurke = true
    ~ ekwipunek += figurka
    Jaromir odłożył figurkę na stół i odszedł, nie oglądając się. Ale kiedy wieczorem wyprzęgał konia pod chałupą, figurka leżała na dnie wozu, między wiórami – tam, gdzie rano leżały łyżki. Długo na nią patrzył, zanim schował ją do skrzyni pod łóżkiem. # pokaz: woz # dalej
-   -> wspolny_sen

= figurka_ze_zgliszcz
# tlo: zgliszcza_kra
W połowie marca chłopcy ze wsi poszli nad jezioro patrzeć, jak spływa kra. Był wśród nich Józek, najmłodszy prawnuk starego Stasia – siedmioletni, rudy i ciekawy wszystkiego jak sroka. Kra poruszyła stare, zwęglone bale w trzcinach po zachodniej stronie jeziora, tam, gdzie kiedyś stała chata zielarki, i wypchnęła je na brzeg. Józek grzebał patykiem w popiele, aż wygrzebał coś twardego.
Przybiegł z tym do Jaromira, bo Jaromir strugał najlepsze zabawki we wsi i chłopak chciał się pochwalić. Na dłoni chłopca leżała figurka z drewna, nadpalona z jednej strony. Sadza, którą była oblepiona, brudziła palce jak świeża. # pokaz: figurka
# pytanie: Co zrobi Jaromir?
*   [Zabrać mu figurkę.]
    ~ ekwipunek += figurka
    – Daj mi ją – powiedział Jaromir. – W zamian wystrugam ci konia z wozem.
    Józek się nadąsał, ale w końcu się zgodził. Jaromir schował figurkę do skrzyni pod łóżkiem i długo szorował ręce w cebrze, choć były czyste. # dalej
*   [Pozwolić mu ją zatrzymać.]
    ~ jozek_mial_figurke = true
    Jaromir oddał chłopcu figurkę i Józek pobiegł z nią do domu. Następnego dnia do Jaromira przyszła matka Józka, blada, z figurką zawiniętą w fartuch. Józek spał z nią w garści całą noc i gadał przez sen cudzym głosem, a rano obudził się z mokrymi włosami, choć nikt go nie kąpał. # pokaz: matka
    – Weź to – powiedziała. – Ty jesteś wnukiem Maćka. Ty wiesz, co to jest.
    ~ ekwipunek += figurka
    Jaromir schował figurkę do skrzyni pod łóżkiem. # dalej
-   -> wspolny_sen

= figurka_z_bagna
# tlo: kladka_naprawa
W połowie marca, kiedy woda zaczęła opadać, Jaromir poszedł z Antkiem naprawić kładkę nad mokradłami, którą zerwała powódź. Wyciągał z mułu stary pal, kiedy zobaczył, że coś do niego przywarło – czarne, oblepione szlamem. Zeskrobał błoto nożem.
Figurka z drewna, nadpalona z jednej strony. Woda przez tyle lat nie zmyła z niej sadzy. Jaromir przypomniał sobie, co ojciec opowiadał mu w dzieciństwie o dziadku Maćku i o figurce, którą ten zgubił w bagnie pierwszej wiosny. # pokaz: figurka
# pytanie: Co zrobi Jaromir?
*   [Zabrać figurkę.]
    ~ ekwipunek += figurka
    Jaromir owinął figurkę w szmatę i wsunął za pazuchę. Antek patrzył na niego spode łba, ale nic nie powiedział. W domu Jaromir schował ją do skrzyni pod łóżkiem. # dalej
*   [Wrzucić ją z powrotem w bagno.]
    ~ odrzucil_figurke = true
    Jaromir zamachnął się i cisnął figurkę jak najdalej, w czarne oczko między kępami. Bagno wciągnęło ją bez jednego kręgu na wodzie. # pokaz: plusk
    ~ ekwipunek += figurka
    Ale rano, kiedy Hanka otworzyła drzwi, figurka leżała na progu – mokra, oblepiona rzęsą wodną, obrócona twarzą do izby. Jaromir schował ją do skrzyni, zanim zobaczyła ją Marysia. # dalej
-   -> wspolny_sen

= wspolny_sen
# tlo: sen_kladka
~ zapiski += ogniki_2
{ not przeszukal_zgliszcza:Pierwszy sen przyśnił się Józkowi.|Pierwszy sen przyśnił się Józkowi, najmłodszemu prawnukowi starego Stasia.} Po nim córce młynarza z Bukowca, potem bliźniakom od Kowalczyków. Po tygodniu matki przy studni nie mówiły już o niczym innym, bo każde dziecko śniło to samo: że stoi nocą na kładce nad mokradłami, wokół mrugają światełka, a pod deskami, w czarnej wodzie, ktoś przewraca gliniane garnki, jeden po drugim, i zagląda pod każdy. I że ten ktoś w końcu podnosi głowę i mówi: „Jednego brakuje”. # pokaz: glowa
{ not odrzucil_figurke && not jozek_mial_figurke:
    Po kilku nocach ten sam sen przyśnił się Jaromirowi – jedynemu dorosłemu we wsi. Tylko on przecież wziął figurkę z własnej woli. Zrywał się przed świtem z szumem wody w uszach i z mokrymi stopami, choć spał pod pierzyną.
}
Marysia budziła się z płaczem co noc{ skarb_dla_corki: i zaciskała piąstkę na rzemyku z {skarb_jaromira == muszelka:muszelką|{skarb_jaromira == pioro:sójczym piórem|gwoździem}}, który od zimy nosiła na szyi}. Pokazywała paluszkiem okno i powtarzała słowa, których nikt jej nie uczył:
– Mokry pan. Mokry pan.
Ogniki nad mokradłami z każdą nocą paliły się bliżej. Najpierw tylko za kładką, potem na łące, a w końcu stały w szuwarach tuż za płotami – jak ludzie, którzy czekają, aż ktoś otworzy drzwi. # pokaz: ognie
{ figurka_u_staruchy:
    W niedzielę Jagna przyszła z Bukowca piechotą, sama, i od progu zapytała, czy dzieci we wsi śnią.
- else:
    W tym samym tygodniu Hanka kupiła na targu w Bukowcu piołun od obcej zielarki – chudej kobiety w szarej chuście, z jednym okiem zasnutym bielmem. Kiedy zielarka wydawała resztę, chwyciła nagle Hankę za rękę i powąchała jej palce.
    – Czuję popiół – szepnęła. – Stary popiół, znad wody. Macie go w domu, prawda?
    { przeszukal_zgliszcza && not figurka_w_bagnie:
        – Moja babka chciała kiedyś kupić taką rzecz od jakiegoś chłopaka na rynku – dodała ciszej. – Nie sprzedał jej. Do śmierci nie wiedziała, komu ją w końcu oddał.
    }
    Powiedziała, że ma na imię Jagna i że do Zielonych Świątek zostanie w Bukowcu. Hanka przyprowadziła ją do chałupy jeszcze tego samego popołudnia, nie pytając męża o zdanie.
}
{figurka_u_staruchy:– Powiedz jej o snach – odezwała się żona, zanim Jaromir zdążył otworzyć usta. – Sama to przyniosła, niech wie, co z tego wyrosło.|– Jeśli coś schowałeś, nie kryj tego przed nią – odezwała się żona, zanim Jaromir zdążył otworzyć usta. – {odrzucil_figurke && figurka_w_bagnie:Widziałam, co wróciło na nasz próg.|{jozek_mial_figurke:Widziałam, co przyniosła matka Józka.|Widziałam, jak zaglądasz pod łóżko.}}}
# pytanie: Co zrobi Jaromir?
*   [Pokazać Jagnie figurkę i opowiedzieć o snach.]
    ~ zaufal_jagnie = true
    Jagna długo obracała figurkę w palcach, przysunięta do okna, bo zdrowe oko miała słabe.
    – To lalka – powiedziała w końcu. – Babka mi o takich opowiadała. Zielarka znad jeziora wystrugała ją z korzenia, który wyciągnęła z bagna, i nadała jej imię tego, co tam mieszka. Kto ma lalkę, za tym on idzie. Póki leżała daleko, spał. Teraz wróciła – i woła go. A dzieci słyszą, bo dzieci słyszą wszystko.
    Zawinęła figurkę w szmatę i oddała Jaromirowi.
    – Ogień jej nie weźmie, już raz w nim była. Uciszy ją tylko poświęcona ziemia. {odrzucil_figurke:Albo… – urwała i pokręciła głową. – Nie. Mnie już nie posłucha. Odepchnęliście ją, a ona i tak do was wróciła. Teraz jest wasza.|{figurka_u_staruchy:Babka kazała mi ją oddać tam, skąd przyszła, i oddałam. Z powrotem jej nie wezmę.|Albo… – zawahała się – albo oddajcie mi ją. Zabiorę ją tak daleko, że jej nie dosłyszy.}} # dalej
*   [Nie mówić jej nic.]
    {figurka_u_staruchy:– Dzieci śpią spokojnie – skłamał Jaromir.|– Nie wiem, o czym mówicie – odpowiedział Jaromir.}
    Jagna pokiwała głową, jakby właśnie tego się spodziewała.
    – Jak ognie dojdą do progu – powiedziała – przyjdźcie do mnie. Do Zielonych Świątek jestem w Bukowcu.
    Hanka odprowadziła ją aż za płot i długo tam z nią szeptała. Do wieczora nie odezwała się do Jaromira ani słowem. # dalej
-   -> wielki_czwartek

= wielki_czwartek
# tlo: noc_kladka
{ not odrzucil_figurke && not jozek_mial_figurke:
    W noc Wielkiego Czwartku sen przyszedł do Jaromira jak co noc – tylko że tym razem na kładce, wśród ogników, stał Józek. Jaromir zerwał się z posłania, zanim zrozumiał, że już nie śpi. Chwycił siekierę{ siekiera_dziadka: dziadka}, latarnię i ze skrzyni zawiniątko z figurką. Nie musiał nikogo pytać, dokąd biec. # pokaz: jozek
    Za opłotkami, w szuwarach, mrugały światełka – a między nimi, w stronę kładki, szła mała, jasna postać, boso, z rękami wyciągniętymi przed siebie. Jaromir dopadł brzegu w chwili, gdy chłopiec zatrzymał się w połowie przejścia. Woda pod deskami zakotłowała się, a z niej wysunęła się szara ręka. Zacisnęła się na kostce Józka.
- else:
    W noc Wielkiego Czwartku Jaromira obudził krzyk na drodze: matka Józka biegała od płotu do płotu z latarnią i wołała syna, którego posłanie zastała puste. Kiedy Jaromir wyjrzał z sieni, na progu stało blade światełko, tak blisko, że oświetlało sęki w deskach – i odpłynęło w ciemność, gdy tylko na nie spojrzał. Chwycił siekierę{ siekiera_dziadka: dziadka}, latarnię i zawiniątko z figurką – bał się zostawić ją w domu, przy Marysi. Najpierw pobiegli z matką Józka nad jezioro i dopiero stamtąd Jaromir zobaczył, że światełka zbiły się w gromadę w jednym miejscu. # pokaz: jozek
    Kiedy dobiegł, było prawie za późno. Szara ręka ściągnęła już chłopca w dół – Józek wisiał po pas w czarnej wodzie i przez sen trzymał się kładki jedną ręką.
}
{ figurka_u_staruchy:
    Stwór wynurzał się powoli – ogromny, zgarbiony, z włosami jak mokre wodorosty i ślepiami świecącymi zielonkawo jak próchno. Na ramieniu miał starą, głęboką bliznę – ślad po siekierze, którą przed laty uderzył go dziadek Maciek. Józek nie krzyczał. Spał. # pokaz: stwor, blizna
- else:
    Stwór wynurzał się powoli – ogromny, zgarbiony, z włosami jak mokre wodorosty i ślepiami świecącymi zielonkawo jak próchno. Józek nie krzyczał. Spał. # pokaz: stwor
}
{ oblawa_wilk == wydal_wilka:
    Za mokradłami zawył wilk – chrapliwie, z urwanym końcem, tak samo jak w noc po obławie. Stwór obrócił łeb w tamtą stronę. Po grobli, między olchami, przesunęło się coś białego, nisko i nierówno, oszczędzając jeden bok – i przepadło w ciemności.
- else:
    Za mokradłami zawył wilk – przeciągle i czysto, aż zadrżały płomyki w szuwarach. Stwór obrócił łeb w tamtą stronę. Po grobli, między olchami, przemknęło coś białego, szybciej niż pies – i przepadło w ciemności.
}
Jaromir nie wiedział, komu ten głos był przestrogą – stworowi czy jemu.
~ zapiski += stwor_3
# pytanie: Co zrobi Jaromir?
*   [Uderzyć stwora siekierą.]
    ~ noc_na_kladce = siekiera_na_kladce
    Jaromir skoczył na kładkę i ciął z całej siły. Ostrze weszło głęboko w szare ramię{ figurka_u_staruchy:, tuż obok starej blizny}. Stwór ryknął – długo, gardłowo, aż zadygotały deski – puścił chłopca i w odwecie przeorał Jaromirowi pazurami bark. Zapadł się pod wodę, jakby ktoś go wciągnął. # pokaz: siekiera
    Jaromir porwał Józka na ręce i wyniósł na brzeg. Chłopiec obudził się dopiero w chałupie, przy piecu, i nic nie pamiętał. Rana na barku Jaromira goiła się do żniw. # dalej
    -> co_z_figurka
*   { ekwipunek ? figurka } [Rzucić mu figurkę.]
    ~ noc_na_kladce = figurka_dla_stwora
    ~ los_figurki = figurka_u_stwora
    Jaromir rozwinął szmatę i cisnął figurkę w wodę, tuż obok stwora.
    ~ ekwipunek -= figurka
    Ręka puściła kostkę chłopca w jednej chwili. Stwór chwycił figurkę, przycisnął ją do piersi jak matka dziecko i zsunął się w czarną wodę gładko jak wydra. Światełka nad mokradłami zgasły wszystkie naraz, jakby ktoś je zdmuchnął. # pokaz: figurka
    Zaraz potem woda pod deskami zassała się w głąb, z jękiem jak pękający lód, i pociągnęła za sobą pale. Jaromir ledwie zdążył skoczyć z Józkiem na brzeg, nim kładka – stara jak wieś – złożyła się na pół i poszła pod wodę. Chłopiec spał dalej, spokojnie, z policzkiem na jego ramieniu. # dalej
    -> paliki_pod_droge
*   [Rozbić latarnię o wodę.]
    ~ noc_na_kladce = latarnia_na_wodzie
    Jaromir cisnął latarnią pod nogi stwora. Szkło pękło, olej rozlał się po wodzie i buchnął płomieniem. Stwór puścił chłopca i z wyciem cofnął się w ciemność, a Jaromir chwycił Józka, nim czarna woda zdążyła go wciągnąć. # pokaz: latarnia
    Ale ogień poszedł po suchych, zeszłorocznych trzcinach jak po prochu. Zanim chłopi przybiegli z wiadrami, spłonęła połowa szuwarów i kapliczka przy kładce – jedna z najstarszych we wsi. Rano zostały z niej czarne kikuty i świątek z nadpaloną twarzą. # pokaz: pozar # dalej
    -> co_z_figurka

= co_z_figurka
# tlo: skrzynia_izba
Po Wielkanocy Jaromir długo siedział wieczorami nad skrzynią. Światełka nad mokradłami paliły się nadal, choć dalej od płotów niż przedtem, a Marysia wciąż budziła się po nocach i pokazywała okno.
# pytanie: Co zrobi z figurką?
*   [Wrzucić figurkę do pieca.]
    ~ los_figurki = figurka_w_skrzyni
    Figurka leżała w żarze całą noc i nie zajęła się ogniem – tylko syczała jak mokre drewno, a z pieca szedł smród bagna. Rano Jaromir wyciągnął ją pogrzebaczem. Była nadpalona dokładnie tak samo, ani trochę bardziej. W sieni wszystkie wiadra stały pełne mętnej, bagiennej wody, choć wieczorem Hanka nalała do nich czystej ze studni. # pokaz: piec
    Jaromir zamknął figurkę w skrzyni, okręcił skrzynię łańcuchem i więcej o niej nie mówił. # pokaz: lancuch # dalej
*   [Zakopać ją pod kapliczką.]
    ~ los_figurki = figurka_pod_kapliczka
    ~ ekwipunek -= figurka
    Po zmroku Jaromir poszedł z łopatą do kapliczki {noc_na_kladce == latarnia_na_wodzie:przy drodze do Bukowca|przy kładce}. Wykopał dół głęboki na łokieć, owinął figurkę w czyste płótno i zasypał, a ziemię ubił stopami. Tej samej nocy światełka nad mokradłami zgasły, a dzieci przestały śnić. # pokaz: lopata
    Nikomu nie powiedział, gdzie ją zakopał. Nawet Hance. # dalej
*   { zaufal_jagnie } { not odrzucil_figurke } { not figurka_u_staruchy } [Oddać ją Jagnie.]
    ~ los_figurki = figurka_u_jagny
    ~ ekwipunek -= figurka
    Jaromir zaniósł zawiniątko do Bukowca. Jagna wzięła je obiema rękami, ostrożnie, jak coś bardzo kruchego, i od razu schowała na dno kosza, pod pęki suszonego ziela. # pokaz: kosz
    – Nie bójcie się – powiedziała. – Już nie wróci.
    Nazajutrz wyjechała. Tej nocy światełka nad mokradłami zgasły, a dzieci przestały śnić. # dalej
-   -> paliki_pod_droge

= paliki_pod_droge
# tlo: wiosna_paliki
~ zapiski += zielarka_3
W maju Jadwisia urodziła Antkowi syna. Antek uparł się, że chłopak będzie miał na imię Franek, i nikt nie śmiał mu się sprzeciwić. Na chrzestnego poprosił Jaromira. # pokaz: antek
{ los_figurki:
- figurka_u_stwora: Światełka nad mokradłami nie zapaliły się już ani razu. Józek nie pamiętał tamtej nocy. Kładki nikt nie odbudował: pale, które chłopi wbijali w muł, rano leżały wyrwane na brzegu, więc na dalsze łąki trzeba było odtąd obchodzić bagno skrajem boru. Stary Staś, kiedy usłyszał, co Jaromir zrobił, przeżegnał się i więcej nie zarzucił wędki w tamtejszych oczkach.
- figurka_w_skrzyni: Sny przychodziły coraz rzadziej, ale nie ustały całkiem. Czasem, w bezksiężycowe noce, Marysia siadała na posłaniu i patrzyła na skrzynię pod łóżkiem, dopóki Hanka jej nie położyła.
- else: Dzieci we wsi zapomniały o śnie szybciej, niż matki zdążyły przestać o nim gadać. Marysia znowu przesypiała noce.
}
{ noc_na_kladce == siekiera_na_kladce:
    Na barku Jaromira została gruba, różowa blizna{ figurka_u_staruchy && los_psa == oswojony: – w tym samym miejscu, w którym przed laty szpony stwora dosięgły dziadka}.
}
{ noc_na_kladce == latarnia_na_wodzie:
    Na miejscu spalonej kapliczki chłopi wbili w ziemię brzozowy krzyż. Nowej nikt nie postawił – nie było za co. # pokaz: krzyz
}
Pod koniec maja Hanka szukała Marysi po całym obejściu. Znalazła ją dopiero za stodołą, w życie po pachy. Mała stała bez ruchu, z przekrzywioną główką, jak ktoś, kto nasłuchuje.
– Mama śpiewa – powiedziała i pokazała rączką w zboże, w drugą stronę niż chałupa.
{ glos_w_lesie:
    Kiedy Hanka opowiedziała o tym wieczorem, Jaromirowi przypomniała się wigilijna noc sprzed lat i głos matki {figurka_u_staruchy:z mgły nad polem|spomiędzy drzew}{glos_w_lesie == odpowiedzial: – a potem śmiech, wcale nie jej|{glos_w_lesie == kozuch: – a potem ciężkie kroki, które przeszły tuż obok| – i to, jak głos gonił go po śniegu aż pod płot Stasiowych}}. Nic nie powiedział. Tylko tej nocy dwa razy wstawał zajrzeć, czy Marysia śpi.
}
Na początku czerwca ludzie Urbaniaka zaczęli wbijać w ziemię paliki: od tartaku, przez łąki i mokradła, prosto pod bór. Pan Urbaniak chciał mieć drogę do lasu. Po tygodniu te wbite najbliżej boru puściły zielone pędy – z suchego, okorowanego drewna. # pokaz: paliki # dalej
-> rozdzial_trzynasty_ciag_dalszy


// Koniec rozdziału trzynastego — dalej rozdział czternasty.
=== rozdzial_trzynasty_ciag_dalszy ===
# ozdobnik
_Koniec rozdziału trzynastego._ # dalej
-> rozdzial_czternasty
