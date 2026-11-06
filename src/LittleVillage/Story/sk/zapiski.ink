// ------------------------------------------------------------
//  Zapiski – bestiariusz. Każda istota ma kilka wpisów (etapów),
//  które fabuła odsłania dopiero wtedy, gdy bohater czegoś się dowie:
//      ~ zapiski += licho_2
//  Kolejność na liście = kolejność kart. Tytuł karty bierze się z
//  najnowszego odsłoniętego wpisu (np. „Jednooka żebraczka” → „Licho”).
//  Wpisy nie mówią więcej, niż w tej chwili wiedzą postacie.
// ------------------------------------------------------------

LIST Zapiski = stwor_1, zielarka_1, pan_lasu_1, starzec_1, polnocnica_1, polnocnica_2, dziad_1, stwor_2, zielarka_2, ogniki_1, uboze_1, pan_lasu_2, poludnica_1, pan_lasu_3, rusalki_1, uboze_2, licho_1, licho_2, licho_3, pan_lasu_4, starzec_2, tropy_1, mamuny_1, odmieniec_1, mamuny_2, tropy_2, pan_lasu_5, strzyga_1, strzyga_2, mamuny_3, starzec_3, ogniki_2, stwor_3, zielarka_3, pan_lasu_6, uboze_3, zytnia_baba_1, zytnia_baba_2, pan_lasu_7, planetnik_1, tropy_3, blednice_1, starzec_4, pan_lasu_8, pan_lasu_9, zielarka_4, tropy_4, dzieci_1, pan_lasu_10, tropy_5, mamuny_4, tropy_6, dzieci_2, pan_lasu_11, pan_lasu_12, zielarka_5, tropy_7, dzieci_3
VAR zapiski = ()

=== function tytul_zapisku(z)
{ z:
    - stwor_1:      ~ return "Stvora z húštiny"
    - stwor_2:      ~ return "Utopenec"
    - zielarka_1:   ~ return "Bylinkárka od jazera"
    - zielarka_2:   ~ return "Bylinkárka od jazera"
    - pan_lasu_1:   ~ return "Pán lesa"
    - pan_lasu_2:   ~ return "Pán lesa"
    - pan_lasu_3:   ~ return "Pán lesa"
    - pan_lasu_4:   ~ return "Pán lesa"
    - starzec_1:    ~ return "Starec v klobúku z machu"
    - starzec_2:    ~ return "Starec v klobúku z machu"
    - polnocnica_1: ~ return "Polnočnica"
    - polnocnica_2: ~ return "Polnočnica"
    - dziad_1:      ~ return "Starec s ninerou"
    - ogniki_1:     ~ return "Bludičky"
    - uboze_1:      ~ return "Škriatok"
    - uboze_2:      ~ return "Škriatok"
    - poludnica_1:  ~ return "Poludnica"
    - rusalki_1:    ~ return "Rusalky"
    - licho_1:      ~ return "Jednooká žobráčka"
    - licho_2:      ~ return "Licho"
    - licho_3:      ~ return "Licho"
    - tropy_1:      ~ return "Pod oknom"
    - tropy_2:      ~ return "Biely vlk"
    - pan_lasu_5:   ~ return "Pán lesa"
    - mamuny_1:     ~ return "Mamuny"
    - mamuny_2:     ~ return "Mamuny"
    - odmieniec_1:  ~ return "Podhodenec"
    - strzyga_1:    ~ return "Mŕtvy, ktorý nechladne"
    - strzyga_2:    ~ return "Strzyga"
    - mamuny_3:     ~ return "Mamuny"
    - starzec_3:    ~ return "Starec v klobúku z machu"
    - ogniki_2:     ~ return "Bludičky"
    - stwor_3:      ~ return "Utopenec"
    - zielarka_3:   ~ return "Bylinkárka od jazera"
    - pan_lasu_6:   ~ return "Pán lesa"
    - uboze_3:      ~ return "Škriatok"
    - zytnia_baba_1: ~ return "Žena v raži"
    - zytnia_baba_2: ~ return "Žitná baba"
    - pan_lasu_7:   ~ return "Pán lesa"
    - planetnik_1:  ~ return "Planetník"
    - tropy_3:      ~ return "Biely vlk"
    - blednice_1:   ~ return "Svetielka"
    - starzec_4:    ~ return "Starec v klobúku z machu"
    - pan_lasu_8:   ~ return "Pán lesa"
    - pan_lasu_9:   ~ return "Pán lesa"
    - zielarka_4:   ~ return "Bylinkárka od jazera"
    - tropy_4:      ~ return "Biely vlk"
    - dzieci_1:     ~ return "Deti spod duba"
    - pan_lasu_10:  ~ return "Pán lesa"
    - tropy_5:      ~ return "Biely vlk"
    - mamuny_4:     ~ return "Mamuny"
    - tropy_6:      ~ return "Biely vlk"
    - dzieci_2:     ~ return "Deti spod duba"
    - pan_lasu_11:  ~ return "Pán lesa"
    - pan_lasu_12:  ~ return "Pán lesa"
    - zielarka_5:   ~ return "Bylinkárka od jazera"
    - tropy_7:      ~ return "Biely vlk"
    - dzieci_3:     ~ return "Deti spod duba"
}
~ return ""

