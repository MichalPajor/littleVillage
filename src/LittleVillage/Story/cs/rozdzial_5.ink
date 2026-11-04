// ------------------------------------------------------------
//  Rozdział piąty – Tartak. Cztery lata po Marzannie: Jaromir ma
//  trzynaście lat, Franek siedemnaście. Tartak pana Urbaniaka,
//  ścięcie Starego Dębu (granicy boru), ubożę za piecem.
//  Ojciec jak w poprzednich rozdziałach:
//    figurka_u_staruchy – milczący, nieufny wobec Urbaniaka;
//    inaczej            – waha się, bo pieniądze by się przydały.
// ------------------------------------------------------------

=== rozdzial_piaty ===
# tlo: budowa_tartaku
# rozdzial: Kapitola pátá
# tytul: Pila
Po tom jaru začal čas plynout rychleji, jako by mu někdo povolil otěže.
Ještě téhož léta přivezli Urbaniakovi lidé k potoku první fůry trámů. Stavěli celý podzim – od rána do noci tloukli kladivy, kopali náhon pro vodní kolo a proklínali hlínu, která se jim lepila na boty až po kolena. Děti z celé vsi se sbíhaly dívat, jak roste velká kůlna, a starší vrtěli hlavami a říkali, že z toho nic dobrého nevzejde. # pokaz: budowa
Zimy míjely jedna za druhou. Jaromir chodil do školy v Bukowci ještě tři roky. Naučil se psát tak úhledně, že mu učitel dával opisovat koledy pro varhaníka, a počítat tak rychle, že ho otec začal brávat na jarmarky, aby dohlédl, jestli handlíři nešidí na váze.{ ekwipunek ? ksiega: Knihu pana Ignacyho četl tak často, že polovinu pověstí znal nazpaměť a ostatní si pro jistotu opisoval do sešitu z hrubého šedého papíru.}
Každé jaro rozkvétaly na lukách tytéž blatouchy, každé léto klapali čápi na kovárně a každý podzim se nad poli vlekl dým z ohníčků z bramborové natě stejně jako tehdy, když Jaromir šel poprvé do školy. Měnilo se jen jedno: rok od roku bylo od boru slyšet méně ptáků a víc skřípění pily. # pokaz: lata
Z Antka vyrostl hubený, vážný chlapec, který nejraději vysedával v kovárně u Hančina otce a učil se kovat podkovy. Zosia, jeho sestřička, už pobíhala po dvoře a pletla se dospělým pod nohy{ polnocnica == uslyszala_krzyk: – bledá a churavá, s šedou skvrnkou na čele, kterou jí matka schovávala pod šátek}. Franek rostl ze všech čtyř nejrychleji, a když mu bylo šestnáct, šel jako první na pilu za výdělkem. O rok dřív, o svatojánské noci, zmizela u jezera Kaśka Wójciková, která od žní chodila za Frankem krok za krokem. Franek se jí před chlapci posmíval až do posledního dne – a potom už nikdy.
A Hanka… Hanka prostě byla. Každý den, od rána do večera, hned vedle – a Jaromir si toho začal všímat teprve tehdy, když mu jednou chyběla, protože jela s otcem na jarmark do města, a on si celý den nemohl najít místo. # pokaz: hanka # dalej
-> tartak_stoi

