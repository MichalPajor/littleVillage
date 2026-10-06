// ------------------------------------------------------------
//  Prolog — Zapadlina, około siedemdziesiąt lat przed główną
//  częścią opowieści. Maciek, dziadek Jaromira, wybiera
//  miejsce na chatę.
// ------------------------------------------------------------

=== prolog ===
# tlo: zapadlina
# rozdzial: Prolog
# tytul: Zapadlina
Zapadlina – wieś leżąca tam, gdzie ziemia, zmęczona byciem równiną, osunęła się w dół. Chcąc do niej dotrzeć, zawsze trzeba było schodzić z pagórków, brzegów i zboczy – czy to od gościńca przez Bukowy Grzbiet, czy od boru udeptaną ścieżką. Z miasta wracało się sześć godzin, a ostatni odcinek drogi wił się wśród bagien, wciąż w dół. Mgła lubiła tę nieckę. Wlewała się w nią o zmierzchu jak mleko do miski i bywało, że nawet do południa nie chciała z niej wyjść.
Od wschodu napierał las – stary, iglasty i tak gęsty, że i za dnia drzewa rzucały głęboki, chłodny cień. Na północy miękka ziemia przechodziła w mokradła porośnięte pałkami, turzycą i karłowatymi krzewami. Woda stała tam czarna, mętna i nieruchoma. Niektórzy powiadali, że nie wolno zbyt długo się w nią wpatrywać, bo można tym wywołać topielce uwięzione pod warstwą mułu. Po nocach często latały nad nią błędne ognie. Na zachodzie, w najniższym miejscu niecki, leżało jezioro, okrągłe, jakby ktoś wycisnął je kolanem. Mówiono, że nikt nie widział jego dna.
Wieś była mała, ale nie młoda. Pięć chałup stało daleko od siebie, bo każdy miał tyle pola, ile jego przodkowie zdołali wykarczować i obronić. Mieszkało w niej około trzydziestu osób, licząc z dziećmi. Wszyscy dobrze się znali. Kościół był dopiero w mieście; chodziło się do niego kilka razy w roku, na najważniejsze święta, o ile pozwalały na to warunki. Wtedy we wsi nie zostawała ani jedna żywa dusza.
Jakieś siedemdziesiąt lat przed tym, nim Jaromir pierwszy raz spojrzał w stronę lasu, jego dziadek zszedł do Zapadliny z tobołkiem na ramieniu. Maciek nie miał nic poza siekierą, chlebem, parą rąk i uporem. Obie rzeczy kupił w mieście za pieniądze zarobione przez cztery lata pracy na cudzym polu. Chciał wreszcie mieć coś swojego – kąt, w którym zamieszka i da rodzinie dach nad głową. Tutaj każdy skrawek ziemi, który oczyści, będzie jego. Była wiosna, pola parowały, a gdzieniegdzie w cieniu zalegał jeszcze brudny śnieg. Od kilku dni krążył po okolicy, szukając, gdzie postawić chatę. Trzy miejsca najczęściej wracały w jego myślach.
# ozdobnik
Pierwsze leżało na wschodnim skraju wsi, pod samym lasem. Ziemia była żyzna, drewno miał na wyciągnięcie ręki, a i zwierzyny nie brakowało. Tylko że od boru zawsze ciągnął chłód, nawet w upalne dni, a nocą dochodziły stamtąd tajemnicze, przerażające dźwięki.
Drugie było na północy, przy mokradłach. Znajdowały się tam rozległe łąki, na których można by wypasać bydło, a torfu do palenia nigdy by nie zabrakło. Za to po zmroku nad bagnami podobno coś mrugało. Ludzie spotkani przy studni mówili tylko: – Tam się nie chodzi i nie buduje. Tam się tylko topi.
Trzecie, nad jeziorem, wydawało się najbardziej malownicze. Woda była czysta, ryby same wskakiwały do ręki, a brzeg łagodny – wystarczyło przedrzeć się przez gęste trzciny. Został tam też ślad po chałupie, która kiedyś tu stała: stare, spróchniałe i zwęglone bale. Nikt we wsi nie chciał powiedzieć, kto w niej mieszkał ani jaki spotkał go los, a ludzie żegnali się za każdym razem, gdy ktoś o niej wspomniał.
# pytanie: Gdzie Maciek postawi chatę?
*   [Na skraju lasu, od wschodu.]
    ~ chata_macka = przy_lesie
    -> budowa
*   [Przy mokradłach, na północy.]
    ~ chata_macka = przy_mokradlach
    -> budowa
*   [Nad jeziorem.]
    ~ chata_macka = nad_jeziorem
    -> budowa


// ------------------------------------------------------------
//  Budowa chaty — początek zależy od wybranego miejsca.
// ------------------------------------------------------------
=== budowa ===
{ chata_macka:
    - przy_lesie: -> las
    - przy_mokradlach: -> mokradla
    - else: -> jezioro
}

= las
# tlo: budowa_las
# rozdzial: Prolog
# tytul: Chata
Maciek wybrał skraj lasu. Uznał, że drewno pod ręką pozwoli mu szybciej postawić chatę, a na tym zależało mu najbardziej. Żyzna ziemia przyda się pod warzywa – w końcu coś trzeba jeść. A sen? Jakoś to będzie. Już pierwszego ranka zabrał się do pracy i wbił siekierę w najbliższy świerk. Echo uderzenia potoczyło się w stronę boru i wróciło do niego dziwnie przeciągłe, jakby las powtórzył je po swojemu, dodając nutę czegoś tajemniczego.
-> praca

