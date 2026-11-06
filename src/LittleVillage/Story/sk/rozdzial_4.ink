// ------------------------------------------------------------
//  Rozdział czwarty – Marzanna. Przedwiośnie, Jaromir ma dziesięć
//  lat. Topienie Marzanny (coś wciąga kukłę pod wodę), prawda
//  o nocy z prologu, przewrócona kapliczka, ludzie Urbaniaka.
//  Prawda zależy od zakończenia prologu:
//    figurka_u_staruchy i pies   – umierająca babka Marianna;
//    figurka_u_staruchy bez psa  – ojciec, który przeżył pod podłogą;
//    inaczej                     – ojciec, który kiedyś się z tego śmiał.
// ------------------------------------------------------------

=== rozdzial_czwarty ===
# tlo: stodola_marzanna
# rozdzial: Kapitola štvrtá
# tytul: Morena
V marci začalo konečne kvapkať zo striech, po poliach sa rozbehli kalné potôčiky a v noci ľad na jazere praskal a stonal tak, že psy po dvoroch zavýjali. Močiare sa prebudili prvé – čierna voda presakovala cez sneh, na úsvite sa nad ňou dvíhala para a z tôní pri lávke sa zas ozývalo bublanie, ktoré dlhé mesiace nebolo počuť.
Na piatu pôstnu nedeľu sa deti z celej Zapadliny schádzali, aby utopili Morenu. Tak sa to robilo odjakživa: kto vynesie zimu z dediny a hodí ju do vody, ten privolá jar a zaženie choroby, hlad i všetko zlé.
Slamenú figúru chystali v stodole u Stašovcov. Franek, ktorý od Vianoc už nechodil do školy a pomáhal dedkovi na poli, skrútil zo slamy trup a priviazal ho na palicu. Antek priniesol staré šatstvo po matke – sukňu a šatku – a Jaromir vtlačil figúre do hlavy dva kúsky uhlia namiesto očí a sadzami jej namaľoval ústa. Hanka navliekla na niť škrupinky z vajec, aby mala Morena korálky. Vyzerala hrôzostrašne – a práve o to išlo. # pokaz: kukla
Dievča siahlo k vrkoču a začalo z neho rozväzovať červenú stužku.
– Dám jej svoju – povedala. – Nech si so sebou odnesie všetko zlé.
{ poszedl_po_wstazke:
    Jaromir si spomenul na starca v klobúku z machu a na červeň, čo sa trepotala v jeho dlani.
- else:
    Jaromir si spomenul na ráno, keď tá istá stužka visela na ich plote, uviazaná na mašľu rukou, ktorú nikto nevidel.
}
# pytanie: Dá Hanka Morene stužku?
*   [Dovoliť Hanke priviazať stužku.]
    ~ wstazka_marzanny = true
    Hanka uviazala stužku na slamený krk figúry a odstúpila, aby sa na ňu pozrela. Červeň na sivej slame vyzerala ako rana. # pokaz: wstazka # dalej
    -> topienie
*   [Prehovoriť ju, aby stužku nedávala.]
    – Nerob to – poprosil Jaromir. – Tá sa už raz vrátila z lesa.
    Hanka sa na neho čudne pozrela, ale stužku si schovala do vrecka na zástere. Figúra ostala sivá, len korálky zo škrupiniek ticho hrkotali, keď sa jej niekto dotkol. # dalej
    -> topienie

