// ------------------------------------------------------------
//  Prolog — Zapadlina, około siedemdziesiąt lat przed główną
//  częścią opowieści. Maciek, dziadek Jaromira, wybiera
//  miejsce na chatę.
// ------------------------------------------------------------

=== prolog ===
# tlo: zapadlina
# rozdzial: Prólogo
# tytul: Zapadlina
Zapadlina – una aldea situada allí donde la tierra, cansada de ser llanura, se había hundido. Para llegar a ella siempre había que bajar de colinas, lomas y laderas, ya fuera desde el camino real por la Cresta de las Hayas, ya desde el bosque por una senda trillada. Desde la ciudad se tardaba seis horas en volver, y el último trecho serpenteaba entre pantanos, siempre cuesta abajo. A la niebla le gustaba aquella hondonada. Se derramaba en ella al anochecer como la leche en un cuenco, y a veces no quería salir de allí ni a mediodía.
Por el este apretaba el bosque – viejo, de coníferas y tan espeso que incluso de día los árboles arrojaban una sombra honda y fresca. Al norte la tierra blanda se convertía en ciénagas cubiertas de eneas, juncias y arbustos enanos. El agua estaba allí negra, turbia e inmóvil. Algunos decían que no había que mirarla demasiado tiempo, porque así se podía despertar a los ahogados presos bajo la capa de limo. De noche volaban a menudo sobre ella fuegos fatuos. Al oeste, en el punto más bajo del valle, había un lago redondo, como si alguien lo hubiera apretado con la rodilla. Se decía que nadie había visto nunca su fondo.
La aldea era pequeña, pero no joven. Cinco casas se alzaban lejos unas de otras, porque cada cual tenía tanto campo como sus antepasados habían logrado desbrozar y defender. Vivían en ella unas treinta personas, contando a los niños. Todos se conocían bien. La iglesia más cercana estaba en la ciudad; se iba a ella unas pocas veces al año, en las fiestas grandes, si los caminos lo permitían. Entonces en la aldea no quedaba ni un alma viva.
Unos setenta años antes de que Jaromir mirase por primera vez hacia el bosque, su abuelo bajó a Zapadlina con un hatillo al hombro. Maciek no tenía nada más que un hacha, pan, un par de brazos y su terquedad. El hacha y el pan los había comprado en la ciudad con el dinero ganado en cuatro años de trabajo en tierra ajena. Quería por fin tener algo propio – un rincón donde vivir y dar a su familia un techo. El señor de la finca cedía allí eriales para roturar por una renta pequeña, así que cada palmo de tierra que Maciek limpiara sería suyo. Era primavera, los campos humeaban y aquí y allá, a la sombra, aún quedaba nieve sucia. Desde hacía unos días Maciek recorría los alrededores buscando dónde levantar la cabaña. Tres lugares volvían una y otra vez a sus pensamientos.
# ozdobnik
El primero quedaba en el extremo oriental de la aldea, al pie mismo del bosque. La tierra era fértil, tenía la madera al alcance de la mano y tampoco faltaba la caza. Solo que del bosque llegaba siempre un frío, incluso en los días de calor, y de noche venían de allí sonidos a los que no sabía dar nombre.
El segundo estaba al norte, junto a las ciénagas. Había allí extensos prados donde podría pastar el ganado, y nunca faltaría turba para quemar. En cambio, al caer la noche, según contaban, algo parpadeaba sobre los pantanos. La gente que encontraba junto al pozo se limitaba a decir: «Allí no se va ni se construye. Allí solo se ahoga uno.»
El tercero, junto al lago, parecía el más hermoso. El agua era limpia, los peces casi saltaban solos a la mano y la orilla era suave – bastaba con abrirse paso entre los espesos carrizos. Quedaban allí también restos de una casa que en otro tiempo se alzó en aquel sitio: maderos viejos, carcomidos y carbonizados. Nadie en la aldea quería decir quién había vivido en ella ni qué suerte había corrido, y la gente se santiguaba cada vez que alguien la mencionaba.
# pytanie: ¿Dónde levantará Maciek su cabaña?
*   [En el lindero del bosque, al este.]
    ~ chata_macka = przy_lesie
    -> budowa
*   [Junto a las ciénagas, al norte.]
    ~ chata_macka = przy_mokradlach
    -> budowa
*   [Junto al lago.]
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
# rozdzial: Prólogo
# tytul: La cabaña
Maciek eligió el lindero del bosque. Pensó que con la madera a mano levantaría antes la cabaña, y eso era lo que más le importaba. La tierra fértil le serviría para la huerta – al fin y al cabo, algo había que comer. ¿Y el sueño? Ya se arreglaría. La primera mañana se puso a trabajar y clavó el hacha en el abeto más cercano. El eco del golpe se fue entre los árboles y volvió tras un rato extrañamente largo – prolongado, grave y no del todo parecido al ruido de un hacha.
-> praca

= mokradla
# tlo: budowa_mokradla
# rozdzial: Prólogo
# tytul: La cabaña
Maciek eligió los prados junto a las ciénagas. Cuando empezó a trabajar, la gente que lo veía meneaba la cabeza. Para ellos era el último sitio donde habrían levantado una casa. La tierra cedía allí bajo los pies, pero daba turba suficiente hasta para cien inviernos. Para que la cabaña no se hundiera en el barro, Maciek tuvo que hacerle un zócalo. Durante todo el primer día acarreó piedras de las colinas y las fue colocando con esmero.
Por la madera iba lejos, hasta el pie del bosque. A veces se metía en algún charco poco hondo – aún no conocía los senderos de allí – y llevaba las botas siempre empapadas. Al pensar en las historias de los vecinos sentía inquietud, pero también curiosidad. No lo dejaba en paz qué podía ser aquello que parpadeaba sobre los pantanos. Procuraba evitar el agua negra y se tomó a pecho la advertencia sobre los ahogados. Si existían, desde luego no quería encontrárselos.
-> praca

