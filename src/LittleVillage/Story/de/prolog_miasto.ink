// ------------------------------------------------------------
//  Prolog, część druga – miasto, rodzina, powrót do Zapadliny
//  i zakończenie prologu (zależy od tego, komu Maciek sprzedał figurkę).
// ------------------------------------------------------------

=== miasto ===
# tlo: gosciniec
# rozdzial: Prolog
# tytul: Die Stadt
Die Landstraße zog sich durch Felder und Gehölze, mal bergauf, mal bergab. Bauernwagen, die Korn zum Markt brachten, zogen an ihm vorüber, und einmal rasselte eine Britschka vorbei, aus der ihm jemand zurief, er solle aus dem Weg gehen.{ los_psa == oswojony: Der Hund hielt sich dicht an seinem Bein und knurrte bei jedem Rattern der Räder.} Die Sonne stand schon hoch, als hinter einem Hügel ein Kirchturm auftauchte und darunter die Dächer der Stadt – rot, grau und bemoost, dicht gedrängt wie Körner in der Ähre. # dalej
-> rynek

= rynek
# tlo: rynek
Der Marktplatz summte wie ein Bienenstock. Zwischen den Ständen drängten sich Bauern in groben Tuchröcken, Marktweiber priesen Eier und Butter an, und vom Rathaus her drang das Meckern von Ziegen. Es roch nach Brot, Pferdemist und Räucherfisch.{ ekwipunek ? figurka: Maciek tastete in der Tasche nach der hölzernen Gestalt. Zuerst musste sie verkauft werden – erst danach konnte er ans Essen denken.}
{ ekwipunek ? figurka: -> kramarze | -> zakupy }

= kramarze
Der Erste war ein Krämer mit Heiligenbildern und Rosenkränzen. Lange betrachtete er die Figur gegen das Licht, schließlich verzog er das Gesicht und gab sie hastig zurück, als würde sie ihm die Finger verbrennen.
„Das ist kein Heiliger“, brummte er und bekreuzigte sich verstohlen. „So etwas nehme ich nicht unter mein Dach.“
Der Löffel- und Schüsselschnitzer rührte sie nicht einmal an. Das Holz sei morsch, angekohlt und zu nichts zu gebrauchen, befand er, höchstens zum Anfeuern.
Erst ein Trödler mit einem Karren voller Töpfe und zerrissener Stiefel drehte sie länger zwischen den Fingern.
„Zwei Groschen“, sagte er endlich. „Mehr gibt dir keiner dafür.“
So viel kostete ein Laib Brot. Ein einziger. Maciek versprach, es sich noch zu überlegen, und ging hinüber zum ärmeren Ende des Marktes, wo statt Ständen Tücher auf der Erde ausgebreitet lagen, mit Zwiebeln, Lumpen und rostigem Eisenkram darauf. # dalej
-> starucha

