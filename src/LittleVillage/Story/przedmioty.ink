// ------------------------------------------------------------
//  Przedmioty i ekwipunek.
//  Dodanie przedmiotu:   ~ ekwipunek += siekiera
//  Zabranie przedmiotu:  ~ ekwipunek -= chleb
//  Sprawdzenie:          { ekwipunek ? siekiera: ... }
// ------------------------------------------------------------

LIST Przedmioty = siekiera, chleb

// Ekwipunek na początku gry — to, co Maciek przyniósł w tobołku.
VAR ekwipunek = (siekiera, chleb)

// Nazwa wyświetlana w oknie ekwipunku.
=== function nazwa_przedmiotu(p)
{ p:
    - siekiera:  ~ return "Siekiera"
    - chleb:     ~ return "Bochenek chleba"
}
~ return ""

// Opis wyświetlany pod nazwą.
=== function opis_przedmiotu(p)
{ p:
    - siekiera:  ~ return "Kupiona w mieście za pieniądze z czterech lat pracy na cudzym polu. Na niej opiera się cała przyszłość."
    - chleb:     ~ return "Twardy, razowy, owinięty w lnianą szmatkę. Musi starczyć na długo."
}
~ return ""
