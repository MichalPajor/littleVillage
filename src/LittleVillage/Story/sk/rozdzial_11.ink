// ------------------------------------------------------------
//  Rozdział jedenasty – Obława (biały wilk). Sroga zima po narodzinach
//  Marysi (Jaromir ma dwadzieścia lat). Wilki we wsi: obrona obory
//  (stary pies przeżywa) albo pilnowanie drzwi (pies ginie, zagryzając
//  wilka). Gajowy Pawlik ogłasza obławę i nagrodę za białego wilka,
//  Antek widzi w nim oczy Franka (obietnica). W młodniku: wydać wilka
//  (ranny ucieka do boru), zmylić obławę albo – z celnością z dzieciństwa –
//  rzucić kamieniem w lufę (kolba, blizna, odrabianie u dziedzica).
//  Wiosną szczenię z rodu psa.
// ------------------------------------------------------------

=== rozdzial_jedenasty ===
# tlo: mroz_izba
# rozdzial: Kapitola jedenásta
# tytul: Poľovačka
Prvú zimu Marysie, po Troch kráľoch, udrel taký mráz, že v noci praskali kmene stromov s treskom ako výstrel, vrabce padali z konárov zamrznuté na kameň a ľad na jazere hučal až do rána. Voda vo vedre zamŕzala v pitvore skôr, ako ju ktokoľvek stihol použiť.
V chalupe kúrili od úsvitu do noci. Hanka spávala s Marysiou hneď pri peci, zabalená do dvoch perín, a Jaromir každých pár hodín vstával, aby priložil do ohňa. {noga_ojca == zlamana:Otec za mrazu krival viac ako obyčajne|Otec už vôbec nezliezal z lavice}, a matka mu na koleno prikladala horúce obklady z otrúb.{ uklad_z_mamunami == oddane_lata: Aj Jaromira boleli kosti – tupo, úporne, akoby sa zima uhniezdila priamo v ňom.}
Marysia sa začala smiať, len čo zazrela Jaromira, chytala ho za prsty a strkala do úst všetko, na čo rúčkami dosiahla. Večer, keď za oknom praskal mráz, jej Hanka spievala pri kolíske a Jaromir sedával vedľa a myslel si, že ešte nikdy v živote nebol taký šťastný.
Len od boru, čoraz smelšie, doliehalo vytie. # pokaz: wycie # dalej
-> owczarnia

= owczarnia
# tlo: owczarnia_noc
V polovici januára prišli vlci do dediny.
Najprv našli ráno u Wójcikovcov rozhrabaný závej a krv na snehu. Potom u Stašovcov za jedinú noc zahynuli tri ovce – hoci ich ovčinec stál uprostred Zapadliny, kde vlka nikto nikdy nevidel. Ľudia začali brávať hydinu do izieb a podopierať vráta žrďami.
V nedeľu nadránom zobudil Jaromira krik oviec. Bosý dobehol k oknu. V mesačnom svetle uvidel sivé tiene, ktoré krúžili okolo maštale – päť, možno šesť – a jeden biely, väčší ako ostatné, ktorý stál bez pohnutia na kraji poľa.{ ekwipunek ? szczeniak: {imie_psa} – už starý, so šedivým pyskom – vrčal pri dverách, až sa mu triasli boky, a škriabal pazúrmi do dosák.} # pokaz: wilki
# pytanie: Čo urobí Jaromir?
*   [Vybehnúť so sekerou a brániť maštaľ.]
    ~ noc_wilkow = bronil_obory
    Schmatol sekeru po dedkovi a vyrútil sa na dvor. Mráz mu zovrel dych v hrdle. Vlci sa k nemu obrátili s hlavami nízko pri zemi a so zábleskom tesákov v papuliach.{ ekwipunek ? szczeniak: {imie_psa} skočil za ním a vrhol sa na najbližšieho, hoci bol o polovicu menší.}
    Za chrbtom Jaromira vykríkla Hanka. Dvere do pitvora zostali dokorán a jeden zo sivých sa prešmykol dnu, rovno k izbe, kde spala Marysia. Skôr než sa Jaromir stihol vrátiť, žena vyhnala vlka za prah horiacim polenom vytrhnutým z pece – no vlk ju ešte stihol chňapnúť za predlaktie.
    Biely vlk zavyl – krátko, ostro, ako rozkaz. Celá svorka cúvla od maštale, akoby ju niekto trhol na povraze. Vlčí samec nechal popri sebe prejsť posledný tieň a až potom zmizol v tme za stodolou Stašovcov.{ ekwipunek ? szczeniak: {imie_psa} sa vrátil s roztrhnutým uchom a zakrvaveným plecom, ale živý.} Až do úsvitu Jaromir ošetroval v pitvore {ekwipunek ? szczeniak:psa aj Hanku|Hanku}. Rana bola hlboká; jazva po tesákoch jej ostala na celý život. # pokaz: rozkaz # dalej
    -> gajowy
