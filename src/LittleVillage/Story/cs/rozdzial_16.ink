// ------------------------------------------------------------
//  Rozdział szesnasty – W głąb boru. Jaromir wchodzi do boru po Marysię.
//  Ścieżki zawracają: ubranie na lewą stronę (las wyjmuje mu z pamięci twarz
//  córki, pies ucieka sam), nacięcia na pniach (las jęczy), pies (poziomki
//  i ostry mech) albo dziura w chmurach z rady płanetnika (pragnienie).
//  O zmierzchu głosy: odpowiedział Marysi (Leszy go policzył), milczał albo
//  poszedł za Frankiem (biały wilk). Bagno z garnkami i błędnice: za światłami
//  (rozpruta torba), krąg z soli, wilk (rana dłoni), różaniec (spalony)
//  albo krzesiwo (pożar porostu). W sercu boru dąb i starzec, który zdejmuje
//  kapelusz i rośnie w Pana Lasu: „Usiądź, wnuku Maćka. Porozmawiamy”.
// ------------------------------------------------------------

=== rozdzial_szesnasty ===
# tlo: skraj_bor
# rozdzial: Kapitola šestnáctá
# tytul: Do hloubi boru
Sedmdesát let poté, co dědeček Maciek sešel do Zapadliny s uzlíkem na rameni, pohlédl Jaromir poprvé k lesu – ne tak, jak se člověk dívá na bor z pole, z bezpečné strany plotu, ale tak, jak se dívá na cestu, kterou musí projít.
Stál na kraji mlází, se sekerou v ruce a s mošnou přes rameno. Stužku Marysie si omotal kolem zápěstí, aby ji cítil při každém pohybu.
{ obietnica_bor:
    Kdysi slíbil {figurka_u_staruchy && los_psa == oswojony:babičce na smrtelné posteli|otci}, že nikdy nevkročí do boru, ať by ho volal kdokoli. To slovo držel třináct let. První krok mezi borovice udělal opatrně, se srdcem v hrdle, a cítil, že láme něco, co už nepůjde slepit.
- else:
    {poszedl_po_wstazke:Od té doby, co jako chlapec vešel mezi smrky pro stužku Hanky, nezašel nikdy hlouběji než na pár desítek kroků.|Nikdy nezašel hlouběji než na pár desítek kroků, tam, kde utichali ptáci.} Nikomu to neslíbil – nohy se samy obracely, když stromy začínaly stát příliš hustě.
}
{ droga_do_boru:
    Na Urbaniakově průseku trčely z každého pařezu světlé výhonky a koleje zarostly mechem, ačkoli na podzim po nich jezdily vozy. U prvních velkých borovic cesta končila a dál už nebylo nic než bor.
- else:
    Prodral se mlázím, které v noci požáru přišlo až ke vsi. Smrky stály tak hustě, že se musel protahovat bokem, a jehličí se mu sypalo za límec.
}
{ ekwipunek ? szczenie_psa:
    Za humny ho dohonil pes – musel se Hance vytrhnout na prahu. Jaromir neměl srdce ho odehnat. Podstrčil mu dřevák Marysie; pes ho očichal, tence zakňučel a rozběhl se napřed. # pokaz: pies
}
Za prvními borovicemi všechno utichlo. Jehlice padaly z větví kolmo, bez šustotu, protože nebyl vítr, který by je odnesl. Z louky za jeho zády kapala rosa, ale tady byla země suchá a teplá, mech chrastil pod botami jako vyschlá kůže a ve vzduchu visela vůně pryskyřice a prohřátého dřeva, z níž škrábalo v krku.{ rada_przed_borem == rada_planetnika: „Tam, kde neprší“ – vzpomněl si Jaromir a sevřel prsty na topůrku sekery.} # pokaz: igly
Šel pořád rovně, až slunce vystoupilo vysoko. Konečně se smrky rozestoupily a uviděl mokrou louku, {pani_w_zbozu_noc == z_pochodniami:zdupané žito|{pole_zbite_gradem:obilí potlučené kroupami|{pani_w_zbozu_noc == gonil_babe:pošlapané žito|žito}}} a jalovec na kraji mlází. Vrátil se na totéž místo, odkud vyšel. Zkusil to podruhé, se sluncem po pravé ruce. A potřetí. Pokaždé ho bor vyvedl zpátky ke vsi – mírně, zdvořile, tak jak se doprovází k brance host, kterého nikdo nezval.{ ekwipunek ? szczenie_psa: Pes při každém pokusu trochu zaostával, s čenichem u kůry, a vracel se k Jaromirovi neochotně a kňučel.}
# pytanie: Jak Jaromir projde borem?
*   [Obrátit šaty naruby, jak učil pan Ignacy.]
    ~ wejscie_do_boru = ubranie_na_lewo
    # tlo: bor_suchy
    Svlékl kabát i košili a zase si je oblékl švy navrch.{ glos_w_lesie == kozuch: Přesně tak jako té zimní noci, kdy mu bylo devět let a stál {figurka_u_staruchy:na poli v mlze|ve sněhu pod borem}.} Když vykročil znovu, stezka se přestala stáčet zpátky. Les ho přijal za svého – větve se samy odkláněly stranou a mech vedl nohy.
    { ekwipunek ? szczenie_psa:
        ~ ekwipunek -= szczenie_psa
        ~ pies_pobiegl_sam = true
        Pes ho zdálky očichal a zježil srst jako na cizího. Pak se rozběhl dál sám, za pachem Marysie, a zmizel mezi kmeny. Jaromir na něj volal, až ochraptěl. # pokaz: pies_ucieka # tobolek
    }
    Šel dlouho. K večeru si sedl na kořen a zkusil si vybavit tvář Marysie – a vylekal se. Viděl stužku, viděl dřeváky, slyšel její smích, ale tvářička se mu rozplývala jako odraz ve vodě, do které někdo hodil kámen. Sevřel víčka a šeptal jedno po druhém: pihy na nose, zoubek, který jí rostl nakřivo, důlek v levém líčku. Bor ho uznal za svého – a potichu z něj vybíral to, co patřilo jen Jaromirovi. # dalej
