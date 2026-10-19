// ------------------------------------------------------------
//  Rozdział dziesiąty — Narodziny (mamuny). Pierwsza zima po weselu,
//  Gromniczna (gromnica), przestrogi babki Hanki, narodziny Marysi pod
//  koniec sierpnia (Jaromir ma dwadzieścia lat). Ochrona kołyski:
//  wstążka, siekiera dziadka albo gromnica. Trzecia noc: mamuny —
//  zasłonić kołyskę, zawołać Hankę (z krzyżykiem kowala budzi się)
//  albo pogonić je siekierą. Podmiana: skorupki z księgą odwracają ją
//  od razu, rozstaje i chrzest odmieńca prowadzą nad jezioro, gdzie
//  trzeba zapłacić: skarbem z dzieciństwa, darem świętojańskim albo
//  własnymi latami. Skarb może trafić do kołyski Marysi.
// ------------------------------------------------------------

=== rozdzial_dziesiaty ===
# tlo: izba_zimowa
# rozdzial: Rozdział dziesiąty
# tytul: Narodziny
Hanka wprowadziła się do nowej izby z jednym kufrem, dwiema pierzynami i kołowrotkiem po matce. Już po tygodniu matka Jaromira mówiła o niej „nasza Hanka”, a po miesiącu przestała sprawdzać, czy synowa dobrze zaczyniła chleb.
Zima przyszła wczesna i mroźna. Wieczorami Hanka przędła przy piecu, ojciec łatał uprząż, a Jaromir strugał z lipowego klocka łyżki na jarmark. Czasem w nocy budził go odległy skowyt od strony boru. Wtedy wstawał, podchodził do okna i długo patrzył na białe pole – ale nigdy niczego nie zobaczył. # pokaz: skowyt
Na Gromniczną, drugiego lutego, pojechali saniami do Bukowca. Matka uparła się, żeby kupili gromnicę – grubą, woskową świecę, którą ksiądz święcił tego dnia przed ołtarzem.
~ ekwipunek += gromnica
– W każdym domu musi być gromnica – powiedziała. – Na burzę, na poród i na śmierć. # pokaz: gromnica
Hanka zaczerwieniła się po same uszy, a Jaromir dopiero w drodze powrotnej zrozumiał dlaczego. Kiedy sanie wjechały między pierwsze chałupy Zapadliny, ujęła jego dłoń i położyła ją sobie na brzuchu. # dalej
-> przestrogi

= przestrogi
# tlo: przestrogi
Od tamtej pory cała Zapadlina wiedziała, że u Jaromira będzie dziecko, i każda kobieta we wsi miała dla Hanki dobrą radę. Nie wolno jej było patrzeć na pożar, bo maleństwo urodzi się z czerwonym znamieniem. Nie wolno przechodzić pod sznurem do bielizny, bo pępowina owinie się wokół szyi. Nie wolno siadać na progu ani pożyczać nikomu ognia.
Hanka śmiała się z tego wszystkiego, ale słuchała.
Najwięcej jednak mówiła jej babka. Zawsze ta sama, w kółko, aż Jaromir znał ją na pamięć:
– Jak się dziecko urodzi, nie zostawiajcie go samego ani na chwilę. Ani w dzień, ani w nocy. Póki nie będzie ochrzczone, to nie wasze jeszcze, tylko niczyje. Nad jeziorem mieszkają mamuny. Rodzą dzieci brzydkie i chorowite, więc kradną ludziom zdrowe, a w kołysce podrzucają swoje.
{ korale_kaski == zatrzymane:
    ~ ekwipunek -= korale
    Tej wiosny Hanka znalazła pod siennikiem szmatkę z koralami Kaśki. Była tak mokra, że ociekała wodą. Jaromir bez słowa zaniósł korale nad jezioro i cisnął je jak najdalej od brzegu. Tej nocy pierwszy raz od lat spał spokojnie. # pokaz: korale
}
Latem, kiedy noce zrobiły się krótkie i ciepłe, znad jeziora zaczęło dochodzić miarowe klaskanie – jakby ktoś po ciemku prał bieliznę i tłukł ją kijanką o kamień. Kobiety we wsi żegnały się, słysząc ten odgłos, i zamykały okiennice. # pokaz: kijanki # dalej
-> narodziny

