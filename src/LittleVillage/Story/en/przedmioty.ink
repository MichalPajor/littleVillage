// ------------------------------------------------------------
//  Przedmioty i ekwipunek.
//  Dodanie przedmiotu:   ~ ekwipunek += siekiera
//  Zabranie przedmiotu:  ~ ekwipunek -= chleb
//  Sprawdzenie:          { ekwipunek ? siekiera: ... }
// ------------------------------------------------------------

LIST Przedmioty = siekiera, chleb, pies_towarzysz, figurka, krzesiwo, zapasy, nasiona, nozyk, kora, ksiega, szczeniak, mak, monety, zoladz, piolun, korale, swiatek, podkowa, krzyzyk, gromnica, szczenie_psa, bucik_marysi, wstazka_marysi, rozaniec

// Ekwipunek na początku gry — to, co Maciek przyniósł w tobołku.
VAR ekwipunek = (siekiera, chleb)

// Nazwa wyświetlana w oknie ekwipunku.
=== function nazwa_przedmiotu(p)
{ p:
    - siekiera:
        { siekiera_dziadka:
            ~ return "Grandfather Maciek’s axe"
        }
        ~ return "Axe"
    - chleb:     ~ return "A loaf of bread"
    - pies_towarzysz: ~ return "The dog—a companion"
    - figurka:   ~ return "Charred figurine"
    - krzesiwo:  ~ return "Flint and steel"
    - zapasy:    ~ return "Provisions from town"
    - nasiona:   ~ return "Vegetable seeds"
    - nozyk:     ~ return "Little knife"
    - kora:      ~ return "Bark with a sign"
    - ksiega:    ~ return "Book of legends"
    - szczeniak: ~ return imie_psa
    - mak:       ~ return "A handful of poppy seeds"
    - monety:    ~ return "Coins from the sawmill"
    - zoladz:    ~ return "Acorn from the Old Oak"
    - piolun:    ~ return "Wormwood"
    - korale:    ~ return "Rowan-berry beads"
    - swiatek:   ~ return "Wayside saint figure"
    - podkowa:   ~ return "The smith’s horseshoe"
    - krzyzyk:   ~ return "The smith’s cross"
    - gromnica:  ~ return "Candlemas candle"
    - szczenie_psa:
        { rozdzial_trzynasty:
            ~ return "Russet dog"
        }
        ~ return "Russet pup"
    - bucik_marysi:
        { drugi_drewniak:
            ~ return "Marysia’s clogs"
        }
        ~ return "Marysia’s clog"
    - wstazka_marysi: ~ return "Marysia’s ribbon"
    - rozaniec: ~ return "Blessed rosary"
}
~ return ""

