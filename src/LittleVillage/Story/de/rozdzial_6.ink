// ------------------------------------------------------------
//  Rozdział szósty — Południca. Żniwa w upale, Jaromir ma trzynaście
//  lat. Południca zadaje w samo południe trzy zagadki; za każdą
//  pomyłkę tnie sierpem. Księga daje dodatkową odpowiedź. Przy dwóch
//  i więcej pomyłkach ratuje go Hanka z dzbanem wody (gorączka, blizna),
//  inaczej Południca ostrzega: „Pan Lasu się budzi, pilnuj kapliczek”.
// ------------------------------------------------------------

=== rozdzial_szosty ===
# tlo: zniwa
# rozdzial: Sechstes Kapitel
# tytul: Mittagsstunde
Die Ernte kam in großer Hitze. Seit Wochen war kein Tropfen Regen gefallen, der Himmel war schon im Morgengrauen weiß vor Glut, und die Erde auf den Feldrainen sprang in lange, gewundene Risse auf. Das Getreide war plötzlich gereift, binnen weniger Tage, und stand nun golden und trocken auf den Feldern und raschelte bei jedem Windhauch wie Papier.
Sie zogen aufs Feld, bevor die Hähne krähten. Die Männer gingen voran, die Frauen banden hinter ihnen die Garben, und die Kinder lasen die liegen gebliebenen Ähren auf und trugen Wasser in tönernen Krügen. Jaromir war dreizehn und mähte zum ersten Mal mit den Erwachsenen – in der Reihe, Schritt für Schritt hinter dem Vater, und die Klinge in seinen Händen pfiff fast so gleichmäßig wie bei den alten Schnittern. Die Luft roch nach heißem Stroh und Schweiß, die Sensen klangen an den Wetzsteinen, und unter den Füßen flatterten immer wieder aufgescheuchte Wachteln hoch.
Hanka arbeitete auf dem Nachbarstreifen. Ab und zu richtete sie sich auf, wischte sich mit dem Handrücken die Stirn und schielte zu Jaromir hinüber, und wenn sich ihre Blicke trafen, wandte sie sofort den Kopf ab und machte sich mit gespieltem Eifer wieder an die Garben. Jaromir wusste nicht, warum ihm dabei jedes Mal so seltsam heiß wurde – und das nicht von der Sonne. # pokaz: hanka
{ figurka_u_staruchy:
    Der Vater sprach kaum ein Wort. Zur Mittagsstunde schickte er immer alle vom Feld in den Schatten, und wenn darüber der Roggen ausfallen sollte.
- else:
    Der Vater scherzte und sang bei der Arbeit, aber zur Mittagsstunde schickte er immer alle vom Feld in den Schatten. „Euer Großvater hat’s so gehalten“, sagte er, „und dessen Großvater auch. Ich hab mir das nicht ausgedacht.“ Und wenn die Kinder weiterbohrten, erzählte er von einem Mädel, der besten Schnitterin weit und breit, die mit den Knechten gewettet hatte, sie werde ohne Hilfe einen ganzen Acker bis Mittag schneiden. In der ärgsten Glut ging sie nicht vom Feld. Am Abend fand man sie, die Sichel in der Hand und Ähren im Haar.
}
Eines Tages blieb Jaromir allein am Ende des Streifens zurück. Er wollte die Schwade noch zu Ende mähen, bevor er in den Schatten ging, und merkte nicht, wann die anderen zum Birnbaum am Rain hinübergegangen waren. Die Sonne stand ihm genau über dem Kopf, und sein Schatten schrumpfte und verschwand unter seinen Füßen. # pokaz: sam # dalej
-> poludnica_przychodzi