= narodziny
# tlo: przyzba_swit
Hanka zaczęła rodzić pod koniec sierpnia, w nocy, kiedy na polach stały jeszcze snopy. Babka przyszła, zanim ktokolwiek po nią posłał, jakby wiedziała. Jaromira wygnała z izby razem z ojcem i kazała im czekać na przyzbie.
Czekali do świtu. Jaromir słyszał krzyki Hanki, a każdy wbijał mu się w pierś jak gwóźdź. Ojciec siedział obok, {noga_ojca == zlamana:oparty na kiju|z kulami opartymi o ścianę}, i milczał. Dopiero raz, przed samym świtem, położył synowi rękę na karku i powiedział:
– Twoja matka krzyczała tak samo. A potem byłeś ty.
Kiedy nad borem pojaśniało niebo, z izby dobiegł płacz – cienki, gniewny, zupełnie nowy. # pokaz: swit
– Dziewucha – powiedziała babka, stając w progu. Wycierała ręce w fartuch i pierwszy raz, odkąd Jaromir ją znał, uśmiechała się szeroko. – Zdrowa jak rydz. # pokaz: babka
Dali jej na imię Maria – Marysia – po prababce Mariannie, żonie dziadka Maćka. # dalej
-> kolyska

= kolyska
# tlo: izba_kolyska
Chrzest wyznaczono na niedzielę. Do tego czasu zostały trzy noce.
Jaromir sam zbił kołyskę z jesionowych desek i postawił ją przy łóżku, tak blisko, żeby Hanka mogła sięgnąć ręką. Pachniała jeszcze świeżym drewnem, a Marysia cmokała przez sen i zaciskała piąstki na rąbku pieluszki. Babka obeszła izbę dokoła, mamrocząc pod nosem, posypała próg solą i kazała zabezpieczyć dziecko.
– Jednym sposobem, a porządnie – powiedziała. – Mamuny są sprytne. Jak tylko będzie możliwość, to znajdą szparę.
# pytanie: Jak zabezpieczyć kołyskę?
*   [Zawiązać Marysi na rączce czerwoną wstążkę.]
    ~ ochrona_kolyski = wstazka_na_raczce
    { not wstazka_marzanny:
        Hanka rozplotła warkocz i wyjęła z niego wstążkę – tę samą, którą nosiła od dziecka.
    - else:
        Babka wyciągnęła z kieszeni fartucha motek czerwonej wełny.
    }
    Jaromir zawiązał ją dziecku na rączce, na podwójny supeł. Marysia skrzywiła się, ale nie zapłakała. # pokaz: wstazka
    – Czerwonego się boją – kiwnęła głową babka. – Odwracają od niego oczy jak od ognia. # dalej
    -> trzecia_noc
*   { ekwipunek ? siekiera } [Położyć pod kołyską siekierę dziadka.]
    ~ ochrona_kolyski = siekiera_pod_kolyska
    Jaromir wsunął pod kołyskę siekierę dziadka Maćka, ostrzem do drzwi. # pokaz: siekiera
    – Żelazo – mruknęła babka z uznaniem. – Żelaza się boją bardziej niż księdza. # dalej
    -> trzecia_noc
*   { ekwipunek ? gromnica } [Zapalić gromnicę i czuwać przy niej co noc.]
    ~ ochrona_kolyski = gromnica_przy_kolysce
    Hanka zapaliła gromnicę i postawiła ją na zydlu przy kołysce. Płomień stał prosto i spokojnie, a w izbie pachniało woskiem jak w kościele. # pokaz: gromnica
    – Póki się pali, nie podejdą – powiedziała babka. – Tylko pilnujcie, żeby nie zgasła. # dalej
    -> trzecia_noc

