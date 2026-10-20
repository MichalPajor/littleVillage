// ------------------------------------------------------------
//  Rozdział pierwszy — Lato. Dzieciństwo Jaromira, około pół
//  wieku po prologu. Przebieg zależy od zakończenia prologu:
//    figurka_u_staruchy — dom na pagórku obok Stasia, milczący ojciec
//                         (z psem żyje jeszcze babka Marianna);
//    inaczej            — chata dziadka Maćka (las / mokradła / jezioro),
//                         ojciec opowiada legendy jak bajki.
// ------------------------------------------------------------

=== rozdzial_pierwszy ===
// Czy Maciek miał krzesiwo — babka Marianna może je oddać wnukowi w rozdziale 4.
~ krzesiwo_dziadka = ekwipunek ? krzesiwo
// Nowy bohater — Jaromir zaczyna z pustym tobołkiem (przedmioty Maćka zostają w prologu).
~ ekwipunek = ()
# tlo: zapadlina_lato
# rozdzial: Rozdział pierwszy
# tytul: Lato
Zapadlina, w której dorastał Jaromir, była już inną wsią niż ta, do jakiej przed laty zszedł z tobołkiem jego dziadek. Domów przybyło – było ich teraz dziewięć, rozsianych po zboczach i łąkach jak ziarna rzucone garścią na pole. Las ustąpił trochę siekierom, uprawy sięgały dalej, a przez mokradła prowadziła porządna kładka z dębowych bali. Przy drogach stało mnóstwo kapliczek, zawsze przystrojonych świeżymi kwiatami. Mgła wciąż lubiła tę dolinę i latem zostawała w niej dłużej niż do wschodu słońca. Zmieniła się też okolica: za Bukowym Grzbietem, godzinę marszu od Zapadliny, wyrósł Bukowiec – osada większa i zamożniejsza, z młynem, karczmą i szkołą, a tuż obok niej z drewnianym kościółkiem, przy którym zamieszkał stary ksiądz. Do miasta jeździło się już tylko na jarmarki i wielkie odpusty.
{ figurka_u_staruchy:
    Jaromir mieszkał w chałupie na pagórku, obok zagrody starego Stasia, z którym jego ojciec wychował się jak z bratem. Dom był niewielki, ale ciepły, z bielonymi ścianami i dachem z trzciny, a z progu widać było całą Zapadlinę – pola, łąki, jezioro i ciemną kreskę boru na wschodzie.
- else:
    { chata_macka:
        - przy_lesie: Jaromir mieszkał w chacie pod lasem, tej samej, którą postawił dziadek Maciek. Ojciec dobudował do niej drugą izbę i stodołę. Pod oknem rosła jabłoń, posadzona w dniu narodzin syna, a od północnej strony stały dzikie śliwy, które często zrzucały małe, zielone, niedojrzałe owoce. Za niskim płotkiem zaczynał się bór – latem pachniał żywicą i grzybami, a w upalne popołudnia dawał cień, w którym dało się przeleżeć choćby do zmroku.
        - przy_mokradlach: Jaromir mieszkał w chacie przy mokradłach, tej samej, którą postawił dziadek Maciek – na kamiennej podmurówce, której przez pół wieku nie ruszyła ani woda, ani mróz. Ojciec dobudował do niej drugą izbę i stodołę. Pod oknem rosła jabłoń, posadzona w dniu narodzin syna, a od północnej strony stały dzikie śliwy, które często zrzucały małe, zielone, niedojrzałe owoce. Za niskim płotkiem ciągnęły się łąki, po których chodziły bociany, a o zmierzchu z rozlewisk dochodził żabi koncert, tak donośny, że zagłuszał nawet świerszcze.
        - else: Jaromir mieszkał w chacie nad jeziorem, tej samej, którą postawił dziadek Maciek. Ojciec dobudował do niej drugą izbę i stodołę. Pod oknem rosła jabłoń, posadzona w dniu narodzin syna, a od północnej strony stały dzikie śliwy, które często zrzucały małe, zielone, niedojrzałe owoce. Od progu do wody było ledwie kilkadziesiąt kroków, a latem chłopiec pokonywał je biegiem tyle razy dziennie, że wydeptał w trawie własną ścieżkę.
    }
}
Ojciec, Dobrosław, był już wtedy mężczyzną w latach, z siwiejącą brodą i dłońmi spękanymi od pracy. { figurka_u_staruchy: Mówił mało, a śmiał się jeszcze rzadziej. Kiedy wieczorem siadał na progu, długo patrzył w stronę mokradeł, jakby czegoś tam wypatrywał. Syna kochał po swojemu – w milczeniu, ciężką ręką na ramieniu i najlepszym kawałkiem mięsa podsuwanym na talerz. | Lubił żartować, a wieczorami opowiadał historie, które sam słyszał od swojego ojca – o stworach z bagien i o zielarce znad jeziora. Jaromir słuchał ich z zapartym tchem, choć wiedział, że to tylko bajki. }
Matka, Agnieszka, była od niego młodsza o dobre piętnaście lat. Pachniała chlebem i dymem z pieca, śpiewała przy każdej robocie i nigdy nie potrafiła się długo gniewać.
{ figurka_u_staruchy && los_psa == oswojony:
    W kącie izby, na zydlu, siadywała babka Marianna, zgarbiona i cicha. Czasem gładziła wnuka po głowie i patrzyła na niego tak, jakby widziała w nim kogoś innego.
}
Chłopiec w domu bywał niewiele. Lato należało do niego – całe, od pierwszych upałów aż do żniw – i jego dni wyglądały niemal tak samo, a mimo to żaden nie był podobny do poprzedniego. # dalej
-> poranek

