// ------------------------------------------------------------
//  Prolog, część druga – miasto, rodzina, powrót do Zapadliny
//  i zakończenie prologu (zależy od tego, komu Maciek sprzedał figurkę).
// ------------------------------------------------------------

=== miasto ===
# tlo: gosciniec
# rozdzial: Prológ
# tytul: Mesto
Hradská sa ťahala cez polia a hájiky, raz do kopca, raz dolu. Míňali ho vozy sedliakov, ktorí viezli obilie na trh, a v istej chvíli sa popri ňom prehnala brička, z ktorej ktosi zakričal, nech uhne z cesty.{ los_psa == oswojony: Pes sa držal tesne pri nohe a vrčal na každý rachot kolies.} Slnko už stálo vysoko, keď sa spoza pahorka vynorila kostolná veža a pod ňou strechy mesta – červené, sivé a machom obrastené, natlačené ako zrná v klase. # dalej
-> rynek

= rynek
# tlo: rynek
Námestie hučalo ako úľ. Medzi stánkami sa predierali sedliaci v halenách, trhovníčky vychvaľovali vajcia a maslo a spod radnice sa ozývalo mečanie kôz. Bolo cítiť chlieb, konský hnoj a údené ryby.{ ekwipunek ? figurka: Maciek nahmatal vo vrecku drevenú postavu. Najprv ju musel predať – až potom mohol myslieť na jedlo.}
{ ekwipunek ? figurka: -> kramarze | -> zakupy }

= kramarze
Prvý bol kramár s obrázkami a ružencami. Dlho si prezeral figúrku proti svetlu, napokon sa zaškľabil a rýchlo mu ju vrátil, akoby pálila.
– To nie je nijaký svätý – zamrmlal a potajomky sa prežehnal. – Toto pod svoju strechu nevezmem.
Rezbár lyžíc a misiek sa jej ani nedotkol. Vyhlásil, že drevo je práchnivé, ohorené a na nič sa nehodí, leda tak na podpaľovanie.
Až vetešník s vozíkom plným hrncov a dotrhaných čižiem ju dlhšie obracal v prstoch.
– Dva groše – povedal napokon. – Viac ti za to nikto nedá.
Toľko stál bochník chleba. Jeden. Maciek sľúbil, že si to ešte rozmyslí, a vybral sa k chudobnejšej časti námestia, kde namiesto stánkov ležali na zemi plachty s cibuľou, handrami a hrdzavým železom. # dalej
-> starucha

= starucha
# tlo: zaulek
Zrazu ho ktosi zadržal za rukáv. Ruka bola malá a suchá, voňala mätou a dymom.
Pred ním stála drobná stará žena v tmavej kapucni, opretá o palicu, s košíkom sušených bylín na pleci. Plášť mala zaplátaný, ale čistý, a spod kapucne sa belel okraj čepca. Jedno oko mala zastreté bielmom, druhé – čierne a bystré – hľadelo priamo na jeho vrecko. # pokaz: starucha
– Čo to tam nosíš, synček? – zašepkala. – Cítim popol. Starý popol, od vody.
{ los_psa == oswojony:
    Pes jej oňuchal košík, kýchol od bylín a potom sa mu zježila srsť a hlboko zavrčal – nie na ňu, ale na Maćkovo vrecko. # pokaz: pies
}
Maciek chcel odísť, ale nepúšťala mu rukáv.
– To nie je tvoje. Vyhrabal si to tam, kde sa hrabať nemalo – hovorila potichu, aby to nikto okolo nepočul. – Tá vec volá, synček. Kým ju nosíš, to, čo býva vo vode, vie, kde ťa hľadať. Teba aj tých, ktorých ľúbiš. Nepáľ ju a nehádž ju do vody, lebo sa vráti. Niekto musí vedieť, čo s ňou urobiť – a ja to viem.
Až teraz ho pustila.
– Vezmem ti ju. Ale nie zadarmo, lebo čo je dané zadarmo, to sa darcovi vracia. Dám desať grošov. Päťkrát viac, než ti chcel dať ten pri vozíku.
Musela stáť niekde blízko, keď zjednával s vetešníkom. Lenže si nespomínal, že by ju tam bol videl.
# pytanie: Komu Maciek predá figúrku?
*   [Starenke – vyzná sa v takých veciach a za desať grošov rodina vydrží až do prvej úrody.]
    ~ figurka_u_staruchy = true
    ~ ekwipunek -= figurka
    # tlo: rynek
    Maciek vytiahol figúrku a položil ju na jej vystretú dlaň. Starena po nej hneď nesiahla. Najprv ju zabalila do ľanovej handričky a až tak, cez plátno, ju vzala do ruky. Mince vybrala z batôžka pri páse.
    – Teraz je to už moja starosť – povedala. – Choď s Bohom, synček. A neobzeraj sa za ňou.
    Obrátila sa a zmizla v zástupe skôr, než stihol čokoľvek odpovedať.{ los_psa == oswojony: Pes prestal vrčať, len čo vrecko odľahlo.}
    -> zakupy