= poludnica_przychodzi
# tlo: poludnica
Es wurde still. Die Grillen verstummten, das Getreide hörte auf zu rascheln, und die Luft über dem Feld wurde dick und begann zu wabern wie Wasser über einem heißen Stein.
Zwischen den Ähren erschien eine Frau. # pokaz: poludnica
Sie war groß und hager, gerade wie eine gespannte Saite, in einem weißen Hemd bis zu den Knöcheln, das wogte, obwohl nicht der leiseste Wind ging. Ihr helles Haar reichte bis an die Knie und wehte nach beiden Seiten, und auf dem Kopf trug sie einen Kranz aus Ähren und rotem Mohn. Ihr Gesicht war bleich und schmal, mit hohen Wangenknochen, die Augen wie in der Sonne gebleichtes Leinen, ohne Pupillen, und die Lippen zu einem dünnen Strich zusammengepresst. Die bloßen Füße berührten den Boden nicht – sie schwebte ein paar Zoll über den Stoppeln, und unter ihr flirrte die Hitze. In der rechten Hand hielt sie eine Sichel. An deren Spitze hing ein roter Tropfen.
Die linke Hand streckte sie ihm entgegen, offen, als bäte sie um etwas.
„Wer in meiner Stunde arbeitet“, sagte sie mit einer Stimme, trocken wie knisterndes Stroh, „der muss mir Antwort geben. Drei Rätsel. Für jeden Fehler – ein Schnitt.“
{ ekwipunek ? ksiega:
    Jaromir stand eine Seite aus Herrn Ignacys Buch vor Augen: „Die Mittagsfrau geht in der ärgsten Glut über die Felder und befragt die Schnitter. Wer auf alles Antwort weiß – der ist frei. Wer sich irrt oder davonläuft – den mäht sie mit der Sichel nieder oder schickt ihm das Fieber.“ Darunter hatte der Lehrer in kleinerer Schrift eine einzige Lösung nachgetragen, die er vor Jahren von einer alten Frau aus Bukowiec gehört hatte, und sie zweimal unterstrichen: „Das Korn stirbt dreimal und kehrt dreimal wieder.“
}
# dalej
-> zagadka_1

= zagadka_1
Die Mittagsfrau legte den Kopf schief wie ein Vogel.
„Ohne Beine läuft es durchs Getreide, ohne Hände kämmt es die Ähren, ohne Maul heult es im Schornstein. Jeder hat es gehört, und keiner hat es je gesehen. Was ist das?“
# pytanie: Was wird Jaromir antworten?
*   [Feuer.]
    -> zle_1
*   [Wind.]
    Die Mittagsfrau schwieg einen Augenblick. Dann zuckten ihre Lippen – es war kein Lächeln, eher etwas, das an eines erinnerte.
    „Der Wind“, wiederholte sie. „Mein Bruder. Gut.“ # dalej
    -> zagadka_2
*   [Rauch.]
    -> zle_1

= zle_1
{ odwaga_jaromira && not poludnica_darowala:
    ~ poludnica_darowala = true
    Die Sichel pfiff – und hielt ein Haarbreit vor seiner Schulter inne. Jaromir rührte sich nicht. {figurka_u_staruchy:Einmal, im tiefen Wasser, hatte ihn etwas an der Wade gestreift, und er war ans Ufer geflohen. Diesmal floh er nicht.|Einmal, im Schilf am See, hatte er die Hand auf einen verkohlten Balken gelegt, obwohl die anderen sich nicht trauten. Diesmal wich er nicht zurück.}
    „Du läufst nicht davon“, sagte die Mittagsfrau und zog die Klinge zurück. „Diesen einen Fehler schenk ich dir. Aber es war der Wind. Feuer und Rauch hat jeder gesehen, den Wind noch keiner.“ # dalej
    -> zagadka_2
}
~ pomylki_poludnica += 1
~ ciecie_ramie = true
Die Sichel pfiff, noch ehe Jaromir blinzeln konnte. Er spürte einen brennenden Schmerz an der Schulter, und als er hinuntersah, sickerte Blut durch das zerrissene Hemd. # pokaz: ciecie
„Falsch“, sagte die Mittagsfrau. „Der Wind. Feuer und Rauch hat jeder gesehen, den Wind noch keiner.“ # dalej
-> zagadka_2

