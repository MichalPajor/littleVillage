// ------------------------------------------------------------
//  Prolog – Zapadlina, około siedemdziesiąt lat przed główną
//  częścią opowieści. Maciek, dziadek Jaromira, wybiera
//  miejsce na chatę.
// ------------------------------------------------------------

=== prolog ===
# tlo: zapadlina
# rozdzial: Prologo
# tytul: Zapadlina
Zapadlina – un villaggio che sorgeva là dove la terra, stanca di essere pianura, era sprofondata. Per raggiungerlo bisognava sempre scendere da poggi, scarpate e pendii – sia che si venisse dalla strada maestra attraverso la Cresta dei Faggi, sia dal bosco lungo un sentiero battuto. Dalla città si tornava in sei ore, e l’ultimo tratto di strada serpeggiava tra gli acquitrini, sempre in discesa. La nebbia amava quella conca. Vi si riversava al crepuscolo come latte in una scodella e capitava che fino a mezzogiorno non volesse uscirne.
A oriente premeva la foresta – antica, di conifere e così fitta che anche di giorno gli alberi gettavano un’ombra fonda e fredda. A settentrione la terra molle cedeva il passo alle paludi, coperte di tife, carici e arbusti nani. Lì l’acqua ristagnava nera, torbida e immobile. Alcuni dicevano che non bisognava fissarla troppo a lungo, perché così si potevano evocare gli annegati imprigionati sotto lo strato di melma. Di notte vi svolazzavano spesso sopra i fuochi fatui. A occidente, nel punto più basso della valle, giaceva il lago, rotondo, come se qualcuno l’avesse impresso con un ginocchio. Si diceva che nessuno ne avesse mai visto il fondo.
Il villaggio era piccolo, ma non giovane. Le cinque case stavano lontane l’una dall’altra, perché ognuno aveva tanta terra quanta i suoi avi erano riusciti a dissodare e a difendere. Vi abitavano una trentina di persone, bambini compresi. Tutti si conoscevano bene. La chiesa si trovava soltanto in città; ci si andava qualche volta all’anno, per le feste più importanti, se le strade lo permettevano. Allora nel villaggio non restava anima viva.
Una settantina d’anni prima che Jaromir guardasse per la prima volta verso la foresta, suo nonno scese a Zapadlina con un fagotto in spalla. Maciek non aveva nulla tranne un’ascia, del pane, un paio di mani e la sua testardaggine. L’ascia e il pane li aveva comprati in città con il denaro guadagnato in quattro anni di lavoro sui campi altrui. Voleva finalmente avere qualcosa di suo – un angolo dove abitare e dare un tetto alla famiglia. Il padrone concedeva lì le terre incolte da dissodare per un canone basso, perciò ogni zolla che Maciek avesse ripulito sarebbe stata sua. Era primavera, i campi fumavano e qua e là, all’ombra, giaceva ancora neve sporca. Da qualche giorno Maciek girava per i dintorni cercando dove costruire la capanna. Tre luoghi gli tornavano in mente più spesso degli altri.
# ozdobnik
Il primo si trovava al margine orientale del villaggio, proprio sotto la foresta. La terra era fertile, il legname a portata di mano, e la selvaggina non mancava. Solo che dal bosco spirava sempre un’aria fredda, anche nei giorni torridi, e di notte ne giungevano suoni che non sapeva nominare.
Il secondo era a settentrione, presso le paludi. Lì si stendevano vasti prati dove si sarebbe potuto pascolare il bestiame, e la torba da bruciare non sarebbe mai mancata. In compenso, dopo il tramonto, sopra gli acquitrini pare che qualcosa ammiccasse. La gente incontrata al pozzo si limitava a dire: – Là non ci si va e non ci si costruisce. Là si annega soltanto.
Il terzo, sul lago, sembrava il più pittoresco. L’acqua era limpida, i pesci saltavano da soli in mano e la riva era dolce – bastava aprirsi un varco tra i fitti canneti. Lì erano rimasti anche i resti di una casupola che un tempo vi sorgeva: vecchie travi marce e carbonizzate. Nessuno al villaggio voleva dire chi ci avesse abitato né quale sorte gli fosse toccata, e la gente si faceva il segno della croce ogni volta che qualcuno la nominava.
# pytanie: Dove costruirà la capanna Maciek?
*   [Al margine della foresta, a oriente.]
    ~ chata_macka = przy_lesie
    -> budowa
*   [Presso le paludi, a settentrione.]
    ~ chata_macka = przy_mokradlach
    -> budowa
*   [Sulla riva del lago.]
    ~ chata_macka = nad_jeziorem
    -> budowa


// ------------------------------------------------------------
//  Budowa chaty – początek zależy od wybranego miejsca.
// ------------------------------------------------------------
=== budowa ===
{ chata_macka:
    - przy_lesie: -> las
    - przy_mokradlach: -> mokradla
    - else: -> jezioro
}

= las
# tlo: budowa_las
# rozdzial: Prologo
# tytul: La capanna
Maciek scelse il margine della foresta. Pensò che il legname sotto mano gli avrebbe permesso di tirare su la capanna più in fretta, ed era ciò che gli premeva di più. La terra fertile sarebbe servita per l’orto – in fin dei conti, qualcosa bisogna pur mangiare. E il sonno? Si vedrà. Già il primo mattino si mise al lavoro e piantò l’ascia nell’abete più vicino. L’eco del colpo corse tra gli alberi e tornò dopo un istante stranamente lungo – strascicata, cupa e non del tutto simile al tonfo di un’ascia.
-> praca

= mokradla
# tlo: budowa_mokradla
# rozdzial: Prologo
# tytul: La capanna
Maciek scelse i prati presso le paludi. Quando cominciò a lavorare, la gente che lo vedeva scuoteva la testa. Per loro era l’ultimo posto dove avrebbero tirato su casa. Lì la terra cedeva sotto i piedi, ma dava torba che sarebbe bastata perfino per cento inverni. Perché la capanna non sprofondasse nel fango, Maciek dovette preparare uno zoccolo di pietra. Per tutto il primo giorno portò sassi giù dalle colline e li dispose con cura.
Per il legname andava lontano, fin sotto il bosco. Gli capitava di finire in una pozza bassa – non conosceva ancora i sentieri del posto – e aveva le scarpe sempre fradice. Al pensiero dei racconti degli abitanti provava inquietudine, ma anche curiosità. Non gli dava pace che cosa potesse ammiccare sopra gli acquitrini. Cercava di evitare l’acqua nera e aveva preso a cuore l’avvertimento sugli annegati. Se esistevano, di certo non voleva incontrarli.
-> praca

