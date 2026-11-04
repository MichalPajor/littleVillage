// ------------------------------------------------------------
//  Rozdział czwarty – Marzanna. Przedwiośnie, Jaromir ma dziesięć
//  lat. Topienie Marzanny (coś wciąga kukłę pod wodę), prawda
//  o nocy z prologu, przewrócona kapliczka, ludzie Urbaniaka.
//  Prawda zależy od zakończenia prologu:
//    figurka_u_staruchy i pies   – umierająca babka Marianna;
//    figurka_u_staruchy bez psa  – ojciec, który przeżył pod podłogą;
//    inaczej                     – ojciec, który kiedyś się z tego śmiał.
// ------------------------------------------------------------

=== rozdzial_czwarty ===
# tlo: stodola_marzanna
# rozdzial: Kapitola čtvrtá
# tytul: Morana
V březnu konečně začalo kapat ze střech, po polích se rozběhly bahnité potůčky a po nocích led na jezeře praskal a sténal tak, že psi po dvorech vyli. Mokřady procitly první – černá voda prosakovala sněhem, za svítání nad ní stoupala pára a od rozlivů u lávky se znovu ozývalo bublání, které dlouhé měsíce nebylo slyšet.
Na pátou postní neděli se děti z celé Zapadliny scházely, aby utopily Moranu. Tak se to dělalo odjakživa: kdo vynese zimu ze vsi a hodí ji do vody, ten přivolá jaro a zažene nemoci, hlad i každé zlo.
Figurínu chystali ve stodole u Stašových. Franek, který od Vánoc už nechodil do školy a pomáhal dědečkovi na poli, spletl ze slámy trup a přivázal ho ke klacku. Antek přinesl staré hadry po matce – sukni a šátek – a Jaromir vtiskl figuríně do hlavy dva kousky uhlí místo očí a sazemi jí namaloval ústa. Hanka navlékla na nit skořápky od vajec, aby Morana měla korále. Vypadala strašlivě – a o to právě šlo. # pokaz: kukla
Holčička sáhla po copu a začala z něj rozvazovat červenou stužku.
– Dám jí svou – řekla. – Ať si s sebou odnese všechno, co je zlé.
{ poszedl_po_wstazke:
    Jaromir si vzpomněl na starce v klobouku z mechu a na červeň, která se mu třepotala v dlani.
- else:
    Jaromir si vzpomněl na to ráno, kdy právě tahle stužka visela na jejich plotě, uvázaná na mašli rukou, kterou nikdo neviděl.
}
# pytanie: Dá Hanka Moraně svou stužku?
*   [Nechat Hanku stužku uvázat.]
    ~ wstazka_marzanny = true
    Hanka uvázala stužku figuríně na slaměný krk a poodstoupila, aby se na ni podívala. Červeň na šedé slámě vypadala jako rána. # pokaz: wstazka # dalej
    -> topienie
*   [Přemluvit ji, aby stužku nedávala.]
    – Nedělej to – poprosil Jaromir. – Ta už se jednou z lesa vrátila.
    Hanka se na něj divně podívala, ale stužku schovala do kapsy zástěry. Figurína zůstala šedá, jen korále ze skořápek tiše chrastily, kdykoli se jí někdo dotkl. # dalej
    -> topienie

