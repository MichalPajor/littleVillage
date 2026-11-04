// ------------------------------------------------------------
//  Prolog – Zapadlina, około siedemdziesiąt lat przed główną
//  częścią opowieści. Maciek, dziadek Jaromira, wybiera
//  miejsce na chatę.
// ------------------------------------------------------------

=== prolog ===
# tlo: zapadlina
# rozdzial: Prolog
# tytul: Zapadlina
Zapadlina – vesnice ležící tam, kde se země, unavená tím, že je rovinou, sesula dolů. Kdo se do ní chtěl dostat, musel vždycky sestupovat z pahorků, strání a svahů – ať už od hradské přes Bukový hřbet, nebo od boru po vyšlapané stezce. Cesta zpátky z města trvala šest hodin a poslední úsek se vinul mezi bažinami, pořád z kopce. Mlha měla tu kotlinu ráda. Vlévala se do ní za soumraku jako mléko do mísy a stávalo se, že z ní nechtěla vylézt ani do poledne.
Od východu se tlačil les – starý, jehličnatý a tak hustý, že stromy i ve dne vrhaly hluboký, chladný stín. Na severu přecházela měkká půda v mokřady porostlé orobincem, ostřicí a zakrslými keři. Voda tam stála černá, kalná a nehybná. Někteří tvrdili, že se do ní člověk nesmí dívat příliš dlouho, protože by tím mohl přivolat utopence uvězněné pod vrstvou bahna. Po nocích nad ní často poletovaly bludné ohně. Na západě, v nejnižším místě údolí, leželo jezero, kulaté, jako by je někdo vtlačil kolenem. Říkalo se, že jeho dno nikdy nikdo neviděl.
Vesnice byla malá, ale ne mladá. Pět chalup stálo daleko od sebe, protože každý měl tolik pole, kolik jeho předkové dokázali vymýtit a ubránit. Žilo v ní asi třicet lidí, počítaje i děti. Všichni se dobře znali. Kostel byl až ve městě; chodilo se do něj několikrát do roka, na největší svátky, pokud to cesty dovolily. To pak ve vsi nezůstala ani živá duše.
Nějakých sedmdesát let předtím, než se Jaromir poprvé zadíval k lesu, sešel do Zapadliny jeho dědeček s uzlíkem na rameni. Maciek neměl nic než sekeru, chléb, dvě ruce a umíněnost. Sekeru i chléb koupil ve městě za peníze, které si vydělal čtyřmi lety práce na cizím poli. Chtěl konečně mít něco svého – kout, kde bude bydlet a kde dá rodině střechu nad hlavou. Statkář tu pronajímal pustiny k vyklučení za nízký nájem, takže každý kousek půdy, který Maciek vyčistí, bude jeho. Bylo jaro, pole se pařila a tu a tam ve stínu ještě ležel špinavý sníh. Maciek už několik dní obcházel okolí a hledal, kde postavit chatu. Nejčastěji se mu v myšlenkách vracela tři místa.
# ozdobnik
To první leželo na východním okraji vsi, přímo pod lesem. Půda byla úrodná, dřevo by měl na dosah ruky a zvěře tu taky nebylo málo. Jenže od boru vždycky táhl chlad, i za parných dnů, a v noci odtamtud doléhaly zvuky, které neuměl pojmenovat.
Druhé bylo na severu, u mokřadů. Rozkládaly se tam rozlehlé louky, na kterých by se dal pást dobytek, a rašelina na pálení by nikdy nedošla. Zato po setmění nad bažinami prý cosi pomrkávalo. Lidé, které potkal u studny, říkali jen: – Tam se nechodí a nestaví. Tam se jenom tone.
Třetí, u jezera, se zdálo nejmalebnější. Voda byla čistá, ryby samy skákaly do ruky a břeh byl mírný – stačilo se prodrat hustým rákosím. Zůstaly tam i zbytky chalupy, která tu kdysi stála: staré, ztrouchnivělé a zuhelnatělé trámy. Nikdo ve vsi nechtěl říct, kdo v ní bydlel ani jaký osud ho potkal, a lidé se pokaždé pokřižovali, když se o ní někdo zmínil.
# pytanie: Kde Maciek postaví chatu?
*   [Na okraji lesa, na východě.]
    ~ chata_macka = przy_lesie
    -> budowa
*   [U mokřadů, na severu.]
    ~ chata_macka = przy_mokradlach
    -> budowa
*   [U jezera.]
    ~ chata_macka = nad_jeziorem
    -> budowa


// ------------------------------------------------------------
//  Budowa chaty – początek zależy od wybranego miejsca.
// ------------------------------------------------------------
=== budowa ===
{ chata_macka:
    - przy_lesie: -> las
    - przy_mokradlach: -> mokradla
    - else: -> jezioro
}

= las
# tlo: budowa_las
# rozdzial: Prolog
# tytul: Chata
Maciek si vybral okraj lesa. Usoudil, že s dřevem po ruce postaví chatu rychleji, a na tom mu záleželo nejvíc. Úrodná půda se bude hodit na zeleninu – přece musí něco jíst. A spánek? Nějak bude. Hned prvního rána se pustil do práce a zasekl sekeru do nejbližšího smrku. Ozvěna úderu zalétla mezi stromy a vrátila se po podivně dlouhé chvíli – protáhlá, hluboká a ne tak docela podobná zvuku sekery.
-> praca

