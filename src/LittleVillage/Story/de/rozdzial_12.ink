// ------------------------------------------------------------
//  Rozdział dwunasty — Czuwanie przy zmarłym (strzyga). Wiosna i lato po
//  obławie (pierwsze kroki Marysi, wesele Antka z Jadwisią), w listopadzie
//  umiera stary Wójcik — urodzony z zębami. Czuwanie: sprawdzić zęby albo
//  nie ruszać. O północy zmarły wstaje: przewrócić go twarzą do deski
//  (gryzie Antka), sierp przy szyi (czarna krew, plotki) albo gromnica
//  (wypala się). Pogrzeb: po staremu za murem, po księdzowsku albo z makiem
//  Hanki z medalika. Po księdzowsku bez niczego strzyga wraca po trzech
//  nocach: rozkopać grób albo czuwać przy kołysce (umiera Wójcikowa).
//  W Wigilię na talerzu dla wędrowca zostaje garść mchu.
// ------------------------------------------------------------

=== rozdzial_dwunasty ===
# tlo: wiosna_orka
# rozdzial: Zwölftes Kapitel
# tytul: Die Totenwache
{ uklad_z_mamunami == dar_swietojanski:
    { ekwipunek ? szczenie_psa:
        In diesem Frühling stürzte sich das Dorf in die Arbeit, um jenen langen Winter wettzumachen. Nach den Frösten blühte die Hälfte der Obstgärten nicht, doch der Roggen ging dicht und gleichmäßig auf. Jaromir pflügte vom Morgengrauen bis zur Dämmerung, und der fuchsrote Welpe tapste ihm in den Furchen zwischen den Füßen herum und kläffte die Krähen an, die sich auf den frischen Schollen niederließen. # pokaz: szczenie
    - else:
        In diesem Frühling stürzte sich das Dorf in die Arbeit, um jenen langen Winter wettzumachen. Nach den Frösten blühte die Hälfte der Obstgärten nicht, doch der Roggen ging dicht und gleichmäßig auf. Jaromir pflügte vom Morgengrauen bis zur Dämmerung.
    }
    In der Johannisnacht, als die jungen Leute am See Feuer anzündeten, ging Jaromir allein ans andere Ufer, zu den flachen Steinen. Auf den größten legte er {sposob_na_odmienca == chrzest_odmienca:zwei Laibe Brot|einen Laib Brot} und einen Kranz aus Raute, so wie er es versprochen hatte. Er sah sich nicht um. Doch als er schon beim Schilf war, hörte er hinter sich ein leises Plätschern und dann etwas wie einen Seufzer. # pokaz: noc # dalej
- else:
    { ekwipunek ? szczenie_psa:
        In diesem Frühling stürzte sich das Dorf in die Arbeit, um jenen langen Winter wettzumachen. Nach den Frösten blühte die Hälfte der Obstgärten nicht, doch der Roggen ging dicht und gleichmäßig auf. Jaromir pflügte vom Morgengrauen bis zur Dämmerung, und der fuchsrote Welpe tapste ihm in den Furchen zwischen den Füßen herum und kläffte die Krähen an, die sich auf den frischen Schollen niederließen. # pokaz: szczenie # dalej
    - else:
        In diesem Frühling stürzte sich das Dorf in die Arbeit, um jenen langen Winter wettzumachen. Nach den Frösten blühte die Hälfte der Obstgärten nicht, doch der Roggen ging dicht und gleichmäßig auf. Jaromir pflügte vom Morgengrauen bis zur Dämmerung. # dalej
    }
}
-> lato_w_zapadlinie