= trzecia_noc
# tlo: noc_mamun
Dwie noce minęły cicho. Trzeciej Jaromira obudziło klaskanie kijanek – tym razem nie nad jeziorem, tylko tuż pod oknem.
Leżał bez ruchu i patrzył. Księżyc stał wysoko, a w jego blasku po izbie przesuwały się dwa cienie. Przy kołysce stały dwie kobiety – wysokie i garbate, z głowami zbyt dużymi na wątłe szyje. Włosy sterczały im na wszystkie strony jak zeschłe gałązki, a łachmany z mchu i kory ciągnęły się po podłodze, zostawiając mokre smugi. Jedna trzymała w ramionach zawiniątko w brudnej chuście. Druga wyciągała do kołyski długie, zbyt długie ręce – i cofała je za każdym razem, jakby się parzyła.{ ekwipunek ? podkowa: Drzwi pod podkową były zamknięte na rygiel. Weszły przez okno.} # pokaz: mamuny
{ ochrona_kolyski:
- wstazka_na_raczce:
    Zasłaniały twarze przed czerwoną wstążką na rączce dziecka.
- siekiera_pod_kolyska:
    Omijały kołyskę od strony, z której wystawało ostrze siekiery.
- else:
    Płomień gromnicy drżał i chylił się ku nim, ale się nie poddawał.
}
Wtedy jedna z nich zaczęła nucić – cicho, kołysząco, tak podobnie do matki Hanki, że Jaromirowi ścisnęło się serce. Hanka usiadła na łóżku. Oczy miała otwarte, ale patrzyła przez niego, jakby był z powietrza. Powoli wyciągnęła rękę – {ochrona_kolyski == wstazka_na_raczce:do supła na rączce Marysi|{ochrona_kolyski == siekiera_pod_kolyska:do trzonka siekiery|do płomienia, żeby go zdmuchnąć}}. # pokaz: hanka
# pytanie: Co zrobi Jaromir?
*   [Rzucić się między Hankę a kołyskę.]
    ~ noc_mamun = zaslonil
    Jaromir skoczył z łóżka i zasłonił kołyskę własnym ciałem. Coś zimnego i mokrego przejechało mu po plecach, jakby ktoś rozorał je pazurami z lodu. Mamuny wrzasnęły – przeraźliwie, jak czajki nad bagnem – i wycofały się w stronę okna. Ta z zawiniątkiem syknęła na niego, pokazując czarne dziąsła, a potem obie zniknęły w ciemności. # pokaz: zaslonil
    Hanka opadła na poduszkę i spała dalej. Rano niczego nie pamiętała. # dalej
    -> chrzest
*   [Zawołać Hankę po imieniu.]
    ~ noc_mamun = zawolal
    – Hanka! – krzyknął Jaromir. – Hanka, obudź się!
    { ekwipunek ? krzyzyk:
        Hanka drgnęła. Żelazny krzyżyk na jej szyi zrobił się nagle zimny jak lód – złapała go odruchowo i oprzytomniała w jednej chwili. Zobaczyła mamuny i krzyknęła tak, że zbudziła cały dom. Uciekły przez okno, zanim ojciec zdążył dobiec z drugiej izby. # pokaz: obudzona # dalej
        -> chrzest
    }
    ~ podmiana = true
    Hanka nie usłyszała. Jej palce {ochrona_kolyski == wstazka_na_raczce:rozsupłały wstążkę|{ochrona_kolyski == siekiera_pod_kolyska:odsunęły siekierę|zdusiły płomień gromnicy}} – i w tej samej chwili mamuna pochyliła się nad kołyską. Kiedy Hanka zamrugała i obudziła się z płaczem, przy kołysce nie było już nikogo. Zostało tylko otwarte okno, a w kołysce leżało dziecko – ciche, zbyt ciche. # pokaz: okno # dalej
    -> odmieniec
*   [Chwycić siekierę i pogonić je precz.]
    ~ noc_mamun = pogonil
    ~ podmiana = true
    Jaromir porwał siekierę i z krzykiem rzucił się na mamuny. Ta z zawiniątkiem uciekła przez okno, a on za nią – przez podwórze, przez płot, aż na łąkę nad jeziorem, gdzie rozpłynęła się we mgle. Dopiero tam zrozumiał, że została tylko jedna.
    Kiedy wbiegł z powrotem do izby, druga mamuna już znikała w oknie. Hanka siedziała na łóżku i patrzyła na niego nieprzytomnie. W kołysce leżało dziecko – ciche, zbyt ciche. # pokaz: okno # dalej
    -> odmieniec

