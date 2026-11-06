// ------------------------------------------------------------
//  Rozdział szósty – Południca. Żniwa w upale, Jaromir ma trzynaście
//  lat. Południca zadaje w samo południe trzy zagadki; za każdą
//  pomyłkę tnie sierpem. Księga daje dodatkową odpowiedź. Przy dwóch
//  i więcej pomyłkach ratuje go Hanka z dzbanem wody (gorączka, blizna),
//  inaczej Południca ostrzega: „Pan Lasu się budzi, pilnuj kapliczek”.
// ------------------------------------------------------------

=== rozdzial_szosty ===
# tlo: zniwa
# rozdzial: Kapitola šiesta
# tytul: Pravé poludnie
Žatva prišla vo veľkej páľave. Už niekoľko týždňov nespadla ani kvapka dažďa, nebo belelo od horúčavy už za svitu a zem na medziach praskala v dlhé, kľukaté pukliny. Obilie dozrelo naraz, za pár dní, a stálo teraz na poliach zlaté a suché a pri každom závane šuchotalo ako papier.
Vychádzali do poľa skôr, než zaspievali kohúty. Muži išli vpredu, ženy za nimi viazali snopy a deti paberkovali a nosili vodu v hlinených krčahoch. Jaromir mal trinásť rokov a prvý raz kosil obilie spolu s dospelými – v rade, tesne za otcom, a čepeľ mu v rukách svišťala skoro tak rovnomerne ako starým žencom. Vzduch voňal rozpálenou slamou a potom, kosy zvonili o brúsky a spod nôh každú chvíľu vyletovali splašené prepelice.
Hanka robila na susednej roli. Raz za čas sa vystrela, utrela si čelo chrbtom ruky a pozrela k Jaromirovi, a keď sa ich pohľady stretli, hneď odvrátila hlavu a s predstieraným zápalom sa vrátila k snopom. Jaromir nevedel, prečo je mu zakaždým tak čudne horúco – a nie od slnka. # pokaz: hanka
{ figurka_u_staruchy:
    Otec takmer nehovoril. Na pravé poludnie vždy kázal všetkým zísť z poľa do tieňa, aj keby sa malo žito vydroliť.
- else:
    Otec pri robote žartoval a spieval, ale na pravé poludnie vždy kázal všetkým zísť z poľa do tieňa. – Dedko to tak robil – hovorieval – aj jeho dedko. Nie ja som si to vymyslel. – A keď sa deti vypytovali, rozprával o dievke, najlepšej žnici v okolí, ktorá sa stavila s paholkami, že sama požne celý lán do poludnia. V najväčšej horúčave z poľa nezišla. Našli ju večer s kosákom v ruke a s klasmi vo vlasoch.
}
Jedného dňa ostal Jaromir sám na konci role. Chcel dokosiť pokos, kým zíde do tieňa, a nezbadal, kedy ostatní odišli pod hrušku na medzi. Slnko sa mu zastavilo presne nad hlavou a tieň sa scvrkol a zmizol pod nohami. # pokaz: sam # dalej
-> poludnica_przychodzi

= poludnica_przychodzi
# tlo: poludnica
Nastalo ticho. Stíchli svrčky, obilie prestalo šuchotať a vzduch nad poľom zhustol a zvlnil sa ako voda nad rozpáleným kameňom.
Medzi klasmi sa zjavila žena. # pokaz: poludnica
Bola vysoká a chudá, vystretá ako struna, v bielej košeli po členky, ktorá sa vlnila, hoci nefúkal ani ten najslabší vetrík. Svetlé vlasy jej siahali po kolená a rozvievali sa do strán a na hlave mala venček z klasov a červených makov. Tvár mala bledú a úzku, s vysokými lícnymi kosťami, oči ako plátno bielené na slnku, bez zreníc, a pery stisnuté do tenkej čiarky. Bosé chodidlá sa nedotýkali zeme – vznášala sa niekoľko palcov nad strniskom a pod ňou sa chvela horúčava. V pravej ruke držala kosák. Na jeho hrote visela červená kvapka.
Ľavú dlaň k nemu vystrela, otvorenú, akoby o niečo prosila.
– Kto v moju hodinu robí – povedala hlasom suchým ako praskot slamy – ten mi musí odpovedať. Tri hádanky. Za každý omyl – jeden rez.
{ ekwipunek ? ksiega:
    Jaromirovi sa pred očami zjavila strana z knihy pána Ignacyho: „Poludnica chodí po poliach v najväčšej páľave a vypytuje sa žencov. Kto na všetko odpovie, je voľný. Kto sa pomýli alebo ujde, toho zotne kosákom alebo naňho zošle horúčku.“ Pod tým učiteľ drobnejšie pripísal jedno rozlúštenie, ktoré pred rokmi počul od starej ženy z Bukowca, a dvakrát ho podčiarkol: „Zrno trikrát zomiera a trikrát sa vracia.“
}
# dalej
-> zagadka_1

