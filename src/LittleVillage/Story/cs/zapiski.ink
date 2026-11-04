// ------------------------------------------------------------
//  Zapiski – bestiariusz. Każda istota ma kilka wpisów (etapów),
//  które fabuła odsłania dopiero wtedy, gdy bohater czegoś się dowie:
//      ~ zapiski += licho_2
//  Kolejność na liście = kolejność kart. Tytuł karty bierze się z
//  najnowszego odsłoniętego wpisu (np. „Jednooka żebraczka” → „Licho”).
//  Wpisy nie mówią więcej, niż w tej chwili wiedzą postacie.
// ------------------------------------------------------------

LIST Zapiski = stwor_1, zielarka_1, pan_lasu_1, starzec_1, polnocnica_1, polnocnica_2, dziad_1, stwor_2, zielarka_2, ogniki_1, uboze_1, pan_lasu_2, poludnica_1, pan_lasu_3, rusalki_1, uboze_2, licho_1, licho_2, licho_3, pan_lasu_4, starzec_2, tropy_1, mamuny_1, odmieniec_1, mamuny_2, tropy_2, pan_lasu_5, strzyga_1, strzyga_2, mamuny_3, starzec_3, ogniki_2, stwor_3, zielarka_3, pan_lasu_6, uboze_3, zytnia_baba_1, zytnia_baba_2, pan_lasu_7, planetnik_1, tropy_3, blednice_1, starzec_4, pan_lasu_8, pan_lasu_9, zielarka_4, tropy_4, dzieci_1, pan_lasu_10, tropy_5, mamuny_4, tropy_6, dzieci_2, pan_lasu_11, pan_lasu_12, zielarka_5, tropy_7, dzieci_3
VAR zapiski = ()

=== function tytul_zapisku(z)
{ z:
    - stwor_1:      ~ return "Stvůra z houští"
    - stwor_2:      ~ return "Utopec"
    - zielarka_1:   ~ return "Bylinkářka od jezera"
    - zielarka_2:   ~ return "Bylinkářka od jezera"
    - pan_lasu_1:   ~ return "Pán lesa"
    - pan_lasu_2:   ~ return "Pán lesa"
    - pan_lasu_3:   ~ return "Pán lesa"
    - pan_lasu_4:   ~ return "Pán lesa"
    - starzec_1:    ~ return "Stařec v klobouku z mechu"
    - starzec_2:    ~ return "Stařec v klobouku z mechu"
    - polnocnica_1: ~ return "Půlnočnice"
    - polnocnica_2: ~ return "Půlnočnice"
    - dziad_1:      ~ return "Dědek s niněrou"
    - ogniki_1:     ~ return "Bludičky"
    - uboze_1:      ~ return "Hospodáříček"
    - uboze_2:      ~ return "Hospodáříček"
    - poludnica_1:  ~ return "Polednice"
    - rusalki_1:    ~ return "Rusalky"
    - licho_1:      ~ return "Jednooká žebračka"
    - licho_2:      ~ return "Licho"
    - licho_3:      ~ return "Licho"
    - tropy_1:      ~ return "Pod oknem"
    - tropy_2:      ~ return "Bílý vlk"
    - pan_lasu_5:   ~ return "Pán lesa"
    - mamuny_1:     ~ return "Mamuny"
    - mamuny_2:     ~ return "Mamuny"
    - odmieniec_1:  ~ return "Podvrženec"
    - strzyga_1:    ~ return "Mrtvý, který nechladne"
    - strzyga_2:    ~ return "Strzyga"
    - mamuny_3:     ~ return "Mamuny"
    - starzec_3:    ~ return "Stařec v klobouku z mechu"
    - ogniki_2:     ~ return "Bludičky"
    - stwor_3:      ~ return "Utopec"
    - zielarka_3:   ~ return "Bylinkářka od jezera"
    - pan_lasu_6:   ~ return "Pán lesa"
    - uboze_3:      ~ return "Hospodáříček"
    - zytnia_baba_1: ~ return "Žena v žitě"
    - zytnia_baba_2: ~ return "Žitná bába"
    - pan_lasu_7:   ~ return "Pán lesa"
    - planetnik_1:  ~ return "Planetník"
    - tropy_3:      ~ return "Bílý vlk"
    - blednice_1:   ~ return "Světýlka"
    - starzec_4:    ~ return "Stařec v klobouku z mechu"
    - pan_lasu_8:   ~ return "Pán lesa"
    - pan_lasu_9:   ~ return "Pán lesa"
    - zielarka_4:   ~ return "Bylinkářka od jezera"
    - tropy_4:      ~ return "Bílý vlk"
    - dzieci_1:     ~ return "Děti pod dubem"
    - pan_lasu_10:  ~ return "Pán lesa"
    - tropy_5:      ~ return "Bílý vlk"
    - mamuny_4:     ~ return "Mamuny"
    - tropy_6:      ~ return "Bílý vlk"
    - dzieci_2:     ~ return "Děti pod dubem"
    - pan_lasu_11:  ~ return "Pán lesa"
    - pan_lasu_12:  ~ return "Pán lesa"
    - zielarka_5:   ~ return "Bylinkářka od jezera"
    - tropy_7:      ~ return "Bílý vlk"
    - dzieci_3:     ~ return "Děti pod dubem"
}
~ return ""

