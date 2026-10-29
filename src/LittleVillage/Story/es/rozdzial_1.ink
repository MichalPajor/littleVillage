// ------------------------------------------------------------
//  Rozdział pierwszy — Lato. Dzieciństwo Jaromira, około pół
//  wieku po prologu. Przebieg zależy od zakończenia prologu:
//    figurka_u_staruchy — dom na pagórku obok Stasia, milczący ojciec
//                         (z psem żyje jeszcze babka Marianna);
//    inaczej            — chata dziadka Maćka (las / mokradła / jezioro),
//                         ojciec opowiada legendy jak bajki.
// ------------------------------------------------------------

=== rozdzial_pierwszy ===
// Czy Maciek miał krzesiwo — babka Marianna może je oddać wnukowi w rozdziale 4.
~ krzesiwo_dziadka = ekwipunek ? krzesiwo
// Nowy bohater — Jaromir zaczyna z pustym tobołkiem (przedmioty Maćka zostają w prologu).
~ ekwipunek = ()
# nowy_tobolek
# tlo: zapadlina_lato
# rozdzial: Capítulo primero
# tytul: Verano
La Zapadlina en la que creció Jaromir ya no era la misma aldea a la que años atrás había bajado su abuelo con el hatillo a cuestas. Había más casas – ahora eran nueve, esparcidas por las laderas y los prados como granos echados a puñados sobre un campo. El bosque había cedido un poco ante las hachas, los cultivos llegaban más lejos y a través de las ciénagas pasaba una buena pasarela de troncos de roble. Junto a los caminos se alzaba un sinfín de humilladeros, siempre adornados con flores frescas. A la niebla le seguía gustando aquel valle y en verano se quedaba en él hasta mucho después de salir el sol. También habían cambiado los alrededores: tras la Cresta de las Hayas, a una hora de camino de Zapadlina, había crecido Bukowiec – un pueblo más grande y más próspero, con molino, posada y escuela, y justo al lado de la escuela, una iglesita de madera junto a la que se había instalado un cura viejo. A la ciudad ya solo se iba para las ferias y las grandes romerías.
{ figurka_u_staruchy:
    Jaromir vivía en una casa sobre la loma, junto al corral del viejo Staś, con quien su padre se había criado como un hermano. La casa era pequeña pero cálida, con las paredes encaladas y el tejado de carrizo, y desde el umbral se veía toda Zapadlina – los campos, los prados, el lago y la raya oscura del bosque al este.
- else:
    { chata_macka:
        - przy_lesie: Jaromir vivía en la cabaña al pie del bosque, la misma que había levantado el abuelo Maciek. Su padre le había añadido una segunda estancia y un granero. Bajo la ventana crecía un manzano, plantado el día en que nació su hijo, y por el lado norte había unos ciruelos silvestres que a menudo dejaban caer frutos pequeños, verdes, sin madurar. Tras la cerca baja empezaba el bosque – en verano olía a resina y a setas, y en las tardes de calor daba una sombra en la que uno podía tumbarse aunque fuera hasta el anochecer.
        - przy_mokradlach: Jaromir vivía en la cabaña junto a las ciénagas, la misma que había levantado el abuelo Maciek – sobre un zócalo de piedra que en medio siglo no habían movido ni el agua ni la helada. Su padre le había añadido una segunda estancia y un granero. Bajo la ventana crecía un manzano, plantado el día en que nació su hijo, y por el lado norte había unos ciruelos silvestres que a menudo dejaban caer frutos pequeños, verdes, sin madurar. Tras la cerca baja se extendían prados por los que andaban las cigüeñas, y al caer la tarde llegaba de los aguazales un concierto de ranas tan sonoro que ahogaba incluso a los grillos.
        - else: Jaromir vivía en la cabaña junto al lago, la misma que había levantado el abuelo Maciek. Su padre le había añadido una segunda estancia y un granero. Bajo la ventana crecía un manzano, plantado el día en que nació su hijo, y por el lado norte había unos ciruelos silvestres que a menudo dejaban caer frutos pequeños, verdes, sin madurar. Del umbral al agua apenas había unas decenas de pasos, y en verano el chico los recorría a la carrera tantas veces al día que abrió en la hierba su propio sendero.
    }
}
Su padre, Dobrosław, era ya entonces un hombre entrado en años, con la barba encanecida y las manos agrietadas por el trabajo. { figurka_u_staruchy: Hablaba poco y reía todavía menos. Cuando al anochecer se sentaba en el umbral, se quedaba largo rato mirando hacia las ciénagas, como si buscara algo allí. Quería a su hijo a su manera – en silencio, con una mano pesada en el hombro y el mejor trozo de carne arrimado a su escudilla. | Le gustaba bromear, y por las noches contaba historias que él mismo había oído de su padre – de criaturas de las ciénagas y de la herbolaria del lago. Jaromir las escuchaba conteniendo el aliento, aunque sabía que no eran más que cuentos. }
Su madre, Agnieszka, era una buena quincena de años más joven que su marido. Olía a pan y al humo del horno, cantaba en cada faena y nunca era capaz de enfadarse mucho rato.
{ figurka_u_staruchy && los_psa == oswojony:
    En un rincón de la estancia, en un escabel, solía sentarse la abuela Marianna, encorvada y callada. A veces acariciaba la cabeza de su nieto y lo miraba como si viera en él a otra persona.
}
El chico paraba poco en casa. El verano era suyo – entero, desde los primeros calores hasta la siega – y sus días eran casi iguales, y sin embargo ninguno se parecía al anterior. # dalej
-> poranek

