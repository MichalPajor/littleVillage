// ------------------------------------------------------------
//  Rozdział dwunasty – Czuwanie przy zmarłym (strzyga). Wiosna i lato po
//  obławie (pierwsze kroki Marysi, wesele Antka z Jadwisią), w listopadzie
//  umiera stary Wójcik – urodzony z zębami. Czuwanie: sprawdzić zęby albo
//  nie ruszać. O północy zmarły wstaje: przewrócić go twarzą do deski
//  (gryzie Antka), sierp przy szyi (czarna krew, plotki) albo gromnica
//  (wypala się). Pogrzeb: po staremu za murem, po księdzowsku albo z makiem
//  Hanki z medalika. Po księdzowsku bez niczego strzyga wraca po trzech
//  nocach: rozkopać grób albo czuwać przy kołysce (umiera Wójcikowa).
//  W Wigilię na talerzu dla wędrowca zostaje garść mchu.
// ------------------------------------------------------------

=== rozdzial_dwunasty ===
# tlo: wiosna_orka
# rozdzial: Kapitola dvanáctá
# tytul: Bdění u mrtvého
{ uklad_z_mamunami == dar_swietojanski:
    { ekwipunek ? szczenie_psa:
        Toho jara se vesnice vrhla do práce, aby dohnala tu dlouhou zimu. Po mrazech polovina sadů nevykvetla, ale žito vzešlo husté a rovné. Jaromir oral od svítání do soumraku a rezavé štěně se mu pletlo pod nohy v brázdách a štěkalo na vrány, které sedaly na čerstvé hroudy. # pokaz: szczenie
    - else:
        Toho jara se vesnice vrhla do práce, aby dohnala tu dlouhou zimu. Po mrazech polovina sadů nevykvetla, ale žito vzešlo husté a rovné. Jaromir oral od svítání do soumraku.
    }
    Svatojánské noci, když mládež pálila ohně u jezera, odešel Jaromir sám na druhý břeh, k plochým kamenům. Na ten největší položil {sposob_na_odmienca == chrzest_odmienca:dva bochníky chleba|bochník chleba} a věneček z routy, jak slíbil. Neohlížel se. Ale když už byl u rákosí, uslyšel za zády tiché šplouchnutí a potom něco jako povzdech. # pokaz: noc # dalej
- else:
    { ekwipunek ? szczenie_psa:
        Toho jara se vesnice vrhla do práce, aby dohnala tu dlouhou zimu. Po mrazech polovina sadů nevykvetla, ale žito vzešlo husté a rovné. Jaromir oral od svítání do soumraku a rezavé štěně se mu pletlo pod nohy v brázdách a štěkalo na vrány, které sedaly na čerstvé hroudy. # pokaz: szczenie # dalej
    - else:
        Toho jara se vesnice vrhla do práce, aby dohnala tu dlouhou zimu. Po mrazech polovina sadů nevykvetla, ale žito vzešlo husté a rovné. Jaromir oral od svítání do soumraku. # dalej
    }
}
-> lato_w_zapadlinie

= lato_w_zapadlinie
# tlo: lato_podworze
V červenci, když Jaromir kosil louku za stodolou, udělala Marysia první krůčky – pustila se matčiny sukně, přešla přes celý dvůr, potácejíc se jako opilý kohout, a s výskotem mu vpadla do náruče. Hanka se smála tak, že si musela sednout na práh. # pokaz: kroki
{ obietnica_antkowi && oblawa_wilk == wydal_wilka:Antek se celé jaro a léto jejich chalupě vyhýbal. Přišel až po žních, s čepicí v hrsti, a řekl, že si bere Jadwisii z Bukowce a chce mít Jaromira za družbu. O bílém vlkovi se ani jeden z nich nezmínil.|Po žních Antek oznámil, že si bere Jadwisii z Bukowce, a hned požádal Jaromira, aby mu šel za družbu.} Jadwisia byla mírná, pihovatá dívka, která se smála každému Antkovu slovu, i když vůbec nežertoval. Na svatbě Antek tančil s Hankou i s Marysií v náručí, až mu malá usnula na rameni.{ uklad_z_mamunami == oddane_lata: Jakási teta Jadwisie si prohlédla Jaromirovy šedivé spánky a šeptem se Hanky zeptala, jestli byl její muž vdovec, když si ji bral.}
Toho léta postoupilo mlází pod borem o další mez. Smrčky vzcházely v žitě Stašových hustěji než koukol; děti je každé ráno vytrhávaly a druhý den na týchž místech stály nové, už po kolena.
Starý Wójcik každým měsícem uhasínal. Od těch Letnic, kdy z vody vycházely rusalky, skoro nepromluvil. Večer vysedával na lávce a cosi tiše říkal do vody, dokud si ho žena nepřišla odvést. Wójciková se Hance svěřila, že se v červnu, přestože babička Hanky varovala, ať to nikdo nedělá, v noci přikrčila v rákosí a poslouchala, jak mamuny perou. Nad každým rubášem volaly něčí jméno. Zaslechla jen jedno. Nechtěla říct čí, ale od té doby se od muže nehnula ani na krok. # pokaz: wieczor # dalej
-> czuwanie_u_wojcikow

