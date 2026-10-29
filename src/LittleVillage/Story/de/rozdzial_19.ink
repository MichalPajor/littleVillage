// ------------------------------------------------------------
//  Rozdział dziewiętnasty — Świt. Dwie drogi po rozdziale osiemnastym.
//  [Marysia żyje] powrót o świcie, dług u Jagny (wstążka, drewniak albo odmowa),
//  lato i żniwa, pod koniec sierpnia kijanki nad jeziorem — mamuny piorą mały całun
//  (cenę za zmycie imienia wybiera się w r20, w noc Zaduszek). Jesień, mgła pod płotami,
//  gromnice gasną.
//  [zły wybór] Hanka poznaje po zapachu, co Jaromir przyniósł; ciało pochowane,
//  oddane Jagnie, spalone albo zakopane pod młodnikiem; trumienka z bzu, wianki,
//  kołysanka; jesień — „Przyjdzie?”; paliła się tylko gromnica Hanki.
// ------------------------------------------------------------

=== rozdzial_dziewietnasty ===
{ marysia_odzyskana:
    -> powrot_z_marysia
- else:
    -> powrot_bez_niej
}

= powrot_z_marysia
# tlo: laka_swit
# rozdzial: Neunzehntes Kapitel
# tytul: Morgengrauen
Die Sonne kam hinter dem Wald hervor, gerade als Jaromir den Rand des Jungholzes erreichte. Auf den Schwaden glitzerte der Tau so grell, dass ihm die Augen schmerzten, und im Korn begann eine Lerche zu singen – der erste Vogel, den er seit drei Tagen hörte.
{ ekwipunek ? szczenie_psa:
    Der Hund lief ihm voraus und jagte mit solchem Gekläff auf das Dorf zu, dass ihm alle Höfe in Zapadlina antworteten. # pokaz: pies
}
{ wilk_przy_jaromirze && znak_rozpoznania != po_wilku:
    Der weiße Wolf begleitete sie bis zu den letzten Fichten und setzte sich dort nieder. Als Jaromir sich nach einer Weile umsah, war er verschwunden. # pokaz: wilk
}
Hanka kam von der Hütte gelaufen, das Wiegenlied mitten im Wort abgerissen, barfuß, durch das nasse Gras, die Arme vor sich ausgestreckt – als fürchtete sie, neben einem erloschenen Kienspan zu erwachen, sobald sie sie sinken ließe. Sie schrie nicht.{ pani_w_zbozu_noc == za_spiewem: Sie konnte es nicht. Aus ihrer Kehle kam nur ein trockenes, abgehacktes Pfeifen.} Auf halbem Weg erreichte sie die beiden und umschlang sie mit aller Kraft, bis Marysia empört quiekte. Sie drückte das Gesicht in das Haar der Tochter und atmete eine Weile nur, dann fing sie an, zugleich zu lachen und zu weinen, küsste der Kleinen die schmutzigen Füße, die Hände, den Kopf. Erst dann sah sie Jaromir an, die von Zweigen zerschnittenen Wangen, und berührte sie mit den Fingerspitzen, behutsam, als prüfte sie, ob er es wirklich sei. # pokaz: uscisk
Jaromir spürte, dass ihn die Beine nicht mehr trugen. Er setzte sich ins Gras. So saßen sie zu dritt, und die Leute mit den Rechen standen auf den Schwaden, und keiner rührte sich.
Als Erster kam Antek heran. Er sagte nichts – er zog seinen langen Rock aus und hüllte die Kleine darin ein.{ zastaw_u_leszego == zastaw_cien: Erst am Mittag, als sie auf den Hof hinausgingen, sah Hanka ihrem Mann vor die Füße und konnte den Blick nicht von der Stelle lösen, wo sein Schatten hätte liegen sollen. Sie fragte nicht. Jaromir war ihr dafür dankbarer als für irgendetwas sonst.} # pokaz: antek # dalej
{ dlug_u_jagny:
    -> dlug_jagny_dobry
}
-> lato_po_powrocie

