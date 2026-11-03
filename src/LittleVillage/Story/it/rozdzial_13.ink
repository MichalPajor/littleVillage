// ------------------------------------------------------------
//  Rozdział trzynasty – Wspólny sen (figurka). Przednówek i roztopy po
//  zimie ze strzygą (Jaromir ma dwadzieścia dwa lata, Marysia półtora roku).
//  Figurka z prologu wraca: [starucha] przywozi ją wnuczka Jagna, [handlarz]
//  leży na jarmarku, [bez zgliszcz] Józek wygrzebuje ją z popiołu po chacie
//  zielarki, [bagno] wypływa z mokradeł. Odrzucona – i tak wraca do chałupy.
//  Dzieci śnią ten sam sen, ogniki podchodzą pod płoty; zaufać Jagnie albo nie.
//  W Wielki Czwartek Józek idzie we śnie na kładkę, gdzie czeka topielec:
//  siekiera (rozorany bark), figurka rzucona w wodę albo latarnia (płonie
//  kapliczka przy kładce). Potem: piec (figurka nie płonie), kapliczka albo
//  Jagna. W maju syn Antka, Franek; w czerwcu paliki pod drogę Urbaniaka.
// ------------------------------------------------------------

=== rozdzial_trzynasty ===
# tlo: przednowek
# rozdzial: Capitolo tredicesimo
# tytul: Il sogno condiviso
La neve rimase sui campi fino a metà marzo, grigia e compatta, e nelle case si mangiava già la pappa d’orzo scondita e si centellinavano a manciate le patate della fossa.{ polnoc_strzygi == na_twarz: La mano di Antek si rimarginò soltanto verso il periodo di magra – vi rimasero due semicerchi di piccole cicatrici bianche, che Jadwisia baciava quando credeva che nessuno la vedesse.} {trzy_noce == czuwanie_przy_kolysce:Nella casa dei Wójcik non andò ad abitare nessuno. In febbraio il tetto marcito sprofondò di notte sotto la neve, con un fragore che svegliò mezzo villaggio.|La Wójcik passò l’inverno a letto con la febbre, ma a marzo uscì davanti a casa appoggiata a un bastone, e la prima cosa che fece fu portare a Marysia una manciata di mele secche.}
{ ekwipunek ? szczenie_psa:
    Marysia compì un anno e mezzo. Correva per la stanza, cadeva, si rialzava e ripartiva di corsa, e le parole le acchiappava al volo. Durante l’inverno il cucciolo fulvo era diventato un giovane cane dalle zampe lunghe, che le stava dietro passo passo e ringhiava contro chiunque alzasse la voce con lei – perfino contro la madre. # pokaz: szczenie
- else:
    Marysia compì un anno e mezzo. Correva per la stanza, cadeva, si rialzava e ripartiva di corsa, e di parole ne conosceva già più di quante Hanka avesse fatto in tempo a insegnarle.
}
Il disgelo arrivò di colpo. In due giorni la neve si sciolse e corse via dai campi, e le paludi oltre la passerella si gonfiarono tanto che l’acqua arrivò fin sotto gli steccati. Per tre giorni il ghiaccio sul lago si spaccò con schianti secchi. La quarta notte, sopra le paludi, per la prima volta da anni si accesero delle lucine. # pokaz: ogniki # dalej
{ figurka_u_staruchy: -> figurka_od_jagny }
{ not przeszukal_zgliszcza: -> figurka_ze_zgliszcz }
{ figurka_w_bagnie: -> figurka_z_bagna }
-> figurka_na_jarmarku

