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
- rozdz_1: ~ return "Capítulo primeiro"
- rozdz_2: ~ return "Capítulo segundo"
- rozdz_3: ~ return "Capítulo terceiro"
- rozdz_4: ~ return "Capítulo quarto"
- rozdz_5: ~ return "Capítulo quinto"
- rozdz_6: ~ return "Capítulo sexto"
- rozdz_7: ~ return "Capítulo sétimo"
- rozdz_8: ~ return "Capítulo oitavo"
- rozdz_9: ~ return "Capítulo nono"
- rozdz_10: ~ return "Capítulo décimo"
- rozdz_11: ~ return "Capítulo décimo primeiro"
- rozdz_12: ~ return "Capítulo décimo segundo"
- rozdz_13: ~ return "Capítulo décimo terceiro"
- rozdz_14: ~ return "Capítulo décimo quarto"
- rozdz_15: ~ return "Capítulo décimo quinto"
- rozdz_16: ~ return "Capítulo décimo sexto"
- rozdz_17: ~ return "Capítulo décimo sétimo"
- rozdz_18: ~ return "Capítulo décimo oitavo"
- rozdz_19: ~ return "Capítulo décimo nono"
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
- zak_granica_dab_marysia: ~ return "O carvalho jovem"
- zak_granica_dab: ~ return "Com o avô Maciek"
- zak_granica_marysia: ~ return "Palavra por palavra"
- zak_granica: ~ return "Uma criança por geração"
- zak_miejsce_marysia: ~ return "Além da cerca"
- zak_miejsce: ~ return "Vamos para casa, papai"
- zak_ogien_marysia: ~ return "A floresta que já não existe"
- zak_ogien: ~ return "Cinza morna"
}

// Pytanie nad wyborami, gdy scena nie ma własnego (# pytanie:).
=== function domyslne_pytanie()
~ return "O que você faz?"