= dlug_jagny_dobry
# tlo: wies_sianokosy
Jagna wartete am Zaun, neben ihrem Wagen. Als Jaromir mit Marysia auf den Armen vorbeiging, hob sie das gesunde Auge zu ihm. # pokaz: jagna
„Das Erste, was du aus dem Wald hinausträgst“, erinnerte sie ihn leise. „Das war der Preis.“
Hanka blieb mitten im Schritt stehen. Marysia klammerte sich an Jaromirs Hals.
# pytanie: Was wird Jaromir Jagna geben?
*   [Das Band vom Handgelenk.]
    ~ dlug_jagny = oddana_wstazka
    Jaromir hob die Hand mit der roten Schlinge um das Gelenk. „Es ging mir voraus, als ich die Zweige auseinanderbog“, sagte er. „Es kam aus dem Wald, ehe ich meine Tochter hinaustrug.“
    ~ ekwipunek -= wstazka_marysi
    Jagna musterte ihn wortlos, dann zuckten ihre Mundwinkel. Sie streifte ihm das Band vom Gelenk und schob es sich vorn ins Hemd. „Was im Wald war und zurückgekommen ist, kann ich bei meiner Arbeit brauchen“, sagte sie. # tobolek
    Hanka presste die Lippen zusammen. Dieses Band hatte sie Marysia am Johannisabend ins Haar geflochten. # dalej
*   [Den Holzschuh, den er an der Brust getragen hat.]
    ~ dlug_jagny = oddany_drewniak
    „Ich hab ihn am Herzen getragen“, sagte Jaromir. „Vor ihr.“ Er griff unter den Rock und reichte Jagna einen kleinen roten Schuh{ drugi_drewniak: – einen von zweien}.
    { drugi_drewniak:
        ~ drugi_drewniak = false
    - else:
        ~ ekwipunek -= bucik_marysi
    }
    Jagna drehte ihn zwischen den Fingern und roch am Filz darin. „Er war bei der da im Roggen, und er war im Wald“, brummte sie. „Meinetwegen.“ Sie warf ihn in den Kräuterkorb. # tobolek
    Marysia sah dem Holzschuh nach, und als der Wagen anfuhr, begann sie so zu weinen, wie sie nicht einmal unter der Eiche geweint hatte. Von jenem Tag an ließ sie sich keinen Schuh mehr anziehen – sie strampelte und schrie, bis Hanka schließlich nachgab. Die Kleine lief barfuß bis zum ersten Schnee. # dalej
*   [Ablehnen – ein Kind ist kein Ding.]
    ~ dlug_jagny = dlug_odmowiony
    „Du kriegst sie nicht“, sagte Jaromir. „Weder heute noch jemals.“
    Jagna hob die Stimme nicht. „Ich bin nicht ihretwegen hier“, erwiderte sie. „Ich will nur, was mir zusteht.“ Sie spannte das Pferd ein. „Eine Schuld fault nicht, Jaromir. Sie kann warten.“
    Sie fuhr langsam davon. In dieser Nacht hängte Hanka über das Lager der Kleinen alles, was sie besaß: ein Kreuzchen, einen Kräuterkranz, ein kleines Messer. Bis zum Morgengrauen schlief sie nicht. # dalej
-   -> lato_po_powrocie

= lato_po_powrocie
# tlo: zniwa
Marysia erinnerte sich an nichts.{ rada_przed_borem == rada_ksiedza: Der Pfarrer aus Bukowiec hatte recht gehabt.} Wenn man sie fragte, wo sie gewesen sei, sah sie alle verwundert an und sagte, sie habe geschlafen. Sie fürchtete sich vor der Dunkelheit – seitdem brannte jede Nacht ein Kienspan im Fenster, obwohl sie niemanden mehr erwarteten – und nie wieder summte sie ihre Weise. Jeden Abend lauschte Hanka am Lager der Kleinen, doch vergebens.
Die Ernte kam spät und war schwer. Hitze stand über den Feldern, in der Luft hingen der Staub der Ähren und der Geruch von heißem Stroh, und die Sensen klangen vom Morgengrauen bis in die Dämmerung.{ pole_zbite_gradem: Jaromir, der auf dem eigenen Acker nichts zu mähen hatte, verdingte sich bei Staś’ Leuten und bei den Kowalczyks, für jede zehnte Hocke.}{ zastaw_u_leszego == zastaw_siekiera: Holz hackte er mit einer Axt, die er sich vom Schwiegervater geliehen hatte – der Stiel war zu glatt, zu dick, nicht seiner.}{ zastaw_u_leszego == zastaw_krzesiwo: Feuer machte er an der Glut der Nachbarn; einen eigenen Feuerstahl hatte er nicht mehr.}
{ pies_pobiegl_sam:
    ~ ekwipunek += szczenie_psa
    Eine Woche später, in einer regnerischen Nacht, winselte ein Hund vor der Tür. Er war dürr wie ein Stecken, die Pfoten blutig zerschunden. Jaromir ließ ihn wortlos herein, und der Hund schlief zwei Tage lang unter Marysias Bank. # tobolek
}
{ znak_rozpoznania == po_wilku:
    Abends stellte sich Antek an den Feldrand und horchte. Seit jenem Morgen kam vom Wald her kein Heulen mehr.
}
Aber das Wasser ließ ihnen keine Ruhe. Marysia wollte nicht zum See, und wenn Hanka am Bach wusch, versteckte sich das Kind hinter ihrem Rock, wurde ganz steif und wandte die Augen nicht von der Strömung.{ dar_pominiety: Im Juli fand Hanka auf der Schwelle einen nassen Kranz aus Raute – genau so einen, wie Jaromir ihn jedes Jahr zu den Steinen am anderen Ufer des Sees trug. Er lag in einer Pfütze, obwohl es seit einer Woche nicht geregnet hatte.} # dalej
-> kijanki

