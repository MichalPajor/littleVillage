// ------------------------------------------------------------
//  Rozdział czwarty – Marzanna. Przedwiośnie, Jaromir ma dziesięć
//  lat. Topienie Marzanny (coś wciąga kukłę pod wodę), prawda
//  o nocy z prologu, przewrócona kapliczka, ludzie Urbaniaka.
//  Prawda zależy od zakończenia prologu:
//    figurka_u_staruchy i pies   – umierająca babka Marianna;
//    figurka_u_staruchy bez psa  – ojciec, który przeżył pod podłogą;
//    inaczej                     – ojciec, który kiedyś się z tego śmiał.
// ------------------------------------------------------------

=== rozdzial_czwarty ===
# tlo: stodola_marzanna
# rozdzial: Capitolo quarto
# tytul: Marzanna
A marzo i tetti presero finalmente a gocciolare, per i campi corsero rigagnoli fangosi, e di notte il ghiaccio sul lago scricchiolava e gemeva tanto che i cani ululavano nelle aie. Le paludi si svegliarono per prime – l’acqua nera sfondava la neve, all’alba ne saliva un vapore, e dagli stagni presso la passerella tornava a giungere il gorgoglio che per lunghi mesi non si era più sentito.
La quinta domenica di Quaresima i bambini di tutta Zapadlina si radunavano per annegare Marzanna, il fantoccio di paglia dell’inverno. Si faceva così da sempre: chi portava l’inverno fuori dal villaggio e lo gettava in acqua richiamava la primavera e scacciava le malattie, la fame e ogni sventura.
Prepararono il fantoccio nel fienile di quelli di Staś. Franek, che da Natale non andava più a scuola e aiutava il nonno nei campi, attorcigliò la paglia a formare un busto e lo legò a un bastone. Antek portò dei vecchi stracci della madre – una gonna e uno scialle – e Jaromir conficcò nella testa del fantoccio due pezzetti di carbone al posto degli occhi e con la fuliggine gli disegnò la bocca. Hanka infilò su un filo dei gusci d’uovo, perché Marzanna avesse una collana. Il fantoccio faceva paura – ed era proprio questo lo scopo. # pokaz: kukla
La bambina portò la mano alla treccia e cominciò a sciogliere il nastro rosso.
– Le do il mio – disse. – Che si porti via tutto ciò che è cattivo.
{ poszedl_po_wstazke:
    Jaromir si ricordò del vecchio dal cappello di muschio e del rosso che gli sventolava nella mano.
- else:
    Jaromir si ricordò della mattina in cui quello stesso nastro pendeva dal loro steccato, annodato a fiocco da una mano che nessuno aveva visto.
}
# pytanie: Hanka darà il suo nastro a Marzanna?
*   [Lasciare che Hanka leghi il nastro.]
    ~ wstazka_marzanny = true
    Hanka annodò il nastro al collo di paglia del fantoccio e si scostò per guardarlo. Il rosso sulla paglia grigia sembrava una ferita. # pokaz: wstazka # dalej
    -> topienie
*   [Convincerla a non darlo.]
    – Non farlo – la pregò Jaromir. – È già tornato una volta dalla foresta.
    Hanka lo guardò in modo strano, ma ripose il nastro nella tasca del grembiule. Il fantoccio rimase grigio, e soltanto la collana di gusci tintinnava piano quando qualcuno lo toccava. # dalej
    -> topienie

