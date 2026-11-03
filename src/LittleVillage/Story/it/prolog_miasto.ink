// ------------------------------------------------------------
//  Prolog, część druga – miasto, rodzina, powrót do Zapadliny
//  i zakończenie prologu (zależy od tego, komu Maciek sprzedał figurkę).
// ------------------------------------------------------------

=== miasto ===
# tlo: gosciniec
# rozdzial: Prologo
# tytul: La città
La strada maestra si snodava tra campi e boschetti, ora in salita, ora in discesa. Lo superavano i carri dei contadini che portavano il grano al mercato, e a un certo punto gli passò accanto un calesse, dal quale qualcuno gli gridò di togliersi di mezzo.{ los_psa == oswojony: Il cane gli stava attaccato alle gambe e ringhiava a ogni cigolio di ruote.} Il sole era già alto quando da dietro un poggio spuntò il campanile di una chiesa e, sotto di esso, i tetti della città – rossi, grigi e coperti di muschio, stretti l’uno all’altro come chicchi in una spiga. # dalej
-> rynek

= rynek
# tlo: rynek
La piazza del mercato ronzava come un alveare. Tra le bancarelle si facevano largo contadini in gabbani di panno grosso, le rivendugliole vantavano uova e burro, e da sotto il municipio giungeva il belare delle capre. C’era odore di pane, di letame di cavallo e di pesce affumicato.{ ekwipunek ? figurka: Maciek tastò nella tasca la figura di legno. Prima bisognava venderla – solo dopo avrebbe potuto pensare al cibo.}
{ ekwipunek ? figurka: -> kramarze | -> zakupy }

= kramarze
Il primo fu un merciaio di immaginette sacre e rosari. Esaminò a lungo la statuina controluce, poi alla fine storse la bocca e la restituì in fretta, come se scottasse.
– Questo non è nessun santo – borbottò, facendosi il segno della croce di nascosto. – Sotto il mio tetto non lo prendo.
L’intagliatore di cucchiai e scodelle non volle nemmeno toccarla. Sentenziò che il legno era marcio, bruciacchiato e non serviva a niente, se non ad accendere il fuoco.
Soltanto il rigattiere, con un carretto pieno di pentole e di scarpe sfondate, se la rigirò più a lungo tra le dita.
– Due groszy – disse infine. – Di più non te ne darà nessuno.
Tanto costava una pagnotta. Una sola. Maciek promise che ci avrebbe pensato e si avviò verso la parte più povera del mercato, dove invece delle bancarelle c’erano teli stesi per terra, con cipolle, stracci e ferraglia arrugginita. # dalej
-> starucha

= starucha
# tlo: zaulek
All’improvviso qualcuno lo trattenne per la manica. La mano era piccola e secca, e sapeva di menta e di fumo.
Davanti a lui stava una vecchina minuta, con un cappuccio scuro, appoggiata a un bastone, con un cesto di erbe secche al braccio. Il mantello era rattoppato ma pulito, e sotto il cappuccio biancheggiava l’orlo di una cuffia. Un occhio era velato di bianco, l’altro – nero e acuto – fissava dritto la sua tasca. # pokaz: starucha
– Che cosa porti lì dentro, figliolo? – sussurrò. – Sento odore di cenere. Cenere vecchia, venuta dall’acqua.
{ los_psa == oswojony:
    Il cane le annusò il cesto, starnutì per le erbe, poi drizzò il pelo e ringhiò basso – non contro di lei, ma contro la tasca di Maciek. # pokaz: pies
}
Maciek voleva andarsene, ma lei non gli lasciava la manica.
– Non è tua. L’hai dissotterrata dove non si doveva scavare – diceva piano, perché nessuno lì vicino sentisse. – Quella cosa chiama, figliolo. Finché la porti con te, ciò che abita nell’acqua sa dove cercarti. Te e quelli che ami. Non bruciarla e non gettarla in acqua, perché ritornerebbe. Qualcuno deve sapere che cosa farne – e io lo so.
Solo allora lo lasciò andare.
– Te la prendo io. Ma non per niente, perché ciò che si dà per niente torna a chi l’ha dato. Ti do dieci groszy. Cinque volte quanto voleva darti l’uomo del carretto.
Doveva essere stata lì vicino mentre lui contrattava con il rigattiere. Solo che non ricordava di averla vista.
# pytanie: A chi venderà Maciek la statuina?
*   [Venderla alla vecchina – se ne intende di queste cose, e con dieci groszy la famiglia tirerà avanti fino al primo raccolto.]
    ~ figurka_u_staruchy = true
    ~ ekwipunek -= figurka
    # tlo: rynek
    Maciek tirò fuori la statuina e la posò sul palmo teso. La vecchia non l’afferrò subito. Prima la avvolse in una pezzuola di lino e solo così, attraverso la stoffa, la prese in mano. Le monete le cavò da un fagottino annodato alla cintura.
    – Adesso è affar mio – disse. – Va’ con Dio, figliolo. E non voltarti a cercarla.
    Si girò e sparì tra la folla prima che lui riuscisse a rispondere qualcosa.{ los_psa == oswojony: Il cane smise di ringhiare non appena la tasca si fece leggera.}
    -> zakupy