= poranek
# tlo: poranek
Budziło go pianie koguta i smuga światła, która przeciskała się przez szparę w okiennicy i kładła mu się złotym paskiem na twarzy. Przez chwilę leżał jeszcze pod pierzyną, słuchając, jak matka krząta się przy piecu – jak bulgota woda gotowana w garnkach, jak trzaska podsycany ogień pod blachą, jak skrzypią deski pod jej krokami. Z izby płynął zapach zagrzanego mleka i świeżo upieczonego chleba.
Potem przypominał sobie, że jest lato, i zrywał się z posłania jak oparzony.
Śniadanie jadł prawie na stojąco. Gruba pajda posmarowana masłem, kubek mleka prosto od krowy, jeszcze ciepłego, czasem biały ser. Matka kręciła głową z uśmiechem.
– Usiądźże, synku. Nikt ci tego nie zabierze. Nie braknie ci dnia na zabawę z dzieciakami.
# pytanie: Co zrobi Jaromir?
*   [Usiądzie i zje spokojnie, jak prosi matka.]
    Wzdychał i przysiadał na brzegu ławy, a w nagrodę dostawał całusa w czoło i łyżkę miodu na chleb. Jadł prędko, ale do końca, a gdy kubek był pusty, wołał tylko: – Idę do sąsiadów! – i już go nie było. # pokaz: jaromir
    -> poranek_dalej
*   [Złapie pajdę i wybiegnie.]
    -> poranek_bieg

= poranek_bieg
Ale on już ocierał usta rękawem i był przy drzwiach. Zanim zdążyła powiedzieć, żeby uważał, krzyknął tylko: – Idę do sąsiadów! – i już pędził przez podwórze, rozpędzając kury, które z gdakaniem uciekały mu spod nóg. # pokaz: jaromir
-> poranek_dalej

= poranek_dalej
Trawa o świcie była mokra od rosy i zimna, przez co buty szybko mu przemakały. Pachniała tak, jak pachnie tylko o tej porze – świeżo, zielono, trochę jak ogórek przekrojony na pół. Nad łąkami wisiały jeszcze strzępy mgły, ale słońce już je rozganiało, a w każdej kropli na źdźbłach zapalała się maleńka iskra. Skowronki wzbijały się w niebo i śpiewały tak wysoko, że nie sposób było ich dojrzeć.
U Stasiowych czekali już na niego. Franek, najstarszy z wnuków gospodarza, był rosły i o cztery lata starszy od Jaromira. Jego brat Antek, młodszy od niego o dwie zimy, dłubał patykiem w ziemi, kopiąc rowek, którym chciał przeprowadzić wodę z jednej kałuży do drugiej. Po chwili od strony jeziora nadbiegała Hanka, córka kowala, z warkoczem podskakującym na plecach. # pokaz: dzieci
– Co dziś robimy? – pytał Franek, choć wszyscy wiedzieli, że i tak zdecyduje on sam. # dalej
-> wojna

