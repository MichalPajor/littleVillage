// ------------------------------------------------------------
//  Rozdział trzynasty — Wspólny sen (figurka). Przednówek i roztopy po
//  zimie ze strzygą (Jaromir ma dwadzieścia dwa lata, Marysia półtora roku).
//  Figurka z prologu wraca: [starucha] przywozi ją wnuczka Jagna, [handlarz]
//  leży na jarmarku, [bez zgliszcz] Józek wygrzebuje ją z popiołu po chacie
//  zielarki, [bagno] wypływa z mokradeł. Odrzucona — i tak wraca do chałupy.
//  Dzieci śnią ten sam sen, ogniki podchodzą pod płoty; zaufać Jagnie albo nie.
//  W Wielki Czwartek Józek idzie we śnie na kładkę, gdzie czeka topielec:
//  siekiera (rozorany bark), figurka rzucona w wodę albo latarnia (płonie
//  kapliczka przy kładce). Potem: piec (figurka nie płonie), kapliczka albo
//  Jagna. W maju syn Antka, Franek; w czerwcu paliki pod drogę Urbaniaka.
// ------------------------------------------------------------

=== rozdzial_trzynasty ===
# tlo: przednowek
# rozdzial: Dreizehntes Kapitel
# tytul: Der gemeinsame Traum
Bis Mitte März lag der Schnee auf den Feldern, grau und festgebacken, und in den Hütten aß man schon die Grütze ohne Schmalz und teilte die Kartoffeln aus der Miete handvollweise zu.{ polnoc_strzygi == na_twarz: Anteks Hand heilte erst in der Notzeit vor der Ernte – es blieben zwei Halbkreise kleiner, weißer Narben darauf zurück, die Jadwisia küsste, wenn sie glaubte, dass niemand es sah.} {trzy_noce == czuwanie_przy_kolysce:In die Hütte der Wójciks zog niemand mehr ein. Im Februar gab das morsche Dach eines Nachts unter dem Schnee nach, mit einem Krachen, das das halbe Dorf weckte.|Die Wójcikowa lag den ganzen Winter im Fieber, doch im März trat sie am Stock vor ihre Tür, und das Erste, was sie tat: Sie brachte Marysia eine Handvoll Dörräpfel.}
{ ekwipunek ? szczenie_psa:
    Marysia war anderthalb Jahre alt geworden. Sie lief durch die Stube, fiel hin, stand auf und lief weiter, und Wörter schnappte sie im Flug auf. Der fuchsrote Welpe war über den Winter zu einem langbeinigen jungen Hund herangewachsen, der ihr auf Schritt und Tritt folgte und jeden anknurrte, der gegen sie die Stimme erhob – sogar die Mutter. # pokaz: szczenie
- else:
    Marysia war anderthalb Jahre alt geworden. Sie lief durch die Stube, fiel hin, stand auf und lief weiter, und sie kannte schon mehr Wörter, als Hanka ihr hatte beibringen können.
}
Das Tauwetter kam mit einem Schlag. In zwei Tagen floss der Schnee von den Feldern, und das Moor hinter dem Steg schwoll so an, dass das Wasser bis an die Hofzäune trat. Drei Tage lang barst das Eis auf dem See mit lautem Knallen. In der vierten Nacht flammten über dem Moor zum ersten Mal seit Jahren kleine Lichter auf. # pokaz: ogniki # dalej
{ figurka_u_staruchy: -> figurka_od_jagny }
{ not przeszukal_zgliszcza: -> figurka_ze_zgliszcz }
{ figurka_w_bagnie: -> figurka_z_bagna }
-> figurka_na_jarmarku

