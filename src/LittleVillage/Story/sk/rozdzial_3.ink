// ------------------------------------------------------------
//  Rozdział trzeci – Wigilia. Zima, Jaromir ma dziewięć lat.
//  Nocnica nawiedza Zosię, siostrzyczkę Antka; dziad proszalny
//  w wigilijny wieczór; szczeniak z rodu psa dziadka Maćka.
//  Ojciec jak w rozdziałach 1–2:
//    figurka_u_staruchy – milczący, nieufny;
//    inaczej            – pogodny, sam nie umie czytać.
// ------------------------------------------------------------

=== rozdzial_trzeci ===
# tlo: roraty
# rozdzial: Kapitola tretia
# tytul: Štedrý večer
V prvom decembrovom týždni zovrel mráz jazero tak pevne, že sedliaci vychádzali na ľad so saňami, a močiare, cez ktoré si v lete nikto pri zdravom rozume neskracoval cestu, sa premenili na bielu, rovnú plachtu. Sneh vŕzgal pod čižmami, v noci praskali brvná v stenách a ráno sa okenné tabule pokrývali námrazou v tvare papradia.
Bol advent. Deň čo deň, ešte za tmy, chodili deti do Bukowca na roráty a z kostolíka rovno do školy, ktorá stála hneď vedľa. Každé nieslo vlastný lampáš – Jaromirovi ho otec zlepil z drevených latiek a namasteného papiera a vnútri tlel lojový ohorok. Na chodníku pod borom sa ich plamienky kolísali ako bludné ohne a medzi smrekmi vládla tma taká hustá, že svetlo v nej po pár krokoch uviazlo.
{ zawolal_do_lasu:
    Jaromir šiel vždy v strede a neotáčal hlavu k stromom. Od toho rána v hmle sa nemohol zbaviť pocitu, že ktosi teraz pozná jeho hlas.
- else:
    Jaromir šiel vždy v strede a snažil sa neotáčať hlavu k stromom.
}
Antek čoraz častejšie zaostával. V októbri sa mu narodila sestrička Zosia a odvtedy v chalupe Stašovcov nikto neprespal celú noc. Maličká plakala až do svitania, a keď práve stíchla, matka aj tak bdela nad kolískou, lebo ticho ju desilo viac ako krik. Chlapec chodil na roráty s kruhmi pod očami, na vyučovaní driemal nad tabuľkou a pán Ignacy ho občas musel budiť. # pokaz: antek # dalej
-> antek_prosi


= antek_prosi
# tlo: przerwa_sniezki
{ obrona_antka:
- stanal:
    Cez prestávku, keď sa ostatní pod kostolíkom guľovali, Antek sám prišiel k Jaromirovi. Odo dňa, keď sa ho ten zastal, nemal pred ním tajomstvá.
- poskarzyl:
    Cez prestávku, keď sa ostatní pod kostolíkom guľovali, Antek dlho krúžil okolo Jaromira, kým prehovoril. Možno si pamätal, že to Jaromir vtedy bežal po pána Ignacyho, a možno jednoducho už nemal za kým ísť.
- else:
    Cez prestávku, keď sa ostatní pod kostolíkom guľovali, Hanka priviedla Antka k Jaromirovi takmer násilím. Antek s Jaromirom nehovoril odo dňa, keď mu Bartek rozbil tabuľku, a aj teraz hľadel kamsi nabok. # pokaz: hanka
}
– Niečo chodí k Zosii – povedal potichu. – Po polnoci. Najprv sa urobí zima a potom to v izbe šuští ako suché lístie. Raz som otvoril oči a uvidel som nad kolískou čosi svetlé, vysoké… a vlasy, čierne, až po dlážku. Viac som sa nepozeral. – Prehltol. – A Zosia vtedy neplače. Len píska, akoby nemohla chytiť dych. Ráno je biela ako stena a nechce jesť.
Hovoril rýchlo, hltal slová a každú chvíľu sa obzeral cez plece. Snehová guľa, ktorú celý čas stískal v dlaniach, sa mu rozsypala medzi prstami.
– Povedal si mame?
– Vraví, že sa mi to sníva. Že som unavený. – Antek sklopil zrak. – Ale ja nespím. Ja to počujem každú noc.
Jaromirovi prišli na um piatkové rozprávania pána Ignacyho a zamrazilo ho, hoci slnko sa od snehu odrážalo tak jasne, že boleli oči.
– Prídem na Štedrý večer – sľúbil. – Keď všetci zaspia. Ale najprv musím zistiť, ako to odohnať.
# pytanie: U koho bude Jaromir hľadať radu?
*   [Spýtať sa Hanky – na všetko pozná babkine spôsoby.]
    ~ rada_jaromira = hanka
    Hanka ho vypočula so zvrašteným čelom a dlho mlčala. # pokaz: hanka
    – Babka vravela, že to je polnočnica – ozvala sa napokon. – Taká mŕtva mamička, čo si svoje dieťatko nestihla pritúliť, tak chodí k cudzím. Bojí sa železa. Treba strčiť pod podušku nôž alebo aspoň klinec. – Zaváhala. – Lenže babka hovorí, že až keď sa ona už nakláňa, lebo inak nepríde bližšie. A mama zas vraví, že babka všetko pletie. # dalej
    -> wigilia
