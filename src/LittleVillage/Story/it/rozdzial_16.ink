// ------------------------------------------------------------
//  Rozdział szesnasty – W głąb boru. Jaromir wchodzi do boru po Marysię.
//  Ścieżki zawracają: ubranie na lewą stronę (las wyjmuje mu z pamięci twarz
//  córki, pies ucieka sam), nacięcia na pniach (las jęczy), pies (poziomki
//  i ostry mech) albo dziura w chmurach z rady płanetnika (pragnienie).
//  O zmierzchu głosy: odpowiedział Marysi (Leszy go policzył), milczał albo
//  poszedł za Frankiem (biały wilk). Bagno z garnkami i błędnice: za światłami
//  (rozpruta torba), krąg z soli, wilk (rana dłoni), różaniec (spalony)
//  albo krzesiwo (pożar porostu). W sercu boru dąb i starzec, który zdejmuje
//  kapelusz i rośnie w Pana Lasu: „Usiądź, wnuku Maćka. Porozmawiamy”.
// ------------------------------------------------------------

=== rozdzial_szesnasty ===
# tlo: skraj_bor
# rozdzial: Capitolo sedicesimo
# tytul: Nel cuore del bosco
Settant’anni dopo che nonno Maciek era sceso a Zapadlina col fagotto in spalla, Jaromir guardò per la prima volta verso la foresta – non come si guarda il bosco dai campi, dal lato sicuro dello steccato, ma come si guarda una strada che bisogna percorrere.
Stava al margine della boscaglia giovane, con l’ascia in mano e la bisaccia a tracolla. Il nastro di Marysia se l’era avvolto attorno al polso, per sentirlo a ogni movimento.
{ obietnica_bor:
    Un tempo aveva promesso {figurka_u_staruchy && los_psa == oswojony:alla nonna sul letto di morte|a suo padre} che non sarebbe mai entrato nel bosco, chiunque lo chiamasse. Aveva mantenuto quella parola per tredici anni. Il primo passo tra i pini lo mosse con cautela, col cuore in gola, e sentì che stava spezzando qualcosa che non si sarebbe più potuto rimettere insieme.
- else:
    {poszedl_po_wstazke:Da quando, da ragazzo, era entrato tra gli abeti a riprendere il nastro di Hanka, non si era mai spinto più in là di qualche decina di passi.|Non si era mai spinto più in là di qualche decina di passi, fin dove tacevano gli uccelli.} Non l’aveva promesso a nessuno – erano le gambe a tornare indietro da sole, quando gli alberi cominciavano a stare troppo fitti.
}
{ droga_do_boru:
    Sulla tagliata di Urbaniak da ogni ceppo spuntavano germogli chiari, e i solchi delle ruote si erano coperti di muschio, benché in autunno vi fossero passati i carri. Ai primi grandi pini la strada finiva, e più in là non c’era più nulla, soltanto il bosco.
- else:
    Si aprì un varco nella boscaglia giovane, che la notte dell’incendio si era spinta fin sotto il villaggio. Gli abeti crescevano così fitti che doveva passarci di sbieco, e gli aghi gli piovevano dentro il colletto.
}
{ ekwipunek ? szczenie_psa:
    Oltre le staccionate lo raggiunse il cane – doveva essere sfuggito a Hanka sulla soglia. Jaromir non ebbe cuore di scacciarlo. Gli porse lo zoccolo di Marysia; il cane lo annusò, guaì sottile e corse avanti. # pokaz: pies
}
Oltre i primi pini tutto tacque. Gli aghi cadevano dai rami a piombo, senza un fruscio, perché non c’era vento che li portasse via. Il prato alle sue spalle grondava di rugiada, ma qui la terra era asciutta e calda, il muschio scricchiolava sotto gli scarponi come pelle rinsecchita, e nell’aria stagnava un odore di resina e di legno scaldato che pizzicava la gola.{ rada_przed_borem == rada_planetnika: «Dove non piove» – si ricordò Jaromir, e strinse le dita sul manico dell’ascia.} # pokaz: igly
Camminò sempre dritto davanti a sé, finché il sole non fu alto. Alla fine gli abeti si diradarono e vide il prato umido, {pani_w_zbozu_noc == z_pochodniami:la segale calpestata|{pole_zbite_gradem:il grano battuto dalla grandine|{pani_w_zbozu_noc == gonil_babe:la segale pestata|la segale}}} e il ginepro al margine della boscaglia giovane. Era tornato nello stesso punto da cui era partito. Ci riprovò, tenendo il sole alla sua destra. E una terza volta. Ogni volta il bosco lo riaccompagnava fin sotto il villaggio – con garbo, con cortesia, come si accompagna al cancello un ospite che nessuno aveva invitato.{ ekwipunek ? szczenie_psa: A ogni tentativo il cane restava un po’ indietro, col naso contro la corteccia, e tornava da Jaromir di malavoglia, guaendo.}
# pytanie: Come attraverserà Jaromir il bosco?
*   [Mettersi i vestiti al rovescio, come insegnava il maestro Ignacy.]
    ~ wejscie_do_boru = ubranie_na_lewo
    # tlo: bor_suchy
    Si tolse la giubba e la camicia e se le rimise con le cuciture all’esterno.{ glos_w_lesie == kozuch: Proprio come in quella notte d’inverno, quando aveva nove anni e stava {figurka_u_staruchy:nel campo, in mezzo alla nebbia|nella neve sotto il bosco}.} Quando riprese a camminare, il sentiero smise di tornare indietro. La foresta lo accolse come uno dei suoi – i rami si scostavano da soli e il muschio gli guidava i piedi.
    { ekwipunek ? szczenie_psa:
        ~ ekwipunek -= szczenie_psa
        ~ pies_pobiegl_sam = true
        Il cane lo annusò da lontano e rizzò il pelo, come davanti a un estraneo. Poi corse avanti da solo, dietro all’odore di Marysia, e sparì tra i tronchi. Jaromir lo chiamò finché non gli si arrochì la voce. # pokaz: pies_ucieka # tobolek
    }
    Camminò a lungo. Verso sera sedette su una radice e provò a ricordare il viso di Marysia – e si spaventò. Vedeva il nastro, vedeva gli zoccoli, sentiva la sua risata, ma il visetto gli si sfaldava come un riflesso nell’acqua in cui qualcuno ha gettato un sasso. Strinse le palpebre e sussurrò, una cosa dopo l’altra: le lentiggini sul naso, il dentino che le cresceva storto, la fossetta sulla guancia sinistra. Il bosco lo aveva riconosciuto come suo – e in silenzio gli toglieva ciò che apparteneva soltanto a Jaromir. # dalej
