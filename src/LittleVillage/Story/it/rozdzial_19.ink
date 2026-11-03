// ------------------------------------------------------------
//  Rozdział dziewiętnasty – Świt. Dwie drogi po rozdziale osiemnastym.
//  [Marysia żyje] powrót o świcie, dług u Jagny (wstążka, drewniak albo odmowa),
//  lato i żniwa, pod koniec sierpnia kijanki nad jeziorem – mamuny piorą mały całun
//  (cenę za zmycie imienia wybiera się w r20, w noc Zaduszek). Jesień, mgła pod płotami,
//  gromnice gasną.
//  [zły wybór] Hanka poznaje po zapachu, co Jaromir przyniósł; ciało pochowane,
//  oddane Jagnie, spalone albo zakopane pod młodnikiem; trumienka z bzu, wianki,
//  kołysanka; jesień – „Przyjdzie?”; paliła się tylko gromnica Hanki.
// ------------------------------------------------------------

=== rozdzial_dziewietnasty ===
{ marysia_odzyskana:
    -> powrot_z_marysia
- else:
    -> powrot_bez_niej
}

= powrot_z_marysia
# tlo: laka_swit
# rozdzial: Capitolo diciannovesimo
# tytul: L’alba
Il sole spuntò dietro il bosco proprio nel momento in cui Jaromir giunse al margine della boscaglia giovane. Sulle andane la rugiada si fece di vetro, tanto da fargli male agli occhi, e nel grano cantò un’allodola – il primo uccello che sentiva da tre giorni.
{ ekwipunek ? szczenie_psa:
    Il cane lo sorpassò e corse verso il villaggio abbaiando così forte che gli risposero tutte le aie di Zapadlina. # pokaz: pies
}
{ wilk_przy_jaromirze && znak_rozpoznania != po_wilku:
    Il lupo bianco li accompagnò fino agli ultimi abeti e lì si sedette. Quando Jaromir si voltò, un attimo dopo, non c’era più. # pokaz: wilk
}
Hanka correva dalla casa, con la ninnananna interrotta a metà parola, scalza, nell’erba bagnata, con le braccia tese davanti a sé – come se temesse, abbassandole, di svegliarsi accanto alla teda spenta. Non gridava.{ pani_w_zbozu_noc == za_spiewem: Non poteva. Dalla gola le usciva soltanto un sibilo secco, spezzato.} Li raggiunse a metà strada e li strinse entrambi, con tutte le sue forze, tanto che Marysia strillò indignata. Affondò il viso nei capelli della figlia e per un poco non fece che respirare; poi prese a ridere e a piangere insieme, a baciare la piccola sui piedi sporchi, sulle mani, sulla testa. Solo allora guardò Jaromir, le guance segnate dai rami, e gliele sfiorò con le dita, piano, come per accertarsi che fosse lui. # pokaz: uscisk
Jaromir sentì che le gambe non lo reggevano più. Si sedette nell’erba. Rimasero così, tutti e tre, e la gente coi rastrelli stava sulle andane, e nessuno si muoveva.
Il primo ad avvicinarsi fu Antek. Non disse nulla – si tolse la giubba e ci avvolse la piccola.{ zastaw_u_leszego == zastaw_cien: Solo a mezzogiorno, quando uscirono nell’aia, Hanka abbassò gli occhi ai piedi del marito e non riuscì più a staccarli dal punto dove avrebbe dovuto stendersi la sua ombra. Non fece domande. Jaromir gliene fu grato più che di qualunque altra cosa.} # pokaz: antek # dalej
{ dlug_u_jagny:
    -> dlug_jagny_dobry
}
-> lato_po_powrocie

