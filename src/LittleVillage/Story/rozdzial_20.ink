// ------------------------------------------------------------
//  Rozdział dwudziesty — Ostatnia noc. Zaduszki: mgła pod płotami, nakrycia dla dziadów.
//  Przed północą do wsi wchodzi świta Pana Lasu (słudzy, umarli, dzieci spod dębu).
//  Trzy drogi: zwrócić mu granicę (siekiera w pniaku, słowo całej wsi; z żołędziem
//  ze Starego Dębu Pan Lasu nie bierze już dzieci), zająć jego miejsce (pożegnanie
//  albo odejście bez słowa) albo — z krzesiwem — skrzesać ogień (Antek pod stodołą,
//  ślepota albo pół wsi w popiele). Trzy epilogi pół wieku później.
// ------------------------------------------------------------

=== rozdzial_dwudziesty ===
# tlo: dziady
# rozdzial: Rozdział dwudziesty
# tytul: Ostatnia noc
Drugiego listopada Zapadlina obudziła się we mgle tak gęstej, że z progu nie było widać studni. Nikt nie poszedł do lasu po chrust ani nad jezioro z praniem. Kobiety od rana szorowały ławy i stoły, mężczyźni rąbali drwa pod samymi ścianami chałup, żeby nie odchodzić dalej niż na dwa kroki od drzwi. Na sztachetach od strony boru siwiał porost – suchy i kruchy, choć mgła osiadała na wszystkim innym kroplami.
{ przysiega_ksiedzu:
    Przed południem przyjechał z Bukowca ksiądz, z kropidłem i wiadrem święconej wody, żeby pokropić płoty. Przy chałupie Jaromira zatrzymał konia.
    – Dotrzymujesz, coś przysiągł na różaniec? – zapytał. # pokaz: ksiadz
    { cena_caluna == cena_umowa || cialo_kopii == spalone || cialo_kopii == pod_mlodnikiem:
        Jaromir milczał. Ksiądz zawrócił; ich płotu nie pokropił.
    - else:
        – Dotrzymuję – odparł Jaromir. Ksiądz pokropił płot dwa razy.
    }
}
Na każdym parapecie stanęła miska kaszy i kubek wody. W każdej izbie zostawiono przy stole jedno nakrycie więcej – dla tych, którzy tej nocy wracają. # dalej
{ marysia_odzyskana:
    Hanka posadziła Marysię przy piecu i nie spuszczała jej z oka.
- else:
    Hanka nakryła o dwa miejsca więcej: jedno dla dziadów, drugie małe, z drewnianą łyżeczką, którą Jaromir wystrugał zeszłej zimy. Nikt nie powiedział ani słowa.
}
{ ekwipunek ? szczenie_psa:
    Rudy pies wcisnął się pod ławę i nie dał się stamtąd wywabić nawet kością.
}
{ uboze == nakarmione:
    Spodek mleka, który Jaromir postawił za piecem o świcie, do wieczora stał nietknięty. W kącie coś szurało niespokojnie przez cały dzień.
}
Pod wieczór mgła dociągnęła do opłotków i stanęła. Nie ruszała się, choć wiatr szarpał strzechami. Gromnice, które zgasły w drodze z cmentarza, nie chciały się zapalić – knoty syczały i czerniały.
{ not marysia_odzyskana:
    Tylko gromnica Hanki paliła się na stole, równo, tak samo jak wczoraj. # pokaz: gromnica_hanki
}
Jaromir usiadł na progu. Siekierę {zastaw_u_leszego == zastaw_siekiera:teścia|dziadka} oparł o futrynę, trzonkiem pod rękę.{ ekwipunek ? krzesiwo: W kieszeni czuł chłód krzesiwa.}{ cena_caluna == cena_zdrowie: Nogi owinął kożuchem, ale zimno jeziora i tak wchodziło w nie od dołu.} Czekał. # pokaz: prog # dalej
-> swita_pana_lasu

