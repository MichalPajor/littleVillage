// ============================================================
//  Księga opowieści – rozdziały i zakończenia do menu gry
//  (wybór rozdziału, mapa zakończeń). Kolejność elementów list
//  jest kolejnością w opowieści.
// ============================================================

LIST Rozdzialy = rozdz_prolog, rozdz_1, rozdz_2, rozdz_3, rozdz_4, rozdz_5, rozdz_6, rozdz_7, rozdz_8, rozdz_9, rozdz_10, rozdz_11, rozdz_12, rozdz_13, rozdz_14, rozdz_15, rozdz_16, rozdz_17, rozdz_18, rozdz_19, rozdz_20

// Nazwa rozdziału dokładnie taka, jak w tagu # rozdzial: na jego pierwszej stronie.
=== function nazwa_rozdzialu(r)
{ r:
- rozdz_prolog: ~ return "Prologue"
- rozdz_1: ~ return "Chapitre premier"
- rozdz_2: ~ return "Chapitre deuxième"
- rozdz_3: ~ return "Chapitre troisième"
- rozdz_4: ~ return "Chapitre quatrième"
- rozdz_5: ~ return "Chapitre cinquième"
- rozdz_6: ~ return "Chapitre sixième"
- rozdz_7: ~ return "Chapitre septième"
- rozdz_8: ~ return "Chapitre huitième"
- rozdz_9: ~ return "Chapitre neuvième"
- rozdz_10: ~ return "Chapitre dixième"
- rozdz_11: ~ return "Chapitre onzième"
- rozdz_12: ~ return "Chapitre douzième"
- rozdz_13: ~ return "Chapitre treizième"
- rozdz_14: ~ return "Chapitre quatorzième"
- rozdz_15: ~ return "Chapitre quinzième"
- rozdz_16: ~ return "Chapitre seizième"
- rozdz_17: ~ return "Chapitre dix-septième"
- rozdz_18: ~ return "Chapitre dix-huitième"
- rozdz_19: ~ return "Chapitre dix-neuvième"
- rozdz_20: ~ return "Chapitre vingtième"
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
- zak_granica_dab_marysia: ~ return "Le jeune chêne"
- zak_granica_dab: ~ return "Avec grand-père Maciek"
- zak_granica_marysia: ~ return "Parole contre parole"
- zak_granica: ~ return "Un enfant par génération"
- zak_miejsce_marysia: ~ return "Derrière la clôture"
- zak_miejsce: ~ return "On rentre à la maison, papa"
- zak_ogien_marysia: ~ return "La forêt qui n’est plus"
- zak_ogien: ~ return "Cendres tièdes"
}

// Pytanie nad wyborami, gdy scena nie ma własnego (# pytanie:).
=== function domyslne_pytanie()
~ return "Que fais-tu ?"
