// ------------------------------------------------------------
//  Prolog, część druga — miasto, rodzina, powrót do Zapadliny
//  i zakończenie prologu (zależy od tego, komu Maciek sprzedał figurkę).
// ------------------------------------------------------------

=== miasto ===
# tlo: gosciniec
# rozdzial: Prólogo
# tytul: La ciudad
El camino real se alargaba entre campos y sotos, ora cuesta arriba, ora cuesta abajo. Lo adelantaban carros de campesinos que llevaban grano al mercado, y en cierto momento pasó traqueteando una calesa desde la que alguien le gritó que se apartara del camino.{ los_psa == oswojony: El perro no se despegaba de su pierna y gruñía a cada rodar de ruedas.} El sol ya estaba alto cuando tras una loma asomó la torre de una iglesia y, a sus pies, los tejados de la ciudad – rojos, grises y cubiertos de musgo, apretados como los granos en la espiga. # dalej
-> rynek

= rynek
# tlo: rynek
La plaza del mercado zumbaba como una colmena. Entre los puestos se abrían paso campesinos con sayos de paño basto, las vendedoras pregonaban huevos y mantequilla, y desde el ayuntamiento llegaban balidos de cabras. Olía a pan, a estiércol de caballo y a pescado ahumado.{ ekwipunek ? figurka: Maciek palpó en el bolsillo la figura de madera. Primero había que venderla – solo después podría pensar en comer.}
{ ekwipunek ? figurka: -> kramarze | -> zakupy }

= kramarze
El primero fue un tendero de estampas y rosarios. Estuvo largo rato mirando la figurilla al trasluz; al fin torció el gesto y se la devolvió deprisa, como si le quemara.
«Esto no es ningún santo», murmuró, y se santiguó a escondidas. «No lo meteré bajo mi techo.»
El tallista de cucharas y escudillas ni siquiera quiso tocarla. Sentenció que la madera estaba carcomida, chamuscada y no servía para nada, como no fuera para encender el fuego.
Solo el ropavejero, con una carretilla llena de pucheros y botas rotas, le dio vueltas entre los dedos un rato más.
«Dos groszy», dijo por fin. «Nadie te dará más por esto.»
Eso costaba una hogaza de pan. Una sola. Maciek prometió que se lo pensaría y echó a andar hacia la parte más pobre del mercado, donde en lugar de puestos había lienzos tendidos en el suelo con cebollas, harapos y chatarra oxidada. # dalej
-> starucha

= starucha
# tlo: zaulek
De pronto alguien lo retuvo por la manga. La mano era pequeña y seca, y olía a menta y a humo.
Ante él estaba una vieja menuda con una capucha oscura, apoyada en un cayado, con una cesta de hierbas secas al hombro. Llevaba la capa remendada pero limpia, y bajo la capucha blanqueaba el borde de una cofia. Tenía un ojo velado por una nube blanca; el otro – negro y vivo – miraba fijamente su bolsillo. # pokaz: starucha
«¿Qué llevas ahí, hijo?», susurró. «Huelo a ceniza. Ceniza vieja, de junto al agua.»
{ los_psa == oswojony:
    El perro le olfateó la cesta, estornudó por las hierbas y luego erizó el pelo y gruñó por lo bajo – no a ella, sino al bolsillo de Maciek. # pokaz: pies
}
Maciek quiso marcharse, pero ella no le soltaba la manga.
«Eso no es tuyo. Lo desenterraste donde no había que escarbar», decía en voz baja, para que nadie alrededor la oyera. «Esa cosa llama, hijo. Mientras la lleves encima, lo que habita en el agua sabrá dónde buscarte. A ti y a los que quieres. No la quemes ni la tires al agua, porque volverá. Alguien tiene que saber qué hacer con ella – y yo lo sé.»
Solo entonces lo soltó.
«Yo te la quitaré. Pero no de balde, porque lo que se da de balde vuelve a quien lo dio. Te daré diez groszy. Cinco veces más de lo que quería darte ese de la carretilla.»
Debía de haber estado muy cerca mientras regateaba con el ropavejero. Solo que él no recordaba haberla visto allí.
# pytanie: ¿A quién venderá Maciek la figurilla?
*   [A la anciana – entiende de estas cosas, y con diez groszy la familia aguantará hasta la primera cosecha.]
    ~ figurka_u_staruchy = true
    ~ ekwipunek -= figurka
    # tlo: rynek
    Maciek sacó la figurilla y la puso sobre la palma tendida. La vieja no la cogió enseguida. Primero la envolvió en un trapito de lino y solo así, a través de la tela, la tomó en la mano. Las monedas las sacó de un hatillo anudado al cinto.
    «Ahora esto es asunto mío», dijo. «Ve con Dios, hijo. Y no vuelvas la vista atrás por ella.»
    Se dio la vuelta y desapareció entre la gente antes de que él alcanzara a responder nada.{ los_psa == oswojony: El perro dejó de gruñir en cuanto el bolsillo quedó ligero.}
    -> zakupy