= mokradla
# tlo: budowa_mokradla
# rozdzial: Prolog
# tytul: Chata
Maciek wybrał łąki przy mokradłach. Gdy zaczął pracę, ludzie, którzy go widzieli, kręcili głowami z dezaprobatą i zdziwieniem. Dla nich było to ostatnie miejsce, w którym postawiliby chałupę. Ziemia uginała się tu pod stopami, ale dawała torf, którego starczyłoby nawet na sto zim. Żeby chata nie zapadła się w błoto, Maciek musiał przygotować podmurówkę. Przez cały pierwszy dzień znosił z pagórków kamienie i sumiennie je układał.
Po drewno chodził daleko, pod bór. Zdarzało mu się wpaść w płytkie bajoro – w końcu nie znał jeszcze dobrze terenu – i buty miał wiecznie przemoczone. Na myśl o opowieściach mieszkańców czuł niepokój, ale i ciekawość. Nie dawało mu spokoju, co takiego mogło mrugać nad bagnami. Starał się omijać czarną wodę i wziął sobie do serca przestrogę o topielcach. Jeśli istniały, na pewno nie chciał ich spotkać.
-> praca

= jezioro
# tlo: budowa_jezioro
# rozdzial: Prolog
# tytul: Chata
Maciek wybrał brzeg jeziora. Coś w głębi serca mówiło mu, że to miejsce jest dla niego. Może to wizualny urok tego zbiornika tak go przyciągał. Spróchniałe, zwęglone bale po dawnej chałupie zepchnął w wysokie szuwary, by się nimi nie przejmować. Było, minęło – powtarzał sobie podczas karczowania zarośli, gdy przypominały mu się opowieści mieszkańców. Drzewa ścinał na zboczach, a pnie staczał w dół. Do pokrycia dachu zbierał trzcinę, której tu nie brakowało – sięgała mu powyżej głowy.
-> praca

= praca
Budowa trwała ponad miesiąc. Niekiedy ktoś z mieszkańców przychodził pomóc Maćkowi. Najczęściej był to Andrzej, z którym zawsze rozmawiało mu się najlepiej. Mężczyzna lubił opowiadać o swoim synu, który był jego dumą. Chłopak miał jedenaście lat, a już był dla ojca ogromnym wsparciem. Andrzejowi samemu się nie przelewało, ale widząc, w jakiej biedzie żyje Maciek, czasem przynosił mu coś do zjedzenia.
Samo stawianie chaty nie było skomplikowane: ściąć drzewa, okorować je, pociąć na bale odpowiedniej długości i wyciąć na ich końcach zamki, żeby po złożeniu dobrze się trzymały. Dzięki temu ściany stały bez jednego gwoździa. Szczeliny zatykał mchem i gliną. Od ciężkiej, codziennej pracy dłonie pokryły mu się pęcherzami, które pękały i zrastały się, aż skóra stwardniała jak kora.
Swój chleb jadł bardzo oszczędnie – kromkę na śniadanie, drugą na kolację, popijając je wodą. Obiecywał sobie, że po nowy zapas pójdzie do miasta, jak tylko skończy dach. Bochenek wysychał, kurczył się i z każdym dniem ważył coraz mniej – a Maciek razem z nim.
Sypiał w szałasie, który naprędce sklecił pierwszego wieczoru: kilka konarów opartych o pień, przykrytych gałęziami z liśćmi i darnią, a w środku posłanie z mchu. Mieścił się w nim tylko na leżąco. Siekierę zawsze trzymał u boku. # dalej
-> noce

= noce
Noce były najgorsze. Wiosenny chłód i wilgoć wchodziły pod ubranie, kąsając przenikliwie do kości. Ciężko było zasnąć. Maciek leżał z otwartymi oczami i słuchał.
{ chata_macka:
    - przy_lesie: Las nigdy nie milkł. Nie było wiatru, a gałęzie trzaskały tak, jakby ktoś – albo coś – leniwie po nich chodziło. Maciek często wstrzymywał oddech i nasłuchiwał, choć od niektórych dźwięków przechodziły go ciarki.
    - przy_mokradlach: Bagna nigdy nie spały. Bulgotały, mlaskały, a czasem – miał wrażenie – wzdychały po ludzku. Gdy usłyszał to pierwszy raz, wzdrygnął się, złapał za siekierę i wyjrzał z szałasu. Opowieści spod studni okazały się prawdziwe. Po północy, daleko nad czarną wodą, zapalało się małe światełko i mrugało – jakby ktoś stał tam z kagankiem i wabił do siebie.
    - else: Jezioro nocą oddychało. Każdy powiew był ciepły i przyjemny. Choć nie było wiatru ani fal, na płyciźnie co jakiś czas coś pluskało. Raz Maciek usłyszał, jakby coś ciężkiego wychodziło z wody i szło brzegiem przez trzciny w jego stronę. Rano sprawdził, ale w błocie nie było żadnych śladów.
}
Którejś nocy, gdy z bochenka została mu już tylko piętka, dobiegł go dźwięk, jakiego dotąd tu nie znał. Ciche, urywane wycie – cienkie, jakby wilcze, ale słabe. Dochodziło z zarośli nieopodal. Maciek próbował nie zwracać na nie uwagi, ale ono wciąż wracało.
# pytanie: Co powinien zrobić Maciek?
*   [Wziąć siekierę – choć po ciemku łatwo ją zgubić w błocie – wyjść z szałasu i sprawdzić, co to.]
    -> pies
*   [Zostać w szałasie i mimo wszystko spróbować zasnąć. Tu czuje się bezpiecznie.]
    -> zostal

