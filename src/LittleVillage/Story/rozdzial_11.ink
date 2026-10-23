// ------------------------------------------------------------
//  Rozdział jedenasty — Obława (biały wilk). Sroga zima po narodzinach
//  Marysi (Jaromir ma dwadzieścia lat). Wilki we wsi: obrona obory
//  (stary pies przeżywa) albo pilnowanie drzwi (pies ginie, zagryzając
//  wilka). Gajowy Pawlik ogłasza obławę i nagrodę za białego wilka,
//  Antek widzi w nim oczy Franka (obietnica). W młodniku: wydać wilka
//  (ranny ucieka do boru), zmylić obławę albo — z celnością z dzieciństwa —
//  rzucić kamieniem w lufę (kolba, blizna, odrabianie u dziedzica).
//  Wiosną szczenię z rodu psa.
// ------------------------------------------------------------

=== rozdzial_jedenasty ===
# tlo: mroz_izba
# rozdzial: Rozdział jedenasty
# tytul: Obława
Pierwsza zima Marysi była tak sroga, że takiej nie pamiętali nawet starzy. Po Trzech Królach mróz ścisnął tak, że w nocy pękały pnie drzew z hukiem jak wystrzał, wróble spadały z gałęzi zmarznięte na kamień, a lód na jeziorze trzeszczał i jęczał do samego rana. Woda w wiadrze zamarzała w sieni, zanim ktokolwiek zdążył jej użyć.
W chałupie palili od świtu do nocy. Hanka spała z Marysią przy samym piecu, owinięta w dwie pierzyny, a Jaromir co kilka godzin wstawał, żeby dorzucić drewna. {noga_ojca == zlamana:Ojciec kulał w mróz bardziej niż zwykle|Ojciec w ogóle nie schodził już z ławy}, a matka parzyła mu na kolano gorące okłady z otrębów.{ uklad_z_mamunami == oddane_lata: Jaromira też bolały kości – tępo, uporczywie, jakby zima zagnieździła się w nim samym.}
Marysia zaczęła się śmiać na widok Jaromira, łapała go za palce i ciągnęła do buzi wszystko, co znalazła w zasięgu rąk. Wieczorami, kiedy za oknem trzaskał mróz, Hanka śpiewała jej przy kołysce, a Jaromir siedział obok i myślał, że nigdy w życiu nie był tak szczęśliwy.
Tylko od boru, coraz śmielej, dochodziło wycie. # pokaz: wycie # dalej
-> owczarnia

= owczarnia
# tlo: owczarnia_noc
W połowie stycznia wilki przyszły do wsi.
Najpierw u Wójcików znaleźli rano rozkopaną zaspę i krew na śniegu. Potem u Stasiowych w jedną noc zginęły trzy owce – choć ich owczarnia stała w samym środku Zapadliny, gdzie wilka nie widziano za pamięci najstarszych. Ludzie zaczęli wnosić drób do izb i podpierać wrota drągami.
W niedzielę nad ranem Jaromira obudził krzyk owiec. Zerwał się z posłania i boso dopadł progu. Przez szparę w drzwiach zobaczył w księżycowym świetle szare cienie, które krążyły wokół obory – pięć, może sześć – i jeden biały, większy od pozostałych, który stał nieruchomo na skraju pola.{ ekwipunek ? szczeniak: {imie_psa} – stary już, z siwym pyskiem – warczał przy drzwiach, aż mu się trzęsły boki, i drapał pazurami w deski.} # pokaz: wilki
# pytanie: Co zrobi Jaromir?
*   [Wybiec z siekierą i bronić obory.]
    ~ noc_wilkow = bronil_obory
    Chwycił siekierę dziadka i wypadł na podwórze. Mróz ściął mu oddech w gardle. Wilki odwróciły się do niego – jeden, drugi, trzeci – z łbami nisko przy ziemi i błyskiem kłów w pyskach.{ ekwipunek ? szczeniak: {imie_psa} skoczył za nim i rzucił się na najbliższego, choć był od niego o połowę mniejszy.}
    Za plecami Jaromira krzyknęła Hanka. Drzwi sieni stały otworem i jeden z szarych prześlizgnął się do środka, prosto ku izbie, w której spała Marysia. Zanim Jaromir zdążył zawrócić, żona wypchnęła wilka za próg głownią wyrwaną z pieca – ale ten dosięgnął jeszcze zębami jej przedramienia.
    Biały wilk zawył – krótko, ostro, jak rozkaz. Cała wataha cofnęła się od obory, jakby ktoś szarpnął ją na sznurze. Basior przepuścił obok siebie ostatni cień i dopiero wtedy zniknął w mroku za stodołą Stasiowych.{ ekwipunek ? szczeniak: {imie_psa} wrócił z rozdartym uchem i zakrwawionym barkiem, ale żywy.} Do świtu Jaromir opatrywał w sieni {ekwipunek ? szczeniak:psa i Hankę|Hankę}. Rana była głęboka; blizna po kłach została jej na całe życie. # pokaz: rozkaz # dalej
    -> gajowy
