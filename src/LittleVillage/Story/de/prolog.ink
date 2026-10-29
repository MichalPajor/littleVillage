// ------------------------------------------------------------
//  Prolog — Zapadlina, około siedemdziesiąt lat przed główną
//  częścią opowieści. Maciek, dziadek Jaromira, wybiera
//  miejsce na chatę.
// ------------------------------------------------------------

=== prolog ===
# tlo: zapadlina
# rozdzial: Prolog
# tytul: Zapadlina
Zapadlina – ein Dorf, das dort lag, wo die Erde, müde davon, eine Ebene zu sein, nach unten abgesackt war. Wer hingelangen wollte, musste immer von Hügeln, Böschungen und Hängen hinabsteigen – ob von der Landstraße über den Buchenkamm oder vom Wald her auf einem ausgetretenen Pfad. Aus der Stadt war man sechs Stunden unterwegs, und das letzte Stück des Weges wand sich zwischen Sümpfen hindurch, immer weiter bergab. Der Nebel liebte diese Senke. In der Dämmerung floss er hinein wie Milch in eine Schüssel, und manchmal wollte er sie bis zum Mittag nicht verlassen.
Von Osten drängte der Wald heran – alt, voller Nadelbäume und so dicht, dass die Bäume selbst am Tag tiefen, kühlen Schatten warfen. Im Norden ging der weiche Boden in ein Moor über, bewachsen mit Rohrkolben, Seggen und verkrüppeltem Gestrüpp. Das Wasser stand dort schwarz, trüb und reglos. Manche sagten, man dürfe nicht zu lange hineinstarren, denn damit könne man die Ertrunkenen heraufbeschwören, die unter der Schlammschicht gefangen lagen. Nachts schwebten oft Irrlichter darüber. Im Westen, an der tiefsten Stelle des Tals, lag ein See, rund, als hätte ihn jemand mit dem Knie eingedrückt. Es hieß, niemand habe je seinen Grund gesehen.
Das Dorf war klein, aber nicht jung. Fünf Hütten standen weit voneinander entfernt, denn jeder besaß so viel Feld, wie seine Vorfahren hatten roden und verteidigen können. Etwa dreißig Menschen lebten hier, die Kinder mitgezählt. Alle kannten sich gut. Eine Kirche gab es erst in der Stadt; man ging einige Male im Jahr hin, zu den höchsten Feiertagen, sofern die Wege es zuließen. Dann blieb im Dorf keine einzige lebende Seele zurück.
Etwa siebzig Jahre, bevor Jaromir zum ersten Mal zum Wald hinüberblickte, stieg sein Großvater mit einem Bündel auf der Schulter nach Zapadlina hinab. Maciek besaß nichts außer einer Axt, Brot, zwei Händen und seinem Starrsinn. Axt und Brot hatte er in der Stadt gekauft, von dem Geld, das er in vier Jahren Arbeit auf fremdem Feld verdient hatte. Er wollte endlich etwas Eigenes haben – einen Winkel, in dem er wohnen und seiner Familie ein Dach über dem Kopf geben würde. Der Gutsherr gab hier Ödland gegen geringen Zins zur Rodung her, also würde jedes Stück Boden, das Maciek urbar machte, ihm gehören. Es war Frühling, die Felder dampften, und hier und da lag im Schatten noch schmutziger Schnee. Seit einigen Tagen streifte Maciek durch die Gegend und suchte einen Platz für seine Hütte. Drei Stellen kehrten am häufigsten in seinen Gedanken wieder.
# ozdobnik
Die erste lag am östlichen Rand des Dorfes, dicht am Wald. Der Boden war fruchtbar, Holz hatte er zum Greifen nah, und auch an Wild fehlte es nicht. Nur zog vom Wald her stets eine Kälte herüber, selbst an heißen Tagen, und nachts drangen von dort Laute, die er nicht zu benennen wusste.
Die zweite war im Norden, beim Moor. Dort gab es weite Wiesen, auf denen man Vieh weiden konnte, und an Torf zum Heizen würde es nie mangeln. Dafür blinzelte nach Einbruch der Dunkelheit angeblich etwas über den Sümpfen. Die Leute, denen er am Brunnen begegnete, sagten nur: „Dort geht man nicht hin, und dort baut man nicht. Dort ertrinkt man nur.“
Die dritte, am See, schien die malerischste zu sein. Das Wasser war klar, die Fische sprangen einem von selbst in die Hand, und das Ufer war sanft – man musste sich nur durch das dichte Schilf kämpfen. Dort waren auch Reste einer Hütte geblieben, die hier einst gestanden hatte: alte, morsche und verkohlte Balken. Niemand im Dorf wollte sagen, wer darin gewohnt hatte oder welches Schicksal ihn ereilt hatte, und die Leute bekreuzigten sich jedes Mal, wenn jemand es erwähnte.
# pytanie: Wo wird Maciek seine Hütte bauen?
*   [Am Waldrand, im Osten.]
    ~ chata_macka = przy_lesie
    -> budowa
*   [Beim Moor, im Norden.]
    ~ chata_macka = przy_mokradlach
    -> budowa
*   [Am See.]
    ~ chata_macka = nad_jeziorem
    -> budowa


// ------------------------------------------------------------
//  Budowa chaty — początek zależy od wybranego miejsca.
// ------------------------------------------------------------
=== budowa ===
{ chata_macka:
    - przy_lesie: -> las
    - przy_mokradlach: -> mokradla
    - else: -> jezioro
}

= las
# tlo: budowa_las
# rozdzial: Prolog
# tytul: Die Hütte
Maciek wählte den Waldrand. Er meinte, mit dem Holz gleich zur Hand werde er die Hütte schneller aufstellen, und daran lag ihm am meisten. Der fruchtbare Boden würde sich für Gemüse eignen – irgendetwas musste man ja essen. Und der Schlaf? Das würde sich schon finden. Gleich am ersten Morgen machte er sich an die Arbeit und schlug die Axt in die nächste Fichte. Das Echo des Hiebs lief zwischen die Bäume und kehrte erst nach einer seltsam langen Weile zurück – gedehnt, tief und nicht ganz wie das Pochen einer Axt.
-> praca

= mokradla
# tlo: budowa_mokradla
# rozdzial: Prolog
# tytul: Die Hütte
Maciek wählte die Wiesen beim Moor. Als er mit der Arbeit begann, schüttelten die Leute, die ihn sahen, den Kopf. Für sie war es der letzte Ort, an dem sie eine Hütte gebaut hätten. Der Boden gab hier unter den Füßen nach, lieferte aber Torf, der sogar für hundert Winter gereicht hätte. Damit die Hütte nicht im Schlamm versank, musste Maciek eine Grundmauer setzen. Den ganzen ersten Tag schleppte er Steine von den Hügeln herab und fügte sie gewissenhaft aneinander.
Nach Holz ging er weit, bis an den Wald. Manchmal geriet er in einen flachen Tümpel – die hiesigen Pfade kannte er noch nicht –, und seine Stiefel waren ständig durchnässt. Beim Gedanken an die Geschichten der Dorfleute war ihm unbehaglich, aber er war auch neugierig. Es ließ ihm keine Ruhe, was da über den Sümpfen blinzeln mochte. Er bemühte sich, das schwarze Wasser zu meiden, und nahm sich die Warnung vor den Ertrunkenen zu Herzen. Falls es sie gab, wollte er ihnen gewiss nicht begegnen.
-> praca