*   [Segnare la strada con l’ascia sui tronchi.]
    ~ wejscie_do_boru = naciete_pnie
    # tlo: bor_suchy
    Ogni pochi tronchi lasciava una tacca profonda, all’altezza del viso. La resina che colava dalle ferite era fredda come l’acqua di pozzo e così densa che impastava la lama – doveva strapparla dal legno con tutto il peso del corpo. Dopo un’ora si voltò. Le tacche fatte all’inizio si richiudevano sotto i suoi occhi – la corteccia ci scivolava sopra come una palpebra. # pokaz: naciecia
    Ma bastava: quando il sentiero voleva tornare indietro, lui vedeva davanti a sé le ferite fresche e proseguiva. Da qualche parte nel folto del bosco, lontanissimo, gli giunse un gemito – basso, prolungato, come di un vecchio albero che si abbatte. Oppure come se qualcuno di molto grande avesse sibilato di dolore. Jaromir non si fermò, ma le mani presero a tremargli e fino a sera non smisero. # dalej
*   { ekwipunek ? szczenie_psa } [Fidarsi del cane – il fiuto non si smarrisce.]
    ~ wejscie_do_boru = za_psem
    # tlo: bor_suchy
    – Cerca – sussurrò Jaromir, e porse di nuovo lo zoccolo al cane. – Cerca Marysia.
    Stavolta non lo richiamò. Il cane andava col naso a terra, a zigzag, ogni tanto si fermava e fiutava la corteccia all’altezza della manina di una bambina. I sentieri curvavano, si biforcavano e tornavano indietro, ma il cane non dava loro retta – scavalcava le radici divelte, s’infilava sotto i tronchi caduti, dritto dietro all’odore. Jaromir lo seguiva, lacero, pieno di lividi, con la bocca piena d’aghi. # pokaz: pies_trop
    Verso sera il cane si fermò accanto a un pino abbattuto e guaì. A un nodo del legno pendeva un brandello di lino bianco – della camicina di Marysia. E sotto il nodo, sul muschio, qualcuno aveva posato una manciata di fragoline di bosco, in fila, una accanto all’altra, come per un bambino. Avevano un profumo così dolce che a Jaromir venne l’acquolina; dal mattino non aveva mangiato niente.{ rada_przed_borem == rada_jagny: «Qualunque cosa trovi nel bosco, non mangiarla» – si ricordò, e strinse il pugno finché le unghie non gli entrarono nel palmo.} Trascinò via il cane a forza. Solo allora vide che la bestia aveva le zampe insanguinate – il muschio intorno alle fragoline era tagliente come vetro pestato. # pokaz: poziomki # dalej
