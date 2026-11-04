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
# rozdzial: Kapitola devatenáctá
# tytul: Svítání
Slunce vyšlo zpoza boru právě ve chvíli, kdy Jaromir stanul na kraji mlází. Na pokosech se zaleskla rosa, až ho z toho rozbolely oči, a v obilí se ozval skřivan – první pták, kterého za ty tři dny uslyšel.
{ ekwipunek ? szczenie_psa:
    Pes ho předběhl a hnal se ke vsi s takovým štěkotem, že mu odpověděly všechny dvory v Zapadlině. # pokaz: pies
}
{ wilk_przy_jaromirze && znak_rozpoznania != po_wilku:
    Bílý vlk je doprovodil k posledním smrkům a tam si sedl. Když se Jaromir po chvíli ohlédl, byl pryč. # pokaz: wilk
}
Hanka běžela od chalupy, s ukolébavkou přerušenou v půli slova, bosa, mokrou trávou, s rukama nataženýma před sebe – jako by se bála, že jakmile je spustí, probudí se u vyhaslé louče. Nekřičela.{ pani_w_zbozu_noc == za_spiewem: Nemohla. Z hrdla se jí dral jen suchý, přerývaný sípot.} Doběhla k nim v půli cesty a objala je oba, ze vší síly, až Marysia rozhořčeně vypískla. Zabořila obličej do dceřiných vlasů a chvíli jen dýchala, a pak se začala smát a plakat zároveň, líbala malou na špinavá chodidla, na ruce, na hlavu. Teprve potom pohlédla na Jaromira, na líce rozdrásané větvemi, a dotkla se jich prsty, opatrně, jako by zkoušela, jestli je to opravdu on. # pokaz: uscisk
Jaromir ucítil, že ho nohy už neunesou. Klesl do trávy. Seděli tak ve třech, lidé s hráběmi stáli na pokosech a nikdo se ani nepohnul.
První k nim přistoupil Antek. Neřekl nic – svlékl kabát a přikryl jím malou.{ zastaw_u_leszego == zastaw_cien: Teprve v poledne, když vyšli na dvůr, pohlédla Hanka manželovi pod nohy a nemohla odtrhnout oči od místa, kde měl ležet jeho stín. Na nic se nezeptala. Jaromir jí za to byl vděčnější než za cokoli jiného.} # pokaz: antek # dalej
{ dlug_u_jagny:
    -> dlug_jagny_dobry
}
-> lato_po_powrocie

= dlug_jagny_dobry
# tlo: wies_sianokosy
Jagna čekala u plotu, vedle svého vozu. Když kolem ní Jaromir procházel s Marysií v náručí, zvedla k němu zdravé oko. # pokaz: jagna
– První věc, kterou vyneseš z boru – připomněla tiše. – Taková byla cena.
Hanka se zastavila v půli kroku. Marysia se Jaromirovi přitiskla ke krku.
# pytanie: Co Jaromir Jagně odevzdá?
*   [Stužku ze zápěstí.]
    ~ dlug_jagny = oddana_wstazka
    Jaromir zvedl ruku s červenou smyčkou na zápěstí. – Šla přede mnou, když jsem rozhrnoval větve – řekl. – Vyšla z boru dřív, než jsem vynesl dceru.
    ~ ekwipunek -= wstazka_marysi
    Jagna si ho mlčky prohlížela, a pak jí zacukaly koutky úst. Stáhla mu stužku z ruky a schovala ji za ňadra. – Co bylo v boru a vrátilo se, to se mi bude hodit k práci – řekla. # tobolek
    Hanka sevřela rty. Tu stužku vpletla Marysii do vlasů v předvečer svatého Jana. # dalej
*   [Dřevák, který nesl na prsou pod kabátem.]
    ~ dlug_jagny = oddany_drewniak
    – Nesl jsem ho u srdce – řekl Jaromir. – Napřed, ještě před ní. – Sáhl pod kabát a podal Jagně červený dřeváček{ drugi_drewniak: – jeden ze dvou}.
    { drugi_drewniak:
        ~ drugi_drewniak = false
    - else:
        ~ ekwipunek -= bucik_marysi
    }
    Jagna jím otočila v prstech a přičichla k plsti uvnitř. – Byl u té v žitě a byl v boru – zabručela. – Budiž. – Hodila ho do koše s bylinami. # tobolek
    Marysia vyprovodila dřeváček pohledem, a když se vůz rozjel, rozplakala se tak, jak neplakala ani pod dubem. Od toho dne si nedala obout žádnou botu – kopala a křičela, až Hanka nakonec povolila. Malá chodila bosa až do prvního sněhu. # dalej