= jezioro
# tlo: budowa_jezioro
# rozdzial: Prólogo
# tytul: La cabaña
Maciek eligió la orilla del lago. Algo en lo hondo del corazón le decía que aquel lugar era para él. Quizá lo atraía el agua misma – lisa y clara, con todo el cielo dentro. Los maderos carcomidos y carbonizados de la vieja casa los empujó hasta los altos juncales para no tenerlos delante de los ojos. «Lo pasado, pasado», se repetía mientras desbrozaba la maleza, cuando le venían a la memoria las historias de los vecinos. Los árboles los talaba en las laderas y los troncos los hacía rodar cuesta abajo. Para cubrir el tejado juntaba carrizo, que allí no faltaba: le llegaba por encima de la cabeza.
-> praca

= praca
La obra duró más de un mes. A veces algún vecino venía a ayudar a Maciek. Casi siempre era Andrzej, con quien mejor se entendía. Él mismo no nadaba en la abundancia, pero al ver en qué miseria vivía el forastero, de vez en cuando le traía algo de comer. Le gustaba también hablar de su hijo, que era su orgullo. El muchacho tenía once años y ya era una gran ayuda para su padre.
Levantar la cabaña en sí no era difícil: talar los árboles, descortezarlos, cortarlos en maderos del largo adecuado y tallar en sus extremos las muescas para que, al ensamblarlos, encajaran bien. Gracias a eso las paredes se sostenían sin un solo clavo. Las rendijas las tapaba con musgo y arcilla. Del trabajo duro de cada día se le llenaron las manos de ampollas, que reventaban y volvían a cerrarse, hasta que la piel se le endureció como corteza.
Su pan lo comía con mucha parsimonia: una rebanada para desayunar y otra para cenar, con un poco de agua. Se prometía que iría a la ciudad por más en cuanto terminara el tejado. La hogaza se secaba, encogía y cada día pesaba menos – y Maciek con ella.
Dormía en un chozo que había armado a toda prisa la primera tarde: unas cuantas ramas gruesas apoyadas en un tronco, cubiertas de ramaje frondoso y tepes, y dentro un lecho de musgo. Solo cabía en él tumbado. El hacha la tenía siempre al costado. # dalej
-> noce

= noce
Las noches eran lo peor. El frío y la humedad de la primavera se colaban bajo la ropa y mordían hasta los huesos. Costaba dormirse. Maciek yacía con los ojos abiertos y escuchaba.
{ chata_macka:
    - przy_lesie: El bosque nunca callaba. No había viento, y sin embargo las ramas crujían – despacio, perezosas, unas veces más cerca, otras más lejos. A menudo se quedaba inmóvil escuchando, aunque algunos sonidos le ponían la carne de gallina.
    - przy_mokradlach: Los pantanos nunca dormían. Borboteaban, chasqueaban y a veces – eso le parecía – suspiraban como personas. La primera vez que lo oyó se estremeció, agarró el hacha y se asomó fuera del chozo. Las historias del pozo resultaron ciertas. Pasada la medianoche, lejos sobre el agua negra, se encendía una lucecita que parpadeaba. Se apagaba cuando la miraba y volvía a brillar cuando apartaba la vista.
    - else: El lago respiraba de noche. Cada uno de sus alientos era tibio y agradable. Aunque no había viento ni olas, de vez en cuando algo chapoteaba en el bajío. Una vez Maciek oyó cómo algo pesado salía del agua y avanzaba por la ribera, entre los carrizos, hacia él. Por la mañana fue a mirar. Los carrizos estaban intactos y en las aguas someras dormitaban los patos, tranquilos como cada día.
}
Una noche, cuando de la hogaza ya solo le quedaba el cuscurro, le llegó un sonido que nunca había oído allí. Un aullido quedo y entrecortado – fino, parecido al de un lobo, pero débil. Venía de la maleza cercana. Maciek intentó no hacerle caso, pero volvía una y otra vez.
# pytanie: ¿Qué debería hacer Maciek?
*   [Coger el hacha – aunque a oscuras es fácil perderla en el barro – y salir del chozo a ver qué es.]
    -> pies
*   [Quedarse en el chozo y, pese a todo, intentar dormir. Aquí se siente a salvo.]
    -> zostal

= zostal
~ los_psa = niespotkany
Maciek apretó los dedos en torno al hacha y no se movió. El aullido duró todavía largo rato. Luego se volvió un gemido lastimero y antes del alba se apagó. # dalej
-> dach


// ------------------------------------------------------------
//  Pies w zaroślach — tylko gdy Maciek wyszedł z szałasu.
// ------------------------------------------------------------
=== pies ===
# tlo: zarosla_noc
Maciek salió a rastras con el hacha en la mano. La noche estaba clara de luna y la hierba mojada de rocío. Avanzaba despacio siguiendo el sonido, paso a paso, sintiendo que el corazón se le quería salir del pecho. El aullido unas veces callaba y otras sonaba cada vez más cerca.
Entre los arbustos espesos oyó un rumor de hojas. Apartó las ramas con el mango del hacha y se quedó helado. De la oscuridad surgieron dos ojos brillantes. A la luz de la luna vio que era un perro joven. Estaba tan flaco que las costillas le asomaban bajo la piel, y tenía las patas demasiado grandes para el resto del cuerpo. El hocico era largo y estrecho, y las orejas, tiesas. No huía del hombre. Gruñía bajito, temblando entero. # pokaz: pies
Maciek metió la mano en el bolsillo. Había en él un pequeño envoltorio con el último trozo de pan – duro como una piedra, pero al fin y al cabo era su comida de mañana.
# pytanie: ¿Qué hará Maciek?
*   [Darle al perro el trozo de pan.]
    -> dal_chleb
