// ------------------------------------------------------------
//  Rozdział pierwszy – Lato. Dzieciństwo Jaromira, około pół
//  wieku po prologu. Przebieg zależy od zakończenia prologu:
//    figurka_u_staruchy – dom na pagórku obok Stasia, milczący ojciec
//                         (z psem żyje jeszcze babka Marianna);
//    inaczej            – chata dziadka Maćka (las / mokradła / jezioro),
//                         ojciec opowiada legendy jak bajki.
// ------------------------------------------------------------

=== rozdzial_pierwszy ===
// Czy Maciek miał krzesiwo – babka Marianna może je oddać wnukowi w rozdziale 4.
~ krzesiwo_dziadka = ekwipunek ? krzesiwo
// Nowy bohater – Jaromir zaczyna z pustym tobołkiem (przedmioty Maćka zostają w prologu).
~ ekwipunek = ()
# nowy_tobolek
# tlo: zapadlina_lato
# rozdzial: Capitolo primo
# tytul: Estate
La Zapadlina in cui cresceva Jaromir era ormai un villaggio diverso da quello in cui, anni prima, era sceso col fagotto suo nonno. Le case si erano moltiplicate – ora erano nove, sparse sui pendii e sui prati come chicchi gettati a manciate su un campo. La foresta aveva ceduto un poco alle asce, i coltivi arrivavano più lontano, e attraverso le paludi correva una solida passerella di tronchi di quercia. Lungo le strade sorgevano tante edicole votive, sempre adorne di fiori freschi. La nebbia amava ancora quella valle e d’estate vi indugiava ben oltre il levar del sole. Era cambiato anche il circondario: oltre la Cresta dei Faggi, a un’ora di cammino da Zapadlina, era sorto Bukowiec – un borgo più grande e più agiato, con un mulino, un’osteria e una scuola, e subito accanto alla scuola – una chiesetta di legno, presso la quale era venuto ad abitare un vecchio prete. In città ormai si andava soltanto per le fiere e per le grandi sagre del santo patrono.
{ figurka_u_staruchy:
    Jaromir abitava in una casa contadina sulla collinetta, accanto alla fattoria del vecchio Staś, con il quale suo padre era cresciuto come un fratello. Era piccola ma calda, con i muri imbiancati e il tetto di canne, e dalla soglia si vedeva tutta Zapadlina – i campi, i prati, il lago e la striscia scura del bosco a oriente.
- else:
    { chata_macka:
        - przy_lesie: Jaromir abitava nella capanna ai piedi della foresta, la stessa che aveva costruito nonno Maciek. Il padre vi aveva aggiunto una seconda stanza e un fienile. Sotto la finestra cresceva un melo, piantato il giorno in cui era nato il figlio, e dal lato di settentrione stavano dei susini selvatici, che spesso lasciavano cadere frutti piccoli, verdi e acerbi. Oltre il basso steccato cominciava il bosco – d’estate profumava di resina e di funghi, e nei pomeriggi afosi offriva un’ombra in cui si poteva restare sdraiati anche fino al tramonto.
        - przy_mokradlach: Jaromir abitava nella capanna vicino alle paludi, la stessa che aveva costruito nonno Maciek – sulle fondamenta di pietra che in mezzo secolo né l’acqua né il gelo avevano scalfito. Il padre vi aveva aggiunto una seconda stanza e un fienile. Sotto la finestra cresceva un melo, piantato il giorno in cui era nato il figlio, e dal lato di settentrione stavano dei susini selvatici, che spesso lasciavano cadere frutti piccoli, verdi e acerbi. Oltre il basso steccato si stendevano i prati su cui passeggiavano le cicogne, e al crepuscolo dagli stagni saliva un concerto di rane così fragoroso da coprire perfino i grilli.
        - else: Jaromir abitava nella capanna sul lago, la stessa che aveva costruito nonno Maciek. Il padre vi aveva aggiunto una seconda stanza e un fienile. Sotto la finestra cresceva un melo, piantato il giorno in cui era nato il figlio, e dal lato di settentrione stavano dei susini selvatici, che spesso lasciavano cadere frutti piccoli, verdi e acerbi. Dalla soglia all’acqua c’erano appena poche decine di passi, e d’estate il bambino li percorreva di corsa tante volte al giorno che nell’erba si era tracciato un sentiero tutto suo.
    }
}
Il padre, Dobrosław, era allora un uomo avanti negli anni, con la barba che ingrigiva e le mani screpolate dal lavoro. { figurka_u_staruchy: Parlava poco e rideva ancora meno. Quando la sera si sedeva sulla soglia, guardava a lungo verso le paludi, come se vi cercasse qualcosa con gli occhi. Al figlio voleva bene a modo suo – in silenzio, con una mano pesante sulla spalla e con il pezzo di carne migliore spinto nella sua scodella. | Gli piaceva scherzare, e la sera raccontava storie che aveva sentito da suo padre – di creature degli acquitrini e dell’erborista del lago. Jaromir le ascoltava col fiato sospeso, pur sapendo che erano soltanto favole. }
La madre, Agnieszka, era più giovane del marito di quindici anni buoni. Sapeva di pane e di fumo di stufa, cantava durante ogni lavoro e non riusciva mai a tenere il broncio a lungo.
{ figurka_u_staruchy && los_psa == oswojony:
    In un angolo della stanza, su uno sgabello, sedeva di solito nonna Marianna, curva e silenziosa. A volte accarezzava la testa del nipote e lo guardava come se vedesse in lui qualcun altro.
}
In casa il bambino ci stava poco. L’estate apparteneva a lui – tutta intera, dalle prime calure fino alla mietitura – e i suoi giorni erano quasi sempre uguali, eppure nessuno somigliava a quello prima. # dalej
-> poranek

