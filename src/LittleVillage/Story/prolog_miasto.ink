// ------------------------------------------------------------
//  Prolog, część druga — miasto, rodzina, powrót do Zapadliny
//  i zakończenie prologu (zależy od tego, komu Maciek sprzedał figurkę).
// ------------------------------------------------------------

=== miasto ===
# tlo: gosciniec
# rozdzial: Prolog
# tytul: Miasto
Gościniec ciągnął się przez pola i zagajniki, to pod górę, to w dół. Mijały go wozy chłopów wiozących zboże na targ, a w pewnej chwili przetoczyła się obok bryczka, z której ktoś krzyknął, żeby zszedł z drogi.{ los_psa == oswojony: Pies trzymał się blisko nogi i warczał na każdy turkot kół.} Słońce stało już wysoko, kiedy zza pagórka wyłoniła się wieża kościoła, a pod nią dachy miasta – czerwone, szare i omszałe, ściśnięte jak ziarna w kłosie. # dalej
-> rynek

= rynek
# tlo: rynek
Rynek huczał jak ul. Między straganami przepychali się chłopi w sukmanach, przekupki zachwalały jaja i masło, a spod ratusza dobiegało beczenie kóz. Pachniało chlebem, końskim nawozem i wędzoną rybą.{ ekwipunek ? figurka: Maciek wymacał w kieszeni drewnianą postać. Najpierw trzeba było ją sprzedać – dopiero potem mógł myśleć o jedzeniu.}
{ ekwipunek ? figurka: -> kramarze | -> zakupy }

= kramarze
Pierwszy był kramarz z obrazkami i różańcami. Długo oglądał figurkę pod światło, wreszcie skrzywił się i oddał ją szybko, jakby parzyła.
– To nie żaden święty – mruknął i przeżegnał się ukradkiem. – Nie wezmę tego pod swój dach.
Rzeźbiarz łyżek i misek nawet jej nie dotknął. Orzekł, że drewno spróchniałe, nadpalone i do niczego się nie nada, chyba że na podpałkę.
Dopiero handlarz starzyzną, z wózkiem pełnym garnków i podartych butów, obracał ją dłużej w palcach.
– Dwa grosze – rzekł w końcu. – Więcej nikt ci za to nie da.
Tyle kosztował bochenek chleba. Jeden. Maciek obiecał, że jeszcze się zastanowi, i ruszył w stronę biedniejszej części rynku, gdzie zamiast straganów leżały na ziemi płachty z cebulą, łachmanami i zardzewiałym żelastwem. # dalej
-> starucha

= starucha
# tlo: zaulek
Nagle ktoś chwycił go za rękę. Palce były kościste i zimne, wilgotne jak glina wyjęta z rowu.
Przed nim stała stara kobieta w kapturze, zgarbiona, owinięta w szary, postrzępiony płaszcz. Spod materiału wystawał tylko spiczasty podbródek i zapadnięte wargi. Jedno oko miała zasnute bielmem, drugie – czarne i bystre – wpatrywało się prosto w jego kieszeń. # pokaz: starucha
– Co ty tam nosisz, synku? – wyszeptała. – Czuję popiół. Stary popiół, znad wody.
{ los_psa == oswojony:
    Pies zjeżył sierść i warknął na nią nisko, z głębi gardła. Kobieta nawet na niego nie spojrzała. # pokaz: pies
}
Maciek chciał się wyrwać, ale trzymała mocno.
– To nie twoje. Wygrzebałeś to tam, gdzie nie trzeba było grzebać. Ta rzecz woła. Woła tych, co mają długie ręce, a oni przychodzą, synku, zawsze przychodzą. Pozbądź się jej, póki nie jest za późno, bo ściągniesz klątwę na siebie i na tych, których kochasz.
Puściła go i uśmiechnęła się bezzębnymi ustami.
– Wezmę ją od ciebie. Dam dziesięć groszy. Pięć razy więcej, niż chciał dać tamten dziad przy wózku.
Nie pamiętał, żeby komukolwiek mówił, ile mu zaproponowano.
# pytanie: Komu Maciek sprzeda figurkę?
*   [Staruszce – za taką sumę kupi jedzenia na dłużej i pozbędzie się kłopotu.]
    ~ figurka_u_staruchy = true
    ~ ekwipunek -= figurka
    # tlo: rynek
    Maciek wyjął figurkę i położył ją na wyciągniętej dłoni. Starucha zamknęła na niej palce szybko, łapczywie, jak kot przyduszający mysz. Monety, które mu odliczyła, były zimne i lepkie.
    – Dobrze zrobiłeś, synku – powiedziała cicho. – Teraz już nie musisz się bać.
    Odwróciła się i zniknęła w tłumie, zanim zdążył cokolwiek odpowiedzieć.{ los_psa == oswojony: Pies jeszcze długo warczał w tamtą stronę.}
    -> zakupy