*   [Al ropavejero por cuatro perras – mejor que acabe entre los pucheros, con alguien que no sabe lo que es.]
    ~ ekwipunek -= figurka
    # tlo: rynek
    «Gracias, madre, pero no hace falta», respondió Maciek, y retrocedió un paso.
    La vieja lo miró largo rato con el ojo sano. «Allá tú», dijo tan solo, y volvió a sus hierbas.
    El ropavejero se encogió de hombros, echó la figurilla entre los pucheros y contó dos groszy. «Ya te dije que nadie te daría más.»{ los_psa == oswojony: El perro no dejó de gruñir hasta que la figurilla desapareció bajo un montón de cascotes.}
    -> zakupy

= zakupy
~ ekwipunek += (zapasy, nasiona)
{
- figurka_u_staruchy: Con las monedas de la vieja y lo que le quedaba de sus cobres, Maciek compró dos hogazas de pan, un saco de grano para gachas, sal, un trozo de tocino, semillas de hortalizas y hasta una cesta de patatas de siembra. El hatillo le aplastaba la espalda, pero era la carga más grata que había llevado en mucho tiempo.
- przeszukal_zgliszcza && not figurka_w_bagnie: Con los últimos cobres y los dos groszy del ropavejero, Maciek compró una hogaza de pan, un puñado de sal, un saquito de grano para gachas y unas pocas semillas de hortalizas. No era mucho, pero daba para sobrevivir unos días.
- else: Con los últimos cobres – lo que le había sobrado del hacha –, Maciek compró una hogaza de pan, un puñado de sal, un saquito de grano para gachas y semillas de varias hortalizas.
}
Era primavera, así que había que darse prisa con la siembra.
Junto al pozo de la ciudad se comió la primera rebanada en semanas. Estaba tierna y todavía caliente. Tuvo que contenerse para no devorarlo todo de una vez.{ los_psa == oswojony: La segunda se la dio al perro.}
Luego salió de la ciudad camino de la granja señorial, donde durante cuatro años había trabajado en campo ajeno y donde lo esperaban su mujer y su hijito. # dalej
-> rodzina


