// ------------------------------------------------------------
//  Rozdział dwudziesty – Ostatnia noc. Zaduszki: mgła pod płotami, nakrycia dla dziadów.
//  Przed północą do wsi wchodzi świta Pana Lasu (słudzy, umarli, dzieci spod dębu).
//  Trzy drogi: zwrócić mu granicę (siekiera w pniaku, słowo całej wsi; z żołędziem
//  ze Starego Dębu Pan Lasu nie bierze już dzieci), zająć jego miejsce (pożegnanie
//  albo odejście bez słowa) albo – z krzesiwem – skrzesać ogień (Antek pod stodołą,
//  ślepota albo pół wsi w popiele). Trzy epilogi pół wieku później.
// ------------------------------------------------------------

=== rozdzial_dwudziesty ===
# tlo: dziady
# rozdzial: Capitolo ventesimo
# tytul: L’ultima notte
Il due novembre Zapadlina si svegliò in una nebbia così fitta che dalla soglia non si vedeva il pozzo. Nessuno andò nella foresta a raccogliere sterpi, né al lago a lavare i panni. Le donne fin dal mattino strofinavano panche e tavoli, gli uomini spaccavano ceppi proprio contro i muri delle case, per non allontanarsi più di due passi dalla porta. Sulle assi degli steccati, dalla parte del bosco, ingrigiva il lichene – secco e friabile, benché su tutto il resto la nebbia si posasse in goccioline.
{ przysiega_ksiedzu:
    Prima di mezzogiorno arrivò da Bukowiec il parroco, con l’aspersorio e un secchio d’acqua santa, per benedire gli steccati. Davanti alla casa di Jaromir fermò il cavallo.
    – Mantieni ciò che hai giurato sul rosario? – chiese. # pokaz: ksiadz
    { cialo_kopii == spalone || cialo_kopii == pod_mlodnikiem:
        Jaromir tacque. Il parroco girò il cavallo; il loro steccato non lo benedisse.
    - else:
        – Lo mantengo – rispose Jaromir. Il parroco benedisse lo steccato due volte.
    }
}
Su ogni davanzale comparvero una scodella di pappa d’orzo e una tazza d’acqua. In ogni stanza si lasciò a tavola un posto in più – per coloro che in quella notte ritornano. # dalej
{ marysia_odzyskana:
    Hanka fece sedere Marysia accanto alla stufa e non le staccò gli occhi di dosso.
- else:
    Hanka apparecchiò due posti in più: uno per gli avi, l’altro piccolo, col cucchiaino di legno che Jaromir aveva intagliato l’inverno prima. Nessuno disse una parola.
}
{ ekwipunek ? szczenie_psa:
    Il cane fulvo si cacciò sotto la panca e non ne uscì nemmeno per un osso.
}
{ uboze == nakarmione:
    Il piattino di latte che Jaromir aveva messo dietro la stufa all’alba rimase intatto fino a sera. Nell’angolo qualcosa strusciò inquieto per tutto il giorno.
}
Verso sera la nebbia si addensò sotto i recinti e si fermò. Non si muoveva, benché il vento strattonasse i tetti di paglia. Le candele della Candelora, spentesi sulla via del cimitero, non volevano riaccendersi – gli stoppini sfrigolavano e annerivano.
{ not marysia_odzyskana:
    Solo la candela di Hanka ardeva sul tavolo, ferma, proprio come il giorno prima. # pokaz: gromnica_hanki
}
Jaromir sedette sulla soglia. Appoggiò allo stipite l’ascia {zastaw_u_leszego == zastaw_siekiera:del suocero|del nonno}, col manico a portata di mano.{ ekwipunek ? krzesiwo: In tasca sentiva il freddo dell’acciarino.} Aspettava. # pokaz: prog # dalej
-> swita_pana_lasu

= swita_pana_lasu
# tlo: swita
Vennero prima di mezzanotte.
Dapprima si fece silenzio – un silenzio tale che Jaromir sentiva crepitare la brace nella stufa, dentro casa. Poi la nebbia si aprì, e per la strada che veniva dal bosco entrò nel villaggio il corteo.
Avanzavano lentamente, senza il minimo suono. Dalle prime file veniva odore di fango e di umido, dalle ultime – di legno marcio, dolciastro. La mendicante orba in stracci, col suo bordone. La Signora della Mezzanotte, alta, piatta come un’ombra sul muro{ polnocnica == policzyla_mak:, coi semi di papavero nel pugno serrato}. Le rusalke in camicie fradice, richiamate dal fango fuori stagione – dai capelli gocciolava l’acqua, e fra di esse camminava Kaśka, la figlia dei Wójcik{ ratunek_franka == krzyzem:, e con lei Bartek, il figlio del mugnaio, con un’alga attorno al collo}. Le mamune coi battipanni. La vecchia della segale, curva, con le spighe nei capelli{ not wilk_przy_jaromirze: e uno zoccolo rosso in mano}. Le fiammelle erranti, che ondeggiavano sopra le teste come lanterne.{ los_figurki == figurka_u_stwora: La creatura delle paludi, ingobbita, con la statuina stretta al petto come una madre il suo bambino.}{ poludnica_uklon: La Signora del Mezzogiorno in camicia bianca; passando, s’inchinò a Jaromir – proprio come quella volta, sulle stoppie.} I bambini sotto la quercia, che si tenevano per mano. Nessuno di loro faceva ombra. # pokaz: swita, dzieci # dalej
{ not marysia_odzyskana:
    Fra loro ce n’era una che non teneva per mano nessuno. Scalza, in camicina bianca, senza nastro nei capelli. Camminava più lenta degli altri e si voltava a guardare le case, come se cercasse la via di casa. Hanka la vide dalla finestra. Non gridò. Strinse soltanto a sé la candela, così forte che la cera le colò sulle dita, e la fiamma non tremò. # pokaz: marysia
}
Venivano anche i morti di Zapadlina. Il vecchio Wójcik{ pochowek_wojcika == pochowany_za_murem || trzy_noce == rozkopany_grob: – col viso rivolto alla terra, benché camminasse dritto}.{ trzy_noce == czuwanie_przy_kolysce: La Wójcik, con le mani giunte sul petto{ korale_kaski == oddane: e la collana della figlia sotto il fazzoletto}.} Nonna Marianna. Davanti a tutti loro – nonno Maciek, con l’ascia alla cintura e il fagotto in spalla, come settant’anni prima, quando era sceso per la prima volta a Zapadlina. Passando davanti alla casa, guardò il nipote e gli fece un cenno col capo. # pokaz: umarli
Per ultimo, chino per non impigliare le corna nel cielo, veniva il Signore del Bosco. Ogni suo passo era lungo come un solco. Il muschio spuntava dovunque passasse, e subito ingrigiva di brina. # pokaz: leszy
Si fermò davanti alla casa di Jaromir. Il corteo si arrestò alle sue spalle. # dalej
{ marysia_odzyskana: -> calun_nad_jeziorem }
-> po_calunie