= topienie
# tlo: rozlewisko
Vyrazili popoludní. Vpredu niesol Franek Morenu na palici, vysoko, aby ju všetci videli, za ním išli deti z celej dediny a na konci zopár báb, ktoré sa tvárili, že sa idú len pozrieť. Spievali z plných pľúc:
„Morena, Morena, panenka zimná,
choď do vody hlbokej, nevracaj sa nám skoro!“
Sneh čľapkal pod krpcami a vo vzduchu po prvý raz po mesiacoch voňala mokrá zem.
Cestou ju každú chvíľu niekto šklbal za slamu alebo šľahal prútom, lebo tak sa patrilo – zima nesmela odísť v pokoji.
Prišli k tôni pri lávke. Ľad sa tam už takmer celkom roztopil, len pri brehoch sa držala sivá, deravá kôra, a v strede stála čierna voda, hladká ako sklo. Hanka chytila Jaromira ľadovými prstami za rukáv a on cítil, ako mu srdce búši až v hrdle. Franek sa rozohnal a zo všetkých síl mrštil Morenou ďaleko pred seba. # pokaz: rzut
Figúra pľasla o hladinu a zakolísala sa. Chvíľu sa držala na povrchu a sukňa sa okolo nej rozprestrela ako kvet. Zrazu, jedným pohybom, šla pod vodu. Nie tak, ako sa potápa vec, ktorá nasiakla. Tak, akoby ju niekto trhol zospodu. # pokaz: tonie
Deti stíchli. Na mieste, kde zmizla, prasklo niekoľko veľkých, lenivých bublín a rozbehli sa kruhy.
– Teraz rýchlo preč – zašepkala Hanka. – A neobzerať sa!
{ ekwipunek ? ksiega:
    Jaromir to vedel tiež. V knihe pána Ignacyho čítal, že kto sa obzrie za topenou Morenou, toho choroba dobehne ešte pred Veľkou nocou.
- else:
    – Kto sa obzrie, toho choroba dobehne ešte pred Veľkou nocou – dodala ktorási z báb.
}
Všetci sa dali na útek. Za Jaromirovým chrbtom čľuplo – nahlas, ťažko, akoby sa z vody vynáralo čosi veľké. # pokaz: ucieczka
# pytanie: Čo urobí Jaromir?
*   [Obzrieť sa.]
    ~ obejrzal_sie = true
    Obzrel sa. Len na okamih.
    Pri lávke, v čiernej vode, čosi držalo Morenu – sivá ruka zakončená drápmi, oblepená vodnými riasami. Nad hladinou, vyššie, než by siahol dospelý chlap, žeraveli dve oči, zelenkasté a kalné ako svetlá nad bažinou.{ wstazka_marzanny: Pazúry si pomaly navíjali červenú stužku.} Potom sa rameno stiahlo a voda sa zavrela bez stopy. # pokaz: reka
    Tej noci dostal Jaromir horúčku. Ležal tri dni, matka mu kládla na čelo mokré handry a nevedela pochopiť, prečo v blúznení volá čosi o kaplnke pri lávke. # dalej
    -> prawda
*   [Bežať ďalej a neobzerať sa.]
    Neobzrel sa. Bežal a zvieral Hanku za ruku až k prvým plotom, a za nimi, od močiarov, sa niesol tichý chichot – taký, akým sa smeje niekto, kto dostal dar. Nad bažinou sa rozsvietilo niekoľko bledých bludičiek. – To sú tí, čo upálili bosorku – vyfučala jedna z báb. – Kto pôjde za takou bludičkou, ten sa už nevráti. # pokaz: chichot
    ~ zapiski += ogniki_1
    { wstazka_marzanny:
        Na druhý deň chodila Hanka s rozpleteným vrkočom a každú chvíľu po ňom siahala rukou, akoby čosi hľadala. # dalej
    - else:
        Ešte dlho nikto z nich nepovedal ani slovo. # dalej
    }
    -> prawda

= prawda
{ figurka_u_staruchy && los_psa == oswojony: -> prawda_babki }
{ figurka_u_staruchy: -> prawda_ojca_sieroty }
-> prawda_ojca

= prawda_babki
# tlo: babka_lozko
Tej jari už babka Marianna nevstala. Od Hromníc ležala na posteli za pecou, čoraz drobnejšia a ľahšia, akoby si ju zem brala kúsok po kúsku. Keď sa dopočula o Morene, dala zavolať vnuka.
– Sadni si – zašepkala. Ruka, ktorou ho chytila za zápästie, bola suchá a studená ako list. – Tvoj otec ti to nepovie. Nedokáže to. Tak ti to poviem ja, kým ešte môžem.
Povedala mu všetko. {zona_wie:O tom, ako dedko Maciek našiel v spálenisku nad jazerom ohorenú figúrku a predal ju v meste starenke v kapucni.|O tom, ako sa dedko Maciek vrátil z mesta premenený a nechcel povedať, čo ho trápi.} O stvore, ktorá o niekoľko nocí neskôr vylomila dvere ich chalupy. O psovi, ktorý sa na ňu vrhol prvý, a o sekere, ktorá sa jej zaťala hlboko do ramena. O tom, ako dedko skonal na hlinenej dlážke s hlavou v jej lone a malý Dobrosław presedel celú noc pod podlahou s dlaňami pritisnutými na uši.
– To, čo bolo vo vode, bola tá stvora – povedala. – Neumrela. Také ako ona neumierajú. Čakajú. Kto sa utopí bez farára, nejde ani do neba, ani do pekla, ale ostane vo vode. Starí hovorili, že taký drží na dne duše iných utopencov pod prevrátenými hlinenými hrncami a v noci ich obracia jeden za druhým, keď si obzerá svoj majetok. A keď niektorý hrniec praskne, duša vyletí bublinou na hladinu.
Babka ukázala do kúta za posteľou. Pod starým kabátom ležala sekera s ošúchaným tmavým poriskom. Na ostrí, hoci vyčistenom do lesku, bolo stále vidieť hrdzavé šmuhy. # pokaz: siekiera
{ krzesiwo_dziadka:
    ~ ekwipunek += krzesiwo
    ~ krzesiwo_od_babki = true
    – Jeho. Vezmeš si ju, keď dorastieš. – Spod vankúša vytiahla malé, sčernené kresadlo. – A toto si vezmi už teraz. {zona_wie:Ležalo v popole spolu s tou figúrkou. Dedko ho nedal z rúk až do konca.|Odkiaľ ho mal, mi nikdy nepovedal. Ale nedal ho z rúk až do konca.} # pokaz: krzesiwo
- else:
    – Jeho. Vezmeš si ju, keď dorastieš.
}
– Sľúb mi jedno – dodala po chvíli. – Že nikdy nevojdeš do boru. Nech by ťa volal hocikto.
-> obietnica