*   [Handlarzowi za marne grosze – ta baba wydaje mu się podejrzana.]
    ~ ekwipunek -= figurka
    # tlo: rynek
    – Dziękuję, matko, ale nie trzeba – odpowiedział Maciek i cofnął się o krok.
    Starucha syknęła coś pod nosem i odwróciła się.{ los_psa == oswojony: Pies przestał warczeć dopiero wtedy, gdy kaptur zniknął w tłumie.}
    Handlarz wzruszył ramionami, wrzucił figurkę między garnki i odliczył dwa grosze. – Mówiłem, że więcej nikt nie da.
    -> zakupy

= zakupy
~ ekwipunek += (zapasy, nasiona)
{
- figurka_u_staruchy: Za monety od staruchy i resztę swoich miedziaków kupił dwa bochenki chleba, worek kaszy, sól, kawałek słoniny, nasiona warzyw, a nawet kosz sadzeniaków. Tobołek ciążył mu na plecach, ale był to najprzyjemniejszy ciężar od dawna.
- przeszukal_zgliszcza: Za ostatnie miedziaki i dwa grosze od handlarza kupił bochenek chleba, garść soli, woreczek kaszy i trochę nasion warzyw. Niewiele, ale przez kilka dni da się przeżyć.
- else: Za ostatnie miedziaki, które zostały mu po kupnie siekiery, kupił bochenek chleba, garść soli, woreczek kaszy i nasiona różnych warzyw.
}
Była wiosna, więc trzeba było jak najszybciej siać, żeby zdążyć z plonami.
Przy miejskiej studni zjadł pierwszą kromkę od tygodni. Była miękka i jeszcze ciepła. Musiał się powstrzymać, żeby nie pochłonąć wszystkiego naraz.{ los_psa == oswojony: Drugą oddał psu.}
Potem ruszył za miasto, do folwarku, gdzie przez cztery lata pracował na cudzym polu i gdzie czekała na niego żona z synkiem. # dalej
-> rodzina