= calun_nad_jeziorem
Dalla fila uscirono le mamune. La più vecchia sollevò sulle braccia tese un piccolo panno bagnato, lo mostrò a Jaromir e senza una parola si avviò con le altre verso il lago.
– Va’ – disse il Signore del Bosco, senza voltare la testa. – Aspetterò. La notte è lunga. # dalej
# tlo: calun_noc
Sulle pietre piatte dall’altra parte del lago le mamune distesero il panno e lo spianarono con le mani. Era ancora bagnato, benché da agosto fossero passati due mesi. Proprio della misura di un bambino. Il lago giaceva nero e immoto, e dal villaggio non giungeva alcun suono. # pokaz: mamuny
– Marysia – disse la più vecchia sopra il sudario, con tenerezza, e fece schioccare il battipanni sulla pietra. – Marysia.
{
- dar_pominiety:
    – Una volta hai dimenticato – gracchiò. – Ora siamo venute a prendere il nostro.
- uklad_z_mamunami:
    – Non guardarci così, padrone – gracchiò. – Noi il patto l’abbiamo mantenuto. Non viene da noi. Laviamo ciò che ci porta l’acqua, e ora l’acqua porta i bambini del vostro villaggio.
- else:
    – Non siamo noi a scegliere – gracchiò. – Laviamo ciò che ci porta l’acqua, e ora l’acqua porta i bambini del vostro villaggio.
}
– Prima dell’alba si asciugherà – disse. – Allora il nome non lo laverà via più nessuno, nemmeno noi. Finché è bagnato, si può ancora. – Sorrise con le gengive nere. – Solo che dalla tela nulla viene via senza un prezzo. # pokaz: calun
# pytanie: Che cosa farà Jaromir?
*   [Strappare loro il sudario da solo.]
    ~ cena_caluna = cena_zdrowie
    Entrò nell’acqua fino alle ginocchia e strappò il sudario dalla pietra. Le mamune gli si avventarono addosso – mani fredde e bagnate gli avvinghiarono le braccia e i polpacci, i battipanni gli piovevano sulla schiena come correggiati sull’aia. Non mollò. Quando si trascinò a riva, il panno gli gocciolava fra i pugni, e dall’acqua qualcosa continuò a ridacchiargli dietro a lungo. # pokaz: wyrwany
    Il nome venne via. Ma il freddo del lago gli rimase dentro: dalle ginocchia in giù le gambe erano gelide come le pietre del fondo, e nulla più le scaldò – né la stufa, né la pelliccia di montone. Non prese mai più in mano la falce.
*   [Chiamare Antek.]
    ~ cena_caluna = cena_antek
    – Antek! – gridò Jaromir verso il villaggio. Antek, che quella notte non dormiva, accorse al lago prima che l’eco si spegnesse sull’acqua. Non chiese nulla. Entrò fra le mamune come se entrasse nella fucina, e strappò il sudario dalla pietra – il sudario della bambina che aveva tenuto a battesimo. # pokaz: antek
    La più vecchia alzò il battipanni. Nel silenzio si udì uno schiocco, come di un ramo spezzato. Antek non gridò. Uscì a riva col sudario nella sinistra, e la destra gli pendeva storta al gomito come nessun braccio si storce. Il fabbro gliela esaminò, poi, e si limitò a scuotere la testa. Alla fucina Antek non tornò più.
*   { wilk_przy_jaromirze && znak_rozpoznania != po_wilku } [Chiamare il lupo bianco.]
    ~ cena_caluna = cena_franek
    ~ zapiski += tropy_6
    – Franek! – chiamò Jaromir verso il villaggio, senza nemmeno sapere se il lupo l’avrebbe udito. Il nome, la più pesante delle parole, corse sull’acqua.
    Il lupo udì. Un’ombra bianca saettò lungo la riva, piombò fra le mamune e fece a brandelli il sudario coi denti. Quelle urlarono in modo straziante e gli si gettarono addosso tutte insieme. L’acqua presso le pietre ribollì come in un paiolo da bucato – e poi tornò liscia. # pokaz: wilk
    Presso la riva, fra le canne, giaceva un corpo bianco, pesante d’acqua. Antek, accorso all’ululato, gli s’inginocchiò accanto e posò la mano sull’anello di pelo consunto attorno alla zampa anteriore. – È lui – disse soltanto. – Te l’avevo detto.{ wilk_pod_debem == opowiedzial_o_antku: Jaromir ricordò le parole udite sotto la quercia: con la tua memoria in testa non vivrà a lungo.}
