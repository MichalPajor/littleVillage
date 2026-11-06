// ------------------------------------------------------------
//  Prolog – Zapadlina, około siedemdziesiąt lat przed główną
//  częścią opowieści. Maciek, dziadek Jaromira, wybiera
//  miejsce na chatę.
// ------------------------------------------------------------

=== prolog ===
# tlo: zapadlina
# rozdzial: Prológ
# tytul: Zapadlina
Zapadlina – dedina ležiaca tam, kde sa zem, unavená z toho, že je rovinou, zosunula nadol. Kto sa do nej chcel dostať, musel vždy schádzať z pahorkov, brehov a svahov – či už od hradskej cez Bukový hrebeň, alebo od boru po vychodenom chodníku. Z mesta sa vracalo šesť hodín a posledný úsek cesty sa vinul pomedzi bažiny, stále nadol. Hmla mala túto kotlinu rada. Vlievala sa do nej za súmraku ako mlieko do misy a stávalo sa, že z nej nechcela vyjsť ani do poludnia.
Od východu sa tlačil les – starý, ihličnatý a taký hustý, že stromy aj vo dne vrhali hlboký, chladný tieň. Na severe prechádzala mäkká zem do močiarov zarastených pálkou, ostricou a zakrpatenými kríkmi. Voda tam stála čierna, mútna a nehybná. Niektorí vraveli, že sa do nej nesmie človek dlho dívať, lebo by tým mohol privolať utopencov uväznených pod vrstvou bahna. Po nociach nad ňou často lietali bludné ohne. Na západe, v najnižšom mieste doliny, ležalo jazero, okrúhle, akoby ho niekto vytlačil kolenom. Hovorilo sa, že jeho dno nikto nikdy nevidel.
Dedina bola malá, ale nie mladá. Päť chalúp stálo ďaleko od seba, lebo každý mal toľko poľa, koľko jeho predkovia dokázali vyklčovať a ubrániť. Žilo v nej asi tridsať ľudí, aj s deťmi. Všetci sa dobre poznali. Kostol bol až v meste; chodilo sa doň niekoľkokrát do roka, na najväčšie sviatky, ak to cesty dovolili. Vtedy v dedine neostala ani jedna živá duša.
Asi sedemdesiat rokov predtým, ako sa Jaromir prvý raz pozrel smerom k lesu, zišiel jeho dedko do Zapadliny s uzlíkom na pleci. Maciek nemal nič okrem sekery, chleba, dvoch rúk a zaťatosti. Sekeru a chlieb kúpil v meste za peniaze zarobené štyrmi rokmi roboty na cudzom poli. Chcel konečne mať niečo svoje – kút, kde bude bývať a dá rodine strechu nad hlavou. Zemepán tu dával pustatiny na klčovanie za nízku árendu, a tak každý kúsok zeme, ktorý Maciek vyčistí, bude jeho. Bola jar, polia sa parili a kde-tu v tieni ešte ležal špinavý sneh. Maciek už niekoľko dní chodil po okolí a hľadal, kde postaví chatu. Najčastejšie sa mu v mysli vracali tri miesta.
# ozdobnik
Prvé ležalo na východnom okraji dediny, hneď pod lesom. Zem bola úrodná, drevo mal na dosah ruky a ani zveri tam nechýbalo. Lenže od boru vždy ťahal chlad, aj v horúcich dňoch, a v noci sa odtiaľ ozývali zvuky, ktoré nevedel pomenovať.
Druhé bolo na severe, pri močiaroch. Rozkladali sa tam šíre lúky, na ktorých by sa dal pásť dobytok, a rašeliny na kúrenie by nikdy nebolo málo. Zato po zotmení nad bažinami vraj čosi blikalo. Ľudia, ktorých stretol pri studni, hovorili len: – Tam sa nechodí a nestavia. Tam sa len topí.
Tretie, pri jazere, sa zdalo najmalebnejšie. Voda bola čistá, ryby samy skákali do ruky a breh mierny – stačilo sa predrať cez hustú trstinu. Zostali tam aj zvyšky chalupy, ktorá tu kedysi stála: staré, spráchnivené a ohorené brvná. Nikto v dedine nechcel povedať, kto v nej býval ani aký osud ho stihol, a ľudia sa prežehnali zakaždým, keď ju niekto spomenul.
# pytanie: Kde Maciek postaví chatu?
*   [Na okraji lesa, na východe.]
    ~ chata_macka = przy_lesie
    -> budowa
*   [Pri močiaroch, na severe.]
    ~ chata_macka = przy_mokradlach
    -> budowa
*   [Pri jazere.]
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
# rozdzial: Prológ
# tytul: Chata
Maciek si vybral okraj lesa. Usúdil, že s drevom poruke postaví chatu rýchlejšie, a na tom mu záležalo najviac. Úrodná zem sa zíde na zeleninu – napokon, niečo treba jesť. A spánok? Nejako bude. Hneď prvé ráno sa pustil do práce a zaťal sekeru do najbližšieho smreka. Ozvena úderu sa rozbehla pomedzi stromy a vrátila sa po čudne dlhej chvíli – pretiahnutá, hlboká a nie celkom podobná klopaniu sekery.
-> praca

= mokradla
# tlo: budowa_mokradla
# rozdzial: Prológ
# tytul: Chata
Maciek si vybral lúky pri močiaroch. Keď sa pustil do práce, ľudia, čo ho videli, krútili hlavami. Pre nich to bolo posledné miesto, kde by postavili chalupu. Zem sa tu pod nohami prehýbala, ale dávala rašelinu, ktorej by stačilo aj na sto zím. Aby sa chata neprepadla do blata, musel Maciek pripraviť podmurovku. Celý prvý deň znášal z pahorkov kamene a svedomito ich ukladal.
Po drevo chodil ďaleko, až pod bór. Stávalo sa mu, že spadol do plytkej mláky – ešte nepoznal tunajšie chodníky – a obuv mal večne premočenú. Keď pomyslel na príbehy miestnych, cítil nepokoj, ale aj zvedavosť. Vŕtalo mu v hlave, čo také mohlo nad bažinami blikať. Snažil sa vyhýbať čiernej vode a vzal si k srdcu výstrahu o utopencoch. Ak naozaj jestvovali, rozhodne ich nechcel stretnúť.
-> praca

