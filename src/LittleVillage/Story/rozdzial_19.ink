// ------------------------------------------------------------
//  Rozdział dziewiętnasty — Świt. Dwie drogi po rozdziale osiemnastym.
//  [Marysia żyje] powrót o świcie, dług u Jagny (wstążka, drewniak albo odmowa),
//  lato i żniwa, pod koniec sierpnia kijanki nad jeziorem — mamuny piorą mały całun
//  (cenę za zmycie imienia wybiera się w r20, w noc Zaduszek). Jesień, mgła pod płotami,
//  gromnice gasną.
//  [zły wybór] Hanka poznaje po zapachu, co Jaromir przyniósł; ciało pochowane,
//  oddane Jagnie, spalone albo zakopane pod młodnikiem; trumienka z bzu, wianki,
//  kołysanka; jesień — „Przyjdzie?”; paliła się tylko gromnica Hanki.
// ------------------------------------------------------------

=== rozdzial_dziewietnasty ===
{ marysia_odzyskana:
    -> powrot_z_marysia
- else:
    -> powrot_bez_niej
}

= powrot_z_marysia
# tlo: laka_swit
# rozdzial: Rozdział dziewiętnasty
# tytul: Świt
Słońce wyszło zza boru akurat wtedy, kiedy Jaromir stanął na skraju młodnika. Na pokosach zaszkliła się rosa, aż zabolały go oczy, a w zbożu odezwał się skowronek – pierwszy ptak, jakiego słyszał od trzech dni.
{ ekwipunek ? szczenie_psa:
    Pies wyprzedził go i pognał w stronę wsi z takim jazgotem, że odpowiedziały mu wszystkie podwórza w Zapadlinie. # pokaz: pies
}
{ wilk_przy_jaromirze && znak_rozpoznania != po_wilku:
    Biały wilk odprowadził ich do ostatnich świerków i tam usiadł. Kiedy Jaromir obejrzał się po chwili, już go nie było. # pokaz: wilk
}
Hanka biegła od chałupy, z kołysanką urwaną w pół słowa, boso, przez mokrą trawę, z rękami wyciągniętymi przed siebie – jakby bała się, że jeśli je opuści, obudzi się przy zgasłym łuczywie. Nie krzyczała.{ pani_w_zbozu_noc == za_spiewem: Nie mogła. Z gardła wydobywał jej się tylko suchy, urywany świst.} Dopadła ich w pół drogi i objęła oboje, z całej siły, aż Marysia pisnęła z oburzenia. Wtuliła twarz we włosy córki i przez chwilę tylko oddychała, a potem zaczęła się śmiać i płakać naraz, całowała małą po brudnych stopach, po rękach, po głowie. Dopiero wtedy spojrzała na Jaromira, na policzki pocięte gałęziami, i dotknęła ich palcami, ostrożnie, jakby sprawdzała, czy to on. # pokaz: uscisk
Jaromir poczuł, że nogi już go nie niosą. Usiadł w trawie. Siedzieli tak we troje, a ludzie z grabiami stali na pokosach i nikt się nie ruszał.
Pierwszy podszedł Antek. Nie powiedział nic – zdjął kapotę i okrył nią małą.{ zastaw_u_leszego == zastaw_cien: Dopiero w południe, kiedy wyszli na podwórze, Hanka spojrzała pod nogi męża i nie mogła oderwać wzroku od miejsca, gdzie powinien leżeć jego cień. Nie zapytała. Jaromir był jej za to wdzięczny bardziej niż za cokolwiek innego.} # pokaz: antek # dalej
{ dlug_u_jagny:
    -> dlug_jagny_dobry
}
-> lato_po_powrocie

= dlug_jagny_dobry
# tlo: wies_sianokosy
Jagna czekała pod płotem, przy swoim wozie. Kiedy Jaromir przechodził obok z Marysią na rękach, podniosła na niego zdrowe oko. # pokaz: jagna
– Pierwsza rzecz, którą wyniesiesz z boru – przypomniała cicho. – Taka była cena.
Hanka zatrzymała się w pół kroku. Marysia przywarła Jaromirowi do szyi.
# pytanie: Co Jaromir odda Jagnie?
*   [Wstążkę z nadgarstka.]
    ~ dlug_jagny = oddana_wstazka
    Jaromir uniósł rękę z czerwoną pętlą na przegubie. – Szła przodem, kiedy odgarniałem gałęzie – powiedział. – Wyszła z boru, zanim wyniosłem córkę.
    ~ ekwipunek -= wstazka_marysi
    Jagna przyglądała mu się bez słowa, a potem drgnęły jej kąciki ust. Zsunęła mu wstążkę z przegubu i schowała za pazuchę. – Co było w borze i wróciło, przyda mi się do roboty – powiedziała. # tobolek
    Hanka zacisnęła wargi. Tę wstążkę wplotła Marysi we włosy w wigilię świętego Jana. # dalej
