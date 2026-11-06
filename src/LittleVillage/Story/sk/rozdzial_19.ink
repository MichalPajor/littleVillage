// ------------------------------------------------------------
//  Rozdział dziewiętnasty – Świt. Dwie drogi po rozdziale osiemnastym.
//  [Marysia żyje] powrót o świcie, dług u Jagny (wstążka, drewniak albo odmowa),
//  lato i żniwa, pod koniec sierpnia kijanki nad jeziorem – mamuny piorą mały całun
//  (cenę za zmycie imienia wybiera się w r20, w noc Zaduszek). Jesień, mgła pod płotami,
//  gromnice gasną.
//  [zły wybór] Hanka poznaje po zapachu, co Jaromir przyniósł; ciało pochowane,
//  oddane Jagnie, spalone albo zakopane pod młodnikiem; trumienka z bzu, wianki,
//  kołysanka; jesień – „Przyjdzie?”; paliła się tylko gromnica Hanki.
// ------------------------------------------------------------

=== rozdzial_dziewietnasty ===
{ marysia_odzyskana:
    -> powrot_z_marysia
- else:
    -> powrot_bez_niej
}

= powrot_z_marysia
# tlo: laka_swit
# rozdzial: Kapitola devätnásta
# tytul: Úsvit
Slnko vyšlo spoza boru práve vtedy, keď Jaromir zastal na okraji mladiny. Na pokosoch sa zaligotala rosa, až ho rozboleli oči, a v obilí sa ozval škovránok – prvý vták, ktorého počul za tri dni.
{ ekwipunek ? szczenie_psa:
    Pes ho predbehol a hnal sa k dedine s takým štekotom, že mu odpovedali všetky dvory v Zapadline. # pokaz: pies
}
{ wilk_przy_jaromirze && znak_rozpoznania != po_wilku:
    Biely vlk ich odprevadil k posledným smrekom a tam si sadol. Keď sa Jaromir po chvíli obzrel, už tam nebol. # pokaz: wilk
}
Hanka bežala od chalupy, s uspávankou prerušenou v polovici slova, bosá, mokrou trávou, s rukami vystretými pred seba – akoby sa bála, že keď ich spustí, zobudí sa pri vyhasnutej lúči. Nekričala.{ pani_w_zbozu_noc == za_spiewem: Nemohla. Z hrdla sa jej predieralo len suché, prerývané sipenie.} Dobehla k nim v polceste a objala oboch, zo všetkých síl, až Marysia pobúrene zapišťala. Zaborila tvár dcére do vlasov a chvíľu iba dýchala, a potom sa začala smiať a plakať zároveň, bozkávala malú na špinavé chodidlá, na ruky, na hlavu. Až vtedy pozrela na Jaromira, na líca doškriabané konármi, a dotkla sa ich prstami, opatrne, akoby skúšala, či je to naozaj on. # pokaz: uscisk
Jaromir pocítil, že ho nohy už neunesú. Sadol si do trávy. Sedeli tak vo trojici, ľudia s hrabľami stáli na pokosoch a nik sa ani nepohol.
Prvý k nim podišiel Antek. Nepovedal nič – vyzliekol kabát a prikryl ním malú.{ zastaw_u_leszego == zastaw_cien: Až napoludnie, keď vyšli na dvor, pozrela Hanka mužovi pod nohy a nemohla odtrhnúť zrak od miesta, kde mal ležať jeho tieň. Neopýtala sa. Jaromir jej bol za to vďačnejší ako za čokoľvek iné.} # pokaz: antek # dalej
{ dlug_u_jagny:
    -> dlug_jagny_dobry
}
-> lato_po_powrocie

= dlug_jagny_dobry
# tlo: wies_sianokosy
Jagna čakala pri plote, vedľa svojho voza. Keď Jaromir prechádzal popri nej s Marysiou na rukách, zdvihla k nemu zdravé oko. # pokaz: jagna
– Prvá vec, ktorú vynesieš z boru – pripomenula ticho. – Taká bola cena.
Hanka zastala v pol kroku. Marysia sa Jaromirovi pritisla ku krku.
# pytanie: Čo dá Jaromir Jagne?
*   [Stužku zo zápästia.]
    ~ dlug_jagny = oddana_wstazka
    Jaromir zdvihol ruku s červenou slučkou na zápästí. – Šla predo mnou, keď som odhŕňal konáre – povedal. – Vyšla z boru skôr, ako som vyniesol dcéru.
    ~ ekwipunek -= wstazka_marysi
    Jagna si ho bez slova premeriavala a potom jej zašklbali kútiky úst. Stiahla mu stužku zo zápästia a schovala ju do záňadria. – Čo bolo v bore a vrátilo sa, to sa mi pri robote zíde – povedala. # tobolek
    Hanka zovrela pery. Tú stužku zaplietla Marysii do vlasov v predvečer svätého Jána. # dalej