= poranek
# tlo: poranek
Lo despertaban el canto del gallo y un haz de luz que se colaba por la rendija del postigo y se le posaba en la cara como una cinta dorada. Todavía se quedaba un momento bajo el edredón de plumas, escuchando a su madre trajinar junto al horno – el borboteo del agua en las ollas, el chisporroteo del fuego avivado bajo la chapa, el crujir de las tablas bajo sus pasos. De la estancia llegaba olor a leche y a pan recién horneado.
Luego se acordaba de que era verano y saltaba del jergón como si se hubiera quemado.
Desayunaba casi de pie. Una rebanada gruesa untada de mantequilla, un tazón de leche recién ordeñada, todavía tibia, a veces requesón. Su madre meneaba la cabeza con una sonrisa.
«Siéntate de una vez, hijo. Nadie te lo va a quitar. No te faltará día para jugar con los chiquillos.»
# pytanie: ¿Qué hará Jaromir?
*   [Sentarse y comer con calma, como pide su madre.]
    Suspiraba y se sentaba en el borde del banco, y en premio recibía un beso en la frente y una cucharada de miel sobre el pan. Comía deprisa, pero hasta el final, y cuando el tazón quedaba vacío solo gritaba: «¡Me voy a casa de los vecinos!», y ya no estaba. # pokaz: jaromir
    -> poranek_dalej
*   [Agarrar la rebanada y salir corriendo.]
    -> poranek_bieg

= poranek_bieg
Pero él ya se limpiaba la boca con la manga y estaba en la puerta. Antes de que su madre alcanzara a decirle que tuviera cuidado, solo gritó: «¡Me voy a casa de los vecinos!», y ya cruzaba el corral a todo correr, espantando a las gallinas, que huían cacareando de entre sus pies. # pokaz: jaromir
-> poranek_dalej

= poranek_dalej
Al alba la hierba estaba mojada de rocío y fría, y los zapatos se le calaban enseguida. Olía como solo huele a esa hora – a fresco, a verde, un poco como un pepino partido por la mitad. Sobre los prados colgaban aún jirones de niebla, pero el sol ya los dispersaba, y en cada gota de las briznas se encendía una chispa diminuta. Las alondras se elevaban al cielo y cantaban tan alto que era imposible divisarlas.
En casa de Staś ya lo estaban esperando. Franek, el mayor de los nietos del viejo, era fornido y le sacaba cuatro años a Jaromir. Su hermano Antek, dos inviernos menor que él, hurgaba en la tierra con un palo, cavando una zanjita por la que quería llevar el agua de un charco a otro. Al poco llegaba corriendo desde el lago Hanka, la hija del herrero, con la trenza saltándole en la espalda. # pokaz: dzieci
«¿Qué hacemos hoy?», preguntaba Franek, aunque todos sabían que de todos modos lo decidiría él. # dalej
-> wojna