= dlug_jagny_dobry
# tlo: wies_sianokosy
Jagna aspettava accanto allo steccato, vicino al suo carro. Quando Jaromir le passò davanti con Marysia in braccio, alzò su di lui l’occhio sano. # pokaz: jagna
– La prima cosa che porterai fuori dal bosco – gli rammentò piano. – Questo era il prezzo.
Hanka si fermò a metà del passo. Marysia si aggrappò al collo di Jaromir.
# pytanie: Che cosa darà Jaromir a Jagna?
*   [Il nastro che ha al polso.]
    ~ dlug_jagny = oddana_wstazka
    Jaromir sollevò la mano col laccio rosso stretto al polso. – Mi andava davanti mentre scostavo i rami – disse. – È uscito dal bosco prima che portassi fuori mia figlia.
    ~ ekwipunek -= wstazka_marysi
    Jagna lo osservò senza una parola, poi le fremettero gli angoli della bocca. Gli sfilò il nastro dal polso e se lo nascose in seno. – Quel che è stato nel bosco ed è tornato mi servirà per il mio lavoro – disse. # tobolek
    Hanka strinse le labbra. Quel nastro l’aveva intrecciato lei nei capelli di Marysia, la vigilia di San Giovanni. # dalej
*   [Lo zoccolo che porta in seno.]
    ~ dlug_jagny = oddany_drewniak
    – L’ho portato sul cuore – disse Jaromir. – Prima di lei. – Infilò la mano sotto la giubba e porse a Jagna lo zoccoletto rosso{ drugi_drewniak: – uno dei due}.
    { drugi_drewniak:
        ~ drugi_drewniak = false
    - else:
        ~ ekwipunek -= bucik_marysi
    }
    Jagna se lo rigirò fra le dita e annusò il feltro all’interno. – È stato nella segale da quella là ed è stato nel bosco – borbottò. – E sia. – Lo gettò nel cesto delle erbe. # tobolek
    Marysia seguì lo zoccolo con lo sguardo e, quando il carro si mosse, scoppiò in un pianto come non aveva pianto nemmeno sotto la quercia. Da quel giorno non si lasciò più mettere ai piedi nessuna scarpa – scalciava e strillava, finché Hanka non cedette. La piccola andò scalza fino alla prima neve. # dalej
*   [Rifiutare – una bambina non è una cosa.]
    ~ dlug_jagny = dlug_odmowiony
    – Non l’avrai – disse Jaromir. – Né oggi, né mai.
    Jagna non alzò la voce. – Non sono qui per lei – rispose. – Sono qui per ciò che mi spetta. – Attaccò il cavallo. – Un debito non marcisce, Jaromir. Aspetterà.
    Se ne andò adagio. Quella notte Hanka appese sopra il giaciglio della piccola tutto ciò che aveva: una crocetta, una corona di erbe, un coltellino. Non chiuse occhio fino all’alba. # dalej
-   -> lato_po_powrocie

= lato_po_powrocie
# tlo: zniwa
Marysia non ricordava nulla.{ rada_przed_borem == rada_ksiedza: Il parroco di Bukowiec aveva avuto ragione.} Quando le chiedevano dove fosse stata, li guardava stupita e diceva che aveva dormito. Aveva paura del buio – da allora la teda alla finestra ardeva ogni notte, benché non aspettassero più nessuno – e non canticchiò mai più la sua melodia. Hanka tendeva l’orecchio ogni sera accanto al giaciglio della piccola, ma invano.
La mietitura fu tardiva e pesante. La calura ristagnava sui campi, nell’aria aleggiavano la polvere delle spighe e l’odore della paglia rovente, e le falci squillavano dall’alba al tramonto.{ pole_zbite_gradem: Jaromir, che sul suo non aveva niente da falciare, si metteva a giornata da quelli di Staś e dai Kowalczyk, per una bica su dieci.}{ zastaw_u_leszego == zastaw_siekiera: La legna la spaccava con un’ascia prestata dal suocero – il manico era troppo liscio, troppo grosso, non suo.}{ zastaw_u_leszego == zastaw_krzesiwo: Il fuoco lo accendeva con le braci dei vicini; il suo acciarino non l’aveva più.}
{ pies_pobiegl_sam:
    ~ ekwipunek += szczenie_psa
    Dopo una settimana, in una notte di pioggia, un cane guaì alla porta. Era magro come un bastone, con le zampe ferite a sangue. Jaromir lo fece entrare senza una parola, e il cane dormì due giorni sotto la panca di Marysia. # tobolek
}
{ znak_rozpoznania == po_wilku:
    Antek la sera si fermava al margine del campo e tendeva l’orecchio. Da quel mattino dal bosco non giungeva più alcun ululato.
}
Ma l’acqua non dava loro pace. Marysia non voleva andare al lago, e quando Hanka lavava i panni nel ruscello, la piccola si nascondeva dietro la sua gonna, si irrigidiva tutta e non staccava gli occhi dalla corrente.{ dar_pominiety: A luglio Hanka trovò sulla soglia una coroncina di ruta, bagnata – uguale a quella che Jaromir ogni anno portava sulle pietre dall’altra parte del lago. Giaceva in una pozzanghera, benché non piovesse da una settimana.} # dalej
-> kijanki

