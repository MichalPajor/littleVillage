// ============================================================
//  Księga opowieści – rozdziały i zakończenia do menu gry
//  (wybór rozdziału, mapa zakończeń). Kolejność elementów list
//  jest kolejnością w opowieści.
// ============================================================

LIST Rozdzialy = rozdz_prolog, rozdz_1, rozdz_2, rozdz_3, rozdz_4, rozdz_5, rozdz_6, rozdz_7, rozdz_8, rozdz_9, rozdz_10, rozdz_11, rozdz_12, rozdz_13, rozdz_14, rozdz_15, rozdz_16, rozdz_17, rozdz_18, rozdz_19, rozdz_20

// Nazwa rozdziału dokładnie taka, jak w tagu # rozdzial: na jego pierwszej stronie.
=== function nazwa_rozdzialu(r)
{ r:
- rozdz_prolog: ~ return "Prológ"
- rozdz_1: ~ return "Kapitola prvá"
- rozdz_2: ~ return "Kapitola druhá"
- rozdz_3: ~ return "Kapitola tretia"
- rozdz_4: ~ return "Kapitola štvrtá"
- rozdz_5: ~ return "Kapitola piata"
- rozdz_6: ~ return "Kapitola šiesta"
- rozdz_7: ~ return "Kapitola siedma"
- rozdz_8: ~ return "Kapitola ôsma"
- rozdz_9: ~ return "Kapitola deviata"
- rozdz_10: ~ return "Kapitola desiata"
- rozdz_11: ~ return "Kapitola jedenásta"
- rozdz_12: ~ return "Kapitola dvanásta"
- rozdz_13: ~ return "Kapitola trinásta"
- rozdz_14: ~ return "Kapitola štrnásta"
- rozdz_15: ~ return "Kapitola pätnásta"
- rozdz_16: ~ return "Kapitola šestnásta"
- rozdz_17: ~ return "Kapitola sedemnásta"
- rozdz_18: ~ return "Kapitola osemnásta"
- rozdz_19: ~ return "Kapitola devätnásta"
- rozdz_20: ~ return "Kapitola dvadsiata"
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
- zak_granica_dab: ~ return "S dedkom Maćkom"
- zak_granica_marysia: ~ return "Slovo za slovo"
- zak_granica: ~ return "Jedno dieťa za pokolenie"
- zak_miejsce_marysia: ~ return "Za plotom"
- zak_miejsce: ~ return "Ideme domov, ocko"
- zak_ogien_marysia: ~ return "Les, ktorý už nie je"
- zak_ogien: ~ return "Teplý popol"
}

// Pytanie nad wyborami, gdy scena nie ma własnego (# pytanie:).
=== function domyslne_pytanie()
~ return "Čo urobíš?"