= zagadka_2
„Man begräbt ihn in der Erde wie einen Toten, und er steht wieder auf. Man köpft ihn wie einen Missetäter, und er blutet nicht. Man schlägt ihn, und er klagt nicht. Und erst wenn man ihn in die Glut schiebt – dann wollen ihn alle haben. Was ist das?“
# pytanie: Was wird Jaromir antworten?
*   [Flachs.]
    -> zle_2
*   [Roggen.]
    „Roggen“, flüsterte sie, und ihr weißes Gesicht wurde für einen Augenblick weicher, als erinnerte sie sich an eine eigene Ernte, vor langer Zeit. „Ein kluger Junge.“ # dalej
    -> zagadka_3
*   [Kartoffel.]
    -> zle_2
*   { ekwipunek ? ksiega } [Korn.]
    ~ poludnica_uklon = true
    Die Mittagsfrau öffnete den Mund und schloss ihn wortlos wieder. Lange sah sie ihn mit diesen weißen Augen an, dann neigte sie den Kopf – leicht, kaum merklich, wie vor jemandem, den man achtet. # pokaz: uklon
    „Das Korn“, wiederholte sie leise. „In der Erde stirbt es, unter Sense und Dreschflegel kehrt es wieder, und im Ofen wird es als Brot geboren. Eine solche Antwort hab ich seit hundert Jahren nicht gehört. Dich hat jemand gut gelehrt.“ # dalej
    -> zagadka_3

= zle_2
{ odwaga_jaromira && not poludnica_darowala:
    ~ poludnica_darowala = true
    Die Sichel pfiff – und hielt ein Haarbreit vor seiner Hand inne. Jaromir rührte sich nicht. {figurka_u_staruchy:Einmal, im tiefen Wasser, hatte ihn etwas an der Wade gestreift, und er war ans Ufer geflohen. Diesmal floh er nicht.|Einmal, im Schilf am See, hatte er die Hand auf einen verkohlten Balken gelegt, obwohl die anderen sich nicht trauten. Diesmal wich er nicht zurück.}
    „Du läufst nicht davon“, sagte die Mittagsfrau und zog die Klinge zurück. „Diesen einen Fehler schenk ich dir. Aber es war der Roggen. Flachs bäckt man nicht, und Kartoffeln drischt keiner.“ # dalej
    -> zagadka_3
}
~ pomylki_poludnica += 1
~ ciecie_dlon = true
Die Sichel blitzte durch die Luft. Der Schnitt ging über den Handrücken, nicht tief, aber das Blut spritzte auf die Stoppeln. # pokaz: ciecie
„Roggen“, zischte sie. „Flachs bäckt man nicht, und Kartoffeln drischt keiner.“ # dalej
-> zagadka_3

= zagadka_3
Die Luft waberte stärker. Die Glut stieg Jaromir bis an die Kehle, in den Ohren klang es ihm, und das Feld begann zu schwanken, als stünde er in einem Boot.
„Und jetzt sag mir“, die Mittagsfrau senkte die Stimme, „wer hat ein Haus, älter als alle Hütten ringsum, und doch keine einzige Tür darin? Wer weidet Wölfe, wie ihr Schafe weidet? Und wem hat man in diesem Sommer den dicksten Pfahl aus dem Zaun gerissen, den eichenen?“
# pytanie: Was wird Jaromir antworten?
*   [Der heilige Georg.]
    ~ pomylki_poludnica += 1
    ~ ciecie_policzek = true
    „Ein Heiliger?“ Die Mittagsfrau lachte, trocken und hässlich, wie knisternde Stoppeln. „Die Heiligen sitzen in den Bildstöcken, Junge. Und jener wartet nur darauf, dass sie ihm jemand herausreißt.“
    Die Klinge blinkte auf. Jaromir spürte einen scharfen Ritz auf der Wange, und über sein Kinn rann etwas Warmes. # pokaz: ciecie
*   [Der Herr des Waldes.]
    Alles wurde noch stiller, obwohl es schien, stiller könne es nicht mehr werden. Die Mittagsfrau zog die ausgestreckte Hand zurück.
    „Du kennst ihn“, sagte sie, und zum ersten Mal klang in ihrer Stimme so etwas wie Furcht. „Das ist schlimm. Denn er kennt auch dich.“