= starucha
# tlo: zaulek
Plötzlich hielt ihn jemand am Ärmel fest. Die Hand war klein und trocken und roch nach Minze und Rauch.
Vor ihm stand eine kleine, alte Frau in einer dunklen Kapuze, auf einen Stab gestützt, einen Korb mit getrockneten Kräutern über dem Arm. Ihr Umhang war geflickt, aber sauber, und unter der Kapuze schimmerte weiß der Saum einer Haube. Ein Auge war von einem milchigen Schleier überzogen, das andere – schwarz und wach – blickte unverwandt auf seine Tasche. # pokaz: starucha
„Was trägst du da bei dir, Söhnchen?“, flüsterte sie. „Ich rieche Asche. Alte Asche, vom Wasser her.“
{ los_psa == oswojony:
    Der Hund beschnupperte ihren Korb, nieste von den Kräutern, dann sträubte er das Fell und knurrte tief – nicht sie an, sondern Macieks Tasche. # pokaz: pies
}
Maciek wollte weggehen, aber sie ließ den Ärmel nicht los.
„Das gehört nicht dir. Du hast es dort ausgegraben, wo man nicht hätte graben sollen“, sagte sie leise, damit niemand ringsum es hörte. „Das Ding ruft, Söhnchen. Solange du es trägst, weiß das, was im Wasser wohnt, wo es dich suchen muss. Dich und die, die du liebst. Verbrenn es nicht und wirf es nicht ins Wasser, denn es kommt zurück. Jemand muss wissen, was damit zu tun ist – und ich weiß es.“
Erst jetzt ließ sie ihn los.
„Ich nehme es dir ab. Aber nicht umsonst, denn was umsonst gegeben wird, kehrt zum Geber zurück. Ich gebe dir zehn Groschen. Fünfmal so viel, wie der mit dem Karren dir geben wollte.“
Sie musste irgendwo in der Nähe gestanden haben, als er mit dem Trödler feilschte. Nur erinnerte er sich nicht, sie dort gesehen zu haben.
# pytanie: Wem wird Maciek die Figur verkaufen?
*   [Der Alten – sie versteht sich auf solche Dinge, und mit zehn Groschen kommt die Familie bis zur ersten Ernte durch.]
    ~ figurka_u_staruchy = true
    ~ ekwipunek -= figurka
    # tlo: rynek
    Maciek nahm die Figur heraus und legte sie auf seine ausgestreckte Handfläche. Die Alte griff nicht sofort danach. Zuerst wickelte sie die Figur in ein Leinenläppchen, und erst so, durch das Tuch, nahm sie sie in die Hand. Die Münzen holte sie aus einem geknoteten Beutelchen am Gürtel.
    „Jetzt ist das meine Sache“, sagte sie. „Geh mit Gott, Söhnchen. Und schau ihr nicht nach.“
    Sie wandte sich um und verschwand in der Menge, ehe er etwas erwidern konnte.{ los_psa == oswojony: Der Hund hörte auf zu knurren, kaum dass die Tasche leicht geworden war.}
    -> zakupy
*   [Dem Trödler für ein paar armselige Groschen – besser, sie landet zwischen den Töpfen, bei jemandem, der nicht weiß, was sie ist.]
    ~ ekwipunek -= figurka
    # tlo: rynek
    „Danke, Mütterchen, aber das ist nicht nötig“, antwortete Maciek und trat einen Schritt zurück.
    Die Alte sah ihn lange mit ihrem gesunden Auge an. „Wie du willst“, sagte sie nur und kehrte zu ihren Kräutern zurück.
    Der Trödler zuckte die Achseln, warf die Figur zwischen die Töpfe und zählte zwei Groschen ab. „Hab ja gesagt, mehr gibt keiner.“{ los_psa == oswojony: Der Hund hörte erst auf zu knurren, als die Figur unter einem Haufen Scherben verschwunden war.}
    -> zakupy

= zakupy
~ ekwipunek += (zapasy, nasiona)
{
- figurka_u_staruchy: Für die Münzen der Alten und den Rest seiner Kupferstücke kaufte Maciek zwei Laibe Brot, einen Sack Grütze, Salz, ein Stück Speck, Gemüsesamen und sogar einen Korb Saatkartoffeln. Das Bündel drückte ihm auf den Rücken, aber es war die angenehmste Last seit Langem.
- przeszukal_zgliszcza && not figurka_w_bagnie: Für die letzten Kupferstücke und die zwei Groschen des Trödlers kaufte Maciek einen Laib Brot, eine Handvoll Salz, ein Säckchen Grütze und ein wenig Gemüsesamen. Nicht viel, aber für ein paar Tage würde es reichen.
- else: Für die letzten Kupferstücke – was ihm nach der Axt geblieben war – kaufte Maciek einen Laib Brot, eine Handvoll Salz, ein Säckchen Grütze und Samen von allerlei Gemüse.
}
Es war Frühling, mit der Aussaat durfte man also nicht säumen.
Am Stadtbrunnen aß er die erste Scheibe Brot seit Wochen. Sie war weich und noch warm. Er musste sich beherrschen, um nicht alles auf einmal zu verschlingen.{ los_psa == oswojony: Die zweite gab er dem Hund.}
Dann machte er sich auf, aus der Stadt hinaus zum Vorwerk, wo er vier Jahre lang auf fremdem Feld gearbeitet hatte und wo seine Frau mit dem kleinen Sohn auf ihn wartete. # dalej
-> rodzina