*   { ekwipunek ? ksiega } [Nazrieť do knihy pána Ignacyho.]
    ~ rada_jaromira = ksiega_rada
    # tlo: izba_noc
    Tej noci, pri žeravých uhlíkoch, vyhľadal v knihe správny list. „Polnočnica – písal pán Ignacy svojím šikmým písmom – navštevuje nemluvňatá po polnoci, skláňa sa nad nimi a vysáva z nich spánok a sily. Bojí sa železa, ktoré treba položiť dieťaťu pod podušku. Starí ľudia vravia aj to, že keď sa okolo kolísky rozsype hrsť maku, polnočnica musí zrátať každé zrnko, kým sa priblíži – a rátať vie iba do svitania“. # pokaz: ksiega
    ~ czytal_po_zmroku = true
    Jaromir si poslednú vetu prečítal trikrát. Potom až do svitania myslel na hlas, ktorý v hmle pod borom rátal čosi, čo nebolo vidieť.
    Ráno, keď otvoril knihu pri okne, našiel na liste o polnočnici dlhý čierny vlas. Večer tam nebol. # dalej
    -> wigilia
*   [Spýtať sa otca.]
    ~ rada_jaromira = ojciec
    # tlo: izba_noc
    { figurka_u_staruchy:
        Otec zbledol, keď počul, na čo sa syn pýta. Vstal od stola, vyšiel do pitvora a dlho sa nevracal. Keď sa napokon postavil do dverí, povedal len: – Železo. Pod podušku. A nikomu ani slovo, rozumieš? # pokaz: ojciec # dalej
    - else:
        Otec sa zasmial a postrapatil mu vlasy. – Tvoj dedko Maciek vravieval, že na každé licho je najlepšie železo pod poduškou – povedal. – Ale to sú rozprávky, synček. Maličká má koliku, a to je všetko. – Napriek tomu Jaromir tej noci videl, ako mu otec strká pod slamník starý klinec. # pokaz: ojciec # dalej
    }
    -> wigilia