*   [Značit si cestu sekerou na kmenech.]
    ~ wejscie_do_boru = naciete_pnie
    # tlo: bor_suchy
    Každých pár kmenů zanechal hluboký zářez ve výšce obličeje. Pryskyřice, která vytékala z ran, byla chladná jako voda ze studny a tak hustá, že zalepovala ostří – musel ho z kmene vytrhávat celou vahou těla. Po hodině se ohlédl. Zářezy, které udělal na začátku, mu zarůstaly před očima – kůra se na ně stahovala jako víčko. # pokaz: naciecia
    Ale stačilo to: když chtěla stezka zahnout zpátky, viděl před sebou čerstvé rány a šel dál. Odkudsi z hloubi boru, velmi zdaleka, k němu dolehl sten – hluboký, protáhlý, jako by se vyvracel starý strom. Nebo jako by někdo hodně velký sykl bolestí. Jaromir se nezastavil, ale ruce se mu roztřásly a do večera se neuklidnily. # dalej
*   { ekwipunek ? szczenie_psa } [Spolehnout se na psa – čenich nezabloudí.]
    ~ wejscie_do_boru = za_psem
    # tlo: bor_suchy
    – Hledej – zašeptal Jaromir a znovu psovi podstrčil dřevák. – Hledej Marysii.
    Tentokrát ho nevolal zpátky. Pes šel s čenichem při zemi, klikatě, občas se zastavil a čichal ke kůře ve výšce dětské ručky. Stezky zatáčely, rozdvojovaly se a vracely, ale pes je neposlouchal – prolézal vývraty, protahoval se pod padlými kmeny, rovnou za pachem. Jaromir šel za ním, potrhaný, potlučený, s ústy plnými jehličí. # pokaz: pies_trop
    K večeru se pes zastavil u padlé borovice a zaskučel. Na suku visel cár bílého lnu – z košilky Marysie. A pod sukem, na mechu, někdo položil hrst lesních jahod, úhledně, jednu vedle druhé, jako pro dítě. Voněly tak sladce, že se Jaromirovi sbíhaly sliny; od rána nic nejedl.{ rada_przed_borem == rada_jagny: „Co najdeš v boru, nejez“ – vzpomněl si a zaťal pěst, až se mu nehty zaryly do dlaně.} Odtáhl psa násilím. Teprve tehdy uviděl, že má zvíře krev na tlapách – mech kolem jahod byl ostrý jak tlučené sklo. # pokaz: poziomki # dalej
