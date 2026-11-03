// ------------------------------------------------------------
//  Rozdział szósty – Południca. Żniwa w upale, Jaromir ma trzynaście
//  lat. Południca zadaje w samo południe trzy zagadki; za każdą
//  pomyłkę tnie sierpem. Księga daje dodatkową odpowiedź. Przy dwóch
//  i więcej pomyłkach ratuje go Hanka z dzbanem wody (gorączka, blizna),
//  inaczej Południca ostrzega: „Pan Lasu się budzi, pilnuj kapliczek”.
// ------------------------------------------------------------

=== rozdzial_szosty ===
# tlo: zniwa
# rozdzial: Capitolo sesto
# tytul: Mezzogiorno in punto
La mietitura venne con una gran calura. Da settimane non cadeva una goccia di pioggia, il cielo sbiancava per l’afa già all’alba, e la terra sulle prode si spaccava in lunghe crepe tortuose. Le messi maturarono d’un tratto, in pochi giorni, e ora stavano nei campi dorate e secche, frusciando a ogni soffio come carta.
Uscivano nei campi prima che cantassero i galli. Gli uomini andavano avanti, le donne dietro di loro legavano i covoni, e i bambini spigolavano e portavano l’acqua in brocche di terracotta. Jaromir aveva tredici anni e per la prima volta falciava il grano insieme agli adulti – in fila, passo dopo passo dietro il padre, e la lama tra le sue mani sibilava regolare quasi quanto quella dei vecchi mietitori. L’aria odorava di paglia rovente e di sudore, le falci tintinnavano contro le coti, e di sotto i piedi si levavano a ogni momento quaglie spaventate.
Hanka lavorava nel campo accanto. Ogni tanto si raddrizzava, si asciugava la fronte col dorso della mano e lanciava un’occhiata verso Jaromir, e quando i loro sguardi s’incontravano, voltava subito la testa e tornava ai covoni con finto zelo. Jaromir non sapeva perché ogni volta lo prendesse un caldo così strano – e non per il sole. # pokaz: hanka
{ figurka_u_staruchy:
    Il padre non parlava quasi. A mezzogiorno in punto ordinava sempre a tutti di lasciare il campo e mettersi all’ombra, dovesse pure sgranarsi la segale.
- else:
    Il padre scherzava e cantava al lavoro, ma a mezzogiorno in punto ordinava sempre a tutti di lasciare il campo e mettersi all’ombra. – Faceva così il nonno – diceva – e anche il nonno suo. Non me lo sono inventato io. – E quando i bambini insistevano a chiedere, raccontava di una ragazza, la miglior mietitrice dei dintorni, che aveva scommesso coi braccianti che da sola avrebbe mietuto l’intero appezzamento prima di mezzogiorno. Non lasciò il campo nemmeno nella calura più forte. La trovarono la sera col falcetto in mano e le spighe nei capelli.
}
Un giorno Jaromir rimase solo in fondo al campo. Voleva finire l’andana prima di andare all’ombra, e non si accorse di quando gli altri se ne andarono sotto il pero sulla proda. Il sole gli si fermò esattamente sopra la testa, e l’ombra si raggrinzì e sparì sotto i piedi. # pokaz: sam # dalej
-> poludnica_przychodzi

= poludnica_przychodzi
# tlo: poludnica
Si fece silenzio. Tacquero i grilli, il grano smise di frusciare, e l’aria sopra il campo s’addensò e prese a tremolare come acqua sopra una pietra rovente.
Tra le spighe apparve una donna. # pokaz: poludnica
Era alta e magra, dritta come una corda tesa, in una camicia bianca fino alle caviglie che ondeggiava, benché non spirasse il più lieve alito di vento. I capelli chiari le arrivavano alle ginocchia e si spargevano ai lati, e in testa aveva una ghirlanda di spighe e di papaveri rossi. Il volto era pallido e stretto, dagli zigomi alti, gli occhi come tela sbiancata al sole, senza pupille, e la bocca serrata in una linea sottile. I piedi nudi non toccavano terra – fluttuava qualche pollice sopra le stoppie, e sotto di lei vibrava la calura. Nella destra teneva un falcetto. Sulla punta pendeva una goccia rossa.
La mano sinistra la tendeva verso di lui, aperta, come a chiedere qualcosa.
– Chi lavora nella mia ora – disse con una voce secca come lo scricchiolio della paglia – deve rispondermi. Tre indovinelli. Per ogni errore – un taglio.
{ ekwipunek ? ksiega:
    A Jaromir tornò davanti agli occhi una pagina del quaderno del maestro Ignacy: «La Signora del Mezzogiorno va per i campi nell’ora più torrida e interroga i mietitori. Chi risponde a tutto – è libero. Chi sbaglia o fugge – lo recide col falcetto o gli manda la febbre». Sotto, più in piccolo, aveva aggiunto una soluzione, sentita anni prima da una vecchia di Bukowiec, e l’aveva sottolineata due volte: «Il chicco muore tre volte e tre volte ritorna».
}
# dalej
-> zagadka_1

