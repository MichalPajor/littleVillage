// ------------------------------------------------------------
//  Rozdział szósty — Południca. Żniwa w upale, Jaromir ma trzynaście
//  lat. Południca zadaje w samo południe trzy zagadki; za każdą
//  pomyłkę tnie sierpem. Księga daje dodatkową odpowiedź. Przy dwóch
//  i więcej pomyłkach ratuje go Hanka z dzbanem wody (gorączka, blizna),
//  inaczej Południca ostrzega: „Pan Lasu się budzi, pilnuj kapliczek”.
// ------------------------------------------------------------

=== rozdzial_szosty ===
# tlo: zniwa
# rozdzial: Rozdział szósty
# tytul: Samo południe
Żniwa przyszły w wielkim upale. Od kilku tygodni nie spadła ani kropla deszczu, niebo bielało od żaru już o świcie, a ziemia na miedzach pękała w długie, kręte szczeliny. Zboże dojrzało nagle, w kilka dni, i stało teraz na polach złote i suche, szeleszcząc przy każdym podmuchu jak papier.
Wychodzili w pole, zanim zapiały koguty. Mężczyźni szli przodem, kobiety za nimi wiązały snopy, a dzieci zbierały pokłosie i nosiły wodę w glinianych dzbankach. Jaromir miał trzynaście lat i pierwszy raz kosił zboże razem z dorosłymi – w rzędzie, krok w krok za ojcem, a ostrze w jego rękach świstało prawie tak równo jak u starych żeńców. Powietrze pachniało rozgrzaną słomą i potem, kosy dzwoniły o osełki, a spod nóg co chwila wyfruwały spłoszone przepiórki.
Hanka pracowała na sąsiednim zagonie. Co jakiś czas prostowała się, ocierała czoło wierzchem dłoni i zerkała w stronę Jaromira, a kiedy ich spojrzenia się spotykały, natychmiast odwracała głowę i z udawanym zapałem wracała do snopów. Jaromir nie wiedział, czemu za każdym razem robi mu się wtedy tak dziwnie gorąco – i to nie od słońca. # pokaz: hanka
{ figurka_u_staruchy:
    Ojciec prawie się nie odzywał. W samo południe zawsze kazał wszystkim zejść z pola, w cień, choćby żyto miało się osypać.
- else:
    Ojciec żartował i śpiewał przy robocie, ale w samo południe zawsze kazał wszystkim zejść z pola, w cień. – Dziadek tak robił – mówił – i jego dziadek też. Nie ja to wymyśliłem. – A kiedy dzieci dopytywały, opowiadał o dziewusze, najlepszej żniwiarce w okolicy, która założyła się z parobkami, że sama zeżnie cały łan do południa. Nie zeszła z pola w największy skwar. Znaleźli ją wieczorem z sierpem w ręku i z kłosami we włosach.
}
Któregoś dnia Jaromir został sam na końcu zagonu. Chciał dokończyć pokos, zanim zejdzie do cienia, i nie zauważył, kiedy reszta odeszła pod gruszę na miedzy. Słońce stanęło mu dokładnie nad głową, a cień skurczył się i zniknął pod stopami. # pokaz: sam # dalej
-> poludnica_przychodzi

= poludnica_przychodzi
# tlo: poludnica
Zrobiło się cicho. Umilkły świerszcze, przestało szeleścić zboże, a powietrze nad polem zgęstniało i zafalowało jak woda nad rozgrzanym kamieniem.
Między kłosami pojawiła się kobieta. # pokaz: poludnica
Była wysoka i chuda, wyprostowana jak struna, w białej koszuli do kostek, która falowała, choć nie wiał najlżejszy wiatr. Jasne włosy sięgały jej do kolan i rozwiewały się na boki, a na głowie miała wianek z kłosów i czerwonych maków. Twarz była blada i wąska, z wysokimi kośćmi policzkowymi, oczy jak płótno bielone na słońcu, bez źrenic, a usta zaciśnięte w cienką kreskę. Bose stopy nie dotykały ziemi – unosiła się kilka cali nad ściernią, a pod nią drgał żar. W prawej ręce trzymała sierp. Na jego czubku wisiała czerwona kropla.
Lewą dłoń wyciągnęła ku niemu, otwartą, jakby o coś prosiła.
– Kto w moją godzinę pracuje – powiedziała głosem suchym jak trzask słomy – ten musi mi odpowiedzieć. Trzy zagadki. Za każdą pomyłkę – jedno cięcie.
{ ekwipunek ? ksiega:
    Jaromirowi stanęła przed oczami strona z księgi pana Ignacego: „Południca chodzi po polach w największy skwar i wypytuje żniwiarzy. Kto na wszystko odpowie – ten wolny. Kto się zmyli albo ucieknie – tego ścina sierpem albo zsyła na niego gorączkę”. Pod spodem nauczyciel dopisał drobniej jedno rozwiązanie, które przed laty usłyszał od starej kobiety z Bukowca, i podkreślił je dwa razy: „Ziarno trzy razy umiera i trzy razy wraca”.
}
# dalej
-> zagadka_1