= swita_pana_lasu
# tlo: swita
Przyszli przed północą.
Najpierw zrobiło się cicho – tak cicho, że Jaromir słyszał, jak w izbie trzaska żar w piecu. Potem mgła się rozstąpiła i drogą od boru weszła do wsi świta.
Szli powoli, bez najmniejszego dźwięku. Od pierwszych szeregów ciągnęło mułem i wilgocią, od ostatnich – słodkim próchnem. Jednooka żebraczka z workiem na plecach. Północnica, wysoka, płaska jak cień na ścianie{ polnocnica == policzyla_mak:, z makiem w zaciśniętej garści}. Rusałki w mokrych koszulach, wywołane z mułu nie w swoją porę – z włosów kapała im woda, a pośród nich szła Kaśka Wójcikówna{ ratunek_franka == krzyzem: i Bartek, syn młynarza, z wodorostem na szyi}. Mamuny z kijankami. Żytnia baba, przygarbiona, z kłosami we włosach{ not wilk_przy_jaromirze: i z czerwonym drewniakiem w garści}. Błędnice, które kołysały się nad głowami jak latarnie.{ los_figurki == figurka_u_stwora: Stwór z mokradeł, zgarbiony, z figurką przyciśniętą do piersi jak matka dziecko.}{ poludnica_uklon: Południca w białej koszuli, która przechodząc, skłoniła się Jaromirowi – tak samo jak wtedy, na ściernisku.} Dzieci spod dębu, trzymające się za ręce. Żadne nie rzucało cienia. # pokaz: swita, dzieci # dalej
{ not marysia_odzyskana:
    Wśród nich szła jedna, która nie trzymała nikogo za rękę. Bosa, w białej koszulce, bez wstążki we włosach. Szła wolniej niż inne i oglądała się na chałupy, jakby szukała drogi do domu. Hanka zobaczyła ją przez okno. Nie krzyknęła. Przycisnęła tylko gromnicę do piersi, tak mocno, że wosk popłynął jej po palcach, a płomień nie drgnął. # pokaz: marysia
}
Szli też umarli z Zapadliny. Stary Wójcik{ pochowek_wojcika == pochowany_za_murem || trzy_noce == rozkopany_grob: – z twarzą zwróconą w ziemię, choć szedł prosto}.{ trzy_noce == czuwanie_przy_kolysce: Wójcikowa, z rękami złożonymi na piersi{ korale_kaski == oddane: i z koralami córki pod chustką}.} Babka Marianna. A przed nimi wszystkimi – dziadek Maciek, z siekierą za pasem i z tobołkiem na ramieniu, tak jak siedemdziesiąt lat temu, kiedy pierwszy raz zszedł do Zapadliny. Przechodząc obok chałupy, spojrzał na wnuka i skinął mu głową. # pokaz: umarli
{ cena_caluna == cena_franek:
    I Franek – nie wilk, tylko Franek, chudy, z włosami do ramion, taki, jakim Jaromir widział go ostatni raz w szałasie nad jeziorem. Pod oknem Antka przystanął i położył dłoń na framudze, tak jak kładzie się dłoń na końskim karku. # pokaz: franek
- else:
    { wilk_przy_mnie():
        Biały wilk wyszedł zza stodoły i stanął przy progu, przy nodze Jaromira. Sierść miał zjeżoną. # pokaz: wilk
    - else:
        Tuż przed Panem Lasu szedł biały wilk. Nie spojrzał na Jaromira. # pokaz: wilk_pan
    }
}
Na końcu, pochylony, żeby nie zaczepić porożem o niebo, szedł Pan Lasu. Każdy jego krok był długi jak zagon. Mech wyrastał wszędzie, gdzie przeszedł, i od razu siwiał od szronu. # pokaz: leszy
Stanął przed chałupą Jaromira. Świta zatrzymała się za nim. # dalej
{ dlug_u_jagny && (dlug_jagny == dlug_odmowiony || (not marysia_odzyskana && cialo_kopii != oddane_jagnie)):
    Jagna wysunęła się z mgły od strony płotu i stanęła przed Panem Lasu, nie spuszczając oczu.
    – Ten człowiek winien mi jest pierwszą rzecz z boru – powiedziała. # pokaz: jagna
    – Co wyszło z boru, wyszło za moim słowem – odparł Pan Lasu. – Twój dług jest u mnie.
    Jagna długo stała bez ruchu, a potem skłoniła się i odeszła w mgłę.
}
{ cialo_kopii == oddane_jagnie:
    Jagna wyszła z mgły z lnianym zawiniątkiem i położyła je Panu Lasu u stóp. – Oddaję, co nie moje – powiedziała. Płachta opadła płasko; zostały pod nią tylko suche liście i kora. # pokaz: jagna
}
– Przyszedłem policzyć się do końca – powiedział Pan Lasu. Jego głos szedł od ziemi, od strzech, od studni. – Dąb, słowo, kapliczki. Wszystko wzięliście. Moi przyszli po wasze dzieci, bo płot, którym ich trzymałem, runął. Dziś nie mam ich czym zatrzymać.
Zza niego dobiegło nucenie – to dzieci spod dębu zaczęły swoją melodię. Szła od chałupy do chałupy, a w każdej, za zaryglowanymi drzwiami, budziło się jakieś dziecko i zaczynało płakać.{ marysia_odzyskana: Marysia też się obudziła. Nie płakała – usiadła na ławie i patrzyła w okno, a Hanka trzymała ją za ramiona.}
– Możesz mi zwrócić granicę – powiedział Pan Lasu. – Po staremu: wy nie dalej niż ona, ja – jedno dziecko na pokolenie. Możesz zająć moje miejsce – ale do nich już nie wrócisz.
{ ekwipunek ? krzesiwo:
    Spojrzał na kapotę Jaromira i w jego głosie po raz pierwszy zabrzmiało coś jak lęk. – Albo możesz zrobić to, po co nosisz przy sobie krzesiwo. Ale po takim ogniu nie zostanie ani bór, ani wy.
- else:
    { zastaw_u_leszego == zastaw_krzesiwo:
        – Ogień zostawiłeś u mnie. Mądrze.
    }
}
# pytanie: Co zrobi Jaromir?
*   [Zwrócić mu granicę.]
    ~ ostatnia_noc = zwrocil_granice
    -> ostatnia_granica