= zagadka_1
La Signora del Mezzogiorno piegò la testa di lato, come un uccello.
– Senza gambe corre per le messi, senza mani pettina le spighe, senza bocca geme nel camino. Tutti l’hanno sentito, e nessuno l’ha mai visto. Che cos’è?
# pytanie: Che cosa risponderà Jaromir?
*   [Il fuoco.]
    -> zle_1
*   [Il vento.]
    La Signora del Mezzogiorno tacque per un istante. Poi le sue labbra ebbero un fremito – non era un sorriso, piuttosto qualcosa che gli somigliava.
    – Il vento – ripeté. – Mio fratello. Bene. # dalej
    -> zagadka_2
*   [Il fumo.]
    -> zle_1

= zle_1
{ odwaga_jaromira && not poludnica_darowala:
    ~ poludnica_darowala = true
    Il falcetto sibilò – e si fermò a un capello dalla sua spalla. Jaromir non batté ciglio. {figurka_u_staruchy:Una volta, in acqua profonda, qualcosa gli aveva sfiorato il polpaccio, e lui era fuggito a riva. Ora non fuggì.|Una volta, tra i canneti del lago, aveva posato la mano su una trave carbonizzata, benché gli altri non ne avessero avuto il coraggio. Ora non si tirò indietro.}
    – Non scappi – disse la Signora del Mezzogiorno, e scostò la lama. – Questa te la condono. Ma era il vento. Il fuoco e il fumo li ha visti chiunque, il vento non l’ha mai visto nessuno. # dalej
    -> zagadka_2
}
~ pomylki_poludnica += 1
~ ciecie_ramie = true
Il falcetto sibilò prima che Jaromir facesse in tempo a battere le palpebre. Sentì un dolore bruciante alla spalla, e quando abbassò lo sguardo, il sangue filtrava dalla camicia strappata. # pokaz: ciecie
– Sbagliato – disse la Signora del Mezzogiorno. – Il vento. Il fuoco e il fumo li ha visti chiunque, il vento non l’ha mai visto nessuno. # dalej
-> zagadka_2

= zagadka_2
– Va sotto terra come un morto, e risorge. Cade sotto la lama come un malfattore, e non sanguina. Prende le botte, e non si lamenta. E quando finisce nella brace – soltanto allora tutti ne vogliono. Che cos’è?
# pytanie: Che cosa risponderà Jaromir?
*   [Il lino.]
    -> zle_2
*   [La segale.]
    – La segale – sussurrò, e il suo volto bianco per un attimo si addolcì, come se ricordasse la propria mietitura, tanto tempo prima. – Ragazzo assennato. # dalej
    -> zagadka_3
*   [La patata.]
    -> zle_2
*   { ekwipunek ? ksiega } [Il chicco.]
    ~ poludnica_uklon = true
    La Signora del Mezzogiorno aprì la bocca e la richiuse senza una parola. Lo guardò a lungo con quegli occhi bianchi, poi chinò il capo – appena, in modo quasi invisibile, come davanti a qualcuno che si rispetta. # pokaz: uklon
    – Il chicco – ripeté piano. – Muore nella terra, torna da sotto la falce e il correggiato, e nel forno rinasce pane. Una risposta così non la sentivo da cent’anni. Qualcuno ti ha insegnato bene. # dalej
    -> zagadka_3

= zle_2
{ odwaga_jaromira && not poludnica_darowala:
    ~ poludnica_darowala = true
    Il falcetto sibilò – e si fermò a un capello dalla sua mano. Jaromir non batté ciglio. {figurka_u_staruchy:Una volta, in acqua profonda, qualcosa gli aveva sfiorato il polpaccio, e lui era fuggito a riva. Ora non fuggì.|Una volta, tra i canneti del lago, aveva posato la mano su una trave carbonizzata, benché gli altri non ne avessero avuto il coraggio. Ora non si tirò indietro.}
    – Non scappi – disse la Signora del Mezzogiorno, e scostò la lama. – Questa te la condono. Ma era la segale. Il lino non si cuoce in forno, e le patate nessuno le trebbia. # dalej
    -> zagadka_3
}
~ pomylki_poludnica += 1
~ ciecie_dlon = true
Il falcetto balenò nell’aria. Il taglio gli passò sul dorso della mano, superficiale, ma il sangue sprizzò sulle stoppie. # pokaz: ciecie
– La segale – sibilò. – Il lino non si cuoce in forno, e le patate nessuno le trebbia. # dalej
-> zagadka_3

