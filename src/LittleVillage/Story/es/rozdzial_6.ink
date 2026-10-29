// ------------------------------------------------------------
//  Rozdział szósty — Południca. Żniwa w upale, Jaromir ma trzynaście
//  lat. Południca zadaje w samo południe trzy zagadki; za każdą
//  pomyłkę tnie sierpem. Księga daje dodatkową odpowiedź. Przy dwóch
//  i więcej pomyłkach ratuje go Hanka z dzbanem wody (gorączka, blizna),
//  inaczej Południca ostrzega: „Pan Lasu się budzi, pilnuj kapliczek”.
// ------------------------------------------------------------

=== rozdzial_szosty ===
# tlo: zniwa
# rozdzial: Capítulo sexto
# tytul: Mediodía
La siega llegó con un calor terrible. Hacía semanas que no caía ni una gota de lluvia, el cielo blanqueaba de bochorno ya al amanecer, y la tierra de las lindes se agrietaba en hendiduras largas y retorcidas. La mies maduró de golpe, en pocos días, y se alzaba ahora en los campos dorada y seca, crujiendo como papel a cada soplo de aire.
Salían al campo antes de que cantaran los gallos. Los hombres iban delante, las mujeres detrás ataban las gavillas, y los niños recogían las espigas caídas y llevaban agua en cántaros de barro. Jaromir tenía trece años y por primera vez segaba junto a los mayores – en la hilera, paso a paso detrás de su padre, y la hoja silbaba en sus manos casi tan pareja como la de los viejos segadores. El aire olía a paja caliente y a sudor, las guadañas tintineaban contra las piedras de afilar, y a cada momento salían volando de entre los pies codornices espantadas.
Hanka trabajaba en el bancal de al lado. De vez en cuando se enderezaba, se secaba la frente con el dorso de la mano y miraba de reojo hacia Jaromir, y cuando sus miradas se cruzaban, volvía la cabeza al instante y regresaba a las gavillas con un afán fingido. Jaromir no sabía por qué cada vez le entraba entonces un calor tan extraño – y no por el sol. # pokaz: hanka
{ figurka_u_staruchy:
    Su padre apenas hablaba. A mediodía en punto mandaba siempre a todos salir del campo, a la sombra, aunque el centeno se fuera a desgranar.
- else:
    Su padre bromeaba y cantaba mientras trabajaba, pero a mediodía en punto mandaba siempre a todos salir del campo, a la sombra. «Así lo hacía mi abuelo», decía, «y el abuelo de él también. No me lo he inventado yo.» Y cuando los niños preguntaban más, contaba la historia de una moza, la mejor segadora de la comarca, que apostó con los gañanes que ella sola segaría toda la haza antes del mediodía. No se retiró del campo en lo peor del calor. La encontraron al anochecer con la hoz en la mano y espigas en el pelo.
}
Un día Jaromir se quedó solo al final del bancal. Quería terminar la hilera antes de bajar a la sombra, y no se dio cuenta de cuándo los demás se habían ido bajo el peral de la linde. El sol se le plantó justo encima de la cabeza, y la sombra se encogió hasta desaparecer bajo sus pies. # pokaz: sam # dalej
-> poludnica_przychodzi

= poludnica_przychodzi
# tlo: poludnica
Se hizo el silencio. Callaron los grillos, la mies dejó de susurrar, y el aire sobre el campo se espesó y empezó a ondular como el agua sobre una piedra caliente.
Entre las espigas apareció una mujer. # pokaz: poludnica
Era alta y flaca, tiesa como una cuerda tensa, con una camisa blanca hasta los tobillos que ondeaba aunque no soplaba ni el más leve viento. El pelo claro le llegaba a las rodillas y se le abría a los lados, y en la cabeza llevaba una guirnalda de espigas y amapolas rojas. Tenía la cara pálida y estrecha, de pómulos altos, los ojos como lienzo blanqueado al sol, sin pupilas, y la boca apretada en una línea fina. Los pies descalzos no tocaban el suelo – flotaba unas pulgadas por encima del rastrojo, y debajo de ella temblaba la calina. En la mano derecha sostenía una hoz. De la punta colgaba una gota roja.
La mano izquierda la tendió hacia él, abierta, como si le pidiera algo.
«Quien trabaja en mi hora», dijo con una voz seca como el crujido de la paja, «tiene que responderme. Tres acertijos. Por cada error – un tajo.»
{ ekwipunek ? ksiega:
    Ante los ojos de Jaromir apareció una página del libro de don Ignacy: «La Dama del Mediodía anda por los campos en lo peor del calor y les hace preguntas a los segadores. Quien responde a todo, queda libre. Quien se equivoca o huye, a ese lo siega con la hoz o le manda la fiebre.» Debajo, con letra más menuda, el maestro había añadido una solución que años atrás había oído a una vieja de Bukowiec, y la había subrayado dos veces: «El grano muere tres veces y tres veces vuelve.»
}
# dalej
-> zagadka_1