= poranek
# tlo: poranek
Lo svegliavano il canto del gallo e una lama di luce che s’infilava dalla fessura dell’imposta e gli si posava sul viso come un nastro d’oro. Per un po’ restava ancora sotto il piumino, ascoltando la madre che si affaccendava accanto alla stufa – l’acqua che borbottava nelle pentole, il fuoco ravvivato che scoppiettava sotto la piastra, le assi che scricchiolavano sotto i suoi passi. Dalla stanza arrivava odore di latte e di pane appena sfornato.
Poi si ricordava che era estate e balzava giù dal letto come se si fosse scottato.
Faceva colazione quasi in piedi. Una fetta spessa spalmata di burro, una tazza di latte appena munto, ancora tiepido, a volte un po’ di formaggio bianco. La madre scuoteva la testa sorridendo.
– Siediti, figliolo. Nessuno te lo porta via. La giornata per giocare con gli altri ragazzi non ti mancherà.
# pytanie: Che cosa farà Jaromir?
*   [Sedersi e mangiare con calma, come chiede la madre.]
    Sospirava e si sedeva sull’orlo della panca, e in premio riceveva un bacio sulla fronte e un cucchiaio di miele sul pane. Mangiava in fretta, ma fino all’ultima briciola, e quando la tazza era vuota gridava soltanto: – Vado dai vicini! – e se n’era già andato. # pokaz: jaromir
    -> poranek_dalej
*   [Afferrare la fetta e correre fuori.]
    -> poranek_bieg

= poranek_bieg
Ma lui già si puliva la bocca con la manica ed era alla porta. Prima che la madre facesse in tempo a dirgli di stare attento, gridava soltanto: – Vado dai vicini! – e già sfrecciava per il cortile, mettendo in fuga le galline, che scappavano chiocciando da sotto i suoi piedi. # pokaz: jaromir
-> poranek_dalej

= poranek_dalej
All’alba l’erba era bagnata di rugiada e fredda, e le scarpe gli si inzuppavano presto. Aveva il profumo che ha solo a quell’ora – fresco, verde, un po’ come un cetriolo tagliato a metà. Sui prati pendevano ancora brandelli di nebbia, ma il sole li stava già disperdendo, e in ogni goccia sui fili d’erba si accendeva una scintilla minuscola. Le allodole si levavano in cielo e cantavano così in alto che non c’era verso di scorgerle.
Da quelli di Staś lo aspettavano già. Franek, il maggiore dei nipoti del capofamiglia, era un ragazzone che aveva quattro anni più di Jaromir. Suo fratello Antek, più giovane di lui di due inverni, frugava la terra con un bastoncino, scavando un solco per portare l’acqua da una pozzanghera all’altra. Dopo un po’ dalla parte del lago arrivava di corsa Hanka, la figlia del fabbro, con la treccia che le saltellava sulla schiena. # pokaz: dzieci
– Che facciamo oggi? – chiedeva Franek, benché tutti sapessero che avrebbe deciso comunque lui. # dalej
-> wojna