// ------------------------------------------------------------
//  Rodzina — spotkanie z żoną i synem w Czworakach.
// ------------------------------------------------------------
=== rodzina ===
# tlo: czworaki
# rozdzial: Prólogo
# tytul: La familia
Llegó a la casa de los jornaleros cuando el sol ya declinaba hacia poniente. El edificio largo y bajo, con su chimenea torcida, tenía el mismo aspecto que el día en que se marchó. Delante del umbral, un niño de pocos años trazaba signos en la arena con un palito. Alzó la cabeza, miró al hombre extraño y demacrado – y por un momento no lo reconoció. # pokaz: dziecko
«Dobrosław», dijo Maciek en voz baja.
El pequeño se levantó de un salto y corrió adentro gritando. Casi al instante apareció en la puerta Marianna. Se estaba secando las manos en el delantal – y se quedó inmóvil al ver a su marido. # pokaz: marianna
Un momento después se le echó al cuello con tal ímpetu que él se tambaleó. Lloraba contra su hombro, y él le acariciaba el pelo sin poder articular palabra. Dobrosław se abrazó a su pierna y no quería soltarla.
«Jesús, Maciek», susurró ella al fin, apartándose para mirarlo bien. Le tocó las mejillas hundidas, las clavículas salientes. «Te has quedado en la mitad de lo que eras cuando te fuiste. ¿Qué comías allí? ¿Corteza de los árboles?»
Él se rio, aunque tenía lágrimas en los ojos.
{ los_psa == oswojony:
    El perro se quedó a un lado, inseguro, hasta que Dobrosław le tendió la mano. Al poco se dejaba rascar detrás de la oreja, y el pequeño chillaba de alegría. # pokaz: pies
}
Por la noche, ante una escudilla de gachas, Maciek contó. Habló de la cabaña – de las paredes de troncos que él mismo había desbastado, del tejado de carrizo, del umbral donde se sentaba al acabar el trabajo. De la tierra, que sería tanta como fueran capaces de cultivar.
«Mañana al alba nos ponemos en camino», anunció. «Empezaremos todo de nuevo. En lo nuestro.»
Marianna escuchaba sonriendo para sí. Pero cuando el niño se durmió, se le acercó más y lo miró a la cara.
«Y ahora dime la verdad. ¿Qué pasó allí? Bien veo que algo te reconcome.»
# pytanie: ¿Le contará Maciek a su mujer lo de aquella noche?
*   [Sí – contarle lo de la criatura, la leyenda y la voz de los pantanos. Tiene que saber adónde va.]
    ~ zona_wie = true
    No calló nada. Le habló de los aullidos en la maleza, del silencio que lo había despertado, de la figura que salió de la niebla. De la herbolaria quemada y de su maldición. Del pantano que lo llamaba con la voz de Marianna.{ figurka_u_staruchy: De la figurilla chamuscada sacada de entre las cenizas, que aquel mismo día había vendido en el mercado a una anciana encapuchada.}
    Marianna escuchaba en silencio, más pálida con cada frase. Cuando terminó, se quedó largo rato mirando la ventana oscura.
    «¿Volveremos allí?», preguntó al fin, quedamente.
    «Volveremos. Es nuestra casa.»
    Ella asintió. No dijo nada más, pero aquella noche no pegó ojo – él lo notaba por su respiración. # dalej
    -> powrot
*   [No – darle largas. ¿Para qué asustarla, si la cabaña está en pie y lo pasado, pasado está?]
    «No pasó nada», mintió. «Trabajo duro y poca comida. Nada más.»
    Marianna lo miró todavía un momento, como si esperara el resto. Luego suspiró y le apoyó la cabeza en el hombro.
    Aquella noche él tardó mucho en dormirse. Pensó que algún día se lo diría. Algún día, cuando todo se hubiera arreglado. # dalej
    -> powrot


// ------------------------------------------------------------
//  Powrót do Zapadliny z rodziną.
// ------------------------------------------------------------
=== powrot ===
# tlo: sciezka_rodzina
# rozdzial: Prólogo
# tytul: El regreso
Partieron al alba. Marianna llevaba un hatillo con sus enseres; Maciek, el de la comida y, cuando el pequeño se cansó de andar, también a él, a hombros.
{ los_psa == oswojony:
    El perro corría del uno al otro, como si vigilara que nadie se quedase atrás. # pokaz: pies
}
Ya había pasado buena parte de la tarde cuando se detuvieron en la Cresta de las Hayas. Abajo se extendía Zapadlina.{ chcial_odejsc: En aquel mismo lugar, unos días antes, Maciek había estado con el hatillo al hombro, dispuesto a marcharse para siempre. Ahora llevaba a su hijo dormido a la espalda.}
En la cresta, Maciek se paró y miró a su mujer.
«Ahora ten cuidado», dijo. «Ve justo detrás de mí, paso a paso. No te salgas de la senda, pase lo que pase. No mires el agua negra. Y no escuches las voces de los pantanos. Oigas lo que oigas, no contestes ni te vuelvas.»
{ zona_wie: Marianna {chcial_odejsc:posó la mano en la espalda del hijo dormido|tomó al niño de la mano} y asintió. Sabía de qué hablaba. | Marianna arqueó las cejas como si fuera a echarse a reír, pero algo en el rostro de él la contuvo. Asintió sin decir palabra. }
Avanzaban despacio, en fila. La niebla se arrastraba a ras de los aguazales, y en algún lugar lejano, entre los juncos, algo chapoteaba quedamente. A mitad de camino oyó a su espalda que Marianna tomaba aire de golpe. No se volvió. Solo cuando salieron a tierra seca le preguntó qué había oído.
«Nada», respondió ella enseguida. Demasiado enseguida. # dalej
-> nowy_dom

