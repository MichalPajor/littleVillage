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
    - stwor_1:      ~ return "Das Wesen aus dem Dickicht"
    - stwor_2:      ~ return "Der Wassermann"
    - zielarka_1:   ~ return "Die Kräuterfrau vom See"
    - zielarka_2:   ~ return "Die Kräuterfrau vom See"
    - pan_lasu_1:   ~ return "Der Herr des Waldes"
    - pan_lasu_2:   ~ return "Der Herr des Waldes"
    - pan_lasu_3:   ~ return "Der Herr des Waldes"
    - pan_lasu_4:   ~ return "Der Herr des Waldes"
    - starzec_1:    ~ return "Der Alte mit dem Moosshut"
    - starzec_2:    ~ return "Der Alte mit dem Moosshut"
    - polnocnica_1: ~ return "Die Mitternachtsfrau"
    - polnocnica_2: ~ return "Die Mitternachtsfrau"
    - dziad_1:      ~ return "Der Alte mit der Drehleier"
    - ogniki_1:     ~ return "Irrlichter"
    - uboze_1:      ~ return "Der Hausgeist"
    - uboze_2:      ~ return "Der Hausgeist"
    - poludnica_1:  ~ return "Die Mittagsfrau"
    - rusalki_1:    ~ return "Rusalken"
    - licho_1:      ~ return "Die einäugige Bettlerin"
    - licho_2:      ~ return "Das Licho"
    - licho_3:      ~ return "Das Licho"
    - tropy_1:      ~ return "Unter dem Fenster"
    - tropy_2:      ~ return "Der weiße Wolf"
    - pan_lasu_5:   ~ return "Der Herr des Waldes"
    - mamuny_1:     ~ return "Mamunen"
    - mamuny_2:     ~ return "Mamunen"
    - odmieniec_1:  ~ return "Der Wechselbalg"
    - strzyga_1:    ~ return "Der Tote, der nicht erkaltet"
    - strzyga_2:    ~ return "Strzyga"
    - mamuny_3:     ~ return "Mamunen"
    - starzec_3:    ~ return "Der Alte mit dem Moosshut"
    - ogniki_2:     ~ return "Irrlichter"
    - stwor_3:      ~ return "Der Wassermann"
    - zielarka_3:   ~ return "Die Kräuterfrau vom See"
    - pan_lasu_6:   ~ return "Der Herr des Waldes"
    - uboze_3:      ~ return "Der Hausgeist"
    - zytnia_baba_1: ~ return "Die Frau im Roggen"
    - zytnia_baba_2: ~ return "Die Roggenmuhme"
    - pan_lasu_7:   ~ return "Der Herr des Waldes"
    - planetnik_1:  ~ return "Planetnik"
    - tropy_3:      ~ return "Der weiße Wolf"
    - blednice_1:   ~ return "Irrwische"
    - starzec_4:    ~ return "Der Alte mit dem Moosshut"
    - pan_lasu_8:   ~ return "Der Herr des Waldes"
    - pan_lasu_9:   ~ return "Der Herr des Waldes"
    - zielarka_4:   ~ return "Die Kräuterfrau vom See"
    - tropy_4:      ~ return "Der weiße Wolf"
    - dzieci_1:     ~ return "Die Kinder unter der Eiche"
    - pan_lasu_10:  ~ return "Der Herr des Waldes"
    - tropy_5:      ~ return "Der weiße Wolf"
    - mamuny_4:     ~ return "Mamunen"
    - tropy_6:      ~ return "Der weiße Wolf"
    - dzieci_2:     ~ return "Die Kinder unter der Eiche"
    - pan_lasu_11:  ~ return "Der Herr des Waldes"
    - pan_lasu_12:  ~ return "Der Herr des Waldes"
    - zielarka_5:   ~ return "Die Kräuterfrau vom See"
    - tropy_7:      ~ return "Der weiße Wolf"
    - dzieci_3:     ~ return "Die Kinder unter der Eiche"
}
~ return ""

