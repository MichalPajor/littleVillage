// ------------------------------------------------------------
//  Rozdział dwudziesty – Ostatnia noc. Zaduszki: mgła pod płotami, nakrycia dla dziadów.
//  Przed północą do wsi wchodzi świta Pana Lasu (słudzy, umarli, dzieci spod dębu).
//  Trzy drogi: zwrócić mu granicę (siekiera w pniaku, słowo całej wsi; z żołędziem
//  ze Starego Dębu Pan Lasu nie bierze już dzieci), zająć jego miejsce (pożegnanie
//  albo odejście bez słowa) albo – z krzesiwem – skrzesać ogień (Antek pod stodołą,
//  ślepota albo pół wsi w popiele). Trzy epilogi pół wieku później.
// ------------------------------------------------------------

=== rozdzial_dwudziesty ===
# tlo: dziady
# rozdzial: Kapitola dvadsiata
# tytul: Posledná noc
Druhého novembra sa Zapadlina zobudila do hmly takej hustej, že z prahu nebolo vidieť na studňu. Nikto nešiel do lesa na raždie ani k jazeru prať. Ženy od rána drhli lavice a stoly, muži štiepali drevo hneď pri stenách chalúp, aby sa nevzďaľovali ďalej ako na dva kroky od dverí. Na latách plotov od boru šedivel lišajník – suchý a krehký, hoci na všetko ostatné sa hmla usádzala v kvapkách.
{ przysiega_ksiedzu:
    Pred poludním prišiel z Bukowca farár s kropáčom a vedrom svätenej vody, aby pokropil ploty. Pri Jaromirovej chalupe zastavil koňa.
    – Dodržiavaš, čo si prisahal na ruženec? – spýtal sa. # pokaz: ksiadz
    { cialo_kopii == spalone || cialo_kopii == pod_mlodnikiem:
        Jaromir mlčal. Farár obrátil koňa; ich plot nepokropil.
    - else:
        – Dodržiavam – odvetil Jaromir. Farár pokropil plot dvakrát.
    }
}
Na každý parapet postavili misku kaše a hrnček vody. V každej izbe nechali pri stole prestreté pre jedného navyše – pre tých, čo sa v túto noc vracajú. # dalej
{ marysia_odzyskana:
    Hanka posadila Marysiu k peci a nespúšťala z nej oči.
- else:
    Hanka prestrela o dve miesta viac: jedno pre duše predkov, druhé malé, s drevenou lyžičkou, ktorú Jaromir vystrúhal minulú zimu. Nikto nepovedal ani slovo.
}
{ ekwipunek ? szczenie_psa:
    Ryšavý pes sa vtisol pod lavicu a nevyliezol odtiaľ ani pre kosť.
}
{ uboze == nakarmione:
    Tanierik mlieka, ktorý Jaromir na svitaní postavil za pec, stál do večera nedotknutý. V kúte celý deň čosi nepokojne šuchotalo.
}
Podvečer hmla pri ohradách zhustla a zastala. Nehýbala sa, hoci vietor šklbal doškovými strechami. Hromničné sviece, ktoré zhasli cestou z cintorína, sa nedali zapáliť – knôty syčali a černeli.
{ not marysia_odzyskana:
    Iba hromničná svieca Hanky horela na stole, rovno, tak ako včera. # pokaz: gromnica_hanki
}
Jaromir si sadol na prah. Sekeru {zastaw_u_leszego == zastaw_siekiera:svokrovu|dedkovu} oprel o zárubňu, poriskom poruke.{ ekwipunek ? krzesiwo: Vo vrecku cítil chlad kresadla.} Čakal. # pokaz: prog # dalej
-> swita_pana_lasu

= swita_pana_lasu
# tlo: swita
Prišli pred polnocou.
Najprv nastalo ticho – také ticho, že Jaromir počul, ako v izbe praská žeravá pahreba v peci. Potom sa hmla rozostúpila a cestou od boru vošla do dediny družina.
Šli pomaly, bez najmenšieho zvuku. Od prvých radov to ťahalo bahnom a vlhkom, od posledných – sladkou práchnivinou. Jednooká žobráčka v handrách, s palicou. Polnočnica, vysoká, plochá ako tieň na stene{ polnocnica == policzyla_mak:, s makom v zovretej hrsti}. Rusalky v mokrých košeliach, vyvolané z bahna nie vo svojom čase – z vlasov im kvapkala voda, a medzi nimi šla Kaśka Wójciková{ ratunek_franka == krzyzem: a Bartek, mlynárov syn, s vodnou riasou okolo krku}. Mamuny s pracími palicami. Žitná baba, prihrbená, s klasmi vo vlasoch{ not wilk_przy_jaromirze: a s červeným drevákom v ruke}. Svetielka, ktoré sa kolísali nad hlavami ako lampáše.{ los_figurki == figurka_u_stwora: Stvora z močiarov, zhrbená, s figúrkou pritisnutou k hrudi ako matka dieťa.}{ poludnica_uklon: Poludnica v bielej košeli; keď prechádzala, poklonila sa Jaromirovi – tak ako vtedy na strnisku.} Deti spod duba, ktoré sa držali za ruky. Žiadne z nich nevrhalo tieň. # pokaz: swita, dzieci # dalej
{ not marysia_odzyskana:
    Medzi nimi bola jedna, ktorá nikoho nedržala za ruku. Bosá, v bielej košieľke, bez stužky vo vlasoch. Šla pomalšie ako ostatné a obzerala sa po chalupách, akoby hľadala cestu domov. Hanka ju zbadala cez okno. Nevykríkla. Len si k sebe pritisla hromničnú sviecu, tak silno, že jej vosk stekal po prstoch, a plameň sa ani nezachvel. # pokaz: marysia
}
Šli aj mŕtvi zo Zapadliny. Starý Wójcik{ pochowek_wojcika == pochowany_za_murem || trzy_noce == rozkopany_grob: – s tvárou obrátenou k zemi, hoci kráčal vzpriamene}.{ trzy_noce == czuwanie_przy_kolysce: Wójciková, s rukami zloženými na prsiach{ korale_kaski == oddane: a s korálkami dcéry pod šatkou}.} Babka Marianna. Pred nimi všetkými – dedko Maciek, so sekerou za opaskom a s uzlíkom na pleci, tak ako pred sedemdesiatimi rokmi, keď prvý raz zišiel do Zapadliny. Keď míňal chalupu, pozrel na vnuka a kývol mu hlavou. # pokaz: umarli
Na konci, zhrbený, aby nezavadil parožím o nebo, šiel Pán lesa. Každý jeho krok bol dlhý ako roľa. Všade, kade prešiel, vyrastal mach a hneď šedivel od inovate. # pokaz: leszy
Zastal pred Jaromirovou chalupou. Družina za ním znehybnela. # dalej
{ marysia_odzyskana: -> calun_nad_jeziorem }
-> po_calunie