// Opis wyświetlany pod nazwą.
=== function opis_przedmiotu(p)
{ p:
    - siekiera:
        { siekiera_dziadka:
            ~ return "An axe with a worn, dark haft. Grandfather Maciek once bought it in town with the money from four years’ labour on another man’s field. Jaromir’s father gave it to him on his wedding day—now he is master of the farm."
        }
        ~ return "Bought in town with the money from four years’ labour on another man’s field. The whole future rests upon it."
    - chleb:     ~ return "Hard, coarse rye, wrapped in a scrap of linen. It has to last a long while."
    - pies_towarzysz: ~ return "Scrawny, with a long muzzle and paws too big for him. He saved Maciek from the thing in the thicket, and since that night has not left his side."
    - figurka:
        { rozdzial_trzynasty && przeszukal_zgliszcza && not figurka_w_bagnie:
            ~ return "A small wooden figure with arms reaching down to its feet, charred on one side. It came back to Zapadlina after more than sixty years. The wood is always cold and damp, even on a dry day."
        }
        { rozdzial_trzynasty:
            ~ return "A small wooden figure with arms reaching down to its feet, charred on one side. After more than sixty years it has come to light. The wood is always cold and damp, even on a dry day."
        }
        ~ return "A small wooden figure with arms reaching down to its feet, charred on one side. Dug out of the ashes of the witch’s hut."
    - krzesiwo:
        { krzesiwo_od_babki:
            ~ return "Grandfather Maciek’s small, blackened flint and steel. Grandmother Marianna gave it to Jaromir on her deathbed. Grandfather kept it by him to the very end."
        }
        { krzesiwo_na_slubie:
            ~ return "Grandfather Maciek’s small, blackened flint and steel. Jaromir’s father gave it to him on his wedding day, together with the axe—Grandfather carried it on him till the day he died."
        }
        ~ return "It lay in the ashes beside the figurine. Could this be what set the witch’s hut alight?"
    - zapasy:
        { figurka_u_staruchy:
            ~ return "Two loaves of bread, a sack of groats, salt, a slab of pork fat and a basket of seed potatoes. Bought with the old crone’s coins."
        }
        ~ return "A loaf of bread, a handful of salt and a little bag of groats. It must last until something grows."
    - nasiona:   ~ return "Bought at the market in town. It was spring—they had to be sown without delay."
    - nozyk:     ~ return "A name-day gift from Father. Small, with a worn wooden handle and a blade he put an edge on with a whetstone. Jaromir has whittled more than one bow with it."
    - kora:      ~ return "A piece of pine bark rolled into a tube, taken from beneath the tree with the spiral. On its smooth side someone has carved rows of strokes and circles—like letters, and yet Jaromir knows not one of them."
    - ksiega:
        { ksiega_zatrzymana:
            ~ return "Mr Ignacy’s thick notebook, bound in leather and filled with a careful, slanting hand—tales from the country around Beech Ridge. The schoolmaster let him keep it. It may only be read by day."
        }
        ~ return "Mr Ignacy’s thick notebook, bound in leather and filled with a careful, slanting hand—tales from the country around Beech Ridge. It may only be read by day, and it must be given back at Christmas."
    - szczeniak:
        { rozdzial_jedenasty:
            ~ return "A dog descended from Grandfather Maciek’s—once a puppy from old Staś, now old himself, grey about the muzzle. He still sleeps at the foot of the bed and still growls in his sleep towards the forest."
        }
        { rozdzial_piaty:
            ~ return "A dog descended from Grandfather Maciek’s, once a Christmas Eve puppy from old Staś. He has grown big, with pricked ears and a white patch on his chest. He sleeps at the foot of the bed and growls in his sleep towards the window."
        }
        ~ return "A puppy of the line of Grandfather Maciek’s dog, a Christmas Eve present from old Staś. Pricked ears, a white patch on his chest and paws too big for the rest of him. He sleeps at the foot of the bed and growls in his sleep towards the window."
    - mak:       ~ return "A rag holding a handful of poppy seeds filched from the Christmas Eve bowl. According to Mr Ignacy’s book, Lady Midnight must count every last seed before she can come any closer."
    - monety:    ~ return "Heavy, cold silver coins with an eagle on one side—Mr Urbaniak’s pay for a summer spent stacking planks."
    - zoladz:    ~ return "A large, smooth acorn from beneath the roots of the felled Old Oak. It is still warm, as if something inside were alive."
    - piolun:    ~ return "A bunch of grey-green stalks with a bitter, sharp smell. Hanka gave it to him at Whitsun—they say that what comes out of the water then fears wormwood more than fire."
    - korale:    ~ return "A string of rowan-berry beads found on the jetty after the night of the rusalki. They belonged to Kaśka, the Wójciks’ daughter. They are still wet, and red as fresh blood."
    - swiatek:   ~ return "A wooden Mother of God with the Child, pulled by night from Urbaniak’s cart while his men were digging up the shrines below the forest. Her face is so worn by the rains it can barely be made out. Hidden under the boards in the den in the old elder."
    - podkowa:   ~ return "An iron horseshoe forged by Hanka’s father for the wedding. It hangs over the cottage threshold, points upward, so that nothing evil can come in and the luck cannot spill out."
    - krzyzyk:   ~ return "A small iron cross on a leather thong, forged by Hanka’s father for the wedding. Hanka wears it round her neck and never takes it off—the smith bade her never to."
    - gromnica:  ~ return "A thick wax candle blessed in Bukowiec at Candlemas. Every home must have one—for storms, for childbirth and for death."
    - bucik_marysi:
        { drugi_drewniak:
            ~ return "A pair of little limewood clogs, painted red and lined with felt from Grandfather Dobrosław’s old hat. The white wolf brought the second one back from beneath the oak."
        }
        { dlug_jagny == oddany_drewniak:
            ~ return "A little limewood clog, painted red and lined with felt from Grandfather Dobrosław’s old hat. Jagna took the other one."
        }
        { rozdzial_siedemnasty:
            ~ return "A little limewood clog, painted red and lined with felt from Grandfather Dobrosław’s old hat. The other one stayed in the forest."
        }
        ~ return "A little limewood clog, painted red and lined with felt from Grandfather Dobrosław’s old hat. The other one stayed in the rye, with her who held it."
    - wstazka_marysi:
        { pani_w_zbozu_noc == gonil_babe:
            ~ return "The red ribbon Hanka plaited into Marysia’s hair on St John’s Eve. It was found hanging on the thistles by the field balk."
        }
        ~ return "The red ribbon Hanka plaited into Marysia’s hair on St John’s Eve. It was found hanging on a juniper at the edge of the young wood, at the height of a small child’s hand."
    - rozaniec: ~ return "A wooden rosary blessed by the priest from Bukowiec. On it he swore to have done with heathen ways."
    - szczenie_psa:
        { rozdzial_dziewietnasty && not marysia_odzyskana:
            ~ return "A russet dog with a white patch on his chest, of the line of Grandfather Maciek’s dog. He sleeps under the bench where Marysia used to sleep, and cannot be coaxed out from there."
        }
        { rozdzial_trzynasty:
            ~ return "A russet dog with a white patch on his chest, of the line of Grandfather Maciek’s dog. He has grown long-legged and lanky, follows Marysia step for step and growls at anyone who raises a voice to her."
        }
        ~ return "A russet pup with a white patch on his chest, of the line of Grandfather Maciek’s dog. He chews everything he can find, sleeps by Marysia’s cradle and will not leave her side."
}
~ return ""