= wojna
# tlo: laka_bitwa
Najczęściej zaczynało się od wojny.
Każdy miał swój miecz – okorowany kij z leszczyny albo z wierzby, z zaostrzonym końcem. Jaromir nosił go zatkniętego za pasek, a gdy musiał się z nim rozstać, zawsze odstawiał go na swoje miejsce: w róg stodoły. Nie było w całej wsi równiejszej broni – gładkiej od ciągłego trzymania i ciemnej od potu dłoni. { figurka_u_staruchy: Ojciec bez słowa pomógł mu go zaostrzyć, wieczorem przy progu. | Ojciec pomógł mu go wystrugać, śmiejąc się, że wygląda z nim jak rycerz z jarmarcznego obrazka, a takim orężem to i smoka można by pokonać. }
Wrogiem były chwasty. Na miedzach i przy rowach rosły ich nieprzebrane armie: gorysze pagórkowe z kwiatostanami wielkimi jak talerze, osty najeżone fioletowymi głowami i pokrzywy sięgające aż po uszy. Dzieci wbiegały na łąki z okrzykiem, od którego płoszyły się wróble. Kije świstały w powietrzu, łodygi pękały z soczystym trzaskiem, a kolczaste łby fruwały dookoła. # pokaz: bitwa
Po każdej bitwie przychodził czas na leczenie ran. Nierzadko były to kolana zdarte do krwi, łydki pokryte bąblami od parzydełek pokrzyw, podrapane przedramiona i dłonie. Hanka znała na wszystko sposób: przykładała do oparzeń liście babki i kazała trzymać, dopóki nie przestanie piec. Nikt nie płakał – no, może czasem Antek, ale tylko odrobinę, i zaraz potem udawał, że to pot spływa mu do oczu.
Potem padali w trawę, zdyszani i szczęśliwi, i leżeli na plecach z rozrzuconymi rękami. Nad nimi płynęły białe chmury, z których każdy wyczytywał coś innego – konia, okręt, starą babę z miotłą, niedźwiedzia. Pachniało rozgrzaną ziemią, rumiankiem i zgniecionym zielem. Gdzieś blisko brzęczał trzmiel, a pasikoniki strzelały spod rąk jak iskry z ogniska. # dalej
-> luki

= luki
# tlo: luki
Kiedy miecze się nudziły, przychodziła pora na łuki.
~ ekwipunek += nozyk
Najlepsze były z leszczyny, która rosła gęsto na skraju lasu – prosta, giętka i mocna. Franek wybierał z niej gałąź o odpowiedniej długości – równej jego wzrostowi – a Jaromir obstrugiwał ją nożykiem, który dostał od ojca na imieniny. Trzeba było uważać, żeby nie zebrać za dużo drewna w jednym miejscu, bo wtedy łuk pękał przy pierwszym naciągnięciu. Na cięciwę szedł gruby sznurek, wykradziony matce z kosza, albo – w lepsze dni – kawałek szewskiej dratwy.
Strzały robili również z leszczyny, ale zdecydowanie cieńszej. Grotów nie było – za to czubek zaostrzali tak, że kłuł jak cierń, a na drugim końcu – lotki z papieru albo z piór zbieranych na podwórzach po całej wsi.
Celem był snop słomy postawiony na miedzy, z kołem namalowanym sadzą. Cięciwa brzęczała przy uchu jak trzmiel, strzała świstała krótko, a potem rozlegało się głuche „puk”, kiedy zaostrzony czubek wbijał się w słomę. Pociski leciały dość prosto, wbijały się w ziemię albo w cel, a czasem szybowały wysoko w niebo. Najlepiej szło to Hance. Mrużyła jedno oko, wysuwała koniuszek języka i nie chybiała ani razu – a chłopcy, choć za nic by się do tego nie przyznali, podziwiali ją za to bardziej niż za cokolwiek innego. # pokaz: hanka
# pytanie: Czy Jaromir zmierzy się z Hanką?
*   [Tak – wyzwie ją na zawody.]
    ~ celny_strzal = true
    Przegrywał, oczywiście. Hanka trafiała bez pudła, a jego strzały lądowały najczęściej w zbożu. Ale następnego dnia przychodził na miedzę jeszcze przed nią i ćwiczył, aż drętwiały mu palce.
    -> luki_dalej
