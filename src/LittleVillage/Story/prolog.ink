// ------------------------------------------------------------
//  Prolog — Zapadlina, około siedemdziesiąt lat przed główną
//  częścią opowieści. Maciek, dziadek Jaromira, wybiera
//  miejsce na chatę.
// ------------------------------------------------------------

=== prolog ===
# tlo: zapadlina
# rozdzial: Prolog
# tytul: Zapadlina
Zapadlina – wieś leżąca tam, gdzie ziemia, zmęczona byciem równiną, osunęła się w dół. Chcąc do niej dotrzeć, zawsze trzeba było schodzić z pagórków, brzegów i zboczy – czy to od gościńca przez Bukowy Grzbiet, czy od boru udeptaną ścieżką. Z miasta wracało się sześć godzin, a ostatni odcinek drogi prowadził krętą ścieżką między mokradłami, wciąż w dół. Mgła lubiła tę nieckę. Wlewała się w nią o zmierzchu jak mleko do miski i bywało, że nawet do południa nie chciała z niej wyjść.
Od wschodu napierał las – stary, iglasty i tak gęsty, że nawet w południe drzewa rzucały głęboki, chłodny cień. Na północy miękka ziemia przechodziła w mokradła porośnięte pałkami, turzycą i karłowatymi krzewami. Woda stała tam czarna, mętna i nieruchoma. Niektórzy powiadali, że nie wolno zbyt długo się w nią wpatrywać, bo można tym wywołać topielce uwięzione pod warstwą mułu. Po nocach często latały nad nią błędne ognie. Na zachodzie, w najniższym miejscu niecki, leżało jezioro, okrągłe, jakby ktoś wycisnął je kolanem. Mówiono, że nikt nie widział jego dna.
Wieś była młoda i mała. Pięć chałup stało daleko od siebie, bo każdy brał tyle pola, ile był w stanie wykarczować i obronić. Mieszkało w niej około trzydziestu osób, licząc z dziećmi. Wszyscy dobrze się znali. Kościół był dopiero w mieście; chodziło się do niego kilka razy w roku, na najważniejsze święta, o ile pozwalały na to warunki. Wtedy w niecce nie zostawała ani jedna żywa dusza.
Jakieś siedemdziesiąt lat przed tym, nim Jaromir pierwszy raz spojrzał w stronę lasu, jego dziadek zszedł do Zapadliny z tobołkiem na ramieniu. Maciek nie miał nic poza siekierą, chlebem, parą rąk i uporem. Siekierę i chleb kupił w mieście za pieniądze, które zarobił przez cztery lata pracy na cudzym polu. Chciał wreszcie mieć coś swojego – miejsce, w którym mógłby zamieszkać i dać rodzinie dach nad głową. Tutaj mógł mieć tyle ziemi, ile zdoła oczyścić. Była wiosna, pola parowały, a gdzieniegdzie w cieniu leżał jeszcze brudny śnieg. Maciek trzeci dzień chodził po niecce i wybierał miejsce na chatę. Trzy najczęściej wracały w jego myślach.
# ozdobnik
Pierwsze leżało na wschodnim skraju wsi, pod samym lasem. Ziemia była żyzna, drewno miał na wyciągnięcie ręki, a i zwierzyny nie brakowało. Tylko że od boru zawsze ciągnął chłód, nawet w południe, a nocą dochodziły stamtąd tajemnicze, przerażające dźwięki.
Drugie było na północy, przy mokradłach. Były tam rozległe łąki, na których można by wypasać bydło, a torfu do palenia nigdy by nie zabrakło. Za to po północy nad bagnami podobno coś mrugało. Ludzie spotkani przy studni mówili tylko: – Tam się nie chodzi i nie buduje. Tam się tylko topi.
Trzecie leżało nad jeziorem i było najbardziej malownicze. Woda była czysta, ryby same wskakiwały do ręki, a brzeg łagodny – trzeba było tylko przedrzeć się przez gęste trzciny. Był tam też ślad po chałupie, która kiedyś tu stała: stare, spróchniałe i zwęglone bale. Nikt we wsi nie chciał powiedzieć, kto w niej mieszkał ani co się z nim stało, a ludzie żegnali się za każdym razem, gdy ktoś o niej wspomniał.
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
Maciek wybrał łąki przy mokradłach. Gdy zaczął pracę, ludzie, którzy go widzieli, kręcili głowami z dezaprobatą i zdziwieniem. Dla nich było to ostatnie miejsce, w którym postawiliby chatę. Ziemia uginała się tu pod stopami, ale dawała torf, którego starczyłoby nawet na sto zim. Żeby chata nie zapadła się w błoto, Maciek musiał przygotować podmurówkę. Przez cały pierwszy dzień znosił z pagórków kamienie i sumiennie je układał.
Drewno musiał ścinać daleko, pod borem. Zdarzało mu się wpaść w płytkie bajoro – w końcu nie znał jeszcze dobrze terenu – i buty miał wiecznie przemoczone. Gdy myślał o tym, co opowiadali ludzie, czuł niepokój, ale i ciekawość. Nie dawało mu spokoju, co takiego mogło mrugać nad bagnami. Starał się omijać czarną wodę i wziął sobie do serca przestrogę o topielcach. Jeśli istniały, na pewno nie chciał ich spotkać.
-> praca

