// ------------------------------------------------------------
//  Zapiski — bestiariusz. Każda istota ma kilka wpisów (etapów),
//  które fabuła odsłania dopiero wtedy, gdy bohater czegoś się dowie:
//      ~ zapiski += licho_2
//  Kolejność na liście = kolejność kart. Tytuł karty bierze się z
//  najnowszego odsłoniętego wpisu (np. „Jednooka żebraczka” → „Licho”).
//  Wpisy nie mówią więcej, niż w tej chwili wiedzą postacie.
// ------------------------------------------------------------

LIST Zapiski = stwor_1, zielarka_1, pan_lasu_1, starzec_1, polnocnica_1, polnocnica_2, dziad_1, stwor_2, zielarka_2, ogniki_1, uboze_1, pan_lasu_2, poludnica_1, pan_lasu_3, rusalki_1, uboze_2, licho_1, licho_2, licho_3, pan_lasu_4, starzec_2, tropy_1, mamuny_1, odmieniec_1, mamuny_2
VAR zapiski = ()

=== function tytul_zapisku(z)
{ z:
    - stwor_1:      ~ return "Stwór z zarośli"
    - stwor_2:      ~ return "Topielec"
    - zielarka_1:   ~ return "Zielarka znad jeziora"
    - zielarka_2:   ~ return "Zielarka znad jeziora"
    - pan_lasu_1:   ~ return "Pan Lasu"
    - pan_lasu_2:   ~ return "Pan Lasu"
    - pan_lasu_3:   ~ return "Pan Lasu"
    - pan_lasu_4:   ~ return "Pan Lasu"
    - starzec_1:    ~ return "Starzec w kapeluszu z mchu"
    - starzec_2:    ~ return "Starzec w kapeluszu z mchu"
    - polnocnica_1: ~ return "Północnica"
    - polnocnica_2: ~ return "Północnica"
    - dziad_1:      ~ return "Dziad z lirą"
    - ogniki_1:     ~ return "Błędne ogniki"
    - uboze_1:      ~ return "Ubożę"
    - uboze_2:      ~ return "Ubożę"
    - poludnica_1:  ~ return "Południca"
    - rusalki_1:    ~ return "Rusałki"
    - licho_1:      ~ return "Jednooka żebraczka"
    - licho_2:      ~ return "Licho"
    - licho_3:      ~ return "Licho"
    - tropy_1:      ~ return "Ślady pod oknem"
    - mamuny_1:     ~ return "Mamuny"
    - mamuny_2:     ~ return "Mamuny"
    - odmieniec_1:  ~ return "Odmieniec"
}
~ return ""