= topienie
# tlo: rozlewisko
Si misero in cammino nel pomeriggio. In testa Franek portava Marzanna sul bastone, ben in alto, perché tutti la vedessero; dietro di lui venivano i bambini di tutto il villaggio, e in coda alcune comari che facevano finta di andare solo a guardare. Cantavano a pieni polmoni:
«Marzanna, Marzanna, donzella invernale,
va’ nell’acqua profonda e non ci ritornare!»
La neve sciaguattava sotto i calzari di corteccia, e nell’aria, per la prima volta da mesi, c’era odore di terra bagnata.
Lungo la strada, a ogni momento, qualcuno strappava la paglia al fantoccio o lo frustava con una verga, perché così si doveva – l’inverno non poteva andarsene in pace.
Giunsero allo stagno presso la passerella. Lì il ghiaccio si era sciolto quasi del tutto, solo lungo le rive resisteva una crosta grigia e bucherellata, e nel mezzo stava l’acqua nera, liscia come vetro. Hanka si aggrappò alla manica di Jaromir con le dita gelide, e lui sentiva il cuore battergli fin nella gola. Franek prese lo slancio e con tutta la forza scagliò Marzanna lontano davanti a sé. # pokaz: rzut
Il fantoccio schioccò sullo specchio d’acqua e ondeggiò. Per un momento restò a galla, con la gonna aperta intorno come un fiore. D’un tratto, con un solo movimento, andò sotto. Non come affonda una cosa che si è inzuppata. Come se qualcuno l’avesse strattonato da sotto. # pokaz: tonie
I bambini ammutolirono. Nel punto in cui era scomparso scoppiarono alcune bolle grandi e pigre, e si allargarono dei cerchi.
– Adesso via di corsa – sussurrò Hanka. – E non voltarsi!
{ ekwipunek ? ksiega:
    Anche Jaromir lo sapeva. Nel libro del maestro Ignacy aveva letto che chi si volta a guardare la Marzanna annegata, la malattia lo raggiunge ancora prima di Pasqua.
- else:
    – Chi si volta, la malattia lo raggiunge ancora prima di Pasqua – aggiunse una delle comari.
}
Tutti si diedero alla fuga. Alle spalle di Jaromir si udì un tonfo – forte, pesante, come se dall’acqua stesse emergendo qualcosa di grosso. # pokaz: ucieczka
# pytanie: Che cosa farà Jaromir?
*   [Voltarsi.]
    ~ obejrzal_sie = true
    Si voltò. Solo per un istante.
    Vicino alla passerella, nell’acqua nera, qualcosa teneva Marzanna – una mano grigia terminante in artigli, incrostata di alghe. Sopra la superficie, più in alto di dove sarebbe arrivato un uomo fatto, ardevano due occhi, verdastri e torbidi come le lucine sopra l’acquitrino.{ wstazka_marzanny: Le unghie adunche avvolgevano lentamente il nastro rosso.} Poi il braccio si ritrasse e l’acqua si richiuse senza lasciare traccia. # pokaz: reka
    Quella notte a Jaromir venne la febbre. Rimase a letto tre giorni, e la madre gli posava sulla fronte pezze bagnate e non riusciva a capire perché nel delirio invocasse l’edicola presso la passerella. # dalej
    -> prawda
*   [Continuare a correre senza voltarsi.]
    Non si voltò. Corse stringendo la mano di Hanka fino ai primi steccati, e dietro di loro, dalla parte delle paludi, si levava una risatina sommessa – come quella di chi ha appena ricevuto un dono. Sopra l’acquitrino si accesero alcuni pallidi fuochi fatui. – Sono quelli che hanno bruciato la strega – ansimò una delle comari. – Chi va dietro a un fuoco così non torna più. # pokaz: chichot
    ~ zapiski += ogniki_1
    { wstazka_marzanny:
        Il giorno dopo Hanka andava in giro con la treccia sciolta e ogni tanto ci portava la mano, come se cercasse qualcosa. # dalej
    - else:
        Per molto tempo nessuno dei due disse una parola. # dalej
    }
    -> prawda

= prawda
{ figurka_u_staruchy && los_psa == oswojony: -> prawda_babki }
{ figurka_u_staruchy: -> prawda_ojca_sieroty }
-> prawda_ojca