= figurka_od_jagny
# tlo: jagna_izba
Mitte März kam eine fremde Frau auf einem Wagen nach Zapadlina – hager, im grauen Kopftuch, ein Auge von einem weißen Schleier überzogen. Sie fragte nach dem Enkel jenes Maciek, der hier vor Jahren eine Hütte gebaut hatte. Die Leute zeigten ihr den Weg zu Jaromirs Hütte.
„Ich heiße Jagna“, sagte sie, als sie sich auf die Bank gesetzt hatte. „Meine Großmutter wohnte in der Stadt, hinter dem Marktplatz. Vor ihrem Tod musste ich ihr versprechen, dass ich das hier zurückgebe.“
Sie nahm aus dem Korb ein Päckchen, in einen schwarzen Lappen gewickelt, und schlug es auf dem Tisch auseinander. Eine Holzfigur, an einer Seite angekohlt, eine Strähne grauen Haars um den Hals gewunden. {los_psa == oswojony && zona_wie:Jaromir hatte die Figur nie gesehen und erkannte sie dennoch sofort – nach dem, was Großmutter Marianna ihm einst erzählt hatte.|Jaromir hatte die Figur nie gesehen und nie von ihr gehört, und doch wurde ihm bei ihrem Anblick kalt, als hätte jemand die Tür zum Frost aufgestoßen.} # pokaz: figurka
„Großmutter hat sie auf dem Markt von deinem Großvater gekauft“, sagte Jagna leise, ohne den Blick zu heben. „Und sie hat damit etwas getan, wofür sie bis an ihr Lebensende bezahlt hat. Was genau, weiß ich nicht – im Fieber redete sie wirr von einer Puppe und von Wasser. Ich weiß nur, dass sie schlecht gestorben ist. Und dass das Letzte, was sie sagte, war: ‚Gib sie dorthin zurück, woher sie gekommen ist.‘“
# pytanie: Was wird Jaromir tun?
*   [Die Figur nehmen.]
    ~ ekwipunek += figurka
    Jaromir wickelte die Figur wieder in den Lappen und verwahrte sie in der Truhe unter dem Bett. Jagna atmete auf, als hätte man ihr einen Sack Steine vom Rücken genommen. Beim Abschied sagte sie, bis Pfingsten bleibe sie in Bukowiec bei ihrer Schwester und verkaufe auf dem Markt Kräuter. # dalej
*   [Sie mitsamt der Figur fortschicken.]
    ~ odrzucil_figurke = true
    „Nimm das mit“, sagte Jaromir. „Und komm nicht wieder.“
    Jagna sah ihn lange mit dem gesunden Auge an und wickelte die Figur ein. Von der Schwelle aus sagte sie nur noch, bis Pfingsten sei sie in Bukowiec bei der Schwester.
    ~ ekwipunek += figurka
    Doch als Hanka am Morgen die Tür öffnete, lag die Figur auf der Schwelle. Der Lappen war nass und stank nach Sumpf. Jaromir verwahrte die Figur in der Truhe, ehe Marysia sie zu sehen bekam. # pokaz: prog # dalej
-   -> wspolny_sen

= figurka_na_jarmarku
# tlo: jarmark
Mitte März fuhr Jaromir mit den Löffeln, die er den Winter über geschnitzt hatte, zum Jahrmarkt in die Stadt. Vor Mittag hatte er alle verkauft und schlenderte noch zwischen den Ständen umher, auf der Suche nach etwas für Marysia zum Kirchweihfest. Am letzten Stand, bei einem alten Trödler, lag zwischen gesprungenen Töpfen und rostigen Hufeisen eine Holzfigur – an einer Seite angekohlt, das Gesicht von fremden Fingern glattgegriffen. # pokaz: figurka
Jaromir nahm sie in die Hand. Das Holz war kalt und feucht, obwohl der Tag trocken war.
„Hübsch, was?“, meckerte der Trödler lachend. „Mein Großvater hat sie irgendeinem Bauern abgekauft, als er selbst noch jung war. Seitdem wollte sie keiner haben. Für dich um einen Groschen.“
# pytanie: Was wird Jaromir tun?
*   [Die Figur kaufen.]
    ~ ekwipunek += figurka
    Jaromir bezahlte, wickelte die Figur in ein Tuch und steckte sie sich unters Hemd. Den ganzen Heimweg spürte er sie am Herzen wie ein Stück Eis. Zu Hause legte er sie in die Truhe unter dem Bett. # dalej
*   [Sie zurücklegen und gehen.]
    ~ odrzucil_figurke = true
    ~ ekwipunek += figurka
    Jaromir legte die Figur auf den Tisch zurück und ging, ohne sich umzusehen. Doch als er am Abend vor der Hütte das Pferd ausspannte, lag die Figur hinten im Wagen, zwischen den Spänen – dort, wo am Morgen die Löffel gelegen hatten. Lange sah er sie an, bevor er sie in die Truhe unter dem Bett legte. # pokaz: woz # dalej
