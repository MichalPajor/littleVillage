// ============================================================
//  Księga opowieści – rozdziały i zakończenia do menu gry
//  (wybór rozdziału, mapa zakończeń). Kolejność elementów list
//  jest kolejnością w opowieści.
// ============================================================

LIST Rozdzialy = rozdz_prolog, rozdz_1, rozdz_2, rozdz_3, rozdz_4, rozdz_5, rozdz_6, rozdz_7, rozdz_8, rozdz_9, rozdz_10, rozdz_11, rozdz_12, rozdz_13, rozdz_14, rozdz_15, rozdz_16, rozdz_17, rozdz_18, rozdz_19, rozdz_20

// Nazwa rozdziału dokładnie taka, jak w tagu # rozdzial: na jego pierwszej stronie.
=== function nazwa_rozdzialu(r)
{ r:
- rozdz_prolog: ~ return "Prologo"
- rozdz_1: ~ return "Capitolo primo"
- rozdz_2: ~ return "Capitolo secondo"
- rozdz_3: ~ return "Capitolo terzo"
- rozdz_4: ~ return "Capitolo quarto"
- rozdz_5: ~ return "Capitolo quinto"
- rozdz_6: ~ return "Capitolo sesto"
- rozdz_7: ~ return "Capitolo settimo"
- rozdz_8: ~ return "Capitolo ottavo"
- rozdz_9: ~ return "Capitolo nono"
- rozdz_10: ~ return "Capitolo decimo"
- rozdz_11: ~ return "Capitolo undicesimo"
- rozdz_12: ~ return "Capitolo dodicesimo"
- rozdz_13: ~ return "Capitolo tredicesimo"
- rozdz_14: ~ return "Capitolo quattordicesimo"
- rozdz_15: ~ return "Capitolo quindicesimo"
- rozdz_16: ~ return "Capitolo sedicesimo"
- rozdz_17: ~ return "Capitolo diciassettesimo"
- rozdz_18: ~ return "Capitolo diciottesimo"
- rozdz_19: ~ return "Capitolo diciannovesimo"
- rozdz_20: ~ return "Capitolo ventesimo"
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
- zak_granica_dab_marysia: ~ return "La giovane quercia"
- zak_granica_dab: ~ return "Con nonno Maciek"
- zak_granica_marysia: ~ return "Parola per parola"
- zak_granica: ~ return "Un bambino per generazione"
- zak_miejsce_marysia: ~ return "Oltre lo steccato"
- zak_miejsce: ~ return "Andiamo a casa, papà"
- zak_ogien_marysia: ~ return "La foresta che non c’è più"
- zak_ogien: ~ return "Cenere tiepida"
}

// Pytanie nad wyborami, gdy scena nie ma własnego (# pytanie:).
=== function domyslne_pytanie()
~ return "Che cosa fai?"
