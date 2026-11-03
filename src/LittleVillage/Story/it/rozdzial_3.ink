// ------------------------------------------------------------
//  Rozdział trzeci – Wigilia. Zima, Jaromir ma dziewięć lat.
//  Nocnica nawiedza Zosię, siostrzyczkę Antka; dziad proszalny
//  w wigilijny wieczór; szczeniak z rodu psa dziadka Maćka.
//  Ojciec jak w rozdziałach 1–2:
//    figurka_u_staruchy – milczący, nieufny;
//    inaczej            – pogodny, sam nie umie czytać.
// ------------------------------------------------------------

=== rozdzial_trzeci ===
# tlo: roraty
# rozdzial: Capitolo terzo
# tytul: La Vigilia
Nella prima settimana di dicembre il gelo strinse il lago così forte che i contadini ci andavano sopra con le slitte, e le paludi, che d’estate nessuno sano di mente attraversava per scorciatoia, si trasformarono in una distesa bianca e piana. La neve scricchiolava sotto le scarpe, di notte le travi crepitavano nelle pareti, e al mattino i vetri si coprivano di brina a forma di felci.
Era l’Avvento. Ogni giorno, ancora col buio, i bambini andavano a Bukowiec alla messa dell’aurora, e dalla chiesetta dritti a scuola, che sorgeva proprio lì accanto. Ognuno portava la sua lanterna – quella di Jaromir gliel’aveva incollata il padre con listelli di legno e carta unta, e dentro ardeva fioco un mozzicone di sego. Sul sentiero sotto il bosco le loro fiammelle ondeggiavano come fuochi fatui, e fra gli abeti regnava un buio così fitto che la luce vi affondava dopo pochi passi.
{ zawolal_do_lasu:
    Jaromir camminava sempre in mezzo e non voltava la testa verso gli alberi. Da quella mattina nella nebbia non riusciva a liberarsi dell’impressione che ora qualcuno conoscesse la sua voce.
- else:
    Jaromir camminava sempre in mezzo e cercava di non voltare la testa verso gli alberi.
}
Antek restava indietro sempre più spesso. In ottobre gli era nata una sorellina, Zosia, e da allora, da quelli di Staś, nessuno aveva più dormito una notte intera. La piccola piangeva fino all’alba, e quando per caso si chetava, la madre vegliava comunque sulla culla, perché il silenzio la spaventava più del pianto. Il ragazzo arrivava alla messa con le occhiaie, a lezione si appisolava sulla lavagnetta, e il maestro Ignacy a volte doveva svegliarlo. # pokaz: antek # dalej
-> antek_prosi


= antek_prosi
# tlo: przerwa_sniezki
{ obrona_antka:
- stanal:
    Durante la ricreazione, mentre gli altri si tiravano palle di neve davanti alla chiesetta, Antek si avvicinò a Jaromir da solo. Dal giorno in cui l’amico aveva preso le sue difese, non aveva segreti per lui.
- poskarzyl:
    Durante la ricreazione, mentre gli altri si tiravano palle di neve davanti alla chiesetta, Antek girò a lungo intorno a Jaromir prima di parlare. Forse ricordava che era stato Jaromir, quella volta, a correre dal maestro Ignacy, o forse semplicemente non aveva più nessun altro da cui andare.
- else:
    Durante la ricreazione, mentre gli altri si tiravano palle di neve davanti alla chiesetta, Hanka portò Antek da Jaromir quasi a forza. Antek non rivolgeva la parola a Jaromir dal giorno in cui Bartek gli aveva fracassato la lavagnetta, e anche adesso guardava da un’altra parte. # pokaz: hanka
}
– Qualcosa viene da Zosia – disse piano. – Dopo mezzanotte. Prima si fa freddo, e poi nella stanza qualcosa fruscia, come foglie secche. Una volta ho aperto gli occhi e sopra la culla ho visto una cosa chiara, alta… e dei capelli, neri, fino al pavimento. Non ho più guardato. – Deglutì. – E Zosia allora non piange. Fischia soltanto, come se non riuscisse a prendere fiato. La mattina è bianca come il muro e non vuole mangiare.
Parlava in fretta, mangiandosi le parole, e a ogni momento si guardava alle spalle. La palla di neve che per tutto il tempo aveva modellato con le mani gli si sbriciolò fra le dita.
– L’hai detto a tua madre?
– Dice che lo sogno. Che sono stanco. – Antek abbassò gli occhi. – Ma io non dormo. Io lo sento ogni notte.
A Jaromir tornarono in mente i racconti del venerdì del maestro Ignacy e si sentì gelare, benché il sole si riflettesse sulla neve così abbagliante da far male agli occhi.
– Verrò la Vigilia di Natale – promise. – Quando tutti dormiranno. Ma prima devo scoprire come scacciarla.
# pytanie: A chi chiederà consiglio Jaromir?
*   [Chiedere a Hanka – conosce i rimedi della nonna per ogni cosa.]
    ~ rada_jaromira = hanka
    Hanka lo ascoltò aggrottando la fronte, e rimase a lungo in silenzio. # pokaz: hanka
    – La nonna diceva che è la Signora della Mezzanotte – disse infine. – Una mamma morta, che non ha fatto in tempo a cullare il suo piccino, e allora va da quelli degli altri. Ha paura del ferro. Bisogna infilare sotto il cuscino un coltello o almeno un chiodo. – Esitò. – Solo che la nonna dice che bisogna farlo quando lei si sta già chinando, se no non si avvicina. E mia madre dice che la nonna confonde tutto. # dalej
    -> wigilia
