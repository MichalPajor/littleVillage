// ------------------------------------------------------------
//  Zapiski – bestiariusz. Każda istota ma kilka wpisów (etapów),
//  które fabuła odsłania dopiero wtedy, gdy bohater czegoś się dowie:
//      ~ zapiski += licho_2
//  Kolejność na liście = kolejność kart. Tytuł karty bierze się z
//  najnowszego odsłoniętego wpisu (np. „Jednooka żebraczka” → „Licho”).
//  Wpisy nie mówią więcej, niż w tej chwili wiedzą postacie.
// ------------------------------------------------------------

LIST Zapiski = stwor_1, zielarka_1, pan_lasu_1, starzec_1, polnocnica_1, polnocnica_2, dziad_1, stwor_2, zielarka_2, ogniki_1, uboze_1, pan_lasu_2, poludnica_1, pan_lasu_3, rusalki_1, uboze_2, licho_1, licho_2, licho_3, pan_lasu_4, starzec_2, tropy_1, mamuny_1, odmieniec_1, mamuny_2, tropy_2, pan_lasu_5, strzyga_1, strzyga_2, mamuny_3, starzec_3, ogniki_2, stwor_3, zielarka_3, pan_lasu_6, uboze_3, zytnia_baba_1, zytnia_baba_2, pan_lasu_7, planetnik_1, tropy_3, blednice_1, starzec_4, pan_lasu_8, pan_lasu_9, zielarka_4, tropy_4, dzieci_1, pan_lasu_10, tropy_5, mamuny_4, tropy_6, dzieci_2, pan_lasu_11, pan_lasu_12, zielarka_5, tropy_7, dzieci_3
VAR zapiski = ()

=== function tytul_zapisku(z)
{ z:
    - stwor_1:      ~ return "La creatura della boscaglia"
    - stwor_2:      ~ return "L’annegato"
    - zielarka_1:   ~ return "L’erborista del lago"
    - zielarka_2:   ~ return "L’erborista del lago"
    - pan_lasu_1:   ~ return "Il Signore del Bosco"
    - pan_lasu_2:   ~ return "Il Signore del Bosco"
    - pan_lasu_3:   ~ return "Il Signore del Bosco"
    - pan_lasu_4:   ~ return "Il Signore del Bosco"
    - starzec_1:    ~ return "Il vecchio dal cappello di muschio"
    - starzec_2:    ~ return "Il vecchio dal cappello di muschio"
    - polnocnica_1: ~ return "La Signora della Mezzanotte"
    - polnocnica_2: ~ return "La Signora della Mezzanotte"
    - dziad_1:      ~ return "Il vecchio con la ghironda"
    - ogniki_1:     ~ return "Fuochi fatui"
    - uboze_1:      ~ return "Lo spiritello del focolare"
    - uboze_2:      ~ return "Lo spiritello del focolare"
    - poludnica_1:  ~ return "La Signora del Mezzogiorno"
    - rusalki_1:    ~ return "Rusalke"
    - licho_1:      ~ return "La mendicante orba"
    - licho_2:      ~ return "Il Licho"
    - licho_3:      ~ return "Il Licho"
    - tropy_1:      ~ return "Sotto la finestra"
    - tropy_2:      ~ return "Il lupo bianco"
    - pan_lasu_5:   ~ return "Il Signore del Bosco"
    - mamuny_1:     ~ return "Mamune"
    - mamuny_2:     ~ return "Mamune"
    - odmieniec_1:  ~ return "Il bambino scambiato"
    - strzyga_1:    ~ return "Il morto che non si raffredda"
    - strzyga_2:    ~ return "La strzyga"
    - mamuny_3:     ~ return "Mamune"
    - starzec_3:    ~ return "Il vecchio dal cappello di muschio"
    - ogniki_2:     ~ return "Fuochi fatui"
    - stwor_3:      ~ return "L’annegato"
    - zielarka_3:   ~ return "L’erborista del lago"
    - pan_lasu_6:   ~ return "Il Signore del Bosco"
    - uboze_3:      ~ return "Lo spiritello del focolare"
    - zytnia_baba_1: ~ return "La donna nella segale"
    - zytnia_baba_2: ~ return "La vecchia della segale"
    - pan_lasu_7:   ~ return "Il Signore del Bosco"
    - planetnik_1:  ~ return "Il planetnik"
    - tropy_3:      ~ return "Il lupo bianco"
    - blednice_1:   ~ return "Fiammelle erranti"
    - starzec_4:    ~ return "Il vecchio dal cappello di muschio"
    - pan_lasu_8:   ~ return "Il Signore del Bosco"
    - pan_lasu_9:   ~ return "Il Signore del Bosco"
    - zielarka_4:   ~ return "L’erborista del lago"
    - tropy_4:      ~ return "Il lupo bianco"
    - dzieci_1:     ~ return "I bambini sotto la quercia"
    - pan_lasu_10:  ~ return "Il Signore del Bosco"
    - tropy_5:      ~ return "Il lupo bianco"
    - mamuny_4:     ~ return "Mamune"
    - tropy_6:      ~ return "Il lupo bianco"
    - dzieci_2:     ~ return "I bambini sotto la quercia"
    - pan_lasu_11:  ~ return "Il Signore del Bosco"
    - pan_lasu_12:  ~ return "Il Signore del Bosco"
    - zielarka_5:   ~ return "L’erborista del lago"
    - tropy_7:      ~ return "Il lupo bianco"
    - dzieci_3:     ~ return "I bambini sotto la quercia"
}
~ return ""

