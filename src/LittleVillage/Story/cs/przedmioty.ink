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
            ~ return "Sekera dědečka Maćka"
        }
        ~ return "Sekera"
    - chleb:     ~ return "Bochník chleba"
    - pies_towarzysz: ~ return "Pes – věrný druh"
    - figurka:   ~ return "Ohořelá figurka"
    - krzesiwo:  ~ return "Křesadlo"
    - zapasy:    ~ return "Zásoby z města"
    - nasiona:   ~ return "Semena zeleniny"
    - nozyk:     ~ return "Nožík"
    - kora:      ~ return "Kůra se znamením"
    - ksiega:    ~ return "Kniha vyprávění"
    - szczeniak: ~ return imie_psa
    - mak:       ~ return "Hrst máku"
    - monety:    ~ return "Mince z pily"
    - zoladz:    ~ return "Žalud ze Starého dubu"
    - piolun:    ~ return "Pelyněk"
    - korale:    ~ return "Korále z jeřabin"
    - swiatek:   ~ return "Soška z kapličky"
    - podkowa:   ~ return "Kovářova podkova"
    - krzyzyk:   ~ return "Kovářův křížek"
    - gromnica:  ~ return "Hromnička"
    - szczenie_psa:
        { rozdzial_trzynasty:
            ~ return "Rezavý pes"
        }
        ~ return "Rezavé štěně"
    - bucik_marysi:
        { drugi_drewniak:
            ~ return "Dřeváky Marysie"
        }
        ~ return "Dřevák Marysie"
    - wstazka_marysi: ~ return "Stužka Marysie"
    - rozaniec: ~ return "Posvěcený růženec"
}
~ return ""

