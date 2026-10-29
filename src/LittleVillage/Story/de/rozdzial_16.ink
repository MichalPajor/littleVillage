// ------------------------------------------------------------
//  Rozdział szesnasty — W głąb boru. Jaromir wchodzi do boru po Marysię.
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
# rozdzial: Sechzehntes Kapitel
# tytul: Tief in den Wald
Siebzig Jahre, nachdem Großvater Maciek mit dem Bündel über der Schulter nach Zapadlina herabgestiegen war, blickte Jaromir zum ersten Mal zum Wald hinüber – nicht so, wie man vom Feld aus hinsieht, von der sicheren Seite des Zauns, sondern so, wie man einen Weg ansieht, den man gehen muss.
Er stand am Rand des Jungholzes, die Axt in der Hand, die Tasche umgehängt. Marysias Band hatte er sich ums Handgelenk gewickelt, um es bei jeder Bewegung zu spüren.
{ obietnica_bor:
    Einst hatte er {figurka_u_staruchy && los_psa == oswojony:der Großmutter auf dem Sterbebett|dem Vater} versprochen, nie in den Wald zu gehen, ganz gleich, wer ihn riefe. Dreizehn Jahre lang hatte er dieses Wort gehalten. Den ersten Schritt zwischen die Kiefern setzte er vorsichtig, das Herz im Hals, und fühlte, dass er etwas zerbrach, das sich nicht mehr zusammenfügen ließ.
- else:
    {poszedl_po_wstazke:Seit er als Junge wegen Hankas Band zwischen die Fichten gegangen war, hatte er sich nie tiefer hineingewagt als ein paar Dutzend Schritte.|Nie hatte er sich tiefer hineingewagt als ein paar Dutzend Schritte, bis dorthin, wo die Vögel verstummten.} Versprochen hatte er das niemandem – die Füße kehrten von selbst um, wenn die Bäume zu dicht zu stehen begannen.
}
{ droga_do_boru:
    Auf Urbaniaks Schneise trieben aus jedem Stumpf helle Schösslinge, und die Fahrspuren waren mit Moos überwachsen, obwohl im Herbst noch Wagen darauf gefahren waren. Bei den ersten großen Kiefern endete der Weg, und dahinter gab es nichts mehr außer dem Wald.
- else:
    Er kämpfte sich durch das Jungholz, das in der Brandnacht bis ans Dorf herangerückt war. Die Fichten standen so dicht, dass er sich seitwärts hindurchzwängen musste, und die Nadeln rieselten ihm in den Kragen.
}
{ ekwipunek ? szczenie_psa:
    Hinter den letzten Zäunen holte ihn der Hund ein – er musste sich Hanka an der Schwelle losgerissen haben. Jaromir brachte es nicht übers Herz, ihn fortzujagen. Er hielt ihm Marysias Holzschuh hin; der Hund beschnupperte ihn, winselte dünn und lief voraus. # pokaz: pies
}
Hinter den ersten Kiefern wurde alles still. Die Nadeln fielen senkrecht von den Zweigen, ohne zu rascheln, denn es gab keinen Wind, der sie fortgetragen hätte. Die Wiese hinter ihm troff vor Tau, hier aber war der Boden trocken und warm, das Moos knirschte unter den Stiefeln wie ausgedörrtes Leder, und in der Luft hing ein Geruch nach Harz und sonnenwarmem Holz, der im Hals kratzte.{ rada_przed_borem == rada_planetnika: „Wo es nicht regnet“, erinnerte sich Jaromir und schloss die Finger fester um den Axtstiel.} # pokaz: igly
Er ging geradeaus, bis die Sonne hoch stand. Endlich traten die Fichten auseinander, und er sah die nasse Wiese, {pani_w_zbozu_noc == z_pochodniami:den zertrampelten Roggen|{pole_zbite_gradem:das vom Hagel zerschlagene Korn|{pani_w_zbozu_noc == gonil_babe:den niedergetretenen Roggen|den Roggen}}} und den Wacholder am Rand des Jungholzes. Er stand wieder an derselben Stelle, von der er aufgebrochen war. Er versuchte es ein zweites Mal, die Sonne zur Rechten. Und ein drittes. Jedes Mal geleitete ihn der Wald wieder hinaus vors Dorf – sanft, höflich, so wie man einen Gast zur Pforte bringt, den niemand eingeladen hat.{ ekwipunek ? szczenie_psa: Bei jedem Versuch blieb der Hund ein wenig hinter ihm, die Nase an der Rinde, und folgte Jaromir nur widerwillig, winselnd.}
# pytanie: Wie wird Jaromir durch den Wald kommen?
*   [Die Kleider mit dem Futter nach außen anziehen, wie Herr Ignacy es gelehrt hat.]
    ~ wejscie_do_boru = ubranie_na_lewo
    # tlo: bor_suchy
    Er zog den langen Rock und das Hemd aus und streifte sie mit den Nähten nach außen wieder über.{ glos_w_lesie == kozuch: Genau wie in jener Winternacht, als er neun Jahre alt gewesen war und {figurka_u_staruchy:im Nebel auf dem Feld|im Schnee unten am Wald} gestanden hatte.} Als er weiterging, kehrte der Pfad nicht mehr um. Der Wald nahm ihn auf wie einen der Seinen – die Zweige bogen sich von selbst zur Seite, und das Moos lenkte seine Schritte.
    { ekwipunek ? szczenie_psa:
        ~ ekwipunek -= szczenie_psa
        ~ pies_pobiegl_sam = true
        Der Hund beschnupperte ihn von Weitem und sträubte das Fell wie bei einem Fremden. Dann lief er allein weiter, Marysias Geruch nach, und verschwand zwischen den Stämmen. Jaromir rief ihn, bis er heiser war. # pokaz: pies_ucieka # tobolek
    }
    Er ging lange. Gegen Abend setzte er sich auf eine Wurzel und versuchte, sich an Marysias Gesicht zu erinnern – und erschrak. Er sah das Band, sah die Holzschuhe, hörte ihr Lachen, aber das Gesichtchen verschwamm ihm wie ein Spiegelbild im Wasser, in das jemand einen Stein geworfen hat. Er kniff die Lider zusammen und flüsterte der Reihe nach: Sommersprossen auf der Nase, das Zähnchen, das ihr schief wuchs, das Grübchen in der linken Wange. Der Wald hielt ihn für einen der Seinen – und holte heimlich aus ihm heraus, was nur Jaromir gehörte. # dalej