= chrzest
# tlo: chrzest
Rano na parapecie znaleźli zawiniątko w brudnej chuście, porzucone przez mamuny w ucieczce. Kiedy babka je odwinęła, w środku był tylko kawałek brzozowego pnia, w którym ktoś wystrugał ludzką twarz.
Babka splunęła i kazała spalić go w piecu. Drewno syczało i piszczało, zanim się zajęło.
W niedzielę ochrzcili Marysię w kościółku w Bukowcu. W środku pachniało kadzidłem i wilgotnymi deskami, a przez małe okienka wpadały smugi jesiennego słońca. Chrzestnym był Antek, a matką chrzestną stara Wójcikowa, która trzymała dziecko tak ostrożnie, jakby było ze szkła.{ korale_kaski == oddane: Na szyi Wójcikowej Jaromir zobaczył znajome korale z jarzębiny – suche i matowe, takie jak wszystkie inne.} Kiedy ksiądz polał główkę wodą, Marysia nie zapłakała, tylko zmarszczyła czoło i popatrzyła na niego tak surowo, że Antek parsknął śmiechem i musiał udawać, że kaszle. # pokaz: woda # dalej
-> skarb_z_bazy

= odmieniec
# tlo: odmieniec
Dziecko w kołysce wyglądało jak Marysia, ale nie było nią.
Było cięższe, niż powinno, i zimne w dotyku, choć było przykryte pierzyną. Skóra na plecach marszczyła się i łuszczyła jak kora. Nie płakało – tylko bez ustanku jadło. Hanka karmiła je, aż słaniała się ze zmęczenia, a ono potem leżało cicho i patrzyło w powałę oczami ciemniejszymi niż oczy jakiegokolwiek dziecka. Czasem, kiedy myślało, że nikt nie patrzy, uśmiechało się jak stara kobieta. # pokaz: oczy
Babka obejrzała je tylko raz i odsunęła się od kołyski.
– To nie wasze – powiedziała. – Odmieniec.
Hanką wstrząsnęły te słowa i rozpłakała się.
– Da się jeszcze odwrócić – ciągnęła babka. – Ale trzeba się z tym uwinąć, zanim minie siedem dni. Potem mamuny zabiorą ją tak daleko, że już nie odda jej żadna siła.
# pytanie: Co zrobi Jaromir?
*   [Zrobić tak, jak radzi babka – wynieść odmieńca na rozstaje i udawać, że się go bije.]
    ~ sposob_na_odmienca = rozstaje
    # tlo: rozstaje
    O zmierzchu Jaromir wyniósł odmieńca na rozstaje dróg pod borem i położył na ziemi. Ręce mu się trzęsły. Uniósł brzozową rózgę i chlasnął nią obok, raz za razem, tak żeby świstała w powietrzu, a odmieniec zaczął się drzeć – nie po dziecięcemu, tylko chrapliwie, jak wrona. # pokaz: rozga
    Wtedy z mgły nad łąką wybiegła mamuna. Porwała swoje dziecko z ziemi i przycisnęła je do piersi – ale zamiast oddać Marysię, cofnęła się we mgłę, chichocząc. # pokaz: mamuna
    – Za darmo nic nie oddajemy – zaskrzeczała. – Przyjdź nad jezioro, gospodarzu. Po północy. # dalej
    -> nad_jeziorem_mamun
*   [Zanieść odmieńca do księdza i ochrzcić go od razu.]
    ~ sposob_na_odmienca = chrzest_odmienca
    # tlo: chrzest
    Jaromir zaprzągł konia i pognał do Bukowca. Ksiądz długo się wahał, ale w końcu wziął zawiniątko i polał je wodą święconą.
    Odmieniec zawył. W ramionach księdza zostało tylko kilka szmat i kawałek brzozowego pnia z wystruganą twarzą. # pokaz: kloda
    Przez całą noc szukali Marysi z latarniami – w szuwarach, na mokradłach, pod każdym krzakiem nad wodą – ale nie znaleźli nic. Babka, kiedy usłyszała, co zrobili, zbladła.
    – Zabiliście im dziecko – szepnęła. – Teraz już siłą jej nie odbierzecie. Trzeba iść nad jezioro i się z nimi układać. # dalej
    -> nad_jeziorem_mamun