*   { uklad_z_mamunami == dar_swietojanski && not dar_pominiety } [Ricordare loro il patto ed estenderlo alla figlia.]
    ~ cena_caluna = cena_umowa
    – Vi ho promesso un dono finché vivo – disse Jaromir. – E sia: finché vive lei. Quando non ci sarò più, ve lo porterà lei stessa.
    La più vecchia lo osservò immobile. Poi posò il battipanni. – D’accordo – gracchiò. – Ma anche lei dovrà ricordare. Ogni anno. Fino alla fine.
    Quando Jaromir allungò la mano verso il sudario, il panno si sciolse nell’acqua come schiuma. # pokaz: piana
    { przysiega_ksiedzu:
        Il giuramento fatto a Bukowiec – di farla finita coi doni a ciò che sta nell’acqua – lo infranse la notte stessa in cui il parroco { cialo_kopii == spalone || cialo_kopii == pod_mlodnikiem: aveva girato il cavallo davanti al suo steccato | gli aveva benedetto lo steccato }.
    }
-   ~ zapiski += mamuny_4
    Le mamune raccolsero i battipanni e una dopo l’altra entrarono nell’acqua. Jaromir riprese la via del villaggio. # dalej
    -> powrot_do_swity

= powrot_do_swity
# tlo: swita
Quando tornò davanti a casa, il corteo stava dove l’aveva lasciato. Il Signore del Bosco non si era mosso di un passo.{ cena_caluna == cena_zdrowie: Jaromir camminava adagio; il freddo del lago gli saliva nelle gambe dal basso.}{ cena_caluna == cena_antek: Antek gli camminava accanto, col braccio destro infilato nella cintura.} # pokaz: swita, dzieci, umarli, leszy
-> po_calunie

= po_calunie
{ cena_caluna == cena_franek:
    Allora, nella fila dei morti, Jaromir vide Franek – non il lupo, ma Franek, magro, coi capelli fino alle spalle, così come l’aveva visto l’ultima volta nel riparo sul lago. Franek si avvicinò alla finestra di Antek e posò la mano sul telaio, come si posa la mano sul collo di un cavallo. # pokaz: franek
- else:
    { wilk_przy_mnie():
        Il lupo bianco uscì da dietro il fienile e si fermò presso la soglia, accanto alla gamba di Jaromir. Aveva il pelo irto. # pokaz: wilk
    - else:
        Al fianco del Signore del Bosco stava il lupo bianco. Non guardò Jaromir. # pokaz: wilk_pan
    }
}
{ bielmo():
    Jagna emerse dalla nebbia dalla parte dello steccato e si piantò davanti al Signore del Bosco, senza abbassare gli occhi.
    – Quest’uomo mi deve la prima cosa uscita dal bosco – disse. # pokaz: jagna
    – Ciò che è uscito dal bosco è uscito per mia parola – rispose il Signore del Bosco.
    – La parola è tua, il debito è mio. – Jagna si voltò verso Jaromir. – Mia nonna comprava e prendeva su di sé ciò che gli altri avevano paura di toccare, e lo pagava con un occhio. Io, dopo di lei, riscuoto ciò che ciascuno deve. – Si avvicinò tanto che lui sentì sul viso l’odore d’iperico. – Anche tu sei uscito dal bosco, Jaromir. Per primo, prima che portassi fuori {marysia_odzyskana:tua figlia|quella cosa}.
    Gli posò un dito sulla palpebra sinistra. Era asciutto e caldo. Quando lo ritrasse, con l’occhio sinistro Jaromir vedeva ormai solo una nebbia lattiginosa, la stessa che velava l’occhio di lei.
    – Ora siamo pari – disse, e si allontanò nella nebbia.
}
{ cialo_kopii == oddane_jagnie:
    Jagna uscì dalla nebbia con un involto di lino e lo depose ai piedi del Signore del Bosco. – Rendo ciò che non è mio – disse. Il telo si afflosciò; sotto rimasero solo foglie secche e corteccia. # pokaz: jagna
}
– Sono venuto a fare i conti fino in fondo – disse il Signore del Bosco. La sua voce veniva dalla terra, dai tetti di paglia, dal pozzo. – La Quercia, la parola, le edicole. Avete preso tutto. I miei sono venuti per i vostri bambini, perché lo steccato con cui li trattenevo è crollato. Stanotte non ho nulla con cui fermarli.
Da dietro di lui giunse un canticchiare – erano i bambini sotto la quercia che avevano intonato la loro melodia. Passava di casa in casa, e in ognuna, dietro le porte sprangate, un bambino si svegliava e si metteva a piangere.{ marysia_odzyskana: Anche Marysia si svegliò. Non pianse – si mise a sedere sulla panca e guardava la finestra, e Hanka la teneva per le spalle.}
– Puoi restituirmi il confine – disse il Signore del Bosco. – All’antica: voi non più in là di esso, io – un bambino per generazione. Puoi prendere il mio posto – ma dai tuoi non tornerai più.
{ ekwipunek ? krzesiwo:
    Guardò la giubba di Jaromir, e per la prima volta nella sua voce risuonò qualcosa di simile alla paura. – Oppure puoi fare ciò per cui porti con te l’acciarino. Ma dopo un fuoco così non resterà né il bosco, né voi.
- else:
    { zastaw_u_leszego == zastaw_krzesiwo:
        – Il fuoco l’hai lasciato a me. Saggio.
    }
}
# pytanie: Che cosa farà Jaromir?
*   [Restituirgli il confine.]
    ~ ostatnia_noc = zwrocil_granice
    -> ostatnia_granica
