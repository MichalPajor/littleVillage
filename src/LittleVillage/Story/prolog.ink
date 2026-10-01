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
Maciek wybrał skraj lasu. Uznał, że drewno pod ręką jest warte więcej niż spokojny sen, a ze snem jakoś to będzie. Pierwszego ranka wbił siekierę w najbliższy świerk. Echo uderzenia odbiło się od boru i wróciło do niego dziwnie przeciągłe, jakby las powtórzył je po swojemu.
Drzewa ścinał tuż za progiem przyszłej chaty. Pnie same leżały mu pod nogami – trzeba było tylko okrzesać gałęzie i przetoczyć je kilka kroków dalej.
-> praca

= mokradla
# tlo: budowa_mokradla
# rozdzial: Prolog
# tytul: Chata
Maciek wybrał łąki przy mokradłach. Ludzie przy studni kręcili głowami, ale on widział tylko trawę po kolana i torf, którego starczy na sto zim. Gadanie o topielcach zostawił babom.
Ziemia uginała się tu pod stopami, więc przez pierwszy tydzień znosił z pagórka kamienie i układał z nich podmurówkę, żeby chata nie zapadła się w błoto. Drewno musiał ścinać daleko, pod borem, i każdy pień wlec przez pół niecki na sznurze przerzuconym przez ramię.
-> praca

= jezioro
# tlo: budowa_jezioro
# rozdzial: Prolog
# tytul: Chata
Maciek wybrał brzeg jeziora. Spróchniałe, zwęglone bale po dawnej chałupie zepchnął w trzciny i nie oglądał się za nimi. Co było, minęło – tak sobie powtarzał, karczując brzeg.
Pnie ścinał na zboczu, w bukach, i staczał je w dół, aż same dojeżdżały pod wodę. Na dach nacinał trzciny – sięgały mu ponad głowę, a w pęczkach były lekkie jak słoma.
-> praca

= praca
Budowa trwała ponad miesiąc. Najpierw okorowywał pnie, potem ciosał je siekierą na grube bale i wycinał w końcach zamki, żeby ściany trzymały się same, bez jednego gwoździa. Bal kładł na balu, a szczeliny zatykał mchem i gliną. Ręce pokryły mu się pęcherzami, które pękały i zarastały, aż skóra stała się twarda jak kora.
Jadł tylko chleb. Kroił go na coraz cieńsze kromki, popijał wodą i powtarzał sobie, że jak skończy dach, pójdzie do miasta po więcej. Bochenek twardniał, kurczył się i z każdym dniem ważył mniej – a Maciek razem z nim.
Spał w szałasie z gałęzi, który sklecił pierwszego wieczoru: kilka żerdzi opartych o pień, przykrytych gałęziami i darnią. Mieścił się w nim tylko na leżąco, z siekierą pod ręką. # dalej
-> noce

= noce
Noce były najgorsze. Wiosenny chłód wchodził pod ubranie i kąsał do kości, a ognisko dogasało długo przed świtem. Maciek leżał z otwartymi oczami i słuchał.
{ chata_macka:
    - przy_lesie: Las nie milkł ani na chwilę. Trzaskały gałęzie, choć nie było wiatru. Coś chodziło między pniami, zatrzymywało się i ruszało znowu – zawsze wtedy, gdy Maciek wstrzymywał oddech.
    - przy_mokradlach: Bagno nie spało. Bulgotało, mlaskało, czasem westchnęło tak po ludzku, że Maciek siadał na posłaniu. A po północy, daleko nad czarną wodą, zapalało się światełko i mrugało – jakby ktoś stał tam z kagankiem i czekał.
    - else: Jezioro nocą oddychało. Pluskało przy brzegu, choć nie było fali, a raz Maciek usłyszał, jak coś ciężkiego wychodzi z wody i powoli idzie przez trzciny w stronę szałasu. Rano na mule nie było żadnych śladów.
}
Którejś nocy, gdy z bochenka została mu już tylko pięta, usłyszał coś innego. Ciche, urywane wycie – cienkie, jakby wilcze, ale słabe, bardziej skamlenie niż zew. Dobiegało z zarośli niedaleko szałasu. Milkło i wracało znowu.
# pytanie: Co zrobi Maciek?
*   [Wyjść z szałasu i sprawdzić, co to.]
    -> pies
*   [Zostać w szałasie.]
    -> zostal

= zostal
~ los_psa = niespotkany
Maciek zacisnął palce na toporzysku i nie ruszył się z miejsca. Wycie trwało jeszcze długo. Potem przeszło w ciche skomlenie i ucichło przed świtem.
Rano w trawie za szałasem znalazł drobne ślady łap. Prowadziły w stronę zarośli i tam się urywały.
-> prolog_ciag_dalszy


// ------------------------------------------------------------
//  Pies w zaroślach — tylko gdy Maciek wyszedł z szałasu.
// ------------------------------------------------------------
=== pies ===
# tlo: zarosla_noc
Maciek wyczołgał się z szałasu z siekierą w ręku. Noc była jasna od księżyca, trawa mokra od rosy. Szedł za dźwiękiem powoli, krok za krokiem, a wycie raz cichło, raz wracało – coraz bliżej.
W gęstych krzakach coś się poruszyło. Maciek rozgarnął gałęzie trzonkiem siekiery – i zamarł.
Spod krzaka patrzyły na niego dwa błyszczące ślepia. Pies – młody, tak chudy, że można by policzyć mu żebra, z łapami za dużymi do reszty ciała. Pysk miał długi i wąski, wilczy, a uszy postawione sztywno. Nie uciekał. Warczał tylko cicho, trzęsąc się cały, jakby sam nie wierzył we własną groźbę.
Maciek sięgnął do tobołka. Został mu jeden z ostatnich kawałków chleba – twardy jak kamień, ale wciąż chleb. Jutro miał być jego śniadaniem.
# pytanie: Co zrobi Maciek?
*   [Dać psu kawałek chleba.]
    -> nakarmiony
*   [Nie dawać i wrócić do szałasu.]
    -> odprawiony

= nakarmiony
~ ekwipunek -= chleb
~ los_psa = oswojony
Maciek ułamał chleb i rzucił go pod krzak. Pies cofnął się i warknął – a potem chwycił kęs i zniknął w ciemności, zanim Maciek zdążył mrugnąć.
Wrócił następnej nocy. I kolejnej. Najpierw siadał na skraju polany i patrzył, jak Maciek ciosa bale. Z każdym dniem podchodził bliżej, aż któregoś ranka Maciek obudził się z ciepłym grzbietem przy boku, wciśniętym w szałas.
Od tamtej pory pies chodził za nim krok w krok. Chleba już nie było i głód doskwierał jak nigdy, ale noce – choć wciąż pełne dźwięków – przestały być takie samotne.
-> prolog_ciag_dalszy

= odprawiony
~ los_psa = porzucony
Maciek schował chleb z powrotem do tobołka.
– Sam ledwo zipię – mruknął, jakby pies mógł go zrozumieć.
Wycofał się powoli i wrócił do szałasu. Wycie odezwało się jeszcze raz, cichsze niż przedtem. Więcej tej nocy go nie słyszał.
-> prolog_ciag_dalszy


// Kolejna scena prologu — do napisania.
=== prolog_ciag_dalszy ===
# ozdobnik
_Ciąg dalszy nastąpi…_
-> END
