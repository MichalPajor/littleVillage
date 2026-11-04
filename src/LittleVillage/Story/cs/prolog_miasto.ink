// ------------------------------------------------------------
//  Prolog, część druga – miasto, rodzina, powrót do Zapadliny
//  i zakończenie prologu (zależy od tego, komu Maciek sprzedał figurkę).
// ------------------------------------------------------------

=== miasto ===
# tlo: gosciniec
# rozdzial: Prolog
# tytul: Město
Hradská se táhla přes pole a remízky, hned do kopce, hned z kopce. Míjely ho vozy sedláků, kteří vezli obilí na trh, a jednou se kolem něj přehnala bryčka, z níž kdosi křikl, ať uhne z cesty.{ los_psa == oswojony: Pes se držel u nohy a vrčel při každém drkotání kol.} Slunce už stálo vysoko, když se zpoza pahorku vynořila kostelní věž a pod ní střechy města – červené, šedé a mechem porostlé, natěsnané jako zrna v klasu. # dalej
-> rynek

= rynek
# tlo: rynek
Náměstí hučelo jako úl. Mezi stánky se prodírali sedláci v halenách, trhovkyně vychvalovaly vejce a máslo a od radnice se neslo mečení koz. Bylo cítit chleba, koňský hnůj a uzené ryby.{ ekwipunek ? figurka: Maciek nahmatal v kapse dřevěnou postavu. Nejdřív ji musel prodat – teprve potom mohl myslet na jídlo.}
{ ekwipunek ? figurka: -> kramarze | -> zakupy }

= kramarze
První byl kramář s obrázky a růženci. Dlouho si figurku prohlížel proti světlu, nakonec se ušklíbl a rychle ji vrátil, jako by pálila.
– To není žádný svatý – zabručel a pokradmu se pokřižoval. – Tohle pod svou střechu nevezmu.
Řezbář lžic a misek se jí ani nedotkl. Prohlásil, že dřevo je ztrouchnivělé, ohořelé a k ničemu se nehodí, leda na podpal.
Teprve vetešník s vozíkem plným hrnců a roztrhaných bot ji obracel v prstech déle.
– Dva groše – řekl nakonec. – Víc ti za to nikdo nedá.
Tolik stál bochník chleba. Jeden. Maciek slíbil, že si to ještě rozmyslí, a vydal se k chudší části náměstí, kde místo stánků ležely na zemi plachty s cibulí, hadry a rezavým železem. # dalej
-> starucha

= starucha
# tlo: zaulek
Najednou ho kdosi zadržel za rukáv. Ruka byla malá a suchá, voněla mátou a kouřem.
Před ním stála drobná stará žena v tmavé kápi, opřená o sukovitou hůl, s košíkem sušených bylin přes rameno. Plášť měla záplatovaný, ale čistý, a pod kápí bělal okraj čepce. Jedno oko měla zastřené bělmem, druhé – černé a bystré – hledělo přímo na jeho kapsu. # pokaz: starucha
– Copak to tam nosíš, synku? – zašeptala. – Cítím popel. Starý popel, od vody.
{ los_psa == oswojony:
    Pes jí očichal košík, kýchl z bylin, a pak se mu zježila srst a hluboce zavrčel – ne na ni, ale na kapsu Maćka. # pokaz: pies
}
Maciek chtěl odejít, ale rukáv nepouštěla.
– To není tvoje. Vyhrabal jsi to tam, kde se hrabat nemělo – mluvila tiše, aby to nikdo kolem neslyšel. – Ta věc volá, synku. Dokud ji nosíš, to, co bydlí ve vodě, ví, kde tě hledat. Tebe i ty, které máš rád. Nepal ji a neházej ji do vody, protože se vrátí. Někdo musí vědět, co s ní udělat – a já to vím.
Teprve teď ho pustila.
– Vezmu si ji od tebe. Ale ne zadarmo, protože co je dáno zadarmo, to se dárci vrací. Dám deset grošů. Pětkrát víc, než ti chtěl dát ten u vozíku.
Musela stát někde blízko, když smlouval s vetešníkem. Jenže si nevzpomínal, že by ji tam viděl.
# pytanie: Komu Maciek prodá figurku?
*   [Stařence – vyzná se v takových věcech a za deset grošů rodina vydrží až do první sklizně.]
    ~ figurka_u_staruchy = true
    ~ ekwipunek -= figurka
    # tlo: rynek
    Maciek vytáhl figurku a položil ji na nastavenou dlaň. Stařena po ní hned nesáhla. Nejdřív ji zabalila do lněného hadříku a teprve tak, přes plátno, ji vzala do ruky. Mince vyndala z uzlíčku u pasu.
    – Teď už je to moje starost – řekla. – Jdi s Bohem, synku. A neohlížej se po ní.
    Obrátila se a zmizela v davu dřív, než stačil cokoli odpovědět.{ los_psa == oswojony: Pes přestal vrčet, sotva se kapsa odlehčila.}
    -> zakupy
