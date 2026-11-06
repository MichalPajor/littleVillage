// ------------------------------------------------------------
//  Rozdział pierwszy – Lato. Dzieciństwo Jaromira, około pół
//  wieku po prologu. Przebieg zależy od zakończenia prologu:
//    figurka_u_staruchy – dom na pagórku obok Stasia, milczący ojciec
//                         (z psem żyje jeszcze babka Marianna);
//    inaczej            – chata dziadka Maćka (las / mokradła / jezioro),
//                         ojciec opowiada legendy jak bajki.
// ------------------------------------------------------------

=== rozdzial_pierwszy ===
// Czy Maciek miał krzesiwo – babka Marianna może je oddać wnukowi w rozdziale 4.
~ krzesiwo_dziadka = ekwipunek ? krzesiwo
// Nowy bohater – Jaromir zaczyna z pustym tobołkiem (przedmioty Maćka zostają w prologu).
~ ekwipunek = ()
# nowy_tobolek
# tlo: zapadlina_lato
# rozdzial: Kapitola prvá
# tytul: Leto
Zapadlina, v ktorej vyrastal Jaromir, bola už inou dedinou než tá, do ktorej pred rokmi zostúpil s uzlíkom jeho dedko. Domov pribudlo – bolo ich teraz deväť, roztrúsených po svahoch a lúkach ako zrno rozhodené hrsťou po roli. Les trochu ustúpil sekerám, obrobená pôda siahala ďalej a cez močiare viedla poriadna lávka z dubových brvien. Pri cestách stálo množstvo kaplniek, vždy ozdobených čerstvými kvetmi. Hmla mala tú dolinu stále rada a v lete v nej zostávala aj dlho po východe slnka. Zmenilo sa aj okolie: za Bukovým hrebeňom, hodinu chôdze od Zapadliny, vyrástol Bukowiec – osada väčšia a zámožnejšia, s mlynom, krčmou a školou, a hneď vedľa školy – s dreveným kostolíkom, pri ktorom sa usadil starý farár. Do mesta sa už chodilo iba na jarmoky a veľké odpusty.
{ figurka_u_staruchy:
    Jaromir býval v chalupe na pahorku, vedľa dvora starého Staša, s ktorým jeho otec vyrastal ako s bratom. Dom bol neveľký, ale teplý, s bielenými stenami a strechou z trstiny, a z prahu bolo vidieť celú Zapadlinu – polia, lúky, jazero a tmavú čiaru boru na východe.
- else:
    { chata_macka:
        - przy_lesie: Jaromir býval v chate pod lesom, v tej istej, ktorú postavil dedko Maciek. Otec k nej pristaval druhú izbu a stodolu. Pod oknom rástla jabloň, zasadená v deň synovho narodenia, a zo severnej strany stáli divé slivky, ktoré často zhadzovali malé, zelené, nezrelé plody. Za nízkym plôtikom sa začínal bór – v lete voňal živicou a hubami a v horúce popoludnia dával tieň, v ktorom sa dalo preležať hoci až do súmraku.
        - przy_mokradlach: Jaromir býval v chate pri močiaroch, v tej istej, ktorú postavil dedko Maciek – na kamennej podmurovke, ktorej za pol storočia neublížila ani voda, ani mráz. Otec k nej pristaval druhú izbu a stodolu. Pod oknom rástla jabloň, zasadená v deň synovho narodenia, a zo severnej strany stáli divé slivky, ktoré často zhadzovali malé, zelené, nezrelé plody. Za nízkym plôtikom sa ťahali lúky, po ktorých chodili bociany, a za súmraku sa od tôní ozýval žabí koncert, taký hlučný, že prehlušil aj svrčky.
        - else: Jaromir býval v chate pri jazere, v tej istej, ktorú postavil dedko Maciek. Otec k nej pristaval druhú izbu a stodolu. Pod oknom rástla jabloň, zasadená v deň synovho narodenia, a zo severnej strany stáli divé slivky, ktoré často zhadzovali malé, zelené, nezrelé plody. Od prahu k vode bolo sotva niekoľko desiatok krokov a v lete ich chlapec prebehol toľkokrát za deň, že si v tráve vyšliapal vlastný chodník.
    }
}
Otec, Dobrosław, bol vtedy už mužom v rokoch, so šedivejúcou bradou a dlaňami rozpraskanými od roboty. { figurka_u_staruchy: Hovoril málo a smial sa ešte zriedkavejšie. Keď si večer sadol na prah, dlho hľadel smerom k močiarom, akoby tam niečo vyzeral. Syna ľúbil po svojom – mlčky, ťažkou rukou na pleci a najlepším kúskom mäsa, ktorý mu prisunul do misky. | Rád žartoval a večer čo večer rozprával príbehy, ktoré sám počul od svojho otca – o stvorách z bažín a o bylinkárke od jazera. Jaromir ich počúval so zatajeným dychom, hoci vedel, že sú to iba rozprávky. }
Matka, Agnieszka, bola od muža mladšia o dobrých pätnásť rokov. Voňala chlebom a dymom z pece, spievala pri každej robote a nikdy sa nevedela dlho hnevať.
{ figurka_u_staruchy && los_psa == oswojony:
    V kúte izby, na stolčeku, vysedávala babka Marianna, zhrbená a tichá. Niekedy pohladila vnuka po hlave a hľadela naňho tak, akoby v ňom videla niekoho iného.
}
Chlapec doma veľa nepobudol. Leto patrilo jemu – celé, od prvých horúčav až po žatvu – a jeho dni vyzerali takmer rovnako, a predsa sa ani jeden nepodobal na predchádzajúci. # dalej
-> poranek

