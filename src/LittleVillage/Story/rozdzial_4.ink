// ------------------------------------------------------------
//  Rozdział czwarty — Marzanna. Przedwiośnie, Jaromir ma dziesięć
//  lat. Topienie Marzanny (coś wciąga kukłę pod wodę), prawda
//  o nocy z prologu, przewrócona kapliczka, ludzie Urbaniaka.
//  Prawda zależy od zakończenia prologu:
//    figurka_u_staruchy i pies   — umierająca babka Marianna;
//    figurka_u_staruchy bez psa  — ojciec, który przeżył pod podłogą;
//    inaczej                     — ojciec, który kiedyś się z tego śmiał.
// ------------------------------------------------------------

=== rozdzial_czwarty ===
# tlo: stodola_marzanna
# rozdzial: Rozdział czwarty
# tytul: Marzanna
Zima trzymała długo, ale w marcu wreszcie puściła. Najpierw zaczęło kapać z dachów, potem po polach popłynęły brudne strumyki, a nocami lód na jeziorze trzeszczał i jęczał tak, że psy wyły po zagrodach. Mokradła obudziły się pierwsze – czarna woda przebijała przez śnieg, o świcie unosiła się nad nią para, a z rozlewisk przy kładce znów dochodziło bulgotanie, którego przez długie miesiące nie było słychać.
W piątą niedzielę Wielkiego Postu dzieci z całej Zapadliny zbierały się, żeby utopić Marzannę. Tak robiło się od zawsze: kto wyniesie zimę ze wsi i wrzuci ją do wody, ten sprowadzi wiosnę i przegoni choroby, głód i wszelkie zło.
Kukłę szykowali w stodole u Stasiowych. Franek, który od jesieni nie chodził już do szkoły i pomagał dziadkowi w polu, skręcił ze słomy tułów i przywiązał go do kija. Antek przyniósł stare łachy po matce – spódnicę i chustę – a Jaromir wcisnął jej w głowę dwa węgielki zamiast oczu i sadzą narysował usta. Hanka nawlekła na nitkę skorupki po jajkach, żeby Marzanna miała korale. Wyglądała strasznie – i o to właśnie chodziło. # pokaz: kukla
Potem dziewczynka sięgnęła do warkocza i zaczęła rozwiązywać czerwoną wstążkę.
– Dam jej moją – powiedziała. – Niech zabierze ze sobą wszystko, co złe.
{ poszedl_po_wstazke:
    Jaromir przypomniał sobie długie palce starca w półmroku boru i czerwień trzepoczącą w jego dłoni.
- else:
    Jaromir przypomniał sobie poranek, kiedy ta sama wstążka wisiała na ich płocie, zawiązana na kokardę ręką, której nikt nie widział.
}
# pytanie: Czy Hanka odda Marzannie wstążkę?
*   [Pozwolić, żeby Hanka przywiązała wstążkę.]
    ~ wstazka_marzanny = true
    Hanka zawiązała ją na słomianej szyi kukły, na kokardę, i odsunęła się, żeby popatrzeć. Czerwień na szarej słomie wyglądała jak rana. # pokaz: wstazka # dalej
    -> topienie
*   [Przekonać ją, żeby jej nie oddawała.]
    – Nie rób tego – poprosił Jaromir. – Ona już raz wróciła z lasu.
    Hanka spojrzała na niego dziwnie, ale schowała wstążkę do kieszeni fartucha. Kukła została szara, tylko korale ze skorupek grzechotały cicho, kiedy ktoś jej dotknął. # dalej
    -> topienie