*   { rada_przed_borem == rada_planetnika } [Jít tam, kde nad borem nejsou mraky.]
    ~ wejscie_do_boru = pod_czystym_niebem
    # tlo: bor_suchy
    Místo na stezky se díval vzhůru. Nad lesem se táhla šedá, těžká mračna – a mezi korunami, daleko, zela díra čistého nebe, kolem níž se oblaka rozestupovala, tak jako proud obtéká kámen. Šel pod tu díru, třeba přes vývraty a houštiny, třeba napříč každou stezkou, a les ho nemohl vyvést, protože nešel po žádné z jeho cest. # pokaz: niebo
    Ale šíje ho bolela od záklonu, nohy měl do krve rozedřené o kořeny, které neviděl, a vodu si nevzal – v Zapadlině nikdo vodu do lesa nenosil. K večeru mu jazyk usychal na patře a každý potůček, kolem kterého šel, šuměl tak lákavě, že musel odvracet hlavu. # dalej
-   -> glosy_w_borze

= glosy_w_borze
# tlo: glosy_noc
Za soumraku ho začaly volat hlasy.
Nejdřív Hanka. Zleva, zpoza hustých smrků.
– Jaromire! Vrať se! Ona je doma, vrátila se sama, slyšíš? Vrať se!
{ pani_w_zbozu_noc == za_spiewem:
    Hlas byl celý – teplý, trochu zastřený, takový, jakým Hanka mluvila, než jí to v obilí vzalo polovinu. Teď Hanka sotva šeptala. Jaromir zaťal zuby.
- else:
    Hlas byl její, v každém zachraptění. Jaromir udělal krok tím směrem, než si vzpomněl, že Hanka slíbila pálit louč každou noc, dokud se nevrátí – pod vsí, ne v hloubi boru.
}
Pak matka, zprava, vřele a mírně, tak jak k němu mluvila, když byl malý:
– Synku, pojď ke mně. Je mi zima. Zabloudila jsem.{ glos_w_lesie == odpowiedzial: Tatáž slova jako té zimy, kdy mu bylo devět let a odpověděl. Do jednoho.}
Pak Franek – ten Franek, bratr Antka – vesele, zdálky, stejně jako ho kdysi volával k jezeru:
– Jaromire! Tudy! Pojď, něco ti ukážu!
A nakonec, tenounce, z hloubi boru, zaplakalo dítě.
– Tati! Tati, já se bojím!
# pytanie: Co udělá Jaromir?
*   [Odpovědět Marysii.]
    ~ glosy_boru = odpowiedzial_marysi
    – Marysio! – Výkřik se mu vydral sám. – Tady jsem! Jdu k tobě!
    Pláč se utnul v půli. Les ztichl. Za chvíli kdesi docela blízko, přímo nad jeho hlavou, začal kdosi pomalu, slavnostně počítat: # pokaz: liczy
    – …sedm set devadesát osm… sedm set devadesát devět… – Odmlka. – A ty. Osm set. Ten je můj.
    { glos_w_lesie == odpowiedzial && zawolal_do_lasu:
        – Říkal jsem, že tě sečtu, až přijde čas – dodal týž hlas, klidně, skoro něžně. – Přišel.
    }
    Jaromir padl na kolena. Chvíli nemohl popadnout dech – něco těžkého mu leželo na prsou a tížilo ho. Když vstal, byl si jistý jedním: od té chvíle les věděl, kdo je, a už ho nemusel hledat. # dalej
*   [Mlčet a jít dál.]
    ~ glosy_boru = milczal
    Zakusoval se do rukávu kabátu, aby neodpověděl; v ústech měl chuť vlny a krve. Hanka volala čím dál zoufaleji, matka plakala, Franek se smál a přivolával. A Marysia… Marysia plakala celou noc, blíž i dál, z jedné i z druhé strany, a opakovala „tati, tati“, a každé „tati“ ho zasáhlo tam, kam se k němu malá v noci tulila – pod klíční kost. Nakonec se začala ptát, proč nepřichází.
    Šel. Neodpověděl ani jednou. K ránu pláč utichl – neutrhl se, jen pomalu, potichoučku dohasl, jako u dítěte, které se unavilo voláním a usnulo. Jaromir dlouho stál bez hnutí a nevěděl, jestli by se z toho měl radovat. # pokaz: swit # dalej