*   [Drewniak, który niósł za pazuchą.]
    ~ dlug_jagny = oddany_drewniak
    – Niosłem go przy sercu – powiedział Jaromir. – Przed nią. – Sięgnął pod kapotę i podał Jagnie czerwony bucik{ drugi_drewniak: – jeden z dwóch}.
    { drugi_drewniak:
        ~ drugi_drewniak = false
    - else:
        ~ ekwipunek -= bucik_marysi
    }
    Jagna obróciła go w palcach i powąchała filc w środku. – Był w życie u tamtej i był w borze – mruknęła. – Niech będzie. – Wrzuciła go do kosza z ziołami. # tobolek
    Marysia odprowadziła drewniak wzrokiem, a kiedy wóz ruszył, zaczęła płakać tak, jak nie płakała nawet pod dębem. Od tamtego dnia nie dała sobie założyć na nogi żadnego buta – wierzgała i krzyczała, aż Hanka w końcu ustąpiła. Mała chodziła boso do pierwszego śniegu. # dalej
*   [Odmówić – dziecko to nie rzecz.]
    ~ dlug_jagny = dlug_odmowiony
    – Nie dostaniesz jej – powiedział Jaromir. – Ani dziś, ani nigdy.
    Jagna nie podniosła głosu. – Nie po nią tu jestem – odparła. – Po to, co mi się należy. – Zaprzęgła konia. – Dług nie gnije, Jaromirze. Poczeka.
    Odjechała powoli. Tej nocy Hanka zawiesiła nad posłaniem małej wszystko, co miała: krzyżyk, wianek ziół, nożyk. Nie spała do świtu. # dalej
-   -> lato_po_powrocie

= lato_po_powrocie
# tlo: zniwa
Marysia niczego nie pamiętała.{ rada_przed_borem == rada_ksiedza: Ksiądz z Bukowca miał rację.} Kiedy pytali, gdzie była, patrzyła na nich zdziwiona i mówiła, że spała. Bała się ciemności – od tamtej pory łuczywo w oknie paliło się co noc, choć nikogo już nie wyglądali – i nigdy więcej nie zanuciła swojej melodii. Hanka nasłuchiwała co wieczór przy posłaniu małej, ale na próżno.
Żniwa były późne i ciężkie. Upał stał nad polami, w powietrzu wisiał kurz z kłosów i zapach rozgrzanej słomy, a kosy dzwoniły od świtu do zmroku.{ pole_zbite_gradem: Jaromir, który nie miał czego kosić na swoim, najmował się do Stasiowych i do Kowalczyków, z dziesiątej kopy.}{ zastaw_u_leszego == zastaw_siekiera: Drwa rąbał siekierą pożyczoną od teścia – trzonek był za gładki, za gruby, nie jego.}{ zastaw_u_leszego == zastaw_krzesiwo: Ogień rozpalał od żaru sąsiadów; własnego krzesiwa już nie miał.}
{ pies_pobiegl_sam:
    ~ ekwipunek += szczenie_psa
    Po tygodniu, w deszczową noc, pod drzwiami zaskomlał pies. Był chudy jak patyk, z łapami pokaleczonymi do krwi. Jaromir wpuścił go bez słowa i pies przespał dwa dni pod ławą Marysi. # tobolek
}
{ znak_rozpoznania == po_wilku:
    Antek wieczorami stawał na skraju pola i nasłuchiwał. Od tamtego ranka znad boru nie dochodziło już żadne wycie.
}
Ale woda nie dawała im spokoju. Marysia nie chciała chodzić nad jezioro, a kiedy Hanka prała w strudze, mała chowała się za jej spódnicę, sztywniała cała i nie odrywała oczu od nurtu.{ dar_pominiety: W lipcu Hanka znalazła na progu mokry wianek z ruty – taki sam, jaki Jaromir co roku zanosił na kamienie po drugiej stronie jeziora. Leżał w kałuży, choć nie padało od tygodnia.} # dalej
-> kijanki

