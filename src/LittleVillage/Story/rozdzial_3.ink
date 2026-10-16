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
Zima przyszła na dobre w pierwszym tygodniu grudnia. Mróz ściął jezioro tak mocno, że chłopi wyjeżdżali na lód saniami, a mokradła, przez które latem nikt przy zdrowych zmysłach nie chodził na skróty, zamieniły się w białą, równą płachtę. Śnieg skrzypiał pod butami, nocami trzaskały belki w ścianach, a rano szyby pokrywały się szronem w kształcie paproci.
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
– Coś przychodzi do Zosi – powiedział cicho. – Po północy. Unosi się nad kołyską, wysokie, owinięte w coś jak całun, a czarne włosy sięgają mu do samej podłogi. Twarz ma jak trupia czaszka, a palce długie i cienkie jak patyki. Pochyla się nad nią i… i wtedy ona nie płacze. Tylko świszcze, jakby nie mogła złapać tchu. A rano jest biała jak ściana i nie chce jeść.
– Mówiłeś mamie?
– Mówi, że mi się śni. Że jestem zmęczony. – Antek przełknął ślinę. – Ale ja nie śpię. Ja to widzę co noc.
Jaromirowi przypomniały się piątkowe opowieści pana Ignacego i zrobiło mu się zimno, choć słońce odbijało się od śniegu tak jasno, że bolały oczy.
– Przyjdę w Wigilię – obiecał. – Kiedy wszyscy zasną. Ale najpierw muszę się dowiedzieć, jak to przegonić.
# pytanie: U kogo Jaromir będzie szukał rady?
*   [Zapytać Hankę – zna babcine sposoby na wszystko.]
    ~ rada_jaromira = hanka
    Hanka wysłuchała go, marszcząc brwi, i długo milczała. # pokaz: hanka
    – Babka mówiła, że to północnica – odezwała się w końcu. – Przychodzi do maleńkich, bo te nie umieją się bronić. Boi się żelaza. Pod poduszkę w kołysce wsuwa się nóż, nożyce, choćby gwóźdź. – Zawahała się. – Tylko podobno robi się to dopiero wtedy, kiedy ona już pochyla się nad dzieckiem. Wcześniej nie podejdzie. # dalej
    -> wigilia