= jezioro
# tlo: budowa_jezioro
# rozdzial: Prológ
# tytul: Chata
Maciek si vybral breh jazera. Čosi v hĺbke srdca mu hovorilo, že toto miesto je preňho. Možno ho priťahovala sama voda – hladká a jasná, s celým nebom vnútri. Spráchnivené, ohorené brvná zo starej chalupy zvalil do vysokého rákosia, aby mu neboli tŕňom v oku. Čo bolo, to bolo – opakoval si pri klčovaní krovia, keď sa mu vybavovali príbehy miestnych. Stromy rúbal na svahoch a kmene kotúľal dolu. Na pokrytie strechy zbieral trstinu, ktorej tu nebolo málo – siahala mu až nad hlavu.
-> praca

= praca
Stavba trvala vyše mesiaca. Niekedy prišiel niekto z miestnych Maćkovi pomôcť. Najčastejšie to bol Andrzej, s ktorým si vždy najlepšie rozumel. Sám nemal na rozdávanie, ale keď videl, v akej biede prišelec žije, občas mu priniesol niečo pod zub. Rád tiež rozprával o svojom synovi, ktorý bol jeho pýchou. Chlapec mal jedenásť rokov, a už bol otcovi pravou rukou.
Samotné stavanie chaty nebolo ťažké: zoťať stromy, ošúpať ich, narezať na brvná správnej dĺžky a na koncoch vysekať zámky, aby po zložení dobre držali. Vďaka tomu steny stáli bez jediného klinca. Škáry upchával machom a hlinou. Od ťažkej každodennej roboty mu na dlaniach naskočili pľuzgiere, ktoré praskali a zrastali, až koža stvrdla ako kôra.
Svoj chlieb jedol veľmi šetrne – krajec na raňajky, druhý na večeru, a zapíjal ho vodou. Sľuboval si, že po novú zásobu pôjde do mesta, len čo dokončí strechu. Bochník vysychal, scvrkával sa a s každým dňom vážil menej a menej – a Maciek spolu s ním.
Spával v prístrešku z vetiev, ktorý si narýchlo zbil prvý večer: niekoľko konárov opretých o kmeň, prikrytých olisteným haluzím a drnom, a vnútri lôžko z machu. Zmestil sa doň len poležiačky. Sekeru mal vždy po boku. # dalej
-> noce

= noce
Noci boli najhoršie. Jarný chlad a vlhkosť sa dostávali pod šaty a prenikavo hrýzli až do kostí. Ťažko sa zaspávalo. Maciek ležal s otvorenými očami a počúval.
{ chata_macka:
    - przy_lesie: Les nikdy nestíchol. Nefúkal vietor, a predsa praskali konáre – pomaly, lenivo, raz bližšie, raz ďalej. Často zmeravel a načúval, hoci z niektorých zvukov mu behali zimomriavky po chrbte.
    - przy_mokradlach: Bažiny nikdy nespali. Bublali, mľaskali a niekedy – tak sa mu zdalo – vzdychali ako človek. Keď to začul prvý raz, strhol sa, schmatol sekeru a vyzrel z prístrešku. Príbehy od studne sa ukázali pravdivé. Po polnoci, ďaleko nad čiernou vodou, sa rozsvietilo malé svetlo a blikalo. Zhaslo, keď sa naň díval, a znova sa rozžiarilo, keď odvrátil zrak.
    - else: Jazero v noci dýchalo. Každý jeho dych bol teplý a príjemný. Hoci nebolo vetra ani vĺn, na plytčine občas čosi čľuplo. Raz Maciek začul, ako čosi ťažké vychádza z vody a ide pobrežím cez trstinu k nemu. Ráno sa šiel pozrieť. Trstina stála nedotknutá a na plytčine driemali kačky, pokojné ako každý deň.
}
Jednej noci, keď mu z bochníka zostala už len pätka, doľahol k nemu zvuk, aký tu dovtedy nepoznal. Tiché, prerývané vytie – tenké, podobné vlčiemu, ale slabé. Ozývalo sa z húštiny neďaleko. Maciek sa ho snažil nevšímať, ale stále sa vracalo.
# pytanie: Čo by mal Maciek urobiť?
*   [Vziať sekeru – hoci po tme ju ľahko stratiť v blate – vyjsť z prístrešku a pozrieť sa, čo to je.]
    -> pies
*   [Zostať v prístrešku a napriek všetkému skúsiť zaspať. Tu sa cíti v bezpečí.]
    -> zostal

= zostal
~ los_psa = niespotkany
Maciek zovrel prsty na porisku a nepohol sa z miesta. Vytie trvalo ešte dlho. Potom prešlo do žalostného kňučania a pred svitaním stíchlo. # dalej
-> dach


// ------------------------------------------------------------
//  Pies w zaroślach – tylko gdy Maciek wyszedł z szałasu.
// ------------------------------------------------------------
=== pies ===
# tlo: zarosla_noc
Maciek sa vyplazil von so sekerou v ruke. Noc bola jasná od mesiaca a tráva mokrá od rosy. Kráčal pomaly za zvukom, krok za krokom, a cítil, že srdce mu chce vyskočiť z hrude. Vytie raz utíchalo, raz sa ozývalo čoraz bližšie.
V hustých kríkoch začul šuchot. Rozhrnul konáre poriskom a zmeravel. Z tmy sa vynorili dve lesklé oči. V mesačnom svetle zbadal, že je to mladý pes. Bol taký chudý, že mu rebrá trčali pod kožou, a laby mal priveľké na zvyšok tela. Mal dlhú, úzku papuľu a napäto nastražené uši. Pred človekom neutekal. Ticho vrčal a celý sa triasol. # pokaz: pies
Maciek siahol do vrecka. Bol v ňom posledný kúsok chleba zavinutý do handričky – tvrdý ako kameň, ale veď to bolo jeho zajtrajšie jedlo.
# pytanie: Čo urobí Maciek?
*   [Dať psovi kúsok chleba.]
    -> dal_chleb
