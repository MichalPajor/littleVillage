// ------------------------------------------------------------
//  Rozdział czwarty – Marzanna. Przedwiośnie, Jaromir ma dziesięć
//  lat. Topienie Marzanny (coś wciąga kukłę pod wodę), prawda
//  o nocy z prologu, przewrócona kapliczka, ludzie Urbaniaka.
//  Prawda zależy od zakończenia prologu:
//    figurka_u_staruchy i pies   – umierająca babka Marianna;
//    figurka_u_staruchy bez psa  – ojciec, który przeżył pod podłogą;
//    inaczej                     – ojciec, który kiedyś się z tego śmiał.
// ------------------------------------------------------------

=== rozdzial_czwarty ===
# tlo: stodola_marzanna
# rozdzial: Viertes Kapitel
# tytul: Marzanna
Im März begann es endlich von den Dächern zu tropfen, schmutzige Rinnsale zogen über die Felder, und nachts knackte und ächzte das Eis auf dem See so, dass die Hunde in den Höfen heulten. Das Moor erwachte als Erstes – schwarzes Wasser brach durch den Schnee, bei Tagesanbruch stieg Dunst darüber auf, und aus dem Flutwasser am Steg kam wieder das Blubbern, das man lange Monate nicht gehört hatte.
Am fünften Sonntag der Fastenzeit kamen die Kinder aus ganz Zapadlina zusammen, um Marzanna, die Strohpuppe des Winters, zu ertränken. So hielt man es seit jeher: Wer den Winter aus dem Dorf trug und ins Wasser warf, der holte den Frühling herbei und vertrieb Krankheit, Hunger und alles Böse.
Die Puppe richteten sie in der Scheune bei Staś’ Leuten her. Franek, der seit Weihnachten nicht mehr zur Schule ging und seinem Großvater auf dem Feld half, drehte aus Stroh einen Rumpf und band ihn an einen Stock. Antek brachte alte Lumpen seiner Mutter – einen Rock und ein Kopftuch –, und Jaromir drückte der Strohgestalt zwei Kohlestückchen als Augen in den Kopf und malte ihr mit Ruß einen Mund. Hanka fädelte Eierschalen auf einen Faden, damit Marzanna eine Kette um den Hals hatte. Die Puppe sah schrecklich aus – und genau darum ging es. # pokaz: kukla
Das Mädchen griff nach seinem Zopf und begann, das rote Band zu lösen.
„Ich geb ihr meins“, sagte sie. „Soll sie alles mitnehmen, was böse ist.“
{ poszedl_po_wstazke:
    Jaromir dachte an den Alten mit dem Moosshut und an das Rot, das in seiner Hand geflattert hatte.
- else:
    Jaromir erinnerte sich an den Morgen, als ebendieses Band an ihrem Zaun gehangen hatte, zur Schleife gebunden von einer Hand, die niemand gesehen hatte.
}
# pytanie: Wird Hanka der Marzanna ihr Band geben?
*   [Hanka das Band anbinden lassen.]
    ~ wstazka_marzanny = true
    Hanka knüpfte das Band um den Strohhals der Puppe und trat zurück, um sie zu betrachten. Das Rot auf dem grauen Stroh sah aus wie eine Wunde. # pokaz: wstazka # dalej
    -> topienie
*   [Sie überreden, es nicht herzugeben.]
    „Tu das nicht“, bat Jaromir. „Es ist schon einmal aus dem Wald zurückgekommen.“
    Hanka sah ihn seltsam an, steckte das Band aber in die Schürzentasche. Die Puppe blieb grau, nur die Kette aus Eierschalen klapperte leise, wenn jemand sie berührte. # dalej
    -> topienie

