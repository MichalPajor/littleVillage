// ------------------------------------------------------------
//  Rozdział trzynasty – Wspólny sen (figurka). Przednówek i roztopy po
//  zimie ze strzygą (Jaromir ma dwadzieścia dwa lata, Marysia półtora roku).
//  Figurka z prologu wraca: [starucha] przywozi ją wnuczka Jagna, [handlarz]
//  leży na jarmarku, [bez zgliszcz] Józek wygrzebuje ją z popiołu po chacie
//  zielarki, [bagno] wypływa z mokradeł. Odrzucona – i tak wraca do chałupy.
//  Dzieci śnią ten sam sen, ogniki podchodzą pod płoty; zaufać Jagnie albo nie.
//  W Wielki Czwartek Józek idzie we śnie na kładkę, gdzie czeka topielec:
//  siekiera (rozorany bark), figurka rzucona w wodę albo latarnia (płonie
//  kapliczka przy kładce). Potem: piec (figurka nie płonie), kapliczka albo
//  Jagna. W maju syn Antka, Franek; w czerwcu paliki pod drogę Urbaniaka.
// ------------------------------------------------------------

=== rozdzial_trzynasty ===
# tlo: przednowek
# rozdzial: Kapitola trinásta
# tytul: Spoločný sen
Sneh ležal na poliach do polovice marca, sivý a uľahnutý, a v chalupách sa už jedla kaša bez omasty a zemiaky z jamy sa prideľovali po hrstiach.{ polnoc_strzygi == na_twarz: Antkovi sa ruka zahojila až na hladnú jar – ostali na nej dva polkruhy drobných bielych jaziev, ktoré Jadwisia bozkávala, keď si myslela, že ju nikto nevidí.} {trzy_noce == czuwanie_przy_kolysce:Do chalupy Wójcikovcov sa nikto nenasťahoval. Vo februári sa prehnitá strecha v noci prepadla pod snehom s rachotom, ktorý zobudil pol dediny.|Wójciková preležala zimu v horúčke, ale v marci vyšla o palici pred chalupu a prvé, čo urobila, bolo, že priniesla Marysii hrsť sušených jabĺk.}
{ ekwipunek ? szczenie_psa:
    Marysia mala už rok a pol. Behala po izbe, padala, vstávala a bežala ďalej a slová chytala za letu. Ryšavé šteňa za zimu vyrástlo na dlhonohého psíka, ktorý za ňou chodil krok za krokom a vrčal na každého, kto na ňu zvýšil hlas – aj na matku. # pokaz: szczenie
- else:
    Marysia mala už rok a pol. Behala po izbe, padala, vstávala a bežala ďalej a slov už poznala viac, než ju Hanka stihla naučiť.
}
Odmäk prišiel naraz. Sneh stiekol z polí za dva dni a močiare za lávkou sa rozvodnili tak, že voda siahala až k samým ohradám. Ľad na jazere tri dni pukal s praskotom. Štvrtej noci sa nad močiarmi prvý raz po rokoch rozsvietili drobné svetlá. # pokaz: ogniki # dalej
{ figurka_u_staruchy: -> figurka_od_jagny }
{ not przeszukal_zgliszcza: -> figurka_ze_zgliszcz }
{ figurka_w_bagnie: -> figurka_z_bagna }
-> figurka_na_jarmarku