= kijanki
# tlo: calun_noc
Gegen Ende August, in der Nacht, in der es sich zum dritten Mal jährte, dass Marysia auf die Welt gekommen war, weckte Jaromir ein Klatschen. Im Takt, nass, vom See her – ein Waschbleuel auf Stein. Er kannte dieses Geräusch aus der Zeit, als Marysia noch in der Wiege lag.
Er sah zur Bank am Ofen hinüber. Die Kleine schlief, zu einem Knäuel zusammengerollt, das Fäustchen unter der Wange. Hanka atmete ruhig.
Er ging leise hinaus, barfuß, lief am Ufer um den See herum und kauerte sich auf der anderen Seite ins Schilf, dicht bei den flachen Steinen. Darauf knieten die Mamunen – bucklig, nass, in Lumpen aus Moos – und wuschen im Wasser etwas Kleines, Helles. Gerade groß genug für ein Kind. Einen Namen riefen sie nicht. Als das Schilf raschelte, hob die Älteste nicht einmal den Kopf. # pokaz: mamuny
{ dar_pominiety:
    „Einmal hast du's vergessen, Bauer“, krächzte sie ins Wasser. „Langsamer waschen wir nicht.“
- else:
    „Nicht heute, Bauer“, krächzte sie ins Wasser. „Wir waschen, was uns das Wasser bringt.“
}
„Zu Allerseelen bringen wir, was gewaschen ist“, fügte eine zweite hinzu. # dalej
-> jesien_przed_zaduszkami

= jesien_przed_zaduszkami
# tlo: jesien_zaduszki
~ zapiski += pan_lasu_11
Der Herbst kam früh. Dreschen in den Scheunen, Roggen säen für den Winter, Flachs brechen – das Dorf ging seinem Tagwerk nach wie jedes Jahr, und Jaromir griff zu, wo immer es etwas zu tun gab, nur um nicht mit seinen Gedanken allein zu bleiben. Marysia wuchs. Im Oktober lachte sie zum ersten Mal seit ihrer Rückkehr bei Tisch laut auf, und Hanka ging hinaus in den Flur und kam lange nicht wieder.
Jaromir sagte Hanka nicht, was er auf den Steinen am anderen Ufer des Sees gesehen hatte. Aber jeden Abend vor dem Einschlafen dachte er daran, wie viel Zeit bis Allerseelen noch blieb, und jedes Mal schien es ihm weniger als in der Nacht zuvor.
Je näher Allerseelen rückte, desto stiller wurde es in Zapadlina. Die Leute kamen vor der Dunkelheit von den Feldern heim und verriegelten die Türen, und vom Wald her kroch jeden Abend der Nebel über die Wiesen, schwer und nass, bis dicht an die Zäune. Jaromir erinnerte sich an jedes Wort: „Zu Allerseelen komme ich ins Dorf. Dann rechnen wir ab, bis zum Letzten.“ # pokaz: mgla
Am ersten November ging das Dorf zum Friedhof nach Bukowiec. In diesem Jahr trugen die Leute statt der Lämpchen Lichtmesskerzen von zu Hause mit. Auf dem Rückweg erloschen sie in einem einzigen Atemzug, alle, obwohl die Luft stillstand. # pokaz: zgasly # dalej
-> rozdzial_dziewietnasty_ciag_dalszy