= czuwanie_u_wojcikow
# tlo: czuwanie_izba
Starý Wójcik zemřel v listopadu, v noci po prvním sněhu.
Ráno, když Jaromir vyšel do chléva, už u plotu čekala Wójciková – v černém šátku, s očima opuchlýma od pláče, s růžencem sevřeným v hrsti.
– Jaromirku – řekla – poseď u něj tuhle noc. Nikdo nechce přijít. Lidi po vsi povídají… – zarazila se.
Povídali, a hodně. Že se Wójcik narodil se zuby, jak kdysi vyprávěla matka Staše, která před šedesáti lety pomáhala u toho porodu. Že nikdy nestonal, ani v hladových zimách. Že nákaza se vyhýbala jeho chlévu, když sousedům padaly krávy jedna za druhou. A že tělo, ačkoli leželo už od svítání, vůbec nechladlo.
Večer se v chalupě Wójciků sešlo několik mužů – Jaromir, Antek, starý Staš, který si umanul přijít, ačkoli se sotva držel na nohou – a pár žen na zpívání. Zrcadlo zakryli plátnem, vodu z džberů vylili za práh a okno pootevřeli na šířku dlaně, aby duše mohla odejít. V jizbě bylo cítit vosk, vlhkou vlnu a cosi nasládlého, z čeho se zvedal žaludek.
Wójcik ležel na prkně u stěny, v lněné umrlčí košili, s rukama složenýma na prsou. Tváře měl narůžovělé jako živý člověk. Víčka se nechtěla zavřít a zpod řas se leskla bělma. A rty… rty se lehce rozevíraly, jako by je cosi roztlačovalo zevnitř. # pokaz: wargi
# pytanie: Co udělá Jaromir?
*   [Nadzvednout mrtvému ret a podívat se, co je pod ním.]
    ~ sprawdzil_zeby = true
    Jaromir přistoupil k prknu a opatrně, dvěma prsty, pozvedl mrtvému horní ret.
    Zuby. Dvě řady zubů – jedna za druhou, drobných a ostrých jako u štiky. # pokaz: zeby
    Kdosi za ním zasténal. Starý Staš se třikrát pokřižoval a ženy přerušily píseň uprostřed slova.
    – Dvě duše – zašeptal Staš. – Moje máti, dej jí Pánbůh věčnou slávu, mu babila, když se rodil. Říkala, že ten kluk měl zuby jako štička, a ona pak do rána proklečela, protože se jí zdálo, že… – zarazil se. – Jedna šla k Bohu. A druhá… druhá je pořád tady. # dalej
*   [Nesahat na mrtvého – to se nepatří.]
    – Nechte ho – řekl Jaromir, když Antek natáhl ruku k obličeji mrtvého. – To se nepatří.
    Antek stáhl ruku. Ženy zpívaly dál, muži se posadili ke stěně a už nikdo k prknu nezvedl oči. Jaromir však celý večer cítil, že je mrtvý pozoruje zpod nedovřených víček. # pokaz: powieki # dalej
-   -> o_polnocy