*   [Prendere il suo posto.]
    ~ ostatnia_noc = zajal_miejsce
    -> ostatnie_miejsce
*   { ekwipunek ? krzesiwo } [Battere l’acciarino e appiccare il fuoco.]
    ~ ostatnia_noc = skrzesal_ogien
    -> ostatni_ogien

= ostatnia_granica
# tlo: granica
– Avrai il confine – disse Jaromir. – Ma non da me solo.
Fece il giro di tutto il villaggio e sotto ogni finestra chiamò per nome i capifamiglia. Il primo a uscire fu Antek{ cena_caluna == cena_antek:, con la manica destra infilata nella cintura}. Poi il fabbro e Szymon{ noc_ognia == ratowal_kapliczke:, col viso fasciato da un fazzoletto e le mani avvolte negli stracci}. Józek conduceva per mano il vecchio Staś, ormai così avanti negli anni che ci vedeva appena. Il padre, {noga_ojca == strzaskana:con le grucce|col bastone}, e la madre, infagottata nella pelliccia di montone. Infine Hanka{ marysia_odzyskana:, con Marysia avvolta nello scialle}. Lo seguivano nella nebbia, con le candele della Candelora che non volevano accendersi{ not marysia_odzyskana: – ardeva solo quella di Hanka}, dritti in mezzo al corteo. Le rusalke e le mamune si scostavano davanti a loro come l’acqua davanti alla prua di una barca. # pokaz: ludzie
Il ceppo della Vecchia Quercia stava al limitare del bosco, nero, coperto di funghi legnosi. Il Signore del Bosco si fermò dall’altra parte. # pokaz: leszy # dalej
{ zastaw_u_leszego == zastaw_siekiera:
    Il Signore del Bosco frugò nel buio alle proprie spalle e porse a Jaromir l’ascia del nonno. Il manico era umido della linfa della radice che l’aveva trattenuta.
- else:
    Il Signore del Bosco guardò l’ascia del nonno nelle mani di Jaromir.
}
– {chata_macka == przy_lesie:Con questo ferro tuo nonno ha varcato il confine|Con questo ferro la tua stirpe ha abbattuto il mio bosco} – disse. – Quell’altro, il primo, venne da me senza ferro. Tu il tuo lo lascerai.
~ ekwipunek -= siekiera
Jaromir piantò l’ascia nel ceppo, da far gemere il legno. Il manico era pesante e freddo, e le mani gli tremavano tanto che dovette colpire due volte. # pokaz: siekiera
{ ekwipunek ? zoladz:
    ~ ekwipunek -= zoladz
    ~ zoladz_zasadzony = true
    Poi s’inginocchiò e scavò con le dita una buca nella terra gelata, fino a spezzarsi le unghie. Vi mise la ghianda che custodiva dagli anni dell’infanzia – ancora tiepida. Quando la ricoprì di zolle, di sotto spuntò un germoglio pallido – a novembre, nella brina. # pokaz: kielek
}
{ dlug_jagny:
- oddana_wstazka:
    Jagna uscì dalla nebbia e avvolse il manico dell’ascia col nastro rosso di Marysia. – Te l’avevo detto che sarebbe servito – borbottò. # pokaz: wstazka
- oddany_drewniak:
    Jagna uscì dalla nebbia e posò lo zoccolo rosso accanto al ceppo. – Il legno al legno – borbottò. # pokaz: drewniak
}
– Più in là non andremo – disse Jaromir. Il fiato gli uscì di bocca in una nuvola. Dietro di lui lo ripeterono tutti, in disordine, con voci roche.{ pani_w_zbozu_noc == za_spiewem: Hanka muoveva soltanto le labbra.} – Parola per parola. # dalej
{ zoladz_zasadzony:
    Il Signore del Bosco non guardava l’ascia. Guardava il germoglio. Si chinò su di esso così in basso che le corna s’impigliarono nella nebbia, e lo toccò con un dito – con cautela, come si tocca un puledro che si è appena alzato sulle zampe.
    – Quell’altro, il primo, mi diede la sua parola – disse piano. – E io in cambio presi un bambino per generazione, perché la parola non pesa nulla, e la Quercia era mia, non vostra. – Si raddrizzò. – Questa è vostra. È nata dalla mia Quercia, e l’ha piantata una mano che l’ha custodita per tutta la vita. Finora mi avete dato soltanto del vostro. Tu mi hai reso il mio. Finché questa quercia crescerà, non prenderò bambini da voi. Voi – non più in là di questo ferro. Le edicole le rimetterete in piedi. Tutte. E tu veglierai sulla parola e sull’albero fino alla fine dei tuoi giorni. Ogni giorno dei Morti – qui.
    Hanka afferrò la mano di Jaromir.{ marysia_odzyskana: Marysia dormiva nello scialle e non sapeva che proprio allora l’avevano riscattata dal bosco – lei e tutti i bambini che dovevano ancora nascere a Zapadlina.}
- else:
    Il Signore del Bosco guardava l’ascia nel ceppo. Poi annuì.
    – Parola per parola – disse. – Voi – non più in là di questo ferro. Io – un bambino per generazione, nella notte di San Giovanni. E lo restituirò prima che dimentichi la sua casa. Le edicole le rimetterete in piedi. Tutte. – Si chinò su Jaromir. – E tu veglierai sulla parola finché vivrai. Ogni giorno dei Morti – qui.
}
{ przysiega_ksiedzu:
    Jaromir pensò al rosario e al giuramento fatto a Bukowiec. L’aveva appena infranto{ cena_caluna == cena_umowa || cialo_kopii == spalone || cialo_kopii == pod_mlodnikiem: per la seconda volta} – e sapeva che l’avrebbe rotto di nuovo.
}
Il Signore del Bosco si voltò e s’incamminò nel bosco. I suoi servi entrarono dietro di lui, uno dopo l’altro, e la nebbia si richiuse alle spalle dell’ultimo.{ not zoladz_zasadzony || marysia_odzyskana: I morti non lo seguirono; si dispersero lungo la strada per la Cresta dei Faggi, ciascuno verso il proprio riposo.}{ wilk_zywy() && not wilk_przy_mnie(): Il lupo bianco camminava proprio davanti al Signore del Bosco.}{ wilk_przy_mnie(): Il lupo bianco indugiò ancora un momento accanto alla gamba di Jaromir, poi corse dietro a loro e non si voltò.}
{ not marysia_odzyskana:
    { zoladz_zasadzony:
        Quella sola, in camicina bianca, non entrò con loro. Il Signore del Bosco si voltò a guardarla dal margine degli alberi.
        – È stata troppo a lungo da me. La casa la ricorda ormai solo come in sogno – disse. – Viva non ve la renderò. Ma mia non è più.
        { ekwipunek ? wstazka_marysi:
            Jaromir le si avvicinò, sciolse dal polso il nastro sbiadito e glielo annodò nei capelli a fiocco, come faceva Hanka.
        }
        La piccola rimase un attimo immobile, non sapendo dove andare. Poi corse dalla madre e le toccò la mano, come ogni sera. Allora nonno Maciek le tese la propria, e lei la prese senza paura. I morti di Zapadlina se ne andarono per la strada della Cresta dei Faggi, ciascuno verso il proprio riposo, non nel bosco – e lei con loro, senza voltarsi nemmeno una volta. La candela nella mano di Hanka si spense da sola, quieta, come si spegne il lume prima di dormire. # pokaz: marysia
    - else:
        Quella sola, in camicina bianca, si fermò ancora al limitare. – Questa l’ho presa quando la parola non c’era – disse il Signore del Bosco, senza voltarsi. – Ed è stata troppo a lungo da me.{ ekwipunek ? wstazka_marysi: Jaromir le si avvicinò, sciolse dal polso il nastro sbiadito e glielo annodò nei capelli a fiocco, come faceva Hanka.} La piccola si voltò e salutò la madre con la manina. Hanka alzò il braccio. La candela che stringeva nell’altra mano si spense da sola, quieta, come si spegne il lume prima di dormire. # pokaz: marysia
    }
}
Su Zapadlina si fece chiaro – un chiarore comune, grigio, come in ogni alba di novembre. Nelle case i bambini smisero di piangere. # pokaz: swit # dalej
~ zapiski += (pan_lasu_12, zielarka_5, dzieci_3)
{ wilk_zywy():
    ~ zapiski += tropy_7
}
-> epilog_granica