= jezioro
# tlo: budowa_jezioro
# rozdzial: Prolog
# tytul: Chata
Maciek wybrał brzeg jeziora. Coś w głębi serca mówiło mu, że to miejsce jest dla niego. Może to wizualny urok tego zbiornika był dla niego tak przyciągający. Spróchniałe, zwęglone bale po dawnej chałupie zepchnął w wysokie trzciny, by się nimi nie przejmować. Było, minęło – powtarzał sobie podczas karczowania brzegu, gdy do głowy wracały mu opowieści mieszkańców. Drzewa ścinał na zboczach, a pnie staczał w dół. Do pokrycia dachu zbierał trzcinę, której tu nie brakowało – sięgała mu ponad głowę.
-> praca

= praca
Budowa trwała ponad miesiąc. Czasami ktoś z mieszkańców przychodził pomóc Maćkowi. Najczęściej był to Andrzej, z którym zawsze rozmawiało mu się najlepiej. Mężczyzna lubił opowiadać o swoim synu, który był jego oczkiem w głowie. Chłopak miał jedenaście lat, a już był dla ojca ogromnym wsparciem. Andrzej sam nie miał wiele, ale widząc, w jakiej biedzie żyje Maciek, czasem przynosił mu coś do zjedzenia.
Sama budowa nie była skomplikowana: ściąć drzewa, okorować je, pociąć na bale odpowiedniej długości i wyciąć na ich końcach zamki, żeby po złożeniu dobrze się trzymały. Dzięki temu ściany stały bez jednego gwoździa. Szczeliny zatykał mchem i gliną. Od ciężkiej, codziennej pracy dłonie pokryły mu się pęcherzami, które pękały i zrastały się, aż skóra stała się twarda jak kora.
Swój chleb jadł bardzo oszczędnie – kromkę na śniadanie i kromkę na kolację, popijając je wodą. Powtarzał sobie, że po kolejny bochenek pójdzie do miasta, jak tylko skończy dach. Bochenek twardniał, kurczył się i z każdym dniem ważył coraz mniej – a Maciek razem z nim.
Noce spędzał w szałasie z gałęzi, który naprędce postawił pierwszego wieczoru: kilka konarów opartych o pień, przykrytych gałęziami z liśćmi i darnią, a w środku posłanie z mchu. Mieścił się w nim tylko na leżąco. Siekierę zawsze trzymał u boku. # dalej
-> noce