*   [Odmítnout – dítě není věc.]
    ~ dlug_jagny = dlug_odmowiony
    – Nedostaneš ji – řekl Jaromir. – Ani dnes, ani nikdy.
    Jagna nezvýšila hlas. – Nepřišla jsem pro ni – odvětila. – Přišla jsem pro to, co mi patří. – Zapřáhla koně. – Dluh nehnije, Jaromire. Počká.
    Odjela pomalu. Té noci pověsila Hanka nad lůžko malé všechno, co měla: křížek, věneček z bylin, nožík. Do rána nezamhouřila oka. # dalej
-   -> lato_po_powrocie

= lato_po_powrocie
# tlo: zniwa
Marysia si nic nepamatovala.{ rada_przed_borem == rada_ksiedza: Farář z Bukowce měl pravdu.} Když se jí ptali, kde byla, dívala se na ně udiveně a říkala, že spala. Bála se tmy – od té doby hořela v okně každou noc louč, ačkoli už nikoho nevyhlíželi – a nikdy víc nezabroukala tu svou melodii. Hanka u jejího lůžka každý večer naslouchala, ale marně.
Žně byly pozdní a těžké. Nad poli stálo vedro, ve vzduchu visel prach z klasů a vůně rozpálené slámy a kosy zvonily od úsvitu do soumraku.{ pole_zbite_gradem: Jaromir, který na svém neměl co sekat, se najímal ke Stašovým a ke Kowalczykovým, za desátou kopu.}{ zastaw_u_leszego == zastaw_siekiera: Dříví štípal sekerou vypůjčenou od tchána – topůrko bylo příliš hladké, příliš silné, ne jeho.}{ zastaw_u_leszego == zastaw_krzesiwo: Oheň rozdělával od sousedských uhlíků; vlastní křesadlo už neměl.}
{ pies_pobiegl_sam:
    ~ ekwipunek += szczenie_psa
    Po týdnu, za deštivé noci, zakňučel u dveří pes. Byl hubený jako tyčka, tlapy rozdrásané do krve. Jaromir ho beze slova pustil dovnitř a pes prospal dva dny pod lavicí, na které spávala Marysia. # tobolek
}
{ znak_rozpoznania == po_wilku:
    Antek se večer co večer stavěl na kraj pole a naslouchal. Od toho rána se od boru už neozvalo žádné vytí.
}
Ale voda jim nedávala pokoj. Marysia nechtěla chodit k jezeru, a když Hanka prala v potoce, malá se schovávala za její sukni, celá ztuhlá, a nespouštěla oči z proudu.{ dar_pominiety: V červenci našla Hanka na prahu mokrý věneček z routy – stejný, jaký Jaromir každý rok nosil na kameny na druhém břehu jezera. Ležel v kaluži, ačkoli už týden nepršelo.} # dalej
-> kijanki

= kijanki
# tlo: calun_noc
Koncem srpna, té noci, kdy uplynuly tři roky od chvíle, co Marysia přišla na svět, probudilo Jaromira pleskání. Pravidelné, mokré, od jezera – prací palička o kámen. Ten zvuk znal z doby, kdy Marysia ještě ležela v kolébce.
Pohlédl na lavici u pece. Malá spala, stočená do klubíčka, s pěstičkou pod tváří. Hanka oddechovala klidně.
Vyšel potichu, bos, obešel jezero po břehu a přikrčil se v rákosí na druhé straně, hned u plochých kamenů. Klečely na nich mamuny – hrbaté, mokré, v cárech z mechu – a praly ve vodě něco malého, světlého. Právě tak na dítě. Jméno nevolaly. Když rákosí zašustilo, ta nejstarší ani nezvedla hlavu. # pokaz: mamuny
{ dar_pominiety:
    – Jednou jsi zapomněl, hospodáři – zaskřehotala do vody. – Pomaleji prát nebudeme.
- else:
    – Dnes ne, hospodáři – zaskřehotala do vody. – Pereme, co nám přináší voda.
}
– O Dušičkách přineseme, co bude vyprané – dodala druhá. # dalej
-> jesien_przed_zaduszkami