// Opis wyświetlany pod nazwą.
=== function opis_przedmiotu(p)
{ p:
    - siekiera:
        { siekiera_dziadka:
            ~ return "Sekera s ošoupaným tmavým topůrkem. Dědeček Maciek ji kdysi koupil ve městě za peníze ze čtyř let práce na cizím poli. Otec ji dal Jaromirovi v den svatby – teď je hospodářem on."
        }
        ~ return "Koupená ve městě za peníze ze čtyř let práce na cizím poli. Na ní stojí celá budoucnost."
    - chleb:     ~ return "Tvrdý, režný, zabalený do lněného hadříku. Musí vystačit na dlouho."
    - pies_towarzysz: ~ return "Hubený, s dlouhým čenichem a příliš velkými tlapami. Ubránil Maćka před stvůrou z houští a od té noci se od něj nehne ani na krok."
    - figurka:
        { rozdzial_trzynasty && przeszukal_zgliszcza && not figurka_w_bagnie:
            ~ return "Malá dřevěná postava s rukama sahajícíma až k chodidlům, z jedné strany ohořelá. Po více než šedesáti letech se vrátila do Zapadliny. Dřevo je stále studené a vlhké, i za suchého dne."
        }
        { rozdzial_trzynasty:
            ~ return "Malá dřevěná postava s rukama sahajícíma až k chodidlům, z jedné strany ohořelá. Po více než šedesáti letech vyšla na světlo. Dřevo je stále studené a vlhké, i za suchého dne."
        }
        ~ return "Malá dřevěná postava s rukama sahajícíma až k chodidlům, z jedné strany ohořelá. Vyhrabaná z popela po chalupě čarodějnice."
    - krzesiwo:
        { krzesiwo_od_babki:
            ~ return "Malé, zčernalé křesadlo dědečka Maćka. Babička Marianna je dala Jaromirovi na smrtelném loži. Dědeček ho měl u sebe až do konce."
        }
        { krzesiwo_na_slubie:
            ~ return "Malé, zčernalé křesadlo dědečka Maćka. Otec je dal Jaromirovi v den svatby spolu se sekerou – dědeček ho nosil u sebe až do konce."
        }
        ~ return "Leželo v popelu vedle figurky. Že by právě jím zapálili chalupu čarodějnice?"
    - zapasy:
        { figurka_u_staruchy:
            ~ return "Dva bochníky chleba, pytel kaše, sůl, kus slaniny a koš sadbových brambor. Koupené za mince od stařeny."
        }
        ~ return "Bochník chleba, hrst soli a pytlík kaše. Musí vystačit, než něco vyroste."
    - nasiona:   ~ return "Koupená na městském trhu. Bylo jaro – musela se co nejdřív zasít."
    - nozyk:     ~ return "Dárek od otce k jmeninám. Malý, s ošoupanou dřevěnou rukojetí a s ostřím, které otec naostřil na brousku. Jaromir jím už vystrouhal nejeden luk."
    - kora:      ~ return "Do trubičky svinutý kousek borové kůry zpod stromu se spirálou. Na hladké straně někdo vyryl řádky čárek a kroužků – jako by to byla písmena, a přece Jaromir nezná ani jedno z nich."
    - ksiega:
        { ksiega_zatrzymana:
            ~ return "Tlustý sešit pana Ignacyho, vázaný v kůži a popsaný pečlivým, skloněným písmem – příběhy z okolí Bukového hřbetu. Učitel mu dovolil si ho nechat. Číst se v něm dá jen ve dne."
        }
        ~ return "Tlustý sešit pana Ignacyho, vázaný v kůži a popsaný pečlivým, skloněným písmem – příběhy z okolí Bukového hřbetu. Číst se v něm dá jen ve dne a na Vánoce se musí vrátit."
    - szczeniak:
        { rozdzial_jedenasty:
            ~ return "Pes z rodu psa dědečka Maćka – kdysi štěně od starého Staše, dnes starý, s šedivým čenichem. Pořád spí v nohách postele a pořád ze spaní vrčí směrem k boru."
        }
        { rozdzial_piaty:
            ~ return "Pes z rodu psa dědečka Maćka, kdysi štěně, které dal starý Staš na Štědrý večer. Vyrostl do velka, má špičaté uši a bílou skvrnu na hrudi. Spí v nohách postele a ze spaní vrčí směrem k oknu."
        }
        ~ return "Štěně z rodu psa dědečka Maćka, dárek od starého Staše na Štědrý večer. Špičaté uši, bílá skvrna na hrudi a tlapy příliš velké na zbytek těla. Spí v nohách postele a ze spaní vrčí směrem k oknu."
    - mak:       ~ return "Hadřík s hrstí máku, potají uzmutého ze štědrovečerní mísy. Podle knihy pana Ignacyho musí půlnočnice spočítat každé zrníčko, než přistoupí blíž."
    - monety:    ~ return "Těžké, studené stříbrné mince s orlem na jedné straně – výplata od pana Urbaniaka za léto strávené skládáním prken."
    - zoladz:    ~ return "Velký, hladký žalud zpod kořenů pokáceného Starého dubu. Pořád je teplý, jako by v něm něco žilo."
    - piolun:    ~ return "Svazek šedozelených stonků s hořkým, pronikavým pachem. Dala mu ho Hanka o Letnicích – prý to, co tehdy vychází z vody, se pelyňku bojí víc než ohně."
    - korale:    ~ return "Šňůra korálů z jeřabin, nalezená na můstku po noci s rusalkami. Patřily Kaśce Wójcikové. Pořád jsou mokré a rudé jako čerstvá krev."
    - swiatek:   ~ return "Dřevěná Matka Boží s Jezulátkem, vytažená v noci z vozu Urbaniaka, když jeho lidé vykopávali kapličky pod borem. Tvář má deštěm tak ohlazenou, že je sotva k rozeznání. Schovaná pod prkny ve skrýši ve starém bezu."
    - podkowa:   ~ return "Železná podkova, kterou na svatbu ukoval otec Hanky. Visí nad prahem chalupy rameny vzhůru, aby dovnitř nevešlo nic zlého a aby se štěstí nevysypalo."
    - krzyzyk:   ~ return "Malý železný křížek na řemínku, který na svatbu ukoval otec Hanky. Hanka ho nosí na krku a nesnímá ho – kovář jí kladl na srdce, aby to nedělala nikdy."
    - gromnica:  ~ return "Silná vosková svíce posvěcená v Bukowci na Hromnice. V každém domě musí být – na bouřku, na porod i na smrt."
    - bucik_marysi:
        { drugi_drewniak:
            ~ return "Pár malých lipových dřeváků, natřených načerveno a vyložených plstí ze starého klobouku dědečka Dobrosława. Ten druhý přinesl zpod dubu bílý vlk."
        }
        { dlug_jagny == oddany_drewniak:
            ~ return "Malý lipový dřevák, natřený načerveno a vyložený plstí ze starého klobouku dědečka Dobrosława. Ten druhý si vzala Jagna."
        }
        { rozdzial_siedemnasty:
            ~ return "Malý lipový dřevák, natřený načerveno a vyložený plstí ze starého klobouku dědečka Dobrosława. Ten druhý zůstal v boru."
        }
        ~ return "Malý lipový dřevák, natřený načerveno a vyložený plstí ze starého klobouku dědečka Dobrosława. Ten druhý zůstal v žitě, u té, která ho držela."
    - wstazka_marysi:
        { pani_w_zbozu_noc == gonil_babe:
            ~ return "Červená stužka, kterou Hanka vpletla Marysii do vlasů v předvečer svatého Jana. Visela na bodlácích u meze."
        }
        ~ return "Červená stužka, kterou Hanka vpletla Marysii do vlasů v předvečer svatého Jana. Visela na jalovci na kraji mlází, ve výšce dětské ručky."
    - rozaniec: ~ return "Dřevěný růženec posvěcený farářem z Bukowce. Přísahal na něj, že skoncuje s pohanstvím."
    - szczenie_psa:
        { rozdzial_dziewietnasty && not marysia_odzyskana:
            ~ return "Rezavý pes s bílou skvrnou na hrudi, z rodu psa dědečka Maćka. Spí pod lavicí, na které spávala Marysia, a nedá se odtamtud vylákat."
        }
        { rozdzial_trzynasty:
            ~ return "Rezavý pes s bílou skvrnou na hrudi, z rodu psa dědečka Maćka. Vyrostl v dlouhonohého psíka, chodí za Marysií krok za krokem a vrčí na každého, kdo na ni zvýší hlas."
        }
        ~ return "Rezavé štěně s bílou skvrnou na hrudi, z rodu psa dědečka Maćka. Okusuje všechno, co najde, spí u kolébky Marysie a nehne se od ní ani na krok."
}
~ return ""