= jezioro
# tlo: budowa_jezioro
# rozdzial: Prolog
# tytul: Die Hütte
Maciek wählte das Seeufer. Etwas tief im Herzen sagte ihm, dass dieser Ort für ihn bestimmt war. Vielleicht zog ihn das Wasser selbst an – glatt und hell, mit dem ganzen Himmel darin. Die morschen, verkohlten Balken der früheren Hütte stieß er ins hohe Röhricht, damit sie ihm nicht in die Augen stachen. „Vorbei ist vorbei“, sagte er sich beim Roden des Gestrüpps immer wieder, wenn ihm die Geschichten der Dorfleute einfielen. Die Bäume fällte er an den Hängen und rollte die Stämme hinab. Zum Decken des Daches sammelte er Schilf, an dem es hier nicht fehlte – es reichte ihm über den Kopf.
-> praca

= praca
Der Bau dauerte über einen Monat. Bisweilen kam jemand aus dem Dorf, um Maciek zu helfen. Meistens war es Andrzej, mit dem er sich immer am besten unterhielt. Er selbst schwamm nicht im Wohlstand, doch als er sah, in welcher Not der Fremde hauste, brachte er ihm manchmal etwas zu essen. Gern erzählte er auch von seinem Sohn, der sein ganzer Stolz war. Der Junge war elf Jahre alt und dem Vater schon eine große Hilfe.
Das Aufstellen der Hütte selbst war nicht schwer: Bäume fällen, entrinden, in Balken der richtigen Länge zersägen und an den Enden Verkämmungen einschneiden, damit sie nach dem Zusammenfügen fest hielten. So standen die Wände ohne einen einzigen Nagel. Die Fugen stopfte er mit Moos und Lehm. Von der schweren täglichen Arbeit bedeckten sich seine Hände mit Blasen, die aufplatzten und verheilten, bis die Haut hart wurde wie Rinde.
Sein Brot aß er sehr sparsam – eine Scheibe zum Frühstück, eine zweite zum Abendbrot, und trank Wasser dazu. Er nahm sich vor, für neuen Vorrat in die Stadt zu gehen, sobald das Dach fertig war. Der Laib trocknete aus, schrumpfte und wog mit jedem Tag weniger – und Maciek mit ihm.
Er schlief in einer Laubhütte, die er am ersten Abend in aller Eile zusammengezimmert hatte: ein paar Äste, an einen Stamm gelehnt, mit belaubten Zweigen und Grassoden bedeckt, und darin ein Lager aus Moos. Er passte nur im Liegen hinein. Die Axt hatte er immer an seiner Seite. # dalej
-> noce

= noce
Die Nächte waren das Schlimmste. Die Frühjahrskälte und die Feuchtigkeit krochen unter die Kleider und bissen sich bis auf die Knochen durch. Einschlafen fiel schwer. Maciek lag mit offenen Augen da und lauschte.
{ chata_macka:
    - przy_lesie: Der Wald verstummte nie. Es ging kein Wind, und doch knackten die Äste – langsam, träge, mal näher, mal ferner. Oft erstarrte er und horchte, obwohl ihm bei manchen Lauten ein Schauer über den Rücken lief.
    - przy_mokradlach: Die Sümpfe schliefen nie. Sie gluckerten, schmatzten und seufzten manchmal – so kam es ihm vor – wie ein Mensch. Als er das zum ersten Mal hörte, zuckte er zusammen, griff nach der Axt und spähte aus der Laubhütte. Die Geschichten vom Brunnen hatten sich als wahr erwiesen. Nach Mitternacht flammte weit draußen über dem schwarzen Wasser ein kleines Licht auf und blinzelte. Es erlosch, wenn er hinsah, und leuchtete wieder auf, wenn er den Blick abwandte.
    - else: Der See atmete in der Nacht. Jeder seiner Atemzüge war warm und angenehm. Obwohl weder Wind ging noch Wellen schlugen, plätscherte in den Untiefen hin und wieder etwas. Einmal hörte Maciek, wie etwas Schweres aus dem See stieg und am Ufer entlang durch das Schilf auf ihn zukam. Am Morgen ging er nachsehen. Das Schilf stand unberührt, und auf dem flachen Wasser dösten Enten, ruhig wie jeden Tag.
}
Eines Nachts, als vom Laib nur noch der Kanten übrig war, drang ein Laut zu ihm, wie er ihn hier noch nicht gehört hatte. Ein leises, abgerissenes Heulen – dünn, einem Wolf ähnlich, aber schwach. Es kam aus dem Gestrüpp ganz in der Nähe. Maciek versuchte, nicht darauf zu achten, doch es kehrte immer wieder.
# pytanie: Was soll Maciek tun?
*   [Die Axt nehmen – auch wenn man sie im Dunkeln leicht im Schlamm verliert –, aus der Laubhütte gehen und nachsehen, was das ist.]
    -> pies
*   [In der Laubhütte bleiben und trotz allem versuchen einzuschlafen. Hier fühlt er sich sicher.]
    -> zostal

= zostal
~ los_psa = niespotkany
Maciek schloss die Finger fest um den Axtstiel und rührte sich nicht von der Stelle. Das Heulen dauerte noch lange. Dann ging es in ein klägliches Winseln über und verstummte vor dem Morgengrauen. # dalej
-> dach


// ------------------------------------------------------------
//  Pies w zaroślach — tylko gdy Maciek wyszedł z szałasu.
// ------------------------------------------------------------
=== pies ===
# tlo: zarosla_noc
Maciek kroch mit der Axt in der Hand hinaus. Die Nacht war hell vom Mond und das Gras nass vom Tau. Langsam folgte er dem Laut, Schritt für Schritt, und spürte, wie ihm das Herz aus der Brust springen wollte. Das Heulen wurde mal leiser, mal erklang es immer näher.
In dichtem Gebüsch hörte er ein Rascheln. Er schob die Zweige mit dem Axtstiel auseinander und erstarrte. Aus der Dunkelheit tauchten zwei glänzende Augen auf. Im Mondlicht erkannte er, dass es ein junger Hund war. Er war so mager, dass ihm die Rippen unter dem Fell hervorstanden, und seine Pfoten waren zu groß für den übrigen Körper. Die Schnauze war lang und schmal, die Ohren steif aufgerichtet. Das Tier floh nicht vor dem Menschen. Es knurrte leise und zitterte am ganzen Leib. # pokaz: pies
Maciek griff in die Tasche. Darin steckte ein kleines Tuchpäckchen mit dem letzten Stück Brot – hart wie Stein, aber es war doch seine Mahlzeit für morgen.
# pytanie: Was wird Maciek tun?
*   [Dem Hund ein Stück Brot geben.]
    -> dal_chleb