= zagadka_1
Poludnica naklonila hlavu nabok ako vták.
– Bez nôh behá po obilí, bez rúk klasy češe, bez papule v komíne kvíli. Každý ho počul, a nikto ho ešte nevidel. Čo je to?
# pytanie: Čo odpovie Jaromir?
*   [Oheň.]
    -> zle_1
*   [Vietor.]
    Poludnica chvíľu mlčala. Potom jej mykli kútiky úst – nebol to úsmev, skôr niečo, čo sa naň podobalo.
    – Vietor – zopakovala. – Môj brat. Dobre. # dalej
    -> zagadka_2
*   [Dym.]
    -> zle_1

= zle_1
{ odwaga_jaromira && not poludnica_darowala:
    ~ poludnica_darowala = true
    Kosák zasvišťal – a zastavil sa na vlas od jeho pleca. Jaromir sa ani nepohol. {figurka_u_staruchy:Kedysi, na hlbokej vode, sa mu čosi obtrelo o lýtko a on utiekol k brehu. Teraz neutiekol.|Kedysi, v tŕstí pri jazere, položil dlaň na zuhoľnatené brvno, hoci ostatní nemali odvahu. Teraz necúvol.}
    – Neutekáš – povedala poludnica a odtiahla ostrie. – Túto jednu ti odpustím. Ale bol to vietor. Oheň a dym videl každý, ale vietor ešte nikto. # dalej
    -> zagadka_2
}
~ pomylki_poludnica += 1
~ ciecie_ramie = true
Kosák zasvišťal skôr, než Jaromir stihol žmurknúť. Pocítil pálivú bolesť na pleci, a keď sa pozrel dolu, cez roztrhnutú košeľu presakovala krv. # pokaz: ciecie
– Zle – povedala poludnica. – Vietor. Oheň a dym videl každý, ale vietor ešte nikto. # dalej
-> zagadka_2

= zagadka_2
– Zakopávajú ho do zeme ako nebožtíka, a predsa vstane. Zotínajú ho ako zločinca, a nekrváca. Bijú ho, a nesťažuje sa. A keď ho strčia do žeravej pece – až vtedy ho chce každý. Čo je to?
# pytanie: Čo odpovie Jaromir?
*   [Ľan.]
    -> zle_2
*   [Žito.]
    – Žito – zašepkala a jej biela tvár na okamih zmäkla, akoby si spomenula na vlastnú žatvu, kedysi dávno. – Múdry chlapec. # dalej
    -> zagadka_3
*   [Zemiak.]
    -> zle_2
*   { ekwipunek ? ksiega } [Zrno.]
    ~ poludnica_uklon = true
    Poludnica otvorila ústa a bez slova ich zavrela. Dlho naňho hľadela tými bielymi očami a potom sklonila hlavu – zľahka, sotva badateľne, ako pred niekým, koho si človek váži. # pokaz: uklon
    – Zrno – zopakovala potichu. – V zemi zomiera, spod kosy a cepa sa vracia a v peci sa rodí ako chlieb. Takú odpoveď som nepočula sto rokov. Niekto ťa dobre učil. # dalej
    -> zagadka_3

= zle_2
{ odwaga_jaromira && not poludnica_darowala:
    ~ poludnica_darowala = true
    Kosák zasvišťal – a zastavil sa na vlas od jeho ruky. Jaromir sa ani nepohol. {figurka_u_staruchy:Kedysi, na hlbokej vode, sa mu čosi obtrelo o lýtko a on utiekol k brehu. Teraz neutiekol.|Kedysi, v tŕstí pri jazere, položil dlaň na zuhoľnatené brvno, hoci ostatní nemali odvahu. Teraz necúvol.}
    – Neutekáš – povedala poludnica a odtiahla ostrie. – Túto jednu ti odpustím. Ale bolo to žito. Ľan sa nepečie a zemiaky nikto nemláti. # dalej
    -> zagadka_3
}
~ pomylki_poludnica += 1
~ ciecie_dlon = true
Kosák sa mihol vzduchom. Rez prešiel po chrbte ruky, plytko, ale krv vystrekla na strnisko. # pokaz: ciecie
– Žito – zasyčala. – Ľan sa nepečie a zemiaky nikto nemláti. # dalej
-> zagadka_3

