// ------------------------------------------------------------
//  Rozdział szósty – Południca. Żniwa w upale, Jaromir ma trzynaście
//  lat. Południca zadaje w samo południe trzy zagadki; za każdą
//  pomyłkę tnie sierpem. Księga daje dodatkową odpowiedź. Przy dwóch
//  i więcej pomyłkach ratuje go Hanka z dzbanem wody (gorączka, blizna),
//  inaczej Południca ostrzega: „Pan Lasu się budzi, pilnuj kapliczek”.
// ------------------------------------------------------------

=== rozdzial_szosty ===
# tlo: zniwa
# rozdzial: Kapitola šestá
# tytul: Pravé poledne
Žně přišly ve velikém vedru. Už několik týdnů nespadla ani kapka deště, nebe bělelo žárem hned od svítání a země na mezích pukala v dlouhé, klikaté trhliny. Obilí dozrálo náhle, za pár dní, a stálo teď na polích zlaté a suché a při každém závanu šustilo jako papír.
Vycházeli na pole, ještě než zakokrhali kohouti. Muži šli vpředu, ženy za nimi vázaly snopy a děti sbíraly klásky a nosily vodu v hliněných džbáncích. Jaromirovi bylo třináct a poprvé kosil obilí spolu s dospělými – v řadě, krok za krokem za otcem, a ostří mu v rukou svištělo skoro tak pravidelně jako starým žencům. Vzduch byl cítit rozpálenou slámou a potem, kosy zvonily o brousky a zpod nohou každou chvíli vyletovaly vyplašené křepelky.
Hanka pracovala na vedlejším záhonu. Chvílemi se narovnala, otřela si čelo hřbetem ruky a pokukovala po Jaromirovi, a když se jejich pohledy setkaly, hned odvrátila hlavu a s předstíranou horlivostí se vrátila ke snopům. Jaromir nevěděl, proč je mu pokaždé tak divně horko – a ne od slunce. # pokaz: hanka
{ figurka_u_staruchy:
    Otec skoro nemluvil. V pravé poledne vždycky poslal všechny z pole do stínu, i kdyby se mělo žito vysypat.
- else:
    Otec při práci žertoval a zpíval, ale v pravé poledne vždycky poslal všechny z pole do stínu. – Dědeček to tak dělal – říkal – a jeho dědeček taky. Nevymyslel jsem si to já. – A když děti vyzvídaly, vyprávěl o děvčici, nejlepší žnečce v okolí, která se vsadila s čeledíny, že sama do poledne požne celý lán. V největším parnu z pole neodešla. Večer ji našli se srpem v ruce a s klasy ve vlasech.
}
Jednoho dne zůstal Jaromir sám na konci záhonu. Chtěl dosekat řádek, než půjde do stínu, a nevšiml si, kdy ostatní odešli pod hrušeň na mezi. Slunce se mu zastavilo přesně nad hlavou a stín se scvrkl a zmizel pod nohama. # pokaz: sam # dalej
-> poludnica_przychodzi

= poludnica_przychodzi
# tlo: poludnica
Nastalo ticho. Cvrčci zmlkli, obilí přestalo šustit a vzduch nad polem zhoustl a zavlnil se jako voda nad rozpáleným kamenem.
Mezi klasy se objevila žena. # pokaz: poludnica
Byla vysoká a hubená, rovná jako struna, v bílé košili po kotníky, která se vlnila, ačkoli nevál ani ten nejslabší vánek. Světlé vlasy jí sahaly po kolena a rozvívaly se do stran a na hlavě měla věneček z klasů a rudých máků. Obličej měla bledý a úzký, s vysokými lícními kostmi, oči jako plátno bělené na slunci, bez zorniček, a ústa sevřená do tenké čárky. Bosé nohy se nedotýkaly země – vznášela se pár palců nad strništěm a pod ní se chvěl žár. V pravé ruce držela srp. Na jeho špičce visela rudá kapka.
Levou dlaň k němu vztáhla, otevřenou, jako by o něco prosila.
– Kdo v mou hodinu pracuje – řekla hlasem suchým jako praskot slámy – ten mi musí odpovědět. Tři hádanky. Za každý omyl – jeden řez.
{ ekwipunek ? ksiega:
    Jaromirovi vyvstala před očima stránka z knihy pana Ignacyho: „Polednice chodí po polích v největším parnu a vyptává se ženců. Kdo na všechno odpoví, je volný. Kdo se splete nebo uteče, toho podetne srpem nebo na něj sešle horečku.“ Pod tím učitel drobněji připsal jedno rozluštění, které kdysi slyšel od staré ženy z Bukowce, a dvakrát je podtrhl: „Zrno třikrát umírá a třikrát se vrací.“
}
# dalej
-> zagadka_1

