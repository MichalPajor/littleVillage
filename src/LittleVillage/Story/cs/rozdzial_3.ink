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
# rozdzial: Kapitola třetí
# tytul: Štědrý večer
V prvním prosincovém týdnu mráz sevřel jezero tak pevně, že sedláci vyjížděli na led se saněmi, a mokřady, přes které si v létě nikdo při smyslech cestu nezkracoval, se proměnily v bílou, rovnou pláň. Sníh vrzal pod botami, v noci praskaly trámy ve stěnách a ráno se okenní tabulky pokrývaly jinovatkou ve tvaru kapradin.
Byl advent. Den co den, ještě za tmy, chodily děti do Bukowce na roráty a z kostelíka rovnou do školy, která stála hned vedle. Každé neslo vlastní lucerničku – Jaromirovi ji otec slepil z dřevěných lišt a promaštěného papíru a uvnitř doutnal lojový oharek. Na stezce pod borem se jejich plaménky kolébaly jako bludné ohně a mezi smrky vládla tma tak hustá, že v ní světlo po pár krocích uvízlo.
{ zawolal_do_lasu:
    Jaromir šel vždycky uprostřed a neotáčel hlavu ke stromům. Od toho rána v mlze se nemohl zbavit pocitu, že teď někdo zná jeho hlas.
- else:
    Jaromir šel vždycky uprostřed a snažil se neotáčet hlavu ke stromům.
}
Antek čím dál častěji zůstával vzadu. V říjnu se mu narodila sestřička Zosia a od té doby se v chalupě Stašových nikdo celou noc nevyspal. Malá plakala až do svítání, a když zrovna utichla, matka stejně bděla nad kolébkou, protože ticho ji děsilo víc než křik. Chlapec chodil na roráty s kruhy pod očima a při vyučování podřimoval nad tabulkou, takže ho pan Ignacy občas musel budit. # pokaz: antek # dalej
-> antek_prosi


= antek_prosi
# tlo: przerwa_sniezki
{ obrona_antka:
- stanal:
    O přestávce, když se ostatní pod kostelíkem koulovali, přišel Antek sám za Jaromirem. Ode dne, kdy se ho ten zastal, před ním neměl tajemství.
- poskarzyl:
    O přestávce, když se ostatní pod kostelíkem koulovali, Antek dlouho kroužil kolem Jaromira, než promluvil. Možná si pamatoval, že to Jaromir tehdy doběhl pro pana Ignacyho, a možná prostě už neměl za kým jít.
- else:
    O přestávce, když se ostatní pod kostelíkem koulovali, přivedla Hanka Antka k Jaromirovi skoro násilím. Antek s Jaromirem nemluvil ode dne, kdy mu Bartek roztříštil tabulku, a i teď hleděl kamsi stranou. # pokaz: hanka
}
– Něco chodí k Zosii – řekl tiše. – Po půlnoci. Nejdřív se udělá zima a pak to v jizbě šustí, jako suché listí. Jednou jsem otevřel oči a uviděl nad kolébkou něco světlého, vysokého… a vlasy, černé, až na zem. Víc jsem se nedíval. – Polkl. – A Zosia pak nepláče. Jenom sípe, jako by nemohla popadnout dech. Ráno je bílá jako stěna a nechce jíst.
Mluvil rychle, polykal slova a co chvíli se ohlížel přes rameno. Sněhová koule, kterou celou dobu mačkal v dlaních, se mu rozsypala mezi prsty.
– Řekl jsi to mamince?
– Prý se mi to jen zdá. Že jsem unavený. – Antek sklopil oči. – Ale já nespím. Já to slyším každou noc.
Jaromirovi se vybavila páteční vyprávění pana Ignacyho a najednou mu byla zima, ačkoli slunce se od sněhu odráželo tak jasně, že bolely oči.
– Přijdu na Štědrý večer – slíbil. – Až všichni usnou. Ale nejdřív musím zjistit, jak to zahnat.
# pytanie: U koho bude Jaromir hledat radu?
*   [Zeptat se Hanky – zná na všechno babiččiny prostředky.]
    ~ rada_jaromira = hanka
    Hanka ho vyslechla se svraštělým čelem a dlouho mlčela. # pokaz: hanka
    – Babička říkala, že je to půlnočnice – ozvala se nakonec. – Taková mrtvá maminka, co svoje děťátko nestihla ukolébat, tak chodí k cizím. Bojí se železa. Pod polštář se musí strčit nůž nebo aspoň hřebík. – Zaváhala. – Jenže babička říká, že teprve až se nakloní, jinak blíž nepřijde. A maminka zas tvrdí, že babička všechno plete. # dalej
    -> wigilia