= figurka_od_jagny
# tlo: jagna_izba
V polovici marca prišla do Zapadliny na voze cudzia žena – chudá, v sivej šatke, s jedným okom zakaleným bielmom. Pýtala sa na vnuka toho Maćka, čo tu pred rokmi postavil chatu. Ľudia jej ukázali chalupu Jaromira.
– Volám sa Jagna – povedala, keď si sadla na lavicu. – Moja babka bývala v meste, za námestím. Pred smrťou mi kázala sľúbiť, že toto vrátim.
Vytiahla z koša uzlík v čiernej handre a rozbalila ho na stole. Drevená figúrka, z jednej strany ohorená, s pramienkom šedivých vlasov omotaným okolo krku. {los_psa == oswojony && zona_wie:Jaromir figúrku nikdy nevidel, a predsa ju hneď spoznal – podľa toho, čo mu kedysi rozprávala babka Marianna.|Jaromir figúrku nikdy nevidel a nikdy o nej nepočul, a predsa ním pri pohľade na ňu prebehol chlad, akoby niekto otvoril dvere do mrazu.} # pokaz: figurka
– Babka ju kúpila od tvojho dedka na trhu – hovorila Jagna ticho a nedvíhala oči. – A urobila s ňou niečo, za čo pykala do konca života. Neviem presne čo – v horúčke blúznila o bábike a o vode. Viem len, že umierala zle. A že posledné, čo povedala, bolo: „Vráť ju tam, odkiaľ prišla.“
# pytanie: Čo urobí Jaromir?
*   [Vziať figúrku.]
    ~ ekwipunek += figurka
    Jaromir figúrku znova zavinul do handry a schoval ju do truhlice pod posteľou. Jagna si vydýchla, akoby jej niekto sňal z chrbta vrece kameňov. Pri odchode povedala, že do Turíc zostane v Bukowci u sestry a bude predávať bylinky na trhu. # dalej
*   [Kázať jej odísť aj s figúrkou.]
    ~ odrzucil_figurke = true
    – Zober si to – povedal Jaromir. – A už sa nevracaj.
    Jagna sa naňho dlho dívala zdravým okom a figúrku zavinula. Z prahu len prehodila, že do Turíc bude v Bukowci u sestry.
    ~ ekwipunek += figurka
    Ale ráno, keď Hanka otvorila dvere, ležala figúrka na prahu. Handra bola mokrá a páchla bažinou. Jaromir figúrku schoval do truhlice skôr, než ju zbadala Marysia. # pokaz: prog # dalej
-   -> wspolny_sen

= figurka_na_jarmarku
# tlo: jarmark
V polovici marca išiel Jaromir do mesta na jarmok s lyžicami, ktoré cez zimu vyrezával. Do poludnia predal všetky a ešte chodil pomedzi stánky a hľadal pre Marysiu niečo na odpust. Pri poslednej búde, u starého vetešníka, ležala medzi puknutými hrncami a hrdzavými podkovami drevená figúrka – z jednej strany ohorená, s tvárou dohladka ošúchanou cudzími prstami. # pokaz: figurka
Jaromir ju vzal do ruky. Drevo bolo studené a vlhké, hoci deň bol suchý.
– Pekná, čo? – zachechtal sa vetešník. – Môj dedo ju kúpil od nejakého sedliaka, keď bol sám ešte mladý. Odvtedy ju nikto nechcel. Pre teba za groš.
# pytanie: Čo urobí Jaromir?
*   [Kúpiť figúrku.]
    ~ ekwipunek += figurka
    Jaromir zaplatil, zavinul figúrku do šatky a schoval si ju do záňadria. Celú spiatočnú cestu ju cítil pri srdci ako kus ľadu. Doma ju vložil do truhlice pod posteľou. # dalej
*   [Odložiť ju a odísť.]
    ~ odrzucil_figurke = true
    ~ ekwipunek += figurka
    Jaromir položil figúrku na stôl a odišiel bez toho, aby sa obzrel. Ale keď večer pod chalupou vypriahal koňa, ležala figúrka na dne voza medzi trieskami – tam, kde ráno ležali lyžice. Dlho sa na ňu díval, kým ju schoval do truhlice pod posteľou. # pokaz: woz # dalej
-   -> wspolny_sen

= figurka_ze_zgliszcz
# tlo: zgliszcza_kra
V polovici marca išli chlapci z dediny k jazeru pozerať, ako plávajú ľadové kryhy. Bol medzi nimi aj Józek, najmladší pravnuk starého Staša – sedemročný, ryšavý a zvedavý na všetko ako straka. Kryhy pohli starými, zuhoľnatenými brvnami v tŕstí na západnej strane jazera, tam, kde kedysi stála chata bylinkárky, a vytlačili ich na breh. Józek sa prehŕňal paličkou v popole, až vyhrabal niečo tvrdé.
Pribehol s tým za Jaromirom, lebo Jaromir vyrezával najlepšie hračky v dedine a chlapec sa chcel pochváliť. Na dlani mu ležala drevená figúrka, z jednej strany ohorená. Sadze, ktorými bola oblepená, špinili prsty ako čerstvé. # pokaz: figurka
# pytanie: Čo urobí Jaromir?
*   [Zobrať mu figúrku.]
    ~ ekwipunek += figurka
    – Daj mi ju – povedal Jaromir. – Za to ti vyrežem koňa s vozíkom.
    Józek sa durdil, ale nakoniec privolil. Jaromir schoval figúrku do truhlice pod posteľou a dlho si drhol ruky v džbere, hoci boli čisté. # dalej
