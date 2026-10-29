// ------------------------------------------------------------
//  Rozdział pierwszy – Lato. Dzieciństwo Jaromira, około pół
//  wieku po prologu. Przebieg zależy od zakończenia prologu:
//    figurka_u_staruchy – dom na pagórku obok Stasia, milczący ojciec
//                         (z psem żyje jeszcze babka Marianna);
//    inaczej            – chata dziadka Maćka (las / mokradła / jezioro),
//                         ojciec opowiada legendy jak bajki.
// ------------------------------------------------------------

=== rozdzial_pierwszy ===
// Czy Maciek miał krzesiwo – babka Marianna może je oddać wnukowi w rozdziale 4.
~ krzesiwo_dziadka = ekwipunek ? krzesiwo
// Nowy bohater – Jaromir zaczyna z pustym tobołkiem (przedmioty Maćka zostają w prologu).
~ ekwipunek = ()
# nowy_tobolek
# tlo: zapadlina_lato
# rozdzial: Erstes Kapitel
# tytul: Sommer
Das Zapadlina, in dem Jaromir aufwuchs, war schon ein anderes Dorf als jenes, in das vor Jahren sein Großvater mit dem Bündel hinabgestiegen war. Es gab mehr Häuser – neun waren es jetzt, über Hänge und Wiesen verstreut wie Körner, die man mit der Hand aufs Feld wirft. Der Wald war den Äxten ein wenig gewichen, die Äcker reichten weiter, und über das Moor führte ein ordentlicher Steg aus Eichenbohlen. An den Wegen standen viele Bildstöcke, stets mit frischen Blumen geschmückt. Der Nebel liebte dieses Tal noch immer und blieb im Sommer länger darin als bis zum Sonnenaufgang. Auch die Gegend hatte sich verändert: Hinter dem Buchenkamm, eine Wegstunde von Zapadlina entfernt, war Bukowiec gewachsen – ein größerer und wohlhabenderer Ort, mit Mühle, Schenke und Schule und gleich neben der Schule mit einem hölzernen Kirchlein, bei dem sich ein alter Pfarrer niedergelassen hatte. In die Stadt fuhr man nur noch zu Jahrmärkten und großen Kirchweihfesten.
{ figurka_u_staruchy:
    Jaromir wohnte in der Hütte auf dem Hügel, neben dem Hof des alten Staś, mit dem sein Vater wie mit einem Bruder aufgewachsen war. Das Haus war klein, aber warm, mit weiß gekalkten Wänden und einem Schilfdach, und von der Schwelle aus sah man ganz Zapadlina – Felder, Wiesen, den See und den dunklen Strich des Waldes im Osten.
- else:
    { chata_macka:
        - przy_lesie: Jaromir wohnte in der Hütte am Waldrand, derselben, die Großvater Maciek gebaut hatte. Der Vater hatte eine zweite Stube und eine Scheune angebaut. Unter dem Fenster wuchs ein Apfelbaum, gepflanzt am Tag, an dem der Sohn geboren wurde, und an der Nordseite standen wilde Pflaumenbäume, die oft kleine, grüne, unreife Früchte abwarfen. Hinter dem niedrigen Zaun begann der Wald – im Sommer roch er nach Harz und Pilzen, und an heißen Nachmittagen spendete er Schatten, in dem man bis zur Dämmerung liegen konnte.
        - przy_mokradlach: Jaromir wohnte in der Hütte am Moor, derselben, die Großvater Maciek gebaut hatte – auf einem steinernen Sockel, dem in einem halben Jahrhundert weder Wasser noch Frost etwas angehabt hatten. Der Vater hatte eine zweite Stube und eine Scheune angebaut. Unter dem Fenster wuchs ein Apfelbaum, gepflanzt am Tag, an dem der Sohn geboren wurde, und an der Nordseite standen wilde Pflaumenbäume, die oft kleine, grüne, unreife Früchte abwarfen. Hinter dem niedrigen Zaun erstreckten sich Wiesen, über die Störche stolzierten, und in der Dämmerung drang vom Flutwasser her ein Froschkonzert herüber, so laut, dass es selbst die Grillen übertönte.
        - else: Jaromir wohnte in der Hütte am See, derselben, die Großvater Maciek gebaut hatte. Der Vater hatte eine zweite Stube und eine Scheune angebaut. Unter dem Fenster wuchs ein Apfelbaum, gepflanzt am Tag, an dem der Sohn geboren wurde, und an der Nordseite standen wilde Pflaumenbäume, die oft kleine, grüne, unreife Früchte abwarfen. Von der Schwelle bis zum Wasser waren es kaum ein paar Dutzend Schritte, und im Sommer legte der Junge sie so oft am Tag im Laufschritt zurück, dass er im Gras einen eigenen Pfad austrat.
    }
}
Der Vater, Dobrosław, war damals schon ein Mann in den Jahren, mit ergrauendem Bart und von der Arbeit rissigen Händen. { figurka_u_staruchy: Er sprach wenig und lachte noch seltener. Wenn er sich abends auf die Schwelle setzte, schaute er lange zum Moor hinüber, als hielte er dort nach etwas Ausschau. Seinen Sohn liebte er auf seine Weise – schweigend, mit einer schweren Hand auf der Schulter und dem besten Stück Fleisch, das er ihm in die Schüssel schob. | Er scherzte gern und erzählte abends Geschichten, die er selbst von seinem Vater gehört hatte – von Ungeheuern aus den Sümpfen und von der Kräuterfrau vom See. Jaromir lauschte ihnen mit angehaltenem Atem, obwohl er wusste, dass es nur Märchen waren. }
Die Mutter, Agnieszka, war gut fünfzehn Jahre jünger als ihr Mann. Sie roch nach Brot und Ofenrauch, sang bei jeder Arbeit und konnte niemals lange böse sein.
{ figurka_u_staruchy && los_psa == oswojony:
    In der Ecke der Stube saß auf einem Schemel Großmutter Marianna, gebeugt und still. Manchmal strich sie dem Enkel über den Kopf und blickte ihn an, als sähe sie in ihm jemand anderen.
}
Zu Hause war der Junge selten. Der Sommer gehörte ihm – ganz und gar, von der ersten Hitze bis zur Ernte –, und seine Tage verliefen fast gleich, und doch glich keiner dem vorigen. # dalej
-> poranek