*   [Zająć jego miejsce.]
    ~ ostatnia_noc = zajal_miejsce
    -> ostatnie_miejsce
*   { ekwipunek ? krzesiwo } [Skrzesać ogień.]
    ~ ostatnia_noc = skrzesal_ogien
    -> ostatni_ogien

= ostatnia_granica
# tlo: granica
– Dostaniesz granicę – powiedział Jaromir. – Ale nie ode mnie samego.
Obszedł całą wieś i pod każdym oknem wołał gospodarzy po imieniu. Pierwszy wyszedł Antek{ cena_caluna == cena_antek:, z prawym rękawem wsuniętym za pas}. Potem kowal i Szymon{ noc_ognia == ratowal_kapliczke:, z twarzą okręconą chustą i dłońmi w szmatach}. Józek prowadził za rękę starego Stasia, tak wiekowego, że ledwie widział. Ojciec, {noga_ojca == strzaskana:o kulach|o kiju}, i matka, zakutana w kożuch. W końcu Hanka{ marysia_odzyskana:, z Marysią owiniętą w chustę}. Szli za nim przez mgłę, z gromnicami, które nie chciały się palić{ not marysia_odzyskana: – płonęła tylko gromnica Hanki}, prosto przez środek świty. Rusałki i mamuny cofały się przed nimi na boki jak woda przed dziobem łodzi. # pokaz: ludzie
Pniak po Starym Dębie stał na skraju boru, czarny, porośnięty hubą. Pan Lasu stanął po drugiej stronie. # pokaz: leszy # dalej
{ zastaw_u_leszego == zastaw_siekiera:
    Pan Lasu sięgnął w mrok za plecami i podał Jaromirowi siekierę dziadka. Trzonek był wilgotny od soków korzenia, który ją trzymał.
- else:
    Pan Lasu spojrzał na siekierę dziadka w rękach Jaromira.
}
– {chata_macka == przy_lesie:Tym żelazem twój dziadek przeszedł granicę|Tym żelazem twój ród rąbał mój bór} – powiedział. – Tamten, pierwszy, przyszedł do mnie bez żelaza. Ty swoje zostawisz.
~ ekwipunek -= siekiera
Jaromir wbił siekierę w pniak, aż jęknęło drewno. Trzonek był ciężki i zimny, a ręce drżały mu tak, że musiał uderzyć dwa razy. # pokaz: siekiera
{ ekwipunek ? zoladz:
    ~ ekwipunek -= zoladz
    ~ zoladz_zasadzony = true
    Potem ukląkł i wygrzebał palcami dołek w zmarzniętej ziemi, aż połamał paznokcie. Włożył do niego żołądź, który przechował od chłopięcych lat – wciąż ciepły. Kiedy przysypał go grudami, spod nich wysunął się blady kiełek – w listopadzie, w szronie. # pokaz: kielek
}
{ dlug_jagny:
- oddana_wstazka:
    Jagna wystąpiła z mgły i bez słowa okręciła trzonek siekiery czerwoną wstążką Marysi. – Mówiłam, że zobaczysz, do jakiej roboty – mruknęła. # pokaz: wstazka
- oddany_drewniak:
    Jagna wystąpiła z mgły i położyła czerwony drewniak przy pniaku. – Drewno do drewna – mruknęła. # pokaz: drewniak
}
– Dalej nie pójdziemy – powiedział Jaromir. Para buchnęła mu z ust. Za nim powtórzyli wszyscy, nierówno, ochryple.{ pani_w_zbozu_noc == za_spiewem: Hanka poruszała tylko ustami.} – Słowo za słowo. # dalej
{ zoladz_zasadzony:
    Pan Lasu nie patrzył na siekierę. Patrzył na kiełek. Pochylił się nad nim tak nisko, że poroże zaczepiło o mgłę, i dotknął go palcem – ostrożnie, jak dotyka się źrebięcia, które dopiero stanęło na nogi.
    – Tamten, pierwszy, dał mi słowo – powiedział cicho. – A ja wziąłem za nie dziecko na pokolenie, bo słowo nic nie waży, a Dąb był mój, nie wasz. – Wyprostował się. – Ten jest wasz. Wyrósł z mojego Dębu, a posadziła go ręka, która przechowała go przez całe życie. Dotąd dawaliście mi tylko swoje. Ty mi oddałeś moje. Póki ten dąb rośnie, dzieci od was nie wezmę. Wy – nie dalej niż to żelazo. Kapliczki postawicie z powrotem. Wszystkie. A ty będziesz pilnował słowa i drzewa do końca swoich dni. Co Zaduszki – tutaj.
    Hanka chwyciła Jaromira za rękę.{ marysia_odzyskana: Marysia spała w chuście i nie wiedziała, że właśnie wykupiono ją od boru – ją i wszystkie dzieci, które miały się jeszcze narodzić w Zapadlinie.}
- else:
    Pan Lasu patrzył na siekierę w pniaku. Potem skinął głową.
    – Słowo za słowo – powiedział. – Wy – nie dalej niż to żelazo. Ja – jedno dziecko na pokolenie, w noc świętojańską. I oddam je, zanim zapomni dom. Kapliczki postawicie z powrotem. Wszystkie. – Pochylił się nad Jaromirem. – A ty będziesz pilnował słowa, póki żyjesz. Co Zaduszki – tutaj.
}
{ przysiega_ksiedzu:
    Jaromir pomyślał o różańcu i o przysiędze złożonej w Bukowcu. Właśnie złamał ją{ cena_caluna == cena_umowa || cialo_kopii == spalone || cialo_kopii == pod_mlodnikiem: drugi raz} – i wiedział, że złamałby ją jeszcze raz.
}
Pan Lasu odwrócił się i poszedł w bór. Świta weszła za nim, jedno za drugim, i mgła zamknęła się za ostatnim.{ not zoladz_zasadzony || marysia_odzyskana: Umarli nie poszli za nim; rozeszli się drogą na Bukowy Grzbiet, każdy ku swojemu grobowi.}{ wilk_zywy() && not wilk_przy_mnie(): Biały wilk szedł tuż przed nim.}{ wilk_przy_mnie(): Biały wilk postał jeszcze chwilę przy nodze Jaromira, a potem pobiegł za nimi i nie obejrzał się.}
{ not marysia_odzyskana:
    { zoladz_zasadzony:
        Ta jedna, w białej koszulce, nie weszła za nimi. Pan Lasu obejrzał się na nią ze skraju boru.
        – Żywej wam jej nie oddam – powiedział. – Ale moja już nie jest.
        { ekwipunek ? wstazka_marysi:
            Jaromir podszedł do niej, odwinął z przegubu spłowiałą wstążkę i zawiązał jej we włosach na kokardę, jak robiła to Hanka.
        }
        Mała podbiegła do matki i dotknęła jej ręki, tak jak robiła to co wieczór przed snem. Potem dziadek Maciek wyciągnął do niej dłoń, a ona chwyciła ją bez lęku. Umarli z Zapadliny poszli drogą na Bukowy Grzbiet, każdy ku swojemu grobowi, nie w bór – i ona razem z nimi, ani razu się nie oglądając. Gromnica w ręce Hanki zgasła sama, spokojnie, jak się gasi świecę przed snem. # pokaz: marysia
    - else:
        Ta jedna, w białej koszulce, zatrzymała się jeszcze na skraju.{ ekwipunek ? wstazka_marysi: Jaromir podszedł do niej, odwinął z przegubu spłowiałą wstążkę i zawiązał jej we włosach na kokardę, jak robiła to Hanka.} Mała odwróciła się i pomachała matce rączką. Hanka podniosła swoją. Gromnica w jej drugiej ręce zgasła sama, spokojnie, jak się gasi świecę przed snem. # pokaz: marysia
    }
}
Nad Zapadliną zrobiło się jasno – zwyczajnie, szaro, jak w każdy listopadowy świt. W chałupach dzieci przestały płakać. # pokaz: swit # dalej
~ zapiski += (pan_lasu_12, zielarka_5, dzieci_3)
{ wilk_zywy():
    ~ zapiski += tropy_7
}
-> epilog_granica