= kijanki
# tlo: calun_noc
Pod koniec sierpnia, w noc, kiedy mijały trzy lata, odkąd Marysia przyszła na świat, Jaromira obudziło plaskanie. Miarowe, mokre, znad jeziora – kijanka o kamień. Pamiętał ten dźwięk z czasów, gdy Marysia leżała jeszcze w kołysce.
Spojrzał na ławę przy piecu. Mała spała, zwinięta w kłębek, z piąstką pod policzkiem. Hanka oddychała równo.
Wyszedł cicho, boso, i przyczaił się w trzcinach. Na płaskich kamieniach po drugiej stronie jeziora klęczały mamuny – garbate, mokre, w łachmanach z mchu – i prały w wodzie coś małego, jasnego. Akurat na dziecko. Imienia nie wołały. Kiedy trzcina zaszeleściła, najstarsza nawet nie podniosła głowy. # pokaz: mamuny
{ dar_pominiety:
    – Raz zapomniałeś, gospodarzu – zaskrzeczała w wodę. – Nie będziemy prać wolniej.
- else:
    – Nie dziś, gospodarzu – zaskrzeczała w wodę. – Pierzemy, co nam przynosi woda.
}
– W Zaduszki przyniesiemy, co uprane – dodała druga. # dalej
-> jesien_przed_zaduszkami

= jesien_przed_zaduszkami
# tlo: jesien_zaduszki
~ zapiski += pan_lasu_11
Jesień przyszła wcześnie. Młócka w stodołach, siew żyta pod zimę, międlenie lnu – wieś robiła swoje jak co roku, a Jaromir chwytał się każdej roboty, byle nie zostać sam z myślami. Marysia rosła. W październiku pierwszy raz od powrotu zaśmiała się na głos przy stole i Hanka wyszła do sieni, i długo nie wracała.
Jaromir nie mówił Hance o kamieniach po drugiej stronie jeziora. Ale co wieczór, zanim zasnął, myślał o tym, ile jeszcze zostało do Zaduszek, i za każdym razem wydawało mu się, że mniej niż poprzedniej nocy.
Im bliżej było Zaduszek, tym ciszej robiło się w Zapadlinie. Ludzie wracali z pól przed zmrokiem, ryglowali drzwi, a od boru co wieczór podchodziła łąkami mgła, ciężka i mokra, pod same płoty. Jaromir pamiętał każde słowo: „W Zaduszki przyjdę do wsi. Policzymy się wtedy do końca”. # pokaz: mgla
Pierwszego listopada wieś szła na cmentarz do Bukowca. Tego roku zamiast kaganków ludzie nieśli z domów gromnice. W drodze powrotnej zgasły jednym tchem, wszystkie, choć powietrze stało. # pokaz: zgasly # dalej
-> rozdzial_dziewietnasty_ciag_dalszy

= powrot_bez_niej
# tlo: laka_swit
# rozdzial: Rozdział dziewiętnasty
# tytul: Świt
Słońce wyszło zza boru akurat wtedy, kiedy Jaromir stanął na skraju młodnika. Na pokosach zaszkliła się rosa, a w zbożu odezwał się skowronek. Jaromir nie słyszał go wcale.
Hanka biegła od chałupy, wciąż z kołysanką na ustach, boso, przez mokrą trawę, z rękami wyciągniętymi przed siebie. W pół drogi zwolniła. Potem stanęła.
Nie krzyczała.{ pani_w_zbozu_noc == za_spiewem: Nie mogła.} Wzięła dziecko z rąk Jaromira, ostrożnie, jak się bierze śpiące, i wtuliła twarz we włoski, tak jak robiła co wieczór. Wąchała długo. Włosy nie pachniały niczym – ani mlekiem, ani dymem, ani nią. Zrozumiała. # pokaz: kolysze
Usiadła z dzieckiem w trawie i zaczęła je kołysać. Ludzie z grabiami stali na pokosach i nikt się nie ruszał. Pierwszy podszedł Antek. Zdjął czapkę. # pokaz: antek
{ wilk_przy_jaromirze && znak_rozpoznania != po_wilku:
    Biały wilk, który szedł za Jaromirem przez cały młodnik, został przy ostatnich świerkach. Kiedy ktoś spojrzał w tamtą stronę, już go nie było. # pokaz: wilk
}
{ ekwipunek ? szczenie_psa:
    Pies położył się u stóp Hanki i skomlał, cicho, bez przerwy, aż ktoś go odciągnął. # pokaz: pies
}
{ zastaw_u_leszego == zastaw_cien:
    Nikt nie zauważył, że Jaromir nie rzuca cienia. Nikt na niego nie patrzył.
}
{ dlug_u_jagny:
    Jagna podeszła od strony płotu i pochyliła się nad dzieckiem w ramionach Hanki. Przyglądała się sztywnym stópkom i grzecznemu, zastygłemu uśmiechowi. Potem wyprostowała się i powiedziała do Jaromira cicho, tak żeby Hanka nie słyszała: – To nie jest twoje dziecko. To jest drewno. Wyszło z boru zaraz za tobą. Mogę je wziąć zamiast długu. Wiem, co się z takim robi. # pokaz: jagna
- else:
    Stary Staś przykuśtykał z kijem, popatrzył na dziecko i przeżegnał się. – Dzieci z boru nie chowa się w poświęconej ziemi – mruknął. – Za mojego dziadka, jak jeszcze kościoła w Bukowcu nie było i na każdy pogrzeb do miasta się szło, to i tak wszyscy wiedzieli… Albo ogień, albo pod lasem. # pokaz: stas
}
Jaromir pamiętał głos spod dębu: „Pochowasz je jak swoje”.
# pytanie: Co Jaromir zrobi z ciałem?
*   [Pochować je jak córkę, na cmentarzu.]
    ~ cialo_kopii = pochowane
    Wziął je od Hanki i zaniósł do chałupy. Położył na ławie, na której spała Marysia, i przykrył lnianym płótnem. # dalej
