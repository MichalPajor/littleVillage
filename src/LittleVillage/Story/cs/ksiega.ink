// ============================================================
//  Księga opowieści – rozdziały i zakończenia do menu gry
//  (wybór rozdziału, mapa zakończeń). Kolejność elementów list
//  jest kolejnością w opowieści.
// ============================================================

LIST Rozdzialy = rozdz_prolog, rozdz_1, rozdz_2, rozdz_3, rozdz_4, rozdz_5, rozdz_6, rozdz_7, rozdz_8, rozdz_9, rozdz_10, rozdz_11, rozdz_12, rozdz_13, rozdz_14, rozdz_15, rozdz_16, rozdz_17, rozdz_18, rozdz_19, rozdz_20

// Nazwa rozdziału dokładnie taka, jak w tagu # rozdzial: na jego pierwszej stronie.
=== function nazwa_rozdzialu(r)
{ r:
- rozdz_prolog: ~ return "Prolog"
- rozdz_1: ~ return "Kapitola první"
- rozdz_2: ~ return "Kapitola druhá"
- rozdz_3: ~ return "Kapitola třetí"
- rozdz_4: ~ return "Kapitola čtvrtá"
- rozdz_5: ~ return "Kapitola pátá"
- rozdz_6: ~ return "Kapitola šestá"
- rozdz_7: ~ return "Kapitola sedmá"
- rozdz_8: ~ return "Kapitola osmá"
- rozdz_9: ~ return "Kapitola devátá"
- rozdz_10: ~ return "Kapitola desátá"
- rozdz_11: ~ return "Kapitola jedenáctá"
- rozdz_12: ~ return "Kapitola dvanáctá"
- rozdz_13: ~ return "Kapitola třináctá"
- rozdz_14: ~ return "Kapitola čtrnáctá"
- rozdz_15: ~ return "Kapitola patnáctá"
- rozdz_16: ~ return "Kapitola šestnáctá"
- rozdz_17: ~ return "Kapitola sedmnáctá"
- rozdz_18: ~ return "Kapitola osmnáctá"
- rozdz_19: ~ return "Kapitola devatenáctá"
- rozdz_20: ~ return "Kapitola dvacátá"
}

// Od rozdziału piątego – pełna wersja (tag # pelna_wersja na końcu czwartego).
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
- zak_granica_dab_marysia: ~ return "Mladý dub"
- zak_granica_dab: ~ return "S dědečkem Maćkem"
- zak_granica_marysia: ~ return "Slovo za slovo"
- zak_granica: ~ return "Jedno dítě za pokolení"
- zak_miejsce_marysia: ~ return "Za plotem"
- zak_miejsce: ~ return "Jdeme domů, tati"
- zak_ogien_marysia: ~ return "Les, který už není"
- zak_ogien: ~ return "Teplý popel"
}

// Pytanie nad wyborami, gdy scena nie ma własnego (# pytanie:).
=== function domyslne_pytanie()
~ return "Co uděláš?"