=== function tresc_zapisku(z)
{ z:
- stwor_1:
    Tvor o tri hlavy vyšší než človek, zhrbený, s rukami visiacimi takmer po zem a s dlhými mokrými vlasmi. Páchne bažinou. Prišiel z hmly, keď stíchli svrčky aj žaby, a odišiel smerom k močiarom. {czary.noc:Maciek ho uvidel ešte raz – na prahu vlastnej chaty.|Maciek ho videl iba raz – a nikdy na to nezabudol.}
- stwor_2:
    Po pol storočí sa vrátil, keď deti topili Morenu – {obejrzal_sie:sivá ruka stiahla slamenú figúru pod vodu|čosi myklo slamenou figúrou zospodu a stiahlo ju pod vodu}.{figurka_u_staruchy && los_psa == oswojony: „Také ako ona neumierajú. Čakajú.“}{not figurka_u_staruchy || los_psa == oswojony: Starí hovoria, že kto sa utopí bez farára, nejde ani do neba, ani do pekla, ale ostane vo vode. Na dne drží utopenec duše utopených pod hlinenými hrncami obrátenými dnom nahor a v noci ich prevracia jeden za druhým. Keď niektorý hrniec praskne, duša vyletí bublinou na hladinu.}
- zielarka_1:
    Bývala pri jazere, tam, kde z trstiny trčia zuhoľnatené brvná. Liečila ľudí bylinami, kým sa nezačala po nociach zhovárať s kýmsi, koho nikto nevidel. Keď sa v dedine začalo kaziť mlieko a hynúť dobytok, sedliaci jej zatĺkli dvere doskami a chatu podpálili. Umierajúc preklala dedinu aj každého, kto v nej raz bude bývať. Tí, čo ju upálili, sa nedožili zimy – jeden po druhom vošli do bažiny.
- zielarka_2:
    Kliatba nevyhasla spolu s ohňom. Dedko Maciek ju nosil v sebe celý život – {figurka_u_staruchy:a zaplatil za ňu viac, než chcel komukoľvek prezradiť|a synovi o nej hovoril ako o rozprávke, hoci sám sa jej nikdy nesmial}.{chata_macka != nad_jeziorem: Dodnes si nikto v Zapadline nestavia dom pri jazere na západnej strane.}
- pan_lasu_1:
    Starí ho nazývajú všelijako – Borový, Pán lesa – a tí najstarší nijako, lebo menom je lepšie ho nevolať. Býva v najhlbšej časti boru a stráži ho, ako gazda opatruje svoj dvor. Kto ta vojde bez opýtania, toho zvádza z cesty, až chodí dokola. Kto zablúdi, nech si vyzlečie šaty a oblečie si ich naruby – vtedy Borový stratí stopu, lebo si myslí, že má pred sebou jedného zo svojich.
- pan_lasu_2:
    Sú stromy, ktoré stráži ako vlastné srdce. Starý dub na kraji boru bol hranicou – kým stál, les sa končil tam, kde sa končil.{ franek_scial_dab: Prvý raz doň zaťal Franek.}{pracowal_w_tartaku: Starý Wawrzyniec z píly vravieval, že keď prví ľudia zišli do tejto doliny, museli sľúbiť, že za Starý dub so sekerou neprejdú – a až potom les ustúpil – a za to si raz za pokolenie berie na pár nocí dieťa. „Kaplnky sú ako klince v plote. Vytrhneš jeden, plot ešte stojí. Vytrhneš všetky…“}
- pan_lasu_3:
    {ostrzezenie_poludnicy:Poludnica to povedala priamo: Pán lesa sa prebúdza.{pomylki_poludnica == 0: S každým vyrúbaným stromom je jeho spánok plytší.}|Po vyrúbaní Starého duba sa čosi zmenilo. V záhradách, medzi hriadkami, za jedinú noc vyrástol mach ako pod najstaršími smrekmi a zeleň od boru stála každé ráno bližšie k plotom.}
- pan_lasu_4:
    Keď Urbaniakovi ľudia vykopali kaplnky pod borom, v jamách po nich cez noc vyrástli mladé smreky. Bór akoby každým dňom stál bližšie k dedine.{ kapliczki_drogi == obronil_kapliczke: Zostala len jediná kaplnka – tá, ktorú Jaromir bránil.}
- starzec_1:
    {poszedl_po_wstazke:Stál v šere boru, taký vysoký, že by sa musel zohnúť, aby vošiel do chaty. Kožuch obrátený srsťou von, prepásaný povrázkom, klobúk z machu so širokým okrajom a pod ním len dva jasné body očí. Opieral sa o hrčovitú palicu, z ktorej rástli listy. V ruke držal stužku Hanky.|Ktosi ho nakreslil do knihy pána Ignacyho: starec v šatách obrátených naruby, v klobúku z machu.}{czytal_ksiege: Pod kresbou v knihe stálo: „Kto ho stretne, nech urobí to isté čo on. Ten prichádza z druhej strany, kde je všetko naopak.“}
- starzec_2:
    Prišiel na svadbu Jaromira a Hanky – zastal na kraji lesa a kýval hlavou do taktu svadobnej hudby.{ poszedl_po_wstazke: Nezostarol ani o deň.} {weselny_gosc == ugoszczony_kolaczem:Prijal svadobný koláč a pokynul ako gazda gazdovi.|{weselny_gosc == zapytany:Prehovoril hlasom ako vietor v korunách stromov: „Dobre sa ženíš, Maćkov vnuk. Stráž ju.“|Stál tam až do prvých kohútov.}}
- polnocnica_1:
    Prichádza po polnoci k nemluvňatám. Najprv sa urobí zima, potom v izbe čosi zašuchoce ako suché lístie. Antek videl len čosi svetlé nad kolískou a čierne vlasy až po dlážku. Dieťa namiesto plaču sípe, akoby nemohlo chytiť dych. Bojí sa železa pod vankúšom.{rada_jaromira == ksiega_rada: Kniha pána Ignacyho dodáva, že rozsypaný mak musí prerátať zrnko po zrnku – a rátať vie len do úsvitu.}
- polnocnica_2:
    Zblízka ju vidno celú: vznáša sa nad doskami a nedotýka sa ich chodidlami, v rubáši rozstrapkanom pri spodnom okraji, s tvárou vychudnutou ako umrlčia lebka, s očami ako dve čierne studne a s drobnými ostrými zubami. {rada_jaromira == hanka:Babka Hanky hovorí, že je to duša matky, ktorá zomrela pri pôrode skôr, než ju farár stihol uviesť do kostola – vlastné dieťa nepritúlila, a tak chodí k cudzím. A že nikdy nepríde sama od seba: niekto jej musí ukázať cestu. }{polnocnica == przegnana_nozem:Zosiu zachránil nožík zastrčený pod vankúš.|{polnocnica == policzyla_mak:Zosiu zachránil mak – rátala do úsvitu a nestihla.|Zosia prežila, ale na čele jej zostala sivá škvrnka ako od dotyku špinavého prsta.}}
- dziad_1:
    Zaklopal na Štedrý večer, len čo si rozlomili vianočnú oblátku: zhrbený, v zdrapoch, s ninerou na chrbte, s očami bielymi ako mlieko. {wpuscil_dziada:Zjedol málo, zaspieval pieseň o dušiach, ktoré sa v túto noc vracajú do svojich chalúp, a odišiel do tmy, hoci nikto nevidel, ktorým smerom. Na odchode pošepol Jaromirovi: „Voniaš lesom, synak.“|Nevpustili ho. Odišiel k boru a uprostred poľa sa stratil v snehovej metelici.} Na Štedrý večer sa žobráci od prahu neodháňajú, lebo človek nikdy nevie, kto prišiel – niekedy sa v prestrojení vracia duša niekoho z rodiny, aby sa pozrela, či na ňu ešte pamätajú.
- ogniki_1:
    Bledé svetlá nad močiarmi pri lávke, ktoré sa zažínajú za súmraku a chichocú sa ako niekto, kto dostal darček. Baby hovoria, že sú to tí, čo upálili bylinkárku od jazera – vošli do bažiny a dodnes tam po nociach svietia. Kto pôjde za takou bludičkou, ten sa už nevráti.
- uboze_1:
    Maličký starček nie väčší ako mačka, v zaplátanom kabáte a červenej čiapočke, so šedivou bradou ovinutou okolo kurích nožičiek. Býva za pecou v starých chalupách. Kto škriatka kŕmi, tomu sa v gazdovstve darí; kto ho vyženie, ten privolá na dom biedu. Škriatok prichádza spolu s prvým gazdom a zostáva, kým chalupa stojí. Keď zhorí, odíde s dymom a už sa nevráti.
- uboze_2:
    {uboze == nakarmione:Odvďačuje sa potichu: v komore sa nemnožia myši, v krčahu je vždy viac mlieka, než sa nalialo{rozdzial_dziewiaty:, a v hladnú zimu múka akosi nechce dôjsť}. Lenže čo v jednej chalupe pribudne, to v druhej ubudne – u Stašovcov počas tých istých mesiacov kyslo mlieko.|{uboze == przegnane:Odkedy ho vyhnali, akoby ich chalupa nemala rada: sliepky prestali znášať a v komore sa každú chvíľu niečo kazilo.|Nikto ho už potom nevidel. Iba ráno býval popol na pripecku rozhrabaný ako od sliepky, ktorá hľadá miesto na noc.}}
- poludnica_1:
    Vysoká biela žena v dlhej košeli. Na pravé poludnie prichádza na polia. Chodidlami sa nedotýka zeme, oči má biele, bez zreníc, a v ruke kosák. Kto pracuje v najväčšej horúčave, tomu dáva hádanky – za každú chybu sekne kosákom.{ not figurka_u_staruchy: Vraj bývala kedysi najlepšou žnicou v okolí: stavila sa s paholkami, že sama do poludnia požne celý lán, a neodišla z poľa ani v najväčšej páľave. Večer ju našli s kosákom v ruke a s klasmi vo vlasoch.}{ poludnica_uklon: Pred odpoveďou z knihy sklonila hlavu.}{ poludnica_darowala: Jednu chybu Jaromirovi odpustila, lebo necúvol pred ostrím.}{ blizna_sierpa: Jaromirovi po nej zostala jazva v tvare polmesiaca.}
- rusalki_1:
    Duše utopených dievčat. Na Turíce vychádzajú z jazera a tancujú v mesačnom svetle – mladé, bledé, v mokrých ľanových košeliach, s venčekmi zo sitiny a s očami celkom čiernymi, bez bielka. Vábia spevom bez slov a sťahujú do hlbiny každého, kto sa dá zlákať. Ukazujú sa len od Turíc do svätého Jána; po zvyšok roka spia v bahne na dne. Jednou z nich bola Kaśka Wójciková.{ratunek_franka == piolunem: Paliny sa boja viac než ohňa – ale na tú, ktorá ju dala, nezabúdajú. Voda nevrátila venček Hanky.|{ratunek_franka == krzyzem: Kríž ich nepáli – „boli sme tu pred ním“. Pustili Franka, ale voda nešla spať hladná – ráno našli v sitine Bartka, mlynárovho syna.| Kaśka pustila Franka, keď ju Hanka zavolala menom. Jaromirovi na líci, tam, kde sa ho dotkla, zostala biela, studená škvrna.}}
- licho_1:
    Malá, zhrbená žobráčka, dospelému sotva po pás, zavinutá do toľkých handier, že nevedno, kde sa jedna končí a začína druhá. Má len jedno oko, s červeným lemom; na mieste druhého je hladká sivá koža. Jej tieň je pridlhý a padá proti slnku, opačným smerom než všetky ostatné. Kto ju uvidí pod svojím plotom, toho na druhý deň postihne nešťastie.
- licho_2:
    Babka Hanky ho nazvala menom: Licho, čo nespí. Chodí od chalupy k chalupe a sadá si tam, kde sa mu dobre vodí – kde rúbu les a sväté veci presúvajú z kúta do kúta. Do domu nevojde, kým ho niekto nezavolá. Vyhnané ide k susedovi; pohostené odchádza sýte. Starenka počula od svojej matky, že druhé oko zostalo v bore, lebo Licho sú oči, ktoré Pán lesa posiela medzi ľudí – sama nevie, či je to pravda.
- licho_3:
    {licho_noc == ugoszczone:Keď dostalo slaninu, odišlo cestou k píle – a ráno Urbaniakovi praskol pílový list a v stajni mu zdochol najlepší kôň.|{licho_noc == odpedzone:Odohnané ohorkom utieklo smerom k vyhni – v tú noc kováčovi vyhňa zhorela.|Do rána škrabalo pod dverami a lákalo vôňou chleba a doska, na ktorú klopalo, za jedinú noc spráchnivela. Nikto mu neodpovedal.}} V októbri odišlo cestou popod bór a vošlo medzi stromy, akoby ho niekto zavolal.
- tropy_1:
    Ráno po svadbe bol celý dvor biely od inovate – len pod oknom novej izby sa inovať roztopila do širokého oválu, až po holú zem, akoby tam čosi veľké a teplé preležalo celú noc, stočené do klbka. Zem bola ešte vlažná. Hanka to miesto zasypala popolom a prikázala, aby o tom nikto nehovoril.
- mamuny_1:
    Bývajú pri jazere. Samy rodia deti škaredé a neduživé, a tak kradnú ľuďom zdravé – kým dieťa nie je pokrstené – a do kolísky podhadzujú svoje. V lete po nociach počuť, ako tlčú pracími palicami bielizeň o kamene. Babka Hanky hovorí, že perú rubáše pre tých, čo v dedine zomrú do budúcej jari – a nad každým rubášom volajú niečie meno. Lepšie nenačúvať. Boja sa červenej farby, železa a hromničnej sviece.
- mamuny_2:
    Vysoké a hrbaté, s hlavami priveľkými na chabé krky a s vlasmi ako suché vetvičky, v cároch z machu a kôry. Ich dotyk je studený a mokrý.{noc_mamun == zaslonil: Keď nedostanú dieťa, vezmú matke mlieko.} Vedia pospevovať tak, že spiaci sám sníme z kolísky ochranu.{podmiana:{uklad_z_mamunami == oddany_skarb: Za Marysiu si vzali Jaromirov detský poklad a hodili ho do jazera.|{uklad_z_mamunami == dar_swietojanski: Za Marysiu im Jaromir sľúbil, že im každý rok vo svätojánsku noc položí chlieb a venček na kameň pri brehu. Ak zabudne, prídu si po svoje.|{uklad_z_mamunami == oddane_lata: Za Marysiu si od Jaromira vzali roky života – sluchy mu zošediveli ako starcovi.| Výmenu zvrátila až voda varená vo vaječných škrupinách.}}}}{sposob_na_odmienca == chrzest_odmienca: Nezabudnú, že ich dieťa obrátili na triesky.}
- odmieniec_1:
    Dieťa mamún, podhodené namiesto ľudského. Zďaleka vyzerá ako ono, ale je ťažšie a studené, kožu má ako kôru a oči tmavšie než ktorékoľvek dieťa. Neplače, iba bez prestania je, a keď si myslí, že sa nikto nepozerá, usmieva sa ako stará žena. Výmenu možno zvrátiť len do siedmich dní.
- tropy_2:
    Ohromný vlčí samec, väčší než ktorýkoľvek iný v okolí, taký vychudnutý, že pod bielou srsťou vidno všetky rebrá. Vedie svorku, ale sám k maštaliam nechodí.{noc_wilkow == bronil_obory: Jediným zavytím ju dokáže odvolať od maštale.} Na prednej labe má prstenec vydratej, redšej srsti, na tom istom mieste, kde mal Franek tri šrámy od pazúrov. Oči má ľudské: jasné, smutné, so zreteľnou zrenicou. Antek hovorí, že by si ich nepomýlil so žiadnymi inými.{oblawa_wilk == wydal_wilka: Zasiahla ho guľka horára Pawlika, ušiel do boru a na snehu za sebou nechal krvavú šmuhu. Odvtedy jeho vytie znie inak.| Prežil poľovačku. Na druhé ráno ležal na pni pri plote zajac s prehryznutým krkom.}{noc_na_kladce != (): V noci, keď Józek išiel v spánku na lávku, sa po hrádzi za močiarmi mihlo čosi biele – a utopenec na jeho vytie otočil hlavisko.}
- pan_lasu_5:
    Mladina, ktorá sa za niekoľko rokov prisunula od boru až k samým ohradám, sa stala úkrytom pre vlkov. Starí hovoria, že les nerastie smerom k dedine bez príčiny: najprv prídu stromy, potom zvieratá a nakoniec ten, kto im vládne.
- strzyga_1:
    {sprawdzil_zeby:Starý Wójcik mal dva rady zubov – jeden za druhým, drobných a ostrých ako u šťuky.|Ľudia hovorili, že starý Wójcik sa narodil so zubami.} Kto sa narodí so zubami alebo s dvoma srdcami, má dve duše. Po smrti jedna ide k Bohu a druhá zostane v tele a nedá mu pokoj: telo nechladne, líca sú ružové, viečka sa nedovierajú. Okolo polnoci taký mŕtvy vstáva. Kedysi ho pochovávali tvárou k zemi, s kosákom nad hrdlom a s makom v truhle – aby sa nemohol obrátiť, aby sa poranil, keby sa pokúsil vstať, a aby ho mak uspal až do Posledného súdu.
- strzyga_2:
    {polnoc_strzygi == na_twarz:Obrátený tvárou k doske sa zmietal až do prvých kohútov a uhryzol Antka do ruky. Rana sa dlho nechcela zahojiť.|{polnoc_strzygi == sierp_przy_szyi:Keď sa kosák dotkol jeho krku, vytiekla z neho čierna, hustá krv.|Utíšila ho až hromničná svieca v dlaniach; vtedy vyslovil meno dcéry.}} {pochowek_wojcika == pochowany_za_murem:Pochovali ho za cintorínskym múrom, tvárou k zemi, a viac sa nevrátil.|{pochowek_wojcika == pochowany_z_makiem:Spočinul v posvätenej zemi s makom Hanky na hrudi a viac sa nevrátil. Farár ju pre ten mak až do Veľkej noci nepripustil k prijímaniu.|{trzy_noce == rozkopany_grob:Vrátil sa po troch nociach a stál pod oknom nad kolískou Marysie, kým Jaromir s Antkom nerozkopali jeho hrob.|Vrátil sa po troch nociach. Odišiel od okna, za ktorým spala Marysia – ale v to ráno našli mŕtvu Wójcikovú.}}}
- mamuny_3:
    Nad bielizňou volajú menom tých, pre ktorých perú rubáše. Wójciková im v júni načúvala spoza trstiny a začula len jedno meno. V novembri jej zomrel muž.{trzy_noce == czuwanie_przy_kolysce: Pomýlila sa – alebo to druhé nechcela počuť.}
- starzec_3:
    Na Štedrý večer nechala Hanka na stole prestreté pre pocestného. Ráno ležala na tanieri, na mieste oblátky, hrsť čerstvého zeleného machu – uprostred zimy.
- ogniki_2:
    Keď sa figúrka {przeszukal_zgliszcza && not figurka_w_bagnie:vrátila do Zapadliny|vynorila}, bludičky začali chodiť až k plotom – každú noc bližšie, akoby čakali, kým niekto otvorí dvere.{los_figurki == figurka_w_skrzyni: Horia ďalej, ale za lávkou, ďaleko od plotov.}{los_figurki == figurka_pod_kapliczka || los_figurki == figurka_u_jagny || los_figurki == figurka_u_stwora: Zhasli všetky naraz v tú istú noc, keď figúrka prestala volať.}
- stwor_3:
    Vrátil sa na močiare spolu s figúrkou. Deťom v dedine sa o ňom sníval ten istý sen: stojí pod lávkou v čiernej vode, prevracia hlinené hrnce, nazerá pod každý a potom sa pýta: „Kde je moja bábika?“{figurka_u_staruchy: Na ramene má hlbokú, starú jazvu po sekere dedka Maćka.}{noc_na_kladce == siekiera_na_kladce: Jaromir ho poranil sekerou a on mu pazúrmi rozryl plece.}{noc_na_kladce == figurka_dla_stwora: Keď dostal figúrku, pustil chlapca a pritisol si ju k hrudi ako matka dieťa. Ponárajúc sa, strhol so sebou starú lávku.}{noc_na_kladce == latarnia_na_wodzie: Ohňa sa bojí viac než železa – utiekol pred horiacim olejom.}
- zielarka_3:
    {zaufal_jagnie:Jagna hovorí, že figúrka je bábika: bylinkárka ju vyrezala z koreňa vytiahnutého z bažiny a dala jej meno toho, kto býva vo vode. Kto má bábiku, za tým on ide. Ohňa sa bábika nebojí – utíši ju len posvätená zem.{odrzucil_figurke: Odstrčenú ju už nemožno nikomu dať.}|Ohorená figúrka od jazera sa {przeszukal_zgliszcza && not figurka_w_bagnie:vrátila do Zapadliny|vynorila} po viac než šesťdesiatich rokoch – a spolu s ňou sa vrátili sny.}{los_figurki == figurka_pod_kapliczka: Leží teraz pod kaplnkou, a kde – to vie iba Jaromir.}{los_figurki == figurka_u_jagny: Jagna ju odniesla so sebou, tak ďaleko, aby ju utopenec nepočul.}{los_figurki == figurka_w_skrzyni: Oheň ju nevzal. Leží v truhlici pod posteľou, omotanej reťazou.}{los_figurki == figurka_u_stwora: Teraz ju má ten, kto býva pod lávkou.}
- pan_lasu_6:
    V noci, keď zhoreli kaplnky, prišiel bór k dedine bližšie o celé pole. Stromy, ktoré ráno stáli na mieste strniska, vyzerali, akoby tam rástli roky. Kolíky vytýčené pre Urbaniakovu cestu púšťali výhonky a z pňov na prieseku každé ráno vyrážali nové vetvičky.{droga_do_boru: Cesta došla k prvým veľkým borovicám a tam sa skončila – nikto nechcel rúbať ďalej.}{szarwark && not droga_do_boru && rozdzial_czternasty.pierwszy_snieg_czternasty: Mladina zastala na hranici zhorených kaplniek a už ďalej nerástla.}
- uboze_3:
    Zobudil gazdu šklbaním za vlasy, keď od lesa išiel oheň. Bál sa tak, že sa mu triasla brada. Škriatok si pamätá, kto ho kŕmil.
- zytnia_baba_1:
    Nízka, zhrbená, v bokoch široká ako snop, s tvárou zvráskavenou ako pripečená kôrka chleba a s vlasmi z klasov. Vonia teplým zrnom. Prikrčí sa medzi klasmi a hojdá pred deťmi tým, čo im patrí, ako hrkálkou.
- zytnia_baba_2:
    Starý Staš hovorí, že žitná baba chytá deti v obilí a tam ich nechá – ale Marysiu tam nenechala. Previedla ju cez pole až k lesu, akoby ju niekomu niesla.{pani_w_zbozu_noc == gonil_babe: Kto ju naháňa, ten krúži po poli až do úsvitu a v ranách od stebiel mu zostávajú osiny, ktoré vrastajú čoraz hlbšie.}{pani_w_zbozu_noc == za_spiewem: Spieva hlasom matky – a matke potom zostane hlas puknutý napoly.}{pani_w_zbozu_noc == z_pochodniami: Keď ju hľadá celá dedina, ujde – ale zanechá za sebou udupané pole.}
- pan_lasu_7:
    {rada_przed_borem == rada_ksiedza:Vo farských knihách je zapísané, že raz za niekoľko desiatok rokov zmizne z dediny pod borom dieťa, vždy vo svätojánsku noc. Tie, ktoré sa vrátia, si nič nepamätajú.|{rada_przed_borem == rada_jagny:Jagna hovorí, že les berie deti, keď sa jeho pán prebúdza – nezabíja ich, iba ich drží.|Planetník hovorí, že nad borom sa mraky rozostupujú a odkedy ľudia pamätajú, nespadla tam ani kvapka dažďa.}}
- planetnik_1:
    Vysoký starec v handrách, s bradou rozviatou vetrom a s vrecom na chrbte. Chodí pred búrkou a vedie mraky na povraze. Kto mu dá chleba, nad jeho poľom sa mraky neprietrhnú – a kto sa ho na niečo opýta, zaplatí poľom.
- tropy_3:
    {oblawa_wilk == wydal_wilka:Rana po guľke sa zle zahojila. V bore išiel za Jaromirom celú noc – nie preto, aby ho strážil.|Našiel Jaromira v bore, keď ten šiel za hlasom Franka.{przejscie_bagna == za_wilkiem: Previedol ho cez bažinu. Keď k nemu Jaromir natiahol ruku a nazval ho Frankom, chňapol zubami – výstražne, ale do krvi.}}
- blednice_1:
    Bledé gule svetla nad bažinou v hĺbke boru, veľké ako detská hlava. V každej guli sedí schúlená drobná postava s očami ako čierne zrnká. To nie sú bludičky spod dediny: nežmurkajú zďaleka, ale priplávajú blízko, pípajú ako vtáčatá a pozývajú.{przejscie_bagna == za_blednicami: Vodia človeka dokola jedného trsu až do úsvitu a berú, čo kto má v kapse.}{przejscie_bagna == krag_z_soli: Neprejdú cez soľ, hoci by mali tvár niekoho najbližšieho.}{przejscie_bagna == za_wilkiem: Držia sa ďaleko od bieleho vlka.}{przejscie_bagna == z_rozancem: Od modlitby hasnú s kvílením – ale niečo si vezmú na oplátku.}{przejscie_bagna == z_krzesiwem: Boja sa iskier.}
- starzec_4:
    V srdci boru si zložil klobúk.
- pan_lasu_8:
    V srdci boru, kde nikdy neprší, stojí dub väčší, než kedysi bol Starý dub. Tam si starec v klobúku z machu zložil klobúk. Pod ním bola kôra. Z čela mu vyrazilo parožie a on sám vyrástol nad koruny stromov a nevrhal tieň. Sedemdesiat rokov čakal, kým k nemu niekto z Maćkovho rodu príde sám.
- pan_lasu_9:
    Dolina bola kedysi jeho, od hrebeňa po jazero. Ustúpil, keď prvý z ľudí prišiel k Starému dubu bez sekery a povedal: ďalej nepôjdeme. Za to si Pán lesa berie jedno dieťa za pokolenie, vo svätojánsku noc, a vracia ho skôr, než zabudne na svoj domov. Dub bol hranicou, dohoda plotom a kaplnky klincami.{chata_macka == przy_lesie: Maciek, ktorý o ničom nevedel, postavil chalupu na strane boru a hneď prvé ráno zaťal sekeru do smreka. Od neho sa začalo rátanie.} Marysiu si vzal sám – to on po ňu poslal žitnú babu. Či preto, aby ju ukryl pred tými od vody, alebo pre seba, to nepovedal. Odkedy padol plot, kliatba prebúdza jeho sluhov a ťahá ich k chalupám. Tentoraz si za ňu dá zaplatiť, lebo dohodu porušila dedina, nie on.{pytanie_do_leszego == kim_jest: Bol v doline skôr, než do nej zišli prví ľudia. Ráta staré stromy vyrúbané za hranicou a ľudí, ktorí sa mu sami oddali. Keď narráta do tisíc, zaspí nadobro a rátať bude za neho niekto iný. Aj on kedysi prišiel do boru sám.}{pytanie_do_leszego == gdzie_marysia: Jeho deti nemajú tieň.}
- zielarka_4:
    Chodili k nej tí od vody – aj Pán lesa. Raz jej ukázal vo vode chatu v ohni – jej vlastnú – ale neuverila. Horiac preklala dedinu cudzími rukami: „Kosti vašich detí budú dolámané a ich krv vypitá.“ Kým stál Starý dub, slovo bolo silnejšie než kliatba.{pytanie_do_leszego == o_klatwe: Kliatbu zníme ten, kto vráti Pánovi lesa hranicu, alebo ten, kto zaujme jeho miesto. Alebo oheň, ktorým sa začala – ale po ňom nezostane ani bór, ani dedina.}{zastaw_u_leszego == zastaw_krzesiwo: Kresadlo, ktoré Maciek našiel v jej popole, nosí v sebe tú istú žeravú pahrebu, ktorá ju upálila.}
- tropy_4:
    Priniesol pod dub druhý drevák Marysie – ten, ktorým hojdala žitná baba. {wilk_przy_jaromirze:Položil ho Jaromirovi k nohám a celú noc pri ňom ležal.|Odovzdal ho Pánovi lesa a sedí pri ňom, ľahostajný ako stromy.}{wilk_pod_debem != nie_ruszal_sie: Každé ľudské slovo, ktoré sa mu vybaví, mu uberie kus vlčieho života.}
- dzieci_1:
    Za úsvitu vychádzajú zo štrbiny v dube a sadajú si do kruhu: tucet dievčatiek s jedinou tvárou, v rovnakých košieľkach a s novými stužkami vo vlasoch. Usmievajú sa slušne a trpezlivo, hovoria jedným hlasom, voňajú práchnom. Keď si otec vyberie, ostatné sa rozsypú na suché lístie a kôru.{znak_rozpoznania == po_melodii: Spievajú pesničku až do samého konca.}{znak_rozpoznania == po_buzi || znak_rozpoznania == po_skarbie: Všetko, čo má dieťa naľavo, majú ony napravo{skarb_dla_corki:, a to, čo nosí na krku, majú hladké a nové}.}{pytanie_do_leszego == gdzie_marysia: Nevrhajú tieň a nikdy neplačú.}
- pan_lasu_10:
    {marysia_odzyskana:Dodržal slovo: kto spozná svoje dieťa, ten si ho vezme a nikto ho nezastaví.|Dodržal slovo: kto vyberie zle, odnesie si domov to, čo vybral – a pochová ho ako svoje.} Ohlásil, že na Dušičky príde do dediny, aby si to s ňou zrátal do konca.
- tropy_5:
    Pomohol nájsť pravé dieťa, hoci sluhovia Pána lesa ľuďom nepomáhajú. Zostal pod dubom, s dlaňou Pána lesa na šiji.
- mamuny_4:
    Koncom augusta prali na plochých kameňoch na druhej strane jazera malý rubáš. Na Dušičky ho priniesli v družine Pána lesa a volali nad ním „Marysia“. Samy nevyberajú – perú to, čo im prinesie voda. Kým rubáš do úsvitu nevyschne, meno sa z neho dá zmyť, ale niekto za to musí zaplatiť.{cena_caluna == cena_umowa: Svätojánsky dar bude teraz nosiť aj Marysia, až do konca života.}
- tropy_6:
    V dušičkovú noc roztrhol mamunám rubáš s menom Marysie a ony ho stiahli pod vodu. Antek ho spoznal podľa prstenca vydratej srsti na prednej labe.
- dzieci_2:
    To, ktoré si človek vyberie, zomiera na kraji boru.{cialo_kopii == spalone: V ohni praská ako smolné drevo a dym vonia ihličím.}{cialo_kopii == oddane_jagnie: Jagna hovorí, že je to drevo, a vie, čo sa s takým robí.}{cialo_kopii == pochowane || cialo_kopii == pod_mlodnikiem: Leží v zemi ako dieťa, hoci nevonia ničím.}
- pan_lasu_11:
    Dodržiava slovo do bodky – a to isté žiada od iných. Pred Dušičkami sa hmla od boru každý večer prikradne k plotom a prvého novembra, cestou z cintorína v Bukowci, zhasli jedným dychom všetky hromničné sviece{not marysia_odzyskana: okrem tej, ktorú niesla Hanka}, hoci vzduch stál.
- pan_lasu_12:
    {ostatnia_noc == zwrocil_granice:Na Dušičky prišiel do dediny s družinou a dostal späť hranicu: Maćkovu sekeru zaťatú do pňa Starého duba a slovo celej dediny. Slovo za slovo.{zoladz_zasadzony: Pri pni vyklíčil žaluď zo Starého duba, zasadený ľudskou rukou. Kým dub rastie, Pán lesa už deti neberie.}|{ostatnia_noc == zajal_miejsce:Odovzdal Jaromirovi klobúk z machu a ľahol si pod peň Starého duba. „Teraz rátaj ty.“|Zhorel spolu s borom. Posledné, čo povedal, znelo: „Zrátané.“}}
- zielarka_5:
    {ostatnia_noc == zwrocil_granice:Sluhovia Pána lesa sa vrátili tam, kam patria; jej kliatba sa znova drží za plotom.|{ostatnia_noc == zajal_miejsce:Jej kliatba viazala ruky niekdajšiemu Pánovi lesa. Ruky nového nepoznala.|Jej kliatba sa začala ohňom a ohňom sa skončila.}}
- tropy_7:
    {ostatnia_noc == zwrocil_granice:Odišiel s družinou do boru.|{ostatnia_noc == zajal_miejsce:Nový Pán lesa ho pustil na slobodu.|{wilk_przy_mnie():Stál pri Jaromirovi, keď horel bór.|Skočil do ohňa za svojím pánom.}}}
- dzieci_3:
    Na Dušičky išli v družine Pána lesa a držali sa za ruky. Žiadne z nich nevrhalo tieň.{ostatnia_noc == skrzesal_ogien: Ich pospevovanie sa v horiacom bore v polovici pretrhlo a už sa nezačalo.}
}