=== function tresc_zapisku(z)
{ z:
- stwor_1:
    Più alto di un uomo di tre teste, curvo, con le braccia che gli pendono quasi fino a terra e lunghi capelli bagnati. Puzza di acquitrino. Uscì dalla nebbia quando tacquero i grilli e le rane, e se ne andò verso le paludi. {czary.noc:Maciek lo rivide ancora una volta – sulla soglia della propria capanna.|Maciek lo vide una volta sola – e non lo dimenticò mai.}
- stwor_2:
    Mezzo secolo dopo tornò, quando i bambini annegavano Marzanna, il fantoccio di paglia dell’inverno – {obejrzal_sie:una mano grigia lo trascinò sott’acqua|qualcosa lo strattonò da sotto e lo tirò giù nell’acqua}.{figurka_u_staruchy && los_psa == oswojony: «Quelli come lui non muoiono. Aspettano.»}{not figurka_u_staruchy || los_psa == oswojony: I vecchi dicono che chi annega senza il prete non va né in paradiso né all’inferno, ma resta nell’acqua. Sul fondo l’annegato tiene le anime di quelli che l’acqua si è presa sotto pentole di coccio capovolte, e di notte le rigira una dopo l’altra. Quando una pentola si spacca, l’anima sale a galla in una bolla.}
- zielarka_1:
    Abitava presso il lago, là dove tra le canne spuntano travi carbonizzate. Curava la gente con le erbe, finché non cominciò a parlare di notte con qualcuno che nessuno vedeva. Quando nel villaggio il latte prese a guastarsi e il bestiame a morire, i contadini le inchiodarono assi sulla porta e diedero fuoco alla capanna. Morendo, maledisse il villaggio e chiunque un giorno ci fosse venuto ad abitare. Quelli che l’avevano bruciata non arrivarono all’inverno – uno dopo l’altro entrarono nell’acquitrino.
- zielarka_2:
    La maledizione non si spense insieme al fuoco. Nonno Maciek se la portò dentro per tutta la vita – {figurka_u_staruchy:e la pagò più cara di quanto avrebbe voluto confessare a chiunque|e al figlio la raccontava come una fiaba, benché lui stesso non ne avesse mai riso}.{chata_macka != nad_jeziorem: Ancora oggi nessuno a Zapadlina costruisce sulla riva occidentale del lago.}
- pan_lasu_1:
    I vecchi gli danno nomi diversi – Borowy, il Signore del Bosco – e i più anziani nessuno, perché è meglio non chiamarlo per nome. Abita nella parte più fitta del bosco e lo custodisce come un contadino la propria aia. Chi vi entra senza chiedere permesso, lui lo svia finché non gira in tondo. Chi si è smarrito si tolga i vestiti e li rimetta al rovescio – allora è Borowy a perdersi, perché crede di avere davanti uno dei suoi.
- pan_lasu_2:
    Ci sono alberi che sorveglia come il proprio cuore. La Vecchia Quercia al margine del bosco era il confine – finché stava in piedi, il bosco finiva là dove finiva.{ franek_scial_dab: Il primo colpo glielo inferse Franek.}{pracowal_w_tartaku: Il vecchio Wawrzyniec della segheria favoleggiava che, quando i primi uomini scesero in questa valle, dovettero promettere di non passare oltre la Vecchia Quercia con l’ascia – e solo allora il bosco si ritirò – e in cambio, una volta per generazione, lui si prende un bambino per qualche notte. «Le edicole sono come i chiodi di uno steccato. Ne strappi uno, e lo steccato sta ancora in piedi. Li strappi tutti…»}
- pan_lasu_3:
    {ostrzezenie_poludnicy:La Signora del Mezzogiorno lo disse chiaro: il Signore del Bosco si sta svegliando.{pomylki_poludnica == 0: A ogni albero abbattuto il suo sonno si fa più leggero.}|Qualcosa era cambiato dopo l’abbattimento della Vecchia Quercia. Negli orti, tra le aiuole, in una sola notte spuntava muschio come quello sotto gli abeti più antichi, e ogni mattina il verde, dalla parte del bosco, stava più vicino agli steccati.}
- pan_lasu_4:
    Quando gli uomini di Urbaniak dissotterrarono le edicole votive ai piedi del bosco, nelle buche rimaste spuntarono in una sola notte giovani abeti. Il bosco pareva ogni giorno più vicino al villaggio.{ kapliczki_drogi == obronil_kapliczke: Si salvò una sola edicola – quella che Jaromir aveva difeso.}
- starzec_1:
    {poszedl_po_wstazke:Stava nella penombra del bosco, così alto che avrebbe dovuto chinarsi per entrare in una casa. Una pelliccia di montone rovesciata col vello all’esterno, stretta da una cordicella, un cappello di muschio a tesa larga, e sotto soltanto due punti chiari al posto degli occhi. Si appoggiava a un bastone nodoso da cui spuntavano foglie. In mano teneva il nastro di Hanka.|Qualcuno l’aveva disegnato nel quaderno del maestro Ignacy: un vecchio coi vestiti indossati alla rovescia, con un cappello di muschio.}{czytal_ksiege: Sotto il disegno, nel quaderno, c’era scritto: «Chi lo incontra, faccia come lui. Quello viene dall’altra parte, dove tutto va al contrario.»}
- starzec_2:
    Venne alle nozze di Jaromir e Hanka – si fermò al margine del bosco e dondolava il capo al ritmo della musica nuziale.{ poszedl_po_wstazke: Non era invecchiato di un giorno.} {weselny_gosc == ugoszczony_kolaczem:Accettò il pane dolce nuziale e salutò con un cenno, da padrone di casa a padrone di casa.|{weselny_gosc == zapytany:Parlò con una voce simile al vento tra le chiome degli alberi: «Ti sposi bene, nipote di Maciek. Abbi cura di lei.»|Rimase lì fino al primo canto del gallo.}}
- polnocnica_1:
    Viene dopo mezzanotte dai neonati. Prima si fa freddo, poi nella stanza qualcosa fruscia come foglie secche. Antek vide soltanto un chiarore sopra la culla e capelli neri fino al pavimento. Il bambino, invece di piangere, sibila, come se non riuscisse a prendere fiato. Ha paura del ferro sotto il cuscino.{rada_jaromira == ksiega_rada: Il quaderno del maestro Ignacy aggiunge che i semi di papavero sparsi deve contarli uno a uno – e sa contare solo fino all’alba.}
- polnocnica_2:
    Da vicino la si vede tutta: fluttua sopra le assi senza sfiorarle coi piedi, in un sudario sfilacciato in fondo, col viso scarno come un teschio, gli occhi come due pozzi neri e piccoli denti aguzzi. {rada_jaromira == hanka:La nonna di Hanka dice che è l’anima di una madre morta di parto prima che il prete facesse in tempo a riammetterla in chiesa – il suo bambino non l’ha potuto cullare, e così va da quelli degli altri. E che non viene mai da sé: qualcuno deve indicarle la strada. }{polnocnica == przegnana_nozem:Zosia fu salvata dal coltellino infilato sotto il cuscino.|{polnocnica == policzyla_mak:Zosia fu salvata dal papavero – lei contò fino all’alba e non fece in tempo.|Zosia sopravvisse, ma sulla fronte le restò una macchiolina grigia, come lasciata da un dito sporco.}}
- dziad_1:
    Bussò la notte della Vigilia, appena spezzata la cialda di Natale: curvo, coperto di stracci, con la ghironda sulle spalle e gli occhi bianchi come il latte. {wpuscil_dziada:Mangiò poco, intonò un canto sulle anime che in quella notte tornano alle loro case, e se ne andò nel buio, benché nessuno avesse visto da che parte. Uscendo, sussurrò a Jaromir: «Odori di bosco, ragazzo.»|Non lo fecero entrare. Si allontanò verso il bosco e sparì nella tormenta di neve a metà del campo.} Alla Vigilia di Natale non si scaccia un mendicante dalla soglia, perché non si sa mai chi sia venuto – a volte è l’anima di qualcuno di famiglia che torna travestita, per vedere se la ricordano ancora.
- ogniki_1:
    Lumicini pallidi sopra le paludi presso la passerella, che si accendono al crepuscolo e ridacchiano come chi ha ricevuto un regalo. Le comari dicono che sono quelli che bruciarono l’erborista del lago – entrarono nell’acquitrino e ancora oggi vi brillano di notte. Chi segue uno di quei fuochi fatui non torna più.
- uboze_1:
    Un vecchietto minuscolo, non più grande di un gatto, con una giubba rattoppata e un berrettino rosso, la barba grigia avvolta intorno ai piedini di gallina. Abita dietro la stufa, nelle vecchie case contadine. Chi dà da mangiare allo spiritello del focolare vede prosperare la sua aia; chi lo scaccia attira la miseria sul proprio tetto. Lo spiritello arriva insieme al primo padrone di casa e resta finché la casupola sta in piedi. Quando brucia, se ne va col fumo e non torna più.
- uboze_2:
    {uboze == nakarmione:Ricambia in silenzio: in dispensa non si annidano topi, nella brocca c’è sempre più latte di quanto se ne sia versato{rozdzial_dziewiaty:, e nell’inverno della fame la farina, chissà come, non vuole finire}. Solo che quel che cresce in una casa cala in un’altra – da quelli di Staś, negli stessi mesi, il latte inacidiva.|{uboze == przegnane:Da quando era stato scacciato, la casa pareva non volerli più: le galline smisero di fare uova e in dispensa si guastava di continuo qualcosa.|Nessuno lo vide più. Solo, a volte, al mattino la cenere sul ripiano della stufa era sparpagliata, come da una gallina che cerca un posto per la notte.}}
- poludnica_1:
    Una donna alta e bianca, in una lunga camicia. A mezzogiorno in punto viene sui campi. Non tocca terra coi piedi, ha gli occhi bianchi, senza pupille, e in mano un falcetto. A chi lavora sotto il solleone pone indovinelli – per ogni errore colpisce col falcetto.{ not figurka_u_staruchy: Dicono che un tempo fosse la miglior mietitrice dei dintorni: scommise coi garzoni che da sola avrebbe mietuto un intero campo prima di mezzogiorno, e non se ne andò nemmeno nel caldo più atroce. La trovarono la sera con la lama in mano e le spighe nei capelli.}{ poludnica_uklon: Davanti alla risposta presa dal quaderno chinò il capo.}{ poludnica_darowala: Un errore a Jaromir lo condonò, perché non era indietreggiato davanti al falcetto.}{ blizna_sierpa: A Jaromir ne restò una cicatrice a forma di mezzaluna.}
- rusalki_1:
    Anime di fanciulle annegate. A Pentecoste escono dal lago e danzano alla luce della luna – giovani, pallide, in camicie di lino bagnate, con ghirlande di giunchi e occhi tutti neri, senza bianco. Attirano con un canto senza parole e trascinano sott’acqua chiunque si lasci tentare. Si mostrano solo da Pentecoste a San Giovanni; il resto dell’anno dormono nel fango sul fondo. Una di loro era Kaśka, la figlia dei Wójcik.{ratunek_franka == piolunem: L’assenzio lo temono più del fuoco – ma colei che l’ha dato non la dimenticano. L’acqua non restituì la ghirlanda di Hanka.|{ratunek_franka == krzyzem: La croce non le brucia – «c’eravamo prima noi». Lasciarono andare Franek, ma l’acqua non andò a dormire a stomaco vuoto – al mattino tra i giunchi trovarono Bartek, il figlio del mugnaio.| Kaśka lasciò andare Franek quando Hanka la chiamò per nome. Sulla guancia di Jaromir, là dove l’aveva toccato, restò una macchia bianca e fredda.}}
- licho_1:
    Una mendicante piccola e curva, alta appena fino alla cintola di un adulto, avvolta in tanti stracci che non si capisce dove finisca uno e cominci l’altro. Ha un occhio solo, cerchiato di rosso; al posto dell’altro c’è pelle liscia e grigia. La sua ombra è troppo lunga e cade verso il sole, dalla parte opposta a tutte le altre. Chi la vede sotto il proprio steccato, l’indomani ha una disgrazia.
- licho_2:
    La nonna di Hanka lo chiamò per nome: il Licho che non dorme. Va di uscio in uscio e si siede dove si trova bene – dove si abbatte la foresta e le cose sante si spostano da un angolo all’altro. Non varca una soglia finché qualcuno non lo chiama. Scacciato, va dal vicino; accolto, se ne va sazio. La nonna di Hanka ha sentito da sua madre che l’altro occhio è rimasto nel bosco, perché il Licho sono gli occhi che il Signore del Bosco manda tra la gente – lei stessa non sa se sia vero.
- licho_3:
    {licho_noc == ugoszczone:Avuto il lardo, prese la strada della segheria – e al mattino a Urbaniak si spezzò la sega e nella stalla gli morì il cavallo migliore.|{licho_noc == odpedzone:Scacciato con un tizzone, fuggì verso la bottega del fabbro – quella notte la fucina andò a fuoco.|Fino al mattino grattò sotto la porta e adescò con l’odore del pane, e l’asse su cui bussava marcì in una sola notte. Nessuno gli rispose.}} In ottobre se ne andò lungo la strada ai piedi del bosco ed entrò tra gli alberi, come se qualcuno l’avesse chiamato.
- tropy_1:
    Il mattino dopo le nozze tutto il cortile era bianco di brina – solo sotto la finestra della stanza nuova si era sciolta in un largo ovale, fino alla terra nuda, come se qualcosa di grande e caldo vi fosse rimasto sdraiato tutta la notte, raggomitolato. La terra era ancora tiepida. Hanka coprì quel punto di cenere e ordinò di non dirlo a nessuno.
- mamuny_1:
    Le mamune abitano presso il lago. I figli che partoriscono sono brutti e malaticci, perciò rubano alla gente quelli sani – finché il bambino non è battezzato – e nella culla lasciano i propri. D’estate, di notte, si sente lo schiocco dei loro battipanni sul bucato, contro le pietre. La nonna di Hanka dice che lavano i sudari per quelli che moriranno nel villaggio prima della prossima primavera – e su ogni sudario gridano il nome di qualcuno. Meglio non origliare. Temono il rosso, il ferro e la candela della Candelora.
- mamuny_2:
    Alte e gobbe, con teste troppo grandi per i colli esili e capelli come rametti secchi, vestite di stracci di muschio e di corteccia. Il loro tocco è freddo e bagnato.{noc_mamun == zaslonil: Quando non ottengono il bambino, portano via il latte alla madre.} Sanno canticchiare in modo tale che il dormiente stesso toglie le protezioni dalla culla.{podmiana:{uklad_z_mamunami == oddany_skarb: Per Marysia presero il tesoro d’infanzia di Jaromir e lo scagliarono nel lago.|{uklad_z_mamunami == dar_swietojanski: Per Marysia Jaromir promise loro ogni anno, nella notte di San Giovanni, pane e una ghirlanda sulla pietra presso la riva. Se se ne dimentica, verranno a prendersi ciò che è loro.|{uklad_z_mamunami == oddane_lata: Per Marysia presero a Jaromir anni di vita – le sue tempie incanutirono come quelle di un vecchio.| Lo scambio lo annullò soltanto l’acqua bollita nei gusci d’uovo.}}}}{sposob_na_odmienca == chrzest_odmienca: Non dimenticheranno che il loro bambino fu ridotto in schegge.}
- odmieniec_1:
    Il figlio delle mamune, lasciato al posto di quello umano. Da lontano somiglia all’altro, ma è più pesante e freddo, ha la pelle come corteccia e gli occhi più scuri di quelli di qualunque bambino. Non piange, mangia soltanto, senza sosta, e quando crede che nessuno guardi sorride come una vecchia. Lo scambio si può annullare solo entro sette giorni.
- tropy_2:
    Un enorme maschio di lupo, più grosso di qualunque altro nei dintorni, così magro che sotto il pelo bianco gli si vedono tutte le costole. Guida il branco, ma lui stesso non si avvicina alle stalle.{noc_wilkow == bronil_obory: Con un solo ululato sa richiamarlo dalla stalla.} Sulla zampa anteriore ha un anello di pelo consunto, più rado, nello stesso punto dove Franek aveva tre strisce lasciate dagli artigli. Ha occhi umani: chiari, tristi, con la pupilla ben visibile. Antek dice che non li confonderebbe con nessun altro.{oblawa_wilk == wydal_wilka: Si prese una pallottola dal guardaboschi Pawlik e fuggì nel bosco, lasciando una striscia di sangue sulla neve. Da allora il suo ululato suona diverso.| Sopravvisse alla battuta di caccia. La mattina dopo, sul ceppo accanto allo steccato, c’era una lepre con la nuca squarciata dai denti.}{noc_na_kladce != (): La notte in cui Józek andò nel sonno alla passerella, qualcosa di bianco guizzò sull’argine oltre le paludi – e l’annegato voltò la testa al suo ululato.}
- pan_lasu_5:
    La boscaglia giovane, che in pochi anni si era spinta dal margine del bosco fin sotto gli steccati, divenne un covo per i lupi. I vecchi dicono che la foresta non cresce verso il villaggio senza motivo: prima vengono gli alberi, poi gli animali, e alla fine colui che li governa.
- strzyga_1:
    {sprawdzil_zeby:Il vecchio Wójcik aveva due file di denti – una dietro l’altra, piccoli e aguzzi come quelli di un luccio.|La gente diceva che il vecchio Wójcik era nato coi denti.} Chi nasce coi denti o con due cuori ha due anime. Dopo la morte una va a Dio, e l’altra resta nel corpo e non gli dà pace: la salma non si raffredda, le guance restano rosee, le palpebre non si chiudono. Verso mezzanotte un morto così si alza. Un tempo lo si seppelliva a faccia in giù, con un falcetto sopra la gola e semi di papavero nella bara – perché non potesse voltarsi, perché si ferisse se provava ad alzarsi, e perché il papavero lo addormentasse fino al Giudizio.
- strzyga_2:
    {polnoc_strzygi == na_twarz:Rovesciato con la faccia contro l’asse, si dibatté fino al primo canto del gallo e morse Antek alla mano. La ferita tardò a lungo a guarire.|{polnoc_strzygi == sierp_przy_szyi:Quando il falcetto gli toccò il collo, ne colò sangue nero e denso.|Lo placò soltanto la candela della Candelora tra le mani; pronunciò allora il nome della figlia.}} {pochowek_wojcika == pochowany_za_murem:Lo seppellirono fuori dal muro del cimitero, a faccia in giù, e non tornò più.|{pochowek_wojcika == pochowany_z_makiem:Ebbe pace in terra consacrata coi semi di papavero di Hanka sul petto, e non tornò più. Per quel papavero il prete la tenne lontana dalla comunione fino a Pasqua.|{trzy_noce == rozkopany_grob:Tornò dopo tre notti e restò sotto la finestra che dava sulla culla di Marysia, finché Jaromir e Antek non riaprirono la sua fossa.|Tornò dopo tre notti. Si allontanò dalla finestra dietro cui dormiva Marysia – ma quella mattina trovarono morta la Wójcik.}}}
- mamuny_3:
    Sul bucato chiamano per nome quelli per cui lavano i sudari. La Wójcik le origliò a giugno, nascosta nel canneto, e udì un solo nome. A novembre morì suo marito.{trzy_noce == czuwanie_przy_kolysce: Si era sbagliata – oppure non aveva voluto sentire il secondo.}
- starzec_3:
    Alla Vigilia di Natale Hanka lasciò sulla tavola un coperto per il viandante. Al mattino, sul piatto, al posto della cialda, c’era una manciata di muschio fresco e verde – in pieno inverno.
- ogniki_2:
    Quando la statuina {przeszukal_zgliszcza && not figurka_w_bagnie:tornò a Zapadlina|venne alla luce}, i fuochi fatui presero ad accostarsi agli steccati – ogni notte di più, come se aspettassero che qualcuno aprisse la porta.{los_figurki == figurka_w_skrzyni: Ardono ancora, ma oltre la passerella, lontano dagli steccati.}{los_figurki == figurka_pod_kapliczka || los_figurki == figurka_u_jagny || los_figurki == figurka_u_stwora: Si spensero tutti insieme la stessa notte in cui la statuina smise di chiamare.}
- stwor_3:
    Tornò nelle paludi insieme alla statuina. I bambini del villaggio facevano di lui tutti lo stesso sogno: sta sotto la passerella nell’acqua nera, rovescia le pentole di coccio, guarda sotto ognuna, e poi chiede: «Dov’è la mia bambola?»{figurka_u_staruchy: Sul braccio ha una cicatrice profonda e vecchia, lasciata dall’ascia di nonno Maciek.}{noc_na_kladce == siekiera_na_kladce: Jaromir lo ferì con l’ascia, e lui gli squarciò la spalla.}{noc_na_kladce == figurka_dla_stwora: Quando ebbe la statuina, lasciò andare il ragazzino e se la strinse al petto come una madre il suo bambino. Scendendo sott’acqua, si trascinò dietro la vecchia passerella.}{noc_na_kladce == latarnia_na_wodzie: Teme il fuoco più del ferro – fuggì davanti all’olio in fiamme.}
- zielarka_3:
    {zaufal_jagnie:Jagna dice che la statuina è una bambola: l’erborista la intagliò in una radice tirata fuori dall’acquitrino e le diede il nome di colui che abita nell’acqua. Chi ha la bambola, lui lo segue. La bambola non teme il fuoco – a zittirla è solo la terra consacrata.{odrzucil_figurke: Una volta respinta, non la si può più dare a nessuno.}|La statuina bruciacchiata venuta dal lago {przeszukal_zgliszcza && not figurka_w_bagnie:tornò a Zapadlina|venne alla luce} dopo più di sessant’anni – e con lei ripresero i sogni.}{los_figurki == figurka_pod_kapliczka: Ora giace sotto l’edicola, e il punto esatto lo conosce solo Jaromir.}{los_figurki == figurka_u_jagny: Jagna l’ha portata con sé, tanto lontano che l’annegato non possa sentirla.}{los_figurki == figurka_w_skrzyni: Il fuoco non l’ha presa. Giace in una cassa sotto il letto, stretta da una catena.}{los_figurki == figurka_u_stwora: Ora ce l’ha colui che abita sotto la passerella.}
- pan_lasu_6:
    La notte in cui bruciarono le edicole, il bosco avanzò verso il villaggio di un campo intero. Gli alberi che all’alba si ergevano dove c’era stata la stoppia sembravano crescere lì da anni. I paletti della strada di Urbaniak mettevano germogli, e dai ceppi lungo la tagliata ogni mattina spuntavano nuovi rametti.{droga_do_boru: La strada arrivò ai primi grandi pini e lì si interruppe – nessuno volle tagliare oltre.}{szarwark && not droga_do_boru && rozdzial_czternasty.pierwszy_snieg_czternasty: La boscaglia giovane si fermò sul confine delle edicole bruciate e non crebbe più.}
- uboze_3:
    Svegliò il padrone di casa tirandolo per i capelli, quando dal bosco avanzava il fuoco. Aveva tanta paura che gli tremava la barba. Lo spiritello del focolare ricorda chi gli ha dato da mangiare.
- zytnia_baba_1:
    Bassa, curva, larga di fianchi come un covone, col viso rugoso come una crosta di pane abbrustolita e i capelli fatti di spighe. Ha l’odore del grano caldo. Si accoccola tra gli steli e agita davanti ai bambini, come un sonaglio, ciò che appartiene a loro.
- zytnia_baba_2:
    Il vecchio Staś dice che la vecchia della segale acchiappa i bambini nel grano e lì li lascia – ma Marysia non la lasciò. La condusse attraverso il campo fin sotto il bosco, come se la portasse a qualcuno.{pani_w_zbozu_noc == gonil_babe: Chi la insegue gira per il campo fino all’alba, e nelle ferite fatte dagli steli gli rimangono le reste, che affondano sempre più.}{pani_w_zbozu_noc == za_spiewem: Canta con la voce della madre – e alla madre poi resta la voce spezzata in due.}{pani_w_zbozu_noc == z_pochodniami: Quando la cerca tutto il villaggio, fugge – ma si lascia dietro il campo calpestato.}
- pan_lasu_7:
    {rada_przed_borem == rada_ksiedza:Nei registri parrocchiali è scritto che una volta ogni tanti decenni dal villaggio ai piedi del bosco sparisce un bambino, sempre nella notte di San Giovanni. Quelli che tornano non ricordano nulla.|{rada_przed_borem == rada_jagny:Jagna dice che il bosco prende i bambini quando il suo signore si sveglia – non li uccide, li trattiene soltanto.|Il planetnik dice che sopra il bosco le nuvole si aprono e che, a memoria d’uomo, lì non è caduta una sola goccia di pioggia.}}
- planetnik_1:
    Un vecchio alto, coperto di stracci, con la barba scompigliata dal vento e un sacco sulle spalle. Va in giro prima del temporale e guida le nuvole legate a una fune. Chi gli dà del pane, sopra il suo campo le nuvole non si squarciano – ma chi gli fa una domanda, la paga col proprio campo.
- tropy_3:
    {oblawa_wilk == wydal_wilka:La ferita della pallottola guarì male. Nel bosco seguì Jaromir per tutta la notte – non per proteggerlo.|Ritrovò Jaromir nel bosco, quando lui andò dietro alla voce di Franek.{przejscie_bagna == za_wilkiem: Lo guidò attraverso l’acquitrino. Quando Jaromir gli tese la mano e lo chiamò Franek, fece schioccare i denti – in avvertimento, ma fino al sangue.}}
- blednice_1:
    Pallide sfere di luce sopra l’acquitrino nel profondo del bosco, grandi come la testa di un bambino. In ogni sfera siede una piccola figura rannicchiata, con occhi come chicchi neri. Non sono i fuochi fatui vicino al villaggio: non ammiccano da lontano, ma si avvicinano fluttuando, pigolano come pulcini e invitano.{przejscie_bagna == za_blednicami: Fanno girare intorno a una sola zolla d’erba fino all’alba e si prendono ciò che uno ha nella bisaccia.}{przejscie_bagna == krag_z_soli: Non attraversano il sale, neppure se hanno il volto di una persona tra le più care.}{przejscie_bagna == za_wilkiem: Si tengono alla larga dal lupo bianco.}{przejscie_bagna == z_rozancem: Alla preghiera si spengono ululando – ma prendono qualcosa in cambio.}{przejscie_bagna == z_krzesiwem: Hanno paura delle scintille.}
- starzec_4:
    Nel cuore del bosco si tolse il cappello.
- pan_lasu_8:
    Nel cuore del bosco, dove non piove mai, sorge una quercia più grande di quanto fosse un tempo la Vecchia Quercia. Lì il vecchio dal cappello di muschio si tolse il cappello. Sotto c’era corteccia. Dalla fronte gli eruppe un palco di corna, e lui stesso crebbe oltre le chiome degli alberi senza gettare ombra. Aveva aspettato settant’anni che qualcuno della stirpe di Maciek venisse da lui di sua volontà.
- pan_lasu_9:
    La valle un tempo era sua, dalla cresta fino al lago. Si ritirò quando il primo degli uomini venne alla Vecchia Quercia senz’ascia e disse: più in là non andremo. In cambio il Signore del Bosco prende un bambino per generazione, nella notte di San Giovanni, e lo restituisce prima che il bambino dimentichi casa sua. La quercia era il confine, il patto lo steccato, e le edicole i chiodi.{chata_macka == przy_lesie: Maciek, che non sapeva nulla, costruì la sua casa dalla parte del bosco e il primo mattino piantò l’ascia in un abete. Con lui cominciò la conta.} Marysia l’ha presa lui stesso – la vecchia della segale l’ha mandata lui. Se per nasconderla a quelli dell’acqua o per tenerla per sé, questo non lo disse. Da quando è caduto lo steccato, la maledizione sveglia i suoi servi e li trascina verso le case. Questa volta farà pagare per lei, perché il patto l’ha rotto il villaggio, non lui.{pytanie_do_leszego == kim_jest: Era nella valle prima che vi scendessero i primi uomini. Conta i vecchi alberi abbattuti oltre il confine e gli uomini che gli si sono dati di loro volontà. Quando arriverà a mille, si addormenterà per sempre, e qualcun altro conterà al posto suo. Anche lui un tempo venne al bosco di sua volontà.}{pytanie_do_leszego == gdzie_marysia: I suoi figli non hanno ombra.}
- zielarka_4:
    Venivano da lei quelli dell’acqua – e il Signore del Bosco. Una volta le mostrò in uno specchio d’acqua una capanna in fiamme – la sua – ma lei non ci credette. Bruciando, maledisse il villaggio per mano d’altri: «Le ossa dei vostri figli saranno spezzate, e il loro sangue bevuto…» Finché stava in piedi la Vecchia Quercia, la parola data era più forte dell’anatema.{pytanie_do_leszego == o_klatwe: Toglierà la maledizione chi restituirà al Signore del Bosco il confine, oppure chi prenderà il suo posto. Oppure il fuoco che l’ha cominciata – ma dopo non resteranno né il bosco né il villaggio.}{zastaw_u_leszego == zastaw_krzesiwo: L’acciarino che Maciek trovò nella sua cenere porta in sé la stessa brace che la bruciò.}
- tropy_4:
    Portò sotto la quercia l’altro zoccolo di Marysia – quello che la vecchia della segale dondolava. {wilk_przy_jaromirze:Lo posò ai piedi di Jaromir e per tutta la notte gli rimase sdraiato accanto.|Lo consegnò al Signore del Bosco e gli siede accanto, indifferente come gli alberi.}{wilk_pod_debem != nie_ruszal_sie: Ogni parola umana che gli torna alla mente gli porta via un pezzo di vita da lupo.}
- dzieci_1:
    All’alba escono da una fenditura della quercia e siedono in cerchio: più di una dozzina di bambine con un solo viso, con le stesse camicine e nastri nuovi nei capelli. Sorridono educate e pazienti, parlano con una sola voce, odorano di legno marcio. Quando il padre sceglie, le altre si sbriciolano in foglie secche e corteccia.{znak_rozpoznania == po_melodii: Cantano la melodia fino in fondo.}{znak_rozpoznania == po_buzi || znak_rozpoznania == po_skarbie: Tutto ciò che la bambina ha a sinistra, loro ce l’hanno a destra{skarb_dla_corki:, e ciò che lei porta al collo, loro lo hanno liscio e nuovo}.}{pytanie_do_leszego == gdzie_marysia: Non hanno ombra e non piangono mai.}
- pan_lasu_10:
    {marysia_odzyskana:Mantenne la parola: chi riconosce il suo bambino lo porta via, e nessuno lo trattiene.|Mantenne la parola: chi sceglie male porta a casa ciò che ha scelto – e lo seppellisce come suo.} Annunciò che il giorno dei Morti sarebbe venuto al villaggio per saldare il conto fino in fondo.
- tropy_5:
    Aiutò a trovare la bambina vera, benché i servi del Signore del Bosco non soccorrano gli uomini. Rimase sotto la quercia, con la mano del Signore del Bosco sulla nuca.
- mamuny_4:
    Alla fine di agosto lavavano un piccolo sudario sulle pietre piatte dall’altra parte del lago. Il giorno dei Morti lo portarono nel corteo del Signore del Bosco e su di esso gridavano «Marysia». Non scelgono loro – lavano ciò che porta l’acqua. Finché il sudario non si è asciugato, prima dell’alba, il nome si può ancora sciacquare via, ma qualcuno deve pagare per questo.{cena_caluna == cena_umowa: D’ora in poi anche Marysia porterà il dono di San Giovanni, fino alla fine della vita.}
- tropy_6:
    La notte dei Morti strappò alle mamune il sudario col nome di Marysia, e loro lo trascinarono sott’acqua. Antek lo riconobbe dall’anello di pelo consunto sulla zampa anteriore.
- dzieci_2:
    Quella che si sceglie muore al margine del bosco.{cialo_kopii == spalone: Nel fuoco scoppietta come legno resinoso, e il fumo odora di aghi di pino.}{cialo_kopii == oddane_jagnie: Jagna dice che è legno, e sa che cosa si fa con un legno così.}{cialo_kopii == pochowane || cialo_kopii == pod_mlodnikiem: Giace nella terra come una bambina, benché non abbia alcun odore.}
- pan_lasu_11:
    Mantiene la parola alla lettera – e lo stesso pretende dagli altri. Prima del giorno dei Morti la nebbia del bosco ogni sera si spinge fino agli steccati, e il primo novembre, sulla via del ritorno dal cimitero di Bukowiec, si spensero d’un fiato tutte le candele della Candelora{not marysia_odzyskana: tranne quella che portava Hanka}, benché l’aria fosse immobile.
- pan_lasu_12:
    {ostatnia_noc == zwrocil_granice:Il giorno dei Morti venne al villaggio col suo corteo e riebbe il confine: l’ascia di Maciek piantata nel ceppo della Vecchia Quercia e la parola di tutto il villaggio. Parola per parola.{zoladz_zasadzony: Accanto al ceppo germogliò una ghianda della Vecchia Quercia, piantata da mano d’uomo. Finché la quercia cresce, il Signore del Bosco non prende più bambini.}|{ostatnia_noc == zajal_miejsce:Diede a Jaromir il cappello di muschio e si sdraiò ai piedi del ceppo della Vecchia Quercia. «Ora conta tu.»|Bruciò insieme al bosco. Le ultime parole che disse furono: «È contato.»}}
- zielarka_5:
    {ostatnia_noc == zwrocil_granice:I servi del Signore del Bosco tornarono al loro posto; la sua maledizione resta di nuovo oltre lo steccato.|{ostatnia_noc == zajal_miejsce:La sua maledizione legava le mani dell’antico Signore del Bosco. Le mani del nuovo non le conosceva.|La sua maledizione era cominciata col fuoco e col fuoco finì.}}
- tropy_7:
    {ostatnia_noc == zwrocil_granice:Se ne andò col corteo nel bosco.|{ostatnia_noc == zajal_miejsce:Il nuovo Signore del Bosco lo lasciò libero.|{wilk_przy_mnie():Restò accanto a Jaromir mentre il bosco bruciava.|Si gettò nel fuoco dietro al suo padrone.}}}
- dzieci_3:
    Il giorno dei Morti camminavano nel corteo del Signore del Bosco, tenendosi per mano. Nessuna gettava ombra.{ostatnia_noc == skrzesal_ogien: Il loro canticchiare si interruppe a metà nel bosco in fiamme e non ricominciò più.}
}