= topienie
# tlo: rozlewisko
Am Nachmittag zogen sie los. Vorneweg trug Franek Marzanna auf dem Stock, hoch erhoben, damit alle sie sahen, hinter ihm gingen die Kinder aus dem ganzen Dorf, und am Schluss ein paar Weiber, die so taten, als kämen sie nur zum Zuschauen. Sie sangen aus vollem Hals:
„Marzanna, Marzanna, du Jungfer vom Schnee,
geh tief in das Wasser, komm nicht bald, ade!“
Der Schnee schmatzte unter den Bastschuhen, und in der Luft roch es zum ersten Mal seit Monaten nach nasser Erde.
Unterwegs zerrte immer wieder jemand am Stroh der Puppe oder schlug sie mit einer Rute, denn so musste es sein – der Winter durfte nicht in Frieden gehen.
Sie kamen an das Flutwasser am Steg. Das Eis war dort fast ganz geschmolzen, nur an den Ufern hielt sich noch eine graue, löchrige Kruste, und in der Mitte stand schwarzes Wasser, glatt wie Glas. Hanka klammerte sich mit eiskalten Fingern an Jaromirs Ärmel, und er spürte, wie ihm das Herz bis in den Hals schlug. Franek holte aus und schleuderte Marzanna mit aller Kraft weit hinaus. # pokaz: rzut
Die Puppe klatschte aufs Wasser und schaukelte. Einen Augenblick lang trieb sie an der Oberfläche, und der Rock breitete sich um sie aus wie eine Blüte. Plötzlich, mit einem einzigen Ruck, ging sie unter. Nicht so, wie ein Ding versinkt, das sich vollgesogen hat. Sondern als hätte jemand von unten an ihr gerissen. # pokaz: tonie
Die Kinder verstummten. Wo sie verschwunden war, platzten ein paar große, träge Blasen, und Ringe liefen auseinander.
„Jetzt nichts wie weg“, flüsterte Hanka. „Und nicht umdrehen!“
{ ekwipunek ? ksiega:
    Jaromir wusste es auch. In Herrn Ignacys Buch hatte er gelesen, dass den, der sich nach der ertränkten Marzanna umdreht, die Krankheit noch vor Ostern einholt.
- else:
    „Wer sich umdreht, den holt die Krankheit noch vor Ostern ein“, fügte eines der Weiber hinzu.
}
Alle stoben davon. Hinter Jaromirs Rücken platschte es – laut, schwer, als tauchte etwas Großes aus dem Wasser auf. # pokaz: ucieczka
# pytanie: Was wird Jaromir tun?
*   [Sich umdrehen.]
    ~ obejrzal_sie = true
    Er drehte sich um. Nur für einen Wimpernschlag.
    Am Steg, im schwarzen Wasser, hielt etwas Marzanna fest – eine graue Hand mit Krallen, verklebt von Wasserkraut. Über der Oberfläche, höher, als ein erwachsener Mann hätte reichen können, glommen zwei Augen, grünlich und trüb wie die Lichter über dem Moor.{ wstazka_marzanny: Langsam wickelten die Krallen das rote Band um sich.} Dann zog sich der Arm zurück, und das Wasser schloss sich spurlos. # pokaz: reka
    Noch in derselben Nacht bekam Jaromir Fieber. Drei Tage lag er darnieder, und die Mutter legte ihm nasse Lappen auf die Stirn und konnte nicht begreifen, warum er im Fieberwahn nach dem Bildstock am Steg rief. # dalej
    -> prawda
*   [Weiterlaufen und sich nicht umdrehen.]
    Er drehte sich nicht um. Er rannte, Hankas Hand fest in seiner, bis zu den ersten Zäunen, und hinter ihnen, vom Moor her, wehte ein leises Kichern – so, wie jemand lacht, der ein Geschenk bekommen hat. Über dem Sumpf flammten ein paar blasse Irrlichter auf. „Das sind die, die die Hexe verbrannt haben“, keuchte eines der Weiber. „Wer so einem Irrlicht nachgeht, der kommt nicht mehr heim.“ # pokaz: chichot
    ~ zapiski += ogniki_1
    { wstazka_marzanny:
        Am nächsten Tag ging Hanka mit aufgelöstem Zopf umher und griff immer wieder danach, als suchte sie etwas. # dalej
    - else:
        Lange noch sprach keiner von beiden ein Wort. # dalej
    }
    -> prawda

= prawda
{ figurka_u_staruchy && los_psa == oswojony: -> prawda_babki }
{ figurka_u_staruchy: -> prawda_ojca_sieroty }
-> prawda_ojca