= wojna
# tlo: laka_bitwa
Il più delle volte si cominciava con la guerra.
Ognuno aveva la sua spada – un bastone scortecciato di nocciolo o di salice, con la punta aguzza. Jaromir la portava infilata nella cintura, e quando doveva separarsene la rimetteva sempre al suo posto: nell’angolo del fienile. In tutto il villaggio non c’era arma più diritta – liscia per il continuo maneggiarla e scura del sudore delle mani. { figurka_u_staruchy: Il padre, senza una parola, l’aveva aiutato ad affilarla, una sera sulla soglia. | Il padre l’aveva aiutato a intagliarla, ridendo che con quella in mano sembrava un cavaliere da stampa di fiera, e che con un’arma simile si sarebbe potuto sconfiggere perfino un drago. }
Il nemico erano le erbacce. Sulle prode e lungo i fossi ne crescevano eserciti sterminati: peucedani di collina con ombrelle grandi come piatti, cardi irti di teste violette e ortiche alte fino alle orecchie. I bambini irrompevano nei prati con un grido che faceva levare in volo i passeri. I bastoni fischiavano nell’aria, gli steli si spezzavano con uno schiocco succoso e le teste spinose volavano tutt’intorno. # pokaz: bitwa
Dopo ogni battaglia veniva il tempo di curare le ferite. Non di rado erano ginocchia sbucciate a sangue, polpacci coperti di bolle per le punture delle ortiche, avambracci e mani graffiati. Hanka aveva un rimedio per tutto: sulle bruciature metteva foglie di piantaggine e ordinava di tenerle finché non smettevano di pizzicare. Nessuno piangeva – be’, forse Antek qualche volta, ma solo un pochino, e subito dopo fingeva che fosse il sudore a colargli negli occhi.
Poi si buttavano nell’erba, ansanti e felici, e restavano sdraiati sulla schiena a braccia spalancate. Sopra di loro scorrevano nuvole bianche, nelle quali ciascuno leggeva qualcosa di diverso – un cavallo, una nave, una vecchia con la scopa, un orso. C’era odore di terra calda, di camomilla e d’erba pestata. Lì vicino ronzava un bombo, e le cavallette schizzavano via da sotto le mani come scintille da un falò. # dalej
-> luki

= luki
# tlo: luki
Quando le spade li avevano stufati, arrivava l’ora degli archi.
~ ekwipunek += nozyk
I migliori erano di nocciolo, che cresceva fitto al margine della foresta – diritto, flessibile e robusto. Franek ne sceglieva un ramo della lunghezza giusta – pari alla sua statura – e Jaromir lo sgrossava col coltellino che il padre gli aveva regalato per l’onomastico. Bisognava badare a non togliere troppo legno in un punto solo, altrimenti l’arco si spezzava alla prima tesa. Per corda si usava uno spago grosso, sottratto dal cesto della madre, oppure – nei giorni fortunati – un pezzo di refe impeciato da calzolaio.
Anche le frecce le facevano di nocciolo, ma molto più sottile. Punte non ce n’erano – in compenso la cima la aguzzavano tanto da farla pungere come una spina, e all’altro capo – impennaggi di carta o di piume raccolte nei cortili di tutto il villaggio.
Il bersaglio era un covone di paglia piantato sulla proda, con un cerchio dipinto di fuliggine. La corda ronzava accanto all’orecchio come una vespa, la freccia sibilava breve, e poi si sentiva un sordo «toc», quando la punta aguzza si conficcava nella paglia. I tiri andavano abbastanza diritti, finivano per terra o sul bersaglio, e a volte veleggiavano alti nel cielo. La più brava era Hanka. Socchiudeva un occhio, metteva fuori la punta della lingua e non sbagliava un colpo – e i ragazzi, anche se per nulla al mondo l’avrebbero ammesso, la ammiravano per questo più che per qualunque altra cosa. # pokaz: hanka
# pytanie: Jaromir sfiderà Hanka?
*   [Sì – sfidarla a una gara.]
    ~ celny_strzal = true
    Perdeva, s’intende. Hanka colpiva senza mai mancare, e le frecce di lui cadevano per lo più nel grano. Ma il giorno dopo arrivava sulla proda ancora prima di lei e si esercitava finché le dita gli si intorpidivano.
    -> luki_dalej