*   [Nichts geben und zur Laubhütte zurückkehren.]
    -> nie_dal_chleba

= dal_chleb
~ ekwipunek -= chleb
~ los_psa = nakarmiony
Maciek wickelte das Tuch auf und warf das Brot unter den Strauch. Der Hund wich zurück und knurrte, doch nach einer Weile begann er zu beschnuppern, was heruntergefallen war. Plötzlich schnappte er die Beute und verschwand in der Dunkelheit, ehe der Mensch auch nur blinzeln konnte.
Der Mann kroch zurück unter die Zweige seiner Laubhütte und schlief hungrig ein, im Wissen, dass es morgen kein Frühstück geben würde. # dalej
-> dach

= nie_dal_chleba
~ los_psa = porzucony
Maciek ließ das Brot in der Tasche.
„Ich pfeif ja selber aus dem letzten Loch“, brummte er dem Hund zu, als wollte er sich vor ihm rechtfertigen.
Langsam zog er sich zurück und verkroch sich unter den Zweigen. Das Heulen erklang noch einmal, leiser als zuvor. Danach hörte er es in dieser Nacht nicht mehr. # dalej
-> dach


// ------------------------------------------------------------
//  Dach — dzień po nocy z wyciem. Przebieg zależy od losu psa.
// ------------------------------------------------------------
=== dach ===
{ chata_macka:
    - przy_lesie: # tlo: budowa_las
    - przy_mokradlach: # tlo: budowa_mokradla
    - else: # tlo: budowa_jezioro
}
# rozdzial: Prolog
# tytul: Das Dach
{ los_psa == nakarmiony: -> bez_chleba | -> z_chlebem }

= z_chlebem
~ ekwipunek -= chleb
Am Morgen wickelte Maciek das Päckchen aus und aß das letzte Stück Brot. Er kaute es langsam, Bissen für Bissen, damit es für den ganzen Tag reichte. Er trank Wasser dazu, klopfte sich die Hände ab und ging an die Arbeit.
-> trzcina ->
Er hieb das dichte Röhricht mit der Axt dicht über dem Boden ab, band es zu Garben und trug sie zur Hütte. Wieder und wieder, ohne Atempause. Der Rücken brannte ihm wie Feuer, doch der Haufen an der Wand wuchs.
Am Nachmittag gab es an dieser Stelle kein Schilf mehr, also zog er weiter. Er kehrte auf einem anderen Weg zurück – von der Seite, aus der in der vergangenen Nacht das Heulen gekommen war. Er ging, bis ihm plötzlich der Fuß in der Luft stockte.
Im Gras unter einem Strauch lag ein Hund. Mager, mit langer Schnauze und zottigem Fell. Er war steif, auf die Seite gekippt, mit halb offenen Augen. Die Fliegen saßen schon auf ihm.
{ los_psa == niespotkany:
    Maciek stand lange reglos über ihm. Erst jetzt begriff er, was in jener Nacht geheult hatte. Kein wildes Tier, kein Nachtmahr – nur ein hungriger, durchfrorener Welpe, der gerufen hatte, bis er verstummte.
    Es schnürte ihm die Kehle zu. Er dachte, dass er damals hätte hinausgehen können. Doch gleich antwortete er sich selbst: Und wenn er geradewegs einem Wolf in den Rachen gelaufen wäre? Im Dunkeln weiß man nicht, was in den Büschen lauert. Ein vernünftiger Mensch sitzt in seiner Laubhütte, die Axt zur Hand – und lebt.
    Er wandte den Blick ab, warf sich die Garbe auf den Rücken und ging zurück an die Arbeit. Den Hund ließ er liegen, wo er ihn gefunden hatte. # dalej
- else:
    Maciek sank auf die Knie. Er erinnerte sich an diese Augen im Mondlicht, an das halbherzige Knurren, an das Zittern des ganzen Körpers. Der Hund hatte gebettelt, und er hatte sich umgedreht und war gegangen.
    Ein Stück. Ein einziges hartes Stück Brot.
    „Ich hab ja selber aus dem letzten Loch gepfiffen“, sagte er laut, als klage ihn jemand an. „Hätte ich alles hergegeben, wer läge dann hier? Der Hund oder ich?“
    Die Worte klangen vernünftig, brachten aber keine Erleichterung. Maciek stand auf und ging, ohne noch einmal unter den Strauch zu blicken, zurück zum Schilftragen. Das tote Tier begrub er nicht. # dalej
}
-> uplyw_czasu

= bez_chleba
Am Morgen wachte Maciek hungrig auf. Unwillkürlich griff er in die Tasche und erinnerte sich, dass das Tuch leer war. Er seufzte, trank etwas Wasser und ging an die Arbeit.
-> trzcina ->
Er hieb das dichte Röhricht mit der Axt dicht über dem Boden ab, band es zu Garben und trug sie zur Hütte. Wieder und wieder, ohne Atempause.
Gegen Mittag, als er den schmerzenden Rücken streckte, bemerkte er in der Ferne eine Bewegung. Am Rand der Wiese, zwischen Grasbüscheln, strich ein Hund umher – derselbe, mager, mit langer Schnauze. Er schnüffelte, blieb stehen und sah zu ihm herüber, jederzeit bereit, davonzuflitzen.
Maciek lächelte, zum ersten Mal seit vielen Tagen.
„Du lebst“, brummte er.
In den folgenden Tagen kam der Hund wieder. Zuerst hielt er sich fern. Dann setzte er sich auf einen Hügel und sah stundenlang zu, wie sich der Mensch mit den Garben abmühte. Jeden Tag war er ein wenig näher – ein paar Schritte, nicht mehr, als prüfte er, wie viel er sich erlauben durfte. # dalej
-> uplyw_czasu

// Wspólny akapit o trzcinie na dach — skąd ją brał, zależy od miejsca chaty.
= trzcina
Die Wände standen schon gerade, die Sparren saßen fest. Blieb das Dach. Für die Deckung brauchte er Schilf – viel Schilf, mehr, als man beim Anblick der kleinen Hütte meinen mochte.
{ chata_macka:
    - przy_lesie: Das nächste wuchs am Rand des Moores, eine halbe Stunde von hier, und so musste er jede Garbe über die ganze Wiese schleppen.
    - przy_mokradlach: Es wuchs fast vor der Schwelle, dicht und hoch, nur musste man im kalten Schlamm bis zu den Knien danach waten.
    - else: Es wuchs rings um das ganze Ufer, höher als er, und rauschte bei jedem Windhauch wie jemand, der einem hinter dem Rücken etwas zuflüstert.
}
->->