*   [Zostať pri Hanke a dieťati – dvere treba udržať.]
    ~ noc_wilkow = pilnowal_drzwi
    Zaprel sa chrbtom do dverí a stál tak až do úsvitu, so sekerou v rukách, a počúval, ako ovce kričia a potom jedna po druhej tíchnu. Hanka túlila Marysiu k prsiam a šepkala modlitby.{ ekwipunek ? szczeniak: {imie_psa} sa napokon vytrhol cez pootvorené okienko v komore a vybehol von, skôr ako ho Jaromir stihol chytiť.}
    { ekwipunek ? szczeniak:
        ~ ekwipunek -= szczeniak
        ~ pies_zginal = true
        Ráno uvideli, čo zostalo. Dve ovce zadávené, krv na snehu až po plot. Hneď pri maštali ležal {imie_psa}. Bol mŕtvy, ale tesne vedľa neho sa s roztrhaným hrdlom vystrel vlk – dvakrát väčší ako on. Jaromir pochoval psa pod jabloňou, do zamrznutej zeme, ktorú musel rúbať sekerou ako drevo. # pokaz: swit, pies # dalej
    - else:
        Ráno uvideli, čo zostalo. Dve ovce zadávené, krv na snehu až po plot. # pokaz: swit # dalej
    }
    -> gajowy

= gajowy
# tlo: gajowy_karczma
Koncom januára prišiel na saniach do Zapadliny horár z kaštieľa, Pawlik – veľký, červený od mrazu, s dvojhlavňovkou prevesenou cez chrbát. Zastavil pred krčmou a zvolal ľudí. # pokaz: gajowy
– Milostpán zemepán nariaďuje poľovačku – oznámil. – V sobotu na úsvite. Z každej chalupy jeden chlap s rapkáčom alebo s vidlami. Strelci z kaštieľa sa postavia pri úžine pod borom a vy poženiete vlkov z mladiny rovno na nich. – Prešiel pohľadom po zhromaždených a dodal tichšie: – Za kožu toho bieleho platí zemepán desať rubľov v striebre. Pán Urbaniak pridá ešte raz toľko.
Davom prebehol šum. Dvadsať rubľov bolo viac, ako nejeden gazda v Zapadline videl za celý život.
Večer prišiel do Jaromirovej chalupy Antek. Sadol si na lavicu, dlho obracal čiapku v dlaniach a nevedel začať. # pokaz: antek
– Videl som ho – povedal napokon. – Toho bieleho. Pri starej kaplnke. Díval sa. – Hlas sa mu zlomil. – Má Frankove oči. Viem. Hlúposť. Ale ja by som si tie oči nepomýlil.
# pytanie: Čo povie Jaromir?
*   [Sľúbiť Antkovi, že ak je to Franek, nedajú ho zabiť.]
    ~ obietnica_antkowi = true
    Jaromir mu položil ruku na plece.
    – Ak je to on – povedal – nikto ho nedostane. Sľubujem.
    Antek prikývol bez toho, aby zdvihol zrak, a až pri dverách si Jaromir všimol, že priateľ má mokré líca. # dalej
    -> oblawa
*   [Povedať mu, že je to len zviera.]
    – Je to vlk, Antek – povedal Jaromir mierne. – Hladný vlk. Franek je preč už vyše roka.
    Antek sa naňho pozrel, akoby ho Jaromir udrel do tváre. Vstal a odišiel bez rozlúčky. # dalej
    -> oblawa