= wojna
# tlo: laka_bitwa
Casi siempre empezaba con la guerra.
Cada uno tenía su espada – un palo descortezado de avellano o de sauce, con la punta afilada. Jaromir llevaba la suya metida en el cinturón, y cuando tenía que separarse de ella, siempre la dejaba en su sitio: en el rincón del granero. No había en toda la aldea un arma más recta – lisa de tanto empuñarla y oscura del sudor de la mano. { figurka_u_staruchy: Su padre le ayudó sin decir palabra a afilar la espada, una tarde, junto al umbral. | Su padre le ayudó a tallar aquella espada, riéndose de que con ella parecía un caballero de estampa de feria, y de que con semejante arma hasta a un dragón se podría vencer. }
El enemigo eran las malas hierbas. En las lindes y junto a las acequias crecían sus ejércitos innumerables: perejiles de monte con umbelas grandes como platos, cardos erizados de cabezas moradas y ortigas que llegaban hasta las orejas. Los niños irrumpían en los prados con un grito que espantaba a los gorriones. Los palos silbaban en el aire, los tallos se quebraban con un chasquido jugoso y las cabezas espinosas volaban por todas partes. # pokaz: bitwa
Después de cada batalla llegaba la hora de curar las heridas. No pocas veces eran rodillas despellejadas hasta sangrar, pantorrillas cubiertas de ronchas de ortiga, antebrazos y manos arañados. Hanka tenía remedio para todo: ponía hojas de llantén sobre las quemaduras y mandaba sujetarlas hasta que dejaran de escocer. Nadie lloraba – bueno, quizá Antek alguna vez, pero solo un poquito, y enseguida fingía que era el sudor que le corría a los ojos.
Luego se dejaban caer en la hierba, jadeantes y felices, y se quedaban tendidos boca arriba con los brazos abiertos. Sobre ellos navegaban nubes blancas en las que cada uno leía algo distinto – un caballo, un barco, una vieja con su escoba, un oso. Olía a tierra caldeada, a manzanilla y a hierba aplastada. Cerca zumbaba un abejorro, y los saltamontes brincaban de debajo de sus manos como chispas de una hoguera. # dalej
-> luki

= luki
# tlo: luki
Cuando se cansaban de las espadas, llegaba el turno de los arcos.
~ ekwipunek += nozyk
Los mejores eran de avellano, que crecía espeso en el lindero del bosque – recto, flexible y fuerte. Franek escogía una rama del largo adecuado – igual a su estatura – y Jaromir la desbastaba con la navajita que le había regalado su padre por su santo. Había que tener cuidado de no quitar demasiada madera en un mismo sitio, porque entonces el arco se partía al primer tensado. Para la cuerda servía un cordel grueso, sustraído del cesto de su madre, o – en los días buenos – un trozo de hilo encerado de zapatero.
Las flechas también las hacían de avellano, pero mucho más delgado. Puntas no había – en cambio afilaban el extremo hasta que pinchaba como una espina, y en el otro le ponían aletas de papel o de plumas recogidas por los corrales de toda la aldea.
La diana era una gavilla de paja plantada en la linde, con un círculo pintado de hollín. La cuerda zumbaba junto al oído como una avispa, la flecha silbaba un instante y luego se oía un sordo «toc» cuando la punta afilada se clavaba en la paja. Los proyectiles volaban bastante rectos, daban en la tierra o en el blanco, y a veces se elevaban muy alto en el cielo. A quien mejor se le daba era a Hanka. Entornaba un ojo, asomaba la punta de la lengua y no erraba ni una vez – y los chicos, aunque por nada del mundo lo habrían reconocido, la admiraban por ello más que por cualquier otra cosa. # pokaz: hanka
# pytanie: ¿Se medirá Jaromir con Hanka?
*   [Sí – retarla a un concurso.]
    ~ celny_strzal = true
    Perdía, por supuesto. Hanka acertaba sin fallar, y las flechas de él caían casi siempre en el trigo. Pero al día siguiente llegaba a la linde antes que ella y practicaba hasta que se le entumecían los dedos.
    -> luki_dalej
