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
# rozdzial: Kapitola třináctá
# tytul: Společný sen
Sníh ležel na polích do poloviny března, šedý a ulehlý, a v chalupách se už jedla kaše bez omastku a brambory z krechtu se přidělovaly po hrstech.{ polnoc_strzygi == na_twarz: Ruka Antka se zahojila až na hladovém jaře – zůstala na ní dvě půlkolečka drobných bílých jizev, které Jadwisia líbala, když si myslela, že ji nikdo nevidí.} {trzy_noce == czuwanie_przy_kolysce:Do chalupy Wójcikových se nikdo nenastěhoval. V únoru se shnilá střecha v noci propadla pod sněhem s rachotem, který probudil půl vesnice.|Wójciková proležela zimu v horečce, ale v březnu vyšla o holi před chalupu a první, co udělala, bylo, že přinesla Marysii hrst sušených jablek.}
{ ekwipunek ? szczenie_psa:
    Marysii byl rok a půl. Běhala po jizbě, padala, vstávala a běžela dál a slova chytala za letu. Rezavé štěně za zimu vyrostlo v dlouhonohého psíka, který za ní chodil krok za krokem a vrčel na každého, kdo na ni zvýšil hlas – i na matku. # pokaz: szczenie
- else:
    Marysii byl rok a půl. Běhala po jizbě, padala, vstávala a běžela dál a slov už znala víc, než ji Hanka stačila naučit.
}
Obleva přišla naráz. Sníh z polí stekl za dva dny a mokřady za lávkou se rozvodnily tak, že voda došla až k samým ohradám. Led na jezeře tři dny pukal s třeskem. Čtvrté noci se nad mokřady poprvé po letech rozsvítila drobná světla. # pokaz: ogniki # dalej
{ figurka_u_staruchy: -> figurka_od_jagny }
{ not przeszukal_zgliszcza: -> figurka_ze_zgliszcz }
{ figurka_w_bagnie: -> figurka_z_bagna }
-> figurka_na_jarmarku

= figurka_od_jagny
# tlo: jagna_izba
V polovině března přijela do Zapadliny na voze cizí žena – hubená, v šedém šátku, s jedním okem zakaleným bělmem. Ptala se po vnukovi toho Maćka, který tu před lety postavil chatu. Lidé jí ukázali Jaromirovu chalupu.
– Jmenuji se Jagna – řekla, když se posadila na lavici. – Moje babička bydlela ve městě, za náměstím. Před smrtí mě nechala slíbit, že tohle vrátím.
Vytáhla z koše uzlíček v černém hadru a rozbalila ho na stole. Dřevěná figurka, z jedné strany ohořelá, s pramínkem šedivých vlasů ovinutým kolem krku. {los_psa == oswojony && zona_wie:Jaromir figurku nikdy neviděl, a přesto ji hned poznal – podle toho, co mu kdysi vyprávěla babička Marianna.|Jaromir figurku nikdy neviděl a nikdy o ní neslyšel, a přesto ho při pohledu na ni roztřásl chlad, jako by někdo otevřel dveře do mrazu.} # pokaz: figurka
– Babička ji koupila od tvého dědečka na trhu – mluvila Jagna tiše a nezvedala oči. – A udělala s ní něco, za co pykala do konce života. Nevím přesně co – v horečce blouznila o panence a o vodě. Vím jen, že umírala zle. A že poslední, co řekla, bylo: „Vrať ji tam, odkud přišla.“
# pytanie: Co udělá Jaromir?
*   [Vzít figurku.]
    ~ ekwipunek += figurka
    Jaromir figurku znovu zabalil do hadru a schoval ji do truhly pod postelí. Jagna si oddechla, jako by jí někdo sňal ze zad pytel kamení. Při odchodu řekla, že do Letnic zůstane v Bukowci u sestry a bude prodávat byliny na trhu. # dalej