= jesien_przed_zaduszkami
# tlo: jesien_zaduszki
~ zapiski += pan_lasu_11
Podzim přišel brzy. Mlácení ve stodolách, setí ozimého žita, trlení lnu – vesnice dělala svoje jako každý rok a Jaromir se chápal jakékoli práce, jen aby nezůstal sám se svými myšlenkami. Marysia rostla. V říjnu se poprvé od návratu nahlas zasmála u stolu a Hanka vyšla do síně a dlouho se nevracela.
Jaromir Hance neřekl, co viděl na kamenech na druhém břehu jezera. Ale každý večer, než usnul, myslel na to, kolik ještě zbývá do Dušiček, a pokaždé se mu zdálo, že méně než minulou noc.
Čím blíž byly Dušičky, tím tišeji bylo v Zapadlině. Lidé se vraceli z polí před setměním, zavírali dveře na závoru a od boru se každý večer plížila loukami mlha, těžká a vlhká, až k samým plotům. Jaromir si pamatoval každé slovo: „O Dušičkách přijdu do vsi. Tehdy si to spolu sečteme do konce.“ # pokaz: mgla
Prvního listopadu šla vesnice na hřbitov do Bukowce. Toho roku nesli lidé z domovů místo kahánků hromničky. Cestou zpátky zhasly jako jediným dechem, všechny, ačkoli vzduch stál. # pokaz: zgasly # dalej
-> rozdzial_dziewietnasty_ciag_dalszy

= powrot_bez_niej
# tlo: laka_swit
# rozdzial: Kapitola devatenáctá
# tytul: Svítání
Slunce vyšlo zpoza boru právě ve chvíli, kdy Jaromir stanul na kraji mlází. Na pokosech se zaleskla rosa a v obilí se ozval skřivan. Jaromir ho vůbec neslyšel.
Hanka běžela od chalupy, ještě s ukolébavkou na rtech, bosa, mokrou trávou, s rukama nataženýma před sebe. V půli cesty zpomalila. Potom se zastavila.
Nekřičela.{ pani_w_zbozu_noc == za_spiewem: Nemohla.} Vzala dítě Jaromirovi z rukou, opatrně, jak se bere spící, a zabořila obličej do vlásků, tak jako každý večer. Dlouho čichala. Vlasy nevoněly ničím – ani mlékem, ani kouřem, ani jí. Pochopila. # pokaz: kolysze
Sedla si s dítětem do trávy a začala je kolébat. Lidé s hráběmi stáli na pokosech a nikdo se ani nepohnul. První k nim přistoupil Antek. Smekl čepici. # pokaz: antek
{ wilk_przy_jaromirze && znak_rozpoznania != po_wilku:
    Bílý vlk, který šel za Jaromirem celým mlázím, zůstal u posledních smrků. Když se tam někdo podíval, byl pryč. # pokaz: wilk
}
{ ekwipunek ? szczenie_psa:
    Pes si lehl Hance k nohám a kňučel, tiše, bez ustání, dokud ho někdo neodtáhl. # pokaz: pies
}
{ zastaw_u_leszego == zastaw_cien:
    Nikdo si nevšiml, že Jaromir nevrhá stín. Nikdo se na něj nedíval.
}
{ dlug_u_jagny:
    Jagna přišla od plotu a sklonila se nad dítětem, které Hanka držela v náručí. Prohlížela si ztuhlá chodidélka a zdvořilý, strnulý úsměv. Pak se narovnala a řekla Jaromirovi tiše, aby to Hanka neslyšela: – Tohle není tvoje dítě. Tohle je dřevo. Vyšlo z boru hned za tebou. Můžu si je vzít místo dluhu. Vím, co se s takovým dělá. # pokaz: jagna
- else:
    Starý Staš se přibelhal o holi, podíval se na dítě a pokřižoval se. – Děti z boru se do svěcené země nekladou – zabručel. – Za mého dědka, to ještě v Bukowci kostel nestál a na každý funus se chodilo do města, i tak to každý věděl… Buďto oheň, anebo pod les. # pokaz: stas
}
Jaromir si pamatoval hlas zpod dubu: „Pohřbíš je jako své.“
# pytanie: Co Jaromir udělá s tělem?
*   [Pohřbít je jako dceru, na hřbitově.]
    ~ cialo_kopii = pochowane
    Vzal je od Hanky a odnesl do chalupy. Položil je na lavici, na které spávala Marysia, a přikryl lněným plátnem. # dalej