*   [Den Weg mit der Axt an den Stämmen markieren.]
    ~ wejscie_do_boru = naciete_pnie
    # tlo: bor_suchy
    Alle paar Stämme hieb er eine tiefe Kerbe ein, in Gesichtshöhe. Das Harz, das aus den Wunden quoll, war kalt wie Brunnenwasser und so zäh, dass es die Klinge verklebte – er musste sie mit dem ganzen Körpergewicht aus dem Holz reißen. Nach einer Stunde sah er sich um. Die Kerben, die er zu Anfang geschlagen hatte, wuchsen vor seinen Augen zu – die Rinde schob sich darüber wie ein Augenlid. # pokaz: naciecia
    Aber es genügte: Wenn der Pfad umkehren wollte, sah er die frischen Wunden vor sich und ging weiter. Irgendwo aus der Tiefe des Waldes, sehr weit weg, drang ein Stöhnen zu ihm – tief, langgezogen, als stürze ein alter Baum. Oder als zische jemand sehr Großes vor Schmerz. Jaromir blieb nicht stehen, aber seine Hände begannen zu zittern und hörten bis zum Abend nicht mehr auf. # dalej
*   { ekwipunek ? szczenie_psa } [Dem Hund vertrauen – eine Nase verirrt sich nicht.]
    ~ wejscie_do_boru = za_psem
    # tlo: bor_suchy
    „Such“, flüsterte Jaromir und hielt dem Hund noch einmal den Holzschuh hin. „Such Marysia.“
    Diesmal rief er ihn nicht zurück. Der Hund lief mit der Nase am Boden, im Zickzack, blieb manchmal stehen und schnupperte an der Rinde in der Höhe einer Kinderhand. Die Pfade bogen ab, gabelten sich und kehrten um, aber der Hund hörte nicht auf sie – er kletterte durch Wurzelgruben, zwängte sich unter gefallenen Stämmen hindurch, immer geradewegs der Fährte nach. Jaromir folgte ihm, mit zerrissenen Kleidern, zerschunden, den Mund voller Nadeln. # pokaz: pies_trop
    Gegen Abend blieb der Hund an einer umgestürzten Kiefer stehen und jaulte auf. An einem Aststumpf hing ein Fetzen weißen Leinens – von Marysias Hemdchen. Und darunter, auf dem Moos, hatte jemand eine Handvoll Walderdbeeren hingelegt, ordentlich, eine neben der anderen, wie für ein Kind. Sie dufteten so süß, dass Jaromir das Wasser im Mund zusammenlief; seit dem Morgen hatte er nichts gegessen.{ rada_przed_borem == rada_jagny: „Was du im Wald findest, das iss nicht“, erinnerte er sich und ballte die Faust, bis sich die Nägel in die Handfläche gruben.} Er zerrte den Hund mit Gewalt weg. Erst da sah er, dass das Tier Blut an den Pfoten hatte – das Moos um die Erdbeeren war scharf wie zerstoßenes Glas. # pokaz: poziomki # dalej