= figurka_od_jagny
# tlo: jagna_izba
A metà marzo arrivò a Zapadlina su un carro una donna forestiera – magra, con uno scialle grigio, un occhio velato di bianco. Chiedeva del nipote di quel Maciek che anni addietro aveva costruito qui una capanna. La gente le indicò la casa di Jaromir.
– Mi chiamo Jagna – disse, quando si fu seduta sulla panca. – Mia nonna viveva in città, dietro la piazza del mercato. Prima di morire mi fece giurare che l’avrei restituita.
Tirò fuori dal cesto un involto avvolto in uno straccio nero e lo aprì sul tavolo. Una statuina di legno, bruciacchiata da un lato, con una ciocca di capelli canuti attorcigliata intorno al collo. {los_psa == oswojony && zona_wie:Jaromir non aveva mai visto la statuina, eppure la riconobbe subito – da ciò che un tempo gli aveva raccontato nonna Marianna.|Jaromir non aveva mai visto la statuina né ne aveva mai sentito parlare, eppure a vederla gli venne freddo, come se qualcuno avesse spalancato la porta sul gelo.} # pokaz: figurka
– Mia nonna la comprò da tuo nonno, al mercato – diceva Jagna sottovoce, senza alzare lo sguardo. – E ci fece qualcosa che ha pagato fino alla fine dei suoi giorni. Non so di preciso cosa – nella febbre farneticava di una bambola e dell’acqua. So solo che è morta male. E che le sue ultime parole furono: «Riportala là da dove è venuta».
# pytanie: Che cosa farà Jaromir?
*   [Prendere la statuina.]
    ~ ekwipunek += figurka
    Jaromir riavvolse la statuina nello straccio e la ripose nella cassa sotto il letto. Jagna tirò un lungo respiro, come se qualcuno le avesse tolto dalla schiena un sacco di pietre. Andando via disse che fino a Pentecoste sarebbe rimasta a Bukowiec dalla sorella e avrebbe venduto erbe al mercato. # dalej
*   [Mandarla via insieme alla statuina.]
    ~ odrzucil_figurke = true
    – Portatela via – disse Jaromir. – E non tornate più.
    Jagna lo guardò a lungo con l’occhio sano e riavvolse la statuina. Sull’uscio disse soltanto che fino a Pentecoste sarebbe stata a Bukowiec dalla sorella.
    ~ ekwipunek += figurka
    Ma al mattino, quando Hanka aprì la porta, la statuina era sulla soglia. Lo straccio era bagnato e puzzava di acquitrino. Jaromir nascose la statuina nella cassa prima che Marysia la vedesse. # pokaz: prog # dalej
-   -> wspolny_sen

= figurka_na_jarmarku
# tlo: jarmark
A metà marzo Jaromir andò alla fiera in città con i cucchiai che aveva intagliato durante l’inverno. Li vendette tutti prima di mezzogiorno e girava ancora tra le bancarelle, cercando per Marysia qualcosa per la sagra. All’ultimo banchetto, da un vecchio rigattiere, tra pentole incrinate e ferri di cavallo arrugginiti, c’era una statuina di legno – bruciacchiata da un lato, col volto consumato e reso liscio da dita altrui. # pokaz: figurka
Jaromir la prese in mano. Il legno era freddo e umido, benché la giornata fosse asciutta.
– Bella, eh? – sghignazzò il rigattiere. – Mio nonno la comprò da un contadino, quando era ancora giovane anche lui. Da allora nessuno l’ha voluta. Per te, un soldo.
# pytanie: Che cosa farà Jaromir?
*   [Comprare la statuina.]
    ~ ekwipunek += figurka
    Jaromir pagò, avvolse la statuina in un fazzoletto e se la infilò sotto la camicia. Per tutta la strada del ritorno la sentì contro il cuore come un pezzo di ghiaccio. A casa la mise nella cassa sotto il letto. # dalej
*   [Posarla e andarsene.]
    ~ odrzucil_figurke = true
    ~ ekwipunek += figurka
    Jaromir rimise la statuina sul banco e se ne andò senza voltarsi. Ma la sera, mentre staccava il cavallo davanti a casa, la statuina giaceva sul fondo del carro, tra i trucioli – là dove al mattino c’erano i cucchiai. La guardò a lungo prima di riporla nella cassa sotto il letto. # pokaz: woz # dalej
-   -> wspolny_sen

= figurka_ze_zgliszcz
# tlo: zgliszcza_kra
A metà marzo i ragazzi del villaggio andarono al lago a guardare i lastroni di ghiaccio che scendevano alla deriva. Tra loro c’era Józek, il pronipote più giovane del vecchio Staś – sette anni, rosso di capelli e curioso di tutto come una gazza. Il ghiaccio smosse i vecchi tronchi carbonizzati tra le canne, sul lato occidentale del lago, là dove un tempo sorgeva la capanna dell’erborista, e li spinse a riva. Józek frugò con un bastoncino nella cenere finché non ne cavò qualcosa di duro.
Corse da Jaromir con quella cosa, perché Jaromir intagliava i giocattoli più belli del villaggio e il ragazzo voleva vantarsi. Sul palmo del bambino c’era una statuina di legno, bruciacchiata da un lato. La fuliggine di cui era incrostata sporcava le dita come fosse fresca. # pokaz: figurka
# pytanie: Che cosa farà Jaromir?
*   [Prendergli la statuina.]
    ~ ekwipunek += figurka
    – Dalla a me – disse Jaromir. – In cambio ti intaglio un cavallo col carretto.
    Józek mise il broncio, ma alla fine acconsentì. Jaromir ripose la statuina nella cassa sotto il letto e si strofinò a lungo le mani nel mastello, benché fossero pulite. # dalej