= o_polnocy
# tlo: polnoc_strzyga
Kolem půlnoci začaly svíce čadit. Plameny se zmenšily a hořely namodrale jako bludičky nad bažinou. Ženy zpívaly stále tišeji, až nakonec zmlkly.
Vtom mrtvému zacukaly prsty. # pokaz: palce
Nejdřív jeden, potom druhý. Nehty tiše zaškrábaly o prkno. Víčka se pomalu nadzdvihla a odhalila oči kalné jako u leklé ryby. Ústa se rozevřela víc a z hrdla se vydral zvuk – ne hlas, jen dlouhý, svištivý povzdech, jako když někdo vytažený zpod ledu lapá po prvním nadechnutí.
Starý Wójcik se začal zvedat. # pokaz: wstaje
Jedna z žen vykřikla a vrhla se ke dveřím. Staš stál jako přikovaný a Antek popadl Jaromira za paži.
~ zapiski += strzyga_1
# pytanie: Co udělá Jaromir?
*   [Převrátit ho tváří k prknu.]
    ~ polnoc_strzygi = na_twarz
    – Obrátit ho na tvář! – vykřikl Staš. – Dokud nevstal!
    Jaromir a Antek se vrhli na mrtvého. Byl těžký jako kámen, a přesto sebou zmítal silou, jakou neměl ani zaživa. Když ho převraceli na břicho, prudce otočil hlavu a zaťal zuby do Antkovy dlaně. Antek zařval, ale nepustil. # pokaz: twarz
    Přitiskli ho tváří k prknu a drželi ho oba, dokud za oknem nezakokrhal první kohout. Tělo ochablo a už se nepohnulo.
    Ráno Hanka Antkovi omyla ruku kořalkou a ovinula ji plátnem. Rána byla mělká, ale celou zimu se nechtěla zahojit. # dalej
*   [Přiložit mu srp ke krku.]
    ~ polnoc_strzygi = sierp_przy_szyi
    Na stěně u dveří visel srp. Jaromir ho strhl z kolíku a přiložil mrtvému ostří ke krku, těsně pod bradu.
    Wójcik sebou škubl, jako by ho opařili, a klesl zpátky na prkno. Ostří prořízlo kůži – mělce, sotva škrábnutím – a z rány vytekl pramínek krve. Černé a husté jako smůla. V jizbě to zapáchlo hnilobou. # pokaz: sierp
    Jaromir mu držel srp u hrdla až do svítání. Ruce mu zdřevěněly tak, že necítil prsty.
    Ráno už půl vsi vědělo, že u Wójciků mrtvý krvácel. Do poledne to věděla celá. # dalej
*   { ekwipunek ? gromnica } [Zapálit hromničku a vložit mu ji do dlaní.]
    ~ polnoc_strzygi = gromnica_w_dloniach
    Jaromir sáhl po hromničce, kterou mu Hanka vtiskla do rukou, když odcházel z domu, zapálil ji od čadící svíce a vložil ji mrtvému do dlaní.
    Vosk zasyčel, jako by kápl na rozpálený plech. Wójcik znehybněl. Tvář se mu na okamžik změnila – změkla, jako by si na něco vzpomněl – a z rozevřených úst vyšel tichý šepot: # pokaz: gromnica
    – Kaśko…
    ~ ekwipunek -= gromnica
    Potom zavřel oči a klesl na prkno. Hromnička mu hořela v dlaních do rána, až dohořela docela. # dalej
-   -> pogrzeb_wojcika

= pogrzeb_wojcika
# tlo: cmentarz_bukowiec
Ráno přijel farář z Bukowce. Všechno mlčky vyslechl, se rty stále pevněji sevřenými, a když Staš začal mluvit o tom, jak se kdysi pochovávali takoví jako Wójcik – tváří k zemi, se srpem nad hrdlem, s mákem v rakvi – přerušil ho v půli věty.
– V posvěcené zemi pohanské obřady nebudou – řekl tvrdě. – Buď ho pochováte jako křesťana, nebo si ho pochováte sami. Za hřbitovní zdí. # pokaz: ksiadz
Wójciková pohlédla na Jaromira. Byla kmotrou jeho dcery a podruhé od včerejška ho o něco prosila – tentokrát ne slovy, ale očima.
# pytanie: Jak pochovají Wójcika?
*   [Pochovat ho postaru – za hřbitovní zdí.]
    ~ pochowek_wojcika = pochowany_za_murem
    Pochovali ho ve třech – Jaromir, Antek a Staš – za zdí hřbitova v Bukowci, u rozcestí. Tváří k zemi. Nad hrdlo mu Jaromir zarazil srp, ostřím ke krku, a do rakve Wójciková sama nasypala hrst máku a cosi si přitom šeptala. # pokaz: za_murem
    Farář nepřišel. Lidé z farnosti na ně hleděli zdálky jako na malomocné. Vdova celou cestu zpátky nepromluvila ani slovo, ale když se loučili u její chalupy, chytila Jaromira za ruku a pevně ji stiskla.
    – Děkuju ti, synku – zašeptala. – Teď už si odpočine. A já taky. # dalej
    -> spokojna_zima