*   [Drevák, ktorý niesol v záňadrí.]
    ~ dlug_jagny = oddany_drewniak
    – Niesol som ho pri srdci – povedal Jaromir. – Skôr ako ju. – Siahol pod kabát a podal Jagne červený črievičok{ drugi_drewniak: – jeden z dvoch}.
    { drugi_drewniak:
        ~ drugi_drewniak = false
    - else:
        ~ ekwipunek -= bucik_marysi
    }
    Jagna ho obrátila v prstoch a privoňala k plsti vnútri. – Bol v raži u tamtej a bol v bore – zamrmlala. – Nech je tak. – Hodila ho do koša s bylinami. # tobolek
    Marysia vyprevadila drevák pohľadom, a keď sa voz pohol, rozplakala sa tak, ako neplakala ani pod dubom. Od toho dňa si nedala na nohy obuť nijakú topánku – kopala a kričala, až Hanka napokon popustila. Malá chodila bosá až do prvého snehu. # dalej
*   [Odmietnuť – dieťa nie je vec.]
    ~ dlug_jagny = dlug_odmowiony
    – Nedostaneš ju – povedal Jaromir. – Ani dnes, ani nikdy.
    Jagna nezvýšila hlas. – Neprišla som po ňu – odvetila. – Prišla som po to, čo mi patrí. – Zapriahla koňa. – Dlh nezhnije, Jaromir. Počká.
    Odišla pomaly. V tú noc zavesila Hanka nad lôžko malej všetko, čo mala: krížik, venček bylín, nožík. Nespala až do svitania. # dalej
-   -> lato_po_powrocie

= lato_po_powrocie
# tlo: zniwa
Marysia si nič nepamätala.{ rada_przed_borem == rada_ksiedza: Farár z Bukowca mal pravdu.} Keď sa jej pýtali, kde bola, hľadela na nich začudovane a hovorila, že spala. Bála sa tmy – odvtedy horela v okne lúč každú noc, hoci už nikoho nevyzerali – a nikdy viac si nezanôtila svoju melódiu. Hanka každý večer načúvala pri lôžku malej, ale márne.
Žatva bola neskorá a ťažká. Nad poľami stála horúčava, vo vzduchu visel prach z klasov a vôňa rozpálenej slamy a kosy zvonili od svitania do mrku.{ pole_zbite_gradem: Jaromir, ktorý na svojom nemal čo kosiť, sa najímal k Stašovcom a ku Kowalczykovcom, za desiatu kopu.}{ zastaw_u_leszego == zastaw_siekiera: Drevo štiepal sekerou požičanou od svokra – porisko bolo príliš hladké, príliš hrubé, nie jeho.}{ zastaw_u_leszego == zastaw_krzesiwo: Oheň zakladal zo žeravých uhlíkov od susedov; vlastné kresadlo už nemal.}
{ pies_pobiegl_sam:
    ~ ekwipunek += szczenie_psa
    Po týždni, v daždivú noc, zakňučal pod dverami pes. Bol chudý ako trieska, s labami zodratými do krvi. Jaromir ho bez slova pustil dnu a pes prespal dva dni pod lavicou Marysie. # tobolek
}
{ znak_rozpoznania == po_wilku:
    Antek večer čo večer stával na okraji poľa a načúval. Od toho rána sa nad borom nenieslo nijaké vytie.
}
Lenže voda im nedala pokoj. Marysia nechcela chodiť k jazeru, a keď Hanka prala v potoku, malá sa jej skrývala za sukňu, celá stŕpla a nespúšťala oči z prúdu.{ dar_pominiety: V júli našla Hanka na prahu mokrý venček z ruty – presne taký, aký Jaromir každý rok nosieval na kamene na druhom brehu jazera. Ležal v mláke, hoci už týždeň nepršalo.} # dalej
-> kijanki