*   [Zostać przy Hance i dziecku – drzwi trzeba utrzymać.]
    ~ noc_wilkow = pilnowal_drzwi
    Zaparł drzwi plecami i stał tak aż do świtu, z siekierą w rękach, słuchając, jak owce krzyczą, a potem cichną jedna po drugiej. Hanka tuliła Marysię do piersi i szeptała modlitwy.{ ekwipunek ? szczeniak: {imie_psa} w końcu wyrwał się przez uchylone okienko w komorze i wypadł na dwór, zanim Jaromir zdążył go złapać.}
    { ekwipunek ? szczeniak:
        ~ ekwipunek -= szczeniak
        ~ pies_zginal = true
        Rano zobaczyli, co zostało. Dwie owce zagryzione, krew na śniegu aż pod płot. Przy samej oborze leżał {imie_psa}. Był martwy, ale tuż obok, z rozszarpanym gardłem, wyciągnął się wilk – dwa razy od niego większy. Jaromir pochował psa pod jabłonią, w zmarzniętej ziemi, którą musiał rąbać siekierą jak drewno. # pokaz: swit, pies # dalej
    - else:
        Rano zobaczyli, co zostało. Dwie owce zagryzione, krew na śniegu aż pod płot. # pokaz: swit # dalej
    }
    -> gajowy

= gajowy
# tlo: gajowy_karczma
Pod koniec stycznia do Zapadliny przyjechał saniami gajowy z dworu, Pawlik – wielki, czerwony od mrozu, z dubeltówką przewieszoną przez plecy. Zatrzymał się przed karczmą i zwołał ludzi. # pokaz: gajowy
– Jaśnie pan dziedzic zarządza obławę – ogłosił. – W sobotę o świcie. Z każdej chałupy jeden chłop z kołatką albo z widłami. Strzelcy z dworu staną przy przesmyku pod borem, a wy pognacie wilki z młodnika prosto na nich. – Powiódł wzrokiem po zebranych i dorzucił ciszej: – Za skórę tego białego dziedzic płaci dziesięć rubli srebrem. Pan Urbaniak dokłada drugie tyle.
Przez tłum przeszedł szmer. Dwadzieścia rubli to było więcej, niż niejeden gospodarz w Zapadlinie widział przez całe życie.
Wieczorem Antek zastukał do chałupy Jaromira. Usiadł na ławie, długo obracał czapkę w dłoniach i nie mógł zacząć. # pokaz: antek
– Widziałem go – powiedział w końcu. – Tego białego. Przedwczoraj, o zmierzchu, przy starej kapliczce. Patrzył na mnie… – Głos mu się złamał. – Jaromir, on ma oczy Franka. Ja wiem, że to głupie. Ale ja bym tych oczu nie pomylił z żadnymi innymi.
# pytanie: Co powie Jaromir?
*   [Obiecać Antkowi, że jeśli to Franek, nie dadzą go zabić.]
    ~ obietnica_antkowi = true
    Jaromir położył mu rękę na ramieniu.
    – Jeśli to on – powiedział – nikt go nie dostanie. Obiecuję.
    Antek kiwnął głową, nie podnosząc wzroku, i dopiero przy drzwiach Jaromir zauważył, że przyjaciel ma mokre policzki. # dalej
    -> oblawa
*   [Powiedzieć mu, że to tylko zwierzę.]
    – To wilk, Antek – powiedział Jaromir łagodnie. – Głodny wilk. Franka nie ma od ponad roku.
    Antek spojrzał na niego tak, jakby Jaromir uderzył go w twarz. Wstał i wyszedł bez pożegnania. # dalej
    -> oblawa