*   [Vetešníkovi za pár mizerných grošů – ať raději skončí mezi hrnci, u někoho, kdo neví, co je zač.]
    ~ ekwipunek -= figurka
    # tlo: rynek
    – Děkuji, matičko, ale není třeba – odpověděl Maciek a o krok ustoupil.
    Stařena si ho dlouho měřila zdravým okem. – Tvoje vůle – řekla jen a vrátila se ke svým bylinám.
    Vetešník pokrčil rameny, hodil figurku mezi hrnce a odpočítal dva groše. – Říkal jsem, že víc nikdo nedá.{ los_psa == oswojony: Pes přestal vrčet, teprve když figurka zmizela pod hromadou střepů.}
    -> zakupy

= zakupy
~ ekwipunek += (zapasy, nasiona)
{
- figurka_u_staruchy: Za mince od stařeny a zbytek svých měďáků koupil Maciek dva bochníky chleba, pytel krup, sůl, kus slaniny, semena zeleniny, a dokonce i koš sadbových brambor. Uzlík ho tlačil do zad, ale byla to nejmilejší tíha po dlouhé době.
- przeszukal_zgliszcza && not figurka_w_bagnie: Za poslední měďáky a dva groše od vetešníka koupil Maciek bochník chleba, hrst soli, pytlík krup a trochu semen zeleniny. Nebylo to mnoho, ale pár dní se s tím dalo přežít.
- else: Za poslední měďáky – co mu zbylo po sekeře – koupil Maciek bochník chleba, hrst soli, pytlík krup a semena různé zeleniny.
}
Bylo jaro, a tak bylo třeba rychle zasít.
U městské studny snědl první krajíc po celých týdnech. Byl měkký a ještě teplý. Musel se přemáhat, aby nezhltl všechno najednou.{ los_psa == oswojony: Druhý dal psovi.}
Potom se vydal za město, na statek, kde čtyři roky dřel na cizím poli a kde na něj čekala žena se synkem. # dalej
-> rodzina