*   { ekwipunek ? ksiega } [Consultare il libro del maestro Ignacy.]
    ~ rada_jaromira = ksiega_rada
    # tlo: izba_noc
    Quella notte, alla luce delle braci, cercò nel libro la pagina giusta. «La Signora della Mezzanotte – scriveva il maestro Ignacy con la sua grafia inclinata – visita i neonati dopo mezzanotte, si china su di loro e succhia via il sonno e le forze. Teme il ferro, che va posto sotto il cuscino del bambino. I vecchi dicono anche che, se si sparge attorno alla culla una manciata di semi di papavero, la Signora della Mezzanotte deve contare ogni granello prima di avvicinarsi – e sa contare soltanto fino all’alba». # pokaz: ksiega
    ~ czytal_po_zmroku = true
    Jaromir lesse l’ultima frase tre volte. Poi fino all’alba pensò alla voce che nella nebbia sotto il bosco contava qualcosa che non si vedeva.
    Al mattino, quando aprì il libro alla finestra, sulla pagina della Signora della Mezzanotte trovò un lungo capello nero. La sera prima non c’era. # dalej
    -> wigilia
*   [Chiedere al padre.]
    ~ rada_jaromira = ojciec
    # tlo: izba_noc
    { figurka_u_staruchy:
        Il padre impallidì quando sentì che cosa chiedeva il figlio. Si alzò da tavola, uscì nell’andito e per molto tempo non tornò. Quando finalmente ricomparve sulla porta, disse soltanto: – Il ferro. Sotto il cuscino. E con nessuno una parola, hai capito? # pokaz: ojciec # dalej
    - else:
        Il padre rise e gli arruffò i capelli. – Tuo nonno Maciek diceva che contro ogni licho la cosa migliore è un ferro sotto il cuscino – disse. – Ma sono favole, figliolo. La piccola ha le coliche e basta. – Eppure quella notte Jaromir vide il padre infilargli sotto il pagliericcio un vecchio chiodo. # pokaz: ojciec # dalej
    }
    -> wigilia