= jezioro
# tlo: budowa_jezioro
# rozdzial: Prologo
# tytul: La capanna
Maciek scelse la riva del lago. Qualcosa in fondo al cuore gli diceva che quel posto era fatto per lui. Forse lo attirava l’acqua stessa – liscia e chiara, con tutto il cielo dentro. Le travi marce e carbonizzate della vecchia casupola le spinse tra le alte giuncaie, perché non gli ferissero lo sguardo. Quel che è stato è stato – si ripeteva mentre estirpava gli sterpi, quando gli tornavano in mente i racconti degli abitanti. Gli alberi li abbatteva sui pendii e i tronchi li faceva rotolare giù. Per coprire il tetto raccoglieva canne, che lì non mancavano – gli arrivavano sopra la testa.
-> praca

= praca
La costruzione durò più di un mese. Talvolta qualcuno degli abitanti veniva a dare una mano a Maciek. Il più delle volte era Andrzej, con cui si trovava sempre meglio a parlare. Neppure lui nuotava nell’abbondanza, ma vedendo in che miseria viveva il forestiero, ogni tanto gli portava qualcosa da mangiare. Gli piaceva anche raccontare di suo figlio, che era il suo orgoglio. Il ragazzo aveva undici anni ed era già di grande aiuto al padre.
Costruire la capanna, di per sé, non era difficile: abbattere gli alberi, scortecciarli, tagliarli in travi della lunghezza giusta e intagliarne le estremità a incastro, perché una volta montate tenessero bene. Così le pareti stavano in piedi senza un solo chiodo. Le fessure le turava con muschio e argilla. Per il lavoro pesante di ogni giorno le mani gli si coprirono di vesciche, che scoppiavano e si rimarginavano, finché la pelle non si indurì come corteccia.
Il pane lo mangiava con grande parsimonia – una fetta a colazione, un’altra a cena, mandandole giù con l’acqua. Si riprometteva di andare in città a rifornirsi appena finito il tetto. La pagnotta seccava, si restringeva e di giorno in giorno pesava sempre meno – e Maciek con lei.
Dormiva in una capanna di frasche messa insieme in fretta la prima sera: qualche ramo grosso appoggiato a un tronco, coperto di fronde e di zolle erbose, e dentro un giaciglio di muschio. Ci stava soltanto disteso. L’ascia la teneva sempre al fianco. # dalej
-> noce

= noce
Le notti erano la cosa peggiore. Il freddo e l’umidità di primavera s’infilavano sotto i vestiti, mordendo fino alle ossa. Era difficile addormentarsi. Maciek restava a occhi aperti e ascoltava.
{ chata_macka:
    - przy_lesie: La foresta non taceva mai. Non c’era vento, eppure i rami schioccavano – lenti, pigri, ora più vicino, ora più lontano. Spesso restava immobile in ascolto, benché certi suoni gli facessero accapponare la pelle.
    - przy_mokradlach: Gli acquitrini non dormivano mai. Gorgogliavano, schioccavano come labbra e a volte – così gli pareva – sospiravano come esseri umani. La prima volta che lo sentì, trasalì, afferrò l’ascia e sbirciò fuori dal riparo. I racconti sentiti al pozzo si rivelarono veri. Dopo mezzanotte, lontano sull’acqua nera, si accendeva una piccola luce che ammiccava. Si spegneva quando la guardava e tornava a brillare quando distoglieva gli occhi.
    - else: Di notte il lago respirava. Ogni suo respiro era tiepido e piacevole. Benché non ci fossero né vento né onde, di tanto in tanto qualcosa sciabordava nei bassifondi. Una volta Maciek sentì qualcosa di pesante uscire dal lago e avanzare lungo la riva, tra le canne, verso di lui. Al mattino andò a controllare. Le canne erano intatte e sulla secca sonnecchiavano le anatre, tranquille come ogni giorno.
}
Una notte, quando della pagnotta gli restava ormai solo l’ultimo tozzo, gli giunse un suono che lì non aveva ancora mai sentito. Un ululato sommesso, spezzato – sottile, simile a quello di un lupo, ma debole. Veniva dalla boscaglia lì vicino. Maciek cercò di non badarci, ma quello tornava di continuo.
# pytanie: Che cosa dovrebbe fare Maciek?
*   [Prendere l’ascia – anche se al buio è facile perderla nel fango – uscire dal riparo e vedere che cos’è.]
    -> pies
*   [Restare nel riparo e provare comunque a dormire. Lì si sente al sicuro.]
    -> zostal

= zostal
~ los_psa = niespotkany
Maciek strinse le dita sulla scure e non si mosse. L’ululato durò ancora a lungo. Poi si mutò in un guaito lamentoso e prima dell’alba tacque. # dalej
-> dach


// ------------------------------------------------------------
//  Pies w zaroślach – tylko gdy Maciek wyszedł z szałasu.
// ------------------------------------------------------------
=== pies ===
# tlo: zarosla_noc
Maciek strisciò fuori con l’ascia in mano. La notte era chiara di luna e l’erba bagnata di rugiada. Avanzava piano seguendo il suono, passo dopo passo, sentendo il cuore che voleva balzargli fuori dal petto. L’ululato ora si attenuava, ora riprendeva sempre più vicino.
Tra i cespugli fitti sentì un fruscio. Scostò i rami con il manico dell’ascia e si irrigidì. Dall’oscurità emersero due occhi lucenti. Alla luce della luna vide che era un cane giovane. Era così magro che le costole gli sporgevano sotto la pelle, e aveva le zampe troppo grandi per il resto del corpo. Il muso era lungo e stretto, le orecchie ritte e rigide. Non fuggiva davanti all’uomo. Ringhiava piano, tremando tutto. # pokaz: pies
Maciek frugò in tasca. C’era un piccolo involto con l’ultimo pezzo di pane – duro come un sasso, ma pur sempre il suo pasto dell’indomani.
# pytanie: Che cosa farà Maciek?
*   [Dare al cane il pezzo di pane.]
    -> dal_chleb
