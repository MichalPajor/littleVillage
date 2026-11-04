// ------------------------------------------------------------
//  Rozdział pierwszy – Lato. Dzieciństwo Jaromira, około pół
//  wieku po prologu. Przebieg zależy od zakończenia prologu:
//    figurka_u_staruchy – dom na pagórku obok Stasia, milczący ojciec
//                         (z psem żyje jeszcze babka Marianna);
//    inaczej            – chata dziadka Maćka (las / mokradła / jezioro),
//                         ojciec opowiada legendy jak bajki.
// ------------------------------------------------------------

=== rozdzial_pierwszy ===
// Czy Maciek miał krzesiwo – babka Marianna może je oddać wnukowi w rozdziale 4.
~ krzesiwo_dziadka = ekwipunek ? krzesiwo
// Nowy bohater – Jaromir zaczyna z pustym tobołkiem (przedmioty Maćka zostają w prologu).
~ ekwipunek = ()
# nowy_tobolek
# tlo: zapadlina_lato
# rozdzial: Kapitola první
# tytul: Léto
Zapadlina, v níž Jaromir vyrůstal, už byla jinou vsí než ta, do které kdysi sestoupil s uzlíkem jeho dědeček. Domů přibylo – bylo jich teď devět, rozesetých po svazích a loukách jako zrna rozhozená hrstí do role. Les trochu ustoupil sekerám, pole sahala dál a přes mokřady vedla pořádná lávka z dubových klád. U cest stálo množství kapliček, vždy ozdobených čerstvými květinami. Mlha měla to údolí pořád ráda a v létě v něm zůstávala déle než do východu slunce. Změnilo se i okolí: za Bukovým hřbetem, hodinu chůze od Zapadliny, vyrostl Bukowiec – osada větší a zámožnější, s mlýnem, krčmou a školou, a hned vedle školy – s dřevěným kostelíkem, u něhož se usadil starý farář. Do města se už jezdilo jen na jarmarky a velké poutě.
{ figurka_u_staruchy:
    Jaromir bydlel v chalupě na pahorku, vedle usedlosti starého Staše, s nímž jeho otec vyrůstal jako s bratrem. Dům byl nevelký, ale teplý, s bílenými stěnami a rákosovou střechou, a z prahu bylo vidět celou Zapadlinu – pole, louky, jezero a tmavou čáru boru na východě.
- else:
    { chata_macka:
        - przy_lesie: Jaromir bydlel v chatě pod lesem, v téže, kterou postavil dědeček Maciek. Otec k ní přistavěl druhou jizbu a stodolu. Pod oknem rostla jabloň, zasazená v den synova narození, a ze severní strany stály divoké švestky, které často shazovaly malé, zelené, nezralé plody. Za nízkým plůtkem začínal bor – v létě voněl pryskyřicí a houbami a za parných odpolední dával stín, v němž se dalo proležet třeba až do soumraku.
        - przy_mokradlach: Jaromir bydlel v chatě u mokřadů, v téže, kterou postavil dědeček Maciek – na kamenné podezdívce, s níž za půl století nepohnula ani voda, ani mráz. Otec k ní přistavěl druhou jizbu a stodolu. Pod oknem rostla jabloň, zasazená v den synova narození, a ze severní strany stály divoké švestky, které často shazovaly malé, zelené, nezralé plody. Za nízkým plůtkem se táhly louky, po nichž chodili čápi, a za soumraku se z tůní ozýval žabí koncert, tak hlučný, že přehlušil i cvrčky.
        - else: Jaromir bydlel v chatě u jezera, v téže, kterou postavil dědeček Maciek. Otec k ní přistavěl druhou jizbu a stodolu. Pod oknem rostla jabloň, zasazená v den synova narození, a ze severní strany stály divoké švestky, které často shazovaly malé, zelené, nezralé plody. Od prahu k vodě bylo sotva pár desítek kroků a v létě je chlapec překonával během tolikrát za den, že si v trávě vyšlapal vlastní pěšinku.
    }
}
Otec, Dobrosław, byl už tehdy muž v letech, s šedivějícími vousy a rukama rozpraskanýma od práce. { figurka_u_staruchy: Mluvil málo a smál se ještě méně. Když večer usedal na práh, dlouho hleděl k mokřadům, jako by tam něco vyhlížel. Syna miloval po svém – mlčky, těžkou rukou na rameni a nejlepším kouskem masa, který mu přisouval do misky. | Rád žertoval a večer vyprávěl příběhy, které sám slyšel od svého otce – o stvůrách z bažin a o bylinkářce od jezera. Jaromir je poslouchal se zatajeným dechem, přestože věděl, že jsou to jen pohádky. }
Matka, Agnieszka, byla o dobrých patnáct let mladší než její muž. Voněla chlebem a kouřem z pece, zpívala při každé práci a nikdy se nedokázala dlouho zlobit.
{ figurka_u_staruchy && los_psa == oswojony:
    V koutě jizby, na stoličce, vysedávala babička Marianna, shrbená a tichá. Občas pohladila vnuka po hlavě a dívala se na něj tak, jako by v něm viděla někoho jiného.
}
Doma chlapec býval málokdy. Léto patřilo jemu – celé, od prvních veder až do žní – a jeho dny vypadaly skoro stejně, a přece se žádný nepodobal tomu předchozímu. # dalej
-> poranek