= prawda_babki
# tlo: babka_lozko
In diesem Frühjahr stand Großmutter Marianna nicht mehr auf. Seit Lichtmess lag sie auf dem Bett hinter dem Ofen, immer zierlicher und leichter, als nähme die Erde sie Stück für Stück zu sich. Als sie von Marzanna hörte, ließ sie den Enkel rufen.
„Setz dich“, flüsterte sie. Die Hand, mit der sie sein Handgelenk umfasste, war trocken und kalt wie ein Blatt. „Dein Vater wird’s dir nicht sagen. Er bringt es nicht fertig. Also sag ich es dir, solange ich noch kann.“
Sie erzählte ihm alles. {zona_wie:Wie Großvater Maciek in der Brandstätte am See eine angekohlte Figur gefunden und sie in der Stadt einer alten Frau mit Kapuze verkauft hatte.|Wie Großvater Maciek verändert aus der Stadt heimgekehrt war und nicht sagen wollte, was an ihm nagte.} Von dem Wesen, das ein paar Nächte später die Tür ihrer Hütte aufbrach. Von dem Hund, der sich als Erster darauf stürzte, und von der Axt, die dem Wesen tief in den Arm fuhr. Davon, wie der Großvater auf dem Lehmboden sein Leben aushauchte, den Kopf in ihrem Schoß, während der kleine Dobrosław die ganze Nacht unter dem Fußboden kauerte und sich die Hände auf die Ohren presste.
„Was da im Wasser war, das war er“, sagte sie. „Er ist nicht gestorben. Seinesgleichen stirbt nicht. Die warten. Wer ohne Pfarrer ertrinkt, kommt weder in den Himmel noch in die Hölle, sondern bleibt im Wasser. Die Alten sagten, so einer hält auf dem Grund die Seelen anderer Ertrunkener unter umgestülpten Tontöpfen und dreht sie nachts einen nach dem anderen um, wenn er nach seiner Habe sieht. Und wenn ein Topf zerspringt, steigt die Seele als Blase an die Oberfläche.“
Die Großmutter wies in die Ecke hinter dem Bett. Unter einem alten langen Bauernrock lag eine Axt mit abgegriffenem, dunklem Stiel. Auf der Klinge, obwohl sie blank geputzt war, sah man noch immer rostbraune Schlieren. # pokaz: siekiera
{ krzesiwo_dziadka:
    ~ ekwipunek += krzesiwo
    ~ krzesiwo_od_babki = true
    „Die hat ihm gehört. Du bekommst sie, wenn du groß bist.“ Unter dem Kissen zog sie einen kleinen, geschwärzten Feuerstahl hervor. „Und den nimm schon jetzt. {zona_wie:Er lag in der Asche, zusammen mit jener Figur. Der Großvater hat ihn bis zuletzt bei sich getragen.“|Woher er ihn hatte, hat er mir nie gesagt. Aber er hat ihn bis zuletzt bei sich getragen.“} # pokaz: krzesiwo
- else:
    „Die hat ihm gehört. Du bekommst sie, wenn du groß bist.“
}
„Versprich mir eines“, fügte sie nach einer Weile hinzu. „Dass du niemals in den Wald gehst. Ganz gleich, wer dich ruft.“
-> obietnica

= prawda_ojca_sieroty
# tlo: prog_noc
{obejrzal_sie:Als Jaromir nach dem Fieber wieder aufstand|Als Jaromir vom Flutwasser zurückkam}, fragte der Vater nichts. Den ganzen Abend schwieg er. Erst als die Mutter eingeschlafen war, nahm er den Sohn beim Arm, führte ihn hinaus auf die Schwelle und setzte sich im Dunkeln neben ihn.
„Ich war so alt wie du“, begann er, und die Stimme, seit langer Zeit ungebraucht, brach ihm. „Vielleicht jünger.“
Er erzählte alles. Von der Nacht, in der etwas die Tür ihrer Hütte aufbrach. Von den Brettern über seinem Kopf, durch die das Mondlicht sickerte, von den Schreien – erst des Vaters, dann der Mutter – und von etwas Warmem, das ihm auf die Haare tropfte. Von dem Schnüffeln dicht über ihm, röchelnd wie bei einem Hund vor dem Bau.
„Was da im Wasser war, das war er“, sagte er. „Darum prüfe ich den Riegel. Jede Nacht, seit bald sechzig Jahren.“
„Versprich mir eines“, bat er. „Dass du niemals in den Wald gehst. Ganz gleich, wer dich ruft.“
-> obietnica