*   [Darla al rigattiere per pochi spiccioli – meglio che finisca tra le pentole, da qualcuno che non sa che cosa sia.]
    ~ ekwipunek -= figurka
    # tlo: rynek
    – Grazie, buona donna, ma non serve – rispose Maciek, e fece un passo indietro.
    La vecchia lo guardò a lungo con l’occhio sano. – Come vuoi tu – disse soltanto, e tornò alle sue erbe.
    Il rigattiere alzò le spalle, buttò la statuina tra le pentole e contò due groszy. – Te l’avevo detto che di più non te ne dava nessuno.{ los_psa == oswojony: Il cane smise di ringhiare solo quando la statuina scomparve sotto un mucchio di cocci.}
    -> zakupy

= zakupy
~ ekwipunek += (zapasy, nasiona)
{
- figurka_u_staruchy: Con le monete della vecchia e il resto dei suoi spiccioli di rame Maciek comprò due pagnotte, un sacco d’orzo, sale, un pezzo di lardo, semi di ortaggi e perfino un cesto di patate da semina. Il fagotto gli schiacciava la schiena, ma era il peso più piacevole che avesse portato da tanto tempo.
- przeszukal_zgliszcza && not figurka_w_bagnie: Con gli ultimi spiccioli di rame e i due groszy del rigattiere Maciek comprò una pagnotta, una manciata di sale, un sacchetto d’orzo e un po’ di semi di ortaggi. Non era molto, ma per qualche giorno si poteva campare.
- else: Con gli ultimi spiccioli di rame – quel che gli era avanzato dopo l’ascia – Maciek comprò una pagnotta, una manciata di sale, un sacchetto d’orzo e semi di ortaggi di ogni sorta.
}
Era primavera, e con la semina bisognava sbrigarsi.
Accanto al pozzo cittadino mangiò la prima fetta di pane dopo settimane. Era morbida e ancora tiepida. Dovette trattenersi per non divorare tutto in una volta.{ los_psa == oswojony: La seconda la diede al cane.}
Poi si incamminò fuori città, verso la fattoria padronale dove per quattro anni aveva lavorato il campo di un altro e dove lo aspettavano la moglie e il figlioletto. # dalej
-> rodzina