= uplyw_czasu
Die Tage vergingen. Der Schnee taute ganz weg, selbst im tiefsten Schatten vor dem Wald. Die Erde dampfte nicht mehr und wurde warm unter dem nackten Fuß. Am Waldsaum blühten Buschwindröschen – weiß, dicht wie Raureif –, und auf den feuchten Flächen leuchteten golden die Sumpfdotterblumen.
Brot hatte Maciek schon lange keines mehr. Er lebte von dem, was er selbst fand oder was Andrzej ihm brachte. Im Moor sammelte er überwinterte Moosbeeren, sauer und runzlig, aber noch essbar. Von den Heckenrosen riss er die Hagebutten vom Vorjahr, hart wie Glasperlen. Auf der Wiese rupfte er Sauerampfer, den er roh kaute, und in feuchten Winkeln unter den Bäumen fand er Bärlauch. Er ritzte auch Birken an und trank den süßlichen Saft, der bis zum Morgen aus ihnen tropfte. Der Hunger wich nicht, doch man konnte mit ihm leben.
Das Dach wuchs von Tag zu Tag. Garbe an Garbe, Lage auf Lage. # dalej
-> wieczor


// ------------------------------------------------------------
//  Wieczór — stwór w zaroślach.
// ------------------------------------------------------------
=== wieczor ===
# tlo: zmierzch
An diesem Tag legte Maciek die Garben schon dicht unter dem First. Es fehlte nur noch ein Streifen, vielleicht zwei. Die Hände zitterten ihm vor Erschöpfung, und die Sonne war hinter den Horizont gerutscht und hatte am Himmel ein schmutziges Rot zurückgelassen.
Er stieg vom Dach und setzte sich neben die Laubhütte. Er wollte sich nur einen Augenblick ausruhen, solange es noch hell war. Er lehnte den Kopf an den Stamm, schloss die Augen…
…und schlief ein.
Die Stille weckte ihn.
Weder Grillen noch Frösche noch Wind waren zu hören. Ringsum versank alles im Nebel, dicht und weiß, der bis an die Knie reichte. Maciek wusste nicht, wie lange er geschlafen hatte. Er wusste nur, dass etwas nicht stimmte – er spürte es mit Leib und Seele, noch ehe sein Verstand es begriff.
Ein Laut erklang. Kein Heulen und kein Schrei, sondern etwas dazwischen: ein gedehntes, kehliges Stöhnen, das in das Krachen brechender Äste überging. Etwas sprang polternd ins Gestrüpp – ganz nah, nicht weit von der Laubhütte. # pokaz: oczy
Maciek fuhr hoch. Die Axt lag wie von selbst in seinen Händen. Er umklammerte sie so fest, dass ihm die Knöchel weiß wurden, und starrte in die Dunkelheit, aus der Schritte kamen – langsam, schwer, immer näher. # dalej
{ los_psa == nakarmiony: -> obrona | -> zdobycz }

= zdobycz
# tlo: zmierzch_zdobycz
Die Büsche teilten sich. Aus dem Nebel trat eine Gestalt. # pokaz: topielec
Sie überragte einen erwachsenen Mann um gut drei Köpfe. Sie stand auf zwei Beinen, doch gebückt, mit Armen, die in Krallen endeten und fast bis zum Boden hingen, und mit langen Haaren, aus denen der Sumpf troff. Sie hatte Menschengestalt – und war doch ganz und gar kein Mensch. Im Maul hielt sie etwas Großes, Schlaffes, das ihr zu beiden Seiten des Schädels herabhing.
Maciek erkannte es sofort, obwohl er es lieber nicht erkannt hätte. # pokaz: cialo
Die Gestalt biss zu. Ein Krachen ertönte – laut, nass, wie brechende trockene Äste, nur dass es keine Äste waren. Dann wandte sich das Wesen um und jagte zum {chata_macka == przy_mokradlach:nahen }Moor davon, so schnell, dass der Nebel hinter ihm wirbelte wie Wasser.
Maciek konnte sich nicht rühren. Er zitterte am ganzen Leib, kalter Schweiß rann ihm über den Rücken, und seine Beine waren wie aus Watte. Die Axt lag ihm schwer und nutzlos in den Händen. So stand er sehr lange, bis die Dunkelheit wieder still wurde.
-> strach_o_chate ->
Schließlich kroch er in die Laubhütte. Lange konnte er kein Auge zutun und horchte, bis er, erschöpft von Arbeit und Angst, einschlief. # dalej
-> zgliszcza

= obrona
# tlo: zmierzch_obrona
Die Büsche teilten sich. Im Dunkel glühten zwei Augen auf – hoch, zu hoch für einen Wolf oder ein Wildschwein. Die Gestalt stand im Gestrüpp auf zwei Beinen, gebückt, mit Armen, die fast bis zum Boden hingen, und mit langen Haaren, aus denen der Sumpf troff. Sie hatte Menschengestalt – und war doch ganz und gar kein Mensch. # pokaz: topielec
Maciek konnte sich nicht rühren. Er zitterte am ganzen Leib, kalter Schweiß rann ihm über den Rücken. Die Augen blickten geradewegs auf ihn und kamen langsam, sehr langsam näher.
Aus der Ferne drang Bellen herüber.
Der Hund schoss wie ein Pfeil aus der Dunkelheit und stellte sich zwischen Maciek und das Gestrüpp. Das Fell im Nacken sträubte sich ihm, er stemmte die Pfoten in den Boden und kläffte – laut, verbissen, ohne einen Augenblick Pause, obwohl er am ganzen Leib zitterte. Mager, jung, mit eingeklemmtem Schwanz – und er wich keinen Schritt zurück. # pokaz: pies
Die Augen hielten inne. Die Gestalt zögerte, stieß ein kehliges Zischen aus – und dann machte sie kehrt und jagte mit krachenden Ästen auf das {chata_macka == przy_mokradlach:nahe }Moor zu, sodass der Nebel hinter ihr wirbelte wie Wasser.
-> strach_o_chate ->
~ los_psa = oswojony
~ ekwipunek += pies_towarzysz
Es dauerte lange, bis Maciek wieder zu sich kam. Schließlich sank er neben der Laubhütte zu Boden und atmete schwer wie nach einem langen Lauf. Der Hund hörte auf zu kläffen. Zögernd kam er zu ihm, mit gesenktem Kopf – und wedelte mit dem Schwanz, so stolz auf sich wie niemand sonst auf der Welt.
Maciek streckte eine zitternde Hand aus. Das Tier beschnupperte sie und ließ sich dann streicheln.
„Guter Hund“, flüsterte er. „Guter“, hauchte er erleichtert.
In dieser Nacht krochen sie gemeinsam in die Laubhütte. Der Hund legte sich an den Eingang, den Kopf zum Gestrüpp gewandt. Maciek wachte noch lange und lauschte in die Dunkelheit, bis der Schlaf ihn übermannte. Aber er war nicht mehr allein. # tobolek # dalej
-> zgliszcza