= mokradla
# tlo: budowa_mokradla
# rozdzial: Prolog
# tytul: Chata
Maciek si vybral louky u mokřadů. Když začal pracovat, lidé, kteří ho viděli, kroutili hlavou. Pro ně to bylo poslední místo, kde by postavili chalupu. Půda se tu prohýbala pod nohama, ale dávala rašelinu, které by stačilo třeba na sto zim. Aby se chata nepropadla do bláta, musel Maciek připravit podezdívku. Celý první den snášel z pahorků kameny a svědomitě je skládal.
Pro dřevo chodil daleko, až pod bor. Občas zapadl do mělké tůňky – zdejší stezky ještě neznal – a boty měl věčně promočené. Při pomyšlení na vyprávění místních pociťoval neklid, ale i zvědavost. Nedávalo mu pokoj, co to asi mohlo nad bažinami pomrkávat. Snažil se černé vodě vyhýbat a varování před utopenci si vzal k srdci. Jestli existovali, rozhodně je potkat nechtěl.
-> praca

= jezioro
# tlo: budowa_jezioro
# rozdzial: Prolog
# tytul: Chata
Maciek si vybral břeh jezera. Cosi v hloubi srdce mu říkalo, že tohle místo je pro něj. Možná ho přitahovala sama voda – hladká a jasná, s celým nebem uvnitř. Ztrouchnivělé, zuhelnatělé trámy po staré chalupě shodil do vysokého rákosí, aby mu nebyly trnem v oku. Co bylo, bylo – opakoval si při klučení křoví, když se mu vybavovala vyprávění místních. Stromy kácel na svazích a kmeny kutálel dolů. Na střechu sbíral rákos, kterého tu bylo dost – sahal mu až nad hlavu.
-> praca

= praca
Stavba trvala přes měsíc. Čas od času přišel Maćkovi někdo z místních pomoct. Nejčastěji to byl Andrzej, se kterým si vždycky rozuměl nejlépe. Sám hojností neoplýval, ale když viděl, v jaké bídě nově příchozí žije, tu a tam mu přinesl něco k jídlu. Rád také vyprávěl o svém synovi, který byl jeho pýchou. Chlapci bylo jedenáct let, a už otci velmi pomáhal.
Postavit samotnou chatu nebylo těžké: pokácet stromy, okorovat je, nařezat na klády vhodné délky a vyřezat na jejich koncích zámky, aby po složení dobře držely. Díky tomu stály stěny bez jediného hřebíku. Spáry ucpával mechem a hlínou. Od těžké každodenní práce se mu na dlaních udělaly puchýře, které praskaly a zase srůstaly, až kůže ztvrdla jako kůra.
Svůj chléb jedl velmi šetrně – krajíc k snídani, druhý k večeři, a zapíjel je vodou. Sliboval si, že pro novou zásobu půjde do města, jakmile dodělá střechu. Bochník vysychal, scvrkával se a s každým dnem vážil méně a méně – a Maciek spolu s ním.
Spal v přístřešku z chvojí, který narychlo spíchl hned první večer: několik silných haluzí opřených o kmen, přikrytých větvemi s listím a drny, a uvnitř lože z mechu. Vešel se do něj jen vleže. Sekeru měl vždycky u sebe. # dalej
-> noce

= noce
Noci byly nejhorší. Jarní chlad a vlhko lezly pod šaty a pronikavě se zakusovaly až do kostí. Těžko se usínalo. Maciek ležel s otevřenýma očima a poslouchal.
{ chata_macka:
    - przy_lesie: Les nikdy neutichal. Nefoukal vítr, a přesto větve praskaly – pomalu, líně, jednou blíž, jednou dál. Často ztuhl a naslouchal, i když z některých zvuků mu běhal mráz po zádech.
    - przy_mokradlach: Bažiny nikdy nespaly. Bublaly, mlaskaly a někdy – zdálo se mu – vzdychaly jako člověk. Když to uslyšel poprvé, trhl sebou, popadl sekeru a vyhlédl z přístřešku. Vyprávění od studny se ukázala jako pravdivá. Po půlnoci se daleko nad černou vodou rozsvítilo malé světélko a pomrkávalo. Zhasínalo, když se na ně díval, a znovu se rozzářilo, když odvrátil zrak.
    - else: Jezero v noci dýchalo. Každý jeho dech byl teplý a příjemný. Ačkoli nebyl vítr ani vlny, na mělčině tu a tam něco šplouchlo. Jednou Maciek uslyšel, jak z vody vylézá něco těžkého a jde po břehu rákosím k němu. Ráno se šel podívat. Rákosí stálo nedotčené a na mělčině dřímaly kachny, klidné jako každý den.
}
Jedné noci, když mu z bochníku zbyla už jen patka, dolehl k němu zvuk, jaký tu dosud neslyšel. Tiché, přerývané vytí – tenké, podobné vlčímu, ale slabé. Ozývalo se z houští nedaleko. Maciek se snažil nevšímat si ho, ale ono se pořád vracelo.
# pytanie: Co by měl Maciek udělat?
*   [Vzít sekeru – i když ji potmě v blátě snadno ztratí – vylézt z přístřešku a podívat se, co to je.]
    -> pies
*   [Zůstat v přístřešku a přesto zkusit usnout. Tady se cítí v bezpečí.]
    -> zostal

= zostal
~ los_psa = niespotkany
Maciek pevně sevřel sekeru a nehnul se z místa. Vytí trvalo ještě dlouho. Pak přešlo v žalostné kňučení a před svítáním utichlo. # dalej
-> dach


// ------------------------------------------------------------
//  Pies w zaroślach – tylko gdy Maciek wyszedł z szałasu.
// ------------------------------------------------------------
=== pies ===
# tlo: zarosla_noc
Maciek vylezl po čtyřech ven se sekerou v ruce. Noc byla jasná od měsíce a tráva mokrá od rosy. Šel pomalu za zvukem, krok za krokem, a cítil, jak mu srdce chce vyskočit z hrudi. Vytí chvílemi utichalo a chvílemi se ozývalo stále blíž.
V hustém křoví zaslechl šelest. Rozhrnul větve topůrkem sekery a ztuhl. Ze tmy se vynořily dvě lesklé oči. V měsíčním světle rozeznal, že je to mladý pes. Byl tak hubený, že mu žebra trčela pod kůží, a tlapy měl příliš velké na zbytek těla. Čenich byl dlouhý a úzký, uši strnule vztyčené. Před člověkem neutíkal. Tiše vrčel a celý se třásl. # pokaz: pies
Maciek sáhl do kapsy. Nahmatal v ní hadřík a v něm poslední kousek chleba – tvrdý jako kámen, ale přece to bylo jeho zítřejší jídlo.
# pytanie: Co udělá Maciek?
*   [Dát psovi kousek chleba.]
    -> dal_chleb