= kijanki
# tlo: calun_noc
Koncom augusta, v noc, keď uplynuli tri roky odvtedy, čo Marysia prišla na svet, zobudilo Jaromira pleskanie. Pravidelné, mokré, od jazera – pracia palica o kameň. Pamätal si ten zvuk z čias, keď Marysia ešte ležala v kolíske.
Pozrel na lavicu pri peci. Malá spala, schúlená do klbka, s pästičkou pod lícom. Hanka pokojne dýchala.
Vyšiel potichu, bosý, obišiel jazero po brehu a pritajil sa v tŕstí na druhej strane, tesne pri plochých kameňoch. Kľačali na nich mamuny – hrbaté, mokré, v handrách z machu – a prali vo vode čosi malé a svetlé. Akurát na dieťa. Meno nevolali. Keď tŕstie zašumelo, najstaršia ani nezdvihla hlavu. # pokaz: mamuny
{ dar_pominiety:
    – Raz si zabudol, gazda – zaškriekala do vody. – Pomalšie prať nebudeme.
- else:
    – Dnes nie, gazda – zaškriekala do vody. – Perieme, čo nám prinesie voda.
}
– Na Dušičky prinesieme, čo je vypraté – dodala druhá. # dalej
-> jesien_przed_zaduszkami

= jesien_przed_zaduszkami
# tlo: jesien_zaduszki
~ zapiski += pan_lasu_11
Jeseň prišla zavčasu. Mlátenie v stodolách, sejba ozimnej raže, trenie ľanu – dedina robila svoje ako každý rok a Jaromir sa chytal akejkoľvek roboty, len aby neostal sám so svojimi myšlienkami. Marysia rástla. V októbri sa prvý raz od návratu nahlas zasmiala pri stole a Hanka vyšla do pitvora a dlho sa nevracala.
Jaromir Hanke nepovedal, čo videl na kameňoch na druhom brehu jazera. Ale každý večer, kým zaspal, myslel na to, koľko ešte zostáva do Dušičiek, a zakaždým sa mu zdalo, že menej ako predošlú noc.
Čím bližšie boli Dušičky, tým tichšie bývalo v Zapadline. Ľudia sa vracali z polí pred súmrakom, zatvárali dvere na závoru a od boru sa každý večer lúkami prikrádala hmla, ťažká a mokrá, až k samým plotom. Jaromir si pamätal každé slovo: „Na Dušičky prídem do dediny. Potom si to spolu zrátame do konca.“ # pokaz: mgla
Prvého novembra išla dedina na cintorín do Bukowca. Toho roku niesli ľudia z domov namiesto kahancov hromničné sviece. Cestou späť zhasli jedným dychom, všetky, hoci sa vzduch ani nepohol. # pokaz: zgasly # dalej
-> rozdzial_dziewietnasty_ciag_dalszy

= powrot_bez_niej
# tlo: laka_swit
# rozdzial: Kapitola devätnásta
# tytul: Úsvit
Slnko vyšlo spoza boru práve vtedy, keď Jaromir zastal na okraji mladiny. Na pokosoch sa zaligotala rosa a v obilí sa ozval škovránok. Jaromir ho vôbec nepočul.
Hanka bežala od chalupy, stále s uspávankou na perách, bosá, mokrou trávou, s rukami vystretými pred seba. V polceste spomalila. Potom zastala.
Nekričala.{ pani_w_zbozu_noc == za_spiewem: Nemohla.} Vzala dieťa Jaromirovi z rúk, opatrne, ako sa berie spiace, a pritúlila tvár k vláskom, tak ako to robievala každý večer. Dlho privoniavala. Vlasy nevoňali ničím – ani mliekom, ani dymom, ani ňou. Pochopila. # pokaz: kolysze
Sadla si s dieťaťom do trávy a začala ho kolísať. Ľudia s hrabľami stáli na pokosoch a nik sa ani nepohol. Prvý podišiel Antek. Sňal čiapku. # pokaz: antek
{ wilk_przy_jaromirze && znak_rozpoznania != po_wilku:
    Biely vlk, ktorý šiel za Jaromirom celou mladinou, ostal pri posledných smrekoch. Keď sa ktosi pozrel tým smerom, už tam nebol. # pokaz: wilk
}
{ ekwipunek ? szczenie_psa:
    Pes si ľahol Hanke k nohám a kňučal, ticho, bez prestania, až kým ho niekto neodtiahol. # pokaz: pies
}
{ zastaw_u_leszego == zastaw_cien:
    Nikto si nevšimol, že Jaromir nevrhá tieň. Nikto sa na neho nedíval.
}
{ dlug_u_jagny:
    Jagna prišla od plota a sklonila sa nad dieťaťom v náručí Hanky. Prezerala si stuhnuté nôžky a poslušný, zmeravený úsmev. Potom sa vystrela a povedala Jaromirovi potichu, tak aby to Hanka nepočula: – To nie je tvoje dieťa. To je drevo. Vyšlo z boru hneď za tebou. Môžem si ho vziať namiesto dlhu. Viem, čo sa s takým robí. # pokaz: jagna
- else:
    Starý Staš prikrivkal s palicou, pozrel na dieťa a prežehnal sa. – Deti z boru sa do posvätenej zeme nekladú – zamrmlal. – Za môjho deda, keď ešte v Bukowci kostol nebol a na každý pohreb sa chodilo do mesta, aj tak to každý vedel… Buď oheň, alebo pod les. # pokaz: stas
}
Jaromir si pamätal hlas spod duba: „Pochováš ho ako svoje.“
# pytanie: Čo urobí Jaromir s telom?
*   [Pochovať ho ako dcéru, na cintoríne.]
    ~ cialo_kopii = pochowane
    Vzal ho od Hanky a odniesol do chalupy. Položil ho na lavicu, na ktorej spávala Marysia, a prikryl ľanovým plátnom. # dalej