// Tylko gdy chata stoi przy mokradłach — stwór uciekł właśnie tam.
= strach_o_chate
{ chata_macka == przy_mokradlach:
    Und dann wurde ihm klar, dass das Wesen nicht weit geflohen war. Es war im Sumpf verschwunden, ein paar Dutzend Schritte von der Laubhütte entfernt – dort, wo er selbst seit einem Monat schlief, aß und arbeitete. Vielleicht war es von Anfang an dort gewesen. Vielleicht hatte jede Nacht, während Maciek dem Gluckern des schwarzen Wassers lauschte, etwas auf der anderen Seite nach ihm gehorcht. „Dort baut man nicht. Dort ertrinkt man nur“, fielen ihm die Worte der Leute vom Brunnen ein. Zum ersten Mal seit dem Tag, an dem er mit dem Bau begonnen hatte, dachte er, dass er vielleicht einen Fehler gemacht hatte. Dass er vielleicht auf sie hätte hören sollen.
}
->->


// ------------------------------------------------------------
//  Zgliszcza — poranek po nocy z topielcem, dokończenie dachu,
//  rozmowa z Andrzejem.
// ------------------------------------------------------------
=== zgliszcza ===
~ zapiski += stwor_1
{ chata_macka:
    - przy_lesie: # tlo: chata_las
    - przy_mokradlach: # tlo: chata_mokradla
    - else: # tlo: chata_jezioro
}
# rozdzial: Prolog
# tytul: Die Brandstätte
Es begann zu dämmern. Maciek erwachte steif und durchfroren. Einen Augenblick lang wusste er nicht, ob das, was er in der Nacht gesehen hatte, wirklich geschehen war. Dann kehrte das Krachen der brechenden Äste in seine Erinnerung zurück, und ein Schauder überlief ihn.
{ los_psa == oswojony:
    Der Hund lag am Eingang der Laubhütte, den Kopf auf den Pfoten, und blickte zum Moor hinüber. Er schlief nicht mehr. Maciek hatte den Eindruck, dass er so bis zum Morgengrauen gewacht hatte.
- else:
    In der Laubhütte war es still. Maciek spähte hinaus. Das Gras beim Gestrüpp war in einem breiten Streifen niedergedrückt, mit Schlamm verklebt, und stank nach Sumpf{chata_macka != przy_mokradlach:, obwohl das Moor weit entfernt war}. Der Streifen führte {chata_macka == przy_mokradlach:zum schwarzen Wasser|in dessen Richtung}, und auf den Halmen dunkelten Blutstropfen. # pokaz: slady
}
Er ging zu seiner unfertigen Hütte und setzte sich auf die Schwelle. Er saß da und starrte vor sich hin. Die Gedanken wogten in ihm wie Nebel über dem Dorf. Fliehen. Alles zurücklassen, solange er noch lebte, und nie wiederkommen. Und andererseits – über einen Monat Arbeit, Blasen an den Händen, die letzten Scheiben Brot. Jeden Balken in diesen Wänden hatte er selbst behauen. Und wohin sollte er gehen? Auf fremdes Feld, wieder für eine Schüssel Grütze? Er hatte doch versprochen, seine Familie hierherzuholen. Dass sie ihr eigenes Dach haben würden.
# pytanie: Wozu wird sich Maciek entschließen?
*   [Bleiben. Er hat zu viel in diesen Ort gesteckt.]
    -> zostaje
*   [Zusammenpacken, was er hat, und fortgehen, solange noch Zeit ist.]
    -> odchodzi

= zostaje
Er stand auf, klopfte sich die Hose ab und blickte zum Dach hinauf. Ein Streifen Schilf fehlte noch, vielleicht zwei.
„Ich hab nicht gebaut, um jetzt davonzulaufen“, sagte er laut, damit ihn mehr hörte als nur {chata_macka == przy_lesie:der Wald|das Schilf}. # dalej
-> dach_gotowy

= odchodzi
~ chcial_odejsc = true
Er warf sich das Bündel über die Schulter und machte sich bergauf auf den Weg, zur Landstraße hin. Er marschierte schnell, ohne sich umzusehen. Erst auf dem Buchenkamm blieb er stehen und blickte hinab.
Die Hütte stand dort unten, klein und unfertig, mit einem Dach wie ein unvollendeter Satz. Seine Hütte.
{ los_psa == oswojony: Der Hund folgte ihm ein Stück, dann setzte er sich auf halber Höhe des Hangs und schaute – mal zu ihm, mal zurück –, als wartete er darauf, dass Maciek es selbst begriff. }
Maciek rührte sich nicht, bis die Sonne über dem Wald aufgegangen war. Dann kehrte er um. Nicht, weil er keine Angst mehr hatte. Er wusste nicht, wohin sonst, das war alles. # dalej
-> dach_gotowy

= dach_gotowy
Die letzten Schilfgarben legte er bis Mittag. Er band sie mit Bast fest, drückte sie mit Stangen an und stieg von der Leiter. Zum ersten Mal, seit er nach Zapadlina gekommen war, stand er vor einer fertigen Hütte – seiner eigenen, von der Schwelle bis zum First. # pokaz: dach
In dieser Nacht schlief er endlich darin. Die Wände rochen nach Harz und feuchtem Lehm, und durch einen Spalt in der Tür zwängte sich das Mondlicht.
Ein Bett gab es noch nicht, aber wenigstens hatte er ein eigenes Dach über dem Kopf. Hier, bei sich daheim, schlief er zum ersten Mal seit Wochen eine Nacht durch, ohne aufzuwachen.
{ los_psa == oswojony: Der Hund rollte sich auf der Schwelle zusammen und überließ sie von dieser Nacht an niemandem mehr. }
Am Morgen ging Maciek zu dem einzigen Menschen, dem er vertraute. Er musste es jemandem erzählen. # dalej
-> u_andrzeja

= u_andrzeja
# tlo: izba_andrzeja
Andrzejs Hütte stand auf einem Hügel, fern vom Wasser. In der Stube roch es nach Rauch, und es war eng. Staś, der Sohn des Bauern, saß auf der Bank am Tisch und schnitzte mit einem kleinen Messer an einem Stöckchen. Beim Anblick des Gastes grinste er von einem Ohr zum anderen.
Maciek begann ganz von vorn: mit der Stille, mit den Schritten und… mit der Gestalt, drei Köpfe größer als ein Mensch, mit Haaren, aus denen der Sumpf troff.
Andrzej hörte zu, bis er plötzlich auflachte.
„Das hast du dir vor Hunger eingebildet, Mensch. Schüttel das ab. Einen Monat bei Brot und Wasser – da sieht man auch den Erzengel Michael.“
Staś hörte auf zu schnitzen. Er starrte den Fremden mit offenem Mund und Angst in den Augen an.
„Ist das wahr?“, fragte er.
# pytanie: Was wird Maciek tun?
*   [Fest bestätigen, dass es wahr ist, und vor dem Jungen alles bis zum Ende erzählen. Er soll wissen, wovor er sich hüten muss.]
    ~ stas_zaufanie = true
    -> prawda_przy_chlopcu