*   [Lasciargliela tenere.]
    ~ jozek_mial_figurke = true
    Jaromir restituì la statuina al ragazzo, e Józek corse via con lei verso casa. Il giorno dopo venne da Jaromir la madre di Józek, pallida, con la statuina avvolta nel grembiule. Józek ci aveva dormito tutta la notte tenendola chiusa nel pugno e aveva parlato nel sonno con una voce non sua, e al mattino si era svegliato con i capelli bagnati, benché nessuno lo avesse lavato. # pokaz: matka
    – Prendila tu – disse. – Tu sei il nipote di Maciek. Tu sai che cos’è.
    ~ ekwipunek += figurka
    Jaromir ripose la statuina nella cassa sotto il letto. # dalej
-   -> wspolny_sen

= figurka_z_bagna
# tlo: kladka_naprawa
A metà marzo, quando l’acqua cominciò a calare, Jaromir andò con Antek a riparare la passerella sulle paludi, che la piena aveva portato via. Stava tirando fuori dal fango un vecchio palo, quando vide che qualcosa vi era rimasto attaccato – nero, incrostato di melma. Raschiò via il fango col coltello.
Una statuina di legno, bruciacchiata da un lato. In tanti anni l’acqua non ne aveva lavato via la fuliggine. Jaromir si ricordò di ciò che suo padre gli raccontava da bambino su nonno Maciek e sulla statuina che lui aveva perso nell’acquitrino, la prima primavera. # pokaz: figurka
# pytanie: Che cosa farà Jaromir?
*   [Prendere la statuina.]
    ~ ekwipunek += figurka
    Jaromir avvolse la statuina in uno straccio e se la infilò sotto la camicia. Antek lo guardava di sottecchi, ma non disse nulla. A casa Jaromir la ripose nella cassa sotto il letto. # dalej
*   [Ributtarla nell’acquitrino.]
    ~ odrzucil_figurke = true
    Jaromir prese lo slancio e scagliò la statuina il più lontano possibile, in una pozza nera tra i ciuffi d’erba. L’acquitrino la inghiottì senza un solo cerchio sull’acqua. # pokaz: plusk
    ~ ekwipunek += figurka
    Ma al mattino, quando Hanka aprì la porta, la statuina era sulla soglia – bagnata, coperta di lenticchie d’acqua, girata con la faccia verso la stanza. Jaromir la nascose nella cassa prima che Marysia la vedesse. # dalej
-   -> wspolny_sen