= poranek
# tlo: poranek
Ihn weckten das Krähen des Hahns und ein Lichtstreif, der sich durch den Spalt im Fensterladen zwängte und sich ihm wie ein goldenes Band übers Gesicht legte. Eine Weile lag er noch unter dem Federbett und horchte, wie die Mutter am Ofen hantierte – wie das Wasser in den Töpfen brodelte, wie das geschürte Feuer unter der Herdplatte knisterte, wie die Dielen unter ihren Schritten knarrten. Aus der Stube zog der Duft von Milch und frisch gebackenem Brot herein.
Dann fiel ihm ein, dass Sommer war, und er sprang von seinem Lager auf, als hätte er sich verbrannt.
Das Frühstück aß er fast im Stehen. Eine dicke Scheibe Brot mit Butter, ein Becher Milch frisch von der Kuh, noch warm, manchmal Quark. Die Mutter schüttelte lächelnd den Kopf.
„Nun setz dich doch, mein Junge. Keiner nimmt dir das weg. Der Tag reicht schon noch, um mit den anderen Kindern zu spielen.“
# pytanie: Was wird Jaromir tun?
*   [Sich hinsetzen und in Ruhe essen, wie die Mutter bittet.]
    Er seufzte und hockte sich auf den Rand der Bank, und zur Belohnung bekam er einen Kuss auf die Stirn und einen Löffel Honig aufs Brot. Er aß rasch, aber bis zum letzten Bissen, und wenn der Becher leer war, rief er nur: „Ich geh zu den Nachbarn!“, und schon war er fort. # pokaz: jaromir
    -> poranek_dalej
