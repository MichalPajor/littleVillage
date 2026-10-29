// ------------------------------------------------------------
//  Rozdział trzeci — Wigilia. Zima, Jaromir ma dziewięć lat.
//  Nocnica nawiedza Zosię, siostrzyczkę Antka; dziad proszalny
//  w wigilijny wieczór; szczeniak z rodu psa dziadka Maćka.
//  Ojciec jak w rozdziałach 1–2:
//    figurka_u_staruchy — milczący, nieufny;
//    inaczej            — pogodny, sam nie umie czytać.
// ------------------------------------------------------------

=== rozdzial_trzeci ===
# tlo: roraty
# rozdzial: Drittes Kapitel
# tytul: Heiligabend
In der ersten Dezemberwoche ließ der Frost den See so fest zufrieren, dass die Bauern mit Schlitten auf das Eis hinausfuhren, und das Moor, durch das im Sommer niemand, der bei Verstand war, eine Abkürzung nahm, verwandelte sich in eine weiße, ebene Decke. Der Schnee knirschte unter den Stiefeln, nachts krachten die Balken in den Wänden, und morgens überzogen sich die Scheiben mit Eisblumen in Gestalt von Farnen.
Es war Advent. Jeden Tag, noch im Dunkeln, gingen die Kinder nach Bukowiec zur Roratemesse und von der Kirche geradewegs in die Schule, die gleich daneben stand. Jedes trug seine eigene Laterne – Jaromirs hatte der Vater aus hölzernen Leisten und geöltem Papier zusammengeleimt, und darin glomm ein Talgstumpen. Auf dem Pfad unten am Wald schaukelten ihre Flämmchen wie Irrlichter, und zwischen den Fichten herrschte eine so dichte Schwärze, dass das Licht schon nach wenigen Schritten darin versank.
{ zawolal_do_lasu:
    Jaromir ging stets in der Mitte und wandte den Kopf nicht zu den Bäumen hin. Seit jenem Morgen im Nebel wurde er das Gefühl nicht los, dass jemand nun seine Stimme kannte.
- else:
    Jaromir ging stets in der Mitte und bemühte sich, den Kopf nicht zu den Bäumen hin zu wenden.
}
Antek blieb immer öfter zurück. Im Oktober war ihm ein Schwesterchen geboren worden, Zosia, und seither hatte bei Staś’ Leuten niemand mehr eine Nacht durchgeschlafen. Die Kleine schrie bis zum Morgengrauen, und wenn sie einmal verstummte, wachte die Mutter trotzdem an der Wiege, denn die Stille ängstigte sie mehr als das Geschrei. Der Junge kam mit Ringen unter den Augen zur Rorate, im Unterricht nickte er über der Tafel ein, und Herr Ignacy musste ihn manchmal wecken. # pokaz: antek # dalej
-> antek_prosi