= wspolny_sen
# tlo: sen_kladka
~ zapiski += ogniki_2
{ not przeszukal_zgliszcza:Il primo a fare quel sogno fu Józek.|Il primo a fare quel sogno fu Józek, il pronipote più giovane del vecchio Staś.} Dopo di lui la figlia del mugnaio di Bukowiec, poi i gemelli dei Kowalczyk. Nel giro di una settimana le madri al pozzo non parlavano d’altro, perché ogni bambino sognava la stessa cosa: di stare di notte sulla passerella sopra le paludi, con le lucine che ammiccavano tutt’intorno, mentre sotto le assi, nell’acqua nera, qualcuno rovesciava pentole di coccio, una dopo l’altra, e guardava sotto ciascuna. E che quel qualcuno alla fine alzava la testa e chiedeva: «Dov’è la mia bambola?». # pokaz: glowa
{ not odrzucil_figurke && not jozek_mial_figurke:
    Dopo qualche notte lo stesso sogno venne a Jaromir – unico adulto del villaggio. Del resto solo lui aveva preso la statuina di sua spontanea volontà. Balzava su prima dell’alba con lo scroscio dell’acqua nelle orecchie e i piedi bagnati, benché dormisse sotto la coltre di piume.
}
Marysia si svegliava piangendo ogni notte{ skarb_dla_corki: e stringeva il pugnetto sul laccetto di cuoio con {skarb_jaromira == muszelka:la conchiglia|{skarb_jaromira == pioro:la penna di ghiandaia|il chiodo}}, che dall’inverno portava al collo}. Indicava la finestra col ditino e ripeteva parole che nessuno le aveva insegnato:
– Signore bagnato. Signore bagnato.
Notte dopo notte i fuochi fatui sopra le paludi ardevano più vicini. Prima solo oltre la passerella, poi sul prato, e alla fine stavano tra i giunchi subito dietro gli steccati – come gente che aspetta che qualcuno apra la porta. # pokaz: ognie
{ figurka_u_staruchy:
    La domenica Jagna venne a piedi da Bukowiec, da sola, e dalla soglia chiese se i bambini del villaggio sognassero.
- else:
    Quella stessa settimana Hanka comprò al mercato di Bukowiec dell’assenzio da un’erborista forestiera – una donna magra con uno scialle grigio, un occhio velato di bianco. Mentre le dava il resto, la donna afferrò all’improvviso Hanka per la mano e le annusò le dita.
    – Sento odore di cenere – sussurrò. – Cenere vecchia, che viene dall’acqua. Ce l’avete in casa, vero?
    { przeszukal_zgliszcza && not figurka_w_bagnie:
        – Mia nonna una volta voleva comprare una cosa così da un ragazzo, al mercato – aggiunse più piano. – Lui non gliela vendette. Fino alla morte non seppe a chi l’avesse data alla fine.
    }
    Disse che si chiamava Jagna e che sarebbe rimasta a Bukowiec fino a Pentecoste. Hanka la portò a casa quello stesso pomeriggio, senza chiedere il parere del marito.
}
{figurka_u_staruchy:– Parlale dei sogni – disse la moglie, prima che Jaromir facesse in tempo ad aprire bocca. – L’ha portata lei: che sappia che cosa ne è germogliato.|– Se hai nascosto qualcosa, non tenerglielo segreto – disse la moglie, prima che Jaromir facesse in tempo ad aprire bocca. – {odrzucil_figurke && figurka_w_bagnie:Ho visto che cosa è tornato sulla nostra soglia.|{jozek_mial_figurke:Ho visto che cosa ha portato la madre di Józek.|Ho visto come guardi sotto il letto.}}}
# pytanie: Che cosa farà Jaromir?
*   [{figurka_u_staruchy:Raccontare a Jagna dei sogni.|Mostrare a Jagna la statuina e raccontarle dei sogni.}]
    ~ zaufal_jagnie = true
    { figurka_u_staruchy:
        // Jagna przywiozła figurkę i wiedziała tylko, że babka bredziła o lalce i o wodzie – dopiero sny dzieci składają jej to w całość.
        Jaromir le raccontò della passerella, delle pentole rovesciate sul fondo delle paludi e della domanda che ogni bambino udiva nel sogno. Alla parola «bambola» Jagna impallidì.
        – Nella febbre la nonna parlava solo di una bambola e dell’acqua. Credevo che farneticasse – disse piano. – Le vecchie erboriste raccontavano di cose simili: si intagliano da una radice tirata fuori dall’acquitrino e si dà loro il nome di quello che ci abita. Lui va dietro a chi ha una bambola così. Ha dormito a lungo, e ora la bambola è tornata al lago e lo chiama. E i bambini lo sentono – hanno orecchie più fini delle nostre.
    - else:
        Jagna rigirò a lungo la statuina tra le dita, accostata alla finestra, perché anche l’occhio sano era debole.
        – È una bambola – disse alla fine. – La nonna me ne raccontava. L’erborista del lago l’ha intagliata da una radice tirata fuori dall’acquitrino e le ha dato il nome di quello che ci abita. Lui va dietro a chi ha la bambola. Finché giaceva {przeszukal_zgliszcza && not figurka_w_bagnie:lontana|intatta}, lui dormiva. Ora è tornata – e lo chiama. E i bambini lo sentono – hanno orecchie più fini delle nostre.
        Riavvolse la statuina nello straccio e la rese a Jaromir.
    }
    – Il fuoco non la prenderà, c’è già stata una volta. Può farla tacere soltanto la terra benedetta. {odrzucil_figurke:Oppure… – s’interruppe e scosse la testa. – No. A me non darà più ascolto. L’avete respinta, e lei è tornata da voi lo stesso. Ora è vostra.|{figurka_u_staruchy:La nonna mi disse di riportarla là da dove era venuta, e l’ho fatto. Non la riprenderò.|Oppure… – esitò – oppure datela a me. La porterò così lontano che lui non la sentirà.}} # dalej