= zostal
~ los_psa = niespotkany
Maciek zacisnął palce na toporze i nie ruszył się z miejsca. Wycie trwało jeszcze długo. Potem przeszło w żałosne skomlenie i przed świtem ucichło. # dalej
-> dach


// ------------------------------------------------------------
//  Pies w zaroślach — tylko gdy Maciek wyszedł z szałasu.
// ------------------------------------------------------------
=== pies ===
# tlo: zarosla_noc
Maciek wyczołgał się na zewnątrz z siekierą w ręku. Noc była jasna od księżyca, a trawa mokra od rosy. Szedł powoli za dźwiękiem, krok po kroku, czując, że serce chce mu się wyrwać z piersi. Wycie raz cichło, a raz wybrzmiewało coraz bliżej.
W gęstych krzakach usłyszał szelest. Rozgarnął gałęzie trzonkiem siekiery i zamarł. Z ciemności wyłoniły się dwa błyszczące ślepia. W świetle księżyca dostrzegł, że to młody pies. Był tak chudy, że można było policzyć mu żebra, a łapy wydawały się nieproporcjonalnie duże w stosunku do reszty ciała. Pysk miał długi i wąski, a uszy postawione sztywno. Nie uciekał przed Maćkiem. Warczał cicho, trzęsąc się cały. # pokaz: pies
Maciek sięgnął do kieszeni. Było w niej małe zawiniątko z ostatnim kawałkiem chleba – twardym jak kamień, ale przecież to był jego jutrzejszy posiłek.
# pytanie: Co zrobi Maciek?
*   [Da psu kawałek chleba.]
    -> dal_chleb
*   [Nie da i wróci do szałasu.]
    -> nie_dal_chleba

= dal_chleb
~ ekwipunek -= chleb
~ los_psa = nakarmiony
Maciek rozwinął szmatkę i rzucił chleb pod krzak. Pies cofnął się i warknął, ale po chwili zaczął wąchać to, co spadło. Nagle porwał zdobycz w pysk i zniknął w ciemności, zanim Maciek zdążył mrugnąć.
Mężczyzna wpełzł z powrotem pod gałęzie swojego szałasu i zasnął ze świadomością, że jutro śniadania nie będzie. # dalej
-> dach

= nie_dal_chleba
~ los_psa = porzucony
Maciek zostawił chleb w kieszeni.
– Sam ledwo zipię – mruknął do psa, jakby chciał się przed nim usprawiedliwić.
Wycofał się powoli i schował pod gałęziami. Wycie odezwało się jeszcze raz, cichsze niż przedtem. Więcej tej nocy go nie usłyszał. # dalej
-> dach


// ------------------------------------------------------------
//  Dach — dzień po nocy z wyciem. Przebieg zależy od losu psa.
// ------------------------------------------------------------
=== dach ===
{ chata_macka:
    - przy_lesie: # tlo: budowa_las
    - przy_mokradlach: # tlo: budowa_mokradla
    - else: # tlo: budowa_jezioro
}
# rozdzial: Prolog
# tytul: Dach
{ los_psa == nakarmiony: -> bez_chleba | -> z_chlebem }

= z_chlebem
~ ekwipunek -= chleb
Rano Maciek rozwinął zawiniątko i zjadł ostatni kawałek chleba. Gryzł go powoli, długo, jakby chciał, żeby dał mu sił na cały dzień. Popił wodą, otrzepał dłonie i poszedł do pracy.
-> trzcina ->
Ciął gęstwinę siekierą przy samej ziemi, wiązał w snopy i znosił pod chatę. Raz za razem, aż przestał liczyć. Plecy paliły go żywym ogniem, ale sterta przy ścianie rosła.
Po południu trzciny w tym miejscu już nie było, więc ruszył dalej. Wracał inną drogą – od tej strony, z której kilka nocy temu dochodziło wycie. Szedł, aż nagle noga zawisła mu w powietrzu.
W trawie pod krzakiem leżał pies. Chudy, z długim pyskiem i za dużymi łapami. Był sztywny, przewrócony na bok, z na wpół otwartymi oczami. Muchy już go obsiadły.
{ los_psa == niespotkany:
    Maciek długo stał nad nim bez ruchu. Dopiero teraz zrozumiał, co wyło tamtej nocy. Nie dzikie zwierzę, nie żadna zmora – tylko głodne, zziębnięte szczenię, które wołało, aż przestało.
    Ścisnęło go w gardle. Pomyślał, że mógł wtedy wyjść. Ale zaraz odpowiedział sam sobie: a gdyby tak trafił prosto w paszczę wilka? Po ciemku nie wiadomo, co czeka w krzakach. Rozsądny człowiek siedzi w szałasie z siekierą pod ręką – i żyje.
    Odwrócił wzrok, zarzucił snop na plecy i wrócił do pracy. Psa zostawił tam, gdzie go znalazł. # dalej
- else:
    Maciek osunął się na kolana. Pamiętał te ślepia w świetle księżyca, to warczenie bez przekonania, drżenie całego ciała. Pies prosił, a on odwrócił się i odszedł.
    Jeden kawałek. Jeden twardy kawałek chleba.
    – Sam ledwo zipałem – powiedział na głos, jakby ktoś go oskarżał. – Gdybym oddał wszystko, to kto by tu leżał? Pies czy ja?
    Słowa brzmiały rozsądnie, ale nie przyniosły ulgi. Maciek podniósł się z kolan i nie patrząc więcej pod krzak, wrócił do noszenia trzciny. Ciała nie pochował. # dalej
}
-> uplyw_czasu