*   { rada_przed_borem == rada_planetnika } [Dorthin gehen, wo über dem Wald keine Wolken sind.]
    ~ wejscie_do_boru = pod_czystym_niebem
    # tlo: bor_suchy
    Statt auf die Pfade zu achten, schaute er nach oben. Über dem Wald zogen graue, schwere Wolken – doch zwischen den Kronen, weit weg, klaffte ein Loch klaren Himmels, um das die Wolken auseinanderwichen, so wie die Strömung einen Stein umfließt. Er hielt auf dieses Loch zu, mochte es auch durch Wurzelgruben und Gestrüpp gehen, quer über jeden Pfad, und der Wald konnte ihn nicht hinausgeleiten, denn er folgte keinem seiner Wege. # pokaz: niebo
    Aber der Nacken schmerzte ihm vom Hochrecken des Kopfes, die Füße hatte er sich an Wurzeln, die er nicht sah, blutig gestoßen, und Wasser hatte er keins mitgenommen – in Zapadlina trug niemand Wasser in den Wald. Gegen Abend klebte ihm die Zunge am Gaumen, und jedes Bächlein, an dem er vorbeikam, plätscherte so verlockend, dass er den Kopf abwenden musste. # dalej
-   -> glosy_w_borze

= glosy_w_borze
# tlo: glosy_noc
In der Dämmerung begannen Stimmen nach ihm zu rufen.
Zuerst Hanka. Von links, hinter dichten Fichten hervor.
„Jaromir! Komm zurück! Sie ist zu Hause, sie ist von selbst wiedergekommen, hörst du? Komm zurück!“
{ pani_w_zbozu_noc == za_spiewem:
    Die Stimme war ganz – warm, ein wenig heiser, so wie Hanka gesprochen hatte, bevor jenes Ding im Korn ihr die Hälfte davon genommen hatte. Jetzt brachte Hanka kaum mehr als ein Flüstern heraus. Jaromir biss die Zähne zusammen.
- else:
    Die Stimme war ihre, bis in jede Heiserkeit. Jaromir machte einen Schritt in die Richtung, ehe ihm einfiel, dass Hanka versprochen hatte, jede Nacht den Kienspan brennen zu lassen, bis sie heimkämen – unten am Dorf, nicht tief im Wald.
}
Dann die Mutter, von rechts, warm und sanft, so wie sie zu ihm gesprochen hatte, als er klein war:
„Mein Junge, komm zu mir. Mir ist kalt. Ich hab mich verirrt.“{ glos_w_lesie == odpowiedzial: Dieselben Worte wie in jenem Winter, als er neun gewesen war und geantwortet hatte. Bis aufs letzte.}
Dann Franek – jener Franek, Anteks Bruder –, fröhlich, von Weitem, genau so, wie er ihn früher zum See gerufen hatte:
„Jaromir! Hier lang! Komm, ich zeig dir was!“
Und zuletzt, dünn, aus der Tiefe des Waldes, weinte ein Kind.
„Papa! Papa, ich hab Angst!“
# pytanie: Was wird Jaromir tun?
*   [Marysia antworten.]
    ~ glosy_boru = odpowiedzial_marysi
    „Marysia!“ Der Schrei brach von selbst aus ihm heraus. „Ich bin da! Ich komme zu dir!“
    Das Weinen riss mittendrin ab. Der Wald verstummte. Nach einer Weile begann jemand ganz in der Nähe, direkt über seinem Kopf, langsam und feierlich zu zählen: # pokaz: liczy
    „…siebenhundertachtundneunzig… siebenhundertneunundneunzig…“ Eine Pause. „Und du. Achthundert. Der gehört mir.“
    { glos_w_lesie == odpowiedzial && zawolal_do_lasu:
        „Ich habe gesagt, ich zähle dich, wenn die Zeit kommt“, fügte dieselbe Stimme hinzu, ruhig, beinahe zärtlich. „Sie ist gekommen.“
    }
    Jaromir fiel auf die Knie. Eine Weile bekam er keine Luft – etwas Schweres lag ihm auf der Brust und drückte ihn nieder. Als er aufstand, war er sich einer Sache gewiss: Von nun an wusste der Wald, wer er war, und musste ihn nicht mehr suchen. # dalej
