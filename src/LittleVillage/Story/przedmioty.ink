// ------------------------------------------------------------
//  Przedmioty i ekwipunek.
//  Dodanie przedmiotu:   ~ ekwipunek += kaganek
//  Zabranie przedmiotu:  ~ ekwipunek -= kaganek
//  Sprawdzenie:          { ekwipunek ? kaganek: ... }
// ------------------------------------------------------------

LIST Przedmioty = krzesiwo, chleb, kaganek, siekiera

// Ekwipunek na początku gry.
VAR ekwipunek = (krzesiwo, chleb)

// Nazwa wyświetlana w oknie ekwipunku.
=== function nazwa_przedmiotu(p)
{ p:
    - krzesiwo:  ~ return "Krzesiwo"
    - chleb:     ~ return "Pajda chleba"
    - kaganek:   ~ return "Kaganek"
    - siekiera:  ~ return "Siekiera ojca"
}
~ return ""

// Opis wyświetlany pod nazwą.
=== function opis_przedmiotu(p)
{ p:
    - krzesiwo:  ~ return "Stal, krzemień i hubka w skórzanym woreczku. Bez niego noc jest dłuższa."
    - chleb:     ~ return "Owinięta w lnianą szmatkę. Matka mówi, że chleb odpędza złe."
    - kaganek:   ~ return "Gliniany, z łojem. Kopci, ale świeci."
    - siekiera:  ~ return "Ciężka, z wyślizganym toporzyskiem. Ojciec rąbał nią drwa, zanim zaczął się bać lasu."
}
~ return ""