= bez_chleba
Rano Maciek obudził się głodny. Sięgnął odruchowo do kieszeni i przypomniał sobie, że zawiniątko jest puste. Westchnął, napił się wody i poszedł do pracy.
-> trzcina ->
Ciął gęstwinę siekierą przy samej ziemi, wiązał w snopy i znosił pod chatę. Raz za razem, aż przestał liczyć.
Koło południa, prostując obolałe plecy, zauważył w oddali ruch. Na skraju łąki, między kępami trawy, kręcił się pies – ten sam, chudy, z długim pyskiem. Węszył, przystawał i patrzył w jego stronę, gotów w każdej chwili czmychnąć.
Maciek uśmiechnął się, pierwszy raz od wielu dni.
– Żyjesz – mruknął.
Przez kolejne dni wracał. Najpierw trzymał się z daleka. Potem siadał na pagórku i godzinami przyglądał się, jak Maciek uwija się przy snopach. Codziennie był trochę bliżej – o kilka kroków, nie więcej, jakby sprawdzał, ile mu wolno. # dalej
-> uplyw_czasu

// Wspólny akapit o trzcinie na dach — skąd ją brał, zależy od miejsca chaty.
= trzcina
Ściany stały już równo, krokwie trzymały się mocno. Został dach. Na strzechę potrzebował trzciny – dużo trzciny, więcej, niż się wydawało, patrząc na samą chatę.
{ chata_macka:
    - przy_lesie: Najbliższa rosła na skraju mokradeł, pół godziny drogi stąd, więc każdy snop musiał dźwigać przez całą łąkę.
    - przy_mokradlach: Rosła niemal pod progiem, gęsta i wysoka, tyle że trzeba było brodzić po nią w zimnym błocie po kolana.
    - else: Rosła wokół całego brzegu, wyższa od niego, i szumiała przy każdym podmuchu jak ktoś, kto szepcze za plecami.
}
->->

= uplyw_czasu
Mijały dni. Śniegi stopniały do końca, nawet w najgłębszym cieniu pod borem. Ziemia przestała parować i zrobiła się ciepła pod bosą stopą. Na skraju lasu zakwitły zawilce – białe, gęste jak szron – a na podmokłych terenach złociły się kaczeńce.
Chleba Maciek nie miał już od dawna. Żył tym, co sam znalazł albo co przynosił mu Andrzej. Na mokradłach zbierał przezimowaną żurawinę, kwaśną i pomarszczoną, ale wciąż jadalną. Z krzaków dzikiej róży obrywał zeszłoroczne owoce, twarde jak paciorki. Z łąki rwał szczaw i młodą pokrzywę, z których robił zupę, a w wilgotnych zakątkach pod drzewami znajdował czosnek niedźwiedzi. Nacinał też brzozy i pił słodkawy sok, który kapał z nich do rana. Głód nie odchodził, ale dawało się z nim żyć.
Dach rósł z dnia na dzień. Snop przy snopie, warstwa na warstwie. # dalej
-> wieczor


// ------------------------------------------------------------
//  Wieczór — stwór w zaroślach.
// ------------------------------------------------------------
=== wieczor ===
# tlo: zmierzch
Tego dnia Maciek układał snopy już przy samej kalenicy. Brakowało już tylko jednego pasa, może dwóch. Ręce drżały mu ze zmęczenia, a słońce zsunęło się za horyzont, zostawiając na niebie brudną czerwień.
Zszedł z dachu i usiadł przy szałasie. Chciał odpocząć tylko chwilę, póki jeszcze było jasno. Oparł głowę o pień, zamknął oczy…
…i zasnął.
Obudziła go cisza.
Nie było słychać świerszczy, żab ani wiatru. Nad niecką wisiała mgła, gęsta i biała, sięgająca kolan. Maciek nie wiedział, ile spał. Wiedział tylko, że coś jest nie tak – czuł to ciałem i duszą, zanim zrozumiał umysłem.
Wtedy rozległ się dźwięk. Nie wycie ani krzyk, lecz coś pośrodku: przeciągły, gardłowy jęk, który przeszedł w trzask łamanych gałęzi. Coś wskoczyło z łoskotem w zarośla – tuż obok, niedaleko szałasu. # pokaz: oczy
Maciek zerwał się na równe nogi. Siekiera sama znalazła się w jego dłoniach. Ściskał topór tak mocno, że zbielały mu kostki, i patrzył w ciemność, skąd dochodziły kroki – powolne, ciężkie, coraz bliższe. # dalej
{ los_psa == nakarmiony: -> obrona | -> zdobycz }

= zdobycz
# tlo: zmierzch_zdobycz
Krzaki rozchyliły się. Z mgły wyłoniła się postać. # pokaz: topielec
Była wyższa od dorosłego mężczyzny, o dobre trzy głowy. Stała na dwóch nogach, ale zgarbiona, z rękami zwisającymi niemal do ziemi. Miała ludzki kształt – i wcale nie była człowiekiem. W paszczy trzymała coś dużego i bezwładnego, co opadało jej po obu stronach łba.
Maciek poznał to po łapach. Za dużych do reszty ciała. # pokaz: cialo
Postać zacisnęła szczęki. Rozległ się trzask – głośny, mokry, jak łamane suche gałęzie, tyle że to nie były one. Potem stwór odwrócił się i pomknął ku {chata_macka == przy_mokradlach:pobliskim }mokradłom, tak szybko, że mgła zawirowała za nim jak woda.
Maciek nie mógł się ruszyć. Trząsł się cały, zimny pot spływał mu po plecach, a nogi miał jak z waty. Siekiera ciążyła mu w rękach, bezużyteczna. Stał tak bardzo długo, aż ciemność znów ucichła.
-> strach_o_chate ->
Maciek wczołgał się do szałasu. Długo jeszcze nie zmrużył oka i nasłuchiwał, aż wyczerpany pracą i strachem zasnął. # dalej
-> zgliszcza