= topienie
# tlo: rozlewisko
Ruszyli po południu. Na przedzie Franek niósł Marzannę na kiju, wysoko, żeby wszyscy widzieli, za nim szły dzieci z całej wsi, a na końcu kilka bab, które udawały, że idą tylko popatrzeć. Śpiewali, ile sił w płucach:
„Marzanno, Marzanno, zimowa panienko,
idź w wodę głęboką, nie wracaj nam prędko!”
Po drodze co chwila ktoś szarpał kukłę za słomę albo smagał ją rózgą, bo tak trzeba było – zima nie mogła odejść w spokoju.
Przyszli nad rozlewisko przy kładce. Lód stopniał tam już niemal całkiem, tylko przy brzegach trzymała się szara, dziurawa skorupa, a pośrodku stała czarna woda, gładka jak szkło. Franek zamachnął się i z całej siły cisnął Marzannę daleko przed siebie. # pokaz: rzut
Kukła plasnęła o taflę i zakołysała się. Przez chwilę unosiła się na powierzchni, a słomiana spódnica rozłożyła się wokół niej jak kwiat. Potem – nagle, jednym ruchem – poszła pod wodę. Nie tak, jak tonie rzecz, która nasiąkła. Tak, jakby ktoś szarpnął ją od spodu. # pokaz: tonie
Dzieci ucichły. W miejscu, gdzie zniknęła, pękło kilka wielkich, leniwych bąbli i rozeszły się kręgi.
– Teraz w nogi – szepnęła Hanka. – I nie oglądać się!
{ ekwipunek ? ksiega:
    Jaromir też to wiedział. W księdze pana Ignacego czytał, że kto obejrzy się za topioną Marzanną, tego choroba dogoni jeszcze przed Wielkanocą.
- else:
    – Kto się obejrzy, tego choroba dogoni jeszcze przed Wielkanocą – dodała któraś z bab.
}
Wszyscy rzucili się do ucieczki. Za plecami Jaromira coś chlupnęło – głośno, ciężko, jakby z wody wynurzało się coś dużego. # pokaz: ucieczka
# pytanie: Co zrobi Jaromir?
*   [Obejrzeć się.]
    ~ obejrzal_sie = true
    Obejrzał się. Tylko na mgnienie.
    Przy kładce, w czarnej wodzie, coś trzymało Marzannę – długa, szara ręka zakończona szponami, oblepiona wodorostami. Nad powierzchnią, wyżej niż sięgnąłby dorosły mężczyzna, żarzyły się dwa ślepia, jak węgielki w popiele.{ wstazka_marzanny: Pazury powoli nawijały na siebie czerwoną wstążkę.} Potem ramię cofnęło się i woda zamknęła się bez śladu. # pokaz: reka
    Tej nocy dostał gorączki. Leżał trzy dni, a matka okładała mu czoło mokrymi szmatami i nie mogła zrozumieć, czemu w malignie woła o kapliczkę przy kładce. # dalej
    -> prawda
*   [Biec dalej i nie oglądać się.]
    Nie obejrzał się. Biegł, ściskając Hankę za rękę, aż do pierwszych płotów, a za nimi, od strony mokradeł, niósł się cichy chichot – taki, jakim śmieje się ktoś, kto dostał prezent. # pokaz: chichot
    { wstazka_marzanny:
        Następnego dnia Hanka chodziła z rozplecionym warkoczem i co chwila sięgała do niego dłonią, jakby czegoś szukała. # dalej
    - else:
        Długo jeszcze żadne z nich nie odezwało się słowem. # dalej
    }
    -> prawda

= prawda
{ figurka_u_staruchy && los_psa == oswojony: -> prawda_babki }
{ figurka_u_staruchy: -> prawda_ojca_sieroty }
-> prawda_ojca

= prawda_babki
# tlo: babka_lozko
Tej wiosny babka Marianna już nie wstała. Od Gromnicznej leżała na łóżku za piecem, coraz drobniejsza i lżejsza, jakby ziemia zabierała ją sobie po kawałku. Kiedy usłyszała o Marzannie, kazała zawołać wnuka.
– Siądź – szepnęła. Ręka, którą chwyciła go za nadgarstek, była sucha i zimna jak liść. – Twój ojciec ci nie powie. On nie umie. Więc ja powiem, póki jeszcze mogę.
I opowiedziała mu wszystko. O tym, jak dziadek Maciek znalazł w zgliszczach nad jeziorem nadpaloną figurkę i sprzedał ją w mieście staruszce w kapturze. O stworze, który kilka nocy później wyłamał drzwi ich chaty. O psie, który rzucił się na niego pierwszy, i o siekierze, która weszła w długie, kościste ramię. O tym, jak dziadek skonał na klepisku z głową na jej kolanach, a mały Dobrosław przesiedział całą noc pod podłogą, zaciskając dłonie na uszach.
– To, co było w wodzie, to był on – powiedziała. – Nie umarł. Takie jak on nie umierają. Czekają.
Potem wskazała kąt za łóżkiem. Pod starą kapotą leżała siekiera o wytartym, ciemnym trzonku. Na ostrzu, choć wyczyszczonym do połysku, wciąż było widać rdzawe zacieki, jakby żelazo samo nie chciało zapomnieć. # pokaz: siekiera
{ krzesiwo_dziadka:
    ~ ekwipunek += krzesiwo
    ~ krzesiwo_od_babki = true
    – Jego. Weźmiesz ją, kiedy dorośniesz. – Spod poduszki wyjęła małe, poczerniałe krzesiwo. – A to weź już teraz. Leżało w popiele razem z tamtą figurką. Dziadek nie rozstawał się z nim do końca. # pokaz: krzesiwo
- else:
    – Jego. Weźmiesz ją, kiedy dorośniesz.
}
– Obiecaj mi jedno – dodała po chwili. – Że nigdy nie wejdziesz do boru. Choćby nie wiem kto cię wołał.
-> obietnica