*   [Jít za hlasem Franka.]
    ~ glosy_boru = za_frankiem
    ~ zapiski += tropy_3
    – Franku? – zašeptal Jaromir a zabočil doleva, mezi smrky.
    Hlas ho dlouho vedl, smál se, přivolával, až nakonec zmlkl nad vývratem. Ve tmě, na padlém kmeni, seděl bílý vlk. # pokaz: wilk
    { oblawa_wilk == wydal_wilka:
        Na boku měl starou, špatně zhojenou ránu po kulce – tlustou, holou jizvu na kůži v bílé srsti. Když uviděl Jaromira, přitiskl uši k hlavě a vycenil tesáky. Nezaútočil. Ale celou noc slyšel Jaromir za sebou jeho kroky – a věděl, že vlk za ním nejde proto, aby ho chránil. # pokaz: rana # dalej
    - else:
        Byl hubenější než tenkrát v mlází a na tlamě mu přibylo šedin – jako starému psovi, ačkoli od honu uplynuly sotva dvě zimy. Díval se na Jaromira bez zloby. Pak seskočil z kmene, otočil hlavu, aby se přesvědčil, jestli Jaromir jde za ním, a vyrazil do tmy. # dalej
    }
-   -> bagno_w_borze

= bagno_w_borze
# tlo: bagno_blednice
Druhý den k večeru se bor snížil a proměnil v bažinu.
Mezi kmeny shnilých olší stála voda – hnědá, nehybná, s duhovým povlakem na hladině – a z ní trčely trsy ostřice. Bylo cítit zkvašené listí a staré železo; každý nádech se usazoval na jazyku jako rez. Na druhém břehu, tam, kde se les zase zvedal, byla země suchá a šedá. Tam nepršelo. Ale aby se tam dostal, musel projít tímhle.
U břehu, kde byla voda mělká, ležely hliněné hrnce – převrácené dnem vzhůru, jeden vedle druhého, čím dál, kam oko dohlédlo. Jaromir si vzpomněl na sen, který se loni na jaře zdál dětem v Zapadlině, a ucítil, jak mu v týle naskakuje husí kůže. # pokaz: garnki
~ zapiski += blednice_1
A pak se nad vodou rozsvítila světla. # pokaz: blednice
Nejdřív jedno, pak druhé, pak celý tucet – bledé koule velké jako dětská hlava, vznášející se nad ostřicí. V každé, jako v mýdlové bublině, seděla skrčená malá postavička s očima jako dvě černá zrníčka. Ta světla se nepodobala bludičkám nad mokřady pod vsí – ty jen blikaly zdálky. Tahle připlouvala blízko, šeptala a tenoučce pištěla jako ptáčata v hnízdě, a odplouvala do hloubi bažiny a znovu a znovu se stáčela k Jaromirovi. Zvala ho.
# pytanie: Jak Jaromir projde bažinou?
*   [Jít za světly.]
    ~ przejscie_bagna = za_blednicami
    Šel za nimi z bultu na bult a světla se před ním vlnila, pištěla, čekala. Chvíli se mu zdálo, že ho bažinou opravdu vedou.
    Když se rozšedlo, uviděl, že celou noc obcházel dokola jeden a týž bult – vyšlapaný na holou zem. Mošna mu visela na rameni rozpáraná odspodu až nahoru. Chléb, sýr, sůl a vlněné šatečky Marysie byly pryč.{ ekwipunek ? ksiega: S nimi i kniha pana Ignacyho.} Zachránilo se jen to, co nosil za košilí: dřevák{ ekwipunek ? zoladz: a žalud}. Kousek dál, na ostřici, ležely rozprostřené šatečky, jako by si je někdo zkoušel – a než Jaromir stačil udělat krok, voda je stáhla pod sebe. # pokaz: welniak # tobolek
    ~ ekwipunek -= ksiega
    Na druhý břeh přešel za svítání, po bultech, které byly za denního světla dobře vidět. Třásl se – ne zimou. # dalej