= obrona
# tlo: zmierzch_obrona
Krzaki rozchyliły się. W mroku zapłonęły dwa ślepia – wysoko, za wysoko jak na wilka czy dzika. Postać stała w zaroślach na dwóch nogach, zgarbiona, z rękami zwisającymi niemal do ziemi. Miała ludzki kształt – i wcale nie była człowiekiem. # pokaz: topielec
Maciek nie mógł się ruszyć. Trząsł się cały, zimny pot spływał mu po plecach. Patrzyły prosto na niego i powoli, bardzo powoli przybliżały się.
Wtedy z oddali dobiegło szczekanie.
Pies wypadł z ciemności jak strzała i stanął między Maćkiem a zaroślami. Sierść zjeżyła mu się na karku, zaparł się w miejscu i ujadał – głośno, zajadle, bez chwili przerwy, choć cały drżał. Chudy, młody, z za dużymi łapami – i nie cofnął się ani o krok. # pokaz: pies
Ślepia zatrzymały się. Postać zawahała się, wydała z siebie gardłowy syk – a potem zawróciła i z trzaskiem gałęzi pomknęła w stronę {chata_macka == przy_mokradlach:pobliskich }mokradeł, aż mgła zawirowała za nią jak woda.
-> strach_o_chate ->
~ los_psa = oswojony
~ ekwipunek += pies_towarzysz
Długo trwało, zanim Maciek doszedł do siebie. W końcu osunął się na ziemię przy szałasie i oddychał ciężko, jakby przebiegł pół niecki. Pies przestał ujadać. Podszedł do niego niepewnie, z opuszczonym łbem – i zamerdał ogonem, dumny z siebie jak nikt na świecie.
Maciek wyciągnął drżącą rękę. Zwierzę obwąchało ją, a potem pozwoliło się pogłaskać.
– Dobry pies – szepnął Maciek. – Dobry – odetchnął.
Tej nocy weszli do szałasu razem. Zwinął się w kłębek przy boku człowieka i zasnął pierwszy. Maciek czuwał jeszcze, wsłuchany w ciemność. Ale nie był już sam. # dalej
-> zgliszcza

// Tylko gdy chata stoi przy mokradłach — stwór uciekł właśnie tam.
= strach_o_chate
{ chata_macka == przy_mokradlach:
    A potem dotarło do niego, że stwór nie uciekł daleko. Zniknął w bagnie, kilkadziesiąt kroków od szałasu – tam, gdzie Maciek od miesiąca spał, jadł i pracował. Może był tam od początku. Może co noc, gdy Maciek nasłuchiwał bulgotania czarnej wody, coś po drugiej stronie nasłuchiwało jego. „Tam się nie buduje. Tam się tylko topi” – przypomniały mu się słowa ludzi spod studni. Pierwszy raz od dnia, w którym zaczął budowę, pomyślał, że może popełnił błąd. Że może trzeba było posłuchać.
}
->->


// ------------------------------------------------------------
//  Zgliszcza — poranek po nocy z topielcem, dokończenie dachu,
//  rozmowa z Andrzejem.
// ------------------------------------------------------------
=== zgliszcza ===
{ chata_macka:
    - przy_lesie: # tlo: chata_las
    - przy_mokradlach: # tlo: chata_mokradla
    - else: # tlo: chata_jezioro
}
# rozdzial: Prolog
# tytul: Zgliszcza
Zaczęło świtać. Obudził się zesztywniały i zziębnięty. Przez chwilę nie wiedział, czy to, co widział w nocy, wydarzyło się naprawdę. Potem wrócił mu w pamięci trzask łamanych gałęzi i przeszedł go dreszcz.
{ los_psa == oswojony:
    Pies leżał przy wejściu do szałasu z łbem na łapach i patrzył w stronę mokradeł. Już nie spał. Maciek miał wrażenie, że czuwał tak aż do świtu.
- else:
    W szałasie było cicho. Maciek wyjrzał na zewnątrz. W trawie przy zaroślach odbijały się wąskie, długie ślady, za długie jak na zwierzę, i ciągnęły się w stronę mokradeł. Między nimi ciemniały plamy krwi. # pokaz: slady
}
Maciek podszedł do swojej niedokończonej chaty i usiadł na jej progu. Siedział i patrzył przed siebie. Myśli kłębiły się w nim jak mgła nad wsią. Uciekać. Zostawić wszystko, póki jeszcze żyje, i nigdy nie wracać. A z drugiej strony – ponad miesiąc pracy, pęcherze na dłoniach, ostatnie kromki chleba. Każdy bal w tych ścianach ociosał sam. I dokąd miałby pójść? Na cudze pole, znowu za miskę kaszy? Obiecał przecież, że sprowadzi tu rodzinę. Że będą mieli swój dach.
# pytanie: Co postanowi Maciek?
*   [Zostanie. Za dużo w to miejsce włożył.]
    -> zostaje
*   [Spakuje to, co ma, i odejdzie, póki czas.]
    -> odchodzi

= zostaje
Wstał, otrzepał spodnie i spojrzał na dach. Został jeden pas trzciny, może dwa.
– Nie po to budowałem, żeby teraz uciekać – powiedział głośno, jakby chciał, żeby usłyszało go coś więcej niż las. # dalej
-> dach_gotowy