= prawda_ojca
# tlo: izba_wieczor
Als der Vater hörte, was am Flutwasser geschehen war, lachte er nicht. Zum ersten Mal sah Jaromir, dass eine Geschichte von dem Wesen dem Vater kein Lächeln ins Gesicht trieb.
„Dein Großvater hat mir dasselbe erzählt“, sagte er leise und drehte den Becher zwischen den Fingern. „{obejrzal_sie:Von einer Hand aus dem Wasser.|Von etwas, das einen von unten in die Tiefe zieht.} Von einer Stimme, die aus den Sümpfen ruft. Von der Kräuterfrau, die in ihrer Hütte am See verbrannt ist.{ pregi_na_lydkach: Er hat mir die Striemen an seinen Waden gezeigt, fünf auf jeder Seite{ uratowal_andrzej: – und gesagt, wäre der alte Andrzej mit seiner Stange nicht gewesen, gäbe es weder ihn noch mich}. Ich hab geglaubt, die sind von Blutegeln.} Ich hab gelacht. Ich dachte, er will mir Angst machen, damit ich nicht allein ans Wasser laufe.“ Er schwieg lange. „Und vor seinem Tod hat er meine Hand gedrückt und geflüstert: ‚Gib acht auf die Bildstöcke, Dobruś. Das waren keine Märchen.‘“
„Er hat auch gesagt, wer ohne Pfarrer ertrinkt, der bleibt im Wasser und hält dort die Seelen anderer Ertrunkener unter Tontöpfen fest. Wenn ein Topf zerspringt, steigt die Seele als Blase an die Oberfläche.“ Der Vater stellte den Becher ab. „Weißt du noch, die Blasen am Steg?“
„Versprich mir eines“, bat er. „Dass du niemals in den Wald gehst. Ganz gleich, wer dich ruft.“
-> obietnica

= obietnica
# pytanie: Wird Jaromir es versprechen?
~ zapiski += (stwor_2, zielarka_2)
*   [Versprechen.]
    ~ obietnica_bor = true
    „Ich verspreche es“, sagte Jaromir.
    { figurka_u_staruchy && los_psa == oswojony:
        Er wusste noch nicht, wie schwer es ihm einmal fallen würde, dieses Wort zu halten.
        -> smierc_babki
    }
    Er wusste noch nicht, wie schwer es ihm einmal fallen würde, dieses Wort zu halten. # dalej
    -> kapliczka
*   [Schweigen.]
    Jaromir antwortete nicht. Er dachte an Hanka und an das rote Band,{ poszedl_po_wstazke: an den Alten mit dem Moosshut,} an die Stimme, die ihn im Winter {figurka_u_staruchy:aus dem Nebel über dem Feld|zwischen den Bäumen hervor} gerufen hatte, und brachte dieses eine Wort nicht über die Lippen.
    { figurka_u_staruchy && los_psa == oswojony:
        Die Großmutter sah ihm lange in die Augen und seufzte dann, als hätte sie genau das erwartet.
        -> smierc_babki
    }
    Der Vater sah ihm lange in die Augen und nickte dann, als hätte er genau das erwartet. # dalej
    -> kapliczka

= smierc_babki
Marianna starb wenige Tage später, am Gründonnerstag. Sie hatte gebeten, neben ihrem Mann begraben zu werden, auf dem Friedhof in der Stadt, und der Vater erfüllte ihren Wunsch, obwohl die Fahrt mit dem Sarg auf dem Wagen einen ganzen Tag dauerte. # pokaz: swieca # dalej
-> kapliczka