= wigilia
# tlo: wigilia
~ zapiski += polnocnica_1
{ ekwipunek ? ksiega:
    ~ ksiega_zatrzymana = true
    L’ultimo giorno prima delle feste Jaromir portò a scuola il libro, avvolto in un fazzoletto di lino. Il maestro Ignacy lo prese, lo soppesò fra le mani e glielo restituì. – Tienilo tu – disse. – Qualcosa mi dice che a te servirà più che a me. Solo ricorda: non dopo il tramonto.{ czytal_po_zmroku: – Jaromir abbassò gli occhi. Il maestro lo osservò un momento più a lungo del necessario, ma non gli domandò nulla.}
- else:
    L’ultimo giorno prima delle feste il maestro Ignacy distribuì ai bambini un pezzo di panpepato ciascuno e augurò a tutti buone feste. Intanto guardava Jaromir più a lungo degli altri, come se volesse chiedergli qualcosa, ma alla fine si limitò a fargli un cenno col capo.
}
Dal mattino la casa odorava di funghi, di cavolo e di papavero. La madre ne pestava i semi nel mortaio di coccio, finché il pestello di legno cantava contro le pareti d’argilla; il padre portò dal fienile un covone di segale e lo mise nell’angolo, e sotto la tovaglia infilò una manciata di fieno. Alla panca c’era un coperto in più – per il viandante, se avesse bussato, e per quelli che se n’erano andati e quella notte potevano tornare. Da mezzogiorno Jaromir spiava dalla finestra la prima stella. Si accese sopra il bosco, minuscola e fredda. # pokaz: gwiazdka
Avevano appena spezzato insieme la cialda di Natale, quando qualcuno bussò alla porta.
Sulla soglia c’era un vecchio mendicante – curvo, in stracci legati con lo spago, con una bisaccia a tracolla e una ghironda sulla schiena. La barba gli si era gelata in ghiaccioli, e aveva gli occhi pallidi come il latte, come se da tempo non ci vedesse più nulla. # pokaz: dziad
– Sia lodato Gesù Cristo – gracchiò. – Accogliete un vecchio a cena?
{ figurka_u_staruchy:
    Il padre non rispose. Stava con la mano sul chiavistello e guardava ora il forestiero, ora il coperto vuoto, poi si voltò verso il figlio e aspettò che cosa avrebbe detto.
- else:
    – Sempre sia lodato – rispose Dobrosław, ma esitò con la mano sulla maniglia. Lanciò un’occhiata al figlio, che era corso per primo alla porta. – Mio padre diceva che la Vigilia non si caccia nessuno dalla soglia. Tu che ne dici?
}
# pytanie: Il vecchio resterà a cena?
*   [Pregare il padre di farlo entrare.]
    ~ wpuscil_dziada = true
    Il vecchio sedette al coperto vuoto e mangiò poco, ma lentamente e con cura. Poi si tolse dalla schiena la ghironda e cantò un’antica canzone sulle anime che in quell’unica notte tornano alle loro case e si scaldano le mani al fuoco altrui. La madre si asciugava gli occhi col grembiule. # pokaz: lira
    Uscendo, il vecchio si fermò accanto a Jaromir e si chinò su di lui così in basso che al ragazzo arrivò al naso un odore di fumo e di gelo.
    – Hai addosso l’odore della foresta, ragazzo – sussurrò. – Quando verrà dalla piccina, non parlarle. Nemmeno una parola.
    Prima che qualcuno riuscisse a chiedergli che cosa intendesse, era già oltre la soglia. La notte era chiara di neve, eppure nessuno vide da che parte se ne fosse andato. – Meno male che non l’abbiamo cacciato – mormorò la madre, raccogliendo dal tavolo la sua scodella. – Non si sa mai chi è venuto. A volte è l’anima di qualcuno della famiglia che torna travestita, per vedere se ci si ricorda ancora di lei. # pokaz: odszedl # dalej
    -> po_wieczerzy
*   [Non dire nulla – il vecchio gli mette paura.]
    Jaromir abbassò lo sguardo. La porta si chiuse lentamente e scattò il chiavistello. Il vecchio non bussò una seconda volta. # pokaz: rygiel
    Attraverso una fessura dell’imposta il ragazzo vide il forestiero arrancare nella neve – non verso il villaggio, ma dritto verso il bosco. A metà del campo si levò il vento e sollevò dai cumuli un bianco turbine. Quando si posò, non c’era più nessuno. # dalej
    -> po_wieczerzy

= po_wieczerzy
~ zapiski += dziad_1
{ los_psa == oswojony: -> wigilijny_szczeniak | -> noc_w_sniegu }

= wigilijny_szczeniak
# tlo: wigilia_szczeniak
Dopo cena arrivò il vecchio Staś. Si sedette pesantemente sulla panca e aprì la pelliccia di montone, sotto la quale qualcosa si dimenava e guaiva.
– Tuo nonno aveva un cane che un altro così non c’era in tutto il circondario – disse a Jaromir. – {pies_uratowal:L’ha tirato fuori dall’acquitrino per il gabbano, quando qualcosa lo chiamava dall’acqua – me l’ha detto Maciek in persona. }Quando è venuta l’ora del cane, i suoi cuccioli si sono sparsi per il villaggio, e uno è finito da mio padre. Da allora nel nostro cortile è sempre corso qualcuno dei suoi nipoti o pronipoti. – Tirò fuori da sotto la pelliccia un gomitolo di pelo. – E la cagna ha figliato in autunno. Questo è il più coraggioso della cucciolata. Ti spetta.
Il cucciolo aveva orecchie dritte e appuntite, una macchia bianca sul petto e zampe troppo grandi per il resto del corpo. Annusò le dita del ragazzo, starnutì e senza pensarci due volte gli si arrampicò in grembo. # pokaz: pies
{ figurka_u_staruchy:
    Nonna Marianna tese verso il cucciolo una mano tremante e per molto tempo non riuscì a trovare la voce.
}
# pytanie: Come lo chiamerà Jaromir?
*   [Grigio.]
    ~ imie_psa = "Grigio"