*   [Vetešníkovi za pár mizerných grošov – nech radšej skončí medzi hrncami, u niekoho, kto nevie, čo je zač.]
    ~ ekwipunek -= figurka
    # tlo: rynek
    – Ďakujem, stará mati, ale netreba – odpovedal Maciek a cúvol o krok.
    Starena si ho dlho premeriavala zdravým okom. – Tvoja vôľa – povedala iba a vrátila sa k svojim bylinám.
    Vetešník pokrčil plecami, hodil figúrku medzi hrnce a odrátal dva groše. – Hovoril som, že viac nikto nedá.{ los_psa == oswojony: Pes prestal vrčať až vtedy, keď figúrka zmizla pod kopou črepov.}
    -> zakupy

= zakupy
~ ekwipunek += (zapasy, nasiona)
{
- figurka_u_staruchy: Za mince od stareny a zvyšok svojich medenákov kúpil Maciek dva bochníky chleba, vrece krúp, soľ, kus slaniny, semená zeleniny, ba dokonca aj kôš sadbových zemiakov. Uzlík ho ťažil na chrbte, ale bolo to najmilšie bremeno za dlhý čas.
- przeszukal_zgliszcza && not figurka_w_bagnie: Za posledné medenáky a dva groše od vetešníka kúpil Maciek bochník chleba, hrsť soli, vrecúško krúp a trochu semien zeleniny. Nie veľa, ale niekoľko dní sa s tým dá prežiť.
- else: Za posledné medenáky – zvyšok po sekere – kúpil Maciek bochník chleba, hrsť soli, vrecúško krúp a semená rozličnej zeleniny.
}
Bola jar, so sejbou sa nedalo otáľať.
Pri mestskej studni zjedol prvý krajec po celých týždňoch. Bol mäkký a ešte teplý. Musel sa premáhať, aby nezhltol všetko naraz.{ los_psa == oswojony: Druhý dal psovi.}
Potom sa vybral za mesto, na majer, kde štyri roky robil na cudzom poli a kde naňho čakala žena so synčekom. # dalej
-> rodzina