= lato_w_zapadlinie
# tlo: lato_podworze
Im Juli, als Jaromir die Wiese hinter der Scheune mähte, machte Marysia ihre ersten Schritte – sie ließ den Rock der Mutter los, ging über den ganzen Hof, wackelnd wie ein betrunkener Hahn, und fiel ihm mit einem Quietschen in die Arme. Hanka lachte so, dass sie sich auf die Schwelle setzen musste. # pokaz: kroki
{ obietnica_antkowi && oblawa_wilk == wydal_wilka:Antek mied den ganzen Frühling und Sommer über ihre Hütte. Er kam erst nach der Ernte, die Mütze in der Faust, und sagte, er heirate Jadwisia aus Bukowiec und wolle Jaromir als Brautführer haben. Den weißen Wolf erwähnte keiner von beiden.|Nach der Ernte verkündete Antek, dass er Jadwisia aus Bukowiec heirate, und bat Jaromir gleich, sein Brautführer zu sein.} Jadwisia war ein sanftes, sommersprossiges Mädchen, das über jedes Wort Anteks lachte, selbst wenn er gar nicht scherzte. Auf der Hochzeit tanzte Antek mit Hanka und mit Marysia auf dem Arm, bis die Kleine ihm auf der Schulter einschlief.{ uklad_z_mamunami == oddane_lata: Eine Tante Jadwisias musterte Jaromirs graue Schläfen und fragte Hanka flüsternd, ob ihr Mann Witwer gewesen sei, als er sie nahm.}
In diesem Sommer rückte das Jungholz unterm Wald um einen weiteren Feldrain vor. Im Roggen bei Staś’ Leuten schossen die Fichtchen dichter auf als die Kornrade; die Kinder rissen sie jeden Morgen aus, und am nächsten Tag standen an denselben Stellen neue, schon kniehoch.
Der alte Wójcik verlosch von Monat zu Monat mehr. Seit jenem Pfingsten, als die Rusalken aus dem Wasser gestiegen waren, sprach er kaum noch. Abends saß er auf dem Steg und redete leise etwas zum Wasser hin, bis seine Frau kam und ihn holte. Die Wójcikowa gestand Hanka, dass sie sich im Juni, obwohl Hankas Großmutter davor gewarnt hatte, nachts im Schilf auf die Lauer gelegt und belauscht hatte, wie die Mamunen wuschen. Über jedem Leichentuch riefen sie jemandes Namen. Sie hatte nur einen gehört. Wessen, wollte sie nicht sagen, aber seitdem wich sie ihrem Mann nicht mehr von der Seite. # pokaz: wieczor # dalej
-> czuwanie_u_wojcikow

= czuwanie_u_wojcikow
# tlo: czuwanie_izba
Der alte Wójcik starb im November, in der Nacht nach dem ersten Schnee.
Am Morgen, als Jaromir zum Stall hinausging, wartete die Wójcikowa schon am Zaun – im schwarzen Kopftuch, die Augen verquollen vom Weinen, den Rosenkranz in der Faust.
„Jaromir, mein Guter“, sagte sie, „sitz heute Nacht bei ihm. Keiner will kommen. Sie reden im Dorf…“ Sie brach ab.
Sie redeten, und nicht wenig. Dass Wójcik mit Zähnen zur Welt gekommen sei, wie schon Staś’ Mutter erzählt hatte, die vor sechzig Jahren bei jener Geburt geholfen hatte. Dass er nie krank gewesen sei, nicht einmal in den Hungerwintern. Dass die Seuche seinen Stall verschont habe, als bei den Nachbarn die Kühe eine nach der anderen eingingen. Und dass der Leib, obwohl er schon seit dem Morgengrauen dalag, gar nicht erkaltete.
Am Abend versammelten sich in der Hütte der Wójciks ein paar Männer – Jaromir, Antek, der alte Staś, der darauf bestanden hatte zu kommen, obwohl er sich kaum auf den Beinen hielt – und einige Frauen zum Singen. Den Spiegel hatte man mit Leinen verhängt, das Wasser aus den Zubern über die Schwelle gegossen und das Fenster eine Handbreit geöffnet, damit die Seele hinauskonnte. In der Stube roch es nach Wachs, nach feuchter Wolle und nach etwas Süßlichem, von dem einem übel wurde.
Wójcik lag auf dem Brett an der Wand, im leinenen Totenhemd, die Hände auf der Brust gefaltet. Seine Wangen waren rosig wie bei einem Lebenden. Die Lider wollten sich nicht ganz schließen, und unter den Wimpern schimmerte das Weiße der Augen. Und die Lippen… die Lippen standen leicht offen, als drückte etwas sie von innen auseinander. # pokaz: wargi
# pytanie: Was wird Jaromir tun?
*   [Dem Toten die Lippe anheben und nachsehen, was darunter ist.]
    ~ sprawdzil_zeby = true
    Jaromir trat an das Brett und hob dem Toten vorsichtig, mit zwei Fingern, die Oberlippe an.
    Zähne. Zwei Reihen Zähne – eine hinter der anderen, klein und spitz wie bei einem Hecht. # pokaz: zeby
    Hinter ihm stöhnte jemand auf. Der alte Staś bekreuzigte sich dreimal, und die Frauen brachen das Lied mitten im Wort ab.
    „Zwei Seelen“, flüsterte Staś. „Meine Mutter, Gott hab sie selig, hat ihn aufgefangen, wie er auf die Welt gekommen is. Hat gesagt, der Junge hätt Zähne gehabt wie ein Hechtlein, und sie hat danach bis zum Morgen auf den Knien gelegen, weil ihr war, als ob…“ Er brach ab. „Die eine is zu Gott gegangen. Und die andre… die andre is noch hier.“ # dalej