*   [Nedať mu nič a vrátiť sa do prístrešku.]
    -> nie_dal_chleba

= dal_chleb
~ ekwipunek -= chleb
~ los_psa = nakarmiony
Maciek rozbalil handričku a hodil chlieb pod ker. Pes cúvol a zavrčal, ale po chvíli začal oňuchávať, čo dopadlo na zem. Zrazu chňapol korisť do papule a zmizol v tme, skôr než človek stihol žmurknúť.
Muž sa vplazil späť pod konáre svojho prístrešku a zaspal hladný, s vedomím, že zajtra nebude mať čo raňajkovať. # dalej
-> dach

= nie_dal_chleba
~ los_psa = porzucony
Maciek nechal chlieb vo vrecku.
– Sám ledva žijem – zamrmlal psovi, akoby sa mu chcel ospravedlniť.
Pomaly cúvol a skryl sa pod konáre. Vytie sa ozvalo ešte raz, tichšie než predtým. Viac ho v tú noc nepočul. # dalej
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
# rozdzial: Prológ
# tytul: Strecha
{ los_psa == nakarmiony: -> bez_chleba | -> z_chlebem }

= z_chlebem
~ ekwipunek -= chleb
Ráno Maciek rozbalil handričku a zjedol posledný kúsok chleba. Hrýzol ho pomaly, sústo po súste, aby mu vystačil na celý deň. Zapil vodou, otrepal si dlane a šiel do roboty.
-> trzcina ->
Sekal hustý porast sekerou tesne pri zemi, viazal ho do snopov a znášal k chate. Raz za razom, bez oddychu. Chrbát ho pálil ako živý oheň, ale kopa pri stene rástla.
Popoludní už na tom mieste trstina nebola, a tak sa pohol ďalej. Vracal sa inou cestou – z tej strany, odkiaľ sa minulej noci ozývalo vytie. Kráčal, až mu zrazu noha zastala vo vzduchu.
V tráve pod krom ležal pes. Chudý, s dlhou papuľou a strapatou srsťou. Bol stuhnutý, prevalený na bok, s pootvorenými očami. Muchy ho už obsadli.
{ los_psa == niespotkany:
    Maciek dlho nad ním nehybne stál. Až teraz pochopil, čo vtedy v noci vylo. Nijaké divé zviera, nijaká mora – len hladné, premrznuté šteňa, ktoré volalo, až prestalo.
    Zovrelo mu hrdlo. Pomyslel si, že vtedy mohol vyjsť von. Ale hneď si sám odpovedal: a čo keby padol rovno do vlčej papule? Po tme nevedno, čo číha v kroví. Rozumný človek sedí v prístrešku so sekerou poruke – a žije.
    Odvrátil zrak, prehodil si snop na chrbát a vrátil sa k robote. Psa nechal tam, kde ho našiel. # dalej
- else:
    Maciek klesol na kolená. Pamätal si tie oči v mesačnom svetle, to vrčanie bez presvedčenia, chvenie celého tela. Pes prosil, a on sa otočil a odišiel.
    Jeden kúsok. Jeden tvrdý kúsok chleba.
    – Sám som ledva žil – povedal nahlas, akoby ho niekto obviňoval. – Keby som bol dal všetko, kto by tu ležal? Pes, alebo ja?
    Slová zneli rozumne, ale úľavu neprinášali. Maciek vstal z kolien a bez toho, aby sa ešte pozrel pod ker, vrátil sa k noseniu trstiny. Telo nepochoval. # dalej
}
-> uplyw_czasu

= bez_chleba
Ráno sa Maciek zobudil hladný. Bezmyšlienkovite siahol do vrecka a spomenul si, že handrička je prázdna. Vzdychol, napil sa vody a šiel do roboty.
-> trzcina ->
Sekal hustý porast sekerou tesne pri zemi, viazal ho do snopov a znášal k chate. Raz za razom, bez oddychu.
Okolo poludnia, keď si vystieral boľavý chrbát, zbadal v diaľke pohyb. Na okraji lúky, medzi trsmi trávy, sa motal pes – ten istý, chudý, s dlhou papuľou. Ňuchal, zastavoval sa a pozeral jeho smerom, pripravený každú chvíľu zmiznúť.
Maciek sa usmial, prvý raz po mnohých dňoch.
– Žiješ – zamrmlal.
Ďalšie dni sa pes vracal. Najprv sa držal obďaleč. Potom si sadal na pahorok a celé hodiny sa díval, ako sa človek obracia pri snopoch. Každý deň bol o kúsok bližšie – o niekoľko krokov, nie viac, akoby skúšal, koľko si smie dovoliť. # dalej
-> uplyw_czasu

// Wspólny akapit o trzcinie na dach – skąd ją brał, zależy od miejsca chaty.
= trzcina
Steny už stáli rovno, krokvy pevne držali. Zostávala strecha. Na pokrývku potreboval trstinu – veľa trstiny, viac, než by sa zdalo pri pohľade na samotnú chatu.
{ chata_macka:
    - przy_lesie: Najbližšia rástla na okraji močiarov, pol hodiny cesty odtiaľto, takže každý snop musel vláčiť cez celú lúku.
    - przy_mokradlach: Rástla takmer pod prahom, hustá a vysoká, lenže človek sa po ňu musel brodiť studeným blatom po kolená.
    - else: Rástla okolo celého brehu, vyššia než on, a šumela pri každom závane ako niekto, kto šepká za chrbtom.
}
->->

