// ------------------------------------------------------------
//  Przedmioty i ekwipunek.
//  Dodanie przedmiotu:   ~ ekwipunek += siekiera
//  Zabranie przedmiotu:  ~ ekwipunek -= chleb
//  Sprawdzenie:          { ekwipunek ? siekiera: ... }
// ------------------------------------------------------------

LIST Przedmioty = siekiera, chleb, pies_towarzysz, figurka, krzesiwo, zapasy, nasiona, nozyk, kora, ksiega, szczeniak, mak, monety, zoladz, piolun, korale, swiatek, podkowa, krzyzyk, gromnica, szczenie_psa, bucik_marysi, wstazka_marysi, rozaniec

// Ekwipunek na początku gry – to, co Maciek przyniósł w tobołku.
VAR ekwipunek = (siekiera, chleb)

// Nazwa wyświetlana w oknie ekwipunku.
=== function nazwa_przedmiotu(p)
{ p:
    - siekiera:
        { siekiera_dziadka:
            ~ return "L’ascia di nonno Maciek"
        }
        ~ return "Ascia"
    - chleb:     ~ return "Una pagnotta di pane"
    - pies_towarzysz: ~ return "Il cane – un compagno"
    - figurka:   ~ return "Statuina bruciacchiata"
    - krzesiwo:  ~ return "Acciarino"
    - zapasy:    ~ return "Provviste dalla città"
    - nasiona:   ~ return "Semi di ortaggi"
    - nozyk:     ~ return "Coltellino"
    - kora:      ~ return "Corteccia col segno"
    - ksiega:    ~ return "Quaderno delle leggende"
    - szczeniak: ~ return imie_psa
    - mak:       ~ return "Una manciata di semi di papavero"
    - monety:    ~ return "Monete della segheria"
    - zoladz:    ~ return "Ghianda della Vecchia Quercia"
    - piolun:    ~ return "Assenzio"
    - korale:    ~ return "Collana di sorbo"
    - swiatek:   ~ return "Santino dell’edicola"
    - podkowa:   ~ return "Il ferro di cavallo del fabbro"
    - krzyzyk:   ~ return "La crocetta del fabbro"
    - gromnica:  ~ return "Candela della Candelora"
    - szczenie_psa:
        { rozdzial_trzynasty:
            ~ return "Cane fulvo"
        }
        ~ return "Cucciolo fulvo"
    - bucik_marysi:
        { drugi_drewniak:
            ~ return "Gli zoccoli di Marysia"
        }
        ~ return "Lo zoccolo di Marysia"
    - wstazka_marysi: ~ return "Il nastro di Marysia"
    - rozaniec: ~ return "Rosario benedetto"
}
~ return ""