*   [No – practicar solo, lejos de los demás.]
    Se iba al final de la linde y disparaba contra un tocón viejo hasta que le dolía el brazo. Nadie veía cuántas veces fallaba, y así era mejor.
    -> luki_dalej

= luki_dalej
Una vez Jaromir dio en el mismo centro del círculo. El resto del día anduvo tan orgulloso que hasta se olvidó de la comida, y su madre tuvo que llamarlo muchas veces. # pokaz: trafienie # dalej
-> lato_baza

= lato_baza
# tlo: baza
Pero el lugar más importante del mundo era la guarida.
Se alzaba – o más bien colgaba – en la copa de un viejo saúco que crecía en el lindero del prado, tan frondoso que a su sombra habrían podido cobijarse varias vacas. La construyeron a lo largo de un verano entero. Las tablas las traían de donde podían: de una pocilga derrumbada, de una cerca que ya nadie arreglaba, {figurka_u_staruchy:del granero de Staś, que meneaba la cabeza pero no lo prohibía|del granero del padre de Jaromir, que fingía no ver nada}. Las clavaban con clavos enderezados a golpe de piedra contra piedra, y donde faltaban, las ataban con cordel. Arriba se subía por una escalerilla de travesaños atados al tronco. En la guarida siempre olía a madera caldeada y a flor de saúco, tan dulce que al cabo de una hora daba vueltas la cabeza. Por las rendijas entre las tablas entraban finos haces de sol en los que bailaba el polvo, y cuando soplaba el viento toda la copa se mecía y crujía, como si la guarida fuera una barca sobre aguas revueltas.
Dentro cabían cinco si se sentaban apretados – así que cuatro iban muy holgados. Tenían allí todo lo necesario: un cofre de tesoros, donde guardaban piedrecitas de colores, plumas y conchitas, y por si había un asalto – un carcaj con flechas, un arco y las «espadas».
# pytanie: ¿Qué guardará Jaromir en el cofre de tesoros?
*   [Una conchita del lago, blanca como la leche.]
    ~ skarb_jaromira = muszelka
    La envolvió en una hoja de bardana y la escondió en el fondo de todo.
    -> baza_dalej
*   [Una pluma de arrendajo, azul como el cielo después de la tormenta.]
    ~ skarb_jaromira = pioro
    La puso encima de todo, para que brillara nada más abrir la tapa.
    -> baza_dalej
*   [Un clavo oxidado que – según él – se había caído un día de una auténtica armadura de caballero.]
    ~ skarb_jaromira = gwozdz
    Lo envolvió en un trapito como si fuera una reliquia. Franek soltó una carcajada, pero Antek miraba el clavo con respeto.
    -> baza_dalej

= baza_dalej
Lo más hermoso era estar allí durante un aguacero. La tormenta de verano llegaba de repente, como una muralla oscura por detrás del bosque, y antes de que los niños pudieran llegar a casa caían los primeros goterones. Entonces trepaban a la guarida y se quedaban acurrucados bajo el techo de tablas, por el que de todos modos goteaba un poco. Las hojas rumoreaban como el mar, que ninguno de ellos había visto nunca, los truenos rodaban sobre la aldea, y el aire olía a lluvia, a madera mojada y a saúco en flor. Después de la tormenta el prado humeaba y en el cielo aparecía el arcoíris. # pokaz: burza # dalej
-> lato_jezioro