= tartak_stoi
# tlo: tartak
Od té doby, co u potoka, který stékal z boru do jezera, stála pila pana Urbaniaka, neusínal už v Zapadlině nikdo v tichu. Velká dřevěná kůlna měla vodní kolo, které se točilo ve dne v noci, a pilu, jejíž skřípot se nesl celým údolím. Od svítání do soumraku jezdily cestou pod borem vozy plné kmenů a na place vedle rostly hromady prken, která voněla pryskyřicí tak silně, že to bylo cítit až v Bukowci.
Ves se rozdělila na dva tábory. Jedni chodili na pilu do práce a vraceli se s výdělkem, jaký se v Zapadlině dřív nevídal. Druzí si odplivovali přes rameno, kdykoli je míjel vůz se dřevem, a potichu říkali, že les nic nedává zadarmo.
{ figurka_u_staruchy:
    Otec patřil k těm druhým. Když k němu Urbaniak poslal člověka, aby ho přemluvil, vyvedl ho otec beze slova za plot.
- else:
    Otec dlouho váhal. Peníze by se hodily – nový pluh, kráva, střecha nad stodolou – ale každý večer sedal na prahu a poslouchal pilu a tvář měl čím dál zachmuřenější.
}
Jaromirovi bylo třináct let. Vyšel ze školy, vytáhl se do výšky jako mladý smrk a s každým měsícem chodil s otcem na pole častěji.{ ekwipunek ? szczeniak: {imie_psa} vyrostl ve velkého psa se špičatýma ušima a nehnul se od Jaromira ani na krok – jen směrem k boru se nedal za nic na světě dotáhnout.}
Franek, kterému už bylo sedmnáct a měl plece jako dřevorubec, pracoval na pile už rok. Jednoho večera přišel k Jaromirovu plotu a cinkal přitom mincemi v kapse. # pokaz: franek
– Urbaniak shání kluky na rovnání prken – řekl. – Platí stříbrem, každou sobotu. Pojď se mnou. Za léto vyděláš víc než tvůj táta za rok.
# pytanie: Půjde Jaromir na pilu?
*   [Jít pracovat na pilu.]
    ~ pracowal_w_tartaku = true
    Druhý den ráno stál Jaromir před Urbaniakem. Pán v městském plášti si ho prohlédl od hlavy k patě jako koně na jarmarku, poplácal ho po rameni a utrousil jen: – Bude se hodit. Jen ať mi nezahálí na můj účet. # pokaz: urbaniak
    { figurka_u_staruchy:
        Otec s ním celý týden nepromluvil. # dalej
    - else:
        Otec si povzdechl a nakázal mu, ať si dává pozor na prsty. # dalej
    }
    -> przy_pile
*   [Odmítnout – jeho místo je na poli.]
    – Ne – řekl Jaromir. – Otec to beze mě nezvládne.
    Franek pokrčil rameny a odešel s hvízdáním, ale Jaromir ještě dlouho slyšel ve tmě cinkot stříbra. # dalej
    -> w_polu

= przy_pile
# tlo: ognisko_tartak
~ ekwipunek += monety
Práce byla těžká. Od svítání Jaromir nosil prkna, až měl ruce rozpíchané od třísek a vlasy plné pilin. Vodní kolo vrzalo, ostří kvílelo a voda v potoce tekla hnědá od kůry. Všechno vonělo čerstvou pryskyřicí a mokrým dřevem a v hrdle škrábal dřevěný prach, který se nedal vykašlat ani v noci.
Po večerech se u ohně pilařům rozvazovaly jazyky. Jiskry odletovaly do tmy a tváře lidí vypadaly v rudém světle starší, než byly. Starý Wawrzyniec, který celý život pracoval u katru, říkal, že se na téhle pile děje něco zlého. Pilový list praskl už dvakrát, ačkoli byl nový. Ráno bývaly hromady prken rozházené po celém place, a přece nefoukalo. A jednou, když zůstal přes noc hlídat dříví, slyšel, jak ve tmě někdo chodí mezi kmeny, u každého se zastaví a vzdychá – dlouze, těžce, jako ženská nad hrobem na Dušičky. # pokaz: stukanie
– Les se přihlásí o své – opakoval a házel do ohně poleno. – Vždycky se přihlásí.
Vyprávěl, že když první lidé sestoupili do tohohle údolí, les je nechtěl. Teprve když podél boru postavili kapličky a slíbili, že za Starý dub se sekerou nepůjdou, bor ustoupil. Ale něco za něco: jednou za pokolení si les vezme dítě na pár nocí. O tom se Wawrzyniec zmínil jen jednou, ztišeným hlasem, a hned si odplivl přes rameno. – To se nevykládá. Kdo o tom mluví, ten si o to říká.
Jindy zase říkal: – Kapličky jsou jako hřebíky v plotě. Vytrhneš jeden, plot ještě stojí. Vytrhneš všechny…
První sobotu dostal Jaromir od Urbaniaka hrst mincí – těžkých, studených, s orlem na jedné straně. Nikdy ještě nedržel v ruce tolik peněz najednou.
Hanka, když jí mince ukázal, se jich ani nedotkla. – Hezky se lesknou. Kolik stromů za ně asi padlo – řekla a několik týdnů ho na cestě míjela beze slova, s nosem nahoru.
-> pregi_franka