-   -> wspolny_sen

= figurka_ze_zgliszcz
# tlo: zgliszcza_kra
Mitte März gingen die Jungen aus dem Dorf an den See, um zuzusehen, wie das Eis abging. Unter ihnen war Józek, der jüngste Urenkel des alten Staś – sieben Jahre alt, rothaarig und neugierig auf alles wie eine Elster. Die Schollen rührten die alten, verkohlten Balken im Schilf an der Westseite des Sees auf, dort, wo einst die Hütte der Kräuterfrau gestanden hatte, und schoben sie an Land. Józek stocherte mit einem Stecken in der Asche, bis er etwas Hartes herausscharrte.
Er rannte damit zu Jaromir, denn Jaromir schnitzte das beste Spielzeug im Dorf, und der Junge wollte sich brüsten. Auf seiner Handfläche lag eine Holzfigur, an einer Seite angekohlt. Der Ruß, mit dem sie überzogen war, schwärzte die Finger, als wäre er frisch. # pokaz: figurka
# pytanie: Was wird Jaromir tun?
*   [Ihm die Figur abnehmen.]
    ~ ekwipunek += figurka
    „Gib sie mir“, sagte Jaromir. „Dafür schnitze ich dir ein Pferd mit Wagen.“
    Józek schmollte, willigte aber schließlich ein. Jaromir verwahrte die Figur in der Truhe unter dem Bett und schrubbte sich lange im Zuber die Hände, obwohl sie sauber waren. # dalej
*   [Sie ihm lassen.]
    ~ jozek_mial_figurke = true
    Jaromir gab dem Jungen die Figur zurück, und Józek lief damit nach Hause. Am nächsten Tag kam Józeks Mutter zu Jaromir, bleich, die Figur in die Schürze gewickelt. Józek hatte die ganze Nacht mit ihr in der Faust geschlafen und im Schlaf mit fremder Stimme geredet, und am Morgen war er mit nassen Haaren aufgewacht, obwohl ihn niemand gebadet hatte. # pokaz: matka
    „Nimm das“, sagte sie. „Du bist Macieks Enkel. Du weißt, was das ist.“
    ~ ekwipunek += figurka
    Jaromir verwahrte die Figur in der Truhe unter dem Bett. # dalej
-   -> wspolny_sen

= figurka_z_bagna
# tlo: kladka_naprawa
Mitte März, als das Wasser zu sinken begann, ging Jaromir mit Antek den Steg über dem Moor ausbessern, den das Hochwasser fortgerissen hatte. Er zog gerade einen alten Pfahl aus dem Schlamm, als er sah, dass etwas daran klebte – schwarz, voller Schlick. Er kratzte den Dreck mit dem Messer ab.
Eine Holzfigur, an einer Seite angekohlt. In all den Jahren hatte das Wasser den Ruß nicht von ihr abgewaschen. Jaromir erinnerte sich, was der Vater ihm als Kind von Großvater Maciek erzählt hatte und von der Figur, die dieser im ersten Frühjahr im Sumpf verloren hatte. # pokaz: figurka
# pytanie: Was wird Jaromir tun?
*   [Die Figur mitnehmen.]
    ~ ekwipunek += figurka
    Jaromir wickelte die Figur in einen Lappen und schob sie unters Hemd. Antek sah ihn finster von unten an, sagte aber nichts. Zu Hause verwahrte Jaromir sie in der Truhe unter dem Bett. # dalej
*   [Sie in den Sumpf zurückwerfen.]
    ~ odrzucil_figurke = true
    Jaromir holte aus und schleuderte die Figur, so weit er konnte, in ein schwarzes Moorauge zwischen den Grashöckern. Der Sumpf schluckte sie, ohne dass sich auch nur ein Ring auf dem Wasser zeigte. # pokaz: plusk
    ~ ekwipunek += figurka
    Doch als Hanka am Morgen die Tür öffnete, lag die Figur auf der Schwelle – nass, mit Entengrütze bedeckt, das Gesicht der Stube zugewandt. Jaromir verwahrte sie in der Truhe, ehe Marysia sie zu sehen bekam. # dalej