// ------------------------------------------------------------
//  Rodzina – spotkanie z żoną i synem w Czworakach.
// ------------------------------------------------------------
=== rodzina ===
# tlo: czworaki
# rozdzial: Prologo
# tytul: La famiglia
Arrivò al casale dei braccianti quando il sole già declinava verso ponente. Il lungo edificio basso dal comignolo storto era tale e quale al giorno in cui se n’era andato. Davanti alla soglia un bambino di pochi anni tracciava segni nella sabbia con un bastoncino. Alzò la testa, guardò quell’uomo sconosciuto e smagrito – e per un attimo non lo riconobbe. # pokaz: dziecko
– Dobrosław – disse piano Maciek.
Il piccolo balzò in piedi e corse dentro gridando. Quasi subito sulla porta comparve Marianna. Si stava asciugando le mani nel grembiule – e restò impietrita quando vide il marito. # pokaz: marianna
Un istante dopo gli si gettò al collo con tanto impeto che lui vacillò. Gli piangeva sulla spalla, e lui le accarezzava i capelli senza riuscire a spiccicare parola. Dobrosław gli si era aggrappato a una gamba e non voleva lasciarla.
– Gesù, Maciek – sussurrò lei infine, scostandosi per guardarlo meglio. Gli sfiorò le guance incavate, le clavicole sporgenti. – Sei la metà di quando sei partito. Che cosa mangiavi laggiù? La corteccia degli alberi?
Lui rise, anche se aveva le lacrime agli occhi.
{ los_psa == oswojony:
    Il cane se ne stava in disparte, incerto, finché Dobrosław non gli tese la mano. Poco dopo si lasciava grattare dietro l’orecchio, e il piccolo strillava di gioia. # pokaz: pies
}
La sera, davanti a una scodella di pappa d’orzo, Maciek raccontava. Della capanna – delle pareti di tronchi che aveva squadrato da sé, del tetto di canne, della soglia su cui si sedeva dopo il lavoro. Della terra, che ne avrebbero avuta quanta fossero riusciti a coltivarne.
– Domani all’alba partiamo – annunciò. – Ricominceremo tutto da capo. Su terra nostra.
Marianna ascoltava, sorridendo tra sé. Ma quando il figlio si addormentò, gli si fece più vicina e lo guardò in viso.
– E adesso dimmi la verità. Che cosa è successo laggiù? Lo vedo bene che qualcosa ti rode.
# pytanie: Maciek racconterà alla moglie di quella notte?
*   [Sì – raccontarle della creatura, della leggenda e della voce dagli acquitrini. Deve sapere dove sta andando.]
    ~ zona_wie = true
    Non tacque nulla. Dell’ululato nella boscaglia, del silenzio che l’aveva svegliato, della figura uscita dalla nebbia. Dell’erborista bruciata viva e della sua maledizione. Dell’acquitrino che lo aveva chiamato con la voce di Marianna.{ figurka_u_staruchy: Della statuina bruciacchiata trovata sotto la cenere, che quel giorno aveva venduto al mercato alla vecchina col cappuccio.}
    Marianna ascoltava in silenzio, più pallida a ogni frase. Quando lui ebbe finito, rimase a lungo a fissare la finestra buia.
    – Torneremo laggiù? – chiese infine, a bassa voce.
    – Torneremo. È casa nostra.
    Lei annuì. Non disse altro, ma quella notte non chiuse occhio – lui lo capiva dal suo respiro. # dalej
    -> powrot
*   [No – cavarsela con poche parole. Perché spaventarla, se la capanna sta in piedi e quel che è stato è passato.]
    – Non è successo niente – mentì. – Lavoro duro e poco da mangiare. Tutto qui.
    Marianna lo guardò ancora per un po’, come se aspettasse il resto. Poi sospirò e gli posò la testa sulla spalla.
    Quella notte lui stentò a lungo a prendere sonno. Pensò che un giorno gliel’avrebbe detto. Un giorno, quando tutto si fosse sistemato. # dalej
    -> powrot


// ------------------------------------------------------------
//  Powrót do Zapadliny z rodziną.
// ------------------------------------------------------------
=== powrot ===
# tlo: sciezka_rodzina
# rozdzial: Prologo
# tytul: Il ritorno
Partirono all’alba. Marianna portava un fagottino con le loro poche cose, Maciek il fagotto con le provviste e, quando il piccolo si stancava di camminare, anche lui, a cavalcioni sulle spalle.
{ los_psa == oswojony:
    Il cane correva dall’uno all’altro, come per badare che nessuno restasse indietro. # pokaz: pies
}
Il pomeriggio era già inoltrato quando si fermarono sulla Cresta dei Faggi. Giù in basso si stendeva Zapadlina.{ chcial_odejsc: In quello stesso punto, pochi giorni prima, Maciek era stato lì col fagotto in spalla, deciso ad andarsene per sempre. Ora sulla sua schiena dormiva il figlio.}
Lassù Maciek sostò e guardò la moglie.
– Adesso sta’ attenta – disse. – Cammina subito dietro di me, passo dopo passo. Non lasciare il sentiero, qualunque cosa accada. Non guardare nell’acqua nera. E non ascoltare le voci che vengono dagli acquitrini. Qualunque cosa tu senta – non rispondere e non voltarti.
{ zona_wie: Marianna {chcial_odejsc:posò la mano sulla schiena del figlio addormentato|prese il figlio per mano} e annuì. Sapeva di che cosa parlava. | Marianna inarcò le sopracciglia, come se le venisse da ridere, ma qualcosa nel viso di lui la trattenne. Annuì senza una parola. }
Avanzavano lenti, in fila indiana. La nebbia strisciava bassa sugli stagni, e da qualche parte lontano, tra i giunchi, qualcosa sciabordava piano. A metà strada gli giunse da dietro il respiro di Marianna, trattenuto di colpo. Non si voltò. Solo quando furono sulla terra asciutta le chiese che cosa avesse sentito.
– Niente – rispose lei in fretta. Troppo in fretta. # dalej
-> nowy_dom