// ------------------------------------------------------------
//  Rodzina – spotkanie z żoną i synem w Czworakach.
// ------------------------------------------------------------
=== rodzina ===
# tlo: czworaki
# rozdzial: Prolog
# tytul: Die Familie
Das Gesindehaus erreichte er, als die Sonne sich schon nach Westen neigte. Das lange, niedrige Gebäude mit dem schiefen Schornstein sah genauso aus wie an dem Tag, an dem er von hier fortgegangen war. Vor der Schwelle malte ein kleiner Junge mit einem Stöckchen Zeichen in den Sand. Er hob den Kopf, sah den fremden, abgemagerten Mann an – und erkannte ihn für einen Herzschlag nicht. # pokaz: dziecko
„Dobrosław“, sagte Maciek leise.
Der Kleine sprang auf und lief schreiend ins Haus. Fast sogleich stand Marianna in der Tür. Sie wischte sich die Hände an der Schürze ab – und erstarrte, als sie ihren Mann sah. # pokaz: marianna
Dann fiel sie ihm so heftig um den Hals, dass er ins Wanken geriet. Sie weinte an seiner Schulter, und er strich ihr übers Haar und brachte kein einziges Wort heraus. Dobrosław umklammerte sein Bein und wollte es nicht mehr loslassen.
„Jesus, Maciek“, flüsterte sie schließlich und trat zurück, um ihn anzusehen. Sie berührte die eingefallenen Wangen, die vorstehenden Schlüsselbeine. „Von dir ist ja nur noch die Hälfte übrig, verglichen mit damals, als du fortgingst. Was hast du dort gegessen? Baumrinde?“
Er lachte, obwohl ihm Tränen in den Augen standen.
{ los_psa == oswojony:
    Der Hund stand abseits, unsicher, bis Dobrosław ihm die Hand hinstreckte. Bald ließ er sich hinter dem Ohr kraulen, und der Kleine quietschte vor Freude. # pokaz: pies
}
Am Abend, über einer Schüssel Grütze, erzählte Maciek. Von der Hütte – von den Wänden aus Balken, die er selbst behauen hatte, vom Schilfdach, von der Schwelle, auf der er nach der Arbeit zu sitzen pflegte. Von dem Land, von dem sie so viel haben würden, wie sie bestellen konnten.
„Morgen bei Tagesanbruch brechen wir auf“, verkündete er. „Wir fangen alles von vorn an. Auf eigenem Grund.“
Marianna hörte zu und lächelte vor sich hin. Doch als der Sohn eingeschlafen war, rückte sie näher und sah ihrem Mann ins Gesicht.
„Und jetzt sag mir die Wahrheit. Was ist dort geschehen? Ich sehe doch, dass dich etwas quält.“
# pytanie: Wird Maciek seiner Frau von jener Nacht erzählen?
*   [Ja – ihr von dem Wesen erzählen, von der Legende und von der Stimme aus den Sümpfen. Sie muss wissen, wohin sie geht.]
    ~ zona_wie = true
    Er verschwieg nichts. Er erzählte vom Heulen im Dickicht, von der Stille, die ihn geweckt hatte, von der Gestalt, die aus dem Nebel getreten war. Von der verbrannten Kräuterfrau und ihrem Fluch. Von dem Sumpf, der ihn mit Mariannas Stimme gerufen hatte.{ figurka_u_staruchy: Von der angekohlten Figur aus der Asche, die er an diesem Tag auf dem Markt einer alten Frau mit Kapuze verkauft hatte.}
    Marianna hörte schweigend zu und wurde mit jedem Satz blasser. Als er geendet hatte, sah sie lange in das dunkle Fenster.
    „Gehen wir dorthin zurück?“, fragte sie schließlich leise.
    „Wir gehen zurück. Dort ist unser Zuhause.“
    Sie nickte. Mehr sagte sie nicht, aber in dieser Nacht tat sie kein Auge zu – er hörte es an ihrem Atem. # dalej
    -> powrot