*   [Non darglielo e tornare al riparo.]
    -> nie_dal_chleba

= dal_chleb
~ ekwipunek -= chleb
~ los_psa = nakarmiony
Maciek svolse lo straccio e gettò il pane sotto il cespuglio. Il cane indietreggiò e ringhiò, ma dopo un attimo cominciò ad annusare ciò che era caduto. D’un tratto afferrò la preda con la bocca e sparì nel buio, prima che si potesse battere ciglio.
L’uomo strisciò di nuovo sotto i rami del suo riparo e si addormentò affamato, sapendo che l’indomani non avrebbe fatto colazione. # dalej
-> dach

= nie_dal_chleba
~ los_psa = porzucony
Maciek lasciò il pane in tasca.
– Sto a malapena in piedi anch’io – borbottò al cane, come se volesse giustificarsi davanti a lui.
Si ritirò lentamente e si rintanò sotto i rami. L’ululato si levò ancora una volta, più fioco di prima. Quella notte non lo sentì più. # dalej
-> dach


// ------------------------------------------------------------
//  Dach – dzień po nocy z wyciem. Przebieg zależy od losu psa.
// ------------------------------------------------------------
=== dach ===
{ chata_macka:
    - przy_lesie: # tlo: budowa_las
    - przy_mokradlach: # tlo: budowa_mokradla
    - else: # tlo: budowa_jezioro
}
# rozdzial: Prologo
# tytul: Il tetto
{ los_psa == nakarmiony: -> bez_chleba | -> z_chlebem }

= z_chlebem
~ ekwipunek -= chleb
Al mattino Maciek svolse l’involto e mangiò l’ultimo pezzo di pane. Lo masticava piano, boccone dopo boccone, perché gli bastasse per tutto il giorno. Bevve un po’ d’acqua, si spolverò le mani e andò al lavoro.
-> trzcina ->
Tagliava il folto con l’ascia a filo del suolo, lo legava in fasci e li portava alla capanna. Una volta dopo l’altra, senza tregua. La schiena gli bruciava come fuoco vivo, ma il mucchio accanto alla parete cresceva.
Nel pomeriggio, in quel punto, le canne erano finite, perciò si spostò più in là. Tornava per un’altra strada – dalla parte da cui la notte prima era giunto l’ululato. Camminava, quando all’improvviso il piede gli rimase sospeso a mezz’aria.
Nell’erba sotto un cespuglio giaceva il cane. Magro, con il muso lungo e il pelo arruffato. Era rigido, rovesciato su un fianco, con gli occhi socchiusi. Le mosche gli si erano già posate addosso.
{ los_psa == niespotkany:
    Maciek rimase a lungo immobile davanti a lui. Solo ora capì che cosa avesse ululato quella notte. Non una bestia selvatica, non uno spettro – soltanto un cucciolo affamato e intirizzito, che aveva chiamato finché aveva smesso.
    Gli si strinse la gola. Pensò che allora avrebbe potuto uscire. Ma subito si rispose da sé: e se fosse finito dritto tra le fauci di un lupo? Al buio non si sa che cosa aspetta tra i cespugli. Un uomo assennato resta nel riparo con l’ascia a portata di mano – e campa.
    Distolse lo sguardo, si caricò un fascio sulla schiena e tornò al lavoro. Il cane lo lasciò dove l’aveva trovato. # dalej
- else:
    Maciek cadde in ginocchio. Ricordava quegli occhi alla luce della luna, quel ringhio senza convinzione, il tremito di tutto il corpo. Il cane implorava, e lui si era voltato e se n’era andato.
    Un pezzo. Un solo, duro pezzo di pane.
    – Stavo a malapena in piedi anch’io – disse ad alta voce, come se qualcuno lo accusasse. – Se avessi dato via tutto, chi giacerebbe qui? Il cane o io?
    Le parole suonavano ragionevoli, ma non gli diedero sollievo. Maciek si rialzò e, senza più guardare sotto il cespuglio, tornò a portare le canne. Il corpo non lo seppellì. # dalej
}
-> uplyw_czasu

= bez_chleba
Al mattino Maciek si svegliò affamato. Allungò d’istinto la mano alla tasca e si ricordò che l’involto era vuoto. Sospirò, bevve un sorso d’acqua e andò al lavoro.
-> trzcina ->
Tagliava il folto con l’ascia a filo del suolo, lo legava in fasci e li portava alla capanna. Una volta dopo l’altra, senza tregua.
Verso mezzogiorno, raddrizzando la schiena indolenzita, notò in lontananza un movimento. Al margine del prato, tra i ciuffi d’erba, si aggirava un cane – lo stesso, magro, con il muso lungo. Fiutava, si fermava e guardava dalla sua parte, pronto a filarsela da un momento all’altro.
Maciek sorrise, per la prima volta da molti giorni.
– Sei vivo – borbottò.
Nei giorni seguenti il cane tornò. Dapprima si teneva a distanza. Poi si sedeva su un poggio e per ore osservava l’uomo che si affaccendava con i fasci. Ogni giorno era un po’ più vicino – di qualche passo, non di più, come se saggiasse fin dove gli fosse permesso. # dalej
-> uplyw_czasu

// Wspólny akapit o trzcinie na dach – skąd ją brał, zależy od miejsca chaty.
= trzcina
Le pareti erano ormai dritte, i puntoni ben saldi. Restava il tetto. Per la copertura gli servivano canne – tante canne, più di quante sembrasse guardando la sola capanna.
{ chata_macka:
    - przy_lesie: Le più vicine crescevano al margine delle paludi, a mezz’ora di cammino, perciò ogni fascio doveva trascinarselo attraverso tutto il prato.
    - przy_mokradlach: Crescevano quasi sotto la soglia, fitte e alte, solo che per prenderle bisognava guadare il fango gelido fino alle ginocchia.
    - else: Crescevano lungo tutta la riva, più alte di lui, e frusciavano a ogni soffio come qualcuno che ti bisbiglia alle spalle.
}
->->

