// ------------------------------------------------------------
//  Przedmioty i ekwipunek.
//  Dodanie przedmiotu:   ~ ekwipunek += siekiera
//  Zabranie przedmiotu:  ~ ekwipunek -= chleb
//  Sprawdzenie:          { ekwipunek ? siekiera: ... }
// ------------------------------------------------------------

LIST Przedmioty = siekiera, chleb, pies_towarzysz, figurka, krzesiwo, zapasy, nasiona, nozyk, kora, ksiega, szczeniak, mak, monety, zoladz, piolun, korale, swiatek, podkowa, krzyzyk, gromnica, szczenie_psa, bucik_marysi, wstazka_marysi, rozaniec

// Ekwipunek na początku gry – to, co Maciek przyniósł w tobołku.
VAR ekwipunek = (siekiera, chleb)

// Nazwa wyświetlana w oknie ekwipunku.
=== function nazwa_przedmiotu(p)
{ p:
    - siekiera:
        { siekiera_dziadka:
            ~ return "Sekera dedka Maćka"
        }
        ~ return "Sekera"
    - chleb:     ~ return "Bochník chleba"
    - pies_towarzysz: ~ return "Pes – verný spoločník"
    - figurka:   ~ return "Ohorená figúrka"
    - krzesiwo:  ~ return "Kresadlo"
    - zapasy:    ~ return "Zásoby z mesta"
    - nasiona:   ~ return "Semená zeleniny"
    - nozyk:     ~ return "Nožík"
    - kora:      ~ return "Kôra so znamením"
    - ksiega:    ~ return "Kniha rozprávok"
    - szczeniak: ~ return imie_psa
    - mak:       ~ return "Hrsť maku"
    - monety:    ~ return "Mince z píly"
    - zoladz:    ~ return "Žaluď zo Starého duba"
    - piolun:    ~ return "Palina"
    - korale:    ~ return "Korálky z jarabiny"
    - swiatek:   ~ return "Soška z kaplnky"
    - podkowa:   ~ return "Kováčova podkova"
    - krzyzyk:   ~ return "Kováčov krížik"
    - gromnica:  ~ return "Hromničná svieca"
    - szczenie_psa:
        { rozdzial_trzynasty:
            ~ return "Ryšavý pes"
        }
        ~ return "Ryšavé šteňa"
    - bucik_marysi:
        { drugi_drewniak:
            ~ return "Dreváky Marysie"
        }
        ~ return "Drevák Marysie"
    - wstazka_marysi: ~ return "Stužka Marysie"
    - rozaniec: ~ return "Posvätený ruženec"
}
~ return ""