= wigilia
# tlo: wigilia
~ zapiski += polnocnica_1
{ ekwipunek ? ksiega:
    ~ ksiega_zatrzymana = true
    V posledný deň pred sviatkami priniesol Jaromir do školy knihu zabalenú v ľanovej šatke. Pán Ignacy ju vzal, poťažkal ju v dlaniach a vrátil mu ju. – Nechaj si ju – povedal. – Čosi mi hovorí, že tebe sa zíde viac ako mne. Len pamätaj: nie po zotmení.{ czytal_po_zmroku: – Jaromir sklopil oči. Učiteľ si ho prezeral o chvíľu dlhšie, ako bolo treba, ale na nič sa nespýtal.}
- else:
    V posledný deň pred sviatkami rozdal pán Ignacy deťom po kúsku medovníka a všetkým zaželal veselé sviatky. Na Jaromira sa pritom díval dlhšie ako na ostatných, akoby sa ho chcel na niečo spýtať, ale napokon mu len kývol hlavou.
}
Od rána bolo v chalupe cítiť hríby, kapustu a mak. Matka ho trela v hlinenej mise, až drevený tĺčik spieval o jej steny, otec doniesol zo stodoly snopček raže a postavil ho do kúta a pod obrus vsunul hrsť sena. Pri stole bolo o jedno prestretie viac – pre pocestného, keby zaklopal, a pre tých, čo odišli a v túto noc sa mohli vrátiť. Jaromir od poludnia vyzeral z okna prvú hviezdičku. Rozsvietila sa nad borom, maličká a studená. # pokaz: gwiazdka
Sotva sa podelili o vianočnú oblátku, ktosi zaklopal na dvere.
Na prahu stál starec – zhrbený, v handrách previazaných povrázkom, s kapsou cez plece a ninerou na chrbte. Brada mu zamrzla na cencúle a oči mal bledé ako mlieko, akoby nimi už dávno nič nevidel. # pokaz: dziad
– Pochválený buď Ježiš Kristus – zachripel. – Prijmete starého k večeri?
{ figurka_u_staruchy:
    Otec neodpovedal. Stál s rukou na závore a pozeral raz na príchodzieho, raz na prázdne prestretie, a potom sa otočil k synovi a čakal, čo povie.
- else:
    – Naveky – odvetil Dobrosław, ale s rukou na kľučke zaváhal. Pozrel na syna, ktorý prvý pribehol k dverám. – Môj otec vravieval, že na Štedrý večer sa nikto neodháňa od prahu. Čo ty na to?
}
# pytanie: Zostane starec na večeri?
*   [Poprosiť otca, aby ho pustil dnu.]
    ~ wpuscil_dziada = true
    Starec si sadol k prázdnemu prestretiu a jedol málo, zato pomaly a dôkladne. Potom si zložil z chrbta nineru a zaspieval starú pieseň o dušiach, ktoré sa v túto jedinú noc vracajú do svojich chalúp a hrejú si ruky pri cudzom ohni. Matka si utierala oči zásterou. # pokaz: lira
    Pri odchode sa starec pristavil pri Jaromirovi a sklonil sa k nemu tak nízko, že chlapca udrel do nosa pach dymu a mrazu.
    – Voniaš lesom, synak – zašepkal. – Keď príde k maličkej, neprehováraj k nej. Ani slovom.
    Skôr ako sa ktokoľvek stihol spýtať, čo tým myslí, bol už za prahom. Noc bola jasná od snehu, a predsa nikto nevidel, ktorým smerom odišiel. – Dobre, že sme ho neodohnali – zašepkala matka, keď zo stola odpratávala jeho misku. – Človek nikdy nevie, kto prišiel. Niekedy sa v prestrojení vracia duša niekoho z rodiny, aby videla, či na ňu ešte pamätajú. # pokaz: odszedl # dalej
    -> po_wieczerzy
*   [Nič nehovoriť – starec v ňom budí strach.]
    Jaromir sklopil zrak. Dvere sa pomaly zavreli a cvakla závora. Starec druhý raz nezaklopal. # pokaz: rygiel
    Cez škáru v okenici chlapec videl, ako sa príchodzí brodí snehom – nie smerom k dedine, ale rovno k boru. V polovici poľa zadul vietor a zdvihol zo závejov oblak bieleho prachu. Keď sa rozplynul, nebolo už nikoho. # dalej
    -> po_wieczerzy

= po_wieczerzy
~ zapiski += dziad_1
{ los_psa == oswojony: -> wigilijny_szczeniak | -> noc_w_sniegu }

= wigilijny_szczeniak
# tlo: wigilia_szczeniak
Po večeri prišiel starý Staš. Ťažko si sadol na lavicu a rozhrnul kožuch, pod ktorým sa čosi mrvilo a popiskovalo.
– Tvoj dedko mal psa, akého v okolí druhého nebolo – povedal Jaromirovi. – {pies_uratowal:Vytiahol dedka z bažiny za halenu, keď ho čosi volalo od vody – Maciek mi to sám rozprával. }Keď prišiel na psa čas, rozišli sa po dedine jeho šteňatá a jedno sa dostalo k môjmu otcovi. Odvtedy u nás na dvore vždy behal niektorý z jeho vnukov alebo pravnukov. – Vytiahol spod kožucha klbko srsti. – A suka sa na jeseň oštenila. Tento je z vrhu najodvážnejší. Patrí tebe.
Šteňa malo vztýčené špicaté uši, bielu škvrnu na hrudi a labky priveľké na zvyšok tela. Oňuchalo chlapcovi prsty, kýchlo a bez rozmýšľania sa mu vyškriabalo na kolená. # pokaz: pies
{ figurka_u_staruchy:
    Babka Marianna vystrela k šteňaťu trasúcu sa ruku a dlho nedokázala vydať zo seba hlas.
}
# pytanie: Ako ho Jaromir pomenuje?
*   [Šedko.]
    ~ imie_psa = "Šedko"