*   [Die Brotscheibe schnappen und hinauslaufen.]
    -> poranek_bieg

= poranek_bieg
Doch er wischte sich schon den Mund am Ärmel ab und war an der Tür. Bevor die Mutter ihm sagen konnte, er solle aufpassen, rief er nur: „Ich geh zu den Nachbarn!“, und schon jagte er über den Hof und scheuchte die Hühner auf, die ihm gackernd zwischen den Füßen davonstoben. # pokaz: jaromir
-> poranek_dalej

= poranek_dalej
Das Gras war in der Frühe nass vom Tau und kalt, und die Schuhe waren bald durchweicht. Es roch so, wie es nur zu dieser Stunde riecht – frisch, grün, ein wenig wie eine aufgeschnittene Gurke. Über den Wiesen hingen noch Nebelfetzen, aber die Sonne vertrieb sie schon, und in jedem Tropfen an den Halmen entzündete sich ein winziger Funke. Lerchen stiegen in den Himmel und sangen so hoch oben, dass man sie unmöglich erspähen konnte.
Bei Staś’ Leuten wartete man schon auf ihn. Franek, der älteste Enkel des Bauern, war groß gewachsen und vier Jahre älter als Jaromir. Sein Bruder Antek, zwei Winter jünger als er, stocherte mit einem Zweig in der Erde und zog eine Rinne, durch die er Wasser von einer Pfütze in die andere leiten wollte. Bald kam vom See her Hanka gelaufen, die Tochter des Schmieds, und ihr Zopf hüpfte ihr auf dem Rücken. # pokaz: dzieci
„Was machen wir heute?“, fragte Franek, obwohl alle wussten, dass er ohnehin selbst entscheiden würde. # dalej
-> wojna

= wojna
# tlo: laka_bitwa
Meistens begann es mit Krieg.
Jeder hatte sein Schwert – einen geschälten Stecken aus Hasel oder Weide, mit zugespitztem Ende. Jaromir trug seins im Gürtel, und wenn er sich davon trennen musste, stellte er es immer an seinen Platz zurück: in die Ecke der Scheune. Im ganzen Dorf gab es keine geradere Waffe – glatt vom ständigen Halten und dunkel vom Schweiß der Hand. { figurka_u_staruchy: Der Vater half ihm wortlos, das Schwert nachzuspitzen, abends an der Schwelle. | Der Vater hatte ihm geholfen, dieses Schwert zu schnitzen, und dabei gelacht, er sehe damit aus wie ein Ritter von einem Jahrmarktsbild, und mit so einer Waffe könne man wohl sogar einen Drachen besiegen. }
Der Feind war das Unkraut. An den Feldrainen und Gräben wuchsen seine unzähligen Heere: Haarstrang mit Dolden so groß wie Teller, Disteln, gespickt mit violetten Köpfen, und Brennnesseln, die einem bis an die Ohren reichten. Die Kinder stürmten mit einem Geschrei auf die Wiesen, von dem die Spatzen aufstoben. Die Stöcke pfiffen durch die Luft, Stängel knackten saftig, und stachlige Köpfe flogen nach allen Seiten. # pokaz: bitwa
Nach jeder Schlacht kam die Zeit, die Wunden zu versorgen. Nicht selten waren es blutig aufgeschürfte Knie, Waden voller Quaddeln von den Nesseln, zerkratzte Unterarme und Hände. Hanka wusste gegen alles ein Mittel: Sie legte Wegerichblätter auf die Stellen und ließ sie festhalten, bis das Brennen nachließ. Keiner weinte – nun ja, vielleicht manchmal Antek, aber nur ein kleines bisschen, und gleich darauf tat er so, als liefe ihm Schweiß in die Augen.
Danach ließen sie sich ins Gras fallen, außer Atem und glücklich, und lagen mit ausgebreiteten Armen auf dem Rücken. Über ihnen zogen weiße Wolken, in denen jedes der Kinder etwas anderes las – ein Pferd, ein Schiff, ein altes Weib mit Besen, einen Bären. Es roch nach warmer Erde, Kamille und zerdrücktem Kraut. Irgendwo ganz nah brummte eine Hummel, und Heuschrecken schnellten unter den Händen hervor wie Funken aus dem Lagerfeuer. # dalej
-> luki