-   -> wspolny_sen

= wspolny_sen
# tlo: sen_kladka
~ zapiski += ogniki_2
{ not przeszukal_zgliszcza:Den ersten Traum hatte Józek.|Den ersten Traum hatte Józek, der jüngste Urenkel des alten Staś.} Nach ihm die Tochter des Müllers aus Bukowiec, dann die Zwillinge der Kowalczyks. Binnen einer Woche redeten die Mütter am Brunnen von nichts anderem mehr, denn jedes Kind träumte dasselbe: dass es nachts auf dem Steg über dem Moor stand, ringsum blinkten Lichter, und unter den Brettern, im schwarzen Wasser, drehte jemand Tontöpfe um, einen nach dem anderen, und schaute unter jeden. Und dass dieser Jemand am Ende den Kopf hob und fragte: „Wo ist meine Puppe?“ # pokaz: glowa
{ not odrzucil_figurke && not jozek_mial_figurke:
    Nach einigen Nächten suchte derselbe Traum Jaromir heim – als einzigen Erwachsenen im Dorf. Nur er hatte die Figur ja aus freien Stücken genommen. Vor Tagesanbruch fuhr er hoch, mit dem Rauschen von Wasser in den Ohren und mit nassen Füßen, obwohl er unter dem Federbett geschlafen hatte.
}
Marysia wachte jede Nacht weinend auf{ skarb_dla_corki: und schloss das Fäustchen um das Lederband mit {skarb_jaromira == muszelka:der Muschel|{skarb_jaromira == pioro:der Eichelhäherfeder|dem Nagel}}, das sie seit dem Winter um den Hals trug}. Sie zeigte mit dem Fingerchen zum Fenster und wiederholte Worte, die ihr niemand beigebracht hatte:
„Nasser Herr. Nasser Herr.“
Die Irrlichter über dem Moor brannten mit jeder Nacht näher. Zuerst nur hinter dem Steg, dann auf der Wiese, und schließlich standen sie im Röhricht gleich hinter den Zäunen – wie Leute, die darauf warten, dass jemand die Tür öffnet. # pokaz: ognie
{ figurka_u_staruchy:
    Am Sonntag kam Jagna zu Fuß aus Bukowiec, allein, und fragte gleich an der Schwelle, ob die Kinder im Dorf träumten.
- else:
    In derselben Woche kaufte Hanka auf dem Markt in Bukowiec Wermut bei einer fremden Kräuterfrau – hager, im grauen Kopftuch, ein Auge von einem weißen Schleier überzogen. Als die Fremde das Wechselgeld herausgab, packte sie Hanka plötzlich bei der Hand und roch an ihren Fingern.
    „Ich rieche Asche“, flüsterte sie. „Alte Asche, vom Wasser. Ihr habt sie im Haus, nicht wahr?“
    { przeszukal_zgliszcza && not figurka_w_bagnie:
        „Meine Großmutter wollte einmal so ein Ding einem Burschen auf dem Markt abkaufen“, fügte sie leiser hinzu. „Er hat es ihr nicht verkauft. Bis zu ihrem Tod wusste sie nicht, wem er es am Ende gegeben hat.“
    }
    Sie sagte, sie heiße Jagna und bleibe bis Pfingsten in Bukowiec. Hanka brachte sie noch am selben Nachmittag in die Hütte, ohne ihren Mann nach seiner Meinung zu fragen.
}
{figurka_u_staruchy:„Erzähl ihr von den Träumen“, sagte seine Frau, ehe Jaromir den Mund aufmachen konnte. „Sie hat es selbst gebracht, sie soll wissen, was daraus gewachsen ist.“|„Wenn du etwas versteckt hast, verheimliche es nicht vor ihr“, sagte seine Frau, ehe Jaromir den Mund aufmachen konnte. „{odrzucil_figurke && figurka_w_bagnie:Ich habe gesehen, was auf unsere Schwelle zurückgekommen ist.“|{jozek_mial_figurke:Ich habe gesehen, was Józeks Mutter gebracht hat.“|Ich habe gesehen, wie du unters Bett schaust.“}}}
# pytanie: Was wird Jaromir tun?
*   [{figurka_u_staruchy:Jagna von den Träumen erzählen.|Jagna die Figur zeigen und von den Träumen erzählen.}]
    ~ zaufal_jagnie = true
    { figurka_u_staruchy:
        // Jagna przywiozła figurkę i wiedziała tylko, że babka bredziła o lalce i o wodzie — dopiero sny dzieci składają jej to w całość.
        Jaromir erzählte ihr vom Steg, von den Töpfen, die auf dem Grund des Moores umgedreht wurden, und von der Frage, die jedes Kind im Traum gehört hatte. Beim Wort „Puppe“ wurde Jagna bleich.
        „Großmutter sprach im Fieber nur von einer Puppe und von Wasser. Ich dachte, sie redet irre“, sagte sie leise. „Die alten Kräuterfrauen haben von solchen Dingen erzählt: Man schnitzt so etwas aus einer Wurzel, die man aus dem Sumpf gezogen hat, und gibt ihm den Namen dessen, der dort haust. Wer eine solche Puppe hat, dem geht er nach. Lange hat er geschlafen, und jetzt ist sie an den See zurückgekehrt und ruft ihn. Und die Kinder hören das – sie haben feinere Ohren als wir.“
    - else:
        Jagna drehte die Figur lange in den Fingern, dicht ans Fenster gerückt, denn auch ihr gesundes Auge war schwach.
        „Das ist eine Puppe“, sagte sie schließlich. „Großmutter hat mir von solchen erzählt. Die Kräuterfrau vom See hat sie aus einer Wurzel geschnitzt, die sie aus dem Sumpf gezogen hatte, und ihr den Namen dessen gegeben, der dort haust. Wer die Puppe hat, dem geht er nach. Solange sie {przeszukal_zgliszcza && not figurka_w_bagnie:weit weg|unberührt} lag, schlief er. Jetzt ist sie zurück – und ruft ihn. Und die Kinder hören das – sie haben feinere Ohren als wir.“
        Sie wickelte die Figur in den Lappen und gab sie Jaromir zurück.
    }
    „Feuer nimmt sie nicht, sie war schon einmal darin. Zum Schweigen bringt sie nur geweihte Erde. {odrzucil_figurke:Oder…“ Sie brach ab und schüttelte den Kopf. „Nein. Auf mich hört sie nicht mehr. Ihr habt sie fortgestoßen, und sie ist trotzdem zu euch zurückgekommen. Jetzt gehört sie euch.“|{figurka_u_staruchy:Großmutter hat mir aufgetragen, sie dorthin zurückzugeben, woher sie gekommen ist, und das habe ich getan. Zurücknehmen werde ich sie nicht.“|Oder…“ Sie zögerte. „Oder gebt sie mir. Ich bringe sie so weit fort, dass er sie nicht mehr hört.“}} # dalej