= zagadka_1
Południca przechyliła głowę na bok, jak ptak.
– Bez nóg biega po zbożu, bez rąk kłosy czesze, bez gęby w kominie zawodzi. Każdy go słyszał, a nikt jeszcze nie widział. Co to?
# pytanie: Co odpowie Jaromir?
*   [Ogień.]
    -> zle_1
*   [Wiatr.]
    Południca milczała przez chwilę. Potem jej usta drgnęły – nie był to uśmiech, raczej coś, co go przypominało.
    – Wiatr – powtórzyła. – Mój brat. Dobrze. # dalej
    -> zagadka_2
*   [Dym.]
    -> zle_1

= zle_1
{ odwaga_jaromira && not poludnica_darowala:
    ~ poludnica_darowala = true
    Sierp świsnął – i zatrzymał się na włos od jego ramienia. Jaromir nie drgnął. {figurka_u_staruchy:Kiedyś, na głębokiej wodzie, coś otarło mu się o łydkę, a on uciekł do brzegu. Teraz nie uciekł.|Kiedyś, w trzcinach nad jeziorem, położył dłoń na zwęglonym balu, choć inni nie mieli odwagi. Teraz się nie cofnął.}
    – Nie uciekasz – powiedziała Południca i odsunęła ostrze. – Tę jedną ci daruję. Ale to był wiatr. Ogień i dym każdy widział, a wiatru jeszcze nikt. # dalej
    -> zagadka_2
}
~ pomylki_poludnica += 1
~ ciecie_ramie = true
Sierp świsnął, zanim Jaromir zdążył mrugnąć. Poczuł piekący ból na ramieniu, a kiedy spojrzał w dół, przez rozdartą koszulę sączyła się krew. # pokaz: ciecie
– Źle – powiedziała Południca. – Wiatr. Ogień i dym każdy widział, a wiatru jeszcze nikt. # dalej
-> zagadka_2

= zagadka_2
– Chowają go w ziemi jak nieboszczyka, a on wstaje. Ścinają go jak złoczyńcę, a on nie krwawi. Biją go, a on się nie skarży. A kiedy go wsadzą w żar – dopiero wtedy wszyscy go chcą. Co to?
# pytanie: Co odpowie Jaromir?
*   [Len.]
    -> zle_2
*   [Żyto.]
    – Żyto – szepnęła, a jej biała twarz na moment złagodniała, jakby przypomniała sobie własne żniwa, dawno temu. – Mądry chłopak. # dalej
    -> zagadka_3
*   [Kartofel.]
    -> zle_2
*   { ekwipunek ? ksiega } [Ziarno – w ziemi umiera, spod kosy i cepa wraca, a w piecu rodzi się chlebem.]
    ~ poludnica_uklon = true
    Południca otworzyła usta i zamknęła je bez słowa. Długo patrzyła na niego tymi białymi oczami, a potem pochyliła głowę – lekko, ledwie widocznie, jak przed kimś, kogo się szanuje. # pokaz: uklon
    – Takiej odpowiedzi nie słyszałam od stu lat – powiedziała. – Ktoś cię dobrze uczył. # dalej
    -> zagadka_3

= zle_2
{ odwaga_jaromira && not poludnica_darowala:
    ~ poludnica_darowala = true
    Sierp świsnął – i zatrzymał się na włos od jego dłoni. Jaromir nie drgnął. {figurka_u_staruchy:Kiedyś, na głębokiej wodzie, coś otarło mu się o łydkę, a on uciekł do brzegu. Teraz nie uciekł.|Kiedyś, w trzcinach nad jeziorem, położył dłoń na zwęglonym balu, choć inni nie mieli odwagi. Teraz się nie cofnął.}
    – Nie uciekasz – powiedziała Południca i odsunęła ostrze. – Tę jedną ci daruję. Ale to było żyto. Lnu się nie piecze, a kartofla nikt nie młóci. # dalej
    -> zagadka_3
}
~ pomylki_poludnica += 1
~ ciecie_dlon = true
Sierp mignął w powietrzu. Cięcie przeszło przez wierzch dłoni, płytko, ale krew trysnęła na ściernisko. # pokaz: ciecie
– Żyto – syknęła. – Lnu się nie piecze, a kartofla nikt nie młóci. # dalej
-> zagadka_3