= odchodzi
~ chcial_odejsc = true
Zarzucił tobołek na ramię i ruszył pod górę, w stronę gościńca. Maszerował szybko, nie oglądając się za siebie. Dopiero na grzbiecie niecki przystanął i spojrzał w dół.
Chata stała tam, mała i niedokończona, z dachem jak niedopowiedziane zdanie. Jego chata.
{ los_psa == oswojony: Pies szedł za nim kawałek, a potem usiadł w połowie zbocza i patrzył – raz na niego, raz za siebie – jakby czekał, aż Maciek sam zrozumie. }
Nie ruszał się, dopóki słońce nie wzeszło nad borem. Potem zawrócił. Nie dlatego, że przestał się bać. Po prostu nie miał dokąd pójść. # dalej
-> dach_gotowy

= dach_gotowy
Ostatnie snopy trzciny ułożył do południa. Związał je łykiem, docisnął żerdziami i zszedł z drabiny. Pierwszy raz od przyjścia do Zapadliny stał przed chatą, której dach wyglądał tak dobrze. # pokaz: dach
Tej nocy wreszcie zasnął pod nim. Ściany pachniały żywicą i wilgotną gliną, a przez szparę w drzwiach przeciskało się światło księżyca.
Nie było jeszcze łóżka, ale przynajmniej nie spał pod gołym niebem. Tu, u siebie, czuł ciepło i bezpieczeństwo.
{ los_psa == oswojony: Pies ułożył się na progu, tak jakby to miejsce od zawsze było jego. }
Rano poszedł do Andrzeja. Musiał komuś powiedzieć. # dalej
-> u_andrzeja

= u_andrzeja
# tlo: izba_andrzeja
Chałupa Andrzeja stała na pagórku, z dala od wody. W izbie pachniało dymem i było ciasno. Staś, syn gospodarza, siedział przy stole na szerokim podłokietniku drewnianego krzesła i strugał nożykiem patyk. Na widok gościa uśmiechnął się od ucha do ucha.
Maciek zaczął od samego początku: od ciszy, od kroków i… od postaci wyższej od człowieka o trzy głowy, z rękami do ziemi.
Andrzej słuchał, aż nagle parsknął śmiechem.
– Z głodu ci się przywidziało, Maćku. Otrząśnij się. Miesiąc o chlebie i wodzie – to i archanioła Michała można zobaczyć.
Staś przestał strugać. Patrzył na Maćka z otwartymi ustami i zauważalnym strachem w oczach.
– Czy to prawda? – zapytał.
# pytanie: Co zrobi Maciek?
*   [Potwierdzi stanowczo, że to prawda, i powie wszystko do końca, przy chłopcu. Niech wie, przed czym ma się strzec.]
    ~ stas_zaufanie = true
    -> prawda_przy_chlopcu
*   [Uśmiechnie się i zbędzie chłopca, że to chyba był tylko sen, ale poprosi Andrzeja, żeby go odesłał, i w cztery oczy opowie wszystko ze szczegółami. To nie są rzeczy dla dziecka.]
    -> w_cztery_oczy

= prawda_przy_chlopcu
– Tak, to prawda. Niech dzieciak słucha – powiedział Maciek. – Lepiej, żeby się bał, niż poszedł nad bagno sam i już nigdy nie wrócił.
Andrzej spojrzał na syna, potem na Maćka. Uśmiech powoli zniknął mu z twarzy.
-> dziad_opowiadal

= w_cztery_oczy
– Właściwie to… to był pewnie zły sen – odpowiedział.
Poprosił jednak Andrzeja o rozmowę w cztery oczy. Ten wysłał Stasia po wodę. Chłopiec wyszedł niechętnie, a drzwi zostawił uchylone. Żaden z mężczyzn tego nie zauważył.
-> dziad_opowiadal

= dziad_opowiadal
– Ręce do ziemi, mówisz – odezwał się w końcu Andrzej, już bez śmiechu. – Wyższa o trzy głowy. – Podszedł do okna i długo patrzył w stronę jeziora. – Mój dziad opowiadał o czymś takim. Myślałem, że dzieci straszył.
Wtedy Maciek jeszcze raz, krok po kroku, odtworzył całą tamtą noc. # dalej
-> legenda