*   [Nedat mu nic a vrátit se do přístřešku.]
    -> nie_dal_chleba

= dal_chleb
~ ekwipunek -= chleb
~ los_psa = nakarmiony
Maciek rozbalil hadřík a hodil chleba pod keř. Pes couvl a zavrčel, ale po chvíli začal očichávat, co dopadlo na zem. Najednou kořist chňapl do tlamy a zmizel ve tmě dřív, než člověk stačil mrknout.
Muž se vsoukal zpátky pod větve svého přístřešku a usnul hladový s vědomím, že zítra nebude snídaně. # dalej
-> dach

= nie_dal_chleba
~ los_psa = porzucony
Maciek nechal chleba v kapse.
– Sám sotva žiju – zabručel na psa, jako by se mu chtěl ospravedlnit.
Pomalu couval a schoval se pod větve. Vytí se ozvalo ještě jednou, tišší než předtím. Víc ho té noci neuslyšel. # dalej
-> dach


// ------------------------------------------------------------
//  Dach – dzień po nocy z wyciem. Przebieg zależy od losu psa.
// ------------------------------------------------------------
=== dach ===
{ chata_macka:
    - przy_lesie: # tlo: budowa_las
    - przy_mokradlach: # tlo: budowa_mokradla
    - else: # tlo: budowa_jezioro
}
# rozdzial: Prolog
# tytul: Střecha
{ los_psa == nakarmiony: -> bez_chleba | -> z_chlebem }

= z_chlebem
~ ekwipunek -= chleb
Ráno Maciek rozbalil hadřík a snědl poslední kousek chleba. Žvýkal ho pomalu, sousto po soustu, aby mu vystačil na celý den. Zapil to vodou, oprášil si dlaně a šel do práce.
-> trzcina ->
Tnul houštinu sekerou těsně při zemi, vázal ji do snopů a snášel k chatě. Znovu a znovu, bez oddechu. Záda ho pálila jako živý oheň, ale hromada u stěny rostla.
Odpoledne už na tom místě rákos nebyl, a tak šel dál. Vracel se jinou cestou – z té strany, odkud minulé noci doléhalo vytí. Šel, až mu najednou noha zůstala viset ve vzduchu.
V trávě pod keřem ležel pes. Hubený, s dlouhým čenichem a zcuchanou srstí. Byl ztuhlý, převrácený na bok, s napůl otevřenýma očima. Mouchy už ho obsedly.
{ los_psa == niespotkany:
    Maciek nad ním dlouho stál bez hnutí. Teprve teď pochopil, co té noci vylo. Žádné divoké zvíře, žádná můra – jen hladové, prokřehlé štěně, které volalo, dokud nepřestalo.
    Sevřelo se mu hrdlo. Pomyslel si, že tehdy mohl vyjít ven. Hned si ale sám odpověděl: a co kdyby vlezl rovnou vlkovi do tlamy? Potmě nikdo neví, co číhá v křoví. Rozumný člověk sedí v přístřešku se sekerou po ruce – a žije.
    Odvrátil zrak, hodil si snop na záda a vrátil se k práci. Psa nechal tam, kde ho našel. # dalej
- else:
    Maciek klesl na kolena. Pamatoval si ty oči v měsíčním světle, to nepřesvědčivé vrčení, chvění celého těla. Pes prosil, a on se otočil a odešel.
    Jeden kousek. Jeden tvrdý kousek chleba.
    – Sám jsem sotva žil – řekl nahlas, jako by ho někdo obviňoval. – Kdybych dal všechno, kdo by tu teď ležel? Pes, nebo já?
    Ta slova zněla rozumně, ale úlevu nepřinesla. Maciek se zvedl z kolen, a aniž se ještě podíval pod keř, vrátil se k nošení rákosu. Tělo nepohřbil. # dalej
}
-> uplyw_czasu

= bez_chleba
Ráno se Maciek probudil hladový. Mimoděk sáhl do kapsy a vzpomněl si, že hadřík je prázdný. Povzdechl si, napil se vody a šel do práce.
-> trzcina ->
Tnul houštinu sekerou těsně při zemi, vázal ji do snopů a snášel k chatě. Znovu a znovu, bez oddechu.
Kolem poledne, když narovnával bolavá záda, zahlédl v dálce pohyb. Na okraji louky, mezi trsy trávy, se motal pes – tentýž, hubený, s dlouhým čenichem. Větřil, zastavoval se a díval se jeho směrem, připravený každou chvíli zmizet.
Maciek se usmál, poprvé po mnoha dnech.
– Žiješ – zamumlal.
Další dny se pes vracel. Nejdřív se držel opodál. Potom sedával na pahorku a celé hodiny pozoroval, jak se člověk ohání kolem snopů. Každý den byl o kousek blíž – o pár kroků, ne víc, jako by zkoušel, kam až smí. # dalej
-> uplyw_czasu

// Wspólny akapit o trzcinie na dach – skąd ją brał, zależy od miejsca chaty.
= trzcina
Stěny už stály rovně, krokve pevně držely. Zbývala střecha. Na došky potřeboval rákos – hodně rákosu, víc, než by se zdálo podle samotné chaty.
{ chata_macka:
    - przy_lesie: Nejbližší rostl na okraji mokřadů, půl hodiny cesty odtud, takže každý snop musel vláčet přes celou louku.
    - przy_mokradlach: Rostl skoro za prahem, hustý a vysoký, jenže se pro něj muselo brodit studeným blátem po kolena.
    - else: Rostl kolem celého břehu, vyšší než on, a šuměl při každém závanu jako někdo, kdo šeptá za zády.
}
->->