*   [Nechať mu ju.]
    ~ jozek_mial_figurke = true
    Jaromir vrátil chlapcovi figúrku a Józek s ňou utekal domov. Na druhý deň prišla k Jaromirovi matka Józka, bledá, s figúrkou zavinutou v zástere. Józek s ňou v hrsti prespal celú noc a zo sna rozprával cudzím hlasom, a ráno sa zobudil s mokrými vlasmi, hoci ho nikto nekúpal. # pokaz: matka
    – Vezmi si to – povedala. – Ty si Maćkov vnuk. Ty vieš, čo to je.
    ~ ekwipunek += figurka
    Jaromir schoval figúrku do truhlice pod posteľou. # dalej
-   -> wspolny_sen

= figurka_z_bagna
# tlo: kladka_naprawa
V polovici marca, keď voda začala opadávať, išiel Jaromir s Antkom opraviť lávku cez močiare, ktorú strhla povodeň. Vyťahoval z bahna starý kôl, keď zbadal, že sa naň čosi prilepilo – čierne, obalené kalom. Zoškrabal blato nožom.
Drevená figúrka, z jednej strany ohorená. Voda z nej za toľké roky nezmyla sadze. Jaromir si spomenul, čo mu otec v detstve rozprával o dedkovi Maćkovi a o figúrke, ktorú ten stratil v bažine hneď prvú jar. # pokaz: figurka
# pytanie: Čo urobí Jaromir?
*   [Zobrať figúrku.]
    ~ ekwipunek += figurka
    Jaromir zavinul figúrku do handry a strčil si ju do záňadria. Antek naňho pozeral spod obočia, ale nič nepovedal. Doma ju Jaromir schoval do truhlice pod posteľou. # dalej
*   [Hodiť ju späť do bažiny.]
    ~ odrzucil_figurke = true
    Jaromir sa rozohnal a šmaril figúrku čo najďalej, do čierneho oka medzi trsmi. Bažina ju vtiahla bez jediného kruhu na vode. # pokaz: plusk
    ~ ekwipunek += figurka
    Ale ráno, keď Hanka otvorila dvere, ležala figúrka na prahu – mokrá, oblepená žaburinkou, obrátená tvárou do izby. Jaromir ju schoval do truhlice skôr, než ju zbadala Marysia. # dalej
-   -> wspolny_sen