= ostatnie_miejsce
# tlo: miejsce
– Zostanę – powiedział Jaromir.
Pan Lasu nie odpowiadał, aż szron osiadł mu na brodzie.
– Wiedziałem – odezwał się w końcu. – Odkąd przyszedłeś do mnie sam.{ glosy_boru == odpowiedzial_marysi: Policzyłem cię tamtej nocy. Osiemset. Od dawna byłeś mój.}{ zastaw_u_leszego == zastaw_cien: Twój cień czeka na ciebie pod dębem.}
# pytanie: Jak Jaromir odejdzie?
*   [Pożegnać się z Hanką{ marysia_odzyskana: i z Marysią}.]
    ~ pozegnanie = pozegnal_sie
    Wszedł do izby. Hanka stała przy piecu, blada, z rękami zaciśniętymi na fartuchu. Wiedziała – zobaczył to od razu.{ marysia_odzyskana: Marysia zasnęła z powrotem na ławie. Pocałował ją w czoło, ostrożnie, żeby nie obudzić, i długo patrzył, jak oddycha.} # pokaz: hanka
    – Wrócisz? – {pani_w_zbozu_noc == za_spiewem:wychrypiała, prawie bez głosu|zapytała}.
    – Będę blisko – powiedział. – Za płotem. Zawsze.
    Przytuliła się do niego tak, jak w noc po weselu, i trzymała, dopóki jej ciepło nie zaczęło mu stygnąć w dłoniach. Wtedy puściła. # dalej