*   [Nie – poćwiczy sam, z dala od reszty.]
    Odchodził na koniec miedzy i strzelał do starego pnia, aż bolało go ramię. Nikt nie widział, jak często pudłował, i tak było najlepiej.
    -> luki_dalej

= luki_dalej
Raz Jaromir trafił w sam środek koła. Przez resztę dnia chodził tak dumny, że zapomniał nawet o obiedzie, i matka musiała wołać go wiele razy. # pokaz: trafienie # dalej
-> lato_baza

= lato_baza
# tlo: baza
Najważniejszym miejscem na świecie była jednak baza.
Stała – a raczej wisiała – w koronie starego bzu, który rósł na skraju łąki, tak rozłożysty, że w jego cieniu mogłoby się schować kilka krów. Budowali ją przez jedno długie lato. Deski znosili, skąd się dało: z rozwalonego chlewika, z płotu, którego nikt już nie naprawiał, {figurka_u_staruchy:ze stodoły Stasia, który kręcił głową, ale nie bronił|ze stodoły ojca Jaromira, który udawał, że niczego nie widzi}. Przybijali je gwoździami wyprostowanymi kamieniem na kamieniu, a tam, gdzie ich zabrakło, wiązali sznurkiem. Na górę prowadziła drabinka ze szczebli przywiązanych do pnia. W bazie zawsze pachniało rozgrzanym drewnem i kwiatem bzu, tak słodko, że po godzinie kręciło się w głowie. Przez szpary między deskami wpadały cienkie smugi słońca, w których tańczył kurz, a kiedy wiał wiatr, cała korona kołysała się i skrzypiała, jakby baza była łodzią na wzburzonej wodzie.
W środku mieściło się pięcioro, jeśli siedzieli ciasno – czwórce było więc całkiem wygodnie. Mieli tam wszystko, czego potrzeba: skrzynkę na skarby, w której leżały kolorowe kamyki, pióra i muszelki, a na wypadek napaści – kołczan ze strzałami, łuk i „miecze”.
# pytanie: Co Jaromir schowa do skrzynki na skarby?
*   [Muszelkę z jeziora, białą jak mleko.]
    ~ skarb_jaromira = muszelka
    Zawinął ją w liść łopianu i schował na samym dnie.
    -> baza_dalej
*   [Sójcze pióro, błękitne jak niebo po burzy.]
    ~ skarb_jaromira = pioro
    Położył je na wierzchu, żeby świeciło od razu po otwarciu wieka.
    -> baza_dalej
*   [Zardzewiały gwóźdź, który – jak twierdził – wypadł kiedyś z prawdziwej rycerskiej zbroi.]
    ~ skarb_jaromira = gwozdz
    Owinął go w szmatkę jak relikwię. Franek parsknął śmiechem, ale Antek patrzył na niego z szacunkiem.
    -> baza_dalej

= baza_dalej
Najpiękniej było tam w czasie ulewy. Letnia burza przychodziła nagle, ciemnym wałem zza lasu, i zanim dzieci zdążyły dobiec do domów, spadały pierwsze ciężkie krople. Wtedy wdrapywali się do bazy i siedzieli skuleni pod dachem z desek, przez który i tak trochę kapało. Liście szumiały jak morze, którego żadne z nich nigdy nie widziało, grzmoty przetaczały się nad wsią, a powietrze pachniało deszczem, mokrym drewnem i kwitnącym bzem. Po burzy łąka parowała, a na niebie stawała tęcza. # pokaz: burza # dalej
-> lato_jezioro