*   [Labko.]
    ~ imie_psa = "Labko"
*   [Hrom.]
    ~ imie_psa = "Hrom"
-   ~ ekwipunek += szczeniak
    – {imie_psa} – zopakoval Staš a pokýval hlavou. – Dobré meno. Maciek by mal radosť.
    Šteňa potom spávalo Jaromirovi v nohách postele a občas zo sna zavrčalo smerom k oknu. # dalej
    -> noc_w_sniegu

= noc_w_sniegu
# tlo: noc_snieg
Na polnočnú omšu do Bukowca v ten rok nešiel nikto – mráz bol priveľmi krutý a chodník cez hrebeň zaviaty po kolená. Všetci si ľahli zavčasu.
{ rada_jaromira == ksiega_rada:
    ~ ekwipunek += mak
}
Jaromir ležal bez pohnutia, kým z izby nedoľahlo pravidelné chrápanie otca. Potom sa potme obliekol, strčil si do záňadria nožík{ ekwipunek ? mak:, a do vrecka handričku s makom, ktorý večer potajomky odsypal z misy, lebo si pamätal, čo sa dočítal v knihe pána Ignacyho,} a vykradol sa do pitvora.{ ekwipunek ? szczeniak: Šteňa zdvihlo hlávku, ale nezakňučalo, akoby chápalo, že teraz treba byť ticho.}
Svet bol strieborný od mesiaca. Sneh sa ligotal na poliach, každý konár vrhal ostrý čierny tieň a mráz štípal do líc tak, že slzili oči. { figurka_u_staruchy: Do dvora Stašovcov to bolo sotva niekoľko desiatok krokov, ale chodník viedol naprieč poľom, nad ktorým sa nízko vlnila hmla, hoci obloha bola jasná, a tmavá čiara boru sa v noci zdala bližšie ako cez deň. | K chalupe Stašovcov to nebolo ďaleko, ale chodník viedol popri okraji boru a bór v tú hodinu stál hluchý a nehybný. }
V polovici cesty ho ktosi zavolal.
– Jaromir!
Hlas prichádzal {figurka_u_staruchy:z hmly nad poľom|spomedzi stromov}. Teplý, nežný, známy – matkin hlas.
– Synček, poď ku mne. Je mi zima. Zablúdila som.
Jaromir zastal ako prikovaný. Veď matka spala doma, prikrytá perinou až po bradu. Videl ju, keď odchádzal.
# pytanie: Čo urobí Jaromir?
*   [Odpovedať.]
    ~ glos_w_lesie = odpowiedzial
    – Mama? – vyhŕklo z neho skôr, ako si to stihol rozmyslieť.
    { zawolal_do_lasu:
        {figurka_u_staruchy:V hmle|Medzi stromami} sa čosi zasmialo – nízko, ticho, vôbec nie matkiným hlasom. Potom ten istý pokojný hlas, ktorý počul na jeseň pod borom, povedal: – Zas ty. Zrátam ťa, keď príde čas. # pokaz: oczy
    - else:
        {figurka_u_staruchy:V hmle|Medzi stromami} sa čosi zasmialo – nízko, ticho, vôbec nie matkiným hlasom. Potom kdesi v hĺbke ktosi začal pokojne rátať: – …päťsto jeden… päťsto dva… # pokaz: oczy
    }
    Jaromir sa dal do behu a zastal až pod oknom Stašovcov. # pokaz: bieg # dalej
    -> kolyska