*   [Nein – sie mit ein paar Worten abspeisen. Wozu ihr Angst machen, wenn die Hütte steht und das, was war, vorbei ist.]
    „Nichts ist geschehen“, log er. „Schwere Arbeit und wenig zu essen. Das ist alles.“
    Marianna sah ihn noch eine Weile an, als warte sie auf den Rest. Dann seufzte sie und legte ihm den Kopf an die Schulter.
    In dieser Nacht konnte er lange nicht einschlafen. Irgendwann würde er es ihr sagen, dachte er. Irgendwann, wenn alles ins Lot gekommen war. # dalej
    -> powrot


// ------------------------------------------------------------
//  Powrót do Zapadliny z rodziną.
// ------------------------------------------------------------
=== powrot ===
# tlo: sciezka_rodzina
# rozdzial: Prolog
# tytul: Die Heimkehr
Sie brachen bei Tagesanbruch auf. Marianna trug ihre Habe in ein Tuch geknotet, Maciek das Bündel mit dem Essen und, als der Kleine vom Marschieren müde wurde, auch ihn, huckepack.
{ los_psa == oswojony:
    Der Hund lief vom einen zum anderen, als passte er auf, dass keiner zurückblieb. # pokaz: pies
}
Es war schon weit über Mittag, als sie den Buchenkamm erreichten. Unten lag Zapadlina.{ chcial_odejsc: An derselben Stelle hatte Maciek vor ein paar Tagen mit dem Bündel auf der Schulter gestanden und für immer fortgehen wollen. Jetzt schlief auf seinem Rücken sein Sohn.}
Auf dem Kamm hielt Maciek inne und sah seine Frau an.
„Jetzt pass auf“, sagte er. „Geh dicht hinter mir, Schritt für Schritt. Verlass den Pfad nicht, um nichts in der Welt. Schau nicht ins schwarze Wasser. Und hör nicht auf die Stimmen aus den Sümpfen. Was du auch hörst – antworte nicht und dreh dich nicht um.“
{ zona_wie: Marianna {chcial_odejsc:legte die Hand auf den Rücken des schlafenden Sohnes|nahm den Sohn bei der Hand} und nickte. Sie wusste, wovon er sprach. | Marianna zog die Brauen hoch, als wollte sie lachen, aber etwas in seinem Gesicht hielt sie zurück. Sie nickte wortlos. }
Sie gingen langsam, im Gänsemarsch. Nebel kroch tief über das Flutwasser, und irgendwo weit weg, im Röhricht, plätscherte leise etwas. Auf halbem Weg hörte er hinter sich, wie Marianna jäh nach Luft schnappte. Er sah sich nicht um. Erst als sie auf trockenen Boden traten, fragte er, was sie vernommen habe.
„Nichts“, antwortete sie schnell. Zu schnell. # dalej
-> nowy_dom

= nowy_dom
{ chata_macka:
    - przy_lesie: # tlo: chata_las
    - przy_mokradlach: # tlo: chata_mokradla
    - else: # tlo: chata_jezioro
}
Die Hütte stand dort, wo Maciek sie zurückgelassen hatte. {chata_macka == przy_lesie:Am Waldrand, im Schatten der Fichten,}{chata_macka == przy_mokradlach:Auf der Wiese am Moor, auf ihrem steinernen Sockel,}{chata_macka == nad_jeziorem:Am See, zwischen rauschendem Schilf,} mit dem Dach, das er selbst Garbe um Garbe gedeckt hatte. # pokaz: dach
Marianna blieb vor der Schwelle stehen und sagte lange nichts. Dann ging sie hinein, fuhr mit der Hand über die Wand, roch am Harz und strahlte wie ein kleines Kind, das das Gesicht von Vater oder Mutter erblickt. # pokaz: rodzina
„Unsere“, sagte sie. „Wirklich unsere.“
Dobrosław entdeckte bald die losen Bretter in der Ecke der Stube. Maciek schob sie beiseite und zeigte ihm eine in die Erde gegrabene Grube – tief genug, um Kartoffeln und Grütze kühl zu lagern.
„Ein Keller“, verkündete er stolz. „Für die Vorräte. Aber steig da nicht hinein, ohne zu fragen.“
Der Kleine sprang natürlich sofort hinunter und kauerte sich so zusammen, dass man ihn nicht mehr sah. Alle drei lachten.
{ ekwipunek ? krzesiwo: An diesem Abend loderte vor der neuen Hütte ein Feuer | An diesem Abend aßen sie ihr Nachtmahl auf der Schwelle der neuen Hütte } und Maciek dachte, dass sich all das gelohnt hatte. # dalej
{ figurka_u_staruchy: -> czary | -> lata_spokoju }