*   [Zampone.]
    ~ imie_psa = "Zampone"
*   [Tuono.]
    ~ imie_psa = "Tuono"
-   ~ ekwipunek += szczeniak
    – {imie_psa} – ripeté Staś, e annuì. – Buon nome. Maciek sarebbe stato contento.
    Poi il cucciolo dormì ai piedi del giaciglio di Jaromir e ogni tanto ringhiava nel sonno verso la finestra. # dalej
    -> noc_w_sniegu

= noc_w_sniegu
# tlo: noc_snieg
Alla messa di mezzanotte a Bukowiec quell’anno non andò nessuno – il gelo era troppo crudo, e il sentiero sulla cresta era sepolto dalla neve fino alle ginocchia. Tutti si coricarono presto.
{ rada_jaromira == ksiega_rada:
    ~ ekwipunek += mak
}
Jaromir rimase immobile finché dalla stanza non giunse il russare regolare del padre. Poi si vestì al buio, si infilò sotto la camicia il coltellino{ ekwipunek ? mak:, e in tasca uno straccetto coi semi di papavero che la sera aveva sottratto dalla ciotola, ricordando ciò che aveva letto nel libro del maestro Ignacy,} e sgusciò nell’andito.{ ekwipunek ? szczeniak: Il cucciolo alzò il muso, ma non guaì, come se capisse che ora bisognava stare zitti.}
Il mondo era argentato di luna. La neve scintillava sui campi, ogni ramo gettava un’ombra nera e netta, e il freddo pungeva le guance tanto da far lacrimare gli occhi. { figurka_u_staruchy: Fino al cortile di quelli di Staś c’erano appena poche decine di passi, ma il sentiero tagliava attraverso il campo, sul quale strisciava bassa una nebbia, benché il cielo fosse sereno, e la linea scura del bosco sembrava di notte più vicina che di giorno. | Fino alla casa di quelli di Staś non era lontano, ma il sentiero correva lungo il margine del bosco, e il bosco a quell’ora stava sordo e immobile. }
A metà strada qualcuno lo chiamò.
– Jaromir!
La voce veniva {figurka_u_staruchy:dalla nebbia sopra il campo|da in mezzo agli alberi}. Calda, dolce, familiare – la voce di sua madre.
– Figliolo, vieni da me. Ho freddo. Mi sono persa.
Jaromir rimase di sasso. Sua madre dormiva a casa, coperta dal piumino fino al mento. L’aveva vista quando era uscito.
# pytanie: Che cosa farà Jaromir?
*   [Rispondere.]
    ~ glos_w_lesie = odpowiedzial
    – Mamma? – gli sfuggì, prima che potesse pensarci.
    { zawolal_do_lasu:
        {figurka_u_staruchy:Nella nebbia|Fra gli alberi} qualcosa rise – basso, piano, per niente con la voce della madre. Poi la stessa voce calma che aveva sentito in autunno sotto il bosco disse: – Di nuovo tu. Ti conterò, quando sarà il momento. # pokaz: oczy
    - else:
        {figurka_u_staruchy:Nella nebbia|Fra gli alberi} qualcosa rise – basso, piano, per niente con la voce della madre. Poi, da qualche parte nel profondo, qualcuno cominciò a contare tranquillamente: – …cinquecentouno… cinquecentodue… # pokaz: oczy
    }
    Jaromir si mise a correre e non si fermò fino alla finestra di quelli di Staś. # pokaz: bieg # dalej
    -> kolyska
