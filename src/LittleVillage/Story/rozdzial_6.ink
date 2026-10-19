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
Żniwa przyszły w upale, jakiego najstarsi ludzie nie pamiętali. Od kilku tygodni nie spadła ani kropla deszczu, niebo bielało od żaru już o świcie, a ziemia na miedzach pękała w długie, kręte szczeliny. Zboże dojrzało nagle, w kilka dni, i stało teraz na polach złote i suche, szeleszcząc przy każdym podmuchu jak papier.
Wychodzili w pole, zanim zapiały koguty. Mężczyźni szli przodem, kobiety za nimi wiązały snopy, a dzieci zbierały pokłosie i nosiły wodę w glinianych dzbankach. Jaromir miał trzynaście lat i pierwszy raz kosił razem z dorosłymi – w rzędzie, krok w krok za ojcem, a ostrze w jego rękach świstało prawie tak równo jak u starych żeńców. Powietrze pachniało rozgrzaną słomą i potem, kosy dzwoniły o osełki, a spod nóg co chwila wyfruwały spłoszone przepiórki.
Hanka pracowała na sąsiednim zagonie. Co jakiś czas prostowała się, ocierała czoło wierzchem dłoni i zerkała w jego stronę, a kiedy ich spojrzenia się spotykały, natychmiast odwracała głowę i z udawanym zapałem wracała do snopów. Jaromir nie wiedział, czemu za każdym razem robi mu się wtedy tak dziwnie gorąco – i to nie od słońca. # pokaz: hanka
{ figurka_u_staruchy:
    Ojciec prawie się nie odzywał. W samo południe zawsze kazał wszystkim zejść z pola, w cień, choćby żyto miało się osypać.
- else:
    Ojciec żartował i śpiewał przy robocie, ale w samo południe zawsze kazał wszystkim zejść z pola, w cień. – Dziadek tak robił – mówił – i jego dziadek też. Nie ja to wymyśliłem. – A kiedy dzieci dopytywały, opowiadał o dziewusze, najlepszej żniwiarce w okolicy, która założyła się z parobkami, że sama zeżnie cały łan do południa. Nie zeszła z pola w największy skwar. Znaleźli ją wieczorem z sierpem w ręku i z kłosami we włosach.
}
Któregoś dnia Jaromir został sam na końcu zagonu. Chciał dokończyć pokos, zanim zejdzie do cienia, i nie zauważył, kiedy reszta odeszła pod gruszę na miedzy. Słońce stanęło dokładnie nad jego głową, a jego cień skurczył się i zniknął pod stopami. # pokaz: sam # dalej
-> poludnica_przychodzi

= poludnica_przychodzi
# tlo: poludnica
Nagle zrobiło się cicho. Ucichły świerszcze, przestało szeleścić zboże, a powietrze nad polem zgęstniało i zafalowało jak woda nad rozgrzanym kamieniem.
Między kłosami stała kobieta. # pokaz: poludnica
Była wysoka i chuda, wyprostowana jak struna, w długiej białej koszuli do kostek, która falowała, choć nie wiał najlżejszy wiatr. Jasne włosy sięgały jej do kolan i rozwiewały się na boki, a na głowie miała wianek z kłosów i czerwonych maków. Twarz była blada i wąska, z wysokimi kośćmi policzkowymi, oczy białe jak migdały, bez źrenic, a usta zaciśnięte w cienką kreskę. Bose stopy nie dotykały ziemi – unosiła się kilka cali nad ściernią, a pod nią drgał żar. W prawej ręce trzymała sierp. Na jego czubku wisiała czerwona kropla.
Lewą dłoń wyciągnęła ku niemu, otwartą, jakby o coś prosiła.
– Kto w moją godzinę pracuje – powiedziała głosem suchym jak trzask słomy – ten musi mi odpowiedzieć. Trzy zagadki. Za każdą pomyłkę – jedno cięcie.
{ ekwipunek ? ksiega:
    Jaromirowi stanęła przed oczami strona z księgi pana Ignacego: „Południca chodzi po polach w największy skwar i wypytuje żniwiarzy. Kto odpowie na wszystkie – ten wolny. Kto się zmyli albo ucieknie – tego ścina sierpem albo zsyła na niego gorączkę”. Pod spodem nauczyciel dopisał drobniej kilka rozwiązań, które przed laty usłyszał od starej kobiety z Bukowca.
}
# dalej
-> zagadka_1