*   { dlug_u_jagny } [Dať ho Jagne.]
    ~ cialo_kopii = oddane_jagnie
    Hanka ho nechcela pustiť. Pustila ho až vtedy, keď jej Jagna položila dlaň na oči a čosi zašepkala. Jagna zavinula telo do ľanovej plachty, uložila ho na voz medzi koše s bylinami a pomaly odišla do Bukowca. Dlh bol splatený. # dalej
*   [Spáliť ho v peci.]
    ~ cialo_kopii = spalone
    Večer, keď Hanka od vyčerpania konečne zaspala, rozkúril Jaromir silný oheň. Dlho sa nevedel odhodlať položiť dieťa do plameňov. Keď to napokon urobil, nehorelo ako telo. Praskalo ako smolné drevo, syčalo živicou a dym voňal ihličím. Ráno ležali v popole iba uhlíky.
    Hanka uvidela popol. Nepovedala nič. Od toho rána v peci ani raz nezakúrila – zakladal vždy on. # dalej
*   { not dlug_u_jagny } [Pochovať ho pod mladinou, ako radí Staš.]
    ~ cialo_kopii = pod_mlodnikiem
    Hrob vykopal sám, pod poslednými smrekmi, tam kde bola zem mäkká od ihličia. Hanka stála vedľa a nedala sa utešiť. # dalej
-   -> pogrzeb

= pogrzeb
{ cialo_kopii == pod_mlodnikiem:
    -> pogrzeb_pod_lasem
}
# tlo: pogrzeb
-> pogrzeb_trumienka

= pogrzeb_pod_lasem
# tlo: skraj_powrot
-> pogrzeb_trumienka

= pogrzeb_trumienka
~ zapiski += (dzieci_2, pan_lasu_11)
Truhličku stĺkol Jaromir sám, z dreva starého bazu – toho istého, v ktorého korune mal ako chlapec skrýšu.{ zastaw_u_leszego == zastaw_siekiera: Zoťal ho sekerou požičanou od svokra.} Hovorilo sa, že taký strom sa nezotína, lebo prináša nešťastie. Jaromirovi už bolo všetko jedno. Čerstvý rez voňal horko a mdlo a z konárov sa mu na rukáv sypali posledné zaschnuté kvietky.{ kapliczki_drogi == ocalil_swiatka: Keď rozoberal dosky skrýše, vypadla mu do rúk Matka Božia, ktorú kedysi vyniesol z Urbaniakovho voza. Postavil ju k záhlaviu.} V tichu bolo počuť iba klopanie klincov. # pokaz: trumienka
Dievčatká z dediny uvili venčeky z nevädzí a rumančeka, priamo z medze, a položili ich na veko. Voňali slnkom, ktoré v ten deň v Zapadline nikto nevidel. # pokaz: wianki
{ pani_w_zbozu_noc == za_spiewem:
    Hanka nespievala – od tej noci v obilí to nevedela. Hovorila slová uspávanky, jedno po druhom, chrapľavo, bez melódie, a bolo to horšie ako plač.
- else:
    Hanka zaspievala uspávanku, ktorú Marysii nôtila každý večer. Hlas sa jej ani raz nezlomil, a preto to bolo to najhoršie.
}
{ cialo_kopii == oddane_jagnie || cialo_kopii == spalone:
    Tela v truhličke nebolo – iba šatôčky Marysie, starostlivo poskladané, ako do truhlice.
}
{ skarb_dla_corki:
    Kým zatĺkli veko, vložil Jaromir do truhličky poklad zo skrýše – {skarb_jaromira == muszelka:mušličku s ryhou od krivého zúbka|{skarb_jaromira == pioro:ožmolené pierko s prehryznutým brkom|klinec s hnedou hrdzou}}.
- else:
    ~ ekwipunek -= bucik_marysi
    Kým zatĺkli veko, vložil Jaromir do truhličky {drugi_drewniak:oba červené dreváky|červený drevák – ten jediný, čo mu ostal}{uklad_z_mamunami != oddany_skarb:, a vedľa {drugi_drewniak:nich|neho} poklad z debničky v skrýši – {skarb_jaromira == muszelka:bielu mušličku|{skarb_jaromira == pioro:sojčie pierko|hrdzavý klinec}}. Raz ho mal ukázať dcére}. # tobolek
}
{ cialo_kopii == pod_mlodnikiem:
    Hrob pod mladinou prikryli drnom a Antek zarazil v hlavách kôl s uviazanou červenou stužkou, ktorú Hanka vyplietla dieťaťu z vlasov, aby bolo vedieť kde. # dalej
- else:
    Truhličku pochovali na cintoríne v Bukowci, pod brezou. Farár{ przysiega_ksiedzu:, ktorý prijal Jaromirovu prísahu na ruženec,} odslúžil všetko, ako sa patrí, a na nič sa nespýtal.{ cialo_kopii == oddane_jagnie || cialo_kopii == spalone: Keď hrobár zasýpal jamu, zem udierala o veko tak duto, že to Jaromir potom počul po nociach.} # dalej
}
-> jesien_po_pogrzebie