*   [No – esercitarsi da solo, lontano dagli altri.]
    Se ne andava in fondo alla proda e tirava contro un vecchio ceppo finché gli doleva la spalla. Nessuno vedeva quante volte sbagliava, ed era meglio così.
    -> luki_dalej

= luki_dalej
Una volta Jaromir colpì il centro esatto del cerchio. Per il resto della giornata andò in giro così fiero che si dimenticò perfino del pranzo, e la madre dovette chiamarlo molte volte. # pokaz: trafienie # dalej
-> lato_baza

= lato_baza
# tlo: baza
Il luogo più importante del mondo, però, era il rifugio.
Stava – o meglio pendeva – tra le fronde del vecchio sambuco che cresceva al margine del prato, così ampio che alla sua ombra avrebbero potuto ripararsi parecchie mucche. Il rifugio l’avevano costruito nel corso di una lunga estate. Le assi le recuperavano dove capitava: da un porcile crollato, da uno steccato che più nessuno riparava, {figurka_u_staruchy:dal fienile di Staś, che scuoteva la testa ma non lo proibiva|dal fienile del padre di Jaromir, che fingeva di non vedere niente}. Le inchiodavano con chiodi raddrizzati battendoli tra due sassi, e dove i chiodi mancavano le legavano con lo spago. In cima si saliva per una scaletta di pioli legati al tronco. Lassù c’era sempre odore di legno caldo e di fiori di sambuco, così dolce che dopo un’ora girava la testa. Dalle fessure tra le assi entravano sottili raggi di sole in cui danzava la polvere, e quando tirava vento tutta la chioma ondeggiava e scricchiolava, come se il rifugio fosse una barca sull’acqua agitata.
Dentro ci stavano in cinque, se si sedevano stretti – in quattro, quindi, erano proprio comodi. Lì avevano tutto ciò che serve: la cassetta dei tesori, con sassolini colorati, penne e conchiglie, e in caso di assalto – una faretra con le frecce, un arco e le «spade».
# pytanie: Che cosa metterà Jaromir nella cassetta dei tesori?
*   [Una conchiglia del lago, bianca come il latte.]
    ~ skarb_jaromira = muszelka
    La avvolse in una foglia di bardana e la nascose proprio in fondo.
    -> baza_dalej
*   [Una penna di ghiandaia, azzurra come il cielo dopo un temporale.]
    ~ skarb_jaromira = pioro
    La posò in cima, perché brillasse appena si sollevava il coperchio.
    -> baza_dalej
*   [Un chiodo arrugginito che – a sentir lui – era caduto un tempo da una vera armatura di cavaliere.]
    ~ skarb_jaromira = gwozdz
    Lo avvolse in una pezzuola come una reliquia. Franek scoppiò a ridere, ma Antek guardava il chiodo con rispetto.
    -> baza_dalej

= baza_dalej
Il momento più bello era quando diluviava. Il temporale estivo arrivava all’improvviso, come un argine scuro da dietro la foresta, e prima che i bambini facessero in tempo a raggiungere le case cadevano le prime gocce pesanti. Allora si arrampicavano nel rifugio e se ne stavano rannicchiati sotto il tetto di assi, dal quale un po’ gocciolava comunque. Le foglie stormivano come il mare, che nessuno di loro aveva mai visto, i tuoni rotolavano sopra il villaggio, e l’aria sapeva di pioggia, di legno bagnato e di sambuco in fiore. Dopo la tempesta il prato fumava, e nel cielo si levava l’arcobaleno. # pokaz: burza # dalej
-> lato_jezioro