*   [Rivoltare la pelliccia alla rovescia, come diceva il maestro Ignacy.]
    ~ glos_w_lesie = kozuch
    Con le dita tremanti sciolse la cintura, si tolse la pelliccia e se la rimise, col vello all’esterno. Appena ebbe finito, la voce tacque.
    Per un momento ci fu silenzio. Poi risuonarono dei passi – pesanti, lenti, così lunghi come se li muovesse qualcuno altissimo. Quel qualcuno passò proprio accanto. Jaromir sentì sul viso il suo fiato freddo, che sapeva di resina e di marcio, ma l’altro non lo notò. # pokaz: kroki
    – Dove sei? – giunse ormai da lontano, col tono di un bambino deluso a cui qualcuno ha nascosto un giocattolo. # dalej
    -> kolyska
*   [Mettersi a correre.]
    ~ glos_w_lesie = ucieczka
    Corse a più non posso. La neve gli entrava nei gambali degli stivali. Due volte cadde e due volte si rialzò di scatto, e la voce della madre lo inseguiva nel buio, sempre più vicina e sempre più lamentosa. Tacque solo quando il ragazzo raggiunse lo steccato di quelli di Staś. Ansimava tanto che il petto gli doleva come trafitto da un coltello. # pokaz: bieg # dalej
    -> kolyska

= kolyska
# tlo: kolyska
Antek aspettava alla finestra e la aprì prima che Jaromir facesse in tempo a bussare. Nella stanza era caldo e buio. Sulla stufa russava il padre di Antek, nell’angolo dormiva Franek, e la madre, sfinita da tante notti insonni, si era addormentata sullo sgabello con la testa appoggiata alla culla. Zosia respirava in fretta, a fiato corto.
Si sedettero sul pavimento contro il muro, da dove potevano tenere d’occhio tutto. La luna entrava nella stanza in una striscia d’argento. Per molto tempo non accadde nulla. Passò la mezzanotte, a Jaromir si chiudevano le palpebre, e Antek gli si appisolò due volte sulla spalla.
Finché non si fece freddo.
La striscia di luce si offuscò, come se qualcuno avesse coperto la finestra. Sul pavimento cominciò a strisciare una nebbia, e da essa sorse una figura – alta, in un sudario sfrangiato in fondo, con capelli neri che scendevano fino a terra. Fluttuava sopra le assi, senza toccarle coi piedi. Aveva il volto scarno come un teschio, gli occhi grandi e rotondi, e nella bocca socchiusa luccicavano denti piccoli e aguzzi. Si chinò su Zosia e protese verso il basso dita come stecchi, terminanti in artigli. # pokaz: polnocnica
La piccola cominciò a fischiare.
Antek piantò le unghie nel braccio di Jaromir così forte che per poco lui non gridò.
# pytanie: Che cosa farà Jaromir?
*   [Infilare il coltellino sotto il cuscino della culla.]
    ~ polnocnica = przegnana_nozem
    ~ ekwipunek -= nozyk
    Jaromir strisciò carponi fino alla culla. La Signora della Mezzanotte voltò la testa verso di lui – aveva occhi come due pozzi neri con un punto chiaro sul fondo – e sibilò. Il ragazzo inghiottì la paura, infilò la mano sotto il cuscino proprio sotto i suoi artigli e vi lasciò il coltellino.
    La Signora della Mezzanotte sussultò, come se avesse toccato un ferro rovente. Spalancò la bocca senza un suono, si sollevò fino al soffitto e rimase sospesa lassù, con gli occhi fissi su loro due, mentre i capelli le ondeggiavano come alghe nella corrente. # pokaz: odlot, noz
    Rimase così fino al primo canto del gallo. Quando dalla stalla giunse il chicchirichì, era già scomparsa. # pokaz: kogut
    Verso il mattino Jaromir allungò la mano verso il coltellino, ma ci ripensò.
    – Che resti a Zosia – sussurrò ad Antek. – Non si sa mai. # dalej
    -> boze_narodzenie