= poranek
# tlo: poranek
Budilo ho kikiríkanie kohúta a lúč svetla, ktorý sa predieral škárou v okenici a ležal mu zlatým pásikom na tvári. Ešte chvíľu ležal pod perinou a počúval, ako sa matka zvŕta pri peci – ako bublá voda v hrncoch, ako praská oheň pod platňou, keď doň prikladala, ako vŕzgajú dosky pod jej krokmi. Z izby sa niesla vôňa mlieka a čerstvo upečeného chleba.
Potom mu zišlo na um, že je leto, a vyskočil z postele ako obarený.
Raňajky jedol takmer postojačky. Hrubý krajec natretý maslom, hrnček mlieka rovno od kravy, ešte teplého, niekedy biely syr. Matka s úsmevom krútila hlavou.
– Sadni si, synček. Nikto ti to nevezme. Dňa na hru s deťmi ti bude dosť.
# pytanie: Čo urobí Jaromir?
*   [Sadnúť si a v pokoji sa najesť, ako matka prosí.]
    Vzdychol si, prisadol na kraj lavice a za odmenu dostal bozk na čelo a lyžicu medu na chlieb. Jedol rýchlo, ale dojedol, a keď bol hrnček prázdny, zavolal len: – Idem k susedom! – a už bol preč. # pokaz: jaromir
    -> poranek_dalej
*   [Chytiť krajec a vybehnúť.]
    -> poranek_bieg

= poranek_bieg
Ale on si už utieral ústa rukávom a bol pri dverách. Skôr než matka stihla povedať, aby dával pozor, iba zakričal: – Idem k susedom! – a už uháňal cez dvor a plašil sliepky, ktoré mu s kotkodákaním utekali spod nôh. # pokaz: jaromir
-> poranek_dalej

= poranek_dalej
Tráva bola za úsvitu mokrá od rosy a studená a topánky mu rýchlo premokli. Voňala tak, ako vonia iba v tomto čase – sviežo, zeleno, trochu ako uhorka rozkrojená napoly. Nad lúkami viseli ešte cáry hmly, ale slnko ich už rozháňalo a v každej kvapke na steblách zažínalo drobnú iskru. Škovránky sa vznášali k nebu a spievali tak vysoko, že ich nebolo možné zazrieť.
U Stašovcov už naňho čakali. Franek, najstarší z gazdových vnukov, bol statný a o štyri roky starší ako Jaromir. Jeho brat Antek, mladší od neho o dve zimy, sa vŕtal paličkou v zemi a kopal jarček, ktorým chcel previesť vodu z jednej mláky do druhej. Po chvíli pribehla od jazera Hanka, kováčova dcéra, s vrkočom poskakujúcim na chrbte. # pokaz: dzieci
– Čo dnes budeme robiť? – pýtal sa Franek, hoci všetci vedeli, že aj tak rozhodne on sám. # dalej
-> wojna