*   [No dárselo y volver al chozo.]
    -> nie_dal_chleba

= dal_chleb
~ ekwipunek -= chleb
~ los_psa = nakarmiony
Maciek desenvolvió el trapo y arrojó el pan bajo el arbusto. El perro retrocedió y gruñó, pero al cabo de un momento empezó a olfatear lo que había caído. De pronto atrapó la presa con los dientes y desapareció en la oscuridad antes de que Maciek pudiera siquiera parpadear.
El hombre volvió a arrastrarse bajo las ramas de su chozo y se durmió con hambre, sabiendo que al día siguiente no habría desayuno. # dalej
-> dach

= nie_dal_chleba
~ los_psa = porzucony
Maciek dejó el pan en el bolsillo.
«Si yo mismo apenas me sostengo», le murmuró al perro, como si quisiera justificarse ante él.
Retrocedió despacio y se escondió bajo las ramas. El aullido sonó otra vez, más débil que antes. En toda la noche no volvió a oírlo. # dalej
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
# rozdzial: Prólogo
# tytul: El tejado
{ los_psa == nakarmiony: -> bez_chleba | -> z_chlebem }

= z_chlebem
~ ekwipunek -= chleb
Por la mañana Maciek desenvolvió el trapo y se comió el último trozo de pan. Lo masticaba despacio, bocado a bocado, para que le durara todo el día. Bebió agua, se sacudió las manos y se fue a trabajar.
-> trzcina ->
Cortaba la espesura con el hacha a ras de suelo, la ataba en haces y los acarreaba hasta la cabaña. Una y otra vez, sin descanso. La espalda le ardía como fuego vivo, pero el montón al pie de la pared crecía.
Por la tarde ya no quedaba carrizo en aquel sitio, así que siguió más allá. Volvía por otro camino – por el lado de donde la noche anterior había llegado el aullido. Caminaba, cuando de pronto el pie se le quedó suspendido en el aire.
En la hierba, bajo un arbusto, yacía un perro. Flaco, de hocico largo y pelo enmarañado. Estaba rígido, tumbado de costado, con los ojos entreabiertos. Las moscas ya lo cubrían.
{ los_psa == niespotkany:
    Maciek se quedó largo rato inmóvil junto a él. Solo entonces comprendió qué había aullado aquella noche. No una fiera, ni ningún espanto – solo un cachorro hambriento y aterido que llamó y llamó, hasta que calló.
    Se le hizo un nudo en la garganta. Pensó que aquella noche podía haber salido. Pero enseguida se respondió a sí mismo: ¿y si hubiera ido a dar de lleno en las fauces de un lobo? A oscuras nadie sabe qué aguarda entre los arbustos. Un hombre sensato se queda en su chozo con el hacha a mano – y sigue vivo.
    Apartó la vista, se echó el haz a la espalda y volvió al trabajo. Dejó al perro donde lo había encontrado. # dalej
- else:
    Maciek cayó de rodillas. Recordaba aquellos ojos a la luz de la luna, aquel gruñido sin convicción, el temblor de todo el cuerpo. El perro le había suplicado, y él se había dado la vuelta y se había ido.
    Un trozo. Un solo trozo de pan duro.
    «Yo mismo apenas me sostenía», dijo en voz alta, como si alguien lo acusara. «Si lo hubiera dado todo, ¿quién estaría aquí tendido? ¿El perro o yo?»
    Las palabras sonaban sensatas, pero no le trajeron alivio. Maciek se levantó y, sin volver a mirar bajo el arbusto, siguió acarreando carrizo. No enterró el cuerpo. # dalej
}
-> uplyw_czasu

= bez_chleba
Por la mañana Maciek se despertó con hambre. Se llevó la mano al bolsillo sin pensar y recordó que el envoltorio estaba vacío. Suspiró, bebió agua y se fue a trabajar.
-> trzcina ->
Cortaba la espesura con el hacha a ras de suelo, la ataba en haces y los acarreaba hasta la cabaña. Una y otra vez, sin descanso.
Hacia mediodía, al enderezar la espalda dolorida, vio que algo se movía a lo lejos. En el borde del prado, entre las matas de hierba, rondaba un perro – el mismo, flaco, de hocico largo. Husmeaba, se detenía y miraba hacia él, dispuesto a salir corriendo en cualquier momento.
Maciek sonrió, por primera vez en muchos días.
«Estás vivo», murmuró.
Los días siguientes el perro volvió. Al principio se mantenía lejos. Luego se sentaba en un altozano y se pasaba horas mirando cómo el hombre trajinaba con los haces. Cada día estaba un poco más cerca – unos pasos, no más, como si comprobara hasta dónde le estaba permitido. # dalej
-> uplyw_czasu

// Wspólny akapit o trzcinie na dach — skąd ją brał, zależy od miejsca chaty.
= trzcina
Las paredes ya estaban rectas y los cabrios bien firmes. Faltaba el tejado. Para la techumbre necesitaba carrizo – mucho carrizo, más del que parecía al mirar la cabaña sola.
{ chata_macka:
    - przy_lesie: El más cercano crecía al borde de las ciénagas, a media hora de allí, así que cada haz tenía que cargarlo a través de todo el prado.
    - przy_mokradlach: Crecía casi en el umbral, espeso y alto, solo que para cogerlo había que vadear el barro frío hasta las rodillas.
    - else: Crecía alrededor de toda la orilla, más alto que él, y susurraba a cada soplo de viento como alguien que cuchichea a tu espalda.
}
->->