*   [Den Toten nicht anrühren – das schickt sich nicht.]
    „Lasst ihn“, sagte Jaromir, als Antek nach dem Gesicht des Toten griff. „Das schickt sich nicht.“
    Antek zog die Hand zurück. Die Frauen sangen weiter, die Männer setzten sich an die Wand, und keiner blickte mehr zum Brett hinüber. Aber Jaromir spürte den ganzen Abend, dass der Tote sie unter den halb geschlossenen Lidern hervor beobachtete. # pokaz: powieki # dalej
-   -> o_polnocy

= o_polnocy
# tlo: polnoc_strzyga
Gegen Mitternacht begannen die Kerzen zu rußen. Die Flammen wurden klein und brannten bläulich wie Irrlichter über dem Sumpf. Die Frauen sangen immer leiser, bis sie schließlich verstummten.
Da zuckten die Finger des Toten. # pokaz: palce
Erst einer, dann ein zweiter. Die Nägel scharrten leise über das Brett. Die Lider hoben sich langsam und gaben Augen frei, trüb wie bei einem toten Fisch. Der Mund öffnete sich weiter, und aus der Kehle drang ein Laut – keine Stimme, nur ein langes, pfeifendes Seufzen, als schöpfe jemand, den man unter dem Eis hervorgezogen hat, den ersten Atem.
Der alte Wójcik begann sich aufzurichten. # pokaz: wstaje
Eine der Frauen schrie auf und stürzte zur Tür. Staś stand wie angewurzelt, und Antek packte Jaromir am Arm.
~ zapiski += strzyga_1
# pytanie: Was wird Jaromir tun?
*   [Ihn mit dem Gesicht aufs Brett drehen.]
    ~ polnoc_strzygi = na_twarz
    „Aufs Gesicht mit ihm!“, schrie Staś. „Eh er hochkommt!“
    Jaromir und Antek warfen sich auf den Toten. Er war schwer wie ein Stein und wehrte sich dennoch mit einer Kraft, die er nicht einmal zu Lebzeiten gehabt hatte. Als sie ihn auf den Bauch wälzten, riss er jäh den Kopf herum und schlug die Zähne in Anteks Hand. Antek heulte auf, ließ aber nicht los. # pokaz: twarz
    Sie drückten ihn mit dem Gesicht aufs Brett und hielten ihn zu zweit, bis draußen der erste Hahn krähte. Der Leib erschlaffte und rührte sich nicht mehr.
    Am Morgen wusch Hanka Anteks Hand mit Schnaps aus und wickelte Leinen darum. Die Wunde war nicht tief, wollte aber den ganzen Winter nicht heilen. # dalej
*   [Ihm die Sichel an den Hals setzen.]
    ~ polnoc_strzygi = sierp_przy_szyi
    An der Wand neben der Tür hing eine Sichel. Jaromir riss sie vom Pflock und setzte sie dem Toten mit der Schneide an den Hals, dicht unterm Kinn.
    Wójcik zuckte zusammen, als hätte er sich verbrannt, und sank zurück aufs Brett. Die Schneide ritzte die Haut – flach, kaum ein Kratzer – und aus der Wunde sickerte ein Rinnsal Blut. Schwarz und dick wie Pech. In der Stube roch es nach Fäulnis. # pokaz: sierp
    Jaromir hielt ihm die Sichel bis zum Morgengrauen an die Kehle. Seine Hände wurden so taub, dass er die Finger nicht mehr spürte.
    Am Morgen wusste schon das halbe Dorf, dass bei den Wójciks der Tote geblutet hatte. Bis Mittag wusste es das ganze. # dalej