*   [Ihr nichts sagen.]
    {figurka_u_staruchy:„Die Kinder schlafen ruhig“, log Jaromir.|„Ich weiß nicht, wovon du redest“, antwortete Jaromir.}
    Jagna nickte, als hätte sie genau das erwartet.
    „Wenn die Lichter bis an die Schwelle kommen“, sagte sie, „dann kommt zu mir. Bis Pfingsten bin ich in Bukowiec.“
    Hanka begleitete sie bis hinter den Zaun und flüsterte dort lange mit ihr. Bis zum Abend sprach sie mit Jaromir kein einziges Wort. # dalej
-   -> wielki_czwartek

= wielki_czwartek
# tlo: noc_kladka
{ not odrzucil_figurke && not jozek_mial_figurke:
    In der Gründonnerstagsnacht kam der Traum zu Jaromir wie jede Nacht – nur stand diesmal auf dem Steg, zwischen den Irrlichtern, Józek. Jaromir sprang vom Lager auf, ehe er begriff, dass er nicht mehr schlief. Er packte die Axt{ siekiera_dziadka: des Großvaters}, die Laterne und aus der Truhe das Päckchen mit der Figur. Er brauchte niemanden zu fragen, wohin er laufen musste. # pokaz: jozek
    Hinter den Hofzäunen, im Röhricht, blinkten die Lichter – und zwischen ihnen ging eine kleine, helle Gestalt auf den Steg zu, barfuß, die Arme vor sich ausgestreckt. Jaromir erreichte das Ufer in dem Augenblick, als der Junge mitten auf dem Steg stehen blieb. Das Wasser unter den Brettern begann zu brodeln, und daraus schob sich eine graue Hand. Sie schloss sich um Józeks Knöchel.
- else:
    In der Gründonnerstagsnacht weckte Jaromir ein Schrei auf der Straße: Józeks Mutter lief mit einer Laterne von Zaun zu Zaun und rief nach ihrem Sohn, dessen Lager sie leer gefunden hatte. Als Jaromir aus dem Flur hinausschaute, stand auf der Schwelle ein bleiches Lichtlein, so nah, dass es die Astlöcher in den Brettern beschien – und schwebte ins Dunkel davon, sobald er es ansah. Er packte die Axt{ siekiera_dziadka: des Großvaters}, die Laterne und das Päckchen mit der Figur – er fürchtete, sie im Haus zu lassen, bei Marysia. Zuerst liefen er und Józeks Mutter an den See, und erst von dort sah Jaromir, dass sich die Lichter an einer Stelle zusammengedrängt hatten. # pokaz: jozek
    Als er hinkam, war es fast zu spät. Die graue Hand hatte den Jungen schon hinabgezogen – Józek hing bis zum Gürtel im schwarzen Wasser und hielt sich im Schlaf mit einer Hand am Steg fest.
}
{ figurka_u_staruchy:
    Das Wesen tauchte langsam auf – riesig, gebeugt, mit Haaren wie nasser Tang und Augen, die grünlich glommen wie morsches Holz. Am Arm trug es eine alte, tiefe Narbe – die Spur der Axt, mit der Großvater Maciek es vor Jahren getroffen hatte. Józek schrie nicht. Er schlief. # pokaz: stwor, blizna
- else:
    Das Wesen tauchte langsam auf – riesig, gebeugt, mit Haaren wie nasser Tang und Augen, die grünlich glommen wie morsches Holz. Józek schrie nicht. Er schlief. # pokaz: stwor
}
{ oblawa_wilk == wydal_wilka:
    Hinter dem Moor heulte ein Wolf – heiser, mit abgerissenem Ende, genau wie in der Nacht nach der Treibjagd. Das Wesen wandte den Schädel in jene Richtung. Über den Damm, zwischen den Erlen, glitt etwas Weißes, tief und ungleichmäßig, eine Seite schonend – und verschwand im Dunkel.
- else:
    Hinter dem Moor heulte ein Wolf – lang gezogen und rein, dass die Flämmchen im Röhricht zitterten. Das Wesen wandte den Schädel in jene Richtung. Über den Damm, zwischen den Erlen, huschte etwas Weißes, schneller als ein Hund – und verschwand im Dunkel.
}
Jaromir wusste nicht, wem diese Stimme eine Warnung war – dem Wesen oder ihm.
~ zapiski += stwor_3
# pytanie: Was wird Jaromir tun?
*   [Das Wesen mit der Axt schlagen.]
    ~ noc_na_kladce = siekiera_na_kladce
    Jaromir sprang auf den Steg und hieb mit aller Kraft zu. Die Klinge fuhr tief in den grauen Arm{ figurka_u_staruchy:, dicht neben der alten Narbe}. Das Wesen brüllte auf – lang und kehlig, dass die Bretter erbebten –, ließ den Jungen los und riss Jaromir zur Vergeltung mit den Krallen die Schulter auf. Dann versank es im Wasser, als hätte jemand es hinabgezogen. # pokaz: siekiera
    Jaromir riss Józek in die Arme und trug ihn ans Ufer. Der Junge wachte erst in der Hütte auf, am Ofen, und erinnerte sich an nichts. Die Wunde an Jaromirs Schulter heilte erst zur Ernte. # dalej
    -> co_z_figurka