= oblawa
# tlo: oblawa_mlodnik
V sobotu vstali potme. Mráz bol taký, že dych zamŕzal na fúzoch a sneh vŕzgal pod čižmami nahlas ako suché dosky. Chlapi zo Zapadliny a z Bukowca sa postavili do dlhého radu na kraji poľa – niekoľko desiatok mužov s rapkáčmi, s hrncami, do ktorých tĺkli palicami, s vidlami a sekerami. Pred nimi sa černela mladina: smreky, ktoré za posledné roky podišli od boru takmer až k samým ohradám.
Na znamenie horára sa pohli. Rapkáče hrkotali, ľudia kričali a pískali a ozvena sa odrážala od steny lesa, akoby za stromami šla ešte jedna poľovačka. Kdesi vpredu brechali duriče z kaštieľa. Potom tresol prvý výstrel. A druhý. # pokaz: naganka
Jaromir šiel na samom kraji radu, tam, kde mladina schádzala k zamrznutým močiarom.{ obietnica_antkowi: Antek sa držal tesne pri ňom, bledý ako sneh.} Jaromir sa predral húštinou a strnul.
V neveľkej kotlinke medzi smrekmi, pod vyvráteným kmeňom, stál biely vlk. # pokaz: wilk
Bol obrovský – väčší ako ktorýkoľvek vlk, akého kedy Jaromir videl – a taký chudý, že pod srsťou sa mu rysovali všetky rebrá. Hriva na šiji mu stála dupkom. Na prednej labe sa ukazoval prstenec vydretej, redšej srsti – presne na tom mieste, kde mal Franek pred rokmi tri šrámy od pazúrov, o ktorých hovoril, že sú od klinca.
A oči… Oči boli ľudské. Svetlé, so zreteľnou zreničkou, smutné. Hľadeli na Jaromira spod obočia a nebolo v nich ani strachu, ani zloby. Len únava.
Za chrbtom začul chrupot krokov. Horár Pawlik sa predieral pomedzi smreky s dvojhlavňovkou pripravenou na výstrel. # pokaz: gajowy
# pytanie: Čo urobí Jaromir?
*   [Zakričať na horára, že vlk je tu.]
    ~ oblawa_wilk = wydal_wilka
    – Tu! – skríkol Jaromir. – Tu je!
    Tresklo. Biely vlk sebou trhol, akoby ho niekto udrel päsťou do boku, zvalil sa do snehu – a vyskočil na nohy. Preskočil kmeň a zmizol v húštine smerom k boru. Na belobe ostala šmuha krvi, dlhá a červená ako stužka. # pokaz: strzal
    – Zasiahnutý! – reval horár. – Ďaleko nezájde!
    { obietnica_antkowi:
        Antek stál bez pohnutia. Potom podišiel k Jaromirovi a udrel ho do tváre – raz, zo všetkých síl – a odišiel bez toho, aby sa obzrel. # dalej
    - else:
        Večer išli ľudia z kaštieľa po krvavej stope bieleho až k prvým veľkým borovicám, no ďalej sa neodvážil vojsť nikto, ani horár. # dalej
    }
    -> po_oblawie
*   [Zakričať, že vlk ušiel k močiarom.]
    ~ oblawa_wilk = zmylil_oblawe
    – Na močiare! – skríkol Jaromir a obrátil sa. – Šiel na močiare!
    Horár zahrešil a rozbehol sa dolu cez tŕstie, a za ním niekoľko honcov.{ obietnica_antkowi: – Tam! Videl som ho! – zvolal Antek a pustil sa za nimi, mávajúc rapkáčom, aby nikto nepochyboval.} Keď sa Jaromir obzrel na kotlinku, pod kmeňom už nebolo nikoho. Len z konára smreka sa ešte sypal sneh, zrazený v behu. # pokaz: zmylka
    Zdola, od močiarov, sa ozval praskot a krik. Ľad pod závejmi tam bol tenký ako oblátka: mladý kolárov Kuba z Bukowca sa prepadol po prsia do čiernej vody. Vytiahli ho žrďami, stuhnutého od mrazu, a odniesli ho na kožuchoch k saniam. # dalej
    -> po_oblawie
*   { celny_strzal } [Hodiť kameňom po horárovej hlavni, keď bude mieriť.]
    ~ oblawa_wilk = rzucil_kamieniem
    Horár priložil dvojhlavňovku k plecu. Jaromir sa zohol, vyhrabal spod snehu kameň veľký ako vajce a hodil – s rovnakou istotou, s akou ako chlapec mieril na snop na medzi, keď celé dni cvičil, aby porazil Hanku.
    Kameň zasiahol hlaveň. Výstrel šiel do záveja, až sa zaprášilo. Biely vlk preskočil kmeň a zmizol v húštine. # pokaz: kamien
    Horár sa obrátil k Jaromirovi s tvárou purpurovou od zúrivosti a bez slova ho udrel pažbou do tváre. Jaromir padol na znak. Krv mu stiekla z rozťatého líca, teplá a slaná.
    – Zemepán sa to dozvie – zafučal Pawlik. – Zaplatíš mi za ten pušný prach. # dalej
    -> po_oblawie