= antek_prosi
# tlo: przerwa_sniezki
{ obrona_antka:
- stanal:
    In der Pause, während sich die anderen vor dem Kirchlein mit Schneebällen bewarfen, kam Antek von selbst zu Jaromir. Seit dem Tag, an dem dieser für ihn eingetreten war, hatte er keine Geheimnisse vor ihm.
- poskarzyl:
    In der Pause, während sich die anderen vor dem Kirchlein mit Schneebällen bewarfen, schlich Antek lange um Jaromir herum, ehe er ihn ansprach. Vielleicht erinnerte er sich, dass Jaromir damals zu Herrn Ignacy gelaufen war, vielleicht hatte er auch einfach niemanden mehr, an den er sich wenden konnte.
- else:
    In der Pause, während sich die anderen vor dem Kirchlein mit Schneebällen bewarfen, schleppte Hanka Antek beinahe mit Gewalt zu Jaromir. Antek hatte kein Wort mehr mit Jaromir gesprochen seit dem Tag, an dem Bartek ihm die Tafel zerschlagen hatte, und auch jetzt sah er irgendwohin zur Seite. # pokaz: hanka
}
„Etwas kommt zu Zosia“, sagte er leise. „Nach Mitternacht. Zuerst wird’s kalt, und dann raschelt was in der Stube, wie trockenes Laub. Einmal hab ich die Augen aufgemacht und über der Wiege was gesehen, was Helles, Großes… und Haare, schwarz, bis auf den Boden. Mehr hab ich nicht hingeschaut.“ Er schluckte. „Und Zosia weint dann nicht. Sie röchelt bloß, als ob sie keine Luft kriegt. Morgens ist sie weiß wie die Wand und will nicht trinken.“
Er redete hastig, verschluckte die Worte und sah sich alle Augenblicke über die Schulter um. Der Schneeball, den er die ganze Zeit in den Händen geknetet hatte, zerfiel ihm zwischen den Fingern.
„Hast du’s deiner Mama gesagt?“
„Sie sagt, ich träum das. Ich wär bloß müde.“ Antek senkte den Blick. „Aber ich schlaf ja nicht. Ich hör das jede Nacht.“
Jaromir fielen die Freitagsgeschichten von Herrn Ignacy ein, und ihm wurde kalt, obwohl die Sonne so grell vom Schnee zurückstrahlte, dass einem die Augen wehtaten.
„Ich komme an Heiligabend“, versprach er. „Wenn alle schlafen. Aber erst muss ich herausfinden, wie man das verjagt.“
# pytanie: Bei wem wird Jaromir Rat suchen?
*   [Hanka fragen – sie kennt Großmutters Mittel gegen alles.]
    ~ rada_jaromira = hanka
    Hanka hörte ihn mit gerunzelter Stirn an und schwieg lange. # pokaz: hanka
    „Großmutter hat gesagt, das ist eine Mitternachtsfrau“, sagte sie schließlich. „So eine tote Mutter, die ihr eigenes Würmchen nicht mehr in den Schlaf wiegen konnte, und darum geht sie zu fremden. Sie fürchtet sich vor Eisen. Man muss ein Messer unters Kissen schieben oder wenigstens einen Nagel.“ Sie zögerte. „Bloß sagt Großmutter, erst wenn sie sich schon herunterbeugt, sonst kommt sie nicht heran. Und Mama sagt, Großmutter bringt alles durcheinander.“ # dalej
    -> wigilia
*   { ekwipunek ? ksiega } [In Herrn Ignacys Buch nachschlagen.]
    ~ rada_jaromira = ksiega_rada
    # tlo: izba_noc
    In dieser Nacht suchte er bei der glimmenden Glut im Buch das richtige Blatt heraus. „Die Mitternachtsfrau“, schrieb Herr Ignacy in seiner schrägen Hand, „sucht die Säuglinge nach Mitternacht heim, beugt sich über sie und saugt ihnen Schlaf und Kräfte aus. Sie fürchtet das Eisen, das man dem Kind unter das Kissen legen muss. Die alten Leute sagen auch, wenn man eine Handvoll Mohn rings um die Wiege streut, muss die Mitternachtsfrau jedes Körnchen zählen, ehe sie näher kommt – zählen aber kann sie nur bis zum Morgengrauen.“ # pokaz: ksiega
    ~ czytal_po_zmroku = true
    Jaromir las den letzten Satz dreimal. Dann dachte er bis zum Morgen an die Stimme, die im Nebel unten am Wald etwas gezählt hatte, das man nicht sehen konnte.
    Als er das Buch frühmorgens am Fenster aufschlug, fand er auf dem Blatt über die Mitternachtsfrau ein langes, schwarzes Haar. Am Abend war es noch nicht da gewesen. # dalej
    -> wigilia
*   [Den Vater fragen.]
    ~ rada_jaromira = ojciec
    # tlo: izba_noc
    { figurka_u_staruchy:
        Der Vater erbleichte, als er hörte, wonach der Sohn fragte. Er stand vom Tisch auf, ging hinaus in den Flur und kam lange nicht wieder. Als er endlich in der Tür stand, sagte er nur: „Eisen. Unters Kissen. Und zu keinem ein Wort, verstanden?“ # pokaz: ojciec # dalej
    - else:
        Der Vater lachte und zauste ihm das Haar. „Dein Großvater Maciek hat immer gesagt, gegen jedes Licho hilft am besten Eisen unterm Kissen“, sagte er. „Aber das sind Märchen, mein Sohn. Die Kleine hat Bauchgrimmen, weiter nichts.“ Trotzdem sah Jaromir in dieser Nacht, wie der Vater ihm einen alten Nagel unter den Strohsack schob. # pokaz: ojciec # dalej
    }
    -> wigilia