= zagadka_3
Vzduch sa zvlnil silnejšie. Horúčava sa Jaromirovi drala k hrdlu, v ušiach mu zvonilo a pole sa začalo kolísať, akoby stál na loďke.
– A teraz mi povedz – poludnica stíšila hlas – kto má dom starší ako všetky chalupy v okolí, a nie sú v ňom ani jedny dvere? Kto pasie vlky, ako vy pasiete ovce? A komu tohto leta vytrhli z plota najhrubší kôl, dubový?
# pytanie: Čo odpovie Jaromir?
*   [Svätý Juraj.]
    ~ pomylki_poludnica += 1
    ~ ciecie_policzek = true
    – Svätý? – Poludnica sa zasmiala, sucho a nepríjemne, ako keď praská strnisko. – Svätí sedia v kaplnkách, chlapče. A tamten čaká, kým mu ich niekto povytŕha.
    Ostrie sa zablyslo. Jaromir pocítil na líci ostré škrabnutie a po brade mu stieklo čosi teplé. # pokaz: ciecie
*   [Pán lesa.]
    Všetko stíchlo ešte viac, hoci sa zdalo, že tichšie už byť nemôže. Poludnica stiahla vystretú ruku.
    – Poznáš ho – povedala a prvý raz jej v hlase zaznelo čosi ako strach. – To je zlé. Lebo on pozná aj teba.
*   [Neviem.]
    Poludnica dlho mlčala.
    – Vieš – povedala. – Len sa bojíš to povedať. To je rozumné. Nevyslovuj jeho meno v poludnie.
-   -> wynik

= wynik
{ pomylki_poludnica:
- 0:
    Poludnica spustila kosák.
    – Si voľný – povedala. – Ale počúvaj, lebo to nezopakujem. Pán lesa sa prebúdza. S každým zoťatým stromom spí plytšie. Stráž kaplnky, chlapče. Stráž ich, kým stoja.
- 1:
    Poludnica si ho dlho prezerala a potom spustila kosák.
    – Mohlo to byť horšie – povedala. – Choď. Ale zapamätaj si: Pán lesa sa prebúdza. Stráž kaplnky.
- else:
    Poludnica zdvihla kosák vysoko, nad jeho hlavu. Chlapec zavrel oči – a vtedy začul výkrik. # pokaz: zamach
}
Ktosi vbiehal na rolu a potkýnal sa o snopy. Hanka. V rukách niesla hlinený krčah, z ktorého špliechala voda. # pokaz: dzban
– Jaromir! Jaromir, čo to robíš na pravé poludnie?!
{ pomylki_poludnica < 2:
    ~ ostrzezenie_poludnicy = true
    Keď sa znova pozrel pred seba, nebolo tam už nikoho. Len na strnisku ležal venček z klasov a makov, ktoré už začínali vädnúť. # pokaz: znika, wianek # dalej
    -> po_poludniu
- else:
    Hanka nespomalila. Priskočila k chlapcovi a chlstla vodu z krčaha – nie naňho, ale pred seba, tam, kde sa vlnila horúčava.
    – Na, pi! – vykríkla do prázdna lámavým hlasom, tak ako ju to učila babka. – Pi a pusti ho!
    Poludnica so zdvihnutým kosákom zaváhala. Pozrela na dievča, potom na tmavú škvrnu, ktorá sa strácala v popraskanej zemi – a rozplynula sa v chvejúcom sa vzduchu ako para. Hanka vyliala Jaromirovi zvyšok vody na hlavu. # pokaz: znika, woda # dalej
    -> goraczka
}

= goraczka
# tlo: goraczka
~ blizna_sierpa = true
~ zapiski += poludnica_1
Tri dni ho zmáhala horúčka. Ležal v chalupe pod mokrými plachtami, {rany_sierpa()} pálili, akoby ich vypaľovali rozžeraveným železom, a v blúznení stále videl biele oči bez zreníc a počul suchý šepot: „Za každý omyl – jeden rez.“ # pokaz: majaki
Matka sa od neho nepohla ani na krok. Hanka nosila byliny od babky a na druhý deň, nikomu nič nepovediac, išla na pravé poludnie na tú rolu a postavila na medzu krčah čerstvej vody. Vrátila sa celá roztrasená a nechcela povedať, čo tam videla. V tú noc začala horúčka klesať. # pokaz: hanka
Keď napokon vstal, ostala mu na {miejsce_blizny()} biela jazva v tvare polmesiaca, akoby od hrotu kosáka.
-> czy_powiedziec