= zagadka_1
La Dama del Mediodía ladeó la cabeza, como un pájaro.
«Sin piernas corre por la mies, sin manos peina las espigas, sin boca se lamenta en la chimenea. Todos lo han oído, y nadie lo ha visto todavía. ¿Qué es?»
# pytanie: ¿Qué responderá Jaromir?
*   [El fuego.]
    -> zle_1
*   [El viento.]
    La Dama del Mediodía calló un instante. Luego le temblaron los labios – no era una sonrisa, sino algo que se le parecía.
    «El viento», repitió. «Mi hermano. Bien.» # dalej
    -> zagadka_2
*   [El humo.]
    -> zle_1

= zle_1
{ odwaga_jaromira && not poludnica_darowala:
    ~ poludnica_darowala = true
    La hoz silbó – y se detuvo a un pelo de su hombro. Jaromir no se movió. {figurka_u_staruchy:Una vez, en aguas hondas, algo le había rozado la pantorrilla y él había huido a la orilla. Esta vez no huyó.|Una vez, entre los juncos del lago, había puesto la mano sobre un madero carbonizado, aunque los demás no se atrevían. Esta vez no retrocedió.}
    «No huyes», dijo la Dama del Mediodía, y apartó la hoja. «Esta te la perdono. Pero era el viento. El fuego y el humo los ha visto todo el mundo, y el viento no lo ha visto nadie todavía.» # dalej
    -> zagadka_2
}
~ pomylki_poludnica += 1
~ ciecie_ramie = true
La hoz silbó antes de que Jaromir tuviera tiempo de parpadear. Sintió un dolor ardiente en el hombro, y cuando bajó la vista, a través de la camisa rasgada rezumaba sangre. # pokaz: ciecie
«Mal», dijo la Dama del Mediodía. «El viento. El fuego y el humo los ha visto todo el mundo, y el viento no lo ha visto nadie todavía.» # dalej
-> zagadka_2

= zagadka_2
«Lo entierran como a un difunto, y se levanta. Lo descabezan como a un malhechor, y no sangra. Lo apalean, y no se queja. Y cuando lo meten en las brasas – solo entonces lo quieren todos. ¿Qué es?»
# pytanie: ¿Qué responderá Jaromir?
*   [El lino.]
    -> zle_2
*   [El centeno.]
    «El centeno», susurró, y su cara blanca se suavizó un momento, como si recordara su propia siega, hace mucho tiempo. «Chico listo.» # dalej
    -> zagadka_3
*   [La patata.]
    -> zle_2
*   { ekwipunek ? ksiega } [El grano.]
    ~ poludnica_uklon = true
    La Dama del Mediodía abrió la boca y la cerró sin decir palabra. Lo miró largo rato con aquellos ojos blancos, y luego inclinó la cabeza – levemente, de forma apenas visible, como ante alguien a quien se respeta. # pokaz: uklon
    «El grano», repitió en voz baja. «En la tierra muere, bajo la guadaña y el mayal vuelve, y en el horno nace hecho pan. Una respuesta así no la oía desde hace cien años. Alguien te ha enseñado bien.» # dalej
    -> zagadka_3

= zle_2
{ odwaga_jaromira && not poludnica_darowala:
    ~ poludnica_darowala = true
    La hoz silbó – y se detuvo a un pelo de su mano. Jaromir no se movió. {figurka_u_staruchy:Una vez, en aguas hondas, algo le había rozado la pantorrilla y él había huido a la orilla. Esta vez no huyó.|Una vez, entre los juncos del lago, había puesto la mano sobre un madero carbonizado, aunque los demás no se atrevían. Esta vez no retrocedió.}
    «No huyes», dijo la Dama del Mediodía, y apartó la hoja. «Esta te la perdono. Pero era el centeno. El lino no se mete en el horno, y la patata no la trilla nadie.» # dalej
    -> zagadka_3
}
~ pomylki_poludnica += 1
~ ciecie_dlon = true
La hoz relampagueó en el aire. El tajo le cruzó el dorso de la mano, poco profundo, pero la sangre salpicó el rastrojo. # pokaz: ciecie
«El centeno», siseó. «El lino no se mete en el horno, y la patata no la trilla nadie.» # dalej
-> zagadka_3