= noce
Noce były najgorsze. Wiosenny chłód i wilgoć wchodziły pod ubranie, kąsając przenikliwie do kości. Ciężko było zasnąć. Maciek leżał z otwartymi oczami i słuchał.
{ chata_macka:
    - przy_lesie: Las nigdy nie milkł. Nie było wiatru, a gałęzie trzaskały tak, jakby ktoś – albo coś – leniwie po nich chodziło. Maciek często wstrzymywał oddech i nasłuchiwał, choć od niektórych dźwięków przechodziły go ciarki.
    - przy_mokradlach: Bagna nigdy nie spały. Bulgotały, mlaskały, a czasem – miał wrażenie – wzdychały po ludzku. Gdy usłyszał to pierwszy raz, wzdrygnął się, złapał za siekierę i wyjrzał z szałasu. Opowieści ludzi okazały się prawdziwe. Po północy, daleko nad czarną wodą, zapalało się małe światełko i mrugało – jakby ktoś stał tam z kagankiem i wabił do siebie.
    - else: Jezioro nocą oddychało. Każdy powiew znad wody był ciepły i przyjemny. Choć nie było wiatru ani fal, przy brzegu co jakiś czas coś pluskało. Raz Maciek usłyszał, jakby coś ciężkiego wychodziło z wody i szło brzegiem przez trzciny w stronę szałasu. Rano sprawdził, ale w błocie nie było żadnych śladów.
}
Którejś nocy, gdy z bochenka została mu już tylko piętka, usłyszał dźwięk, jakiego dotąd tu nie słyszał. Ciche, urywane wycie – cienkie, jakby wilcze, ale słabe. Dobiegało z zarośli niedaleko szałasu. Maciek próbował zamknąć oczy i zasnąć, ale wycie wciąż wracało.
# pytanie: Co powinien zrobić Maciek?
*   [Wziąć siekierę – choć po ciemku łatwo ją zgubić w błocie – wyjść z szałasu i sprawdzić, co to.]
    -> pies
*   [Zostać w szałasie i mimo wszystko spróbować zasnąć. Tu czuje się bezpiecznie.]
    -> zostal

= zostal
~ los_psa = niespotkany
Maciej zacisnął palce na toporze i nie ruszył się z miejsca. Wycie trwało jeszcze długo. Potem przeszło w ciche skomlenie i przed świtem ucichło. # dalej
-> dach


// ------------------------------------------------------------
//  Pies w zaroślach — tylko gdy Maciek wyszedł z szałasu.
// ------------------------------------------------------------
=== pies ===
# tlo: zarosla_noc
Maciej wyczołgał się z szałasu z siekierą w ręku. Noc była jasna od księżyca, a trawa mokra od rosy. Szedł powoli za dźwiękiem, krok po kroku, czując, że serce chce mu się wyrwać z piersi. Wycie raz cichło, a raz wybrzmiewało coraz bliżej.
W gęstych krzakach usłyszał szelest. Rozgarnął gałęzie trzonkiem siekiery i zamarł. Z ciemności wyłoniły się dwa błyszczące ślepia. W świetle księżyca dostrzegł, że to młody pies. Był tak chudy, że można było policzyć mu żebra, a łapy miał nieproporcjonalnie duże w stosunku do reszty ciała. Pysk miał długi i wąski, a uszy postawione sztywno. Nie uciekał przed Maćkiem. Warczał cicho, trzęsąc się cały. # pokaz: pies
Maciej sięgnął do kieszeni. Było w niej małe zawiniątko z ostatnim kawałkiem chleba – twardym jak kamień, ale miał to być jego jutrzejszy posiłek.
# pytanie: Co zrobi Maciek?
*   [Da psu kawałek chleba.]
    -> dal_chleb
*   [Nie da i wróci do szałasu.]
    -> nie_dal_chleba

= dal_chleb
~ ekwipunek -= chleb
~ los_psa = nakarmiony
Maciek otworzył zawiniątko, wyciągnął z niego kawałek chleba i rzucił go pod krzak. Pies cofnął się i warknął, ale po chwili zaczął wąchać to, co spadło. Nagle porwał chleb w pysk i zniknął w ciemności, zanim Maciek zdążył mrugnąć.
Mężczyzna wrócił do szałasu i zasnął ze świadomością, że jutro śniadania nie będzie. # dalej
-> dach