*   [Schweigen und weitergehen.]
    ~ glosy_boru = milczal
    Er biss in den Ärmel seines Rocks, um nicht zu antworten; im Mund hatte er den Geschmack von Wolle und Blut. Hanka rief immer verzweifelter, die Mutter schluchzte, Franek lachte und lockte. Und Marysia… Marysia weinte die ganze Nacht, mal näher, mal ferner, mal von der einen, mal von der anderen Seite, und wiederholte „Papa, Papa“, und jedes „Papa“ traf ihn dort, wo die Kleine sich nachts an ihn schmiegte – unterm Schlüsselbein. Zuletzt fing sie an zu fragen, warum er nicht komme.
    Er ging. Kein einziges Mal antwortete er. Gegen Morgen verstummte das Weinen – es brach nicht ab, sondern erlosch langsam, ganz leise, wie bei einem Kind, das vom Rufen müde geworden und eingeschlafen ist. Jaromir stand lange reglos da und wusste nicht, ob er sich darüber freuen sollte. # pokaz: swit # dalej
*   [Franeks Stimme folgen.]
    ~ glosy_boru = za_frankiem
    ~ zapiski += tropy_3
    „Franek?“, flüsterte Jaromir und bog nach links ab, zwischen die Fichten.
    Die Stimme führte ihn lange, lachte, lockte, bis sie schließlich über einer Wurzelgrube verstummte. In der Dunkelheit saß auf einem umgestürzten Stamm der weiße Wolf. # pokaz: wilk
    { oblawa_wilk == wydal_wilka:
        An der Flanke hatte er eine alte, schlecht verheilte Schusswunde – ein dicker, nackter Striemen in der Haut inmitten des weißen Fells. Als er Jaromir sah, legte er die Ohren an und bleckte die Zähne. Er griff nicht an. Aber die ganze Nacht hörte Jaromir seine Schritte hinter sich – und wusste, dass der Wolf ihm nicht folgte, um ihn zu beschützen. # pokaz: rana # dalej
    - else:
        Er war magerer als damals im Jungholz, und um die Schnauze war er grauer geworden – wie ein alter Hund, obwohl seit der Treibjagd kaum zwei Winter vergangen waren. Er sah Jaromir ohne Groll an. Dann sprang er vom Stamm, wandte den Kopf, um zu sehen, ob Jaromir ihm folgte, und lief in die Dunkelheit. # dalej
    }
-   -> bagno_w_borze