= zagadka_1
Polednice naklonila hlavu na stranu jako pták.
– Bez nohou běhá obilím, bez rukou češe klasy, bez huby kvílí v komíně. Každý ho slyšel, a ještě nikdo ho neviděl. Co je to?
# pytanie: Co odpoví Jaromir?
*   [Oheň.]
    -> zle_1
*   [Vítr.]
    Polednice chvíli mlčela. Potom jí cuklo v koutcích – nebyl to úsměv, spíš něco, co ho připomínalo.
    – Vítr – zopakovala. – Můj bratr. Dobře. # dalej
    -> zagadka_2
*   [Dým.]
    -> zle_1

= zle_1
{ odwaga_jaromira && not poludnica_darowala:
    ~ poludnica_darowala = true
    Srp svistl – a zastavil se na vlásek od jeho ramene. Jaromir se ani nepohnul. {figurka_u_staruchy:Jednou se mu na hluboké vodě cosi otřelo o lýtko a on utekl ke břehu. Teď neutekl.|Jednou v rákosí u jezera položil dlaň na ohořelý trám, ačkoli ostatní na to neměli odvahu. Teď necouvl.}
    – Neutíkáš – řekla polednice a odtáhla ostří. – Tuhle jednu ti daruji. Ale byl to vítr. Oheň a dým viděl každý, ale vítr ještě nikdo. # dalej
    -> zagadka_2
}
~ pomylki_poludnica += 1
~ ciecie_ramie = true
Srp svistl dřív, než Jaromir stačil mrknout. Ucítil na rameni palčivou bolest, a když se podíval dolů, prosakovala mu roztrženou košilí krev. # pokaz: ciecie
– Špatně – řekla polednice. – Vítr. Oheň a dým viděl každý, ale vítr ještě nikdo. # dalej
-> zagadka_2

= zagadka_2
– Pohřbívají ho do země jako nebožtíka, a přece vstane. Stínají ho jako zločince, a nekrvácí. Bijí ho, a nenaříká. A když ho strčí do žáru – teprve pak ho chce každý. Co je to?
# pytanie: Co odpoví Jaromir?
*   [Len.]
    -> zle_2
*   [Žito.]
    – Žito – zašeptala a její bílá tvář na okamžik změkla, jako by si vzpomněla na vlastní žně, kdysi dávno. – Bystrý chlapec. # dalej
    -> zagadka_3
*   [Brambora.]
    -> zle_2
*   { ekwipunek ? ksiega } [Zrno.]
    ~ poludnica_uklon = true
    Polednice otevřela ústa a beze slova je zase zavřela. Dlouho na něj hleděla těma bílýma očima a potom sklonila hlavu – lehce, sotva znatelně, jako před někým, koho si váží. # pokaz: uklon
    – Zrno – zopakovala tiše. – V zemi umírá, zpod kosy a cepu se vrací a v peci se rodí jako chléb. Takovou odpověď jsem neslyšela sto let. Někdo tě dobře učil. # dalej
    -> zagadka_3

= zle_2
{ odwaga_jaromira && not poludnica_darowala:
    ~ poludnica_darowala = true
    Srp svistl – a zastavil se na vlásek od jeho ruky. Jaromir se ani nepohnul. {figurka_u_staruchy:Jednou se mu na hluboké vodě cosi otřelo o lýtko a on utekl ke břehu. Teď neutekl.|Jednou v rákosí u jezera položil dlaň na ohořelý trám, ačkoli ostatní na to neměli odvahu. Teď necouvl.}
    – Neutíkáš – řekla polednice a odtáhla ostří. – Tuhle jednu ti daruji. Ale bylo to žito. Len se nepeče a bramboru nikdo nemlátí. # dalej
    -> zagadka_3
}
~ pomylki_poludnica += 1
~ ciecie_dlon = true
Srp se mihl vzduchem. Řez přešel přes hřbet ruky, mělce, ale krev vystříkla na strniště. # pokaz: ciecie
– Žito – sykla. – Len se nepeče a bramboru nikdo nemlátí. # dalej
-> zagadka_3

