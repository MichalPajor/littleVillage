// ============================================================
//  Księga opowieści — rozdziały i zakończenia do menu gry
//  (wybór rozdziału, mapa zakończeń). Kolejność elementów list
//  jest kolejnością w opowieści.
// ============================================================

LIST Rozdzialy = rozdz_prolog, rozdz_1, rozdz_2, rozdz_3, rozdz_4, rozdz_5, rozdz_6, rozdz_7, rozdz_8, rozdz_9, rozdz_10, rozdz_11, rozdz_12, rozdz_13, rozdz_14, rozdz_15, rozdz_16, rozdz_17, rozdz_18, rozdz_19, rozdz_20

// Nazwa rozdziału dokładnie taka, jak w tagu # rozdzial: na jego pierwszej stronie.
=== function nazwa_rozdzialu(r)
{ r:
- rozdz_prolog: ~ return "Prólogo"
- rozdz_1: ~ return "Capítulo primero"
- rozdz_2: ~ return "Capítulo segundo"
- rozdz_3: ~ return "Capítulo tercero"
- rozdz_4: ~ return "Capítulo cuarto"
- rozdz_5: ~ return "Capítulo quinto"
- rozdz_6: ~ return "Capítulo sexto"
- rozdz_7: ~ return "Capítulo séptimo"
- rozdz_8: ~ return "Capítulo octavo"
- rozdz_9: ~ return "Capítulo noveno"
- rozdz_10: ~ return "Capítulo décimo"
- rozdz_11: ~ return "Capítulo undécimo"
- rozdz_12: ~ return "Capítulo duodécimo"
- rozdz_13: ~ return "Capítulo decimotercero"
- rozdz_14: ~ return "Capítulo decimocuarto"
- rozdz_15: ~ return "Capítulo decimoquinto"
- rozdz_16: ~ return "Capítulo decimosexto"
- rozdz_17: ~ return "Capítulo decimoséptimo"
- rozdz_18: ~ return "Capítulo decimoctavo"
- rozdz_19: ~ return "Capítulo decimonoveno"
- rozdz_20: ~ return "Capítulo vigésimo"
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
- zak_granica_dab_marysia: ~ return "El roble joven"
- zak_granica_dab: ~ return "Con el abuelo Maciek"
- zak_granica_marysia: ~ return "Palabra por palabra"
- zak_granica: ~ return "Un niño por generación"
- zak_miejsce_marysia: ~ return "Tras la cerca"
- zak_miejsce: ~ return "Vamos a casa, papá"
- zak_ogien_marysia: ~ return "El bosque que ya no existe"
- zak_ogien: ~ return "Ceniza tibia"
}

// Pytanie nad wyborami, gdy scena nie ma własnego (# pytanie:).
=== function domyslne_pytanie()
~ return "¿Qué haces?"