= jesien_po_pogrzebie
# tlo: jesien_zaduszki
Koncom augusta, v noc, keď uplynuli tri roky odvtedy, čo Marysia prišla na svet, išla Hanka k hrobu sama a presedela tam až do svitania. Jaromir za ňou nešiel. Nevedel by sa jej pozrieť do očí – lebo vedel, čo mu nepovie.{ znak_rozpoznania == po_imieniu: Keby ju nebol zavolal menom.}{ znak_rozpoznania == po_drewniaku: Dal sa nachytať na červené ako dieťa.}{ znak_rozpoznania == po_buzi: Díval sa na ňu a nespoznal ju.}{ znak_rozpoznania == po_cieniu: Sám odovzdal to, čo ho potom oklamalo.}
Jeseň prišla zavčasu. Mlátenie v stodolách, sejba ozimnej raže, trenie ľanu – dedina robila svoje ako každý rok a Hanka spolu s ňou, obratne a bez slova. Jaromir každú noc počul, ako žena vstáva a chodí po izbe, od pece k oknu a naspäť.
{ pies_pobiegl_sam:
    ~ ekwipunek += szczenie_psa
    Pes sa vrátil z boru ešte v júli, týždeň po svätom Jánovi, chudý ako trieska, a ľahol si pod lavicu, na ktorej spávala Marysia. Nedal sa odtiaľ vylákať. # tobolek
}
{ dlug_u_jagny && cialo_kopii != oddane_jagnie:
    Jagna už ani raz neprišla. Dlh nebol splatený a Jaromir vedel, že aj ona to vie.
}
V októbri sa Hanka spýtala, bez toho, aby sa odvrátila od hrnca: – Na Dušičky sa mŕtvi vracajú domov. Tak hovoria. – Zamiešala. – Príde?
Jaromir neodpovedal. Pamätal si hlas z boru, ktorý došiel do polovice a zmĺkol. Pamätal si aj druhý: „Na Dušičky prídem do dediny. Potom si to spolu zrátame do konca.“
Čím bližšie boli Dušičky, tým tichšie bývalo v Zapadline. Ľudia sa vracali z polí pred súmrakom, zatvárali dvere na závoru a od boru sa každý večer lúkami prikrádala hmla, ťažká a mokrá, až k samým plotom. # pokaz: mgla
Prvého novembra išla dedina na cintorín do Bukowca. Toho roku niesli ľudia z domov namiesto kahancov hromničné sviece. Cestou späť zhasli jedným dychom, všetky, hoci sa vzduch ani nepohol. Horela iba hromničná svieca Hanky – rovno, pokojne, ako v zatvorenej izbe. # pokaz: zgasly, gromnica_hanki # dalej
-> rozdzial_dziewietnasty_ciag_dalszy


// Koniec rozdziału dziewiętnastego – dalej rozdział dwudziesty (Ostatnia noc).
=== rozdzial_dziewietnasty_ciag_dalszy ===
# ozdobnik
_Koniec devätnástej kapitoly._ # dalej
-> rozdzial_dwudziesty