= uplyw_czasu
Pasaban los días. Las nieves se fundieron del todo, hasta en los rincones más umbríos al pie del bosque. La tierra dejó de humear y se volvió tibia bajo el pie descalzo. En el lindero del bosque florecieron las anémonas – blancas, espesas como la escarcha – y en los terrenos encharcados brillaban doradas las caltas.
Hacía mucho que Maciek no tenía pan. Vivía de lo que encontraba él mismo o de lo que le traía Andrzej. En las ciénagas recogía arándanos rojos que habían pasado el invierno, ácidos y arrugados, pero todavía comestibles. De los rosales silvestres arrancaba los escaramujos del año anterior, duros como cuentas. En el prado cogía acedera, que mascaba cruda, y en los rincones húmedos bajo los árboles encontraba ajo de oso. También hacía cortes en los abedules y bebía la savia dulzona que goteaba de ellos hasta la mañana. El hambre no se iba, pero se podía vivir con ella.
El tejado crecía día a día. Haz junto a haz, capa sobre capa. # dalej
-> wieczor


// ------------------------------------------------------------
//  Wieczór — stwór w zaroślach.
// ------------------------------------------------------------
=== wieczor ===
# tlo: zmierzch
Aquel día Maciek colocaba ya los haces junto a la misma cumbrera. Solo faltaba una hilera, quizá dos. Las manos le temblaban de cansancio, y el sol se había deslizado tras el horizonte dejando en el cielo un rojo sucio.
Bajó del tejado y se sentó junto al chozo. Quería descansar solo un momento, mientras aún hubiera luz. Apoyó la cabeza en el tronco, cerró los ojos…
…y se durmió.
Lo despertó el silencio.
No se oían grillos, ni ranas, ni viento. Todo alrededor se hundía en la niebla, espesa y blanca, que llegaba a las rodillas. Maciek no sabía cuánto había dormido. Solo sabía que algo no andaba bien – lo sentía con el cuerpo y con el alma antes de comprenderlo con la mente.
Se oyó un sonido. Ni aullido ni grito, sino algo intermedio: un gemido largo y gutural que se convirtió en un chasquido de ramas rotas. Algo saltó con estruendo entre la maleza – muy cerca, no lejos del chozo. # pokaz: oczy
Maciek se puso en pie de un salto. El hacha se le vino sola a las manos. Apretaba el mango con tanta fuerza que se le pusieron blancos los nudillos, y miraba la oscuridad de donde venían los pasos – lentos, pesados, cada vez más cercanos. # dalej
{ los_psa == nakarmiony: -> obrona | -> zdobycz }

= zdobycz
# tlo: zmierzch_zdobycz
Los arbustos se abrieron. De la niebla surgió una figura. # pokaz: topielec
Era más alta que un hombre hecho y derecho, por lo menos tres cabezas. Se erguía sobre dos piernas, pero encorvada, con unos brazos acabados en garras que le colgaban casi hasta el suelo, y con largos cabellos chorreando cieno del pantano. Tenía forma humana – y no era en absoluto un ser humano. En las fauces llevaba algo grande e inerte, que le caía a ambos lados de la cabeza.
Maciek lo reconoció al instante, aunque habría preferido no reconocerlo. # pokaz: cialo
La figura cerró las mandíbulas. Se oyó un crujido – fuerte, húmedo, como de ramas secas al quebrarse, solo que no se trataba de ramas. Luego la criatura se dio la vuelta y huyó hacia las {chata_macka == przy_mokradlach:cercanas }ciénagas, tan deprisa que la niebla se arremolinó tras ella como agua.
Maciek no podía moverse. Temblaba entero, un sudor frío le corría por la espalda y las piernas le flaqueaban. El hacha le pesaba en las manos, inútil. Se quedó así mucho rato, hasta que la oscuridad volvió a callar.
-> strach_o_chate ->
Por fin se arrastró dentro del chozo. Durante largo rato no pudo pegar ojo y estuvo escuchando, hasta que, agotado por el trabajo y el miedo, se durmió. # dalej
-> zgliszcza

= obrona
# tlo: zmierzch_obrona
Los arbustos se abrieron. En la penumbra se encendieron dos ojos – altos, demasiado altos para un lobo o un jabalí. La figura estaba entre la maleza, sobre dos piernas, encorvada, con los brazos colgándole casi hasta el suelo y con largos cabellos chorreando cieno del pantano. Tenía forma humana – y no era en absoluto un ser humano. # pokaz: topielec
Maciek no podía moverse. Temblaba de pies a cabeza, un sudor frío le corría por la espalda. Los ojos lo miraban fijamente y despacio, muy despacio, se acercaban.
A lo lejos se oyó un ladrido.
El perro salió disparado de la oscuridad como una flecha y se plantó entre Maciek y la maleza. Se le erizó el pelo del cuello, se afianzó en el sitio y ladraba – fuerte, con rabia, sin pararse un instante, aunque le temblaba todo el cuerpo. Flaco, joven, con el rabo entre las patas – y no retrocedió ni un paso. # pokaz: pies
Los ojos se detuvieron. La figura vaciló, soltó un siseo gutural – y luego dio media vuelta y, con un crujir de ramas, huyó hacia las {chata_macka == przy_mokradlach:cercanas }ciénagas, y la niebla se arremolinó tras ella como agua.
-> strach_o_chate ->
~ los_psa = oswojony
~ ekwipunek += pies_towarzysz
Pasó mucho tiempo antes de que Maciek volviera en sí. Al fin se dejó caer al suelo junto al chozo y respiraba con fuerza, como tras una larga carrera. El perro dejó de ladrar. Se le acercó con recelo, con la cabeza gacha – y meneó el rabo, orgulloso de sí mismo como nadie en el mundo.
Maciek tendió una mano temblorosa. El animal la olfateó y luego se dejó acariciar.
«Buen perro», susurró. «Bueno…», y soltó el aire despacio.
Aquella noche entraron juntos en el chozo. El perro se tumbó en la entrada, con la cabeza vuelta hacia la maleza. Maciek siguió en vela mucho rato, atento a la oscuridad, hasta que lo venció el sueño. Pero ya no estaba solo. # tobolek # dalej
-> zgliszcza