= zagadka_1
Przechyliła głowę na bok, jak ptak.
– Co bez nóg biega, bez rąk żyto zgina, a nikt go jeszcze nie zobaczył?
# pytanie: Co odpowie Jaromir?
*   [Wiatr.]
    Południca milczała przez chwilę. Potem jej usta drgnęły – nie był to uśmiech, raczej coś, co go przypominało.
    – Wiatr – powtórzyła. – Mój brat. Dobrze. # dalej
    -> zagadka_2
*   [Woda.]
    -> zle_1
*   [Cień.]
    -> zle_1

= zle_1
~ pomylki_poludnica += 1
Sierp świsnął, zanim Jaromir zdążył mrugnąć. Poczuł piekący ból na ramieniu, a kiedy spojrzał w dół, przez rozdartą koszulę sączyła się krew. # pokaz: ciecie
– Źle – powiedziała Południca. – Wiatr. Wiatr biega bez nóg. # dalej
-> zagadka_2

= zagadka_2
– Co się rodzi z ziemi, umiera pod kosą, a potem jeszcze raz rodzi się w piecu?
# pytanie: Co odpowie Jaromir?
*   [Chleb.]
    – Chleb – szepnęła, a jej biała twarz na moment złagodniała, jakby przypomniała sobie coś bardzo dawnego. – Mądry chłopak. # dalej
    -> zagadka_3
*   [Siano.]
    -> zle_2
*   [Ogień.]
    -> zle_2
*   { ekwipunek ? ksiega } [Ziarno – co raz umrze w ziemi, wraca kłosem, a w piecu chlebem.]
    ~ poludnica_uklon = true
    Południca otworzyła usta i zamknęła je bez słowa. Długo patrzyła na niego tymi białymi oczami, a potem pochyliła głowę – lekko, ledwie widocznie, jak przed kimś, kogo się szanuje. # pokaz: uklon
    – Takiej odpowiedzi nie słyszałam od stu lat – powiedziała. – Ktoś cię dobrze uczył. # dalej
    -> zagadka_3

= zle_2
~ pomylki_poludnica += 1
Sierp znów świsnął. Tym razem cięcie przeszło przez wierzch dłoni, płytko, ale krew trysnęła na ściernisko. # pokaz: ciecie
– Chleb – syknęła. – Każde dziecko to wie. # dalej
-> zagadka_3

= zagadka_3
Powietrze zafalowało mocniej. Żar podchodził Jaromirowi pod gardło, w uszach mu dzwoniło, a pole zaczęło się kołysać, jakby stał na łódce.
– A teraz powiedz mi – Południca zniżyła głos – kto liczy drzewa w lesie, choć nikt mu tego nie kazał?
# pytanie: Co odpowie Jaromir?
*   [Pan Lasu.]
    Wszystko ucichło jeszcze bardziej, choć wydawało się, że ciszej już być nie może. Cofnęła wyciągniętą rękę.
    – Znasz go – powiedziała, i po raz pierwszy w jej głosie zabrzmiało coś na kształt lęku. – To źle. Bo on też zna ciebie.
*   [Drwal.]
    ~ pomylki_poludnica += 1
    – Drwal? – Południca roześmiała się, sucho i nieprzyjemnie, jak trzeszczące ściernisko. – Drwale liczą pieniądze. On liczy drzewa. I ludzi. # pokaz: ciecie
*   [Nie wiem.]
    Południca długo milczała.
    – Wiesz – odezwała się w końcu. – Tylko boisz się powiedzieć. To rozsądne. Nie mów jego imienia w południe.
-   -> wynik

= wynik
{ pomylki_poludnica:
- 0:
    Południca opuściła sierp.
    – Jesteś wolny – powiedziała. – Ale słuchaj, bo drugi raz nie powtórzę. Pan Lasu się budzi. Dąb, który go trzymał, leży na placu u tego tłustego człowieka z miasta, a z każdym ściętym drzewem jego sen jest płytszy. Kiedy się obudzi, przyjdzie po swoje. Pilnuj kapliczek, chłopcze. Pilnuj ich, póki stoją.
- 1:
    Południca przyglądała mu się długo, a potem opuściła sierp.
    – Mogło być gorzej – powiedziała. – Idź. Ale zapamiętaj: Pan Lasu się budzi. Pilnuj kapliczek.
- else:
    Południca uniosła sierp wysoko, nad jego głowę. Chłopiec zamknął oczy – i wtedy usłyszał krzyk. # pokaz: zamach
}
Ktoś wbiegał na zagon, potykając się o snopy. Hanka. W rękach niosła gliniany dzban, z którego chlustała woda. # pokaz: dzban
– Jaromir! Jaromir, co ty robisz w samo południe?!
{ pomylki_poludnica < 2:
    ~ ostrzezenie_poludnicy = true
    Kiedy znów spojrzał przed siebie, między kłosami nie było nikogo. Tylko na ściernisku leżał wianek z kłosów i maków, które już zaczynały więdnąć. # pokaz: znika, wianek # dalej
    -> po_poludniu
- else:
    Zawahała się z uniesionym sierpem. Spojrzała na dziewczynę, potem na wodę lejącą się z dzbana na ściernisko – i rozwiała się w drżącym powietrzu jak para. Hanka dobiegła i wylała mu resztę wody na głowę. # pokaz: znika, woda # dalej
    -> goraczka
}