// ------------------------------------------------------------
//  Rodzina – spotkanie z żoną i synem w Czworakach.
// ------------------------------------------------------------
=== rodzina ===
# tlo: czworaki
# rozdzial: Prolog
# tytul: Rodina
K čeledníku dorazil, když se slunce už sklánělo k západu. Dlouhé nízké stavení s křivým komínem vypadalo stejně jako v den, kdy odtud odcházel. Před prahem kreslil malý chlapec klackem znaky do písku. Zvedl hlavu, podíval se na cizího, vyhublého muže – a chvíli ho nepoznával. # pokaz: dziecko
– Dobrosławe – řekl tiše Maciek.
Malý vyskočil ze země a s křikem utíkal dovnitř. Ve dveřích se téměř hned objevila Marianna. Utírala si ruce do zástěry – a strnula, když uviděla manžela. # pokaz: marianna
Za okamžik se mu vrhla kolem krku tak prudce, až zavrávoral. Plakala mu do ramene a on ji hladil po vlasech a nemohl ze sebe vypravit ani slovo. Dobrosław ho objal kolem nohy a nechtěl pustit.
– Ježíši, Maćku – zašeptala nakonec a odtáhla se, aby si ho prohlédla. Dotkla se propadlých tváří, vystouplých klíčních kostí. – Je tě o polovinu míň, než když jsi odcházel. Cos tam jedl? Kůru ze stromů?
Zasmál se, ačkoli měl v očích slzy.
{ los_psa == oswojony:
    Pes stál stranou, nejistý, dokud k němu Dobrosław nenatáhl ruku. Za chvíli se nechal drbat za uchem a malý radostí výskal. # pokaz: pies
}
Večer nad miskou kaše Maciek vyprávěl. O chatě – o stěnách z klád, které sám otesal, o rákosové střeše, o prahu, na kterém po práci vysedával. O půdě, které bude tolik, kolik dokážou obdělat.
– Zítra za úsvitu vyrazíme – oznámil. – Začneme všechno znovu. Na svém.
Marianna poslouchala a usmívala se pro sebe. Ale když syn usnul, přisedla blíž a zahleděla se muži do tváře.
– A teď mi řekni pravdu. Co se tam dělo? Vždyť vidím, že tě něco hryže.
# pytanie: Poví Maciek ženě o té noci?
*   [Ano – povědět jí o stvůře, o legendě a o hlasu od bažin. Musí vědět, kam jde.]
    ~ zona_wie = true
    Nic nezamlčel. O vytí v houští, o tichu, které ho probudilo, o postavě, jež vyšla z mlhy. O upálené bylinkářce a její kletbě. O bažině, která ho volala hlasem Marianny.{ figurka_u_staruchy: O ohořelé figurce zpod popela, kterou toho dne prodal na náměstí stařence v kápi.}
    Marianna mlčky naslouchala a s každou větou bledla. Když domluvil, dlouho hleděla do tmavého okna.
    – Vrátíme se tam? – zeptala se nakonec tiše.
    – Vrátíme. Je to náš domov.
    Přikývla. Víc neřekla, ale té noci oka nezamhouřila – poznal to podle jejího dechu. # dalej
    -> powrot
*   [Ne – odbýt ji. Proč strašit, když chata stojí a co bylo, to pominulo.]
    – Nic se nedělo – zalhal. – Těžká práce a málo jídla. Nic víc.
    Marianna na něj ještě chvíli hleděla, jako by čekala na zbytek. Pak si povzdechla a položila mu hlavu na rameno.
    Té noci dlouho nemohl usnout. Pomyslel si, že jí to jednou řekne. Jednou, až se všechno urovná. # dalej
    -> powrot


// ------------------------------------------------------------
//  Powrót do Zapadliny z rodziną.
// ------------------------------------------------------------
=== powrot ===
# tlo: sciezka_rodzina
# rozdzial: Prolog
# tytul: Návrat
Vyrazili za úsvitu. Marianna nesla raneček s jejich věcmi, Maciek – uzlík s jídlem, a když se malý chůzí unavil, i jeho, na ramenou.
{ los_psa == oswojony:
    Pes pobíhal od jednoho k druhému, jako by hlídal, aby nikdo nezůstal pozadu. # pokaz: pies
}
Bylo už hodně po poledni, když stanuli na Bukovém hřbetu. Dole ležela Zapadlina.{ chcial_odejsc: Na tomtéž místě stál Maciek před několika dny s uzlíkem na rameni a chtěl odejít navždy. Teď mu na zádech spal syn.}
Na hřebeni se Maciek zastavil a pohlédl na ženu.
– Teď dávej pozor – řekl. – Jdi hned za mnou, krok za krokem. Ze stezky nesestupuj, za nic na světě. Nedívej se do černé vody. A neposlouchej hlasy od bažin. Ať uslyšíš cokoli – neodpovídej a neotáčej se.
{ zona_wie: Marianna {chcial_odejsc:položila dlaň na záda spícího syna|vzala syna za ruku} a přikývla. Věděla, o čem mluví. | Marianna zvedla obočí, jako by se chtěla zasmát, ale něco v jeho tváři ji zarazilo. Mlčky přikývla. }
Šli pomalu, husím pochodem. Mlha se plížila nízko nad tůněmi a kdesi daleko v sítí cosi tiše šplouchalo. V půli cesty za sebou zaslechl, jak Marianna prudce nabrala dech. Neohlédl se. Teprve když vyšli na suchou zem, zeptal se, co slyšela.
– Nic – odpověděla rychle. Příliš rychle. # dalej
-> nowy_dom