// ------------------------------------------------------------
//  Rodzina – spotkanie z żoną i synem w Czworakach.
// ------------------------------------------------------------
=== rodzina ===
# tlo: czworaki
# rozdzial: Prológ
# tytul: Rodina
K domu pre čeľaď dorazil, keď sa slnko už chýlilo k západu. Dlhá, nízka budova s krivým komínom vyzerala rovnako ako v deň, keď odtiaľto odchádzal. Pred prahom kreslil niekoľkoročný chlapec paličkou znaky do piesku. Zdvihol hlavu, pozrel na cudzieho, vychudnutého muža – a chvíľu ho nespoznával. # pokaz: dziecko
– Dobrosław – povedal ticho Maciek.
Malý vyskočil zo zeme a s krikom utekal dnu. Vo dverách sa takmer hneď objavila Marianna. Utierala si ruky do zástery – a zmeravela, keď uvidela muža. # pokaz: marianna
O chvíľu sa mu vrhla okolo krku tak prudko, až sa zapotácal. Plakala mu do pleca, on ju hladkal po vlasoch a nevedel zo seba vypraviť ani slovo. Dobrosław ho objal okolo nohy a nechcel ho pustiť.
– Ježišmária, Maciek – zašepkala napokon a odtiahla sa, aby si ho prezrela. Dotkla sa prepadnutých líc, vystúpených kľúčnych kostí. – Je ťa o polovicu menej, ako keď si odchádzal. Čo si tam jedol? Kôru zo stromov?
Zasmial sa, hoci mal v očiach slzy.
{ los_psa == oswojony:
    Pes stál bokom, neistý, kým k nemu Dobrosław nevystrel ruku. Po chvíli sa nechal škrabkať za uchom a malý od radosti výskal. # pokaz: pies
}
Večer pri miske kaše Maciek rozprával. O chate – o stenách z brvien, ktoré sám otesal, o streche z trstiny, o prahu, na ktorom vysedával po práci. O zemi, ktorej bude toľko, koľko dokážu obrobiť.
– Zajtra na úsvite vyrazíme – oznámil. – Začneme všetko odznova. Na svojom.
Marianna počúvala a usmievala sa sama pre seba. Ale keď syn zaspal, prisunula sa bližšie a zahľadela sa mužovi do tváre.
– A teraz mi povedz pravdu. Čo sa tam dialo? Veď vidím, že ťa niečo hryzie.
# pytanie: Povie Maciek žene o tej noci?
*   [Áno – porozprávať jej o stvore, o legende a o hlase od bažín. Musí vedieť, kam ide.]
    ~ zona_wie = true
    Nič nezamlčal. O vytí v húštine, o tichu, ktoré ho zobudilo, o postave, ktorá vyšla z hmly. O upálenej bylinkárke a jej kliatbe. O bažine, ktorá ho volala hlasom Marianny.{ figurka_u_staruchy: O ohorenej figúrke spod popola, ktorú v ten deň predal na trhu starenke v kapucni.}
    Marianna počúvala mlčky a s každou vetou bledla. Keď skončil, dlho hľadela do tmavého okna.
    – Vrátime sa tam? – spýtala sa napokon potichu.
    – Vrátime. Je to náš domov.
    Prikývla. Nepovedala už nič, ale tej noci oka nezažmúrila – cítil to podľa jej dychu. # dalej
    -> powrot
*   [Nie – odbyť ju. Načo strašiť, keď chata stojí a čo bolo, to sa pominulo.]
    – Nič sa nedialo – zaklamal. – Ťažká robota a málo jedla. To je všetko.
    Marianna sa naňho ešte chvíľu dívala, akoby čakala na zvyšok. Potom si vzdychla a položila mu hlavu na plece.
    Tej noci dlho nemohol zaspať. Pomyslel si, že jej to raz povie. Raz, keď sa všetko utrasie. # dalej
    -> powrot


// ------------------------------------------------------------
//  Powrót do Zapadliny z rodziną.
// ------------------------------------------------------------
=== powrot ===
# tlo: sciezka_rodzina
# rozdzial: Prológ
# tytul: Návrat
Vyšli na úsvite. Marianna niesla batôžok s ich imaním, Maciek – uzlík s jedlom, a keď sa malý pochodom unavil, aj jeho, na pleciach.
{ los_psa == oswojony:
    Pes behal od jedného k druhému, akoby dával pozor, aby nikto nezaostal. # pokaz: pies
}
Bolo už dobre popoludní, keď stanuli na Bukovom hrebeni. Dolu ležala Zapadlina.{ chcial_odejsc: Na tom istom mieste stál pred niekoľkými dňami Maciek s uzlíkom na pleci a chcel navždy odísť. Teraz mu na chrbte spal syn.}
Na hrebeni Maciek zastal a pozrel na ženu.
– Teraz daj pozor – povedal. – Choď hneď za mnou, krok za krokom. Neschádzaj z chodníka, nech sa stane hocičo. Nepozeraj do čiernej vody. A nepočúvaj hlasy od bažín. Nech začuješ čokoľvek – neodpovedaj a neobracaj sa.
{ zona_wie: Marianna {chcial_odejsc:položila dlaň na chrbát spiaceho syna|chytila syna za ruku} a prikývla. Vedela, o čom hovorí. | Marianna zdvihla obočie, akoby sa chcela zasmiať, ale čosi v jeho tvári ju zadržalo. Mlčky prikývla. }
Kráčali pomaly, husím pochodom. Hmla sa vliekla nízko nad tôňami a kdesi ďaleko v sitine čosi ticho čľapotalo. V polovici cesty začul za chrbtom, ako Marianna prudko lapla dych. Neobzrel sa. Až keď vyšli na suchú zem, spýtal sa, čo počula.
– Nič – odpovedala rýchlo. Priveľmi rýchlo. # dalej
-> nowy_dom

