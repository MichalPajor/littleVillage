// ------------------------------------------------------------
//  Rozdział dwunasty – Czuwanie przy zmarłym (strzyga). Wiosna i lato po
//  obławie (pierwsze kroki Marysi, wesele Antka z Jadwisią), w listopadzie
//  umiera stary Wójcik – urodzony z zębami. Czuwanie: sprawdzić zęby albo
//  nie ruszać. O północy zmarły wstaje: przewrócić go twarzą do deski
//  (gryzie Antka), sierp przy szyi (czarna krew, plotki) albo gromnica
//  (wypala się). Pogrzeb: po staremu za murem, po księdzowsku albo z makiem
//  Hanki z medalika. Po księdzowsku bez niczego strzyga wraca po trzech
//  nocach: rozkopać grób albo czuwać przy kołysce (umiera Wójcikowa).
//  W Wigilię na talerzu dla wędrowca zostaje garść mchu.
// ------------------------------------------------------------

=== rozdzial_dwunasty ===
# tlo: wiosna_orka
# rozdzial: Capitolo dodicesimo
# tytul: La veglia funebre
{ uklad_z_mamunami == dar_swietojanski:
    { ekwipunek ? szczenie_psa:
        Quella primavera il villaggio si buttò sul lavoro per rifarsi del lungo inverno appena passato. Dopo i geli metà dei frutteti non fiorì, ma la segale spuntò fitta e uniforme. Jaromir arava dall’alba al tramonto, e il cucciolo fulvo gli si aggrovigliava tra i piedi nei solchi e abbaiava alle cornacchie che si posavano sulle zolle appena rivoltate. # pokaz: szczenie
    - else:
        Quella primavera il villaggio si buttò sul lavoro per rifarsi del lungo inverno appena passato. Dopo i geli metà dei frutteti non fiorì, ma la segale spuntò fitta e uniforme. Jaromir arava dall’alba al tramonto.
    }
    La notte di San Giovanni, mentre i giovani accendevano i falò in riva al lago, Jaromir andò da solo sull’altra sponda, alle pietre piatte. Sulla più grande posò {sposob_na_odmienca == chrzest_odmienca:due pagnotte|una pagnotta} e una coroncina di ruta, come aveva promesso. Non si voltò indietro. Ma quando era già vicino alle canne, udì alle spalle un sommesso sciabordio, e poi qualcosa come un sospiro. # pokaz: noc # dalej
- else:
    { ekwipunek ? szczenie_psa:
        Quella primavera il villaggio si buttò sul lavoro per rifarsi del lungo inverno appena passato. Dopo i geli metà dei frutteti non fiorì, ma la segale spuntò fitta e uniforme. Jaromir arava dall’alba al tramonto, e il cucciolo fulvo gli si aggrovigliava tra i piedi nei solchi e abbaiava alle cornacchie che si posavano sulle zolle appena rivoltate. # pokaz: szczenie # dalej
    - else:
        Quella primavera il villaggio si buttò sul lavoro per rifarsi del lungo inverno appena passato. Dopo i geli metà dei frutteti non fiorì, ma la segale spuntò fitta e uniforme. Jaromir arava dall’alba al tramonto. # dalej
    }
}
-> lato_w_zapadlinie

= lato_w_zapadlinie
# tlo: lato_podworze
A luglio, mentre Jaromir falciava il prato dietro il fienile, Marysia mosse i primi passi – lasciò la gonna della madre, attraversò tutto il cortile barcollando come un gallo ubriaco e con uno strillo gli cadde tra le braccia. Hanka rise tanto che dovette sedersi sulla soglia. # pokaz: kroki
{ obietnica_antkowi && oblawa_wilk == wydal_wilka:Per tutta la primavera e l’estate Antek evitò la loro casa. Venne solo dopo la mietitura, col berretto in mano, e disse che sposava Jadwisia di Bukowiec e voleva Jaromir come compare d’anello. Del lupo bianco nessuno dei due fece parola.|Dopo la mietitura Antek annunciò che sposava Jadwisia di Bukowiec, e chiese subito a Jaromir di fargli da compare d’anello.} Jadwisia era una ragazza mite e lentigginosa, che rideva a ogni parola di Antek, anche quando lui non scherzava affatto. Alle nozze Antek ballò con Hanka e con Marysia in braccio, finché la piccola gli si addormentò sulla spalla.{ uklad_z_mamunami == oddane_lata: Una zia di Jadwisia osservò le tempie grigie di Jaromir e chiese sottovoce a Hanka se il marito fosse vedovo quando l’aveva sposata.}
Quell’estate la boscaglia giovane ai piedi del bosco avanzò di un’altra proda. Gli abetini spuntavano nella segale di quelli di Staś più fitti del gittaione; i bambini li strappavano ogni mattina, e il giorno dopo negli stessi punti ce n’erano di nuovi, già alti fino al ginocchio.
Il vecchio Wójcik si spegneva mese dopo mese. Da quella Pentecoste in cui le rusalke erano uscite dall’acqua, non parlava quasi più. La sera sedeva sul pontile e mormorava qualcosa all’acqua, finché la moglie non veniva a prenderlo. La Wójcik confidò a Hanka che a giugno, benché la nonna di Hanka avesse ammonito di non farlo, si era nascosta una notte tra le canne ad ascoltare le mamune che facevano il bucato. Su ogni sudario chiamavano il nome di qualcuno. Lei ne aveva udito uno solo. Non volle dire di chi, ma da allora non si staccava dal marito di un passo. # pokaz: wieczor # dalej
-> czuwanie_u_wojcikow