= nowy_dom
{ chata_macka:
    - przy_lesie: # tlo: chata_las
    - przy_mokradlach: # tlo: chata_mokradla
    - else: # tlo: chata_jezioro
}
Chata stála tam, kde ji Maciek zanechal. {chata_macka == przy_lesie:Na kraji lesa, ve stínu smrků,}{chata_macka == przy_mokradlach:Na louce u mokřadů, na kamenné podezdívce,}{chata_macka == nad_jeziorem:U jezera, mezi šumícím rákosím,} se střechou, kterou sám pokládal snop po snopu. # pokaz: dach
Marianna se zastavila před prahem a dlouho nic neříkala. Pak vešla dovnitř, přejela dlaní po stěně, přičichla k pryskyřici a rozzářila se jako malé dítě, když uvidí tvář svého rodiče. # pokaz: rodzina
– Naše – řekla. – Opravdu naše.
Dobrosław brzy objevil v koutě jizby uvolněná prkna. Maciek je odsunul a ukázal mu jámu vykopanou v zemi – dost hlubokou, aby se v chladu daly uchovat brambory a kaše.
– Sklípek – prohlásil hrdě. – Na zásoby. Jenom tam nelez bez zeptání.
Malý tam pochopitelně okamžitě skočil a schoulil se tak, že nebyl vidět. Smáli se všichni tři.
{ ekwipunek ? krzesiwo: Toho večera vzplál před novou chatou oheň | Toho večera povečeřeli na prahu nové chaty } a Maciek si pomyslel, že stálo za to tím vším projít. # dalej
{ figurka_u_staruchy: -> czary | -> lata_spokoju }


// ------------------------------------------------------------
//  Zakończenie A – figurka u staruchy: czary i nocny napad.
// ------------------------------------------------------------
=== czary ===
# tlo: czary
# rozdzial: Prolog
# tytul: Jedna svíce
Téže noci, daleko odtud, hořela v těsné jizbě za městským náměstím jedna svíce.
Stařena si shrnula kápi. Řídké šedivé vlasy jí splývaly na záda. Na stole před ní stála miska s černou, kalnou vodou a vedle ní – ohořelá figurka, vybalená z lněného hadříku.
Žena si píchla jehlou do prstu a nechala tři kapky krve skanout na dřevo. Pak figurku ponořila do misky a začala mumlat – hluboko, jednotvárně, řečí, které by nikdo ve městě nerozuměl. Plamen svíce pohasl a naklonil se, přestože v jizbě netáhlo.
– Dlouho jsem čekala, matko – zašeptala. – Ale nakonec někdo přišel. A sám mi tě přinesl.
Voda zabublala, jako by se v ní kdosi zhluboka nadechl. Z mumlání se vynořila slova, pronášená stále hlasitěji:
– Kosti vašich dětí budou zpřeráženy a jejich krev vypita…
Stařena se sklonila níž nad misku. – Jdi. Znáš cestu. Chata {chata_macka == przy_lesie:pod lesem}{chata_macka == przy_mokradlach:u mokřadů}{chata_macka == nad_jeziorem:u jezera}. Muž, žena a dítě. # dalej
-> noc