= wigilia
# tlo: wigilia
~ zapiski += polnocnica_1
{ ekwipunek ? ksiega:
    ~ ksiega_zatrzymana = true
    Am letzten Tag vor den Feiertagen brachte Jaromir das Buch, in ein Leinentuch eingeschlagen, mit in die Schule. Herr Ignacy nahm es, wog es in den Händen und gab es ihm zurück. „Behalt es“, sagte er. „Etwas sagt mir, dass es dir mehr nützen wird als mir. Nur denk daran: nicht nach Einbruch der Dunkelheit.“{ czytal_po_zmroku: Jaromir schlug die Augen nieder. Der Lehrer betrachtete ihn einen Augenblick länger als nötig, fragte aber nichts.}
- else:
    Am letzten Tag vor den Feiertagen verteilte Herr Ignacy an die Kinder je ein Stück Lebkuchen und wünschte allen ein frohes Fest. Jaromir sah er dabei länger an als die anderen, als wollte er ihn etwas fragen, doch am Ende nickte er ihm nur zu.
}
Seit dem Morgen roch es in der Hütte nach Pilzen, Kraut und Mohn. Die Mutter rieb ihn in der irdenen Mohnschüssel, bis die hölzerne Keule an den Tonwänden sang, der Vater holte aus der Scheune eine Roggengarbe und stellte sie in die Ecke, und unter das Tischtuch schob er eine Handvoll Heu. Am Tisch lag ein Gedeck mehr – für einen Wanderer, falls er anklopfte, und für die, die gegangen waren und in dieser Nacht wiederkehren konnten. Jaromir hielt seit Mittag am Fenster Ausschau nach dem ersten Stern. Er ging über dem Wald auf, winzig und kalt. # pokaz: gwiazdka
Kaum hatten sie die Weihnachtsoblate miteinander gebrochen, klopfte es an die Tür.
Auf der Schwelle stand ein alter Bettler – gebeugt, in Lumpen, die mit Schnüren zusammengebunden waren, einen Sack über der Schulter und eine Drehleier auf dem Rücken. Sein Bart war zu Eiszapfen gefroren, und seine Augen waren milchig blass, als hätte er mit ihnen seit Langem nichts mehr gesehen. # pokaz: dziad
„Gelobt sei Jesus Christus“, krächzte er. „Nehmt Ihr einen Alten zum Mahl auf?“
{ figurka_u_staruchy:
    Der Vater antwortete nicht. Er stand mit der Hand am Riegel und blickte bald auf den Fremden, bald auf das leere Gedeck, dann wandte er sich zu seinem Sohn um und wartete, was der sagen würde.
- else:
    „In Ewigkeit“, erwiderte Dobrosław, zögerte aber, die Hand auf der Klinke. Er warf einen Blick auf seinen Sohn, der als Erster zur Tür gelaufen war. „Mein Vater hat immer gesagt, an Heiligabend weist man keinen von der Schwelle. Was meinst du?“
}
# pytanie: Bleibt der Bettler zum Mahl?
*   [Den Vater bitten, ihn hereinzulassen.]
    ~ wpuscil_dziada = true
    Der Bettler setzte sich vor das leere Gedeck und aß wenig, dafür langsam und gründlich. Dann nahm er die Drehleier vom Rücken und sang ein altes Lied von den Seelen, die in dieser einen Nacht in ihre Hütten heimkehren und sich die Hände an fremdem Feuer wärmen. Die Mutter wischte sich mit der Schürze die Augen. # pokaz: lira
    Im Hinausgehen blieb der Bettler bei Jaromir stehen und beugte sich so tief zu ihm herab, dass dem Jungen ein Geruch von Rauch und Frost in die Nase stieg.
    „Du riechst nach Wald, Junge“, flüsterte er. „Wenn sie zu der Kleinen kommt, sprich sie nicht an. Mit keinem Wort.“
    Ehe jemand fragen konnte, was er damit meinte, war er schon über die Schwelle. Die Nacht war hell vom Schnee, und doch sah niemand, in welche Richtung er davonging. „Gut, dass wir ihn nicht fortgeschickt haben“, flüsterte die Mutter und räumte seine Schüssel vom Tisch. „Man weiß nie, wer da gekommen ist. Manchmal kehrt die Seele von einem aus der Familie verkleidet zurück, um zu sehen, ob man sich noch an sie erinnert.“ # pokaz: odszedl # dalej
    -> po_wieczerzy