*   [Ich weiß es nicht.]
    Die Mittagsfrau schwieg lange.
    „Du weißt es“, sagte sie. „Du fürchtest dich nur, es auszusprechen. Das ist klug. Sprich seinen Namen nicht am Mittag aus.“
-   -> wynik

= wynik
{ pomylki_poludnica:
- 0:
    Die Mittagsfrau senkte die Sichel.
    „Du bist frei“, sagte sie. „Aber hör zu, denn ich sag es kein zweites Mal. Der Herr des Waldes erwacht. Mit jedem gefällten Baum schläft er weniger tief. Gib acht auf die Bildstöcke, Junge. Gib acht auf sie, solange sie stehen.“
- 1:
    Die Mittagsfrau betrachtete ihn lange, dann senkte sie die Sichel.
    „Es hätte schlimmer kommen können“, sagte sie. „Geh. Aber merk dir: Der Herr des Waldes erwacht. Gib acht auf die Bildstöcke.“
- else:
    Die Mittagsfrau hob die Sichel hoch über seinen Kopf. Der Junge schloss die Augen – und da hörte er einen Schrei. # pokaz: zamach
}
Jemand kam über den Streifen gelaufen und stolperte über die Garben. Hanka. In den Händen trug sie einen tönernen Krug, aus dem Wasser schwappte. # pokaz: dzban
„Jaromir! Jaromir, was machst du hier zur Mittagsstunde?!“
{ pomylki_poludnica < 2:
    ~ ostrzezenie_poludnicy = true
    Als er wieder vor sich blickte, war niemand mehr da. Nur auf dem Stoppelfeld lag der Kranz aus Ähren und Mohn, der schon zu welken begann. # pokaz: znika, wianek # dalej
    -> po_poludniu
- else:
    Hanka wurde nicht langsamer. Sie sprang zu dem Jungen und schleuderte das Wasser aus dem Krug – nicht auf ihn, sondern vor sich hin, dorthin, wo die Glut waberte.
    „Da, trink!“, rief sie mit brechender Stimme ins Leere, so wie es ihre Großmutter sie gelehrt hatte. „Trink und lass ihn los!“
    Die Mittagsfrau zögerte mit erhobener Sichel. Sie sah das Mädchen an, dann den dunklen Fleck, der in der rissigen Erde versickerte – und zerging in der flirrenden Luft wie Dampf. Hanka goss Jaromir den Rest des Wassers über den Kopf. # pokaz: znika, woda # dalej
    -> goraczka
}

= goraczka
# tlo: goraczka
~ blizna_sierpa = true
~ zapiski += poludnica_1
Drei Tage lang verzehrte ihn das Fieber. Er lag in der Hütte unter nassen Tüchern, {rany_sierpa()} brannten wie mit glühendem Eisen gesengt, und in seinen Fieberträumen sah er immerzu weiße Augen ohne Pupillen und hörte ein trockenes Flüstern: „Für jeden Fehler – ein Schnitt.“ # pokaz: majaki
Die Mutter wich keinen Schritt von seiner Seite. Hanka brachte Kräuter von ihrer Großmutter, und am zweiten Tag ging sie, ohne jemandem etwas zu sagen, zur Mittagsstunde auf jenen Streifen und stellte einen Krug frisches Wasser auf den Rain. Sie kam ganz verstört zurück und wollte nicht sagen, was sie dort gesehen hatte. In dieser Nacht begann das Fieber zu sinken. # pokaz: hanka
Als er endlich aufstand, war ihm an der {miejsce_blizny()} eine weiße, halbmondförmige Narbe geblieben, wie von der Spitze einer Sichel.
-> czy_powiedziec