= nie_dal_chleba
~ los_psa = porzucony
Maciek zostawił chleb w kieszeni.
– Sam ledwo zipię – mruknął do psa, jakby chciał się przed nim usprawiedliwić.
Wycofał się powoli i wrócił do szałasu. Wycie odezwało się jeszcze raz, cichsze niż przedtem. Więcej tej nocy go nie usłyszał. # dalej
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
Po południu trzciny w tym miejscu już nie było, więc ruszył dalej. Wracał w stronę chaty od innej strony – od tej, z której kilka nocy temu dochodziło wycie. Szedł, aż nagle noga zawisła mu w powietrzu.
W trawie pod krzakiem leżał pies. Chudy, z długim pyskiem i za dużymi łapami. Leżał na boku, sztywny, z na wpół otwartymi oczami. Muchy już go obsiadły.
{ los_psa == niespotkany:
    Maciek długo stał nad nim bez ruchu. Dopiero teraz zrozumiał, co wyło tamtej nocy. Nie wilk, nie żadna zmora – tylko głodne, zziębnięte szczenię, które wołało, aż przestało.
    Ścisnęło go w gardle. Pomyślał, że mógł wtedy wyjść. Ale zaraz odpowiedział sam sobie: mógł też wyjść prosto w paszczę wilka. W nocy nie wiadomo, co czeka w krzakach. Rozsądny człowiek siedzi w szałasie z siekierą pod ręką – i żyje.
    Odwrócił wzrok, zarzucił snop na plecy i wrócił do pracy. Psa zostawił tam, gdzie leżał.
- else:
    Maciek osunął się na kolana. Pamiętał te ślepia w świetle księżyca, to warczenie bez przekonania, drżenie całego ciała. Pies prosił, a on zostawił chleb w kieszeni.
    Jeden kawałek. Jeden twardy kawałek chleba.
    – Sam ledwo zipałem – powiedział na głos, jakby ktoś go oskarżał. – Gdybym oddał wszystko, to kto by tu leżał? Pies czy ja?
    Słowa brzmiały rozsądnie, ale nie przyniosły ulgi. Maciek wstał, otrzepał kolana i nie patrząc więcej pod krzak, wrócił do noszenia trzciny. Ciało zostawił tak, jak leżało.
}
# dalej
-> uplyw_czasu

= bez_chleba
Rano Maciek obudził się głodny. Sięgnął odruchowo do kieszeni i przypomniał sobie, że zawiniątko jest puste. Westchnął, napił się wody i poszedł do pracy.
-> trzcina ->
Ciął gęstwinę siekierą przy samej ziemi, wiązał w snopy i znosił pod chatę. Raz za razem, aż przestał liczyć.
Koło południa, prostując obolałe plecy, zauważył w oddali ruch. Na skraju łąki, między kępami trawy, kręcił się pies – ten sam, chudy, z długim pyskiem. Węszył przy ziemi, przystawał i patrzył w jego stronę, gotów w każdej chwili czmychnąć.
Maciek uśmiechnął się, pierwszy raz od wielu dni.
– Żyjesz – mruknął.
Przez kolejne dni pies wracał. Najpierw krążył daleko, po skraju łąki. Potem siadał na pagórku i godzinami patrzył, jak Maciek wiąże trzcinę. Każdego dnia był trochę bliżej – o kilka kroków, nie więcej, jakby sprawdzał, ile mu wolno. # dalej
-> uplyw_czasu

// Wspólny akapit o trzcinie na dach — skąd ją brał, zależy od miejsca chaty.
= trzcina
Ściany stały już równo, krokwie trzymały się mocno. Został dach. Na strzechę potrzebował trzciny – dużo trzciny, więcej, niż się wydawało, patrząc na samą chatę.
{ chata_macka:
    - przy_lesie: Najbliższa rosła na skraju mokradeł, pół godziny drogi od chaty, więc każdy snop musiał nieść na plecach przez całą łąkę.
    - przy_mokradlach: Rosła niemal pod progiem, gęsta i wysoka, tyle że trzeba było brodzić po nią w zimnym błocie po kolana.
    - else: Rosła wokół całego brzegu, wyższa od niego, i szumiała przy każdym podmuchu jak ktoś, kto szepcze za plecami.
}
->->