*   [Poslat ji pryč i s figurkou.]
    ~ odrzucil_figurke = true
    – Odnes to – řekl Jaromir. – A už se nevracej.
    Jagna se na něj dlouho dívala zdravým okem a figurku zabalila. Z prahu jen prohodila, že do Letnic bude v Bukowci u sestry.
    ~ ekwipunek += figurka
    Ale ráno, když Hanka otevřela dveře, ležela figurka na prahu. Hadr byl mokrý a páchl bažinou. Jaromir figurku schoval do truhly dřív, než ji uviděla Marysia. # pokaz: prog # dalej
-   -> wspolny_sen

= figurka_na_jarmarku
# tlo: jarmark
V polovině března jel Jaromir do města na jarmark se lžícemi, které přes zimu vyřezával. Do poledne prodal všechny a ještě chodil mezi stánky a hledal pro Marysii něco na pouť. U posledního krámku, u starého vetešníka, ležela mezi puklými hrnci a rezavými podkovami dřevěná figurka – z jedné strany ohořelá, s tváří cizími prsty obroušenou do hladka. # pokaz: figurka
Jaromir ji vzal do ruky. Dřevo bylo studené a vlhké, ačkoli den byl suchý.
– Pěkná, co? – zachechtal se vetešník. – Můj děd ji koupil od nějakého sedláka, když byl sám ještě mladý. Od té doby ji nikdo nechtěl. Pro tebe za groš.
# pytanie: Co udělá Jaromir?
*   [Koupit figurku.]
    ~ ekwipunek += figurka
    Jaromir zaplatil, zabalil figurku do šátku a schoval si ji za košili. Celou cestu zpátky ji cítil u srdce jako kus ledu. Doma ji uložil do truhly pod postelí. # dalej
*   [Odložit ji a odejít.]
    ~ odrzucil_figurke = true
    ~ ekwipunek += figurka
    Jaromir položil figurku zpátky na pult a odešel, aniž se ohlédl. Ale když večer pod chalupou vypřahal koně, ležela figurka na dně vozu mezi třískami – tam, kde ráno ležely lžíce. Dlouho se na ni díval, než ji schoval do truhly pod postelí. # pokaz: woz # dalej
-   -> wspolny_sen

= figurka_ze_zgliszcz
# tlo: zgliszcza_kra
V polovině března šli kluci z vesnice k jezeru dívat se, jak odplouvají ledové kry. Byl mezi nimi i Józek, nejmladší pravnuk starého Staše – sedmiletý, zrzavý a zvědavý na všechno jako straka. Kry pohnuly starými, zuhelnatělými trámy v rákosí na západní straně jezera, tam, kde kdysi stála chata bylinkářky, a vytlačily je na břeh. Józek se šťoural klackem v popelu, až vyhrabal něco tvrdého.
Přiběhl s tím za Jaromirem, protože Jaromir vyřezával nejlepší hračky ve vsi a chlapec se chtěl pochlubit. Na dlani mu ležela dřevěná figurka, z jedné strany ohořelá. Saze, kterými byla obalená, špinily prsty jako čerstvé. # pokaz: figurka
# pytanie: Co udělá Jaromir?
*   [Vzít mu figurku.]
    ~ ekwipunek += figurka
    – Dej mi ji – řekl Jaromir. – Za to ti vyřežu koně s vozem.
    Józek trucoval, ale nakonec svolil. Jaromir schoval figurku do truhly pod postelí a dlouho si drhl ruce v džberu, ačkoli byly čisté. # dalej
*   [Nechat mu ji.]
    ~ jozek_mial_figurke = true
    Jaromir chlapci figurku vrátil a Józek s ní utíkal domů. Druhý den přišla k Jaromirovi matka Józka, bledá, s figurkou zabalenou v zástěře. Józek s ní v pěsti prospal celou noc a ze spaní mluvil cizím hlasem, a ráno se probudil s mokrými vlasy, ačkoli ho nikdo nekoupal. # pokaz: matka
    – Vezmi si to – řekla. – Ty jsi Maćkův vnuk. Ty víš, co to je.
    ~ ekwipunek += figurka
    Jaromir schoval figurku do truhly pod postelí. # dalej