=== function tresc_zapisku(z)
{ z:
- stwor_1:
    O tři hlavy vyšší než člověk, shrbený, s rukama visícíma skoro až k zemi a s dlouhými mokrými vlasy. Páchne bažinou. Přišel z mlhy, když umlkli cvrčci i žáby, a odešel směrem k mokřadům. {czary.noc:Maciek ho uviděl ještě jednou – na prahu vlastní chaty.|Maciek ho viděl jen jednou – a nikdy na to nezapomněl.}
- stwor_2:
    Po půl století se vrátil, když děti topily Moranu – {obejrzal_sie:šedá ruka stáhla figurínu pod vodu|něco figurínou zespodu škublo a stáhlo ji pod vodu}.{figurka_u_staruchy && los_psa == oswojony: „Takoví jako on neumírají. Čekají.“}{not figurka_u_staruchy || los_psa == oswojony: Staří říkají, že kdo se utopí bez kněze, nejde do nebe ani do pekla, ale zůstane ve vodě. Na dně drží utopec duše utonulých pod hliněnými hrnci postavenými hrdlem dolů a v noci je převrací jeden za druhým. Když některý hrnec praskne, duše vyletí v bublině k hladině.}
- zielarka_1:
    Bydlela u jezera, tam, kde z rákosí trčí zuhelnatělé trámy. Léčila lidi bylinami, dokud nezačala po nocích rozmlouvat s kýmsi, koho nikdo neviděl. Když se ve vsi začalo kazit mléko a hynout dobytek, sedláci jí zatloukli dveře prkny a chatu zapálili. Umírajíc proklela vesnici i každého, kdo v ní kdy bude žít. Ti, kdo ji upálili, se nedožili zimy – jeden po druhém vešli do bažiny.
- zielarka_2:
    Kletba neuhasla spolu s ohněm. Dědeček Maciek ji v sobě nosil celý život – {figurka_u_staruchy:a zaplatil za ni víc, než chtěl komukoli prozradit|a synovi o ní vyprávěl jako o pohádce, i když sám se jí nikdy nesmál}.{chata_macka != nad_jeziorem: Dodnes nikdo v Zapadlině nestaví u jezera na západní straně.}
- pan_lasu_1:
    Staří mu říkají všelijak – Borový, Pán lesa – a ti nejstarší nijak, protože jménem je lepší ho nevolat. Bydlí v nejhlubší části boru a střeží ho, jako hospodář hlídá svůj dvůr. Kdo tam vejde bez optání, toho mate tak, že chodí dokola. Kdo zabloudí, ať si svlékne šaty a obleče je naruby – Borový se pak zmate, protože si myslí, že má před sebou jednoho ze svých.
- pan_lasu_2:
    Jsou stromy, které střeží jako vlastní srdce. Starý dub na kraji boru byl hranicí – dokud stál, les končil tam, kde končil.{ franek_scial_dab: První seknutí mu zasadil Franek.}{pracowal_w_tartaku: Starý Wawrzyniec z pily bájil, že když první lidé sestoupili do tohohle údolí, museli slíbit, že za Starý dub se sekerou nepřejdou – a teprve potom les ustoupil – a za to si jednou za pokolení bere na pár nocí dítě. „Kapličky jsou jako hřebíky v plotě. Vytrhneš jeden, plot ještě stojí. Vytrhneš všechny…“}
- pan_lasu_3:
    {ostrzezenie_poludnicy:Polednice to řekla přímo: Pán lesa se probouzí.{pomylki_poludnica == 0: S každým poraženým stromem je jeho spánek mělčí.}|Po skácení Starého dubu se něco změnilo. Na zahradách mezi záhony vyrostl za jedinou noc mech jako pod nejstaršími smrky a zeleň od boru stála každé ráno blíž k plotům.}
- pan_lasu_4:
    Když Urbaniakovi lidé vykopali kapličky pod borem, vyrostly v jamách po nich přes noc mladé smrčky. Bor jako by stál každým dnem blíž ke vsi.{ kapliczki_drogi == obronil_kapliczke: Zachovala se jen jediná kaplička – ta, kterou Jaromir bránil.}
- starzec_1:
    {poszedl_po_wstazke:Stál v šeru boru, tak vysoký, že by se musel sehnout, aby vešel do chaty. Kožich obrácený srstí ven, přepásaný provázkem, klobouk z mechu se širokou krempou a pod ním jen dva světlé body očí. Opíral se o sukovitou hůl, z níž rašily listy. V ruce držel stužku Hanky.|Někdo ho nakreslil do knihy pana Ignacyho: stařec v šatech obrácených naruby, v klobouku z mechu.}{czytal_ksiege: Pod kresbou v knize stálo: „Kdo ho potká, ať udělá totéž co on. Onen přichází z druhé strany, kde je všechno obráceně.“}
- starzec_2:
    Přišel na svatbu Jaromira a Hanky – zastavil se na kraji lesa a pokyvoval hlavou do taktu, jak hráli muzikanti.{ poszedl_po_wstazke: Nezestárl ani o den.} {weselny_gosc == ugoszczony_kolaczem:Přijal svatební koláč a pokynul jako hospodář hospodáři.|{weselny_gosc == zapytany:Promluvil hlasem jako vítr v korunách stromů: „Dobře se ženíš, Maćkův vnuku. Hlídej ji.“|Stál tam až do prvního kuropění.}}
- polnocnica_1:
    Chodí po půlnoci k nemluvňatům. Nejdřív se udělá zima, potom v jizbě cosi zašustí jako suché listí. Antek viděl jen něco světlého nad kolébkou a černé vlasy až k podlaze. Dítě místo pláče sípe, jako by nemohlo popadnout dech. Bojí se železa pod polštářem.{rada_jaromira == ksiega_rada: Kniha pana Ignacyho dodává, že rozsypaný mák musí přepočítat zrníčko po zrníčku – a počítat dokáže jen do svítání.}
- polnocnica_2:
    Zblízka je vidět celá: vznáší se nad prkny, aniž se jich dotkne chodidly, v rubáši roztřepeném u lemu, s tváří vyzáblou jako umrlčí lebka, s očima jako dvě černé studně a s drobnými ostrými zuby. {rada_jaromira == hanka:Babička Hanky říká, že je to duše matky, která umřela při porodu dřív, než ji kněz stačil uvést do kostela – vlastní dítě nikdy nepřitulila, a tak chodí k cizím. A že nikdy nepřijde sama od sebe: někdo jí musí ukázat cestu. }{polnocnica == przegnana_nozem:Zosii zachránil nožík zastrčený pod polštář.|{polnocnica == policzyla_mak:Zosii zachránil mák – počítala do svítání a nestihla to.|Zosia přežila, ale na čele jí zůstala šedá skvrnka jako od doteku špinavého prstu.}}
- dziad_1:
    Zaklepal na Štědrý večer, sotva se rozdělili o vánoční oplatku: shrbený, v cárech, s niněrou na zádech, s očima bílýma jako mléko. {wpuscil_dziada:Snědl málo, zazpíval píseň o duších, které se té noci vracejí do svých chalup, a odešel do tmy, i když nikdo neviděl, kterým směrem. Na odchodu pošeptal Jaromirovi: „Je z tebe cítit les, chlapče.“|Nepustili ho dovnitř. Odešel k boru a uprostřed pole zmizel ve sněhové vánici.} Na Štědrý večer se žebráci od prahu neodhánějí, protože člověk nikdy neví, kdo přišel – někdy se v přestrojení vrací duše někoho z rodiny, aby se podívala, jestli na ni ještě pamatují.
- ogniki_1:
    Bledá světla nad mokřady u lávky, která se rozsvěcují za soumraku a chichotají se jako někdo, kdo dostal dárek. Báby říkají, že jsou to ti, kdo upálili bylinkářku od jezera – vešli do bažiny a dodnes tam po nocích svítí. Kdo půjde za takovou bludičkou, ten se už nevrátí.
- uboze_1:
    Maličký stařeček, ne větší než kočka, v záplatovaném kabátě a červené čepičce, se šedivými vousy omotanými kolem slepičích nožek. Bydlí za pecí ve starých chalupách. Kdo hospodáříčka krmí, tomu se na dvoře i v chlévě daří; kdo ho vyžene, ten na dům přivolá bídu. Hospodáříček přichází spolu s prvním hospodářem a zůstává, dokud chalupa stojí. Když vyhoří, odejde s kouřem a už se nevrátí.
- uboze_2:
    {uboze == nakarmione:Odvděčuje se potichu: ve spíži se nelíhnou myši, ve džbánu je vždycky víc mléka, než se nalilo{rozdzial_dziewiaty:, a v hladové zimě mouka jaksi nechce dojít}. Jenže co v jedné chalupě přibude, to v druhé ubude – u Stašových po ty samé měsíce kysalo mléko.|{uboze == przegnane:Odkdy ho vyhnali, jako by je chalupa neměla ráda: slepice přestaly snášet a ve spíži se co chvíli něco kazilo.|Nikdo ho už potom neviděl. Jen ráno býval popel na zápecí rozhrabaný jako od slepice, která si hledá místo na noc.}}
- poludnica_1:
    Vysoká bílá žena v dlouhé košili. V pravé poledne chodí na pole. Chodidly se nedotýká země, oči má bílé, bez zornic, a v ruce srp. Kdo pracuje v největším parnu, tomu dává hádanky – za každou chybu sekne srpem.{ not figurka_u_staruchy: Prý bývala nejlepší žnečkou v kraji: vsadila se s čeledíny, že sama do poledne požne celý lán, a neodešla z pole ani v největším vedru. Večer ji našli se srpem v ruce a s klasy ve vlasech.}{ poludnica_uklon: Před odpovědí z knihy sklonila hlavu.}{ poludnica_darowala: Jednu chybu Jaromirovi odpustila, protože necouvl před ostřím.}{ blizna_sierpa: Jaromirovi po ní zůstala jizva ve tvaru půlměsíce.}
- rusalki_1:
    Duše utopených dívek. O Letnicích vycházejí z jezera a tančí v měsíčním světle – mladé, bledé, v mokrých lněných košilích, s věnečky ze sítí a s očima celýma černýma, bez bělma. Vábí zpěvem beze slov a stahují do hlubiny každého, kdo se dá zlákat. Ukazují se jen od Letnic do svatého Jana; po zbytek roku spí v bahně na dně. Jednou z nich byla Kaśka Wójciková.{ratunek_franka == piolunem: Pelyňku se bojí víc než ohně – ale na tu, která ho dala, nezapomenou. Voda nevrátila věneček Hanky.|{ratunek_franka == krzyzem: Kříž je nepálí – „byly jsme tu dřív než on“. Pustily Franka, ale voda nešla spát hladová – ráno našli v sítí Bartka, mlynářova syna.| Kaśka pustila Franka, když na ni Hanka zavolala jménem. Na Jaromirově tváři, tam, kde se ho dotkla, zůstala bílá, studená skvrna.}}
- licho_1:
    Malá, shrbená žebračka, sotva dospělému do pasu, zavinutá do tolika cárů, že není poznat, kde jeden končí a začíná další. Má jen jedno oko, orámované červení; na místě druhého je hladká šedá kůže. Její stín je příliš dlouhý a padá proti slunci, opačným směrem než všechny ostatní. Kdo ji uvidí u svého plotu, toho druhý den potká neštěstí.
- licho_2:
    Babička Hanky ho nazvala jménem: Licho, co nespí. Chodí od chalupy k chalupě a usedá tam, kde se mu líbí – kde se kácí les a svaté věci se přenášejí z kouta do kouta. Do stavení nevejde, dokud ho někdo nezavolá. Vyhnané jde k sousedovi; pohoštěné odchází syté. Stařena slyšela od své matky, že druhé oko zůstalo v boru, protože Licho jsou oči, které Pán lesa posílá mezi lidi – sama neví, jestli je to pravda.
- licho_3:
    {licho_noc == ugoszczone:Když dostalo slaninu, odešlo cestou k pile – a ráno Urbaniakovi praskl pilový list a ve stáji mu padl nejlepší kůň.|{licho_noc == odpedzone:Zahnané oharkem uteklo ke kovárně – té noci kovárna lehla popelem.|Do rána škrábalo pode dveřmi a lákalo vůní chleba; prkno, na které ťukalo, za jedinou noc ztrouchnivělo. Nikdo mu neodpověděl.}} V říjnu odešlo cestou pod borem a vešlo mezi stromy, jako by ho někdo zavolal.
- tropy_1:
    Ráno po svatbě byl celý dvůr bílý jinovatkou – jen pod oknem nové jizby roztála do širokého oválu, až na holou zem, jako by tam celou noc proleželo něco velkého a teplého, stočené do klubka. Půda byla ještě vlažná. Hanka to místo zasypala popelem a nařídila, ať o tom nikdo nemluví.
- mamuny_1:
    Bydlí u jezera. Samy rodí děti ošklivé a neduživé, a tak kradou lidem zdravé – dokud dítě není pokřtěné – a do kolébky podvrhnou svoje. V létě po nocích je slyšet, jak tlučou pracími paličkami prádlo o kameny. Babička Hanky říká, že perou rubáše pro ty, kdo ve vsi umřou do příštího jara – a nad každým rubášem volají něčí jméno. Je lepší nenaslouchat. Bojí se červené barvy, železa a hromničky.
- mamuny_2:
    Vysoké a hrbaté, s hlavami příliš velkými na chatrné krky a s vlasy jako suché větvičky, v cárech z mechu a kůry. Jejich dotek je studený a mokrý.{noc_mamun == zaslonil: Když nedostanou dítě, vezmou matce mléko.} Umějí broukat tak, že spáč sám sejme z kolébky ochranu.{podmiana:{uklad_z_mamunami == oddany_skarb: Za Marysii si vzaly Jaromirův dětský poklad a hodily ho do jezera.|{uklad_z_mamunami == dar_swietojanski: Za Marysii jim Jaromir slíbil každý rok o svatojánské noci chléb a věneček na kameni u břehu. Jestli zapomene, přijdou si pro své.|{uklad_z_mamunami == oddane_lata: Za Marysii si od Jaromira vzaly léta života – skráně mu zešedivěly jako starému člověku.| Výměnu zvrátila teprve voda vařená ve skořápkách od vajec.}}}}{sposob_na_odmienca == chrzest_odmienca: Nezapomenou, že jejich dítě obrátili v třísky.}
- odmieniec_1:
    Dítě mamun, podvržené místo lidského. Zdálky vypadá jako ono, ale je těžší a studené, kůži má jako kůru a oči tmavší než kterékoli dítě. Nepláče, jen bez ustání jí, a když si myslí, že se nikdo nedívá, usmívá se jako stará ženská. Výměnu lze zvrátit jen do sedmi dnů.
- tropy_2:
    Obrovský samec, větší než kterýkoli vlk v kraji, tak vyhublý, že pod bílou srstí je vidět všechna žebra. Vede smečku, ale sám ke chlévům nechodí.{noc_wilkow == bronil_obory: Jediným zavytím ji dokáže od chléva odvolat.} Na přední tlapě má kruh vydřené, řidší srsti, na tom samém místě, kde měl Franek tři šrámy po drápech. Oči má lidské: jasné, smutné, se zřetelnou zornicí. Antek říká, že by si je nespletl s žádnými jinými.{oblawa_wilk == wydal_wilka: Dostal kulku od hajného Pawlika a utekl do boru a na sněhu za sebou nechal krvavou šmouhu. Od té doby zní jeho vytí jinak.| Přežil hon. Druhý den ráno ležel na pařezu u plotu zajíc s prokousnutým krkem.}{noc_na_kladce != (): Té noci, kdy Józek šel ve spánku na lávku, se po hrázi za mokřady mihlo něco bílého – a utopec na jeho vytí otočil hlavu.}
- pan_lasu_5:
    Mlází, které se za pár let přisunulo od boru až k samým plotům, se stalo úkrytem vlků. Staří říkají, že les neroste ke vsi bez příčiny: nejdřív přijdou stromy, potom zvířata a nakonec ten, kdo jim vládne.
- strzyga_1:
    {sprawdzil_zeby:Starý Wójcik měl dvě řady zubů – jednu za druhou, drobných a ostrých jako u štiky.|Lidé říkali, že se starý Wójcik narodil se zuby.} Kdo se narodí se zuby nebo se dvěma srdci, má dvě duše. Po smrti jde jedna k Bohu a druhá zůstane v těle a nedá mu pokoj: tělo nechladne, tváře jsou růžové, víčka se nedovírají. Kolem půlnoci takový mrtvý vstává. Dřív takového pohřbívali tváří k zemi, se srpem nad hrdlem a s mákem v rakvi – aby se nemohl obrátit, aby se poranil, kdyby se pokusil vstát, a aby ho mák uspal až do Soudného dne.
- strzyga_2:
    {polnoc_strzygi == na_twarz:Převrácený tváří k prknu se zmítal až do prvního kuropění a kousl Antka do ruky. Rána se dlouho nechtěla zahojit.|{polnoc_strzygi == sierp_przy_szyi:Když se srp dotkl jeho krku, vytekla z něj černá, hustá krev.|Utišila ho teprve hromnička v dlaních; tehdy vyslovil jméno dcery.}} {pochowek_wojcika == pochowany_za_murem:Pohřbili ho za hřbitovní zdí, tváří k zemi, a už se nevrátil.|{pochowek_wojcika == pochowany_z_makiem:Spočinul v posvěcené zemi s mákem od Hanky na prsou a už se nevrátil. Farář ji za ten mák až do Velikonoc nepustil k přijímání.|{trzy_noce == rozkopany_grob:Vrátil se po třech nocích a stál pod oknem nad kolébkou Marysie, dokud Jaromir s Antkem nerozkopali jeho hrob.|Vrátil se po třech nocích. Odešel od okna, za kterým spala Marysia – ale toho rána našli mrtvou Wójcikovou.}}}
- mamuny_3:
    Nad prádlem volají jménem ty, pro které perou rubáše. Wójciková je v červnu poslouchala z rákosí a zaslechla jen jedno jméno. V listopadu jí umřel muž.{trzy_noce == czuwanie_przy_kolysce: Spletla se – anebo to druhé slyšet nechtěla.}
- starzec_3:
    Na Štědrý večer nechala Hanka na stole prostřeno pro poutníka. Ráno ležela na talíři, na místě oplatky, hrst čerstvého zeleného mechu – v nejhlubší zimě.
- ogniki_2:
    Když se figurka {przeszukal_zgliszcza && not figurka_w_bagnie:vrátila do Zapadliny|vynořila}, začaly bludičky chodit až k plotům – každou noc blíž, jako by čekaly, až někdo otevře dveře.{los_figurki == figurka_w_skrzyni: Hoří dál, ale za lávkou, daleko od plotů.}{los_figurki == figurka_pod_kapliczka || los_figurki == figurka_u_jagny || los_figurki == figurka_u_stwora: Zhasly všechny najednou té noci, kdy figurka přestala volat.}
- stwor_3:
    Vrátil se na mokřady spolu s figurkou. Dětem ve vsi se o něm zdál tentýž sen: stojí pod lávkou v černé vodě, převrací hliněné hrnce, nahlíží pod každý a pak se ptá: „Kde je moje panenka?“{figurka_u_staruchy: Na rameni má hlubokou starou jizvu po sekeře dědečka Maćka.}{noc_na_kladce == siekiera_na_kladce: Jaromir ho zranil sekerou a on mu rozdrásal plece.}{noc_na_kladce == figurka_dla_stwora: Když dostal figurku, pustil chlapce a přitiskl si ji k hrudi jako matka dítě. Při sestupu pod vodu strhl s sebou starou lávku.}{noc_na_kladce == latarnia_na_wodzie: Ohně se bojí víc než železa – utekl před hořícím olejem.}
- zielarka_3:
    {zaufal_jagnie:Jagna říká, že figurka je panenka: bylinkářka ji vyřezala z kořene vytaženého z bažiny a dala jí jméno toho, kdo bydlí ve vodě. Kdo má panenku, za tím on jde. Ohně se panenka nebojí – utiší ji jen posvěcená země.{odrzucil_figurke: Odstrčenou už nelze nikomu dát.}|Ohořelá figurka od jezera se {przeszukal_zgliszcza && not figurka_w_bagnie:vrátila do Zapadliny|vynořila} po víc než šedesáti letech – a spolu s ní se vrátily sny.}{los_figurki == figurka_pod_kapliczka: Leží teď pod kapličkou, a kde – to ví jen Jaromir.}{los_figurki == figurka_u_jagny: Jagna ji odnesla s sebou, tak daleko, aby ji utopec neuslyšel.}{los_figurki == figurka_w_skrzyni: Oheň ji nevzal. Leží v truhle pod postelí, omotané řetězem.}{los_figurki == figurka_u_stwora: Teď ji má ten, kdo bydlí pod lávkou.}
- pan_lasu_6:
    Té noci, kdy shořely kapličky, přišel bor ke vsi blíž o celé pole. Stromy, které ráno stály na místě strniště, vypadaly, jako by tam rostly léta. Kolíky vytyčené pro Urbaniakovu cestu pouštěly výhonky a z pařezů na průseku každé ráno vyrážely nové větvičky.{droga_do_boru: Cesta došla k prvním velkým borovicím a tam skončila – nikdo nechtěl kácet dál.}{szarwark && not droga_do_boru && rozdzial_czternasty.pierwszy_snieg_czternasty: Mlází se zastavilo na hranici spálených kapliček a už dál nerostlo.}
- uboze_3:
    Vzbudil hospodáře škubáním za vlasy, když od lesa šel oheň. Bál se tak, že se mu třásla brada. Hospodáříček si pamatuje, kdo ho krmil.
- zytnia_baba_1:
    Nízká, shrbená, v bocích široká jako snop, s tváří vrásčitou jako připečená kůrka chleba a s vlasy z klasů. Voní teplým zrním. Přidřepne v obilí a pohupuje dětem před očima tím, co jim patří, jako chrastítkem.
- zytnia_baba_2:
    Starý Staš říká, že žitná bába chytá děti v obilí a tam je nechává – ale Marysii tam nenechala. Převedla ji přes pole až k lesu, jako by ji někomu nesla.{pani_w_zbozu_noc == gonil_babe: Kdo ji honí, ten krouží po poli až do svítání a v ranách od stébel mu zůstávají osiny, které zarůstají čím dál hlouběji.}{pani_w_zbozu_noc == za_spiewem: Zpívá hlasem matky – a matce pak zůstane hlas puklý vedví.}{pani_w_zbozu_noc == z_pochodniami: Když ji hledá celá ves, uteče – ale zanechá za sebou zdupané pole.}
- pan_lasu_7:
    {rada_przed_borem == rada_ksiedza:Ve farních knihách stojí zapsáno, že jednou za několik desítek let zmizí ze vsi pod borem dítě, vždycky o svatojánské noci. Ty, které se vrátí, si nic nepamatují.|{rada_przed_borem == rada_jagny:Jagna říká, že les bere děti, když se jeho pán probouzí – nezabíjí je, jen je drží.|Planetník říká, že nad borem se mraky rozestupují a co lidé pamatují, nespadla tam ani kapka deště.}}
- planetnik_1:
    Vysoký stařec v cárech, s vousy rozevlátými větrem a s pytlem na zádech. Chodí před bouřkou a vede mraky na provaze. Kdo mu dá chleba, nad jeho polem se mraky neprotrhnou – a kdo se ho na něco zeptá, zaplatí polem.
- tropy_3:
    {oblawa_wilk == wydal_wilka:Rána po kulce se špatně zahojila. V boru šel za Jaromirem celou noc – ne proto, aby ho chránil.|Našel Jaromira v boru, když se ten vydal za hlasem Franka.{przejscie_bagna == za_wilkiem: Převedl ho přes bažinu. Když k němu Jaromir natáhl ruku a nazval ho Frankem, chňapl zuby – výstražně, ale do krve.}}
- blednice_1:
    Bledé koule světla nad bažinou v hloubi boru, velké jako dětská hlava. V každé kouli sedí schoulená drobná postavička s očima jako černá zrníčka. Nejsou to bludičky od vsi: nemrkají zdálky, ale připlouvají blízko, pípají jako ptáčata a zvou.{przejscie_bagna == za_blednicami: Vodí člověka kolem téhož trsu až do svítání a berou, co kdo má v mošně.}{przejscie_bagna == krag_z_soli: Přes sůl nepřejdou, ani když na sebe vezmou tvář někoho nejbližšího.}{przejscie_bagna == za_wilkiem: Drží se dál od bílého vlka.}{przejscie_bagna == z_rozancem: Při modlitbě zhasínají s kvílením – ale něco si vezmou na oplátku.}{przejscie_bagna == z_krzesiwem: Bojí se jisker.}
- starzec_4:
    V srdci boru smekl klobouk.
- pan_lasu_8:
    V srdci boru, kde nikdy neprší, stojí dub větší, než býval Starý dub. Tam stařec v klobouku z mechu sňal klobouk. Pod ním byla kůra. Z čela mu vyrazilo paroží a sám vyrostl nad koruny stromů a nevrhal žádný stín. Sedmdesát let čekal, až k němu někdo z rodu Maćka přijde sám.
- pan_lasu_9:
    Údolí bylo kdysi jeho, od hřbetu až k jezeru. Ustoupil, když první z lidí přišel ke Starému dubu bez sekery a řekl: dál nepůjdeme. Na oplátku si Pán lesa bere jedno dítě za pokolení, o svatojánské noci, a vrací je dřív, než zapomene na svůj domov. Dub byl hranicí, úmluva plotem a kapličky hřebíky.{chata_macka == przy_lesie: Maciek, který o ničem nevěděl, postavil chalupu na straně boru a hned první ráno zatnul sekeru do smrku. Od něho začalo počítání.} Marysii si vzal sám – to on pro ni poslal žitnou bábu. Jestli proto, aby ji ukryl před těmi od vody, nebo pro sebe, to neřekl. Od chvíle, kdy padl plot, kletba probouzí jeho služebníky a táhne je k chalupám. Tentokrát za ni dá zaplatit, protože úmluvu porušila ves, ne on.{pytanie_do_leszego == kim_jest: Byl v údolí dřív, než do něj sestoupili první lidé. Počítá staré stromy pokácené za hranicí a lidi, kteří se mu sami odevzdali. Až napočítá do tisíce, usne nadobro a počítat bude za něj někdo jiný. I on kdysi přišel do boru sám.}{pytanie_do_leszego == gdzie_marysia: Jeho děti nemají stín.}
- zielarka_4:
    Chodili k ní ti od vody – i Pán lesa. Jednou jí ukázal ve vodě chatu v ohni – její vlastní – ale nevěřila. Hoříc proklela ves cizíma rukama: „Kosti vašich dětí budou zpřeráženy a jejich krev vypita.“ Dokud stál Starý dub, slovo bylo silnější než prokletí.{pytanie_do_leszego == o_klatwe: Kletbu sejme ten, kdo Pánu lesa vrátí hranici, nebo ten, kdo zaujme jeho místo. Anebo oheň, jímž začala – ale po něm nezůstane ani bor, ani ves.}{zastaw_u_leszego == zastaw_krzesiwo: Křesadlo, které Maciek našel v jejím popelu, v sobě nese tentýž žár, který ji upálil.}
- tropy_4:
    Přinesl pod dub druhý dřevák Marysie – ten, kterým pohupovala žitná bába. {wilk_przy_jaromirze:Položil ho Jaromirovi k nohám a celou noc u něj ležel.|Odevzdal ho Pánu lesa a sedí u něj, lhostejný jako stromy.}{wilk_pod_debem != nie_ruszal_sie: Každé lidské slovo, které se mu vybaví, mu ubere kus vlčího života.}
- dzieci_1:
    Za svítání vycházejí ze škvíry v dubu a sedají si do kruhu: tucet holčiček s jedinou tváří, ve stejných košilkách a s novými stužkami ve vlasech. Usmívají se způsobně a trpělivě, mluví jedním hlasem, voní trouchem. Když si otec vybere, ostatní se rozsypou v suché listí a kůru.{znak_rozpoznania == po_melodii: Zpívají melodii až do samého konce.}{znak_rozpoznania == po_buzi || znak_rozpoznania == po_skarbie: Všechno, co má dítě vlevo, mají ony vpravo{skarb_dla_corki:, a to, co nosí na krku, mají hladké a nové}.}{pytanie_do_leszego == gdzie_marysia: Nevrhají stín a nikdy nepláčou.}
- pan_lasu_10:
    {marysia_odzyskana:Dodržel slovo: kdo své dítě pozná, vezme si je domů a nikdo ho nezastaví.|Dodržel slovo: kdo vybere špatně, vezme si domů to, co vybral – a pohřbí je jako své.} Ohlásil, že na Dušičky přijde do vsi, aby si to se vsí sečetl do konce.
- tropy_5:
    Pomohl najít pravé dítě, ačkoli služebníci Pána lesa lidem nepomáhají. Zůstal pod dubem, s dlaní Pána lesa na šíji.
- mamuny_4:
    Koncem srpna praly na plochých kamenech na druhé straně jezera malý rubáš. Na Dušičky ho přinesly v družině Pána lesa a volaly nad ním „Marysia“. Samy nevybírají – perou to, co jim přinese voda. Dokud rubáš do svítání neuschne, dá se z něj jméno smýt, ale někdo za to musí zaplatit.{cena_caluna == cena_umowa: Svatojánský dar teď bude nosit i Marysia, až do konce života.}
- tropy_6:
    V noci na Dušičky roztrhl mamunám rubáš se jménem Marysie a ony ho stáhly pod vodu. Antek ho poznal podle kruhu vydřené srsti na přední tlapě.
- dzieci_2:
    To, které si člověk vybere, umírá na kraji boru.{cialo_kopii == spalone: V ohni praská jako smolné dřevo a kouř voní jehličím.}{cialo_kopii == oddane_jagnie: Jagna říká, že je to dřevo, a ví, co se s takovým dělá.}{cialo_kopii == pochowane || cialo_kopii == pod_mlodnikiem: Leží v zemi jako dítě, i když z něj není cítit vůbec nic.}
- pan_lasu_11:
    Dodržuje slovo do písmene – a totéž žádá od druhých. Před Dušičkami se mlha od boru každý večer připlíží k plotům, a prvního listopadu, cestou ze hřbitova v Bukowci, zhasly jediným dechem všechny hromničky{not marysia_odzyskana: kromě té, kterou nesla Hanka}, ačkoli vzduch stál.
- pan_lasu_12:
    {ostatnia_noc == zwrocil_granice:Na Dušičky přišel do vsi s družinou a dostal zpět hranici: sekeru Maćka zaťatou do pařezu Starého dubu a slovo celé vsi. Slovo za slovo.{zoladz_zasadzony: U pařezu vyklíčil žalud ze Starého dubu, zasazený lidskou rukou. Dokud dub roste, Pán lesa už děti nebere.}|{ostatnia_noc == zajal_miejsce:Předal Jaromirovi klobouk z mechu a ulehl u pařezu Starého dubu. „Teď počítej ty.“|Shořel spolu s borem. Poslední, co řekl, znělo: „Sečteno.“}}
- zielarka_5:
    {ostatnia_noc == zwrocil_granice:Služebníci Pána lesa se vrátili k sobě domů; její kletba se zase drží za plotem.|{ostatnia_noc == zajal_miejsce:Její kletba svazovala ruce dřívějšímu Pánu lesa. Ruce nového neznala.|Její kletba začala ohněm a ohněm skončila.}}
- tropy_7:
    {ostatnia_noc == zwrocil_granice:Odešel s družinou do boru.|{ostatnia_noc == zajal_miejsce:Nový Pán lesa ho propustil na svobodu.|{wilk_przy_mnie():Stál u Jaromira, když hořel bor.|Skočil do ohně za svým pánem.}}}
- dzieci_3:
    Na Dušičky šly v družině Pána lesa a držely se za ruce. Žádné z nich nevrhalo stín.{ostatnia_noc == skrzesal_ogien: Jejich broukání se v hořícím boru uprostřed utrhlo a už nezačalo znovu.}
}