= lato_jezioro
# tlo: jezioro_lato
Cuando el sol trepaba hasta lo más alto y sobre los campos empezaba a temblar la calina, toda la pandilla se iba al lago. Corrían a ver quién llegaba antes a través del prado, quitándose las camisas por el camino, y entraban en el agua gritando, levantando salpicaduras hasta el cielo. En la orilla había poco fondo y arena, el agua estaba tibia del sol como en una tina, y los pececillos les hacían cosquillas en los pies. Franek se lucía tirándose de cabeza desde un tronco caído, y Antek se sentaba en el bajío a atrapar renacuajos con las manos. Olía a juncos y a cieno caldeado, y sobre el agua cruzaban como flechas las libélulas. # pokaz: kapiel
{ figurka_u_staruchy: Jaromir nunca entraba más allá de la cintura. Su padre se lo había prohibido una sola vez, en pocas palabras y con tanta severidad que el chico no se atrevió a preguntar por qué. Con la misma firmeza le prohibió acercarse a las ciénagas y a los juncales de la orilla oeste, donde, al parecer, hubo en tiempos una cabaña. | En la orilla oeste, entre los juncos, todavía asomaban de la tierra los muñones negros de unos troncos carbonizados. Los niños se asustaban unos a otros con ellos, contándose la historia de la herbolaria quemada – la misma que el padre de Jaromir desgranaba por las noches –, pero a pleno sol nadie tenía miedo. }
{ figurka_u_staruchy:
    Aquel día Franek nadó hasta donde no hacía pie y llamó a Jaromir para que fuera con él.
    # pytanie: ¿Obedecerá Jaromir a su padre?
    *   [Quedarse junto a la orilla.]
        Negó con la cabeza y no se movió del bajío. De lejos le llegó un «¡Cobarde!», pero al poco todos lo olvidaron y siguieron chapoteando.
        -> jezioro_dalej
    *   [Nadar hasta Franek.]
        ~ odwaga_jaromira = true
        Dio un paso, luego otro. El agua le llegó al pecho y de pronto se volvió helada, y algo resbaladizo le rozó la pantorrilla. Se echó atrás tan deprisa que tragó agua. No se lo contó a nadie – y desde luego no a su padre.
        -> jezioro_dalej
- else:
    Aquel día Franek apostó a que nadie se atrevería a tocar los troncos carbonizados.
    # pytanie: ¿Aceptará Jaromir la apuesta?
    *   [Tocarlos – él no es ningún cobarde.]
        ~ odwaga_jaromira = true
        Se abrió paso entre los juncos y puso la mano sobre el más alto. La madera estaba fría, aunque el sol abrasaba desde la mañana, y el chico retiró la mano antes de lo que pretendía. Todos lo tuvieron por la mayor hazaña de aquel verano.
        -> jezioro_dalej
    *   [Quedarse con los demás en la arena.]
        Se encogió de hombros y no se movió de su sitio. Franek fue solo, tocó la madera negra con la punta del dedo y volvió corriendo, fingiendo que no tenía ninguna prisa.
        -> jezioro_dalej
}

= jezioro_dalej
Después del baño se secaban en la hierba, tumbados boca abajo, y comían lo que daba el bosque: fresas silvestres, arándanos que ennegrecían dientes y lenguas, y hojas ácidas de acedera masticadas para refrescarse. A veces alguien traía de casa un pepino o un trozo de queso y lo repartían con justicia, en tantas partes como bocas había. En el huerto de los Wójcik maduraban las cerezas, y el dueño dormía la siesta tan profundamente que no oía a nadie sacudir las ramas.
El calor se posaba sobre todo como un edredón tibio. Los grillos cantaban tan fuerte como si de su música dependiera que el sol llegara a ponerse. De las hileras de hierba segada que los campesinos volteaban con el rastrillo subía olor a heno, y desde la linde llegaba la dulzura del serpol y del trébol. Las abejas zumbaban en los tilos, las mariposas se posaban en las flores, y el tiempo corría tan despacio que el día parecía no tener fin. # dalej
-> lato_wieczor