= kijanki
# tlo: calun_noc
Verso la fine di agosto, nella notte in cui si compivano tre anni da quando Marysia era venuta al mondo, Jaromir fu svegliato da uno schioccare. Cadenzato, bagnato, dal lago – un battipanni sulla pietra. Ricordava quel suono dai tempi in cui Marysia era ancora nella culla.
Guardò la panca accanto alla stufa. La piccola dormiva, raggomitolata, col pugnetto sotto la guancia. Hanka respirava regolare.
Uscì piano, scalzo, fece il giro del lago lungo la riva e si acquattò fra le canne dall’altra parte, proprio accanto alle pietre piatte. Vi stavano inginocchiate le mamune – gobbe, fradice, in stracci di muschio – e lavavano nell’acqua qualcosa di piccolo, di chiaro. Proprio della misura di un bambino. Non chiamavano alcun nome. Quando le canne frusciarono, la più vecchia non alzò nemmeno la testa. # pokaz: mamuny
{ dar_pominiety:
    – Una volta hai dimenticato, padrone – gracchiò, china sul lago. – Non laveremo più adagio.
- else:
    – Non oggi, padrone – gracchiò, china sul lago. – Laviamo ciò che ci porta l’acqua.
}
– Il giorno dei Morti porteremo ciò che avremo lavato – aggiunse un’altra. # dalej
-> jesien_przed_zaduszkami

= jesien_przed_zaduszkami
# tlo: jesien_zaduszki
~ zapiski += pan_lasu_11
L’autunno venne presto. La trebbiatura nei fienili, la semina della segale d’inverno, la gramolatura del lino – il villaggio faceva il suo come ogni anno, e Jaromir si aggrappava a ogni lavoro pur di non restare solo coi suoi pensieri. Marysia cresceva. A ottobre, per la prima volta dal ritorno, rise forte a tavola, e Hanka uscì nell’andito e per un pezzo non tornò.
Jaromir non disse a Hanka che cosa aveva visto sulle pietre dall’altra parte del lago. Ma ogni sera, prima di addormentarsi, pensava a quanto mancasse ancora al giorno dei Morti, e ogni volta gli sembrava che ne mancasse meno della notte precedente.
Più si avvicinava il giorno dei Morti, più Zapadlina si faceva silenziosa. La gente tornava dai campi prima del buio, sprangava le porte, e ogni sera dal bosco saliva per i prati la nebbia, pesante e umida, fin sotto gli steccati. Jaromir ricordava ogni parola: «Il giorno dei Morti verrò al villaggio. Allora faremo i conti fino in fondo». # pokaz: mgla
Il primo di novembre il villaggio andò al cimitero di Bukowiec. Quell’anno, invece delle lucerne, la gente portò da casa le candele della Candelora. Sulla via del ritorno si spensero d’un fiato, tutte quante, benché l’aria fosse immobile. # pokaz: zgasly # dalej
-> rozdzial_dziewietnasty_ciag_dalszy