= nowy_dom
{ chata_macka:
    - przy_lesie: # tlo: chata_las
    - przy_mokradlach: # tlo: chata_mokradla
    - else: # tlo: chata_jezioro
}
Chata stála tam, kde ju Maciek nechal. {chata_macka == przy_lesie:Na kraji lesa, v tieni smrekov,}{chata_macka == przy_mokradlach:Na lúke pri močiaroch, na kamennej podmurovke,}{chata_macka == nad_jeziorem:Pri jazere, medzi šumiacou trstinou,} so strechou, ktorú sám kládol snop po snope. # pokaz: dach
Marianna zastala pred prahom a dlho nič nehovorila. Potom vošla dnu, prešla dlaňou po stene, privoňala k živici a rozžiarila sa ako malé dieťa, keď zbadá tvár svojho rodiča. # pokaz: rodzina
– Naša – povedala. – Naozaj naša.
Dobrosław v kúte izby rýchlo vypátral uvoľnené dosky. Maciek ich odsunul a ukázal mu jamu vykopanú v zemi – dosť hlbokú na to, aby sa v nej v chlade uchovali zemiaky a krúpy.
– Pivnička – oznámil hrdo. – Na zásoby. Len tam neliez bez opýtania.
Malý tam pravdaže okamžite skočil a schúlil sa tak, že ho nebolo vidno. Smiali sa všetci traja.
{ ekwipunek ? krzesiwo: V ten večer vzbĺkol pred novou chatou oheň | V ten večer povečerali na prahu novej chaty } a Maciek si pomyslel, že stálo za to prejsť tým všetkým. # dalej
{ figurka_u_staruchy: -> czary | -> lata_spokoju }


// ------------------------------------------------------------
//  Zakończenie A – figurka u staruchy: czary i nocny napad.
// ------------------------------------------------------------
=== czary ===
# tlo: czary
# rozdzial: Prológ
# tytul: Jedna sviečka
V tú istú noc, ďaleko odtiaľto, v tesnej izbe za mestským námestím horela jediná sviečka.
Starena si stiahla kapucňu. Riedke šedivé vlasy jej padli na chrbát. Na stole pred ňou stála miska s čiernou, kalnou vodou a vedľa – ohorená figúrka, vybalená z ľanovej handričky.
Žena si pichla ihlou do prsta a nechala tri kvapky krvi padnúť na drevo. Potom ponorila figúrku do misky a začala mrmlať – hlboko, jednotvárne, rečou, ktorej by v meste nikto nerozumel. Plameň sviečky pohasol a naklonil sa, hoci v izbe nebol prievan.
– Dlho som čakala, mati – zašepkala. – Ale napokon niekto prišiel. A sám mi ťa priniesol.
Voda zabublala, akoby sa v nej ktosi zhlboka nadýchol. Z mrmlania sa vynorili slová, vyslovované čoraz hlasnejšie:
– Kosti vašich detí budú dolámané a ich krv vypitá…
Starena sa sklonila nižšie nad misku. – Choď. Poznáš cestu. Chata {chata_macka == przy_lesie:pod lesom}{chata_macka == przy_mokradlach:pri močiaroch}{chata_macka == nad_jeziorem:pri jazere}. Muž, žena a dieťa. # dalej
-> noc