= poranek
# tlo: poranek
Budil ho kohoutí křik a paprsek světla, který se prodíral škvírou v okenici a kladl se mu zlatým proužkem na tvář. Chvíli ještě ležel pod peřinou a poslouchal, jak se matka točí u pece – jak bublá voda v hrncích, jak praská přikládaný oheň pod plotnou, jak vrzají prkna pod jejími kroky. Z jizby se linula vůně mléka a čerstvě upečeného chleba.
Pak si vzpomněl, že je léto, a vyletěl z postele jako opařený.
Snídal skoro vestoje. Tlustý krajíc namazaný máslem, hrnek mléka rovnou od krávy, ještě teplého, někdy tvaroh. Matka s úsměvem kroutila hlavou.
– Tak se posaď, synku. Nikdo ti to nesebere. Na hraní s dětmi ti den ještě vystačí.
# pytanie: Co udělá Jaromir?
*   [Sednout si a v klidu se najíst, jak matka prosí.]
    Vzdychl, usedl na kraj lavice a za odměnu dostal polibek na čelo a lžíci medu na chleba. Jedl rychle, ale snědl všechno, a když byl hrnek prázdný, zavolal jen: – Jdu k sousedům! – a už byl pryč. # pokaz: jaromir
    -> poranek_dalej
*   [Popadnout krajíc a vyběhnout ven.]
    -> poranek_bieg

= poranek_bieg
Ale on už si utíral ústa rukávem a byl u dveří. Než matka stačila říct, ať dává pozor, jen křikl: – Jdu k sousedům! – a už uháněl přes dvůr a plašil slepice, které mu s kdákáním utíkaly zpod nohou. # pokaz: jaromir
-> poranek_dalej

= poranek_dalej
Za úsvitu byla tráva studená, mokrá od rosy, a boty mu rychle promokaly. Voněla tak, jak voní jen v tuto hodinu – svěže, zeleně, trochu jako okurka rozkrojená napůl. Nad loukami ještě visely cáry mlhy, ale slunce je už rozhánělo a v každé kapce na stéblech se rozžínala drobounká jiskra. Skřivani se vznášeli k nebi a zpívali tak vysoko, že nebylo možné je zahlédnout.
U Stašových už na něj čekali. Franek, nejstarší z hospodářových vnuků, byl urostlý a o čtyři roky starší než Jaromir. Jeho bratr Antek, o dvě zimy mladší, se šťoural klackem v zemi a hloubil stružku, kterou chtěl převést vodu z jedné kaluže do druhé. Za chvíli od jezera přibíhala Hanka, kovářova dcera, s copem poskakujícím na zádech. # pokaz: dzieci
– Co dneska budeme dělat? – ptal se Franek, ačkoli všichni věděli, že stejně rozhodne on sám. # dalej
-> wojna