= calun_nad_jeziorem
Z radu vystúpili mamuny. Najstaršia zdvihla na vystretých rukách malé, mokré plátno, ukázala ho Jaromirovi a bez slova sa s ostatnými pobrala k jazeru.
– Choď – povedal Pán lesa a ani neotočil hlavu. – Počkám. Noc je dlhá. # dalej
# tlo: calun_noc
Na plochých kameňoch na druhom brehu jazera mamuny rozprestreli plátno a vyhladili ho dlaňami. Bolo stále mokré, hoci od augusta prešli dva mesiace. Akurát na dieťa. Jazero stálo čierne a hladké a od dediny nedoliehal nijaký zvuk. # pokaz: mamuny
– Marysia – povedala najstaršia nad rubášom, nežne, a plesla pracou palicou o kameň. – Marysia.
{
- dar_pominiety:
    – Raz si zabudol – zaškriekala. – Teraz sme prišli po svoje.
- uklad_z_mamunami:
    – Nepozeraj tak, gazda – zaškriekala. – Dodržali sme. To nie je od nás. Perieme, čo nám prinesie voda, a teraz voda nesie deti z vašej dediny.
- else:
    – Nie my vyberáme – zaškriekala. – Perieme, čo nám prinesie voda, a teraz voda nesie deti z vašej dediny.
}
– Do svitania vyschne – povedala. – Potom už meno nikto nezmyje, ani my. Kým je mokrý, ešte sa dá. – Usmiala sa čiernymi ďasnami. – Lenže zadarmo z plátna nič nezíde. # pokaz: calun
# pytanie: Čo urobí Jaromir?
*   [Vytrhnúť im rubáš sám.]
    ~ cena_caluna = cena_zdrowie
    Vošiel do vody po kolená a strhol rubáš z kameňa. Mamuny sa naňho vrhli – studené, mokré dlane mu obopli ruky a lýtka, pracie palice mu dopadali na chrbát ako cepy na humno. Nepustil. Keď sa vyškriabal na breh, plátno mu kvapkalo z hrstí a z vody sa za ním ešte dlho chichotalo. # pokaz: wyrwany
    Meno sa zmylo. Ale chlad jazera v ňom ostal: od kolien nadol mal nohy studené ako kamene z dna a nič ich už nezohrialo – ani pec, ani kožuch. Ku kose sa už nepostavil.
*   [Zavolať Antka.]
    ~ cena_caluna = cena_antek
    – Antek! – skríkol Jaromir smerom k dedine. Antek, ktorý v tú noc nespal, pribehol k jazeru skôr, než nad vodou doznela ozvena. Na nič sa nespýtal. Vošiel medzi mamuny, akoby vchádzal do vyhne, a vytrhol rubáš z kameňa – rubáš dievčatka, ktoré držal pri krste. # pokaz: antek
    Najstaršia sa rozohnala pracou palicou. V tichu to puklo ako lámaná haluz. Antek nevykríkol. Vyšiel na breh s rubášom v ľavej ruke a pravá mu visela vykrútená v lakti tak, ako sa nijaká ruka nevykrúca. Kováč si ju potom prezrel a iba pokrútil hlavou. Do vyhne sa Antek už nevrátil.
*   { wilk_przy_jaromirze && znak_rozpoznania != po_wilku } [Zavolať bieleho vlka.]
    ~ cena_caluna = cena_franek
    ~ zapiski += tropy_6
    – Franek! – zavolal Jaromir smerom k dedine, hoci ani nevedel, či ho vlk počuje. Meno, najťažšie zo slov, sa nieslo nad vodou.
    Vlk počul. Biely tieň sa mihol po brehu, vletel medzi mamuny a roztrhal rubáš zubami na cáry. Prenikavo zavýjali a vrhli sa naňho všetky naraz. Voda pri kameňoch zovrela ako v kotli na pranie – a potom sa vyhladila. # pokaz: wilk
    Pri brehu, v tŕstí, ležalo biele telisko, oťažené vodou. Antek, ktorý pribehol na vytie, si k nemu kľakol a položil dlaň na obruč vydratej srsti na prednej labe. – To je on – povedal len. – Hovoril som ti.{ wilk_pod_debem == opowiedzial_o_antku: Jaromir si spomenul na slová spod duba: s tvojou pamäťou v hlave dlho nepožije.}