*   [Nichts sagen – der Alte macht ihm Angst.]
    Jaromir senkte den Blick. Die Tür schloss sich langsam, und der Riegel klirrte. Der Bettler klopfte kein zweites Mal. # pokaz: rygiel
    Durch einen Spalt im Fensterladen sah der Junge, wie der Fremde durch den Schnee stapfte – nicht zum Dorf hin, sondern geradewegs auf den Wald zu. Mitten auf dem Feld kam Wind auf und wirbelte von den Schneewehen ein weißes Gestöber hoch. Als es sich legte, war niemand mehr da. # dalej
    -> po_wieczerzy

= po_wieczerzy
~ zapiski += dziad_1
{ los_psa == oswojony: -> wigilijny_szczeniak | -> noc_w_sniegu }

= wigilijny_szczeniak
# tlo: wigilia_szczeniak
Nach dem Mahl kam der alte Staś. Er ließ sich schwer auf die Bank sinken und schlug seinen Schafspelz auseinander, unter dem sich etwas wand und fiepte.
„Dein Großvater hatte einen Hund, wie’s keinen zweiten in der Gegend gab“, sagte er zu Jaromir. „{pies_uratowal:Hat deinen Großvater am Tuchrock aus dem Sumpf gezogen, wie ihn was vom Wasser her gerufen hat – Maciek hat’s mir selber erzählt. }Wie dann für den Hund die Zeit kam, sind seine Welpen im Dorf herumgekommen, und einer ist zu meinem Vater gegangen. Seitdem ist auf unserm Hof immer einer von seinen Enkeln oder Urenkeln herumgelaufen.“ Er zog unter dem Pelz ein Fellknäuel hervor. „Und die Hündin hat im Herbst geworfen. Der hier ist der mutigste vom ganzen Wurf. Der steht dir zu.“
Der Welpe hatte aufrechte, spitze Ohren, einen weißen Fleck auf der Brust und Pfoten, die für den übrigen Körper zu groß waren. Er beschnupperte dem Jungen die Finger, nieste und kletterte ohne Umstände auf seinen Schoß. # pokaz: pies
{ figurka_u_staruchy:
    Großmutter Marianna streckte dem Welpen eine zitternde Hand entgegen und brachte lange keinen Laut hervor.
}
# pytanie: Wie wird Jaromir ihn nennen?
*   [Grauer.]
    ~ imie_psa = "Grauer"
*   [Tatze.]
    ~ imie_psa = "Tatze"
*   [Donner.]
    ~ imie_psa = "Donner"
-   ~ ekwipunek += szczeniak
    „{imie_psa}“, wiederholte Staś und nickte. „Ein guter Name. Maciek hätt sich gefreut.“
    Der Welpe schlief danach zu Füßen von Jaromirs Lager und knurrte hin und wieder im Schlaf zum Fenster hin. # dalej
    -> noc_w_sniegu