= wojna
# tlo: laka_bitwa
Nejčastěji se začínalo válkou.
Každý měl svůj meč – oloupaný klacek z lísky nebo z vrby, se zašpičatělým koncem. Jaromir ho nosil zastrčený za opaskem, a když se s ním musel rozloučit, vždycky ho odložil na jeho místo: do rohu stodoly. V celé vsi nebylo rovnější zbraně – hladké od ustavičného držení a tmavé od potu dlaní. { figurka_u_staruchy: Otec mu beze slova pomohl meč naostřit, večer u prahu. | Otec mu pomohl ten meč vyřezat a smál se, že s ním vypadá jako rytíř z jarmarečního obrázku a že s takovou zbraní by se dal porazit i drak. }
Nepřítelem byl plevel. Na mezích a u příkopů rostly jeho nesčetné armády: smldníky s okolíky velkými jako talíře, bodláky naježené fialovými hlavami a kopřivy, které sahaly až po uši. Děti vbíhaly na louky s pokřikem, až se plašili vrabci. Klacky svištěly vzduchem, lodyhy praskaly se šťavnatým křupnutím a ostnaté palice létaly kolem dokola. # pokaz: bitwa
Po každé bitvě přišel čas na léčení ran. Nezřídka to byla kolena sedřená do krve, lýtka posetá puchýřky od žahavých kopřiv, poškrábaná předloktí a dlaně. Hanka věděla na všechno radu: na žahance přikládala listy jitrocele a kázala je držet, dokud to nepřestane štípat. Nikdo neplakal – no, snad občas Antek, ale jen maličko, a hned potom předstíral, že mu do očí stéká pot.
Pak padali do trávy, udýchaní a šťastní, a leželi na zádech s rozhozenýma rukama. Nad nimi pluly bílé mraky, v nichž každé z dětí vyčetlo něco jiného – koně, loď, starou babu s koštětem, medvěda. Vonělo to rozpálenou zemí, heřmánkem a pomačkaným býlím. Kdesi blízko bzučel čmelák a kobylky vystřelovaly zpod rukou jako jiskry z ohně. # dalej
-> luki

= luki
# tlo: luki
Když je meče omrzely, přišly na řadu luky.
~ ekwipunek += nozyk
Nejlepší byly z lísky, která rostla hustě na kraji lesa – rovná, ohebná a pevná. Franek z ní vybíral větev vhodné délky – takové, jak byl sám vysoký – a Jaromir ji ořezával nožíkem, který dostal od otce k jmeninám. Bylo třeba dávat pozor, aby na jednom místě neubral příliš dřeva, protože pak luk praskl při prvním natažení. Na tětivu šel silný provázek, ukradený matce z košíku, nebo – v lepších dnech – kus ševcovské dratve.
Šípy dělali také z lísky, ale mnohem tenčí. Hroty neměli – zato špičku přiostřili tak, že píchala jako trn, a na druhý konec – letky z papíru nebo z peří sbíraného po dvorech po celé vsi.
Terčem byl snop slámy postavený na mezi, s kruhem namalovaným sazemi. Tětiva bzučela u ucha jako vosa, šíp krátce svistl a pak se ozvalo tupé „puk“, když se zaostřený konec zabodl do slámy. Střely letěly docela rovně, padaly do země nebo do terče a někdy se vznesly vysoko k nebi. Nejlépe to šlo Hance. Mhouřila jedno oko, vystrkovala špičku jazyka a ani jednou neminula – a chlapci, i když by to za nic na světě nepřiznali, ji za to obdivovali víc než za cokoli jiného. # pokaz: hanka
# pytanie: Utká se Jaromir s Hankou?
*   [Ano – vyzvat ji k soutěži.]
    ~ celny_strzal = true
    Prohrával, samozřejmě. Hanka trefovala bez chybičky a jeho šípy padaly nejčastěji do obilí. Ale druhý den chodil na mez ještě před ní a cvičil, až mu dřevěněly prsty.
    -> luki_dalej