= zagadka_3
L’aria tremolò più forte. La calura saliva a Jaromir fino alla gola, gli fischiavano le orecchie, e il campo cominciò a ondeggiare, come se stesse su una barca.
– E ora dimmi – la Signora del Mezzogiorno abbassò la voce – chi ha una dimora più vecchia di tutte le case dei dintorni, e in essa non c’è nemmeno una porta? Chi pascola i lupi come voi pascolate le pecore? E a chi, quest’estate, hanno strappato dallo steccato il palo più grosso, quello di quercia?
# pytanie: Che cosa risponderà Jaromir?
*   [San Giorgio.]
    ~ pomylki_poludnica += 1
    ~ ciecie_policzek = true
    – Un santo? – La Signora del Mezzogiorno rise, secca e sgradevole, come stoppie che crepitano. – I santi stanno nelle edicole, ragazzo. E quell’altro aspetta che qualcuno gliele strappi via.
    La lama lampeggiò. Jaromir sentì sulla guancia un graffio acuto, e lungo il mento gli colò qualcosa di caldo. # pokaz: ciecie
*   [Il Signore del Bosco.]
    Tutto si zittì ancora di più, benché sembrasse che più silenzio di così non potesse esserci. La Signora del Mezzogiorno ritrasse la mano tesa.
    – Lo conosci – disse, e per la prima volta nella sua voce risuonò qualcosa di simile alla paura. – Questo è male. Perché anche lui conosce te.
*   [Non lo so.]
    La Signora del Mezzogiorno tacque a lungo.
    – Lo sai – disse. – Solo che hai paura di dirlo. È saggio. Non pronunciare il suo nome a mezzogiorno.
-   -> wynik

= wynik
{ pomylki_poludnica:
- 0:
    La Signora del Mezzogiorno abbassò il falcetto.
    – Sei libero – disse. – Ma ascolta, perché non lo ripeterò. Il Signore del Bosco si sta svegliando. A ogni albero abbattuto il suo sonno si fa più leggero. Veglia sulle edicole, ragazzo. Veglia su di loro, finché stanno in piedi.
- 1:
    La Signora del Mezzogiorno lo osservò a lungo, poi abbassò il falcetto.
    – Poteva andare peggio – disse. – Va’. Ma ricorda: il Signore del Bosco si sta svegliando. Veglia sulle edicole.
- else:
    La Signora del Mezzogiorno levò il falcetto in alto, sopra la sua testa. Il ragazzo chiuse gli occhi – e allora udì un grido. # pokaz: zamach
}
Qualcuno correva nel campo, inciampando nei covoni. Hanka. Tra le mani portava una brocca di terracotta da cui l’acqua schizzava fuori. # pokaz: dzban
– Jaromir! Jaromir, che fai qui a mezzogiorno in punto?!
{ pomylki_poludnica < 2:
    ~ ostrzezenie_poludnicy = true
    Quando guardò di nuovo davanti a sé, non c’era più nessuno. Solo sulle stoppie giaceva la ghirlanda di spighe e di papaveri, che già cominciavano ad appassire. # pokaz: znika, wianek # dalej
    -> po_poludniu
- else:
    Hanka non rallentò. Balzò accanto al ragazzo e gettò l’acqua della brocca – non su di lui, ma davanti a sé, là dove tremolava la calura.
    – Tieni, bevi! – gridò nel vuoto con voce rotta, come le aveva insegnato la nonna. – Bevi e lascialo andare!
    La Signora del Mezzogiorno esitò col falcetto sollevato. Guardò la ragazza, poi la macchia scura che spariva nella terra screpolata – e si dissolse nell’aria tremante come vapore. Hanka versò a Jaromir il resto dell’acqua sulla testa. # pokaz: znika, woda # dalej
    -> goraczka
}

= goraczka
# tlo: goraczka
~ blizna_sierpa = true
~ zapiski += poludnica_1
Per tre giorni lo divorò la febbre. Giaceva in casa sotto teli bagnati, {rany_sierpa()} gli bruciavano come marchiate col ferro rovente, e nel delirio continuava a vedere occhi bianchi senza pupille e a sentire un sussurro secco: «Per ogni errore – un taglio». # pokaz: majaki
La madre non si allontanava da lui di un passo. Hanka portava le erbe di sua nonna, e il secondo giorno, senza dir niente a nessuno, andò a mezzogiorno in punto in quel campo e posò sulla proda una brocca d’acqua fresca. Tornò sconvolta e non volle dire che cosa avesse visto. Quella notte la febbre cominciò a scendere. # pokaz: hanka
Quando finalmente si alzò, gli era rimasta {miejsce_blizny()} una cicatrice bianca a forma di mezzaluna, come lasciata dalla punta di un falcetto.
-> czy_powiedziec