= prawda_babki
# tlo: babka_lozko
Quella primavera nonna Marianna non si alzò più. Dalla Candelora giaceva nel letto dietro la stufa, sempre più minuta e leggera, come se la terra se la riprendesse un pezzo alla volta. Quando seppe di Marzanna, fece chiamare il nipote.
– Siediti – sussurrò. La mano con cui gli afferrò il polso era secca e fredda come una foglia. – Tuo padre non te lo dirà. Non ne è capace. Allora te lo dico io, finché posso ancora.
Gli raccontò tutto. {zona_wie:Di come nonno Maciek avesse trovato tra le macerie in riva al lago una statuina bruciacchiata e l’avesse venduta in città a una vecchietta incappucciata.|Di come nonno Maciek fosse tornato dalla città cambiato e non avesse voluto dire che cosa lo rodesse.} Della creatura che qualche notte dopo aveva sfondato la porta della loro capanna. Del cane che le si era avventato contro per primo, e dell’ascia che le era penetrata a fondo nella spalla. Di come il nonno fosse spirato sul pavimento di terra battuta con la testa sulle sue ginocchia, mentre il piccolo Dobrosław era rimasto tutta la notte sotto il tavolato, premendosi le mani sulle orecchie.
– Quello che c’era nell’acqua era lui – disse. – Non è morto. Quelli come lui non muoiono. Aspettano. Chi annega senza prete non va né in paradiso né all’inferno, ma resta nell’acqua. I vecchi dicevano che uno così tiene sul fondo le anime degli altri annegati sotto pentole di coccio capovolte e di notte le rovescia una dopo l’altra, badando ai suoi averi. E se una pentola si crepa, l’anima sale in superficie dentro una bolla.
La nonna indicò l’angolo dietro il letto. Sotto una vecchia giubba c’era un’ascia dal manico scuro e consumato. Sulla lama, benché lucidata a specchio, si vedevano ancora striature color ruggine. # pokaz: siekiera
{ krzesiwo_dziadka:
    ~ ekwipunek += krzesiwo
    ~ krzesiwo_od_babki = true
    – Era sua. La prenderai quando sarai grande. – Da sotto il cuscino tirò fuori un piccolo acciarino annerito. – Questo invece prendilo già adesso. {zona_wie:Stava nella cenere insieme a quella statuina. Il nonno non se n’è mai separato, fino alla fine.|Da dove venisse, non me l’ha mai detto. Ma non se n’è mai separato, fino alla fine.} # pokaz: krzesiwo
- else:
    – Era sua. La prenderai quando sarai grande.
}
– Promettimi una cosa – aggiunse dopo un poco. – Che non entrerai mai nel bosco. Non importa chi ti chiami.
-> obietnica

= prawda_ojca_sieroty
# tlo: prog_noc
{obejrzal_sie:Quando Jaromir si alzò dopo la febbre|Quando Jaromir tornò dallo stagno}, il padre non gli chiese nulla. Tacque per tutta la sera. Soltanto quando la madre si fu addormentata, prese il figlio per un braccio, lo condusse sulla soglia e gli sedette accanto nell’oscurità.
– Avevo la tua età – cominciò, e la voce gli si spezzava, rimasta muta per moltissimo tempo. – Forse meno.
Raccontò tutto. Della notte in cui qualcosa aveva sfondato la porta della loro capanna. Delle assi sopra la sua testa, tra cui filtrava la luna, delle grida – prima del padre, poi della madre – e di qualcosa di caldo che gli gocciolava sui capelli. Del fiutare proprio sopra di lui, rauco come quello di un cane davanti a una tana.
– Quello che c’era nell’acqua era lui – disse. – Per questo controllo il chiavistello. Ogni notte, da quasi sessant’anni.
– Promettimi una cosa – lo pregò. – Che non entrerai mai nel bosco. Non importa chi ti chiami.
-> obietnica