*   { rada_przed_borem == rada_planetnika } [Andare là dove sopra il bosco non ci sono nuvole.]
    ~ wejscie_do_boru = pod_czystym_niebem
    # tlo: bor_suchy
    Invece di guardare i sentieri, guardava in alto. Sopra la foresta si stendevano nuvole grigie e pesanti – e tra le chiome, lontano, si apriva uno squarcio di cielo limpido, attorno al quale le nuvole si separavano, come la corrente aggira un sasso. Andava verso quello squarcio, fosse pure tra radici divelte e sterpaglie, fosse pure di traverso a ogni sentiero, e la foresta non riusciva a ricondurlo indietro, perché non percorreva nessuna delle sue vie. # pokaz: niebo
    Ma la nuca gli doleva a forza di tenere la testa all’insù, aveva le gambe scorticate a sangue dalle radici che non vedeva, e acqua non ne aveva presa – a Zapadlina nessuno si portava l’acqua nella foresta. Verso sera la lingua gli si incollava al palato, e ogni ruscello che incontrava mormorava in modo così invitante che doveva distogliere lo sguardo. # dalej
-   -> glosy_w_borze

= glosy_w_borze
# tlo: glosy_noc
Al crepuscolo cominciarono a chiamarlo delle voci.
Prima Hanka. Da sinistra, da dietro gli abeti fitti.
– Jaromir! Torna indietro! Lei è a casa, è tornata da sola, hai capito? Torna!
{ pani_w_zbozu_noc == za_spiewem:
    La voce era intera – calda, un po’ roca, quella che Hanka aveva prima che la cosa nel grano gliene portasse via metà. Adesso Hanka riusciva appena a sussurrare. Jaromir serrò i denti.
- else:
    La voce era la sua, in ogni raucedine. Jaromir fece un passo da quella parte, prima di ricordarsi che Hanka aveva promesso di tenere accesa la teda ogni notte, finché non fossero tornati – sotto il villaggio, non nel folto del bosco.
}
Poi sua madre, da destra, con tenerezza e dolcezza, come gli parlava quando era piccolo:
– Figliolo, vieni da me. Ho freddo. Mi sono persa.{ glos_w_lesie == odpowiedzial: Le stesse parole di quell’inverno, quando aveva nove anni e aveva risposto. Fino all’ultima.}
Poi Franek – quel Franek, il fratello di Antek – allegro, da lontano, proprio come lo chiamava un tempo al lago:
– Jaromir! Di qua! Vieni, ti faccio vedere una cosa!
E infine, sottile, dal fondo del bosco, pianse una bambina.
– Papà! Papà, ho paura!
# pytanie: Che cosa farà Jaromir?
*   [Rispondere a Marysia.]
    ~ glosy_boru = odpowiedzial_marysi
    – Marysia! – Il grido gli sfuggì da solo. – Sono qui! Vengo da te!
    Il pianto si spezzò a metà. La foresta ammutolì. Dopo un attimo, da qualche parte molto vicino, proprio sopra la sua testa, qualcuno cominciò a contare, lentamente, con solennità: # pokaz: liczy
    – …settecentonovantotto… settecentonovantanove… – Una pausa. – E tu. Ottocento. Questo è mio.
    { glos_w_lesie == odpowiedzial && zawolal_do_lasu:
        – Te l’avevo detto che ti avrei contato, quando fosse venuta l’ora – aggiunse la stessa voce, pacata, quasi con tenerezza. – È venuta.
    }
    Jaromir cadde in ginocchio. Per un momento non riuscì a riprendere fiato – qualcosa di pesante gli gravava sul petto e lo schiacciava. Quando si rialzò, di una cosa era certo: da quel momento la foresta sapeva chi era, e non aveva più bisogno di cercarlo. # dalej