=== function tresc_zapisku(z)
{ z:
- stwor_1:
    Wyższy od człowieka o trzy głowy, zgarbiony, z rękami zwisającymi niemal do ziemi i długimi, mokrymi włosami. Ślepia żarzą mu się jak węgielki w popiele. Przyszedł z mgły, kiedy ucichły świerszcze i żaby, i odszedł w stronę mokradeł. Maciek widział go tylko raz – i nie zapomniał nigdy.
- stwor_2:
    Po pół wieku wrócił, kiedy dzieci topiły Marzannę – szara ręka wciągnęła kukłę pod wodę. „Takie jak on nie umierają. Czekają”. Starzy mówią, że kto utonie bez księdza, nie idzie ani do nieba, ani do piekła, tylko zostaje w wodzie. Na dnie trzyma dusze topielców pod glinianymi garnkami, odwróconymi do góry dnem, i liczy je co noc. Kiedy który garnek pęknie, dusza ulatuje bąblem na powierzchnię.
- zielarka_1:
    Mieszkała nad jeziorem, tam gdzie w trzcinach sterczą zwęglone bale. Leczyła ludzi ziołami, dopóki nie zaczęła gadać po nocach z kimś, kogo nikt nie widział. Kiedy we wsi zaczęło się psuć mleko i padać bydło, chłopi zabili jej drzwi deskami i podpalili chatę. Umierając, przeklęła wieś i każdego, kto w niej kiedyś zamieszka. Ci, którzy ją spalili, nie dożyli zimy – jeden po drugim weszli w bagno.
- zielarka_2:
    Klątwa nie wygasła razem z ogniem. Dziadek Maciek nosił ją w sobie przez całe życie – {figurka_u_staruchy:i zapłacił za nią więcej, niż chciał komukolwiek powiedzieć|a swoim dzieciom opowiadał o niej jak o bajce, choć sam nigdy się z niej nie śmiał}. Do dziś nikt w Zapadlinie nie buduje się nad jeziorem po zachodniej stronie.
- pan_lasu_1:
    Starzy nazywają go Borowym albo Leszym. Mieszka w najgłębszej części boru i pilnuje go, jak gospodarz pilnuje swojej zagrody. Potrafi być wysoki jak najwyższa sosna albo niski jak trawa. Kto zabłądzi, niech zdejmie ubranie i włoży je na lewą stronę – wtedy Borowy się gubi, bo myśli, że ma przed sobą jednego ze swoich.
- pan_lasu_2:
    Są drzewa, których pilnuje jak własnego serca. Stary Dąb na skraju boru był granicą – póki stał, las kończył się tam, gdzie się kończył.{ franek_scial_dab: Pierwsze cięcie zadał mu Franek.} Kiedy pierwsi ludzie zeszli do niecki, mieli postawić kapliczki wzdłuż boru i obiecać, że za Stary Dąb nie przejdą z siekierą. Wtedy dopiero las się cofnął. „Kapliczki są jak gwoździe w płocie. Wyrwiesz jeden, płot jeszcze stoi. Wyrwiesz wszystkie…”
- pan_lasu_3:
    {ostrzezenie_poludnicy:Południca powiedziała to wprost: Pan Lasu się budzi. Z każdym ściętym drzewem jego sen jest płytszy, a kiedy się obudzi, przyjdzie po swoje.|Coś się zmieniło po ścięciu Starego Dębu. W ogrodach znajdowano ślady wielkich, bosych stóp, a zieleń od strony boru podchodziła pod płoty, jakby las robił krok co noc.}
- pan_lasu_4:
    Kiedy ludzie Urbaniaka wykopali kapliczki spod boru, w dołach po nich w jedną noc wyrosły młode świerki. Od tamtej pory bór co roku stoi bliżej wsi.{ kapliczki_drogi == obronil_kapliczke: Ostała się tylko jedna kapliczka – i co rano ktoś kładzie pod nią świeże kwiaty.}
- starzec_1:
    {poszedl_po_wstazke:Stał w półmroku boru, tak wysoki, że musiałby się schylić, żeby wejść do chaty. Kożuch wywrócony włosiem na wierzch, przepasany sznurkiem, kapelusz z mchu o szerokim rondzie, a pod nim tylko dwa jasne punkty oczu. Opierał się na sękatej lasce, z której wyrastały liście. W długich palcach trzymał wstążkę Hanki.|Ktoś narysował go w księdze pana Ignacego: starzec w ubraniu wywróconym na lewą stronę, w kapeluszu z mchu.} Pod rysunkiem w księdze stało: „Kto go spotka, niech zrobi tak samo jak on. Tamten przychodzi z drugiej strony, gdzie wszystko jest odwrotnie”.
- starzec_2:
    Przyszedł na wesele Jaromira i Hanki – stanął na skraju lasu i patrzył na rozświetlone okna.{ poszedl_po_wstazke: Nie postarzał się ani o dzień.} {weselny_gosc == ugoszczony_kolaczem:Przyjął kołacz i skinął głową jak gospodarz gospodarzowi.|{weselny_gosc == zapytany:Przemówił głosem jak wiatr w koronach drzew: „Dobrze się żenisz, wnuku Maćka. Pilnuj jej”. W szronie zostały ślady butów – lewy po prawej stronie, prawy po lewej.|Stał tam aż do pierwszego kura.}}
- polnocnica_1:
    Przychodzi po północy do niemowląt. Wysoka, owinięta w coś jak całun, z czarnymi włosami do samej podłogi, z twarzą jak trupia czaszka i palcami długimi jak patyki. Pochyla się nad kołyską, a dziecko zamiast płakać świszcze, jakby nie mogło złapać tchu. Boi się żelaza pod poduszką.{rada_jaromira == ksiega_rada: Księga pana Ignacego dodaje, że rozsypany mak musi policzyć ziarenko po ziarenku – a liczyć potrafi tylko do świtu.}
- polnocnica_2:
    Babka Hanki mówi, że to dusza matki, która umarła przy porodzie, zanim ksiądz zdążył ją wywieść – swojego dziecka nie utuliła, więc chodzi do cudzych. I że nigdy nie przychodzi sama z siebie: ktoś musi jej wskazać drogę. {polnocnica == przegnana_nozem:Zosię uratował nożyk wsunięty pod poduszkę.|{polnocnica == policzyla_mak:Zosię uratował mak – liczyła do świtu i nie zdążyła.|Zosia przeżyła, ale na jej czole została szara plamka, jak od dotyku brudnego palca.}}
- dziad_1:
    Zapukał w Wigilię, ledwie przełamali się opłatkiem: zgarbiony, w łachmanach, z lirą na plecach, z oczami białymi jak mleko. {wpuscil_dziada:Zjadł niewiele, zaśpiewał pieśń o duszach, które w tę noc wracają do swoich chałup, i odszedł w noc, choć nikt nie widział, w którą stronę. Wychodząc, szepnął Jaromirowi: „Pachniesz lasem, chłopcze”.|Nie wpuścili go. Jego ślady urywały się w połowie pola.} W Wigilię nie odprawia się dziadów od progu, bo nigdy nie wiadomo, kto przyszedł – czasem to dusza kogoś z rodziny wraca w przebraniu, żeby zobaczyć, czy jeszcze ją pamiętają.
- ogniki_1:
    Blade światełka nad mokradłami przy kładce, które zapalają się o zmierzchu i chichoczą jak ktoś, kto dostał prezent. Baby mówią, że to ci, co spalili zielarkę znad jeziora – weszli w bagno i do dziś świecą tam po nocach. Kto pójdzie za takim ognikiem, ten już nie wróci.
- uboze_1:
    Maleńki staruszek nie większy od kury, w połatanej kapocie i czerwonej czapeczce, z siwą brodą owiniętą wokół kurzych nóżek. Mieszka za piecem w starych chałupach. Kto je karmi, temu darzy się w obejściu; kto przegoni, ten ściąga na dom biedę. Ubożę przychodzi razem z pierwszym gospodarzem i zostaje, dopóki chałupa stoi. Kiedy spłonie, odchodzi razem z dymem i już nie wraca.
- uboze_2:
    {uboze == nakarmione:Odwdzięcza się po cichu: w spiżarni nie lęgną się myszy, w dzbanie zawsze jest więcej mleka, niż się nalało, a w głodną zimę mąka jakoś nie chce się skończyć.|{uboze == przegnane:Odkąd je przegoniono, chałupa jakby ich nie lubiła: kury przestały się nieść, a w spiżarni co chwila coś się psuło.|Nikt go już potem nie widział. Czasem tylko w popiele przy piecu odciskały się maleńkie, kurze ślady.}}
- poludnica_1:
    Wysoka, biała kobieta w długiej koszuli, która w samo południe przychodzi na pola. Nie dotyka stopami ziemi, oczy ma białe, bez źrenic, a w ręce sierp. Kto pracuje w największy skwar, temu zadaje zagadki – za każdą pomyłkę tnie sierpem. Podobno była kiedyś najlepszą żniwiarką w okolicy: założyła się z parobkami, że sama zeżnie cały łan do południa, i nie zeszła z pola w największy upał. Znaleźli ją wieczorem z sierpem w ręku i z kłosami we włosach.{ poludnica_uklon: Przed odpowiedzią z księgi skłoniła głowę.}{ blizna_sierpa: Jaromirowi została po niej blizna w kształcie półksiężyca.}
- rusalki_1:
    Dusze utopionych dziewcząt. W Zielone Świątki wychodzą z jeziora i tańczą w księżycowym świetle – młode, blade, w mokrych lnianych koszulach, z wiankami z sitowia i oczami całymi czarnymi, bez białek. Wabią śpiewem bez słów i wciągają w toń każdego, kto da się skusić. Z wody wychodzą tylko od Zielonych Świątek do świętego Jana; przez resztę roku śpią w mule na dnie. Jedną z nich była Kaśka Wójcikówna.{ratunek_franka == piolunem: Piołunu boją się bardziej niż ognia.|{ratunek_franka == krzyzem: Krzyż ich nie pali – „byłyśmy tu przed nim”.| Kaśka puściła Franka, kiedy Hanka zawołała ją po imieniu.}}
- licho_1:
    Mała, przygarbiona żebraczka, ledwie do pasa dorosłemu, owinięta w tyle łachmanów, że nie wiadomo, gdzie się kończy jeden, a zaczyna drugi. Ma tylko jedno oko, z czerwoną obwódką; w miejscu drugiego jest gładka, szara skóra. W samo południe rzuca długi cień – jak o zachodzie. Kto ją zobaczy pod swoim płotem, ten nazajutrz ma nieszczęście.
- licho_2:
    Babka Hanki nazwała je po imieniu: Licho, co nie śpi. Chodzi od chałupy do chałupy i siada tam, gdzie mu dobrze – gdzie las rąbią, a świętości przestawiają z kąta w kąt. Nie wejdzie do chałupy, dopóki ktoś go nie zawoła. Przegonione idzie do sąsiada; ugoszczone odchodzi syte. Mówią, że drugie oko zostało w borze, bo Licho to oczy, które Pan Lasu wysyła między ludzi – co zobaczy jedno, to wie drugie.
- licho_3:
    {licho_noc == ugoszczone:Kiedy dostało chleba, poszło drogą do tartaku – i rano u Urbaniaka pękła piła, a w stajni padł mu najlepszy koń.|{licho_noc == odpedzone:Przegnane głownią uciekło w stronę kuźni – tej nocy kuźnia kowala spłonęła.|Do rana prosiło pod drzwiami cudzymi głosami i drapało w deski. Nikt mu nie odpowiedział.}} W październiku odeszło drogą pod borem i weszło między drzewa, jakby ktoś je zawołał.
- tropy_1:
    Rano po weselu przez szron szły od boru ślady – szerokie jak dłoń dorosłego mężczyzny. Okrążyły chałupę trzy razy i zatrzymały się pod oknem nowej izby, gdzie szron był stopiony do gołej ziemi, jakby coś ciepłego leżało tam całą noc. Na sztachecie płotu zostało kilka długich, białych włosów. Żaden zwykły wilk nie ma takich łap.
- mamuny_1:
    Mieszkają nad jeziorem. Same rodzą dzieci brzydkie i chorowite, więc kradną ludziom zdrowe – póki dziecko nie jest ochrzczone – a w kołysce podrzucają swoje. Latem, po nocach, słychać, jak tłuką kijankami pranie o kamienie. Babka Hanki mówi, że piorą całuny dla tych, którzy umrą we wsi przed następną wiosną – i że lepiej nie liczyć uderzeń. Boją się czerwieni, żelaza i gromnicy.
- mamuny_2:
    Wysokie i garbate, z głowami zbyt dużymi na wątłe szyje i włosami jak zeschłe gałązki, w łachmanach z mchu i kory. Ich dotyk jest zimny i mokry. Potrafią nucić głosem kogoś bliskiego i zmusić śpiącego, żeby sam zdjął ochronę z kołyski.{podmiana:{uklad_z_mamunami == oddany_skarb: Za Marysię wzięły dziecięcy skarb Jaromira i cisnęły go w jezioro.|{uklad_z_mamunami == dar_swietojanski: Za Marysię Jaromir obiecał im co roku, w noc świętojańską, chleb i wianek na kamieniu przy brzegu. Jeśli zapomni, przyjdą po swoje.|{uklad_z_mamunami == oddane_lata: Za Marysię wzięły Jaromirowi lata życia – jego skronie posiwiały jak u starego.| Podmianę odwróciła dopiero woda gotowana w skorupkach jajek.}}}}{sposob_na_odmienca == chrzest_odmienca: Nie zapomną, że ich dziecko obrócono w drzazgi.}
- odmieniec_1:
    Dziecko mamun, podrzucone w miejsce ludzkiego. Z daleka wygląda jak tamto, ale jest cięższe i zimne, skórę ma jak korę, a oczy ciemniejsze niż oczy jakiegokolwiek dziecka. Nie płacze, tylko bez ustanku je, a kiedy myśli, że nikt nie patrzy, uśmiecha się jak stara kobieta. Podmianę da się odwrócić tylko przez siedem dni.
}