*   [Odejść bez słowa – tak będzie im lżej.]
    ~ pozegnanie = odszedl_bez_slowa
    Nie wszedł do izby. Stał chwilę przy oknie i patrzył przez szparę w okiennicy, jak Hanka, zmorzona czuwaniem, śpi na ławie z głową opartą o ścianę{ marysia_odzyskana:, a Marysia skulona przy niej, z kolanami pod brodą|, z palącą się gromnicą w dłoniach}. Położył na parapecie, obok miski kaszy dla dziadów, swoją czapkę. Potem odwrócił się i poszedł. # pokaz: czapka
    Rano Hanka znalazła czapkę i wszystko zrozumiała. Nosiła ją potem w zanadrzu do końca życia. # dalej
-   Poszli razem na skraj boru. Przy pniaku Starego Dębu Pan Lasu zmalał do starca w wywróconym kożuchu i w kapeluszu z mchu – takiego, jakiego Jaromir widział w noc swojego wesela. # pokaz: starzec
Zdjął kapelusz i włożył go Jaromirowi na głowę. Był ciężki, zimny i pachniał mokrą korą. Kiedy Jaromir go poczuł, coś w nim cicho trzasnęło – jak lód na stawie – i usłyszał bór. Każde drzewo. Każdy korzeń. Każde zwierzę, które zasypiało właśnie w norze przed zimą. I w tej samej chwili nie umiał sobie przypomnieć, jak pachniały włosy Marysi. # pokaz: kapelusz
Dawny Pan Lasu położył się pod pniakiem. Westchnął przeciągle, jak drzewo, kiedy puszcza w nim mróz, i zaczął zapadać się w ziemię. Mech zarastał go, liście przykrywały, aż został tylko pagórek okryty siwym porostem. # pokaz: pagorek
– Teraz ty licz – szepnęło coś spod ziemi.
{ zastaw_u_leszego == zastaw_siekiera:
    Przed odejściem dawny Pan Lasu wyjął z mroku siekierę dziadka, oplątaną jeszcze korzonkami, i położył ją przy pniaku. Jaromir jej nie podniósł.
}
Jaromir odwrócił się do świty. Stali przed nim wszyscy i czekali. # dalej
– Wracajcie – powiedział. Jego głos przeszedł koronami od boru aż po jezioro. – Do domu. Wszyscy.
Odeszli. Rusałki do jeziora, mamuny na kamienie, żytnia baba w ściernisko, licho w mgłę. Klątwa zielarki wiązała ręce tamtego. Jego rąk nie znała.
~ zapiski += (pan_lasu_12, zielarka_5, dzieci_3)
{ marysia_odzyskana:
    { cena_caluna == cena_franek:
        Spod okna Antka odszedł Franek. Obejrzał się raz na chałupę, w której spał jego brat, i zniknął w mgle. # pokaz: franek # dalej
    - else:
        ~ zapiski += tropy_7
        Biały wilk został ostatni. Jaromir położył mu rękę na łbie. – Idź, Franek – powiedział. – Jesteś wolny. – Wilk polizał mu dłoń i pobiegł w bór, lekko, jak młody pies. # pokaz: wilk # dalej
    }
- else:
    ~ zapiski += tropy_7
    Biały wilk został ostatni. Jaromir położył mu rękę na łbie. – Idź, Franek – powiedział. – Jesteś wolny. – Wilk polizał mu dłoń i pobiegł w bór, lekko, jak młody pies. # pokaz: wilk
    Na drodze została ta jedna, w białej koszulce. Jaromir podszedł do niej{ ekwipunek ? wstazka_marysi:, zawiązał jej we włosach swoją spłowiałą wstążkę} i podał jej rękę. Chwyciła ją od razu, mocno, tak jak dawniej. – Idziemy do domu, tata? – zapytała. – Idziemy – powiedział. I poszli razem w bór, a bór przyjął ich bez szelestu. W chałupie Hanki zgasła gromnica. # pokaz: marysia # dalej
}
-> epilog_miejsce