= bagno_w_borze
# tlo: bagno_blednice
Am nächsten Tag gegen Abend senkte sich der Wald und ging in einen Sumpf über.
Zwischen den Stämmen fauliger Erlen stand Wasser – braun, reglos, mit einer regenbogenfarbenen Schicht obenauf – und daraus ragten Seggenhöcker. Es roch nach gesäuertem Laub und altem Eisen; jeder Atemzug legte sich als Rost auf die Zunge. Am anderen Ufer, dort, wo der Wald wieder anstieg, war der Boden trocken und grau. Dort regnete es nicht. Aber um dorthin zu gelangen, musste man durch das hier.
Am Ufer, wo das Wasser flach war, lagen Tontöpfe mit dem Boden nach oben, einer neben dem anderen, immer weiter, so weit das Auge reichte. Jaromir dachte an den Traum, den im vorigen Frühjahr die Kinder in Zapadlina geträumt hatten, und spürte, wie ihm die Haut im Nacken kribbelte. # pokaz: garnki
~ zapiski += blednice_1
Und dann entzündeten sich über dem Wasser Lichter. # pokaz: blednice
Erst eines, dann ein zweites, dann ein ganzes Dutzend – bleiche Kugeln, so groß wie ein Kinderkopf, die über den Seggen schwebten. In jeder saß, wie in einer Seifenblase, eine zusammengekauerte kleine Gestalt mit Augen wie zwei schwarze Körnchen. Diese Lichter glichen nicht den Irrlichtern über dem Moor unterm Dorf – jene blinzelten nur von fern. Die hier schwebten heran, flüsterten und piepsten dünn wie Küken im Nest und trieben in die Tiefe des Sumpfes davon, um sich immer wieder Jaromir zuzuwenden. Sie luden ihn ein.
# pytanie: Wie wird Jaromir durch den Sumpf kommen?
*   [Den Lichtern folgen.]
    ~ przejscie_bagna = za_blednicami
    Er folgte ihnen von Höcker zu Höcker, und die Lichter wanden sich vor ihm, piepsten, warteten. Eine Weile schien es ihm, als führten sie ihn wirklich durch den Sumpf.
    Als es grau wurde, sah er, dass er die ganze Nacht im Kreis um ein und denselben Grashöcker gegangen war – bis auf die nackte Erde zertreten. Die Tasche hing ihm von unten bis oben aufgeschlitzt an der Schulter. Brot, Käse, Salz und Marysias Wollkleidchen waren fort.{ ekwipunek ? ksiega: Mit ihnen Herrn Ignacys Buch.} Heil geblieben war nur, was er unter dem Hemd trug: der Holzschuh{ ekwipunek ? zoladz: und die Eichel}. Ein Stück weiter lag auf den Seggen das Wollkleidchen ausgebreitet, als hätte jemand es anprobiert – und ehe Jaromir einen Schritt tun konnte, zog das Wasser es hinab. # pokaz: welniak # tobolek
    ~ ekwipunek -= ksiega
    Bei Tagesanbruch gelangte er ans andere Ufer, über Grashöcker, die bei Licht gut zu sehen waren. Er zitterte – nicht vor Kälte. # dalej
*   [Einen Kreis aus Salz streuen und auf den Morgen warten.]
    ~ przejscie_bagna = krag_z_soli
    Er nahm das Läppchen mit dem Salz, das Hanka ihm zugebunden hatte, aus der Tasche und streute auf einem trockenen Grashöcker einen Kreis um sich. Er setzte sich in die Mitte, die Axt auf den Knien. # pokaz: krag
    Die ganze Nacht umschwirrten die Lichter den Ring, immer näher, immer zudringlicher, und flüsterten ihm zu, mit Hankas Stimme, mit der Stimme der Mutter, mit Marysias Stimme. Gegen Morgen ließ sich eine der Kugeln dicht am Salz nieder, und Jaromir sah darin, deutlich wie in einem Spiegel, das Gesichtchen seiner Tochter – Sommersprossen, das schiefe Zähnchen, das Grübchen in der Wange. Sie lächelte ihn an und streckte die Ärmchen aus. Er saß da, die Hände unter die Schenkel gepresst, um nicht nach ihr zu greifen. Die Kugel kam nicht über das Salz. Sie erlosch mit den anderen, als die Sonne aufging.
    Im grauen Licht sah er einen schmalen Damm aus Stämmen, der durch den Sumpf führte und in der Nacht nicht zu sehen gewesen war. Er ging darüber. Salz hatte er keines mehr – alles war im Kreis geblieben, ins Moos geschmolzen. # pokaz: grobla # dalej