// ------------------------------------------------------------
//  Rodzina — spotkanie z żoną i synem w Czworakach.
// ------------------------------------------------------------
=== rodzina ===
# tlo: czworaki
# rozdzial: Prolog
# tytul: Rodzina
Do Czworaków dotarł, gdy słońce chyliło się już ku zachodowi. Długi, niski budynek z krzywym kominem wyglądał tak samo jak w dniu, w którym stąd odchodził. Przed progiem kilkuletni chłopiec kreślił patykiem znaki w piachu. Podniósł głowę, spojrzał na obcego, wychudzonego mężczyznę – i przez chwilę go nie poznał. # pokaz: dziecko
– Dobrosław – powiedział cicho Maciek.
Malec zerwał się z ziemi i z krzykiem pobiegł do środka. W drzwiach niemal od razu stanęła Marianna. Wycierała ręce w fartuch i zamarła, kiedy go zobaczyła. # pokaz: marianna
Potem rzuciła mu się na szyję tak gwałtownie, że aż się zachwiał. Płakała mu w ramię, a on gładził ją po włosach i nie mógł wydusić ani słowa. Dobrosław objął go za nogę i nie chciał puścić.
– Jezu, Maciek – szepnęła w końcu, odsuwając się, żeby mu się przyjrzeć. Dotknęła zapadniętych policzków, wystających obojczyków. – Jest cię o połowę mniej niż wtedy, kiedy odchodziłeś. Coś ty tam jadł? Korę z drzew?
Zaśmiał się, choć w oczach miał łzy.
{ los_psa == oswojony:
    Pies stał z boku, niepewny, aż Dobrosław wyciągnął do niego rękę. Po chwili pozwolił się drapać za uchem, a mały piszczał z radości. # pokaz: pies
}
Wieczorem, przy misce kaszy, Maciek opowiadał. O chacie – o ścianach z bali, które sam ociosał, o dachu z trzciny, o progu, na którym siadywał po pracy. O ziemi, której będzie tyle, ile zdołają uprawić.
– Jutro o świcie ruszamy – oznajmił. – Zaczniemy wszystko od nowa. Na swoim.
Marianna słuchała, uśmiechając się do siebie. Ale gdy syn zasnął, przysunęła się bliżej i zajrzała mu w twarz.
– A teraz powiedz mi prawdę. Co się tam działo? Widzę przecież, że coś cię gryzie.
# pytanie: Czy Maciek opowie żonie o tamtej nocy?
*   [Tak – opowie jej o stworze, o legendzie i o głosie znad bagien. Musi wiedzieć, dokąd idzie.]
    ~ zona_wie = true
    Nie przemilczał niczego. O wyciu w zaroślach, o ciszy, która go obudziła, o postaci wyższej od człowieka o trzy głowy. O spalonej zielarce i jej klątwie. O bagnie, które wołało go jej głosem.
    Marianna słuchała w milczeniu, bledsza z każdym zdaniem. Kiedy skończył, długo patrzyła w ciemne okno.
    – Wrócimy tam? – zapytała w końcu cicho.
    – Wrócimy. To nasz dom.
    Skinęła głową. Nie powiedziała nic więcej, ale tej nocy nie zmrużyła oka – czuł to po jej oddechu. # dalej
    -> powrot
*   [Nie – zbędzie ją. Po co straszyć, skoro chata stoi, a to, co było, minęło.]
    – Nic się nie działo – skłamał. – Ciężka praca i mało jedzenia. Tyle.
    Marianna patrzyła na niego jeszcze przez chwilę, jakby czekała na resztę. Potem westchnęła i położyła mu głowę na ramieniu.
    Tej nocy długo nie mógł zasnąć. Pomyślał, że kiedyś jej powie. Kiedyś, gdy wszystko się ułoży. # dalej
    -> powrot


// ------------------------------------------------------------
//  Powrót do Zapadliny z rodziną.
// ------------------------------------------------------------
=== powrot ===
# tlo: sciezka_rodzina
# rozdzial: Prolog
# tytul: Powrót
Wyruszyli o świcie. Marianna niosła węzełek z dobytkiem, Maciek – tobołek z jedzeniem, a gdy mały zmęczył się marszem, także jego, na barana.
{ los_psa == oswojony:
    Pies biegał od jednego do drugiego, jakby pilnował, żeby nikt nie został w tyle. # pokaz: pies
}
Było już dobrze po południu, gdy stanęli na Bukowym Grzbiecie. W dole leżała Zapadlina.
Tam przystanął i spojrzał na żonę.
– Teraz uważaj – powiedział. – Idź zaraz za mną, krok w krok. Nie schodź ze ścieżki, choćby nie wiem co. Nie patrz w czarną wodę. I nie słuchaj głosów znad bagien. Cokolwiek usłyszysz – nie odpowiadaj i się nie odwracaj.
{ zona_wie: Marianna wzięła syna za rękę i kiwnęła głową. Wiedziała, o czym mówi. | Marianna uniosła brwi, jakby chciała się roześmiać, ale coś w jego twarzy ją powstrzymało. Kiwnęła głową bez słowa. }
Szli powoli, gęsiego. Mgła snuła się nisko nad rozlewiskami, a gdzieś daleko, w sitowiu, coś cicho pluskało. W połowie drogi doszło go zza pleców, jak Marianna gwałtownie wciąga powietrze. Nie obejrzał się. Dopiero gdy wyszli na suchą ziemię, zapytał, co słyszała.
– Nic – odpowiedziała szybko. Za szybko. # dalej
-> nowy_dom