-   -> wspolny_sen

= figurka_z_bagna
# tlo: kladka_naprawa
V polovině března, když voda začala opadat, šel Jaromir s Antkem opravit lávku přes mokřady, kterou strhla povodeň. Vytahoval z bahna starý kůl, když uviděl, že na něm něco vězí – černé, obalené kalem. Seškrábal bláto nožem.
Dřevěná figurka, z jedné strany ohořelá. Voda z ní za ta léta saze nesmyla. Jaromir si vzpomněl, co mu otec v dětství vyprávěl o dědečkovi Maćkovi a o figurce, kterou ten ztratil v bažině hned první jaro. # pokaz: figurka
# pytanie: Co udělá Jaromir?
*   [Vzít figurku.]
    ~ ekwipunek += figurka
    Jaromir figurku zabalil do hadru a strčil si ji za košili. Antek se na něj zamračeně díval, ale nic neřekl. Doma ji Jaromir schoval do truhly pod postelí. # dalej
*   [Hodit ji zpátky do bažiny.]
    ~ odrzucil_figurke = true
    Jaromir se rozmáchl a mrštil figurkou co nejdál, do černého oka mezi bulty. Bažina ji pohltila, aniž se na vodě udělal jediný kruh. # pokaz: plusk
    ~ ekwipunek += figurka
    Ale ráno, když Hanka otevřela dveře, ležela figurka na prahu – mokrá, obalená okřehkem, obrácená tváří do jizby. Jaromir ji schoval do truhly dřív, než ji uviděla Marysia. # dalej
-   -> wspolny_sen