*   { glosy_boru == za_frankiem && oblawa_wilk != wydal_wilka } [Dem weißen Wolf folgen.]
    ~ przejscie_bagna = za_wilkiem
    Der Wolf beachtete die Lichter nicht. Er ging sicher durch den Sumpf, über Grashöcker, die Jaromir in der Dunkelheit überhaupt nicht sah, und wandte alle paar Schritte den Kopf. Jaromir setzte die Füße genau dorthin, wo der Wolf getreten war. Die Lichter zischten vor Wut und hielten sich fern. # pokaz: wilk
    Am anderen Ufer blieb der Wolf stehen und sah Jaromir zum ersten Mal gerade in die Augen. Jaromir hielt es nicht aus. Er streckte die Hand aus, um ihn zu berühren.
    „Franek?“, flüsterte er.
    Der Wolf schnappte zu – schnell, kurz, wie ein Hund, der warnt und nicht beißt. Doch die Fänge rissen Jaromir den Handrücken bis auf den Knochen auf. Als er den Kopf hob, war der Wolf fort. Blut tropfte ihm von den Fingern auf die graue Flechte und wollte lange nicht aufhören. # pokaz: krew # dalej
*   { ekwipunek ? rozaniec } [Den Rosenkranz in der Faust umklammern und geradeaus gehen, laut betend.]
    ~ przejscie_bagna = z_rozancem
    „Gegrüßet seist du, Maria, voll der Gnade…“, begann Jaromir und tat den ersten Schritt.
    Die Lichter heulten auf – hoch, durchdringend, wie Vögel in der Schlinge – und erloschen alle zugleich. Es wurde so dunkel, dass er die eigenen Hände nicht sah. Er tastete sich vorwärts, prüfte die Höcker mit dem Axtstiel und betete, bis ihm die Kehle austrocknete. # pokaz: ciemnosc
    ~ ekwipunek -= rozaniec
    Er kam hinüber. Doch als er das andere Ufer erreichte, war der Rosenkranz in seiner Hand verkohlt, und die Perlen zerfielen bei der ersten Berührung zu Asche. # tobolek # dalej
*   { ekwipunek ? krzesiwo } [Funken schlagen und ihrem Schein folgen.]
    ~ przejscie_bagna = z_krzesiwem
    Er holte den Feuerstahl des Großvaters hervor und schlug – einmal, zweimal. Funken stoben auf die Seggen, und die Lichter sprangen mit einem Piepsen zurück, wie verbrannt. Er ging durch den Sumpf, schlug alle paar Schritte Funken, und die Kugeln wichen vor ihm auseinander. # pokaz: iskry
    Am anderen Ufer fiel ein Funke in die graue Flechte – und die Flechte fing im Nu Feuer, wie Schießpulver. Jaromir trat die Flamme aus, riss sich den Rock vom Leib und schlug damit auf das Feuer ein, bis ihm die Haut an den Händen aufplatzte. Er erstickte es. Aber im Wald wurde es so still, dass er sein eigenes Herz hörte, und lange wurde er die Gewissheit nicht los, dass jeder Baum um ihn her lauschte. # pokaz: ogien # dalej
-   -> serce_boru