*   [Ne – cvičit sám, stranou od ostatních.]
    Odcházel na konec meze a střílel do starého pařezu, až ho bolelo rameno. Nikdo neviděl, jak často minul, a tak to bylo nejlepší.
    -> luki_dalej

= luki_dalej
Jednou Jaromir trefil přímo doprostřed kruhu. Po zbytek dne chodil tak pyšný, že zapomněl i na oběd, a matka ho musela mnohokrát volat. # pokaz: trafienie # dalej
-> lato_baza

= lato_baza
# tlo: baza
Nejdůležitějším místem na světě však byla skrýš.
Stála – nebo spíš visela – v koruně starého bezu, který rostl na kraji louky, tak rozložitý, že by se v jeho stínu schovalo i několik krav. Stavěli ji jedno dlouhé léto. Prkna snášeli, odkud se dalo: z rozbořeného chlívku, z plotu, který už nikdo nespravoval, {figurka_u_staruchy:ze stodoly Staše, který kroutil hlavou, ale nebránil jim|ze stodoly otce Jaromira, který dělal, že nic nevidí}. Přitloukali je hřebíky narovnanými kamenem na kameni, a kde jich nebylo dost, vázali je provázkem. Nahoru vedl žebříček z příček přivázaných ke kmeni. Ve skrýši vždycky vonělo prohřáté dřevo a bezový květ, tak sladce, že se po hodině točila hlava. Škvírami mezi prkny pronikaly tenké pruhy slunce, v nichž tančil prach, a když foukal vítr, celá koruna se houpala a vrzala, jako by skrýš byla loďkou na rozbouřené vodě.
Uvnitř se vešlo pět, když se natěsnali – čtyřem tam tedy bylo docela pohodlně. Měli tam všechno, co je potřeba: truhličku na poklady, v níž ležely barevné kamínky, pírka a mušle, a pro případ přepadení – toulec se šípy, luk a „meče“.
# pytanie: Co Jaromir schová do truhličky na poklady?
*   [Mušličku z jezera, bílou jako mléko.]
    ~ skarb_jaromira = muszelka
    Zabalil ji do lopuchového listu a schoval na samé dno.
    -> baza_dalej
*   [Sojčí pírko, modré jako nebe po bouřce.]
    ~ skarb_jaromira = pioro
    Položil je navrch, aby zazářilo hned, jak se otevře víko.
    -> baza_dalej
*   [Rezavý hřebík, který – jak tvrdil – kdysi vypadl ze skutečné rytířské zbroje.]
    ~ skarb_jaromira = gwozdz
    Zabalil ho do hadříku jako relikvii. Franek vyprskl smíchy, ale Antek se na hřebík díval s úctou.
    -> baza_dalej

= baza_dalej
Nejkrásněji tam bylo za lijáku. Letní bouřka přicházela náhle, temným valem zpoza lesa, a než děti stačily doběhnout domů, padaly první těžké kapky. Tehdy se vyšplhali do skrýše a seděli schoulení pod prkennou střechou, kterou stejně trochu zatékalo. Listí šumělo jako moře, které nikdo z nich nikdy neviděl, hromy se převalovaly nad vsí a vzduch voněl deštěm, mokrým dřevem a kvetoucím bezem. Po bouřce se louka kouřila a na nebi se klenula duha. # pokaz: burza # dalej
-> lato_jezioro