= czuwanie_u_wojcikow
# tlo: czuwanie_izba
Il vecchio Wójcik morì a novembre, la notte dopo la prima neve.
Al mattino, quando Jaromir uscì verso la stalla, la Wójcik lo aspettava già allo steccato – col fazzoletto nero in testa, gli occhi gonfi di pianto, il rosario stretto nel pugno.
– Jaromir, figlio mio – disse – vieni a vegliarlo stanotte. Nessuno vuole venire. In paese si chiacchiera… – s’interruppe.
Chiacchieravano, e parecchio. Che Wójcik era nato coi denti, come raccontava a suo tempo la madre di Staś, che aveva aiutato a quel parto sessant’anni prima. Che non si era mai ammalato, neppure negli inverni di fame. Che la moria risparmiava la sua stalla, quando dai vicini le mucche crepavano una dopo l’altra. E che il corpo, benché giacesse lì dall’alba, non si raffreddava affatto.
La sera nella casa dei Wójcik si radunarono alcuni uomini – Jaromir, Antek, il vecchio Staś, che si era ostinato a venire benché si reggesse a stento in piedi – e qualche donna per i canti. Lo specchio fu coperto con un telo, l’acqua dei mastelli versata oltre la soglia e la finestra socchiusa di un palmo, perché l’anima potesse uscire. Nella stanza c’era odore di cera, di lana umida e di qualcosa di dolciastro che dava la nausea.
Wójcik giaceva sull’asse contro la parete, nella camicia di lino da morto, con le mani giunte sul petto. Aveva le guance rosee come un uomo vivo. Le palpebre non volevano chiudersi e di sotto le ciglia baluginava il bianco degli occhi. E le labbra… le labbra si dischiudevano appena, come se qualcosa le spingesse da dentro. # pokaz: wargi
# pytanie: Che cosa farà Jaromir?
*   [Sollevare il labbro al morto e vedere che cosa c’è sotto.]
    ~ sprawdzil_zeby = true
    Jaromir si avvicinò all’asse e con cautela, con due dita, sollevò il labbro superiore del morto.
    Denti. Due file di denti – una dietro l’altra, minuti e aguzzi come quelli di un luccio. # pokaz: zeby
    Qualcuno dietro di lui gemette. Il vecchio Staś si fece tre volte il segno della croce, e le donne troncarono il canto a metà di una parola.
    – Due anime – sussurrò Staś. – Mia madre, Dio l’abbia in gloria, gli ha fatto da levatrice quando è nato. Diceva che il ragazzino aveva i denti come un luccetto, e che lei poi è stata in ginocchio fino al mattino, perché le pareva che… – s’interruppe. – Una se n’è andata a Dio. E l’altra… l’altra è ancora qui. # dalej
*   [Non toccare il morto – non sta bene.]
    – Lasciatelo stare – disse Jaromir, quando Antek allungò la mano verso il viso del morto. – Non sta bene.
    Antek ritrasse la mano. Le donne continuarono a cantare, gli uomini sedettero contro la parete e nessuno guardò più verso l’asse. Ma per tutta la sera Jaromir sentì che il morto li fissava di sotto le palpebre socchiuse. # pokaz: powieki # dalej
-   -> o_polnocy