= nowy_dom
{ chata_macka:
    - przy_lesie: # tlo: chata_las
    - przy_mokradlach: # tlo: chata_mokradla
    - else: # tlo: chata_jezioro
}
La capanna era là dove Maciek l’aveva lasciata. {chata_macka == przy_lesie:Al limitare della foresta, all’ombra degli abeti,}{chata_macka == przy_mokradlach:Sul prato vicino alle paludi, sulle fondamenta di pietra,}{chata_macka == nad_jeziorem:Sulla riva del lago, tra i canneti che frusciavano,} con il tetto che lui stesso aveva steso, fascio dopo fascio. # pokaz: dach
Marianna si fermò davanti alla soglia e a lungo non disse nulla. Poi entrò, passò la mano sulla parete, annusò la resina e si illuminò come un bambino piccolo quando vede il volto di suo padre o di sua madre. # pokaz: rodzina
– Nostra – disse. – Davvero nostra.
Dobrosław scoprì subito in un angolo della stanza delle assi smosse. Maciek le spostò e gli mostrò una buca scavata nella terra – abbastanza profonda da tenere al fresco patate e orzo.
– La cantinetta – annunciò fiero. – Per le provviste. Solo, non ci entrare senza chiedere.
Il piccolo, naturalmente, ci saltò dentro all’istante e si rannicchiò in modo che non lo si vedesse più. Risero tutti e tre.
{ ekwipunek ? krzesiwo: Quella sera, davanti alla capanna nuova, si accese un fuoco | Quella sera cenarono sulla soglia della capanna nuova } e Maciek pensò che era valsa la pena di passare per tutto questo. # dalej
{ figurka_u_staruchy: -> czary | -> lata_spokoju }


// ------------------------------------------------------------
//  Zakończenie A – figurka u staruchy: czary i nocny napad.
// ------------------------------------------------------------
=== czary ===
# tlo: czary
# rozdzial: Prologo
# tytul: Una candela
Quella stessa notte, lontano da lì, in una stanzetta angusta dietro la piazza del mercato, ardeva una sola candela.
La vecchia si tolse il cappuccio. Radi capelli grigi le ricaddero sulla schiena. Sul tavolo, davanti a lei, c’era una scodella d’acqua nera e torbida e, accanto – la statuina bruciacchiata, liberata dalla pezzuola di lino.
La donna si punse un dito con un ago e lasciò cadere tre gocce di sangue sul legno. Poi immerse la statuina nella scodella e cominciò a mormorare – basso, monotono, in una lingua che in città nessuno avrebbe capito. La fiamma della candela si abbassò e si piegò, benché nella stanza non ci fosse corrente.
– Ho atteso a lungo, madre – sussurrò. – Ma alla fine qualcuno è venuto. E mi ti ha portata da sé.
L’acqua gorgogliò, come se qualcuno vi avesse preso fiato nel profondo. Dal mormorio affiorarono parole, pronunciate sempre più forte:
– Le ossa dei vostri figli saranno spezzate, e il loro sangue bevuto…
La vecchia si chinò ancora di più sulla scodella. – Va’. Conosci la strada. La capanna {chata_macka == przy_lesie:sotto la foresta}{chata_macka == przy_mokradlach:presso le paludi}{chata_macka == nad_jeziorem:sul lago}. Un uomo, una donna e un bambino. # dalej
-> noc