*   { uklad_z_mamunami == dar_swietojanski && not dar_pominiety } [Pripomenúť im dohodu a predĺžiť ju na dcéru.]
    ~ cena_caluna = cena_umowa
    – Sľúbil som vám dar, kým budem žiť – povedal Jaromir. – Nech je tak: kým bude žiť ona. Keď ma nebude, bude ho nosiť sama.
    Najstaršia si ho bez pohnutia premeriavala. Potom odložila palicu. – Platí – zaškriekala. – Ale aj ona bude musieť pamätať. Každý rok. Až do konca.
    Keď Jaromir siahol po rubáši, plátno sa rozplynulo vo vode ako pena. # pokaz: piana
    { przysiega_ksiedzu:
        Prísahu zloženú v Bukowci – že skoncuje s darmi pre to, čo sedí vo vode – porušil v tú istú noc, keď farár { cialo_kopii == spalone || cialo_kopii == pod_mlodnikiem: obrátil koňa spod jeho plota | mu pokropil plot }.
    }
-   ~ zapiski += mamuny_4
    Mamuny pozbierali pracie palice a jedna za druhou vošli do vody. Jaromir sa vybral naspäť do dediny. # dalej
    -> powrot_do_swity

= powrot_do_swity
# tlo: swita
Keď sa vrátil k chalupe, družina stála tam, kde ju nechal. Pán lesa sa nepohol ani o krok.{ cena_caluna == cena_zdrowie: Jaromir šiel pomaly; chlad jazera mu vnikal do nôh odspodu.}{ cena_caluna == cena_antek: Antek šiel vedľa neho, s pravou rukou zastrčenou za opasok.} # pokaz: swita, dzieci, umarli, leszy
-> po_calunie

= po_calunie
{ cena_caluna == cena_franek:
    Vtedy uvidel Jaromir v rade mŕtvych Franka – nie vlka, ale Franka, chudého, s vlasmi po plecia, takého, akého ho videl naposledy v prístrešku pri jazere. Franek podišiel k Antkovmu oknu a položil dlaň na rám, tak ako sa kladie dlaň koňovi na šiju. # pokaz: franek
- else:
    { wilk_przy_mnie():
        Biely vlk vyšiel spoza stodoly a postavil sa pri prahu, k Jaromirovej nohe. Srsť mal zježenú. # pokaz: wilk
    - else:
        Po boku Pána lesa stál biely vlk. Na Jaromira sa nepozrel. # pokaz: wilk_pan
    }
}
{ bielmo():
    Jagna sa vynorila z hmly od plota a postavila sa pred Pána lesa, bez toho, aby sklopila oči.
    – Tento človek mi dlhuje prvú vec z boru – povedala. # pokaz: jagna
    – Čo vyšlo z boru, vyšlo na moje slovo – odvetil Pán lesa.
    – Slovo tvoje, dlh môj. – Jagna sa obrátila k Jaromirovi. – Moja babka kupovala a brala na seba to, čoho sa iní báli dotknúť, a platila za to okom. Ja po nej vyberám, čo kto dlhuje. – Podišla tak blízko, že pocítil na tvári vôňu ľubovníka. – Aj ty si vyšiel z boru, Jaromir. Prvý, skôr ako si vyniesol {marysia_odzyskana:dcéru|tamto}.
    Položila mu prst na ľavé viečko. Bol suchý a teplý. Keď ho odtiahla, videl už Jaromir ľavým okom iba mliečnu hmlu, takú istú, aká sedela v jej oku.
    – Teraz sme si kvit – povedala a odišla do hmly.
}
{ cialo_kopii == oddane_jagnie:
    Jagna vyšla z hmly s čímsi zavinutým v ľanovej plachte a položila to Pánovi lesa k nohám. – Vraciam, čo nie je moje – povedala. Plachta klesla naplocho; ostali pod ňou iba suché lístie a kôra. # pokaz: jagna
}
– Prišiel som, aby sme si to spolu zrátali do konca – povedal Pán lesa. Jeho hlas šiel od zeme, od striech, od studne. – Dub, slovo, kaplnky. Všetko ste vzali. Moji prišli po vaše deti, lebo plot, ktorým som ich držal, sa zrútil. Dnes ich nemám čím zadržať.
Spoza neho sa ozvalo nôtenie – to deti spod duba začali svoju melódiu. Šla od chalupy k chalupe a v každej, za dverami zatvorenými na závoru, sa zobúdzalo nejaké dieťa a začínalo plakať.{ marysia_odzyskana: Aj Marysia sa zobudila. Neplakala – posadila sa na lavici a dívala sa do okna, a Hanka ju držala za plecia.}
– Môžeš mi vrátiť hranicu – povedal Pán lesa. – Po starom: vy nie ďalej ako ona, ja – jedno dieťa za pokolenie. Môžeš zaujať moje miesto – ale k svojim sa už nevrátiš.
{ ekwipunek ? krzesiwo:
    Pozrel na Jaromirov kabát a prvý raz mu v hlase zaznelo čosi ako strach. – Alebo môžeš urobiť to, kvôli čomu nosíš pri sebe kresadlo. Ale po takom ohni nezostane ani bór, ani vy.
- else:
    { zastaw_u_leszego == zastaw_krzesiwo:
        – Oheň si nechal u mňa. Múdro.
    }
}
# pytanie: Čo urobí Jaromir?
*   [Vrátiť mu hranicu.]
    ~ ostatnia_noc = zwrocil_granice
    -> ostatnia_granica