= uplyw_czasu
Plynuli dni. Snehy sa roztopili úplne, aj v najhlbšom tieni pod borom. Zem sa prestala pariť a pod bosou nohou bola teplá. Na okraji lesa rozkvitli veternice – biele, husté ako inovať – a na podmáčaných miestach sa zlatilo záružlie.
Chlieb Maciek nemal už dávno. Žil z toho, čo sám našiel alebo čo mu priniesol Andrzej. Na močiaroch zbieral prezimovanú kľukvu, kyslú a scvrknutú, ale stále jedlú. Zo šípových kríkov obíral vlaňajšie šípky, tvrdé ako koráliky. Na lúke šklbal štiavu, ktorú žuval surovú, a vo vlhkých zákutiach pod stromami nachádzal medvedí cesnak. Narezával aj brezy a pil sladkastú šťavu, ktorá z nich kvapkala až do rána. Hlad neodchádzal, ale dalo sa s ním žiť.
Strecha rástla zo dňa na deň. Snop vedľa snopu, vrstva na vrstve. # dalej
-> wieczor


// ------------------------------------------------------------
//  Wieczór – stwór w zaroślach.
// ------------------------------------------------------------
=== wieczor ===
# tlo: zmierzch
V ten deň ukladal Maciek snopy už pri samom hrebeni strechy. Chýbal len jeden pás, možno dva. Ruky sa mu triasli od únavy a slnko skĺzlo za obzor a zanechalo na nebi špinavú červeň.
Zišiel zo strechy a sadol si pri prístrešku. Chcel si oddýchnuť len na chvíľu, kým bolo ešte svetlo. Oprel si hlavu o kmeň, zavrel oči…
…a zaspal.
Zobudilo ho ticho.
Nebolo počuť svrčky, žaby ani vietor. Všetko navôkol sa topilo v hmle, hustej a bielej, siahajúcej po kolená. Maciek nevedel, ako dlho spal. Vedel len, že niečo nie je v poriadku – cítil to telom aj dušou skôr, než to pochopil rozumom.
Ozval sa zvuk. Nie vytie ani výkrik, ale niečo medzi tým: pretiahnutý hrdelný ston, ktorý prešiel do praskotu lámaných konárov. Čosi s rachotom skočilo do húštiny – tesne vedľa, neďaleko prístrešku. # pokaz: oczy
Maciek vyskočil na nohy. Sekera sa mu sama ocitla v dlaniach. Zvieral ju tak silno, až mu obeleli hánky, a díval sa do tmy, odkiaľ sa ozývali kroky – pomalé, ťažké, čoraz bližšie. # dalej
{ los_psa == nakarmiony: -> obrona | -> zdobycz }

= zdobycz
# tlo: zmierzch_zdobycz
Kríky sa rozostúpili. Z hmly sa vynorila postava. # pokaz: topielec
Bola vyššia než dospelý muž, o dobré tri hlavy. Stála na dvoch nohách, ale zhrbená, s rukami zakončenými pazúrmi, ktoré jej viseli takmer po zem, a s dlhými vlasmi, z ktorých kvapkala bažina. Mala ľudský tvar – a vôbec nebola človekom. V papuli držala čosi veľké a bezvládne, čo jej padalo na obe strany hlavy.
Maciek to hneď spoznal, hoci by bol radšej nespoznal. # pokaz: cialo
Postava zovrela čeľuste. Ozvalo sa chrupnutie – hlasné, mokré, ako keď sa lámu suché konáre, lenže toto neboli konáre. Potom sa stvora otočila a rútila sa k {chata_macka == przy_mokradlach:neďalekým }močiarom, tak rýchlo, že sa za ňou hmla zvírila ako voda.
Maciek sa nemohol pohnúť. Celý sa triasol, studený pot mu stekal po chrbte a nohy mal ako z vaty. Sekera mu oťažievala v rukách, nanič. Stál tak veľmi dlho, až tma znova stíchla.
-> strach_o_chate ->
Napokon sa vplazil do prístrešku. Dlho nemohol zažmúriť oka a načúval, až vyčerpaný prácou a strachom zaspal. # dalej
-> zgliszcza

= obrona
# tlo: zmierzch_obrona
Kríky sa rozostúpili. V tme zažiarili dve oči – vysoko, privysoko na vlka či diviaka. Postava stála v húštine na dvoch nohách, zhrbená, s rukami visiacimi takmer po zem a s dlhými vlasmi, z ktorých kvapkala bažina. Mala ľudský tvar – a vôbec nebola človekom. # pokaz: topielec
Maciek sa nemohol pohnúť. Celý sa triasol, studený pot mu stekal po chrbte. Oči hľadeli priamo naňho a pomaly, veľmi pomaly sa približovali.
Z diaľky sa ozval štekot.
Pes vyrazil z tmy ako šíp a postavil sa medzi Maćka a húštinu. Srsť sa mu na krku zježila, zaprel sa na mieste a štekal – hlasno, zúrivo, bez prestávky, hoci sa celý triasol. Chudý, mladý, s chvostom medzi nohami – a necúvol ani o krok. # pokaz: pies
Oči sa zastavili. Postava zaváhala, hrdelne zasyčala – a potom sa obrátila a s praskotom konárov sa rútila smerom k {chata_macka == przy_mokradlach:neďalekým }močiarom, až sa za ňou hmla zvírila ako voda.
-> strach_o_chate ->
~ los_psa = oswojony
~ ekwipunek += pies_towarzysz
Dlho trvalo, kým sa Maciek spamätal. Napokon sa zviezol na zem pri prístrešku a ťažko dýchal ako po dlhom behu. Pes prestal štekať. Neisto k nemu podišiel so sklonenou hlavou – a zavrtel chvostom, pyšný na seba ako nikto na svete.
Maciek natiahol roztrasenú ruku. Zviera ju oňuchalo a potom sa nechalo pohladkať.
– Dobrý pes – zašepkal. – Dobrý – vydýchol.
Tej noci vošli do prístrešku spolu. Pes si ľahol pri vchode, hlavou k húštine. Maciek ešte dlho bdel, zaposlúchaný do tmy, až ho premohol spánok. Ale už nebol sám. # tobolek # dalej
-> zgliszcza