= topienie
# tlo: rozlewisko
Vyrazili odpoledne. Vpředu nesl Franek Moranu na klacku, vysoko, aby ji všichni viděli, za ním šly děti z celé vsi a na konci několik bab, které dělaly, že jdou jen přihlížet. Zpívali, co jim plíce stačily:
„Morano, Morano, ty zimní panenko,
jdi do vody hluboké a nevracej se, holenko!“
Sníh čvachtal pod lýkovými střevíci a vzduch poprvé po měsících voněl mokrou zemí.
Cestou co chvíli někdo zatahal figurínu za slámu nebo ji švihl prutem, protože tak se to mělo – zima nesměla odejít v klidu.
Došli k rozlivu u lávky. Led tam už skoro docela roztál, jen u břehů se držela šedá, děravá krusta a uprostřed stála černá voda, hladká jako sklo. Hanka se ledovými prsty zachytila Jaromira za rukáv a on cítil, jak mu srdce buší až v krku. Franek se rozmáchl a ze všech sil mrštil Moranou daleko před sebe. # pokaz: rzut
Figurína pleskla o hladinu a zhoupla se. Chvíli se držela na povrchu a sukně se kolem ní rozložila jako květ. Najednou, jediným pohybem, šla ke dnu. Ne tak, jak se potápí věc, která nasákla. Tak, jako by ji někdo zespodu škubnutím stáhl. # pokaz: tonie
Děti ztichly. V místě, kde zmizela, prasklo několik velkých, líných bublin a rozešly se kruhy.
– A teď utíkat – špitla Hanka. – A neohlížet se!
{ ekwipunek ? ksiega:
    Jaromir to věděl taky. V knize pana Ignacyho četl, že kdo se ohlédne za topenou Moranou, toho nemoc dostihne ještě před Velikonocemi.
- else:
    – Kdo se ohlédne, toho nemoc dostihne ještě před Velikonocemi – přidala jedna z bab.
}
Všichni se dali na útěk. Jaromirovi za zády to šplouchlo – hlasitě, těžce, jako by se z vody vynořovalo něco velkého. # pokaz: ucieczka
# pytanie: Co udělá Jaromir?
*   [Ohlédnout se.]
    ~ obejrzal_sie = true
    Ohlédl se. Jen na mžik.
    U lávky v černé vodě cosi drželo Moranu – šedá ruka zakončená pařáty, obalená vodní řasou. Nad hladinou, výš, než by dosáhl dospělý muž, žhnuly dvě oči, nazelenalé a kalné jako světla nad bažinou.{ wstazka_marzanny: Drápy si pomalu navíjely červenou stužku.} Pak se paže stáhla a voda se zavřela beze stopy. # pokaz: reka
    Té noci dostal Jaromir horečku. Ležel tři dny, matka mu přikládala na čelo mokré kusy plátna a nemohla pochopit, proč v blouznění volá po kapličce u lávky. # dalej
    -> prawda
*   [Běžet dál a neohlížet se.]
    Neohlédl se. Běžel a svíral Hanku za ruku až k prvním plotům, a za zády se jim od mokřadů neslo tiché chichotání – takové, jakým se směje ten, kdo dostal dárek. Nad bažinou se rozsvítilo několik bledých bludiček. – To jsou ti, co upálili čarodějnici – vyfuněla jedna z bab. – Kdo půjde za takovou bludičkou, ten už se nevrátí. # pokaz: chichot
    ~ zapiski += ogniki_1
    { wstazka_marzanny:
        Druhý den chodila Hanka s rozpleteným copem a co chvíli do něj sahala rukou, jako by něco hledala. # dalej
    - else:
        Ještě dlouho nikdo z nich nepromluvil ani slovo. # dalej
    }
    -> prawda

= prawda
{ figurka_u_staruchy && los_psa == oswojony: -> prawda_babki }
{ figurka_u_staruchy: -> prawda_ojca_sieroty }
-> prawda_ojca

= prawda_babki
# tlo: babka_lozko
Toho jara už babička Marianna nevstala. Od Hromnic ležela na posteli za pecí, čím dál drobnější a lehčí, jako by si ji země brala kousek po kousku. Když uslyšela o Moraně, dala zavolat vnuka.
– Sedni si – zašeptala. Ruka, kterou ho chytila za zápěstí, byla suchá a studená jako list. – Tvůj otec ti to neřekne. Neumí to. Tak ti to povím já, dokud ještě můžu.
Vyprávěla mu všechno. {zona_wie:O tom, jak dědeček Maciek našel ve spáleništi u jezera ohořelou figurku a prodal ji ve městě stařence v kápi.|O tom, jak se dědeček Maciek vrátil z města jako vyměněný a nechtěl říct, co ho trápí.} O stvůře, která o několik nocí později vylomila dveře jejich chalupy. O psovi, který se na ni vrhl první, a o sekeře, která se stvůře zaťala hluboko do ramene. O tom, jak dědeček skonal na hliněné podlaze s hlavou v jejím klíně a malý Dobrosław proseděl celou noc pod podlahou s dlaněmi přitisknutými k uším.
– To, co bylo ve vodě, to byl on – řekla. – Neumřel. Takoví jako on neumírají. Čekají. Kdo se utopí bez kněze, nejde ani do nebe, ani do pekla, ale zůstane ve vodě. Staří říkávali, že takový drží na dně duše jiných utopenců pod obrácenými hliněnými hrnci a v noci je jeden po druhém převrací, jak dohlíží na svůj majetek. A když některý hrnec praskne, duše vyletí bublinou na hladinu.
Babička ukázala do kouta za postelí. Pod starým kabátem tam ležela sekera s ošoupaným tmavým topůrkem. Na čepeli, přestože byla vyčištěná do lesku, byly pořád vidět rezavé šmouhy. # pokaz: siekiera
{ krzesiwo_dziadka:
    ~ ekwipunek += krzesiwo
    ~ krzesiwo_od_babki = true
    – Jeho. Vezmeš si ji, až dospěješ. – Zpod polštáře vytáhla malé, zčernalé křesadlo. – A tohle si vezmi už teď. {zona_wie:Leželo v popelu spolu s tou figurkou. Dědeček ho měl u sebe až do konce.|Kde k němu přišel, mi nikdy neřekl. Ale měl ho u sebe až do konce.} # pokaz: krzesiwo
- else:
    – Jeho. Vezmeš si ji, až dospěješ.
}
– Slib mi jednu věc – dodala po chvíli. – Že nikdy nevejdeš do boru. Ať by tě volal kdokoli.
-> obietnica