= uplyw_czasu
Passavano i giorni. Le nevi si sciolsero del tutto, perfino nell’ombra più fonda sotto il bosco. La terra smise di fumare e si fece tiepida sotto il piede nudo. Al margine della foresta fiorirono gli anemoni – bianchi, fitti come brina – e sui terreni umidi splendevano i botton d’oro.
Pane Maciek non ne aveva più da un pezzo. Viveva di quello che trovava da sé o che gli portava Andrzej. Nelle paludi raccoglieva i mirtilli palustri svernati, aspri e raggrinziti, ma ancora commestibili. Dai cespugli di rosa canina strappava le bacche dell’anno prima, dure come perline. Nel prato coglieva l’acetosa, che masticava cruda, e negli angoli umidi sotto gli alberi trovava l’aglio orsino. Incideva anche le betulle e beveva la linfa dolciastra che ne gocciolava fino al mattino. La fame non se ne andava, ma ci si poteva convivere.
Il tetto cresceva di giorno in giorno. Fascio accanto a fascio, strato su strato. # dalej
-> wieczor


// ------------------------------------------------------------
//  Wieczór – stwór w zaroślach.
// ------------------------------------------------------------
=== wieczor ===
# tlo: zmierzch
Quel giorno Maciek disponeva i fasci ormai accanto al colmo. Mancava solo una striscia, forse due. Le mani gli tremavano per la stanchezza, e il sole era scivolato oltre l’orizzonte, lasciando in cielo un rosso sporco.
Scese dal tetto e sedette accanto al riparo. Voleva riposare solo un momento, finché c’era ancora luce. Appoggiò la testa al tronco, chiuse gli occhi…
…e si addormentò.
Lo svegliò il silenzio.
Non si sentivano grilli, rane né vento. Tutto intorno affondava nella nebbia, densa e bianca, alta fino alle ginocchia. Maciek non sapeva quanto avesse dormito. Sapeva soltanto che qualcosa non andava – lo sentiva con il corpo e con l’anima, prima di capirlo con la mente.
Si levò un rumore. Non un ululato né un grido, ma qualcosa a metà: un gemito lungo, gutturale, che si mutò in uno schianto di rami spezzati. Qualcosa balzò con fragore nella boscaglia – proprio accanto, non lontano dal riparo. # pokaz: oczy
Maciek scattò in piedi. L’ascia gli si trovò in mano da sola. Stringeva la scure così forte che le nocche gli sbiancarono, e fissava il buio da cui venivano dei passi – lenti, pesanti, sempre più vicini. # dalej
{ los_psa == nakarmiony: -> obrona | -> zdobycz }

= zdobycz
# tlo: zmierzch_zdobycz
I cespugli si aprirono. Dalla nebbia emerse una figura. # pokaz: topielec
Era più alta di un uomo adulto di ben tre teste. Stava su due gambe, ma curva, con le braccia terminanti in artigli che pendevano quasi fino a terra, e lunghi capelli grondanti di melma. Aveva sembianze umane – e non era affatto umana. Nelle fauci teneva qualcosa di grosso e inerte, che le ricadeva da entrambi i lati del muso.
Maciek lo riconobbe subito, anche se avrebbe preferito non riconoscerlo. # pokaz: cialo
La figura serrò le mascelle. Si udì uno scricchiolio – forte, umido, come di rami secchi che si spezzano, solo che non erano rami. Poi la creatura si voltò e schizzò verso le {chata_macka == przy_mokradlach:vicine }paludi, così veloce che la nebbia vorticò dietro di lei come acqua.
Maciek non riusciva a muoversi. Tremava tutto, un sudore freddo gli colava lungo la schiena e aveva le gambe di bambagia. L’ascia gli pesava tra le mani, inutile. Rimase così a lungo, finché il buio non tornò a tacere.
-> strach_o_chate ->
Alla fine strisciò nel riparo. Per molto non riuscì a chiudere occhio e restò in ascolto, finché, sfinito dal lavoro e dalla paura, si addormentò. # dalej
-> zgliszcza

= obrona
# tlo: zmierzch_obrona
I cespugli si aprirono. Nel buio s’accesero due occhi – in alto, troppo in alto per un lupo o un cinghiale. La figura stava nella boscaglia su due gambe, curva, con le braccia che pendevano quasi fino a terra e lunghi capelli grondanti di melma. Aveva sembianze umane – e non era affatto umana. # pokaz: topielec
Maciek non riusciva a muoversi. Tremava tutto, un sudore freddo gli colava lungo la schiena. Gli occhi lo fissavano dritto e lentamente, molto lentamente, si avvicinavano.
Da lontano giunsero dei latrati.
Il cane sbucò dal buio come una freccia e si piantò tra Maciek e la boscaglia. Il pelo gli si rizzò sulla nuca, puntò le zampe e abbaiava – forte, rabbioso, senza un attimo di sosta, benché tremasse tutto. Magro, giovane, con la coda tra le gambe – e non arretrò di un passo. # pokaz: pies
Gli occhi si fermarono. La figura esitò, emise un sibilo gutturale – poi si voltò e, con uno schianto di rami, schizzò in direzione delle {chata_macka == przy_mokradlach:vicine }paludi, tanto che la nebbia vorticò dietro di lei come acqua.
-> strach_o_chate ->
~ los_psa = oswojony
~ ekwipunek += pies_towarzysz
Ci volle molto prima che Maciek si riavesse. Alla fine si lasciò scivolare a terra accanto al riparo, ansimando come dopo una lunga corsa. Il cane smise di abbaiare. Gli si avvicinò incerto, a testa bassa – e scodinzolò, fiero di sé come nessuno al mondo.
Maciek tese una mano tremante. L’animale la annusò, poi si lasciò accarezzare.
– Bravo cane – sussurrò. – Bravo – sospirò.
Quella notte entrarono nel riparo insieme. Il cane si sdraiò all’ingresso, con il muso verso la boscaglia. Maciek vegliò ancora a lungo, teso ad ascoltare il buio, finché il sonno non lo vinse. Ma non era più solo. # tobolek # dalej
-> zgliszcza