= po_poludniu
# tlo: czerwony_ksiezyc
~ zapiski += poludnica_1
~ mak_w_medaliku = true
Den Schnittern erzählte er nicht, was zur Mittagsstunde geschehen war. Erst am Abend, als er mit Hanka auf dem Zaun saß und sie zusahen, wie über dem Stoppelfeld ein großer roter Mond aufging, zog er die welke Mohnblüte vom Kranz aus der Tasche und legte sie ihr in die Hand. # pokaz: mak
Von den Feldern zog der Geruch von Staub und sonnenverbrannter Erde herüber, die Grillen zirpten wie toll, und Hanka saß so nah, dass er durchs Hemd die Wärme ihres Arms spürte.
„Von wem ist die?“, fragte sie.
„Von jemandem, der mir aufgetragen hat, auf die Bildstöcke achtzugeben“, sagte er.
Hanka verstand es nicht, steckte die Mohnblüte aber in das Medaillon, das sie um den Hals trug, und trennte sich von da an nie mehr davon.
-> czy_powiedziec

= czy_powiedziec
Antek passte Jaromir ab, sobald sie allein waren.
„Ich hab dich vom Birnbaum aus gesehen“, sagte er leise. „Du hast allein am Ende vom Streifen gestanden und mit der Luft geredet, und die Luft über dir hat geflimmert wie über der Esse in der Schmiede.“ Er schluckte. „Wenn du’s den Großen erzählst, dann sag ich auch, was ich gesehen hab. Zu zweit glauben sie uns eher.“
# pytanie: Wird Jaromir es dem Vater sagen?
*   [{ostrzezenie_poludnicy:Dem Vater von der Warnung der Mittagsfrau erzählen.|Dem Vater von der Mittagsfrau erzählen.}]
    ~ powiedzial_ojcu_poludnica = true
    # tlo: kapliczki_noc
    { figurka_u_staruchy:
        Der Vater hörte den Sohn schweigend an. Dann stand er auf, nahm die Laterne vom Nagel und ging hinaus in die Nacht. Erst gegen Morgen kam er zurück. Die Mutter erzählte später, er sei alle Bildstöcke in Zapadlina abgegangen und habe an jedem gekniet, als bäte er um Vergebung. # pokaz: ojciec # dalej
    - else:
        Der Vater lachte nicht. Lange schwieg er, dann sagte er, morgen werde er die Leute zusammenrufen, und sie würden gemeinsam zu Urbaniak gehen. „Die Bildstöcke rührt er nicht an“, fügte er hinzu. „Und wenn er mir das ganze Sägewerk auf den Kopf stürzt.“ # pokaz: ojciec # dalej
    }
    -> rozdzial_szosty_ciag_dalszy
*   [Es für sich behalten.]
    # tlo: kapliczki_noc
    Jaromir erzählte niemandem davon – außer Antek, der es ohnehin wusste. Jede Nacht, wenn alle schon schliefen, schlichen sie sich zu zweit hinaus und gingen die nächsten Bildstöcke ab. Sie richteten schiefe Dächlein gerade und rissen das Unkraut aus, das sich um die Pfosten rankte. Manchmal verstummten mitten in der Arbeit die Grillen – zuerst am Wald, dann immer näher –, und dann standen die beiden reglos da, bis das Zirpen von Neuem einsetzte. Jaromir kam vor Tagesanbruch zurück, in kalten Schweiß gebadet, die Hosenbeine nass vom Tau, und konnte lange nicht einschlafen, weil er auf jedes Rascheln vor dem Fenster lauschte. # pokaz: jaromir # dalej
    -> rozdzial_szosty_ciag_dalszy


// Koniec rozdziału szóstego — dalej rozdział siódmy.
=== rozdzial_szosty_ciag_dalszy ===
# ozdobnik
~ zapiski += pan_lasu_3
_Ende des sechsten Kapitels._ # dalej
-> rozdzial_siodmy

=== function rany_sierpa()
{
- ciecie_ramie && ciecie_dlon && ciecie_policzek: ~ return "die Wunden an Schulter, Hand und Wange"
- ciecie_ramie && ciecie_dlon: ~ return "die Wunden an Schulter und Hand"
- ciecie_ramie: ~ return "die Wunden an Schulter und Wange"
- else: ~ return "die Wunden an Hand und Wange"
}

=== function miejsce_blizny()
{
- ciecie_ramie: ~ return "Schulter"
- ciecie_dlon: ~ return "Hand"
- else: ~ return "Wange"
}