*   { ekwipunek ? ksiega } [Podívat se do knihy pana Ignacyho.]
    ~ rada_jaromira = ksiega_rada
    # tlo: izba_noc
    Té noci u řeřavých uhlíků vyhledal v knize správný list. „Půlnočnice – psal pan Ignacy svým skloněným písmem – navštěvuje nemluvňata po půlnoci, sklání se nad nimi a vysává z nich spánek i síly. Bojí se železa, které je třeba položit dítěti pod polštář. Staří lidé také povídají, že když se kolem kolébky rozsype hrst máku, musí půlnočnice spočítat každé zrníčko, než přistoupí blíž – a počítat umí jen do svítání“. # pokaz: ksiega
    ~ czytal_po_zmroku = true
    Jaromir si poslední větu přečetl třikrát. Pak až do svítání myslel na hlas, který v mlze pod borem počítal něco, co nebylo vidět.
    Ráno, když knihu otevřel u okna, našel na listu o půlnočnici dlouhý černý vlas. Večer tam nebyl. # dalej
    -> wigilia
*   [Zeptat se otce.]
    ~ rada_jaromira = ojciec
    # tlo: izba_noc
    { figurka_u_staruchy:
        Otec zbledl, když uslyšel, na co se syn ptá. Vstal od stolu, vyšel do síně a dlouho se nevracel. Když konečně stanul ve dveřích, řekl jen: – Železo. Pod polštář. A nikomu ani slovo, rozumíš? # pokaz: ojciec # dalej
    - else:
        Otec se rozesmál a pocuchal mu vlasy. – Tvůj dědeček Maciek říkával, že na každé licho je nejlepší železo pod polštářem – řekl. – Ale to jsou pohádky, synu. Malá má koliku, nic víc. – Přesto té noci Jaromir viděl, jak mu otec strká pod slamník starý hřebík. # pokaz: ojciec # dalej
    }
    -> wigilia