= noc
# tlo: noc_atak
Prešlo niekoľko dní. Maciek kopal hriadky na zemiaky, Marianna lepila z hliny pec a Dobrosław {los_psa == oswojony:behal so psom po lúke|zbieral na lúke záružlie}. Večermi si sadali spolu na prah a pozerali, ako sa hmla vlieva do doliny.
{ los_psa == oswojony: Jednej noci ich zobudil pes. Stál pri dverách so zježenou srsťou na chrbte a vrčal tak hlboko, že to bolo sotva počuť. Potom začal štekať – nahlas, zúrivo, bez prestania. | Jednej noci ich zobudil rachot. Čosi udrelo do dverí takou silou, že zastonali pánty, a búšilo ďalej, až drevo s praskotom puklo. }
Maciek vyskočil z lôžka. Škárou vo dverách uvidel v hmle dve žeravé oči. # pokaz: slepia
Nerozmýšľal. Schytil Dobrosława do náručia, odsunul dosky v kúte a strčil ho do pivničky.
– Seď ticho – zašepkal. – Nech sa stane čokoľvek, nevychádzaj. Počuješ? Nevychádzaj, kým nebude deň.
Uložil dosky späť nad jeho hlavu. # dalej
{ los_psa == oswojony: -> walka | -> rzez }

= walka
# tlo: walka
Dvere vpadli dnu aj so zárubňou. Stvora sa musela zohnúť, aby sa pretisla popod preklad – obrovská, mokrá, páchnuca bažinou. Voda z nej tiekla prúdmi na hlinenú dlážku. # pokaz: stwor
Pes sa na ňu vrhol prvý. Zahryzol sa jej do predlaktia a visel na ňom, trhal, kým ho netvor nemrštil o stenu. Zakňučal a padol. # pokaz: pies
Maciek sa postavil pred Mariannu so zdvihnutou sekerou. # pokaz: maciek
– Postav sa za mňa!
Beštia po ňom siahla. Pazúry mu rozryli plece a bok, ale neustúpil. Rozohnal sa zo všetkých síl a ostrie vniklo hlboko do kostnatého ramena. Stvora zavyla – tým istým dlhým, hrdelným stonom ako v tú noc pri prístrešku. Maciek udrel ešte raz. A ešte.
Netvor cúvol, prevrátil lavicu a s revom vybehol do hmly. Chvíľu bolo počuť, ako sa čosi ťažké prediera húštinou, a potom čľapot – čoraz ďalej, smerom k bažine.
Sekera vypadla Maćkovi z rúk. Zosunul sa na kolená, potom na bok. Pod ním rástla tmavá kaluž. # pokaz: kaluza
Marianna kľačala pri ňom a pritláčala mu dlane na rany, ale krv jej presakovala pomedzi prsty.
– Nie, nie, nie… Neopúšťaj ma…
– Dobrosław… – zašepkal. – Vytiahni ho… až ráno.
Pes sa k nemu dovliekol, krívajúc, a položil mu hlavu na hruď.
Maciek sa ešte usmial. Hľadel na ženu, až kým jeho oči už nevideli nič.
Pod dlážkou, v pivničke, si Dobrosław zapchával uši dlaňami a nevydal ani hláska. Tak, ako to sľúbil otcovi. # dalej
-> sierota

= rzez
# tlo: pod_podloga
Dvere pukli napoly. Do izby vtrhol chlad, smrad bažiny a obrovský tieň, ktorý sa musel zohnúť, aby sa pretisol popod preklad.
Maciek ešte stihol schytiť sekeru. Marianna si zakryla ústa dlaňou.
Dobrosław nevidel, čo sa dialo potom. Videl len úzke pásiky mesačného svetla medzi doskami nad hlavou – a tiene, ktoré ich pretínali. Počul všetko. # pokaz: cien
Počul, ako otec volá na matku, nech uteká. Počul tupé údery sekery, raz a druhý raz, a vytie, od ktorého sa triasla zem. Potom praskot – hlasný, mokrý, taký istý ako vtedy v húštine, hoci chlapec to nemohol vedieť. Otec prestal kričať.
Matka kričala dlhšie.
Keď aj ona stíchla, škárami medzi doskami začalo kvapkať čosi teplé. Kvapka za kvapkou, na jeho vlasy a líca. # pokaz: krew
Čosi ťažké prešlo po dlážke, tesne nad ním. Zastalo. Počul, ako to vetrí – dlho, chrapľavo, ako pes pri nore. Zahryzol si do rukáva, aby nepípol.
Potom sa kroky vzdialili a rozplynuli v hmle.
Presedel v pivničke až do rána. Tak, ako to sľúbil otcovi. # dalej
-> sierota