*   [Zaujať jeho miesto.]
    ~ ostatnia_noc = zajal_miejsce
    -> ostatnie_miejsce
*   { ekwipunek ? krzesiwo } [Vykresať oheň.]
    ~ ostatnia_noc = skrzesal_ogien
    -> ostatni_ogien

= ostatnia_granica
# tlo: granica
– Dostaneš hranicu – povedal Jaromir. – Ale nie odo mňa samého.
Obišiel celú dedinu a pod každým oknom volal gazdov po mene. Prvý vyšiel Antek{ cena_caluna == cena_antek:, s pravým rukávom zastrčeným za opasok}. Potom kováč a Szymon{ noc_ognia == ratowal_kapliczke:, s tvárou omotanou šatkou a s rukami v handrách}. Józek viedol za ruku starého Staša, takého vetchého, že už ledva videl. Otec, {noga_ojca == strzaskana:o barlách|o palici}, a matka, zababušená v kožuchu. Napokon Hanka{ marysia_odzyskana:, s Marysiou zavinutou v šatke}. Šli za ním hmlou, s hromničnými sviecami, ktoré nechceli horieť{ not marysia_odzyskana: – horela iba svieca Hanky}, rovno stredom družiny. Rusalky a mamuny pred nimi ustupovali nabok ako voda pred prídou člna. # pokaz: ludzie
Peň po Starom dube stál na okraji boru, čierny, obrastený hubami. Pán lesa zastal na druhej strane. # pokaz: leszy # dalej
{ zastaw_u_leszego == zastaw_siekiera:
    Pán lesa siahol do tmy za chrbtom a podal Jaromirovi dedkovu sekeru. Porisko bolo vlhké od miazgy koreňa, ktorý ju držal.
- else:
    Pán lesa pozrel na dedkovu sekeru v Jaromirových rukách.
}
– {chata_macka == przy_lesie:Týmto železom prekročil tvoj dedko hranicu|Týmto železom rúbal tvoj rod môj bór} – povedal. – Tamten, prvý, prišiel ku mne bez železa. Ty svoje necháš.
~ ekwipunek -= siekiera
Jaromir zaťal sekeru do pňa, až drevo zastonalo. Porisko bolo ťažké a studené a ruky sa mu triasli tak, že musel udrieť dvakrát. # pokaz: siekiera
{ ekwipunek ? zoladz:
    ~ ekwipunek -= zoladz
    ~ zoladz_zasadzony = true
    Potom si kľakol a prstami vyhrabal jamku v zamrznutej zemi, až si polámal nechty. Vložil do nej žaluď, ktorý opatroval od chlapčenských rokov – stále teplý. Keď ho zahrnul hrudami, spod nich vykukol bledý klíčok – v novembri, v inovati. # pokaz: kielek
}
{ dlug_jagny:
- oddana_wstazka:
    Jagna vystúpila z hmly a ovinula porisko sekery červenou stužkou Marysie. – Hovorila som, že sa zíde – zamrmlala. # pokaz: wstazka
- oddany_drewniak:
    Jagna vystúpila z hmly a položila červený drevák k pňu. – Drevo k drevu – zamrmlala. # pokaz: drewniak
}
– Ďalej nepôjdeme – povedal Jaromir. Z úst mu vyrazila para. Za ním to zopakovali všetci, nerovno, zachrípnuto.{ pani_w_zbozu_noc == za_spiewem: Hanka iba pohybovala perami.} – Slovo za slovo. # dalej
{ zoladz_zasadzony:
    Pán lesa sa nepozeral na sekeru. Pozeral na klíčok. Sklonil sa nad ním tak nízko, že parožie zavadilo o hmlu, a dotkol sa ho prstom – opatrne, ako sa človek dotýka žriebäťa, ktoré sa práve postavilo na nohy.
    – Tamten, prvý, mi dal slovo – povedal ticho. – A ja som zaň bral dieťa za pokolenie, lebo slovo nič neváži, a Dub bol môj, nie váš. – Vystrel sa. – Tento je váš. Vyrástol z môjho Duba a zasadila ho ruka, ktorá ho strážila celý život. Doteraz ste mi dávali iba svoje. Ty si mi vrátil moje. Kým tento dub rastie, deti vám nevezmem. Vy – nie ďalej ako toto železo. Kaplnky postavíte naspäť. Všetky. A ty budeš strážiť slovo a strom do konca svojich dní. Každé Dušičky – tu.
    Hanka chytila Jaromira za ruku.{ marysia_odzyskana: Marysia spala v šatke a nevedela, že ju práve vykúpili od boru – ju i všetky deti, ktoré sa ešte mali narodiť v Zapadline.}
- else:
    Pán lesa hľadel na sekeru v pni. Potom kývol hlavou.
    – Slovo za slovo – povedal. – Vy – nie ďalej ako toto železo. Ja – jedno dieťa za pokolenie, v svätojánsku noc. A vrátim ho skôr, ako zabudne na svoj domov. Kaplnky postavíte naspäť. Všetky. – Sklonil sa nad Jaromirom. – A ty budeš strážiť slovo, kým žiješ. Každé Dušičky – tu.
}
{ przysiega_ksiedzu:
    Jaromir pomyslel na ruženec a na prísahu zloženú v Bukowci. Práve ju porušil{ cena_caluna == cena_umowa || cialo_kopii == spalone || cialo_kopii == pod_mlodnikiem: druhý raz} – a vedel, že by ju porušil znova.
}
Pán lesa sa obrátil a odišiel do boru. Jeho sluhovia vošli za ním, jeden za druhým, a hmla sa za posledným zatvorila.{ not zoladz_zasadzony || marysia_odzyskana: Mŕtvi za ním nešli; rozišli sa cestou na Bukový hrebeň, každý k svojmu odpočinku.}{ wilk_zywy() && not wilk_przy_mnie(): Biely vlk bežal tesne pred Pánom lesa.}{ wilk_przy_mnie(): Biely vlk postál ešte chvíľu pri Jaromirovej nohe, potom sa rozbehol za nimi a neobzrel sa.}
{ not marysia_odzyskana:
    { zoladz_zasadzony:
        Tá jedna, v bielej košieľke, za nimi nevošla. Pán lesa sa na ňu obzrel z okraja boru.
        – Priveľmi dlho bola u mňa. Domov si už pamätá iba ako cez sen – povedal. – Živú vám ju nevrátim. Ale moja už nie je.
        { ekwipunek ? wstazka_marysi:
            Jaromir k nej podišiel, odvinul zo zápästia vyblednutú stužku a uviazal jej ju vo vlasoch na mašľu, ako to robievala Hanka.
        }
        Malá chvíľu stála bez pohnutia a nevedela, kam ísť. Potom pribehla k matke a dotkla sa jej ruky, tak ako každý večer. Vtedy k nej dedko Maciek vystrel dlaň a ona ju bez strachu chytila. Mŕtvi zo Zapadliny šli cestou na Bukový hrebeň, každý k svojmu odpočinku, nie do boru – a ona spolu s nimi, ani raz sa neobzrúc. Hromničná svieca v ruke Hanky zhasla sama, pokojne, ako keď sa pred spaním zhasína svetlo. # pokaz: marysia
    - else:
        Tá jedna, v bielej košieľke, sa ešte zastavila na okraji. – Túto som vzal, keď slova nebolo – povedal Pán lesa a neobzrel sa. – A priveľmi dlho bola u mňa.{ ekwipunek ? wstazka_marysi: Jaromir k nej podišiel, odvinul zo zápästia vyblednutú stužku a uviazal jej ju vo vlasoch na mašľu, ako to robievala Hanka.} Malá sa obrátila a zakývala matke rúčkou. Hanka zdvihla ruku. Hromničná svieca v jej druhej ruke zhasla sama, pokojne, ako keď sa pred spaním zhasína svetlo. # pokaz: marysia
    }
}
Nad Zapadlinou sa rozvidnelo – obyčajne, šedo, ako každé novembrové ráno. V chalupách deti prestali plakať. # pokaz: swit # dalej
~ zapiski += (pan_lasu_12, zielarka_5, dzieci_3)
{ wilk_zywy():
    ~ zapiski += tropy_7
}
-> epilog_granica