= powrot_bez_niej
# tlo: laka_swit
# rozdzial: Capitolo diciannovesimo
# tytul: L’alba
Il sole spuntò dietro il bosco proprio nel momento in cui Jaromir giunse al margine della boscaglia giovane. Sulle andane la rugiada si fece di vetro, e nel grano cantò un’allodola. Jaromir non la sentì affatto.
Hanka correva dalla casa, ancora con la ninnananna sulle labbra, scalza, nell’erba bagnata, con le braccia tese davanti a sé. A metà strada rallentò. Poi si fermò.
Non gridava.{ pani_w_zbozu_noc == za_spiewem: Non poteva.} Prese la bambina dalle braccia di Jaromir, con cautela, come si prende chi dorme, e affondò il viso nei capelli sottili, come faceva ogni sera. Annusò a lungo. I capelli non sapevano di niente – né di latte, né di fumo, né di lei. Capì. # pokaz: kolysze
Si sedette nell’erba con la bambina e prese a cullarla. La gente coi rastrelli stava sulle andane, e nessuno si muoveva. Il primo ad avvicinarsi fu Antek. Si tolse il berretto. # pokaz: antek
{ wilk_przy_jaromirze && znak_rozpoznania != po_wilku:
    Il lupo bianco, che aveva seguito Jaromir per tutta la boscaglia giovane, si fermò presso gli ultimi abeti. Quando qualcuno guardò da quella parte, non c’era più. # pokaz: wilk
}
{ ekwipunek ? szczenie_psa:
    Il cane si accucciò ai piedi di Hanka e guaiva, piano, senza sosta, finché qualcuno non lo trascinò via. # pokaz: pies
}
{ zastaw_u_leszego == zastaw_cien:
    Nessuno si accorse che Jaromir non faceva ombra. Nessuno lo guardava.
}
{ dlug_u_jagny:
    Jagna si avvicinò dalla parte dello steccato e si chinò sulla bambina fra le braccia di Hanka. Osservò i piedini rigidi e il sorriso composto, immobile. Poi si raddrizzò e disse a Jaromir sottovoce, in modo che Hanka non sentisse: – Questa non è tua figlia. È legno. È uscita dal bosco subito dietro di te. Posso prenderla al posto del debito. So che cosa si fa con una cosa così. # pokaz: jagna
- else:
    Il vecchio Staś arrivò zoppicando col bastone, guardò la bambina e si fece il segno della croce. – I bambini del bosco non si mettono in terra benedetta – borbottò. – Ai tempi di mio nonno, quando a Bukowiec la chiesa ancora non c’era e per ogni funerale toccava andare fino in città, lo sapevano tutti lo stesso… O il fuoco, o ai piedi della foresta. # pokaz: stas
}
Jaromir ricordava la voce sotto la quercia: «Lo seppellirai come tuo».
# pytanie: Che cosa farà Jaromir del corpo?
*   [Seppellirlo come una figlia, al cimitero.]
    ~ cialo_kopii = pochowane
    Lo prese da Hanka e lo portò in casa. Lo adagiò sulla panca dove dormiva Marysia e lo coprì con un telo di lino. # dalej
*   { dlug_u_jagny } [Darlo a Jagna.]
    ~ cialo_kopii = oddane_jagnie
    Hanka non voleva lasciarlo. Lo lasciò solo quando Jagna le posò una mano sugli occhi e sussurrò qualcosa. Poi avvolse il corpo in un telo di lino, lo adagiò sul carro fra i cesti delle erbe e se ne andò adagio verso Bukowiec. Il debito era pagato. # dalej