= goraczka
# tlo: goraczka
~ blizna_sierpa = true
Do wieczora trawiła go gorączka. Leżał w chałupie pod mokrymi szmatami, rany na ramieniu i dłoni piekły jak przypalone żelazem, a w majakach wciąż widział białe oczy bez źrenic i słyszał suchy szept: „Za każdą pomyłkę – jedno cięcie”. # pokaz: majaki
Matka czuwała przy nim trzy noce. Hanka przychodziła codziennie z ziołami od babki i siadywała przy łóżku, dopóki nie odesłano jej do domu. # pokaz: hanka
Kiedy wreszcie wstał, na ramieniu została mu cienka, biała blizna w kształcie półksiężyca, jakby od czubka sierpa.
-> czy_powiedziec

= po_poludniu
# tlo: czerwony_ksiezyc
~ zapiski += poludnica_1
~ mak_w_medaliku = true
Żeńcom nie powiedział, co się stało w samo południe. Tylko wieczorem, kiedy siedzieli z Hanką na płocie i patrzyli, jak nad ścierniskiem wschodzi wielki, czerwony księżyc, wyjął z kieszeni zasuszony mak z wianka i położył jej na dłoni. # pokaz: mak
Od ścierniska ciągnęło kurzem i wypalonym słońcem, świerszcze grały jak oszalałe, a Hanka siedziała tak blisko, że czuł przez koszulę ciepło jej ramienia.
– Od kogo to? – zapytała.
– Od kogoś, kto kazał pilnować kapliczek – powiedział.
Hanka nie zrozumiała, ale schowała mak do medalika, który nosiła na szyi, i nie wyjęła go już nigdy.
-> czy_powiedziec

= czy_powiedziec
# pytanie: Czy Jaromir powie ojcu?
*   [Powiedzieć ojcu o ostrzeżeniu Południcy.]
    ~ powiedzial_ojcu_poludnica = true
    # tlo: kapliczki_noc
    { figurka_u_staruchy:
        Ojciec wysłuchał go w milczeniu. Potem wstał, zdjął z gwoździa latarnię i wyszedł w noc. Wrócił nad ranem. Matka mówiła potem, że obszedł wszystkie kapliczki w Zapadlinie i przy każdej klęczał, jakby prosił o przebaczenie. # pokaz: ojciec # dalej
    - else:
        Ojciec nie roześmiał się. Długo milczał, a potem powiedział, że jutro zwoła ludzi i pójdą razem do Urbaniaka. – Kapliczek nie ruszy – dodał. – Choćby mi miał tartak na głowę zwalić. # pokaz: ojciec # dalej
    }
    -> rozdzial_szosty_ciag_dalszy
*   [Zachować to dla siebie.]
    # tlo: kapliczki_noc
    Jaromir nie powiedział nikomu. Każdej nocy, gdy wszyscy zasnęli, wymykał się z chałupy i obchodził najbliższe kapliczki. Poprawiał przekrzywione daszki, wyrywał chwasty, które oplatały słupy, i zawsze miał wrażenie, że z ciemnego boru ktoś na niego patrzy – cierpliwie, bez pośpiechu, jakby czekał. Wracał przemarznięty, z nogawkami mokrymi od rosy, i długo nie mógł zasnąć, wsłuchany w każdy szelest za oknem. # pokaz: jaromir # dalej
    -> rozdzial_szosty_ciag_dalszy


// Koniec rozdziału szóstego — dalej rozdział siódmy.
=== rozdzial_szosty_ciag_dalszy ===
# ozdobnik
~ zapiski += pan_lasu_3
_Koniec rozdziału szóstego._ # dalej
-> rozdzial_siodmy