= noc_w_sniegu
# tlo: noc_snieg
Zur Christmette nach Bukowiec ging in diesem Jahr niemand – der Frost war zu grimmig und der Pfad über den Kamm knietief verschneit. Alle legten sich früh schlafen.
{ rada_jaromira == ksiega_rada:
    ~ ekwipunek += mak
}
Jaromir lag reglos, bis aus der Stube das gleichmäßige Schnarchen des Vaters drang. Dann zog er sich im Dunkeln an, steckte sich das kleine Messer unters Hemd{ ekwipunek ? mak:, dazu in die Tasche ein Läppchen mit dem Mohn, den er abends aus der Schüssel stibitzt hatte, eingedenk dessen, was er in Herrn Ignacys Buch gelesen hatte,} und schlich hinaus in den Flur.{ ekwipunek ? szczeniak: Der Welpe hob den Kopf, winselte aber nicht, als verstünde er, dass man jetzt still sein musste.}
Die Welt war silbern vom Mondlicht. Der Schnee glitzerte auf den Feldern, jeder Zweig warf einen scharfen, schwarzen Schatten, und der Frost biss so in die Wangen, dass die Augen tränten. { figurka_u_staruchy: Bis zu Staś’ Hof waren es kaum ein paar Dutzend Schritte, doch der Pfad führte quer über ein Feld, über dem tief der Nebel zog, obwohl der Himmel klar war, und der dunkle Strich des Waldes schien bei Nacht näher als bei Tag. | Bis zu Staś’ Hütte war es nicht weit, doch der Pfad lief am Waldrand entlang, und der Wald stand um diese Stunde stumm und reglos da. }
Auf halbem Weg rief ihn jemand.
„Jaromir!“
Die Stimme kam {figurka_u_staruchy:aus dem Nebel über dem Feld|zwischen den Bäumen hervor}. Warm, sanft, vertraut – die Stimme der Mutter.
„Mein Junge, komm zu mir. Mir ist kalt. Ich hab mich verirrt.“
Jaromir blieb wie angewurzelt stehen. Die Mutter schlief doch zu Hause, bis ans Kinn unter dem Federbett. Er hatte sie gesehen, als er hinausging.
# pytanie: Was wird Jaromir tun?
*   [Antworten.]
    ~ glos_w_lesie = odpowiedzial
    „Mama?“, entfuhr es ihm, ehe er sich besinnen konnte.
    { zawolal_do_lasu:
        {figurka_u_staruchy:Im Nebel|Zwischen den Bäumen} lachte etwas – tief, leise, ganz und gar nicht mit der Stimme der Mutter. Dann sagte dieselbe ruhige Stimme, die er im Herbst unten am Wald gehört hatte: „Wieder du. Dich zähle ich, wenn die Zeit gekommen ist.“ # pokaz: oczy
    - else:
        {figurka_u_staruchy:Im Nebel|Zwischen den Bäumen} lachte etwas – tief, leise, ganz und gar nicht mit der Stimme der Mutter. Dann begann irgendwo weiter drinnen jemand ruhig zu zählen: „…fünfhunderteins… fünfhundertzwei…“ # pokaz: oczy
    }
    Jaromir rannte los und hielt erst unter dem Fenster von Staś’ Leuten inne. # pokaz: bieg # dalej
    -> kolyska
*   [Den Schafspelz auf links wenden, wie Herr Ignacy gesagt hat.]
    ~ glos_w_lesie = kozuch
    Mit zitternden Fingern löste er den Gürtel, warf den Schafspelz ab und zog ihn wieder an, mit dem Fell nach außen. Kaum war er fertig, verstummte die Stimme.
    Eine Weile herrschte Stille. Dann hörte man Schritte – schwer, langsam und so weit ausholend, als setze sie jemand, der sehr groß war. Dieser Jemand ging dicht an ihm vorbei. Jaromir spürte im Gesicht seinen kalten Atem, der nach Harz und Fäulnis roch, doch jener bemerkte ihn nicht. # pokaz: kroki
    „Wo bist du?“, kam es schon von fern, im Ton eines enttäuschten Kindes, dem jemand das Spielzeug versteckt hat. # dalej
    -> kolyska
*   [Losrennen.]
    ~ glos_w_lesie = ucieczka
    Er rannte, so schnell ihn die Beine trugen. Der Schnee rieselte ihm in die Stiefelschäfte. Zweimal stürzte er und zweimal raffte er sich wieder auf, und die Stimme der Mutter jagte ihm durch die Dunkelheit nach, immer näher und immer weinerlicher. Sie verstummte erst, als der Junge den Zaun von Staś’ Hof erreichte. Er keuchte so, dass es ihm in der Brust stach wie mit einem Messer. # pokaz: bieg # dalej
    -> kolyska