= prawda_ojca_sieroty
# tlo: prog_noc
{obejrzal_sie:Keď Jaromir po horúčke vstal z postele|Keď sa Jaromir vrátil od tône}, otec sa na nič nepýtal. Celý večer mlčal. Až keď matka zaspala, vzal syna za plece, vyviedol ho na prah a sadol si vedľa neho do tmy.
– Mal som toľko rokov ako ty – začal a hlas, ktorý už veľmi dlho nepoužil, sa mu lámal. – Možno menej.
Povedal všetko. O noci, keď čosi vylomilo dvere ich chalupy. O doskách nad hlavou, cez ktoré presvital mesiac, o kriku – najprv otcovom, potom matkinom – a o čomsi teplom, čo mu kvapkalo na vlasy. O vetrení tesne nad sebou, chrapľavom ako u psa pri nore.
– To, čo bolo vo vode, bolo práve to – povedal. – Preto skúšam závoru. Každú noc, už takmer šesťdesiat rokov.
– Sľúb mi jedno – poprosil. – Že nikdy nevojdeš do boru. Nech by ťa volal hocikto.
-> obietnica

= prawda_ojca
# tlo: izba_wieczor
Keď otec počul, čo sa stalo pri tôni, nezasmial sa. Jaromir po prvý raz videl, že historka o stvore otcovi nevyludila na tvár úsmev.
– Tvoj dedko mi rozprával to isté – povedal ticho a obracal v prstoch hrnček. – {obejrzal_sie:O ruke z vody.|O čomsi, čo sťahuje pod vodu zospodu.} O hlase, ktorý volá od bažín. O bylinkárke upálenej v chalupe nad jazerom.{ pregi_na_lydkach: Ukazoval mi pruhy na lýtkach, po päť z každej strany{ uratowal_andrzej: – a hovoril, že keby nebolo starého Andrzeja so žrďou, nebolo by ani jeho, ani mňa}. Myslel som, že sú od pijavíc.} Smial som sa. Nazdával som sa, že ma chce vystrašiť, aby som sa netúlal sám k vode. – Dlho mlčal. – A pred smrťou mi stisol ruku a zašepkal: „Stráž kaplnky, Dobruš. Neboli to rozprávky.“
– Hovoril aj, že kto sa utopí bez farára, ostane vo vode a drží tam duše iných utopencov pod hlinenými hrncami. Keď niektorý hrniec praskne, duša vyletí bublinou na hladinu. – Otec odložil hrnček. – Pamätáš si tie bubliny pri lávke?
– Sľúb mi jedno – poprosil. – Že nikdy nevojdeš do boru. Nech by ťa volal hocikto.
-> obietnica

= obietnica
# pytanie: Sľúbi to Jaromir?
~ zapiski += (stwor_2, zielarka_2)
*   [Sľúbiť.]
    ~ obietnica_bor = true
    – Sľubujem – povedal Jaromir.
    { figurka_u_staruchy && los_psa == oswojony:
        Ešte nevedel, aké ťažké bude raz to slovo dodržať.
        -> smierc_babki
    }
    Ešte nevedel, aké ťažké bude raz to slovo dodržať. # dalej
    -> kapliczka
*   [Mlčať.]
    Jaromir neodpovedal. Pomyslel na Hanku a na červenú stužku,{ poszedl_po_wstazke: na starca v klobúku z machu,} na hlas, ktorý ho v zime volal {figurka_u_staruchy:z hmly nad poľom|spomedzi stromov}, a nedokázal zo seba dostať to jediné slovo.
    { figurka_u_staruchy && los_psa == oswojony:
        Babka sa mu dlho dívala do očí a potom si povzdychla, akoby práve toto čakala.
        -> smierc_babki
    }
    Otec sa mu dlho díval do očí a potom prikývol, akoby práve toto čakal. # dalej
    -> kapliczka

= smierc_babki
Marianna zomrela o niekoľko dní, na Zelený štvrtok. Prosila, aby ju pochovali pri mužovi, na cintoríne v meste, a otec jej vôľu splnil, hoci cesta s rakvou na voze trvala celý deň. # pokaz: swieca # dalej
-> kapliczka