= uplyw_czasu
Mijały dni. Śniegi stopniały do końca, nawet w najgłębszym cieniu pod borem. Ziemia przestała parować i zrobiła się ciepła pod bosą stopą. Na skraju lasu zakwitły zawilce – białe, gęste jak szron – a na podmokłych terenach złociły się kaczeńce.
Chleba Maciek nie miał już od dawna. Żył tym, co dawała ziemia albo przynosił mu Andrzej. Na mokradłach zbierał przezimowaną żurawinę, kwaśną i pomarszczoną, ale wciąż jadalną. Z krzaków dzikiej róży obrywał zeszłoroczne owoce, twarde jak paciorki. Z łąki rwał szczaw i młodą pokrzywę, z których robił zupę, a w wilgotnym cieniu pod drzewami znajdował czosnek niedźwiedzi. Nacinał też brzozy i pił słodkawy sok, który kapał z nich do rana. Głód nie odchodził, ale dawało się z nim żyć.
Dach rósł z dnia na dzień. Snop przy snopie, warstwa na warstwie. # dalej
-> wieczor


// ------------------------------------------------------------
//  Wieczór — stwór w zaroślach.
// ------------------------------------------------------------
=== wieczor ===
# tlo: zmierzch
Tego dnia Maciek kładł ostatnie snopy przy kalenicy. Został już tylko jeden pas, może dwa. Ręce drżały mu ze zmęczenia, a słońce zsunęło się za horyzont, zostawiając na niebie brudną czerwień.
Zszedł z dachu i usiadł przy szałasie. Chciał odpocząć tylko chwilę, zanim zapadnie zmrok. Oparł głowę o pień, zamknął oczy…
…i zasnął.
Obudziła go cisza.
Nie było słychać świerszczy, żab ani wiatru. Nad niecką wisiała mgła, gęsta i biała, sięgająca kolan. Maciek nie wiedział, ile spał. Wiedział tylko, że coś jest nie tak – czuł to ciałem i duszą, zanim zrozumiał umysłem.
Wtedy rozległ się dźwięk. Nie wycie ani krzyk, lecz coś pośrodku: przeciągły, gardłowy jęk, który przeszedł w trzask łamanych gałęzi. Coś ciężkiego wskoczyło w zarośla – tuż obok, kilkanaście kroków od szałasu. # pokaz: oczy
Maciek zerwał się na równe nogi. Siekiera sama znalazła się w jego dłoniach. Ściskał topór tak mocno, że zbielały mu kostki, i patrzył w ciemność, skąd dochodziły kroki – powolne, ciężkie, coraz bliższe. # dalej
{ los_psa == nakarmiony: -> obrona | -> zdobycz }

= zdobycz
# tlo: zmierzch_zdobycz
Krzaki rozchyliły się. Z mgły wyłoniła się postać. # pokaz: topielec
Była wyższa od człowieka, o dobre trzy głowy. Stała na dwóch nogach, ale zgarbiona, z rękami zwisającymi niemal do ziemi. Miała ludzki kształt – i wcale nie była człowiekiem. W paszczy trzymała coś dużego i bezwładnego, co zwisało jej po obu stronach łba.
Maciek poznał to po łapach. Za dużych do reszty ciała. # pokaz: cialo
Postać zacisnęła szczęki. Rozległ się trzask – głośny, mokry, jak łamane suche gałęzie, tyle że to nie były one. Potem stwór odwrócił się i pomknął w stronę mokradeł, tak szybko, że mgła zawirowała za nim jak woda.
Maciek nie mógł się ruszyć. Trząsł się cały, zimny pot spływał mu po plecach, a nogi miał jak z waty. Siekiera ciążyła mu w dłoniach, bezużyteczna. Stał tak bardzo długo, aż ciemność znów ucichła.
-> strach_o_chate ->
Maciek szybko wszedł do szałasu. Długo jeszcze leżał z otwartymi oczami, wsłuchując się w ciemność, aż wyczerpany pracą i strachem zasnął.
# dalej
-> zgliszcza