= uplyw_czasu
Míjely dny. Sníh roztál docela, i v nejhlubším stínu pod borem. Země se přestala pařit a byla teplá pod bosou nohou. Na okraji lesa rozkvetly sasanky – bílé, husté jako jinovatka – a v podmáčených místech zlátly blatouchy.
Chleba Maciek neměl už dávno. Živil se tím, co sám našel nebo co mu přinesl Andrzej. Na mokřadech sbíral přezimované klikvy, kyselé a svraštělé, ale pořád jedlé. Z keřů šípku obíral loňské plody, tvrdé jako korálky. Na louce trhal šťovík, který žvýkal syrový, a ve vlhkých zákoutích pod stromy nacházel medvědí česnek. Nařezával také břízy a pil nasládlou mízu, která z nich do rána nakapala. Hlad neodcházel, ale dalo se s ním žít.
Střecha rostla den ode dne. Snop vedle snopu, vrstva na vrstvě. # dalej
-> wieczor


// ------------------------------------------------------------
//  Wieczór – stwór w zaroślach.
// ------------------------------------------------------------
=== wieczor ===
# tlo: zmierzch
Toho dne už Maciek kladl snopy u samého hřebene. Chyběl jen jeden pruh, možná dva. Ruce se mu třásly únavou. Slunce sklouzlo za obzor a zanechalo na obloze špinavou červeň.
Slezl ze střechy a sedl si k přístřešku. Chtěl si odpočinout jen chvilku, dokud bylo ještě světlo. Opřel si hlavu o kmen, zavřel oči…
…a usnul.
Probudilo ho ticho.
Nebylo slyšet cvrčky, žáby ani vítr. Všechno kolem tonulo v mlze, husté a bílé, sahající po kolena. Maciek nevěděl, jak dlouho spal. Věděl jen, že něco není v pořádku – cítil to tělem i duší dřív, než to pochopil rozumem.
Ozval se zvuk. Ani vytí, ani křik, ale něco mezi tím: protáhlé, hrdelní zasténání, které přešlo v praskot lámaných větví. Něco s rachotem skočilo do houští – těsně vedle, nedaleko přístřešku. # pokaz: oczy
Maciek vyskočil na nohy. Sekera se mu sama ocitla v dlaních. Svíral ji tak pevně, až mu zbělely klouby, a hleděl do tmy, odkud se ozývaly kroky – pomalé, těžké, stále bližší. # dalej
{ los_psa == nakarmiony: -> obrona | -> zdobycz }

= zdobycz
# tlo: zmierzch_zdobycz
Křoví se rozhrnulo. Z mlhy se vynořila postava. # pokaz: topielec
Byla vyšší než dospělý muž, o dobré tři hlavy. Stála na dvou nohou, ale shrbená, s pažemi zakončenými drápy, visícími skoro až k zemi, a s dlouhými vlasy, z nichž crčela bažina. Měla lidský tvar – a vůbec nebyla člověkem. V tlamě držela něco velkého a bezvládného, co jí viselo po obou stranách hlavy.
Maciek to poznal hned, i když by byl raději nepoznal. # pokaz: cialo
Postava sevřela čelisti. Ozvalo se křupnutí – hlasité, mokré, jako když se lámou suché větve, jenže tohle větve nebyly. Pak se stvůra otočila a uháněla k {chata_macka == przy_mokradlach:nedalekým }mokřadům, tak rychle, že se za ní mlha zavířila jako voda.
Maciek se nemohl pohnout. Celý se třásl, studený pot mu stékal po zádech a nohy měl jako z vaty. Sekera mu tížila ruce, k ničemu. Stál tak velmi dlouho, až tma zase utichla.
-> strach_o_chate ->
Nakonec se vsoukal do přístřešku. Dlouho nemohl zamhouřit oči a naslouchal, až vyčerpaný prací a strachem usnul. # dalej
-> zgliszcza

= obrona
# tlo: zmierzch_obrona
Křoví se rozhrnulo. Ve tmě vzplály dvě oči – vysoko, příliš vysoko na vlka nebo divočáka. Postava stála v houští na dvou nohou, shrbená, s pažemi visícími skoro až k zemi a s dlouhými vlasy, z nichž crčela bažina. Měla lidský tvar – a vůbec nebyla člověkem. # pokaz: topielec
Maciek se nemohl pohnout. Celý se třásl, studený pot mu stékal po zádech. Oči se dívaly přímo na něj a pomalu, velmi pomalu se přibližovaly.
Z dálky se ozval štěkot.
Pes vyrazil ze tmy jako šíp a postavil se mezi Maćka a houští. Srst na krku se mu zježila, zapřel se na místě a štěkal – hlasitě, zuřivě, bez ustání, ačkoli se celý chvěl. Hubený, mladý, s ocasem staženým mezi nohy – a necouvl ani o krok. # pokaz: pies
Oči se zastavily. Postava zaváhala, vydala hrdelní sykot – a pak se obrátila a s praskotem větví uháněla k {chata_macka == przy_mokradlach:nedalekým }mokřadům, až se za ní mlha zavířila jako voda.
-> strach_o_chate ->
~ los_psa = oswojony
~ ekwipunek += pies_towarzysz
Trvalo dlouho, než se Maciek vzpamatoval. Nakonec se sesul na zem u přístřešku a těžce oddechoval jako po dlouhém běhu. Pes přestal štěkat. Nejistě k němu přišel se svěšenou hlavou – a zavrtěl ocasem, pyšný na sebe jako nikdo na světě.
Maciek natáhl roztřesenou ruku. Zvíře si ji očichalo a pak se nechalo pohladit.
– Hodný pes – zašeptal. – Hodný – vydechl.
Té noci vlezli do přístřešku spolu. Pes si lehl u vchodu, hlavou k houští. Maciek ještě dlouho bděl, zaposlouchaný do tmy, dokud ho nepřemohl spánek. Ale už nebyl sám. # tobolek # dalej
-> zgliszcza