= wigilia
# tlo: wigilia
~ zapiski += polnocnica_1
{ ekwipunek ? ksiega:
    ~ ksiega_zatrzymana = true
    Poslední den před svátky přinesl Jaromir do školy knihu zabalenou do lněného šátku. Pan Ignacy ji vzal, potěžkal v dlaních a vrátil mu ji. – Nech si ji – pravil. – Něco mi říká, že tobě poslouží víc než mně. Jen pamatuj: ne po setmění.{ czytal_po_zmroku: – Jaromir sklopil oči. Učitel si ho prohlížel o chvilku déle, než bylo třeba, ale na nic se nezeptal.}
- else:
    Poslední den před svátky rozdal pan Ignacy dětem po kousku perníku a všem popřál veselé Vánoce. Na Jaromira se přitom díval déle než na ostatní, jako by se ho chtěl na něco zeptat, ale nakonec mu jen kývl hlavou.
}
Od rána voněla chalupa houbami, zelím a mákem. Matka ho třela v kameninové míse, až dřevěná palička zpívala o její stěny, otec přinesl ze stodoly snop žita a postavil ho do kouta a pod ubrus vložil hrst sena. U stolu bylo prostřeno o jeden talíř víc – pro pocestného, kdyby zaklepal, a pro ty, kdo odešli a té noci se mohli vrátit. Jaromir od poledne vyhlížel z okna první hvězdičku. Rozsvítila se nad borem, maličká a studená. # pokaz: gwiazdka
Sotva si rozdělili vánoční oplatku, někdo zaklepal na dveře.
Na prahu stál dědek – shrbený, v hadrech převázaných provázkem, s mošnou přes rameno a niněrou na zádech. Vousy mu zamrzly v rampouchy a oči měl mléčně bledé, jako by jimi už dávno nic neviděl. # pokaz: dziad
– Pochválen buď Ježíš Kristus – zachraptěl. – Vezmete starého k večeři?
{ figurka_u_staruchy:
    Otec neodpověděl. Stál s rukou na závoře a hleděl hned na příchozího, hned na prázdné místo u stolu, a pak se otočil k synovi a čekal, co řekne on.
- else:
    – Až navěky – odpověděl Dobrosław, ale s rukou na klice zaváhal. Pohlédl na syna, který ke dveřím doběhl první. – Můj otec říkával, že na Štědrý večer se nikdo od prahu neodhání. Co ty na to?
}
# pytanie: Zůstane dědek na večeři?
*   [Poprosit otce, aby ho pustil dál.]
    ~ wpuscil_dziada = true
    Dědek si sedl k prázdnému talíři a jedl málo, zato pomalu a důkladně. Pak sňal ze zad niněru a zazpíval starou píseň o duších, které se té jediné noci vracejí do svých chalup a hřejí si ruce u cizího ohně. Matka si utírala oči zástěrou. # pokaz: lira
    Při odchodu se dědek zastavil u Jaromira a sklonil se k němu tak nízko, že chlapce do nosu udeřil pach kouře a mrazu.
    – Je z tebe cítit les, chlapče – zašeptal. – Až přijde k maličké, nemluv na ni. Ani slovem.
    Než se kdokoli stačil zeptat, co tím myslí, byl už za prahem. Noc byla světlá od sněhu, a přece nikdo neviděl, kterým směrem odešel. – Dobře, že jsme ho neodehnali – řekla tiše matka, když sklízela ze stolu jeho misku. – Člověk nikdy neví, kdo přišel. Někdy se v přestrojení vrací duše někoho z rodiny, aby se podívala, jestli na ni ještě pamatují. # pokaz: odszedl # dalej
    -> po_wieczerzy
*   [Nic neříkat – stařec v něm budí strach.]
    Jaromir sklopil oči. Dveře se pomalu zavřely a cvakla závora. Dědek podruhé nezaklepal. # pokaz: rygiel
    Škvírou v okenici chlapec viděl, jak se příchozí brodí sněhem – ne ke vsi, ale přímo k boru. V půli pole zadul vítr a zvedl ze závějí bílou vánici. Když opadla, nebyl tam už nikdo. # dalej
    -> po_wieczerzy

= po_wieczerzy
~ zapiski += dziad_1
{ los_psa == oswojony: -> wigilijny_szczeniak | -> noc_w_sniegu }

= wigilijny_szczeniak
# tlo: wigilia_szczeniak
Po večeři přišel starý Staš. Těžce dosedl na lavici a rozhrnul kožich, pod nímž se cosi vrtělo a pištělo.
– Tvůj dědeček měl psa, jakého v celém okolí nebylo – řekl Jaromirovi. – {pies_uratowal:Vytáhl dědečka z bažiny za halenu, když ho cosi volalo od vody – Maciek mi to sám povídal. }Když na psa přišel čas, rozešla se po vsi jeho štěňata a jedno se dostalo k mému otci. Od té doby u nás ve dvoře vždycky pobíhal některý z jeho vnuků nebo pravnuků. – Vylovil zpod kožichu chlupaté klubíčko. – A fena se na podzim oštěnila. Tenhle je z vrhu nejodvážnější. Patří tobě.
Štěně mělo vztyčené špičaté uši, bílou skvrnu na prsou a tlapy na zbytek těla příliš velké. Očichalo chlapci prsty, kýchlo a bez rozmýšlení se mu vyškrábalo na klín. # pokaz: pies
{ figurka_u_staruchy:
    Babička Marianna vztáhla ke štěněti třesoucí se ruku a dlouho nedokázala promluvit.
}
# pytanie: Jak ho Jaromir pojmenuje?
*   [Šedák.]
    ~ imie_psa = "Šedák"