= powrot_bez_niej
# tlo: laka_swit
# rozdzial: Neunzehntes Kapitel
# tytul: Morgengrauen
Die Sonne kam hinter dem Wald hervor, gerade als Jaromir den Rand des Jungholzes erreichte. Auf den Schwaden glitzerte der Tau, und im Korn begann eine Lerche zu singen. Jaromir hörte sie gar nicht.
Hanka kam von der Hütte gelaufen, noch immer das Wiegenlied auf den Lippen, barfuß, durch das nasse Gras, die Arme vor sich ausgestreckt. Auf halbem Weg wurde sie langsamer. Dann blieb sie stehen.
Sie schrie nicht.{ pani_w_zbozu_noc == za_spiewem: Sie konnte es nicht.} Sie nahm das Kind aus Jaromirs Armen, behutsam, wie man ein schlafendes nimmt, und drückte das Gesicht in die feinen Härchen, wie sie es jeden Abend tat. Lange sog sie den Duft ein. Das Haar roch nach nichts – nicht nach Milch, nicht nach Rauch, nicht nach ihr. Sie verstand. # pokaz: kolysze
Sie setzte sich mit dem Kind ins Gras und begann es zu wiegen. Die Leute mit den Rechen standen auf den Schwaden, und keiner rührte sich. Als Erster kam Antek heran. Er nahm die Mütze ab. # pokaz: antek
{ wilk_przy_jaromirze && znak_rozpoznania != po_wilku:
    Der weiße Wolf, der Jaromir durch das ganze Jungholz gefolgt war, blieb bei den letzten Fichten zurück. Als jemand in jene Richtung sah, war er verschwunden. # pokaz: wilk
}
{ ekwipunek ? szczenie_psa:
    Der Hund legte sich Hanka zu Füßen und winselte, leise, ohne Unterlass, bis ihn jemand wegzog. # pokaz: pies
}
{ zastaw_u_leszego == zastaw_cien:
    Niemand bemerkte, dass Jaromir keinen Schatten warf. Niemand sah ihn an.
}
{ dlug_u_jagny:
    Jagna trat vom Zaun her heran und beugte sich über das Kind in Hankas Armen. Sie betrachtete die steifen Füßchen und das brave, erstarrte Lächeln. Dann richtete sie sich auf und sagte leise zu Jaromir, so dass Hanka es nicht hörte: „Das ist nicht dein Kind. Das ist Holz. Es ist gleich hinter dir aus dem Wald gekommen. Ich kann es statt der Schuld nehmen. Ich weiß, was man mit so einem macht.“ # pokaz: jagna
- else:
    Der alte Staś kam an seinem Stock herangehumpelt, sah das Kind an und bekreuzigte sich. „Kinder aus dem Wald begräbt man nicht in geweihter Erde“, brummte er. „Zu meines Großvaters Zeiten, wie's in Bukowiec noch keine Kirche gab und man zu jedem Begräbnis bis in die Stadt laufen musst, da hat's trotzdem ein jeder gewusst… Entweder ins Feuer oder draußen am Wald.“ # pokaz: stas
}
Jaromir erinnerte sich an die Stimme unter der Eiche: „Du wirst es begraben wie dein eigenes.“
# pytanie: Was wird Jaromir mit dem Leichnam tun?
*   [Es wie eine Tochter begraben, auf dem Friedhof.]
    ~ cialo_kopii = pochowane
    Er nahm es Hanka ab und trug es in die Hütte. Er legte es auf die Bank, auf der Marysia geschlafen hatte, und deckte es mit einem Leinentuch zu. # dalej
*   { dlug_u_jagny } [Es Jagna geben.]
    ~ cialo_kopii = oddane_jagnie
    Hanka wollte es nicht hergeben. Sie ließ es erst los, als Jagna ihr die Hand auf die Augen legte und etwas flüsterte. Jagna wickelte den kleinen Leib in ein Laken aus Leinen, bettete ihn auf dem Wagen zwischen die Kräuterkörbe und fuhr langsam nach Bukowiec davon. Die Schuld war bezahlt. # dalej