*   [Pochovat ho, jak chce farář, v posvěcené zemi.]
    ~ pochowek_wojcika = pochowany_po_ksiedzowsku
    Pochovali ho na hřbitově v Bukowci, v posvěcené zemi, tváří k nebi, s růžencem v dlaních. Farář odsloužil mši, pokropil rakev svěcenou vodou a lidé se rozešli domů s úlevou, že všechno proběhlo, jak se patří. # pokaz: poswiecona
    Jen starý Staš, když hrobníci zasypávali hrob, zavrtěl hlavou a řekl tiše, sám pro sebe:
    – Ten tam nevydrží. # dalej
    -> trzecia_noc
*   { mak_w_medaliku } [Pochovat ho, jak chce farář – ale s mákem od Hanky v rakvi.]
    ~ pochowek_wojcika = pochowany_z_makiem
    Když rakev vynášeli z chalupy, Hanka přistoupila blíž a otevřela medailonek, který nosila na krku od toho léta s polednicí. Vysypala mrtvému na prsa sušený mák – tentýž, který jí Jaromir kdysi položil do dlaně, když seděl na plotě pod rudým měsícem.
    – Spi – zašeptala. – Mák uspí i takové, jako jsi ty. # pokaz: mak
    ~ mak_w_medaliku = false
    Wójcik spočinul v posvěcené zemi, tváří k nebi, s růžencem v prstech a se špetkou máku na prsou. Na prahu Wójciků však zůstalo pár zrníček a farář je uviděl. Po pohřbu si zavolal Hanku do sakristie. Vyšla odtamtud bledá a Jaromirovi neřekla, co slyšela – jen tolik, že až do Velikonoc nesmí k přijímání. Ženské z Bukowce se od ní v lavici odtahovaly. Hanka zavřela prázdný medailonek a už ho nikdy neotevřela. # pokaz: poswiecona # dalej
    -> spokojna_zima

= spokojna_zima
# tlo: cmentarz_bukowiec
~ zapiski += strzyga_2
{ pochowek_wojcika == pochowany_za_murem:
    Po pohřbu napadl sníh a ležel měkce až do února. Hrob za hřbitovní zdí do jara zarostl trávou a nikdo kromě Wójcikové k němu nechodil. Ona přicházela každou neděli, sama, a sedávala na kameni u rozcestí – dokud v zimě neulehla. # pokaz: wdowa
- else:
    Po pohřbu napadl sníh a ležel měkce až do února. Na hrob v Bukowci stavěla Wójciková každou neděli svíčku, dokud neonemocněla, a Hanka na něj položila věneček ze sušených máků. # pokaz: swieczka
}
Starý Wójcik už nevstal. Jen psi, když chodili kolem jeho chalupy, ještě dlouhé měsíce stahovali ocasy. # dalej
-> boze_narodzenie

= trzecia_noc
# tlo: strzyga_okno
Třetí noc po pohřbu, ještě před půlnocí, uslyšela Hanka na dvoře vrzání sněhu. Vyšla ven, než Jaromir stačil vstát, a vrátila se s Wójcikovou. Stařena měla kožich přehozený jen tak přes holá ramena a růženec omotaný kolem dlaně tak těsně, že se jí korálky zaryly do kůže.
– Vrátil se – vzlykala. – Stál pod oknem. Tiskl obličej ke sklu a volal mě jménem. Dvě noci volal. A dneska… dneska se ptal po malé.
Hanka zbledla a bezděčně pohlédla na kolébku, v níž spala Marysia. Potom beze slova začala Wójcikové stlát na lavici u pece, ale stařena ji chytila za ruku.
– Když mě nenajde doma, přijde sem – zašeptala a odešla zpátky do noci.
Té noci Jaromir oka nezamhouřil. Seděl u kolébky se sekerou{ siekiera_dziadka: po dědečkovi} na kolenou. K ránu, těsně před kuropěním, uslyšel tichý zvuk, podobný dechu hned za okenní tabulkou. Zvedl hlavu. Na skle zvenčí vykvetla mlžná skvrna. # pokaz: oddech
Za oknem stál starý Wójcik. V umrlčí košili olepené hlínou, s kalnýma očima leklé ryby. Ústa měl otevřená a Jaromir viděl dvě řady zubů a po bradě mu stékal tmavý pramínek. # pokaz: strzyga
Díval se na kolébku.
# pytanie: Co udělá Jaromir?
*   [Rozkopat jeho hrob a pochovat ho postaru.]
    ~ trzy_noce = rozkopany_grob
    -> rozkopany_grob_wojcika