= po_poludniu
# tlo: czerwony_ksiezyc
~ zapiski += poludnica_1
~ mak_w_medaliku = true
Ai mietitori non raccontò che cosa fosse accaduto a mezzogiorno. Soltanto la sera, mentre lui e Hanka sedevano sullo steccato e guardavano sorgere sopra le stoppie una grande luna rossa, tirò fuori di tasca un papavero appassito della ghirlanda e glielo posò sul palmo. # pokaz: mak
Dai campi veniva odore di polvere e di sole bruciato, i grilli cantavano come impazziti, e Hanka gli sedeva così vicina che attraverso la camicia sentiva il calore della sua spalla.
– Da parte di chi? – chiese.
– Di qualcuno che mi ha detto di vegliare sulle edicole – rispose.
Hanka non capì, ma ripose il papavero nella medaglietta che portava al collo, e da allora non se ne separò più.
-> czy_powiedziec

= czy_powiedziec
Antek acchiappò Jaromir non appena rimasero soli.
– Ti ho visto da sotto il pero – disse piano. – Stavi da solo in fondo al campo e parlavi all’aria, e l’aria sopra di te tremava come sopra il fuoco della fucina. – Deglutì. – Se lo dici ai grandi, anch’io dirò quello che ho visto. In due ci crederanno prima.
# pytanie: Jaromir lo dirà al padre?
*   [{ostrzezenie_poludnicy:Riferire al padre l’avvertimento della Signora del Mezzogiorno.|Raccontare al padre della Signora del Mezzogiorno.}]
    ~ powiedzial_ojcu_poludnica = true
    # tlo: kapliczki_noc
    { figurka_u_staruchy:
        Il padre ascoltò il figlio in silenzio. Poi si alzò, staccò la lanterna dal chiodo e uscì nella notte. Tornò verso l’alba. La madre raccontò in seguito che aveva fatto il giro di tutte le edicole di Zapadlina e davanti a ciascuna era rimasto in ginocchio, come per chiedere perdono. # pokaz: ojciec # dalej
    - else:
        Il padre non rise. Tacque a lungo, poi disse che l’indomani avrebbe radunato la gente e sarebbero andati insieme da Urbaniak. – Le edicole non le toccherà – aggiunse. – Dovesse anche farmi crollare la segheria in testa. # pokaz: ojciec # dalej
    }
    -> rozdzial_szosty_ciag_dalszy
*   [Tenerlo per sé.]
    # tlo: kapliczki_noc
    Jaromir non lo disse a nessuno – tranne ad Antek, che lo sapeva comunque. Ogni notte, quando tutti già dormivano, sgattaiolavano fuori loro due e facevano il giro delle edicole più vicine. Raddrizzavano i tettucci storti e strappavano le erbacce che avvinghiavano i pali. A volte, a metà del lavoro, i grilli tacevano – prima sotto il bosco, poi sempre più vicino – e allora restavano immobili finché non riprendevano a cantare. Jaromir tornava prima dell’alba madido di sudore freddo, con le gambe dei calzoni bagnate di rugiada, e a lungo non riusciva a prendere sonno, in ascolto di ogni fruscio fuori dalla finestra. # pokaz: jaromir # dalej
    -> rozdzial_szosty_ciag_dalszy


// Koniec rozdziału szóstego – dalej rozdział siódmy.
=== rozdzial_szosty_ciag_dalszy ===
# ozdobnik
~ zapiski += pan_lasu_3
_Fine del capitolo sesto._ # dalej
-> rozdzial_siodmy

=== function rany_sierpa()
{
- ciecie_ramie && ciecie_dlon && ciecie_policzek: ~ return "le ferite alla spalla, alla mano e alla guancia"
- ciecie_ramie && ciecie_dlon: ~ return "le ferite alla spalla e alla mano"
- ciecie_ramie: ~ return "le ferite alla spalla e alla guancia"
- else: ~ return "le ferite alla mano e alla guancia"
}

=== function miejsce_blizny()
{
- ciecie_ramie: ~ return "sulla spalla"
- ciecie_dlon: ~ return "sulla mano"
- else: ~ return "sulla guancia"
}