= lato_jezioro
# tlo: jezioro_lato
Když slunce stoupalo k zenitu a nad poli se začal chvět žár, celá tlupa vyrážela k jezeru. Běželi o závod přes louku, cestou ze sebe strhávali košile a s vřískotem vbíhali do vody, až cákance létaly k nebi. U břehu bylo mělko a písčitě, voda prohřátá sluncem jako ve škopku a nohy lechtaly drobné rybky. Franek se předváděl skoky šipkou z vyvráceného kmene, zatímco Antek seděl na mělčině a chytal do dlaní pulce. Vonělo to sítím a rozehřátým bahnem a nad vodou se míhaly vážky. # pokaz: kapiel
{ figurka_u_staruchy: Jaromir nikdy nevcházel hlouběji než po pás. Otec mu to jednou zakázal, krátce a tak přísně, že se chlapec neodvážil zeptat proč. Stejně rozhodně mu zapověděl chodit k mokřadům a k rákosí na západní straně, kde prý kdysi stála nějaká chata. | Na západním břehu, v rákosí, ještě trčely ze země černé pahýly zuhelnatělých klád. Děti se jimi navzájem strašily a vyprávěly si příběh o upálené bylinkářce – tentýž, který večer co večer spřádal otec Jaromira – ale za plného slunce se nikdo nebál. }
{ figurka_u_staruchy:
    Toho dne Franek doplaval na hlubokou vodu a zavolal, ať se k němu Jaromir přidá.
    # pytanie: Poslechne Jaromir otce?
    *   [Zůstat u břehu.]
        Zavrtěl hlavou a z mělčiny se nehnul. Z dálky k němu doletělo: „Strašpytel!“, ale za chvíli na to všichni zapomněli a cákali se dál.
        -> jezioro_dalej
    *   [Doplavat k Frankovi.]
        ~ odwaga_jaromira = true
        Udělal krok, potom druhý. Voda mu sáhla po prsa, najednou byla ledová a cosi slizkého se mu otřelo o lýtko. Couvl tak rychle, až se zakuckal. Nikomu o tom neřekl – a už vůbec ne otci.
        -> jezioro_dalej
- else:
    Toho dne se Franek vsadil, že nikdo nebude mít odvahu dotknout se zuhelnatělých klád.
    # pytanie: Přijme Jaromir sázku?
    *   [Dotknout se jich – vždyť není žádný strašpytel.]
        ~ odwaga_jaromira = true
        Prodral se rákosím a položil dlaň na nejvyšší z nich. Dřevo bylo studené, ačkoli slunce pražilo od rána, a chlapec ucukl rukou rychleji, než chtěl. Všichni to uznali za největší odvahu toho léta.
        -> jezioro_dalej
    *   [Zůstat s ostatními na písku.]
        Pokrčil rameny a nehnul se z místa. Franek šel sám, dotkl se černého dřeva špičkou prstu a vrátil se během, přičemž předstíral, že vůbec nespěchá.
        -> jezioro_dalej
}

= jezioro_dalej
Po koupání se sušili v trávě, leželi na břiše a jedli, co dal les: lesní jahody, borůvky, z nichž černaly zuby i jazyky, a kyselé listy šťovíku, které žvýkali pro osvěžení. Někdy kdosi přinesl z domu okurku nebo kus sýra a dělili se o to spravedlivě, na tolik dílů, kolik bylo úst. V sadu u Wójciků zrály třešně a hospodář po obědě spal tak tvrdě, že neslyšel, když někdo třásl větvemi.
Vedro se kladlo na všechno jako teplá peřina. Cvrčci hráli tak hlasitě, jako by na jejich muzice záviselo, zda slunce vůbec zapadne. Od pokosů, které sedláci obraceli hráběmi, se nesla vůně sena a od meze vanula sladkost mateřídoušky a jetele. Včely bzučely v lipách, motýli usedali na květy a čas plynul tak pomalu, že den jako by neměl konce. # dalej
-> lato_wieczor