= luki
# tlo: luki
Wenn sie die Schwerter satthatten, kamen die Bögen an die Reihe.
~ ekwipunek += nozyk
Am besten waren die aus Hasel, die am Waldrand dicht wuchs – gerade, biegsam und kräftig. Franek suchte einen Ast von passender Länge aus – so lang, wie er selbst groß war –, und Jaromir schnitzte ihn mit dem kleinen Messer zurecht, das er vom Vater zum Namenstag bekommen hatte. Man musste aufpassen, nicht an einer Stelle zu viel Holz abzunehmen, sonst brach der Bogen beim ersten Spannen. Als Sehne diente eine dicke Schnur, der Mutter aus dem Korb stibitzt, oder – an besseren Tagen – ein Stück Pechdraht vom Schuster.
Die Pfeile machten sie ebenfalls aus Hasel, nur aus viel dünnerer. Eiserne Spitzen gab es keine – dafür spitzten sie das Holz so zu, dass es stach wie ein Dorn, und ans andere Ende kamen Fahnen aus Papier oder aus Federn, die sie auf den Höfen im ganzen Dorf auflasen.
Das Ziel war eine Strohgarbe auf dem Feldrain, mit einem Kreis aus Ruß bemalt. Die Sehne summte am Ohr wie eine Wespe, der Pfeil pfiff kurz, und dann ertönte ein dumpfes „Pock“, wenn die Spitze sich ins Stroh bohrte. Die Geschosse flogen ziemlich gerade, trafen den Boden oder das Ziel, manchmal segelten sie auch hoch in den Himmel. Am besten konnte es Hanka. Sie kniff ein Auge zu, schob die Zungenspitze vor und verfehlte kein einziges Mal – und die Jungen, auch wenn sie es um nichts in der Welt zugegeben hätten, bewunderten sie dafür mehr als für alles andere. # pokaz: hanka
# pytanie: Wird Jaromir sich mit Hanka messen?
*   [Ja – sie zum Wettschießen herausfordern.]
    ~ celny_strzal = true
    Er verlor natürlich. Hanka traf ohne Fehl, und seine Pfeile landeten meistens im Korn. Aber am nächsten Tag kam er noch vor ihr zum Feldrain und übte, bis ihm die Finger taub wurden.
    -> luki_dalej
*   [Nein – allein üben, abseits der anderen.]
    Er ging ans Ende des Feldrains und schoss auf einen alten Baumstumpf, bis ihm der Arm wehtat. Keiner sah, wie oft er fehlte, und so war es am besten.
    -> luki_dalej

= luki_dalej
Einmal traf Jaromir mitten in den Kreis. Den Rest des Tages lief er so stolz herum, dass er sogar das Mittagessen vergaß und die Mutter ihn viele Male rufen musste. # pokaz: trafienie # dalej
-> lato_baza