= zagadka_3
Powietrze zafalowało mocniej. Żar podchodził Jaromirowi pod gardło, w uszach mu dzwoniło, a pole zaczęło się kołysać, jakby stał na łódce.
– A teraz powiedz mi – Południca zniżyła głos – kto ma dom starszy niż wszystkie chałupy w okolicy, a nie ma w nim ani jednych drzwi? Kto pasie wilki, jak wy pasiecie owce? I komu tego lata wyrwali z płotu najgrubszy kół, dębowy?
# pytanie: Co odpowie Jaromir?
*   [Święty Jerzy.]
    ~ pomylki_poludnica += 1
    ~ ciecie_policzek = true
    – Święty? – Południca roześmiała się, sucho i nieprzyjemnie, jak trzeszczące ściernisko. – Święci siedzą w kapliczkach, chłopcze. A tamten czeka, aż ktoś mu je powyrywa.
    Ostrze błysnęło. Jaromir poczuł na policzku ostre draśnięcie, a po brodzie pociekło mu coś ciepłego. # pokaz: ciecie
*   [Pan Lasu.]
    Wszystko ucichło jeszcze bardziej, choć wydawało się, że ciszej już być nie może. Południca cofnęła wyciągniętą rękę.
    – Znasz go – powiedziała i po raz pierwszy w jej głosie zabrzmiało coś na kształt lęku. – To źle. Bo on też zna ciebie.
*   [Nie wiem.]
    Południca długo milczała.
    – Wiesz – powiedziała. – Tylko boisz się powiedzieć. To rozsądne. Nie mów jego imienia w południe.
-   -> wynik

= wynik
{ pomylki_poludnica:
- 0:
    Południca opuściła sierp.
    – Jesteś wolny – powiedziała. – Ale słuchaj, bo nie powtórzę. Pan Lasu się budzi. Dąb, który go trzymał, leży na placu u tego tłustego człowieka z miasta, a z każdym ściętym drzewem śpi płycej. Kiedy się obudzi, przyjdzie po swoje. Pilnuj kapliczek, chłopcze. Pilnuj ich, póki stoją.
- 1:
    Południca przyglądała mu się długo, a potem opuściła sierp.
    – Mogło być gorzej – powiedziała. – Idź. Ale zapamiętaj: Pan Lasu się budzi. Pilnuj kapliczek.
- else:
    Południca uniosła sierp wysoko, nad jego głowę. Chłopiec zamknął oczy – i wtedy usłyszał krzyk. # pokaz: zamach
}
Ktoś wbiegał na zagon, potykając się o snopy. Hanka. W rękach niosła gliniany dzban, z którego chlapała woda. # pokaz: dzban
– Jaromir! Jaromir, co ty robisz w samo południe?!
{ pomylki_poludnica < 2:
    ~ ostrzezenie_poludnicy = true
    Kiedy znów spojrzał przed siebie, nie było już nikogo. Tylko na ściernisku leżał wianek z kłosów i maków, które już zaczynały więdnąć. # pokaz: znika, wianek # dalej
    -> po_poludniu
- else:
    Hanka nie zwolniła. Doskoczyła do chłopca i chlusnęła wodą z dzbana – nie na niego, tylko przed siebie, tam, gdzie falował żar.
    – Masz, pij! – krzyknęła w pustkę łamiącym się głosem, tak jak uczyła ją babka. – Pij i puść go!
    Południca zawahała się z uniesionym sierpem. Spojrzała na dziewczynę, potem na ciemną plamę, która znikała w spękanej ziemi – i rozwiała się w drżącym powietrzu jak para. Hanka wylała Jaromirowi resztę wody na głowę. # pokaz: znika, woda # dalej
    -> goraczka
}

= goraczka
# tlo: goraczka
~ blizna_sierpa = true
~ zapiski += poludnica_1
Przez trzy dni trawiła go gorączka. Leżał w chałupie pod mokrymi płachtami, {rany_sierpa()} piekły jak przypalone żelazem, a w majakach wciąż widział białe oczy bez źrenic i słyszał suchy szept: „Za każdą pomyłkę – jedno cięcie”. # pokaz: majaki
Matka nie odchodziła od niego ani na krok. Hanka przynosiła zioła od babki, a drugiego dnia, nikomu nic nie mówiąc, poszła w samo południe na tamten zagon i postawiła na miedzy dzban świeżej wody. Wróciła roztrzęsiona i nie chciała powiedzieć, co tam widziała. Tej nocy gorączka zaczęła spadać. # pokaz: hanka
Kiedy wreszcie wstał, na {miejsce_blizny()} została mu biała blizna w kształcie półksiężyca, jakby od czubka sierpa.
-> czy_powiedziec