*   [Non dirle nulla.]
    {figurka_u_staruchy:– I bambini dormono tranquilli – mentì Jaromir.|– Non so di che cosa parliate – rispose Jaromir.}
    Jagna annuì, come se si aspettasse proprio questo.
    – Quando i fuochi arriveranno alla soglia – disse – venite da me. Fino a Pentecoste sono a Bukowiec.
    Hanka l’accompagnò fin oltre lo steccato e rimase a lungo a bisbigliare con lei. Fino a sera non rivolse a Jaromir nemmeno una parola. # dalej
-   -> wielki_czwartek

= wielki_czwartek
# tlo: noc_kladka
{ not odrzucil_figurke && not jozek_mial_figurke:
    Nella notte del Giovedì santo il sogno venne a Jaromir come sempre – solo che questa volta sulla passerella, tra i fuochi fatui, c’era Józek. Jaromir balzò giù dal giaciglio prima di capire che non dormiva più. Afferrò l’ascia{ siekiera_dziadka: del nonno}, la lanterna e, dalla cassa, l’involto con la statuina. Non ebbe bisogno di chiedere a nessuno dove correre. # pokaz: jozek
    Oltre gli steccati, tra i giunchi, ammiccavano le lucine – e in mezzo a loro, verso la passerella, camminava una piccola figura chiara, scalza, con le braccia tese in avanti. Jaromir raggiunse la riva nel momento in cui il bambino si fermò a metà del passaggio. L’acqua sotto le assi ribollì, e ne emerse una mano grigia. Si strinse intorno alla caviglia di Józek.
- else:
    Nella notte del Giovedì santo Jaromir fu svegliato da un grido sulla strada: la madre di Józek correva da uno steccato all’altro con la lanterna e chiamava il figlio, di cui aveva trovato vuoto il giaciglio. Quando Jaromir si affacciò dall’andito, sulla soglia c’era una lucina pallida, così vicina che illuminava i nodi delle assi – e scivolò via nel buio appena lui la guardò. Afferrò l’ascia{ siekiera_dziadka: del nonno}, la lanterna e l’involto con la statuina – aveva paura di lasciarla in casa, vicino a Marysia. Prima corse con la madre di Józek al lago, e solo da lì vide che le lucine si erano ammassate tutte in un punto. # pokaz: jozek
    Quando arrivò, era quasi troppo tardi. La mano grigia aveva già trascinato giù il bambino – Józek era immerso fino alla vita nell’acqua nera e nel sonno si reggeva alla passerella con un braccio solo.
}
{ figurka_u_staruchy:
    La creatura emergeva lentamente – enorme, curva, con capelli come alghe bagnate e occhi che splendevano verdastri come legno marcio. Sul braccio aveva una cicatrice vecchia e profonda – il segno dell’ascia con cui, anni prima, l’aveva colpita nonno Maciek. Józek non gridava. Dormiva. # pokaz: stwor, blizna
- else:
    La creatura emergeva lentamente – enorme, curva, con capelli come alghe bagnate e occhi che splendevano verdastri come legno marcio. Józek non gridava. Dormiva. # pokaz: stwor
}
{ oblawa_wilk == wydal_wilka:
    Oltre le paludi ululò un lupo – rauco, con l’ultima nota mozzata, proprio come la notte dopo la battuta. La creatura voltò il capo da quella parte. Sull’argine, tra gli ontani, passò qualcosa di bianco, basso e malfermo, che risparmiava un fianco – e svanì nel buio.
- else:
    Oltre le paludi ululò un lupo – lungo e limpido, tanto che le lucine tra i giunchi tremolarono. La creatura voltò il capo da quella parte. Sull’argine, tra gli ontani, guizzò qualcosa di bianco, più veloce di un cane – e svanì nel buio.
}
Jaromir non sapeva per chi quella voce fosse un avvertimento – per la creatura o per lui.
~ zapiski += stwor_3
# pytanie: Che cosa farà Jaromir?
*   [Colpire la creatura con l’ascia.]
    ~ noc_na_kladce = siekiera_na_kladce
    Jaromir balzò sulla passerella e menò un fendente con tutte le sue forze. La lama affondò nel braccio grigio{ figurka_u_staruchy:, proprio accanto alla vecchia cicatrice}. La creatura ruggì – a lungo, di gola, tanto che le assi tremarono – lasciò il bambino e per vendetta squarciò con gli artigli la spalla di Jaromir. Sprofondò sott’acqua, come se qualcuno l’avesse tirata giù. # pokaz: siekiera
    Jaromir sollevò Józek di peso e lo portò a riva. Il bambino si svegliò soltanto in casa, accanto alla stufa, e non ricordava nulla. La ferita di Jaromir ci mise fino alla mietitura a rimarginarsi. # dalej
    -> co_z_figurka