= lato_baza
# tlo: baza
Der wichtigste Ort der Welt aber war das Versteck.
Es stand – oder vielmehr hing – in der Krone eines alten Holunders am Rand der Wiese, so ausladend, dass sich in seinem Schatten ein paar Kühe hätten unterstellen können. Gebaut hatten sie es einen ganzen langen Sommer lang. Die Bretter schleppten sie heran, wo immer sie welche fanden: aus einem eingefallenen Schweinestall, von einem Zaun, den keiner mehr ausbesserte, {figurka_u_staruchy:aus der Scheune des alten Staś, der den Kopf schüttelte, es aber nicht verbot|aus der Scheune von Jaromirs Vater, der so tat, als sähe er nichts}. Sie nagelten sie mit Nägeln fest, die sie zwischen zwei Steinen gerade geklopft hatten, und wo keine mehr da waren, banden sie sie mit Schnur. Nach oben führte eine Leiter aus Sprossen, die am Stamm festgeknotet waren. Im Versteck roch es immer nach sonnenwarmem Holz und Holunderblüten, so süß, dass einem nach einer Stunde der Kopf schwirrte. Durch die Ritzen zwischen den Brettern fielen dünne Sonnenstreifen, in denen der Staub tanzte, und wenn der Wind wehte, schaukelte die ganze Krone und knarrte, als wäre das Versteck ein Boot auf aufgewühltem Wasser.
Drinnen hatten fünf Platz, wenn sie eng saßen – zu viert war es also ganz bequem. Sie hatten dort alles, was man braucht: eine Schatzkiste mit bunten Steinchen, Federn und Muscheln, und für den Fall eines Überfalls – einen Köcher mit Pfeilen, einen Bogen und die „Schwerter“.
# pytanie: Was wird Jaromir in die Schatzkiste legen?
*   [Eine Muschel aus dem See, weiß wie Milch.]
    ~ skarb_jaromira = muszelka
    Er wickelte sie in ein Klettenblatt und legte sie ganz nach unten.
    -> baza_dalej
*   [Eine Eichelhäherfeder, blau wie der Himmel nach einem Gewitter.]
    ~ skarb_jaromira = pioro
    Er legte sie obenauf, damit sie gleich beim Öffnen des Deckels leuchtete.
    -> baza_dalej
*   [Einen rostigen Nagel, der – wie er behauptete – einst aus einer echten Ritterrüstung gefallen war.]
    ~ skarb_jaromira = gwozdz
    Er hüllte ihn in ein Läppchen wie eine Reliquie. Franek prustete los, aber Antek betrachtete den Nagel voller Ehrfurcht.
    -> baza_dalej

= baza_dalej
Am schönsten war es dort bei einem Wolkenbruch. Das Sommergewitter kam plötzlich, als dunkle Wand hinter dem Wald hervor, und bevor die Kinder es nach Hause schafften, fielen die ersten schweren Tropfen. Dann kletterten sie ins Versteck und saßen zusammengekauert unter dem Bretterdach, durch das trotzdem ein wenig Wasser sickerte. Die Blätter rauschten wie das Meer, das keines von ihnen je gesehen hatte, Donner rollte über das Dorf, und die Luft roch nach Regen, nassem Holz und blühendem Holunder. Nach dem Gewitter dampfte die Wiese, und am Himmel stand ein Regenbogen. # pokaz: burza # dalej
-> lato_jezioro