*   { ekwipunek ? ksiega } [Zagotować wodę w skorupkach jajek, tak jak radzi księga pana Ignacego.]
    ~ sposob_na_odmienca = skorupki
    W księdze było zapisane, że odmieniec, który zobaczy coś, czego przez całe swoje długie życie nie widział, zapomni się i przemówi po swojemu.
    Jaromir ustawił na blasze pieca rząd pustych skorupek po jajkach i zaczął wlewać do nich wodę. Odmieniec przestał jeść. Uniósł się w kołysce – zbyt silnie jak na niemowlę – i powiedział chrapliwym głosem starej kobiety: # pokaz: skorupki
    – Stara jestem jak ten bór, a jeszcze nie widziałam, żeby ktoś wodę w skorupkach gotował.
    Hanka krzyknęła. Okno otworzyło się samo, do izby wpadł chłodny wiatr znad jeziora – a kiedy ucichł, w kołysce leżała Marysia, czerwona od płaczu, z zaciśniętymi piąstkami. # pokaz: wiatr # dalej
    -> skarb_z_bazy

= nad_jeziorem_mamun
# tlo: jezioro_mamun
Po północy Jaromir poszedł nad jezioro sam.
Na płaskich kamieniach przy brzegu klęczały mamuny – pięć, może sześć – i tłukły kijankami mokre szmaty. Na jego widok przestały. Najstarsza, tak zgarbiona, że brodą prawie dotykała kolan, podniosła się powoli. W ramionach trzymała zawiniątko, z którego dobiegało ciche kwilenie. # pokaz: najstarsza
– Dobre dziecko – zaskrzeczała. – Ciepłe. Zdrowe. Czemu miałybyśmy je oddać?
{ sposob_na_odmienca == chrzest_odmienca:
    – Wyście nasze w drzazgi obrócili – syknęła druga. – Za to zapłacisz podwójnie.
}
– Czego chcecie? – zapytał Jaromir.
– Daj nam coś, co kochasz – odpowiedziała najstarsza. – Coś, czego już nigdy nie odkupisz.
# pytanie: Co Jaromir odda mamunom?
*   [Oddać im skarb z dzieciństwa.]
    ~ uklad_z_mamunami = oddany_skarb
    Jaromir sięgnął za pazuchę. Przed wyjściem zabrał ze skrzynki w bazie {skarb_jaromira == muszelka:białą muszelkę|{skarb_jaromira == pioro:sójcze pióro|zardzewiały gwóźdź}}, sam nie wiedząc po co. Teraz już wiedział.
    Mamuna obwąchała skarb jak pies, uśmiechnęła się czarnymi dziąsłami i cisnęła go w jezioro. Woda zamknęła się nad nim bez plusku. # pokaz: skarb
    – Dziecięce szczęście – zaskrzeczała z zadowoleniem. – Pierwsze, najsłodsze. Dobra zapłata.{ sposob_na_odmienca == chrzest_odmienca: – A za nasze… – dodała druga i przeciągnęła lodowatym palcem po jego policzku. Został na nim cienki, biały ślad jak po oparzeniu mrozem.}
*   [Obiecać im dar co roku, w noc świętojańską.]
    ~ uklad_z_mamunami = dar_swietojanski
    – Co roku, w noc świętojańską, zostawię wam na tym kamieniu bochen chleba i wianek z ruty – powiedział Jaromir. # pokaz: dar
    Mamuny zaszeptały między sobą jak trzcina na wietrze.
    – Co roku – powtórzyła najstarsza. – Póki żyjesz.{ sposob_na_odmienca == chrzest_odmienca: I dwa bochny, nie jeden.} A jak choć raz zapomnisz, przyjdziemy po swoje.
*   [Oddać im własne lata.]
    ~ uklad_z_mamunami = oddane_lata
    – Weźcie moje lata – powiedział Jaromir. – Tylko mi ją oddajcie.
    Najstarsza mamuna dotknęła jego skroni. Palce miała zimne jak lód pod wiosennym śniegiem. Poczuł, jak coś z niego wypływa – powoli, boleśnie, jak krew z rany – i nogi ugięły się pod nim. # pokaz: lata
    – {sposob_na_odmienca == chrzest_odmienca:Czternaście|Siedem} – powiedziała, cofając rękę. – Wystarczy.
    Kiedy pochylił się nad wodą, żeby zaczerpnąć powietrza, zobaczył w niej twarz mężczyzny z posiwiałymi skroniami.
-   Najstarsza mamuna podała mu zawiniątko. W chuście leżała Marysia – ciepła, zdrowa, zapłakana. Na nóżce miała tylko trzy sine pręgi, jakby ktoś trzymał ją za mocno. # pokaz: oddana
    Kiedy podniósł głowę, na kamieniach nie było już nikogo. Tylko woda przy brzegu kołysała się jeszcze przez chwilę, jakby ktoś dopiero co w nią wszedł. # dalej
    -> skarb_z_bazy