// Tylko gdy chata stoi przy mokradłach – stwór uciekł właśnie tam.
= strach_o_chate
{ chata_macka == przy_mokradlach:
    A potom mu došlo, že stvora neutiekla ďaleko. Zmizla v bažine, niekoľko desiatok krokov od prístrešku – tam, kde on sám už mesiac spal, jedol a pracoval. Možno tam bola od začiatku. Možno každú noc, keď Maciek načúval bublaniu čiernej vody, čosi z druhej strany počúvalo jeho. „Tam sa nestavia. Tam sa len topí“ – vybavili sa mu slová ľudí od studne. Prvý raz odo dňa, keď začal stavať, si pomyslel, že možno urobil chybu. Že možno mal poslúchnuť.
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
# rozdzial: Prológ
# tytul: Spálenisko
Začalo svitať. Maciek sa zobudil stuhnutý a premrznutý. Chvíľu nevedel, či sa to, čo v noci videl, naozaj stalo. Potom sa mu vybavil praskot lámaných konárov a prebehla ním triaška.
{ los_psa == oswojony:
    Pes ležal pri vchode do prístrešku s hlavou na labách a díval sa k močiarom. Už nespal. Maciek mal dojem, že takto bdel až do rána.
- else:
    V prístrešku bolo ticho. Maciek vyzrel von. Tráva pri húštine bola poľahnutá v širokom páse, oblepená bahnom, a páchla bažinou{chata_macka != przy_mokradlach:, hoci k močiarom bolo ďaleko}. Pás sa ťahal {chata_macka == przy_mokradlach:k čiernej vode|ich smerom} a na steblách tmavli kvapky krvi. # pokaz: slady
}
Podišiel k svojej nedokončenej chate a sadol si na jej prah. Sedel a hľadel pred seba. Myšlienky sa v ňom kľbčili ako hmla nad dedinou. Utiecť. Nechať všetko, kým je ešte nažive, a nikdy sa nevrátiť. A na druhej strane – vyše mesiaca roboty, pľuzgiere na dlaniach, posledné krajce chleba. Každé brvno v týchto stenách otesal sám. A kam by aj šiel? Na cudzie pole, znova za misku kaše? Veď sľúbil, že sem privedie rodinu. Že budú mať vlastnú strechu.
# pytanie: Ako sa Maciek rozhodne?
*   [Zostať. Vložil do toho miesta priveľa.]
    -> zostaje
*   [Zbaliť, čo má, a odísť, kým je čas.]
    -> odchodzi

= zostaje
Vstal, otrepal si nohavice a pozrel na strechu. Zostal jeden pás trstiny, možno dva.
– Nestaval som preto, aby som teraz utekal – povedal nahlas, aby ho počulo aj niečo iné než {chata_macka == przy_lesie:les|trstina}. # dalej
-> dach_gotowy

= odchodzi
~ chcial_odejsc = true
Prehodil si uzlík cez plece a vydal sa do kopca, k hradskej. Kráčal rýchlo a neobzeral sa. Až na Bukovom hrebeni sa zastavil a pozrel dolu.
Chata tam stála, malá a nedokončená, so strechou ako nedopovedaná veta. Jeho chata.
{ los_psa == oswojony: Pes šiel kus cesty za ním, potom si sadol v polovici svahu a díval sa – raz naňho, raz za seba – akoby čakal, kým to Maciek pochopí sám. }
Maciek sa nepohol, kým slnko nevystúpilo nad bór. Potom sa vrátil. Nie preto, že by sa prestal báť. Jednoducho nemal kam ísť. # dalej
-> dach_gotowy

= dach_gotowy
Posledné snopy trstiny uložil do poludnia. Zviazal ich lykom, pritlačil žrďami a zišiel z rebríka. Prvý raz, odkedy prišiel do Zapadliny, stál pred dokončenou chatou – vlastnou, od podvaliny po hrebeň. # pokaz: dach
Tej noci v nej konečne zaspal. Steny voňali živicou a vlhkou hlinou a cez škáru vo dverách sa predieralo mesačné svetlo.
Postele ešte nebolo, ale aspoň mal nad hlavou vlastnú strechu. Tu, doma, po dlhých týždňoch prespal celú noc bez jediného prebudenia.
{ los_psa == oswojony: Pes sa uložil na prahu a od tej noci ho nikomu neprenechal. }
Ráno šiel Maciek za jediným človekom, ktorému dôveroval. Musel to niekomu povedať. # dalej
-> u_andrzeja

= u_andrzeja
# tlo: izba_andrzeja
Chalupa Andrzeja stála na pahorku, ďaleko od vody. Izba bola tesná a voňala dymom. Staš, gazdov syn, sedel pri stole na lavici a nožíkom strúhal paličku. Keď zbadal hosťa, usmial sa od ucha k uchu.
Maciek začal od úplného začiatku: od ticha, od krokov a… od postavy o tri hlavy vyššej než človek, s vlasmi, z ktorých kvapkala bažina.
Andrzej počúval, až zrazu vyprskol do smiechu.
– Od hladu sa ti to len zazdalo, človeče. Spamätaj sa. Mesiac o chlebe a vode – to by si uvidel aj archanjela Michala.
Staš prestal strúhať. Hľadel na prišelca s otvorenými ústami a strachom v očiach.
– Je to pravda? – opýtal sa.
# pytanie: Čo urobí Maciek?
*   [Rozhodne potvrdiť, že je to pravda, a povedať všetko do konca, pred chlapcom. Nech vie, čoho sa má chrániť.]
    ~ stas_zaufanie = true
    -> prawda_przy_chlopcu
*   [Usmiať sa a odbyť chlapca, že to bol asi len sen, ale poprosiť Andrzeja, aby ho poslal preč, a medzi štyrmi očami mu všetko podrobne vyrozprávať. To nie sú veci pre dieťa.]
    -> w_cztery_oczy

= prawda_przy_chlopcu
– Áno, je to pravda. Nech decko počúva. Lepšie, aby sa bálo, ako keby šlo samo k bažine a už sa nikdy nevrátilo.
Gazda pozrel na syna, potom na Maćka. Úsmev mu pomaly zmizol z tváre.
-> dziad_opowiadal

= w_cztery_oczy
– Vlastne to… to bol asi zlý sen – odpovedal.
Napriek tomu poprosil priateľa o rozhovor medzi štyrmi očami. Ten poslal Staša po vodu. Chlapec vyšiel neochotne a dvere nechal pootvorené. Ani jeden z mužov si to nevšimol.
-> dziad_opowiadal

= dziad_opowiadal
– O tri hlavy vyššia, vravíš – ozval sa napokon Andrzej, už bez smiechu. – A vlasy mokré od bažiny. – Dlhú chvíľu otáčal v prstoch prázdnu misku. – Môj dedo rozprával o niečom takom. Myslel som, že len strašil deti.
Maciek ešte raz, krok za krokom, vyrozprával celú tú noc. # dalej
-> legenda


// ------------------------------------------------------------
//  Legenda o wiedźmie znad jeziora – opowiada Andrzej.
// ------------------------------------------------------------
=== legenda ===
# tlo: legenda
– Vraj sa všetko začalo tam, pri jazere, kde ležia tie ohorené brvná. – Andrzej stíšil hlas. – Bývala tam kedysi žena. Bylinkárka. Ľudia k nej chodili s bolesťami, chorobami a horúčkou – a nikoho neodmietla. Ale časom do nej čosi vošlo. Nevedno prečo. Hovorila po nociach, ale nie sama so sebou – s niekým, koho nikto nevidel. Jedni vraveli, že s utopencami, iní, že so starcom v klobúku z machu, ktorý k nej nazeral od boru. Ona sama opakovala, že mŕtvi prichádzajú od vody a rozprávajú jej o strašnej budúcnosti. Čoskoro sa jej všetci vyhýbali, lebo sa báli.
Potom sa v dedine diali čoraz horšie veci. Mlieko kyslo vo vedrách, malé deti sa budili s krikom, zelenina hnila v zemi. Hynuli aj zvieratá – najprv teľa, potom krava, potom celý kurín za jedinú noc. Ľudia hovorili, že je to jej robota, a začali ju volať bosorkou.
Jednej noci sa pod jej chatou zišlo niekoľko chlapov. Zatĺkli dvere doskami, kým spala, obložili steny slamou a podpálili. # pokaz: chlopi, ogien
Andrzej na chvíľu zmĺkol.
– Dedo vravel, že kričala až do samého konca. Nie od bolesti, Maciek. Preklínala. Dedinu, zem, každého, kto tu žije a kto sa tu kedy usadí. Že nikto nenájde pokoj, kým tí, čo ju navštevujú, tu nevyvraždia všetkých do jedného. Bolo počuť aj to, ako stonala a vyrážala zo seba slová kliatby: „Kosti vašich detí budú dolámané a ich krv vypitá…“. – Andrzej si pretrel tvár dlaňou. – A ešte hovoril, že na okraji boru, keď chata horela, stál ktosi vysoký a díval sa. Nikto sa nešiel pozrieť, kto to bol.
– Strašné… A tí, čo ju upálili?
– Ani jeden sa nedožil zimy. Jeden po druhom prichádzali o rozum. Hovorili sami so sebou, nespávali, chodili potme k vode. Až napokon všetci vošli do bažiny a už nevyšli. Tí, čo ich stretli poslední, vraveli, že v očiach mali čosi zvláštne. Akoby v každom tlel kahanec. # pokaz: wegielki
Andrzej sa k nemu naklonil.
– To ich oči blikajú po nociach nad močiarmi. Nijaké bludné ohne. Stoja tam a vyzerajú – vábia.
{ chata_macka:
    - przy_mokradlach: Maciek cítil, ako mu chlad zviera žalúdok. Každú noc videl tie svetlá zo svojho prahu. Myslel si, že je to hnijúce drevo alebo močiarne výpary. Že je to len svetlo.
    - nad_jeziorem: Maciek zbledol. Tie brvná vlastnými rukami zvalil do trstiny. Svoju chatu postavil presne tam, kde horela tamtá.
}
{ stas_zaufanie:
    Staš sedel bez pohnutia, s nedostrúhanou paličkou v ruke. # dalej
- else:
    Za pootvorenými dverami čosi ticho vrzlo. Keď gazda vyzrel, v pitvore stálo len vedro s vodou. Staš bol už ďaleko na dvore. # dalej
}
-> zgliszcza_wiedzmy


// ------------------------------------------------------------
//  Zgliszcza chaty wiedźmy w trzcinach nad jeziorem.
// ------------------------------------------------------------
=== zgliszcza_wiedzmy ===
# tlo: zgliszcza
~ zapiski += zielarka_1
Cestou od Andrzeja Maciek nemohol prestať myslieť na spálenisko.
{ chata_macka == nad_jeziorem: Teraz, keď vedel, čo to je, videl ho zakaždým, keď pozrel do trstiny pri svojom dome. Čierne, zuhoľnatené brvná trčiace ako rebrá. }
Čosi ho vnútri lákalo, aby to miesto dôkladne preskúmal, hoci cítil strach.
# pytanie: Čo urobí Maciek?
*   [Ísť na spálenisko a prehľadať popol.]
    -> przeszukuje
*   [Držať sa od neho ďaleko.]
    -> omija

= przeszukuje
~ przeszukal_zgliszcza = true
~ ekwipunek += figurka
Rozhrnul trstinu sekerou a kľakol si k sčerneným brvnám. Popol bol studený, uľahnutý a vlhký. Dlho sa v ňom prehrabával, až prsty narazili na čosi tvrdé. # pokaz: maciek
Malá drevená figúrka, z jednej strany ohorená. Ľudská postava s pridlhými rukami, siahajúcimi až po chodidlá.
Maciek ju obracal v dlaniach. Pomyslel si, že ju možno v meste vymení za niečo na jedenie, a tak si ju nechal.
{ los_psa == oswojony: Pes, ktorý dovtedy ňuchal pri brehu, cúvol a ticho zavrčal na jeho vrecko. }
Po chvíli zbadal v popole ešte čosi.
– To nie je možné – zašepkal a vytiahol sčernené kresadlo. – Že by ním podpálili chatu bosorky?
# pytanie: Vezme si Maciek kresadlo?
*   [Áno – prekliate či nie, bude si ním môcť zakladať oheň a variť teplé jedlo.]
    ~ ekwipunek += krzesiwo
    -> wieczor_przy_chacie
*   [Nie – nechce riskovať kliatbu, ktorá by mohla padnúť naňho.]
    -> wieczor_przy_chacie

= omija
{chata_macka == nad_jeziorem:Trstine pri vlastnom prahu sa vyhnúť nemohol, ale odvtedy, keď vychádzal z chaty, odvracal od nej zrak.|Jazero obišiel širokým oblúkom a ani raz sa nepozrel smerom k trstine.} Niektoré veci je lepšie nechať tak. # dalej
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
    Večer Maciek nazbieral suché konáre a uložil ich do kruhu z kameňov pred chatou. Kresadlo mu v dlani ležalo čudne ťažké. Chvíľu si ho prezeral a myslel na to, čie ruky ho držali naposledy. Potom udrel raz, druhý raz, tretí – a v trúde zatlela iskra. # pokaz: ogien
    Oheň jasne vzbĺkol a teplo mu šľahlo do tváre tak náhle, že sa mu až zatočila hlava. Celé týždne nemal v ústach nič horúce. Teraz si v hlinenom hrnci uvaril polievku zo žihľavy a štiavy. Jedol pomaly, pálil si pery a nič na svete mu nechutilo tak dobre.
    { los_psa == oswojony:
        Pes si ľahol na druhej strane ohniska. Plamene sa mu odrážali v očiach a on do nich hľadel ako očarený. # pokaz: pies
    }
- else:
    Večer sa zniesol chladný a tmavý. Maciek zjedol hrsť surovej štiavy a zopár scvrknutých bobúľ kľukvy, zapil vodou a sadol si na prah.
}
Dlho sedel, hľadel k hradskej a v duchu si robil plán. Chata bola hotová. Bol čas vybrať sa do mesta – kúpiť chlieb, soľ, možno trochu krúp.
{ ekwipunek ? figurka: Figúrku skúsi predať – možno niekto zaplatí za takú zvláštnosť. }
A potom, len čo naberie síl, privedie sem rodinu. Do domu, ktorý postavil vlastnými rukami. # dalej
-> droga_do_miasta