= prawda_ojca_sieroty
# tlo: prog_noc
Kiedy Jaromir wrócił znad rozlewiska, ojciec nie zapytał o nic. Milczał przez cały wieczór. Dopiero gdy matka zasnęła, wziął syna za ramię, wyprowadził na próg i usiadł obok niego w ciemności.
– Miałem tyle lat co ty – zaczął, a głos mu się łamał, jakby od bardzo dawna go nie używał. – Może mniej.
I opowiedział. O figurce, którą dziadek Maciek sprzedał w mieście staruszce w kapturze. O nocy, kiedy coś wyłamało drzwi ich chaty. O deskach nad głową, przez które sączył się księżyc, o krzykach – najpierw ojca, potem matki – i o czymś ciepłym, co kapało mu na włosy. O węszeniu tuż nad nim, chrapliwym jak u psa przy norze.
– To, co było w wodzie, to był on – powiedział. – Dlatego sprawdzam rygiel. Każdej nocy, od pięćdziesięciu lat.
– Obiecaj mi jedno – poprosił. – Że nigdy nie wejdziesz do boru. Choćby nie wiem kto cię wołał.
-> obietnica

= prawda_ojca
# tlo: izba_wieczor
Ojciec, kiedy usłyszał, co się stało nad rozlewiskiem, nie roześmiał się. Jaromir pierwszy raz widział, żeby historia o stworze nie wywołała na jego twarzy uśmiechu.
– Twój dziadek opowiadał mi to samo – powiedział cicho, obracając w palcach kubek. – O ręce z wody. O głosie, który woła znad bagien. O zielarce spalonej w chacie nad jeziorem.{ pregi_na_lydkach: Pokazywał mi sine pręgi na łydkach, po pięć z każdej strony. Myślałem, że to od pijawek.} Śmiałem się. Myślałem, że chce mnie nastraszyć, żebym nie łaził sam nad wodę. – Zamilkł na długo. – A przed śmiercią ścisnął moją dłoń i szepnął: „Pilnuj kapliczek, Dobruś. To nie były bajki”.
– Obiecaj mi jedno – poprosił. – Że nigdy nie wejdziesz do boru. Choćby nie wiem kto cię wołał.
-> obietnica

= obietnica
# pytanie: Czy Jaromir obieca?
*   [Obiecać.]
    ~ obietnica_bor = true
    – Obiecuję – powiedział Jaromir.
    { figurka_u_staruchy && los_psa == oswojony:
        Nie wiedział jeszcze, jak ciężko przyjdzie mu kiedyś dotrzymać tego słowa.
        -> smierc_babki
    }
    Nie wiedział jeszcze, jak ciężko przyjdzie mu kiedyś dotrzymać tego słowa. # dalej
    -> kapliczka
*   [Milczeć.]
    Jaromir nie odpowiedział. Pomyślał o Hance i o czerwonej wstążce, o starcu z długimi palcami, o głosie, który wołał go zimą spomiędzy drzew, i nie potrafił wydusić z siebie tego jednego słowa.
    { figurka_u_staruchy && los_psa == oswojony:
        Babka długo patrzyła mu w oczy, a potem westchnęła, jakby właśnie tego się spodziewała.
        -> smierc_babki
    }
    Ojciec długo patrzył mu w oczy, a potem skinął głową, jakby właśnie tego się spodziewał. # dalej
    -> kapliczka

= smierc_babki
Marianna zmarła kilka dni później, w Wielki Czwartek. Prosiła, żeby pochować ją przy mężu, na cmentarzu w mieście, i ojciec dotrzymał słowa, choć droga z trumną na wozie zajęła cały dzień. # pokaz: swieca # dalej
-> kapliczka