*   [Lächeln und den Jungen abspeisen, es sei wohl nur ein Traum gewesen, aber Andrzej bitten, ihn hinauszuschicken, und unter vier Augen alles haarklein erzählen. Das ist nichts für ein Kind.]
    -> w_cztery_oczy

= prawda_przy_chlopcu
„Ja, es ist wahr. Soll der Kleine ruhig zuhören. Besser, er fürchtet sich, als dass er allein zum Sumpf geht und nie wiederkommt.“
Der Bauer sah seinen Sohn an, dann Maciek. Das Lächeln verschwand langsam aus seinem Gesicht.
-> dziad_opowiadal

= w_cztery_oczy
„Eigentlich… eigentlich war es wohl nur ein böser Traum“, antwortete er.
Er bat den Freund jedoch um ein Gespräch unter vier Augen. Der schickte Staś Wasser holen. Der Junge ging widerwillig hinaus und ließ die Tür einen Spalt offen. Keiner der Männer bemerkte es.
-> dziad_opowiadal

= dziad_opowiadal
„Drei Köpfe größer, sagst du“, meldete sich Andrzej schließlich, nun ohne zu lachen. „Und die Haare nass vom Sumpf.“ Eine ganze Weile drehte er eine leere Schüssel in den Fingern. „Mein Großvater hat von so etwas erzählt. Ich dachte, er wollte die Kinder schrecken.“
Maciek erzählte noch einmal, Schritt für Schritt, die ganze Nacht. # dalej
-> legenda


// ------------------------------------------------------------
//  Legenda o wiedźmie znad jeziora — opowiada Andrzej.
// ------------------------------------------------------------
=== legenda ===
# tlo: legenda
„Angeblich hat alles dort angefangen, am See, wo diese verkohlten Balken liegen.“ Andrzej senkte die Stimme. „Dort wohnte einmal eine Frau. Eine Kräuterfrau. Die Leute kamen zu ihr mit Schmerzen, Krankheiten und Fieber – und sie wies keinen ab. Aber mit der Zeit fuhr etwas in sie. Keiner weiß, warum. Sie redete nachts, aber nicht mit sich selbst – mit jemandem, den keiner sah. Die einen sagten, mit den Ertrunkenen, die anderen, mit dem Alten mit dem Moosshut, der vom Wald her bei ihr hereinschaute. Sie selbst sagte immer wieder, die Toten kämen vom Wasser herauf und erzählten ihr von einer schrecklichen Zukunft. Bald gingen ihr alle aus dem Weg, weil sie sich fürchteten.
„Danach wurde es im Dorf immer schlimmer. Die Milch wurde in den Eimern sauer, die kleinen Kinder wachten schreiend auf, das Gemüse faulte in der Erde. Auch Vieh kam um – zuerst ein Kalb, dann eine Kuh, dann ein ganzer Hühnerstall in einer Nacht. Die Leute sagten, das sei ihr Werk, und fingen an, sie eine Hexe zu nennen.
„Eines Nachts versammelten sich ein paar Bauern vor ihrer Hütte. Sie nagelten die Tür mit Brettern zu, während sie schlief, legten Stroh rings um die Wände und zündeten es an.“ # pokaz: chlopi, ogien
Andrzej verstummte für einen Augenblick.
„Mein Großvater sagte, sie hat bis zuletzt geschrien. Nicht vor Schmerz, Maciek. Sie hat alles verflucht – das Dorf, das Land, jeden, der hier wohnt und je wohnen wird. Dass keiner Frieden finden soll, bis die, die zu ihr kommen, hier alle bis auf den Letzten hingemordet haben. Man hörte sie auch stöhnen, als sie die Worte des Fluchs hervorstieß: ‚Die Knochen eurer Kinder sollen zerbrochen und ihr Blut getrunken werden…‘“ Andrzej fuhr sich mit der Hand übers Gesicht. „Und er sagte noch, dass am Waldrand, als die Hütte brannte, jemand Großes stand und zusah. Keiner ist hingegangen, um nachzusehen, wer.“
„Schrecklich… Und die, die sie verbrannt haben?“
„Keiner hat den Winter erlebt. Einer nach dem anderen verlor den Verstand. Sie redeten mit sich selbst, schliefen nicht, gingen im Dunkeln ans Wasser. Bis sie zuletzt alle ins Moor hineinwateten und nie wieder herauskamen. Die ihnen als Letzte begegnet sind, sagten, in ihren Augen sei etwas Seltsames gewesen. Als glimme in jedem ein Lämpchen.“ # pokaz: wegielki
Andrzej beugte sich zu ihm vor.
„Das sind ihre Augen, die nachts über dem Moor blinzeln. Keine Irrlichter. Sie stehen dort und spähen aus – und locken.“
{ chata_macka:
    - przy_mokradlach: Maciek spürte, wie ihm die Kälte den Magen zusammenkrampfte. Jede Nacht hatte er diese Lichtlein von seiner Schwelle aus gesehen. Er hatte gedacht, es sei faulendes Holz oder Sumpfdunst. Dass es nur Licht war.
    - nad_jeziorem: Maciek erbleichte. Diese Balken hatte er mit eigenen Händen ins Schilf gestoßen. Seine Hütte hatte er genau dort gebaut, wo jene gebrannt hatte.
}
{ stas_zaufanie:
    Staś saß reglos da, das unfertige Stöckchen in der Hand. # dalej
- else:
    Hinter der angelehnten Tür knarrte leise etwas. Als der Bauer hinausschaute, stand im Flur nur ein Eimer Wasser. Staś war schon weit draußen auf dem Hof. # dalej
}
-> zgliszcza_wiedzmy


// ------------------------------------------------------------
//  Zgliszcza chaty wiedźmy w trzcinach nad jeziorem.
// ------------------------------------------------------------
=== zgliszcza_wiedzmy ===
# tlo: zgliszcza
~ zapiski += zielarka_1
Auf dem Heimweg von Andrzej konnte Maciek nicht aufhören, an die Brandstätte zu denken.
{ chata_macka == nad_jeziorem: Jetzt, da er wusste, was es damit auf sich hatte, sah er die Reste jedes Mal, wenn er ins Schilf bei seinem Haus blickte. Schwarze, verkohlte Balken, die wie Rippen aufragten. }
Etwas in ihm drängte ihn, sie genau zu untersuchen, obwohl er Angst verspürte.
# pytanie: Was wird Maciek tun?
*   [Zur Brandstätte gehen und die Asche durchsuchen.]
    -> przeszukuje
