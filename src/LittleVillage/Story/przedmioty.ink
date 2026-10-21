// ------------------------------------------------------------
//  Przedmioty i ekwipunek.
//  Dodanie przedmiotu:   ~ ekwipunek += siekiera
//  Zabranie przedmiotu:  ~ ekwipunek -= chleb
//  Sprawdzenie:          { ekwipunek ? siekiera: ... }
// ------------------------------------------------------------

LIST Przedmioty = siekiera, chleb, pies_towarzysz, figurka, krzesiwo, zapasy, nasiona, nozyk, kora, ksiega, szczeniak, mak, monety, zoladz, piolun, korale, swiatek, podkowa, krzyzyk, gromnica, szczenie_psa, bucik_marysi, wstazka_marysi, rozaniec

// Ekwipunek na początku gry — to, co Maciek przyniósł w tobołku.
VAR ekwipunek = (siekiera, chleb)

// Nazwa wyświetlana w oknie ekwipunku.
=== function nazwa_przedmiotu(p)
{ p:
    - siekiera:
        { siekiera_dziadka:
            ~ return "Siekiera dziadka Maćka"
        }
        ~ return "Siekiera"
    - chleb:     ~ return "Bochenek chleba"
    - pies_towarzysz: ~ return "Pies – towarzysz"
    - figurka:   ~ return "Nadpalona figurka"
    - krzesiwo:  ~ return "Krzesiwo"
    - zapasy:    ~ return "Zapasy z miasta"
    - nasiona:   ~ return "Nasiona warzyw"
    - nozyk:     ~ return "Nożyk"
    - kora:      ~ return "Kora ze znakiem"
    - ksiega:    ~ return "Księga opowiadań"
    - szczeniak: ~ return imie_psa
    - mak:       ~ return "Garść maku"
    - monety:    ~ return "Monety z tartaku"
    - zoladz:    ~ return "Żołądź ze Starego Dębu"
    - piolun:    ~ return "Piołun"
    - korale:    ~ return "Korale z jarzębiny"
    - swiatek:   ~ return "Świątek z kapliczki"
    - podkowa:   ~ return "Podkowa kowala"
    - krzyzyk:   ~ return "Krzyżyk kowala"
    - gromnica:  ~ return "Gromnica"
    - szczenie_psa: ~ return "Rude szczenię"
    - bucik_marysi:
        { drugi_drewniak:
            ~ return "Drewniaki Marysi"
        }
        ~ return "Drewniak Marysi"
    - wstazka_marysi: ~ return "Wstążka Marysi"
    - rozaniec: ~ return "Poświęcony różaniec"
}
~ return ""