= ostatnie_miejsce
# tlo: miejsce
– Resterò – disse Jaromir.
Il Signore del Bosco non rispose, finché la brina non gli si posò sulla barba.
– Lo sapevo – disse infine. – Da quando sei venuto da me da solo.{ glosy_boru == odpowiedzial_marysi: Ti ho contato quella notte. Ottocento. Eri mio da tempo.}{ zastaw_u_leszego == zastaw_cien: La tua ombra ti aspetta sotto la quercia.}
# pytanie: Come se ne andrà Jaromir?
*   [Congedarsi da Hanka{ marysia_odzyskana: e da Marysia}.]
    ~ pozegnanie = pozegnal_sie
    Entrò nella stanza. Hanka stava presso la stufa, pallida, le mani strette sul grembiule. Sapeva – lo vide subito.{ marysia_odzyskana: Marysia si era riaddormentata sulla panca. La baciò sulla fronte, piano, per non svegliarla, e a lungo la guardò respirare.} # pokaz: hanka
    – Tornerai? – {pani_w_zbozu_noc == za_spiewem:mormorò lei roca, quasi senza voce|chiese lei}.
    – Sarò vicino – disse. – Oltre lo steccato. Sempre.
    Gli si strinse addosso come nella notte dopo le nozze, e lo tenne finché il calore di lei non prese a raffreddarsi fra le mani di lui. Allora lo lasciò andare. # dalej
*   [Andarsene senza una parola – per loro sarà più lieve.]
    ~ pozegnanie = odszedl_bez_slowa
    Non entrò nella stanza. Rimase un momento presso la finestra e guardò, dalla fessura dell’imposta, Hanka che, vinta dalla veglia, dormiva sulla panca con la testa appoggiata al muro{ marysia_odzyskana:, e Marysia rannicchiata accanto a lei, con le ginocchia sotto il mento|, con la candela accesa fra le mani}. Posò sul davanzale, accanto alla scodella di pappa d’orzo per gli avi, il suo berretto. Poi si voltò e se ne andò. # pokaz: czapka
    Al mattino Hanka trovò il berretto e capì tutto. Lo portò sempre in seno. # dalej