= kapliczka
# tlo: kapliczka_przewrocona
Po Wielkanocy ziemia obeschła, a na miedzach zażółciły się pierwsze kaczeńce. Któregoś popołudnia, wracając ze szkoły ścieżką pod borem, Jaromir i Antek{ ekwipunek ? szczeniak: – i {imie_psa}, który odtąd wszędzie za nim chodził –} zobaczyli, że kapliczka na skraju lasu leży w trawie.
Była to jedna z najstarszych w Zapadlinie, postawiona jeszcze za młodości ojca. Drewniany słup wyrwano z ziemi razem z darnią, daszek odłamał się i leżał kilka kroków dalej, a figurka świętego – szara od deszczów, z obliczem wytartym przez pół wieku – tkwiła w błocie twarzą w dół. Trawa dookoła była zryta, jakby ktoś ciągnął go w stronę drzew i porzucił w pół drogi.
{ ekwipunek ? kora:
    U podstawy ktoś wydrapał na drewnie spiralę – taką samą jak na sośnie przy ścieżce. Jaromir nie musiał wyjmować z torby swojego kawałka kory, żeby wiedzieć, że znaki są te same. # pokaz: spirala
}
{ ekwipunek ? szczeniak:
    {imie_psa} zjeżył sierść i warczał w stronę boru, cofając się na sztywnych łapach. # pokaz: pies
}
– Trzeba powiedzieć dorosłym – szepnął Antek.
# pytanie: Co zrobią chłopcy?
*   [Postawić kapliczkę z Antkiem, samemu.]
    ~ kapliczka_podniesiona = true
    Słup był ciężki, mokry i śliski od błota. Zaparli się we dwóch – raz, drugi, trzeci – aż w końcu stanął w wyrwanym dole, chwiejąc się jak pijany. Jaromir obłożył go kamieniami i ubił ziemię butami, a Antek wytarł figurkę rękawem, wstawił ją pod daszek i przybił go na nowo, stukając płaskim otoczakiem. # pokaz: podniesiona
    Kiedy skończyli, od strony boru powiał wiatr – zimny, choć dzień był ciepły – i przez chwilę wszystkie drzewa na skraju lasu szumiały naraz, jakby ktoś głęboko odetchnął. Potem ucichło. # pokaz: wiatr
    Ojciec, kiedy się dowiedział, poszedł obejrzeć kapliczkę i wrócił z twarzą, której Jaromir nie umiał odczytać.
    – Dobrze zrobiliście – powiedział tylko. # dalej
    -> urbaniak
*   [Pobiec po dorosłych.]
    Popędzili do wsi, ile sił w nogach. Ojciec i stary Staś poszli jeszcze tego samego wieczoru, z latarnią i łopatą. Wrócili po północy, zabłoceni i milczący. # pokaz: latarnia
    Nie leżała już tam, gdzie widzieli ją chłopcy. Znaleźli ją dopiero kilkadziesiąt kroków dalej, między pierwszymi świerkami, wbitą w ziemię do góry nogami. Postawili ją na dawnym miejscu i wkopali głębiej niż przedtem.
    – Ktoś tu nie chce kapliczek – mruknął Staś, kiedy myślał, że nikt go nie słyszy. # dalej
    -> urbaniak

= urbaniak
# tlo: urbaniak
W maju, kiedy bociany wróciły na stare gniazdo na dachu kuźni, do Zapadliny zajechała bryczka. Wysiadł z niej tęgi pan w miejskim płaszczu i kapeluszu, a za nim dwóch ludzi z siekierami i długim sznurem z węzłami. Chodzili skrajem boru przez cały dzień – mierzyli, liczyli i co kilka kroków wycinali na korze dębów białe znaki. # pokaz: znaki
Jaromir patrzył na nich zza płotu. Każde takie nacięcie wyglądało jak świeża rana.
– Pan Urbaniak – powiedział ojciec, kiedy bryczka odjechała. – Dziedzic sprzedał mu wyrąb. Będzie tartak. # pokaz: odjazd
Tej nocy po raz pierwszy od lat z boru dobiegło wycie – długie, przeciągłe, ani wilcze, ani psie. Ludzie zamykali okiennice i żegnali się ukradkiem, a Jaromir leżał w ciemności i liczył uderzenia własnego serca, aż ucichło. # pokaz: noc # dalej
-> rozdzial_czwarty_ciag_dalszy


// Koniec rozdziału czwartego — dalej rozdział piąty.
=== rozdzial_czwarty_ciag_dalszy ===
# ozdobnik
_Koniec rozdziału czwartego._ # dalej
-> rozdzial_piaty