// Opis wyświetlany pod nazwą.
=== function opis_przedmiotu(p)
{ p:
    - siekiera:
        { siekiera_dziadka:
            ~ return "Siekiera o wytartym, ciemnym trzonku. Dziadek Maciek kupił ją kiedyś w mieście za pieniądze z czterech lat pracy na cudzym polu. Ojciec dał ją Jaromirowi w dniu ślubu – teraz to on jest gospodarzem."
        }
        ~ return "Kupiona w mieście za pieniądze z czterech lat pracy na cudzym polu. Na niej opiera się cała przyszłość."
    - chleb:     ~ return "Twardy, razowy, owinięty w lnianą szmatkę. Musi starczyć na długo."
    - pies_towarzysz: ~ return "Chudy, z długim pyskiem i za dużymi łapami. Obronił Maćka przed stworem z zarośli i od tamtej nocy nie odstępuje go na krok."
    - figurka:
        { rozdzial_trzynasty:
            ~ return "Mała drewniana postać z rękami sięgającymi do stóp, nadpalona z jednej strony. Wróciła do Zapadliny po ponad sześćdziesięciu latach. Drewno jest zawsze zimne i wilgotne, nawet w suchy dzień."
        }
        ~ return "Mała drewniana postać z rękami sięgającymi do stóp, nadpalona z jednej strony. Wygrzebana z popiołu po chacie wiedźmy."
    - krzesiwo:
        { krzesiwo_od_babki:
            ~ return "Małe, poczerniałe krzesiwo dziadka Maćka. Babka Marianna oddała je Jaromirowi na łożu śmierci. Dziadek znalazł je w popiele po chacie wiedźmy i nie rozstawał się z nim do końca."
        }
        { krzesiwo_na_slubie:
            ~ return "Małe, poczerniałe krzesiwo dziadka Maćka. Ojciec dał je Jaromirowi w dniu ślubu razem z siekierą – dziadek nosił je przy sobie do końca."
        }
        ~ return "Leżało w popiele obok figurki. Czyżby to nim podpalono chatę wiedźmy?"
    - zapasy:
        { figurka_u_staruchy:
            ~ return "Dwa bochenki chleba, worek kaszy, sól, kawałek słoniny i kosz sadzeniaków. Kupione za monety od staruchy."
        }
        ~ return "Bochenek chleba, garść soli i woreczek kaszy. Musi starczyć, zanim cokolwiek urośnie."
    - nasiona:   ~ return "Kupione na miejskim rynku. Była wiosna – trzeba je było czym prędzej wysiać."
    - nozyk:     ~ return "Prezent od ojca na imieniny. Mały, z wytartą drewnianą rączką i ostrzem, które ojciec wyostrzył osełką. Jaromir obstrugał nim już niejeden łuk."
    - kora:      ~ return "Zwinięty w trąbkę kawałek sosnowej kory spod drzewa ze spiralą. Na gładkiej stronie ktoś wyrył rządki kresek i kółek – niby litery, a jednak żadnej z nich Jaromir nie zna."
    - ksiega:
        { ksiega_zatrzymana:
            ~ return "Gruby zeszyt pana Ignacego, oprawny w skórę i zapisany starannym, pochyłym pismem – historie z okolic Bukowego Grzbietu. Nauczyciel pozwolił ją zatrzymać. Można ją czytać tylko w dzień."
        }
        ~ return "Gruby zeszyt pana Ignacego, oprawny w skórę i zapisany starannym, pochyłym pismem – historie z okolic Bukowego Grzbietu. Można ją czytać tylko w dzień, a na Boże Narodzenie trzeba ją oddać."
    - szczeniak:
        { rozdzial_jedenasty:
            ~ return "Pies z rodu psa dziadka Maćka – kiedyś szczeniak od starego Stasia, dziś stary, z siwym pyskiem. Wciąż śpi w nogach posłania i wciąż warczy przez sen w stronę boru."
        }
        ~ return "Szczeniak z rodu psa dziadka Maćka, prezent od starego Stasia na Wigilię. Spiczaste uszy, biała łata na piersi i łapy za duże do reszty ciała. Śpi w nogach posłania i warczy przez sen w stronę okna."
    - mak:       ~ return "Szmatka z garścią maku podebranego z wigilijnej misy. Według księgi pana Ignacego północnica musi policzyć każde ziarenko, nim podejdzie bliżej."
    - monety:    ~ return "Ciężkie, zimne srebrne monety z orłem po jednej stronie – zapłata od pana Urbaniaka za lato przy układaniu desek."
    - zoladz:    ~ return "Duży, gładki żołądź spod korzeni ściętego Starego Dębu. Wciąż jest ciepły, jakby w środku coś żyło."
    - piolun:    ~ return "Wiązka szarozielonych łodyg o gorzkim, ostrym zapachu. Dała mu ją Hanka na Zielone Świątki – podobno to, co wychodzi wtedy z wody, boi się piołunu bardziej niż ognia."
    - korale:    ~ return "Sznur korali z jarzębiny znaleziony na pomoście po nocy z rusałkami. Należały do Kaśki Wójcikówny. Wciąż są mokre i czerwone jak świeża krew."
    - swiatek:   ~ return "Drewniana Matka Boża z dzieciątkiem, wyciągnięta nocą z wozu Urbaniaka, kiedy jego ludzie wykopywali kapliczki spod boru. Twarz ma wytartą przez deszcze tak, że ledwie ją widać. Schowana pod deskami w bazie na starym bzie."
    - podkowa:   ~ return "Żelazna podkowa wykuta przez ojca Hanki na wesele. Wisi nad progiem chałupy ramionami do góry, żeby nic złego nie weszło do środka i żeby szczęście się nie wysypało."
    - krzyzyk:   ~ return "Mały żelazny krzyżyk na rzemyku, wykuty przez ojca Hanki na wesele. Hanka nosi go na szyi i nie zdejmuje – kowal przykazał, żeby nigdy."
    - gromnica:  ~ return "Gruba woskowa świeca poświęcona w Bukowcu na Gromniczną. W każdym domu musi być – na burzę, na poród i na śmierć."
    - bucik_marysi:
        { drugi_drewniak:
            ~ return "Para małych drewniaków z lipy, pomalowanych na czerwono i wyłożonych filcem ze starego kapelusza dziadka Dobrosława. Drugi przyniósł spod dębu biały wilk."
        }
        ~ return "Mały drewniak z lipy, pomalowany na czerwono i wyłożony filcem ze starego kapelusza dziadka Dobrosława. Drugi został w życie, u tej, która go trzymała."
    - wstazka_marysi: ~ return "Czerwona wstążka, którą Hanka wplotła Marysi we włosy w wigilię świętego Jana. Wisiała na jałowcu na skraju młodnika, na wysokości dziecięcej rączki."
    - rozaniec: ~ return "Drewniany różaniec poświęcony przez księdza z Bukowca. Przysiągł na niego, że skończy z pogaństwem."
    - szczenie_psa: ~ return "Rude szczenię z białą łatą na piersi, z rodu psa dziadka Maćka. Gryzie wszystko, co znajdzie, śpi przy kołysce Marysi i nie odstępuje jej na krok."
}
~ return ""