*   [Es im Ofen verbrennen.]
    ~ cialo_kopii = spalone
    Am Abend, als Hanka endlich vor Erschöpfung eingeschlafen war, machte Jaromir ein kräftiges Feuer. Lange konnte er sich nicht überwinden, das Kind in die Flammen zu legen. Als er es endlich tat, brannte es nicht wie ein Leib. Es knackte wie Kienholz, zischte vor Harz, und der Rauch roch nach Fichtennadeln. Am Morgen lagen in der Asche nur Holzkohlen.
    Hanka sah die Asche. Sie sagte nichts. Von jenem Morgen an machte sie kein einziges Mal mehr Feuer im Ofen – das tat immer er. # dalej
*   { not dlug_u_jagny } [Es am Jungholz begraben, wie Staś rät.]
    ~ cialo_kopii = pod_mlodnikiem
    Er hob das Grab selbst aus, unter den letzten Fichten, dort, wo die Erde weich von Nadeln war. Hanka stand daneben und ließ sich nicht trösten. # dalej
-   -> pogrzeb

= pogrzeb
{ cialo_kopii == pod_mlodnikiem:
    -> pogrzeb_pod_lasem
}
# tlo: pogrzeb
-> pogrzeb_trumienka

= pogrzeb_pod_lasem
# tlo: skraj_powrot
-> pogrzeb_trumienka

= pogrzeb_trumienka
~ zapiski += (dzieci_2, pan_lasu_11)
Den kleinen Sarg zimmerte Jaromir selbst, aus dem Holz des alten Holunders – desselben, in dessen Krone er als Junge sein Versteck gehabt hatte.{ zastaw_u_leszego == zastaw_siekiera: Er schlug ihn mit der Axt, die er sich vom Schwiegervater geliehen hatte.} Man sagte, so einen Baum fälle man nicht, denn das bringe Unglück. Jaromir war schon alles gleich. Der frische Schnitt roch bitter und fade, und aus den Zweigen rieselten ihm die letzten vertrockneten Blüten auf den Ärmel.{ kapliczki_drogi == ocalil_swiatka: Als er die Bretter des Verstecks auseinandernahm, fiel ihm die Muttergottes in die Hände, die er einst von Urbaniaks Wagen geholt hatte. Er stellte sie zu Häupten des Sarges auf.} In der Stille hörte man nur das Klopfen der Nägel. # pokaz: trumienka
Die Mädchen aus dem Dorf wanden Kränze aus Kornblumen und Kamille, frisch vom Feldrain, und legten sie auf den Deckel. Sie dufteten nach einer Sonne, die an diesem Tag niemand in Zapadlina gesehen hatte. # pokaz: wianki
{ pani_w_zbozu_noc == za_spiewem:
    Hanka sang nicht – seit jener Nacht im Roggen konnte sie es nicht mehr. Sie sprach die Worte des Wiegenlieds, eines nach dem anderen, heiser, ohne Melodie, und das war schlimmer als Weinen.
- else:
    Hanka sang das Wiegenlied, das sie Marysia jeden Abend vorgesummt hatte. Ihre Stimme brach kein einziges Mal, und gerade das war das Schlimmste.
}
{ cialo_kopii == oddane_jagnie || cialo_kopii == spalone:
    Im Särglein lag kein Leib – nur Marysias Kleidchen, sorgfältig gefaltet, wie für die Truhe.
}
{ skarb_dla_corki:
    Bevor sie den Deckel zunagelten, legte Jaromir den Schatz aus dem Versteck in den Sarg – {skarb_jaromira == muszelka:die Muschel mit der Kerbe vom schiefen Zähnchen|{skarb_jaromira == pioro:die zerknautschte Feder mit dem angebissenen Kiel|den Nagel mit dem braunen Rost}}.
- else:
    ~ ekwipunek -= bucik_marysi
    Bevor sie den Deckel zunagelten, legte Jaromir in den Sarg {drugi_drewniak:beide roten Holzschuhe|den roten Holzschuh – den einen, der ihm geblieben war}{uklad_z_mamunami != oddany_skarb:, und {drugi_drewniak:neben sie|neben ihn} den Schatz aus dem Kästchen im Versteck – {skarb_jaromira == muszelka:die weiße Muschel|{skarb_jaromira == pioro:die Eichelhäherfeder|den rostigen Nagel}}. Er hatte ihn der Tochter einmal zeigen wollen}. # tobolek
}
{ cialo_kopii == pod_mlodnikiem:
    Das Grab am Jungholz deckten sie mit Rasen zu, und zu Häupten schlug Antek einen Stock ein, an dem das rote Band hing, das Hanka aus dem Haar des Kindes gelöst hatte, damit man wusste, wo. # dalej
- else:
    Sie begruben den kleinen Sarg auf dem Friedhof in Bukowiec, unter einer Birke. Der Pfarrer{ przysiega_ksiedzu:, der Jaromirs Schwur auf den Rosenkranz abgenommen hatte,} verrichtete alles, wie es sich gehörte, und fragte nichts.{ cialo_kopii == oddane_jagnie || cialo_kopii == spalone: Als der Totengräber die Grube zuschüttete, polterte die Erde so dumpf auf den Deckel, dass Jaromir es noch nächtelang hörte.} # dalej
}
-> jesien_po_pogrzebie