*   { ekwipunek ? gromnica } [Die Lichtmesskerze anzünden und sie ihm in die Hände legen.]
    ~ polnoc_strzygi = gromnica_w_dloniach
    Jaromir griff nach der Lichtmesskerze, die Hanka ihm beim Fortgehen zugesteckt hatte, zündete sie an der rußenden Flamme an und legte sie dem Toten in die Hände.
    Das Wachs zischte, als wäre es auf glühendes Blech getropft. Wójcik erstarrte. Sein Gesicht veränderte sich für einen Augenblick – wurde weich, als erinnere er sich an etwas – und aus dem offenen Mund kam ein leises Flüstern: # pokaz: gromnica
    „Kaśka…“
    ~ ekwipunek -= gromnica
    Dann schloss er die Augen und sank aufs Brett zurück. Die Lichtmesskerze brannte in seinen Händen bis zum Morgen, bis nichts mehr von ihr übrig war. # dalej
-   -> pogrzeb_wojcika

= pogrzeb_wojcika
# tlo: cmentarz_bukowiec
Am Morgen kam der Pfarrer aus Bukowiec. Er hörte sich alles schweigend an, die Lippen immer fester zusammengepresst, und als Staś davon anfing, wie man früher solche wie Wójcik begraben hatte – mit dem Gesicht zur Erde, die Sichel über der Kehle, Mohn im Sarg –, schnitt er ihm mitten im Satz das Wort ab.
„In geweihter Erde wird es keine heidnischen Bräuche geben“, sagte er hart. „Entweder ihr begrabt ihn wie einen Christen, oder ihr begrabt ihn selbst. Hinter der Friedhofsmauer.“ # pokaz: ksiadz
Die Wójcikowa sah Jaromir an. Sie war die Taufpatin seiner Tochter und bat ihn seit gestern schon zum zweiten Mal um etwas – diesmal nicht mit Worten, sondern mit den Augen.
# pytanie: Wie werden sie Wójcik begraben?
*   [Ihn nach altem Brauch begraben – hinter der Friedhofsmauer.]
    ~ pochowek_wojcika = pochowany_za_murem
    Sie begruben ihn zu dritt – Jaromir, Antek und Staś – hinter der Mauer des Friedhofs in Bukowiec, an der Wegkreuzung. Mit dem Gesicht zur Erde. Über der Kehle schlug Jaromir eine Sichel ein, die Schneide zum Hals, und die Wójcikowa streute selbst eine Handvoll Mohn in den Sarg und murmelte dabei etwas vor sich hin. # pokaz: za_murem
    Der Pfarrer kam nicht. Die Leute aus der Gemeinde sahen von Weitem zu ihnen herüber wie zu Aussätzigen. Die Witwe sagte auf dem ganzen Rückweg kein Wort, doch als sie sich vor ihrer Hütte trennten, griff sie nach Jaromirs Hand und drückte sie fest.
    „Ich dank dir, mein Junge“, flüsterte sie. „Jetzt hat er seine Ruhe. Und ich auch.“ # dalej
    -> spokojna_zima
*   [Ihn nach dem Willen des Pfarrers begraben, in geweihter Erde.]
    ~ pochowek_wojcika = pochowany_po_ksiedzowsku
    Sie begruben ihn auf dem Friedhof in Bukowiec, in geweihter Erde, das Gesicht zum Himmel, den Rosenkranz in den Händen. Der Pfarrer las eine Messe, besprengte den Sarg mit Weihwasser, und die Leute gingen erleichtert nach Hause, weil alles seine Ordnung gehabt hatte. # pokaz: poswiecona
    Nur der alte Staś schüttelte den Kopf, als die Totengräber Sand schaufelten, und sagte leise, zu sich selbst:
    „Da drin hält er’s nicht aus.“ # dalej
    -> trzecia_noc