= w_polu
# tlo: pole_orka
Léto mu ubíhalo u kosy a pluhu. Z pole viděl, jak cestou pod borem jedou další vozy s kmeny, a z hloubi lesa se čas od času ozvalo zapraskání – dlouhé, drásavé, a potom hluché zadunění, až se země zachvěla. Pokaždé se otec nad pluhem narovnal, smekl čepici a pokřižoval se – stejně jako tehdy, když vsí nesli rakev. # pokaz: drzewo
Franek se u nich zastavoval čím dál řidčeji – u ohně pilařů měl teď nové kumpány, a když už přišel, mluvil jen o stříbře. Zprávy z pily přinášel Antek, který bratrovi každý den nosil oběd zavázaný v šátku: že pilový list praskl už dvakrát, ačkoli byl nový, a ráno leží hromady prken rozházené po celém place, přestože hlídač přísahá, že nikoho neviděl. – Franek se tomu směje – říkal Antek. – Jenže se směje moc nahlas. # pokaz: franek
Ještě před senosečí odvedl otec do Bukowce prasátko, které matka vykrmovala na zimu – na daň nebylo z čeho. Vrátil se s prázdným provazem a až do večera nepromluvil ani slovo. Jaromir věděl, že kdyby nosil prkna u Urbaniaka, kvičelo by prasátko pořád v chlívku.
-> pregi_franka

= pregi_franka
Jednou, když si Franek myslel, že se nikdo nedívá, viděl ho Jaromir, jak se škrábe na předloktí. Táhly se po něm tři dlouhé, čerstvé šrámy, jako od drápů.
– Zavadil jsem o hřebík – zabručel, když zachytil jeho pohled, a stáhl si rukáv.
Večer přišel k plotu Antek. Dlouho stál mlčky a loupal kůru z laťky.
– On v noci nespí – ozval se nakonec. – Sedí na zápraží. Až do svítání. Ptám se, na co čeká – na pilu, povídá. Jenže pila v noci stojí. – Zvedl k Jaromirovi oči. – Mě neposlechne. Jsem pro něj soplák. Tebe možná. # dalej
-> stary_dab

= stary_dab
# tlo: stary_dab
V polovině června došli Urbaniakovi lidé ke Starému dubu.
Rostl na kraji boru, tam, kde stezka ze Zapadliny zahýbala k Bukovému hřbetu – tak mohutný, že by ho čtyři chlapi neobjali, s korunou, pod kterou se v parnu schovávala celá stáda. Říkalo se, že tu stál už tehdy, kdy v údolí nebyla ještě ani jedna chalupa. Nikdo z něj nikdy neulomil ani větvičku. Kůru měl drsnou a teplou jako kůže spícího zvířete a ve větvích bez ustání šumělo, i když se na louce nehnulo jediné stéblo.
Teď se na kůře bělalo čerstvé znamení. # pokaz: znak
{ ekwipunek ? ksiega:
    Jaromir si ten dub pamatoval z knihy pana Ignacyho. „Starý dub na kraji boru,“ psal učitel, „je strom, který Pán lesa střeží jako vlastní srdce. Dokud stojí, končí les tam, kde končí. Kdo ho porazí, otevře Pánu lesa cestu do vsi.“
- else:
    Jaromir si vzpomněl, co pan Ignacy jednou v pátek vyprávěl: že jsou stromy, které Pán lesa střeží jako vlastní srdce, a že ty nejstarší z nich vyznačují hranici, za kterou končí jeho moc.
}
– V pondělí ho kácíme – řekl Franek, když se spolu vraceli od potoka. – Urbaniak povídá, že z takového kmene bude prken na celý panský dvůr. Mně připadl první řez. Tři dny mzdy napřed. # pokaz: chlopcy
# pytanie: Varuje Jaromir Franka?
*   [Varovat Franka, ať Starý dub nekácí.]
    Jaromir ho chytil za rukáv.
    – Nedělej to. Ten dub je hranice. Jak padne, les přijde do vsi.
    Franek se rozesmál, ale smích mu rychle uhasl, když se kamarádovi podíval do očí. Dlouho mlčel.
    – Hlouposti mluvíš – zamumlal nakonec.
    V pondělí ráno ale na pilu nepřišel. Urbaniak ho ještě téhož dne vyhodil z práce. # dalej
    -> sciecie