= kapliczka
# tlo: kapliczka_przewrocona
Nach Ostern begann die Erde abzutrocknen, und an den Feldrainen leuchteten die ersten Sumpfdotterblumen gelb. Eines Nachmittags, auf dem Heimweg von der Schule über den Pfad am Wald, sahen Jaromir und Antek{ ekwipunek ? szczeniak: sowie der Hund {imie_psa}, der Jaromir jetzt überallhin folgte,} den Bildstock am Waldsaum im Gras liegen. Beide blieben wie angewurzelt stehen. In der Stille, die plötzlich eintrat, hörte man nur, wie die Tropfen von den Zweigen auf das Dächlein fielen, das im Schlamm lag.
Es war einer der ältesten in Zapadlina, noch {figurka_u_staruchy:in der Kindheit|in der Jugend} des Vaters errichtet. Den hölzernen Pfahl hatte man samt der Grasnarbe aus der Erde gerissen, das Dächlein war abgebrochen und lag ein paar Schritte weiter, und die Heiligenfigur – grau vom Regen, das Antlitz abgewetzt von {figurka_u_staruchy:einem halben Jahrhundert|Jahrzehnten} – steckte mit dem Gesicht nach unten im Schlamm. Das Gras ringsum war aufgewühlt, als hätte jemand den Bildstock zu den Bäumen hin geschleift und auf halbem Weg liegen lassen.
{ ekwipunek ? kora:
    Am Fuß hatte jemand eine Spirale ins Holz gekratzt – genau wie die an der Kiefer beim Pfad. Jaromir musste sein Stück Rinde nicht aus der Tasche holen, um das zu wissen. # pokaz: spirala
}
{ ekwipunek ? szczeniak:
    {imie_psa} sträubte das Fell und knurrte zum Wald hin, während er auf steifen Beinen zurückwich. # pokaz: pies
}
„Wir müssen es den Großen sagen“, flüsterte Antek.
# pytanie: Was werden die Jungen tun?
*   [Den Bildstock mit Antek wieder aufrichten, ohne die Großen.]
    ~ kapliczka_podniesiona = true
    Der Pfahl war schwer, nass und glitschig vom Schlamm. Sie stemmten sich zu zweit dagegen, bis er endlich in der ausgerissenen Grube stand und schwankte wie ein Betrunkener. Jaromir legte Steine darum und trat die Erde mit den Stiefeln an, und Antek wischte die Heiligenfigur mit dem Ärmel ab, stellte sie unter das Dächlein und nagelte sie von Neuem an, wobei er mit einem flachen Flusskiesel klopfte. # pokaz: podniesiona
    Als sie fertig waren, wehte vom Wald her ein Wind – kalt, obwohl der Tag warm war –, und einen Augenblick lang rauschten alle Bäume am Waldsaum zugleich. Dann wurde es still. # pokaz: wiatr
    Als der Vater davon erfuhr, ging er den Bildstock ansehen und kam mit einem Gesicht zurück, in dem Jaromir nicht zu lesen vermochte.
    „Das habt ihr recht gemacht“, sagte er nur. # dalej
    -> urbaniak
*   [Losrennen und die Großen holen.]
    Sie rannten, so schnell sie konnten, ins Dorf. Der Vater und der alte Staś gingen noch am selben Abend hinaus, mit Laterne und Spaten. Sie kamen nach Mitternacht zurück, voller Schlamm und schweigsam. # pokaz: latarnia
    Der Bildstock lag nicht mehr dort, wo die Jungen ihn gesehen hatten. Man fand ihn erst einige Dutzend Schritte weiter, zwischen den ersten Fichten, kopfüber in die Erde gerammt. Die Männer stellten ihn an seinem alten Platz wieder auf und gruben ihn tiefer ein als zuvor.
    „Da will einer keine Bildstöck’ hier haben“, brummte Staś, als er glaubte, dass ihn keiner hörte. # dalej
    -> urbaniak

= urbaniak
# tlo: urbaniak
Im Mai, als die Störche schon im alten Nest auf dem Schmiededach saßen, fuhr eine Britschka in Zapadlina ein. Ihr entstieg ein beleibter Herr in städtischem Mantel und Hut, und hinter ihm zwei Männer mit Äxten und einer langen Knotenschnur. Den ganzen Tag gingen sie den Waldrand ab – maßen, schrieben etwas auf und kerbten alle paar Schritte weiße Zeichen in die Eichenrinde. # pokaz: znaki
Jaromir beobachtete sie hinter dem Zaun hervor. Jede dieser Kerben wirkte wie eine frische Wunde.
„Herr Urbaniak“, sagte der Vater, als die Britschka davongefahren war. „Der Gutsherr hat ihm den Holzschlag verkauft. Es kommt ein Sägewerk her.“ # pokaz: odjazd
In dieser Nacht drang zum ersten Mal seit Jahren ein Heulen aus dem Wald – lang, gedehnt, weder wölfisch noch hündisch. Die Leute schlossen die Fensterläden und bekreuzigten sich verstohlen, und Jaromir lag im Dunkeln, das Federbett bis unter die Augen gezogen, und lauschte, bis es verstummte. # pokaz: noc # dalej
-> rozdzial_czwarty_ciag_dalszy


// Koniec rozdziału czwartego i darmowej części – dalej rozdział piąty, już w pełnej wersji.
=== rozdzial_czwarty_ciag_dalszy ===
# ozdobnik
_Ende des vierten Kapitels._ # pelna_wersja # dalej
-> rozdzial_piaty