= po_poludniu
# tlo: czerwony_ksiezyc
~ zapiski += poludnica_1
~ mak_w_medaliku = true
Žencom nepovedal, čo sa stalo na pravé poludnie. Iba večer, keď sedeli s Hankou na plote a pozerali, ako nad strniskom vychádza veľký červený mesiac, vytiahol z vrecka zvädnutý mak z venčeka a položil jej ho na dlaň. # pokaz: mak
Od polí to ťahalo prachom a slnkom vypálenou zemou, svrčky cvrlikali ako pominuté a Hanka sedela tak blízko, že cez košeľu cítil teplo jej pleca.
– Od koho je to? – spýtala sa.
– Od niekoho, kto mi kázal strážiť kaplnky – povedal.
Hanka nerozumela, ale mak si schovala do medailónika, ktorý nosila na krku, a odvtedy sa s ním nerozlučovala.
-> czy_powiedziec

= czy_powiedziec
Antek dobehol Jaromira, len čo ostali sami.
– Videl som ťa spod hrušky – povedal potichu. – Stál si sám na konci role a rozprával si do vzduchu, a vzduch sa nad tebou chvel ako nad ohniskom vo vyhni. – Preglgol. – Keď to povieš dospelým, aj ja poviem, čo som videl. Dvom nám skôr uveria.
# pytanie: Povie to Jaromir otcovi?
*   [{ostrzezenie_poludnicy:Povedať otcovi o varovaní poludnice.|Povedať otcovi o poludnici.}]
    ~ powiedzial_ojcu_poludnica = true
    # tlo: kapliczki_noc
    { figurka_u_staruchy:
        Otec syna mlčky vypočul. Potom vstal, zvesil z klinca lampáš a vyšiel do noci. Vrátil sa nadránom. Matka neskôr rozprávala, že obišiel všetky kaplnky v Zapadline a pri každej kľačal, akoby prosil o odpustenie. # pokaz: ojciec # dalej
    - else:
        Otec sa nezasmial. Dlho mlčal a potom povedal, že zajtra zvolá ľudí a pôjdu spolu za Urbaniakom. – Na kaplnky nesiahne – dodal. – Aj keby mi mal pílu na hlavu zvaliť. # pokaz: ojciec # dalej
    }
    -> rozdzial_szosty_ciag_dalszy
*   [Nechať si to pre seba.]
    # tlo: kapliczki_noc
    Jaromir nepovedal nikomu – okrem Antka, ktorý to aj tak vedel. Každú noc, keď už všetci spali, vykrádali sa spolu von a obchádzali najbližšie kaplnky. Napravovali nakrivo stojace strieška a vytrhávali burinu, ktorá obopínala stĺpy. Niekedy uprostred roboty stíchli svrčky – najprv pod borom, potom čoraz bližšie – a vtedy stáli bez pohnutia, kým sa znova neozvali. Jaromir sa vracal pred svitaním zaliaty studeným potom, s nohavicami mokrými od rosy, a dlho nemohol zaspať, načúvajúc každému šuchotu za oknom. # pokaz: jaromir # dalej
    -> rozdzial_szosty_ciag_dalszy


// Koniec rozdziału szóstego – dalej rozdział siódmy.
=== rozdzial_szosty_ciag_dalszy ===
# ozdobnik
~ zapiski += pan_lasu_3
_Koniec šiestej kapitoly._ # dalej
-> rozdzial_siodmy

=== function rany_sierpa()
{
- ciecie_ramie && ciecie_dlon && ciecie_policzek: ~ return "rany na pleci, ruke a tvári"
- ciecie_ramie && ciecie_dlon: ~ return "rany na pleci a ruke"
- ciecie_ramie: ~ return "rany na pleci a tvári"
- else: ~ return "rany na ruke a tvári"
}

=== function miejsce_blizny()
{
- ciecie_ramie: ~ return "pleci"
- ciecie_dlon: ~ return "ruke"
- else: ~ return "tvári"
}