= zagadka_3
El aire ondulaba con más fuerza. El calor le subía a Jaromir hasta la garganta, le zumbaban los oídos, y el campo empezó a mecerse como si estuviera de pie en una barca.
«Y ahora dime», bajó la voz la Dama del Mediodía, «¿quién tiene una casa más vieja que todas las cabañas de la comarca, y no hay en ella ni una sola puerta? ¿Quién apacienta lobos como vosotros apacentáis ovejas? ¿Y a quién le arrancaron este verano de la cerca la estaca más gruesa, la de roble?»
# pytanie: ¿Qué responderá Jaromir?
*   [San Jorge.]
    ~ pomylki_poludnica += 1
    ~ ciecie_policzek = true
    «¿Un santo?» La Dama del Mediodía se echó a reír, seca y desagradablemente, como el rastrojo que cruje. «Los santos están en los humilladeros, muchacho. Y aquel espera a que alguien se los arranque.»
    La hoja centelleó. Jaromir sintió un arañazo agudo en la mejilla, y por la barbilla le corrió algo caliente. # pokaz: ciecie
*   [El Señor del Bosque.]
    Todo calló todavía más, aunque parecía que ya no podía haber más silencio. La Dama del Mediodía retiró la mano tendida.
    «Lo conoces», dijo, y por primera vez sonó en su voz algo parecido al miedo. «Eso es malo. Porque él también te conoce a ti.»
*   [No lo sé.]
    La Dama del Mediodía guardó silencio largo rato.
    «Lo sabes», dijo. «Solo que tienes miedo de decirlo. Es prudente. No pronuncies su nombre a mediodía.»
-   -> wynik

= wynik
{ pomylki_poludnica:
- 0:
    La Dama del Mediodía bajó la hoz.
    «Eres libre», dijo. «Pero escucha, porque no lo repetiré. El Señor del Bosque se despierta. Con cada árbol talado duerme menos hondo. Vela por los humilladeros, muchacho. Vela por ellos mientras sigan en pie.»
- 1:
    La Dama del Mediodía lo estuvo mirando largo rato, y luego bajó la hoz.
    «Podría haber sido peor», dijo. «Vete. Pero recuerda: el Señor del Bosque se despierta. Vela por los humilladeros.»
- else:
    La Dama del Mediodía alzó la hoz bien alto, por encima de su cabeza. El chico cerró los ojos – y entonces oyó un grito. # pokaz: zamach
}
Alguien entraba corriendo en el bancal, tropezando con las gavillas. Hanka. Llevaba en las manos un cántaro de barro del que salpicaba el agua. # pokaz: dzban
«¡Jaromir! ¡Jaromir! ¿Qué haces aquí a mediodía en punto?»
{ pomylki_poludnica < 2:
    ~ ostrzezenie_poludnicy = true
    Cuando volvió a mirar al frente, ya no había nadie. Solo en el rastrojo quedaba una guirnalda de espigas y amapolas, que empezaban ya a marchitarse. # pokaz: znika, wianek # dalej
    -> po_poludniu
- else:
    Hanka no aflojó el paso. Llegó de un salto junto al chico y arrojó el agua del cántaro – no sobre él, sino hacia delante, allí donde temblaba la calina.
    «¡Toma, bebe!», gritó al vacío con la voz quebrada, como le había enseñado su abuela. «¡Bebe y suéltalo!»
    La Dama del Mediodía vaciló con la hoz en alto. Miró a la muchacha, luego a la mancha oscura que desaparecía en la tierra agrietada – y se deshizo en el aire tembloroso como el vapor. Hanka le echó a Jaromir el resto del agua por la cabeza. # pokaz: znika, woda # dalej
    -> goraczka
}

= goraczka
# tlo: goraczka
~ blizna_sierpa = true
~ zapiski += poludnica_1
Durante tres días lo consumió la fiebre. Yacía en la cabaña bajo paños mojados, {rany_sierpa()} le ardían como si se las hubieran quemado con un hierro, y en el delirio seguía viendo unos ojos blancos sin pupilas y oyendo un susurro seco: «Por cada error – un tajo.» # pokaz: majaki
Su madre no se apartaba de él ni un momento. Hanka traía hierbas de su abuela, y el segundo día, sin decir nada a nadie, fue a mediodía en punto a aquel bancal y dejó en la linde un cántaro de agua fresca. Volvió temblando y no quiso contar qué había visto allí. Esa noche la fiebre empezó a bajar. # pokaz: hanka
Cuando por fin se levantó, le quedó en {miejsce_blizny()} una cicatriz blanca en forma de media luna, como de la punta de una hoz.
-> czy_powiedziec

