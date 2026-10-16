// ------------------------------------------------------------
//  Rozdział piąty — Tartak. Trzy lata po Marzannie: Jaromir ma
//  trzynaście lat, Franek siedemnaście. Tartak pana Urbaniaka,
//  ścięcie Starego Dębu (granicy boru), ubożę za piecem.
//  Ojciec jak w poprzednich rozdziałach:
//    figurka_u_staruchy — milczący, nieufny wobec Urbaniaka;
//    inaczej            — waha się, bo pieniądze by się przydały.
// ------------------------------------------------------------

=== rozdzial_piaty ===
# tlo: budowa_tartaku
# rozdzial: Rozdział piąty
# tytul: Tartak
Po tamtej wiośnie czas zaczął płynąć szybciej, jakby ktoś popuścił mu cugli.
Jeszcze tego samego lata ludzie Urbaniaka przywieźli nad strugę pierwsze wozy belek. Budowali przez całą jesień – stukali młotami od świtu do zmroku, kopali rów dla koła wodnego i klęli na glinę, która oblepiała im buty po kolana. Dzieci z całej wsi przybiegały patrzeć, jak rośnie wielka szopa, a starsi kręcili głowami i mówili, że z tego nic dobrego nie wyjdzie. # pokaz: budowa
Zimy przychodziły i odchodziły. Jaromir chodził do szkoły w Bukowcu jeszcze dwa lata. Nauczył się pisać tak starannie, że nauczyciel dawał mu do przepisywania kolędy dla organisty, i liczyć tak szybko, że ojciec zaczął go zabierać na jarmarki, żeby pilnował, czy handlarze nie oszukują przy wadze.{ ekwipunek ? ksiega: Księgę pana Ignacego czytał tak często, że znał na pamięć połowę podań, a resztę przepisywał sobie na zapas do zeszytu z grubego, szarego papieru.}
Każdej wiosny na łąkach zakwitały te same kaczeńce, każdego lata bociany wracały na kuźnię, a co jesień dym z ognisk z łętów snuł się nad polami tak samo jak wtedy, gdy Jaromir szedł do szkoły pierwszy raz. Zmieniało się tylko jedno: z roku na rok mniej było słychać ptaków od strony boru, a więcej – zgrzytu piły. # pokaz: lata
Antek wyciągnął się w chudego, poważnego chłopaka, który najchętniej przesiadywał w kuźni u ojca Hanki i uczył się kuć podkowy. Zosia, jego siostrzyczka, biegała już po obejściu i plątała się dorosłym pod nogami{ polnocnica == uslyszala_krzyk: – blada i chorowita, z szarą plamką na czole, którą matka chowała pod chustką}. Franek rósł najszybciej z całej czwórki, a kiedy skończył szesnaście lat, pierwszy poszedł do tartaku po zarobek.
A Hanka… Hanka po prostu była. Codziennie, od rana do wieczora, tuż obok – i Jaromir zaczął to zauważać dopiero wtedy, gdy któregoś dnia jej zabrakło, bo pojechała z ojcem na jarmark do miasta, a on przez cały dzień nie mógł znaleźć sobie miejsca. # pokaz: hanka # dalej
-> tartak_stoi

= tartak_stoi
# tlo: tartak
Odkąd stanął tartak, w Zapadlinie nikt już nie zasypiał przy ciszy. Nad strugą, która spływała z boru do jeziora, stanął tartak pana Urbaniaka – wielka drewniana szopa z kołem wodnym, które obracało się dniem i nocą, i z piłą, której zgrzyt niósł się po całej niecce. Od świtu do zmroku drogą pod borem jeździły wozy pełne pni, a na placu obok rosły sterty desek, pachnących żywicą tak mocno, że czuło się je aż w Bukowcu.
Wieś podzieliła się na dwa obozy. Jedni chodzili do tartaku do pracy i wracali z zapłatą, jakiej wcześniej w Zapadlinie nie widywano. Drudzy spluwali przez ramię, ilekroć mijał ich wóz z drewnem, i mówili cicho, że las niczego nie daje za darmo.
{ figurka_u_staruchy:
    Ojciec należał do tych drugich. Kiedy Urbaniak przysłał do niego człowieka z propozycją, wyprowadził go za płot bez słowa.
- else:
    Ojciec długo się wahał. Pieniądze by się przydały – nowy pług, krowa, dach nad stodołą – ale co wieczór siadał na progu i słuchał zgrzytu piły, a twarz miał coraz bardziej ponurą.
}
Jaromirowi stuknęło trzynaście lat. Skończył szkołę, wyciągnął się jak młody świerk i z każdym miesiącem częściej chodził z ojcem w pole.{ ekwipunek ? szczeniak: {imie_psa} wyrósł na dużego psa o spiczastych uszach i nie odstępował go ani na krok – tylko w stronę boru nie dawał się zaciągnąć za żadne skarby.}
Franek, który skończył już siedemnaście lat i miał bary jak drwal, od wiosny pracował w tartaku. Pewnego wieczoru przyszedł pod płot Jaromira, pobrzękując monetami w kieszeni. # pokaz: franek
– Urbaniak szuka chłopaków do układania desek – powiedział. – Płaci srebrem, co sobota. Chodź ze mną. Przez lato zarobisz więcej niż twój ojciec przez rok.
# pytanie: Czy Jaromir pójdzie do tartaku?
*   [Pójść do pracy w tartaku.]
    ~ pracowal_w_tartaku = true
    Następnego ranka stanął przed Urbaniakiem. Pan w miejskim płaszczu obejrzał go od stóp do głów jak konia na jarmarku, poklepał po ramieniu i rzucił tylko: – Nada się. # pokaz: urbaniak
    { figurka_u_staruchy:
        Ojciec nie odezwał się do syna przez tydzień. # dalej
    - else:
        Ojciec westchnął i kazał mu uważać na palce. # dalej
    }
    -> przy_pile