*   [Mlčet – stejně by neposlechl.]
    ~ franek_scial_dab = true
    Jaromir nic neřekl. Díval se, jak Franek odchází s hvízdáním k pile, a měl podivný pocit, že ho takhle vidí naposledy – ačkoli se přece nazítří měli sejít jako vždycky. # pokaz: odchodzi # dalej
    -> sciecie

= sciecie
# tlo: sciecie_debu
~ zapiski += pan_lasu_2
V pondělí se pod Starým dubem sešla polovina vsi. { franek_scial_dab: Franek a druhý pilař | Dva pilaři od Urbaniaka } se postavili se sekerami po obou stranách kmene a pan Urbaniak stál opodál a každou chvíli pokukoval po hodinkách na zlatém řetízku.
Než se stačili rozmáchnout, vystoupila z davu Hanka. Přišla ke kmeni, přiložila na kůru obě dlaně a něco mu pošeptala – krátce, se zavřenýma očima. Urbaniak poručil, ať ji odtáhnou, ale nikdo se nehnul, dokud se sama nevrátila mezi lidi.
– Řekla jsem mu, že to nejsem já – vysvětlila potom Jaromirovi, rudá až po uši. – Ať ví, koho má hledat.
První rána se od kůry odrazila jako od kamene. Druhá taky. Teprve napotřetí vniklo ostří do dřeva – a z rány vytryskla míza, hustá a tmavě rudá jako krev.{ franek_scial_dab: Šplíchla Frankovi přímo do obličeje. Chlapec ucouvl, otřel si oči rukávem a nervózně se zasmál, ale Jaromir viděl, že se mu třesou ruce.| Šplíchla pilařům na boty a jeden z nich s kletbou uskočil.} # pokaz: sok
Káceli až do soumraku. Dub sténal při každé ráně, takže si ženské zacpávaly uši a psi ve vsi vyli jako na pohřbu. Když konečně padl, země se otřásla až pod chalupami a od boru se ozval křik – táhlý, žalostný, jako by les ztratil něco, co už nikdy nezíská zpátky. Potom nastalo ticho. I ptáci zmlkli. # pokaz: upadek
Zůstal jen pařez – široký jako stůl, se stovkami letokruhů, které se stáčely dovnitř do těsné spirály.{ ekwipunek ? kora: Stejná jako na borovici u stezky a na sloupku kapličky.} Zpod kořenů se vysypala hrst loňských žaludů – zdravých a lesklých, jako by je tam někdo uschoval. – Co si zpod Dubu vezmeš, to Dubu dlužíš – zašeptala Hanka, která stála hned vedle. – Tak se říká. Na celý život.
# pytanie: Co udělá Jaromir?
*   [Zvednout žalud zpod Starého dubu.]
    ~ ekwipunek += zoladz
    Jaromir jeden zvedl – velký, hladký a teplý, ačkoli slunce už dávno zapadlo. Schoval ho do kapsy a celou cestu domů ho svíral v dlani, jako by v ní držel něco živého. # pokaz: zoladz # dalej
    -> uboze_za_piecem
*   [Odejít s prázdnýma rukama.]
    Jaromir se otočil a vydal se domů. Za zády slyšel, jak Urbaniakovi lidé jásají a otvírají demižon kořalky, a od boru táhl chlad, přestože byla červnová noc. # pokaz: wiwat # dalej
    -> uboze_za_piecem