= kapliczka
# tlo: kapliczka_przewrocona
Po Veľkej noci začala zem osychať a na medzách zažltlo prvé záružlie. Raz popoludní, keď sa vracali zo školy chodníkom pod borom, Jaromir a Antek{ ekwipunek ? szczeniak: a s nimi pes {imie_psa}, ktorý teraz chodil všade za Jaromirom,} uvideli, že kaplnka na kraji lesa leží v tráve. Obaja zostali stáť ako prikovaní. V tichu, ktoré zrazu nastalo, bolo počuť len to, ako kvapky padajú z konárov na striešku ležiacu v blate.
Bola to jedna z najstarších kaplniek v Zapadline, postavená ešte vtedy, keď bol otec {figurka_u_staruchy:chlapcom|mládencom}. Drevený stĺp vytrhli zo zeme aj s drnom, strieška sa odlomila a ležala o niekoľko krokov ďalej a soška – sivá od dažďov, s obličajom zotretým {figurka_u_staruchy:polstoročím|desiatkami rokov} – trčala v blate tvárou nadol. Tráva naokolo bola rozrytá, akoby niekto ťahal kaplnku k stromom a v polovici cesty ju nechal ležať.
{ ekwipunek ? kora:
    Pri päte stĺpa niekto vyškriabal do dreva špirálu – rovnakú ako na borovici pri chodníku. Jaromir nemusel vyťahovať z tašky svoj kúsok kôry, aby to vedel. # pokaz: spirala
}
{ ekwipunek ? szczeniak:
    {imie_psa} naježil srsť a vrčal smerom k boru, cúvajúc na stuhnutých labách. # pokaz: pies
}
– Treba to povedať dospelým – zašepkal Antek.
# pytanie: Čo urobia chlapci?
*   [Postaviť kaplnku s Antkom, bez dospelých.]
    ~ kapliczka_podniesiona = true
    Stĺp bol ťažký, mokrý a šmykľavý od blata. Zapreli sa doň obaja, až napokon stál vo vytrhnutej jame a knísal sa ako opitý. Jaromir ho obložil kameňmi a udupal okolo neho zem, a Antek utrel sošku rukávom, vložil ju pod striešku a nanovo ju pribil, klopkajúc plochým okruhliakom. # pokaz: podniesiona
    Keď skončili, od boru zavial vietor – studený, hoci deň bol teplý – a na chvíľu zašumeli naraz všetky stromy na kraji lesa. Potom stíchlo. # pokaz: wiatr
    Keď sa to otec dozvedel, išiel sa na kaplnku pozrieť a vrátil sa s tvárou, z ktorej Jaromir nevedel nič vyčítať.
    – Dobre ste urobili – povedal iba. # dalej
    -> urbaniak
*   [Bežať po dospelých.]
    Utekali do dediny, čo im sily stačili. Otec a starý Staš išli ešte v ten večer, s lampášom a lopatou. Vrátili sa po polnoci, zablatení a mlčanliví. # pokaz: latarnia
    Kaplnka už neležala tam, kde ju chlapci videli. Našli ju až o niekoľko desiatok krokov ďalej, medzi prvými smrekmi, zarazenú do zeme hore nohami. Postavili ju na pôvodné miesto a zakopali hlbšie ako predtým.
    – Dakto tu kaplnky nechce – zahundral Staš, keď si myslel, že ho nik nepočuje. # dalej
    -> urbaniak

= urbaniak
# tlo: urbaniak
V máji, keď už bociany sedeli na starom hniezde na streche vyhne, prišla do Zapadliny bryčka. Vystúpil z nej statný pán v mestskom plášti a klobúku a za ním dvaja chlapi so sekerami a dlhým povrazom s uzlami. Celý deň chodili popri kraji boru – merali, čosi si zapisovali a každých pár krokov vyrezávali do kôry dubov biele znaky. # pokaz: znaki
Jaromir sa na nich díval spoza plota. Každý taký zárez vyzeral ako čerstvá rana.
– Pán Urbaniak – povedal otec, keď bryčka odišla. – Zemepán mu predal výrub. Bude tu píla. # pokaz: odjazd
Tej noci sa po prvý raz po rokoch ozvalo z boru zavýjanie – dlhé, pretiahnuté, ani vlčie, ani psie. Ľudia zatvárali okenice a potajomky sa žehnali a Jaromir ležal v tme s perinou vytiahnutou až po oči a počúval, kým to neutíchlo. # pokaz: noc # dalej
-> rozdzial_czwarty_ciag_dalszy


// Koniec rozdziału czwartego i darmowej części – dalej rozdział piąty, już w pełnej wersji.
=== rozdzial_czwarty_ciag_dalszy ===
# ozdobnik
_Koniec štvrtej kapitoly._ # pelna_wersja # dalej
-> rozdzial_piaty
