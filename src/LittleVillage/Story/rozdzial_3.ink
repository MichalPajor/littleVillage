// ------------------------------------------------------------
//  Rozdział trzeci — Wigilia. Zima, Jaromir ma dziewięć lat.
//  Nocnica nawiedza Zosię, siostrzyczkę Antka; dziad proszalny
//  w wigilijny wieczór; szczeniak z rodu psa dziadka Maćka.
//  Ojciec jak w rozdziałach 1–2:
//    figurka_u_staruchy — milczący, nieufny;
//    inaczej            — pogodny, sam nie umie czytać.
// ------------------------------------------------------------

=== rozdzial_trzeci ===
# tlo: roraty
# rozdzial: Rozdział trzeci
# tytul: Wigilia
W pierwszym tygodniu grudnia mróz ściął jezioro tak mocno, że chłopi wyjeżdżali na lód saniami, a mokradła, przez które latem nikt przy zdrowych zmysłach nie chodził na skróty, zamieniły się w białą, równą płachtę. Śnieg skrzypiał pod butami, nocami trzaskały belki w ścianach, a rano szyby pokrywały się szronem w kształcie paproci.
Był adwent. Co dzień, jeszcze po ciemku, dzieci szły do Bukowca na roraty, a z kościółka prosto do szkoły, która stała tuż obok. Każde niosło własny lampion – Jaromirowi ojciec skleił go z drewnianych listewek i natłuszczonego papieru, a wewnątrz tlił się łojowy ogarek. Na ścieżce pod borem ich płomyki kołysały się jak błędne ognie, a między świerkami panowała czerń tak gęsta, że światło grzęzło w niej po kilku krokach.
{ zawolal_do_lasu:
    Jaromir szedł zawsze w środku i nie odwracał głowy w stronę drzew. Od tamtego ranka we mgle nie mógł się pozbyć wrażenia, że ktoś zna teraz jego głos.
- else:
    Jaromir szedł zawsze w środku i starał się nie odwracać głowy w stronę drzew.
}
Antek coraz częściej zostawał w tyle. W październiku urodziła mu się siostrzyczka, Zosia, i od tamtej pory w chałupie Stasiowych nikt nie przespał całej nocy. Mała płakała do świtu, a gdy akurat milkła, matka i tak czuwała nad kołyską, bo cisza przerażała ją bardziej niż krzyk. Chłopiec przychodził na roraty z podkrążonymi oczami, a na lekcjach przysypiał nad tabliczką i pan Ignacy czasem musiał go budzić. # pokaz: antek # dalej
-> antek_prosi


= antek_prosi
# tlo: przerwa_sniezki
{ obrona_antka:
- stanal:
    Na przerwie, gdy reszta obrzucała się śnieżkami pod kościółkiem, Antek sam podszedł do Jaromira. Od dnia, w którym ten stanął w jego obronie, nie miał przed nim tajemnic.
- poskarzyl:
    Na przerwie, gdy reszta obrzucała się śnieżkami pod kościółkiem, Antek długo krążył wokół Jaromira, zanim się odezwał. Może pamiętał, że to on pobiegł wtedy po pana Ignacego, a może po prostu nie miał już do kogo pójść.
- else:
    Na przerwie, gdy reszta obrzucała się śnieżkami pod kościółkiem, Hanka przyprowadziła do Jaromira Antka niemal siłą. Chłopiec nie odzywał się do niego od dnia, w którym Bartek roztrzaskał mu tabliczkę, i teraz też patrzył gdzieś w bok. # pokaz: hanka
}
– Coś przychodzi do Zosi – powiedział cicho. – Po północy. Najpierw robi się zimno, a potem w izbie coś szeleści, jak suche liście. Raz otworzyłem oczy i zobaczyłem nad kołyską coś jasnego, wysokiego… i włosy, czarne, aż do podłogi. Więcej nie patrzyłem. – Przełknął ślinę. – A Zosia wtedy nie płacze. Tylko świszcze, jakby nie mogła złapać tchu. Rano jest biała jak ściana i nie chce jeść.
Mówił szybko, połykając słowa, i co chwilę oglądał się przez ramię. Śnieżka, którą przez cały czas ugniatał w dłoniach, rozsypała mu się między palcami.
– Mówiłeś mamie?
– Mówi, że mi się śni. Że jestem zmęczony. – Antek przełknął ślinę. – Ale ja nie śpię. Ja to słyszę co noc.
Jaromirowi przypomniały się piątkowe opowieści pana Ignacego i zrobiło mu się zimno, choć słońce odbijało się od śniegu tak jasno, że bolały oczy.
– Przyjdę w Wigilię – obiecał. – Kiedy wszyscy zasną. Ale najpierw muszę się dowiedzieć, jak to przegonić.
# pytanie: U kogo Jaromir będzie szukał rady?
*   [Zapytać Hankę – zna babcine sposoby na wszystko.]
    ~ rada_jaromira = hanka
    Hanka wysłuchała go, marszcząc brwi, i długo milczała. # pokaz: hanka
    – Babka mówiła, że to północnica – odezwała się w końcu. – Dusza matki, która umarła przy porodzie, zanim ksiądz zdążył ją wywieść. Swojego dziecka nie utuliła, więc chodzi do cudzych. Przychodzi do maleńkich, bo te nie umieją się bronić. Boi się żelaza. Pod poduszkę w kołysce wsuwa się nóż, nożyce, choćby gwóźdź. – Zawahała się. – Tylko podobno robi się to dopiero wtedy, kiedy ona już pochyla się nad dzieckiem. Wcześniej nie podejdzie. # dalej
    -> wigilia