= oblawa
# tlo: oblawa_mlodnik
W sobotę wstali po ciemku. Mróz był taki, że oddech zamarzał na wąsach, a śnieg skrzypiał pod butami głośno jak suche deski. Chłopi z Zapadliny i z Bukowca stanęli w długim rzędzie na skraju pola – kilkudziesięciu ludzi z kołatkami, z garnkami, w które walili drągami, z widłami i siekierami. Przed nimi czerniał młodnik: świerki, które przez ostatnie lata podeszły od boru prawie pod same opłotki.
Na znak gajowego ruszyli. Kołatki terkotały, ludzie krzyczeli i gwizdali, a echo odbijało się od ściany lasu, jakby za drzewami szła jeszcze jedna obława. Gdzieś z przodu ujadały ogary z dworu. Potem huknął pierwszy strzał. I drugi. # pokaz: naganka
Jaromir szedł na samym skraju rzędu, tam, gdzie młodnik schodził do zamarzniętych mokradeł.{ obietnica_antkowi: Antek trzymał się tuż obok niego, blady jak śnieg.} Jaromir przedarł się przez gęstwinę i stanął jak wryty.
W niewielkiej kotlince między świerkami, pod przewróconym pniem, stał biały wilk. # pokaz: wilk
Był ogromny – większy od każdego wilka, jakiego Jaromir kiedykolwiek widział – i chudy tak, że pod sierścią rysowały się wszystkie żebra. Grzywa na karku stała mu dęba. Na przedniej łapie widniała obręcz wytartej, rzadszej sierści – dokładnie w tym miejscu, gdzie Franek miał przed laty trzy pręgi od pazurów, o których mówił, że to od gwoździa.
A oczy… Oczy były ludzkie. Jasne, z wyraźną źrenicą, smutne. Patrzyły na Jaromira spod łba i nie było w nich ani strachu, ani złości. Tylko zmęczenie.
Za plecami usłyszał chrzęst kroków. Gajowy Pawlik przedzierał się przez świerki z dubeltówką gotową do strzału. # pokaz: gajowy
# pytanie: Co zrobi Jaromir?
*   [Krzyknąć do gajowego, że wilk jest tutaj.]
    ~ oblawa_wilk = wydal_wilka
    – Tutaj! – krzyknął Jaromir, zanim zdążył pomyśleć. – Tutaj jest!
    Huknęło. Biały wilk szarpnął się, jakby ktoś uderzył go pięścią w bok, przewrócił się w śnieg – i zerwał na nogi. Przeskoczył pień i zniknął w gęstwinie od strony boru. Na bieli została smuga krwi, długa i czerwona jak wstążka. # pokaz: strzal
    – Trafiony! – ryczał gajowy. – Daleko nie zajdzie!
    { obietnica_antkowi:
        Antek stał bez ruchu. Potem podszedł do Jaromira i uderzył go w twarz – raz, z całej siły – i odszedł, nie oglądając się za siebie. # dalej
    - else:
        Wieczorem ludzie z dworu szli za krwią białego aż do pierwszych wielkich sosen, ale dalej nie odważył się wejść nikt, nawet gajowy. # dalej
    }
    -> po_oblawie
*   [Krzyknąć, że wilk uciekł w stronę mokradeł.]
    ~ oblawa_wilk = zmylil_oblawe
    – Na mokradła! – krzyknął Jaromir, odwracając się. – Poszedł na mokradła!
    Gajowy zaklął i pobiegł w dół, przez trzciny, a za nim kilku naganiaczy.{ obietnica_antkowi: – Tam! Widziałem go! – zawołał Antek i ruszył za nimi, wymachując kołatką, żeby nikt nie miał wątpliwości.} Kiedy Jaromir obejrzał się na kotlinkę, pod pniem nie było już nikogo. Tylko z gałęzi świerka sypał się jeszcze śnieg, strącony w biegu. # pokaz: zmylka
    Z dołu, od mokradeł, dobiegł trzask i krzyk. Lód pod zaspami był tam cienki jak opłatek: młody Kuba od kołodzieja z Bukowca zapadł się po pierś w czarną wodę. Wyciągnęli go drągami, sztywnego od mrozu, i ponieśli do sań na kożuchach. # dalej
    -> po_oblawie
*   { celny_strzal } [Rzucić kamieniem w lufę gajowego, kiedy ten złoży się do strzału.]
    ~ oblawa_wilk = rzucil_kamieniem
    Gajowy przyłożył dubeltówkę do ramienia. Jaromir schylił się, wygrzebał spod śniegu kamień wielkości jaja i rzucił – z tą samą pewnością, z jaką jako chłopiec celował w snop na miedzy, kiedy ćwiczył całymi dniami, żeby wygrać z Hanką.
    Kamień trafił w lufę. Strzał poszedł w zaspę, aż się zakurzyło. Biały wilk przeskoczył pień i zniknął w gęstwinie. # pokaz: kamien
    Gajowy odwrócił się do Jaromira z twarzą purpurową od wściekłości i bez słowa uderzył go kolbą w twarz. Jaromir upadł na wznak. Krew pociekła mu z rozciętego policzka, ciepła i słona.
    – Dziedzic się o tym dowie – wysapał Pawlik. – Zapłacisz mi za ten proch. # dalej
    -> po_oblawie