= ostatnie_miejsce
# tlo: miejsce
– Zostanem – povedal Jaromir.
Pán lesa mlčal, až kým mu na brade nesadla inovať.
– Vedel som to – ozval sa napokon. – Odkedy si ku mne prišiel sám.{ glosy_boru == odpowiedzial_marysi: Zrátal som ťa v tú noc. Osemsto. Dávno si bol môj.}{ zastaw_u_leszego == zastaw_cien: Tvoj tieň na teba čaká pod dubom.}
# pytanie: Ako Jaromir odíde?
*   [Rozlúčiť sa s Hankou{ marysia_odzyskana: a s Marysiou}.]
    ~ pozegnanie = pozegnal_sie
    Vošiel do izby. Hanka stála pri peci, bledá, s rukami zovretými na zástere. Vedela – videl to hneď.{ marysia_odzyskana: Marysia znova zaspala na lavici. Pobozkal ju na čelo, opatrne, aby ju nezobudil, a dlho sa díval, ako dýcha.} # pokaz: hanka
    – Vrátiš sa? – {pani_w_zbozu_noc == za_spiewem:chrapľavo zašepkala, takmer bez hlasu|spýtala sa}.
    – Budem blízko – povedal. – Za plotom. Vždy.
    Pritúlila sa k nemu tak ako v noc po svadbe a držala ho, kým jej teplo nezačalo chladnúť v jeho dlaniach. Vtedy ho pustila. # dalej
*   [Odísť bez slova – tak to budú mať ľahšie.]
    ~ pozegnanie = odszedl_bez_slowa
    Do izby nevošiel. Chvíľu stál pri okne a díval sa škárou v okenici, ako Hanka, premožená bdením, spí na lavici s hlavou opretou o stenu{ marysia_odzyskana:, a Marysia schúlená pri nej, s kolenami pod bradou|, s horiacou hromničnou sviecou v dlaniach}. Na parapet, vedľa misky kaše pre duše predkov, položil svoju čiapku. Potom sa obrátil a odišiel. # pokaz: czapka
    Ráno našla Hanka čiapku a všetko pochopila. Nosila ju v záňadrí. # dalej