= prawda_ojca_sieroty
# tlo: prog_noc
{obejrzal_sie:Když Jaromir po horečce vstal|Když se Jaromir vrátil od rozlivu}, otec se na nic nezeptal. Celý večer mlčel. Teprve když matka usnula, vzal syna za rameno, vyvedl ho na práh a posadil se vedle něj do tmy.
– Bylo mi tolik co tobě – začal hlasem, který se mu lámal, jako by ho velmi dlouho nepoužíval. – Možná méně.
Vyprávěl všechno. O noci, kdy cosi vylomilo dveře jejich chalupy. O prknech nad hlavou, skrz která prosakoval měsíc, o křiku – nejdřív otcově, pak matčině – a o něčem teplém, co mu kapalo do vlasů. O větření těsně nad ním, chraptivém jako u psa nad norou.
– To, co bylo ve vodě, to byl on – řekl. – Proto zkouším závoru. Každou noc, už skoro šedesát let.
– Slib mi jednu věc – poprosil. – Že nikdy nevejdeš do boru. Ať by tě volal kdokoli.
-> obietnica

= prawda_ojca
# tlo: izba_wieczor
Když otec uslyšel, co se stalo u rozlivu, nezasmál se. Jaromir poprvé viděl, že mu historka o stvůře nevykouzlila na tváři úsměv.
– Tvůj dědeček mi vyprávěl totéž – řekl tiše a otáčel v prstech plecháček. – {obejrzal_sie:O ruce z vody.|O něčem, co stahuje pod vodu zespodu.} O hlasu, který volá od bažin. O bylinkářce upálené v chalupě u jezera.{ pregi_na_lydkach: Ukazoval mi šrámy na lýtkách, pět na každé straně{ uratowal_andrzej: – a říkal, že nebýt starého Andrzeje se žerdí, nebylo by jeho ani mě}. Myslel jsem, že jsou od pijavic.} Smál jsem se. Měl jsem za to, že mě chce postrašit, abych se nepotloukal sám u vody. – Dlouho mlčel. – A před smrtí mi stiskl ruku a zašeptal: „Hlídej kapličky, Dobruši. Nebyly to pohádky.“
– Říkal taky, že kdo se utopí bez kněze, zůstane ve vodě a drží tam duše jiných utopenců pod hliněnými hrnci. Když některý hrnec praskne, duše vyletí bublinou na hladinu. – Otec odstavil plecháček. – Pamatuješ si ty bubliny u lávky?
– Slib mi jednu věc – poprosil. – Že nikdy nevejdeš do boru. Ať by tě volal kdokoli.
-> obietnica

= obietnica
# pytanie: Slíbí to Jaromir?
~ zapiski += (stwor_2, zielarka_2)
*   [Slíbit.]
    ~ obietnica_bor = true
    – Slibuji – řekl Jaromir.
    { figurka_u_staruchy && los_psa == oswojony:
        Ještě netušil, jak těžké bude jednou to slovo dodržet.
        -> smierc_babki
    }
    Ještě netušil, jak těžké bude jednou to slovo dodržet. # dalej
    -> kapliczka
*   [Mlčet.]
    Jaromir neodpověděl. Myslel na Hanku a na červenou stužku,{ poszedl_po_wstazke: na starce v klobouku z mechu,} na hlas, který ho v zimě volal {figurka_u_staruchy:z mlhy nad polem|zpomezi stromů}, a nedokázal ze sebe vypravit to jediné slovo.
    { figurka_u_staruchy && los_psa == oswojony:
        Babička mu dlouho hleděla do očí a pak si povzdechla, jako by právě tohle čekala.
        -> smierc_babki
    }
    Otec mu dlouho hleděl do očí a pak přikývl, jako by právě tohle čekal. # dalej
    -> kapliczka

= smierc_babki
Marianna zemřela o několik dní později, na Zelený čtvrtek. Prosila, aby ji pohřbili vedle muže, na hřbitově ve městě, a otec jí splnil poslední vůli, ačkoli cesta s rakví na voze trvala celý den. # pokaz: swieca # dalej
-> kapliczka