= ostatni_ogien
# tlo: pozar_boru
Jaromir wyjął krzesiwo. Było małe i poczerniałe i pamiętało ręce dziadka, który wygrzebał je z popiołu po chacie zielarki.
– Nie – powiedział Pan Lasu. Pierwszy raz jego głos nie szedł zewsząd, tylko z jednego miejsca. – Wnuku Maćka. Nie. # pokaz: leszy
Jaromir pobiegł na skraj młodnika, tam gdzie siwy porost podszedł już pod same opłotki, i uderzył. Raz. Drugi. Trzecia iskra skoczyła w suchy mech – i zajął się w jednej chwili, a za nim świerki, a za świerkami bór, tak jak płonie wszystko, na co od lat nie spadła kropla deszczu. # pokaz: ogien # dalej
Huknęło, jakby ziemia westchnęła. Żar uderzył Jaromira w twarz, zapachniało żywicą i spaloną sierścią. Z boru, w stronę wsi, pognały sarny, dziki, zające, oślepione, nie bacząc na ludzi. Świta zawyła jednym głosem. Rusałki rzuciły się ku jezioru, mamuny za nimi, licho rozwiało się z pierwszym dymem.{ los_figurki == figurka_w_skrzyni: W chałupie Jaromira skrzynia pod łóżkiem trzasnęła i z jej szpar buchnął dym: figurka, której nie wziął żaden piec, płonęła wreszcie jak zwyczajne drewno.} Z głębi boru dobiegało jeszcze nucenie dzieci spod dębu. Urwało się w połowie i więcej nie zaczęło.
Pan Lasu stał w płomieniach i nie uciekał. Kora na jego twarzy pękała, poroże płonęło jak suche chrusty na sobótce, a oczy patrzyły na Jaromira spokojnie, aż do końca.
– Policzone – powiedział jeszcze. I runął z trzaskiem, jak pada stary dąb. # pokaz: runal
{ wilk_zywy():
    { wilk_przy_mnie():
        Biały wilk stał przy Jaromirze do końca i nie drgnął, choć iskry przypalały mu sierść. # pokaz: wilk
    - else:
        Biały wilk skoczył w ogień za swoim panem. Antek zawył, jakby to jego paliło.{ obietnica_antkowi: Nikt go nie dostał – tak mu Jaromir obiecał. Wziął go ogień.}
    }
}
{ not marysia_odzyskana:
    Z dymu wybiegła mała w białej koszulce, prosto w ramiona Hanki. Hanka objęła ją – i w tej samej chwili zgasła gromnica. W ramionach został jej tylko ciepły popiół.
}
{ zastaw_u_leszego == zastaw_cien:
    Cień do Jaromira nie wrócił. Spłonął pod dębem razem z resztą.
}
Klątwa zielarki zaczęła się od ognia i od ognia się skończyła. Ale wiatr zawrócił. Płomienie przeskoczyły młodnik{ cialo_kopii == pod_mlodnikiem:, przeszły po małym grobie z kijem i czerwoną wstążką} i poszły na wieś – na stodoły, na strzechy, na chałupy, w których spały dzieci.
# pytanie: Co zrobi Jaromir?
*   [Biec do własnej chałupy, po Hankę{ marysia_odzyskana: i Marysię}.]
    ~ noc_pozaru = antek_pod_stodola
    Jaromir pobiegł do domu, wyniósł{ marysia_odzyskana: Marysię i} Hankę na łąkę, a kiedy się odwrócił, zobaczył Antka. Antek sam poszedł pod stodołę Stasiowych, która stała najbliżej młodnika, i zaczął rąbać jej ściany{ cena_caluna == cena_antek: lewą ręką}, żeby zwalić ją, zanim ogień przejdzie po niej na resztę wsi. Rąbał, aż dach zaczął płonąć mu nad głową. Krzyczeli na niego, żeby uciekał. Odkrzyknął tylko: – Franka mi pilnuj! – i nie wiadomo było, którego. # pokaz: stodola
    Stodoła runęła razem z nim – i płomienie zatrzymały się na zwalonych belkach. # pokaz: stodola_runela
    Jadwisia siedziała do rana w popiele z małym Frankiem na kolanach. # dalej