= kolyska
# tlo: kolyska
Antek wartete am Fenster und öffnete es, ehe Jaromir anklopfen konnte. In der Stube war es warm und dunkel. Auf dem Ofen schnarchte Anteks Vater, in der Ecke schlief Franek, und die Mutter, erschöpft von den vielen durchwachten Nächten, war auf dem Schemel eingeschlafen, den Kopf an die Wiege gelehnt. Zosia atmete schnell und flach.
Sie setzten sich unten an die Wand auf den Boden, von wo sie alles im Blick hatten. Der Mond fiel in einem silbernen Streifen in die Stube. Lange geschah nichts. Mitternacht ging vorüber, Jaromir fielen die Lider zu, und Antek nickte ihm zweimal an der Schulter ein.
Bis es kalt wurde.
Der Lichtstreifen verblasste, als hätte jemand das Fenster verhängt. Über dem Boden begann Nebel zu ziehen, und aus ihm wuchs eine Gestalt empor – hoch, in einem unten zerfransten Leichentuch, mit schwarzen Haaren, die bis zur Erde herabflossen. Sie schwebte über den Dielen, ohne sie mit den Füßen zu berühren. Ihr Gesicht war hager wie ein Totenschädel, die Augen groß und rund, und in dem halb offenen Mund blitzten kleine, spitze Zähne. Sie beugte sich über Zosia und streckte die stockdürren, in Krallen auslaufenden Finger zu ihr hinab. # pokaz: polnocnica
Die Kleine begann zu röcheln.
Antek grub Jaromir die Nägel so fest in den Arm, dass dieser beinahe aufgeschrien hätte.
# pytanie: Was wird Jaromir tun?
*   [Das kleine Messer unter das Kissen in der Wiege schieben.]
    ~ polnocnica = przegnana_nozem
    ~ ekwipunek -= nozyk
    Jaromir kroch auf allen vieren zur Wiege. Die Mitternachtsfrau wandte ihm den Kopf zu – ihre Augen waren wie zwei schwarze Brunnen mit einem hellen Punkt auf dem Grund – und zischte. Der Junge schluckte die Angst hinunter, schob die Hand gleich unter ihren Krallen unter das Kissen und ließ das kleine Messer dort liegen.
    Die Mitternachtsfrau zuckte zurück, als hätte sie glühendes Eisen berührt. Lautlos riss sie den Mund auf, stieg bis unter die Deckenbalken empor und hing dort, den Blick auf die beiden geheftet, während ihr Haar wogte wie Wasserkraut in der Strömung. # pokaz: odlot, noz
    So verharrte sie bis zum ersten Hahnenschrei. Als im Stall der Hahn krähte, war sie verschwunden. # pokaz: kogut
    Gegen Morgen griff Jaromir nach dem kleinen Messer, besann sich aber anders.
    „Soll’s bei Zosia bleiben“, flüsterte er Antek zu. „Für alle Fälle.“ # dalej
    -> boze_narodzenie
*   { ekwipunek ? mak } [Den Mohn rings um die Wiege streuen.]
    ~ polnocnica = policzyla_mak
    ~ ekwipunek -= mak
    Jaromir zog das Läppchen aus der Tasche und streute mit zitternder Hand den Mohn rund um die Wiege. Die Körnchen prasselten auf die Dielen wie feiner Regen.
    Die Mitternachtsfrau erstarrte. Langsam, ganz langsam sank sie tiefer, bis sich ihr Leichentuch wie Nebel über die Bretter ergoss. Sie hielt über dem nächsten Körnchen inne und berührte es mit einer Kralle. # pokaz: odlot, mak
    „Eins“, wisperte sie mit einer Stimme wie das Rascheln von dürrem Laub. „Zwei… drei…“
    Sie zählte die ganze Nacht. Die Jungen saßen an der Wand und wagten sich nicht zu rühren, und sie glitt durch die Stube, Körnchen um Körnchen, und flüsterte immer schneller, immer zorniger. Sie war bei einigen Tausend angelangt, als im Stall der Hahn krähte. Da kreischte sie so durchdringend auf, dass Jaromir die Ohren klangen – und verschwand. Außer ihnen beiden hörte niemand diesen Schrei. # pokaz: kogut # dalej
    -> boze_narodzenie