= nowy_dom
{ chata_macka:
    - przy_lesie: # tlo: chata_las
    - przy_mokradlach: # tlo: chata_mokradla
    - else: # tlo: chata_jezioro
}
Chata stała tam, gdzie ją zostawił. {chata_macka == przy_lesie:Na skraju lasu, w cieniu świerków,}{chata_macka == przy_mokradlach:Na łące przy mokradłach, na kamiennej podmurówce,}{chata_macka == nad_jeziorem:Nad jeziorem, wśród szumiących trzcin,} z dachem, który sam ułożył snop po snopie. # pokaz: dach
Marianna stanęła przed progiem i długo nic nie mówiła. Potem weszła do środka, przesunęła dłonią po ścianie, powąchała żywicę i rozpromieniła się jak dziewczyna. # pokaz: rodzina
– Nasza – powiedziała. – Naprawdę nasza.
Dobrosław szybko wypatrzył w kącie izby luźne deski. Maciek odsunął je i pokazał mu dół wykopany w ziemi – na tyle głęboki, żeby przechować w chłodzie ziemniaki i kaszę.
– Piwniczka – oznajmił z dumą. – Na zapasy. Tylko nie właź tam bez pytania.
Mały oczywiście natychmiast tam wskoczył i skulił się tak, że nie było go widać. Śmiali się wszyscy troje.
{ ekwipunek ? krzesiwo: Tego wieczoru przed nową chatą zapłonął ogień | Tego wieczoru zjedli kolację na progu nowej chaty } i Maciek pomyślał, że to, co przeszedł, było tego warte. # dalej
{ figurka_u_staruchy: -> czary | -> lata_spokoju }


// ------------------------------------------------------------
//  Zakończenie A — figurka u staruchy: czary i nocny napad.
// ------------------------------------------------------------
=== czary ===
# tlo: czary
# rozdzial: Prolog
# tytul: Klątwa
Tej samej nocy, daleko stąd, w ciasnej izbie za miejskim rynkiem paliła się jedna świeca.
Starucha zsunęła kaptur. Rzadkie siwe włosy opadały jej na plecy. Na stole przed nią stała miska z czarną, mętną wodą, a obok – nadpalona figurka z rękami do stóp.
Kobieta nakłuła palec igłą i pozwoliła trzem kroplom krwi spaść na drewno. Potem zanurzyła ją w misce i zaczęła mruczeć – nisko, monotonnie, w mowie, której nikt w mieście by nie zrozumiał. Płomień świecy przygasł i pochylił się, choć w izbie nie było przeciągu.
– Długo czekałam, matko – szepnęła. – Ale ktoś w końcu przyszedł. I sam mi cię przyniósł.
Woda zabulgotała, jakby ktoś głęboko w niej odetchnął. Z mruczenia wyłoniły się słowa, wypowiadane coraz głośniej:
– Kości dzieci waszych będą połamane, a krew ich wypita…
Wtedy starucha pochyliła się nad miską. – Idź. Znasz drogę. Chata {chata_macka == przy_lesie:pod lasem}{chata_macka == przy_mokradlach:przy mokradłach}{chata_macka == nad_jeziorem:nad jeziorem}. Mężczyzna, kobieta i dziecko. # dalej
-> noc