= lato_wieczor
# tlo: wieczor_lato
A přece vždycky skončil. Slunce sklouzávalo za jezero, stíny se na louce prodlužovaly, až sahaly od jednoho jejího kraje k druhému, a nebe nad vodou nabíralo barvu zralých malin. Vzduch chladl a voněl posečenou trávou a kouřem z komínů a z mokřadů se ozývaly první žáby – nejdřív jedna, potom desítky, až kvákalo celé údolí jako jeden velký sbor. Ze dvorů, jednoho po druhém, se pak začalo nést volání.
– Jaroooomire! Pojď doooomů! # pokaz: matka
# pytanie: Vrátí se Jaromir hned?
*   [Běžet hned domů.]
    Hlas matky se nesl celou vsí. Chlapec nedal na sebe čekat: rozloučil se s ostatními, domluvil se na zítřek – vždycky na zítřek, vždycky u dřevěného kolíku, který značil hranici otcova pole, hned po snídani – a běžel přes louku, na níž se rozsvěcovaly první světlušky. # pokaz: jaromir
    -> wieczor_dalej
*   [Ještě chvíli si hrát.]
    -> wieczor_zwlekanie

= wieczor_zwlekanie
Hlas matky se nesl celou vsí. Chlapec dělal, že neslyší, dokud matka nezavolala podruhé – a napotřetí se v jejím hlase objevil tón, který nevěstil nic dobrého. Pak se rozloučil s ostatními, domluvil se na zítřek – vždycky na zítřek, vždycky u dřevěného kolíku, který značil hranici otcova pole, hned po snídani – a běžel přes louku, na níž se rozsvěcovaly první světlušky. # pokaz: jaromir
-> wieczor_dalej

= wieczor_dalej
Vracel se špinavý, s trávou ve vlasech, s hlínou za nehty a s koleny ve strupech. Matka vzdychala, brala ho za ucho a vodila ke škopku s vodou, a potom před něj stavěla misku míchaných vajec nebo kyselé mléko s bramborami.
{ figurka_u_staruchy:
    Otec seděl naproti a mlčel. Když dojedl, dělal vždycky totéž: vstal, přesvědčil se, jestli jsou dveře dobře zajištěné závorou, a teprve potom šel spát.
    { los_psa == oswojony:
        Babička Marianna se pak zvedala ze stoličky, dělala vnukovi křížek na čele a šeptala cosi, čemu chlapec nerozuměl.
    }
- else:
    Otec, byl-li večer teplý, vynášel lavici před chatu a vyprávěl. O dědečkovi Maćkovi, který sestoupil do Zapadliny jen se sekerou, o stvůře z bažin, o hlasu, který volal od vody. Jaromir obvykle začal usínat v půli, s hlavou na kolenou otce, a konec nikdy neslyšel.
}
Pak ležel na slamníku pod oknem a naslouchal noci. Žáby kvákaly v tůních, ve stáji odfrkl kůň, kdesi daleko zaštěkal pes. Škvírou v okenici byly vidět hvězdy – husté jako rosa na louce.
Usínal s úsměvem a myslel na to, že zítra ho zase čeká teplý letní den, plný her od úsvitu do soumraku. # dalej
-> zloty_dzien

= zloty_dzien
# tlo: zapadlina_lato
Takových dnů bylo bez počtu. V paměti se mu potom slévaly v jediný dlouhý zlatý pruh, vonící senem a rozehřátou zemí, plný slunce, smíchu a bzučení včel. Léto ubíhalo a Jaromir rostl – stále výš dosahoval na větve bezu, stále dál doletěl jeho šíp, stále méně potřeboval žebříček, aby vyšplhal do skrýše. # dalej
-> rozdzial_pierwszy_ciag_dalszy


// Koniec rozdziału pierwszego – dalej rozdział drugi.
=== rozdzial_pierwszy_ciag_dalszy ===
# ozdobnik
_Konec první kapitoly._ # dalej
-> rozdzial_drugi
