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
    -> rozdzial_trzeci_ciag_dalszy
*   { ekwipunek ? ksiega } [Zajrzeć do księgi pana Ignacego.]
    ~ rada_jaromira = ksiega_rada
    # tlo: izba_noc
    Tej nocy, przy żarzących się węglach, odszukał w księdze właściwą kartę. „Północnica – pisał pan Ignacy swoim pochyłym pismem – nawiedza niemowlęta po północy, pochyla się nad nimi i wysysa z nich sen i siły. Boi się żelaza, które trzeba położyć pod poduszką dziecka. Starzy ludzie powiadają też, że gdy rozsypać wokół kołyski garść maku, północnica musi policzyć każde ziarenko, nim podejdzie bliżej – a liczyć potrafi tylko do świtu”. # pokaz: ksiega
    Jaromir przeczytał to zdanie trzy razy. Potem długo leżał z otwartymi oczami i myślał o kimś, kto w głębi lasu liczy drzewa. # dalej
    -> rozdzial_trzeci_ciag_dalszy
*   [Zapytać ojca.]
    ~ rada_jaromira = ojciec
    # tlo: izba_noc
    { figurka_u_staruchy:
        Ojciec zbladł, kiedy usłyszał, o co syn pyta. Wstał od stołu, wyszedł do sieni i długo nie wracał. Gdy wreszcie stanął w drzwiach, powiedział tylko: – Żelazo. Pod poduszkę. I nikomu ani słowa, rozumiesz? # pokaz: ojciec # dalej
    - else:
        Ojciec roześmiał się i potargał mu włosy. – Twój dziadek Maciek mawiał, że na każde licho najlepsze jest żelazo pod poduszką – powiedział. – Ale to bajki, synu. Mała ma kolki i tyle. – Mimo to tej nocy Jaromir widział, jak wsuwa mu pod siennik stary gwóźdź. # pokaz: ojciec # dalej
    }
    -> rozdzial_trzeci_ciag_dalszy

// Kolejne strony rozdziału — do napisania (autor przysyła je po redakcji).
=== rozdzial_trzeci_ciag_dalszy ===
# ozdobnik
_Ciąg dalszy nastąpi…_
-> END