= lato_jezioro
# tlo: jezioro_lato
Wenn die Sonne in den Zenit stieg und über den Feldern die Hitze zu flimmern begann, zog die ganze Schar zum See. Sie liefen um die Wette über die Wiese, warfen unterwegs die Hemden ab und stürzten sich mit Gejohle hinein, dass die Spritzer bis zum Himmel flogen. Am Ufer war es flach und sandig, das Wasser von der Sonne gewärmt wie in einem Zuber, und kleine Fische kitzelten die Füße. Franek tat sich groß und sprang kopfüber von einem umgestürzten Stamm, und Antek saß in der Untiefe und fing Kaulquappen mit den Händen. Es roch nach Binsen und warmem Schlamm, und über der Oberfläche schossen Libellen hin und her. # pokaz: kapiel
{ figurka_u_staruchy: Jaromir ging nie tiefer hinein als bis zum Gürtel. Der Vater hatte es ihm einmal verboten, kurz und so streng, dass der Junge nicht zu fragen wagte, warum. Ebenso entschieden hatte er ihm untersagt, sich dem Moor und dem Schilf an der Westseite zu nähern, wo angeblich einst eine Hütte gestanden hatte. | Am Westufer, im Röhricht, ragten noch die schwarzen Stümpfe verkohlter Balken aus dem Boden. Die Kinder machten einander damit Angst, indem sie sich die Geschichte von der verbrannten Kräuterfrau erzählten – dieselbe, die Jaromirs Vater abends spann –, aber im hellen Sonnenschein fürchtete sich keiner. }
{ figurka_u_staruchy:
    An diesem Tag schwamm Franek ins tiefe Wasser hinaus und rief, Jaromir solle zu ihm kommen.
    # pytanie: Wird Jaromir dem Vater gehorchen?
    *   [Am Ufer bleiben.]
        Er schüttelte den Kopf und rührte sich nicht aus dem seichten Wasser. Von weitem hörte er: „Feigling!“, aber bald hatten alle es vergessen und planschten weiter.
        -> jezioro_dalej
    *   [Zu Franek hinüberschwimmen.]
        ~ odwaga_jaromira = true
        Er machte einen Schritt, dann noch einen. Das Wasser reichte ihm bis zur Brust und wurde plötzlich eiskalt, und etwas Glitschiges streifte seine Wade. Er wich so hastig zurück, dass er sich verschluckte. Niemandem erzählte er davon – und dem Vater schon gar nicht.
        -> jezioro_dalej
- else:
    An diesem Tag wettete Franek, dass sich keiner traue, die verkohlten Balken anzufassen.
    # pytanie: Wird Jaromir die Wette annehmen?
    *   [Sie anfassen – er ist doch kein Feigling.]
        ~ odwaga_jaromira = true
        Er bahnte sich einen Weg durch das Schilf und legte die Hand auf den höchsten von ihnen. Das Holz war kalt, obwohl die Sonne seit dem Morgen brannte, und der Junge zog die Hand schneller zurück, als er vorgehabt hatte. Alle hielten es für die kühnste Tat dieses Sommers.
        -> jezioro_dalej
    *   [Mit den anderen im Sand bleiben.]
        Er zuckte die Achseln und rührte sich nicht vom Fleck. Franek ging allein, berührte das schwarze Holz mit der Fingerspitze und kam im Laufschritt zurück, wobei er so tat, als habe er es gar nicht eilig.
        -> jezioro_dalej
}

= jezioro_dalej
Nach dem Baden trockneten sie sich im Gras, auf dem Bauch liegend, und aßen, was der Wald hergab: Walderdbeeren, Heidelbeeren, von denen Zähne und Zungen schwarz wurden, und die säuerlichen Blätter des Ampfers, zur Erfrischung gekaut. Manchmal brachte einer eine Gurke von zu Hause mit oder ein Stück Käse, und sie teilten es gerecht, in so viele Teile, wie Münder da waren. Im Garten der Wójciks reiften die Kirschen, und der Bauer schlief nach dem Mittagessen so fest, dass er nicht hörte, wie jemand die Äste schüttelte.
Die Hitze legte sich auf alles wie ein warmes Federbett. Die Grillen zirpten so laut, als hinge von ihrem Spiel ab, ob die Sonne überhaupt unterginge. Von den Schwaden, die die Bauern mit dem Rechen wendeten, stieg Heuduft auf, und vom Feldrain wehte die Süße von Quendel und Klee herüber. Bienen summten in den Linden, Schmetterlinge setzten sich auf die Blüten, und die Zeit verging so langsam, dass der Tag kein Ende zu haben schien. # dalej
-> lato_wieczor