*   [Bdít u kolébky až do svítání – ať přijde, jestli si troufne.]
    ~ trzy_noce = czuwanie_przy_kolysce
    Jaromir vstal, postavil se mezi okno a kolébku a zvedl sekeru. Wójcik na něj dlouho hleděl, ani nemrkl. Potom se usmál – široce, až se mu všechny zuby zablýskly v šedém světle – a odešel od okna. # pokaz: odszedl
    K nim už nikdy nepřišel. Ale sotva se rozednilo, běžela Hanka k Wójcikové – a vrátila se, co by otčenáš odříkal, bez šátku, s dlaněmi přitisknutými k ústům. Vdova ležela ve své jizbě na posteli, s rukama složenýma na prsou a s klidnou tváří. Na krku měla dva drobné červené vpichy, jako od šídla.
    ~ zapiski += strzyga_2
    Pochovali ji vedle muže. Tentokrát postaru – farář, když uviděl její krk, neprotestoval ani slovem. # dalej
    -> boze_narodzenie

= rozkopany_grob_wojcika
# tlo: cmentarz_bukowiec
Ještě téhož dne po setmění šli Jaromir a Antek s lopatami na hřbitov v Bukowci. Rozkopali čerstvý hrob, otevřeli rakev – Wójcik v ní ležel růžový a plný, s krví na rtech – a obrátili ho tváří k zemi. Nad hrdlo zarazili srp a do rakve nasypali mák. Zasypali hrob a vrátili se před svítáním, aniž spolu promluvili jediné slovo. # pokaz: rozkop
~ zapiski += strzyga_2
Wójcik už víckrát nepřišel. Ale farář, když uviděl čerstvě rozrytý rov, proklel z kazatelny „bezbožníky, kteří znesvětili hrob“, a Jaromir ještě dlouhá léta cítil v kostele pohledy lidí z Bukowce. # dalej
-> boze_narodzenie

= boze_narodzenie
# tlo: wigilia_stol
~ zapiski += mamuny_3
~ zapiski += starzec_3
{ trzy_noce == czuwanie_przy_kolysce:
    Chalupa Wójciků stála celou zimu prázdná. Nikdo ji nechtěl koupit ani do ní třeba jen nahlédnout a děti ji obcházely velkým obloukem.
- else:
    Wójciková té zimy onemocněla na plíce, ale přestála to. V její chalupě každou noc hořela svíce v okně k jezeru. # pokaz: swieca
}
{ ekwipunek ? szczenie_psa:
    Marysia už říkala pár slov, a nejhlasitěji „táta“. Rezavé štěně za ní všude chodilo a spalo pod kolébkou, s čenichem u příček. # pokaz: szczenie
- else:
    Marysia už říkala pár slov, a nejhlasitěji „táta“.
}
Když usínala, broukala si někdy sama pro sebe pár tónů – nahoru a dolů, jako voda přelévaná ze džbánu do džbánu. Takovou melodii neznala ani Hanka, ani její matka.
Na Štědrý večer prostřela Hanka jako každý rok stůl o jeden talíř navíc – pro zbloudilého poutníka – a položila na něj oplatku. Nikdo nepřišel. Ale ráno, když sklízela ze stolu, ležela na tom talíři místo oplatky hrst mechu. Vlhkého a zeleného jako v máji. # pokaz: mech # dalej
-> rozdzial_dwunasty_ciag_dalszy


// Koniec rozdziału dwunastego – dalej rozdział trzynasty.
=== rozdzial_dwunasty_ciag_dalszy ===
# ozdobnik
_Konec dvanácté kapitoly._ # dalej
-> rozdzial_trzynasty