-   Šli spolu na okraj boru. Pri pni Starého duba sa Pán lesa zmenšil na starca v kožuchu obrátenom srsťou von a v klobúku z machu – takého, akého Jaromir videl v noc svojej svadby. # pokaz: starzec
Sňal klobúk a nasadil ho Jaromirovi na hlavu. Bol ťažký, studený a voňal mokrou kôrou. Keď ho Jaromir pocítil, čosi v ňom ticho puklo – ako ľad na rybníku – a začul bór. Každý strom. Každý koreň. Každé zviera, ktoré práve zaspávalo v nore pred zimou. A v tej istej chvíli si nevedel spomenúť, ako voňali vlasy Marysie. # pokaz: kapelusz
{ zastaw_u_leszego == zastaw_siekiera:
    Starec vytiahol z tmy dedkovu sekeru, ešte opletenú korienkami, a oprel ju o peň. Jaromir ju nezdvihol.
}
Potom sa niekdajší Pán lesa ľahol pod peň. Zdĺhavo vzdychol, ako strom, keď v ňom povolí mráz, a začal sa prepadať do zeme. Mach ho zarastal, lístie ho prikrývalo, až ostal iba pahorok pokrytý sivým lišajníkom. # pokaz: pagorek
– Teraz rátaj ty – zašepkalo čosi spod zeme.
Jaromir sa obrátil k družine. Stáli pred ním všetci a čakali. # dalej
– Vráťte sa – povedal. Jeho hlas prešiel korunami od boru až po jazero. – Domov. Všetci.
Odišli. Rusalky do jazera, mamuny na kamene, žitná baba do strniska, licho do hmly. Kliatba bylinkárky viazala ruky tamtomu. Ruky nového nepoznala.
~ zapiski += (pan_lasu_12, zielarka_5, dzieci_3)
{ marysia_odzyskana:
    { cena_caluna == cena_franek:
        Spod Antkovho okna odišiel Franek. Raz sa obzrel na chalupu, v ktorej spal jeho brat, a zmizol v hmle. # pokaz: franek # dalej
    - else:
        ~ zapiski += tropy_7
        Biely vlk zostal posledný. Jaromir mu položil ruku na hlavu. – Choď, Franek – povedal. – Si slobodný. – Vlk mu oblizol dlaň a rozbehol sa do boru, ľahko, ako mladý pes. # pokaz: wilk # dalej
    }
- else:
    ~ zapiski += tropy_7
    Biely vlk zostal posledný. Jaromir mu položil ruku na hlavu. – Choď, Franek – povedal. – Si slobodný. – Vlk mu oblizol dlaň a rozbehol sa do boru, ľahko, ako mladý pes. # pokaz: wilk
    Na ceste ostala tá jedna, v bielej košieľke. Jaromir k nej podišiel{ ekwipunek ? wstazka_marysi:, uviazal jej do vlasov svoju vyblednutú stužku} a podal jej ruku. Chytila ju hneď, pevne, tak ako kedysi. – Ideme domov, ocko? – spýtala sa. – Ideme – povedal. Odišli spolu do boru a bór ich prijal bez šuchotu. V chalupe Hanky zhasla hromničná svieca. # pokaz: marysia # dalej
}
-> epilog_miejsce

= ostatni_ogien
# tlo: pozar_boru
Jaromir vytiahol kresadlo. Bolo malé, sčernené a pamätalo ruky dedka, ktorý ho vyhrabal z popola po chalupe bylinkárky.
– Nie – povedal Pán lesa. Tentoraz jeho hlas nešiel odvšadiaľ, ale z jedného miesta. – Maćkov vnuk. Nie. # pokaz: leszy
Jaromir sa {cena_caluna == cena_zdrowie:dovliekol na nohách, ktoré necítil,|rozbehol} na okraj mladiny, tam kde sivý lišajník podišiel už až k samým ohradám, a udrel. Raz. Druhý raz. Tretia iskra skočila do suchého machu – a ten sa chytil v jedinej chvíli, a po ňom smreky, a za smrekmi bór, tak ako horí všetko, na čo celé roky nespadla ani kvapka dažďa. # pokaz: ogien # dalej
Zahučalo, akoby zem vzdychla. Žiar udrel Jaromirovi do tváre, zavanulo živicou a spálenou srsťou. Z boru, smerom k dedine, sa hnali srny, diviaky, zajace, oslepené, nedbajúc na ľudí. Družina zavyla jedným hlasom. Rusalky sa vrhli k jazeru, mamuny za nimi, licho sa rozplynulo s prvým dymom.{ los_figurki == figurka_w_skrzyni: V Jaromirovej chalupe pukla truhlica pod posteľou a z jej škár sa vyvalil dym: figúrka, ktorú nevzala nijaká pec, horela konečne ako obyčajné drevo.} Deti spod duba utiekli do boru; z hĺbky boru sa ešte nieslo ich nôtenie. Prerušilo sa v polovici a viac nezačalo.
Pán lesa stál v plameňoch a neutekal. Kôra na jeho tvári praskala, parožie horelo ako suché raždie v jánskom ohni a oči sa dívali na Jaromira pokojne, až do konca.
– Zrátané – povedal ešte. A zrútil sa s praskotom, ako padá starý dub. # pokaz: runal
{ wilk_zywy():
    { wilk_przy_mnie():
        Biely vlk stál pri Jaromirovi až do konca a ani sa nepohol, hoci mu iskry pálili srsť. # pokaz: wilk
    - else:
        Biely vlk skočil do ohňa za svojím pánom. Antek zavyl, akoby horel on sám.{ obietnica_antkowi: Nikto vlka nedostal – tak to Jaromir Antkovi sľúbil. Vzal si ho oheň.}
    }
}
{ not marysia_odzyskana:
    Z dymu vybehla malá v bielej košieľke, rovno Hanke do náručia. Hanka ju objala – a v tej istej chvíli zhasla hromničná svieca. V náručí jej zostal iba teplý popol.
}
{ zastaw_u_leszego == zastaw_cien:
    Tieň sa k Jaromirovi nevrátil. Zhorel pod dubom so všetkým ostatným.
}
Kliatba bylinkárky sa začala ohňom a ohňom sa aj skončila. Ale vietor sa obrátil. Plamene preskočili mladinu{ cialo_kopii == pod_mlodnikiem:, prešli po malom hrobe s kolom a červenou stužkou} a vrhli sa na dedinu – na stodoly, na doškové strechy, na chalupy, v ktorých plakali deti.
# pytanie: Čo urobí Jaromir?
*   [Bežať do vlastnej chalupy, po Hanku{ marysia_odzyskana: a Marysiu}.]
    ~ noc_pozaru = antek_pod_stodola
    Jaromir {cena_caluna == cena_zdrowie:sa dovliekol domov na zmeravených nohách|dobehol domov}, vyniesol{ marysia_odzyskana: Marysiu a} Hanku na lúku, a keď sa obrátil, uvidel Antka. Antek sám išiel k stodole Stašovcov, ktorá stála najbližšie pri mladine, a začal rúbať jej steny{ cena_caluna == cena_antek: ľavou rukou}, aby ju zvalil skôr, ako po nej oheň prejde na ostatnú dedinu. Rúbal, až mu nad hlavou začala horieť strecha. Kričali naňho, aby utekal. Odkríkol len: – Franka mi stráž! – a nebolo jasné, ktorého. # pokaz: stodola
    Stodola sa zrútila aj s ním – a plamene sa zastavili na zvalených trámoch. # pokaz: stodola_runela
    Jadwisia presedela do rána v popole s malým Frankom na kolenách. # dalej