*   [Tacere e andare avanti.]
    ~ glosy_boru = milczal
    Si mordeva la manica della giubba per non rispondere; in bocca aveva il sapore della lana e del sangue. Hanka chiamava sempre più disperata, la madre piangeva, Franek rideva e lo invitava. E Marysia… Marysia pianse tutta la notte, più vicino e più lontano, da una parte e dall’altra, e ripeteva «papà, papà», e ogni «papà» lo colpiva dove la piccola gli si stringeva di notte – sotto la clavicola. Alla fine cominciò a chiedere perché non veniva.
    Camminava. Non rispose neppure una volta. Verso l’alba il pianto si quietò – non si interruppe, ma si spense piano piano, sommesso, come quello di una bambina che si è stancata di chiamare e si è addormentata. Jaromir rimase a lungo immobile, e non sapeva se doveva rallegrarsene. # pokaz: swit # dalej
*   [Seguire la voce di Franek.]
    ~ glosy_boru = za_frankiem
    ~ zapiski += tropy_3
    – Franek? – sussurrò Jaromir, e piegò a sinistra, tra gli abeti.
    La voce lo guidò a lungo, rideva, lo chiamava, finché alla fine tacque sopra una buca di radici divelte. Nel buio, su un tronco caduto, sedeva il lupo bianco. # pokaz: wilk
    { oblawa_wilk == wydal_wilka:
        Sul fianco aveva una vecchia ferita di pallottola, mal rimarginata – una striscia spessa e nuda sulla pelle, in mezzo al pelo bianco. Quando vide Jaromir, appiattì le orecchie e scoprì le zanne. Non attaccò. Ma per tutta la notte Jaromir ne sentì i passi alle sue spalle – e sapeva che il lupo non lo seguiva per fargli da guardia. # pokaz: rana # dalej
    - else:
        Era più magro di allora nella boscaglia giovane, e sul muso gli era spuntato del grigio – come a un vecchio cane, benché dalla battuta fossero passati appena due inverni. Guardava Jaromir senza rabbia. Poi saltò giù dal tronco, voltò il muso per controllare che Jaromir lo seguisse, e si avviò nel buio. # dalej
    }
-   -> bagno_w_borze