*   { ekwipunek ? figurka } [Gettare la statuina alla creatura.]
    ~ noc_na_kladce = figurka_dla_stwora
    ~ los_figurki = figurka_u_stwora
    Jaromir svolse lo straccio e scagliò la statuina in acqua, proprio accanto alla creatura.
    ~ ekwipunek -= figurka
    La mano lasciò all’istante la caviglia del ragazzino. La creatura afferrò la statuina, se la strinse al petto come una madre il suo bambino e scivolò nell’acqua nera, liscia come una lontra. Le lucine sopra le paludi si spensero tutte insieme, come se qualcuno le avesse soffiate via. # pokaz: figurka
    Subito dopo l’acqua sotto le assi fu risucchiata nel profondo, con un gemito come di ghiaccio che si spacca, e si trascinò dietro i pali. Jaromir fece appena in tempo a saltare a riva con Józek, prima che la passerella – vecchia quanto il villaggio – si piegasse in due e sparisse sott’acqua. Il piccolo continuava a dormire, tranquillo, con la guancia sulla sua spalla. # dalej
    -> paliki_pod_droge
*   [Infrangere la lanterna sull’acqua.]
    ~ noc_na_kladce = latarnia_na_wodzie
    Jaromir scagliò la lanterna ai piedi della creatura. Il vetro andò in pezzi, l’olio si sparse sull’acqua e divampò in una fiammata. La creatura lasciò il bambino e con un urlo si ritrasse nel buio, e Jaromir afferrò Józek prima che l’acqua nera facesse in tempo a inghiottirlo. # pokaz: latarnia
    Ma il fuoco corse per le canne secche dell’anno prima come lungo una miccia. Prima che gli uomini accorressero con i secchi, bruciarono metà dei giuncheti e l’edicola votiva presso la passerella – una delle più antiche del villaggio. Al mattino ne restavano moncherini neri e il santino di legno col volto bruciacchiato. # pokaz: pozar # dalej
    -> co_z_figurka

= co_z_figurka
# tlo: skrzynia_izba
Dopo Pasqua Jaromir rimase a lungo, la sera, seduto davanti alla cassa. Le lucine sopra le paludi ardevano ancora, anche se più lontano dagli steccati di prima, e Marysia continuava a svegliarsi di notte e a indicare la finestra.
# pytanie: Che cosa farà della statuina?
*   [Gettare la statuina nella stufa.]
    ~ los_figurki = figurka_w_skrzyni
    La statuina rimase nella brace tutta la notte e non prese fuoco – sfrigolava soltanto come legna bagnata, e dalla stufa usciva un puzzo d’acquitrino. Al mattino Jaromir la tirò fuori con l’attizzatoio. Era bruciacchiata esattamente come prima, non un briciolo di più. Nell’andito tutti i secchi erano pieni di un’acqua torbida e paludosa, benché la sera prima Hanka ci avesse versato quella limpida del pozzo. # pokaz: piec
    Jaromir chiuse la statuina nella cassa, cinse la cassa con una catena e non ne parlò più. # pokaz: lancuch # dalej
*   [Seppellirla sotto l’edicola.]
    ~ los_figurki = figurka_pod_kapliczka
    ~ ekwipunek -= figurka
    Col buio Jaromir andò con la vanga all’edicola {noc_na_kladce == latarnia_na_wodzie:sulla strada per Bukowiec, oltre il ruscello|presso la passerella}. Scavò una buca profonda un braccio, avvolse la statuina in una tela pulita e la ricoprì, pestando la terra coi piedi. Quella notte stessa le lucine sopra le paludi si spensero, e i bambini smisero di sognare. # pokaz: lopata
    Non disse a nessuno dove l’aveva sepolta. Neppure a Hanka. # dalej