*   [Gasić płomienie na skraju opłotków samemu.]
    ~ noc_pozaru = oslepl
    Jaromir rzucił się sam – z kapotą, z mokrym workiem, z gołymi rękami – i tłukł płomienie na skraju opłotków, aż ludzie z wiadrami zdążyli wylać na strzechy całą wodę ze studni. # pokaz: gaszenie
    Ogień nie przeszedł. Ale kiedy wzeszło słońce, Jaromir nie widział już ani światła, ani Hanki, która płakała nad nim w błocie. Żar wyżarł mu oczy. # dalej
*   [Orać przesiekę razem z całą wsią.]
    ~ noc_pozaru = pol_wsi
    – Konie! – krzyknął Jaromir. Kowal zaprzągł konie do pługa i orali przed opłotkami czarny pas ziemi, a kobiety biły ogień mokrymi płachtami. # pokaz: przesieka
    Bronili każdej strzechy osobno, a ogień brał to, czego nie zdążyli obronić. O świcie połowa Zapadliny leżała w popiele: stodoły, chlewy, cztery chałupy. Ludzie żyli. A zima zastała pół wsi bez dachu nad głową. # dalej
-   Kiedy wzeszło słońce, bór był czarny, jak okiem sięgnąć. Nie stało ani jedno drzewo. Nad zgliszczami unosił się dym. Mówiono potem, że tam, gdzie w sercu boru stał dąb, leży tylko kopiec szarego popiołu, przykryty pierwszym śniegiem. # pokaz: popiol # dalej
~ zapiski += (pan_lasu_12, zielarka_5, dzieci_3)
{ wilk_zywy():
    ~ zapiski += tropy_7
}
-> epilog_ogien

= epilog_granica
# tlo: epilog_dab
# ozdobnik
Pół wieku później, w Zaduszki, stary Jaromir siedział na ławce pod krzyżem na skraju boru.{ cena_caluna == cena_zdrowie: Nogi miał owinięte kożuchem, jak od pięćdziesięciu lat.} Wzdłuż lasu znowu stały kapliczki – postawili je pierwszej wiosny, wszyscy razem, i odtąd każde pokolenie odnawiało je przed Zielonymi Świątkami.
{ zoladz_zasadzony:
    Tuż przy pniaku po Starym Dębie rósł młody dąb, wyższy już niż strzecha. Przez pół wieku wrósł w stare drewno i wchłonął siekierę; z kory, na wysokości kolan, wystawało tylko zardzewiałe ostrze, którego nikt nie odważył się ruszyć. # pokaz: dab
}
{ marysia_odzyskana:
    Wokół niego siedziały dzieci Marysi – troje, piegowate, z dołkami w policzkach – i dzieci jej dzieci.{ cena_caluna == cena_umowa: Marysia, już siwiejąca, co roku w noc świętojańską niosła bochen na płaskie kamienie. Nikomu nie mówiła, po co.}
- else:
    Wokół niego siedziały wnuki Antka. Swoich nie doczekał.
}
Hanka siedziała obok, z najmłodszym na kolanach, i obierała mu jabłko.
– Dziadku, a opowiedz o Panu Lasu – poprosiło najmłodsze.
{ zastaw_u_leszego == zastaw_cien:
    Jaromir uśmiechnął się. Dzieci od dawna nie dziwiło, że dziadek nie rzuca cienia. Tak po prostu było.
}
– Jakieś siedemdziesiąt lat przed tym, nim pierwszy raz spojrzałem w stronę lasu – zaczął – mój dziadek zszedł do Zapadliny z tobołkiem na ramieniu…
{ zoladz_zasadzony:
    Bór za jego plecami stał cicho. W noc świętojańską dzieci z Zapadliny paliły sobótki pod młodym dębem, skakały przez ogień i zbierały spod niego żołędzie, a rano wszystkie spały we własnych łóżkach. Od pół wieku nie przepadło żadne. {marysia_odzyskana:Któreś z wnucząt Marysi|Najmłodsze z wnucząt Antka} ściskało teraz jeden żołądź w garści i słuchało z otwartą buzią. # pokaz: zoledzie # dalej
- else:
    Bór za jego plecami stał cicho. Tylko czasem, w noc świętojańską, z jakiejś chałupy znikało dziecko – i wracało po kilku nocach, pachnące żywicą, nie pamiętając niczego. Ostatnio przepadła na kilka nocy mała od Kowalczyków. Siedziała teraz najbliżej i słuchała z otwartą buzią. # dalej
}
-> koniec_opowiesci