// Tylko gdy chata stoi przy mokradłach – stwór uciekł właśnie tam.
= strach_o_chate
{ chata_macka == przy_mokradlach:
    A pak mu došlo, že stvůra neutekla daleko. Zmizela v bažině, pár desítek kroků od přístřešku – tam, kde on sám už měsíc spal, jedl a pracoval. Možná tam byla od začátku. Možná každou noc, když Maciek naslouchal bublání černé vody, něco na druhé straně naslouchalo jemu. „Tam se nestaví. Tam se jenom tone“ – vybavila se mu slova lidí od studny. Poprvé ode dne, kdy začal stavět, si pomyslel, že možná udělal chybu. Že možná měl poslechnout.
}
->->


// ------------------------------------------------------------
//  Zgliszcza – poranek po nocy z topielcem, dokończenie dachu,
//  rozmowa z Andrzejem.
// ------------------------------------------------------------
=== zgliszcza ===
~ zapiski += stwor_1
{ chata_macka:
    - przy_lesie: # tlo: chata_las
    - przy_mokradlach: # tlo: chata_mokradla
    - else: # tlo: chata_jezioro
}
# rozdzial: Prolog
# tytul: Spáleniště
Začalo svítat. Maciek se probudil ztuhlý a prokřehlý. Chvíli nevěděl, jestli se to, co v noci viděl, opravdu stalo. Pak se mu vybavil praskot lámaných větví a projel jím mráz.
{ los_psa == oswojony:
    Pes ležel u vchodu do přístřešku s hlavou na tlapách a díval se k mokřadům. Už nespal. Maciek měl dojem, že takhle bděl až do svítání.
- else:
    V přístřešku bylo ticho. Maciek vyhlédl ven. Tráva u houští byla polehlá v širokém pruhu, olepená bahnem, a páchla bažinou{chata_macka != przy_mokradlach:, ačkoli k mokřadům bylo daleko}. Pruh se táhl {chata_macka == przy_mokradlach:k černé vodě|jejich směrem} a na stéblech tmavly kapky krve. # pokaz: slady
}
Došel ke své nedokončené chatě a posadil se na její práh. Seděl a hleděl před sebe. Myšlenky se v něm převalovaly jako mlha nad vsí. Utéct. Nechat všechno, dokud je ještě naživu, a nikdy se nevrátit. A na druhé straně – přes měsíc práce, puchýře na dlaních, poslední krajíce chleba. Každou kládu v těch stěnách otesal sám. A kam by šel? Na cizí pole, zase za misku kaše? Vždyť slíbil, že sem přivede rodinu. Že budou mít vlastní střechu.
# pytanie: Jak se Maciek rozhodne?
*   [Zůstat. Vložil do toho místa příliš mnoho.]
    -> zostaje
*   [Sbalit, co má, a odejít, dokud je čas.]
    -> odchodzi

= zostaje
Vstal, oprášil si kalhoty a podíval se na střechu. Zbýval jeden pruh rákosu, možná dva.
– Nestavěl jsem proto, abych teď utíkal – řekl nahlas, aby ho slyšelo i něco jiného než {chata_macka == przy_lesie:les|rákosí}. # dalej
-> dach_gotowy

= odchodzi
~ chcial_odejsc = true
Hodil si uzlík na rameno a vydal se do kopce, k hradské. Kráčel rychle a neohlížel se. Teprve na Bukovém hřbetu se zastavil a podíval se dolů.
Chata tam stála, malá a nedokončená, se střechou jako nedořečená věta. Jeho chata.
{ los_psa == oswojony: Pes šel kus cesty za ním, pak si sedl v půli svahu a díval se – chvíli na něj, chvíli za sebe – jako by čekal, až to Maciek pochopí sám. }
Maciek se nehnul, dokud slunce nevystoupilo nad bor. Pak se vrátil. Ne proto, že by se přestal bát. Neměl kam jít, nic víc. # dalej
-> dach_gotowy

= dach_gotowy
Poslední snopy rákosu položil do poledne. Svázal je lýkem, přitlačil žerděmi a slezl ze žebříku. Poprvé od příchodu do Zapadliny stál před hotovou chatou – vlastní, od podvalin až po hřeben. # pokaz: dach
Té noci v ní konečně usnul. Stěny voněly pryskyřicí a vlhkou hlínou a škvírou ve dveřích se protahovalo měsíční světlo.
Postel tu ještě nebyla, ale nad hlavou měl aspoň vlastní střechu. Tady, u sebe, poprvé po týdnech prospal noc, aniž by se budil.
{ los_psa == oswojony: Pes se uložil na prahu a od té noci ho nikomu nepřenechal. }
Ráno šel Maciek za jediným člověkem, kterému věřil. Musel to někomu říct. # dalej
-> u_andrzeja

= u_andrzeja
# tlo: izba_andrzeja
Chalupa Andrzeje stála na pahorku, daleko od vody. V jizbě byl cítit kouř a bylo tu těsno. Staš, hospodářův syn, seděl u stolu na lavici a vyřezával nožíkem klacík. Když uviděl hosta, usmál se od ucha k uchu.
Maciek začal od úplného začátku: od ticha, od kroků a… od postavy o tři hlavy vyšší než člověk, s vlasy, z nichž crčela bažina.
Andrzej poslouchal, až najednou vyprskl smíchy.
– Z hladu se ti to zdálo, člověče. Vzpamatuj se. Měsíc o chlebu a vodě – to se pak zjeví třeba i archanděl Michael.
Staš přestal vyřezávat. Hleděl na příchozího s otevřenou pusou a strachem v očích.
– Je to pravda? – zeptal se.
# pytanie: Co udělá Maciek?
*   [Rozhodně potvrdit, že je to pravda, a před chlapcem říct všechno až do konce. Ať ví, čeho se má chránit.]
    ~ stas_zaufanie = true
    -> prawda_przy_chlopcu