// ------------------------------------------------------------
//  Legenda o wiedźmie znad jeziora — opowiada Andrzej.
// ------------------------------------------------------------
=== legenda ===
# tlo: legenda
– Podobno wszystko zaczęło się tam, nad jeziorem, gdzie leżą te zwęglone bale. – Andrzej ściszył głos. – Mieszkała tam kiedyś kobieta. Zielarka. Ludzie chodzili do niej z bólem, chorobami i gorączką – była pomocna. Ale z czasem coś w nią weszło. Nie wiadomo dlaczego. Gadała po nocach, ale nie do siebie – do kogoś, kogo nikt nie widział. Mówiła, że umarli przychodzą do niej znad wody i opowiadają o strasznej przyszłości. Wkrótce wszyscy jej unikali, bo się bali.
Potem we wsi działo się coraz gorzej. Mleko kwaśniało w wiadrach, małe dzieci budziły się z krzykiem, warzywa gniły w ziemi. Ginęły też zwierzęta – najpierw cielę, potem krowa, potem cały kurnik w jedną noc – ludzie powiedzieli, że to jej sprawka – zaczęli nazywać ją wiedźmą.
Pewnej nocy kilku chłopów zebrało się pod jej chatą. Zabili drzwi deskami, kiedy spała, obłożyli ściany słomą i podpalili. # pokaz: chlopi, ogien
Andrzej zamilkł na chwilę.
– Dziad mówił, że krzyczała do samego końca. Nie z bólu, Maćku. Przeklinała. Wieś, ziemię, każdego, kto tu mieszka i kto kiedyś zamieszka. Że nikt nie zazna spokoju, dopóki ci, którzy ją odwiedzają, nie wymordują tu wszystkich do nogi. Słychać było też, jak jęczała, rzucając słowa klątwy: „Kości dzieci waszych będą połamane, a krew ich wypita…”.
– Straszne… A ci, co ją spalili?
– Żaden nie dożył zimy. Jeden po drugim tracili rozum. Gadali do siebie, nie sypiali, chodzili po ciemku nad wodę. Aż w końcu wszyscy weszli w bagno i już nie wyszli. Ci, którzy spotkali ich ostatni, mówili, że w oczach mieli coś dziwnego. Jakby żarzące się węgielki. # pokaz: wegielki
Andrzej pochylił się ku Maćkowi.
– To ich oczy mrugają po nocach nad mokradłami. Nie żadne błędne ognie. Oni tam stoją i wypatrują. I wabią.
{ chata_macka:
    - przy_mokradlach: Maciek poczuł, jak zimno ściska go w żołądku. Każdej nocy widział te światełka ze swojego progu. Myślał, że to gnijące drewno albo bagienny gaz. Że to tylko światło.
    - nad_jeziorem: Maciek zbladł. Te bale zepchnął własnymi rękami w trzciny. Swoją chatę postawił dokładnie tam, gdzie płonęła tamta.
}
{ stas_zaufanie:
    Staś siedział bez ruchu, z niedokończonym patykiem w dłoni. # dalej
- else:
    Za uchylonymi drzwiami coś cicho skrzypnęło. Kiedy Andrzej wyjrzał, w sieni stało tylko wiadro z wodą. Staś był już daleko na podwórzu. # dalej
}
-> zgliszcza_wiedzmy


// ------------------------------------------------------------
//  Zgliszcza chaty wiedźmy w trzcinach nad jeziorem.
// ------------------------------------------------------------
=== zgliszcza_wiedzmy ===
# tlo: zgliszcza
Wracając od Andrzeja, Maciek nie mógł przestać myśleć o zgliszczach.
{ chata_macka == nad_jeziorem: Teraz, kiedy wiedział, czym są, widział je za każdym razem, gdy spojrzał w trzciny przy swoim domu. Czarne, zwęglone bale sterczące jak żebra. }
Coś w środku kusiło go, by dokładnie je zbadać, choć czuł lęk.
# pytanie: Co zrobi Maciek?
*   [Pójdzie do zgliszcz i przeszuka popiół.]
    -> przeszukuje
*   [Będzie się trzymał od nich z daleka.]
    -> omija

= przeszukuje
~ przeszukal_zgliszcza = true
~ ekwipunek += figurka
Rozgarnął trzciny siekierą i ukląkł przy poczerniałych belach. Popiół był zimny, zbity i wilgotny. Grzebał w nim długo, sam nie wiedząc, czego szuka, aż palce trafiły na coś twardego. # pokaz: maciek
Mała figurka z drewna, nadpalona z jednej strony. Ludzka postać z rękami za długimi, sięgającymi do stóp.
Maciek obracał ją w dłoniach. Pomyślał, że może wymieni ją w mieście na coś do jedzenia, więc ją zatrzymał.
{ los_psa == oswojony: Pies, który dotąd węszył przy brzegu, cofnął się i warknął cicho na jego kieszeń. }
Wtedy dostrzegł w popiele coś jeszcze.
– Niemożliwe – szepnął i wyciągnął przedmiot przypominający krzesiwo. – Czyżby nim podpalono chatę wiedźmy?
# pytanie: Czy Maciek weźmie krzesiwo?
*   [Tak – przeklęte czy nie, da mu to możliwość rozpalania ognia i przygotowania ciepłych posiłków.]
    ~ ekwipunek += krzesiwo
    -> wieczor_przy_chacie
*   [Nie – nie chce ryzykować klątwy, która mogłaby na niego spaść.]
    -> wieczor_przy_chacie

= omija
Ominął jezioro szerokim łukiem i ani razu nie spojrzał w stronę trzcin. Niektórych rzeczy lepiej nie ruszać. # dalej
-> wieczor_przy_chacie


// ------------------------------------------------------------
//  Wieczór przy chacie — ogień (jeśli ma krzesiwo) i plan wyprawy do miasta.
// ------------------------------------------------------------
=== wieczor_przy_chacie ===
{ chata_macka:
    - przy_lesie: # tlo: wieczor_las
    - przy_mokradlach: # tlo: wieczor_mokradla
    - else: # tlo: wieczor_jezioro
}
{ ekwipunek ? krzesiwo:
    Wieczorem Maciek nazbierał suchych gałęzi i ułożył je w kręgu kamieni przed chatą. Krzesiwo leżało mu w dłoni dziwnie ciężkie. Przez chwilę mu się przyglądał, myśląc o tym, czyje ręce trzymały je ostatnie. Potem uderzył raz, drugi, trzeci – i w hubie zatliła się iskra. # pokaz: ogien
    Ogień buchnął jasno, a ciepło chlusnęło mu w twarz tak nagle, że aż zakręciło mu się w głowie. Od tygodni nie miał w ustach nic gorącego. Teraz ugotował w glinianym garnku zupę z pokrzywy i szczawiu. Jadł powoli, parząc sobie wargi, i nic na świecie nie smakowało mu tak dobrze.
    { los_psa == oswojony:
        Pies położył się po drugiej stronie ogniska. Płomienie odbijały się w jego ślepiach, a on wpatrywał się w nie jak urzeczony. # pokaz: pies
    }
- else:
    Wieczór zapadł chłodny i ciemny. Maciek zjadł garść surowego szczawiu i kilka pomarszczonych jagód żurawiny, popił wodą i usiadł na progu.
}
Długo siedział, spoglądając ku gościńcowi, i układał w myślach plan. Chata była gotowa. Czas było ruszyć do miasta – kupić chleba, sól, może trochę kaszy.
{ ekwipunek ? figurka: Figurkę spróbuje sprzedać – może ktoś zapłaci za taką osobliwość. }
A potem, gdy tylko zbierze siły, przyprowadzi tu rodzinę. Do domu, który zbudował własnymi rękami. # dalej
-> droga_do_miasta