= po_poludniu
# tlo: czerwony_ksiezyc
~ zapiski += poludnica_1
~ mak_w_medaliku = true
Żeńcom nie powiedział, co się stało w samo południe. Tylko wieczorem, kiedy siedzieli z Hanką na płocie i patrzyli, jak nad ścierniskiem wschodzi wielki, czerwony księżyc, wyjął z kieszeni zwiędły mak z wianka i położył jej na dłoni. # pokaz: mak
Od pól ciągnęło kurzem i wypalonym słońcem, świerszcze grały jak oszalałe, a Hanka siedziała tak blisko, że czuł przez koszulę ciepło jej ramienia.
– Od kogo to? – zapytała.
– Od kogoś, kto kazał pilnować kapliczek – powiedział.
Hanka nie zrozumiała, ale schowała mak do medalika, który nosiła na szyi, i odtąd się z nim nie rozstawała.
-> czy_powiedziec

= czy_powiedziec
Antek dopadł Jaromira, kiedy tylko zostali sami.
– Widziałem cię spod gruszy – powiedział cicho. – Stałeś sam na końcu zagonu i gadałeś do powietrza, a powietrze nad tobą drgało jak nad paleniskiem w kuźni. – Przełknął ślinę. – Jak będziesz mówił dorosłym, to i ja powiem, co widziałem. We dwóch prędzej nam uwierzą.
# pytanie: Czy Jaromir powie ojcu?
*   [{ostrzezenie_poludnicy:Powiedzieć ojcu o ostrzeżeniu Południcy.|Powiedzieć ojcu o Południcy.}]
    ~ powiedzial_ojcu_poludnica = true
    # tlo: kapliczki_noc
    { figurka_u_staruchy:
        Ojciec wysłuchał syna w milczeniu. Potem wstał, zdjął z gwoździa latarnię i wyszedł w noc. Wrócił nad ranem. Matka opowiadała później, że obszedł wszystkie kapliczki w Zapadlinie i przy każdej klęczał, jakby prosił o przebaczenie. # pokaz: ojciec # dalej
    - else:
        Ojciec nie roześmiał się. Długo milczał, a potem powiedział, że jutro zwoła ludzi i pójdą razem do Urbaniaka. – Kapliczek nie ruszy – dodał. – Choćby mi miał tartak na głowę zwalić. # pokaz: ojciec # dalej
    }
    -> rozdzial_szosty_ciag_dalszy
*   [Zachować to dla siebie.]
    # tlo: kapliczki_noc
    Jaromir nie powiedział nikomu – poza Antkiem, który i tak wiedział. Każdej nocy, gdy wszyscy już spali, wymykali się we dwóch i obchodzili najbliższe kapliczki. Poprawiali przekrzywione daszki i wyrywali chwasty, które oplatały słupy. Czasem w pół roboty milkły świerszcze – najpierw pod borem, potem coraz bliżej – i wtedy stali bez ruchu, póki nie zaczęły grać na nowo. Jaromir wracał przed świtem zlany zimnym potem, z nogawkami mokrymi od rosy, i długo nie mógł zasnąć, wsłuchany w każdy szelest za oknem. # pokaz: jaromir # dalej
    -> rozdzial_szosty_ciag_dalszy


// Koniec rozdziału szóstego — dalej rozdział siódmy.
=== rozdzial_szosty_ciag_dalszy ===
# ozdobnik
~ zapiski += pan_lasu_3
_Koniec rozdziału szóstego._ # dalej
-> rozdzial_siodmy

=== function rany_sierpa()
{
- ciecie_ramie && ciecie_dlon && ciecie_policzek: ~ return "rany na ramieniu, dłoni i policzku"
- ciecie_ramie && ciecie_dlon: ~ return "rany na ramieniu i dłoni"
- ciecie_ramie: ~ return "rany na ramieniu i policzku"
- else: ~ return "rany na dłoni i policzku"
}

=== function miejsce_blizny()
{
- ciecie_ramie: ~ return "ramieniu"
- ciecie_dlon: ~ return "dłoni"
- else: ~ return "policzku"
}