// ------------------------------------------------------------
//  Droga do miasta – kręta ścieżka między mokradłami, głos znad wody.
// ------------------------------------------------------------
=== droga_do_miasta ===
# tlo: sciezka
Vyrazil na úsvite. Do mesta to bolo šesť hodín cesty a jej prvý úsek viedol kľukatým chodníkom pomedzi močiare, do kopca, až na Bukový hrebeň. Kráčal svižne, hoci mu v bruchu škvŕkalo od hladu. Myslel na ženu a synčeka – na to, ako prvý raz zastanú na prahu novej chaty. Clivota ho zvierala za hrdlo.
{ los_psa == oswojony:
    Pes bežal tesne pri ňom a veselo vrtel chvostom. # pokaz: pies
}
Hmla ležala nízko nad čiernou vodou. Chodník bol úzky, miestami taký rozmočený, že bolo treba preskakovať z trsu na trs. Maciek opatrne našľapoval, so sklonenou hlavou. Pamätal si, čo hovorili ľudia: do tej vody sa nesmie dlho pozerať.
V polovici cesty ho však čosi prinútilo zdvihnúť zrak. V hĺbke močiarov tlelo bledé svetlo. Už sa naplno rozvidnievalo, a ono tam stále bolo. Blikalo pomaly, pravidelne, akoby tam niekto stál s kahancom a vyzeral. # pokaz: swiatelko
Vtedy začul svoje meno.
– Maaaciek…
Ticho, pretiahnuto, od vody. Hlasom, ktorý znel ako hlas jeho milovanej ženy.
Vždy ho tak volala, keď sa niečo dialo. Ale veď zostala na majeri za mestom a mala tam naňho čakať… Možno sa mu to len zdalo. Alebo ho k sebe vábila bažina.
# pytanie: Čo urobí Maciek?
*   [Ísť za hlasom – možno jeho žena potrebuje pomoc.]
    { los_psa == oswojony: -> ratunek | -> utoniecie }
