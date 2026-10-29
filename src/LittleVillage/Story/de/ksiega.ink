// ============================================================
//  Księga opowieści — rozdziały i zakończenia do menu gry
//  (wybór rozdziału, mapa zakończeń). Kolejność elementów list
//  jest kolejnością w opowieści.
// ============================================================

LIST Rozdzialy = rozdz_prolog, rozdz_1, rozdz_2, rozdz_3, rozdz_4, rozdz_5, rozdz_6, rozdz_7, rozdz_8, rozdz_9, rozdz_10, rozdz_11, rozdz_12, rozdz_13, rozdz_14, rozdz_15, rozdz_16, rozdz_17, rozdz_18, rozdz_19, rozdz_20

// Nazwa rozdziału dokładnie taka, jak w tagu # rozdzial: na jego pierwszej stronie.
=== function nazwa_rozdzialu(r)
{ r:
- rozdz_prolog: ~ return "Prolog"
- rozdz_1: ~ return "Erstes Kapitel"
- rozdz_2: ~ return "Zweites Kapitel"
- rozdz_3: ~ return "Drittes Kapitel"
- rozdz_4: ~ return "Viertes Kapitel"
- rozdz_5: ~ return "Fünftes Kapitel"
- rozdz_6: ~ return "Sechstes Kapitel"
- rozdz_7: ~ return "Siebtes Kapitel"
- rozdz_8: ~ return "Achtes Kapitel"
- rozdz_9: ~ return "Neuntes Kapitel"
- rozdz_10: ~ return "Zehntes Kapitel"
- rozdz_11: ~ return "Elftes Kapitel"
- rozdz_12: ~ return "Zwölftes Kapitel"
- rozdz_13: ~ return "Dreizehntes Kapitel"
- rozdz_14: ~ return "Vierzehntes Kapitel"
- rozdz_15: ~ return "Fünfzehntes Kapitel"
- rozdz_16: ~ return "Sechzehntes Kapitel"
- rozdz_17: ~ return "Siebzehntes Kapitel"
- rozdz_18: ~ return "Achtzehntes Kapitel"
- rozdz_19: ~ return "Neunzehntes Kapitel"
- rozdz_20: ~ return "Zwanzigstes Kapitel"
}

// Od rozdziału piątego — pełna wersja (tag # pelna_wersja na końcu czwartego).
=== function rozdzial_w_pelnej_wersji(r)
~ return r >= rozdz_5

LIST Zakonczenia = zak_granica_dab_marysia, zak_granica_dab, zak_granica_marysia, zak_granica, zak_miejsce_marysia, zak_miejsce, zak_ogien_marysia, zak_ogien

// Zakończenie, do którego doszedł gracz: co zrobił w ostatnią noc, czy zasadził żołądź, czy Marysia wróciła.
=== function zakonczenie()
{
- ostatnia_noc == zwrocil_granice && zoladz_zasadzony && marysia_odzyskana:
    ~ return zak_granica_dab_marysia
- ostatnia_noc == zwrocil_granice && zoladz_zasadzony:
    ~ return zak_granica_dab
- ostatnia_noc == zwrocil_granice && marysia_odzyskana:
    ~ return zak_granica_marysia
- ostatnia_noc == zwrocil_granice:
    ~ return zak_granica
- ostatnia_noc == zajal_miejsce && marysia_odzyskana:
    ~ return zak_miejsce_marysia
- ostatnia_noc == zajal_miejsce:
    ~ return zak_miejsce
- ostatnia_noc == skrzesal_ogien && marysia_odzyskana:
    ~ return zak_ogien_marysia
- ostatnia_noc == skrzesal_ogien:
    ~ return zak_ogien
}
~ return ()

=== function tytul_zakonczenia(z)
{ z:
- zak_granica_dab_marysia: ~ return "Die junge Eiche"
- zak_granica_dab: ~ return "Mit Großvater Maciek"
- zak_granica_marysia: ~ return "Wort um Wort"
- zak_granica: ~ return "Ein Kind pro Generation"
- zak_miejsce_marysia: ~ return "Hinter dem Zaun"
- zak_miejsce: ~ return "Wir gehen nach Hause, Papa"
- zak_ogien_marysia: ~ return "Der Wald, den es nicht mehr gibt"
- zak_ogien: ~ return "Warme Asche"
}

// Pytanie nad wyborami, gdy scena nie ma własnego (# pytanie:).
=== function domyslne_pytanie()
~ return "Was tust du?"