*   [Bruciarlo nella stufa.]
    ~ cialo_kopii = spalone
    La sera, quando Hanka finalmente si addormentò sfinita, Jaromir accese un fuoco vivo. Per molto non trovò il coraggio di posare la bambina fra le fiamme. Quando alla fine lo fece, non bruciava come un corpo. Crepitava come legno di pino grasso, sfrigolava di resina, e il fumo odorava di aghi d’abete. Al mattino nella cenere c’erano solo carboni.
    Hanka vide la cenere. Non disse nulla. Da quel mattino non accese più la stufa nemmeno una volta – l’accendeva sempre lui. # dalej
*   { not dlug_u_jagny } [Seppellirlo ai piedi della boscaglia giovane, come consiglia Staś.]
    ~ cialo_kopii = pod_mlodnikiem
    Scavò la fossa da solo, sotto gli ultimi abeti, dove la terra era soffice di aghi. Hanka gli stava accanto e non si lasciò consolare. # dalej
-   -> pogrzeb

= pogrzeb
{ cialo_kopii == pod_mlodnikiem:
    -> pogrzeb_pod_lasem
}
# tlo: pogrzeb
-> pogrzeb_trumienka

= pogrzeb_pod_lasem
# tlo: skraj_powrot
-> pogrzeb_trumienka

= pogrzeb_trumienka
~ zapiski += (dzieci_2, pan_lasu_11)
La piccola bara Jaromir la inchiodò da sé, col legno del vecchio sambuco – lo stesso nella cui chioma da ragazzo aveva avuto il suo rifugio.{ zastaw_u_leszego == zastaw_siekiera: Lo abbatté con l’ascia prestata dal suocero.} Si diceva che un albero così non si taglia, perché porta sventura. A Jaromir ormai non importava più nulla. Il taglio fresco aveva un odore amaro e stucchevole, e dai rami gli caddero sulla manica gli ultimi fiorellini secchi.{ kapliczki_drogi == ocalil_swiatka: Mentre smontava le assi del rifugio, gli cadde fra le mani la Madonna che un tempo aveva portato via dal carro del signor Urbaniak. La mise a capo della bara.} Nel silenzio si udiva solo il battere dei chiodi. # pokaz: trumienka
Le bambine del villaggio intrecciarono coroncine di fiordalisi e di camomilla, colti sulla proda, e le posarono sul coperchio. Profumavano del sole che a Zapadlina, quel giorno, nessuno aveva visto. # pokaz: wianki
{ pani_w_zbozu_noc == za_spiewem:
    Hanka non cantò – da quella notte nella segale non ne era più capace. Diceva le parole della ninnananna, una dopo l’altra, con voce roca, senza melodia, ed era peggio del pianto.
- else:
    Hanka cantò la ninnananna che ogni sera mormorava a Marysia. La voce non le si incrinò nemmeno una volta, e proprio per questo fu la cosa peggiore.
}
{ cialo_kopii == oddane_jagnie || cialo_kopii == spalone:
    Nella piccola bara non c’era il corpo – solo il vestitino di Marysia, piegato con cura, come per riporlo nella cassa.
}
{ skarb_dla_corki:
    Prima che inchiodassero il coperchio, Jaromir depose nella bara il tesoro del rifugio – {skarb_jaromira == muszelka:la conchiglia segnata da un dentino storto|{skarb_jaromira == pioro:la penna tutta sgualcita, col calamo mordicchiato|il chiodo dalla ruggine bruna}}.
- else:
    ~ ekwipunek -= bucik_marysi
    Prima che inchiodassero il coperchio, Jaromir depose nella bara {drugi_drewniak:entrambi gli zoccoli rossi|lo zoccolo rosso – l’unico che gli era rimasto}{uklad_z_mamunami != oddany_skarb:, e accanto {drugi_drewniak:a quelli|a quello} il tesoro della cassetta nel rifugio – {skarb_jaromira == muszelka:la conchiglia bianca|{skarb_jaromira == pioro:la penna di ghiandaia|il chiodo arrugginito}}. Un giorno avrebbe voluto mostrarlo alla figlia}. # tobolek
}
{ cialo_kopii == pod_mlodnikiem:
    La tomba ai piedi della boscaglia giovane la ricoprirono di zolle erbose, e a capo Antek piantò un bastone col nastro rosso che Hanka aveva sciolto dai capelli della bambina, perché si sapesse dove. # dalej
- else:
    Seppellirono la piccola bara al cimitero di Bukowiec, sotto una betulla. Il parroco{ przysiega_ksiedzu:, che aveva accolto il giuramento di Jaromir sul rosario,} officiò tutto come si deve e non chiese nulla.{ cialo_kopii == oddane_jagnie || cialo_kopii == spalone: Quando il becchino colmò la fossa, la terra batteva sul coperchio con un suono così sordo che Jaromir lo sentì poi per notti intere.} # dalej
}
-> jesien_po_pogrzebie