= wspolny_sen
# tlo: sen_kladka
~ zapiski += ogniki_2
{ not przeszukal_zgliszcza:První se ten sen zdál Józkovi.|První se ten sen zdál Józkovi, nejmladšímu pravnukovi starého Staše.} Po něm dceři mlynáře z Bukowce, potom dvojčatům Kowalczykových. Za týden už matky u studny nemluvily o ničem jiném, protože každé dítě snilo totéž: že stojí v noci na lávce nad mokřady, kolem poblikávají světla a pod prkny, v černé vodě, někdo převrací hliněné hrnce, jeden po druhém, a nahlíží pod každý. A že ten někdo nakonec zvedne hlavu a zeptá se: „Kde je moje panenka?“ # pokaz: glowa
{ not odrzucil_figurke && not jozek_mial_figurke:
    Po několika nocích se tentýž sen zdál i Jaromirovi – jedinému dospělému ve vsi. Vždyť jen on vzal figurku z vlastní vůle. Před úsvitem vyskakoval z lože s hukotem vody v uších a s mokrýma nohama, ačkoli spal pod peřinou.
}
Marysia se každou noc budila s pláčem{ skarb_dla_corki: a pěstičkou svírala řemínek s {skarb_jaromira == muszelka:mušličkou|{skarb_jaromira == pioro:sojčím pírkem|hřebíkem}}, který od zimy nosila na krku}. Ukazovala prstíkem na okno a opakovala slova, která ji nikdo neučil:
– Mokrý pán. Mokrý pán.
Bludičky nad mokřady hořely každou nocí blíž. Nejdřív jen za lávkou, potom na louce, a nakonec stály v rákosí hned za ploty – jako lidé, kteří čekají, až někdo otevře dveře. # pokaz: ognie
{ figurka_u_staruchy:
    V neděli přišla Jagna z Bukowce pěšky, sama, a hned na prahu se zeptala, jestli se dětem ve vsi zdají sny.
- else:
    Téhož týdne koupila Hanka na trhu v Bukowci pelyněk od cizí bylinkářky – hubené ženy v šedém šátku, s jedním okem zakaleným bělmem. Když bylinkářka vracela drobné, popadla Hanku náhle za ruku a přičichla k jejím prstům.
    – Cítím popel – zašeptala. – Starý popel, od vody. Máte ho doma, že ano?
    { przeszukal_zgliszcza && not figurka_w_bagnie:
        – Moje babička chtěla kdysi takovou věc koupit od nějakého chlapce na trhu – dodala tišeji. – Neprodal jí ji. Až do smrti nevěděla, komu ji nakonec dal.
    }
    Řekla, že se jmenuje Jagna a že do Letnic zůstane v Bukowci. Hanka ji přivedla do chalupy ještě téhož odpoledne, aniž se muže zeptala na názor.
}
{figurka_u_staruchy:– Řekni jí o těch snech – ozvala se žena, než Jaromir stačil otevřít ústa. – Sama to přinesla, ať ví, co z toho vyrostlo.|– Jestli jsi něco schoval, netaj to před ní – ozvala se žena, než Jaromir stačil otevřít ústa. – {odrzucil_figurke && figurka_w_bagnie:Viděla jsem, co se vrátilo na náš práh.|{jozek_mial_figurke:Viděla jsem, co přinesla matka Józka.|Viděla jsem, jak se díváš pod postel.}}}
# pytanie: Co udělá Jaromir?
*   [{figurka_u_staruchy:Vyprávět Jagně o snech.|Ukázat Jagně figurku a vyprávět jí o snech.}]
    ~ zaufal_jagnie = true
    { figurka_u_staruchy:
        // Jagna przywiozła figurkę i wiedziała tylko, że babka bredziła o lalce i o wodzie – dopiero sny dzieci składają jej to w całość.
        Jaromir jí vyprávěl o lávce, o hrncích převracených na dně mokřadů a o otázce, kterou ve snu slyšelo každé dítě. Při slově „panenka“ Jagna zbledla.
        – Babička v horečce mluvila jen o panence a o vodě. Myslela jsem, že blouzní – řekla tiše. – Staré bylinkářky o takových věcech vyprávěly: panenka se vyřezává z kořene vytaženého z bažiny a dává se jí jméno toho, kdo tam přebývá. Kdo má takovou panenku, za tím on jde. Dlouho spal, a teď se vrátila k jezeru a volá ho. A děti to slyší – uši mají citlivější než my.
    - else:
        Jagna dlouho otáčela figurkou v prstech, nakloněná k oknu, protože i zdravé oko měla slabé.
        – To je panenka – řekla nakonec. – Babička mi o takových vyprávěla. Bylinkářka od jezera ji vyřezala z kořene, který vytáhla z bažiny, a dala jí jméno toho, kdo tam přebývá. Kdo má panenku, za tím on jde. Dokud ležela {przeszukal_zgliszcza && not figurka_w_bagnie:daleko|netknutá}, spal. Teď se vrátila – a volá ho. A děti to slyší – uši mají citlivější než my.
        Zabalila figurku do hadru a vrátila ji Jaromirovi.
    }
    – Oheň ji nevezme, už v něm jednou byla. Utiší ji jen posvěcená země. {odrzucil_figurke:Nebo… – zarazila se a zavrtěla hlavou. – Ne. Mě už neposlechne. Odstrčili jste ji, a ona se k vám stejně vrátila. Teď je vaše.|{figurka_u_staruchy:Babička mi kázala vrátit ji tam, odkud přišla, a vrátila jsem ji. Zpátky si ji nevezmu.|Nebo… – zaváhala – nebo mi ji dejte. Odnesu ji tak daleko, že ji neuslyší.}} # dalej