*   { ekwipunek ? figurka } [Ihm die Figur zuwerfen.]
    ~ noc_na_kladce = figurka_dla_stwora
    ~ los_figurki = figurka_u_stwora
    Jaromir schlug den Lappen auseinander und schleuderte die Figur ins Wasser, dicht neben das Wesen.
    ~ ekwipunek -= figurka
    Im selben Augenblick ließ die Hand den Knöchel des Jungen los. Das Wesen packte die Figur, drückte sie an die Brust wie eine Mutter ihr Kind und glitt glatt wie ein Otter ins schwarze Wasser. Die Lichter über dem Moor erloschen alle zugleich, als hätte jemand sie ausgeblasen. # pokaz: figurka
    Gleich darauf sog sich das Wasser unter den Brettern in die Tiefe, mit einem Stöhnen wie berstendes Eis, und riss die Pfähle mit sich. Jaromir konnte gerade noch mit Józek ans Ufer springen, ehe der Steg – so alt wie das Dorf – in der Mitte einknickte und unterging. Der Junge schlief weiter, ruhig, die Wange an seiner Schulter. # dalej
    -> paliki_pod_droge
*   [Die Laterne aufs Wasser schmettern.]
    ~ noc_na_kladce = latarnia_na_wodzie
    Jaromir schleuderte die Laterne dem Wesen vor die Füße. Das Glas zersprang, das Öl breitete sich über das Wasser aus und schlug in Flammen auf. Das Wesen ließ den Jungen los und wich heulend ins Dunkel zurück, und Jaromir packte Józek, ehe das schwarze Wasser ihn hinabziehen konnte. # pokaz: latarnia
    Doch das Feuer fraß sich durch das trockene, vorjährige Schilf wie durch Pulver. Bis die Bauern mit Eimern herbeigelaufen waren, war das halbe Röhricht abgebrannt und mit ihm der Bildstock am Steg – einer der ältesten im Dorf. Am Morgen waren von ihm nur schwarze Stümpfe übrig und die Heiligenfigur mit angekohltem Gesicht. # pokaz: pozar # dalej
    -> co_z_figurka

