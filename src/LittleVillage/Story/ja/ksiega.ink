// ============================================================
//  Księga opowieści – rozdziały i zakończenia do menu gry
//  (wybór rozdziału, mapa zakończeń). Kolejność elementów list
//  jest kolejnością w opowieści.
// ============================================================

LIST Rozdzialy = rozdz_prolog, rozdz_1, rozdz_2, rozdz_3, rozdz_4, rozdz_5, rozdz_6, rozdz_7, rozdz_8, rozdz_9, rozdz_10, rozdz_11, rozdz_12, rozdz_13, rozdz_14, rozdz_15, rozdz_16, rozdz_17, rozdz_18, rozdz_19, rozdz_20

// Nazwa rozdziału dokładnie taka, jak w tagu # rozdzial: na jego pierwszej stronie.
=== function nazwa_rozdzialu(r)
{ r:
- rozdz_prolog: ~ return "序章"
- rozdz_1: ~ return "第一章"
- rozdz_2: ~ return "第二章"
- rozdz_3: ~ return "第三章"
- rozdz_4: ~ return "第四章"
- rozdz_5: ~ return "第五章"
- rozdz_6: ~ return "第六章"
- rozdz_7: ~ return "第七章"
- rozdz_8: ~ return "第八章"
- rozdz_9: ~ return "第九章"
- rozdz_10: ~ return "第十章"
- rozdz_11: ~ return "第十一章"
- rozdz_12: ~ return "第十二章"
- rozdz_13: ~ return "第十三章"
- rozdz_14: ~ return "第十四章"
- rozdz_15: ~ return "第十五章"
- rozdz_16: ~ return "第十六章"
- rozdz_17: ~ return "第十七章"
- rozdz_18: ~ return "第十八章"
- rozdz_19: ~ return "第十九章"
- rozdz_20: ~ return "第二十章"
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
- zak_granica_dab_marysia: ~ return "若い樫"
- zak_granica_dab: ~ return "マチェクじいさんと共に"
- zak_granica_marysia: ~ return "言葉には言葉を"
- zak_granica: ~ return "一世代に一人の子"
- zak_miejsce_marysia: ~ return "垣根の向こう"
- zak_miejsce: ~ return "おうちに帰ろう、とうさん"
- zak_ogien_marysia: ~ return "もうない森"
- zak_ogien: ~ return "温かい灰"
}

// Pytanie nad wyborami, gdy scena nie ma własnego (# pytanie:).
=== function domyslne_pytanie()
~ return "どうする？"