*   [Neříct jí nic.]
    {figurka_u_staruchy:– Děti spí klidně – zalhal Jaromir.|– Nevím, o čem mluvíš – odpověděl Jaromir.}
    Jagna pokývala hlavou, jako by právě tohle čekala.
    – Až světla dojdou k prahu – řekla – přijďte za mnou. Do Letnic jsem v Bukowci.
    Hanka ji vyprovodila až za plot a dlouho si tam s ní šeptala. Do večera na Jaromira nepromluvila ani slovo. # dalej
-   -> wielki_czwartek

= wielki_czwartek
# tlo: noc_kladka
{ not odrzucil_figurke && not jozek_mial_figurke:
    V noci Zeleného čtvrtka přišel k Jaromirovi sen jako každou noc – jenže tentokrát stál na lávce, mezi bludičkami, Józek. Jaromir vyskočil z lože dřív, než pochopil, že už nespí. Popadl sekeru{ siekiera_dziadka: po dědečkovi}, lucernu a z truhly uzlíček s figurkou. Nemusel se nikoho ptát, kam běžet. # pokaz: jozek
    Za ohradami, v rákosí, blikala světla – a mezi nimi šla k lávce malá světlá postava, bosá, s rukama nataženýma před sebe. Jaromir doběhl na břeh ve chvíli, kdy se chlapec zastavil v půli cesty. Voda pod prkny se zavířila a vynořila se z ní šedá ruka. Sevřela se Józkovi kolem kotníku.
- else:
    V noci Zeleného čtvrtka probudil Jaromira křik na cestě: matka Józka běhala od plotu k plotu s lucernou a volala syna, jehož lůžko našla prázdné. Když Jaromir vyhlédl ze síně, stálo na prahu bledé světlo, tak blízko, že osvětlovalo suky v prknech – a odplulo do tmy, jakmile se na ně podíval. Popadl sekeru{ siekiera_dziadka: po dědečkovi}, lucernu a uzlíček s figurkou – bál se ji nechat doma, u Marysie. Nejdřív běželi s matkou Józka k jezeru a teprve odtud Jaromir uviděl, že se světla slila do hloučku na jednom místě. # pokaz: jozek
    Když doběhl, bylo skoro pozdě. Šedá ruka už chlapce stáhla dolů – Józek visel po pás v černé vodě a ze spaní se jednou rukou držel lávky.
}
{ figurka_u_staruchy:
    Stvůra se vynořovala pomalu – obrovská, shrbená, s vlasy jako mokré vodní řasy a s očima, které zelenavě svítily jako práchno. Na rameni měla starou, hlubokou jizvu – stopu po sekeře, kterou ji před lety udeřil dědeček Maciek. Józek nekřičel. Spal. # pokaz: stwor, blizna
- else:
    Stvůra se vynořovala pomalu – obrovská, shrbená, s vlasy jako mokré vodní řasy a s očima, které zelenavě svítily jako práchno. Józek nekřičel. Spal. # pokaz: stwor
}
{ oblawa_wilk == wydal_wilka:
    Za mokřady zavyl vlk – chraptivě, s utrženým koncem, stejně jako té noci po honu. Stvůra otočila hlavu tím směrem. Po hrázi, mezi olšemi, se posunulo něco bílého, nízko a nerovně, jako by to šetřilo jeden bok – a zmizelo ve tmě.
- else:
    Za mokřady zavyl vlk – táhle a čistě, až se zachvěly plamínky v rákosí. Stvůra otočila hlavu tím směrem. Po hrázi, mezi olšemi, se mihlo něco bílého, rychleji než pes – a zmizelo ve tmě.
}
Jaromir nevěděl, komu byl ten hlas výstrahou – stvůře, nebo jemu.
~ zapiski += stwor_3
# pytanie: Co udělá Jaromir?
*   [Udeřit stvůru sekerou.]
    ~ noc_na_kladce = siekiera_na_kladce
    Jaromir skočil na lávku a sekl ze všech sil. Ostří vniklo hluboko do šedého ramene{ figurka_u_staruchy:, těsně vedle staré jizvy}. Stvůra zařvala – dlouze, z hrdla, až se roztřásla prkna – pustila chlapce a na oplátku Jaromirovi rozdrásala drápy plece. Propadla se pod vodu, jako by ji někdo stáhl. # pokaz: siekiera
    Jaromir popadl Józka do náručí a vynesl ho na břeh. Chlapec se probudil až v chalupě, u pece, a nic si nepamatoval. Rána na Jaromirově pleci se hojila až do žní. # dalej
    -> co_z_figurka