-   Andarono insieme al limitare del bosco. Presso il ceppo della Vecchia Quercia il Signore del Bosco rimpicciolì fino a farsi un vecchio con la pelliccia di montone rovesciata e il cappello di muschio – così come Jaromir l’aveva visto la notte delle sue nozze. # pokaz: starzec
Si tolse il cappello e lo mise in testa a Jaromir. Era pesante, freddo, e odorava di corteccia bagnata. Quando lo sentì, qualcosa in Jaromir si incrinò in silenzio – come il ghiaccio su uno stagno – e udì il bosco. Ogni albero. Ogni radice. Ogni animale che proprio allora si addormentava nella tana prima dell’inverno. E nello stesso istante non riuscì più a ricordare che odore avessero i capelli di Marysia. # pokaz: kapelusz
{ zastaw_u_leszego == zastaw_siekiera:
    Il vecchio tirò fuori dal buio l’ascia del nonno, ancora avvolta di radichette, e l’appoggiò al ceppo. Jaromir non la raccolse.
}
Poi l’antico Signore del Bosco si sdraiò sotto il ceppo. Sospirò a lungo, come un albero quando il gelo lo lascia, e prese a sprofondare nella terra. Il muschio lo invadeva, le foglie lo seppellivano, finché non rimase che un poggio vestito di lichene grigio. # pokaz: pagorek
– Ora conta tu – sussurrò qualcosa da sotto terra.
Jaromir si voltò verso il corteo. Gli stavano davanti tutti, e aspettavano. # dalej
– Tornate – disse. La sua voce passò per le chiome, dal bosco fino al lago. – A casa. Tutti.
Se ne andarono. Le rusalke al lago, le mamune alle pietre, la vecchia della segale nelle stoppie, il licho nella nebbia. La maledizione dell’erborista legava le mani di quello di prima. Le mani del nuovo non le conosceva.
~ zapiski += (pan_lasu_12, zielarka_5, dzieci_3)
{ marysia_odzyskana:
    { cena_caluna == cena_franek:
        Da sotto la finestra di Antek se ne andò Franek. Si voltò una volta verso la casa dove dormiva suo fratello, e scomparve nella nebbia. # pokaz: franek # dalej
    - else:
        ~ zapiski += tropy_7
        Il lupo bianco rimase per ultimo. Jaromir gli posò la mano sulla testa. – Va’, Franek – disse. – Sei libero. – Il lupo gli leccò il palmo e corse nel bosco, leggero, come un cane giovane. # pokaz: wilk # dalej
    }
- else:
    ~ zapiski += tropy_7
    Il lupo bianco rimase per ultimo. Jaromir gli posò la mano sulla testa. – Va’, Franek – disse. – Sei libero. – Il lupo gli leccò il palmo e corse nel bosco, leggero, come un cane giovane. # pokaz: wilk
    Sulla strada era rimasta quella sola, in camicina bianca. Jaromir le si avvicinò{ ekwipunek ? wstazka_marysi:, le annodò nei capelli il suo nastro sbiadito} e le tese la mano. Lei la afferrò subito, forte, come un tempo. – Andiamo a casa, papà? – chiese. – Andiamo – disse lui. Se ne andarono insieme nel bosco, e il bosco li accolse senza un fruscio. Nella casa di Hanka la candela si spense. # pokaz: marysia # dalej
}
-> epilog_miejsce

= ostatni_ogien
# tlo: pozar_boru
Jaromir tirò fuori l’acciarino. Era piccolo, annerito, e ricordava le mani del nonno, che l’aveva raccattato dalla cenere della capanna dell’erborista.
– No – disse il Signore del Bosco. Questa volta la sua voce non veniva da ogni parte, ma da un punto solo. – Nipote di Maciek. No. # pokaz: leszy
Jaromir {cena_caluna == cena_zdrowie:si trascinò, su gambe che non sentiva,|corse} fino al margine della boscaglia giovane, là dove il lichene grigio era arrivato fin sotto i recinti, e batté. Una volta. Due. La terza scintilla saltò nel muschio secco – che prese fuoco in un istante, e dopo di esso gli abeti, e dopo gli abeti il bosco, come brucia tutto ciò su cui da anni non è caduta una goccia di pioggia. # pokaz: ogien # dalej
Rimbombò, come se la terra avesse sospirato. La vampa investì Jaromir in pieno viso, si sparse un odore di resina e di pelo bruciato. Dal bosco, verso il villaggio, si lanciarono caprioli, cinghiali, lepri, accecati, incuranti della gente. Il corteo ululò con una sola voce. Le rusalke si gettarono verso il lago, le mamune dietro di loro, il licho si dissolse col primo fumo.{ los_figurki == figurka_w_skrzyni: Nella casa di Jaromir la cassa sotto il letto si spaccò e dalle fessure eruppe il fumo: la statuina, che nessuna stufa aveva voluto prendere, ardeva finalmente come un legno qualunque.} I bambini sotto la quercia fuggirono nel bosco; dal suo cuore giungeva ancora il loro canticchiare. Si interruppe a metà e non riprese più.
Il Signore del Bosco stava fra le fiamme e non fuggiva. La corteccia del suo volto si spaccava, le corna bruciavano come sterpi secchi in un falò di San Giovanni, e gli occhi guardavano Jaromir con calma, fino alla fine.
– È contato – disse ancora. E crollò con uno schianto, come cade una vecchia quercia. # pokaz: runal
{ wilk_zywy():
    { wilk_przy_mnie():
        Il lupo bianco rimase accanto a Jaromir fino all’ultimo e non si mosse, benché le scintille gli bruciacchiassero il pelo. # pokaz: wilk
    - else:
        Il lupo bianco balzò nel fuoco dietro al suo padrone. Antek ululò, come se a bruciare fosse lui.{ obietnica_antkowi: Nessuno ebbe il lupo – così Jaromir aveva promesso ad Antek. Se lo prese il fuoco.}
    }
}
{ not marysia_odzyskana:
    Dal fumo corse fuori la piccola in camicina bianca, dritta fra le braccia di Hanka. Hanka la strinse – e nello stesso istante la candela si spense. Fra le braccia le rimase solo cenere tiepida.
}
{ zastaw_u_leszego == zastaw_cien:
    L’ombra non tornò a Jaromir. Bruciò sotto la quercia insieme a tutto il resto.
}
La maledizione dell’erborista era cominciata col fuoco e col fuoco finì. Ma il vento girò. Le fiamme scavalcarono la boscaglia giovane{ cialo_kopii == pod_mlodnikiem:, passarono sulla piccola tomba col bastone e il nastro rosso} e si avventarono sul villaggio – sui fienili, sui tetti di paglia, sulle case in cui piangevano i bambini.
# pytanie: Che cosa farà Jaromir?
*   [Correre a casa propria, a prendere Hanka{ marysia_odzyskana: e Marysia}.]
    ~ noc_pozaru = antek_pod_stodola
    Jaromir {cena_caluna == cena_zdrowie:si trascinò fino a casa sulle gambe intorpidite|corse a casa}, portò{ marysia_odzyskana: Marysia e} Hanka fuori, sul prato, e quando si voltò vide Antek. Antek era andato da solo al fienile di quelli di Staś, il più vicino alla boscaglia giovane, e aveva preso ad abbatterne le pareti a colpi d’ascia{ cena_caluna == cena_antek: con la sinistra}, per buttarlo giù prima che il fuoco passasse da lì al resto del villaggio. Colpì finché il tetto non prese fuoco sopra la sua testa. Gli gridavano di scappare. Di rimando urlò soltanto: – Abbi cura di Franek! – e non si capì di quale. # pokaz: stodola
    Il fienile crollò insieme a lui – e le fiamme si fermarono sulle travi abbattute. # pokaz: stodola_runela
    Jadwisia rimase seduta fino al mattino nella cenere, col piccolo Franek sulle ginocchia. # dalej