*   [Usmát se a odbýt chlapce, že to byl asi jen sen, ale požádat Andrzeje, ať ho pošle pryč, a mezi čtyřma očima mu všechno podrobně vylíčit. Tohle nejsou věci pro dítě.]
    -> w_cztery_oczy

= prawda_przy_chlopcu
– Ano, je to pravda. Ať kluk poslouchá. Lepší, když se bude bát, než aby šel k bažině sám a už se nikdy nevrátil.
Hospodář se podíval na syna, pak na Maćka. Úsměv mu pomalu zmizel z tváře.
-> dziad_opowiadal

= w_cztery_oczy
– Vlastně… to byl asi jen zlý sen – odpověděl.
Přesto požádal přítele, aby si promluvili mezi čtyřma očima. Ten poslal Staše pro vodu. Chlapec odešel nerad a dveře nechal pootevřené. Ani jeden z mužů si toho nevšiml.
-> dziad_opowiadal

= dziad_opowiadal
– O tři hlavy vyšší, říkáš – ozval se nakonec Andrzej, už bez smíchu. – A vlasy mokré od bažiny. – Dlouhou chvíli obracel v prstech prázdnou misku. – Můj děd vyprávěl o něčem takovém. Myslel jsem, že jen strašil děti.
Maciek ještě jednou, krok za krokem, vylíčil celou tu noc. # dalej
-> legenda


// ------------------------------------------------------------
//  Legenda o wiedźmie znad jeziora – opowiada Andrzej.
// ------------------------------------------------------------
=== legenda ===
# tlo: legenda
– Prý to všechno začalo tam, u jezera, kde leží ty zuhelnatělé trámy. – Andrzej ztišil hlas. – Bydlela tam kdysi jedna žena. Bylinkářka. Lidé za ní chodili s bolestmi, nemocemi a horečkou – a nikoho neodmítla. Ale časem do ní něco vjelo. Kdoví proč. Mluvila po nocích, ale ne sama se sebou – s někým, koho nikdo neviděl. Jedni říkali, že s utopenci, jiní, že se starým v klobouku z mechu, který k ní zahlížel od boru. Ona sama opakovala, že mrtví přicházejí od vody a vyprávějí jí o strašné budoucnosti. Brzy se jí všichni vyhýbali, protože se báli.
Pak se ve vsi začaly dít čím dál horší věci. Mléko kyslo ve vědrech, malé děti se budily s křikem, zelenina hnila v zemi. Hynula také zvířata – nejdřív tele, pak kráva, pak celý kurník za jedinou noc. Lidé tvrdili, že to má na svědomí ona, a začali jí říkat čarodějnice.
Jedné noci se u její chalupy sešlo několik sedláků. Zatloukli dveře prkny, když spala, obložili stěny slámou a zapálili. # pokaz: chlopi, ogien
Andrzej se na chvíli odmlčel.
– Děd říkal, že křičela až do samého konce. Ne bolestí, Maćku. Proklínala. Ves, zemi, každého, kdo tu žije a kdo tu kdy žít bude. Že nikdo nenajde klid, dokud ti, kdo k ní chodí, nevyvraždí tu všechny do jednoho. Bylo také slyšet, jak sténá a vrhá slova kletby: „Kosti vašich dětí budou zpřeráženy a jejich krev vypita…“. – Andrzej si přejel dlaní obličej. – A ještě říkal, že na okraji boru, když chalupa hořela, stál někdo vysoký a díval se. Nikdo se nešel podívat kdo.
– Strašné… A ti, co ji upálili?
– Ani jeden se nedožil zimy. Jeden po druhém přicházeli o rozum. Mluvili sami se sebou, nespali, chodili potmě k vodě. Až nakonec všichni vešli do bažiny a už nevyšli. Ti, kdo je potkali naposledy, říkali, že měli v očích něco divného. Jako by v každém doutnal kahánek. # pokaz: wegielki
Andrzej se k němu naklonil.
– To jejich oči pomrkávají po nocích nad mokřady. Žádné bludné ohně. Stojí tam a vyhlížejí – vábí.
{ chata_macka:
    - przy_mokradlach: Maciek ucítil, jak se mu v žaludku svírá chlad. Každou noc vídal ta světélka ze svého prahu. Myslel si, že je to trouchnivějící dřevo nebo bažinné výpary. Že je to jen světlo.
    - nad_jeziorem: Maciek zbledl. Ty trámy vlastníma rukama shodil do rákosí. Svou chatu postavil přesně tam, kde hořela ta její.
}
{ stas_zaufanie:
    Staš seděl bez hnutí, s nedokončeným klacíkem v dlani. # dalej
- else:
    Za pootevřenými dveřmi cosi tiše vrzlo. Když hospodář vyhlédl, stálo v síni jen vědro s vodou. Staš byl už daleko na dvoře. # dalej
}
-> zgliszcza_wiedzmy


// ------------------------------------------------------------
//  Zgliszcza chaty wiedźmy w trzcinach nad jeziorem.
// ------------------------------------------------------------
=== zgliszcza_wiedzmy ===
# tlo: zgliszcza
~ zapiski += zielarka_1
Cestou od Andrzeje nemohl Maciek přestat myslet na spáleniště.
{ chata_macka == nad_jeziorem: Teď, když věděl, co je zač, vídal ho pokaždé, když pohlédl do rákosí u svého domu. Černé, zuhelnatělé trámy trčící jako žebra. }
Něco uvnitř ho lákalo, aby to místo důkladně prozkoumal, ačkoli cítil strach.
# pytanie: Co udělá Maciek?
*   [Jít ke spáleništi a prohledat popel.]
    -> przeszukuje