*   [Hasiť plamene na okraji ohrád sám.]
    ~ noc_pozaru = oslepl
    Jaromir sa vrhol sám – s kabátom, s mokrým vrecom, s holými rukami – a tĺkol plamene na okraji ohrád, až kým ľudia s vedrami nestihli vyliať na strechy všetku vodu zo studne. # pokaz: gaszenie
    Oheň neprešiel. Ale ráno už Jaromir nevidel ani svetlo, ani Hanku, ktorá nad ním plakala v blate. Žiar mu vypálil oči. # dalej
*   [Orať priesek s celou dedinou.]
    ~ noc_pozaru = pol_wsi
    – Kone! – skríkol Jaromir. Kováč zapriahol kone do pluhu a chlapi orali pred ohradami čierny pás zeme a ženy hasili oheň mokrými plachtami. # pokaz: przesieka
    Bránili každú strechu zvlášť a oheň bral to, čo nestihli ubrániť. Na svitaní ležala polovica Zapadliny v popole: stodoly, chlievy, štyri chalupy. Ľudia žili. Ale zima zastihla pol dediny bez strechy nad hlavou. # dalej
-   Keď vyšlo slnko, bór bol čierny, kam oko dovidí. Nestál ani jeden strom. Nad spáleniskom sa vznášal dym. Neskôr sa hovorilo, že tam, kde v srdci boru stál dub, leží iba kopa sivého popola, prikrytá prvým snehom. # pokaz: popiol # dalej
~ zapiski += (pan_lasu_12, zielarka_5, dzieci_3)
{ wilk_zywy():
    ~ zapiski += tropy_7
}
-> epilog_ogien

= epilog_granica
# tlo: epilog_dab
# ozdobnik
O pol storočia neskôr, na Dušičky, sedel starý Jaromir na lavičke pod krížom na okraji boru.{ cena_caluna == cena_zdrowie: Nohy mal zakrútené do kožucha, ako už päťdesiat rokov.}{ bielmo(): Na ľavé oko už pol storočia videl iba hmlu.} Popri lese opäť stáli kaplnky – postavili ich prvú jar, všetci spolu, a odvtedy ich každé pokolenie obnovovalo pred Turícami.
{ zoladz_zasadzony:
    Tesne pri pni po Starom dube rástol mladý dub, už vyšší ako strecha. Za pol storočia vrástol do starého dreva a pohltil sekeru; z kôry, vo výške kolien, trčalo iba zhrdzavené ostrie, na ktoré sa nikto neodvážil siahnuť. # pokaz: dab
}
{ marysia_odzyskana:
    Okolo Jaromira sedeli deti Marysie – tri, pehavé, s jamkami na lícach – a deti jej detí.{ cena_caluna == cena_umowa: Marysia, už šedivejúca, nosila každý rok v svätojánsku noc bochník na ploché kamene. Nikomu nehovorila prečo.}
- else:
    Okolo Jaromira sedeli Antkove vnúčatá – vlastných sa Jaromir nedočkal.
}
Hanka sedela vedľa, s najmladším na kolenách, a lúpala mu jablko.
– Dedko, a porozprávaj o Pánovi lesa – poprosilo najmladšie.
{ zastaw_u_leszego == zastaw_cien:
    Jaromir sa usmial. Deti sa už dávno nečudovali, že dedko nevrhá tieň. Tak to už bolo.
}
– Asi sedemdesiat rokov predtým, ako som sa prvý raz pozrel smerom k lesu – začal – zišiel môj dedko do Zapadliny s uzlíkom na pleci…
{ zoladz_zasadzony:
    Bór za jeho chrbtom stál ticho. V svätojánsku noc pálili deti zo Zapadliny jánske ohne pod mladým dubom, skákali cez oheň a zbierali spod stromu vlaňajšie žalude, a ráno všetky spali vo vlastných posteliach. Za pol storočia sa nestratilo ani jedno. {marysia_odzyskana:Jedno z vnúčat Marysie|Najmladšie z Antkových vnúčat} teraz zvieralo v hrsti žaluď a počúvalo s otvorenými ústami. # pokaz: zoledzie # dalej
- else:
    Bór za jeho chrbtom stál ticho. Iba niekedy, v svätojánsku noc, zmizlo z niektorej chalupy dieťa – a vrátilo sa po niekoľkých nociach, voňajúce živicou, a nepamätalo si nič. Naposledy sa na niekoľko nocí stratila malá od Kowalczykovcov. Teraz sedela najbližšie a počúvala s otvorenými ústami. # dalej
}
-> koniec_opowiesci