*   [Obrátiť kožuch naruby, ako hovoril pán Ignacy.]
    ~ glos_w_lesie = kozuch
    Trasúcimi sa prstami rozviazal opasok, zhodil kožuch a znova si ho obliekol, srsťou von. Sotva skončil, hlas zmĺkol.
    Chvíľu bolo ticho. Potom sa ozvali kroky – ťažké, pomalé, také dlhé, akoby ich robil niekto veľmi vysoký. Ten ktosi prešiel tesne vedľa. Jaromir cítil na tvári jeho studený dych, ktorý páchol živicou a hnilobou, no on si ho nevšimol. # pokaz: kroki
    – Kde si? – doľahlo už z diaľky, tónom sklamaného dieťaťa, ktorému niekto schoval hračku. # dalej
    -> kolyska
*   [Dať sa do behu.]
    ~ glos_w_lesie = ucieczka
    Bežal, čo mu nohy stačili. Sneh sa mu sypal za sáry. Dvakrát spadol a dvakrát sa zdvihol a matkin hlas ho naháňal v tme, čoraz bližšie a čoraz plačlivejšie. Zmĺkol, až keď chlapec dobehol k plotu Stašovcov. Dychčal tak, že ho v hrudi pichalo ako nožom. # pokaz: bieg # dalej
    -> kolyska

= kolyska
# tlo: kolyska
Antek čakal pri okne a otvoril ho skôr, ako Jaromir stihol zaklopať. V izbe bolo teplo a tma. Na peci chrápal otec Antka, v kúte spal Franek a matka, vyčerpaná ďalšími prebdenými nocami, zaspala na stolčeku s hlavou opretou o kolísku. Zosia dýchala rýchlo a plytko.
Sadli si na dlážku pod stenu, odkiaľ mali všetko na očiach. Mesiac padal do izby strieborným pásom. Dlho sa nič nedialo. Prešla polnoc, Jaromirovi sa zliepali viečka a Antek mu dvakrát zadriemal na pleci.
Až zrazu sa urobila zima.
Pás svetla pohasol, akoby niekto zastrel okno. Nad dlážkou sa začala plaziť hmla a z nej vyrástla postava – vysoká, v rubáši rozstrapkanom na spodku, s čiernymi vlasmi splývajúcimi až po zem. Vznášala sa nad doskami a nedotýkala sa ich chodidlami. Tvár mala vychudnutú ako umrlčia lebka, oči veľké a okrúhle a v pootvorených ústach sa jej blyšťali drobné ostré zuby. Sklonila sa nad Zosiou a natiahla dolu prsty tenké ako prútiky, zakončené pazúrmi. # pokaz: polnocnica
Maličká začala pískať.
Antek zaťal Jaromirovi nechty do pleca tak silno, že ten takmer vykríkol.
# pytanie: Čo urobí Jaromir?
*   [Strčiť nožík pod podušku v kolíske.]
    ~ polnocnica = przegnana_nozem
    ~ ekwipunek -= nozyk
    Jaromir sa doplazil ku kolíske po štyroch. Polnočnica k nemu otočila hlavu – oči mala ako dve čierne studne so svetlým bodom na dne – a zasyčala. Chlapec prehltol strach, strčil ruku pod podušku tesne pod jej drápmi a nechal tam nožík.
    Polnočnica sebou trhla, akoby sa dotkla rozžeraveného železa. Bez hlasu roztvorila ústa, vzniesla sa až pod povalu a visela tam, uprene hľadiac na nich oboch, a vlasy sa jej vlnili ako vodné riasy v prúde. # pokaz: odlot, noz
    Ostala tak až do prvých kohútov. Keď v maštaľke zakikiríkalo, už tam nebola. # pokaz: kogut
    Nadránom siahol Jaromir po nožík, ale rozmyslel si to.
    – Nech ostane pri Zosii – zašepkal Antkovi. – Pre istotu. # dalej
    -> boze_narodzenie