= bagno_w_borze
# tlo: bagno_blednice
Il giorno dopo, verso sera, il bosco si abbassò e si mutò in un acquitrino.
Tra i tronchi degli ontani marci ristagnava l’acqua – bruna, immobile, con una patina iridescente in superficie – e ne sporgevano ciuffi di carice. C’era odore di foglie macerate e di ferro vecchio; ogni respiro si posava sulla lingua come ruggine. Sull’altra sponda, là dove la foresta tornava a salire, la terra era asciutta e grigia. Lì non pioveva. Ma per arrivarci bisognava attraversare tutto questo.
Lungo la riva, dove l’acqua era bassa, giacevano pentole di coccio – capovolte, col fondo in su, una accanto all’altra, sempre più in là, a perdita d’occhio. Jaromir si ricordò del sogno che la primavera prima avevano fatto i bambini di Zapadlina, e sentì la pelle della nuca accapponarsi. # pokaz: garnki
~ zapiski += blednice_1
E poi sopra l’acqua si accesero delle luci. # pokaz: blednice
Prima una, poi un’altra, poi una decina – sfere pallide grandi come la testa di un bambino, sospese sopra le carici. In ognuna, come in una bolla di sapone, sedeva rannicchiata una piccola figura con occhi simili a due chicchi neri. Le luci non somigliavano ai fuochi fatui delle paludi sotto il villaggio – quelli ammiccavano soltanto da lontano. Queste si avvicinavano, sussurravano e pigolavano sottili, come pulcini nel nido, e si allontanavano verso il cuore dell’acquitrino, tornando di continuo verso Jaromir. Lo invitavano.
# pytanie: Come attraverserà Jaromir l’acquitrino?
*   [Seguire le luci.]
    ~ przejscie_bagna = za_blednicami
    Le seguì di ciuffo in ciuffo, e le luci gli serpeggiavano davanti, pigolavano, aspettavano. Per un momento gli parve che lo stessero davvero guidando attraverso l’acquitrino.
    Quando il cielo si fece grigio, vide che per tutta la notte aveva girato in tondo attorno a uno stesso ciuffo – calpestato fino alla nuda terra. La bisaccia gli pendeva dalla spalla squarciata da cima a fondo. Il pane, il formaggio, il sale e il vestitino di lana di Marysia erano spariti.{ ekwipunek ? ksiega: E con loro il quaderno del maestro Ignacy.} Si era salvato solo ciò che portava sotto la camicia: lo zoccolo{ ekwipunek ? zoladz: e la ghianda}. Poco più in là, sulle carici, giaceva disteso il vestitino, come se qualcuno l’avesse provato – e prima che Jaromir potesse fare un passo, l’acqua se lo risucchiò. # pokaz: welniak # tobolek
    ~ ekwipunek -= ksiega
    Passò sull’altra sponda all’alba, sui ciuffi che alla luce del giorno si vedevano bene. Tremava – e non di freddo. # dalej
*   [Spargere un cerchio di sale e aspettare l’alba.]
    ~ przejscie_bagna = krag_z_soli
    Tirò fuori dalla bisaccia lo straccetto col sale che gli aveva legato Hanka, e su un ciuffo asciutto ne sparse un cerchio attorno a sé. Sedette nel mezzo con l’ascia sulle ginocchia. # pokaz: krag
    Le luci girarono attorno al cerchio per tutta la notte, sempre più vicine, sempre più insistenti, e gli sussurravano con la voce di Hanka, con la voce di sua madre, con la voce di Marysia. Verso il mattino una delle sfere si posò proprio accanto al sale, e Jaromir vi scorse, nitido come in uno specchio, il visetto di sua figlia – le lentiggini, il dentino storto, la fossetta sulla guancia. Gli sorrideva e tendeva le manine. Rimase seduto con le mani schiacciate sotto le cosce, per non allungarle verso di lei. La sfera non oltrepassò il sale. Si spense con le altre, quando sorse il sole.
    Nella luce grigia vide uno stretto camminamento di tronchi che attraversava l’acquitrino, e che di notte non si vedeva. Ci passò sopra. Di sale non ne aveva più – era rimasto tutto nel cerchio, sciolto nel muschio. # pokaz: grobla # dalej