*   { mak_w_medaliku } [Ihn nach dem Willen des Pfarrers begraben – aber mit Hankas Mohn im Sarg.]
    ~ pochowek_wojcika = pochowany_z_makiem
    Als sie den Sarg aus der Hütte trugen, trat Hanka näher und öffnete das Medaillon, das sie seit jenem Sommer mit der Mittagsfrau am Hals trug. Sie schüttete den getrockneten Mohn auf die Brust des Toten – denselben, den Jaromir ihr einst in die Hand gelegt hatte, als sie unter dem roten Mond auf dem Zaun saßen.
    „Schlaf“, flüsterte sie. „Mohn schläfert sogar solche wie dich ein.“ # pokaz: mak
    ~ mak_w_medaliku = false
    Wójcik ruhte in geweihter Erde, das Gesicht zum Himmel, den Rosenkranz zwischen den Fingern und ein Häufchen Mohn auf der Brust. Doch auf der Schwelle der Wójciks waren ein paar Körnchen liegen geblieben, und der Pfarrer sah sie. Nach dem Begräbnis rief er Hanka in die Sakristei. Sie kam bleich heraus und sagte Jaromir nicht, was sie dort zu hören bekommen hatte – nur so viel, dass sie bis Ostern nicht zur Kommunion gehen dürfe. Die Weiber aus Bukowiec rückten in der Kirchenbank von ihr ab. Hanka klappte das leere Medaillon zu und öffnete es nie wieder. # pokaz: poswiecona # dalej
    -> spokojna_zima

= spokojna_zima
# tlo: cmentarz_bukowiec
~ zapiski += strzyga_2
{ pochowek_wojcika == pochowany_za_murem:
    Nach dem Begräbnis fiel Schnee und lag weich bis in den Februar. Das Grab hinter der Friedhofsmauer war bis zum Frühling von Gras überwachsen, und niemand außer der Wójcikowa sah danach. Sie kam jeden Sonntag, allein, und setzte sich auf den Stein an der Wegkreuzung – bis sie im Winter bettlägerig wurde. # pokaz: wdowa
- else:
    Nach dem Begräbnis fiel Schnee und lag weich bis in den Februar. Auf das Grab in Bukowiec stellte die Wójcikowa jeden Sonntag ein Lichtlein, bis sie krank wurde, und Hanka legte einen Kranz aus trockenem Mohn darauf. # pokaz: swieczka
}
Der alte Wójcik stand nicht mehr auf. Nur die Hunde zogen noch viele Monate lang den Schwanz ein, wenn sie an seiner Hütte vorbeikamen. # dalej
-> boze_narodzenie

= trzecia_noc
# tlo: strzyga_okno
In der dritten Nacht nach dem Begräbnis, noch vor Mitternacht, hörte Hanka auf dem Hof den Schnee knirschen. Sie ging hinaus, ehe Jaromir aufstehen konnte, und kam mit der Wójcikowa zurück. Die Alte hatte sich den Schafspelz irgendwie über die bloßen Schultern geworfen und den Rosenkranz so fest um die Hand gewickelt, dass sich die Perlen in die Haut gruben.
„Er ist zurückgekommen“, schluchzte sie. „Er stand unterm Fenster. Hat das Gesicht an die Scheibe gedrückt und mich beim Namen gerufen. Zwei Nächte lang hat er gerufen. Und heute… heute hat er nach der Kleinen gefragt.“
Hanka wurde bleich und sah unwillkürlich zur Wiege hin, in der Marysia schlief. Dann begann sie wortlos, der Wójcikowa auf der Bank am Ofen ein Lager zu bereiten, doch die Alte packte sie bei der Hand.
„Wenn er mich zu Hause nicht findet, kommt er hierher“, flüsterte sie und ging wieder hinaus in die Nacht.
In dieser Nacht tat Jaromir kein Auge zu. Er saß an der Wiege, die Axt{ siekiera_dziadka: des Großvaters} auf den Knien. Gegen Morgen, kurz vor dem Hahnenschrei, hörte er ein leises Geräusch, wie ein Atmen dicht hinter der Scheibe. Er hob den Kopf. Auf dem Glas war von außen ein milchiger Fleck aufgeblüht. # pokaz: oddech
Vor dem Fenster stand der alte Wójcik. Im lehmverschmierten Totenhemd, mit den trüben Augen eines toten Fisches. Sein Mund stand offen, Jaromir sah zwei Reihen Zähne, und über das Kinn rann ihm ein dunkles Rinnsal. # pokaz: strzyga
Er sah auf die Wiege.
# pytanie: Was wird Jaromir tun?
*   [Sein Grab öffnen und ihn nach altem Brauch bestatten.]
    ~ trzy_noce = rozkopany_grob
    -> rozkopany_grob_wojcika