*   [Tlapík.]
    ~ imie_psa = "Tlapík"
*   [Hrom.]
    ~ imie_psa = "Hrom"
-   ~ ekwipunek += szczeniak
    – {imie_psa} – zopakoval Staš a pokýval hlavou. – Dobré jméno. Maciek by měl radost.
    Štěně pak spávalo Jaromirovi v nohách postele a občas ze spaní zavrčelo k oknu. # dalej
    -> noc_w_sniegu

= noc_w_sniegu
# tlo: noc_snieg
Na půlnoční mši do Bukowce toho roku nikdo nešel – mráz byl příliš krutý a stezka přes hřbet zavátá po kolena. Všichni ulehli brzy.
{ rada_jaromira == ksiega_rada:
    ~ ekwipunek += mak
}
Jaromir ležel bez hnutí, dokud se z jizby neozvalo pravidelné otcovo chrápání. Pak se potmě oblékl, strčil si za košili nožík{ ekwipunek ? mak:, a do kapsy hadřík s mákem, který večer potají nabral z mísy, protože si pamatoval, co vyčetl v knize pana Ignacyho,} a vyklouzl do síně.{ ekwipunek ? szczeniak: Štěně zvedlo hlavu, ale nezakňučelo, jako by chápalo, že teď je třeba být zticha.}
Svět byl stříbrný od měsíce. Sníh se třpytil na polích, každá větev vrhala ostrý černý stín a mráz štípal do tváří tak, že slzely oči. { figurka_u_staruchy: Ke Stašovým do dvora to bylo sotva pár desítek kroků, ale stezka vedla napříč polem, nad nímž se nízko táhla mlha, ačkoli obloha byla jasná, a tmavá čára boru se v noci zdála bližší než za dne. | K chalupě Stašových to nebylo daleko, ale stezka vedla po okraji boru a bor v tu hodinu stál hluchý a nehybný. }
V půli cesty ho někdo zavolal.
– Jaromire!
Hlas se nesl {figurka_u_staruchy:z mlhy nad polem|zpomezi stromů}. Teplý, mírný, známý – matčin hlas.
– Synku, pojď ke mně. Je mi zima. Zabloudila jsem.
Jaromir stanul jako přimražený. Matka přece spala doma, přikrytá peřinou až po bradu. Viděl ji, když odcházel.
# pytanie: Co udělá Jaromir?
*   [Odpovědět.]
    ~ glos_w_lesie = odpowiedzial
    – Maminko? – vyklouzlo mu dřív, než stačil pomyslet.
    { zawolal_do_lasu:
        {figurka_u_staruchy:V mlze|Mezi stromy} se cosi zasmálo – hluboce, tiše, vůbec ne matčiným hlasem. Pak tentýž klidný hlas, který slyšel na podzim pod borem, řekl: – Zase ty. Sečtu tě, až přijde čas. # pokaz: oczy
    - else:
        {figurka_u_staruchy:V mlze|Mezi stromy} se cosi zasmálo – hluboce, tiše, vůbec ne matčiným hlasem. Pak kdesi v hloubi začal kdosi klidně počítat: – …pět set jedna… pět set dva… # pokaz: oczy
    }
    Jaromir se dal do běhu a zastavil se až pod oknem Stašových. # pokaz: bieg # dalej
    -> kolyska
*   [Obrátit kožich naruby, jak radil pan Ignacy.]
    ~ glos_w_lesie = kozuch
    Třesoucími se prsty rozvázal opasek, shodil kožich a oblékl si ho zpátky, srstí ven. Sotva skončil, hlas zmlkl.
    Chvíli bylo ticho. Pak se ozvaly kroky – těžké, pomalé, tak dlouhé, jako by je dělal někdo velmi vysoký. Ten někdo prošel těsně vedle. Jaromir cítil na tváři jeho studený dech, z něhož byla cítit pryskyřice a hniloba, ale onen ho nezpozoroval. # pokaz: kroki
    – Kde jsi? – ozvalo se už z dálky tónem zklamaného dítěte, kterému někdo schoval hračku. # dalej
    -> kolyska