*   { glosy_boru == za_frankiem && oblawa_wilk != wydal_wilka } [Seguire il lupo bianco.]
    ~ przejscie_bagna = za_wilkiem
    Il lupo non guardava le luci. Attraversava l’acquitrino sicuro, sui ciuffi che Jaromir nel buio non vedeva affatto, e ogni pochi passi voltava il muso. Jaromir posava i piedi esattamente dove li posava lui. Le luci sibilavano di rabbia e si tenevano alla larga. # pokaz: wilk
    Sull’altra sponda il lupo si fermò e per la prima volta guardò Jaromir dritto negli occhi. Jaromir non resse. Allungò la mano per toccarlo.
    – Franek? – sussurrò.
    Il lupo fece schioccare le mascelle – rapido, secco, come un cane che avverte e non morde. Ma le zanne aprirono a Jaromir il dorso della mano fino all’osso. Quando alzò la testa, il lupo non c’era più. Il sangue gli gocciolava dalle dita sul lichene grigio, e a lungo non volle fermarsi. # pokaz: krew # dalej
*   { ekwipunek ? rozaniec } [Stringere il rosario in pugno e andare avanti, pregando ad alta voce.]
    ~ przejscie_bagna = z_rozancem
    – Ave Maria, piena di grazia… – cominciò Jaromir, e fece il primo passo.
    Le luci urlarono – acute, penetranti, come uccelli presi al laccio – e si spensero tutte insieme. Calò un buio così fitto che non vedeva le proprie mani. Avanzò a tentoni, saggiando i ciuffi col manico dell’ascia, e pregò finché non gli si seccò la gola. # pokaz: ciemnosc
    ~ ekwipunek -= rozaniec
    Passò. Ma quando raggiunse l’altra sponda, il rosario che stringeva era carbonizzato, e i grani gli si sbriciolarono in cenere al primo tocco. # tobolek # dalej
*   { ekwipunek ? krzesiwo } [Battere l’acciarino e seguire il bagliore delle scintille.]
    ~ przejscie_bagna = z_krzesiwem
    Tirò fuori l’acciarino del nonno e batté – una volta, due. Le scintille piovvero sulle carici, e le luci balzarono indietro pigolando, come scottate. Attraversò l’acquitrino battendo l’acciarino ogni pochi passi, e le sfere gli si aprivano davanti. # pokaz: iskry
    Sull’altra sponda una scintilla cadde nel lichene grigio – e il lichene prese fuoco in un attimo, come polvere da sparo. Jaromir pestò le fiamme, si strappò di dosso la giubba e ci batté sopra il fuoco, finché la pelle delle mani non gli si spaccò. Lo soffocò. Ma nel bosco si fece un silenzio tale che sentiva il proprio cuore, e a lungo non riuscì a liberarsi della certezza che ogni albero intorno a lui stesse in ascolto. # pokaz: ogien # dalej
-   -> serce_boru