*   { ekwipunek ? ksiega } [Zajrzeć do księgi pana Ignacego.]
    ~ rada_jaromira = ksiega_rada
    # tlo: izba_noc
    Tej nocy, przy żarzących się węglach, odszukał w księdze właściwą kartę. „Północnica – pisał pan Ignacy swoim pochyłym pismem – nawiedza niemowlęta po północy, pochyla się nad nimi i wysysa z nich sen i siły. Boi się żelaza, które trzeba położyć pod poduszką dziecka. Starzy ludzie powiadają też, że gdy rozsypać wokół kołyski garść maku, północnica musi policzyć każde ziarenko, nim podejdzie bliżej – a liczyć potrafi tylko do świtu”. # pokaz: ksiega
    ~ czytal_po_zmroku = true
    Jaromir przeczytał to zdanie trzy razy. Potem długo leżał z otwartymi oczami i myślał o głosie, który we mgle pod borem liczył coś, czego nie było widać.
    Rano, kiedy otworzył księgę przy oknie, na karcie o północnicy znalazł długi, czarny włos. Wieczorem go tam nie było. # dalej
    -> wigilia
*   [Zapytać ojca.]
    ~ rada_jaromira = ojciec
    # tlo: izba_noc
    { figurka_u_staruchy:
        Ojciec zbladł, kiedy usłyszał, o co syn pyta. Wstał od stołu, wyszedł do sieni i długo nie wracał. Gdy wreszcie stanął w drzwiach, powiedział tylko: – Żelazo. Pod poduszkę. I nikomu ani słowa, rozumiesz? # pokaz: ojciec # dalej
    - else:
        Ojciec roześmiał się i potargał mu włosy. – Twój dziadek Maciek mawiał, że na każde licho najlepsze jest żelazo pod poduszką – powiedział. – Ale to bajki, synu. Mała ma kolki i tyle. – Mimo to tej nocy Jaromir widział, jak wsuwa mu pod siennik stary gwóźdź. # pokaz: ojciec # dalej
    }
    -> wigilia