= wspolny_sen
# tlo: sen_kladka
~ zapiski += ogniki_2
{ not przeszukal_zgliszcza:Najprv sa ten sen prisnil Józkovi.|Najprv sa ten sen prisnil Józkovi, najmladšiemu pravnukovi starého Staša.} Po ňom mlynárovej dcére z Bukowca, potom dvojčatám Kowalczykovcov. Po týždni už matky pri studni nehovorili o ničom inom, lebo každé dieťa snívalo to isté: že stojí v noci na lávke nad močiarmi, okolo blikajú svetlá a pod doskami, v čiernej vode, niekto prevracia hlinené hrnce, jeden za druhým, a nazerá pod každý. A že ten niekto napokon zdvihne hlavu a spýta sa: „Kde je moja bábika?“ # pokaz: glowa
{ not odrzucil_figurke && not jozek_mial_figurke:
    Po niekoľkých nociach sa ten istý sen prisnil aj Jaromirovi – jedinému dospelému v dedine. Veď len on vzal figúrku z vlastnej vôle. Pred svitaním vyskakoval z lôžka so šumom vody v ušiach a s mokrými nohami, hoci spal pod perinou.
}
Marysia sa každú noc budila s plačom{ skarb_dla_corki: a zvierala v pästičke remienok s {skarb_jaromira == muszelka:mušličkou|{skarb_jaromira == pioro:sojčím pierkom|klincom}}, ktorý od zimy nosila na krku}. Ukazovala prštekom na okno a opakovala slová, ktoré ju nikto neučil:
– Mokrý pán. Mokrý pán.
Bludičky nad močiarmi horeli z noci na noc bližšie. Najprv len za lávkou, potom na lúke, a napokon stáli v tŕstí hneď za plotmi – ako ľudia, ktorí čakajú, kým niekto otvorí dvere. # pokaz: ognie
{ figurka_u_staruchy:
    V nedeľu prišla Jagna z Bukowca pešo, sama, a hneď na prahu sa spýtala, či deti v dedine snívajú.
- else:
    V ten istý týždeň kúpila Hanka na trhu v Bukowci palinu od cudzej bylinkárky – chudej ženy v sivej šatke, s jedným okom zakaleným bielmom. Keď jej bylinkárka vydávala drobné, zrazu chytila Hanku za ruku a privoňala k jej prstom.
    – Cítim popol – zašepkala. – Starý popol, od vody. Máte ho doma, však?
    { przeszukal_zgliszcza && not figurka_w_bagnie:
        – Moja babka chcela kedysi takú vec kúpiť od nejakého chlapca na trhu – dodala tichšie. – Nepredal jej ju. Do smrti nevedela, komu ju napokon dal.
    }
    Povedala, že sa volá Jagna a že do Turíc zostane v Bukowci. Hanka ju priviedla do chalupy ešte v to popoludnie a muža sa ani nespýtala na názor.
}
{figurka_u_staruchy:– Povedz jej o tých snoch – ozvala sa žena, skôr než Jaromir stihol otvoriť ústa. – Sama to priniesla, nech vie, čo z toho vyrástlo.|– Ak si niečo schoval, netaj to pred ňou – ozvala sa žena, skôr než Jaromir stihol otvoriť ústa. – {odrzucil_figurke && figurka_w_bagnie:Videla som, čo sa vrátilo na náš prah.|{jozek_mial_figurke:Videla som, čo priniesla matka Józka.|Videla som, ako nazeráš pod posteľ.}}}
# pytanie: Čo urobí Jaromir?
*   [{figurka_u_staruchy:Porozprávať Jagne o snoch.|Ukázať Jagne figúrku a porozprávať jej o snoch.}]
    ~ zaufal_jagnie = true
    { figurka_u_staruchy:
        // Jagna przywiozła figurkę i wiedziała tylko, że babka bredziła o lalce i o wodzie – dopiero sny dzieci składają jej to w całość.
        Jaromir jej rozprával o lávke, o hrncoch prevracaných na dne močiarov a o otázke, ktorú vo sne počulo každé dieťa. Pri slove „bábika“ Jagna zbledla.
        – Babka v horúčke hovorila len o bábike a o vode. Myslela som, že blúzni – povedala ticho. – Staré bylinkárky o takých veciach rozprávali: vyrezávajú sa z koreňa vytiahnutého z bažiny a dáva sa im meno toho, čo tam prebýva. Kto má takú bábiku, za tým on ide. Dlho spal, a teraz sa vrátila k jazeru a volá ho. A deti to počujú – uši majú citlivejšie ako my.
    - else:
        Jagna dlho obracala figúrku v prstoch, naklonená k oknu, lebo aj zdravé oko mala slabé.
        – To je bábika – povedala napokon. – Babka mi o takých rozprávala. Bylinkárka od jazera ju vyrezala z koreňa, ktorý vytiahla z bažiny, a dala jej meno toho, čo tam prebýva. Kto má bábiku, za tým on ide. Kým ležala {przeszukal_zgliszcza && not figurka_w_bagnie:ďaleko|nedotknutá}, spal. Teraz sa vrátila – a volá ho. A deti to počujú – uši majú citlivejšie ako my.
        Zavinula figúrku do handry a vrátila ju Jaromirovi.
    }
    – Oheň ju nevezme, už raz v ňom bola. Utíši ju len posvätená zem. {odrzucil_figurke:Alebo… – zarazila sa a pokrútila hlavou. – Nie. Mňa už neposlúchne. Odstrčili ste ju, a ona sa k vám aj tak vrátila. Teraz je vaša.|{figurka_u_staruchy:Babka mi kázala vrátiť ju tam, odkiaľ prišla, a vrátila som ju. Späť si ju nevezmem.|Alebo… – zaváhala – alebo mi ju dajte. Odnesiem ju tak ďaleko, že ju už nebude počuť.}} # dalej