= epilog_miejsce
# tlo: epilog_bor
# ozdobnik
Pół wieku później dzieci z Zapadliny chodziły do lasu po grzyby i jagody i wracały całe, z koszami pełnymi po brzegi. Starzy mówili, że bór od dawna nikogo nie zwodzi. Że ścieżki prowadzą tam, dokąd się idzie.
{noc_ognia == ratowal_szymona:Pod młodnikiem, obok brzozowego krzyżyka, który kiedyś wbił tam stary Staś|Przy kapliczce na skraju boru} był grób bez ciała, z krzyżem z jałowca.{ przysiega_ksiedzu: Na cmentarzu w Bukowcu ksiądz miejsca nie dał.}
{ pozegnanie == pozegnal_sie:
    Napis wyryła Hanka sama, kiedy była już stara: Jaromir. Za płotem.
- else:
    Napisu nie było. Hanka położyła na krzyżu jego czapkę i wiatr nigdy jej stamtąd nie zerwał. # pokaz: czapka
}
{ marysia_odzyskana:
    Marysia przychodziła tam co Zaduszki z własnymi dziećmi. Stawiała na grobie miskę kaszy i kubek wody, a rano miska stała pusta, obok zaś leżał świeży, zielony liść dębu.{ cena_caluna == cena_umowa: W noc świętojańską niosła jeszcze bochen na płaskie kamienie – do końca życia.} # pokaz: miski
- else:
    Hanka przychodziła tam co Zaduszki, póki starczało jej sił. Stawiała na grobie dwie miski – dużą i małą – a rano obie były puste. # pokaz: miski
}
Czasem dzieci zbierające chrust widziały na skraju boru wysokiego starca w kapeluszu z mchu. Stał bez ruchu, a kiedy któreś z dzieci pomachało mu ręką, skinął głową – powoli, poważnie. # pokaz: starzec
{marysia_odzyskana:Jego prawnuczka|Mała od Antkowych} zatrzymała się kiedyś na skraju boru i pierwszy raz spojrzała w stronę lasu sama. Z drugiej strony ktoś przyglądał się jej długo, jakby próbował sobie przypomnieć, skąd zna tę buzię. # pokaz: prawnuczka # dalej
-> koniec_opowiesci

= epilog_ogien
# tlo: epilog_wrzosy
# ozdobnik
Pół wieku później na wzgórzach za Zapadliną nie rosło nic oprócz wrzosu i jałowców. Bór nie odrósł. Drewno wożono z daleka, zza Bukowca, i w chałupach brakowało opału. Młodzi wyjeżdżali do miasta i nie wracali. Z Zapadliny zostały trzy chałupy; po reszcie – kopce porośnięte pokrzywą.
{ noc_pozaru:
- antek_pod_stodola:
    Na cmentarzu w Bukowcu, pod brzozą, był grób Antka. Franek, już siwy, zamiatał go co sobotę.
- oslepl:
    Od pięćdziesięciu lat Jaromir nie widział niczego. Został mu słuch – i wiatr, który nie miał już w czym szumieć.
- pol_wsi:
    Chałupy postawione po pożarze stały z cegły, wożonej z miasta. Ludzie mówili, że cegła nie płonie.
}
Klątwy nie było. Nikt nie znikał w noc świętojańską.{ cena_caluna == cena_umowa: Kijanek nad jeziorem nie słyszał nikt – oprócz Marysi, która co roku niosła bochen na płaskie kamienie.} W Zaduszki na parapetach stała kasza i woda, a rano stały nietknięte.
Tylko raz, wiosną, {marysia_odzyskana:wnuczka Jaromira|wnuczka Antka} przyniosła ze wzgórza coś w garści i pokazała mu na otwartej dłoni. Był to mały, zielony kiełek świerka, miękki i ciepły jak pisklę. # pokaz: kielek
– Wyrzucić? – zapytała. – A jak było, dziadku, kiedy był las?
Jaromir trzymał kiełek w palcach.{ noc_pozaru == oslepl: Nie widział go, ale czuł.} Potem oddał jej.
– Posadź – powiedział. – Daleko od wsi. – Usiadł wygodniej. – Jakieś siedemdziesiąt lat przed tym, nim pierwszy raz spojrzałem w stronę lasu, którego już nie ma… # dalej
-> koniec_opowiesci

= koniec_opowiesci
# ozdobnik
_Koniec._
-> END

=== function wilk_zywy()
~ return cena_caluna != cena_franek

=== function wilk_przy_mnie()
~ return wilk_przy_jaromirze && znak_rozpoznania != po_wilku && cena_caluna != cena_franek