= wojna
# tlo: laka_bitwa
Najčastejšie sa začínalo vojnou.
Každý mal svoj meč – olúpanú palicu z liesky alebo z vŕby, so zaostreným koncom. Jaromir ho nosil zastrčený za opaskom, a keď sa s ním musel rozlúčiť, vždy ho odložil na jeho miesto: do rohu stodoly. V celej dedine nebolo rovnejšej zbrane – hladkej od ustavičného držania a stmavnutej od potu dlaní. { figurka_u_staruchy: Otec mu bez slova pomohol meč naostriť, večer pri prahu. | Otec mu pomohol ten meč vystrúhať a smial sa, že s ním vyzerá ako rytier z jarmočného obrázka a že takto ozbrojený by premohol aj draka. }
Nepriateľom bola burina. Na medziach a pri priekopách rástli jej nespočetné armády: smldníky s okolíkmi veľkými ako taniere, bodliaky naježené fialovými hlavami a žihľava, čo siahala až po uši. Deti vbiehali na lúky s pokrikom, od ktorého sa plašili vrabce. Palice svišťali vzduchom, stonky praskali so šťavnatým chrupnutím a pichľavé makovice lietali navôkol. # pokaz: bitwa
Po každej bitke prišiel čas na liečenie rán. Neraz to boli kolená zodraté do krvi, lýtka posiate pľuzgierikmi od žihľavy, doškriabané predlaktia a dlane. Hanka na všetko poznala liek: na obžihnuté miesta prikladala listy skorocelu a kázala ich držať, kým to neprestane štípať. Nikto neplakal – no, azda občas Antek, ale iba trošku, a hneď potom sa tváril, že mu to do očí steká pot.
Potom padali do trávy, zadychčaní a šťastní, a ležali na chrbte s rozhodenými rukami. Nad nimi plávali biele oblaky, v ktorých každé z detí vyčítalo niečo iné – koňa, loď, starú babu s metlou, medveďa. Voňala rozpálená zem, rumanček a pomliaždené bylinky. Kdesi blízko bzučal čmeliak a kobylky vyskakovali spod rúk ako iskry z vatry. # dalej
-> luki

= luki
# tlo: luki
Keď ich meče omrzeli, prišiel čas na luky.
~ ekwipunek += nozyk
Najlepšie boli z liesky, ktorá rástla husto na kraji lesa – rovná, ohybná a pevná. Franek z nej vyberal konár vhodnej dĺžky – takej, ako bol sám vysoký – a Jaromir ho orezával nožíkom, ktorý dostal od otca na meniny. Bolo treba dávať pozor, aby na jednom mieste neubral priveľa dreva, lebo potom luk praskol pri prvom napnutí. Na tetivu išiel hrubý motúz, ukradnutý matke z koša, alebo – v lepšie dni – kus obuvníckej dratvy.
Šípy robili tiež z liesky, ale oveľa tenšej. Hroty nemali – zato špičku zaostrili tak, že pichala ako tŕň, a na druhý koniec – letky z papiera alebo z peria zbieraného po dvoroch po celej dedine.
Terčom bol snop slamy postavený na medzi, s kruhom namaľovaným sadzami. Tetiva bzučala pri uchu ako osa, šíp krátko zasvišťal a potom sa ozvalo tupé „puk“, keď sa zaostrený koniec zapichol do slamy. Strely leteli dosť rovno, zapichli sa do zeme alebo do terča a niekedy plachtili vysoko k nebu. Najlepšie to išlo Hanke. Prižmurovala jedno oko, vystrkovala kúsok jazyka a nikdy neminula – a chlapci, hoci by sa k tomu za nič na svete nepriznali, ju za to obdivovali viac než za čokoľvek iné. # pokaz: hanka
# pytanie: Zmeria sa Jaromir s Hankou?
*   [Áno – vyzvať ju na preteky.]
    ~ celny_strzal = true
    Prehrával, pravdaže. Hanka trafovala bez chyby a jeho šípy padali najčastejšie do obilia. Ale na druhý deň prichádzal na medzu ešte pred ňou a cvičil, až mu stŕpli prsty.
    -> luki_dalej