// Tylko gdy chata stoi przy mokradłach – stwór uciekł właśnie tam.
= strach_o_chate
{ chata_macka == przy_mokradlach:
    Poi si rese conto che la creatura non era fuggita lontano. Era sparita nell’acquitrino, a poche decine di passi dal riparo – là dove lui stesso da un mese dormiva, mangiava e lavorava. Forse era lì fin dall’inizio. Forse ogni notte, mentre Maciek ascoltava il gorgoglio dell’acqua nera, qualcosa dall’altra parte ascoltava lui. «Là non ci si costruisce. Là si annega soltanto» – gli tornarono in mente le parole della gente del pozzo. Per la prima volta dal giorno in cui aveva messo mano alla capanna, pensò che forse aveva commesso un errore. Che forse avrebbe dovuto dare retta.
}
->->


// ------------------------------------------------------------
//  Zgliszcza – poranek po nocy z topielcem, dokończenie dachu,
//  rozmowa z Andrzejem.
// ------------------------------------------------------------
=== zgliszcza ===
~ zapiski += stwor_1
{ chata_macka:
    - przy_lesie: # tlo: chata_las
    - przy_mokradlach: # tlo: chata_mokradla
    - else: # tlo: chata_jezioro
}
# rozdzial: Prologo
# tytul: Le macerie
Cominciava ad albeggiare. Maciek si svegliò rattrappito e intirizzito. Per un momento non seppe se ciò che aveva visto nella notte fosse accaduto davvero. Poi gli tornò in mente lo schianto dei rami spezzati e lo percorse un brivido.
{ los_psa == oswojony:
    Il cane giaceva all’ingresso del riparo con il muso sulle zampe e guardava verso le paludi. Era già sveglio. Maciek ebbe l’impressione che fosse rimasto di guardia così fino all’alba.
- else:
    Nel riparo c’era silenzio. Maciek guardò fuori. L’erba vicino alla boscaglia era coricata in una larga striscia, impiastricciata di melma, e puzzava d’acquitrino{chata_macka != przy_mokradlach:, benché le paludi fossero lontane}. La traccia portava {chata_macka == przy_mokradlach:verso l’acqua nera|verso di esse}, e sugli steli scurivano gocce di sangue. # pokaz: slady
}
Andò alla sua capanna incompiuta e si sedette sulla soglia. Rimase lì, lo sguardo fisso davanti a sé. I pensieri gli si addensavano dentro come la nebbia sul villaggio. Fuggire. Lasciare tutto, finché era ancora vivo, e non tornare mai più. E d’altra parte – più di un mese di lavoro, le vesciche sulle mani, le ultime fette di pane. Ogni trave di quelle pareti l’aveva squadrata da sé. E dove sarebbe andato? Sul campo di un altro, di nuovo per una scodella di pappa d’orzo? Aveva pur promesso di portare lì la famiglia. Che avrebbero avuto un tetto loro.
# pytanie: Che cosa deciderà Maciek?
*   [Restare. Ha messo troppo in questo posto.]
    -> zostaje
*   [Raccogliere quel che ha e andarsene, finché è in tempo.]
    -> odchodzi

= zostaje
Si alzò, si spolverò i calzoni e guardò il tetto. Restava una striscia di canne, forse due.
– Non ho costruito tutto questo per scappare adesso – disse a voce alta, perché a sentirlo non fosse soltanto {chata_macka == przy_lesie:la foresta|il canneto}. # dalej
-> dach_gotowy

= odchodzi
~ chcial_odejsc = true
Si gettò il fagotto in spalla e s’incamminò in salita, verso la strada maestra. Marciava svelto, senza voltarsi. Solo sulla Cresta dei Faggi si fermò e guardò giù.
La capanna era laggiù, piccola e incompiuta, con il tetto come una frase lasciata a metà. La sua capanna.
{ los_psa == oswojony: Il cane l’aveva seguito per un tratto, poi si era seduto a metà del pendio e guardava – ora lui, ora indietro – come se aspettasse che Maciek capisse da sé. }
Maciek non si mosse finché il sole non si levò sopra il bosco. Poi tornò indietro. Non perché avesse smesso di avere paura. Non aveva dove andare, ecco tutto. # dalej
-> dach_gotowy

= dach_gotowy
Gli ultimi fasci di canne li sistemò entro mezzogiorno. Li legò con fibra di tiglio, li fermò con le pertiche e scese dalla scala. Per la prima volta da quando era arrivato a Zapadlina stava davanti a una capanna finita – sua, dalle fondamenta al colmo. # pokaz: dach
Quella notte finalmente vi si addormentò. Le pareti sapevano di resina e di argilla umida, e dalla fessura della porta filtrava la luce della luna.
Non c’era ancora un letto, ma almeno aveva sopra la testa un tetto suo. Lì, a casa propria, per la prima volta da settimane dormì tutta la notte senza svegliarsi.
{ los_psa == oswojony: Il cane si accucciò sulla soglia e da quella notte non la cedette più a nessuno. }
Al mattino Maciek andò dall’unico uomo di cui si fidava. Doveva dirlo a qualcuno. # dalej
-> u_andrzeja

= u_andrzeja
# tlo: izba_andrzeja
La casa di Andrzej sorgeva su un poggio, lontano dall’acqua. Nella stanza c’era odore di fumo e poco spazio. Staś, il figlio del padrone di casa, sedeva sulla panca accanto al tavolo e intagliava un bastoncino con il coltellino. Alla vista dell’ospite sorrise da un orecchio all’altro.
Maciek cominciò dal principio: dal silenzio, dai passi e… dalla figura più alta di un uomo di tre teste, con i capelli grondanti di melma.
Andrzej ascoltava, finché all’improvviso scoppiò a ridere.
– Te lo sei sognato per la fame, amico mio. Scuotiti. Un mese a pane e acqua – c’è da vedere perfino l’arcangelo Michele.
Staś smise di intagliare. Fissava il forestiero a bocca aperta, con la paura negli occhi.
– È vero? – chiese.
# pytanie: Che cosa farà Maciek?
*   [Confermare con fermezza che è vero e raccontare tutto fino in fondo, davanti al ragazzo. Che sappia da che cosa deve guardarsi.]
    ~ stas_zaufanie = true
    -> prawda_przy_chlopcu