= serce_boru
# tlo: serce_boru
Oltre l’acquitrino la foresta era diversa.
Gli alberi erano più radi, ma così vecchi che Jaromir non riusciva ad abbracciarne con lo sguardo le chiome. La corteccia si era fusa col muschio in una cosa sola, grigia e morbida come un vello. Sotto i piedi non cresceva erba, ma un lichene secco e grigio, e l’aria era così greve e immobile che ogni respiro sapeva di polvere. Qui non pioveva. Mai.
In mezzo alla radura sorgeva una quercia – più grande di quanto fosse stata un tempo la Vecchia Quercia, così enorme che le sue radici emergevano dal terreno come dorsi di pesci giganteschi. Nel tronco si apriva una fenditura, alta come due uomini, da cui spirava il freddo di una cantina.
Da dietro la quercia, sommesso, giungeva un canto. La melodia di Marysia – breve, triste. Solo che stavolta non s’interrompeva a metà. Qualcuno la portava fino all’ultima nota con una voce profonda e scabra, simile allo scricchiolio di un albero nel vento. Jaromir non aveva mai sentito come finiva. Gli parve di essere stato derubato: toccava a lui ascoltare per primo quella fine – insieme a lei, accanto al suo lettino. # pokaz: spiew
Dall’ombra della quercia uscì un vecchio. # pokaz: starzec
Jaromir lo riconobbe subito – era lui che stava al margine della foresta durante la festa di nozze{ poszedl_po_wstazke:, ed era lui che anni prima aspettava nella penombra del bosco accanto al nastro di Hanka}. Solo che allora era lontano. Adesso Jaromir vedeva che la pelliccia di montone non era cucita, ma cresciuta tutta d’un pezzo, come una corteccia, e che il muschio sul cappello era fresco e umido, benché lì non fosse mai caduta una goccia di pioggia. Il vecchio non gettava ombra.
– Settant’anni ho aspettato – disse. La voce non usciva dalla sua bocca, ma da ogni parte – dagli alberi, dalla terra, dall’aria. – Che uno di voi venisse qui da solo.
# pytanie: Che cosa farà Jaromir?
*   [Togliersi il berretto e inchinarsi come davanti al più anziano del villaggio.]
    ~ przed_panem_lasu = uklon
    Jaromir si tolse il berretto e s’inchinò profondamente. Il vecchio lo osservò a lungo, e poi, per la prima volta, qualcosa nel suo volto ebbe un fremito.
    – Educato – disse. – Questo da voi non me l’aspettavo. # dalej
*   [Alzare l’ascia e pretendere la figlia.]
    ~ przed_panem_lasu = uniosl_siekiere
    – Ridammela – disse Jaromir, e alzò l’ascia. – Ridammi mia figlia.
    Il vecchio guardò l’ascia, e le foglie sul suo bastone annerirono e si accartocciarono. # pokaz: liscie
    – {siekiera_dziadka:Lo conosco, questo ferro|Conosco ferri come questo} – disse piano.{ wejscie_do_boru == naciete_pnie: – E tu hai ferito un centinaio dei miei alberi. Me li ricordo tutti.} # dalej
*   [Chiamare Marysia.]
    ~ przed_panem_lasu = zawolal_marysie
    – Marysia! – gridò Jaromir. – Marysia, sono papà!
    Il canto s’interruppe. Per un terribile istante regnò il silenzio. E poi gli rispose una risata – infantile, spensierata, felice, la risata di Marysia. Ma arrivava da dietro le sue spalle, dall’acquitrino che aveva appena attraversato.
    Il vecchio scosse la testa come davanti a qualcuno che ha commesso un errore evidente. # dalej
-   ~ zapiski += (starzec_4, pan_lasu_8)
Il vecchio si tolse il cappello di muschio. Sotto non c’era un volto, soltanto corteccia – e due occhi chiari, immobili, incastonati in profondità come nodi del legno. Poi cominciò a crescere. La pelliccia si sfece in muschio e licheni, il bastone mise radici nel terreno, e la barba gli scese fino alle ginocchia, poi fino a terra, canuta e folta come il muschio sul lato nord dei tronchi. Dalla fronte gli spuntarono palchi di corna, ampi e intricati come i rami di un albero schiantato dal vento. Crebbe finché la sua testa non si trovò fra le chiome e intorno a essa stormirono le foglie. # pokaz: pan_lasu
Il Signore del Bosco si chinò su Jaromir.
– Siediti, nipote di Maciek – disse, e alla sua voce tremò tutto il bosco. – Parleremo. # dalej
-> rozdzial_szesnasty_ciag_dalszy


// Koniec rozdziału szesnastego – dalej rozdział siedemnasty.
=== rozdzial_szesnasty_ciag_dalszy ===
# ozdobnik
_Fine del capitolo sedicesimo._ # dalej
-> rozdzial_siedemnasty