*   [Dát se do běhu.]
    ~ glos_w_lesie = ucieczka
    Běžel, co mu nohy stačily. Sníh se mu sypal do holenic. Dvakrát upadl a dvakrát se zase zvedl a matčin hlas ho ve tmě pronásledoval, čím dál blíž a čím dál plačtivější. Zmlkl teprve, když chlapec doběhl k plotu Stašových. Oddychoval tak, že ho v prsou píchalo jako nožem. # pokaz: bieg # dalej
    -> kolyska

= kolyska
# tlo: kolyska
Antek čekal u okna a otevřel je dřív, než Jaromir stačil zaťukat. V jizbě bylo teplo a tma. Na peci chrápal Antkův otec, v koutě spal Franek a matka, vyčerpaná dalšími probdělými nocemi, usnula na stoličce s hlavou opřenou o kolébku. Zosia dýchala rychle a mělce.
Sedli si na podlahu ke stěně, odkud měli všechno na očích. Měsíc padal do jizby stříbrným pruhem. Dlouho se nic nedělo. Minula půlnoc, Jaromirovi se klížila víčka a Antek mu dvakrát usnul na rameni.
Až se udělala zima.
Pruh světla pohasl, jako by někdo zastínil okno. Nad podlahou se začala plazit mlha a z ní vyrostla postava – vysoká, v rubáši roztřepeném u lemu, s černými vlasy splývajícími až k zemi. Vznášela se nad prkny a nohama se jich nedotýkala. Tvář měla vyzáblou jako umrlčí lebka, oči velké a kulaté a v pootevřených ústech se leskly drobné ostré zuby. Sklonila se nad Zosií a natáhla dolů prsty tenké jako proutky, zakončené drápy. # pokaz: polnocnica
Malá začala sípat.
Antek zaryl Jaromirovi nehty do ramene tak silně, že ten málem vykřikl.
# pytanie: Co udělá Jaromir?
*   [Strčit nožík pod polštářek v kolébce.]
    ~ polnocnica = przegnana_nozem
    ~ ekwipunek -= nozyk
    Jaromir se po čtyřech připlížil ke kolébce. Půlnočnice k němu otočila hlavu – oči měla jako dvě černé studny se světlým bodem na dně – a zasyčela. Chlapec spolkl strach, strčil ruku pod polštářek těsně pod jejími spáry a nechal tam nožík.
    Půlnočnice sebou škubla, jako by se dotkla rozžhaveného železa. Nehlasně otevřela ústa, vznesla se až ke stropu a zůstala tam viset, upřeně hledíc na oba chlapce, a vlasy jí vlály jako vodní řasy v proudu. # pokaz: odlot, noz
    Vydržela tak do prvního kuropění. Když v chlívku zakokrhal kohout, byla pryč. # pokaz: kogut
    K ránu sáhl Jaromir po nožíku, ale rozmyslel si to.
    – Ať zůstane u Zosie – zašeptal Antkovi. – Pro jistotu. # dalej
    -> boze_narodzenie
*   { ekwipunek ? mak } [Rozsypat kolem kolébky mák.]
    ~ polnocnica = policzyla_mak
    ~ ekwipunek -= mak
    Jaromir vytáhl z kapsy hadřík a třesoucí se rukou rozsypal mák kolem kolébky. Zrníčka zabubnovala o podlahu jako drobný déšť.
    Půlnočnice strnula. Pomalu, velmi pomalu klesla níž, až se její rubáš rozlil po prknech jako mlha. Zastavila se nad nejbližším zrníčkem a dotkla se ho drápem. # pokaz: odlot, mak
    – Jedno – zašeptala hlasem jako šelest suchého listí. – Dvě… tři…
    Počítala celou noc. Chlapci seděli u stěny a neodvažovali se pohnout, a ona klouzala po jizbě zrníčko za zrníčkem a šeptala čím dál rychleji, čím dál zlostněji. Došla k několika tisícům, když v chlívku zakokrhal kohout. Tu vřískla tak pronikavě, že Jaromirovi zazvonilo v uších – a zmizela. Nikdo kromě nich dvou ten křik neslyšel. # pokaz: kogut # dalej
    -> boze_narodzenie