// Opis wyświetlany pod nazwą.
=== function opis_przedmiotu(p)
{ p:
    - siekiera:
        { siekiera_dziadka:
            ~ return "Sekera s ošúchaným tmavým poriskom. Dedko Maciek ju kedysi kúpil v meste za peniaze zo štyroch rokov roboty na cudzom poli. Otec ju dal Jaromirovi v deň svadby – teraz je gazdom on."
        }
        ~ return "Kúpená v meste za peniaze zo štyroch rokov roboty na cudzom poli. Na nej stojí celá budúcnosť."
    - chleb:     ~ return "Tvrdý, ražný, zavinutý do ľanovej handričky. Musí vystačiť nadlho."
    - pies_towarzysz: ~ return "Chudý, s dlhou papuľou a priveľkými labami. Ubránil Maćka pred stvorou z húštiny a od tej noci sa od neho nepohne ani na krok."
    - figurka:
        { rozdzial_trzynasty && przeszukal_zgliszcza && not figurka_w_bagnie:
            ~ return "Malá drevená postava s rukami, ktoré siahajú až k chodidlám, z jednej strany ohorená. Vrátila sa do Zapadliny po vyše šesťdesiatich rokoch. Drevo je vždy studené a vlhké, aj za suchého dňa."
        }
        { rozdzial_trzynasty:
            ~ return "Malá drevená postava s rukami, ktoré siahajú až k chodidlám, z jednej strany ohorená. Po vyše šesťdesiatich rokoch vyšla na povrch. Drevo je vždy studené a vlhké, aj za suchého dňa."
        }
        ~ return "Malá drevená postava s rukami, ktoré siahajú až k chodidlám, z jednej strany ohorená. Vyhrabaná z popola po chalupe bosorky."
    - krzesiwo:
        { krzesiwo_od_babki:
            ~ return "Malé, sčernené kresadlo dedka Maćka. Babka Marianna ho dala Jaromirovi na smrteľnej posteli. Dedko ho nedal z rúk až do konca."
        }
        { krzesiwo_na_slubie:
            ~ return "Malé, sčernené kresadlo dedka Maćka. Otec ho dal Jaromirovi v deň svadby spolu so sekerou – dedko ho nosil pri sebe až do konca."
        }
        ~ return "Ležalo v popole vedľa figúrky. Žeby ním podpálili chalupu bosorky?"
    - zapasy:
        { figurka_u_staruchy:
            ~ return "Dva bochníky chleba, vrece krúp, soľ, kus slaniny a kôš sadbových zemiakov. Kúpené za mince od stareny."
        }
        ~ return "Bochník chleba, hrsť soli a vrecúško krúp. Musí to vystačiť, kým niečo vyrastie."
    - nasiona:   ~ return "Kúpené na mestskom trhu. Bola jar – museli ich čím skôr zasiať."
    - nozyk:     ~ return "Dar od otca na meniny. Malý, s ošúchanou drevenou rúčkou a čepeľou, ktorú otec naostril oslou. Jaromir ním už vystrúhal nejeden luk."
    - kora:      ~ return "Kúsok borovicovej kôry stočený do trúbky, spod stromu so špirálou. Na hladkej strane niekto vyryl riadky čiarok a krúžkov – akoby písmená, a predsa ani jedno z nich Jaromir nepozná."
    - ksiega:
        { ksiega_zatrzymana:
            ~ return "Hrubý zošit pána Ignacyho, viazaný v koži a popísaný úhľadným, šikmým písmom – príbehy z okolia Bukového hrebeňa. Učiteľ mu dovolil nechať si ho. Čítať v ňom sa dá len cez deň."
        }
        ~ return "Hrubý zošit pána Ignacyho, viazaný v koži a popísaný úhľadným, šikmým písmom – príbehy z okolia Bukového hrebeňa. Čítať v ňom sa dá len cez deň a na Vianoce ho treba vrátiť."
    - szczeniak:
        { rozdzial_jedenasty:
            ~ return "Potomok psa dedka Maćka – kedysi šteňa od starého Staša, dnes už starý, so šedivou papuľou. Stále spí v nohách lôžka a stále cez spánok vrčí smerom k boru."
        }
        { rozdzial_piaty:
            ~ return "Potomok psa dedka Maćka, kedysi šteňa od starého Staša na Štedrý večer. Vyrástol z neho veľký pes so špicatými ušami a bielou škvrnou na hrudi. Spí v nohách lôžka a cez spánok vrčí smerom k oknu."
        }
        ~ return "Šteňa, potomok psa dedka Maćka, dar od starého Staša na Štedrý večer. Špicaté uši, biela škvrna na hrudi a laby priveľké na zvyšok tela. Spí v nohách lôžka a cez spánok vrčí smerom k oknu."
    - mak:       ~ return "Handrička s hrsťou maku potajomky odsypaného zo štedrovečernej misy. Podľa knihy pána Ignacyho musí polnočnica zrátať každé zrnko, kým podíde bližšie."
    - monety:    ~ return "Ťažké, studené strieborné mince s orlom na jednej strane – plat od pána Urbaniaka za leto pri ukladaní dosiek."
    - zoladz:    ~ return "Veľký, hladký žaluď spod koreňov vyrúbaného Starého duba. Stále je teplý, akoby v ňom niečo žilo."
    - piolun:    ~ return "Zväzok sivozelených stoniek s horkým, štipľavým pachom. Dala mu ho Hanka na Turíce – vraj to, čo vtedy vychádza z vody, sa paliny bojí viac ako ohňa."
    - korale:    ~ return "Šnúra korálok z jarabiny, nájdená na mostíku po noci s rusalkami. Patrili Kaśke Wójcikovej. Stále sú mokré a červené ako čerstvá krv."
    - swiatek:   ~ return "Drevená Matka Božia s dieťatkom, vytiahnutá v noci z Urbaniakovho voza, keď jeho ľudia vykopávali kaplnky spod boru. Tvár má dažďami zotretú tak, že ju sotva vidieť. Schovaná pod doskami v skrýši v starej baze."
    - podkowa:   ~ return "Železná podkova, ktorú na svadbu vykoval otec Hanky. Visí nad prahom chalupy ramenami nahor, aby dnu nevošlo nič zlé a aby sa šťastie nevysypalo."
    - krzyzyk:   ~ return "Malý železný krížik na remienku, ktorý na svadbu vykoval otec Hanky. Hanka ho nosí na krku a nesníma ho – kováč jej prikázal, aby to nikdy nerobila."
    - gromnica:  ~ return "Hrubá vosková svieca posvätená v Bukowci na Hromnice. V každom dome musí byť – na búrku, na pôrod aj na smrť."
    - bucik_marysi:
        { drugi_drewniak:
            ~ return "Pár malých lipových drevákov, natretých načerveno a vystlaných plsťou zo starého klobúka dedka Dobrosława. Druhý priniesol spod duba biely vlk."
        }
        { dlug_jagny == oddany_drewniak:
            ~ return "Malý lipový drevák, natretý načerveno a vystlaný plsťou zo starého klobúka dedka Dobrosława. Druhý si vzala Jagna."
        }
        { rozdzial_siedemnasty:
            ~ return "Malý lipový drevák, natretý načerveno a vystlaný plsťou zo starého klobúka dedka Dobrosława. Druhý ostal v bore."
        }
        ~ return "Malý lipový drevák, natretý načerveno a vystlaný plsťou zo starého klobúka dedka Dobrosława. Druhý ostal v raži, u tej, ktorá ho držala."
    - wstazka_marysi:
        { pani_w_zbozu_noc == gonil_babe:
            ~ return "Červená stužka, ktorú Hanka vplietla Marysii do vlasov v predvečer svätého Jána. Visela na bodliakoch pri medzi."
        }
        ~ return "Červená stužka, ktorú Hanka vplietla Marysii do vlasov v predvečer svätého Jána. Visela na borievke na kraji mladiny, vo výške detskej rúčky."
    - rozaniec: ~ return "Drevený ruženec, ktorý posvätil farár z Bukowca. Prisahal naň, že skoncuje s pohanstvom."
    - szczenie_psa:
        { rozdzial_dziewietnasty && not marysia_odzyskana:
            ~ return "Ryšavý pes s bielou škvrnou na hrudi, potomok psa dedka Maćka. Spí pod lavicou, na ktorej spávala Marysia, a nedá sa odtiaľ vylákať."
        }
        { rozdzial_trzynasty:
            ~ return "Ryšavý pes s bielou škvrnou na hrudi, potomok psa dedka Maćka. Vyrástol z neho dlhonohý psík, chodí za Marysiou krok za krokom a vrčí na každého, kto na ňu zvýši hlas."
        }
        ~ return "Ryšavé šteňa s bielou škvrnou na hrudi, potomok psa dedka Maćka. Hryzie všetko, čo nájde, spí pri kolíske Marysie a nepohne sa od nej ani na krok."
}
~ return ""