= uboze_za_piecem
# tlo: uboze_piec
Té noci v chalupě nikdo nespal klidně.{ ekwipunek ? szczeniak: {imie_psa} vrčel u dveří až do svítání.} Hrnce na polici samy cinkaly a v komíně cosi šoupalo a pištělo jako myš.
Jaromir sešel do jizby pro vodu. Vonělo to kvasem z díže a hliněná mazanina studila do bosých nohou. U pece, v pruhu měsíčního světla, seděl drobounký stařeček – ne větší než kočka, v záplatovaném kabátku převázaném provázkem. Šedivá brada mu sahala až na zem a její konec se ovíjel kolem tenkých slepičích nožek. Měl velký nos, huňaté obočí a úzká očka, která se nejspíš obvykle smála, a na hlavě červenou špičatou čepičku s převislým cípem. V ručkách svíral stéblo slámy vytažené ze slamníku a celý se třásl, ačkoli v ohništi ještě doutnaly uhlíky. # pokaz: uboze
– Bojím se – pípl tenoučce, než chlapec stačil vykřiknout. – Jde to. Neslyšíš? Jde to.
Jaromir si vzpomněl, co { figurka_u_staruchy && los_psa == oswojony: babička | matka } kdysi vyprávěla o hospodáříčcích: že bydlí za pecí ve starých chalupách, že kdo je krmí, tomu se v hospodářství daří, a kdo je vyžene, ten přivolá na dům bídu. Ale taky se smíchem říkala, že je to pohádka pro děti, aby se nehrabaly v popelu – a Jaromir nikdy nevěděl, čemu z toho věřila.
# pytanie: Co udělá Jaromir?
*   [Postavit mu náprstek mléka.]
    ~ uboze = nakarmione
    Jaromir nalil mléko do matčina náprstku a postavil ho k peci, do teplého popela. Stařeček hltavě pil a mlaskal, potom si otřel bradu rukávem a pohlédl na něj bystrými očky. # pokaz: mleko
    – Dobrý jsi hospodář – řekl. – Zapamatuju si to. Pomůžu, až přijde čas.
    A už byl pryč – jen za pecí cosi zašramotilo a utichlo. # pokaz: zniknal
    Ráno stál džbán plný mléka až po okraj, ačkoli matka přísahala, že večer zbývalo jen na dně. Zato u Stašových dala kráva najednou sotva půl dojení a stará Stašová chodila po vsi a vyptávala se, kdo ji uhranul. # dalej
    -> przed_zniwami
*   [Vyhnat ho z jizby.]
    ~ uboze = przegnane
    – Táhni odsud! – sykl Jaromir a rozmáchl se utěrkou. # pokaz: zniknal
    Stařeček žalostně pípl a zmizel ve škvíře pod pecí. Druhý den přestala kráva dojit a v komoře se usadily myši. Matka nemohla pochopit, co se stalo. # pokaz: myszy # dalej
    -> przed_zniwami
*   [Dělat, že nic nevidí, a vrátit se do postele.]
    ~ uboze = zignorowane
    Jaromir odvrátil zrak, vrátil se na lože a přetáhl si peřinu přes hlavu. Když ráno sešel do jizby, popel na zápecí byl rozhrabaný jako od slepice, která hledá místo na noc a nemůže ho najít. Zpoza pece se pak už neozval ani jediný šelest. # pokaz: zniknal, slady # dalej
    -> przed_zniwami

= przed_zniwami
# tlo: przed_zniwami
~ zapiski += uboze_1
Pila pracovala dál, jako by se nic nestalo.
{ franek_scial_dab:
    Franek dostal od Urbaniaka tři dny mzdy a nový kabát, ale co porazil dub, už nebyl takový jako dřív. Ve dne spal a po nocích se toulal u jezera. Říkal, že nemůže usnout, protože ho cosi volá – tenkým, zpěvavým hlasem, jako děvčata při praní. # pokaz: franek_noc
- else:
    Franek se na pilu nevrátil. Najímal se k lidem na pole, ale chodil zasmušilý a podrážděný, jako by těch peněz litoval.
}
Ve vsi se začaly dít divné věci. Ráno lidé nacházeli mezi záhony trsy mechu, který vyrostl přes noc – měkkého a mokrého, jako zpod nejstarších smrků. Mléko kyslo ve džbánech dřív, než stačilo vychladnout, a zeleň od boru stála každé ráno o kousek blíž k plotům, ačkoli nikdo neviděl, kdy se přiblížila. # pokaz: slady
Pan Urbaniak se v krčmě v Bukowci chlubil, že do roka prořízne bor cestou skrz naskrz a kapličky, které u ní stojí, dá přestěhovat, protože překážejí vozům.
Blížily se žně. # dalej
-> rozdzial_piaty_ciag_dalszy


// Koniec rozdziału piątego – dalej rozdział szósty.
=== rozdzial_piaty_ciag_dalszy ===
# ozdobnik
_Konec páté kapitoly._ # dalej
-> rozdzial_szosty