*   [Nepovedať jej nič.]
    {figurka_u_staruchy:– Deti spia pokojne – zaklamal Jaromir.|– Neviem, o čom hovoríš – odpovedal Jaromir.}
    Jagna pokývala hlavou, akoby čakala práve toto.
    – Keď svetlá dôjdu až k prahu – povedala – príďte za mnou. Do Turíc som v Bukowci.
    Hanka ju odprevadila až za plot a dlho si tam s ňou šepkala. Do večera na Jaromira neprehovorila ani slovo. # dalej
-   -> wielki_czwartek

= wielki_czwartek
# tlo: noc_kladka
{ not odrzucil_figurke && not jozek_mial_figurke:
    V noc Zeleného štvrtka prišiel sen k Jaromirovi ako každú noc – lenže tentoraz stál na lávke, medzi bludičkami, Józek. Jaromir vyskočil z lôžka skôr, než pochopil, že už nespí. Schytil sekeru{ siekiera_dziadka: po dedkovi}, lampáš a z truhlice uzlík s figúrkou. Nemusel sa nikoho pýtať, kam bežať. # pokaz: jozek
    Za ohradami, v tŕstí, blikali svetlá – a pomedzi ne kráčala k lávke malá, jasná postava, bosá, s rukami vystretými pred seba. Jaromir dobehol na breh vo chvíli, keď sa chlapec zastavil v polovici lávky. Voda pod doskami sa zvírila a vynorila sa z nej sivá ruka. Zovrela Józkovi členok.
- else:
    V noc Zeleného štvrtka zobudil Jaromira krik na ceste: matka Józka behala od plota k plotu s lampášom a volala syna, ktorého lôžko našla prázdne. Keď Jaromir vyzrel z pitvora, stálo na prahu bledé svetlo, tak blízko, že bolo vidieť hrče v doskách – a odplávalo do tmy, len čo naň pozrel. Schytil sekeru{ siekiera_dziadka: po dedkovi}, lampáš a uzlík s figúrkou – bál sa ju nechať doma, pri Marysii. Najprv bežali s matkou Józka k jazeru a až odtiaľ Jaromir zbadal, že sa svetlá zhlukli na jednom mieste. # pokaz: jozek
    Keď dobehol, bolo takmer neskoro. Sivá ruka už stiahla chlapca dolu – Józek visel po pás v čiernej vode a zo sna sa jednou rukou držal lávky.
}
{ figurka_u_staruchy:
    Stvora sa vynárala pomaly – obrovská, zhrbená, s vlasmi ako mokré vodné riasy a s očami, ktoré zelenkavo svietili ako práchno. Na ramene mala starú, hlbokú jazvu – stopu po sekere, ktorou ju pred rokmi udrel dedko Maciek. Józek nekričal. Spal. # pokaz: stwor, blizna
- else:
    Stvora sa vynárala pomaly – obrovská, zhrbená, s vlasmi ako mokré vodné riasy a s očami, ktoré zelenkavo svietili ako práchno. Józek nekričal. Spal. # pokaz: stwor
}
{ oblawa_wilk == wydal_wilka:
    Za močiarmi zavyl vlk – chrapľavo, s odtrhnutým koncom, presne ako v noc po poľovačke. Stvora otočila hlavisko tým smerom. Po hrádzi, pomedzi jelše, sa posunulo čosi biele, nízko a nerovno, akoby šetrilo jeden bok – a zmizlo v tme.
- else:
    Za močiarmi zavyl vlk – dlho a čisto, až sa zachveli plamienky v tŕstí. Stvora otočila hlavisko tým smerom. Po hrádzi, pomedzi jelše, sa mihlo čosi biele, rýchlejšie ako pes – a zmizlo v tme.
}
Jaromir nevedel, komu bol ten hlas výstrahou – stvore, alebo jemu.
~ zapiski += stwor_3
# pytanie: Čo urobí Jaromir?
*   [Udrieť stvoru sekerou.]
    ~ noc_na_kladce = siekiera_na_kladce
    Jaromir skočil na lávku a ťal zo všetkých síl. Ostrie vniklo hlboko do sivého ramena{ figurka_u_staruchy:, tesne vedľa starej jazvy}. Stvora zarevala – dlho, hrdelne, až sa roztriasli dosky – pustila chlapca a na odplatu rozryla Jaromirovi pazúrmi plece. Prepadla sa pod vodu, akoby ju niekto stiahol. # pokaz: siekiera
    Jaromir schytil Józka do náručia a vyniesol ho na breh. Chlapec sa zobudil až v chalupe, pri peci, a nič si nepamätal. Rana na pleci sa Jaromirovi hojila až do žatvy. # dalej
    -> co_z_figurka