// Tylko gdy chata stoi przy mokradłach — stwór uciekł właśnie tam.
= strach_o_chate
{ chata_macka == przy_mokradlach:
    Y entonces cayó en la cuenta de que la criatura no había huido lejos. Había desaparecido en el pantano, a unas decenas de pasos del chozo – allí donde él mismo llevaba un mes durmiendo, comiendo y trabajando. Quizá había estado allí desde el principio. Quizá cada noche, mientras Maciek escuchaba el borboteo del agua negra, algo al otro lado lo escuchaba a él. «Allí no se construye. Allí solo se ahoga uno», le vinieron a la memoria las palabras de la gente del pozo. Por primera vez desde el día en que empezó la obra, pensó que quizá se había equivocado. Que tal vez debería haber hecho caso.
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
# rozdzial: Prólogo
# tytul: Las cenizas
Empezaba a clarear. Maciek se despertó entumecido y aterido. Por un momento no supo si lo que había visto por la noche había ocurrido de verdad. Luego le volvió a la memoria el crujido de las ramas rotas y lo recorrió un escalofrío.
{ los_psa == oswojony:
    El perro estaba tumbado a la entrada del chozo con la cabeza sobre las patas, mirando hacia las ciénagas. Ya no dormía. Maciek tuvo la impresión de que había velado así hasta el alba.
- else:
    En el chozo reinaba el silencio. Maciek se asomó fuera. La hierba junto a la maleza estaba aplastada en una franja ancha, embadurnada de limo, y apestaba a pantano{chata_macka != przy_mokradlach:, aunque las ciénagas quedaban lejos}. La franja se alargaba {chata_macka == przy_mokradlach:hacia el agua negra|en dirección a ellas}, y en los tallos se veían oscuras gotas de sangre. # pokaz: slady
}
Se acercó a su cabaña sin terminar y se sentó en el umbral. Allí se quedó, con la mirada perdida al frente. Los pensamientos se le arremolinaban como la niebla sobre la aldea. Huir. Dejarlo todo mientras aún seguía con vida y no volver jamás. Y por otro lado – más de un mes de trabajo, las ampollas en las manos, las últimas rebanadas de pan. Cada madero de aquellas paredes lo había desbastado él solo. ¿Y adónde iba a ir? ¿A un campo ajeno, otra vez por un plato de gachas? Había prometido traer aquí a su familia. Que tendrían su propio techo.
# pytanie: ¿Qué decidirá Maciek?
*   [Quedarse. Ha puesto demasiado en este lugar.]
    -> zostaje
*   [Recoger lo que tiene y marcharse mientras haya tiempo.]
    -> odchodzi

= zostaje
Se levantó, se sacudió los pantalones y miró el tejado. Quedaba una hilera de carrizo, quizá dos.
«No he construido todo esto para salir huyendo ahora», dijo en voz alta, para que lo oyera algo más que {chata_macka == przy_lesie:el bosque|los carrizos}. # dalej
-> dach_gotowy

= odchodzi
~ chcial_odejsc = true
Se cargó el hatillo al hombro y emprendió la subida hacia el camino real. Caminaba deprisa, sin volver la vista atrás. Solo en la Cresta de las Hayas se detuvo y miró hacia abajo.
Allí estaba la cabaña, pequeña y sin terminar, con el tejado como una frase a medio decir. Su cabaña.
{ los_psa == oswojony: El perro lo siguió un trecho, luego se sentó a media ladera y miró – ora a él, ora atrás – como esperando a que Maciek lo comprendiera por sí mismo. }
Maciek no se movió hasta que el sol salió por encima del bosque. Luego dio media vuelta. No porque hubiera dejado de tener miedo. No tenía adónde ir, y nada más. # dalej
-> dach_gotowy

= dach_gotowy
Los últimos haces de carrizo los colocó antes de mediodía. Los ató con tiras de líber, los apretó con varas y bajó de la escalera. Por primera vez desde que llegó a Zapadlina estaba ante una cabaña terminada – suya, de los cimientos a la cumbrera. # pokaz: dach
Aquella noche por fin se acostó en ella. Las paredes olían a resina y a arcilla húmeda, y por una rendija de la puerta se colaba la luz de la luna.
Aún no había cama, pero al menos tenía sobre la cabeza un techo propio. Allí, en su casa, por primera vez en semanas pasó la noche entera sin despertarse.
{ los_psa == oswojony: El perro se tumbó en el umbral y desde aquella noche no se lo cedió a nadie. }
Por la mañana Maciek fue a ver al único hombre en quien confiaba. Tenía que contárselo a alguien. # dalej
-> u_andrzeja

= u_andrzeja
# tlo: izba_andrzeja
La casa de Andrzej se alzaba en un altozano, lejos del agua. En la estancia olía a humo y había poco sitio. Staś, el hijo del dueño, estaba sentado en el banco junto a la mesa, tallando un palo con una navajita. Al ver al visitante sonrió de oreja a oreja.
Maciek empezó por el principio: el silencio, los pasos y… la figura tres cabezas más alta que un hombre, con los cabellos chorreando cieno.
Andrzej escuchaba, hasta que de pronto soltó una carcajada.
«El hambre te ha hecho ver visiones, hombre. Despabila. Un mes a pan y agua – así cualquiera ve hasta al arcángel Miguel.»
Staś dejó de tallar. Miraba fijamente al forastero con la boca abierta y miedo en los ojos.
«¿Es verdad?», preguntó.
# pytanie: ¿Qué hará Maciek?
*   [Confirmar con firmeza que es verdad y contarlo todo hasta el final, delante del chico. Que sepa de qué tiene que guardarse.]
    ~ stas_zaufanie = true
    -> prawda_przy_chlopcu
*   [Sonreír y despachar al chico diciendo que seguramente fue solo un sueño, pero pedirle a Andrzej que lo mande fuera y contárselo todo a solas, con detalle. No son cosas para un niño.]
    -> w_cztery_oczy

= prawda_przy_chlopcu
«Sí, es verdad. Que el crío escuche. Más vale que tenga miedo a que vaya solo al pantano y no vuelva nunca.»
El dueño de la casa miró a su hijo y luego a Maciek. La sonrisa se le fue borrando poco a poco de la cara.
-> dziad_opowiadal

= w_cztery_oczy
«Bueno… seguramente fue un mal sueño», respondió.
Sin embargo, pidió a su amigo hablar a solas. Andrzej mandó a Staś por agua. El muchacho salió de mala gana y dejó la puerta entornada. Ninguno de los dos hombres se dio cuenta.
-> dziad_opowiadal

= dziad_opowiadal
«Tres cabezas más alta, dices», habló por fin Andrzej, ya sin reírse. «Y el pelo mojado de pantano.» Durante un buen rato estuvo dando vueltas entre los dedos a un cuenco vacío. «Mi abuelo contaba algo así. Creía que lo hacía para asustar a los niños.»
Maciek volvió a contar, paso a paso, toda aquella noche. # dalej
-> legenda


// ------------------------------------------------------------
//  Legenda o wiedźmie znad jeziora — opowiada Andrzej.
// ------------------------------------------------------------
=== legenda ===
# tlo: legenda
«Dicen que todo empezó allí, junto al lago, donde están esos maderos quemados.» Andrzej bajó la voz. «Allí vivía antaño una mujer. Una herbolaria. La gente acudía a ella con dolores, enfermedades y fiebres – y no le negaba ayuda a ninguno. Pero con el tiempo algo se le metió dentro. Nadie sabe por qué. Hablaba por las noches, pero no sola – con alguien invisible para los demás. Unos decían que con los ahogados; otros, que con el viejo del sombrero de musgo, que se asomaba a su casa desde el lado del bosque. Ella misma repetía que los muertos venían del agua y le contaban un futuro terrible. Pronto todos la evitaban, porque le tenían miedo.
«Luego en la aldea las cosas fueron cada vez peor. La leche se agriaba en los cubos, los niños pequeños se despertaban gritando, las hortalizas se pudrían en la tierra. Morían también los animales – primero un ternero, luego una vaca, luego un gallinero entero en una sola noche. La gente decía que era cosa suya y empezó a llamarla bruja.
«Una noche varios hombres se juntaron ante su cabaña. Clavaron tablas en la puerta mientras dormía, cubrieron las paredes de paja y les prendieron fuego.» # pokaz: chlopi, ogien
Andrzej se calló un momento.
«Mi abuelo decía que gritó hasta el final. No de dolor, Maciek. Maldecía. A la aldea, a la tierra, a todo el que vive aquí y a todo el que viva algún día. Que nadie tendría paz mientras los que la visitan no hubieran matado aquí a todos, hasta el último. También se la oía gemir mientras soltaba las palabras de la maldición: “Los huesos de vuestros hijos serán quebrados, y su sangre, bebida…”» Andrzej se pasó la mano por la cara. «Y decía también que, en el lindero del bosque, mientras la cabaña ardía, había alguien alto mirando. Nadie fue a ver quién era.»
«Qué horror… ¿Y los que la quemaron?»
«Ninguno llegó vivo al invierno. Uno tras otro perdieron el juicio. Hablaban solos, no dormían, bajaban a oscuras al agua. Hasta que al final todos se metieron en el pantano y ya no salieron. Los que los vieron por última vez decían que tenían algo raro en los ojos. Como si en cada uno ardiese, mortecino, un candil.» # pokaz: wegielki
Andrzej se inclinó hacia él.
«Son sus ojos los que parpadean de noche sobre las ciénagas. Nada de fuegos fatuos. Allí están, al acecho – y te llaman.»
{ chata_macka:
    - przy_mokradlach: Maciek sintió que el frío le encogía el estómago. Cada noche veía esas lucecitas desde su umbral. Había creído que eran madera podrida o vapores del pantano. Que no eran más que luz.
    - nad_jeziorem: Maciek palideció. Aquellos maderos los había empujado con sus propias manos hasta los carrizos. Había levantado su cabaña justo donde ardió la otra.
}
{ stas_zaufanie:
    Staś seguía sentado sin moverse, con el palo a medio tallar en la mano. # dalej
- else:
    Tras la puerta entornada algo crujió levemente. Cuando el dueño se asomó, en el zaguán solo había un cubo de agua. Staś ya estaba lejos, en el patio. # dalej
}
-> zgliszcza_wiedzmy


// ------------------------------------------------------------
//  Zgliszcza chaty wiedźmy w trzcinach nad jeziorem.
// ------------------------------------------------------------
=== zgliszcza_wiedzmy ===
# tlo: zgliszcza
~ zapiski += zielarka_1
Al volver de casa de Andrzej, Maciek no podía dejar de pensar en las ruinas calcinadas.
{ chata_macka == nad_jeziorem: Ahora que sabía qué eran, las veía cada vez que miraba hacia los carrizos junto a su casa. Maderos negros y carbonizados que asomaban como costillas. }
Algo dentro de él lo tentaba a examinarlas a fondo, aunque sentía miedo.
# pytanie: ¿Qué hará Maciek?
*   [Ir a las ruinas y buscar entre las cenizas.]
    -> przeszukuje
*   [Mantenerse lejos de ellas.]
    -> omija

= przeszukuje
~ przeszukal_zgliszcza = true
~ ekwipunek += figurka
Apartó los carrizos con el hacha y se arrodilló junto a los maderos ennegrecidos. La ceniza estaba fría, apelmazada y húmeda. Rebuscó en ella largo rato, hasta que los dedos dieron con algo duro. # pokaz: maciek
Una figurilla pequeña de madera, chamuscada por un lado. Una silueta humana con unos brazos demasiado largos, que le llegaban hasta los pies.
Maciek le daba vueltas entre las manos. Pensó que quizá podría cambiarla en la ciudad por algo de comer, así que se la quedó.
{ los_psa == oswojony: El perro, que hasta entonces husmeaba por la orilla, retrocedió y gruñó por lo bajo a su bolsillo. }
Al cabo de un momento distinguió algo más.
«No puede ser», susurró, y sacó de la ceniza un eslabón ennegrecido. «¿Sería con esto con lo que prendieron fuego a la cabaña de la bruja?»
# pytanie: ¿Cogerá Maciek el eslabón?
*   [Sí – maldito o no, le permitirá encender fuego y prepararse comidas calientes.]
    ~ ekwipunek += krzesiwo
    -> wieczor_przy_chacie
*   [No – no quiere arriesgarse a que la maldición caiga sobre él.]
    -> wieczor_przy_chacie

= omija
{chata_macka == nad_jeziorem:Los carrizos junto a su propio umbral no podía evitarlos, pero desde entonces, al salir de la cabaña, apartaba de ellos la vista.|Dio un amplio rodeo para no acercarse al lago y ni una vez miró hacia los carrizos.} Hay cosas que es mejor no tocar. # dalej
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
    Al anochecer Maciek reunió ramas secas y las dispuso en un círculo de piedras delante de la cabaña. El eslabón le pesaba en la palma de un modo extraño. Lo estuvo mirando un rato, pensando en quién lo habría empuñado por última vez. Luego golpeó una vez, dos, tres – y en la yesca prendió una chispa. # pokaz: ogien
    El fuego estalló con fuerza, y el calor le golpeó la cara tan de repente que hasta se mareó. Hacía semanas que no se llevaba a la boca nada caliente. Ahora coció en una olla de barro una sopa de ortigas y acedera. Comía despacio, quemándose los labios, y nada en el mundo le había sabido nunca tan bien.
    { los_psa == oswojony:
        El perro se tumbó al otro lado de la hoguera. Las llamas se reflejaban en sus ojos, y él las miraba como hechizado. # pokaz: pies
    }
- else:
    La noche cayó fría y oscura. Maciek se comió un puñado de acedera cruda y unos pocos arándanos rojos arrugados, bebió agua y se sentó en el umbral.
}
Estuvo largo rato sentado, mirando hacia el camino real, trazando un plan en su cabeza. La cabaña estaba lista. Era hora de ir a la ciudad – comprar pan, sal, quizá grano para unas gachas.
{ ekwipunek ? figurka: La figurilla intentaría venderla – quizá alguien pagara por semejante rareza. }
Y luego, en cuanto recobrara fuerzas, traería aquí a su familia. A la casa que había levantado con sus propias manos. # dalej
-> droga_do_miasta