*   [Odmówić – jego miejsce jest w polu.]
    – Nie – powiedział Jaromir. – Ojciec beze mnie nie da rady.
    Franek wzruszył ramionami i odszedł, pogwizdując, ale chłopak jeszcze długo słyszał w ciemności brzęk srebra. # dalej
    -> w_polu

= przy_pile
# tlo: ognisko_tartak
~ ekwipunek += monety
Praca była ciężka. Od świtu nosił deski, aż ręce miał pokłute drzazgami, a włosy pełne trocin. Koło wodne skrzypiało, ostrze wyło, a woda w strudze płynęła brunatna od kory.
Wieczorami, przy ognisku, traczom rozwiązywały się języki. Stary Wawrzyniec, który całe życie przepracował przy traku, mówił, że w tym tartaku jest coś nie tak. Piła pękła już dwa razy, choć była nowa. Rano sterty desek bywały poprzestawiane, jakby ktoś w nocy je przeliczał. A raz, kiedy został na noc pilnować drewna, słyszał, jak w ciemności ktoś chodzi między pniami i stuka w każdy po kolei – raz, dwa, trzy – jakby sprawdzał, czy wszystkie są. # pokaz: stukanie
– Las się upomni – powtarzał, rzucając szczapę w ogień. – Zawsze się upomina.
W pierwszą sobotę Jaromir dostał od Urbaniaka garść monet – ciężkich, zimnych, z orłem po jednej stronie. Nigdy jeszcze nie trzymał w ręku tylu pieniędzy naraz.
-> pregi_franka

= w_polu
# tlo: pole_orka
Lato płynęło mu przy kosie i pługu. Z pola widział, jak drogą pod borem jadą kolejne wozy z pniami, a z głębi lasu co jakiś czas dobiegał trzask – długi, rozdzierający, a potem głuchy łoskot, od którego drżała ziemia. Za każdym razem ojciec prostował się nad pługiem i patrzył w stronę boru, a jego usta poruszały się bezgłośnie, jakby liczył. # pokaz: drzewo
Franek zachodził czasem wieczorem. Opowiadał, że w tartaku dzieją się dziwne rzeczy – że piła pękła już dwa razy, choć była nowa, a rano sterty desek bywają poprzestawiane, jakby ktoś w nocy je przeliczał – ale mówił o tym ze śmiechem i potrząsał sakiewką. # pokaz: franek
-> pregi_franka

= pregi_franka
Tylko raz, kiedy Franek myślał, że nikt nie patrzy, Jaromir zobaczył, jak drapie się po przedramieniu. Biegły po nim trzy długie, świeże pręgi, jakby od pazurów.
– Zahaczyłem o gwóźdź – burknął, kiedy złapał jego spojrzenie, i obciągnął rękaw. # dalej
-> stary_dab