// ------------------------------------------------------------
//  Droga do miasta — kręta ścieżka między mokradłami, głos znad wody.
// ------------------------------------------------------------
=== droga_do_miasta ===
# tlo: sciezka
Wyruszył o świcie. Do miasta było sześć godzin drogi, a pierwszy jej odcinek prowadził krętą ścieżką między mokradłami, pod górę, aż na Bukowy Grzbiet. Był gotowy i zmotywowany, by czym prędzej zrealizować swój plan. Nie mógł się doczekać, aż zamieszka w nowej chacie razem ze swoją żoną i dzieckiem. Myślał o nich teraz i czuł, że bardzo za nimi tęskni.
{ los_psa == oswojony:
    Pies szedł tuż przy jego boku i wesoło poruszał ogonem. # pokaz: pies
}
Mgła leżała nisko nad czarną wodą. Ścieżka była wąska, miejscami tak rozmiękła, że trzeba było przeskakiwać z kępy na kępę. Maciek stąpał ostrożnie, ze spuszczoną głową. Pamiętał, co mówili ludzie: w tę wodę nie wolno patrzeć zbyt długo.
W połowie drogi coś kazało mu jednak podnieść wzrok. W głębi mokradeł tliło się blade światełko. Świtało już na dobre, a ono wciąż tam było. Mrugało powoli, równo, jakby ktoś stał z kagankiem i wypatrywał. # pokaz: swiatelko
Wtedy usłyszał swoje imię.
– Maaaciek…
Cicho, przeciągle, znad wody. Głosem, który brzmiał jak głos jego żony.
Zawsze tak go przywoływała, gdy była w kłopocie. Przecież miała na niego czekać… nie ruszać się z dotychczasowego miejsca… A może to tylko mu się zdawało… A może to bagno woła go do siebie.
# pytanie: Co zrobi Maciek?
*   [Pójdzie w stronę głosu – być może jego żona potrzebuje pomocy.]
    { los_psa == oswojony: -> ratunek | -> utoniecie }
*   [Nie odwróci się i pójdzie dalej – to na pewno nie może być ona.]
    -> nie_odwraca_sie

= ratunek
# tlo: sciezka_po
~ pies_uratowal = true
Zrobił krok ze ścieżki, potem drugi, minął gęstwinę i przeskoczył przez grząskie błoto. Bagno zachlupotało i chwyciło go za kostki lodowatymi palcami. Poczuł, jak jego nogi wciąga pod powierzchnię. Wtedy pies skoczył, złapał go zębami za sukmanę i szarpnął z całej siły do tyłu. Maciek runął na plecy i krzyknął. Światełko zgasło jak zdmuchnięte, a gdzieś we mgle rozległ się cichy chichot.
Leżał w błocie, dysząc, a zwierzę stało nad nim i warczało w stronę mokradeł, dopóki mgła nie zamknęła się nad wodą. # pokaz: upadek # dalej
-> na_grzbiecie

= utoniecie
# tlo: sciezka_smierc
Zrobił krok ze ścieżki, potem drugi, minął gęstwinę i przeskoczył przez grząskie błoto. Bagno zachlupotało i chwyciło go za kostki lodowatymi palcami. Poczuł, jak jego nogi wciąga pod powierzchnię. Głos był coraz bliżej – teraz ciepły, znajomy, taki, za którym tęsknił od lat.
– Maaaciek…
Stał nieruchomo, zanurzony już po kolana, potem po pas. Nie czuł zimna. Czuł tylko, że ktoś ukochany się do niego zbliża.
Dopiero gdy czarna woda sięgnęła mu piersi, zrozumiał. Szarpnął się, ale coś trzymało go za łydki – coś, co miało palce. Światełko zamrugało tuż przed jego twarzą i zobaczył, że to nie kaganek. To były oczy. Żarzące się jak węgielki. # pokaz: oczy
Bagno westchnęło po ludzku i zamknęło się nad nim. # pokaz: bagno
Nad Zapadliną wstawał dzień. Chata stała pusta, z nowym dachem, pod który nikt już nie wróci. # smierc
-> END

= nie_odwraca_sie
Zacisnął zęby i szedł dalej, krok za krokiem, nie odwracając głowy. Głos wołał jeszcze dwa razy, coraz ciszej. Potem umilkł. # dalej
-> na_grzbiecie

= na_grzbiecie
# tlo: zapadlina
Na Bukowym Grzbiecie Maciek wreszcie odważył się obejrzeć. W dole leżała Zapadlina – cicha, przykryta mgłą jak całunem. Gdzieś tam stała jego chata.
Potem ruszył gościńcem w stronę miasta.
-> prolog_ciag_dalszy


// Kolejna scena prologu — do napisania.
=== prolog_ciag_dalszy ===
# ozdobnik
_Ciąg dalszy nastąpi…_
-> END