*   { ekwipunek ? figurka } [Hodit jí figurku.]
    ~ noc_na_kladce = figurka_dla_stwora
    ~ los_figurki = figurka_u_stwora
    Jaromir rozbalil hadr a mrštil figurkou do vody, těsně vedle stvůry.
    ~ ekwipunek -= figurka
    Ruka v jediném okamžiku pustila chlapcův kotník. Stvůra figurku popadla, přitiskla si ji k hrudi jako matka dítě a sklouzla do černé vody hladce jako vydra. Světla nad mokřady zhasla všechna naráz, jako by je někdo sfoukl. # pokaz: figurka
    Hned nato se voda pod prkny s úpěním jako praskající led stáhla do hlubiny a strhla s sebou kůly. Jaromir sotva stačil seskočit s Józkem na břeh, než se lávka – stará jako vesnice – zlomila vpůli a zmizela pod vodou. Chlapec spal dál, klidně, s tváří na jeho rameni. # dalej
    -> paliki_pod_droge
*   [Rozbít lucernu o vodu.]
    ~ noc_na_kladce = latarnia_na_wodzie
    Jaromir mrštil lucernou stvůře pod nohy. Sklo prasklo, olej se rozlil po vodě a vyšlehl plamenem. Stvůra pustila chlapce a s vytím ustoupila do tmy a Jaromir popadl Józka dřív, než ho černá voda stačila stáhnout. # pokaz: latarnia
    Ale oheň se rozběhl po suchých loňských stéblech jako po střelném prachu. Než chlapi přiběhli s vědry, shořela půlka rákosí i kaplička u lávky – jedna z nejstarších ve vsi. Ráno z ní zbyly černé pahýly a soška svatého s ohořelou tváří. # pokaz: pozar # dalej
    -> co_z_figurka

= co_z_figurka
# tlo: skrzynia_izba
Po Velikonocích sedával Jaromir večer dlouho nad truhlou. Světla nad mokřady dál hořela, i když dál od plotů než předtím, a Marysia se stále v noci budila a ukazovala na okno.
# pytanie: Co udělá s figurkou?
*   [Hodit figurku do pece.]
    ~ los_figurki = figurka_w_skrzyni
    Figurka ležela v žáru celou noc a nechytla – jen syčela jako mokré dřevo a z pece táhl smrad bažiny. Ráno ji Jaromir vytáhl pohrabáčem. Byla ohořelá přesně tak jako předtím, ani o trochu víc. V síni stála všechna vědra plná kalné bahnité vody, ačkoli do nich Hanka večer nalila čistou ze studně. # pokaz: piec
    Jaromir zamkl figurku do truhly, truhlu omotal řetězem a víc o ní nemluvil. # pokaz: lancuch # dalej
*   [Zakopat ji pod kapličkou.]
    ~ los_figurki = figurka_pod_kapliczka
    ~ ekwipunek -= figurka
    Po setmění šel Jaromir s lopatou ke kapličce {noc_na_kladce == latarnia_na_wodzie:u cesty do Bukowce, za potokem|u lávky}. Vykopal jámu na loket hlubokou, zabalil figurku do čistého plátna, zasypal ji a hlínu udusal nohama. Téže noci světla nad mokřady zhasla a děti přestaly snít. # pokaz: lopata
    Nikomu neřekl, kde ji zakopal. Ani Hance. # dalej