*   [Držet se od něj daleko.]
    -> omija

= przeszukuje
~ przeszukal_zgliszcza = true
~ ekwipunek += figurka
Rozhrnul rákosí sekerou a poklekl u zčernalých trámů. Popel byl studený, slehlý a vlhký. Dlouho se v něm přehraboval, až prsty narazily na něco tvrdého. # pokaz: maciek
Malá dřevěná figurka, z jedné strany ohořelá. Lidská postava s pažemi příliš dlouhými, sahajícími až k chodidlům.
Maciek ji obracel v dlaních. Napadlo ho, že ji možná ve městě vymění za něco k jídlu, a tak si ji nechal.
{ los_psa == oswojony: Pes, který dosud větřil u břehu, couvl a tiše zavrčel na jeho kapsu. }
Po chvíli zahlédl v popelu ještě něco.
– To snad není možné – zašeptal a vytáhl zčernalé křesadlo. – Že by jím zapálili chalupu čarodějnice?
# pytanie: Vezme Maciek křesadlo?
*   [Ano – prokleté nebo ne, bude s ním moct rozdělávat oheň a vařit si teplá jídla.]
    ~ ekwipunek += krzesiwo
    -> wieczor_przy_chacie
*   [Ne – nechce riskovat kletbu, která by na něj mohla padnout.]
    -> wieczor_przy_chacie

= omija
{chata_macka == nad_jeziorem:Rákosí u vlastního prahu se vyhnout nemohl, ale od té doby, když vycházel z chaty, odvracel od něj zrak.|Jezero obešel širokým obloukem a ani jednou se nepodíval k rákosí.} Některé věci je lepší nechat být. # dalej
-> wieczor_przy_chacie


// ------------------------------------------------------------
//  Wieczór przy chacie – ogień (jeśli ma krzesiwo) i plan wyprawy do miasta.
// ------------------------------------------------------------
=== wieczor_przy_chacie ===
{ chata_macka:
    - przy_lesie: # tlo: wieczor_las
    - przy_mokradlach: # tlo: wieczor_mokradla
    - else: # tlo: wieczor_jezioro
}
{ ekwipunek ? krzesiwo:
    Večer Maciek nasbíral suché větve a narovnal je do kruhu z kamenů před chatou. Křesadlo mu v dlani leželo podivně těžké. Chvíli si ho prohlížel a myslel na to, čí ruce ho držely naposledy. Pak křesl jednou, podruhé, potřetí – a v troudu se rozžhavila jiskra. # pokaz: ogien
    Oheň jasně vyšlehl a teplo mu vychrstlo do tváře tak náhle, až se mu zatočila hlava. Týdny neměl v ústech nic horkého. Teď si v hliněném hrnci uvařil polévku z kopřiv a šťovíku. Jedl pomalu, pálil si rty a nic na světě mu nechutnalo tak dobře.
    { los_psa == oswojony:
        Pes si lehl na druhé straně ohniště. Plameny se mu odrážely v očích a on do nich hleděl jako očarovaný. # pokaz: pies
    }
- else:
    Večer se snesl chladný a tmavý. Maciek snědl hrst syrového šťovíku a pár svraštělých bobulí klikvy, zapil to vodou a sedl si na práh.
}
Dlouho seděl, hleděl k hradské a v duchu si skládal plán. Chata byla hotová. Byl čas vydat se do města – koupit chleba, sůl, možná trochu kaše.
{ ekwipunek ? figurka: Figurku zkusí prodat – třeba někdo zaplatí za takovou zvláštnost. }
A potom, jakmile nabere sil, sem přivede rodinu. Do domu, který postavil vlastníma rukama. # dalej
-> droga_do_miasta


// ------------------------------------------------------------
//  Droga do miasta – kręta ścieżka między mokradłami, głos znad wody.
// ------------------------------------------------------------
=== droga_do_miasta ===
# tlo: sciezka
Vyrazil za úsvitu. Do města to bylo šest hodin cesty a první úsek vedl klikatou stezkou mezi mokřady, do kopce, až na Bukový hřbet. Šel svižně, ačkoli mu hladem kručelo v břiše. Myslel na ženu a synka – na to, jak poprvé stanou na prahu nové chaty. Stesk ho svíral za hrdlo.
{ los_psa == oswojony:
    Pes kráčel těsně u jeho boku a vesele vrtěl ocasem. # pokaz: pies
}
Mlha ležela nízko nad černou vodou. Stezka byla úzká, místy tak rozbahněná, že se muselo přeskakovat z trsu na trs. Maciek našlapoval opatrně, se skloněnou hlavou. Pamatoval si, co říkali lidé: do té vody se nesmí dívat příliš dlouho.
V půli cesty ho však cosi přimělo zvednout oči. V hloubi mokřadů doutnalo bledé světélko. Už se pořádně rozednilo, a ono tam pořád bylo. Pomrkávalo pomalu, pravidelně, jako by tam někdo stál s kahánkem a vyhlížel. # pokaz: swiatelko
Vtom uslyšel své jméno.
– Maaaćku…
Tiše, protáhle, od vody. Hlasem, který zněl jako hlas jeho milované ženy.
Vždycky ho tak volala, když se něco dělo. Ale vždyť zůstala na panském statku za městem a měla tam na něj čekat… Možná se mu to jen zdálo. A možná ho to k sobě volala bažina.
# pytanie: Co udělá Maciek?
*   [Jít za hlasem – možná jeho žena potřebuje pomoc.]
    { los_psa == oswojony: -> ratunek | -> utoniecie }
*   [Neohlédnout se a jít dál – to přece nemůže být ona.]
    -> nie_odwraca_sie