= noc
# tlo: noc_atak
Passarono alcuni giorni. Maciek vangava le aiuole per le patate, Marianna modellava con l’argilla una stufa, e Dobrosław {los_psa == oswojony:correva col cane per il prato|coglieva botton d’oro sul prato}. La sera sedevano insieme sulla soglia e guardavano la nebbia riversarsi nella valle.
{ los_psa == oswojony: Una notte li svegliò il cane. Stava presso la porta col pelo ritto sulla schiena e ringhiava così basso che lo si sentiva appena. Poi cominciò ad abbaiare – forte, rabbioso, senza sosta. | Una notte li svegliò un fragore. Qualcosa colpì la porta con tale forza che i cardini gemettero, e continuò a picchiare finché il legno si spaccò con uno schianto. }
Maciek balzò giù dal giaciglio. Attraverso una fessura della porta vide nella nebbia due occhi che ardevano come braci. # pokaz: slepia
Non pensò. Prese in braccio Dobrosław, spostò le assi nell’angolo e lo calò nella cantinetta.
– Stai zitto – sussurrò. – Qualunque cosa succeda, non uscire. Hai capito? Non uscire finché non viene giorno.
Rimise le assi sopra la sua testa. # dalej
{ los_psa == oswojony: -> walka | -> rzez }

= walka
# tlo: walka
La porta crollò all’interno insieme allo stipite. La creatura dovette chinarsi per passare sotto l’architrave – enorme, fradicia, puzzolente d’acquitrino. L’acqua le colava addosso a rivoli sul pavimento di terra battuta. # pokaz: stwor
Il cane le si avventò contro per primo. Le piantò i denti nell’avambraccio e restò appeso, strattonando, finché il mostro non lo scagliò contro il muro. Guaì e cadde. # pokaz: pies
Maciek si piantò davanti a Marianna con l’ascia alzata. # pokaz: maciek
– Mettiti dietro di me!
La bestia allungò gli artigli verso di lui. Gli squarciarono la spalla e il fianco, ma lui non arretrò. Menò un colpo con tutte le forze e la lama affondò nel braccio ossuto. La creatura ululò – con lo stesso lamento lungo e gutturale di quella notte presso il riparo. Maciek colpì ancora. E ancora.
Il mostro indietreggiò, rovesciando la panca, e con un ruggito fuggì nella nebbia. Per un momento si sentì qualcosa di pesante farsi strada tra i cespugli, poi uno sciacquio – sempre più lontano, verso l’acquitrino.
L’ascia scivolò dalle mani di Maciek. Cadde in ginocchio, poi su un fianco. Sotto di lui si allargava una pozza scura. # pokaz: kaluza
Marianna gli stava inginocchiata accanto e premeva le mani sulle sue ferite, ma il sangue le filtrava tra le dita.
– No, no, no… Non lasciarmi…
– Dobrosław… – sussurrò lui. – Tiralo fuori… solo domattina.
Il cane si trascinò fino a lui, zoppicando, e gli posò il muso sul petto.
Maciek sorrise ancora. Guardò la moglie finché i suoi occhi smisero di vedere alcunché.
Sotto il pavimento, nella cantinetta, Dobrosław si premeva le mani sulle orecchie e non emetteva alcun suono. Come aveva promesso al padre. # dalej
-> sierota

= rzez
# tlo: pod_podloga
La porta si spaccò in due. Nella stanza irruppero il freddo, il puzzo dell’acquitrino e un’ombra gigantesca, che dovette chinarsi per passare sotto l’architrave.
Maciek fece ancora in tempo ad afferrare l’ascia. Marianna si coprì la bocca con la mano.
Dobrosław non vide che cosa accadde dopo. Vedeva soltanto le sottili strisce di luce lunare tra le assi sopra la testa – e le ombre che le attraversavano. Sentì tutto. # pokaz: cien
Sentì il padre gridare alla madre di scappare. Sentì i colpi sordi dell’ascia, uno e poi un altro, e un ululato che faceva tremare la terra. Poi uno schiocco – forte, umido, uguale a quello di allora nella boscaglia, anche se il bambino non poteva saperlo. Il padre smise di gridare.
La madre gridò più a lungo.
Quando tacque anche lei, dalle fessure delle assi cominciò a gocciolare qualcosa di caldo. Goccia dopo goccia, sui suoi capelli e sulle guance. # pokaz: krew
Qualcosa di pesante passò sul pavimento, proprio sopra di lui. Si fermò. Lo sentiva fiutare – a lungo, rauco, come un cane davanti a una tana. Strinse i denti sulla manica per non lasciarsi sfuggire un gemito.
Poi i passi si allontanarono e si dissolsero nella nebbia.
Rimase nella cantinetta fino al mattino. Come aveva promesso al padre. # dalej
-> sierota