*   [Sich von ihr fernhalten.]
    -> omija

= przeszukuje
~ przeszukal_zgliszcza = true
~ ekwipunek += figurka
Er teilte das Schilf mit der Axt und kniete sich neben die geschwärzten Balken. Die Asche war kalt, festgebacken und feucht. Lange wühlte er darin, bis seine Finger auf etwas Hartes stießen. # pokaz: maciek
Eine kleine Holzfigur, auf einer Seite angekohlt. Eine Menschengestalt mit zu langen Armen, die bis zu den Füßen reichten.
Maciek drehte sie in den Händen. Er dachte, er könnte sie vielleicht in der Stadt gegen etwas Essbares eintauschen, also behielt er sie.
{ los_psa == oswojony: Der Hund, der bis dahin am Ufer geschnüffelt hatte, wich zurück und knurrte leise seine Tasche an. }
Nach einer Weile bemerkte er in der Asche noch etwas.
„Unmöglich“, flüsterte er und zog einen geschwärzten Feuerstahl hervor. „Ob man damit die Hütte der Hexe angezündet hat?“
# pytanie: Wird Maciek den Feuerstahl mitnehmen?
*   [Ja – verflucht oder nicht, damit kann er Feuer machen und sich warme Mahlzeiten kochen.]
    ~ ekwipunek += krzesiwo
    -> wieczor_przy_chacie
*   [Nein – er will keinen Fluch riskieren, der auf ihn fallen könnte.]
    -> wieczor_przy_chacie

= omija
{chata_macka == nad_jeziorem:Dem Schilf an seiner eigenen Schwelle konnte er nicht ausweichen, aber fortan wandte er den Blick davon ab, wenn er aus der Hütte trat.|Er machte einen weiten Bogen um den See und blickte kein einziges Mal zum Schilf hinüber.} Manche Dinge rührt man besser nicht an. # dalej
-> wieczor_przy_chacie


// ------------------------------------------------------------
//  Wieczór przy chacie — ogień (jeśli ma krzesiwo) i plan wyprawy do miasta.
// ------------------------------------------------------------
=== wieczor_przy_chacie ===
{ chata_macka:
    - przy_lesie: # tlo: wieczor_las
    - przy_mokradlach: # tlo: wieczor_mokradla
    - else: # tlo: wieczor_jezioro
}
{ ekwipunek ? krzesiwo:
    Am Abend sammelte Maciek trockene Zweige und schichtete sie in einem Steinkreis vor der Hütte auf. Der Feuerstahl lag ihm seltsam schwer in der Hand. Eine Weile betrachtete er ihn und dachte daran, wessen Hände ihn zuletzt gehalten hatten. Dann schlug er einmal, zweimal, dreimal – und im Zunder glomm ein Funke auf. # pokaz: ogien
    Das Feuer loderte hell auf, und die Wärme schlug ihm so jäh ins Gesicht, dass ihm schwindlig wurde. Seit Wochen hatte er nichts Heißes mehr gegessen. Jetzt kochte er in einem Tontopf eine Suppe aus Brennnesseln und Sauerampfer. Er aß langsam, verbrannte sich die Lippen, und nichts auf der Welt hatte ihm je so gut geschmeckt.
    { los_psa == oswojony:
        Der Hund legte sich auf die andere Seite des Feuers. Die Flammen spiegelten sich in seinen Augen, und er starrte wie verzaubert hinein. # pokaz: pies
    }
- else:
    Der Abend brach kühl und dunkel herein. Maciek aß eine Handvoll rohen Sauerampfer und ein paar runzlige Moosbeeren, trank Wasser dazu und setzte sich auf die Schwelle.
}
Lange saß er da, blickte zur Landstraße hinüber und legte sich in Gedanken einen Plan zurecht. Die Hütte war fertig. Es war Zeit, in die Stadt aufzubrechen – Brot zu kaufen, Salz, vielleicht etwas Grütze.
{ ekwipunek ? figurka: Die Figur würde er zu verkaufen versuchen – vielleicht zahlte jemand für ein so sonderbares Stück. }
Und dann, sobald er wieder bei Kräften war, würde er seine Familie herbringen. In das Haus, das er mit eigenen Händen gebaut hatte. # dalej
-> droga_do_miasta


// ------------------------------------------------------------
//  Droga do miasta — kręta ścieżka między mokradłami, głos znad wody.
// ------------------------------------------------------------
=== droga_do_miasta ===
# tlo: sciezka
Er brach im Morgengrauen auf. Bis zur Stadt waren es sechs Stunden, und das erste Stück führte auf einem gewundenen Pfad durch das Moor bergauf, bis zum Buchenkamm. Er ging forsch aus, obwohl ihm vor Hunger der Magen knurrte. Er dachte an seine Frau und sein Söhnchen – daran, wie sie zum ersten Mal auf der Schwelle der neuen Hütte stehen würden. Die Sehnsucht schnürte ihm die Kehle zu.
{ los_psa == oswojony:
    Der Hund lief dicht an seiner Seite und wedelte fröhlich mit dem Schwanz. # pokaz: pies
}
Der Nebel lag tief über dem schwarzen Wasser. Der Pfad war schmal, stellenweise so aufgeweicht, dass man von Bult zu Bult springen musste. Maciek trat vorsichtig auf, mit gesenktem Kopf. Er erinnerte sich, was die Leute gesagt hatten: In dieses Wasser darf man nicht zu lange schauen.
Auf halbem Weg zwang ihn jedoch etwas, den Blick zu heben. Tief im Moor glomm ein blasses Lichtlein. Es war schon heller Morgen, und doch war es noch immer da. Es blinzelte langsam, gleichmäßig, als stünde dort jemand mit einem Lämpchen und spähte aus. # pokaz: swiatelko
Da hörte er seinen Namen.
„Maaaciek…“
Leise, gedehnt, vom Wasser her. Mit einer Stimme, die wie die seiner geliebten Frau klang.
So hatte sie ihn immer gerufen, wenn etwas los war. Aber sie war doch auf dem Vorwerk hinter der Stadt geblieben und sollte dort auf ihn warten… Vielleicht bildete er es sich nur ein. Oder vielleicht rief ihn der Sumpf zu sich.
# pytanie: Was wird Maciek tun?
*   [Der Stimme nachgehen – vielleicht braucht seine Frau Hilfe.]
    { los_psa == oswojony: -> ratunek | -> utoniecie }
*   [Sich nicht umdrehen und weitergehen – das kann unmöglich sie sein.]
    -> nie_odwraca_sie