= noc
# tlo: noc_atak
Minęło kilka dni. Maciek kopał grządki pod ziemniaki, Marianna lepiła z gliny piec, a Dobrosław {los_psa == oswojony:biegał z psem po łące|zbierał kaczeńce na łące}. Wieczorami siadali razem na progu i patrzyli, jak mgła wlewa się do niecki.
{ los_psa == oswojony: Którejś nocy obudził ich pies. Stał przy drzwiach z sierścią zjeżoną na grzbiecie i warczał tak nisko, że ledwie było to słychać. Potem zaczął szczekać – głośno, zajadle, bez przerwy. | Którejś nocy obudził ich huk. Coś uderzyło w drzwi z taką siłą, że jęknęły zawiasy. Potem drugi raz. Trzeci. Drewno pękło z trzaskiem. }
Maciek zerwał się z posłania. Przez szparę w drzwiach zobaczył we mgle dwa żarzące się ślepia. # pokaz: slepia
Nie myślał. Chwycił Dobrosława na ręce, odsunął deski w kącie i wsadził go do piwniczki.
– Siedź cicho – szepnął. – Cokolwiek się stanie, nie wychodź. Słyszysz? Nie wychodź, dopóki nie przyjdzie dzień.
Ułożył je z powrotem nad jego głową. # dalej
{ los_psa == oswojony: -> walka | -> rzez }

= walka
# tlo: walka
Drzwi wpadły do środka razem z futryną. Stwór musiał się schylić, żeby przecisnąć się pod nadprożem – ogromny, mokry, cuchnący bagnem. Długie ręce zamiatały klepisko. # pokaz: stwor
Pies rzucił się na niego pierwszy. Wbił zęby w przedramię i wisiał na nim, szarpiąc, dopóki potwór nie cisnął nim o ścianę. Zaskowyczał i upadł. # pokaz: pies
Maciek stanął przed Marianną z uniesioną siekierą. # pokaz: maciek
– Stań za mną!
Bestia sięgnęła po niego. Szpony przeorały mu bark i bok, ale ustał w miejscu. Zamachnął się z całej siły i ostrze weszło głęboko w długie, kościste ramię. Stwór zawył – tym samym przeciągłym, gardłowym jękiem, który słyszał już tamtej nocy przy szałasie. Uderzył jeszcze raz. I jeszcze.
Potwór cofnął się, przewracając ławę, i z rykiem wybiegł w mgłę. Przez chwilę słychać było, jak coś ciężkiego przedziera się przez zarośla, a potem chlupot – coraz dalej, w stronę bagna.
Siekiera wypadła Maćkowi z rąk. Osunął się na kolana, potem na bok. Pod nim rosła ciemna kałuża. # pokaz: kaluza
Marianna klęczała przy nim i przyciskała dłonie do jego ran, ale krew przeciekała jej przez palce.
– Nie, nie, nie… Nie zostawiaj mnie…
– Dobrosław… – wyszeptał. – Wyjmij go… dopiero rano.
Pies przyczołgał się do niego, kulejąc, i położył łeb na jego piersi.
Maciek uśmiechnął się jeszcze. Patrzył na żonę, aż jego oczy przestały widzieć cokolwiek.
Pod podłogą, w piwniczce, Dobrosław zaciskał dłonie na uszach i nie wydawał z siebie żadnego dźwięku. Tak, jak obiecał ojcu. # dalej
-> sierota

= rzez
# tlo: pod_podloga
Drzwi pękły na pół. Do izby wtargnął chłód, smród bagna i olbrzymi cień, który musiał się schylić, żeby przecisnąć się pod nadprożem.
Maciek zdążył jeszcze chwycić siekierę. Marianna zasłoniła usta dłonią.
Dobrosław nie widział, co działo się potem. Widział tylko wąskie paski księżycowego światła między deskami nad głową – i cienie, które je przecinały. Słyszał wszystko. # pokaz: cien
Słyszał, jak ojciec woła, żeby matka uciekała. Słyszał głuche uderzenia siekiery, raz i drugi, i wycie, od którego drżała ziemia. Potem trzask – głośny, mokry, taki sam jak wtedy w zaroślach, choć chłopiec nie mógł tego wiedzieć. Ojciec przestał krzyczeć.
Matka krzyczała dłużej.
Kiedy i ona ucichła, przez szpary w deskach zaczęło kapać coś ciepłego. Kropla za kroplą, na jego włosy i policzki. # pokaz: krew
Coś ciężkiego przeszło po podłodze, tuż nad nim. Zatrzymało się. Słyszał, jak węszy – długo, chrapliwie, jak pies przy norze. Zacisnął zęby na rękawie, żeby nie pisnąć.
Potem kroki oddaliły się i rozpłynęły we mgle.
Przesiedział w piwniczce do rana. Tak, jak obiecał ojcu. # dalej
-> sierota