// ------------------------------------------------------------
//  Droga do miasta — kręta ścieżka między mokradłami, głos znad wody.
// ------------------------------------------------------------
=== droga_do_miasta ===
# tlo: sciezka
Partió al alba. Hasta la ciudad había seis horas de camino, y el primer tramo iba por una senda sinuosa entre las ciénagas, cuesta arriba, hasta la Cresta de las Hayas. Caminaba con brío, aunque las tripas le rugían de hambre. Pensaba en su mujer y en su hijito – en cómo se plantarían por primera vez en el umbral de la nueva cabaña. La añoranza le apretaba la garganta.
{ los_psa == oswojony:
    El perro iba pegado a su costado, meneando alegremente el rabo. # pokaz: pies
}
La niebla se tendía baja sobre el agua negra. La senda era estrecha, en algunos sitios tan blanda que había que saltar de mata en mata. Maciek pisaba con cuidado, con la cabeza gacha. Recordaba lo que decía la gente: no hay que mirar esa agua demasiado tiempo.
A mitad de camino, sin embargo, algo lo obligó a alzar la vista. En el fondo de las ciénagas brillaba débilmente una lucecita pálida. Ya había amanecido del todo, y la luz seguía allí. Parpadeaba despacio, con regularidad, como si alguien estuviera de pie con un candil, al acecho. # pokaz: swiatelko
Entonces oyó su nombre.
«Maaaciek…»
Bajito, prolongado, desde el agua. Con una voz que sonaba como la de su amada esposa.
Siempre lo llamaba así cuando pasaba algo. Pero ella se había quedado en la granja, más allá de la ciudad, y allí debía esperarlo… Quizá solo se lo había parecido. O quizá era el pantano que lo llamaba.
# pytanie: ¿Qué hará Maciek?
*   [Ir hacia la voz – quizá su mujer necesite ayuda.]
    { los_psa == oswojony: -> ratunek | -> utoniecie }