*   [Sorridere e liquidare il ragazzo dicendo che forse era solo un sogno, ma chiedere ad Andrzej di mandarlo via e raccontargli tutto a quattr’occhi, nei particolari. Non sono cose per un bambino.]
    -> w_cztery_oczy

= prawda_przy_chlopcu
– Sì, è vero. Lascia che il ragazzino ascolti. Meglio che abbia paura, piuttosto che vada da solo all’acquitrino e non torni mai più.
Il padrone di casa guardò il figlio, poi Maciek. Il sorriso gli svanì lentamente dal viso.
-> dziad_opowiadal

= w_cztery_oczy
– A dire il vero… sarà stato un brutto sogno – rispose.
Chiese però all’amico di parlargli a quattr’occhi. Quello mandò Staś a prendere l’acqua. Il ragazzo uscì malvolentieri e lasciò la porta socchiusa. Nessuno dei due uomini se ne accorse.
-> dziad_opowiadal

= dziad_opowiadal
– Più alta di tre teste, dici – parlò infine Andrzej, ormai senza ridere. – E i capelli fradici di melma. – Per un bel po’ si rigirò tra le dita una scodella vuota. – Mio nonno raccontava di una cosa così. Credevo che volesse spaventare i bambini.
Maciek raccontò di nuovo, passo per passo, tutta quella notte. # dalej
-> legenda


// ------------------------------------------------------------
//  Legenda o wiedźmie znad jeziora – opowiada Andrzej.
// ------------------------------------------------------------
=== legenda ===
# tlo: legenda
– Pare che tutto sia cominciato laggiù, in riva al lago, dove giacciono quelle travi carbonizzate. – Andrzej abbassò la voce. – Un tempo ci abitava una donna. Un’erborista. La gente andava da lei con i dolori, le malattie e la febbre – e lei non diceva di no a nessuno. Ma col tempo qualcosa le entrò dentro. Non si sa perché. Parlava di notte, ma non da sola – con qualcuno che nessuno vedeva. Alcuni dicevano con gli annegati, altri con il vecchio dal cappello di muschio, che veniva a trovarla dalla parte del bosco. Lei stessa ripeteva che i morti salivano dall’acqua e le raccontavano di un futuro terribile. Presto tutti la evitarono, perché avevano paura.
Poi al villaggio le cose andarono sempre peggio. Il latte inacidiva nei secchi, i bambini piccoli si svegliavano urlando, gli ortaggi marcivano nella terra. Sparivano anche gli animali – prima un vitello, poi una mucca, poi un intero pollaio in una sola notte. La gente diceva che era opera sua, e cominciò a chiamarla strega.
Una notte alcuni contadini si radunarono davanti alla sua casa. Inchiodarono la porta con delle assi mentre dormiva, ammucchiarono paglia contro le pareti e appiccarono il fuoco. # pokaz: chlopi, ogien
Andrzej tacque per un momento.
– Il nonno diceva che gridò fino all’ultimo. Non per il dolore, Maciek. Malediceva. Il villaggio, la terra, chiunque ci abiti e chiunque ci abiterà un giorno. Che nessuno avrebbe conosciuto pace finché quelli che vanno a trovarla non avessero sterminato qui tutti fino all’ultimo. La si sentiva anche gemere, mentre scagliava le parole della maledizione: «Le ossa dei vostri figli saranno spezzate, e il loro sangue bevuto…». – Andrzej si passò una mano sul viso. – E diceva pure che al margine del bosco, mentre la casa bruciava, c’era qualcuno di alto che guardava. Nessuno andò a vedere chi fosse.
– Che orrore… E quelli che l’hanno bruciata?
– Nessuno arrivò all’inverno. Uno dopo l’altro persero il senno. Parlavano da soli, non dormivano, andavano al buio verso l’acqua. Finché alla fine entrarono tutti nell’acquitrino e non ne uscirono più. Quelli che li incontrarono per ultimi dicevano che negli occhi avevano qualcosa di strano. Come se in ciascuno ardesse una lucerna. # pokaz: wegielki
Andrzej si chinò verso di lui.
– Sono i loro occhi che ammiccano di notte sopra le paludi. Altro che fuochi fatui. Loro stanno là e scrutano – e attirano.
{ chata_macka:
    - przy_mokradlach: Maciek sentì il freddo stringergli lo stomaco. Ogni notte vedeva quelle lucine dalla sua soglia. Credeva che fosse legno marcio o esalazioni di palude. Che fosse soltanto luce.
    - nad_jeziorem: Maciek impallidì. Quelle travi le aveva spinte con le proprie mani tra le canne. La sua capanna l’aveva costruita esattamente dove era bruciata l’altra.
}
{ stas_zaufanie:
    Staś sedeva immobile, con il bastoncino non finito in mano. # dalej
- else:
    Dietro la porta socchiusa qualcosa scricchiolò piano. Quando il padrone di casa guardò fuori, nell’andito c’era soltanto il secchio d’acqua. Staś era già lontano, in fondo al cortile. # dalej
}
-> zgliszcza_wiedzmy


// ------------------------------------------------------------
//  Zgliszcza chaty wiedźmy w trzcinach nad jeziorem.
// ------------------------------------------------------------
=== zgliszcza_wiedzmy ===
# tlo: zgliszcza
~ zapiski += zielarka_1
Tornando da Andrzej, Maciek non riusciva a smettere di pensare alle macerie.
{ chata_macka == nad_jeziorem: Ora che sapeva che cosa fossero, le vedeva ogni volta che guardava tra le canne accanto a casa. Travi nere, carbonizzate, che spuntavano come costole. }
Qualcosa dentro di lui lo spingeva a esaminarle da vicino, benché provasse timore.
# pytanie: Che cosa farà Maciek?
*   [Andare alle macerie e frugare nella cenere.]
    -> przeszukuje