= prawda_ojca
# tlo: izba_wieczor
Il padre, quando seppe che cosa era successo allo stagno, non rise. Era la prima volta che Jaromir vedeva una storia sulla creatura non strappargli un sorriso.
– Tuo nonno mi raccontava le stesse cose – disse piano, rigirando la tazza tra le dita. – {obejrzal_sie:Della mano uscita dall’acqua.|Di qualcosa che tira sott’acqua, da sotto.} Della voce che chiama dagli acquitrini. Dell’erborista bruciata nella capanna sul lago.{ pregi_na_lydkach: Mi mostrava i segni sui polpacci, cinque per parte{ uratowal_andrzej: – e diceva che, se non fosse stato per il vecchio Andrzej con la sua pertica, non ci saremmo stati né lui né io}. Credevo che fossero morsi di sanguisughe.} Io ridevo. Pensavo che volesse spaventarmi, perché non andassi da solo vicino all’acqua. – Tacque a lungo. – E prima di morire mi strinse la mano e sussurrò: «Veglia sulle edicole, Dobruś. Non erano favole».
– Diceva anche che chi annega senza prete resta nell’acqua e laggiù tiene le anime degli altri annegati sotto pentole di coccio. Se una pentola si crepa, l’anima sale in superficie dentro una bolla. – Il padre posò la tazza. – Ti ricordi quelle bolle vicino alla passerella?
– Promettimi una cosa – lo pregò. – Che non entrerai mai nel bosco. Non importa chi ti chiami.
-> obietnica

= obietnica
# pytanie: Jaromir prometterà?
~ zapiski += (stwor_2, zielarka_2)
*   [Promettere.]
    ~ obietnica_bor = true
    – Lo prometto – disse Jaromir.
    { figurka_u_staruchy && los_psa == oswojony:
        Non sapeva ancora quanto gli sarebbe pesato, un giorno, mantenere quella parola.
        -> smierc_babki
    }
    Non sapeva ancora quanto gli sarebbe pesato, un giorno, mantenere quella parola. # dalej
    -> kapliczka
*   [Tacere.]
    Jaromir non rispose. Pensò a Hanka e al nastro rosso,{ poszedl_po_wstazke: al vecchio dal cappello di muschio,} alla voce che d’inverno lo aveva chiamato {figurka_u_staruchy:dalla nebbia sopra il campo|di tra gli alberi}, e non riuscì a tirar fuori quell’unica parola.
    { figurka_u_staruchy && los_psa == oswojony:
        La nonna lo guardò a lungo negli occhi, poi sospirò, come se si fosse aspettata proprio questo.
        -> smierc_babki
    }
    Il padre lo guardò a lungo negli occhi, poi annuì, come se si fosse aspettato proprio questo. # dalej
    -> kapliczka

= smierc_babki
Marianna morì pochi giorni dopo, il Giovedì santo. Aveva chiesto di essere sepolta accanto al marito, nel cimitero in città, e il padre esaudì la sua volontà, benché il viaggio con la bara sul carro richiedesse un giorno intero. # pokaz: swieca # dalej
-> kapliczka