// Epilog zakończenia A — chłopca przygarnia Andrzej.
= sierota
# tlo: izba_andrzeja
{ los_psa == oswojony:
    Rano zajrzał do nich Andrzej. Zastał Mariannę na klepisku, z głową męża na kolanach. Nie płakała już. Pies leżał obok i nie pozwalał nikomu podejść.
    Maćka pochowali na cmentarzu przy kościele w mieście. Wdowa do chaty już nie wróciła – zamieszkała z chłopcem u przyjaciela męża, który przyjął ich pod swój dach jak rodzinę.
- else:
    Rano zajrzał do nich Andrzej. Drzwi chaty leżały w trawie, wyrwane razem z futryną. W izbie nie było nikogo – tylko ślady, które ciągnęły się w stronę bagna, i ciemne plamy na klepisku. Długo stał w progu, zanim usłyszał spod podłogi ciche pochlipywanie.
    Chłopiec nie powiedział ani słowa – ani tego dnia, ani przez wiele następnych. Andrzej zabrał go do siebie i wychował razem ze Stasiem jak własne dziecko.
}
Dobrosław wyrósł na milczącego, silnego mężczyznę. Nigdy nie chodził nad bagna i nigdy nie zszedł do żadnej piwnicy. Ożenił się z dziewczyną z sąsiedniej wsi i wkrótce urodził mu się syn.
Dali mu na imię Jaromir. # dalej
-> prolog_ciag_dalszy


// ------------------------------------------------------------
//  Zakończenie B — figurka u handlarza albo bez figurki: spokojne lata.
// ------------------------------------------------------------
=== lata_spokoju ===
# tlo: kapliczki
# rozdzial: Prolog
# tytul: Lata spokoju
Topielec nie przyszedł. Ani tego roku, ani następnego.
Maciek i Marianna orali pole, które z każdym rokiem było trochę większe. Dobrosław rósł szybko – najpierw pasał gęsi, potem chodził za pługiem, aż w końcu sam prowadził konia.{ los_psa == oswojony: Pies zestarzał się przy progu i pewnej zimy po prostu nie wstał. Pochowali go pod lasem.}
Czasem, w długie zimowe wieczory, Maciek opowiadał chłopcu o pierwszej wiośnie w Zapadlinie. O wyciu w zaroślach, o postaci z rękami do ziemi, o głosie, który wołał go znad bagien. O zielarce spalonej w chacie nad jeziorem. Syn słuchał z wypiekami na twarzy, ale traktował to jak bajki – takie, jakie opowiada się dzieciom, żeby nie chodziły same nad wodę.
Kiedy był już dorosły, wieś zaczęła stawiać kapliczki. Jedną przy drodze z Bukowego Grzbietu, drugą na skraju lasu, trzecią przy kładce nad mokradłami. Ludzie mówili, że od tamtej pory światełka nad bagnami mrugają rzadziej. Dobrosław w to nie wierzył, ale co roku w maju przystrajał je kwiatami razem z innymi. # pokaz: kapliczki
Rodzice zmarli ze starości, jedno po drugim, w tej samej chacie, którą Maciek kiedyś zbudował od pierwszego bala. On sam ożenił się z dziewczyną z sąsiedniej wsi i wkrótce urodził mu się syn.
Dali mu na imię Jaromir. # dalej
-> prolog_ciag_dalszy