= kapliczka
# tlo: kapliczka_przewrocona
Po Velikonocích začala země osychat a na mezích se rozžloutly první blatouchy. Jednoho odpoledne, cestou ze školy pěšinou pod borem, Jaromir a Antek{ ekwipunek ? szczeniak: a s nimi pes {imie_psa}, který teď chodil všude za Jaromirem,} spatřili, že kaplička na kraji lesa leží v trávě. Oba stanuli jako přimrazení. V tichu, které náhle nastalo, bylo slyšet jen, jak z větví odkapává voda na stříšku ležící v blátě.
Byla to jedna z nejstarších v Zapadlině, postavená ještě v otcových {figurka_u_staruchy:dětských|mladých} letech. Dřevěný sloup vyrvali ze země i s drnem, stříška se ulomila a ležela o pár kroků dál a soška svatého – šedá od dešťů, s rysy ohlazenými {figurka_u_staruchy:půlstoletím|desítkami let} – trčela v bahně tváří dolů. Tráva kolem byla rozrytá, jako by někdo táhl kapličku ke stromům a v půli cesty ji pohodil.
{ ekwipunek ? kora:
    U paty někdo vyškrábal do dřeva spirálu – stejnou, jako byla na borovici u pěšiny. Jaromir nemusel vytahovat z brašny svůj kousek kůry, aby to věděl. # pokaz: spirala
}
{ ekwipunek ? szczeniak:
    {imie_psa} naježil srst a vrčel směrem k boru, couvaje na ztuhlých tlapách. # pokaz: pies
}
– Musíme to říct dospělým – šeptl Antek.
# pytanie: Co udělají chlapci?
*   [Postavit kapličku s Antkem, bez dospělých.]
    ~ kapliczka_podniesiona = true
    Sloup byl těžký, mokrý a kluzký od bláta. Zapřeli se oba, až konečně stál ve vyrvané jámě a kymácel se jako opilý. Jaromir ho obložil kameny a udusal hlínu botami a Antek otřel sošku rukávem, posadil ji zpátky pod stříšku a plochým valounem ji znovu přitloukl. # pokaz: podniesiona
    Když skončili, zavál od boru vítr – studený, ačkoli den byl teplý – a chvíli šuměly všechny stromy na kraji lesa najednou. Pak bylo ticho. # pokaz: wiatr
    Když se to otec dozvěděl, šel se na kapličku podívat a vrátil se s výrazem, který Jaromir nedokázal vyčíst.
    – Dobře jste udělali – řekl jen. # dalej
    -> urbaniak
*   [Doběhnout pro dospělé.]
    Pelášili do vsi, co jim dech stačil. Otec a starý Staš šli ještě téhož večera, s lucernou a lopatou. Vrátili se po půlnoci, zablácení a mlčenliví. # pokaz: latarnia
    Kaplička už neležela tam, kde ji chlapci viděli. Našli ji teprve o několik desítek kroků dál, mezi prvními smrky, zaraženou do země vzhůru nohama. Postavili ji na staré místo a zakopali hlouběji než předtím.
    – Někdo tady nestojí o kapličky – zabručel Staš, když si myslel, že ho nikdo neslyší. # dalej
    -> urbaniak

= urbaniak
# tlo: urbaniak
V květnu, když už čápi seděli na starém hnízdě na střeše kovárny, přijela do Zapadliny bryčka. Vystoupil z ní zavalitý pán v městském plášti a klobouku a za ním dva chlapi se sekerami a dlouhým provazem s uzly. Celý den chodili po kraji boru – měřili, něco si zapisovali a každých pár kroků vysekávali do kůry dubů bílé značky. # pokaz: znaki
Jaromir je pozoroval zpoza plotu. Každý takový zářez vypadal jako čerstvá rána.
– Pan Urbaniak – řekl otec, když bryčka odjela. – Statkář mu prodal les na těžbu. Bude tu pila. # pokaz: odjazd
Té noci se z boru poprvé po letech ozvalo vytí – dlouhé, protahované, ani vlčí, ani psí. Lidé zavírali okenice a kradmo se křižovali a Jaromir ležel ve tmě s peřinou vytaženou až k očím a poslouchal, dokud neutichlo. # pokaz: noc # dalej
-> rozdzial_czwarty_ciag_dalszy


// Koniec rozdziału czwartego i darmowej części – dalej rozdział piąty, już w pełnej wersji.
=== rozdzial_czwarty_ciag_dalszy ===
# ozdobnik
_Konec čtvrté kapitoly._ # pelna_wersja # dalej
-> rozdzial_piaty