*   { dlug_u_jagny } [Odevzdat je Jagně.]
    ~ cialo_kopii = oddane_jagnie
    Hanka je nechtěla pustit. Pustila je teprve tehdy, když jí Jagna položila dlaň na oči a něco zašeptala. Jagna zavinula tělo do lněné plachty, uložila je na vůz mezi koše s bylinami a pomalu odjela do Bukowce. Dluh byl splacen. # dalej
*   [Spálit je v peci.]
    ~ cialo_kopii = spalone
    Večer, když Hanka konečně usnula vyčerpáním, rozdělal Jaromir prudký oheň. Dlouho se nemohl odhodlat, aby dítě položil do plamenů. Když to nakonec udělal, nehořelo jako tělo. Praskalo jako smolné dřevo, syčelo pryskyřicí a kouř voněl jehličím. Ráno ležely v popelu jen uhlíky.
    Hanka uviděla popel. Neřekla nic. Od toho rána v peci ani jednou nezatopila – zatápěl vždycky on. # dalej
*   { not dlug_u_jagny } [Pohřbít je pod mlázím, jak radí Staš.]
    ~ cialo_kopii = pod_mlodnikiem
    Vykopal hrob sám, pod posledními smrky, tam kde byla půda měkká od jehličí. Hanka stála vedle a nedala se utěšit. # dalej
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
Rakvičku stloukl Jaromir sám, ze dřeva starého bezu – toho, v jehož koruně měl jako chlapec skrýš.{ zastaw_u_leszego == zastaw_siekiera: Porazil ho sekerou vypůjčenou od tchána.} Říkalo se, že takový strom se nekácí, protože přináší neštěstí. Jaromirovi už bylo všechno jedno. Z čerstvého řezu šel hořký, mdlý pach a z větví se mu na rukáv sesypaly poslední suché kvítky.{ kapliczki_drogi == ocalil_swiatka: Když rozebíral prkna skrýše, vypadla mu do rukou Matka Boží, kterou kdysi vynesl z Urbaniakova vozu. Postavil ji v hlavách.} V tichu bylo slyšet jen klepání hřebíků. # pokaz: trumienka
Děvčátka ze vsi uvila věnečky z chrp a heřmánku, natrhaných rovnou na mezi, a položila je na víko. Voněly sluncem, které toho dne v Zapadlině nikdo neviděl. # pokaz: wianki
{ pani_w_zbozu_noc == za_spiewem:
    Hanka nezpívala – od té noci v obilí to nedokázala. Odříkávala slova ukolébavky, jedno po druhém, chraplavě, bez melodie, a to bylo horší než pláč.
- else:
    Hanka zazpívala ukolébavku, kterou Marysii broukala každý večer. Hlas se jí ani jednou nezlomil, a právě proto to bylo nejhorší.
}
{ cialo_kopii == oddane_jagnie || cialo_kopii == spalone:
    Tělo v rakvičce nebylo – jen šatečky Marysie, pečlivě složené, jako by se ukládaly do truhly.
}
{ skarb_dla_corki:
    Než zatloukli víko, položil Jaromir do rakvičky poklad ze skrýše – {skarb_jaromira == muszelka:mušličku s rýhou po křivém zoubku|{skarb_jaromira == pioro:ožužlané pírko s prokousnutým brkem|hřebík s hnědou rzí}}.
- else:
    ~ ekwipunek -= bucik_marysi
    Než zatloukli víko, položil Jaromir do rakvičky {drugi_drewniak:oba červené dřeváky|červený dřevák – ten jediný, který mu zůstal}{uklad_z_mamunami != oddany_skarb:, a vedle {drugi_drewniak:nich|něj} poklad z truhličky ve skrýši – {skarb_jaromira == muszelka:bílou mušličku|{skarb_jaromira == pioro:sojčí pírko|rezavý hřebík}}. Jednou ho chtěl ukázat dceři}. # tobolek
}
{ cialo_kopii == pod_mlodnikiem:
    Hrob pod mlázím přikryli drnem a Antek zarazil v hlavách kůl s uvázanou červenou stužkou, kterou Hanka vypletla dítěti z vlasů, aby se vědělo kde. # dalej
- else:
    Rakvičku pohřbili na hřbitově v Bukowci, pod břízou. Farář{ przysiega_ksiedzu:, který přijal Jaromirovu přísahu na růženec,} vykonal všechno, jak se patří, a na nic se neptal.{ cialo_kopii == oddane_jagnie || cialo_kopii == spalone: Když hrobník zasypával jámu, hlína dopadala na víko tak dutě, že to Jaromir potom slýchal po nocích.} # dalej
}
-> jesien_po_pogrzebie

