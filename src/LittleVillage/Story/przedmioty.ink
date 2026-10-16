// ------------------------------------------------------------
//  Przedmioty i ekwipunek.
//  Dodanie przedmiotu:   ~ ekwipunek += siekiera
//  Zabranie przedmiotu:  ~ ekwipunek -= chleb
//  Sprawdzenie:          { ekwipunek ? siekiera: ... }
// ------------------------------------------------------------

LIST Przedmioty = siekiera, chleb, pies_towarzysz, figurka, krzesiwo, zapasy, nasiona, nozyk, kora, ksiega, szczeniak, mak

// Ekwipunek na początku gry — to, co Maciek przyniósł w tobołku.
VAR ekwipunek = (siekiera, chleb)

// Nazwa wyświetlana w oknie ekwipunku.
=== function nazwa_przedmiotu(p)
{ p:
    - siekiera:  ~ return "Siekiera"
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
}
~ return ""

// Opis wyświetlany pod nazwą.
=== function opis_przedmiotu(p)
{ p:
    - siekiera:  ~ return "Kupiona w mieście za pieniądze z czterech lat pracy na cudzym polu. Na niej opiera się cała przyszłość."
    - chleb:     ~ return "Twardy, razowy, owinięty w lnianą szmatkę. Musi starczyć na długo."
    - pies_towarzysz: ~ return "Chudy, z długim pyskiem i za dużymi łapami. Obronił Maćka przed stworem z zarośli i od tamtej nocy nie odstępuje go na krok."
    - figurka:   ~ return "Mała drewniana postać z rękami sięgającymi do stóp, nadpalona z jednej strony. Wygrzebana z popiołu po chacie wiedźmy."
    - krzesiwo:  ~ return "Leżało w popiele obok figurki. Czyżby to nim podpalono chatę wiedźmy?"
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
    - szczeniak: ~ return "Szczeniak z rodu psa dziadka Maćka, prezent od starego Stasia na Wigilię. Spiczaste uszy, biała łata na piersi i łapy za duże do reszty ciała. Śpi w nogach posłania i warczy przez sen w stronę okna."
    - mak:       ~ return "Szmatka z garścią maku podebranego z wigilijnej misy. Według księgi pana Ignacego północnica musi policzyć każde ziarenko, nim podejdzie bliżej."
}
~ return ""