= nowy_dom
{ chata_macka:
    - przy_lesie: # tlo: chata_las
    - przy_mokradlach: # tlo: chata_mokradla
    - else: # tlo: chata_jezioro
}
La cabaña seguía donde Maciek la había dejado. {chata_macka == przy_lesie:Al borde del bosque, a la sombra de los abetos,}{chata_macka == przy_mokradlach:En el prado junto a las ciénagas, sobre su zócalo de piedra,}{chata_macka == nad_jeziorem:A orillas del lago, entre carrizos susurrantes,} con el tejado que él mismo había colocado haz a haz. # pokaz: dach
Marianna se detuvo ante el umbral y durante largo rato no dijo nada. Luego entró, pasó la mano por la pared, olió la resina y se le iluminó la cara como a una criatura cuando ve el rostro de su padre o de su madre. # pokaz: rodzina
«Nuestra», dijo. «De verdad nuestra.»
Dobrosław no tardó en descubrir unas tablas sueltas en un rincón de la estancia. Maciek las apartó y le enseñó un hoyo cavado en la tierra, lo bastante hondo para guardar al fresco las patatas y el grano.
«Una bodeguilla», anunció con orgullo. «Para las provisiones. Pero no te metas ahí sin pedir permiso.»
Por supuesto, el pequeño saltó dentro al instante y se acurrucó de tal modo que no se le veía. Se rieron los tres.
{ ekwipunek ? krzesiwo: Aquella noche ardió un fuego delante de la cabaña nueva | Aquella noche cenaron en el umbral de la cabaña nueva }, y Maciek pensó que había valido la pena pasar por todo aquello. # dalej
{ figurka_u_staruchy: -> czary | -> lata_spokoju }


// ------------------------------------------------------------
//  Zakończenie A — figurka u staruchy: czary i nocny napad.
// ------------------------------------------------------------
=== czary ===
# tlo: czary
# rozdzial: Prólogo
# tytul: Una vela
Esa misma noche, lejos de allí, en un cuartucho estrecho detrás de la plaza del mercado, ardía una sola vela.
La vieja se echó atrás la capucha. Unos cabellos canos y ralos le caían por la espalda. Sobre la mesa, ante ella, había un cuenco con agua negra y turbia y, a su lado – la figurilla chamuscada, desenvuelta del trapito de lino.
La mujer se pinchó un dedo con una aguja y dejó caer tres gotas de sangre sobre la madera. Después sumergió la figurilla en el cuenco y empezó a murmurar – grave, monótona, en una lengua que nadie en la ciudad habría entendido. La llama de la vela menguó y se inclinó, aunque en el cuarto no había corriente.
«Mucho he esperado, madre», susurró. «Pero al fin alguien vino. Y él mismo te trajo hasta mí.»
El agua borboteó, como si alguien respirara en lo hondo. Del murmullo surgieron palabras, pronunciadas cada vez más alto:
«Los huesos de vuestros hijos serán quebrados, y su sangre, bebida…»
La vieja se inclinó más sobre el cuenco. «Ve. Conoces el camino. La cabaña {chata_macka == przy_lesie:junto al bosque}{chata_macka == przy_mokradlach:junto a las ciénagas}{chata_macka == nad_jeziorem:a orillas del lago}. Un hombre, una mujer y un niño.» # dalej
-> noc