*   { ekwipunek ? mak } [Rozsypať mak okolo kolísky.]
    ~ polnocnica = policzyla_mak
    ~ ekwipunek -= mak
    Jaromir vytiahol z vrecka handričku a trasúcou sa rukou rozsypal mak dookola kolísky. Zrnká zabubnovali o dlážku ako drobný dážď.
    Polnočnica znehybnela. Pomaly, veľmi pomaly klesala nižšie, až sa jej rubáš rozlial po doskách ako hmla. Zavisla nad najbližším zrnkom a dotkla sa ho pazúrom. # pokaz: odlot, mak
    – Jedno – zašepkala hlasom ako šuchot suchého lístia. – Dve… tri…
    Rátala celú noc. Chlapci sedeli pod stenou, neodvážili sa ani pohnúť, a ona sa kĺzala po izbe, zrnko po zrnku, a šepkala čoraz rýchlejšie, čoraz nahnevanejšie. Napočítala niekoľko tisíc, keď v maštaľke zaspieval kohút. Vtedy zvreskla tak prenikavo, že Jaromirovi zazvonilo v ušiach – a zmizla. Okrem nich dvoch ten krik nikto nepočul. # pokaz: kogut # dalej
    -> boze_narodzenie
*   [Kričať a zobudiť dospelých.]
    ~ polnocnica = uslyszala_krzyk
    – Pomoc! – zvrieskol Jaromir{ wpuscil_dziada:, hoci si hneď spomenul, čo mu pri odchode šepkal starec}.
    Polnočnica sa k nemu otočila. Na jediné mihnutie mu hľadela priamo do očí a potom sa rozplynula v tme ako dym. Matka Antka vyskočila s výkrikom, otec spadol z pece, ktosi zapálil lúč. V kolíske nebolo nič okrem bledej, sotva dýchajúcej Zosie. # pokaz: odlot, krzyk
    Na úsvite Jaromira odprevadili domov, kde dostal poriadny výprask. Polnočnica sa však vracala aj ďalšie noci. # pokaz: kogut # dalej
    -> boze_narodzenie

= boze_narodzenie
~ zapiski += polnocnica_2
// Mak był potrzebny tylko na tę jedną noc.
~ ekwipunek -= mak
# tlo: koledy
{ polnocnica:
- przegnana_nozem:
    Ráno Zosia pokojne spala, ružová ako jabĺčko, a po prvý raz po týždňoch jedla tak lačno, že sa matka od šťastia rozplakala. Nikto z dospelých nevedel, kde sa v kolíske vzal nožík. Matka si ho prezrela, prežehnala sa a schovala ho naspäť pod podušku.
- policzyla_mak:
    Ráno Zosia pokojne spala, ružová ako jabĺčko, a po prvý raz po týždňoch jedla tak lačno, že sa matka od šťastia rozplakala. Po maku nebolo ani stopy – ani jediného zrnka, hoci chlapci prehľadali každú škáru v dlážke.
- else:
    Zosia slabla zo dňa na deň. Až na Troch kráľov starý Staš, ktorý vnuka vypočul bez smiechu, položil pod kolísku hrdzavý kosák. Maličká prežila, ale už navždy bola chorľavá a bledá a na čele jej ostala drobná sivá škvrnka, akoby od dotyku špinavého prsta.
}
{ polnocnica == uslyszala_krzyk:
    Antek sa na Jaromira nehneval. Hovoril, že mu aspoň niekto uveril – a to bolo viac, ako mohol povedať o dospelých.
- else:
    Od tej noci Antek už nezaostával. Do školy chodil teraz vedľa Jaromira, a keď sa ho niekto spýtal, prečo sa ho tak drží, len pokrčil plecami a usmial sa popod nos.
}
Prišli sviatky. Koledníci chodili od chalupy k chalupe s papierovou hviezdou, ktorá sa točila na palici, a turoň klapal drevenou papuľou, až dievčatá pišťali. Na jazdu na saniach po zamrznutom jazere zapriahol Staš dva kone; sane leteli tak rýchlo, že vietor svišťal v ušiach, zvončeky cengali a spod saníc striekal sneh. Jaromir sa smial spolu s ostatnými, ale v noci, kým zaspal, načúval tichu za oknom. # pokaz: kulig
Keď o všetkom porozprával Hanke, dievča zvážnelo a dlhú chvíľu nič nehovorilo. # pokaz: hanka
– Babka hovorí, že polnočnica nikdy nepríde sama od seba – povedala napokon. – Niekto jej musí ukázať cestu. # dalej
-> rozdzial_trzeci_ciag_dalszy


// Koniec rozdziału trzeciego – dalej rozdział czwarty.
=== rozdzial_trzeci_ciag_dalszy ===
# ozdobnik
_Koniec tretej kapitoly._ # dalej
-> rozdzial_czwarty