=== function tresc_zapisku(z)
{ z:
- stwor_1:
    Um drei Köpfe größer als ein Mensch, gebückt, mit Armen, die fast bis zum Boden hängen, und langem, nassem Haar. Es stinkt nach Sumpf. Es kam aus dem Nebel, als die Grillen und die Frösche verstummten, und ging davon in Richtung der Moore. {czary.noc:Maciek sah es noch einmal – auf der Schwelle seiner eigenen Hütte.|Maciek sah es nur ein einziges Mal – und vergaß es nie.}
- stwor_2:
    Nach einem halben Jahrhundert kehrte er wieder, als die Kinder die Marzanna ertränkten – {obejrzal_sie:eine graue Hand zog die Strohpuppe unter Wasser|etwas riss von unten an der Strohpuppe und zog sie unter Wasser}.{figurka_u_staruchy && los_psa == oswojony: „Solche wie der sterben nicht. Die warten.“}{not figurka_u_staruchy || los_psa == oswojony: Die Alten sagen, wer ohne Pfarrer ertrinkt, kommt weder in den Himmel noch in die Hölle, sondern bleibt im Wasser. Auf dem Grund hält der Wassermann die Seelen der Ertrunkenen unter umgestülpten Tontöpfen gefangen und kippt sie nachts einen nach dem anderen um. Springt einer der Töpfe, steigt die Seele als Blase an die Oberfläche.}
- zielarka_1:
    Sie wohnte am See, dort, wo im Schilf verkohlte Balken aufragen. Sie heilte die Leute mit Kräutern, bis sie anfing, nachts mit jemandem zu reden, den niemand sah. Als im Dorf die Milch sauer wurde und das Vieh einging, nagelten die Bauern ihre Tür mit Brettern zu und steckten die Hütte in Brand. Im Sterben verfluchte sie das Dorf und jeden, der je darin wohnen würde. Die sie verbrannt hatten, erlebten den Winter nicht mehr – einer nach dem anderen gingen sie in den Sumpf.
- zielarka_2:
    Der Fluch erlosch nicht mit dem Feuer. Großvater Maciek trug ihn sein Leben lang in sich – {figurka_u_staruchy:und zahlte dafür mehr, als er irgendwem sagen wollte|und erzählte seinem Sohn davon wie von einem Märchen, obwohl er selbst nie darüber lachte}.{chata_macka != nad_jeziorem: Bis heute baut in Zapadlina niemand am Westufer des Sees.}
- pan_lasu_1:
    Die Alten nennen ihn verschieden – Borowy, Herr des Waldes –, die Ältesten aber gar nicht, denn beim Namen ruft man ihn besser nicht. Er wohnt im tiefsten Teil des Waldes und wacht über ihn wie ein Bauer über seinen Hof. Wer ungefragt hineingeht, den führt er so in die Irre, dass er im Kreis läuft. Wer sich verirrt hat, soll seine Kleider ausziehen und sie mit dem Futter nach außen wieder anlegen – dann verliert Borowy selbst die Spur, weil er meint, einen der Seinen vor sich zu haben.
- pan_lasu_2:
    Es gibt Bäume, die er hütet wie sein eigenes Herz. Die Alte Eiche am Waldrand war die Grenze – solange sie stand, endete der Wald dort, wo er eben endete.{ franek_scial_dab: Den ersten Hieb versetzte ihr Franek.}{pracowal_w_tartaku: Der alte Wawrzyniec aus dem Sägewerk fabulierte, die ersten Menschen, die in dieses Tal herabstiegen, hätten versprechen müssen, mit der Axt nicht über die Alte Eiche hinauszugehen – erst dann sei der Wald zurückgewichen –, und dafür nehme er sich einmal in jeder Generation ein Kind für ein paar Nächte. „Die Bildstöcke sind wie Nägel im Zaun. Reißt du einen heraus, steht der Zaun noch. Reißt du alle heraus…“}
- pan_lasu_3:
    {ostrzezenie_poludnicy:Die Mittagsfrau sagte es geradeheraus: Der Herr des Waldes erwacht.{pomylki_poludnica == 0: Mit jedem gefällten Baum wird sein Schlaf leichter.}|Seit die Alte Eiche gefällt war, hatte sich etwas verändert. In den Gärten, zwischen den Beeten, wuchs in einer einzigen Nacht Moos wie unter den ältesten Fichten, und das Grün auf der Waldseite stand jeden Morgen näher an den Zäunen.}
- pan_lasu_4:
    Als Urbaniaks Leute die Bildstöcke am Waldrand ausgruben, wuchsen in den Gruben in einer einzigen Nacht junge Fichten. Der Wald schien mit jedem Tag näher ans Dorf zu rücken.{ kapliczki_drogi == obronil_kapliczke: Stehen blieb bloß ein einziger Bildstock – der, den Jaromir verteidigt hatte.}
- starzec_1:
    {poszedl_po_wstazke:Er stand im Halbdunkel des Waldes, so groß, dass er sich hätte bücken müssen, um in eine Hütte zu treten. Ein Schafspelz mit dem Fell nach außen, mit einem Strick gegürtet, ein Moosshut mit breiter Krempe und darunter nur zwei helle Punkte von Augen. Er stützte sich auf einen knorrigen Stock, aus dem Blätter sprossen. In der Hand hielt er Hankas Band.|Jemand hatte ihn in Herrn Ignacys Buch gezeichnet: einen Alten, die Kleider mit dem Futter nach außen, mit einem Hut aus Moos.}{czytal_ksiege: Unter der Zeichnung stand im Buch: „Wer ihm begegnet, soll es ihm gleichtun. Jener kommt von der anderen Seite, wo alles umgekehrt ist.“}
- starzec_2:
    Er kam zur Hochzeit von Jaromir und Hanka – stand am Waldrand und nickte im Takt der Hochzeitsmusik.{ poszedl_po_wstazke: Er war um keinen Tag gealtert.} {weselny_gosc == ugoszczony_kolaczem:Er nahm den Hochzeitskuchen an und neigte den Kopf wie ein Bauer vor dem andern.|{weselny_gosc == zapytany:Er sprach mit einer Stimme wie Wind in den Baumkronen: „Du freist gut, Macieks Enkel. Gib acht auf sie.“|Er stand dort bis zum ersten Hahnenschrei.}}
- polnocnica_1:
    Sie kommt nach Mitternacht zu den Säuglingen. Zuerst wird es kalt, dann raschelt etwas in der Stube wie trockenes Laub. Antek sah nur etwas Helles über der Wiege und schwarzes Haar bis auf den Boden. Statt zu weinen, pfeift das Kind, als bekäme es keine Luft. Eisen unter dem Kissen fürchtet sie.{rada_jaromira == ksiega_rada: Herrn Ignacys Buch fügt hinzu, dass sie verstreuten Mohn Körnchen für Körnchen zählen muss – und zählen kann sie nur, bis es dämmert.}
- polnocnica_2:
    Aus der Nähe sieht man sie ganz: Sie schwebt über den Dielen, ohne sie mit den Füßen zu berühren, in einem unten zerfransten Leichentuch, mit einem Gesicht, mager wie ein Totenschädel, mit Augen wie zwei schwarze Brunnen und kleinen, spitzen Zähnen. {rada_jaromira == hanka:Hankas Großmutter sagt, sie sei die Seele einer Mutter, die im Kindbett starb, ehe der Pfarrer sie aussegnen konnte – ihr eigenes Kind hat sie nie in den Armen gewiegt, darum geht sie zu fremden. Und dass sie nie von selbst kommt: Jemand muss ihr den Weg weisen. }{polnocnica == przegnana_nozem:Zosia wurde von einem kleinen Messer gerettet, das man ihr unter das Kissen geschoben hatte.|{polnocnica == policzyla_mak:Zosia rettete der Mohn – die Mitternachtsfrau zählte bis zum Morgengrauen und wurde nicht fertig.|Zosia überlebte, doch auf ihrer Stirn blieb ein grauer Fleck zurück, wie von der Berührung eines schmutzigen Fingers.}}
- dziad_1:
    Er klopfte an Heiligabend, kaum dass sie die Weihnachtsoblate geteilt hatten: gebeugt, in Lumpen, die Drehleier auf dem Rücken, mit Augen weiß wie Milch. {wpuscil_dziada:Er aß wenig, sang ein Lied von den Seelen, die in dieser Nacht in ihre Hütten heimkehren, und verschwand in der Dunkelheit, doch niemand sah, in welche Richtung. Im Gehen flüsterte er Jaromir zu: „Du riechst nach Wald, Junge.“|Sie ließen ihn nicht ein. Er ging auf den Wald zu und verschwand mitten auf dem Feld im Schneegestöber.} An Heiligabend weist man keinen Bettler von der Schwelle, denn man weiß nie, wer gekommen ist – manchmal kehrt die Seele eines Verwandten verkleidet zurück, um zu sehen, ob man sich ihrer noch erinnert.
- ogniki_1:
    Blasse Lichtlein über den Mooren beim Steg, die in der Dämmerung aufleuchten und kichern wie jemand, der ein Geschenk bekommen hat. Die Weiber sagen, das seien die, welche die Kräuterfrau vom See verbrannt haben – sie gingen in den Sumpf und leuchten dort bis heute in den Nächten. Wer einem solchen Irrlicht folgt, kehrt nicht mehr zurück.
- uboze_1:
    Ein winziges altes Männlein, nicht größer als eine Katze, in einem geflickten langen Bauernrock und einem roten Käppchen, den grauen Bart um die Hühnerbeinchen gewickelt. Er haust in alten Hütten hinter dem Ofen. Wer den Hausgeist füttert, dem gedeiht es auf dem Hof; wer ihn verjagt, holt sich die Armut ins Haus. Der Hausgeist kommt mit dem ersten Bauern und bleibt, solange die Hütte steht. Brennt sie nieder, zieht er mit dem Rauch davon und kehrt nie wieder.
- uboze_2:
    {uboze == nakarmione:Er vergilt es im Stillen: In der Vorratskammer nisten keine Mäuse, im Krug ist immer mehr Milch, als man eingegossen hat{rozdzial_dziewiaty:, und im Hungerwinter will das Mehl irgendwie nicht ausgehen}. Nur nimmt, was in der einen Hütte dazukommt, in der anderen ab – bei Staś’ Leuten wurde in denselben Monaten die Milch sauer.|{uboze == przegnane:Seit man ihn verjagt hatte, schien die Hütte ihnen gram zu sein: Die Hühner hörten auf zu legen, und in der Vorratskammer verdarb ständig etwas.|Niemand sah ihn danach je wieder. Nur manchmal war morgens die Asche auf der Ofenbank aufgescharrt, wie von einem Huhn, das einen Schlafplatz sucht.}}
- poludnica_1:
    Eine große, weiße Frau in einem langen Hemd. Genau zu Mittag kommt sie auf die Felder. Mit den Füßen berührt sie die Erde nicht, ihre Augen sind weiß, ohne Pupillen, und in der Hand trägt sie eine Sichel. Wer in der größten Hitze arbeitet, dem gibt sie Rätsel auf – für jeden Fehler haut sie mit der Sichel zu.{ not figurka_u_staruchy: Es heißt, sie sei einst die beste Schnitterin weit und breit gewesen: Sie wettete mit den Knechten, dass sie allein den ganzen Acker bis Mittag schneiden würde, und verließ das Feld nicht in der ärgsten Glut. Am Abend fand man sie, die Sichel in der Hand und Ähren im Haar.}{ poludnica_uklon: Vor der Antwort aus dem Buch neigte sie den Kopf.}{ poludnica_darowala: Einen Fehler sah sie Jaromir nach, weil er vor der Sichel nicht zurückwich.}{ blizna_sierpa: Jaromir behielt von ihr eine Narbe in Gestalt eines Halbmonds.}
- rusalki_1:
    Die Seelen ertrunkener Mädchen. An Pfingsten steigen sie aus dem See und tanzen im Mondlicht – jung, bleich, in nassen Leinenhemden, mit Kränzen aus Binsen und Augen ganz schwarz, ohne Weiß. Sie locken mit Gesang ohne Worte und ziehen jeden in die Tiefe, der sich verführen lässt. Sie zeigen sich nur von Pfingsten bis zum Johannistag; den Rest des Jahres schlafen sie im Schlamm auf dem Grund. Eine von ihnen war Kaśka, die Tochter der Wójciks.{ratunek_franka == piolunem: Wermut fürchten sie mehr als Feuer – doch die, die ihn brachte, vergessen sie nicht. Hankas Kranz gab das Wasser nicht mehr heraus.|{ratunek_franka == krzyzem: Das Kreuz brennt sie nicht – „wir waren vor ihm da“. Sie ließen Franek los, aber das Wasser ging nicht hungrig schlafen – am Morgen fand man im Schilf Bartek, den Sohn des Müllers.| Kaśka ließ Franek los, als Hanka sie beim Namen rief. Auf Jaromirs Wange, wo sie ihn berührt hatte, blieb ein weißer, kalter Fleck.}}
- licho_1:
    Eine kleine, gebückte Bettlerin, einem Erwachsenen kaum bis zum Gürtel, in so viele Lumpen gewickelt, dass man nicht weiß, wo der eine aufhört und der nächste anfängt. Sie hat nur ein Auge, rot umrändert; an der Stelle des zweiten ist glatte, graue Haut. Ihr Schatten ist zu lang und fällt gegen die Sonne, entgegen allen übrigen Schatten. Wer sie an seinem Zaun sieht, den trifft am nächsten Tag ein Unglück.
- licho_2:
    Hankas Großmutter nannte es beim Namen: das Licho, das nie schläft. Es zieht von Hof zu Hof und lässt sich dort nieder, wo es ihm gefällt – wo man den Wald schlägt und das Heilige von einem Winkel in den anderen schiebt. Ins Haus kommt es nicht, solange niemand es ruft. Verjagt, geht es zum Nachbarn; bewirtet, zieht es satt davon. Hankas Großmutter hat von ihrer Mutter gehört, das zweite Auge sei im Wald geblieben, denn das Licho seien die Augen, die der Herr des Waldes unter die Menschen schickt – sie selbst weiß nicht, ob das wahr ist.
- licho_3:
    {licho_noc == ugoszczone:Als es Speck bekommen hatte, ging es den Weg zum Sägewerk – und am Morgen sprang bei Urbaniak die Säge, und im Stall verendete ihm das beste Pferd.|{licho_noc == odpedzone:Mit einem Feuerbrand verjagt, floh es in Richtung der Schmiede – in jener Nacht brannte die Schmiede nieder.|Bis zum Morgen scharrte es unter der Tür und lockte mit dem Duft von Brot, und das Brett, an das es klopfte, vermoderte in einer einzigen Nacht. Niemand antwortete ihm.}} Im Oktober zog es den Weg am Waldrand entlang davon und ging zwischen die Bäume, als hätte jemand es gerufen.
- tropy_1:
    Am Morgen nach der Hochzeit war der ganze Hof weiß vom Reif – nur unter dem Fenster der neuen Stube war er zu einem breiten Oval weggetaut, bis auf die nackte Erde, als hätte dort etwas Großes und Warmes die ganze Nacht gelegen, zusammengerollt. Der Boden war noch lau. Hanka bestreute die Stelle mit Asche und befahl, niemandem etwas zu sagen.
- mamuny_1:
    Am See wohnen sie. Selbst gebären sie hässliche, kränkliche Kinder, darum stehlen sie den Menschen gesunde – solange das Kind nicht getauft ist – und legen ihre eigenen in die Wiege. Im Sommer hört man sie nachts mit Waschbleueln die Wäsche auf die Steine schlagen. Hankas Großmutter sagt, sie waschen Leichentücher für jene, die vor dem nächsten Frühjahr im Dorf sterben werden – und über jedem Leichentuch rufen sie einen Namen. Besser nicht lauschen. Sie fürchten Rot, Eisen und die Lichtmesskerze.
- mamuny_2:
    Hoch gewachsen und bucklig, mit Köpfen, zu groß für die dünnen Hälse, mit Haaren wie dürre Zweige, in Lumpen aus Moos und Rinde. Ihre Berührung ist kalt und nass.{noc_mamun == zaslonil: Bekommen sie kein Kind, nehmen sie der Mutter die Milch.} Sie können so summen, dass der Schlafende selbst den Schutz von der Wiege nimmt.{podmiana:{uklad_z_mamunami == oddany_skarb: Für Marysia nahmen sie Jaromirs Kindheitsschatz und warfen ihn in den See.|{uklad_z_mamunami == dar_swietojanski: Für Marysia versprach Jaromir ihnen jedes Jahr in der Johannisnacht Brot und einen Kranz auf dem Stein am Ufer. Vergisst er es, holen sie sich das Ihre.|{uklad_z_mamunami == oddane_lata: Für Marysia nahmen sie Jaromir Lebensjahre – seine Schläfen ergrauten wie bei einem Greis.| Den Tausch machte erst Wasser rückgängig, das in Eierschalen gekocht worden war.}}}}{sposob_na_odmienca == chrzest_odmienca: Sie werden nicht vergessen, dass man ihr Kind zu Splittern zerschlagen hat.}
- odmieniec_1:
    Ein Kind der Mamunen, an die Stelle eines Menschenkindes gelegt. Von weitem sieht es aus wie jenes, aber es ist schwerer und kalt, seine Haut ist wie Rinde, und die Augen sind dunkler als bei jedem anderen Säugling. Es weint nicht, sondern isst ohne Unterlass, und wenn es meint, dass niemand hinsieht, lächelt es wie eine alte Frau. Den Tausch kann man nur innerhalb von sieben Tagen rückgängig machen.
- tropy_2:
    Ein gewaltiger Leitwolf, größer als jeder Wolf in der Gegend, so mager, dass man unter dem weißen Pelz alle Rippen sieht. Er geht dem Rudel voran, doch selbst kommt er nicht an die Ställe heran.{noc_wilkow == bronil_obory: Mit einem einzigen Heulen kann er es vom Stall zurückrufen.} Am Vorderlauf hat er einen Ring abgewetzten, schütteren Fells, an derselben Stelle, wo Franek die drei Krallenstriemen hatte. Seine Augen sind menschlich: hell, traurig, mit deutlicher Pupille. Antek sagt, er würde sie mit keinen anderen verwechseln.{oblawa_wilk == wydal_wilka: Er bekam eine Kugel vom Heger Pawlik und entkam in den Wald, eine blutige Spur im Schnee hinter sich. Seither klingt sein Geheul anders.| Er überlebte die Treibjagd. Am nächsten Morgen lag auf dem Hackklotz am Zaun ein Hase mit durchgebissenem Genick.}{noc_na_kladce != (): In der Nacht, als Józek im Schlaf zum Steg ging, huschte etwas Weißes über den Damm hinter den Mooren – und der Wassermann wandte auf seinen Ruf hin den Kopf.}
- pan_lasu_5:
    Das Jungholz, das in ein paar Jahren vom Wald bis dicht an die Zäune herangerückt war, wurde zum Versteck für die Wölfe. Die Alten sagen, der Wald wächst nicht ohne Grund aufs Dorf zu: Zuerst kommen die Bäume, dann die Tiere und zuletzt der, der über sie herrscht.
- strzyga_1:
    {sprawdzil_zeby:Der alte Wójcik hatte zwei Reihen Zähne – eine hinter der anderen, klein und spitz wie bei einem Hecht.|Die Leute sagten, der alte Wójcik sei mit Zähnen zur Welt gekommen.} Wer mit Zähnen oder mit zwei Herzen geboren wird, hat zwei Seelen. Nach dem Tod geht die eine zu Gott, die andere aber bleibt im Leib und lässt ihm keine Ruhe: Der Körper erkaltet nicht, die Wangen sind rosig, die Lider schließen sich nicht. Gegen Mitternacht steht ein solcher Toter auf. Früher begrub man ihn mit dem Gesicht nach unten, eine Sichel über der Kehle und Mohn im Sarg – damit er sich nicht umdrehen konnte, damit er sich verletzte, wenn er aufzustehen versuchte, und damit der Mohn ihn bis zum Jüngsten Gericht in Schlaf hielt.
- strzyga_2:
    {polnoc_strzygi == na_twarz:Aufs Gesicht gedreht, bäumte er sich bis zum ersten Hahnenschrei gegen das Brett auf und biss Antek in die Hand. Die Wunde wollte lange nicht heilen.|{polnoc_strzygi == sierp_przy_szyi:Als die Sichel seinen Hals berührte, quoll schwarzes, dickes Blut daraus hervor.|Erst eine Lichtmesskerze in seinen Händen beruhigte ihn; da sprach er den Namen seiner Tochter aus.}} {pochowek_wojcika == pochowany_za_murem:Man begrub ihn hinter der Friedhofsmauer, mit dem Gesicht zur Erde, und er kam nicht wieder.|{pochowek_wojcika == pochowany_z_makiem:Er wurde in geweihter Erde beigesetzt, Hankas Mohn auf der Brust, und kam nicht wieder. Wegen dieses Mohns schloss der Pfarrer sie bis Ostern von der Kommunion aus.|{trzy_noce == rozkopany_grob:Nach drei Nächten kehrte er zurück und stand unter dem Fenster über Marysias Wiege, bis Jaromir und Antek sein Grab aufgruben.|Nach drei Nächten kehrte er zurück. Er wich von dem Fenster, hinter dem Marysia schlief – doch an jenem Morgen fand man die Wójcikowa tot.}}}
- mamuny_3:
    Über der Wäsche rufen sie die beim Namen, für die sie Leichentücher waschen. Die Wójcikowa belauschte sie im Juni aus dem Schilf und hörte nur einen einzigen Namen. Im November starb ihr Mann.{trzy_noce == czuwanie_przy_kolysce: Sie irrte sich – oder wollte den zweiten nicht hören.}
- starzec_3:
    An Heiligabend stellte Hanka ein Gedeck für einen Wanderer auf den Tisch. Am Morgen lag auf dem Teller, an der Stelle der Oblate, eine Handvoll frisches, grünes Moos – mitten im tiefsten Winter.
- ogniki_2:
    Als die Figur {przeszukal_zgliszcza && not figurka_w_bagnie:nach Zapadlina zurückkehrte|zum Vorschein kam}, begannen die Irrlichter bis an die Zäune heranzukommen – jede Nacht näher, als warteten sie darauf, dass jemand die Tür öffnet.{los_figurki == figurka_w_skrzyni: Sie brennen weiter, aber jenseits des Stegs, fern von den Zäunen.}{los_figurki == figurka_pod_kapliczka || los_figurki == figurka_u_jagny || los_figurki == figurka_u_stwora: Sie erloschen alle zugleich in derselben Nacht, in der die Figur zu rufen aufhörte.}
- stwor_3:
    Er kehrte mit der Figur in die Moore zurück. Die Kinder im Dorf träumten von ihm denselben Traum: Er steht unter dem Steg im schwarzen Wasser, kippt Tontöpfe um, schaut unter jeden und fragt dann: „Wo ist meine Puppe?“{figurka_u_staruchy: Am Oberarm hat er eine tiefe, alte Narbe von Großvater Macieks Axt.}{noc_na_kladce == siekiera_na_kladce: Jaromir verwundete ihn mit der Axt, und er riss ihm die Schulter auf.}{noc_na_kladce == figurka_dla_stwora: Als er die Figur bekam, ließ er den Jungen los und drückte sie an die Brust wie eine Mutter ihr Kind. Beim Abtauchen riss er den alten Steg mit sich.}{noc_na_kladce == latarnia_na_wodzie: Feuer fürchtet er mehr als Eisen – vor dem brennenden Öl floh er.}
- zielarka_3:
    {zaufal_jagnie:Jagna sagt, die Figur sei eine Puppe: Die Kräuterfrau habe sie aus einer Wurzel geschnitzt, die sie aus dem Sumpf gezogen hatte, und ihr den Namen dessen gegeben, der im Wasser wohnt. Wer die Puppe hat, dem folgt er. Feuer fürchtet die Puppe nicht – zum Schweigen bringt sie nur geweihte Erde.{odrzucil_figurke: Hat man sie einmal von sich gestoßen, lässt sie sich niemandem mehr übergeben.}|Nach über sechzig Jahren {przeszukal_zgliszcza && not figurka_w_bagnie:kehrte die angekohlte Figur vom See nach Zapadlina zurück|kam die angekohlte Figur vom See wieder zum Vorschein} – und mit ihr kamen die Träume wieder.}{los_figurki == figurka_pod_kapliczka: Jetzt liegt sie unter dem Bildstock, und wo genau, weiß nur Jaromir.}{los_figurki == figurka_u_jagny: Jagna nahm sie mit sich, so weit fort, dass der Wassermann sie nicht mehr hören kann.}{los_figurki == figurka_w_skrzyni: Das Feuer nahm sie nicht. Sie liegt in einer Truhe unter dem Bett, mit einer Kette umwickelt.}{los_figurki == figurka_u_stwora: Jetzt hat sie der, der unter dem Steg wohnt.}
- pan_lasu_6:
    In der Nacht, als die Bildstöcke brannten, rückte der Wald um einen ganzen Acker ans Dorf heran. Die Bäume, die am Morgen dort standen, wo Stoppeln gewesen waren, sahen aus, als stünden sie dort seit Jahren. Die Pflöcke für Urbaniaks Weg trieben Schösslinge, und aus den Stümpfen auf der Schneise sprossen jeden Morgen neue Zweige.{droga_do_boru: Der Weg reichte bis zu den ersten großen Kiefern und brach dort ab – niemand wollte weiter roden.}{szarwark && not droga_do_boru && rozdzial_czternasty.pierwszy_snieg_czternasty: Das Jungholz hielt an der Grenze der verbrannten Bildstöcke inne und wuchs nicht weiter.}
- uboze_3:
    Er weckte den Hausherrn, indem er ihn an den Haaren zerrte, als vom Wald her das Feuer kam. Er fürchtete sich so, dass ihm der Bart zitterte. Der Hausgeist weiß noch, wer ihn gefüttert hat.
- zytnia_baba_1:
    Klein, gebückt, breit in den Hüften wie eine Garbe, mit einem Gesicht, runzlig wie eine gebackene Brotkruste, und mit Haaren aus Ähren. Sie riecht nach warmem Korn. Sie kauert zwischen den Halmen und schwenkt vor den Kindern wie eine Rassel das, was ihnen gehört.
- zytnia_baba_2:
    Der alte Staś sagt, die Roggenmuhme fange Kinder im Korn und lasse sie dort liegen – aber Marysia ließ sie nicht liegen. Sie führte das Kind über das Feld bis an den Wald, als trüge sie es zu jemandem.{pani_w_zbozu_noc == gonil_babe: Wer sie verfolgt, irrt bis zum Morgengrauen umher, und in den Wunden von den Halmen bleiben ihm Grannen stecken, die immer tiefer einwachsen.}{pani_w_zbozu_noc == za_spiewem: Sie singt mit der Stimme der Mutter – und der Mutter bleibt danach eine Stimme, die mittendurch gesprungen ist.}{pani_w_zbozu_noc == z_pochodniami: Wenn das ganze Dorf sie sucht, flieht sie – doch sie hinterlässt einen zertrampelten Acker.}
- pan_lasu_7:
    {rada_przed_borem == rada_ksiedza:In den Kirchenbüchern steht verzeichnet, dass alle paar Jahrzehnte aus einem Dorf am Waldrand ein Kind verschwindet, immer in der Johannisnacht. Die zurückkommen, erinnern sich an nichts.|{rada_przed_borem == rada_jagny:Jagna sagt, der Wald nimmt Kinder, wenn sein Herr erwacht – er tötet sie nicht, er hält sie nur fest.|Der Planetnik sagt, über dem Wald teilen sich die Wolken, und seit Menschengedenken ist dort kein Tropfen Regen gefallen.}}
- planetnik_1:
    Ein hochgewachsener Greis in Lumpen, mit einem vom Wind zerzausten Bart und einem Sack auf dem Rücken. Er geht vor dem Gewitter einher und führt die Wolken an einem Strick. Wer ihm Brot gibt, über dessen Feld bersten die Wolken nicht – wer ihn aber etwas fragt, bezahlt mit seinem Feld.
- tropy_3:
    {oblawa_wilk == wydal_wilka:Die Schusswunde verheilte schlecht. Im Wald folgte er Jaromir die ganze Nacht – nicht, um ihn zu beschützen.|Er fand Jaromir im Wald, als dieser Franeks Stimme nachging.{przejscie_bagna == za_wilkiem: Er führte ihn durch den Sumpf. Als Jaromir ihm die Hand hinstreckte und ihn Franek nannte, schnappte er zu – warnend, aber bis aufs Blut.}}
- blednice_1:
    Blasse Lichtkugeln über dem Sumpf tief im Wald, so groß wie ein Kinderkopf. In jeder Kugel kauert eine kleine Gestalt mit Augen wie schwarze Körnchen. Das sind nicht die Irrlichter vom Dorf: Sie flackern nicht aus der Ferne, sondern schweben nah heran, piepsen wie Küken und locken einen zu sich.{przejscie_bagna == za_blednicami: Sie führen einen bis zum Morgengrauen um ein und denselben Grashöcker herum und nehmen, was einer in der Tasche hat.}{przejscie_bagna == krag_z_soli: Über Salz gehen sie nicht, auch wenn sie das Gesicht eines geliebten Menschen tragen.}{przejscie_bagna == za_wilkiem: Vom weißen Wolf halten sie sich fern.}{przejscie_bagna == z_rozancem: Vom Gebet erlöschen sie heulend – doch sie nehmen sich etwas dafür.}{przejscie_bagna == z_krzesiwem: Sie fürchten Funken.}
- starzec_4:
    Im Herzen des Waldes nahm er den Hut ab.
- pan_lasu_8:
    Im Herzen des Waldes, wo es nie regnet, steht eine Eiche, größer, als die Alte Eiche einst war. Dort nahm der Alte mit dem Moosshut den Hut vom Kopf. Darunter war Rinde. Aus seiner Stirn schoss ein Geweih, er selbst wuchs über die Baumkronen hinaus und warf keinen Schatten. Siebzig Jahre hatte er gewartet, bis jemand aus Macieks Geschlecht von selbst zu ihm käme.
- pan_lasu_9:
    Das Tal gehörte einst ihm, vom Kamm bis zum See. Er wich zurück, als der erste der Menschen ohne Axt zur Alten Eiche kam und sagte: Weiter gehen wir nicht. Dafür nimmt der Herr des Waldes ein Kind pro Generation, in der Johannisnacht, und gibt es zurück, ehe es sein Zuhause vergisst. Die Eiche war die Grenze, die Abmachung der Zaun und die Bildstöcke die Nägel.{chata_macka == przy_lesie: Maciek, der von nichts wusste, baute seine Hütte auf der Waldseite und schlug am ersten Morgen die Axt in eine Fichte. Mit ihm begann das Zählen.} Marysia hat er selbst genommen – die Roggenmuhme hat er nach ihr geschickt. Ob, um sie vor denen vom Wasser zu verbergen, oder für sich selbst, das sagte er nicht. Seit der Zaun gefallen ist, weckt der Fluch seine Diener und zieht sie zu den Hütten. Diesmal lässt er für sie bezahlen, denn die Abmachung hat das Dorf gebrochen, nicht er.{pytanie_do_leszego == kim_jest: Er war im Tal, ehe die ersten Menschen hinabstiegen. Er zählt die alten Bäume, die jenseits der Grenze gefällt wurden, und die Menschen, die sich ihm von selbst hingegeben haben. Wenn er bis tausend gezählt hat, schläft er für immer ein, und ein anderer wird für ihn zählen. Auch er kam einst von selbst in den Wald.}{pytanie_do_leszego == gdzie_marysia: Seine Kinder haben keinen Schatten.}
- zielarka_4:
    Zu ihr kamen die vom Wasser – und der Herr des Waldes. Einmal ließ er sie auf dem Wasserspiegel eine Hütte in Flammen sehen – ihre eigene –, aber sie glaubte ihm nicht. Brennend verfluchte sie das Dorf mit fremden Händen: „Die Knochen eurer Kinder sollen zerbrochen und ihr Blut getrunken werden…“ Solange die Alte Eiche stand, war das Wort stärker als der Fluch.{pytanie_do_leszego == o_klatwe: Lösen wird den Fluch, wer dem Herrn des Waldes die Grenze zurückgibt, oder wer seinen Platz einnimmt. Oder das Feuer, mit dem er begann – doch danach bleibt weder Wald noch Dorf.}{zastaw_u_leszego == zastaw_krzesiwo: Der Feuerstahl, den Maciek in ihrer Asche fand, trägt dieselbe Glut in sich, die sie verbrannt hat.}
- tropy_4:
    Er brachte Marysias zweiten Holzschuh unter die Eiche – den, mit dem die Roggenmuhme gewiegt hatte. {wilk_przy_jaromirze:Er legte ihn Jaromir zu Füßen und blieb die ganze Nacht bei ihm liegen.|Er gab ihn dem Herrn des Waldes und sitzt bei ihm, gleichgültig wie die Bäume.}{wilk_pod_debem != nie_ruszal_sie: Jedes menschliche Wort, das ihm wieder einfällt, nimmt ihm ein Stück seines Wolfslebens.}
- dzieci_1:
    Im Morgengrauen kommen sie aus einem Spalt in der Eiche und setzen sich im Kreis: ein gutes Dutzend Mädchen mit ein und demselben Gesicht, in denselben Hemdchen und mit neuen Bändern im Haar. Sie lächeln artig und geduldig, sprechen wie mit einer Stimme und riechen nach Moder. Wenn der Vater gewählt hat, zerfällt der Rest zu trockenem Laub und Rinde.{znak_rozpoznania == po_melodii: Sie singen die Weise bis zum Ende.}{znak_rozpoznania == po_buzi || znak_rozpoznania == po_skarbie: Alles, was beim Kind links ist, ist bei ihnen rechts{skarb_dla_corki:, und was es um den Hals trägt, ist bei ihnen glatt und neu}.}{pytanie_do_leszego == gdzie_marysia: Sie werfen keinen Schatten und weinen nie.}
- pan_lasu_10:
    {marysia_odzyskana:Er hielt Wort: Wer sein Kind erkennt, nimmt es mit, und niemand hält ihn auf.|Er hielt Wort: Wer falsch wählt, nimmt mit nach Hause, was er gewählt hat – und begräbt es wie sein eigenes.} Er kündigte an, er werde an Allerseelen ins Dorf kommen, um bis zum Letzten abzurechnen.
- tropy_5:
    Er half, das echte Kind zu finden, obwohl die Diener des Herrn des Waldes Menschen nicht helfen. Er blieb unter der Eiche, die Hand ihres Gebieters im Nacken.
- mamuny_4:
    Ende August wuschen sie auf den flachen Steinen am anderen Ufer des Sees ein kleines Leichentuch. An Allerseelen brachten sie es im Gefolge des Herrn des Waldes und riefen darüber „Marysia“. Sie suchen nicht selbst aus – sie waschen, was ihnen das Wasser bringt. Solange das Leichentuch bis zum Morgengrauen nicht getrocknet ist, lässt sich der Name herauswaschen, aber jemand muss dafür bezahlen.{cena_caluna == cena_umowa: Die Gabe zur Johannisnacht wird nun auch Marysia bringen müssen, bis an ihr Lebensende.}
- tropy_6:
    Er zerriss den Mamunen in der Allerseelennacht das Leichentuch mit Marysias Namen, und sie zogen ihn unter Wasser. Antek erkannte ihn am Ring abgewetzten Fells am Vorderlauf.
- dzieci_2:
    Das eine, das man wählt, stirbt am Waldrand.{cialo_kopii == spalone: Im Feuer knackt es wie Kienholz, und der Rauch riecht nach Fichtennadeln.}{cialo_kopii == oddane_jagnie: Jagna sagt, das sei Holz, und sie weiß, was man mit solchem macht.}{cialo_kopii == pochowane || cialo_kopii == pod_mlodnikiem: Es liegt in der Erde wie ein Kind, obwohl es nach nichts riecht.}
- pan_lasu_11:
    Er hält sein Wort bis aufs letzte Jota – und verlangt dasselbe von anderen. Vor Allerseelen kriecht der Nebel vom Wald jeden Abend bis an die Zäune, und am ersten November, auf dem Weg vom Friedhof in Bukowiec, erloschen in einem einzigen Atemzug alle Lichtmesskerzen{not marysia_odzyskana: außer der, die Hanka trug}, obwohl die Luft stillstand.
- pan_lasu_12:
    {ostatnia_noc == zwrocil_granice:An Allerseelen kam er mit seinem Gefolge ins Dorf und bekam die Grenze zurück: Macieks Axt, in den Stumpf der Alten Eiche geschlagen, und das Wort des ganzen Dorfes. Wort um Wort.{zoladz_zasadzony: Neben dem Stumpf keimte eine Eichel der Alten Eiche, von Menschenhand gepflanzt. Solange die Eiche wächst, nimmt der Herr des Waldes keine Kinder mehr.}|{ostatnia_noc == zajal_miejsce:Er gab Jaromir den Moosshut und legte sich am Stumpf der Alten Eiche nieder. „Jetzt zähl du.“|Er verbrannte zusammen mit dem Wald. Das Letzte, was er sagte, lautete: „Abgerechnet.“}}
- zielarka_5:
    {ostatnia_noc == zwrocil_granice:Die Diener des Herrn des Waldes kehrten dorthin zurück, wo sie hingehören; ihr Fluch hält sich wieder hinter dem Zaun.|{ostatnia_noc == zajal_miejsce:Ihr Fluch band dem früheren Herrn des Waldes die Hände. Die Hände des neuen kannte er nicht.|Ihr Fluch begann mit Feuer und endete mit Feuer.}}
- tropy_7:
    {ostatnia_noc == zwrocil_granice:Er ging mit dem Gefolge in den Wald.|{ostatnia_noc == zajal_miejsce:Der neue Herr des Waldes ließ ihn frei.|{wilk_przy_mnie():Er stand an Jaromirs Seite, als der Wald brannte.|Er sprang seinem Herrn nach ins Feuer.}}}
- dzieci_3:
    An Allerseelen gingen sie im Gefolge des Herrn des Waldes und hielten einander an den Händen. Keines warf einen Schatten.{ostatnia_noc == skrzesal_ogien: Ihr Summen brach im brennenden Wald mittendrin ab und setzte nie wieder ein.}
}