*   [Spegnere da solo le fiamme al margine dei recinti.]
    ~ noc_pozaru = oslepl
    Jaromir si lanciò da solo – con la giubba, con un sacco bagnato, a mani nude – e batté le fiamme al margine dei recinti, finché la gente coi secchi non ebbe versato sui tetti di paglia tutta l’acqua del pozzo. # pokaz: gaszenie
    Il fuoco non passò. Ma al mattino Jaromir non vedeva più né la luce, né Hanka, che piangeva su di lui nel fango. La vampa gli aveva bruciato gli occhi. # dalej
*   [Arare il tagliafuoco insieme a tutto il villaggio.]
    ~ noc_pozaru = pol_wsi
    – I cavalli! – gridò Jaromir. Il fabbro attaccò i cavalli all’aratro, e gli uomini ararono davanti ai recinti una nera striscia di terra, mentre le donne battevano il fuoco con teli bagnati. # pokaz: przesieka
    Difesero ogni tetto uno per uno, e il fuoco prendeva ciò che non riuscivano a salvare. All’alba metà di Zapadlina giaceva in cenere: fienili, porcili, quattro case. La gente era viva. Ma l’inverno trovò mezzo villaggio senza un tetto sopra la testa. # dalej
-   Quando sorse il sole, il bosco era nero a perdita d’occhio. Non restava in piedi un solo albero. Sulle macerie aleggiava il fumo. Si disse poi che là dove, nel cuore del bosco, sorgeva la quercia, c’era soltanto un cumulo di cenere grigia, coperto dalla prima neve. # pokaz: popiol # dalej
~ zapiski += (pan_lasu_12, zielarka_5, dzieci_3)
{ wilk_zywy():
    ~ zapiski += tropy_7
}
-> epilog_ogien

= epilog_granica
# tlo: epilog_dab
# ozdobnik
Mezzo secolo dopo, il giorno dei Morti, il vecchio Jaromir sedeva sulla panca sotto la croce, al limitare del bosco.{ cena_caluna == cena_zdrowie: Aveva le gambe avvolte nella pelliccia di montone, come da cinquant’anni.}{ bielmo(): Dall’occhio sinistro, da mezzo secolo, vedeva soltanto nebbia.} Lungo il margine degli alberi erano tornate le edicole – le avevano rimesse in piedi la prima primavera, tutti insieme, e da allora ogni generazione le rinnovava prima della Pentecoste.
{ zoladz_zasadzony:
    Proprio accanto al ceppo della Vecchia Quercia cresceva una giovane quercia, ormai più alta di un tetto di paglia. In mezzo secolo si era fusa col vecchio legno e aveva inghiottito l’ascia; dalla corteccia, all’altezza delle ginocchia, sporgeva solo la lama arrugginita, che nessuno aveva osato toccare. # pokaz: dab
}
{ marysia_odzyskana:
    Attorno a Jaromir sedevano i figli di Marysia – tre, lentigginosi, con le fossette sulle guance – e i figli dei loro figli.{ cena_caluna == cena_umowa: Marysia, ormai brizzolata, ogni anno nella notte di San Giovanni portava una pagnotta sulle pietre piatte. Non diceva a nessuno perché.}
- else:
    Attorno a Jaromir sedevano i nipoti di Antek – di suoi Jaromir non ne aveva avuti in sorte.
}
Hanka sedeva accanto a lui, col più piccolo sulle ginocchia, e gli sbucciava una mela.
– Nonno, racconta del Signore del Bosco – pregò il più piccolo.
{ zastaw_u_leszego == zastaw_cien:
    Jaromir sorrise. Da tempo i bambini non si stupivano più che il nonno non facesse ombra. Era così e basta.
}
– Una settantina d’anni prima che io guardassi per la prima volta verso la foresta – cominciò – mio nonno scese a Zapadlina con un fagotto in spalla…
{ zoladz_zasadzony:
    Il bosco alle sue spalle taceva. Nella notte di San Giovanni i bambini di Zapadlina accendevano i falò sotto la giovane quercia, saltavano sopra le fiamme e raccoglievano sotto l’albero le ghiande dell’anno prima, e al mattino dormivano tutti nei loro letti. Da mezzo secolo non se n’era perso nessuno. {marysia_odzyskana:Uno dei nipotini di Marysia|Il più piccolo dei nipoti di Antek} stringeva ora una ghianda nel pugno e ascoltava a bocca aperta. # pokaz: zoledzie # dalej
- else:
    Il bosco alle sue spalle taceva. Solo a volte, nella notte di San Giovanni, da qualche casa spariva un bambino – e tornava dopo qualche notte, odoroso di resina, senza ricordare nulla. L’ultima a sparire per qualche notte era stata la piccola dei Kowalczyk. Ora sedeva più vicina di tutti e ascoltava a bocca aperta. # dalej
}
-> koniec_opowiesci