*   [Nasypat kruh ze soli a čekat do svítání.]
    ~ przejscie_bagna = krag_z_soli
    Vytáhl z mošny hadřík se solí, který mu zavázala Hanka, a nasypal kolem sebe na suchém bultu kruh. Sedl si doprostřed se sekerou na kolenou. # pokaz: krag
    Světla obletovala kruh celou noc, čím dál blíž, čím dál dotěrněji, šeptala mu hlasem Hanky, hlasem matky, hlasem Marysie. K ránu jedna z koulí usedla těsně u soli a Jaromir v ní uviděl, zřetelně jako v zrcadle, tvářičku své dcery – pihy, křivý zoubek, důlek v líčku. Usmívala se na něj a natahovala ručky. Seděl s dlaněmi vtisknutými pod stehna, aby po ní nesáhl. Koule solí neprošla. Zhasla spolu s ostatními, když vyšlo slunce.
    V šedém světle uviděl úzkou hráz z kmenů, vedoucí přes bažinu, kterou v noci nebylo vidět. Přešel po ní. Sůl už neměl – všechna zůstala v kruhu, vpitá do mechu. # pokaz: grobla # dalej
*   { glosy_boru == za_frankiem && oblawa_wilk != wydal_wilka } [Jít za bílým vlkem.]
    ~ przejscie_bagna = za_wilkiem
    Vlk se na světla nedíval. Šel bažinou jistě, po bultech, které Jaromir ve tmě vůbec neviděl, a každých pár kroků otočil hlavu. Jaromir kladl nohy přesně tam, kam on. Světla syčela vztekem a držela se opodál. # pokaz: wilk
    Na druhém břehu se vlk zastavil a poprvé se Jaromirovi podíval přímo do očí. Jaromir to nevydržel. Natáhl ruku, aby se ho dotkl.
    – Franku? – zašeptal.
    Vlk chňapl zuby – rychle, krátce, jako pes, který varuje, a nekouše. Ale tesáky rozťaly Jaromirovi hřbet ruky až na kost. Když zvedl hlavu, vlk už tam nebyl. Krev mu kapala z prstů na šedý lišejník a dlouho se nechtěla zastavit. # pokaz: krew # dalej
*   { ekwipunek ? rozaniec } [Sevřít v dlani růženec a jít vpřed s hlasitou modlitbou.]
    ~ przejscie_bagna = z_rozancem
    – Zdrávas Maria, milosti plná… – začal Jaromir a udělal první krok.
    Světla zakvílela – vysoko, pronikavě, jako ptáci v osidlech – a zhasla všechna naráz. Nastala tma tak hustá, že neviděl vlastní ruce. Šel poslepu, ohledával bulty topůrkem sekery a modlil se, až mu vyschlo v hrdle. # pokaz: ciemnosc
    ~ ekwipunek -= rozaniec
    Přešel. Ale když dorazil na druhý břeh, růženec v jeho dlani byl zuhelnatělý a korálky se při prvním doteku rozpadly na popel. # tobolek # dalej
*   { ekwipunek ? krzesiwo } [Křesat jiskry a jít za jejich svitem.]
    ~ przejscie_bagna = z_krzesiwem
    Vytáhl dědečkovo křesadlo a křísl – jednou, podruhé. Jiskry se sypaly na ostřici a světla od nich s pištěním odskočila, jako by se spálila. Šel bažinou, každých pár kroků křísl, a koule se před ním rozestupovaly. # pokaz: iskry
    Na druhém břehu spadla jiskra do šedého lišejníku – a lišejník vzplál v jediném okamžiku, jako střelný prach. Jaromir šlapal po plameni, strhl ze sebe kabát a tloukl jím do ohně, až mu na dlaních popraskala kůže. Udusil ho. Ale v boru nastalo takové ticho, že slyšel vlastní srdce, a dlouho se nemohl zbavit jistoty, že každý strom kolem něj naslouchá. # pokaz: ogien # dalej
-   -> serce_boru