= co_z_figurka
# tlo: skrzynia_izba
Nach Ostern saß Jaromir abends lange über der Truhe. Die Lichter über dem Moor brannten noch immer, wenn auch weiter von den Zäunen entfernt als zuvor, und Marysia wachte nachts weiterhin auf und zeigte zum Fenster.
# pytanie: Was wird er mit der Figur tun?
*   [Die Figur in den Ofen werfen.]
    ~ los_figurki = figurka_w_skrzyni
    Die ganze Nacht lag die Figur in der Glut und fing kein Feuer – sie zischte nur wie nasses Holz, und aus dem Ofen kam Sumpfgestank. Am Morgen holte Jaromir sie mit dem Schürhaken heraus. Sie war genauso angekohlt wie vorher, kein bisschen mehr. Im Flur standen alle Eimer voll trüben, moorigen Wassers, obwohl Hanka am Abend klares aus dem Brunnen hineingegossen hatte. # pokaz: piec
    Jaromir schloss die Figur in die Truhe ein, schlang eine Kette um die Truhe und sprach nicht mehr davon. # pokaz: lancuch # dalej
*   [Sie unter dem Bildstock vergraben.]
    ~ los_figurki = figurka_pod_kapliczka
    ~ ekwipunek -= figurka
    Nach Einbruch der Dunkelheit ging Jaromir mit dem Spaten zum Bildstock {noc_na_kladce == latarnia_na_wodzie:am Weg nach Bukowiec, hinter dem Bach|am Steg}. Er grub eine Elle tief, wickelte die Figur in sauberes Leinen, schüttete sie mit Erde zu und trat den Boden mit den Füßen fest. In derselben Nacht erloschen die Lichter über dem Moor, und die Kinder hörten auf zu träumen. # pokaz: lopata
    Niemandem sagte er, wo er sie vergraben hatte. Nicht einmal Hanka. # dalej
*   { zaufal_jagnie } { not odrzucil_figurke } { not figurka_u_staruchy } [Sie Jagna geben.]
    ~ los_figurki = figurka_u_jagny
    ~ ekwipunek -= figurka
    Jaromir trug das Päckchen nach Bukowiec. Jagna nahm es mit beiden Händen entgegen, behutsam, wie etwas sehr Zerbrechliches, und versteckte es sogleich zuunterst im Korb, unter Büscheln getrockneter Kräuter. # pokaz: kosz
    „Hab keine Angst“, sagte sie. „Sie kommt nicht mehr zurück.“
    Am nächsten Tag reiste sie ab. In jener Nacht erloschen die Lichter über dem Moor, und die Kinder hörten auf zu träumen. # dalej
