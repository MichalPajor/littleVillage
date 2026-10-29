// ============================================================
//  Księga opowieści — rozdziały i zakończenia do menu gry
//  (wybór rozdziału, mapa zakończeń). Kolejność elementów list
//  jest kolejnością w opowieści.
// ============================================================

LIST Rozdzialy = rozdz_prolog, rozdz_1, rozdz_2, rozdz_3, rozdz_4, rozdz_5, rozdz_6, rozdz_7, rozdz_8, rozdz_9, rozdz_10, rozdz_11, rozdz_12, rozdz_13, rozdz_14, rozdz_15, rozdz_16, rozdz_17, rozdz_18, rozdz_19, rozdz_20

// Nazwa rozdziału dokładnie taka, jak w tagu # rozdzial: na jego pierwszej stronie.
=== function nazwa_rozdzialu(r)
{ r:
- rozdz_prolog: ~ return "Prologue"
- rozdz_1: ~ return "Chapter One"
- rozdz_2: ~ return "Chapter Two"
- rozdz_3: ~ return "Chapter Three"
- rozdz_4: ~ return "Chapter Four"
- rozdz_5: ~ return "Chapter Five"
- rozdz_6: ~ return "Chapter Six"
- rozdz_7: ~ return "Chapter Seven"
- rozdz_8: ~ return "Chapter Eight"
- rozdz_9: ~ return "Chapter Nine"
- rozdz_10: ~ return "Chapter Ten"
- rozdz_11: ~ return "Chapter Eleven"
- rozdz_12: ~ return "Chapter Twelve"
- rozdz_13: ~ return "Chapter Thirteen"
- rozdz_14: ~ return "Chapter Fourteen"
- rozdz_15: ~ return "Chapter Fifteen"
- rozdz_16: ~ return "Chapter Sixteen"
- rozdz_17: ~ return "Chapter Seventeen"
- rozdz_18: ~ return "Chapter Eighteen"
- rozdz_19: ~ return "Chapter Nineteen"
- rozdz_20: ~ return "Chapter Twenty"
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
- zak_granica_dab_marysia: ~ return "The Young Oak"
- zak_granica_dab: ~ return "With Grandfather Maciek"
- zak_granica_marysia: ~ return "A Word for a Word"
- zak_granica: ~ return "One Child a Generation"
- zak_miejsce_marysia: ~ return "Beyond the Fence"
- zak_miejsce: ~ return "Let’s Go Home, Papa"
- zak_ogien_marysia: ~ return "The Forest That Is No More"
- zak_ogien: ~ return "Warm Ashes"
}

// Pytanie nad wyborami, gdy scena nie ma własnego (# pytanie:).
=== function domyslne_pytanie()
~ return "What do you do?"