// Opis wyświetlany pod nazwą.
=== function opis_przedmiotu(p)
{ p:
    - siekiera:
        { siekiera_dziadka:
            ~ return "Un’ascia dal manico scuro e consumato. Nonno Maciek l’aveva comprata un tempo in città con i soldi di quattro anni di lavoro su un campo altrui. Il padre l’ha data a Jaromir il giorno delle nozze – ora il capofamiglia è lui."
        }
        ~ return "Comprata in città con i soldi di quattro anni di lavoro su un campo altrui. Su di essa poggia tutto l’avvenire."
    - chleb:     ~ return "Duro, di farina grezza, avvolto in un panno di lino. Deve bastare a lungo."
    - pies_towarzysz: ~ return "Magro, col muso lungo e le zampe troppo grandi. Ha difeso Maciek dalla creatura della boscaglia e da quella notte non lo lascia di un passo."
    - figurka:
        { rozdzial_trzynasty && przeszukal_zgliszcza && not figurka_w_bagnie:
            ~ return "Una piccola figura di legno con le braccia che arrivano ai piedi, bruciacchiata da un lato. È tornata a Zapadlina dopo più di sessant’anni. Il legno è sempre freddo e umido, anche nelle giornate asciutte."
        }
        { rozdzial_trzynasty:
            ~ return "Una piccola figura di legno con le braccia che arrivano ai piedi, bruciacchiata da un lato. Dopo più di sessant’anni è tornata alla luce. Il legno è sempre freddo e umido, anche nelle giornate asciutte."
        }
        ~ return "Una piccola figura di legno con le braccia che arrivano ai piedi, bruciacchiata da un lato. Ripescata dalla cenere della capanna della strega."
    - krzesiwo:
        { krzesiwo_od_babki:
            ~ return "Il piccolo acciarino annerito di nonno Maciek. Nonna Marianna l’ha dato a Jaromir sul letto di morte. Il nonno non se n’è mai separato, fino alla fine."
        }
        { krzesiwo_na_slubie:
            ~ return "Il piccolo acciarino annerito di nonno Maciek. Il padre l’ha dato a Jaromir il giorno delle nozze insieme all’ascia – il nonno l’ha portato con sé fino alla fine."
        }
        ~ return "Giaceva nella cenere accanto alla statuina. Che sia servito per dare fuoco alla capanna della strega?"
    - zapasy:
        { figurka_u_staruchy:
            ~ return "Due pagnotte, un sacco d’orzo, sale, un pezzo di lardo e una cesta di patate da semina. Tutto comprato con le monete della vecchia."
        }
        ~ return "Una pagnotta, una manciata di sale e un sacchetto d’orzo. Devono bastare finché non crescerà qualcosa."
    - nasiona:   ~ return "Comprati al mercato della città. Era primavera – bisognava seminarli al più presto."
    - nozyk:     ~ return "Regalo del padre per l’onomastico. Piccolo, col manico di legno consumato e una lama che lui stesso ha affilato con la cote. Jaromir ci ha già intagliato più di un arco."
    - kora:      ~ return "Un pezzo di corteccia di pino arrotolato a cartoccio, raccolto sotto l’albero con la spirale. Sul lato liscio qualcuno ha inciso file di trattini e cerchietti – sembrano lettere, eppure Jaromir non ne conosce nemmeno una."
    - ksiega:
        { ksiega_zatrzymana:
            ~ return "Il grosso quaderno del maestro Ignacy, rilegato in pelle e scritto in una grafia accurata e inclinata – storie dei dintorni della Cresta dei Faggi. Il maestro gli ha permesso di tenerlo. Si può leggere solo di giorno."
        }
        ~ return "Il grosso quaderno del maestro Ignacy, rilegato in pelle e scritto in una grafia accurata e inclinata – storie dei dintorni della Cresta dei Faggi. Si può leggere solo di giorno, e a Natale va restituito."
    - szczeniak:
        { rozdzial_jedenasty:
            ~ return "Discendente del cane di nonno Maciek – un tempo cucciolo regalato dal vecchio Staś, oggi anziano, col muso canuto. Dorme ancora ai piedi del giaciglio e ringhia ancora nel sonno verso il bosco."
        }
        { rozdzial_piaty:
            ~ return "Discendente del cane di nonno Maciek, un tempo cucciolo regalato dal vecchio Staś per la Vigilia di Natale. È diventato un grosso cane dalle orecchie appuntite, con una macchia bianca sul petto. Dorme ai piedi del giaciglio e ringhia nel sonno verso la finestra."
        }
        ~ return "Un cucciolo discendente del cane di nonno Maciek, regalo del vecchio Staś per la Vigilia di Natale. Orecchie appuntite, una macchia bianca sul petto e zampe troppo grandi per il resto del corpo. Dorme ai piedi del giaciglio e ringhia nel sonno verso la finestra."
    - mak:       ~ return "Una pezzuola con una manciata di semi di papavero sottratti alla scodella della Vigilia. Secondo il quaderno del maestro Ignacy, la Signora della Mezzanotte deve contare ogni granello prima di avvicinarsi."
    - monety:    ~ return "Pesanti, fredde monete d’argento con l’aquila su un lato – la paga del signor Urbaniak per un’estate passata ad accatastare assi."
    - zoladz:    ~ return "Una grossa ghianda liscia, raccolta tra le radici della Vecchia Quercia abbattuta. È ancora tiepida, come se dentro vivesse qualcosa."
    - piolun:    ~ return "Un mazzetto di steli grigioverdi dall’odore amaro e pungente. Gliel’ha dato Hanka per la Pentecoste – si dice che ciò che esce dall’acqua in quei giorni tema l’assenzio più del fuoco."
    - korale:    ~ return "Una collana di bacche di sorbo trovata sul pontile dopo la notte delle rusalke. Apparteneva a Kaśka, la figlia dei Wójcik. Le bacche sono ancora bagnate e rosse come sangue fresco."
    - swiatek:   ~ return "Una Madonna di legno col Bambino, sottratta di notte al carro di Urbaniak, mentre i suoi uomini dissotterravano le edicole ai piedi del bosco. Il volto è così consumato dalle piogge che si distingue appena. Nascosta sotto le assi del rifugio nel vecchio sambuco."
    - podkowa:   ~ return "Un ferro di cavallo forgiato dal padre di Hanka per le nozze. È appeso sopra la soglia di casa con i bracci all’insù, perché non entri nulla di male e la fortuna non si rovesci fuori."
    - krzyzyk:   ~ return "Una piccola croce di ferro appesa a un laccio di cuoio, forgiata dal padre di Hanka per le nozze. Hanka la porta al collo e non se la toglie – il fabbro ha comandato: mai."
    - gromnica:  ~ return "Una grossa candela di cera benedetta a Bukowiec per la Candelora. In ogni casa ce ne deve essere una – per il temporale, per il parto e per la morte."
    - bucik_marysi:
        { drugi_drewniak:
            ~ return "Un paio di piccoli zoccoli di tiglio, dipinti di rosso e foderati col feltro del vecchio cappello di nonno Dobrosław. L’altro l’ha riportato da sotto la quercia il lupo bianco."
        }
        { dlug_jagny == oddany_drewniak:
            ~ return "Un piccolo zoccolo di tiglio, dipinto di rosso e foderato col feltro del vecchio cappello di nonno Dobrosław. L’altro l’ha preso Jagna."
        }
        { rozdzial_siedemnasty:
            ~ return "Un piccolo zoccolo di tiglio, dipinto di rosso e foderato col feltro del vecchio cappello di nonno Dobrosław. L’altro è rimasto nel bosco."
        }
        ~ return "Un piccolo zoccolo di tiglio, dipinto di rosso e foderato col feltro del vecchio cappello di nonno Dobrosław. L’altro è rimasto nella segale, presso colei che lo teneva."
    - wstazka_marysi:
        { pani_w_zbozu_noc == gonil_babe:
            ~ return "Il nastro rosso che Hanka intrecciò nei capelli di Marysia la vigilia di San Giovanni. Era appeso ai cardi lungo la proda."
        }
        ~ return "Il nastro rosso che Hanka intrecciò nei capelli di Marysia la vigilia di San Giovanni. Era appeso a un ginepro al limitare della boscaglia giovane, all’altezza della manina di un bambino."
    - rozaniec: ~ return "Un rosario di legno benedetto dal prete di Bukowiec. Ci ha giurato sopra che l’avrebbe fatta finita con il paganesimo."
    - szczenie_psa:
        { rozdzial_dziewietnasty && not marysia_odzyskana:
            ~ return "Un cane fulvo con una macchia bianca sul petto, discendente del cane di nonno Maciek. Dorme sotto la panca su cui dormiva Marysia e non si lascia attirare via di lì."
        }
        { rozdzial_trzynasty:
            ~ return "Un cane fulvo con una macchia bianca sul petto, discendente del cane di nonno Maciek. È diventato un cane dalle zampe lunghe, segue Marysia passo passo e ringhia contro chiunque alzi la voce con lei."
        }
        ~ return "Un cucciolo fulvo con una macchia bianca sul petto, discendente del cane di nonno Maciek. Rosicchia tutto ciò che trova, dorme accanto alla culla di Marysia e non se ne allontana di un passo."
}
~ return ""