= wigilia
# tlo: wigilia
~ zapiski += polnocnica_1
{ ekwipunek ? ksiega:
    ~ ksiega_zatrzymana = true
    W ostatni dzień przed świętami Jaromir przyniósł do szkoły księgę, owiniętą w lnianą chustkę. Pan Ignacy wziął ją, zważył w dłoniach i oddał. – Zatrzymaj ją – powiedział. – Coś mi mówi, że tobie przyda się bardziej niż mnie. Tylko pamiętaj: nie po zmroku.{ czytal_po_zmroku: Jaromir spuścił oczy. Pan Ignacy przyglądał mu się chwilę dłużej, niż trzeba, ale o nic nie zapytał.}
- else:
    W ostatni dzień przed świętami pan Ignacy rozdał dzieciom po kawałku piernika i życzył wszystkim zdrowych świąt. Na Jaromira patrzył przy tym dłużej niż na innych, jakby chciał o coś zapytać, ale w końcu tylko skinął mu głową.
}
Od rana w chałupie pachniało grzybami, kapustą i makiem. Matka ucierała mak w makutrze, aż drewniany wałek śpiewał o gliniane ścianki, ojciec przyniósł z pola snopek żyta i postawił go w kącie, a pod obrus wsunięto garść siana. Przy ławie stało jedno nakrycie więcej – dla wędrowca, gdyby zapukał, i dla tych, którzy odeszli, a tej nocy mogli wrócić. Jaromir od południa wyglądał przez okno pierwszej gwiazdki. Zapaliła się nad borem, maleńka i zimna. # pokaz: gwiazdka
Ledwie przełamali się opłatkiem, ktoś zapukał do drzwi.
Na progu stał dziad – zgarbiony, w łachmanach przewiązanych sznurkiem, z torbą przez ramię i lirą na plecach. Broda zamarzła mu w sople, a oczy miał blade jak mleko, jakby od dawna nic nimi nie widział. # pokaz: dziad
– Niech będzie pochwalony – zachrypiał. – Przyjmiecie starego do wieczerzy?
{ figurka_u_staruchy:
    Ojciec nie odpowiedział. Stał z ręką na ryglu i patrzył to na przybysza, to na puste nakrycie, a potem odwrócił się do syna, jakby czekał, co ten powie.
- else:
    – Na wieki – odparł Dobrosław, ale zawahał się z ręką na klamce. Zerknął na syna, który pierwszy podbiegł do drzwi. – Mój ojciec mawiał, że w Wigilię nie odprawia się nikogo od progu. Co ty na to?
}
# pytanie: Czy dziad zostanie na wieczerzy?
*   [Poprosić ojca, żeby go wpuścił.]
    ~ wpuscil_dziada = true
    Dziad usiadł przy pustym nakryciu i jadł niewiele, za to powoli, jakby każdą łyżkę chciał zapamiętać. Potem zdjął z pleców lirę i zaśpiewał starą pieśń o duszach, które w tę jedną noc wracają do swoich chałup i grzeją ręce przy cudzym ogniu. Matka ocierała oczy fartuchem. # pokaz: lira
    Wychodząc, przystanął obok Jaromira i pochylił się nad nim tak nisko, że w nos uderzył go zapach dymu i mrozu.
    – Pachniesz lasem, chłopcze – szepnął. – Jak przyjdzie do maleńkiej, nie odzywaj się do niej. Ani słowem.
    Zanim ktokolwiek zdążył zapytać, o co mu chodzi, był już za progiem. Noc była jasna od śniegu, a jednak nikt nie zobaczył, w którą stronę odszedł. – W Wigilię nie odprawia się dziadów od progu – szepnęła matka, zbierając ze stołu jego miskę. – Nigdy nie wiadomo, kto przyszedł. Czasem to dusza kogoś z rodziny wraca w przebraniu, żeby zobaczyć, czy jeszcze ją pamiętają. # pokaz: odszedl # dalej
    -> po_wieczerzy
*   [Nic nie mówić – starzec budzi w nim lęk.]
    Jaromir spuścił wzrok. Drzwi zamknęły się powoli i szczęknął rygiel. Dziad nie zapukał drugi raz. # pokaz: rygiel
    Przez szparę w okiennicy chłopiec widział, jak przybysz brnie przez śnieg – nie w stronę wsi, lecz prosto ku borowi. W połowie pola zawiał wiatr i podniósł z zasp białą kurzawę. Kiedy opadła, na polu nie było nikogo. # dalej
    -> po_wieczerzy

= po_wieczerzy
~ zapiski += dziad_1
{ los_psa == oswojony: -> wigilijny_szczeniak | -> noc_w_sniegu }

= wigilijny_szczeniak
# tlo: wigilia_szczeniak
Po wieczerzy przyszedł stary Staś. Usiadł ciężko na ławie i rozchylił kożuch, pod którym coś się wierciło i popiskiwało.
– Twój dziadek miał psa, jakiego drugiego nie było w okolicy – powiedział do Jaromira. – {pies_uratowal:Wyciągnął dziadka z bagna za sukmanę, kiedy coś wołało go znad wody – sam mi to mówił. }Kiedy przyszła na niego pora, po wsi rozeszły się jego szczenięta, a jedno trafiło do mojego ojca. Od tamtej pory w naszej zagrodzie zawsze biegał któryś z jego wnuków albo prawnuków. – Wyciągnął spod kożucha kłębek sierści. – A suka oszczeniła się w adwencie. Ten jest najodważniejszy z miotu. Należy ci się.
Szczeniak miał sterczące, spiczaste uszy, białą łatę na piersi i łapy za duże do reszty ciała. Obwąchał chłopcu palce, kichnął i bez namysłu wgramolił mu się na kolana, jakby od zawsze było to jego miejsce. # pokaz: pies
{ figurka_u_staruchy:
    Babka Marianna wyciągnęła ku niemu drżącą rękę i długo nie mogła wydobyć z siebie głosu.
}
# pytanie: Jak Jaromir go nazwie?
*   [Burek.]
    ~ imie_psa = "Burek"