= jesien_po_pogrzebie
# tlo: jesien_zaduszki
Koncem srpna, té noci, kdy uplynuly tři roky od chvíle, co Marysia přišla na svět, šla Hanka ke hrobu sama a proseděla tam až do svítání. Jaromir za ní nešel. Nedokázal by se jí podívat do očí – protože věděl, co mu neřekne.{ znak_rozpoznania == po_imieniu: Kdyby ji tak nezavolal jménem.}{ znak_rozpoznania == po_drewniaku: Nechal se nachytat na červenou jako malé dítě.}{ znak_rozpoznania == po_buzi: Díval se na ni a nepoznal ji.}{ znak_rozpoznania == po_cieniu: Sám dal z ruky to, co ho potom oklamalo.}
Podzim přišel brzy. Mlácení ve stodolách, setí ozimého žita, trlení lnu – vesnice dělala svoje jako každý rok a Hanka s ní, obratně a beze slova. Jaromir každou noc slyšel, jak žena vstává a chodí po jizbě, od pece k oknu a zpátky.
{ pies_pobiegl_sam:
    ~ ekwipunek += szczenie_psa
    Pes se vrátil z boru ještě v červenci, týden po svatém Janu, hubený jako tyčka, a lehl si pod lavici, na které spávala Marysia. Nedal se odtamtud vylákat. # tobolek
}
{ dlug_u_jagny && cialo_kopii != oddane_jagnie:
    Jagna už ani jednou nepřijela. Dluh nebyl splacen a Jaromir věděl, že ona to ví také.
}
V říjnu se Hanka zeptala, aniž se odvrátila od hrnce: – O Dušičkách se mrtví vracejí domů. Tak se říká. – Zamíchala. – Přijde?
Jaromir neodpověděl. Pamatoval si hlas z boru, který došel do poloviny a zmlkl. Pamatoval si i ten druhý: „O Dušičkách přijdu do vsi. Tehdy si to spolu sečteme do konce.“
Čím blíž byly Dušičky, tím tišeji bylo v Zapadlině. Lidé se vraceli z polí před setměním, zavírali dveře na závoru a od boru se každý večer plížila loukami mlha, těžká a vlhká, až k samým plotům. # pokaz: mgla
Prvního listopadu šla vesnice na hřbitov do Bukowce. Toho roku nesli lidé z domovů místo kahánků hromničky. Cestou zpátky zhasly jako jediným dechem, všechny, ačkoli vzduch stál. Hořela jen Hančina hromnička – rovně, klidně, jako v zavřené jizbě. # pokaz: zgasly, gromnica_hanki # dalej
-> rozdzial_dziewietnasty_ciag_dalszy


// Koniec rozdziału dziewiętnastego – dalej rozdział dwudziesty (Ostatnia noc).
=== rozdzial_dziewietnasty_ciag_dalszy ===
# ozdobnik
_Konec devatenácté kapitoly._ # dalej
-> rozdzial_dwudziesty