*   { ekwipunek ? ksiega } [Zajrzeć do księgi pana Ignacego.]
    ~ rada_jaromira = ksiega_rada
    # tlo: izba_noc
    Tej nocy, przy żarzących się węglach, odszukał w księdze właściwą kartę. „Północnica – pisał pan Ignacy swoim pochyłym pismem – nawiedza niemowlęta po północy, pochyla się nad nimi i wysysa z nich sen i siły. Boi się żelaza, które trzeba położyć pod poduszką dziecka. Starzy ludzie powiadają też, że gdy rozsypać wokół kołyski garść maku, północnica musi policzyć każde ziarenko, nim podejdzie bliżej – a liczyć potrafi tylko do świtu”. # pokaz: ksiega
    Jaromir przeczytał to zdanie trzy razy. Potem długo leżał z otwartymi oczami i myślał o kimś, kto w głębi lasu liczy drzewa. # dalej
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
{ ekwipunek ? ksiega:
    ~ ksiega_zatrzymana = true
    W ostatni dzień przed świętami Jaromir przyniósł do szkoły księgę, owiniętą w lnianą chustkę. Pan Ignacy wziął ją, zważył w dłoniach i oddał. – Zatrzymaj ją – powiedział. – Coś mi mówi, że tobie przyda się bardziej niż mnie. Tylko pamiętaj: nie po zmroku.
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
    Zanim ktokolwiek zdążył zapytać, o co mu chodzi, był już za progiem. Noc była jasna od śniegu, a jednak nikt nie zobaczył, w którą stronę odszedł. # pokaz: odszedl # dalej
    -> po_wieczerzy
*   [Nic nie mówić – starzec budzi w nim lęk.]
    Jaromir spuścił wzrok. Drzwi zamknęły się powoli i szczęknął rygiel. Dziad nie zapukał drugi raz. # pokaz: rygiel
    Przez szparę w okiennicy chłopiec widział, jak przybysz brnie przez śnieg – nie w stronę wsi, lecz prosto ku borowi. Rano, kiedy ojciec wyszedł do obory, przyniósł dziwną wiadomość: ślady starca urywały się w połowie pola, jakby ten rozpłynął się w powietrzu. # dalej
    -> po_wieczerzy

= po_wieczerzy
{ los_psa == oswojony: -> wigilijny_szczeniak | -> noc_w_sniegu }

= wigilijny_szczeniak
# tlo: wigilia_szczeniak
Po wieczerzy przyszedł stary Staś. Usiadł ciężko na ławie i rozchylił kożuch, pod którym coś się wierciło i popiskiwało.
– Twój dziadek miał psa, jakiego drugiego nie było w okolicy – powiedział do Jaromira. – Kiedy przyszła na niego pora, po wsi rozeszły się jego szczenięta, a jedno trafiło do mojego ojca. Od tamtej pory w naszej zagrodzie zawsze biegał któryś z jego wnuków albo prawnuków. – Wyciągnął spod kożucha kłębek sierści. – A suka oszczeniła się w adwencie. Ten jest najodważniejszy z miotu. Należy ci się.
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
Świat był srebrny od księżyca. Śnieg skrzył się na polach, każda gałąź rzucała ostry, czarny cień, a mróz szczypał w policzki tak, że łzawiły oczy. { figurka_u_staruchy: Do zagrody Stasiowych było ledwie kilkadziesiąt kroków, ale ścieżka wiodła na przełaj przez pole, a stamtąd ciemna kreska boru wydawała się nocą bliższa niż za dnia. | Do chałupy Stasiowych było niedaleko, ale ścieżka biegła skrajem boru, a bór o tej porze stał głuchy i nieruchomy. }
W połowie drogi ktoś go zawołał.
– Jaromir!
Głos dobiegał spomiędzy drzew. Ciepły, łagodny, znajomy – głos matki.
– Synku, chodź do mnie. Zimno mi. Zgubiłam się.
Jaromir stanął jak wryty. Matka spała przecież w domu, przykryta pierzyną aż po brodę. Widział ją, kiedy wychodził.
# pytanie: Co zrobi Jaromir?
*   [Odpowiedzieć.]
    ~ glos_w_lesie = odpowiedzial
    – Mamo? – wyrwało mu się, zanim zdążył pomyśleć.
    { zawolal_do_lasu:
        Między drzewami coś się zaśmiało – nisko, cicho, wcale nie głosem matki. A potem ten sam spokojny głos, który słyszał kiedyś we mgle, powiedział: – Znowu ty. Policzę cię, kiedy przyjdzie pora. # pokaz: oczy
    - else:
        Między drzewami coś się zaśmiało – nisko, cicho, wcale nie głosem matki. A potem, gdzieś w głębi, ktoś zaczął spokojnie liczyć: – …pięćset jeden… pięćset dwa… # pokaz: oczy
    }
    Jaromir puścił się biegiem i nie zatrzymał się aż pod oknem Stasiowych. # pokaz: bieg # dalej
    -> rozdzial_trzeci_ciag_dalszy
*   [Wywrócić kożuch na lewą stronę, jak mówił pan Ignacy.]
    ~ glos_w_lesie = kozuch
    Drżącymi palcami rozwiązał pas, zrzucił kożuch i włożył go z powrotem, włosiem na wierzch. Ledwie skończył, głos umilkł.
    Przez chwilę panowała cisza. Potem rozległy się kroki – ciężkie, powolne, tak długie, jakby stawiał je ktoś bardzo wysoki. Przeszedł tuż obok. Jaromir czuł na twarzy jego zimny oddech, który pachniał żywicą i zgnilizną, ale tamten go nie zauważył. # pokaz: kroki
    – Gdzie jesteś? – dobiegło już z daleka, tonem rozczarowanego dziecka, któremu ktoś schował zabawkę. # dalej
    -> rozdzial_trzeci_ciag_dalszy
*   [Puścić się biegiem.]
    ~ glos_w_lesie = ucieczka
    Pobiegł, ile sił w nogach. Śnieg sypał mu się do cholewek, dwa razy upadł i dwa razy się zerwał, a głos matki gonił go w ciemności, coraz bliżej i coraz bardziej płaczliwy. Umilkł dopiero wtedy, gdy chłopiec dopadł płotu Stasiowych. Dyszał tak, że w piersi kłuło go jak nożem. # pokaz: bieg # dalej
    -> rozdzial_trzeci_ciag_dalszy

// Kolejne strony rozdziału — do napisania (autor przysyła je po redakcji).
=== rozdzial_trzeci_ciag_dalszy ===
# ozdobnik
_Ciąg dalszy nastąpi…_
-> END