= lato_jezioro
# tlo: jezioro_lato
Quando il sole saliva allo zenit e sui campi la calura cominciava a tremolare, tutta la combriccola correva al lago. Facevano a gara attraverso il prato, togliendosi le camicie per strada, e si gettavano in acqua strillando, tra spruzzi che volavano fino al cielo. Vicino alla riva il fondale era basso e sabbioso, l’acqua tiepida di sole come in un mastello, e i pesciolini solleticavano i piedi. Franek si dava arie tuffandosi di testa da un tronco caduto, mentre Antek sedeva nell’acqua bassa ad acchiappare girini con le mani. C’era odore di giunchi e di fango caldo, e sull’acqua saettavano le libellule. # pokaz: kapiel
{ figurka_u_staruchy: Jaromir non entrava mai più in là di dove l’acqua gli arrivava alla cintola. Il padre glielo aveva proibito una volta sola, brevemente e con tale severità che il ragazzo non aveva osato chiedere perché. Con altrettanta fermezza gli aveva vietato di avvicinarsi alle paludi e ai canneti sulla sponda occidentale, dove a quanto pareva un tempo sorgeva una capanna. | Sulla riva occidentale, tra le canne, spuntavano ancora da terra i neri monconi di tronchi carbonizzati. I bambini se ne servivano per spaventarsi a vicenda, raccontandosi la storia dell’erborista bruciata – la stessa che la sera narrava il padre di Jaromir – ma in pieno sole nessuno aveva paura. }
{ figurka_u_staruchy:
    Quel giorno Franek nuotò fino all’acqua profonda e gridò a Jaromir di raggiungerlo.
    # pytanie: Jaromir darà retta al padre?
    *   [Restare vicino alla riva.]
        Scosse la testa e non si mosse dall’acqua bassa. Da lontano gli arrivò un «Fifone!», ma poco dopo tutti se ne scordarono e continuarono a sguazzare.
        -> jezioro_dalej
    *   [Nuotare fino a Franek.]
        ~ odwaga_jaromira = true
        Fece un passo, poi un altro. L’acqua gli arrivò al petto e di colpo si fece gelida, e qualcosa di viscido gli strisciò contro il polpaccio. Si ritrasse così in fretta che bevve. Non lo disse a nessuno – e men che meno al padre.
        -> jezioro_dalej
- else:
    Quel giorno Franek scommise che nessuno avrebbe avuto il coraggio di toccare i tronchi carbonizzati.
    # pytanie: Jaromir accetterà la scommessa?
    *   [Toccarli – non è mica un fifone.]
        ~ odwaga_jaromira = true
        Si aprì un varco tra le canne e posò la mano sul più alto. Il legno era freddo, benché il sole picchiasse dal mattino, e il ragazzo ritrasse la mano più in fretta di quanto avesse voluto. Tutti la giudicarono la prodezza più grande di quell’estate.
        -> jezioro_dalej
    *   [Restare con gli altri sulla sabbia.]
        Alzò le spalle e non si mosse. Franek andò da solo, sfiorò il legno nero con la punta di un dito e tornò di corsa, fingendo di non avere nessuna fretta.
        -> jezioro_dalej
}

= jezioro_dalej
Dopo il bagno si asciugavano sull’erba, sdraiati a pancia in giù, e mangiavano ciò che offriva la foresta: fragoline, mirtilli che annerivano denti e lingue, e foglie aspre di acetosa masticate per rinfrescarsi. A volte qualcuno portava da casa un cetriolo o un pezzo di formaggio e lo dividevano con giustizia, in tante parti quante erano le bocche. Nel frutteto dei Wójcik maturavano le ciliegie, e il contadino, dopo pranzo, dormiva così sodo da non sentire chi scuoteva i rami.
La calura si posava su ogni cosa come un caldo piumino. I grilli frinivano così forte da far credere che dal loro canto dipendesse se il sole sarebbe tramontato o no. Dalle andane che i contadini rivoltavano col rastrello veniva odore di fieno, e dalle prode spirava la dolcezza del timo serpillo e del trifoglio. Le api ronzavano nei tigli, le farfalle si posavano sui fiori, e il tempo scorreva così lento che la giornata sembrava non avere fine. # dalej
-> lato_wieczor