= o_polnocy
# tlo: polnoc_strzyga
Verso mezzanotte le candele cominciarono a fumare. Le fiamme si fecero piccole e bruciavano bluastre come fuochi fatui sull’acquitrino. Le donne cantavano sempre più piano, finché tacquero del tutto.
Allora le dita del morto ebbero un fremito. # pokaz: palce
Prima uno, poi un altro. Le unghie raschiarono piano contro l’asse. Le palpebre si sollevarono lente, scoprendo occhi torbidi come quelli di un pesce morto. La bocca si spalancò di più e dalla gola uscì un suono – non una voce, ma un lungo sospiro sibilante, come di qualcuno tirato fuori da sotto il ghiaccio che prende il primo respiro.
Il vecchio Wójcik cominciò a sollevarsi. # pokaz: wstaje
Una delle donne gridò e si gettò verso la porta. Staś restò come murato, e Antek afferrò Jaromir per il braccio.
~ zapiski += strzyga_1
# pytanie: Che cosa farà Jaromir?
*   [Rovesciarlo a faccia in giù sull’asse.]
    ~ polnoc_strzygi = na_twarz
    – A faccia in giù! – gridò Staś. – Prima che s’alzi!
    Jaromir e Antek si gettarono sul morto. Era pesante come una pietra, eppure si dibatteva con una forza che non aveva avuto neppure da vivo. Mentre lo voltavano sulla pancia, girò di scatto la testa e affondò i denti nella mano di Antek. Antek urlò, ma non mollò la presa. # pokaz: twarz
    Lo tennero premuto con la faccia contro l’asse, in due, finché fuori dalla finestra non cantò il primo gallo. Il corpo si afflosciò e non si mosse più.
    Al mattino Hanka lavò la mano di Antek con l’acquavite e la fasciò con un telo. La ferita era superficiale, ma per tutto l’inverno non volle rimarginarsi. # dalej
*   [Accostargli un falcetto al collo.]
    ~ polnoc_strzygi = sierp_przy_szyi
    Alla parete, accanto alla porta, era appeso un falcetto. Jaromir lo strappò dal piolo e ne accostò la lama al collo del morto, proprio sotto il mento.
    Wójcik sussultò come se l’avessero scottato, e ricadde sull’asse. La lama gli incise la pelle – appena, poco più di un graffio – e dalla ferita uscì un filo di sangue. Nero e denso come pece. Nella stanza si sparse un odore di putrido. # pokaz: sierp
    Jaromir tenne il falcetto alla sua gola fino all’alba. Le mani gli si intorpidirono tanto che non sentiva più le dita.
    Al mattino mezzo villaggio sapeva già che dai Wójcik il morto aveva sanguinato. A mezzogiorno lo sapeva tutto. # dalej
*   { ekwipunek ? gromnica } [Accendere la candela della Candelora e mettergliela tra le mani.]
    ~ polnoc_strzygi = gromnica_w_dloniach
    Jaromir prese la candela della Candelora che Hanka gli aveva cacciato in mano mentre usciva di casa, la accese a uno dei ceri fumanti e la mise tra le mani del morto.
    La cera sfrigolò, come caduta su una lamiera rovente. Wójcik si fece immobile. Il viso gli cambiò per un istante – si addolcì, come se si fosse ricordato di qualcosa – e dalla bocca spalancata uscì un sussurro sommesso: # pokaz: gromnica
    – Kaśka…
    ~ ekwipunek -= gromnica
    Poi chiuse gli occhi e ricadde sull’asse. La candela gli arse tra le mani fino al mattino, finché si consumò del tutto. # dalej
-   -> pogrzeb_wojcika

= pogrzeb_wojcika
# tlo: cmentarz_bukowiec
Al mattino arrivò il prete da Bukowiec. Ascoltò tutto in silenzio, con le labbra sempre più serrate, e quando Staś cominciò a raccontare come un tempo si seppellivano quelli come Wójcik – a faccia in giù, con un falcetto sopra la gola, col papavero nella bara – lo interruppe a metà frase.
– In terra consacrata riti pagani non ce ne saranno – disse duro. – O lo seppellite da cristiano, o lo seppellite da soli. Fuori dal muro del cimitero. # pokaz: ksiadz
La Wójcik guardò Jaromir. Era la madrina di sua figlia, e per la seconda volta dal giorno prima gli chiedeva qualcosa – stavolta non a parole, ma con gli occhi.
# pytanie: Come seppelliranno Wójcik?
*   [Seppellirlo all’antica – fuori dal muro del cimitero.]
    ~ pochowek_wojcika = pochowany_za_murem
    Lo seppellirono in tre – Jaromir, Antek e Staś – fuori dal muro del cimitero di Bukowiec, al crocevia. A faccia in giù. Sopra la gola Jaromir piantò il falcetto, con la lama verso il collo, e nella bara la Wójcik in persona versò una manciata di semi di papavero, mormorando qualcosa tra sé. # pokaz: za_murem
    Il prete non venne. La gente della parrocchia li guardava da lontano come lebbrosi. Per tutta la strada del ritorno la vedova non disse una parola, ma quando si separarono davanti alla sua casa, afferrò la mano di Jaromir e la strinse forte.
    – Grazie, figliolo – sussurrò. – Adesso lui riposerà. E anch’io. # dalej
    -> spokojna_zima