= skarb_z_bazy
# tlo: baza_wrzesien
{ uklad_z_mamunami == oddany_skarb:
    W niedzielę Jaromir poszedł do starego bzu i otworzył skrzynkę w bazie. Była pusta. Długo trzymał ją w rękach i myślał o tym, co leży teraz na dnie jeziora. Potem odłożył ją na miejsce. Marysia będzie musiała znaleźć sobie własne skarby. # pokaz: pusta # dalej
    -> jesien_z_marysia
}
W niedzielę, kiedy w chałupie było już spokojnie, Jaromir poszedł na skraj łąki, do starego bzu. Baza w jego koronie była już prawie ruiną, ale skrzynka na skarby wciąż tkwiła pod luźną deską, tam gdzie ją schowali jako dzieci. Drabinka trzeszczała pod jego ciężarem, a w koronie bzu pachniało dokładnie tak samo jak wtedy, gdy miał osiem lat. Na chwilę ścisnęło go w gardle. Na dnie, pod zbutwiałym liściem łopianu, leżał {skarb_jaromira == muszelka:biały jak mleko kawałek muszelki z jeziora|{skarb_jaromira == pioro:sójcze pióro, wciąż błękitne jak niebo po burzy|zardzewiały gwóźdź z rycerskiej zbroi – a przynajmniej tak się kiedyś wydawało}}. # pokaz: skrzynka
# pytanie: Co zrobi Jaromir?
*   [Przywiązać skarb do kołyski Marysi.]
    ~ skarb_dla_corki = true
    Przewlókł przez {skarb_jaromira == muszelka:muszelkę|{skarb_jaromira == pioro:pióro|gwóźdź}} rzemyk i przywiązał go do kołyski, tak żeby Marysia mogła go widzieć, kiedy się budzi. Patrzyła na niego długo, poważnie, a potem złapała go piąstką i nie chciała puścić. # pokaz: rzemyk
    – Kiedy podrośnie, będzie nosiła to na szyi – powiedziała Hanka. – Żebyś zawsze wiedział, że jest twoja. # dalej
    -> jesien_z_marysia
*   [Zostawić skarb w skrzynce – kiedyś jej go pokaże.]
    Zamknął skrzynkę i wsunął ją z powrotem pod deskę. Pewnego dnia przyprowadzi tu Marysię i wszystko jej pokaże: bazę, skrzynkę, skarby. Kiedy będzie większa. # dalej
    -> jesien_z_marysia

= jesien_z_marysia
# tlo: jesien_okno
Jesień przyszła złota i spokojna. Marysia rosła jak na drożdżach, pod oknem kwitły astry, a Hanka śpiewała jej kołysankę, której nauczyła się od swojej matki. # pokaz: kolysanka
Tylko nocami czasem, gdy Jaromir wstawał, żeby dołożyć do pieca, słyszał od strony jeziora klaskanie kijanek.{ sposob_na_odmienca == chrzest_odmienca: Nie ustawało aż do świtu, a raz rano Hanka znalazła w kołysce, obok śpiącej Marysi, garść mokrego mchu.}
{ uklad_z_mamunami == dar_swietojanski:
    Jaromir nie zapominał o tym, co obiecał nad jeziorem. Wiedział, że w czerwcu będzie musiał zanieść na kamień chleb i wianek – i każdego następnego roku też.
}
{ uklad_z_mamunami == oddane_lata:
    Hanka pierwsza zauważyła, że skronie posiwiały mu jak u starego i że wieczorami bolą go kości, jakby przybyło mu lat więcej, niż przeżył.
}
A kiedy spadł pierwszy śnieg, od boru zaczęło dochodzić wycie. Tym razem wyło całe stado – i z każdą nocą głosy były bliżej wsi. # pokaz: wycie # dalej
-> rozdzial_dziesiaty_ciag_dalszy


// Koniec rozdziału dziesiątego — rozdział jedenasty (Obława) do napisania.
=== rozdzial_dziesiaty_ciag_dalszy ===
# ozdobnik
_Koniec rozdziału dziesiątego._ # dalej
-> rozdzial_jedenasty_wkrotce

=== rozdzial_jedenasty_wkrotce ===
# ozdobnik
_Ciąg dalszy nastąpi…_
-> END