*   [No volverse y seguir adelante – no puede ser ella, seguro.]
    -> nie_odwraca_sie

= ratunek
# tlo: sciezka_po
~ pies_uratowal = true
Dio un paso fuera de la senda, luego otro, dejó atrás la maleza y saltó por encima del barro movedizo. El pantano chapoteó y le atenazó los tobillos con dedos helados. Sintió cómo le tiraba de las piernas hacia el fondo. Entonces el perro se lanzó, lo agarró con los dientes por el sayo y tiró con todas sus fuerzas hacia atrás. Maciek cayó de espaldas y gritó. La lucecita se apagó como de un soplo, y en algún lugar de la niebla resonó una risita queda.
Yacía en el barro, jadeando, y el animal, plantado junto a él, gruñía hacia las ciénagas, hasta que la niebla se cerró sobre el agua. # pokaz: upadek # dalej
-> na_grzbiecie

= utoniecie
// Bez psa: Maciek idzie za głosem i tonie — ale przeżywa. Ratuje się krzesiwem albo ratuje go Andrzej;
// bagno zabiera figurkę (zostaje tylko spokojne zakończenie) i zostawia na łydkach sine pręgi.
# tlo: sciezka_ratunek
~ pregi_na_lydkach = true
Dio un paso fuera de la senda, luego otro, dejó atrás la maleza y saltó por encima del barro movedizo. El pantano chapoteó y le atenazó los tobillos con dedos helados. Sintió cómo le tiraba de las piernas hacia el fondo. La voz estaba cada vez más cerca – ahora cálida, conocida, la que llevaba semanas añorando.
«Maaaciek…»
Estaba inmóvil, hundido ya hasta las rodillas, luego hasta la cintura. No sentía el frío. Solo sentía que alguien querido se le acercaba.
Cuando el agua negra le llegó al pecho, por fin comprendió. Dio un tirón, pero algo lo sujetaba por las pantorrillas – algo que tenía dedos. La lucecita parpadeó justo delante de su cara y Maciek vio que no era un candil. Eran ojos – como los que había descrito Andrzej. # pokaz: oczy
{ ekwipunek ? krzesiwo:
    Entonces se acordó del eslabón, que desde aquel día llevaba en el pecho, bajo la camisa. Con las manos entumecidas lo sacó de un tirón junto con la yesca y golpeó – una vez, dos – justo encima de la superficie. La tercera chispa saltó directamente a los ojos. En el agua algo siseó como un leño arrojado al fuego, la presión en las pantorrillas cedió y la lucecita se apagó como de un soplo. Maciek se echó hacia atrás, se aferraba a las matas de hierba, las arrancaba a puñados, hasta que por fin salió a rastras a la senda. # pokaz: iskry, ratunek
    { ekwipunek ? figurka:
        ~ ekwipunek -= figurka
        ~ figurka_w_bagnie = true
        En la senda notó que el bolsillo estaba ligero. La figurilla chamuscada debía de habérsele escurrido en el pantano. Por un momento le pareció que aún la veía – una forma pequeña y oscura que se hundía despacio – y luego ya no hubo nada. # pokaz: figurka
        No volvió a buscarla. Por nada del mundo.
    }
- else:
    ~ uratowal_andrzej = true
    «¡Maciek! ¡Agárrate!»
    Justo a su lado golpeó el agua una larga pértiga. En el dique estaba Andrzej, con las abarcas embarradas y una cesta colgada del hombro – al alba revisaba las nasas en los aguazales. Maciek se aferró a la vara con ambas manos. El vecino hizo fuerza y gimió, y el pantano tiraba hacia sí, hasta que por fin lo soltó con un chasquido de mala gana. El fuego fatuo parpadeó una vez más y se apagó. # pokaz: andrzej, ratunek
    «Te lo dije», jadeó Andrzej cuando los dos yacían en el barro. «No hagas caso de las voces que vienen del agua.»
    { ekwipunek ? figurka:
        ~ ekwipunek -= figurka
        ~ figurka_w_bagnie = true
        En el dique Maciek notó que el bolsillo estaba ligero. La figurilla chamuscada debía de habérsele escurrido en el pantano. Por un momento le pareció que aún la veía – una forma pequeña y oscura que se hundía despacio – y luego ya no hubo nada. # pokaz: figurka
        «Se ha cobrado lo suyo», murmuró Andrzej, y escupió por encima del hombro izquierdo.
    }
}
En ambas pantorrillas, allí donde aquella cosa lo había sujetado, le quedaron unas marcas amoratadas – largas, estrechas, cinco de cada lado. No se le borraron ni aquel día ni hasta el fin de su vida. # dalej
-> na_grzbiecie