*   { ekwipunek ? figurka } [Hodiť jej figúrku.]
    ~ noc_na_kladce = figurka_dla_stwora
    ~ los_figurki = figurka_u_stwora
    Jaromir rozvinul handru a šmaril figúrku do vody, tesne vedľa stvory.
    ~ ekwipunek -= figurka
    Ruka v jedinej chvíli pustila chlapcov členok. Stvora chytila figúrku, pritisla si ju k hrudi ako matka dieťa a skĺzla do čiernej vody hladko ako vydra. Svetlá nad močiarmi zhasli všetky naraz, akoby ich niekto sfúkol. # pokaz: figurka
    Hneď nato sa voda pod doskami so stonom, ako keď puká ľad, prepadla do hlbiny a strhla so sebou koly. Jaromir sotva stihol skočiť s Józkom na breh, kým sa lávka – stará ako dedina – nezlomila napoly a nezmizla pod vodou. Chlapec spal ďalej, pokojne, s lícom na jeho ramene. # dalej
    -> paliki_pod_droge
*   [Rozbiť lampáš o vodu.]
    ~ noc_na_kladce = latarnia_na_wodzie
    Jaromir hodil lampáš stvore pod nohy. Sklo prasklo, olej sa rozlial po vode a vyšľahol plameňom. Stvora pustila chlapca a s vytím ustúpila do tmy a Jaromir schytil Józka skôr, než ho čierna voda stihla vtiahnuť. # pokaz: latarnia
    Ale oheň sa rozbehol po suchom, lanskom tŕstí ako po pušnom prachu. Kým chlapi pribehli s vedrami, zhorela polovica rákosia aj kaplnka pri lávke – jedna z najstarších v dedine. Ráno z nej ostali čierne pahýle a soška svätého s ohorenou tvárou. # pokaz: pozar # dalej
    -> co_z_figurka

= co_z_figurka
# tlo: skrzynia_izba
Po Veľkej noci Jaromir dlho vysedával večer nad truhlicou. Svetlá nad močiarmi stále horeli, hoci ďalej od plotov než predtým, a Marysia sa v noci ešte vždy budila a ukazovala na okno.
# pytanie: Čo urobí s figúrkou?
*   [Hodiť figúrku do pece.]
    ~ los_figurki = figurka_w_skrzyni
    Figúrka ležala v žeravých uhlíkoch celú noc a nevzbĺkla – len syčala ako mokré drevo a z pece šiel smrad bažiny. Ráno ju Jaromir vytiahol pohrabáčom. Bola ohorená presne tak ako predtým, ani o kúsok viac. V pitvore stáli všetky vedrá plné kalnej močiarnej vody, hoci do nich Hanka večer naliala čistú zo studne. # pokaz: piec
    Jaromir zamkol figúrku do truhlice, truhlicu omotal reťazou a viac o nej nehovoril. # pokaz: lancuch # dalej
*   [Zakopať ju pod kaplnkou.]
    ~ los_figurki = figurka_pod_kapliczka
    ~ ekwipunek -= figurka
    Po zotmení išiel Jaromir s lopatou ku kaplnke {noc_na_kladce == latarnia_na_wodzie:pri ceste do Bukowca, za potokom|pri lávke}. Vykopal jamu hlbokú na lakeť, zavinul figúrku do čistého plátna, zasypal ju a zem udupal nohami. V tú istú noc svetlá nad močiarmi zhasli a deti prestali snívať. # pokaz: lopata
    Nikomu nepovedal, kde ju zakopal. Ani Hanke. # dalej