*   [Nie – cvičiť sám, ďaleko od ostatných.]
    Odchádzal na koniec medze a strieľal do starého pňa, až ho bolelo rameno. Nikto nevidel, ako často sa netrafil, a tak to bolo najlepšie.
    -> luki_dalej

= luki_dalej
Raz Jaromir trafil do samého stredu kruhu. Po zvyšok dňa chodil taký hrdý, že zabudol aj na obed, a matka ho musela volať mnohokrát. # pokaz: trafienie # dalej
-> lato_baza

= lato_baza
# tlo: baza
Najdôležitejším miestom na svete však bola skrýša.
Stála – alebo skôr visela – v korune starej bazy, ktorá rástla na kraji lúky, taká rozložitá, že by sa v jej tieni mohlo schovať niekoľko kráv. Stavali ju počas jedného dlhého leta. Dosky znášali, odkiaľ sa dalo: z rozbitého chlievika, z plota, ktorý už nikto neopravoval, {figurka_u_staruchy:zo stodoly Staša, ktorý krútil hlavou, ale nebránil im|zo stodoly Jaromirovho otca, ktorý sa tváril, že nič nevidí}. Pribíjali ich klincami vyrovnanými kameňom na kameni, a kde sa ich nedostávalo, priväzovali ich motúzom. Hore viedol rebríček z priečok priviazaných ku kmeňu. V skrýši vždy voňalo rozohriate drevo a bazový kvet, tak sladko, že sa po hodine točila hlava. Škárami medzi doskami prenikali tenké pruhy slnka, v ktorých tancoval prach, a keď fúkal vietor, celá koruna sa hojdala a vŕzgala, akoby skrýša bola loďkou na rozbúrenej vode.
Dnu sa zmestilo pätoro, ak sedeli natesno – štvorici tam teda bolo celkom pohodlne. Mali tam všetko, čo treba: debničku na poklady, v ktorej ležali farebné kamienky, pierka a mušličky, a pre prípad útoku – tulec so šípmi, luk a „meče“.
# pytanie: Čo Jaromir schová do debničky na poklady?
*   [Mušličku z jazera, bielu ako mlieko.]
    ~ skarb_jaromira = muszelka
    Zabalil ju do lopúchového listu a schoval na samé dno.
    -> baza_dalej
*   [Sojčie pierko, belasé ako nebo po búrke.]
    ~ skarb_jaromira = pioro
    Položil ho navrch, aby sa zablyslo hneď po otvorení veka.
    -> baza_dalej
*   [Hrdzavý klinec, ktorý – ako tvrdil – vypadol kedysi zo skutočného rytierskeho brnenia.]
    ~ skarb_jaromira = gwozdz
    Zavinul ho do handričky ako relikviu. Franek vyprskol do smiechu, ale Antek hľadel na klinec s úctou.
    -> baza_dalej

= baza_dalej
Najkrajšie tam bolo za lejaka. Letná búrka prichádzala náhle, tmavým valom spoza lesa, a skôr než deti stihli dobehnúť domov, padali prvé ťažké kvapky. Vtedy sa vyšplhali do skrýše a sedeli schúlené pod strechou z dosiek, cez ktorú aj tak trochu zatekalo. Listy šumeli ako more, ktoré nikto z nich nikdy nevidel, hromy sa valili nad dedinou a vzduch voňal dažďom, mokrým drevom a kvitnúcou bazou. Po búrke sa z lúky parilo a na nebi sa klenula dúha. # pokaz: burza # dalej
-> lato_jezioro

