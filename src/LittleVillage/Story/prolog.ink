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
Jakieś siedemdziesiąt lat przed tym, nim Jaromir pierwszy raz spojrzał w stronę lasu, jego dziadek zszedł do Zapadliny z tobołkiem na ramieniu. Maciek nie miał nic poza siekierą, chlebem, parą rąk i uporem. Siekierę i chleb kupił w mieście za pieniądze, które zarobił przez cztery lata pracy na cudzym polu. Chciał wreszcie mieć coś swojego – miejsce, w którym mógłby zamieszkać i dać rodzinie dach nad głową. Tutaj mógł mieć tyle ziemi, ile zdoła oczyścić. Była wiosna, pola parowały, a gdzieniegdzie w cieniu leżał jeszcze brudny śnieg. Maciek trzeci dzień chodził po niecce i wybierał miejsce na chatę. Trzy miejsca najczęściej wracały do niego w myślach.
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
Maciej zacisnął palce na toporze i nie ruszył się z miejsca. Wycie trwało jeszcze długo. Potem przeszło w ciche skomlenie i przed świtem ucichło. Rano w trawie za szałasem znalazł ślady łap. Prowadziły w stronę zarośli.
-> prolog_ciag_dalszy


// ------------------------------------------------------------
//  Pies w zaroślach — tylko gdy Maciek wyszedł z szałasu.
// ------------------------------------------------------------
=== pies ===
# tlo: zarosla_noc
Maciej wyczołgał się z szałasu z siekierą w ręku. Noc była jasna od księżyca, a trawa mokra od rosy. Szedł powoli za dźwiękiem, krok po kroku, czując, że serce chce mu się wyrwać z piersi. Wycie raz cichło, a raz wybrzmiewało coraz bliżej.
W gęstych krzakach usłyszał szelest. Rozgarnął gałęzie trzonkiem siekiery i zamarł. Z ciemności wyłoniły się dwa błyszczące ślepia. W świetle księżyca dostrzegł, że to młody pies. Był tak chudy, że można było policzyć mu żebra, a łapy miał nieproporcjonalnie duże w stosunku do reszty ciała. Pysk miał długi i wąski, a uszy postawione sztywno. Nie uciekał przed Maćkiem. Warczał cicho, trzęsąc się cały.
Maciej sięgnął do kieszeni. Było w niej małe zawiniątko z ostatnim kawałkiem chleba – twardym jak kamień, ale miał to być jego jutrzejszy posiłek.
# pytanie: Co zrobi Maciek?
*   [Dać psu kawałek chleba.]
    -> dal_chleb
*   [Nie dawać i wrócić do szałasu.]
    -> nie_dal_chleba

= dal_chleb
~ ekwipunek -= chleb
~ los_psa = nakarmiony
Maciek otworzył zawiniątko, wyciągnął z niego kawałek chleba i rzucił go pod krzak. Pies cofnął się i warknął, ale po chwili zaczął wąchać to, co spadło. Nagle porwał chleb w pysk i zniknął w ciemności, zanim Maciek zdążył mrugnąć.
Mężczyzna wrócił do szałasu i zasnął ze świadomością, że jutro śniadania nie będzie.
-> prolog_ciag_dalszy

= nie_dal_chleba
~ los_psa = porzucony
Maciek zostawił chleb w kieszeni.
– Sam ledwo zipię – mruknął do psa, jakby chciał się przed nim usprawiedliwić.
Wycofał się powoli i wrócił do szałasu. Wycie odezwało się jeszcze raz, cichsze niż przedtem. Więcej tej nocy go nie usłyszał.
-> prolog_ciag_dalszy


// Kolejna scena prologu — do napisania.
=== prolog_ciag_dalszy ===
# ozdobnik
_Ciąg dalszy nastąpi…_
-> END