= po_oblawie
# tlo: po_oblawie
~ zapiski += tropy_2
Do večera strelci zložili päť vlkov. Ich kože dal horár pribiť na vráta kaštieľskej stodoly v Bukowci, aby ich všetci videli. Bieleho medzi nimi nebolo.
{ oblawa_wilk == rzucil_kamieniem:
    Za ten hod kameňom odsúdil obecný súd v Bukowci Jaromira na týždeň šatľavy a na zaplatenie pušného prachu. Na pokutu nebolo z čoho, a tak ju tri týždne odrábal pre kaštieľ pri zvážaní dreva. Jazva pod okom mu ostala navždy – úzka a svetlá ako stopa po pazúre.
}
{ oblawa_wilk == wydal_wilka:
    V noci sa od boru ozvalo vytie – nie také ako vždy, ale dlhé, zachrípnuté, plné bolesti. Jaromir ležal s otvorenými očami a počúval, ako sa hlas blíži k dedine, tíchne a znova sa vracia. Nadránom sa v maštali začali zmietať kravy, akoby niečo krúžilo okolo stien, a keď vyšiel s lampášom, v mrazivom vzduchu visel už len ťažký pach mokrej srsti a krvi. # pokaz: wycie
    Hanka až do úsvitu nespala. Sedela pri kolíske s hromničnou sviecou v rukách, a keď jej ju chcel Jaromir vziať, odtisla mu ruku.
– Ty nie – povedala ticho. – Dnes nie ty. # dalej
    -> odwilz
}
Na druhé ráno, keď Jaromir vyšiel rúbať drevo, ležal na klátiku pri plote zajac – čerstvý, ešte teplý, s väzom prehryznutým jediným čistým chňapnutím. Ako sa nad ním skláňal, z mladiny sa ozvalo jediné krátke zaštekanie – tiché, skoro psie – a viac nič. # pokaz: zajac
Keď jej to vyrozprával, Hanka dlho mlčala. Potom vzala zajaca a začala ho sťahovať.
{obietnica_antkowi:– Hlúpy – zašepkala, ktovie komu. – Hlúpy, dobrý Franek.|– Hlúpy – zašepkala, ktovie komu. – Hlúpy, dobrý…} # dalej
-> odwilz

= odwilz
# tlo: odwilz
V marci mráz povolil. Sneh stiekol z polí špinavými potôčikmi a z mladiny pod borom sa znova začali ozývať hlasy vtákov.
{ ekwipunek ? szczeniak:
    ~ ekwipunek += szczenie_psa
    {imie_psa} sa z rán vylízal, hoci už nikdy nebehal ako kedysi. Na jar sa suke od Stašovcov narodili šteňatá a jedno z nich – ryšavé, s bielou škvrnou na hrudi – bolo celé po otcovi. Jaromir si ho vzal k sebe. # pokaz: szczenie
}
{ pies_zginal:
    ~ ekwipunek += szczenie_psa
    Na jar sa suke od Stašovcov narodili šteňatá. Jedno z nich – ryšavé, s bielou škvrnou na hrudi – vyzeralo na vlas ako {imie_psa} spred rokov. Starý Staš ho priniesol v čiapke a bez slova ho položil na prah. # pokaz: szczenie
}
Vlkov už viac nevideli. Len niekedy, za mesačných nocí, doliehalo z hĺbky boru osamelé vytie – a Jaromir nevedel povedať, či v ňom znie žalosť, alebo výstraha. # pokaz: wilk
{
- obietnica_antkowi && oblawa_wilk == wydal_wilka:
    Antek s ním neprehovoril až do žatvy. # dalej
- not obietnica_antkowi:
    Antek dlho k nim do chalupy nezachádzal. Prišiel až na Veľkú noc, sadol si ku kolíske Marysie, akoby sa nič nestalo – ale bieleho vlka pred Jaromirom už nikdy nespomenul. # dalej
- else:
    Antek teraz chodieval častejšie ako kedysi. Sadal si ku kolíske Marysie, kolísal ju a mlčal – a Jaromir vedel, na koho obaja myslia. # dalej
}
-> rozdzial_jedenasty_ciag_dalszy


// Koniec rozdziału jedenastego – dalej rozdział dwunasty.
=== rozdzial_jedenasty_ciag_dalszy ===
# ozdobnik
~ zapiski += pan_lasu_5
_Koniec jedenástej kapitoly._ # dalej
-> rozdzial_dwunasty