= noc
# tlo: noc_atak
Uplynulo několik dní. Maciek ryl záhony pro brambory, Marianna stavěla z hlíny pec a Dobrosław {los_psa == oswojony:běhal se psem po louce|trhal na louce blatouchy}. Večer co večer sedávali spolu na prahu a dívali se, jak se do údolí vlévá mlha.
{ los_psa == oswojony: Jedné noci je probudil pes. Stál u dveří se zježenou srstí na hřbetě a vrčel tak hluboko, že to sotva bylo slyšet. Pak se rozštěkal – hlasitě, zuřivě, bez přestání. | Jedné noci je probudila rána. Něco udeřilo do dveří takovou silou, že zasténaly panty, a bušilo dál, dokud dřevo s praskotem nepuklo. }
Maciek vyskočil z lože. Škvírou ve dveřích uviděl v mlze dvě žhnoucí oči. # pokaz: slepia
Nepřemýšlel. Popadl Dobrosława do náruče, odsunul prkna v koutě a strčil ho do sklípku.
– Seď potichu – zašeptal. – Ať se stane cokoli, nevylézej. Slyšíš? Nevylézej, dokud nebude den.
Položil prkna zpátky nad jeho hlavu. # dalej
{ los_psa == oswojony: -> walka | -> rzez }

= walka
# tlo: walka
Dveře vletěly dovnitř i s rámem. Stvůra se musela sehnout, aby se protáhla pod nadpražím – obrovská, mokrá, páchnoucí bažinou. Voda z ní stékala proudy na hliněnou podlahu. # pokaz: stwor
Pes se na ni vrhl první. Zaťal zuby do předloktí, visel na něm a škubal, dokud jím netvor nemrštil o stěnu. Zakňučel a padl. # pokaz: pies
Maciek se postavil před Mariannu se zdviženou sekerou. # pokaz: maciek
– Postav se za mě!
Bestie po něm sáhla. Drápy mu rozryly rameno i bok, ale ustál to. Rozpřáhl se ze všech sil a ostří se zaťalo hluboko do kostnaté paže. Stvůra zavyla – stejným táhlým, hrdelním sténáním jako té noci u přístřešku. Maciek udeřil ještě jednou. A znovu.
Netvor couvl, převrhl lavici a s řevem vyběhl do mlhy. Chvíli bylo slyšet, jak se cosi těžkého prodírá houštím, a pak čvachtání – stále dál, směrem k bažině.
Sekera vypadla Maćkovi z rukou. Klesl na kolena, potom na bok. Pod ním se rozlévala tmavá kaluž. # pokaz: kaluza
Marianna klečela u něj a tiskla dlaně na jeho rány, ale krev jí protékala mezi prsty.
– Ne, ne, ne… Neopouštěj mě…
– Dobrosław… – zašeptal. – Vytáhni ho… až ráno.
Pes se k němu dovlekl, kulhaje, a položil mu hlavu na hruď.
Maciek se ještě usmál. Díval se na ženu, dokud mu oči nepřestaly vidět vůbec nic.
Pod podlahou, ve sklípku, si Dobrosław tiskl dlaně na uši a nevydal ani hlásku. Tak, jak slíbil otci. # dalej
-> sierota

= rzez
# tlo: pod_podloga
Dveře se rozpůlily. Do jizby vtrhl chlad, puch bažiny a obrovský stín, který se musel sehnout, aby se protáhl pod nadpražím.
Maciek ještě stačil popadnout sekeru. Marianna si zakryla ústa dlaní.
Dobrosław neviděl, co se dělo potom. Viděl jen úzké proužky měsíčního světla mezi prkny nad hlavou – a stíny, které je protínaly. Slyšel všechno. # pokaz: cien
Slyšel, jak otec volá na matku, ať uteče. Slyšel tupé údery sekery, jednou a podruhé, a vytí, až se třásla země. Pak praskot – hlasitý, mokrý, stejný jako tehdy v houští, i když to chlapec nemohl vědět. Otec přestal křičet.
Matka křičela déle.
Když utichla i ona, začalo škvírami mezi prkny kapat cosi teplého. Kapka za kapkou, do jeho vlasů a na tváře. # pokaz: krew
Něco těžkého přešlo po podlaze těsně nad ním. Zastavilo se. Slyšel, jak to větří – dlouze, chraplavě, jako pes u nory. Zakousl se do rukávu, aby ani nepípl.
Pak se kroky vzdálily a rozplynuly v mlze.
Ve sklípku proseděl až do rána. Tak, jak slíbil otci. # dalej
-> sierota