= stary_dab
# tlo: stary_dab
W połowie czerwca ludzie Urbaniaka doszli do Starego Dębu.
Rósł na skraju boru, tam gdzie ścieżka z Zapadliny skręcała ku Bukowemu Grzbietowi – tak gruby, że czterech chłopów nie objęłoby go ramionami, z koroną, pod którą w upał chowały się całe stada. Mówiło się, że stał tu już wtedy, kiedy w niecce nie było jeszcze żadnej chałupy. Nikt nigdy nie złamał na nim nawet gałązki.
Teraz na korze bielał świeży znak. # pokaz: znak
{ ekwipunek ? ksiega:
    Jaromir pamiętał ten dąb z księgi pana Ignacego. „Stary Dąb na skraju boru – pisał nauczyciel – jest drzewem, którego Pan Lasu pilnuje jak własnego serca. Póki stoi, las kończy się tam, gdzie się kończy. Kto go zetnie, otworzy mu drogę do wsi”.
- else:
    Jaromir przypomniał sobie, co pan Ignacy opowiadał kiedyś w piątek: że są drzewa, których Pan Lasu pilnuje jak własnego serca, i że najstarsze z nich wyznaczają granicę, za którą kończy się jego władza.
}
– W poniedziałek go kładziemy – powiedział Franek, kiedy wracali razem znad strugi. – Urbaniak mówi, że z takiego pnia wyjdzie desek na cały dwór. Mnie przypadło pierwsze cięcie. Za trzy dni zapłaty z góry. # pokaz: chlopcy
# pytanie: Czy Jaromir ostrzeże Franka?
*   [Ostrzec Franka, żeby nie ciął Starego Dębu.]
    Jaromir chwycił go za rękaw.
    – Nie rób tego. Ten dąb to granica. Jak padnie, las przyjdzie do wsi.
    Franek roześmiał się, ale śmiech szybko zgasł, kiedy spojrzał przyjacielowi w oczy. Długo milczał.
    – Głupoty gadasz – mruknął w końcu.
    W poniedziałek rano nie przyszedł jednak do tartaku. Urbaniak wyrzucił go z roboty jeszcze tego samego dnia. # dalej
    -> sciecie
*   [Milczeć – i tak by nie posłuchał.]
    ~ franek_scial_dab = true
    Jaromir nic nie powiedział. Patrzył, jak Franek odchodzi w stronę tartaku, pogwizdując, i miał dziwne wrażenie, że widzi go takiego po raz ostatni – choć przecież nazajutrz mieli się spotkać jak zawsze. # pokaz: odchodzi # dalej
    -> sciecie

= sciecie
# tlo: sciecie_debu
W poniedziałek pod Starym Dębem zebrała się połowa wsi. { franek_scial_dab: Franek i stary Wawrzyniec | Dwaj tracze z tartaku } stanęli z siekierami po obu stronach pnia, a pan Urbaniak, z zegarkiem na złotym łańcuszku, odliczał czas.
Pierwsze uderzenie odbiło się od kory jak od kamienia. Drugie też. Dopiero za trzecim ostrze weszło w drewno – i z rany trysnął sok, gęsty i ciemnoczerwony jak krew.{ franek_scial_dab: Chlusnął Frankowi prosto w twarz. Chłopak cofnął się, otarł oczy rękawem i zaśmiał się nerwowo, ale Jaromir widział, że ręce mu się trzęsą.| Chlusnął na buty traczy, a jeden z nich odskoczył z przekleństwem.} # pokaz: sok
Ścinali do zmierzchu. Dąb jęczał przy każdym uderzeniu, tak że baby zatykały uszy, a psy po zagrodach wyły jak na pogrzebie. Kiedy wreszcie runął, ziemia zadrżała aż pod chałupami, a od strony boru dobiegł krzyk – długi, przeciągły, jakby las stracił coś, czego nigdy nie odzyska. Potem zapadła cisza. Nawet ptaki umilkły. # pokaz: upadek
Został tylko pień – szeroki jak stół, z setkami słojów, które zwijały się do środka w ciasną spiralę.{ ekwipunek ? kora: Taką samą jak na sośnie przy ścieżce i na słupie kapliczki.} Spod wyrwanych korzeni wysypała się garść zeszłorocznych żołędzi – zdrowych i lśniących, jakby ktoś je tam przechował.
# pytanie: Co zrobi Jaromir?
*   [Podnieść żołądź spod Starego Dębu.]
    ~ ekwipunek += zoladz
    Podniósł jeden – duży, gładki i ciepły, choć słońce dawno już zaszło. Schował go do kieszeni i przez całą drogę do domu ściskał w dłoni, jakby trzymał w niej coś żywego. # pokaz: zoladz # dalej
    -> uboze_za_piecem
*   [Odejść z pustymi rękami.]
    Odwrócił się i ruszył do domu. Za plecami słyszał, jak ludzie Urbaniaka wiwatują i otwierają gąsior gorzałki, a od boru ciągnął chłód, choć noc była czerwcowa. # pokaz: wiwat # dalej
    -> uboze_za_piecem