= lato_jezioro
# tlo: jezioro_lato
Keď slnko vystúpilo do zenitu a nad poliami sa začala chvieť horúčava, celý húf sa pobral k jazeru. Bežali o preteky cez lúku, cestou zhadzovali košele a s vreskotom skákali do vody, až špliechance leteli k nebu. Pri brehu bolo plytko a piesočnato, voda nahriata slnkom ako v džbere a drobné rybky šteklili chodidlá. Franek sa predvádzal a skákal šípky z prevráteného kmeňa a Antek sedel na plytčine a chytal do dlaní žubrienky. Voňala sitina a rozohriate bahno a nad vodou sa mihali vážky. # pokaz: kapiel
{ figurka_u_staruchy: Jaromir nikdy nevchádzal hlbšie než po pás. Otec mu to zakázal raz, krátko a tak prísne, že sa chlapec neodvážil spýtať prečo. Rovnako rázne mu prikázal držať sa ďalej od močiarov a od trstiny na západnej strane, kde vraj kedysi stála akási chata. | Na západnom brehu, v rákosí, ešte trčali zo zeme čierne pahýle zuhoľnatených brvien. Deti sa nimi navzájom strašili a rozprávali si príbeh o upálenej bylinkárke – ten istý, ktorý večermi spriadal Jaromirov otec – ale na plnom slnku sa nikto nebál. }
{ figurka_u_staruchy:
    V ten deň Franek vyplával na hlbokú vodu a zavolal, aby sa k nemu Jaromir pridal.
    # pytanie: Poslúchne Jaromir otca?
    *   [Zostať pri brehu.]
        Pokrútil hlavou a nepohol sa z plytčiny. Z diaľky k nemu doľahlo: „Bojko!“, ale o chvíľu všetci zabudli a čľapotali sa ďalej.
        -> jezioro_dalej
    *   [Doplávať k Frankovi.]
        ~ odwaga_jaromira = true
        Urobil krok, potom druhý. Voda mu siahla po prsia a zrazu bola ľadová a čosi slizké sa mu otrelo o lýtko. Cúvol tak rýchlo, že sa až zachlistol. Nikomu o tom nepovedal – a už vôbec nie otcovi.
        -> jezioro_dalej
- else:
    V ten deň sa Franek stavil, že nikto sa neodváži dotknúť zuhoľnatených brvien.
    # pytanie: Prijme Jaromir stávku?
    *   [Dotknúť sa ich – veď nie je nijaký bojko.]
        ~ odwaga_jaromira = true
        Predral sa cez trstinu a položil dlaň na najvyššie z nich. Drevo bolo studené, hoci slnko pražilo od rána, a chlapec stiahol ruku rýchlejšie, než zamýšľal. Všetci to uznali za najväčšiu odvahu toho leta.
        -> jezioro_dalej
    *   [Zostať s ostatnými na piesku.]
        Pokrčil plecami a nepohol sa z miesta. Franek šiel sám, dotkol sa čierneho dreva končekom prsta a vrátil sa behom, pričom sa tváril, že sa vôbec neponáhľa.
        -> jezioro_dalej
}

= jezioro_dalej
Po kúpaní sa sušili v tráve, ležali na bruchu a jedli to, čo dal les: lesné jahody, čučoriedky, od ktorých černeli zuby aj jazyky, a kyslé listy štiavca, ktoré žuvali pre osvieženie. Niekedy niekto doniesol z domu uhorku alebo kúsok syra a delili sa spravodlivo, na toľko dielov, koľko bolo úst. V sade u Wójcikovcov dozrievali čerešne a gazda spával po obede tak tvrdo, že nepočul, keď niekto triasol konármi.
Horúčava sa kládla na všetko ako teplá perina. Svrčky cvrlikali tak nahlas, akoby od ich hrania záviselo, či slnko vôbec zapadne. Od pokosov, ktoré sedliaci obracali hrabľami, šla vôňa sena a od medze vial sladký dych materinej dúšky a ďateliny. Včely bzučali v lipách, motýle sadali na kvety a čas plynul tak pomaly, že sa zdalo, akoby deň nemal konca. # dalej
-> lato_wieczor