// ------------------------------------------------------------
//  Zakończenie A – figurka u staruchy: czary i nocny napad.
// ------------------------------------------------------------
=== czary ===
# tlo: czary
# rozdzial: Prolog
# tytul: Eine Kerze
In derselben Nacht, weit von hier, brannte in einer engen Stube hinter dem städtischen Marktplatz eine einzige Kerze.
Die Alte streifte die Kapuze zurück. Dünnes graues Haar fiel ihr über den Rücken. Auf dem Tisch vor ihr stand eine Schüssel mit schwarzem, trübem Wasser, und daneben – die angekohlte Figur, aus dem Leinenläppchen gewickelt.
Die Frau stach sich mit einer Nadel in den Finger und ließ drei Blutstropfen auf das Holz fallen. Dann tauchte sie die Figur in die Schüssel und begann zu murmeln – tief, eintönig, in einer Sprache, die in der Stadt niemand verstanden hätte. Die Kerzenflamme wurde kleiner und neigte sich, obwohl in der Stube kein Luftzug ging.
„Lange habe ich gewartet, Mutter“, flüsterte sie. „Aber endlich ist jemand gekommen. Und hat dich mir selbst gebracht.“
Das Wasser blubberte, als atme jemand tief darin. Aus dem Murmeln schälten sich Worte, die sie immer lauter sprach:
„Die Knochen eurer Kinder sollen zerbrochen und ihr Blut getrunken werden…“
Die Alte beugte sich tiefer über die Schüssel. „Geh. Du kennst den Weg. Die Hütte {chata_macka == przy_lesie:am Waldrand}{chata_macka == przy_mokradlach:am Moor}{chata_macka == nad_jeziorem:am See}. Ein Mann, eine Frau und ein Kind.“ # dalej
-> noc

= noc
# tlo: noc_atak
Ein paar Tage vergingen. Maciek grub Beete für die Kartoffeln, Marianna setzte aus Lehm einen Ofen, und Dobrosław {los_psa == oswojony:tollte mit dem Hund über die Wiese|pflückte Sumpfdotterblumen auf der Wiese}. Abends saßen sie zusammen auf der Schwelle und sahen zu, wie der Nebel ins Tal floss.
{ los_psa == oswojony: Eines Nachts weckte sie der Hund. Er stand an der Tür, das Fell auf dem Rücken gesträubt, und knurrte so tief, dass man es kaum hörte. Dann fing er an zu bellen – laut, wütend, ohne Unterlass. | Eines Nachts weckte sie ein Krachen. Etwas schlug mit solcher Wucht gegen die Tür, dass die Angeln ächzten, und hämmerte weiter, bis das Holz splitternd barst. }
Maciek sprang von seinem Lager auf. Durch einen Spalt in der Tür sah er im Nebel zwei glühende Augen. # pokaz: slepia
Er dachte nicht nach. Er riss Dobrosław auf die Arme, schob die Bretter in der Ecke beiseite und setzte ihn in den Keller.
„Sei still“, flüsterte er. „Was auch geschieht, komm nicht heraus. Hörst du? Komm nicht heraus, bevor es Tag wird.“
Er legte die Bretter über dem Kopf des Jungen wieder zurecht. # dalej
{ los_psa == oswojony: -> walka | -> rzez }