*   [Neobzrieť sa a ísť ďalej – to určite nemôže byť ona.]
    -> nie_odwraca_sie

= ratunek
# tlo: sciezka_po
~ pies_uratowal = true
Urobil krok z chodníka, potom druhý, minul hustý porast a preskočil cez mazľavé blato. Bažina čľupla a schmatla ho za členky ľadovými prstami. Cítil, ako mu sťahuje nohy pod hladinu. Vtedy pes skočil, chytil ho zubami za halenu a zo všetkých síl ho trhol dozadu. Maciek sa zvalil na chrbát a vykríkol. Svetlo zhaslo ako sfúknuté a kdesi v hmle sa ozval tichý chichot.
Ležal v blate, lapal dych, a zviera stálo nad ním a vrčalo smerom k močiarom, kým sa hmla nad vodou nezavrela. # pokaz: upadek # dalej
-> na_grzbiecie

= utoniecie
// Bez psa: Maciek idzie za głosem i tonie – ale przeżywa. Ratuje się krzesiwem albo ratuje go Andrzej;
// bagno zabiera figurkę (zostaje tylko spokojne zakończenie) i zostawia na łydkach sine pręgi.
# tlo: sciezka_ratunek
~ pregi_na_lydkach = true
Urobil krok z chodníka, potom druhý, minul hustý porast a preskočil cez mazľavé blato. Bažina čľupla a schmatla ho za členky ľadovými prstami. Cítil, ako mu sťahuje nohy pod hladinu. Hlas bol čoraz bližšie – teraz teplý, známy, taký, za ktorým sa mu cnelo celé týždne.
– Maaaciek…
Stál nehybne, ponorený už po kolená, potom po pás. Necítil chlad. Cítil len, že sa k nemu blíži niekto milovaný.
Až keď mu čierna voda siahla po prsia, pochopil. Mykol sa, ale čosi ho držalo za lýtka – čosi, čo malo prsty. Svetlo zablikalo tesne pred jeho tvárou a Maciek videl, že to nie je kahanec. Boli to oči – také, o akých hovoril Andrzej. # pokaz: oczy
{ ekwipunek ? krzesiwo:
    Vtedy si spomenul na kresadlo, ktoré odvtedy nosil v záňadrí. Stŕpnutými rukami ho vytrhol aj s trúdom a udrel – raz, druhý raz – tesne nad vodou. Tretia iskra skočila rovno do očí. Vo vode čosi zasyčalo ako poleno hodené do ohňa, zovretie na lýtkach povolilo a svetlo zhaslo ako sfúknuté. Maciek sa vrhol dozadu, chytal sa trsov trávy, vytrhával ich po hrstiach, až sa napokon vyplazil na chodník. # pokaz: iskry, ratunek
    { ekwipunek ? figurka:
        ~ ekwipunek -= figurka
        ~ figurka_w_bagnie = true
        Na chodníku pocítil, že vrecko je ľahké. Ohorená figúrka mu v bažine musela vykĺznuť. Chvíľu sa mu zdalo, že ju ešte vidí – malý tmavý tvar, ktorý pomaly klesá do hĺbky – a potom už nebolo nič. # pokaz: figurka
        Nevrátil sa po ňu. Za nič na svete.
    }
- else:
    ~ uratowal_andrzej = true
    – Maciek! Chyť sa!
    Tesne vedľa pleskla o vodu dlhá žrď. Na hrádzi stál Andrzej v zablatených krpcoch, s košom cez plece – na úsvite kontroloval vrše pri tôňach. Maciek sa chytil žrde oboma rukami. Sused sa zaprel a zafučal, bažina ťahala na svoju stranu, až napokon povolila s neochotným mľasknutím. Svetlo ešte raz zablikalo a zhaslo. # pokaz: andrzej, ratunek
    – Hovoril som ti – vydýchal Andrzej, keď obaja ležali v blate. – Nepočúvaj hlasy od vody.
    { ekwipunek ? figurka:
        ~ ekwipunek -= figurka
        ~ figurka_w_bagnie = true
        Na hrádzi Maciek pocítil, že vrecko je ľahké. Ohorená figúrka mu v bažine musela vykĺznuť. Chvíľu sa mu zdalo, že ju ešte vidí – malý tmavý tvar, ktorý pomaly klesá do hĺbky – a potom už nebolo nič. # pokaz: figurka
        – Vzalo si svoje – zamrmlal Andrzej a odpľul si cez ľavé plece.
    }
}
Na oboch lýtkach, tam, kde ho to čosi držalo, mu zostali sinavé pruhy – dlhé, úzke, po päť z každej strany. Nezmizli ani v ten deň, ani do konca jeho života. # dalej
-> na_grzbiecie