= jesien_po_pogrzebie
# tlo: jesien_zaduszki
Gegen Ende August, in der Nacht, in der es sich zum dritten Mal jährte, dass Marysia auf die Welt gekommen war, ging Hanka allein zum Grab und saß dort bis zum Morgengrauen. Jaromir ging ihr nicht nach. Er hätte ihr nicht in die Augen sehen können – denn er wusste, was sie ihm nicht sagen würde.{ znak_rozpoznania == po_imieniu: Hätte er sie nur nicht beim Namen gerufen.}{ znak_rozpoznania == po_drewniaku: Er hatte sich von etwas Rotem ködern lassen wie ein Kind.}{ znak_rozpoznania == po_buzi: Er hatte sie angesehen und nicht erkannt.}{ znak_rozpoznania == po_cieniu: Er selbst hatte hergegeben, was ihn dann betrog.}
Der Herbst kam früh. Dreschen in den Scheunen, Roggen säen für den Winter, Flachs brechen – das Dorf ging seinem Tagwerk nach wie jedes Jahr, und Hanka mit ihm, flink und wortlos. Jede Nacht hörte Jaromir, wie seine Frau aufstand und in der Stube umherging, vom Ofen zum Fenster und zurück.
{ pies_pobiegl_sam:
    ~ ekwipunek += szczenie_psa
    Der Hund war schon im Juli aus dem Wald zurückgekommen, eine Woche nach Johanni, dürr wie ein Stecken, und hatte sich unter die Bank gelegt, auf der Marysia geschlafen hatte. Er ließ sich von dort nicht weglocken. # tobolek
}
{ dlug_u_jagny && cialo_kopii != oddane_jagnie:
    Jagna kam kein einziges Mal mehr. Die Schuld war nicht bezahlt, und Jaromir wusste, dass auch sie es wusste.
}
Im Oktober fragte Hanka, ohne sich vom Topf abzuwenden: „Zu Allerseelen kommen die Toten heim. So sagt man.“ Sie rührte um. „Kommt sie?“
Jaromir antwortete nicht. Er erinnerte sich an die Stimme aus dem Wald, die auf halbem Weg verstummt war. Er erinnerte sich auch an die andere: „Zu Allerseelen komme ich ins Dorf. Dann rechnen wir ab, bis zum Letzten.“
Je näher Allerseelen rückte, desto stiller wurde es in Zapadlina. Die Leute kamen vor der Dunkelheit von den Feldern heim und verriegelten die Türen, und vom Wald her kroch jeden Abend der Nebel über die Wiesen, schwer und nass, bis dicht an die Zäune. # pokaz: mgla
Am ersten November ging das Dorf zum Friedhof nach Bukowiec. In diesem Jahr trugen die Leute statt der Lämpchen Lichtmesskerzen von zu Hause mit. Auf dem Rückweg erloschen sie in einem einzigen Atemzug, alle, obwohl die Luft stillstand. Nur Hankas Kerze brannte weiter – gleichmäßig, ruhig, wie in einer geschlossenen Stube. # pokaz: zgasly, gromnica_hanki # dalej
-> rozdzial_dziewietnasty_ciag_dalszy


// Koniec rozdziału dziewiętnastego — dalej rozdział dwudziesty (Ostatnia noc).
=== rozdzial_dziewietnasty_ciag_dalszy ===
# ozdobnik
_Ende des neunzehnten Kapitels._ # dalej
-> rozdzial_dwudziesty