= lato_jezioro
# tlo: jezioro_lato
Kiedy słońce wspinało się w zenit, a nad polami zaczynał drgać żar, cała gromada ruszała nad jezioro. Biegli na wyścigi przez łąkę, zrzucając po drodze koszule, i z wrzaskiem wpadali do wody, aż bryzgi leciały pod niebo. Przy brzegu było płytko i piaszczyście, woda nagrzana słońcem jak w cebrze, a stopy łaskotały drobne rybki. Franek popisywał się, skacząc na głowę z przewróconego pnia, a Antek siedział na płyciźnie i łapał w dłonie kijanki. Pachniało sitowiem i rozgrzanym mułem, nad wodą bzyczały ważki, a z pól dobiegało nieustanne cykanie świerszczy. # pokaz: kapiel
{ figurka_u_staruchy: Jaromir nigdy nie wchodził głębiej niż po pas. Ojciec zakazał mu tego raz, krótko i tak surowo, że chłopak nie śmiał zapytać dlaczego. Równie stanowczo zabronił zbliżać się do mokradeł i do trzcin po zachodniej stronie, gdzie podobno stała kiedyś jakaś chata. | Na zachodnim brzegu, w szuwarach, sterczały jeszcze z ziemi czarne kikuty zwęglonych bali. Dzieci straszyły się nimi nawzajem, opowiadając sobie historię o spalonej zielarce – tę samą, którą wieczorami snuł ojciec Jaromira – ale w pełnym słońcu nikt się nie bał. }
{ figurka_u_staruchy:
    Tego dnia Franek wypłynął na głęboką wodę i zawołał, żeby Jaromir do niego dołączył.
    # pytanie: Czy Jaromir posłucha ojca?
    *   [Zostanie przy brzegu.]
        Pokręcił głową i nie ruszył się z płycizny. Z daleka poleciało za nim: „Tchórz!”, ale po chwili wszyscy zapomnieli i chlapali się dalej.
        -> jezioro_dalej
    *   [Podpłynie do Franka.]
        ~ odwaga_jaromira = true
        Zrobił krok, potem drugi. Woda sięgnęła mu piersi i nagle stała się lodowata, a coś śliskiego otarło mu się o łydkę. Wycofał się tak szybko, że aż się zachłysnął. Nikomu o tym nie powiedział – a już na pewno nie ojcu.
        -> jezioro_dalej
- else:
    Tego dnia Franek założył się, że nikt nie odważy się ich dotknąć.
    # pytanie: Czy Jaromir przyjmie zakład?
    *   [Dotknie ich – nie jest przecież tchórzem.]
        ~ odwaga_jaromira = true
        Przedarł się przez trzciny i położył dłoń na najwyższym z nich. Drewno było zimne, choć słońce prażyło od rana, i chłopak cofnął rękę szybciej, niż zamierzał. Wszyscy uznali to za największą odwagę tego lata.
        -> jezioro_dalej
    *   [Zostanie z resztą na piasku.]
        Wzruszył ramionami i nie ruszył się z miejsca. Franek poszedł sam, dotknął czarnego drewna czubkiem palca i wrócił biegiem, udając, że wcale się nie spieszy.
        -> jezioro_dalej
}

= jezioro_dalej
Potem suszyli się na trawie, leżąc na brzuchach, i jedli to, co dał las: poziomki, borówki, od których czerniały zęby i języki, i kwaśne liście szczawiu żute dla ochłody. Czasem ktoś przyniósł z domu ogórka albo kawałek sera i dzielili go sprawiedliwie, na tyle części, ile było ust. W sadzie u Wójcików dojrzewały czereśnie, a gospodarz spał po obiedzie tak twardo, że nie słyszał, jak ktoś trzęsie gałęziami.
Upał kładł się na wszystkim jak ciepła pierzyna. Świerszcze cykały tak głośno, jakby od ich grania zależało, czy słońce w ogóle zajdzie. Od pokosów, które chłopi przewracali grabiami, szedł zapach siana, a od miedzy wiało słodyczą macierzanki i koniczyny. Pszczoły brzęczały w lipach, motyle siadały na kwiatach, a czas płynął tak wolno, że dzień wydawał się nie mieć końca. # dalej
-> lato_wieczor