*   [Vykřiknout a vzbudit dospělé.]
    ~ polnocnica = uslyszala_krzyk
    – Pomoc! – zařval Jaromir{ wpuscil_dziada:, ačkoli si hned vzpomněl, co mu dědek při odchodu šeptal}.
    Půlnočnice se k němu otočila. Na jediné mrknutí mu hleděla přímo do očí, a pak se rozplynula ve tmě jako dým. Antkova matka vyskočila s výkřikem, otec spadl z pece, kdosi rozžehl louč. V kolébce nebylo nic kromě bledé, sotva dýchající Zosie. # pokaz: odlot, krzyk
    Za svítání Jaromira odvedli domů, kde dostal pořádný výprask. Půlnočnice se však vracela i další noci. # pokaz: kogut # dalej
    -> boze_narodzenie

= boze_narodzenie
~ zapiski += polnocnica_2
// Mak był potrzebny tylko na tę jedną noc.
~ ekwipunek -= mak
# tlo: koledy
{ polnocnica:
- przegnana_nozem:
    Ráno Zosia klidně spala, růžová jako jablíčko, a poprvé po týdnech jedla tak hltavě, že se matka štěstím rozplakala. Nikdo z dospělých nevěděl, kde se v kolébce vzal nožík. Matka si ho prohlédla, pokřižovala se a schovala ho zpátky pod polštářek.
- policzyla_mak:
    Ráno Zosia klidně spala, růžová jako jablíčko, a poprvé po týdnech jedla tak hltavě, že se matka štěstím rozplakala. Po máku nezůstala ani stopa – ani jediné zrníčko, ačkoli chlapci prohledali každou škvíru v podlaze.
- else:
    Zosia den ode dne slábla. Teprve na Tři krále položil starý Staš, který vnuka vyslechl bez posměchu, pod kolébku rezavý srp. Malá přežila, ale byla už navždy neduživá a bledá a na čele jí zůstala drobná šedá skvrnka, jako od dotyku špinavého prstu.
}
{ polnocnica == uslyszala_krzyk:
    Antek se na Jaromira nezlobil. Tvrdil, že mu aspoň někdo uvěřil – a to bylo víc, než mohl říct o dospělých.
- else:
    Od té noci už Antek nezaostával. Do školy teď chodil vedle Jaromira, a když se ho někdo ptal, proč se ho tak drží, jen pokrčil rameny a potutelně se usmál.
}
Přišly svátky. Koledníci chodili od chalupy k chalupě s papírovou hvězdou, která se točila na tyči, a chlupatý tur klapal dřevěnou tlamou, až děvčata pištěla. Na vyjížďku po zamrzlém jezeře zapřáhl Staš dva koně; saně uháněly tak rychle, že vítr hvízdal v uších, rolničky zvonily a zpod sanic stříkal sníh. Jaromir se smál s ostatními, ale v noci, než usnul, naslouchal tichu za oknem. # pokaz: kulig
Když o všem vyprávěl Hance, děvčátko zvážnělo a dlouhou chvíli nic neříkalo. # pokaz: hanka
– Babička říká, že půlnočnice nikdy nepřichází sama od sebe – promluvila nakonec. – Někdo jí musí ukázat cestu. # dalej
-> rozdzial_trzeci_ciag_dalszy


// Koniec rozdziału trzeciego – dalej rozdział czwarty.
=== rozdzial_trzeci_ciag_dalszy ===
# ozdobnik
_Konec třetí kapitoly._ # dalej
-> rozdzial_czwarty