= lato_wieczor
# tlo: wieczor_lato
A predsa sa vždy skončil. Slnko sa zosúvalo za jazero, tiene sa na lúke predlžovali, až siahali od jedného jej kraja k druhému, a nebo nad vodou naberalo farbu zrelých malín. Vzduch chladol a voňal pokosenou trávou a dymom z komínov a z močiarov sa ohlásili prvé žaby – najprv jedna, potom desiatky, až kŕkala celá dolina ako jeden veľký zbor. Vtedy sa z jedného dvora za druhým začalo ozývať volanie.
– Jaroooomir! Domoooov! # pokaz: matka
# pytanie: Vráti sa Jaromir hneď?
*   [Bežať domov hneď.]
    Hlas matky sa niesol po celej dedine. Chlapec nedal na seba čakať: rozlúčil sa s ostatnými, dohodol sa na zajtra – vždy na zajtra, vždy pri drevenom stĺpiku, ktorý označoval hranicu otcovho poľa, hneď po raňajkách – a bežal cez lúku, na ktorej sa rozsvecovali prvé svetlušky. # pokaz: jaromir
    -> wieczor_dalej
*   [Ešte sa chvíľu pohrať.]
    -> wieczor_zwlekanie

= wieczor_zwlekanie
Hlas matky sa niesol po celej dedine. Chlapec sa tváril, že nepočuje, kým nezavolala po druhý raz – a na tretí raz sa v jej hlase objavil tón, ktorý neveštil nič dobré. Vtedy sa rozlúčil s ostatnými, dohodol sa na zajtra – vždy na zajtra, vždy pri drevenom stĺpiku, ktorý označoval hranicu otcovho poľa, hneď po raňajkách – a bežal cez lúku, na ktorej sa rozsvecovali prvé svetlušky. # pokaz: jaromir
-> wieczor_dalej

= wieczor_dalej
Vracal sa špinavý, s trávou vo vlasoch, so zemou za nechtami a s kolenami v chrastách. Matka vzdychla, chytila ho za ucho a odviedla k škopíku s vodou a potom pred neho postavila misku praženice alebo kyslé mlieko so zemiakmi.
{ figurka_u_staruchy:
    Otec sedel oproti a mlčal. Keď dojedol, vždy urobil to isté: vstal, pozrel, či sú dvere dobre zavreté na závoru, a až potom šiel spať.
    { los_psa == oswojony:
        Babka Marianna sa vtedy dvíhala zo stolčeka, robila vnukovi krížik na čele a šepkala čosi, čomu chlapec nerozumel.
    }
- else:
    Otec, ak bol večer teplý, vyniesol lavicu pred chatu a rozprával. O dedkovi Maćkovi, ktorý zostúpil do Zapadliny len so sekerou, o stvore z bažín, o hlase, čo volal od vody. Jaromir zvyčajne začal driemať v polovici, s hlavou na otcových kolenách, a nikdy nepočul koniec.
}
Ležal potom na slamníku pod oknom a počúval noc. Žaby kŕkali v tôňach, v stajni zafŕkal kôň, kdesi ďaleko zabrechal pes. Škárou v okenici bolo vidieť hviezdy – husté ako rosa na lúke.
Zaspával s úsmevom a myslel na to, že zajtra ho zas čaká teplý letný deň, plný hier od svitania do súmraku. # dalej
-> zloty_dzien

= zloty_dzien
# tlo: zapadlina_lato
Takých dní bolo nespočetne. Zlievali sa mu potom v pamäti do jedného dlhého zlatého pruhu, voňajúceho senom a rozohriatou zemou, plného slnka, smiechu a bzukotu včiel. Leto sa míňalo a Jaromir rástol – čoraz vyššie dosiahol na konáre bazy, čoraz ďalej doletel jeho šíp, čoraz menej potreboval rebríček, aby sa vyšplhal do skrýše. # dalej
-> rozdzial_pierwszy_ciag_dalszy


// Koniec rozdziału pierwszego – dalej rozdział drugi.
=== rozdzial_pierwszy_ciag_dalszy ===
# ozdobnik
_Koniec prvej kapitoly._ # dalej
-> rozdzial_drugi