*   [Bis zum Morgengrauen an der Wiege wachen – soll er kommen, wenn er sich traut.]
    ~ trzy_noce = czuwanie_przy_kolysce
    Jaromir stand auf, stellte sich zwischen Fenster und Wiege und hob die Axt. Wójcik sah ihn lange an, ohne zu blinzeln. Dann lächelte er – so breit, dass alle Zähne im grauen Licht aufblitzten – und ging vom Fenster weg. # pokaz: odszedl
    Zu ihnen kam er nie wieder. Doch kaum war es hell geworden, lief Hanka zur Wójcikowa – und war nach der Dauer eines Vaterunsers zurück, ohne Kopftuch, die Finger auf den Mund gepresst. Die Witwe lag in ihrer Stube auf dem Bett, die Hände auf der Brust gefaltet, mit friedlichem Gesicht. Am Hals hatte sie zwei kleine rote Einstiche, wie von einer Ahle.
    ~ zapiski += strzyga_2
    Man begrub sie neben ihrem Mann. Diesmal nach altem Brauch – der Pfarrer erhob, als er ihren Hals sah, kein Wort des Widerspruchs. # dalej
    -> boze_narodzenie

= rozkopany_grob_wojcika
# tlo: cmentarz_bukowiec
Noch am selben Tag, nach Einbruch der Dunkelheit, gingen Jaromir und Antek mit Schaufeln zum Friedhof in Bukowiec. Sie gruben das frische Grab auf, öffneten den Sarg – Wójcik lag darin rosig und prall, mit Blut auf den Lippen – und drehten ihn mit dem Gesicht zur Erde. Über der Kehle schlugen sie eine Sichel ein, und in den Sarg streuten sie Mohn. Sie schaufelten das Grab wieder zu und kehrten vor dem Morgengrauen heim, ohne ein Wort miteinander zu wechseln. # pokaz: rozkop
~ zapiski += strzyga_2
Wójcik kam nicht wieder. Aber als der Pfarrer den frisch aufgewühlten Grabhügel sah, verfluchte er von der Kanzel herab „die Gottlosen, die ein Grab geschändet haben“, und noch viele Jahre spürte Jaromir in der Kirche die Blicke der Leute aus Bukowiec auf sich. # dalej
-> boze_narodzenie

= boze_narodzenie
# tlo: wigilia_stol
~ zapiski += mamuny_3
~ zapiski += starzec_3
{ trzy_noce == czuwanie_przy_kolysce:
    Die Hütte der Wójciks stand den ganzen Winter leer. Niemand wollte sie kaufen oder auch nur hineinschauen, und die Kinder machten einen weiten Bogen um sie.
- else:
    Die Wójcikowa erkrankte in diesem Winter an der Lunge, überstand ihn aber. In ihrer Hütte brannte jede Nacht eine Kerze in dem Fenster, das zum See hinausging. # pokaz: swieca
}
{ ekwipunek ? szczenie_psa:
    Marysia sprach schon ein paar Wörter, und am lautesten „Papa“. Der fuchsrote Welpe folgte ihr überallhin und schlief unter der Wiege, die Nase an den Stäben. # pokaz: szczenie
- else:
    Marysia sprach schon ein paar Wörter, und am lautesten „Papa“.
}
Beim Einschlafen summte sie manchmal ein paar Töne vor sich hin – hinauf und hinunter, wie Wasser, das man von Krug zu Krug gießt. Eine solche Melodie kannte weder Hanka noch Hankas Mutter.
Am Heiligabend deckte Hanka wie jedes Jahr einen Teller mehr – für einen verirrten Wanderer – und legte eine Weihnachtsoblate darauf. Niemand kam. Doch am Morgen, als sie den Tisch abräumte, lag auf diesem Teller statt der Oblate eine Handvoll Moos. Feucht und grün wie im Mai. # pokaz: mech # dalej
-> rozdzial_dwunasty_ciag_dalszy


// Koniec rozdziału dwunastego — dalej rozdział trzynasty.
=== rozdzial_dwunasty_ciag_dalszy ===
# ozdobnik
_Ende des zwölften Kapitels._ # dalej
-> rozdzial_trzynasty