= serce_boru
# tlo: serce_boru
Hinter dem Sumpf war der Wald ein anderer.
Die Bäume standen lichter, aber sie waren so alt, dass Jaromir ihre Kronen nicht mit dem Blick erfassen konnte. Die Rinde war mit dem Moos zu einem verwachsen, grau und weich wie Fell. Unter den Füßen wuchs kein Gras, nur trockene graue Flechte, und die Luft war so schwer und reglos, dass jeder Atemzug nach Staub schmeckte. Hier regnete es nicht. Niemals.
Mitten auf der Lichtung stand eine Eiche – größer, als die Alte Eiche einst gewesen war, so gewaltig, dass ihre Wurzeln aus der Erde ragten wie die Rücken riesiger Fische. Im Stamm klaffte ein Spalt, zwei Männer hoch, und aus ihm wehte Kellerkühle.
Hinter der Eiche hervor klang leise Gesang. Marysias Melodie – kurz, traurig. Nur brach sie diesmal nicht in der Mitte ab. Jemand sang sie bis zum letzten Ton zu Ende, mit tiefer, rauer Stimme, ähnlich dem Knarren eines Baumes im Wind. Jaromir hatte nie gehört, wie sie ausging. Er fühlte sich bestohlen: Er hätte als Erster dieses Ende hören sollen – zusammen mit ihr, an ihrem Bett. # pokaz: spiew
Aus dem Schatten der Eiche trat ein Alter. # pokaz: starzec
Jaromir erkannte ihn sofort – er war es, der in der Nacht der Hochzeit am Waldrand gestanden hatte{ poszedl_po_wstazke:, und er hatte vor Jahren im Halbdunkel zwischen den Stämmen bei Hankas Band gewartet}. Nur war er damals weit weg gewesen. Jetzt sah Jaromir, dass der Schafspelz nicht genäht, sondern gewachsen war wie Rinde und das Moos auf dem Hut frisch und feucht, obwohl hier nie ein Regentropfen fiel. Der Alte warf keinen Schatten.
„Siebzig Jahre habe ich gewartet“, sagte er. Die Stimme kam nicht aus seinem Mund, sondern von überall her – aus den Bäumen, aus der Erde, aus der Luft. „Bis einer von euch allein hierherkommt.“
# pytanie: Was wird Jaromir tun?
*   [Die Mütze abnehmen und sich verneigen wie vor dem Ältesten im Dorf.]
    ~ przed_panem_lasu = uklon
    Jaromir nahm die Mütze ab und verneigte sich tief. Der Alte betrachtete ihn lange, und dann regte sich zum ersten Mal etwas in seinem Gesicht.
    „Höflich“, sagte er. „Das hätte ich von euch nicht erwartet.“ # dalej
*   [Die Axt heben und die Tochter fordern.]
    ~ przed_panem_lasu = uniosl_siekiere
    „Gib sie mir zurück“, sagte Jaromir und hob die Axt. „Gib mir meine Tochter zurück.“
    Der Alte blickte auf die Axt, und die Blätter an seinem Stock wurden schwarz und rollten sich ein. # pokaz: liscie
    „{siekiera_dziadka:Dieses Eisen kenne ich|Solches Eisen kenne ich}“, sagte er leise.{ wejscie_do_boru == naciete_pnie: „Und du hast hundert meiner Bäume verwundet. An jeden erinnere ich mich.“} # dalej
*   [Nach Marysia rufen.]
    ~ przed_panem_lasu = zawolal_marysie
    „Marysia!“, schrie Jaromir. „Marysia, hier ist Papa!“
    Der Gesang brach ab. Einen schrecklichen Augenblick lang herrschte Stille. Dann antwortete ihm ein Lachen – kindlich, unbeschwert, glücklich, Marysias Lachen. Doch es kam von hinten, aus dem Sumpf, den er eben erst durchquert hatte.
    Der Alte schüttelte den Kopf wie über jemanden, der einen offensichtlichen Fehler begangen hat. # dalej
-   ~ zapiski += (starzec_4, pan_lasu_8)
Der Alte nahm den Hut aus Moos ab. Darunter war kein Gesicht, nur Rinde – und zwei helle, starre Augen, tief darin eingesetzt wie Astknoten. Dann begann er zu wachsen. Der Schafspelz zerfiel zu Moos und Flechten, der Stock senkte sich mit Wurzeln in die Erde, und der Bart floss ihm bis zu den Knien, dann bis zum Boden hinab, grau und dicht wie das Moos an der Nordseite der Stämme. Aus seiner Stirn schoss ein Geweih hervor, ausladend und verflochten wie die Äste eines Windbruchs. Er ragte immer höher auf, bis sein Kopf zwischen den Kronen war und die Blätter um ihn rauschten. # pokaz: pan_lasu
Der Herr des Waldes beugte sich über Jaromir.
„Setz dich, Macieks Enkel“, sagte er, und von seiner Stimme erbebte der ganze Wald. „Reden wir.“ # dalej
-> rozdzial_szesnasty_ciag_dalszy


// Koniec rozdziału szesnastego — dalej rozdział siedemnasty.
=== rozdzial_szesnasty_ciag_dalszy ===
# ozdobnik
_Ende des sechzehnten Kapitels._ # dalej
-> rozdzial_siedemnasty