= nie_odwraca_sie
Apretó los dientes y siguió andando, paso a paso, sin volver la cabeza. La voz llamó aún dos veces, cada vez más bajo. Luego enmudeció. # dalej
-> na_grzbiecie

= na_grzbiecie
# tlo: zapadlina
// Kto poszedł za głosem (pies go wyciągnął albo bagno puściło), już się odwrócił — dla niego inny tekst.
{ pies_uratowal || pregi_na_lydkach:
    El resto de la subida lo hizo como en sueños – {pregi_na_lydkach:empapado hasta el pecho|empapado hasta la cintura}, cubierto de cieno, con {pregi_na_lydkach:las pantorrillas, en las que aún sentía unos dedos ajenos|los tobillos, en los que aún sentía el abrazo helado del pantano}.{ los_psa == oswojony: El perro no se apartaba de él ni un paso y a cada momento volvía la vista hacia el agua.}
    En la Cresta de las Hayas se sentó en una piedra y solo allí dejaron de temblarle las manos. Abajo yacía Zapadlina – callada, cubierta de niebla como por un sudario. En alguna parte de ella estaba su cabaña.
- else:
    En la Cresta de las Hayas Maciek se atrevió por fin a mirar atrás. Abajo yacía Zapadlina – callada, cubierta de niebla como por un sudario. En alguna parte de ella estaba su cabaña.
}
Luego tomó el camino real hacia la ciudad. # dalej
-> miasto


// Koniec prologu — dalej rozdział pierwszy z Jaromirem.
=== prolog_ciag_dalszy ===
# ozdobnik
_Fin del prólogo._ # dalej
-> rozdzial_pierwszy