= zagadka_3
Vzduch se zavlnil silněji. Žár Jaromirovi stoupal k hrdlu, v uších mu zvonilo a pole se začalo houpat, jako by stál na loďce.
– A teď mi pověz – polednice ztišila hlas – kdo má dům starší než všechny chalupy v okolí, a nejsou v něm jediné dveře? Kdo pase vlky, jako vy pasete ovce? A komu letos vytrhli z plotu nejtlustší kůl, dubový?
# pytanie: Co odpoví Jaromir?
*   [Svatý Jiří.]
    ~ pomylki_poludnica += 1
    ~ ciecie_policzek = true
    – Svatý? – Polednice se zasmála, suše a nepříjemně, jako když praská strniště. – Svatí sedí v kapličkách, chlapče. A tamten čeká, až mu je někdo povytrhává.
    Ostří se zablesklo. Jaromir ucítil na tváři ostré škrábnutí a po bradě mu steklo něco teplého. # pokaz: ciecie
*   [Pán lesa.]
    Všechno ztichlo ještě víc, ačkoli se zdálo, že tišeji už být nemůže. Polednice stáhla nataženou ruku.
    – Znáš ho – řekla a poprvé jí v hlase zaznělo cosi jako strach. – To je zlé. Protože on zná taky tebe.
*   [Nevím.]
    Polednice dlouho mlčela.
    – Víš – řekla. – Jen se bojíš to říct. To je rozumné. Nevyslovuj jeho jméno v poledne.
-   -> wynik

= wynik
{ pomylki_poludnica:
- 0:
    Polednice spustila srp.
    – Jsi volný – řekla. – Ale poslouchej, protože to nebudu opakovat. Pán lesa se probouzí. S každým poraženým stromem spí mělčeji. Hlídej kapličky, chlapče. Hlídej je, dokud stojí.
- 1:
    Polednice si ho dlouho prohlížela a potom spustila srp.
    – Mohlo to být horší – řekla. – Jdi. Ale pamatuj si: Pán lesa se probouzí. Hlídej kapličky.
- else:
    Polednice zvedla srp vysoko, nad jeho hlavu. Chlapec zavřel oči – a vtom uslyšel křik. # pokaz: zamach
}
Někdo vbíhal na záhon a klopýtal přes snopy. Hanka. V rukou nesla hliněný džbán, ze kterého šplíchala voda. # pokaz: dzban
– Jaromire! Jaromire, co tu děláš v pravé poledne?!
{ pomylki_poludnica < 2:
    ~ ostrzezenie_poludnicy = true
    Když se znovu podíval před sebe, nebyl tam už nikdo. Jen na strništi ležel věneček z klasů a máků, které už začínaly vadnout. # pokaz: znika, wianek # dalej
    -> po_poludniu
- else:
    Hanka nezpomalila. Doskočila k chlapci a chrstla vodu ze džbánu – ne na něj, ale před sebe, tam, kde se vlnil žár.
    – Na, pij! – vykřikla do prázdna hlasem, který se jí lámal, jak ji to učila babička. – Pij a pusť ho!
    Polednice se se zdviženým srpem zarazila. Pohlédla na děvče, potom na tmavou skvrnu, která mizela v rozpraskané zemi – a rozplynula se ve chvějícím se vzduchu jako pára. Hanka vylila Jaromirovi zbytek vody na hlavu. # pokaz: znika, woda # dalej
    -> goraczka
}

= goraczka
# tlo: goraczka
~ blizna_sierpa = true
~ zapiski += poludnica_1
Tři dny ho stravovala horečka. Ležel v chalupě pod mokrými plachtami, {rany_sierpa()} pálily jako od rozžhaveného železa a v blouznění pořád viděl bílé oči bez zorniček a slyšel suchý šepot: „Za každý omyl – jeden řez.“ # pokaz: majaki
Matka se od něj ani na krok nehnula. Hanka nosila byliny od babičky, a druhý den, aniž komu co řekla, šla v pravé poledne na ten záhon a postavila na mez džbán čerstvé vody. Vrátila se celá rozechvělá a nechtěla povědět, co tam viděla. Té noci začala horečka klesat. # pokaz: hanka
Když konečně vstal, zůstala mu na {miejsce_blizny()} bílá jizva ve tvaru půlměsíce, jako od špičky srpu.
-> czy_powiedziec