*   { zaufal_jagnie } { not odrzucil_figurke } { not figurka_u_staruchy } [Odevzdat ji Jagně.]
    ~ los_figurki = figurka_u_jagny
    ~ ekwipunek -= figurka
    Jaromir donesl uzlíček do Bukowce. Jagna ho vzala oběma rukama, opatrně, jako něco velmi křehkého, a hned ho schovala na dno koše pod svazky sušených bylin. # pokaz: kosz
    – Neboj se – řekla. – Už se nevrátí.
    Nazítří odjela. Té noci světla nad mokřady zhasla a děti přestaly snít. # dalej
-   -> paliki_pod_droge

= paliki_pod_droge
# tlo: wiosna_paliki
~ zapiski += zielarka_3
V květnu porodila Jadwisia Antkovi syna. Antek si umínil, že se chlapec bude jmenovat Franek, a nikdo se mu neodvážil odporovat. Za kmotra si vyprosil Jaromira. # pokaz: antek
{ los_figurki:
- figurka_u_stwora: Světla nad mokřady se už ani jednou nerozsvítila. Józek si na tu noc nepamatoval. Lávku nikdo neobnovil: kůly, které chlapi zatloukali do bahna, ležely ráno vytržené na břehu, a tak se odtud na vzdálenější louky muselo chodit kolem bažiny po okraji boru. Starý Staš, když uslyšel, co Jaromir udělal, pokřižoval se a už nikdy nenahodil udici v tamějších okách.
- figurka_w_skrzyni: Sny přicházely stále řidčeji, ale docela nepřestaly. Občas, za bezměsíčných nocí, si Marysia sedla na lůžku a dívala se na truhlu pod postelí, dokud ji Hanka neuložila.
- else: Děti ve vsi zapomněly na sen dřív, než o něm matky stačily přestat klevetit. Marysia zase prospala celé noci.
}
{ noc_na_kladce == siekiera_na_kladce:
    Na pleci zůstala Jaromirovi tlustá, růžová jizva{ figurka_u_staruchy && los_psa == oswojony: – na tomtéž místě, kde kdysi drápy stvůry zasáhly dědečka}.
}
{ noc_na_kladce == latarnia_na_wodzie:
    Na místě shořelé kapličky zarazili chlapi do země březový kříž. Novou nikdo nepostavil – nebylo za co. # pokaz: krzyz
}
Koncem května hledala Hanka Marysii po celém stavení. Našla ji až za stodolou, v žitě po podpaží. Malá stála bez hnutí, s hlavičkou nakloněnou na stranu, jako někdo, kdo naslouchá.
– Máma zpívá – řekla a ukázala ručkou do obilí, na opačnou stranu, než stála chalupa.
{ glos_w_lesie:
    Když to Hanka večer vyprávěla, vybavila se Jaromirovi štědrovečerní noc před lety a matčin hlas {figurka_u_staruchy:z mlhy nad polem|zpomezi stromů}{glos_w_lesie == odpowiedzial: – a potom smích, který vůbec nebyl její|{glos_w_lesie == kozuch: – a potom těžké kroky, které prošly těsně kolem| – a to, jak ho ten hlas honil po sněhu až k plotu Stašových}}. Nic neřekl. Jen té noci dvakrát vstal podívat se, jestli Marysia spí.
}
Začátkem června začali Urbaniakovi lidé zatloukat do země kolíky: od pily přes louky a mokřady, rovnou pod bor. Pan Urbaniak chtěl mít cestu do lesa. Za týden kolíky zatlučené nejblíž boru vyrazily zelené výhonky – ze suchého, oloupaného dřeva. # pokaz: paliki # dalej
-> rozdzial_trzynasty_ciag_dalszy


// Koniec rozdziału trzynastego – dalej rozdział czternasty.
=== rozdzial_trzynasty_ciag_dalszy ===
# ozdobnik
_Konec třinácté kapitoly._ # dalej
-> rozdzial_czternasty