*   [Łapek.]
    ~ imie_psa = "Łapek"
*   [Grom.]
    ~ imie_psa = "Grom"
-   ~ ekwipunek += szczeniak
    – {imie_psa} – powtórzył Staś i pokiwał głową. – Dobre imię. Maciek by się ucieszył.
    Szczeniak spał potem w nogach jego posłania i co jakiś czas warczał przez sen w stronę okna. # dalej
    -> noc_w_sniegu

= noc_w_sniegu
# tlo: noc_snieg
Na pasterkę do Bukowca tego roku nikt nie poszedł – mróz był zbyt siarczysty, a ścieżka przez grzbiet zasypana po kolana. Wszyscy położyli się wcześnie.
{ rada_jaromira == ksiega_rada:
    ~ ekwipunek += mak
}
Jaromir leżał bez ruchu, dopóki z izby nie dobiegło równe chrapanie ojca. Potem ubrał się po ciemku, wsunął za pazuchę nożyk{ ekwipunek ? mak:, a do kieszeni szmatkę z garścią maku, którą wieczorem podebrał z misy, pamiętając, co wyczytał w księdze pana Ignacego,} i wymknął się do sieni.{ ekwipunek ? szczeniak: Szczeniak uniósł łeb, ale nie zaskomlał, jakby rozumiał, że teraz trzeba być cicho.}
Świat był srebrny od księżyca. Śnieg skrzył się na polach, każda gałąź rzucała ostry, czarny cień, a mróz szczypał w policzki tak, że łzawiły oczy. { figurka_u_staruchy: Do zagrody Stasiowych było ledwie kilkadziesiąt kroków, ale ścieżka wiodła na przełaj przez pole, nad którym snuła się nisko mgła, choć niebo było czyste, a ciemna kreska boru wydawała się nocą bliższa niż za dnia. | Do chałupy Stasiowych było niedaleko, ale ścieżka biegła skrajem boru, a bór o tej porze stał głuchy i nieruchomy. }
W połowie drogi ktoś go zawołał.
– Jaromir!
Głos dobiegał {figurka_u_staruchy:z mgły nad polem|spomiędzy drzew}. Ciepły, łagodny, znajomy – głos matki.
– Synku, chodź do mnie. Zimno mi. Zgubiłam się.
Jaromir stanął jak wryty. Matka spała przecież w domu, przykryta pierzyną aż po brodę. Widział ją, kiedy wychodził.
# pytanie: Co zrobi Jaromir?
*   [Odpowiedzieć.]
    ~ glos_w_lesie = odpowiedzial
    – Mamo? – wyrwało mu się, zanim zdążył pomyśleć.
    { zawolal_do_lasu:
        {figurka_u_staruchy:We mgle|Między drzewami} coś się zaśmiało – nisko, cicho, wcale nie głosem matki. A potem ten sam spokojny głos, który słyszał kiedyś we mgle, powiedział: – Znowu ty. Policzę cię, kiedy przyjdzie pora. # pokaz: oczy
    - else:
        {figurka_u_staruchy:We mgle|Między drzewami} coś się zaśmiało – nisko, cicho, wcale nie głosem matki. A potem, gdzieś w głębi, ktoś zaczął spokojnie liczyć: – …pięćset jeden… pięćset dwa… # pokaz: oczy
    }
    Jaromir puścił się biegiem i nie zatrzymał się aż pod oknem Stasiowych. # pokaz: bieg # dalej
    -> kolyska