= po_oblawie
# tlo: po_oblawie
~ zapiski += tropy_2
Do wieczora strzelcy ubili pięć wilków. Ich skóry gajowy kazał przybić do wrót dworskiej stodoły w Bukowcu, żeby wszyscy widzieli. Białego nie było wśród nich.
{ oblawa_wilk == rzucil_kamieniem:
    Za rzut kamieniem dziedzic kazał Jaromirowi odrobić na pańskim trzy tygodnie przy zwózce drewna. Blizna pod okiem została mu na zawsze – wąska i jasna jak ślad po pazurze.
}
{ oblawa_wilk == wydal_wilka:
    W nocy od boru dobiegło wycie – nie takie jak zawsze, tylko długie, zachrypnięte, pełne bólu. Jaromir leżał z otwartymi oczami i słuchał, jak głos przybliża się do wsi, cichnie i wraca. Nad ranem w oborze zaczęły rzucać się krowy, jakby coś krążyło wokół ścian, a kiedy wyszedł z latarnią, nie było już nikogo – tylko w mroźnym powietrzu wisiał ciężki zapach mokrej sierści i krwi. # pokaz: wycie
    Hanka nie spała do świtu. Siedziała przy kołysce z gromnicą w rękach, a kiedy Jaromir chciał wziąć od niej świecę, odsunęła jego dłoń.
– Nie ty – powiedziała cicho. – Dzisiaj nie ty. # dalej
    -> odwilz
}
Następnego ranka, kiedy Jaromir wyszedł rąbać drwa, na pniaku przy płocie leżał zając – świeży, jeszcze ciepły, z karkiem przegryzionym jednym, czystym kłapnięciem. Kiedy schylił się nad zającem, z młodnika dobiegło jedno krótkie szczeknięcie – ciche, prawie psie – i więcej nic. # pokaz: zajac
Hanka długo milczała, kiedy jej to opowiedział. Potem wzięła zająca i zaczęła go oprawiać.
{obietnica_antkowi:– Głupi – szepnęła, nie wiadomo do kogo. – Głupi, dobry Franek.|– Głupi – szepnęła, nie wiadomo do kogo. – Głupi, dobry…} # dalej
-> odwilz

= odwilz
# tlo: odwilz
W marcu mróz puścił. Śnieg spłynął z pól brudnymi strumieniami, a z młodnika pod borem zaczęły znowu dochodzić głosy ptaków.
{ ekwipunek ? szczeniak:
    ~ ekwipunek += szczenie_psa
    {imie_psa} wylizał się z ran, choć już nigdy nie biegał jak dawniej. Wiosną suka od Stasiowych oszczeniła się, a jedno ze szczeniąt – rude, z białą łatą na piersi – było wykapanym ojcem. Jaromir wziął je do siebie. # pokaz: szczenie
}
{ pies_zginal:
    ~ ekwipunek += szczenie_psa
    Wiosną suka od Stasiowych oszczeniła się. Jedno ze szczeniąt – rude, z białą łatą na piersi – wyglądało wypisz wymaluj jak {imie_psa} sprzed lat. Stary Staś przyniósł je w czapce i postawił na progu bez słowa. # pokaz: szczenie
}
Wilków więcej nie widziano. Tylko czasem, w księżycowe noce, z głębi boru dochodziło samotne wycie – i Jaromir nie umiał powiedzieć, czy brzmi w nim skarga, czy ostrzeżenie. # pokaz: wilk
{
- obietnica_antkowi && oblawa_wilk == wydal_wilka:
    Antek nie odezwał się do niego aż do żniw. # dalej
- not obietnica_antkowi:
    Antek długo nie zaglądał do ich chałupy. Przyszedł dopiero na Wielkanoc, usiadł przy kołysce Marysi, jakby nic się nie stało – ale o białym wilku przy Jaromirze już nigdy nie wspomniał. # dalej
- else:
    Antek przychodził teraz częściej niż kiedyś. Siadał przy kołysce Marysi, kołysał ją i milczał – a Jaromir wiedział, o kim obaj myślą. # dalej
}
-> rozdzial_jedenasty_ciag_dalszy


// Koniec rozdziału jedenastego — dalej rozdział dwunasty.
=== rozdzial_jedenasty_ciag_dalszy ===
# ozdobnik
~ zapiski += pan_lasu_5
_Koniec rozdziału jedenastego._ # dalej
-> rozdzial_dwunasty