*   [Tenersene alla larga.]
    -> omija

= przeszukuje
~ przeszukal_zgliszcza = true
~ ekwipunek += figurka
Aprì un varco tra le canne con l’ascia e s’inginocchiò accanto alle travi annerite. La cenere era fredda, compatta e umida. Vi frugò a lungo, finché le dita non urtarono qualcosa di duro. # pokaz: maciek
Una statuina di legno, bruciacchiata da un lato. Una figura umana con le braccia troppo lunghe, che arrivavano fino ai piedi.
Maciek se la rigirava tra le mani. Pensò che forse in città avrebbe potuto barattarla con qualcosa da mangiare, così la tenne.
{ los_psa == oswojony: Il cane, che fino a quel momento fiutava lungo la riva, indietreggiò e ringhiò piano contro la sua tasca. }
Dopo un po’ scorse nella cenere qualcos’altro.
– Impossibile – sussurrò, ed estrasse dalle ceneri un acciarino annerito. – Che sia servito a dar fuoco alla casa della strega?
# pytanie: Maciek prenderà l’acciarino?
*   [Sì – maledetto o no, gli permetterà di accendere il fuoco e di cucinare pasti caldi.]
    ~ ekwipunek += krzesiwo
    -> wieczor_przy_chacie
*   [No – non vuole rischiare una maledizione che potrebbe abbattersi su di lui.]
    -> wieczor_przy_chacie

= omija
{chata_macka == nad_jeziorem:Le canne sulla propria soglia non poteva evitarle, ma da allora, uscendo dalla capanna, ne distoglieva lo sguardo.|Girò al largo dal lago e non guardò nemmeno una volta verso le canne.} Certe cose è meglio non toccarle. # dalej
-> wieczor_przy_chacie


// ------------------------------------------------------------
//  Wieczór przy chacie – ogień (jeśli ma krzesiwo) i plan wyprawy do miasta.
// ------------------------------------------------------------
=== wieczor_przy_chacie ===
{ chata_macka:
    - przy_lesie: # tlo: wieczor_las
    - przy_mokradlach: # tlo: wieczor_mokradla
    - else: # tlo: wieczor_jezioro
}
{ ekwipunek ? krzesiwo:
    La sera Maciek raccolse rami secchi e li dispose in un cerchio di pietre davanti alla capanna. L’acciarino gli pesava in mano in modo strano. Per un momento lo osservò, pensando a chi fossero le ultime mani che l’avevano stretto. Poi batté una volta, due, tre – e nell’esca s’accese una scintilla. # pokaz: ogien
    Il fuoco divampò luminoso, e il calore gli si rovesciò in faccia così all’improvviso che gli girò la testa. Da settimane non metteva in bocca nulla di caldo. Ora cucinò in una pentola di coccio una zuppa di ortiche e acetosa. Mangiava piano, scottandosi le labbra, e niente al mondo gli era mai parso così buono.
    { los_psa == oswojony:
        Il cane si sdraiò dall’altra parte del fuoco. Le fiamme si riflettevano nei suoi occhi, e lui le fissava come incantato. # pokaz: pies
    }
- else:
    La sera scese fredda e buia. Maciek mangiò una manciata di acetosa cruda e qualche mirtillo palustre raggrinzito, bevve un sorso d’acqua e si sedette sulla soglia.
}
Rimase a lungo seduto, guardando verso la strada maestra, e intanto metteva a punto un piano. La capanna era pronta. Era ora di partire per la città – comprare pane, sale, magari un po’ d’orzo.
{ ekwipunek ? figurka: La statuina avrebbe provato a venderla – forse qualcuno avrebbe pagato per una simile stranezza. }
E poi, appena raccolte le forze, avrebbe portato lì la famiglia. Nella casa che aveva costruito con le proprie mani. # dalej
-> droga_do_miasta


// ------------------------------------------------------------
//  Droga do miasta – kręta ścieżka między mokradłami, głos znad wody.
// ------------------------------------------------------------
=== droga_do_miasta ===
# tlo: sciezka
Partì all’alba. Fino alla città c’erano sei ore di cammino, e il primo tratto passava per un sentiero tortuoso tra le paludi, in salita, fino alla Cresta dei Faggi. Camminava di buon passo, benché lo stomaco gli brontolasse per la fame. Pensava alla moglie e al figlioletto – a quando, per la prima volta, si sarebbero fermati sulla soglia della nuova capanna. La nostalgia gli serrava la gola.
{ los_psa == oswojony:
    Il cane gli trotterellava accanto e agitava allegro la coda. # pokaz: pies
}
La nebbia stava bassa sull’acqua nera. Il sentiero era stretto, in certi punti così molle che bisognava saltare da un ciuffo all’altro. Maciek procedeva cauto, a capo chino. Ricordava ciò che diceva la gente: quell’acqua non bisogna fissarla troppo a lungo.
A metà strada, però, qualcosa lo costrinse ad alzare lo sguardo. Nel cuore delle paludi baluginava una lucina pallida. Ormai era giorno fatto, eppure era ancora lì. Ammiccava lenta, regolare, come se qualcuno stesse là con una lucerna a scrutare. # pokaz: swiatelko
Allora sentì il proprio nome.
– Maaaciek…
Piano, strascicato, dall’acqua. Con una voce che pareva quella della sua amata moglie.
Lo chiamava sempre così, quando succedeva qualcosa. Ma era rimasta alla fattoria padronale fuori città e doveva aspettarlo lì… Forse gli era solo sembrato. O forse era l’acquitrino che lo chiamava a sé.
# pytanie: Che cosa farà Maciek?
*   [Andare verso la voce – forse sua moglie ha bisogno d’aiuto.]
    { los_psa == oswojony: -> ratunek | -> utoniecie }
*   [Non voltarsi e proseguire – non può certo essere lei.]
    -> nie_odwraca_sie