*   [Seppellirlo come vuole il prete, in terra consacrata.]
    ~ pochowek_wojcika = pochowany_po_ksiedzowsku
    Lo seppellirono nel cimitero di Bukowiec, in terra consacrata, col viso rivolto al cielo e il rosario tra le mani. Il prete celebrò la messa, asperse la bara d’acqua santa, e la gente tornò a casa sollevata che tutto si fosse svolto come si deve. # pokaz: poswiecona
    Soltanto il vecchio Staś, mentre i becchini gettavano la terra, scosse la testa e disse piano, tra sé:
    – Lì sotto non ci resiste. # dalej
    -> trzecia_noc
*   { mak_w_medaliku } [Seppellirlo come vuole il prete – ma col papavero di Hanka nella bara.]
    ~ pochowek_wojcika = pochowany_z_makiem
    Mentre portavano fuori la bara dalla casa, Hanka si avvicinò e aprì la medaglietta che portava al collo da quell’estate della Signora del Mezzogiorno. Versò sul petto del morto i semi di papavero secchi – gli stessi che Jaromir un giorno le aveva posato sul palmo, seduto sullo steccato sotto la luna rossa.
    – Dormi – sussurrò. – Il papavero addormenta anche quelli come te. # pokaz: mak
    ~ mak_w_medaliku = false
    Wójcik riposò in terra consacrata, col viso rivolto al cielo, il rosario tra le dita e un pizzico di papavero sul petto. Ma sulla soglia dei Wójcik erano rimasti alcuni semi, e il prete li vide. Dopo il funerale chiamò Hanka in sagrestia. Lei ne uscì pallida e non disse a Jaromir che cosa aveva sentito – soltanto che fino a Pasqua non poteva accostarsi alla comunione. Le comari di Bukowiec si scostavano da lei sul banco. Hanka chiuse la medaglietta vuota e non la aprì mai più. # pokaz: poswiecona # dalej
    -> spokojna_zima

= spokojna_zima
# tlo: cmentarz_bukowiec
~ zapiski += strzyga_2
{ pochowek_wojcika == pochowany_za_murem:
    Dopo il funerale cadde la neve e rimase soffice fino a febbraio. Entro la primavera la tomba fuori dal muro del cimitero si coprì d’erba e nessuno, tranne la Wójcik, vi si recava. Lei veniva ogni domenica, da sola, e sedeva sulla pietra al crocevia – finché, d’inverno, non cadde malata. # pokaz: wdowa
- else:
    Dopo il funerale cadde la neve e rimase soffice fino a febbraio. Sulla tomba di Bukowiec la Wójcik accendeva ogni domenica un lumino, finché non si ammalò, e Hanka vi posò una coroncina di papaveri secchi. # pokaz: swieczka
}
Il vecchio Wójcik non si alzò più. Soltanto i cani, passando davanti alla sua casa, per lunghi mesi abbassavano la coda. # dalej
-> boze_narodzenie

= trzecia_noc
# tlo: strzyga_okno
La terza notte dopo il funerale, ancora prima di mezzanotte, Hanka sentì nel cortile lo scricchiolio della neve. Uscì prima che Jaromir facesse in tempo ad alzarsi, e tornò con la Wójcik. La vecchia aveva la pelliccia di montone gettata alla meglio sulle spalle nude e il rosario avvolto intorno alla mano così stretto che i grani le si conficcavano nella pelle.
– È tornato – singhiozzava. – Stava sotto la finestra. Premeva la faccia contro il vetro e mi chiamava per nome. Due notti mi ha chiamata. E stanotte… stanotte ha chiesto della piccola.
Hanka impallidì e d’istinto guardò la culla, dove dormiva Marysia. Poi, senza una parola, cominciò a preparare un giaciglio per la Wójcik sulla panca accanto alla stufa, ma la vecchia la afferrò per la mano.
– Se non mi trova a casa, verrà qui – sussurrò, e tornò fuori nella notte.
Quella notte Jaromir non chiuse occhio. Sedeva accanto alla culla con l’ascia{ siekiera_dziadka: del nonno} sulle ginocchia. Verso l’alba, poco prima del canto dei galli, udì un suono lieve, simile a un respiro proprio dietro il vetro. Alzò la testa. Sulla lastra, dall’esterno, era fiorita una macchia appannata. # pokaz: oddech
Fuori dalla finestra c’era il vecchio Wójcik. Nella camicia da morto impiastrata d’argilla, con gli occhi torbidi da pesce morto. Aveva la bocca spalancata e Jaromir vedeva le due file di denti, mentre giù per il mento gli colava un rivolo scuro. # pokaz: strzyga
Guardava la culla.
# pytanie: Che cosa farà Jaromir?
*   [Riaprire la sua tomba e seppellirlo all’antica.]
    ~ trzy_noce = rozkopany_grob
    -> rozkopany_grob_wojcika