= ratunek
# tlo: sciezka_po
~ pies_uratowal = true
Udělal krok ze stezky, pak druhý, prošel houštinou a přeskočil mazlavé bláto. Bažina čvachtla a chytila ho za kotníky ledovými prsty. Cítil, jak mu stahuje nohy pod hladinu. V tu chvíli pes skočil, chňapl ho zuby za halenu a z celé síly ho škubl dozadu. Maciek se zřítil na záda a vykřikl. Světélko zhaslo jako sfouknuté a kdesi v mlze se ozval tichý chichot.
Ležel v blátě, supěl, a zvíře stálo nad ním a vrčelo k mokřadům, dokud se mlha nad vodou nezavřela. # pokaz: upadek # dalej
-> na_grzbiecie

= utoniecie
// Bez psa: Maciek idzie za głosem i tonie – ale przeżywa. Ratuje się krzesiwem albo ratuje go Andrzej;
// bagno zabiera figurkę (zostaje tylko spokojne zakończenie) i zostawia na łydkach sine pręgi.
# tlo: sciezka_ratunek
~ pregi_na_lydkach = true
Udělal krok ze stezky, pak druhý, prošel houštinou a přeskočil mazlavé bláto. Bažina čvachtla a chytila ho za kotníky ledovými prsty. Cítil, jak mu stahuje nohy pod hladinu. Hlas byl stále blíž – teď teplý, známý, takový, po jakém se mu týdny stýskalo.
– Maaaćku…
Stál bez hnutí, ponořený už po kolena, pak po pás. Necítil chlad. Cítil jen, že se k němu blíží někdo milovaný.
Teprve když mu černá voda sahala po prsa, pochopil. Škubl sebou, ale něco ho drželo za lýtka – něco, co mělo prsty. Světélko zamrkalo těsně před jeho tváří a Maciek uviděl, že to není kahánek. Byly to oči – takové, o jakých mluvil Andrzej. # pokaz: oczy
{ ekwipunek ? krzesiwo:
    Tu si vzpomněl na křesadlo, které od toho dne nosil za košilí. Zkřehlýma rukama ho vyškubl i s troudem a křesl – jednou, podruhé – těsně nad vodou. Třetí jiskra skočila přímo do očí. Ve vodě cosi zasyčelo jako poleno hozené do ohně, sevření na lýtkách povolilo a světélko zhaslo jako sfouknuté. Maciek se vrhl dozadu, chytal se trsů trávy, rval je po hrstech, až se nakonec vyplazil na stezku. # pokaz: iskry, ratunek
    { ekwipunek ? figurka:
        ~ ekwipunek -= figurka
        ~ figurka_w_bagnie = true
        Na stezce ucítil, že má kapsu lehkou. Ohořelá figurka mu musela v bažině vyklouznout. Chvíli se mu zdálo, že ji ještě vidí – malý tmavý tvar, pomalu klesající do hloubky – a pak už nebylo nic. # pokaz: figurka
        Nevrátil se pro ni. Za nic na světě.
    }
- else:
    ~ uratowal_andrzej = true
    – Maćku! Chyť se!
    Hned vedle pleskla o vodu dlouhá žerď. Na hrázi stál Andrzej v zablácených lýkových střevících, s košem přes rameno – za úsvitu kontroloval vrše v tůních. Maciek se chytil tyče oběma rukama. Soused se zapřel a heknul, bažina táhla k sobě, až konečně povolila s neochotným mlasknutím. Bludička ještě jednou zamrkala a zhasla. # pokaz: andrzej, ratunek
    – Říkal jsem ti to – vydechl Andrzej, když oba leželi v blátě. – Neposlouchej hlasy od vody.
    { ekwipunek ? figurka:
        ~ ekwipunek -= figurka
        ~ figurka_w_bagnie = true
        Na hrázi Maciek ucítil, že má kapsu lehkou. Ohořelá figurka mu musela v bažině vyklouznout. Chvíli se mu zdálo, že ji ještě vidí – malý tmavý tvar, pomalu klesající do hloubky – a pak už nebylo nic. # pokaz: figurka
        – Vzalo si to svoje – zabručel Andrzej a odplivl si přes levé rameno.
    }
}
Na obou lýtkách, tam, kde ho to cosi drželo, mu zůstaly modravé šrámy – dlouhé, úzké, po pěti z každé strany. Nezmizely ani ten den, ani do konce jeho života. # dalej
-> na_grzbiecie

= nie_odwraca_sie
Zaťal zuby a šel dál, krok za krokem, aniž otočil hlavu. Hlas zavolal ještě dvakrát, stále tišeji. Pak umlkl. # dalej
-> na_grzbiecie

= na_grzbiecie
# tlo: zapadlina
// Kto poszedł za głosem (pies go wyciągnął albo bagno puściło), już się odwrócił – dla niego inny tekst.
{ pies_uratowal || pregi_na_lydkach:
    Zbytek cesty do kopce ušel jako ve snu – {pregi_na_lydkach:mokrý po prsa|mokrý po pás}, olepený bahnem, s {pregi_na_lydkach:lýtky, na nichž ještě cítil cizí prsty|kotníky, na nichž ještě cítil ledové sevření bažiny}.{ los_psa == oswojony: Pes se od něj nehnul ani na krok a co chvíli se ohlížel k vodě.}
    Na Bukovém hřbetu si sedl na kámen a teprve tam se mu přestaly třást ruce. Dole ležela Zapadlina – tichá, přikrytá mlhou jako rubášem. Někde tam stála jeho chata.
- else:
    Na Bukovém hřbetu se Maciek konečně odvážil ohlédnout. Dole ležela Zapadlina – tichá, přikrytá mlhou jako rubášem. Někde tam stála jeho chata.
}
Pak se vydal po hradské k městu. # dalej
-> miasto


// Koniec prologu – dalej rozdział pierwszy z Jaromirem.
=== prolog_ciag_dalszy ===
# ozdobnik
_Konec prologu._ # dalej
-> rozdzial_pierwszy