*   { ekwipunek ? mak } [Spargere i semi di papavero intorno alla culla.]
    ~ polnocnica = policzyla_mak
    ~ ekwipunek -= mak
    Jaromir tirò fuori dalla tasca lo straccetto e con mano tremante sparse i semi tutt’intorno alla culla. I granelli ticchettarono sul pavimento come una pioggia sottile.
    La Signora della Mezzanotte si irrigidì. Lentamente, molto lentamente, scese più in basso, finché il suo sudario non si allargò sulle assi come nebbia. Si fermò sospesa sopra il granello più vicino e lo toccò con un artiglio. # pokaz: odlot, mak
    – Uno – bisbigliò con una voce come un fruscio di foglie secche. – Due… tre…
    Contò tutta la notte. I ragazzi sedevano contro il muro, senza osare muoversi, e lei scivolava per la stanza, granello dopo granello, e bisbigliava sempre più in fretta, sempre più rabbiosa. Era arrivata a qualche migliaio, quando nella stalla cantò il gallo. Allora lanciò un urlo così acuto che a Jaromir fischiarono le orecchie – e sparì. Nessuno, a parte loro due, sentì quell’urlo. # pokaz: kogut # dalej
    -> boze_narodzenie
*   [Gridare e svegliare i grandi.]
    ~ polnocnica = uslyszala_krzyk
    – Aiuto! – urlò Jaromir{ wpuscil_dziada:, anche se subito si ricordò di ciò che il vecchio gli aveva sussurrato andandosene}.
    La Signora della Mezzanotte si voltò verso di lui. Per un istante lo guardò dritto negli occhi, poi si dissolse nel buio come fumo. La madre di Antek balzò in piedi gridando, il padre cadde dalla stufa, qualcuno accese una teda. Nella culla non c’era nulla tranne Zosia, pallida, che respirava appena. # pokaz: odlot, krzyk
    All’alba Jaromir fu riaccompagnato a casa, dove le buscò di santa ragione. La Signora della Mezzanotte invece tornò ancora per le notti seguenti. # pokaz: kogut # dalej
    -> boze_narodzenie

= boze_narodzenie
~ zapiski += polnocnica_2
// Mak był potrzebny tylko na tę jedną noc.
~ ekwipunek -= mak
# tlo: koledy
{ polnocnica:
- przegnana_nozem:
    Al mattino Zosia dormiva tranquilla, rosea come una mela, e per la prima volta da settimane mangiò con tanta avidità che la madre scoppiò a piangere di gioia. Nessuno dei grandi sapeva come fosse finito nella culla il coltellino. La madre lo osservò, si fece il segno della croce e lo rimise sotto il cuscino.
- policzyla_mak:
    Al mattino Zosia dormiva tranquilla, rosea come una mela, e per la prima volta da settimane mangiò con tanta avidità che la madre scoppiò a piangere di gioia. Dei semi di papavero non c’era traccia – nemmeno un granello, benché i ragazzi avessero frugato in ogni fessura del pavimento.
- else:
    Zosia si indeboliva di giorno in giorno. Solo all’Epifania il vecchio Staś, che aveva ascoltato il nipote senza ridere, mise sotto la culla un falcetto arrugginito. La piccola sopravvisse, ma rimase per sempre gracile e pallida, e sulla fronte le restò una piccola macchia grigia, come lasciata dal tocco di un dito sporco.
}
{ polnocnica == uslyszala_krzyk:
    Antek non serbava rancore a Jaromir. Diceva che almeno qualcuno gli aveva creduto – ed era più di quanto potesse dire dei grandi.
- else:
    Da quella notte Antek non restava più indietro. Ora andava a scuola accanto a Jaromir, e quando qualcuno gli chiedeva perché gli stesse così attaccato, si limitava a scrollare le spalle e a sorridere fra sé.
}
Arrivarono le feste. I cantori di Natale andavano di casa in casa con una stella di carta che girava in cima a un bastone, e il turoń cornuto faceva schioccare le sue fauci di legno finché le ragazze strillavano. Per la corsa sul lago ghiacciato Staś attaccò due cavalli; la slitta filava così veloce che il vento fischiava nelle orecchie, i sonagli tintinnavano e da sotto i pattini schizzava la neve. Jaromir rideva con gli altri, ma di notte, prima di addormentarsi, tendeva l’orecchio al silenzio oltre la finestra. # pokaz: kulig
Quando raccontò tutto a Hanka, la bambina si fece seria e per un bel po’ non disse niente. # pokaz: hanka
– La nonna dice che la Signora della Mezzanotte non viene mai da sé – disse infine. – Qualcuno deve indicarle la strada. # dalej
-> rozdzial_trzeci_ciag_dalszy


// Koniec rozdziału trzeciego – dalej rozdział czwarty.
=== rozdzial_trzeci_ciag_dalszy ===
# ozdobnik
_Fine del capitolo terzo._ # dalej
-> rozdzial_czwarty