*   [Vegliare accanto alla culla fino all’alba – che venga, se ne ha il coraggio.]
    ~ trzy_noce = czuwanie_przy_kolysce
    Jaromir si alzò, si mise tra la finestra e la culla e sollevò l’ascia. Wójcik lo guardò a lungo, senza battere ciglio. Poi sorrise – largo, tanto che tutti i denti balenarono nella luce grigia – e si allontanò dalla finestra. # pokaz: odszedl
    Da loro non venne mai più. Ma appena fece chiaro, Hanka corse dalla Wójcik – e tornò dopo il tempo di un paternostro, senza fazzoletto, con le mani premute sulla bocca. La vedova giaceva nella sua stanza, sul letto, con le mani giunte sul petto e il viso sereno. Sul collo aveva due piccoli fori rossi, come di lesina.
    ~ zapiski += strzyga_2
    La seppellirono accanto al marito. Stavolta all’antica – il prete, quando vide il suo collo, non protestò con una sola parola. # dalej
    -> boze_narodzenie

= rozkopany_grob_wojcika
# tlo: cmentarz_bukowiec
Quello stesso giorno, dopo il tramonto, Jaromir e Antek andarono con le pale al cimitero di Bukowiec. Riaprirono la tomba fresca, scoperchiarono la bara – Wójcik vi giaceva roseo e pieno, col sangue sulle labbra – e lo voltarono a faccia in giù. Sopra la gola piantarono il falcetto, e nella bara versarono i semi di papavero. Ricoprirono la fossa e tornarono prima dell’alba, senza scambiarsi una parola. # pokaz: rozkop
~ zapiski += strzyga_2
Wójcik non tornò più. Ma il prete, quando vide la tomba smossa di fresco, scagliò dal pulpito l’anatema contro «gli empi che hanno profanato una tomba», e per lunghi anni Jaromir sentì su di sé, in chiesa, gli sguardi della gente di Bukowiec. # dalej
-> boze_narodzenie

= boze_narodzenie
# tlo: wigilia_stol
~ zapiski += mamuny_3
~ zapiski += starzec_3
{ trzy_noce == czuwanie_przy_kolysce:
    La casa dei Wójcik rimase vuota per tutto l’inverno. Nessuno voleva comprarla e nemmeno guardarci dentro, e i bambini le giravano alla larga.
- else:
    Quell’inverno la Wójcik si ammalò di petto, ma arrivò alla primavera. Nella sua casa ogni notte ardeva una candela alla finestra che dava sul lago. # pokaz: swieca
}
{ ekwipunek ? szczenie_psa:
    Marysia diceva già qualche parola, e la più forte era «papà». Il cucciolo fulvo la seguiva dappertutto e dormiva sotto la culla, col naso contro le stecche. # pokaz: szczenie
- else:
    Marysia diceva già qualche parola, e la più forte era «papà».
}
Addormentandosi, a volte canticchiava tra sé qualche nota – su e giù, come acqua versata da una brocca all’altra. Quella melodia non la conosceva né Hanka, né la madre di Hanka.
La sera della Vigilia di Natale Hanka, come ogni anno, apparecchiò la tavola con un piatto in più – per il viandante smarrito – e vi posò la cialda di Natale. Non venne nessuno. Ma al mattino, quando sparecchiò, su quel piatto al posto della cialda c’era una manciata di muschio. Umido e verde come a maggio. # pokaz: mech # dalej
-> rozdzial_dwunasty_ciag_dalszy


// Koniec rozdziału dwunastego – dalej rozdział trzynasty.
=== rozdzial_dwunasty_ciag_dalszy ===
# ozdobnik
_Fine del capitolo dodicesimo._ # dalej
-> rozdzial_trzynasty