= noc
# tlo: noc_atak
Pasaron unos días. Maciek cavaba bancales para las patatas, Marianna levantaba con barro un horno, y Dobrosław {los_psa == oswojony:correteaba con el perro por el prado|cogía caltas en el prado}. Al anochecer se sentaban juntos en el umbral y miraban cómo la niebla se derramaba por el valle.
{ los_psa == oswojony: Una noche los despertó el perro. Estaba junto a la puerta con el pelo del lomo erizado y gruñía tan bajo que apenas se oía. Luego se puso a ladrar – fuerte, rabioso, sin parar. | Una noche los despertó un estruendo. Algo golpeó la puerta con tal fuerza que gimieron los goznes, y siguió golpeando hasta que la madera se partió con un crujido. }
Maciek saltó del jergón. Por una rendija de la puerta vio en la niebla dos ojos encendidos como brasas. # pokaz: slepia
No pensó. Cogió a Dobrosław en brazos, apartó las tablas del rincón y lo metió en la bodeguilla.
«Quédate callado», susurró. «Pase lo que pase, no salgas. ¿Me oyes? No salgas hasta que se haga de día.»
Volvió a colocar las tablas sobre su cabeza. # dalej
{ los_psa == oswojony: -> walka | -> rzez }

= walka
# tlo: walka
La puerta cayó hacia dentro con marco y todo. La criatura tuvo que agacharse para pasar bajo el dintel – enorme, mojada, apestando a pantano. El agua le chorreaba a regueros sobre el suelo de tierra. # pokaz: stwor
El perro se le echó encima el primero. Le hincó los dientes en el antebrazo y quedó colgado de él, sacudiéndolo, hasta que el monstruo lo estrelló contra la pared. Gimió y cayó. # pokaz: pies
Maciek se plantó delante de Marianna con el hacha en alto. # pokaz: maciek
«¡Ponte detrás de mí!»
La bestia alargó las garras hacia él. Le surcaron el hombro y el costado, pero él no cedió terreno. Descargó el golpe con todas sus fuerzas y la hoja se hundió hondo en el brazo huesudo. La criatura aulló – con el mismo gemido largo y gutural de aquella noche junto al chozo. Maciek golpeó otra vez. Y otra.
El monstruo retrocedió, volcando el banco, y con un rugido salió corriendo hacia la niebla. Por un momento se oyó algo pesado abrirse paso entre la maleza, y luego un chapoteo – cada vez más lejos, hacia el pantano.
El hacha se le cayó a Maciek de las manos. Se desplomó de rodillas y luego de costado. Bajo él crecía un charco oscuro. # pokaz: kaluza
Marianna, arrodillada a su lado, le apretaba las heridas con las manos, pero la sangre se le escurría entre los dedos.
«No, no, no… No me dejes…»
«Dobrosław…», susurró él. «Sácalo… pero solo por la mañana.»
El perro se arrastró hasta él, cojeando, y le apoyó la cabeza en el pecho.
Maciek todavía sonrió. Miró a su mujer hasta que sus ojos dejaron de ver nada.
Bajo el suelo, en la bodeguilla, Dobrosław se apretaba las orejas con las manos y no emitía sonido alguno. Tal como había prometido a su padre. # dalej
-> sierota

= rzez
# tlo: pod_podloga
La puerta se partió en dos. En la estancia irrumpieron el frío, el hedor del pantano y una sombra enorme que tuvo que agacharse para pasar bajo el dintel.
Maciek aún tuvo tiempo de empuñar el hacha. Marianna se tapó la boca con la mano.
Dobrosław no vio lo que pasó después. Solo veía las estrechas franjas de luz de luna entre las tablas, sobre su cabeza – y las sombras que las cruzaban. Lo oía todo. # pokaz: cien
Oyó a su padre gritarle a su madre que huyera. Oyó los golpes sordos del hacha, uno y otro, y un aullido que hacía temblar la tierra. Luego un chasquido – fuerte, húmedo, igual que aquel de la maleza, aunque el niño no podía saberlo. Su padre dejó de gritar.
Su madre gritó más tiempo.
Cuando también ella calló, por las rendijas de las tablas empezó a gotear algo caliente. Gota a gota, sobre su pelo y sus mejillas. # pokaz: krew
Algo pesado pasó por el suelo, justo encima de él. Se detuvo. Lo oía husmear – largamente, con un resuello ronco, como un perro ante una madriguera. Apretó los dientes sobre la manga para no soltar ni un gemido.
Después los pasos se alejaron y se perdieron en la niebla.
Se quedó en la bodeguilla hasta la mañana. Tal como había prometido a su padre. # dalej
-> sierota