= lato_wieczor
# tlo: wieczor_lato
Y sin embargo siempre terminaba. El sol se deslizaba tras el lago, las sombras se alargaban sobre el prado hasta ir de un extremo al otro, y el cielo sobre el agua tomaba el color de las frambuesas maduras. El aire se enfriaba y olía a hierba segada y al humo de las chimeneas, y desde las ciénagas se dejaban oír las primeras ranas – primero una, luego decenas, hasta que todo el valle croaba como un gran coro. Entonces, de un corral tras otro, empezaban a llegar las llamadas.
«¡Jaroooomir! ¡A caaaasa!» # pokaz: matka
# pytanie: ¿Volverá Jaromir enseguida?
*   [Correr a casa enseguida.]
    La voz de su madre se oía en toda la aldea. El chico no se hacía esperar: se despedía de los demás, quedaban para el día siguiente – siempre para el día siguiente, siempre junto al poste de madera que marcaba el lindero del campo de su padre, nada más desayunar – y echaba a correr por el prado, donde se encendían las primeras luciérnagas. # pokaz: jaromir
    -> wieczor_dalej
*   [Jugar todavía un rato.]
    -> wieczor_zwlekanie

= wieczor_zwlekanie
La voz de su madre se oía en toda la aldea. El chico fingía no oír, hasta que su madre llamaba por segunda vez – y a la tercera aparecía en su voz un tono que no auguraba nada bueno. Entonces se despedía de los demás, quedaban para el día siguiente – siempre para el día siguiente, siempre junto al poste de madera que marcaba el lindero del campo de su padre, nada más desayunar – y echaba a correr por el prado, donde se encendían las primeras luciérnagas. # pokaz: jaromir
-> wieczor_dalej

= wieczor_dalej
Volvía sucio, con hierba en el pelo, tierra bajo las uñas y costras en las rodillas. Su madre suspiraba, lo agarraba de la oreja y lo llevaba hasta la tina de agua, y luego le ponía delante una escudilla de huevos revueltos o leche cuajada con patatas.
{ figurka_u_staruchy:
    Su padre se sentaba enfrente y callaba. Al terminar, siempre hacía lo mismo: se levantaba, comprobaba que la puerta estuviera bien atrancada y solo entonces se iba a dormir.
    { los_psa == oswojony:
        La abuela Marianna se levantaba entonces del escabel, le trazaba al nieto una crucecita en la frente y le susurraba algo que el chico no entendía.
    }
- else:
    Su padre, si la noche era templada, sacaba el banco delante de la cabaña y contaba historias. Del abuelo Maciek, que bajó a Zapadlina con solo un hacha, de la criatura de las ciénagas, de la voz que llamaba desde el agua. Jaromir solía empezar a dormirse a la mitad, con la cabeza en las rodillas de su padre, y nunca oía el final.
}
Después se quedaba tumbado en el jergón bajo la ventana, escuchando la noche. Las ranas croaban en los aguazales, en el establo resopló un caballo, a lo lejos ladró un perro. Por la rendija del postigo se veían las estrellas – espesas como el rocío en el prado.
Se dormía sonriendo, pensando que mañana lo esperaba otro cálido día de verano, lleno de juegos desde el alba hasta el anochecer. # dalej
-> zloty_dzien

= zloty_dzien
# tlo: zapadlina_lato
Días así hubo sin cuento. Luego se le fundían en la memoria en una sola franja larga y dorada que olía a heno y a tierra caldeada, llena de sol, de risas y del zumbido de las abejas. El verano pasaba y Jaromir crecía – cada vez alcanzaba más alto en las ramas del saúco, cada vez más lejos llegaba su flecha, cada vez con menos frecuencia necesitaba la escalerilla para subir a la guarida. # dalej
-> rozdzial_pierwszy_ciag_dalszy


// Koniec rozdziału pierwszego — dalej rozdział drugi.
=== rozdzial_pierwszy_ciag_dalszy ===
# ozdobnik
_Fin del capítulo primero._ # dalej
-> rozdzial_drugi