= obrona
# tlo: zmierzch_obrona
Krzaki rozchyliły się. W mroku zapłonęły dwa ślepia – wysoko, za wysoko jak na wilka czy dzika. Postać stała w zaroślach na dwóch nogach, zgarbiona, z rękami zwisającymi niemal do ziemi. Miała ludzki kształt – i wcale nie była człowiekiem. # pokaz: topielec
Maciek nie mógł się ruszyć. Trząsł się cały, zimny pot spływał mu po plecach. Ślepia patrzyły prosto na niego i powoli, bardzo powoli przybliżały się.
Wtedy z oddali dobiegło szczekanie.
Pies wypadł z ciemności jak strzała i stanął między Maćkiem a zaroślami. Sierść zjeżyła mu się na karku, łapy rozstawił szeroko i ujadał – głośno, zajadle, bez chwili przerwy, choć cały drżał. Chudy, młody, z za dużymi łapami – i nie cofnął się ani o krok. # pokaz: pies
Ślepia zatrzymały się. Postać zawahała się, wydała z siebie gardłowy syk – a potem zawróciła i z trzaskiem gałęzi pomknęła w stronę mokradeł, aż mgła zawirowała za nią jak woda.
-> strach_o_chate ->
~ los_psa = oswojony
~ ekwipunek += pies_towarzysz
Długo trwało, zanim Maciek doszedł do siebie. W końcu osunął się na ziemię przy szałasie i oddychał ciężko, jakby przebiegł pół niecki. Pies przestał ujadać. Podszedł do niego niepewnie, z opuszczonym łbem – i zamerdał ogonem, dumny z siebie jak nikt na świecie.
Maciek wyciągnął drżącą rękę. Pies obwąchał ją, a potem pierwszy raz pozwolił się pogłaskać.
– Dobry pies – szepnął Maciek. – Dobry – odetchnął.
Tej nocy weszli do szałasu razem. Pies zwinął się w kłębek przy boku człowieka i zasnął pierwszy. Maciek długo jeszcze leżał z otwartymi oczami, wsłuchując się w ciemność. Ale po raz pierwszy od przyjścia do Zapadliny miał towarzysza.
# dalej
-> zgliszcza