// Epilog zakończenia A — chłopca przygarnia Andrzej.
= sierota
# tlo: izba_andrzeja
{ los_psa == oswojony:
    Por la mañana se asomó Andrzej. Encontró a Marianna en el suelo de tierra, con la cabeza de su marido en el regazo. Ya no lloraba. El perro yacía a su lado y no dejaba que nadie se acercara.
    A Maciek lo enterraron en el cementerio junto a la iglesia de la ciudad. La viuda ya no volvió a la cabaña – se fue a vivir con el niño a casa del labrador de la loma, que los acogió bajo su techo como a familia.
- else:
    Por la mañana se asomó Andrzej. La puerta de la cabaña, partida en dos, yacía en la hierba. En la estancia no había nadie – solo un rastro de lodo que iba del umbral hacia el pantano y unas manchas oscuras en el suelo de tierra. Estuvo mucho rato en el umbral antes de oír, bajo el suelo, un sollozo quedo.
    El niño no dijo ni una palabra – ni aquel día ni en muchos de los siguientes. Andrzej se lo llevó a su casa y lo crio junto a Staś como a un hijo propio.
}
Después de aquella noche, la aldea empezó a levantar humilladeros nuevos – junto a los caminos, en las encrucijadas, en el lindero del bosque y junto a la pasarela de las ciénagas –, al lado de unos cuantos postes viejos y carcomidos que flanqueaban el bosque y de los que ya nadie recordaba quién los había puesto. Cada año había más, hasta que en toda Zapadlina no quedó un solo sitio desde el que no se viera al menos uno.
Dobrosław se hizo un hombre callado y fuerte. Nunca iba a los pantanos y nunca bajó a ninguna bodega. Se casó con una muchacha de la aldea vecina y pronto le nació un hijo.
Le pusieron por nombre Jaromir. # dalej
-> prolog_ciag_dalszy


// ------------------------------------------------------------
//  Zakończenie B — figurka u handlarza albo bez figurki: spokojne lata.
// ------------------------------------------------------------
=== lata_spokoju ===
# tlo: kapliczki
# rozdzial: Prólogo
# tytul: Años de calma
El ahogado no vino. Ni aquel año, ni el siguiente.
Maciek y Marianna araban un campo que cada año era un poco más grande. Dobrosław crecía deprisa – primero cuidó las ocas, luego anduvo detrás del arado, hasta que al fin él mismo guiaba al caballo.{ los_psa == oswojony: El perro envejeció junto al umbral y un invierno ya no se levantó. Lo enterraron al pie del bosque.}
A veces, en las largas veladas de invierno, Maciek le contaba al muchacho la primera primavera en Zapadlina. Los aullidos en la maleza, lo que salió de la niebla junto al chozo, la voz que lo llamaba desde los pantanos. La herbolaria quemada en la cabaña del lago. El hijo escuchaba con las mejillas encendidas, pero lo tenía por cuentos – de esos que se cuentan a los niños para que no vayan solos al agua.
Cuando el hijo se hizo mayor, la aldea empezó a levantar humilladeros nuevos, al lado de unos cuantos postes carcomidos que flanqueaban el bosque y de los que ya nadie recordaba quién los había puesto. Uno junto al camino que bajaba de la Cresta de las Hayas, otro en el lindero del bosque, un tercero junto a la pasarela de las ciénagas. Luego fueron llegando más, hasta que hubo uno junto a casi cada linde. La gente decía que desde entonces las lucecitas sobre los pantanos parpadeaban con menos frecuencia. Dobrosław no lo creía, pero cada mayo adornaba los humilladeros con flores junto con los demás. # pokaz: kapliczki
Los padres de Dobrosław murieron de viejos, uno tras otro, en la misma cabaña que Maciek había levantado un día desde el primer tronco. Dobrosław se casó con una muchacha de la aldea vecina y pronto le nació un hijo.
Le pusieron por nombre Jaromir. # dalej
-> prolog_ciag_dalszy