= ratunek
# tlo: sciezka_po
~ pies_uratowal = true
Er machte einen Schritt vom Pfad, dann einen zweiten, ließ das Gestrüpp hinter sich und sprang über den zähen Schlamm. Der Sumpf gluckste und packte ihn mit eisigen Fingern an den Knöcheln. Er spürte, wie er ihm die Beine unter die Oberfläche zog. Da schnellte der Hund heran, schnappte mit den Zähnen nach seinem Tuchrock und riss ihn mit aller Kraft zurück. Maciek stürzte auf den Rücken und schrie auf. Das Lichtlein erlosch wie ausgeblasen, und irgendwo im Nebel erklang ein leises Kichern.
Er lag keuchend im Schlamm, und das Tier stand über ihm und knurrte zum Moor hin, bis sich der Nebel über dem Wasser schloss. # pokaz: upadek # dalej
-> na_grzbiecie

= utoniecie
// Bez psa: Maciek idzie za głosem i tonie — ale przeżywa. Ratuje się krzesiwem albo ratuje go Andrzej;
// bagno zabiera figurkę (zostaje tylko spokojne zakończenie) i zostawia na łydkach sine pręgi.
# tlo: sciezka_ratunek
~ pregi_na_lydkach = true
Er machte einen Schritt vom Pfad, dann einen zweiten, ließ das Gestrüpp hinter sich und sprang über den zähen Schlamm. Der Sumpf gluckste und packte ihn mit eisigen Fingern an den Knöcheln. Er spürte, wie er ihm die Beine unter die Oberfläche zog. Die Stimme kam immer näher – jetzt warm, vertraut, eine, nach der er sich seit Wochen sehnte.
„Maaaciek…“
Er stand reglos da, schon bis zu den Knien eingesunken, dann bis zur Hüfte. Er spürte keine Kälte. Er spürte nur, dass ein geliebter Mensch näher kam.
Erst als ihm das schwarze Wasser bis zur Brust reichte, begriff er. Er bäumte sich auf, doch etwas hielt ihn an den Waden fest – etwas, das Finger hatte. Das Lichtlein blinzelte dicht vor seinem Gesicht, und Maciek sah, dass es kein Lämpchen war. Es waren Augen – solche, von denen Andrzej erzählt hatte. # pokaz: oczy
{ ekwipunek ? krzesiwo:
    Da fiel ihm der Feuerstahl ein, den er seit jenem Tag unter dem Hemd trug. Mit klammen Händen zerrte er ihn samt Zunder hervor und schlug – einmal, zweimal – dicht über dem Wasser. Der dritte Funke sprang mitten in die Augen. Im Wasser zischte etwas wie ein Holzscheit, das man ins Feuer wirft, der Griff um die Waden lockerte sich, und das Lichtlein erlosch wie ausgeblasen. Maciek warf sich nach hinten, griff nach den Bulten, riss das Gras mit den Fäusten aus, bis er sich endlich auf den Pfad hinausgekämpft hatte. # pokaz: iskry, ratunek
    { ekwipunek ? figurka:
        ~ ekwipunek -= figurka
        ~ figurka_w_bagnie = true
        Auf dem Pfad spürte er, dass die Tasche leicht war. Die angekohlte Figur musste ihm im Sumpf herausgerutscht sein. Einen Augenblick lang meinte er, sie noch zu sehen – eine kleine, dunkle Form, die langsam in die Tiefe sank –, dann war nichts mehr da. # pokaz: figurka
        Er ging nicht zurück, um sie zu holen. Um nichts in der Welt.
    }
- else:
    ~ uratowal_andrzej = true
    „Maciek! Pack an!“
    Gleich neben ihm klatschte eine lange Stange ins Wasser. Auf dem Damm stand Andrzej, in schlammverschmierten Bastschuhen, einen Korb über der Schulter – im Morgengrauen hatte er die Reusen im Flutwasser nachgesehen. Maciek klammerte sich mit beiden Händen daran. Der Nachbar stemmte sich dagegen und ächzte, und der Sumpf zog nach seiner Seite, bis er endlich mit einem widerwilligen Schmatzen losließ. Das Irrlicht blinzelte noch einmal und erlosch. # pokaz: andrzej, ratunek
    „Ich hab’s dir gesagt“, keuchte Andrzej, als sie beide im Schlamm lagen. „Hör nicht auf Stimmen vom Wasser.“
    { ekwipunek ? figurka:
        ~ ekwipunek -= figurka
        ~ figurka_w_bagnie = true
        Auf dem Damm spürte Maciek, dass die Tasche leicht war. Die angekohlte Figur musste ihm im Sumpf herausgerutscht sein. Einen Augenblick lang meinte er, sie noch zu sehen – eine kleine, dunkle Form, die langsam in die Tiefe sank –, dann war nichts mehr da. # pokaz: figurka
        „Es hat sich das Seine geholt“, brummte Andrzej und spuckte über die linke Schulter aus.
    }
}
Auf beiden Waden, dort, wo ihn das Ding gehalten hatte, blieben ihm blaue Striemen – lang, schmal, fünf auf jeder Seite. Sie vergingen weder an diesem Tag noch bis an sein Lebensende. # dalej
-> na_grzbiecie

= nie_odwraca_sie
Er biss die Zähne zusammen und ging weiter, Schritt für Schritt, ohne den Kopf zu wenden. Die Stimme rief noch zweimal, immer leiser. Dann verstummte sie. # dalej
-> na_grzbiecie

= na_grzbiecie
# tlo: zapadlina
// Kto poszedł za głosem (pies go wyciągnął albo bagno puściło), już się odwrócił — dla niego inny tekst.
{ pies_uratowal || pregi_na_lydkach:
    Den Rest des Weges bergauf ging er wie im Traum – {pregi_na_lydkach:nass bis zur Brust|nass bis zur Hüfte}, voller Schlamm, mit {pregi_na_lydkach:Waden, an denen er noch immer fremde Finger spürte|Knöcheln, an denen er noch immer den eisigen Griff des Sumpfes spürte}.{ los_psa == oswojony: Der Hund wich ihm keinen Schritt von der Seite und blickte sich immer wieder nach dem Wasser um.}
    Auf dem Buchenkamm setzte er sich auf einen Stein, und erst dort hörten seine Hände auf zu zittern. Unten lag Zapadlina – still, vom Nebel bedeckt wie von einem Leichentuch. Irgendwo dort stand seine Hütte.
- else:
    Auf dem Buchenkamm wagte Maciek endlich, sich umzusehen. Unten lag Zapadlina – still, vom Nebel bedeckt wie von einem Leichentuch. Irgendwo dort stand seine Hütte.
}
Dann zog er auf der Landstraße weiter zur Stadt. # dalej
-> miasto


// Koniec prologu — dalej rozdział pierwszy z Jaromirem.
=== prolog_ciag_dalszy ===
# ozdobnik
_Ende des Prologs._ # dalej
-> rozdzial_pierwszy