= epilog_miejsce
# tlo: epilog_bor
# ozdobnik
O pol storočia neskôr chodili deti zo Zapadliny do lesa na huby a čučoriedky a vracali sa celé, s košíkmi plnými po okraj. Starí hovorili, že bór už dávno nikoho nezvádza z cesty. Že chodníky vedú tam, kam človek ide.
{noc_ognia == ratowal_szymona:Pod mladinou, vedľa brezového krížika, ktorý tam kedysi zarazil starý Staš|Pri kaplnke na okraji boru} bol hrob bez tela, s krížom z borievky.{ przysiega_ksiedzu: Na cintoríne v Bukowci mu farár miesto nedal.}
{ pozegnanie == pozegnal_sie:
    Nápis vyryla Hanka sama, keď už bola stará: Jaromir. Za plotom.
- else:
    Nápis tam nebol. Hanka položila na kríž jeho čiapku a vietor ju odtiaľ nikdy nestrhol. # pokaz: czapka
}
{ marysia_odzyskana:
    Marysia tam chodila každé Dušičky s vlastnými deťmi. Kládla na hrob misku kaše a hrnček vody a ráno bola miska prázdna a vedľa nej ležal čerstvý, zelený dubový list.{ cena_caluna == cena_umowa: V svätojánsku noc ešte nosila bochník na ploché kamene – až do konca života.} # pokaz: miski
- else:
    Hanka tam chodila každé Dušičky, kým jej stačili sily. Kládla na hrob dve misky – veľkú a malú – a ráno boli obe prázdne. # pokaz: miski
}
Niekedy deti, čo zbierali raždie, videli na okraji boru vysokého starca v klobúku z machu. Stál bez pohnutia, a keď mu niektoré z detí zakývalo, kývol hlavou – pomaly, vážne. # pokaz: starzec
{marysia_odzyskana:Jeho pravnučka|Malá od Antkovcov} sa raz zastavila na okraji boru a prvý raz sa sama pozrela smerom k lesu. Z druhej strany si ju ktosi dlho prezeral, akoby si spomínal, odkiaľ pozná tú tváričku. # pokaz: prawnuczka # dalej
-> koniec_opowiesci

= epilog_ogien
# tlo: epilog_wrzosy
# ozdobnik
O pol storočia neskôr na kopcoch za Zapadlinou nerástlo nič okrem vresu a borievok. Bór už nevyrástol. Drevo vozili zďaleka, spoza Bukowca, a v chalupách chýbalo kúrivo. Mladí odchádzali do mesta a nevracali sa. Zo Zapadliny ostali tri chalupy; po ostatných – kopčeky zarastené žihľavou.
{ noc_pozaru:
- antek_pod_stodola:
    Na cintoríne v Bukowci, pod brezou, bol Antkov hrob. Franek, už šedivý, ho každú sobotu zametal.
- oslepl:
    Päťdesiat rokov už Jaromir nevidel nič. Ostal mu sluch – a vietor, ktorý už nemal v čom šumieť.
- pol_wsi:
    Chalupy postavené po požiari boli z tehly, ktorú vozili z mesta. Ľudia hovorili, že tehla nehorí.
}
{ cena_caluna == cena_zdrowie:
    Jaromir sedel s nohami zakrútenými do kožucha – od tých Dušičiek ich nič nezohrialo.
}
Kliatby už nebolo. Nikto sa v svätojánsku noc nestrácal.{ cena_caluna == cena_umowa: Pracie palice pri jazere nepočul nikto – okrem Marysie, ktorá každý rok nosila bochník na ploché kamene.} Na Dušičky stála na parapetoch kaša a voda a ráno tam stáli nedotknuté.
Iba raz, na jar, priniesla {marysia_odzyskana:vnučka|Antkova vnučka} z kopca čosi v hrsti a ukázala to Jaromirovi na otvorenej dlani. Bol to malý, zelený klíčok smreka, mäkký a teplý ako vtáča. # pokaz: kielek
– Mám ho zahodiť? – spýtala sa. – A aké to bolo, dedko, keď tu bol les?
Jaromir držal klíčok v prstoch.{ noc_pozaru == oslepl: Nevidel ho, ale cítil ho.} Potom jej ho vrátil.
– Zasaď ho – povedal. – Ďaleko od dediny. – Pohodlnejšie sa usadil. – Asi sedemdesiat rokov predtým, ako som sa prvý raz pozrel smerom k lesu, ktorý už nie je… # dalej
-> koniec_opowiesci

= koniec_opowiesci
# ozdobnik
_Koniec._
-> END

=== function bielmo()
~ return dlug_u_jagny && (dlug_jagny == dlug_odmowiony || (not marysia_odzyskana && cialo_kopii != oddane_jagnie))

=== function wilk_zywy()
~ return cena_caluna != cena_franek

=== function wilk_przy_mnie()
~ return wilk_przy_jaromirze && znak_rozpoznania != po_wilku && cena_caluna != cena_franek