*   [Schreien und die Erwachsenen wecken.]
    ~ polnocnica = uslyszala_krzyk
    „Hilfe!“, schrie Jaromir{ wpuscil_dziada:, obwohl ihm sogleich einfiel, was ihm der Bettler beim Abschied zugeflüstert hatte}.
    Die Mitternachtsfrau drehte sich zu ihm um. Einen Wimpernschlag lang sah sie ihm geradewegs in die Augen, dann zerfloss sie in der Dunkelheit wie Rauch. Anteks Mutter fuhr mit einem Schrei hoch, der Vater fiel vom Ofen, jemand zündete einen Kienspan an. In der Wiege war nichts außer der blassen, kaum atmenden Zosia. # pokaz: odlot, krzyk
    Im Morgengrauen brachte man Jaromir nach Hause, wo er eine gehörige Tracht Prügel bekam. Die Mitternachtsfrau aber kehrte in den folgenden Nächten wieder. # pokaz: kogut # dalej
    -> boze_narodzenie

= boze_narodzenie
~ zapiski += polnocnica_2
// Mak był potrzebny tylko na tę jedną noc.
~ ekwipunek -= mak
# tlo: koledy
{ polnocnica:
- przegnana_nozem:
    Am Morgen schlief Zosia ruhig, rosig wie ein Äpfelchen, und trank zum ersten Mal seit Wochen so gierig, dass die Mutter vor Glück in Tränen ausbrach. Keiner der Erwachsenen wusste, woher das kleine Messer in der Wiege kam. Die Mutter besah es, bekreuzigte sich und schob es wieder unter das Kissen.
- policzyla_mak:
    Am Morgen schlief Zosia ruhig, rosig wie ein Äpfelchen, und trank zum ersten Mal seit Wochen so gierig, dass die Mutter vor Glück in Tränen ausbrach. Vom Mohn war keine Spur geblieben – nicht ein einziges Körnchen, obwohl die Jungen jede Ritze im Boden absuchten.
- else:
    Zosia wurde mit jedem Tag schwächer. Erst an Dreikönig legte der alte Staś, der seinen Enkel angehört hatte, ohne zu lachen, eine rostige Sichel unter die Wiege. Die Kleine blieb am Leben, war aber fortan immer kränklich und blass, und auf ihrer Stirn blieb ein kleiner grauer Fleck zurück, wie von der Berührung eines schmutzigen Fingers.
}
{ polnocnica == uslyszala_krzyk:
    Antek trug es Jaromir nicht nach. Er sagte, wenigstens einer habe ihm geglaubt – und das sei mehr, als er von den Erwachsenen behaupten könne.
- else:
    Seit jener Nacht blieb Antek nicht mehr zurück. Zur Schule ging er jetzt neben Jaromir, und wenn jemand fragte, warum er sich so an ihn halte, zuckte er nur mit den Schultern und lächelte in sich hinein.
}
Dann kamen die Feiertage. Die Sternsinger zogen von Hütte zu Hütte mit einem papierenen Stern, der sich auf einer Stange drehte, und der gehörnte Turoń klappte mit seinem hölzernen Maul, bis die Mädchen kreischten. Zur Schlittenfahrt über den zugefrorenen See spannte Staś zwei Pferde ein; der Schlitten glitt so schnell dahin, dass ihnen der Wind in den Ohren pfiff, die Schellen klingelten und unter den Kufen der Schnee aufstob. Jaromir lachte mit den anderen, doch nachts, bevor er einschlief, lauschte er in die Stille vor dem Fenster. # pokaz: kulig
Als er Hanka alles erzählte, wurde das Mädchen ernst und sagte eine ganze Weile nichts. # pokaz: hanka
„Großmutter sagt, die Mitternachtsfrau kommt nie von selbst“, sagte sie endlich. „Jemand muss ihr den Weg zeigen.“ # dalej
-> rozdzial_trzeci_ciag_dalszy


// Koniec rozdziału trzeciego — dalej rozdział czwarty.
=== rozdzial_trzeci_ciag_dalszy ===
# ozdobnik
_Ende des dritten Kapitels._ # dalej
-> rozdzial_czwarty