= po_poludniu
# tlo: czerwony_ksiezyc
~ zapiski += poludnica_1
~ mak_w_medaliku = true
A los segadores no les contó lo que había pasado a mediodía. Solo al anochecer, cuando estaba sentado con Hanka en la cerca mirando cómo salía sobre el rastrojo una luna grande y roja, sacó del bolsillo una amapola marchita de la guirnalda y se la puso en la palma de la mano. # pokaz: mak
De los campos llegaba olor a polvo y a tierra quemada por el sol, los grillos cantaban como enloquecidos, y Hanka estaba sentada tan cerca que a través de la camisa notaba el calor de su brazo.
«¿De quién es?», preguntó.
«De alguien que me mandó velar por los humilladeros», dijo.
Hanka no lo entendió, pero guardó la amapola en el medallón que llevaba al cuello, y desde entonces nunca se separó de él.
-> czy_powiedziec

= czy_powiedziec
Antek abordó a Jaromir en cuanto se quedaron solos.
«Te vi desde debajo del peral», dijo en voz baja. «Estabas solo al final del bancal hablando con el aire, y el aire temblaba encima de ti como sobre el fogón de la fragua.» Tragó saliva. «Si se lo vas a contar a los mayores, yo también diré lo que vi. Entre los dos nos creerán antes.»
# pytanie: ¿Se lo contará Jaromir a su padre?
*   [{ostrzezenie_poludnicy:Contarle a su padre la advertencia de la Dama del Mediodía.|Contarle a su padre lo de la Dama del Mediodía.}]
    ~ powiedzial_ojcu_poludnica = true
    # tlo: kapliczki_noc
    { figurka_u_staruchy:
        Su padre lo escuchó en silencio. Luego se levantó, descolgó el farol del clavo y salió a la noche. Volvió al amanecer. Su madre contó después que había recorrido todos los humilladeros de Zapadlina y que ante cada uno se había arrodillado, como si pidiera perdón. # pokaz: ojciec # dalej
    - else:
        Su padre no se rió. Estuvo mucho rato callado, y luego dijo que al día siguiente reuniría a la gente e irían juntos a ver a Urbaniak. «Los humilladeros no los tocará», añadió. «Aunque me eche encima el aserradero entero.» # pokaz: ojciec # dalej
    }
    -> rozdzial_szosty_ciag_dalszy
*   [Guardárselo para sí.]
    # tlo: kapliczki_noc
    Jaromir no se lo contó a nadie – salvo a Antek, que de todos modos lo sabía. Cada noche, cuando todos dormían ya, se escabullían los dos y recorrían los humilladeros más cercanos. Enderezaban los tejadillos torcidos y arrancaban las malas hierbas que trepaban por los postes. A veces, a mitad de la faena, callaban los grillos – primero al pie del bosque, luego cada vez más cerca – y entonces se quedaban inmóviles hasta que volvían a cantar. Jaromir regresaba antes del alba empapado de sudor frío, con las perneras mojadas de rocío, y tardaba mucho en dormirse, atento a cada susurro al otro lado de la ventana. # pokaz: jaromir # dalej
    -> rozdzial_szosty_ciag_dalszy


// Koniec rozdziału szóstego — dalej rozdział siódmy.
=== rozdzial_szosty_ciag_dalszy ===
# ozdobnik
~ zapiski += pan_lasu_3
_Fin del capítulo sexto._ # dalej
-> rozdzial_siodmy

=== function rany_sierpa()
{
- ciecie_ramie && ciecie_dlon && ciecie_policzek: ~ return "las heridas del hombro, la mano y la mejilla"
- ciecie_ramie && ciecie_dlon: ~ return "las heridas del hombro y la mano"
- ciecie_ramie: ~ return "las heridas del hombro y la mejilla"
- else: ~ return "las heridas de la mano y la mejilla"
}

=== function miejsce_blizny()
{
- ciecie_ramie: ~ return "el hombro"
- ciecie_dlon: ~ return "la mano"
- else: ~ return "la mejilla"
}