= epilog_miejsce
# tlo: epilog_bor
# ozdobnik
Mezzo secolo dopo i bambini di Zapadlina andavano nella foresta per funghi e mirtilli e tornavano sani e salvi, coi cesti colmi fino all’orlo. I vecchi dicevano che il bosco da tempo non sviava più nessuno. Che i sentieri portavano là dove si voleva andare.
{noc_ognia == ratowal_szymona:Ai piedi della boscaglia giovane, accanto alla crocetta di betulla che un tempo vi aveva piantato il vecchio Staś|Accanto all’edicola al limitare del bosco} c’era una tomba senza corpo, con una croce di ginepro.{ przysiega_ksiedzu: Al cimitero di Bukowiec il parroco non aveva concesso un posto.}
{ pozegnanie == pozegnal_sie:
    L’iscrizione la incise Hanka stessa, quando era ormai vecchia: Jaromir. Oltre lo steccato.
- else:
    Non c’era alcuna iscrizione. Hanka posò sulla croce il suo berretto, e il vento non lo strappò mai di lì. # pokaz: czapka
}
{ marysia_odzyskana:
    Marysia ci andava ogni giorno dei Morti coi suoi figli. Posava sulla tomba una scodella di pappa d’orzo e una tazza d’acqua, e al mattino la scodella era vuota, e accanto c’era una foglia di quercia, fresca e verde.{ cena_caluna == cena_umowa: Nella notte di San Giovanni portava ancora una pagnotta sulle pietre piatte – fino alla fine dei suoi giorni.} # pokaz: miski
- else:
    Hanka ci andava ogni giorno dei Morti, finché le bastarono le forze. Posava sulla tomba due scodelle – una grande e una piccola – e al mattino erano vuote entrambe. # pokaz: miski
}
A volte i bambini che raccoglievano sterpi vedevano al limitare del bosco un vecchio alto col cappello di muschio. Stava immobile, e quando uno dei bambini gli faceva un cenno con la mano, chinava il capo – lentamente, gravemente. # pokaz: starzec
{marysia_odzyskana:La sua pronipote|La piccola di quelli di Antek} si fermò un giorno ai margini degli alberi e per la prima volta, da sola, guardò verso la foresta. Dall’altra parte qualcuno la osservò a lungo, come se cercasse di ricordare dove avesse già visto quel visetto. # pokaz: prawnuczka # dalej
-> koniec_opowiesci

= epilog_ogien
# tlo: epilog_wrzosy
# ozdobnik
Mezzo secolo dopo, sulle colline oltre Zapadlina, non cresceva altro che erica e ginepri. Il bosco non era ricresciuto. La legna la portavano da lontano, da oltre Bukowiec, e nelle case mancava di che scaldarsi. I giovani partivano per la città e non tornavano. Di Zapadlina erano rimaste tre case; del resto – cumuli coperti d’ortiche.
{ noc_pozaru:
- antek_pod_stodola:
    Al cimitero di Bukowiec, sotto una betulla, c’era la tomba di Antek. Franek, ormai canuto, la spazzava ogni sabato.
- oslepl:
    Da cinquant’anni Jaromir non vedeva nulla. Gli era rimasto l’udito – e il vento, che non aveva più dove stormire.
- pol_wsi:
    Le case ricostruite dopo l’incendio erano di mattoni, portati dalla città. La gente diceva che il mattone non brucia.
}
{ cena_caluna == cena_zdrowie:
    Jaromir sedeva con le gambe avvolte nella pelliccia di montone – da quel giorno dei Morti nulla le aveva più scaldate.
}
La maledizione non c’era più. Nessuno spariva nella notte di San Giovanni.{ cena_caluna == cena_umowa: I battipanni sul lago non li sentiva nessuno – tranne Marysia, che ogni anno portava una pagnotta sulle pietre piatte.} Il giorno dei Morti sui davanzali c’erano la pappa d’orzo e l’acqua, e al mattino erano intatte.
Solo una volta, in primavera, {marysia_odzyskana:la nipotina|la nipotina di Antek} portò dalla collina qualcosa nel pugno e lo mostrò a Jaromir sul palmo aperto. Era un piccolo germoglio verde d’abete, morbido e tiepido come un pulcino. # pokaz: kielek
– Lo butto via? – chiese. – E com’era, nonno, quando c’era la foresta?
Jaromir tenne il germoglio fra le dita.{ noc_pozaru == oslepl: Non lo vedeva, ma lo sentiva.} Poi glielo restituì.
– Piantalo – disse. – Lontano dal villaggio. – Si mise più comodo. – Una settantina d’anni prima che io guardassi per la prima volta verso la foresta che non c’è più… # dalej
-> koniec_opowiesci

= koniec_opowiesci
# ozdobnik
_Fine._
-> END

=== function bielmo()
~ return dlug_u_jagny && (dlug_jagny == dlug_odmowiony || (not marysia_odzyskana && cialo_kopii != oddane_jagnie))

=== function wilk_zywy()
~ return cena_caluna != cena_franek

=== function wilk_przy_mnie()
~ return wilk_przy_jaromirze && znak_rozpoznania != po_wilku && cena_caluna != cena_franek