= walka
# tlo: walka
Die Tür brach samt Rahmen nach innen. Das Wesen musste sich bücken, um sich unter dem Türsturz hindurchzuzwängen – riesig, nass, nach Sumpf stinkend. Wasser rann in Strömen von ihm auf den Lehmboden. # pokaz: stwor
Der Hund sprang es als Erster an. Er grub die Zähne in den Unterarm und hing daran, zerrte, bis das Ungeheuer ihn gegen die Wand schleuderte. Er jaulte auf und fiel. # pokaz: pies
Maciek stellte sich mit erhobener Axt vor Marianna. # pokaz: maciek
„Hinter mich!“
Die Bestie griff nach ihm. Die Krallen rissen ihm Schulter und Seite auf, aber er hielt stand. Er holte mit aller Kraft aus, und die Klinge fuhr tief in den knochigen Arm. Das Wesen heulte auf – mit demselben langgezogenen, kehligen Stöhnen wie in jener Nacht an der Laubhütte. Maciek schlug noch einmal zu. Und noch einmal.
Das Ungeheuer wich zurück, stieß die Bank um und lief brüllend in den Nebel hinaus. Eine Weile hörte man noch, wie etwas Schweres durchs Dickicht brach, dann ein Platschen – immer weiter weg, in Richtung Sumpf.
Die Axt fiel Maciek aus den Händen. Er sank auf die Knie, dann auf die Seite. Unter ihm wuchs eine dunkle Lache. # pokaz: kaluza
Marianna kniete neben ihm und presste die Hände auf seine Wunden, doch das Blut sickerte ihr durch die Finger.
„Nein, nein, nein… Verlass mich nicht…“
„Dobrosław…“, flüsterte er. „Hol ihn heraus… erst am Morgen.“
Der Hund schleppte sich hinkend zu ihm und legte den Kopf auf seine Brust.
Maciek lächelte noch. Er blickte seine Frau an, bis seine Augen nichts mehr erkannten.
Unter dem Boden, im Keller, presste Dobrosław die Hände auf die Ohren und gab keinen Laut von sich. So, wie er es dem Vater versprochen hatte. # dalej
-> sierota

= rzez
# tlo: pod_podloga
Die Tür barst entzwei. In die Stube drangen Kälte, Sumpfgestank und ein riesiger Schatten, der sich bücken musste, um sich unter dem Türsturz hindurchzuzwängen.
Maciek konnte gerade noch die Axt packen. Marianna presste die Hand vor den Mund.
Dobrosław sah nicht, was dann geschah. Er sah nur die schmalen Streifen Mondlicht zwischen den Brettern über seinem Kopf – und die Schatten, die sie durchschnitten. Er hörte alles. # pokaz: cien
Er hörte, wie der Vater der Mutter zurief, sie solle fliehen. Er hörte die dumpfen Schläge der Axt, einmal und noch einmal, und ein Heulen, von dem die Erde bebte. Dann ein Krachen – laut, nass, genau wie damals im Dickicht, auch wenn der Junge das nicht wissen konnte. Der Vater hörte auf zu schreien.
Die Mutter schrie länger.
Als auch sie verstummte, begann durch die Ritzen zwischen den Brettern etwas Warmes zu sickern. Tropfen um Tropfen, auf sein Haar und seine Wangen. # pokaz: krew
Etwas Schweres ging über den Boden, genau über ihm. Blieb stehen. Er hörte, wie es schnüffelte – lange, röchelnd, wie ein Hund vor einem Fuchsbau. Er biss in seinen Ärmel, um nicht zu wimmern.
Dann entfernten sich die Schritte und verloren sich im Nebel.
Er blieb bis zum Morgen im Keller sitzen. So, wie er es dem Vater versprochen hatte. # dalej
-> sierota