= jesien_po_pogrzebie
# tlo: jesien_zaduszki
Verso la fine di agosto, nella notte in cui si compivano tre anni da quando Marysia era venuta al mondo, Hanka andò alla tomba da sola e vi rimase seduta fino all’alba. Jaromir non la seguì. Non avrebbe saputo guardarla negli occhi – perché sapeva che cosa lei non gli avrebbe detto.{ znak_rozpoznania == po_imieniu: Se non l’avesse chiamata per nome.}{ znak_rozpoznania == po_drewniaku: Si era fatto ingannare dal rosso, come un bambino.}{ znak_rozpoznania == po_buzi: L’aveva guardata e non l’aveva riconosciuta.}{ znak_rozpoznania == po_cieniu: Aveva dato via lui stesso ciò che poi l’aveva ingannato.}
L’autunno venne presto. La trebbiatura nei fienili, la semina della segale d’inverno, la gramolatura del lino – il villaggio faceva il suo come ogni anno, e Hanka lo stesso, svelta e senza una parola. Ogni notte Jaromir sentiva la moglie alzarsi e camminare per la stanza, dalla stufa alla finestra e ritorno.
{ pies_pobiegl_sam:
    ~ ekwipunek += szczenie_psa
    Il cane era tornato dal bosco già a luglio, una settimana dopo San Giovanni, magro come un bastone, e si era accucciato sotto la panca dove dormiva Marysia. Non ci fu verso di farlo uscire di lì. # tobolek
}
{ dlug_u_jagny && cialo_kopii != oddane_jagnie:
    Jagna non si fece più vedere. Il debito non era pagato, e Jaromir sapeva che anche lei ne era consapevole.
}
A ottobre Hanka chiese, senza voltarsi dalla pentola: – Il giorno dei Morti i defunti tornano alle loro case. Così dicono. – Mescolò. – Verrà?
Jaromir non rispose. Ricordava la voce dal bosco, che era arrivata a metà e si era spenta. Ricordava anche l’altra: «Il giorno dei Morti verrò al villaggio. Allora faremo i conti fino in fondo».
Più si avvicinava il giorno dei Morti, più Zapadlina si faceva silenziosa. La gente tornava dai campi prima del buio, sprangava le porte, e ogni sera dal bosco saliva per i prati la nebbia, pesante e umida, fin sotto gli steccati. # pokaz: mgla
Il primo di novembre il villaggio andò al cimitero di Bukowiec. Quell’anno, invece delle lucerne, la gente portò da casa le candele della Candelora. Sulla via del ritorno si spensero d’un fiato, tutte quante, benché l’aria fosse immobile. Ardeva soltanto la candela di Hanka – ferma, quieta, come in una stanza chiusa. # pokaz: zgasly, gromnica_hanki # dalej
-> rozdzial_dziewietnasty_ciag_dalszy


// Koniec rozdziału dziewiętnastego – dalej rozdział dwudziesty (Ostatnia noc).
=== rozdzial_dziewietnasty_ciag_dalszy ===
# ozdobnik
_Fine del capitolo diciannovesimo._ # dalej
-> rozdzial_dwudziesty