*   { zaufal_jagnie } { not odrzucil_figurke } { not figurka_u_staruchy } [Dať ju Jagne.]
    ~ los_figurki = figurka_u_jagny
    ~ ekwipunek -= figurka
    Jaromir zaniesol uzlík do Bukowca. Jagna ho vzala oboma rukami, opatrne, ako niečo veľmi krehké, a hneď ho schovala na dno koša, pod zväzky sušených bylín. # pokaz: kosz
    – Neboj sa – povedala. – Už sa nevráti.
    Nazajtra odcestovala. V tú noc svetlá nad močiarmi zhasli a deti prestali snívať. # dalej
-   -> paliki_pod_droge

= paliki_pod_droge
# tlo: wiosna_paliki
~ zapiski += zielarka_3
V máji porodila Jadwisia Antkovi syna. Antek si zaumienil, že chlapec sa bude volať Franek, a nikto sa mu neodvážil odporovať. Za krstného otca požiadal Jaromira. # pokaz: antek
{ los_figurki:
- figurka_u_stwora: Svetlá nad močiarmi sa už ani raz nerozsvietili. Józek si na tú noc nepamätal. Lávku nikto neobnovil: koly, ktoré chlapi zatĺkali do bahna, ležali ráno vytrhnuté na brehu, a tak sa odvtedy na vzdialenejšie lúky muselo chodiť okolo bažiny po okraji boru. Starý Staš, keď počul, čo Jaromir urobil, prežehnal sa a už nikdy nenahodil udicu v tamojších okách.
- figurka_w_skrzyni: Sny prichádzali čoraz zriedkavejšie, ale celkom neprestali. Niekedy, v bezmesačných nociach, si Marysia sadla na lôžku a dívala sa na truhlicu pod posteľou, kým ju Hanka neuložila.
- else: Deti v dedine zabudli na ten sen skôr, než o ňom matky stihli prestať klebetiť. Marysia zas prespávala celé noci.
}
{ noc_na_kladce == siekiera_na_kladce:
    Jaromirovi na pleci ostala hrubá, ružová jazva{ figurka_u_staruchy && los_psa == oswojony: – na tom istom mieste, kde pred rokmi pazúry stvory zasiahli dedka}.
}
{ noc_na_kladce == latarnia_na_wodzie:
    Na mieste zhorenej kaplnky zatĺkli chlapi do zeme brezový kríž. Novú nikto nepostavil – nebolo z čoho. # pokaz: krzyz
}
Koncom mája hľadala Hanka Marysiu po celom dvore. Našla ju až za stodolou, v raži po pazuchy. Malá stála bez pohnutia, s hlavičkou naklonenou nabok, ako niekto, kto načúva.
– Mama spieva – povedala a ukázala ručičkou do obilia, na opačnú stranu, než stála chalupa.
{ glos_w_lesie:
    Keď to Hanka večer rozprávala, Jaromirovi sa vybavila štedrovečerná noc spred rokov a matkin hlas {figurka_u_staruchy:z hmly nad poľom|spomedzi stromov}{glos_w_lesie == odpowiedzial: – a potom smiech, ktorý vôbec nebol jej|{glos_w_lesie == kozuch: – a potom ťažké kroky, ktoré prešli tesne popri ňom| – a to, ako ho ten hlas hnal po snehu až k plotu Stašovcov}}. Nič nepovedal. Len v tú noc dvakrát vstal pozrieť sa, či Marysia spí.
}
Začiatkom júna sa Urbaniakovi ľudia pustili zatĺkať do zeme kolíky: od píly cez lúky a močiare, rovno pod bór. Pán Urbaniak chcel mať cestu do lesa. Po týždni tie, čo stáli najbližšie k boru, vyhnali zelené výhonky – zo suchého, olúpaného dreva. # pokaz: paliki # dalej
-> rozdzial_trzynasty_ciag_dalszy


// Koniec rozdziału trzynastego – dalej rozdział czternasty.
=== rozdzial_trzynasty_ciag_dalszy ===
# ozdobnik
_Koniec trinástej kapitoly._ # dalej
-> rozdzial_czternasty