-   -> paliki_pod_droge

= paliki_pod_droge
# tlo: wiosna_paliki
~ zapiski += zielarka_3
Im Mai schenkte Jadwisia Antek einen Sohn. Antek bestand darauf, dass der Junge Franek heißen sollte, und niemand wagte ihm zu widersprechen. Jaromir bat er, Pate zu stehen. # pokaz: antek
{ los_figurki:
- figurka_u_stwora: Die Lichter über dem Moor flammten kein einziges Mal mehr auf. Józek erinnerte sich nicht an jene Nacht. Den Steg baute niemand wieder auf: Die Pfähle, die die Bauern in den Schlamm trieben, lagen am Morgen herausgerissen am Ufer, und so musste man fortan, um zu den hinteren Wiesen zu gelangen, den Sumpf am Saum des Waldes umgehen. Als der alte Staś hörte, was Jaromir getan hatte, bekreuzigte er sich und warf in den Mooraugen dort nie wieder die Angel aus.
- figurka_w_skrzyni: Die Träume kamen immer seltener, hörten aber nicht ganz auf. Manchmal, in mondlosen Nächten, setzte sich Marysia auf ihrem Lager auf und starrte auf die Truhe unter dem Bett, bis Hanka sie wieder hinlegte.
- else: Die Kinder im Dorf vergaßen den Traum schneller, als die Mütter aufhören konnten, darüber zu reden. Marysia schlief wieder die Nächte durch.
}
{ noc_na_kladce == siekiera_na_kladce:
    Auf Jaromirs Schulter blieb eine dicke, rosige Narbe zurück{ figurka_u_staruchy && los_psa == oswojony: – an derselben Stelle, an der vor Jahren die Krallen des Wesens den Großvater getroffen hatten}.
}
{ noc_na_kladce == latarnia_na_wodzie:
    An der Stelle des abgebrannten Bildstocks schlugen die Bauern ein Birkenkreuz in die Erde. Einen neuen errichtete niemand – es fehlte das Geld. # pokaz: krzyz
}
Ende Mai suchte Hanka Marysia auf dem ganzen Hof. Sie fand sie erst hinter der Scheune, bis zu den Achseln im Roggen. Die Kleine stand regungslos da, das Köpfchen schief gelegt, wie jemand, der lauscht.
„Mama singt“, sagte sie und zeigte mit dem Händchen ins Korn, von der Hütte weg.
{ glos_w_lesie:
    Als Hanka es am Abend erzählte, musste Jaromir an jenen Heiligabend vor Jahren denken und an die Stimme der Mutter {figurka_u_staruchy:aus dem Nebel über dem Feld|zwischen den Bäumen hervor}{glos_w_lesie == odpowiedzial: – und dann an ein Lachen, das ganz und gar nicht ihres war|{glos_w_lesie == kozuch: – und dann an schwere Schritte, die dicht an ihm vorübergingen| – und daran, wie die Stimme ihn über den Schnee gejagt hatte, bis an den Zaun von Staś’ Leuten}}. Er sagte nichts. Nur stand er in dieser Nacht zweimal auf, um nachzusehen, ob Marysia schlief.
}
Anfang Juni begannen Urbaniaks Leute, Pflöcke in die Erde zu schlagen: vom Sägewerk über die Wiesen und das Moor geradewegs bis an den Waldrand. Herr Urbaniak wollte einen Weg in den Wald haben. Nach einer Woche trieben die vordersten Pflöcke, nahe bei den ersten Bäumen, grüne Schösslinge – aus trockenem, entrindetem Holz. # pokaz: paliki # dalej
-> rozdzial_trzynasty_ciag_dalszy


// Koniec rozdziału trzynastego — dalej rozdział czternasty.
=== rozdzial_trzynasty_ciag_dalszy ===
# ozdobnik
_Ende des dreizehnten Kapitels._ # dalej
-> rozdzial_czternasty