// Epilog zakończenia A – chłopca przygarnia Andrzej.
= sierota
# tlo: izba_andrzeja
{ los_psa == oswojony:
    Al mattino passò da loro Andrzej. Trovò Marianna sul pavimento di terra battuta, con la testa del marito in grembo. Non piangeva più. Il cane le giaceva accanto e non lasciava avvicinare nessuno.
    Maciek fu sepolto nel cimitero accanto alla chiesa, in città. La vedova alla capanna non tornò più – andò a vivere col bambino dal contadino del poggio, che li accolse sotto il suo tetto come una famiglia.
- else:
    Al mattino passò da loro Andrzej. La porta della capanna, spaccata in due, giaceva nell’erba. Nella stanza non c’era nessuno – solo una striscia di fango che dalla soglia si allungava verso l’acquitrino, e macchie scure sul pavimento di terra battuta. Rimase a lungo fermo sulla soglia, prima di sentire da sotto le assi un piagnucolio sommesso.
    Il bambino non disse una parola – né quel giorno, né per molti giorni ancora. Andrzej lo prese con sé e lo crebbe insieme a Staś come un figlio suo.
}
Dopo quella notte il villaggio cominciò a erigere nuove edicole votive – lungo le strade, ai crocicchi, al limitare della foresta e presso la passerella sulle paludi – accanto a pochi vecchi pali marciti lungo il bosco, dei quali più nessuno ricordava chi li avesse piantati. Ogni anno se ne aggiungevano altre, finché in tutta Zapadlina non rimase un solo luogo da cui non se ne vedesse almeno una.
Dobrosław crebbe e divenne un uomo taciturno e forte. Non andò mai agli acquitrini e non scese mai in nessuna cantina. Sposò una ragazza del villaggio vicino e presto gli nacque un figlio.
Lo chiamarono Jaromir. # dalej
-> prolog_ciag_dalszy


// ------------------------------------------------------------
//  Zakończenie B – figurka u handlarza albo bez figurki: spokojne lata.
// ------------------------------------------------------------
=== lata_spokoju ===
# tlo: kapliczki
# rozdzial: Prologo
# tytul: Anni di pace
L’annegato non venne. Né quell’anno, né quello dopo.
Maciek e Marianna aravano il campo, che ogni anno si faceva un po’ più grande. Dobrosław cresceva in fretta – prima pascolava le oche, poi andava dietro all’aratro, finché non fu lui stesso a guidare il cavallo.{ los_psa == oswojony: Il cane invecchiò accanto alla soglia e un inverno non si rialzò più. Lo seppellirono ai piedi della foresta.}
A volte, nelle lunghe sere d’inverno, Maciek raccontava al ragazzo della prima primavera a Zapadlina. Dell’ululato nella boscaglia, di ciò che era uscito dalla nebbia presso il riparo, della voce che lo aveva chiamato dagli acquitrini. Dell’erborista bruciata nella capanna sul lago. Il figlio ascoltava con le guance in fiamme, ma le credeva favole – di quelle che si raccontano ai bambini perché non vadano da soli vicino all’acqua.
Quando il figlio fu grande, il villaggio cominciò a erigere nuove edicole votive, accanto a pochi pali marciti lungo il bosco, dei quali più nessuno ricordava chi li avesse piantati. Una presso la strada che scendeva dalla Cresta dei Faggi, un’altra al limitare della foresta, una terza presso la passerella sulle paludi. Poi se ne aggiunsero altre, finché ce ne fu quasi a ogni proda. La gente diceva che da allora le lucine sugli acquitrini ammiccavano più di rado. Dobrosław non ci credeva, ma ogni anno, a maggio, adornava di fiori le edicole insieme agli altri. # pokaz: kapliczki
I genitori di Dobrosław morirono di vecchiaia, l’uno dopo l’altra, nella stessa capanna che Maciek un tempo aveva costruito dal primo tronco. Dobrosław sposò una ragazza del villaggio vicino e presto gli nacque un figlio.
Lo chiamarono Jaromir. # dalej
-> prolog_ciag_dalszy