= po_poludniu
# tlo: czerwony_ksiezyc
~ zapiski += poludnica_1
~ mak_w_medaliku = true
Žencům neřekl, co se stalo v pravé poledne. Jen večer, když seděl s Hankou na plotě a dívali se, jak nad strništěm vychází veliký rudý měsíc, vytáhl z kapsy zvadlý mák z věnečku a položil jí ho na dlaň. # pokaz: mak
Od polí to vanulo prachem a sluncem vyprahlou zemí, cvrčci cvrkali jako pominutí a Hanka seděla tak blízko, že přes košili cítil teplo jejího ramene.
– Od koho to je? – zeptala se.
– Od někoho, kdo mi kázal hlídat kapličky – řekl.
Hanka nepochopila, ale schovala mák do medailonku, který nosila na krku, a od té doby se s ním nerozloučila.
-> czy_powiedziec

= czy_powiedziec
Antek Jaromira odchytil, sotva zůstali sami.
– Viděl jsem tě zpod hrušně – řekl tiše. – Stál jsi sám na konci záhonu a mluvil do vzduchu a vzduch se nad tebou chvěl jako nad výhní v kovárně. – Polkl. – Jestli to budeš říkat dospělým, povím i já, co jsem viděl. Dvěma spíš uvěří.
# pytanie: Řekne to Jaromir otci?
*   [{ostrzezenie_poludnicy:Říct otci o varování polednice.|Říct otci o polednici.}]
    ~ powiedzial_ojcu_poludnica = true
    # tlo: kapliczki_noc
    { figurka_u_staruchy:
        Otec syna mlčky vyslechl. Potom vstal, sundal z hřebíku lucernu a vyšel do noci. Vrátil se k ránu. Matka později vyprávěla, že obešel všechny kapličky v Zapadlině a u každé klečel, jako by prosil o odpuštění. # pokaz: ojciec # dalej
    - else:
        Otec se nezasmál. Dlouho mlčel a potom řekl, že zítra svolá lidi a půjdou spolu za Urbaniakem. – Kapliček se nedotkne – dodal. – I kdyby mi měl tu svou pilu shodit na hlavu. # pokaz: ojciec # dalej
    }
    -> rozdzial_szosty_ciag_dalszy
*   [Nechat si to pro sebe.]
    # tlo: kapliczki_noc
    Jaromir to nikomu neřekl – kromě Antka, který to stejně věděl. Každou noc, když už všichni spali, se oba vytratili z domu a obcházeli nejbližší kapličky. Rovnali nakřivené stříšky a vytrhávali plevel, který opřádal sloupky. Někdy uprostřed práce zmlkli cvrčci – nejdřív pod borem, pak čím dál blíž – a tehdy stáli bez hnutí, dokud se znovu nerozcvrkali. Jaromir se vracel před svítáním zalitý studeným potem, s nohavicemi mokrými od rosy, a dlouho nemohl usnout a naslouchal každému šelestu za oknem. # pokaz: jaromir # dalej
    -> rozdzial_szosty_ciag_dalszy


// Koniec rozdziału szóstego – dalej rozdział siódmy.
=== rozdzial_szosty_ciag_dalszy ===
# ozdobnik
~ zapiski += pan_lasu_3
_Konec šesté kapitoly._ # dalej
-> rozdzial_siodmy

=== function rany_sierpa()
{
- ciecie_ramie && ciecie_dlon && ciecie_policzek: ~ return "rány na rameni, ruce a tváři"
- ciecie_ramie && ciecie_dlon: ~ return "rány na rameni a ruce"
- ciecie_ramie: ~ return "rány na rameni a tváři"
- else: ~ return "rány na ruce a tváři"
}

=== function miejsce_blizny()
{
- ciecie_ramie: ~ return "rameni"
- ciecie_dlon: ~ return "ruce"
- else: ~ return "tváři"
}