// Epilog zakończenia A – chłopca przygarnia Andrzej.
= sierota
# tlo: izba_andrzeja
{ los_psa == oswojony:
    Am Morgen schaute Andrzej bei ihnen vorbei. Er fand Marianna auf dem Lehmboden, den Kopf ihres Mannes im Schoß. Sie weinte nicht mehr. Der Hund lag daneben und ließ niemanden herankommen.
    Maciek begruben sie auf dem Friedhof an der Kirche in der Stadt. Die Witwe kehrte nicht mehr in die Hütte zurück – sie zog mit dem Jungen zu dem Bauern vom Hügel, der sie wie Familie unter sein Dach aufnahm.
- else:
    Am Morgen schaute Andrzej bei ihnen vorbei. Die Tür der Hütte lag entzweigebrochen im Gras. In der Stube war niemand – nur eine Schlammspur, die von der Schwelle zum Sumpf hin führte, und dunkle Flecken auf dem Lehmboden. Lange stand er in der Tür, ehe er unter dem Boden ein leises Schluchzen hörte.
    Der Junge sagte kein Wort – weder an diesem Tag noch an vielen folgenden. Andrzej nahm ihn zu sich und zog ihn zusammen mit Staś wie ein eigenes Kind groß.
}
Nach jener Nacht begann das Dorf, neue Bildstöcke zu errichten – an den Wegen, an Wegkreuzungen, am Waldsaum und beim Steg über das Moor –, neben einigen alten, morschen Pfählen den Wald entlang, von denen keiner mehr wusste, wer sie aufgestellt hatte. Mit jedem Jahr wurden es mehr, bis es in ganz Zapadlina keinen Fleck mehr gab, von dem aus nicht wenigstens einer zu sehen war.
Dobrosław wuchs zu einem schweigsamen, kräftigen Mann heran. Nie ging er zu den Sümpfen, und nie stieg er in einen Keller hinab. Er heiratete ein Mädchen aus dem Nachbardorf, und bald wurde ihm ein Sohn geboren.
Sie gaben ihm den Namen Jaromir. # dalej
-> prolog_ciag_dalszy


// ------------------------------------------------------------
//  Zakończenie B – figurka u handlarza albo bez figurki: spokojne lata.
// ------------------------------------------------------------
=== lata_spokoju ===
# tlo: kapliczki
# rozdzial: Prolog
# tytul: Ruhige Jahre
Der Wassermann kam nicht. Weder in diesem Jahr noch im nächsten.
Maciek und Marianna pflügten ein Feld, das mit jedem Jahr ein wenig größer wurde. Dobrosław wuchs schnell heran – zuerst hütete er Gänse, dann ging er hinter dem Pflug her, bis er schließlich selbst das Pferd führte.{ los_psa == oswojony: Der Hund wurde an der Schwelle alt und stand in einem Winter nicht mehr auf. Sie begruben ihn am Waldrand.}
Manchmal, an langen Winterabenden, erzählte Maciek dem Jungen vom ersten Frühling in Zapadlina. Vom Heulen im Dickicht, von dem, was an der Laubhütte aus dem Nebel gekommen war, von der Stimme, die ihn aus den Sümpfen gerufen hatte. Von der Kräuterfrau, die in der Hütte am See verbrannt worden war. Der Sohn hörte mit glühenden Wangen zu, hielt das alles aber für Märchen – solche, wie man sie Kindern erzählt, damit sie nicht allein ans Wasser gehen.
Als der Sohn erwachsen war, begann das Dorf, neue Bildstöcke zu errichten, neben einigen morschen Pfählen den Wald entlang, von denen keiner mehr wusste, wer sie aufgestellt hatte. Einen an der Straße vom Buchenkamm, einen zweiten am Waldrand, einen dritten beim Steg über das Moor. Dann kamen weitere hinzu, bis sie fast an jedem Feldrain standen. Die Leute sagten, seitdem blinzelten die Lichtlein über den Sümpfen seltener. Dobrosław glaubte nicht daran, schmückte aber jedes Jahr im Mai mit den anderen die Bildstöcke mit Blumen. # pokaz: kapliczki
Dobrosławs Eltern starben an Altersschwäche, eins nach dem anderen, in derselben Hütte, die Maciek einst vom ersten Balken an gebaut hatte. Dobrosław heiratete ein Mädchen aus dem Nachbardorf, und bald wurde ihm ein Sohn geboren.
Sie gaben ihm den Namen Jaromir. # dalej
-> prolog_ciag_dalszy