// Tylko gdy chata stoi przy mokradłach — stwór uciekł właśnie tam.
= strach_o_chate
{ chata_macka == przy_mokradlach:
    A potem dotarło do niego, dokąd stwór pobiegł. Na mokradła. Przecież tam, niedaleko czarnej wody, stała jego chata. Tam od miesiąca spał, jadł i pracował, kilkadziesiąt kroków od bagna. „Tam się nie buduje. Tam się tylko topi” – przypomniały mu się słowa ludzi spod studni. Pierwszy raz od dnia, w którym wbił siekierę w pierwszy pień, pomyślał, że może popełnił błąd. Że może trzeba było posłuchać.
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
Zaczęło świtać. Obudził się zesztywniały i zziębnięty. Przez chwilę nie wiedział, czy to, co widział w nocy, wydarzyło się naprawdę. Potem przypomniał sobie trzask w zaroślach i przeszedł go dreszcz.
{ los_psa == oswojony:
    Pies leżał przy wejściu do szałasu z łbem na łapach i patrzył w stronę mokradeł. Już nie spał. Maciek miał wrażenie, że czuwał tak przez większą część nocy.
- else:
    W szałasie było cicho. Maciek wyjrzał na zewnątrz. W trawie przy zaroślach odbijały się wąskie, długie ślady, za długie jak na zwierzę, i ciągnęły się w stronę mokradeł. Między nimi ciemniały plamy krwi. # pokaz: slady
}
Maciej podszedł do swojej niedokończonej chaty i usiadł na jej progu. Siedział i patrzył przed siebie. Myśli kłębiły się w nim jak mgła nad wsią. Uciekać. Zostawić wszystko, póki jeszcze żyje, i nigdy nie wracać. A z drugiej strony – ponad miesiąc pracy, pęcherze na dłoniach, ostatnie kromki chleba. Każdy bal w tych ścianach ociosał sam. I dokąd miałby pójść? Na cudze pole, znowu za miskę kaszy? Obiecał przecież, że sprowadzi tu rodzinę. Że będą mieli swój dach.
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
Zarzucił tobołek na ramię i ruszył pod górę, w stronę gościńca. Szedł szybko, nie oglądając się za siebie. Dopiero na grzbiecie niecki przystanął i spojrzał w dół.
Chata stała tam, mała i niedokończona, z dachem jak niedopowiedziane zdanie. Jego chata.
{ los_psa == oswojony: Pies szedł za nim kawałek, a potem usiadł w połowie zbocza i patrzył – raz na niego, raz na chatę – jakby czekał, aż Maciek sam zrozumie. }
Stał tak długo, aż słońce wzeszło nad borem. Potem zawrócił. Nie dlatego, że przestał się bać. Po prostu nie miał dokąd pójść. # dalej
-> dach_gotowy

= dach_gotowy
Ostatnie snopy trzciny ułożył przed południem. Związał je łykiem, docisnął żerdziami i zszedł z drabiny. Pierwszy raz od przyjścia do Zapadliny stanął przed swoją chatą, która miała dach. # pokaz: dach
Tej nocy po raz pierwszy spał pod nim. Ściany pachniały żywicą i wilgotną gliną, a przez szparę w drzwiach przeciskało się światło księżyca.
Nie było jeszcze łóżka, ale przynajmniej nie spał pod gołym niebem. W tych czterech ścianach czuł ciepło i bezpieczeństwo.
{ los_psa == oswojony: Pies zwinął się na progu, tak jakby to miejsce od zawsze było jego. }
Rano poszedł do Andrzeja. Musiał komuś powiedzieć. # dalej
-> u_andrzeja

= u_andrzeja
# tlo: izba_andrzeja
Chałupa Andrzeja stała na pagórku, z dala od wody. W izbie było ciepło i ciasno. Staś, syn gospodarza, siedział przy stole na szerokim podłokietniku drewnianego krzesła i strugał nożykiem patyk. Na widok gościa uśmiechnął się szeroko.
Maciek chciał opowiedzieć wszystko. Zaczął od samego początku: od ciszy, od kroków i… od postaci wyższej od człowieka o trzy głowy, z rękami do ziemi.
Andrzej słuchał, aż nagle parsknął śmiechem.
– Z głodu ci się przywidziało, Maćku. Otrząśnij się. Miesiąc o chlebie i wodzie, to człowiek i archanioła Michała zobaczy.
Staś przestał strugać. Patrzył na Maćka z otwartymi ustami i zauważalnym strachem w oczach.
– Czy to prawda? – zapytał.
# pytanie: Co zrobi Maciek?
*   [Potwierdzi stanowczo, że to prawda, i powie wszystko do końca, przy chłopcu. Niech wie, przed czym ma się strzec.]
    ~ stas_zaufanie = true
    -> prawda_przy_chlopcu
*   [Uśmiechnie się i powie, że to chyba był tylko sen, ale poprosi Andrzeja, żeby odesłał chłopca, i w cztery oczy opowie wszystko ze szczegółami. To nie są rzeczy dla dziecka.]
    -> w_cztery_oczy

= prawda_przy_chlopcu
– Tak, to prawda. Niech dzieciak słucha – powiedział Maciek. – Lepiej, żeby się bał, niż poszedł nad bagno sam i już nigdy nie wrócił.
Andrzej spojrzał na syna, potem na Maćka. Uśmiech powoli zniknął mu z twarzy.
-> dziad_opowiadal

= w_cztery_oczy
– Właściwie to… to był pewnie zły sen – odpowiedział chłopcu.
Poprosił jednak Andrzeja o rozmowę w cztery oczy. Ten wysłał Stasia po wodę. Chłopiec wyszedł niechętnie, a drzwi zostawił uchylone. Żaden z mężczyzn tego nie zauważył.
-> dziad_opowiadal

= dziad_opowiadal
– Ręce do ziemi, mówisz – odezwał się w końcu Andrzej, już bez śmiechu. – Wyższa o trzy głowy. – Podszedł do okna i długo patrzył w stronę jeziora. – Mój dziad opowiadał o czymś takim. Myślałem, że dzieci straszył.
Wtedy Maciej opowiedział jeszcze raz, ze szczegółami, wszystko, co go spotkało. # dalej
-> legenda


// ------------------------------------------------------------
//  Legenda o wiedźmie znad jeziora — opowiada Andrzej.
// ------------------------------------------------------------
=== legenda ===
# tlo: legenda
– Podobno wszystko zaczęło się tam, nad jeziorem, gdzie leżą te zwęglone bale – odezwał się cicho Andrzej. – Mieszkała tam kiedyś kobieta. Zielarka. Ludzie chodzili do niej z bólem, chorobami i gorączką – była pomocna. Ale z czasem coś w nią weszło. Nikt nie wiedział dlaczego. Gadała po nocach, ale nie do siebie – do kogoś, kogo nikt nie widział. Mówiła, że umarli przychodzą do niej znad wody i opowiadają, że będą się działy straszne rzeczy. Ludzie przestali do niej chodzić, bo się bali.
Potem we wsi zaczęło się dziać źle. Mleko kwaśniało w wiadrach, małe dzieci budziły się z krzykiem, warzywa gniły w ziemi. Zaczęły też ginąć zwierzęta – najpierw cielę, potem krowa, potem cały kurnik w jedną noc – ludzie powiedzieli, że to jej sprawka, że jest wiedźmą.
Pewnej nocy kilku chłopów zebrało się pod jej chatą. Zabili drzwi deskami, kiedy spała, obłożyli ściany słomą i podpalili. # pokaz: chlopi, ogien
Andrzej zamilkł na chwilę.
– Dziad mówił, że krzyczała do samego końca. Nie z bólu, Maćku. Przeklinała. Wieś, ziemię, każdego, kto tu mieszka i kto kiedyś zamieszka. Że nikt nie zazna spokoju, dopóki ci, którzy ją odwiedzają, nie zamordują wszystkich mieszkańców wsi. Słychać było też, jak jęczała, że wszystkie kości naszych dzieci będą połamane, a ich krew wypita.
– Straszne… A ci, co ją spalili?
– Żaden nie dożył zimy. Jeden po drugim tracili rozum. Gadali do siebie, nie spali, chodzili nocami nad wodę. Aż w końcu wszyscy weszli w bagno, jeden za drugim, i już nie wyszli. Ci, którzy ich ostatni widzieli, mówili, że w oczach mieli coś dziwnego. Jakby żarzące się węgielki. # pokaz: wegielki
Andrzej spojrzał mu prosto w oczy.
– To ich oczy mrugają po nocach nad mokradłami. Nie żadne błędne ognie. Oni tam stoją i wypatrują. I wabią.
{ chata_macka:
    - przy_mokradlach: Maciek poczuł, jak zimno ściska go w żołądku. Każdej nocy widział te światełka ze swojego progu. Myślał, że to gnijące drewno albo bagienny gaz. Że to tylko światło.
    - nad_jeziorem: Maciek zbladł. Te bale zepchnął własnymi rękami w trzciny. Swoją chatę postawił dokładnie tam, gdzie płonęła tamta.
}
{ stas_zaufanie:
    Staś siedział bez ruchu, ściskając w dłoni niedokończony patyk.
- else:
    Za uchylonymi drzwiami coś cicho skrzypnęło. Kiedy Andrzej wyjrzał, w sieni stało tylko wiadro z wodą. Staś był już daleko na podwórzu.
}
-> prolog_ciag_dalszy


// Kolejna scena prologu — do napisania.
=== prolog_ciag_dalszy ===
# ozdobnik
_Ciąg dalszy nastąpi…_
-> END