*   [Wywrócić kożuch na lewą stronę, jak mówił pan Ignacy.]
    ~ glos_w_lesie = kozuch
    Drżącymi palcami rozwiązał pas, zrzucił kożuch i włożył go z powrotem, włosiem na wierzch. Ledwie skończył, głos umilkł.
    Przez chwilę panowała cisza. Potem rozległy się kroki – ciężkie, powolne, tak długie, jakby stawiał je ktoś bardzo wysoki. Przeszedł tuż obok. Jaromir czuł na twarzy jego zimny oddech, który pachniał żywicą i zgnilizną, ale tamten go nie zauważył. # pokaz: kroki
    – Gdzie jesteś? – dobiegło już z daleka, tonem rozczarowanego dziecka, któremu ktoś schował zabawkę. # dalej
    -> kolyska
*   [Puścić się biegiem.]
    ~ glos_w_lesie = ucieczka
    Pobiegł, ile sił w nogach. Śnieg sypał mu się do cholewek, dwa razy upadł i dwa razy się zerwał, a głos matki gonił go w ciemności, coraz bliżej i coraz bardziej płaczliwy. Umilkł dopiero wtedy, gdy chłopiec dopadł płotu Stasiowych. Dyszał tak, że w piersi kłuło go jak nożem. # pokaz: bieg # dalej
    -> kolyska

= kolyska
# tlo: kolyska
Antek czekał przy oknie i otworzył je, zanim Jaromir zdążył zastukać. W izbie było ciepło i ciemno. Na piecu chrapał jego ojciec, w kącie spał Franek, a matka, wyczerpana kolejnymi nieprzespanymi nocami, zasnęła na zydlu z głową opartą o kołyskę. Zosia oddychała szybko i płytko.
Usiedli na podłodze pod ścianą, skąd mieli wszystko na oku. Księżyc wpadał do izby długim, srebrnym pasem. Długo nic się nie działo. Minęła północ, Jaromirowi kleiły się powieki, a Antek dwa razy przysnął mu na ramieniu.
Potem zrobiło się zimno.
Pas światła przygasł, jakby ktoś zasłonił okno. Nad podłogą zaczęła się snuć mgła, a z niej wyrosła postać – wysoka, w całunie postrzępionym u dołu, z czarnymi włosami spływającymi aż do ziemi. Unosiła się nad deskami, nie dotykając ich stopami. Twarz miała chudą jak trupia czaszka, oczy wielkie i okrągłe, a w rozchylonych ustach błyszczały drobne, ostre zęby. Pochyliła się nad Zosią i wyciągnęła w dół długie, patykowate palce zakończone pazurami. # pokaz: polnocnica
Mała zaczęła świszczeć.
Antek wbił Jaromirowi paznokcie w ramię tak mocno, że ten omal nie krzyknął.
# pytanie: Co zrobi Jaromir?
*   [Wsunąć nożyk pod poduszkę w kołysce.]
    ~ polnocnica = przegnana_nozem
    ~ ekwipunek -= nozyk
    Jaromir podpełzł do kołyski na czworakach. Północnica odwróciła ku niemu głowę – oczy miała jak dwie czarne studnie z jasnym punktem na dnie – i syknęła. Chłopiec przełknął strach, wsunął rękę pod poduszkę tuż pod jej szponami i zostawił tam nożyk.
    Szarpnęła się, jakby dotknęła rozżarzonego żelaza. Bezgłośnie rozwarła usta, uniosła się pod samą powałę i zawisła tam, wpatrzona w nich obu, a jej włosy falowały, choć w izbie nie było przeciągu. # pokaz: odlot, noz
    Trwała tak do pierwszego kura. Kiedy w obórce zapiał kogut, już jej nie było. # pokaz: kogut
    Nad ranem Jaromir sięgnął po nożyk, ale się rozmyślił.
    – Niech zostanie u niej – szepnął do Antka. – Na wszelki wypadek. # dalej
    -> boze_narodzenie