*   { dlug_u_jagny } [Oddać je Jagnie.]
    ~ cialo_kopii = oddane_jagnie
    Hanka nie chciała go puścić. Puściła dopiero wtedy, gdy Jagna położyła Hance dłoń na oczach i coś szepnęła. Jagna owinęła ciało w lnianą płachtę, ułożyła na wozie między koszami ziół i odjechała powoli do Bukowca. Dług był spłacony. # dalej
*   [Spalić je w piecu.]
    ~ cialo_kopii = spalone
    Wieczorem, kiedy Hanka zasnęła wreszcie z wyczerpania, Jaromir rozpalił mocny ogień. Długo nie mógł się zdobyć na to, żeby położyć dziecko w płomieniach. Kiedy w końcu to zrobił, nie płonęło jak ciało. Trzaskało jak smolne drewno, syczało żywicą, a dym pachniał igliwiem. Rano w popiele leżały tylko węgle.
    Hanka zobaczyła popiół. Nie powiedziała nic. Od tamtego ranka nie rozpaliła w piecu ani razu – rozpalał zawsze on. # dalej
*   { not dlug_u_jagny } [Pochować je pod młodnikiem, jak radzi Staś.]
    ~ cialo_kopii = pod_mlodnikiem
    Wykopał grób sam, pod ostatnimi świerkami, tam gdzie ziemia była miękka od igliwia. Hanka stała obok i nie pozwoliła się pocieszać. # dalej
-   -> pogrzeb

= pogrzeb
{ cialo_kopii == pod_mlodnikiem:
    -> pogrzeb_pod_lasem
}
# tlo: pogrzeb
-> pogrzeb_trumienka

= pogrzeb_pod_lasem
# tlo: skraj_powrot
-> pogrzeb_trumienka

= pogrzeb_trumienka
~ zapiski += (dzieci_2, pan_lasu_11)
Trumienkę zbił Jaromir sam, z drewna starego bzu – tego samego, w którego koronie jako chłopiec miał bazę.{ zastaw_u_leszego == zastaw_siekiera: Ściął go siekierą pożyczoną od teścia.} Mówiono, że takiego drzewa się nie ścina, bo przynosi nieszczęście. Jaromirowi było już wszystko jedno. Świeże cięcie pachniało gorzko i mdło, a z gałęzi posypały mu się na rękaw ostatnie zaschnięte kwiatki.{ kapliczki_drogi == ocalil_swiatka: Kiedy rozbierał deski bazy, wypadła mu na ręce Matka Boska, którą kiedyś wyniósł z wozu Urbaniaka. Postawił ją u wezgłowia.} W ciszy słychać było tylko stuk gwoździ. # pokaz: trumienka
Dziewczynki ze wsi uwiły wianki z chabrów i rumianku, prosto z miedzy, i położyły je na wieku. Pachniały słońcem, którego nikt w Zapadlinie tego dnia nie widział. # pokaz: wianki
{ pani_w_zbozu_noc == za_spiewem:
    Hanka nie śpiewała – od tamtej nocy w zbożu nie umiała. Mówiła słowa kołysanki, jedno po drugim, chrapliwie, bez melodii, i to było gorsze niż płacz.
- else:
    Hanka zaśpiewała kołysankę, którą nuciła Marysi co wieczór. Głos jej się nie załamał ani razu i dlatego było to najgorsze.
}
{ cialo_kopii == oddane_jagnie || cialo_kopii == spalone:
    Ciała w trumience nie było – tylko sukienka Marysi, złożona starannie, jak do skrzyni.
}
{ skarb_dla_corki:
    Zanim zabili wieko, Jaromir położył w trumience skarb z bazy – {skarb_jaromira == muszelka:muszelkę z rysą po krzywym ząbku|{skarb_jaromira == pioro:wymemłane pióro z przygryzioną dutką|gwóźdź z brązową rdzą}}.
- else:
    ~ ekwipunek -= bucik_marysi
    Zanim zabili wieko, Jaromir położył w trumience {drugi_drewniak:oba czerwone drewniaki|czerwony drewniak – ten jeden, który mu został}{uklad_z_mamunami != oddany_skarb:, a obok {drugi_drewniak:nich|niego} skarb ze skrzynki w bazie – {skarb_jaromira == muszelka:białą muszelkę|{skarb_jaromira == pioro:sójcze pióro|zardzewiały gwóźdź}}. Miał go kiedyś pokazać córce}. # tobolek
}
{ cialo_kopii == pod_mlodnikiem:
    Grób pod młodnikiem przykryli darnią, a Antek wbił w głowach kij z zawiązaną czerwoną wstążką, którą Hanka wyplotła z włosów dziecka, żeby było wiadomo, gdzie. # dalej
- else:
    Pochowali trumienkę na cmentarzu w Bukowcu, pod brzozą. Ksiądz{ przysiega_ksiedzu:, który przyjął przysięgę Jaromira na różaniec,} odprawił wszystko jak trzeba i nie zapytał o nic.{ cialo_kopii == oddane_jagnie || cialo_kopii == spalone: Kiedy grabarz zasypywał dół, ziemia stukała o wieko tak głucho, że Jaromir słyszał to potem po nocach.} # dalej
}
-> jesien_po_pogrzebie