= lato_wieczor
# tlo: wieczor_lato
A jednak kończył się zawsze. Słońce zsuwało się za las, cienie wydłużały się na łące, aż sięgały od jednego jej skraju do drugiego, a niebo nad jeziorem nabierało koloru dojrzałych malin. Powietrze stygło i pachniało skoszoną trawą i dymem z kominów, a z mokradeł odzywały się pierwsze żaby – najpierw jedna, potem dziesiątki, aż rechotała cała dolina, jak jeden wielki chór. Wtedy z kolejnych podwórek zaczynały dobiegać wołania.
– Jaroooomir! Do doooomu! # pokaz: matka
# pytanie: Czy Jaromir wróci od razu?
*   [Pobiegnie do domu od razu.]
    Głos matki niósł się po całej wsi. Chłopiec nie kazał na siebie czekać: żegnał się z resztą, umawiał na jutro – zawsze na jutro, zawsze przy drewnianym słupku, który znaczył granicę pola ojca, zaraz po śniadaniu – i biegł przez łąkę, na której zapalały się pierwsze świetliki. Nie mogła się nadziwić i do kolacji dokładała mu kawałek placka. # pokaz: jaromir
    -> wieczor_dalej
*   [Pobawi się jeszcze chwilę.]
    -> wieczor_zwlekanie

= wieczor_zwlekanie
Głos matki niósł się po całej wsi. Chłopiec udawał, że nie słyszy, dopóki nie zawołała po raz drugi – a za trzecim razem pojawiała się w nim nuta, która nie wróżyła nic dobrego. Wtedy żegnał się z resztą, umawiał na jutro – zawsze na jutro, zawsze przy drewnianym słupku, który znaczył granicę pola ojca, zaraz po śniadaniu – i biegł przez łąkę, na której zapalały się pierwsze świetliki. # pokaz: jaromir
-> wieczor_dalej

= wieczor_dalej
Wracał brudny, z trawą we włosach, z ziemią pod paznokciami i z kolanami w strupach. Matka wzdychała, łapała go za ucho i prowadziła do ceberka z wodą, a potem stawiała przed nim miskę z jajecznicą albo zsiadłe mleko z ziemniakami.
{ figurka_u_staruchy:
    Ojciec siedział naprzeciwko i milczał. Kiedy kończył, zawsze robił to samo: wstawał, sprawdzał, czy drzwi są dobrze zaryglowane, i dopiero wtedy szedł spać.
    { los_psa == oswojony:
        Babka Marianna podnosiła się wtedy z zydla, kreśliła wnukowi krzyżyk na czole i szeptała coś, czego nie rozumiał.
    }
- else:
    Ojciec, jeśli wieczór był ciepły, wynosił ławę przed chatę i opowiadał. O dziadku Maćku, który zszedł do Zapadliny z samą siekierą, o stworze z bagien, o głosie, co wołał znad bagien. Jaromira zwykle morzył sen w połowie, z głową na jego kolanach, i nigdy nie słyszał zakończenia.
}
Potem leżał na sienniku pod oknem i słuchał nocy. Żaby rechotały w rozlewiskach, w stajni parsknął koń, gdzieś daleko zaszczekał pies. Przez szparę w okiennicy widać było gwiazdy – tyle, że nie dało się ich policzyć, choć nigdy nie przestawał próbować.
Zasypiał z uśmiechem, myśląc o jutrze. Jutro będzie znów lato. Jutro będzie znów cały dzień. # dalej
-> zloty_dzien

= zloty_dzien
# tlo: zapadlina_lato
Takich dni było bez liku. Zlewały mu się potem w pamięci w jeden długi, złoty dzień, pachnący sianem i rozgrzaną ziemią, pełen słońca, śmiechu i brzęczenia pszczół. Lato mijało, a Jaromir rósł – coraz wyżej sięgał do gałęzi bzu, coraz dalej dolatywała jego strzała, coraz rzadziej potrzebował drabinki, żeby wspiąć się do bazy. # dalej
-> rozdzial_pierwszy_ciag_dalszy


// Koniec rozdziału pierwszego — dalej rozdział drugi.
=== rozdzial_pierwszy_ciag_dalszy ===
# ozdobnik
_Koniec rozdziału pierwszego._ # dalej
-> rozdzial_drugi