= lato_wieczor
# tlo: wieczor_lato
Und doch endete er jedes Mal. Die Sonne glitt hinter den See, die Schatten auf der Wiese wurden länger, bis sie von einem Rand zum anderen reichten, und der Himmel über dem Wasser nahm die Farbe reifer Himbeeren an. Die Luft kühlte ab und roch nach gemähtem Gras und Rauch aus den Schornsteinen, und aus dem Moor meldeten sich die ersten Frösche – erst einer, dann Dutzende, bis das ganze Tal quakte wie ein einziger großer Chor. Dann drangen von einem Hof nach dem anderen die Rufe herüber.
„Jaroooomir! Nach Haaaause!“ # pokaz: matka
# pytanie: Wird Jaromir sofort heimkehren?
*   [Gleich nach Hause laufen.]
    Die Stimme der Mutter trug über das ganze Dorf. Der Junge ließ nicht auf sich warten: Er verabschiedete sich von den anderen, verabredete sich für morgen – immer für morgen, immer am hölzernen Pfosten, der die Grenze von Vaters Feld bezeichnete, gleich nach dem Frühstück – und lief über die Wiese, auf der die ersten Glühwürmchen aufleuchteten. # pokaz: jaromir
    -> wieczor_dalej
*   [Noch ein Weilchen spielen.]
    -> wieczor_zwlekanie

= wieczor_zwlekanie
Die Stimme der Mutter trug über das ganze Dorf. Der Junge tat so, als höre er nichts, bis sie ein zweites Mal rief – und beim dritten Mal schwang darin ein Ton mit, der nichts Gutes verhieß. Dann verabschiedete er sich von den anderen, verabredete sich für morgen – immer für morgen, immer am hölzernen Pfosten, der die Grenze von Vaters Feld bezeichnete, gleich nach dem Frühstück – und lief über die Wiese, auf der die ersten Glühwürmchen aufleuchteten. # pokaz: jaromir
-> wieczor_dalej

= wieczor_dalej
Er kam schmutzig heim, mit Gras im Haar, Erde unter den Nägeln und verschorften Knien. Die Mutter seufzte, packte ihn am Ohr und führte ihn zum Wasserzuber, und dann stellte sie ihm eine Schüssel Rührei hin oder Dickmilch mit Kartoffeln.
{ figurka_u_staruchy:
    Der Vater saß ihm gegenüber und schwieg. Wenn er fertig war, tat er immer dasselbe: Er stand auf, prüfte, ob die Tür fest verriegelt war, und erst dann ging er schlafen.
    { los_psa == oswojony:
        Großmutter Marianna erhob sich dann von ihrem Schemel, zeichnete dem Enkel ein Kreuzchen auf die Stirn und flüsterte etwas, das der Junge nicht verstand.
    }
- else:
    Der Vater trug, wenn der Abend warm war, die Bank vor die Hütte und erzählte. Von Großvater Maciek, der mit nichts als einer Axt nach Zapadlina herabgestiegen war, von dem Ungeheuer aus den Sümpfen, von der Stimme, die vom Wasser her gerufen hatte. Jaromir schlief meist auf halbem Weg ein, den Kopf auf Vaters Knien, und hörte nie das Ende.
}
Danach lag er auf dem Strohsack unter dem Fenster und lauschte der Nacht. Die Frösche quakten im Flutwasser, im Stall schnaubte ein Pferd, irgendwo weit weg bellte ein Hund. Durch den Spalt im Fensterladen sah man die Sterne – dicht wie Tau auf der Wiese.
Er schlief lächelnd ein, in dem Gedanken, dass ihn morgen wieder ein warmer Sommertag erwartete, voller Spiel von früh bis spät. # dalej
-> zloty_dzien

= zloty_dzien
# tlo: zapadlina_lato
Solcher Tage gab es ohne Zahl. Später verschwammen sie ihm in der Erinnerung zu einem einzigen langen, goldenen Streifen, der nach Heu und warmer Erde roch, voller Sonne, Lachen und Bienengesumm. Der Sommer verging, und Jaromir wuchs – immer höher reichte er an die Holunderzweige, immer weiter flog sein Pfeil, immer seltener brauchte er die Leiter, um ins Versteck zu klettern. # dalej
-> rozdzial_pierwszy_ciag_dalszy


// Koniec rozdziału pierwszego – dalej rozdział drugi.
=== rozdzial_pierwszy_ciag_dalszy ===
# ozdobnik
_Ende des ersten Kapitels._ # dalej
-> rozdzial_drugi