*   { ekwipunek ? mak } [Rozsypać mak wokół kołyski.]
    ~ polnocnica = policzyla_mak
    ~ ekwipunek -= mak
    Jaromir wyjął z kieszeni szmatkę i drżącą ręką rozsypał mak dookoła kołyski. Ziarenka zastukały o podłogę jak drobny deszcz.
    Północnica zamarła. Powoli, bardzo powoli opadła niżej, aż jej całun rozlał się po deskach jak mgła, zawisła nad najbliższym z nich i dotknęła go pazurem. # pokaz: odlot, mak
    – Jedno – zaszeptała głosem jak szelest zeschłych liści. – Dwa… trzy…
    Liczyła całą noc. Chłopcy siedzieli pod ścianą, nie śmiejąc się poruszyć, a ona sunęła po izbie, ziarenko po ziarenku, i szeptała coraz szybciej, coraz bardziej gniewnie. Doszła do kilku tysięcy, kiedy w obórce zapiał kogut. Wtedy wrzasnęła tak przenikliwie, że Jaromirowi zadzwoniło w uszach – i zniknęła, jakby nigdy jej tu nie było. Nikt poza nimi dwoma tego krzyku nie usłyszał. # pokaz: kogut # dalej
    -> boze_narodzenie
*   [Krzyknąć i obudzić dorosłych.]
    ~ polnocnica = uslyszala_krzyk
    – Ratunku! – wrzasnął Jaromir{ wpuscil_dziada:, choć zaraz przypomniał sobie, co szeptał mu dziad przy wigilijnym stole}.
    Północnica odwróciła się do niego. Przez jedno mgnienie patrzyła mu prosto w oczy, a potem rozpłynęła się w ciemności jak dym. Matka Antka zerwała się z krzykiem, ojciec spadł z pieca, ktoś zapalił łuczywo. W kołysce nie było niczego oprócz bladej, ledwie oddychającej Zosi. # pokaz: odlot, krzyk
    O świcie Jaromira odprowadzono do domu, gdzie dostał porządne lanie. A północnica przez kolejne noce wracała. # pokaz: kogut # dalej
    -> boze_narodzenie

= boze_narodzenie
~ zapiski += polnocnica_2
// Mak był potrzebny tylko na tę jedną noc.
~ ekwipunek -= mak
# tlo: koledy
{ polnocnica:
- przegnana_nozem:
    Rano Zosia spała spokojnie, różowa jak jabłuszko, i po raz pierwszy od tygodni jadła tak łapczywie, że matka rozpłakała się ze szczęścia. Nikt nie wiedział, skąd w kołysce wziął się nożyk. Obejrzała go, przeżegnała się i schowała z powrotem pod poduszkę.
- policzyla_mak:
    Rano Zosia spała spokojnie, różowa jak jabłuszko, i po raz pierwszy od tygodni jadła tak łapczywie, że matka rozpłakała się ze szczęścia. Po maku nie było śladu – ani jednego ziarenka, choć chłopcy przeszukali każdą szparę w podłodze.
- else:
    Zosia słabła z każdym dniem. Dopiero w Trzech Króli stary Staś, który wysłuchał wnuka bez śmiechu, położył pod kołyską zardzewiały sierp. Mała przeżyła, ale już zawsze była chorowita i blada, a na jej czole została drobna, szara plamka, jakby od dotyku brudnego palca.
}
{ polnocnica == uslyszala_krzyk:
    Antek nie miał do niego żalu. Mówił, że przynajmniej ktoś mu uwierzył – i to więcej, niż mógł powiedzieć o dorosłych.
- else:
    Od tamtej nocy Antek nie zostawał już w tyle. Do szkoły chodził odtąd obok Jaromira, a kiedy ktoś pytał, czemu tak się go trzyma, wzruszał tylko ramionami i uśmiechał się pod nosem.
}
Przyszły święta. Kolędnicy chodzili od chałupy do chałupy z papierową gwiazdą, która kręciła się na kiju, a turoń kłapał drewnianą paszczą, aż dziewczęta piszczały. Na kulig po zamarzniętym jeziorze Staś zaprzągł dwa konie; sanie sunęły tak szybko, że mróz szczypał w policzki, dzwonki brzęczały, a spod płóz pryskał śnieg. Jaromir śmiał się razem z innymi, ale nocami, zanim zasnął, wsłuchiwał się w ciszę za oknem. # pokaz: kulig
Kiedy opowiedział o wszystkim Hance, dziewczynka spoważniała i długo milczała. # pokaz: hanka
– Babka mówi, że północnica nigdy nie przychodzi sama z siebie – powiedziała w końcu. – Ktoś musi jej wskazać drogę. # dalej
-> rozdzial_trzeci_ciag_dalszy


// Koniec rozdziału trzeciego — dalej rozdział czwarty.
=== rozdzial_trzeci_ciag_dalszy ===
# ozdobnik
_Koniec rozdziału trzeciego._ # dalej
-> rozdzial_czwarty