= kapliczka
# tlo: kapliczka_przewrocona
Dopo Pasqua la terra cominciò ad asciugarsi, e sulle prode ingiallirono i primi botton d’oro. Un pomeriggio, tornando da scuola per il sentiero sotto il bosco, Jaromir e Antek{ ekwipunek ? szczeniak: insieme al cane {imie_psa}, che ormai seguiva Jaromir dappertutto,} videro che l’edicola al limitare della foresta giaceva nell’erba. Entrambi si fermarono di colpo, impietriti. Nel silenzio calato all’improvviso si sentivano soltanto le gocce che cadevano dai rami sul tettuccio riverso nel fango.
Era una delle più antiche di Zapadlina, eretta {figurka_u_staruchy:quando il padre era ancora bambino|quando il padre era ancora giovane}. Il palo di legno era stato strappato da terra insieme alle zolle, il tettuccio si era spezzato e giaceva qualche passo più in là, e il santino – grigio di piogge, il volto consumato da {figurka_u_staruchy:mezzo secolo|decine d’anni} – era piantato nel fango a faccia in giù. Tutt’intorno l’erba era smossa, come se qualcuno avesse trascinato l’edicola verso gli alberi e l’avesse abbandonata a metà strada.
{ ekwipunek ? kora:
    Alla base qualcuno aveva graffiato nel legno una spirale – uguale a quella sul pino accanto al sentiero. Jaromir non ebbe bisogno di tirar fuori dalla borsa il suo pezzo di corteccia per saperlo. # pokaz: spirala
}
{ ekwipunek ? szczeniak:
    {imie_psa} rizzò il pelo e ringhiava verso il bosco, indietreggiando sulle zampe irrigidite. # pokaz: pies
}
– Bisogna dirlo ai grandi – sussurrò Antek.
# pytanie: Che cosa faranno i ragazzi?
*   [Rimettere in piedi l’edicola con Antek, senza i grandi.]
    ~ kapliczka_podniesiona = true
    Il palo era pesante, bagnato e viscido di fango. Ci si puntarono contro in due, finché non si rizzò nella buca, ondeggiando come un ubriaco. Jaromir lo rincalzò con le pietre e pestò la terra con le scarpe, e Antek pulì il santino con la manica, lo rimise sotto il tettuccio e lo inchiodò di nuovo, battendo con un ciottolo piatto. # pokaz: podniesiona
    Quando ebbero finito, dalla parte del bosco soffiò un vento – freddo, benché la giornata fosse tiepida – e per un attimo tutti gli alberi al limitare della foresta stormirono insieme. Poi tornò la quiete. # pokaz: wiatr
    Il padre, quando lo seppe, andò a vedere l’edicola e tornò con un’espressione che Jaromir non seppe decifrare.
    – Avete fatto bene – disse soltanto. # dalej
    -> urbaniak
*   [Correre a chiamare i grandi.]
    Corsero al villaggio a perdifiato. Il padre e il vecchio Staś andarono quella sera stessa, con una lanterna e una vanga. Tornarono dopo mezzanotte, infangati e muti. # pokaz: latarnia
    L’edicola non era più dove l’avevano vista i ragazzi. La trovarono soltanto qualche decina di passi più in là, tra i primi abeti, piantata in terra a testa in giù. La rimisero al suo posto e la interrarono più a fondo di prima.
    – Qualcuno qui non le vuole, le edicole – borbottò Staś, quando credeva che nessuno lo sentisse. # dalej
    -> urbaniak

= urbaniak
# tlo: urbaniak
A maggio, quando le cicogne stavano già sul vecchio nido in cima al tetto della fucina, a Zapadlina arrivò un calesse. Ne scese un signore corpulento con un cappotto di città e il cappello, e dietro di lui due uomini con le asce e una lunga corda a nodi. Percorsero il margine del bosco per tutto il giorno – misuravano, annotavano qualcosa e ogni pochi passi incidevano segni bianchi sulla corteccia delle querce. # pokaz: znaki
Jaromir li guardava da dietro lo steccato. Ogni intaglio sembrava una ferita fresca.
– Il signor Urbaniak – disse il padre, quando il calesse fu ripartito. – Il padrone gli ha venduto il taglio del bosco. Ci sarà una segheria. # pokaz: odjazd
Quella notte, per la prima volta da anni, dal bosco giunse un ululato – lungo, strascicato, né di lupo né di cane. La gente chiudeva le imposte e si segnava di nascosto, e Jaromir giaceva al buio, con il piumino tirato fin sotto gli occhi, e ascoltava finché non tacque. # pokaz: noc # dalej
-> rozdzial_czwarty_ciag_dalszy


// Koniec rozdziału czwartego i darmowej części – dalej rozdział piąty, już w pełnej wersji.
=== rozdzial_czwarty_ciag_dalszy ===
# ozdobnik
_Fine del capitolo quarto._ # pelna_wersja # dalej
-> rozdzial_piaty