= uboze_za_piecem
# tlo: uboze_piec
Tej nocy w chałupie nikt nie spał spokojnie.{ ekwipunek ? szczeniak: {imie_psa} warczał pod drzwiami aż do świtu.} Garnki dzwoniły na półce, choć nikt ich nie dotykał, a w kominie coś szurało i popiskiwało jak mysz.
Jaromir zszedł do izby po wodę. Przy piecu, w smudze księżycowego światła, siedział maleńki staruszek – nie większy od kury, w połatanej kapocie przewiązanej sznurkiem. Siwa broda sięgała mu do samej ziemi, a jej koniec owijał się wokół cienkich, kurzych nóżek. Miał duży nos, krzaczaste brwi i wąskie oczka, które pewnie zwykle się śmiały, a na głowie czerwoną czapeczkę z opadającym czubkiem i pomponikiem. W rączkach ściskał okruch chleba i trząsł się cały, choć w palenisku jeszcze żarzyły się węgle. # pokaz: uboze
– Boję się – pisnął cieniutko, zanim chłopiec zdążył krzyknąć. – On idzie. Dąb był drzwiami, a teraz drzwi nie ma.
Jaromir przypomniał sobie, co { figurka_u_staruchy: babka | matka } mówiła kiedyś o ubożętach: że mieszkają za piecem w starych chałupach, że kto je karmi, temu darzy się w obejściu, a kto przegoni, ten ściąga na dom biedę.
# pytanie: Co zrobi Jaromir?
*   [Postawić mu naparstek mleka i skórkę chleba.]
    ~ uboze = nakarmione
    Jaromir nalał mleka do naparstka matki i ułamał skórkę z bochenka. Staruszek pił łapczywie, mlaskając, a potem otarł brodę rękawem i spojrzał na niego bystrymi oczkami. # pokaz: mleko
    – Dobry z ciebie gospodarz – powiedział. – Zapamiętam. Pomogę, kiedy przyjdzie pora.
    I zniknął za piecem, jakby go nigdy nie było. # pokaz: zniknal # dalej
    -> przed_zniwami
*   [Przegnać go z izby.]
    ~ uboze = przegnane
    – Precz stąd! – syknął Jaromir i zamachnął się ścierką. # pokaz: zniknal
    Staruszek pisnął żałośnie i zniknął w szparze pod piecem. Następnego dnia krowa przestała dawać mleko, a w spiżarni zalęgły się myszy. Matka nie mogła zrozumieć, co się stało. # pokaz: myszy # dalej
    -> przed_zniwami
*   [Udać, że niczego nie widzi, i wrócić do łóżka.]
    ~ uboze = zignorowane
    Jaromir odwrócił wzrok, wrócił na posłanie i naciągnął pierzynę na głowę. Kiedy rano zszedł do izby, przy piecu leżało kilka okruchów chleba, a w popiele odcisnęły się maleńkie, kurze ślady. # pokaz: zniknal, slady # dalej
    -> przed_zniwami

= przed_zniwami
# tlo: przed_zniwami
Tartak pracował dalej, jakby nic się nie stało.
{ franek_scial_dab:
    Franek dostał od Urbaniaka trzy dni zapłaty i nową kapotę, ale od dnia, w którym ściął dąb, był nie ten sam. Sypiał w dzień, a nocami włóczył się nad jeziorem. Mówił, że nie może zasnąć, bo coś go woła – cienkim, śpiewnym głosem, jak dziewczęta przy praniu. # pokaz: franek_noc
- else:
    Franek do niego nie wrócił. Najmował się do ludzi w polu, ale chodził ponury i rozdrażniony, jakby żałował tamtych pieniędzy.
}
Po wsi zaczęły się dziać dziwne rzeczy. Rano ludzie znajdowali w ogrodach ślady wielkich, bosych stóp, mleko kwaśniało w dzbankach, zanim zdążyło ostygnąć, a zieleń od strony boru podchodziła coraz bliżej pod płoty, jakby las robił krok co noc, kiedy nikt nie patrzył. # pokaz: slady
Pan Urbaniak chwalił się w karczmie w Bukowcu, że za rok przetnie bór drogą na wylot, a kapliczki, które stoją przy niej, każe przestawić, bo przeszkadzają wozom.
Zbliżały się żniwa. # dalej
-> rozdzial_piaty_ciag_dalszy


// Koniec rozdziału piątego — dalej rozdział szósty.
=== rozdzial_piaty_ciag_dalszy ===
# ozdobnik
_Koniec rozdziału piątego._ # dalej
-> rozdzial_szosty