*   { zaufal_jagnie } { not odrzucil_figurke } { not figurka_u_staruchy } [Darla a Jagna.]
    ~ los_figurki = figurka_u_jagny
    ~ ekwipunek -= figurka
    Jaromir portò l’involto a Bukowiec. Jagna lo prese con tutte e due le mani, con cautela, come qualcosa di molto fragile, e lo nascose subito in fondo al cesto, sotto i mazzi di erbe secche. # pokaz: kosz
    – Non temere – disse. – Non tornerà più.
    L’indomani partì. Quella notte le lucine sopra le paludi si spensero, e i bambini smisero di sognare. # dalej
-   -> paliki_pod_droge

= paliki_pod_droge
# tlo: wiosna_paliki
~ zapiski += zielarka_3
A maggio Jadwisia diede ad Antek un figlio. Antek si intestardì che il bambino si sarebbe chiamato Franek, e nessuno osò contraddirlo. Chiese a Jaromir di fargli da padrino. # pokaz: antek
{ los_figurki:
- figurka_u_stwora: Le lucine sopra le paludi non si accesero più nemmeno una volta. Józek non ricordava quella notte. Nessuno ricostruì la passerella: i pali che gli uomini piantavano nel fango, al mattino giacevano divelti sulla riva, sicché da allora, per raggiungere i prati più lontani, bisognò aggirare l’acquitrino lungo il margine del bosco. Il vecchio Staś, quando seppe che cosa aveva fatto Jaromir, si fece il segno della croce e non gettò più la lenza in quelle pozze.
- figurka_w_skrzyni: I sogni venivano sempre più di rado, ma non cessarono del tutto. A volte, nelle notti senza luna, Marysia si metteva a sedere sul giaciglio e fissava la cassa sotto il letto, finché Hanka non la rimetteva a dormire.
- else: I bambini del villaggio dimenticarono il sogno prima ancora che le madri smettessero di chiacchierarne. Marysia tornò a dormire tutta la notte.
}
{ noc_na_kladce == siekiera_na_kladce:
    Sulla spalla di Jaromir rimase una cicatrice spessa e rosea{ figurka_u_staruchy && los_psa == oswojony: – nello stesso punto in cui, anni prima, gli artigli della creatura avevano raggiunto il nonno}.
}
{ noc_na_kladce == latarnia_na_wodzie:
    Dove sorgeva l’edicola bruciata, gli uomini piantarono in terra una croce di betulla. Una nuova non la costruì nessuno – non c’erano soldi. # pokaz: krzyz
}
Verso la fine di maggio Hanka cercò Marysia per tutto il cortile. La trovò solo dietro il fienile, nella segale alta fino alle ascelle. La piccola stava immobile, con la testolina inclinata, come chi sta in ascolto.
– Mamma canta – disse, e indicò con la manina il grano, dalla parte opposta alla casa.
{ glos_w_lesie:
    Quando la sera Hanka lo raccontò, a Jaromir tornò in mente la notte della Vigilia di tanti anni prima e la voce di sua madre {figurka_u_staruchy:dalla nebbia sopra il campo|di tra gli alberi}{glos_w_lesie == odpowiedzial: – e poi una risata, per niente la sua|{glos_w_lesie == kozuch: – e poi passi pesanti, che gli erano sfilati accanto| – e come quella voce lo aveva inseguito sulla neve fin sotto lo steccato di Staś}}. Non disse nulla. Solo che quella notte si alzò due volte a guardare se Marysia dormiva.
}
All’inizio di giugno gli uomini di Urbaniak cominciarono a piantare paletti nel terreno: dalla segheria, attraverso i prati e le paludi, dritti fin sotto il bosco. Il signor Urbaniak voleva una strada per la foresta. Dopo una settimana, quelli piantati più vicino agli alberi misero germogli verdi – dal legno secco e scortecciato. # pokaz: paliki # dalej
-> rozdzial_trzynasty_ciag_dalszy


// Koniec rozdziału trzynastego – dalej rozdział czternasty.
=== rozdzial_trzynasty_ciag_dalszy ===
# ozdobnik
_Fine del capitolo tredicesimo._ # dalej
-> rozdzial_czternasty