= lato_wieczor
# tlo: wieczor_lato
Eppure finiva sempre. Il sole scivolava dietro il lago, le ombre si allungavano sul prato fino a toccarne l’uno e l’altro capo, e il cielo sopra l’acqua prendeva il colore dei lamponi maturi. L’aria si rinfrescava e sapeva d’erba falciata e del fumo dei comignoli, e dalle paludi si facevano sentire le prime rane – prima una, poi decine, finché tutta la valle gracidava come un unico grande coro. Allora, da un cortile dopo l’altro, cominciavano a levarsi i richiami.
– Jaroooomir! A caaaasa! # pokaz: matka
# pytanie: Jaromir tornerà subito?
*   [Correre subito a casa.]
    La voce della madre si spandeva per tutto il villaggio. Il bambino non si faceva aspettare: salutava gli altri, si dava appuntamento per l’indomani – sempre per l’indomani, sempre presso il paletto di legno che segnava il limite del campo del padre, subito dopo colazione – e correva attraverso il prato, dove si accendevano le prime lucciole. # pokaz: jaromir
    -> wieczor_dalej
*   [Giocare ancora un po’.]
    -> wieczor_zwlekanie

= wieczor_zwlekanie
La voce della madre si spandeva per tutto il villaggio. Il bambino faceva finta di non sentire, finché la madre non chiamava una seconda volta – e alla terza nella sua voce compariva una nota che non prometteva niente di buono. Allora salutava gli altri, si dava appuntamento per l’indomani – sempre per l’indomani, sempre presso il paletto di legno che segnava il limite del campo del padre, subito dopo colazione – e correva attraverso il prato, dove si accendevano le prime lucciole. # pokaz: jaromir
-> wieczor_dalej

= wieczor_dalej
Tornava sporco, con l’erba nei capelli, la terra sotto le unghie e le ginocchia piene di croste. La madre sospirava, lo prendeva per un orecchio e lo portava al mastello dell’acqua, poi gli metteva davanti una scodella di uova strapazzate o latte cagliato con le patate.
{ figurka_u_staruchy:
    Il padre sedeva di fronte e taceva. Quando aveva finito, faceva sempre la stessa cosa: si alzava, controllava che la porta fosse ben sprangata, e solo allora andava a dormire.
    { los_psa == oswojony:
        Nonna Marianna allora si alzava dallo sgabello, tracciava una piccola croce sulla fronte del nipote e sussurrava qualcosa che il bambino non capiva.
    }
- else:
    Il padre, se la sera era tiepida, portava la panca fuori dalla capanna e raccontava. Di nonno Maciek, sceso a Zapadlina con la sola ascia, della creatura degli acquitrini, della voce che chiamava dall’acqua. Jaromir di solito cominciava ad appisolarsi a metà, con la testa sulle ginocchia del padre, e non sentiva mai la fine.
}
Poi restava disteso sul pagliericcio sotto la finestra ad ascoltare la notte. Le rane gracidavano negli stagni, nella stalla sbuffò un cavallo, da qualche parte lontano abbaiò un cane. Dalla fessura dell’imposta si vedevano le stelle – fitte come la rugiada su un prato.
Si addormentava sorridendo, pensando che l’indomani lo aspettava di nuovo una calda giornata d’estate, piena di giochi dall’alba al tramonto. # dalej
-> zloty_dzien

= zloty_dzien
# tlo: zapadlina_lato
Di giorni così ce ne furono a non finire. Più tardi, nel ricordo, gli si fondevano in un’unica, lunga striscia dorata, che profumava di fieno e di terra calda, piena di sole, di risate e del ronzio delle api. L’estate passava, e Jaromir cresceva – arrivava sempre più in alto sui rami del sambuco, la sua freccia volava sempre più lontano, e sempre più di rado gli serviva la scaletta per salire nel rifugio. # dalej
-> rozdzial_pierwszy_ciag_dalszy


// Koniec rozdziału pierwszego – dalej rozdział drugi.
=== rozdzial_pierwszy_ciag_dalszy ===
# ozdobnik
_Fine del capitolo primo._ # dalej
-> rozdzial_drugi