= nie_odwraca_sie
Zaťal zuby a šiel ďalej, krok za krokom, bez toho, aby otočil hlavu. Hlas zavolal ešte dvakrát, čoraz tichšie. Potom zmĺkol. # dalej
-> na_grzbiecie

= na_grzbiecie
# tlo: zapadlina
// Kto poszedł za głosem (pies go wyciągnął albo bagno puściło), już się odwrócił – dla niego inny tekst.
{ pies_uratowal || pregi_na_lydkach:
    Zvyšok cesty do kopca prešiel ako vo sne – {pregi_na_lydkach:mokrý po prsia|mokrý po pás}, oblepený bahnom, s {pregi_na_lydkach:lýtkami, na ktorých ešte cítil cudzie prsty|členkami, na ktorých ešte cítil ľadové zovretie bažiny}.{ los_psa == oswojony: Pes sa od neho nepohol ani na krok a každú chvíľu sa obzeral k vode.}
    Na Bukovom hrebeni si sadol na kameň a až tam sa mu prestali triasť ruky. Dolu ležala Zapadlina – tichá, prikrytá hmlou ako rubášom. Niekde tam stála jeho chata.
- else:
    Na Bukovom hrebeni sa Maciek konečne odvážil obzrieť. Dolu ležala Zapadlina – tichá, prikrytá hmlou ako rubášom. Niekde tam stála jeho chata.
}
Potom sa vydal po hradskej smerom k mestu. # dalej
-> miasto


// Koniec prologu – dalej rozdział pierwszy z Jaromirem.
=== prolog_ciag_dalszy ===
# ozdobnik
_Koniec prológu._ # dalej
-> rozdzial_pierwszy