// Epilog zakończenia A – chłopca przygarnia Andrzej.
= sierota
# tlo: izba_andrzeja
{ los_psa == oswojony:
    Ráno k nim zazrel Andrzej. Našiel Mariannu na hlinenej dlážke, s hlavou muža v lone. Už neplakala. Pes ležal vedľa a nikoho k nim nepustil.
    Maćka pochovali na cintoríne pri kostole v meste. Vdova sa do chaty už nevrátila – s chlapcom sa nasťahovala ku gazdovi z pahorka, ktorý ich prijal pod svoju strechu ako rodinu.
- else:
    Ráno k nim zazrel Andrzej. Dvere chaty, puknuté napoly, ležali v tráve. V izbe nebolo nikoho – len pás bahna, ktorý sa ťahal od prahu smerom k bažine, a tmavé škvrny na hlinenej dlážke. Dlho stál na prahu, kým spod podlahy nezačul tiché vzlykanie.
    Chlapec nepovedal ani slovo – ani v ten deň, ani v mnohé ďalšie. Andrzej si ho vzal k sebe a vychoval ho spolu so Stašom ako vlastné dieťa.
}
Po tej noci začala dedina stavať nové kaplnky – pri cestách, na rázcestiach, na kraji lesa a pri lávke cez močiare – vedľa niekoľkých starých, spráchnivených stĺpov pozdĺž boru, o ktorých už nikto nepamätal, kto ich postavil. Z roka na rok ich pribúdalo, až v celej Zapadline nezostalo miesto, odkiaľ by nebolo vidieť aspoň jednu.
Dobrosław vyrástol na mlčanlivého, silného muža. Nikdy nechodil k bažinám a nikdy nezišiel do nijakej pivnice. Oženil sa s dievčaťom zo susednej dediny a čoskoro sa mu narodil syn.
Dali mu meno Jaromir. # dalej
-> prolog_ciag_dalszy


// ------------------------------------------------------------
//  Zakończenie B – figurka u handlarza albo bez figurki: spokojne lata.
// ------------------------------------------------------------
=== lata_spokoju ===
# tlo: kapliczki
# rozdzial: Prológ
# tytul: Roky pokoja
Utopenec neprišiel. Ani v ten rok, ani v nasledujúci.
Maciek a Marianna orali pole, ktoré bolo z roka na rok o kúsok väčšie. Dobrosław rástol rýchlo – najprv pásol husi, potom chodil za pluhom, až napokon sám viedol koňa.{ los_psa == oswojony: Pes zostarol pri prahu a jednej zimy už nevstal. Pochovali ho pod lesom.}
Niekedy, za dlhých zimných večerov, Maciek chlapcovi rozprával o prvej jari v Zapadline. O vytí v húštine, o tom, čo vyšlo z hmly pri prístrešku, o hlase, ktorý ho volal od bažín. O bylinkárke upálenej v chate pri jazere. Syn počúval s rozpálenými lícami, ale mal to za povedačky – také, aké sa hovoria deťom, aby nechodili samy k vode.
Keď syn dospel, dedina začala stavať nové kaplnky, vedľa niekoľkých spráchnivených stĺpov pozdĺž boru, o ktorých už nikto nepamätal, kto ich postavil. Jednu pri ceste z Bukového hrebeňa, druhú na kraji lesa, tretiu pri lávke cez močiare. Potom pribúdali ďalšie, až stáli takmer pri každej medzi. Ľudia hovorili, že odvtedy svetlá nad bažinami blikajú zriedkavejšie. Dobrosław tomu neveril, ale každý rok v máji spolu s ostatnými zdobil kaplnky kvetmi. # pokaz: kapliczki
Rodičia Dobrosława umreli od staroby, jeden po druhom, v tej istej chate, ktorú Maciek kedysi postavil od prvého brvna. Dobrosław sa oženil s dievčaťom zo susednej dediny a čoskoro sa mu narodil syn.
Dali mu meno Jaromir. # dalej
-> prolog_ciag_dalszy