= serce_boru
# tlo: serce_boru
Za bažinou byl les jiný.
Stromy stály řidčeji, ale byly tak staré, že Jaromir nedokázal obsáhnout pohledem jejich koruny. Kůra srostla s mechem v jedno, šedé a měkké jako srst. Pod nohama nerostla tráva, jen suchý šedý lišejník, a vzduch byl tak těžký a nehybný, že každý nádech chutnal prachem. Tady nepršelo. Nikdy.
Uprostřed mýtiny stál dub – větší, než býval kdysi Starý dub, tak mohutný, že jeho kořeny vystupovaly ze země jako hřbety obrovských ryb. V kmeni zela trhlina, vysoká na dva muže, a z ní táhl chlad jako ze sklepa.
Zpoza dubu se tiše nesl zpěv. Melodie Marysie – krátká, smutná. Jenže tentokrát se neutínala v půli. Kdosi ji dozpíval až do posledního tónu hlubokým, drsným hlasem, podobným vrzání stromu ve větru. Jaromir nikdy neslyšel, jak končí. Připadal si okradený: on to měl být, kdo první uslyší ten konec – spolu s ní, u její postýlky. # pokaz: spiew
Ze stínu dubu vyšel stařec. # pokaz: starzec
Jaromir ho poznal hned – to on stál na kraji lesa té noci, kdy se slavila svatba{ poszedl_po_wstazke:, a to on před lety čekal v šeru boru u stužky Hanky}. Jenže tehdy byl daleko. Teď Jaromir viděl, že kožich není ušitý, ale srostlý jako kůra, a mech na klobouku je čerstvý a vlhký, ačkoli tady nikdy nespadla ani kapka deště. Stařec nevrhal stín.
– Sedmdesát let jsem čekal – řekl. Hlas nevycházel z jeho úst, ale odevšad – ze stromů, ze země, ze vzduchu. – Až některý z vás přijde sem sám.
# pytanie: Co udělá Jaromir?
*   [Smeknout čepici a uklonit se jako před nejstarším ve vsi.]
    ~ przed_panem_lasu = uklon
    Jaromir smekl čepici a hluboce se uklonil. Stařec si ho dlouho prohlížel a pak se poprvé v jeho tváři cosi pohnulo.
    – Zdvořilý – řekl. – To jsem od vás nečekal. # dalej
*   [Pozvednout sekeru a dožadovat se dcery.]
    ~ przed_panem_lasu = uniosl_siekiere
    – Vrať mi ji – řekl Jaromir a pozvedl sekeru. – Vrať mi dceru.
    Stařec pohlédl na sekeru a listí na jeho holi zčernalo a zkroutilo se. # pokaz: liscie
    – {siekiera_dziadka:To železo znám|Takové železo znám} – řekl tiše.{ wejscie_do_boru == naciete_pnie: – A tys poranil stovku mých stromů. Pamatuji si každý.} # dalej
*   [Zavolat na Marysii.]
    ~ przed_panem_lasu = zawolal_marysie
    – Marysio! – vykřikl Jaromir. – Marysio, to je táta!
    Zpěv se utrhl. Na jednu strašlivou chvíli zavládlo ticho. A pak mu odpověděl smích – dětský, bezstarostný, šťastný, smích Marysie. Ale ozval se mu za zády, z bažiny, kterou právě přešel.
    Stařec zavrtěl hlavou jako nad někým, kdo udělal zjevnou chybu. # dalej
-   ~ zapiski += (starzec_4, pan_lasu_8)
Stařec sňal klobouk z mechu. Pod ním nebyla tvář, jen kůra – a dvě jasné, nehybné oči, zasazené v ní hluboko jako suky. Pak začal růst. Kožich se rozpadl v mech a lišejníky, hůl vrostla do země a vous mu splýval ke kolenům, pak až k zemi, šedivý a hustý jako mech na severní straně kmenů. Z čela mu vyrazilo paroží, rozložité a spletené jako větve polomu. Rostl, až se jeho hlava ocitla mezi korunami a kolem ní zašumělo listí. # pokaz: pan_lasu
Pán lesa se sklonil nad Jaromirem.
– Posaď se, Maćkův vnuku – řekl a z jeho hlasu se zachvěl celý bor. – Promluvíme si. # dalej
-> rozdzial_szesnasty_ciag_dalszy


// Koniec rozdziału szesnastego – dalej rozdział siedemnasty.
=== rozdzial_szesnasty_ciag_dalszy ===
# ozdobnik
_Konec šestnácté kapitoly._ # dalej
-> rozdzial_siedemnasty