// Epilog zakończenia A – chłopca przygarnia Andrzej.
= sierota
# tlo: izba_andrzeja
{ los_psa == oswojony:
    Ráno se k nim zastavil Andrzej. Našel Mariannu na hliněné podlaze s hlavou manžela v klíně. Už neplakala. Pes ležel vedle a nikoho k nim nepustil.
    Maćka pohřbili na hřbitově u kostela ve městě. Vdova se už do chaty nevrátila – usadila se s chlapcem u hospodáře z pahorku, který je přijal pod svou střechu jako rodinu.
- else:
    Ráno se k nim zastavil Andrzej. Dveře chaty, rozlomené vejpůl, ležely v trávě. V jizbě nikdo nebyl – jen šmouha bahna, která se táhla od prahu k bažině, a tmavé skvrny na hliněné podlaze. Dlouho stál na prahu, než zpod podlahy zaslechl tiché vzlykání.
    Chlapec neřekl ani slovo – ani ten den, ani mnoho dalších. Andrzej si ho vzal k sobě a vychoval ho spolu se Stašem jako vlastní dítě.
}
Po té noci začala ves stavět nové kapličky – u cest, na rozcestích, na kraji lesa a u lávky přes mokřady – vedle několika starých, ztrouchnivělých sloupů podél boru, o nichž už nikdo nepamatoval, kdo je postavil. Každým rokem jich přibývalo, až v celé Zapadlině nezůstalo místo, odkud by nebyla vidět aspoň jedna.
Z Dobrosława vyrostl mlčenlivý, silný muž. Nikdy nechodil k bažinám a nikdy nesestoupil do žádného sklepa. Oženil se s dívkou ze sousední vsi a brzy se mu narodil syn.
Dali mu jméno Jaromir. # dalej
-> prolog_ciag_dalszy


// ------------------------------------------------------------
//  Zakończenie B – figurka u handlarza albo bez figurki: spokojne lata.
// ------------------------------------------------------------
=== lata_spokoju ===
# tlo: kapliczki
# rozdzial: Prolog
# tytul: Léta klidu
Utopec nepřišel. Ani ten rok, ani další.
Maciek a Marianna orali pole, které bylo rok od roku o kus větší. Dobrosław rychle rostl – nejdřív pásl husy, pak chodil za pluhem, až nakonec sám vodil koně.{ los_psa == oswojony: Pes zestárl u prahu a jedné zimy už nevstal. Pohřbili ho pod lesem.}
Někdy, za dlouhých zimních večerů, vyprávěl Maciek chlapci o prvním jaru v Zapadlině. O vytí v houští, o tom, co vyšlo z mlhy u přístřešku, o hlasu, který ho volal od bažin. O bylinkářce upálené v chatě u jezera. Syn poslouchal s rozpálenými tvářemi, ale měl to za pohádky – takové, jaké se vyprávějí dětem, aby nechodily samy k vodě.
Když syn dospěl, začala ves stavět nové kapličky, vedle několika ztrouchnivělých sloupů podél boru, o nichž už nikdo nepamatoval, kdo je postavil. Jednu u cesty z Bukového hřbetu, druhou na kraji lesa, třetí u lávky přes mokřady. Potom přibývaly další, až stály skoro u každé meze. Lidé říkali, že od té doby pomrkávají světla nad bažinami méně často. Dobrosław tomu nevěřil, ale každý rok v máji zdobil kapličky květinami spolu s ostatními. # pokaz: kapliczki
Rodiče Dobrosława zemřeli stářím, jeden po druhém, v téže chatě, kterou kdysi Maciek postavil od první klády. Dobrosław se oženil s dívkou ze sousední vsi a brzy se mu narodil syn.
Dali mu jméno Jaromir. # dalej
-> prolog_ciag_dalszy