= ratunek
# tlo: sciezka_po
~ pies_uratowal = true
Fece un passo fuori dal sentiero, poi un altro, oltrepassò il folto e saltò oltre il fango cedevole. L’acquitrino sciabordò e lo afferrò per le caviglie con dita gelide. Sentì che gli risucchiava le gambe sotto la superficie. Allora il cane balzò, lo azzannò per il gabbano e strattonò all’indietro con tutte le forze. Maciek cadde sulla schiena e gridò. La lucina si spense come soffiata, e da qualche parte nella nebbia risuonò una risatina sommessa.
Giaceva nel fango, ansimando, e l’animale gli stava sopra e ringhiava verso le paludi, finché la nebbia non si richiuse sull’acqua. # pokaz: upadek # dalej
-> na_grzbiecie

= utoniecie
// Bez psa: Maciek idzie za głosem i tonie – ale przeżywa. Ratuje się krzesiwem albo ratuje go Andrzej;
// bagno zabiera figurkę (zostaje tylko spokojne zakończenie) i zostawia na łydkach sine pręgi.
# tlo: sciezka_ratunek
~ pregi_na_lydkach = true
Fece un passo fuori dal sentiero, poi un altro, oltrepassò il folto e saltò oltre il fango cedevole. L’acquitrino sciabordò e lo afferrò per le caviglie con dita gelide. Sentì che gli risucchiava le gambe sotto la superficie. La voce era sempre più vicina – ora calda, familiare, quella che gli mancava da settimane.
– Maaaciek…
Restava immobile, immerso ormai fino alle ginocchia, poi fino alla cintola. Non sentiva il freddo. Sentiva soltanto che qualcuno di amato gli si stava avvicinando.
Solo quando l’acqua nera gli arrivò al petto, capì. Si divincolò, ma qualcosa lo teneva per i polpacci – qualcosa che aveva dita. La lucina ammiccò proprio davanti al suo viso e Maciek vide che non era una lucerna. Erano occhi – proprio come quelli di cui aveva parlato Andrzej. # pokaz: oczy
{ ekwipunek ? krzesiwo:
    Allora si ricordò dell’acciarino, che da quel giorno portava sotto la camicia. Con le mani intorpidite lo strappò fuori insieme all’esca e batté – una volta, due – proprio sopra l’acqua. La terza scintilla saltò dritta negli occhi. Nell’acqua qualcosa sibilò come un ciocco gettato nel fuoco, la presa sui polpacci si allentò e la lucina si spense come soffiata. Maciek si gettò all’indietro, si aggrappava ai ciuffi d’erba, li strappava a manciate, finché non riuscì a trascinarsi fuori sul sentiero. # pokaz: iskry, ratunek
    { ekwipunek ? figurka:
        ~ ekwipunek -= figurka
        ~ figurka_w_bagnie = true
        Sul sentiero sentì la tasca leggera. La statuina bruciacchiata doveva essergli scivolata via nell’acquitrino. Per un attimo gli parve di vederla ancora – una piccola forma scura che affondava lenta – e poi non ci fu più nulla. # pokaz: figurka
        Non tornò a prenderla. Per nulla al mondo.
    }
- else:
    ~ uratowal_andrzej = true
    – Maciek! Afferra!
    Lì accanto una lunga pertica schioccò sull’acqua. Sull’argine c’era Andrzej, con i calzari di corteccia infangati e un cesto a tracolla – all’alba controllava le nasse presso gli stagni. Maciek si aggrappò alla stanga con entrambe le mani. Il vicino puntò i piedi e gemette, e l’acquitrino tirava dalla sua parte, finché alla fine mollò con un risucchio riluttante. Il fuoco fatuo ammiccò ancora una volta e si spense. # pokaz: andrzej, ratunek
    – Te l’avevo detto – ansimò Andrzej, mentre giacevano entrambi nel fango. – Non dare ascolto alle voci che vengono dall’acqua.
    { ekwipunek ? figurka:
        ~ ekwipunek -= figurka
        ~ figurka_w_bagnie = true
        Sull’argine Maciek sentì la tasca leggera. La statuina bruciacchiata doveva essergli scivolata via nell’acquitrino. Per un attimo gli parve di vederla ancora – una piccola forma scura che affondava lenta – e poi non ci fu più nulla. # pokaz: figurka
        – Si è preso il suo – borbottò Andrzej, e sputò oltre la spalla sinistra.
    }
}
Su entrambi i polpacci, dove quella cosa l’aveva tenuto, gli rimasero strisce livide – lunghe, strette, cinque per parte. Non scomparvero né quel giorno né fino alla fine della sua vita. # dalej
-> na_grzbiecie

= nie_odwraca_sie
Strinse i denti e proseguì, passo dopo passo, senza voltare la testa. La voce chiamò ancora due volte, sempre più fioca. Poi tacque. # dalej
-> na_grzbiecie

= na_grzbiecie
# tlo: zapadlina
// Kto poszedł za głosem (pies go wyciągnął albo bagno puściło), już się odwrócił – dla niego inny tekst.
{ pies_uratowal || pregi_na_lydkach:
    Il resto della salita lo fece come in sogno – {pregi_na_lydkach:fradicio fino al petto|fradicio fino alla cintola}, coperto di melma, con {pregi_na_lydkach:i polpacci su cui sentiva ancora dita estranee|le caviglie su cui sentiva ancora la stretta gelida dell’acquitrino}.{ los_psa == oswojony: Il cane non lo lasciava un passo e si voltava di continuo verso l’acqua.}
    Sulla Cresta dei Faggi sedette su un sasso e solo lì le mani smisero di tremargli. In basso giaceva Zapadlina – silenziosa, coperta di nebbia come da un sudario. Da qualche parte laggiù c’era la sua capanna.
- else:
    Sulla Cresta dei Faggi Maciek trovò finalmente il coraggio di voltarsi. In basso giaceva Zapadlina – silenziosa, coperta di nebbia come da un sudario. Da qualche parte laggiù c’era la sua capanna.
}
Poi prese la strada maestra verso la città. # dalej
-> miasto


// Koniec prologu – dalej rozdział pierwszy z Jaromirem.
=== prolog_ciag_dalszy ===
# ozdobnik
_Fine del prologo._ # dalej
-> rozdzial_pierwszy