= jesien_po_pogrzebie
# tlo: jesien_zaduszki
Pod koniec sierpnia, w noc, kiedy mijały trzy lata, odkąd Marysia przyszła na świat, Hanka poszła do grobu sama i przesiedziała tam do świtu. Jaromir nie poszedł za nią. Nie umiałby spojrzeć jej w oczy – bo wiedział, czego mu nie powie.{ znak_rozpoznania == po_imieniu: Gdyby nie zawołał jej po imieniu.}{ znak_rozpoznania == po_drewniaku: Dał się złapać na czerwone, jak dziecko.}{ znak_rozpoznania == po_buzi: Patrzył na nią i jej nie poznał.}{ znak_rozpoznania == po_cieniu: Sam oddał to, co go potem oszukało.}
Jesień przyszła wcześnie. Młócka w stodołach, siew żyta pod zimę, międlenie lnu – wieś robiła swoje jak co roku, a Hanka razem z nią, sprawnie i bez słowa. Jaromir co noc słyszał, jak żona wstaje i chodzi po izbie, od pieca do okna i z powrotem.
{ pies_pobiegl_sam:
    ~ ekwipunek += szczenie_psa
    Pies wrócił z boru jeszcze w lipcu, tydzień po Janie, chudy jak patyk, i położył się pod ławą, na której spała Marysia. Nie dał się stamtąd wywabić. # tobolek
}
{ dlug_u_jagny && cialo_kopii != oddane_jagnie:
    Jagna nie przyjechała już ani razu. Dług nie był spłacony i Jaromir wiedział, że ona też o tym wie.
}
W październiku Hanka zapytała, nie odwracając się od garnka: – W Zaduszki umarli wracają do domów. Tak mówią. – Zamieszała. – Przyjdzie?
Jaromir nie odpowiedział. Pamiętał głos z boru, który doszedł do połowy i umilkł. Pamiętał też drugi: „W Zaduszki przyjdę do wsi. Policzymy się wtedy do końca”.
Im bliżej było Zaduszek, tym ciszej robiło się w Zapadlinie. Ludzie wracali z pól przed zmrokiem, ryglowali drzwi, a od boru co wieczór podchodziła łąkami mgła, ciężka i mokra, pod same płoty. # pokaz: mgla
Pierwszego listopada wieś szła na cmentarz do Bukowca. Tego roku zamiast kaganków ludzie nieśli z domów gromnice. W drodze powrotnej zgasły jednym tchem, wszystkie, choć powietrze stało. Paliła się tylko gromnica Hanki – równo, spokojnie, jak w zamkniętej izbie. # pokaz: zgasly, gromnica_hanki # dalej
-> rozdzial_dziewietnasty_ciag_dalszy


// Koniec rozdziału dziewiętnastego — dalej rozdział dwudziesty (Ostatnia noc).
=== rozdzial_dziewietnasty_ciag_dalszy ===
# ozdobnik
_Koniec rozdziału dziewiętnastego._ # dalej
-> rozdzial_dwudziesty
