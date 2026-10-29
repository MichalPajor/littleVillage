// ------------------------------------------------------------
//  Rozdział dwudziesty – Ostatnia noc. Zaduszki: mgła pod płotami, nakrycia dla dziadów.
//  Przed północą do wsi wchodzi świta Pana Lasu (słudzy, umarli, dzieci spod dębu).
//  Trzy drogi: zwrócić mu granicę (siekiera w pniaku, słowo całej wsi; z żołędziem
//  ze Starego Dębu Pan Lasu nie bierze już dzieci), zająć jego miejsce (pożegnanie
//  albo odejście bez słowa) albo – z krzesiwem – skrzesać ogień (Antek pod stodołą,
//  ślepota albo pół wsi w popiele). Trzy epilogi pół wieku później.
// ------------------------------------------------------------

=== rozdzial_dwudziesty ===
# tlo: dziady
# rozdzial: Capítulo vigésimo
# tytul: La última noche
El dos de noviembre Zapadlina amaneció envuelta en una niebla tan espesa que desde el umbral no se veía el pozo. Nadie fue al bosque por ramas secas ni al lago a lavar. Las mujeres fregaban desde la mañana bancos y mesas, los hombres partían leña pegados a las paredes de las cabañas, para no alejarse más de dos pasos de la puerta. En los palos de la cerca que daban al bosque encanecía el liquen – seco y quebradizo, aunque la niebla se posaba en gotas sobre todo lo demás.
{ przysiega_ksiedzu:
    Antes de mediodía llegó de Bukowiec el cura, con el hisopo y un cubo de agua bendita, para rociar las cercas. Junto a la cabaña de Jaromir detuvo el caballo.
    «¿Cumples lo que juraste sobre el rosario?», preguntó. # pokaz: ksiadz
    { cialo_kopii == spalone || cialo_kopii == pod_mlodnikiem:
        Jaromir calló. El cura dio media vuelta; su cerca no la roció.
    - else:
        «Lo cumplo», respondió Jaromir. El cura roció la cerca dos veces.
    }
}
En cada alféizar se puso un cuenco de gachas y un jarro de agua. En cada estancia se dejó en la mesa un cubierto de más – para los que vuelven esa noche. # dalej
{ marysia_odzyskana:
    Hanka sentó a Marysia junto al horno y no le quitaba ojo.
- else:
    Hanka puso dos cubiertos de más: uno para las ánimas, y otro pequeño, con la cucharita de madera que Jaromir había tallado el invierno anterior. Nadie dijo ni una palabra.
}
{ ekwipunek ? szczenie_psa:
    El perro canelo se metió debajo del banco y no salió de allí ni por un hueso.
}
{ uboze == nakarmione:
    El platillo de leche que Jaromir había dejado detrás del horno al alba seguía intacto al anochecer. En el rincón algo rascaba inquieto el día entero.
}
Al atardecer la niebla se espesó junto a los cercados y se detuvo. No se movía, aunque el viento sacudía los tejados de paja. Las velas de la Candelaria que se habían apagado al volver del cementerio no querían encenderse – las mechas siseaban y se ennegrecían.
{ not marysia_odzyskana:
    Solo la vela de Hanka ardía sobre la mesa, con llama pareja, igual que la víspera. # pokaz: gromnica_hanki
}
Jaromir se sentó en el umbral. Apoyó en el marco de la puerta el hacha {zastaw_u_leszego == zastaw_siekiera:de su suegro|de su abuelo}, con el mango al alcance de la mano.{ ekwipunek ? krzesiwo: En el bolsillo notaba el frío del eslabón.} Esperó. # pokaz: prog # dalej
-> swita_pana_lasu

= swita_pana_lasu
# tlo: swita
Llegaron antes de medianoche.
Primero se hizo el silencio – un silencio tal que Jaromir oía crepitar las brasas en el horno, dentro de la cabaña. Luego la niebla se abrió y por el camino del bosque entró en la aldea el séquito.
Avanzaban despacio, sin el menor ruido. De las primeras filas llegaba un olor a cieno y humedad; de las últimas, a madera podrida y dulzona. La mendiga tuerta, en harapos, con su cayado. La Dama de la Medianoche, alta, plana como una sombra en la pared{ polnocnica == policzyla_mak:, con las semillas de amapola en el puño apretado}. Rusalkas con camisas mojadas, sacadas del cieno fuera de su tiempo – les goteaba agua del pelo, y entre ellas iba Kaśka, la hija de los Wójcik{ ratunek_franka == krzyzem:, y Bartek, el hijo del molinero, con un alga al cuello}. Mamunas con sus palas de lavar. La vieja del centeno, encorvada, con espigas en el pelo{ not wilk_przy_jaromirze: y un zueco rojo en la mano}. Candelillas que se mecían sobre las cabezas como faroles.{ los_figurki == figurka_u_stwora: La criatura de las ciénagas, jorobada, con la figurilla apretada contra el pecho como una madre a su hijo.}{ poludnica_uklon: La Dama del Mediodía con su camisa blanca; al pasar, se inclinó ante Jaromir – igual que aquella vez, en el rastrojo.} Los niños bajo el roble, cogidos de la mano. Ninguno proyectaba sombra. # pokaz: swita, dzieci # dalej
{ not marysia_odzyskana:
    Entre ellos había una que no daba la mano a nadie. Descalza, con una camisita blanca, sin cinta en el pelo. Caminaba más despacio que los demás y miraba hacia las cabañas, como si buscara el camino a casa. Hanka la vio por la ventana. No gritó. Solo apretó contra sí la vela, con tanta fuerza que la cera le corrió por los dedos, y la llama no tembló. # pokaz: marysia
}
Iban también los muertos de Zapadlina. El viejo Wójcik{ pochowek_wojcika == pochowany_za_murem || trzy_noce == rozkopany_grob: – con la cara vuelta hacia el suelo, aunque caminaba derecho}.{ trzy_noce == czuwanie_przy_kolysce: La señora Wójcik, con las manos cruzadas sobre el pecho{ korale_kaski == oddane: y el collar de su hija bajo el pañuelo}.} La abuela Marianna. Delante de todos ellos – el abuelo Maciek, con el hacha al cinto y el hatillo al hombro, igual que setenta años atrás, cuando bajó por primera vez a Zapadlina. Al pasar junto a la cabaña, miró a su nieto y le hizo una seña con la cabeza. # pokaz: umarli
Al final, inclinado para no engancharse la cornamenta en el cielo, venía el Señor del Bosque. Cada uno de sus pasos era largo como una besana. El musgo brotaba allí donde pisaba, y al instante encanecía de escarcha. # pokaz: leszy
Se detuvo ante la cabaña de Jaromir. El séquito se paró tras él. # dalej
{ marysia_odzyskana: -> calun_nad_jeziorem }
-> po_calunie

= calun_nad_jeziorem
De las filas salieron las mamunas. La más vieja alzó en las manos extendidas un lienzo pequeño y mojado, se lo mostró a Jaromir y sin una palabra echó a andar con las otras hacia el lago.
«Ve», dijo el Señor del Bosque, sin volver la cabeza. «Esperaré. La noche es larga.» # dalej
# tlo: calun_noc
Sobre las piedras planas del otro lado del lago, las mamunas extendieron el lienzo y lo alisaron con las palmas. Seguía mojado, aunque desde agosto habían pasado dos meses. Justo del tamaño de un niño. El lago estaba negro y liso, y de la aldea no llegaba ningún sonido. # pokaz: mamuny
«Marysia», dijo la más vieja sobre la mortaja, con ternura, y golpeó la piedra con la pala. «Marysia.»
{
- dar_pominiety:
    «Una vez te olvidaste», graznó. «Ahora venimos por lo nuestro.»
- uklad_z_mamunami:
    «No mires así, amo», graznó. «Nosotras hemos cumplido. Esto no viene de nosotras. Lavamos lo que nos trae el agua, y ahora el agua trae a los niños de vuestra aldea.»
- else:
    «No elegimos nosotras», graznó. «Lavamos lo que nos trae el agua, y ahora el agua trae a los niños de vuestra aldea.»
}
«Al alba estará seca», dijo. «Entonces ya nadie podrá borrar el nombre, ni siquiera nosotras. Mientras esté mojada, aún se puede.» Sonrió con las encías negras. «Solo que de un lienzo nada sale de balde.» # pokaz: calun
# pytanie: ¿Qué hará Jaromir?
*   [Arrancarles él mismo la mortaja.]
    ~ cena_caluna = cena_zdrowie
    Se metió en el agua hasta las rodillas y arrancó la mortaja de la piedra. Las mamunas se le echaron encima – unas manos frías y mojadas se le enroscaron en los brazos y las pantorrillas, las palas le caían en la espalda como mayales en la era. No la soltó. Cuando salió a gatas a la orilla, el lienzo le chorreaba entre los puños, y desde el agua alguien siguió riéndose por lo bajo mucho rato. # pokaz: wyrwany
    El nombre se borró. Pero el frío del lago se le quedó dentro: de las rodillas para abajo tenía las piernas heladas como las piedras del fondo, y ya nada se las calentó – ni el horno, ni la zamarra. Nunca más salió a segar.
*   [Llamar a Antek.]
    ~ cena_caluna = cena_antek
    «¡Antek!», gritó Jaromir hacia la aldea. Antek, que aquella noche no dormía, llegó corriendo al lago antes de que el eco se apagara sobre el agua. No preguntó nada. Se metió entre las mamunas como quien entra en la fragua, y arrancó la mortaja de la piedra – la mortaja de la niña a la que él había sacado de pila. # pokaz: antek
    La más vieja levantó la pala. En el silencio crujió algo, como una rama que se parte. Antek no gritó. Salió a la orilla con la mortaja en la mano izquierda, y el brazo derecho le colgaba torcido por el codo como ningún brazo se tuerce. El herrero se lo miró después y no hizo más que menear la cabeza. Antek ya no volvió a la fragua.
*   { wilk_przy_jaromirze && znak_rozpoznania != po_wilku } [Llamar al lobo blanco.]
    ~ cena_caluna = cena_franek
    ~ zapiski += tropy_6
    «¡Franek!», llamó Jaromir hacia la aldea, sin saber siquiera si el lobo lo oiría. El nombre, la más pesada de las palabras, cruzó sobre el agua.
    El lobo lo oyó. Una sombra blanca pasó veloz por la orilla, se lanzó entre las mamunas y desgarró la mortaja a dentelladas hasta hacerla jirones. Ellas aullaron espantosamente y se le echaron encima todas a la vez. El agua junto a las piedras hirvió como en el caldero de la colada – y luego se alisó. # pokaz: wilk
    Junto a la orilla, entre los juncos, yacía un corpachón blanco, pesado de agua. Antek, que había llegado corriendo al oír el aullido, se arrodilló a su lado y puso la mano sobre el anillo de pelo gastado de la pata delantera. «Es él», dijo solamente. «Te lo dije.»{ wilk_pod_debem == opowiedzial_o_antku: Jaromir recordó las palabras de debajo del roble: con tu memoria en la cabeza no vivirá mucho.}
*   { uklad_z_mamunami == dar_swietojanski && not dar_pominiety } [Recordarles el trato y extenderlo a su hija.]
    ~ cena_caluna = cena_umowa
    «Os prometí una ofrenda mientras yo viviera», dijo Jaromir. «Sea: mientras viva ella. Cuando yo falte, la llevará ella misma.»
    La más vieja lo observó sin moverse. Luego dejó la pala. «Trato hecho», graznó. «Pero ella también tendrá que acordarse. Cada año. Hasta el final.»
    Cuando Jaromir alargó la mano hacia la mortaja, el lienzo se deshizo en el agua como espuma. # pokaz: piana
    { przysiega_ksiedzu:
        El juramento hecho en Bukowiec – que acabaría con las ofrendas para lo que habita en el agua – lo rompió la noche del mismo día en que el cura { cialo_kopii == spalone || cialo_kopii == pod_mlodnikiem: había dado media vuelta ante su cerca | le había rociado la cerca }.
    }
-   ~ zapiski += mamuny_4
    Las mamunas recogieron sus palas y una tras otra se metieron en el agua. Jaromir emprendió el regreso a la aldea. # dalej
    -> powrot_do_swity

= powrot_do_swity
# tlo: swita
Cuando volvió a la cabaña, el séquito seguía donde lo había dejado. El Señor del Bosque no se había movido ni un paso.{ cena_caluna == cena_zdrowie: Jaromir caminaba despacio; el frío del lago le trepaba por las piernas.}{ cena_caluna == cena_antek: Antek caminaba a su lado, con la mano derecha metida en el cinturón.} # pokaz: swita, dzieci, umarli, leszy
-> po_calunie

= po_calunie
{ cena_caluna == cena_franek:
    Entonces, en las filas de los muertos, Jaromir vio a Franek – no al lobo, sino a Franek, flaco, con el pelo hasta los hombros, tal como lo había visto la última vez en el chozo junto al lago. Franek se acercó a la ventana de Antek y puso la mano en el marco, como se pone la mano en el cuello de un caballo. # pokaz: franek
- else:
    { wilk_przy_mnie():
        El lobo blanco salió de detrás del granero y se plantó en el umbral, junto a la pierna de Jaromir. Tenía el pelo erizado. # pokaz: wilk
    - else:
        Junto al Señor del Bosque estaba el lobo blanco. No miró a Jaromir. # pokaz: wilk_pan
    }
}
{ bielmo():
    Jagna salió de la niebla por el lado de la cerca y se plantó ante el Señor del Bosque, sin bajar los ojos.
    «Este hombre me debe la primera cosa del bosque», dijo. # pokaz: jagna
    «Lo que salió del bosque, salió por mi palabra», respondió el Señor del Bosque.
    «La palabra es tuya; la deuda, mía.» Jagna se volvió hacia Jaromir. «Mi abuela compraba y cargaba sobre sí lo que otros temían tocar, y lo pagó con un ojo. Yo, después de ella, cobro lo que cada cual debe.» Se acercó tanto que él sintió en la cara el olor del hipérico. «Tú también saliste del bosque, Jaromir. El primero, antes de sacar {marysia_odzyskana:a tu hija|aquello}.»
    Le puso un dedo sobre el párpado izquierdo. Estaba seco y tibio. Cuando lo retiró, con el ojo izquierdo Jaromir ya solo veía una niebla lechosa, igual que la que habitaba en el ojo de ella.
    «Ahora estamos en paz», dijo, y se alejó en la niebla.
}
{ cialo_kopii == oddane_jagnie:
    Jagna salió de la niebla con un bulto de lino y lo dejó a los pies del Señor del Bosque. «Devuelvo lo que no es mío», dijo. La sábana se hundió, plana; debajo solo quedaban hojas secas y corteza. # pokaz: jagna
}
«He venido a ajustar cuentas hasta el final», dijo el Señor del Bosque. Su voz salía de la tierra, de los tejados de paja, del pozo. «El Roble, la palabra, los humilladeros. Todo os lo habéis llevado. Los míos vinieron por vuestros hijos porque se vino abajo la cerca con la que los retenía. Hoy no tengo con qué detenerlos.»
Tras él se alzó un canturreo – eran los niños bajo el roble, que empezaban su melodía. Iba de cabaña en cabaña, y en cada una, tras las puertas atrancadas, se despertaba algún niño y se echaba a llorar.{ marysia_odzyskana: También Marysia se despertó. No lloró – se sentó en el banco y miró hacia la ventana, y Hanka la sujetaba por los hombros.}
«Puedes devolverme la frontera», dijo el Señor del Bosque. «A la antigua: vosotros, no más allá de ella; yo, un niño por generación. Puedes ocupar mi lugar – pero con los tuyos ya no volverás.»
{ ekwipunek ? krzesiwo:
    Miró el chaquetón de Jaromir y por primera vez sonó en su voz algo parecido al miedo. «O puedes hacer aquello para lo que llevas encima el eslabón. Pero tras un fuego así no quedará ni el bosque ni vosotros.»
- else:
    { zastaw_u_leszego == zastaw_krzesiwo:
        «El fuego me lo dejaste a mí. Sabia decisión.»
    }
}
# pytanie: ¿Qué hará Jaromir?
*   [Devolverle la frontera.]
    ~ ostatnia_noc = zwrocil_granice
    -> ostatnia_granica
*   [Ocupar su lugar.]
    ~ ostatnia_noc = zajal_miejsce
    -> ostatnie_miejsce
*   { ekwipunek ? krzesiwo } [Sacar fuego del eslabón.]
    ~ ostatnia_noc = skrzesal_ogien
    -> ostatni_ogien

= ostatnia_granica
# tlo: granica
«Tendrás tu frontera», dijo Jaromir. «Pero no de mí solo.»
Recorrió toda la aldea y bajo cada ventana llamó por su nombre a los de la casa. El primero en salir fue Antek{ cena_caluna == cena_antek:, con la manga derecha metida en el cinturón}. Luego el herrero y Szymon{ noc_ognia == ratowal_kapliczke:, con la cara envuelta en un pañuelo y las manos en trapos}. Józek llevaba de la mano al viejo Staś, tan anciano que apenas veía. Su padre, {noga_ojca == strzaskana:con muletas|con bastón}, y su madre, arrebujada en una zamarra. Por último Hanka{ marysia_odzyskana:, con Marysia envuelta en un mantón}. Lo siguieron a través de la niebla, con velas de la Candelaria que no querían arder{ not marysia_odzyskana: – solo ardía la de Hanka}, derechos por en medio del séquito. Las rusalkas y las mamunas se hacían a un lado a su paso como el agua ante la proa de una barca. # pokaz: ludzie
El tocón del Viejo Roble se alzaba al borde del bosque, negro, cubierto de hongos yesqueros. El Señor del Bosque se detuvo al otro lado. # pokaz: leszy # dalej
{ zastaw_u_leszego == zastaw_siekiera:
    El Señor del Bosque metió la mano en la oscuridad a su espalda y le tendió a Jaromir el hacha del abuelo. El mango estaba húmedo de la savia de la raíz que la había retenido.
- else:
    El Señor del Bosque miró el hacha del abuelo en las manos de Jaromir.
}
«{chata_macka == przy_lesie:Con este hierro cruzó tu abuelo la frontera|Con este hierro taló tu linaje mi bosque}», dijo. «Aquel, el primero, vino a mí sin hierro. Tú dejarás el tuyo.»
~ ekwipunek -= siekiera
Jaromir clavó el hacha en el tocón con tal fuerza que gimió la madera. El mango pesaba y estaba frío, y le temblaban tanto las manos que tuvo que golpear dos veces. # pokaz: siekiera
{ ekwipunek ? zoladz:
    ~ ekwipunek -= zoladz
    ~ zoladz_zasadzony = true
    Luego se arrodilló y escarbó con los dedos un hoyo en la tierra helada, hasta romperse las uñas. Metió en él la bellota que había guardado desde niño – todavía tibia. Cuando la cubrió con terrones, de entre ellos asomó un brote pálido – en noviembre, entre la escarcha. # pokaz: kielek
}
{ dlug_jagny:
- oddana_wstazka:
    Jagna salió de la niebla y enrolló en el mango del hacha la cinta roja de Marysia. «Ya te dije que me serviría», masculló. # pokaz: wstazka
- oddany_drewniak:
    Jagna salió de la niebla y dejó el zueco rojo junto al tocón. «Madera con madera», masculló. # pokaz: drewniak
}
«No iremos más allá», dijo Jaromir. Una nube de vaho le brotó de los labios. Tras él lo repitieron todos, desacompasados, roncos.{ pani_w_zbozu_noc == za_spiewem: Hanka solo movía los labios.} «Palabra por palabra.» # dalej
{ zoladz_zasadzony:
    El Señor del Bosque no miraba el hacha. Miraba el brote. Se inclinó sobre él tanto que la cornamenta se le enganchó en la niebla, y lo tocó con un dedo – con cuidado, como se toca a un potrillo que acaba de ponerse en pie.
    «Aquel, el primero, me dio su palabra», dijo en voz baja. «Y yo tomé a cambio un niño por generación, porque la palabra no pesa nada, y el Roble era mío, no vuestro.» Se enderezó. «Este es vuestro. Ha brotado de mi Roble, y lo ha plantado la mano que lo guardó toda la vida. Hasta ahora solo me dabais lo vuestro. Tú me has devuelto lo mío. Mientras este roble crezca, no os quitaré ningún niño. Vosotros, no más allá de este hierro. Los humilladeros los volveréis a levantar. Todos. Y tú guardarás la palabra y el árbol hasta el fin de tus días. Cada Día de los Difuntos – aquí.»
    Hanka agarró a Jaromir de la mano.{ marysia_odzyskana: Marysia dormía en el mantón y no sabía que acababan de rescatarla del bosque – a ella y a todos los niños que aún habían de nacer en Zapadlina.}
- else:
    El Señor del Bosque miraba el hacha clavada en el tocón. Luego asintió con la cabeza.
    «Palabra por palabra», dijo. «Vosotros, no más allá de este hierro. Yo, un niño por generación, en la Noche de San Juan. Y lo devolveré antes de que olvide su casa. Los humilladeros los volveréis a levantar. Todos.» Se inclinó sobre Jaromir. «Y tú guardarás la palabra mientras vivas. Cada Día de los Difuntos – aquí.»
}
{ przysiega_ksiedzu:
    Jaromir pensó en el rosario y en el juramento hecho en Bukowiec. Acababa de romperlo{ cena_caluna == cena_umowa || cialo_kopii == spalone || cialo_kopii == pod_mlodnikiem: por segunda vez} – y sabía que lo rompería de nuevo.
}
El Señor del Bosque se dio la vuelta y se adentró en el bosque. Sus siervos lo siguieron, uno detrás de otro, y la niebla se cerró a espaldas del último.{ not zoladz_zasadzony || marysia_odzyskana: Los muertos no fueron con él; se dispersaron por el camino de la Cresta de las Hayas, cada uno hacia su descanso.}{ wilk_zywy() && not wilk_przy_mnie(): El lobo blanco iba justo delante del Señor del Bosque.}{ wilk_przy_mnie(): El lobo blanco se quedó todavía un momento junto a la pierna de Jaromir, y luego corrió tras ellos y no volvió la vista atrás.}
{ not marysia_odzyskana:
    { zoladz_zasadzony:
        Aquella sola, la de la camisita blanca, no los siguió. El Señor del Bosque se volvió a mirarla desde los primeros árboles.
        «Ha estado demasiado tiempo conmigo. De su casa ya solo se acuerda como en sueños», dijo. «Viva no os la devolveré. Pero ya no es mía.»
        { ekwipunek ? wstazka_marysi:
            Jaromir se acercó a ella, se desenrolló de la muñeca la cinta desteñida y se la ató en el pelo con un lazo, como solía hacerlo Hanka.
        }
        La pequeña se quedó un momento inmóvil, sin saber adónde ir. Luego corrió hacia su madre y le tocó la mano, como cada noche. Entonces el abuelo Maciek le tendió la suya, y ella la agarró sin miedo. Los muertos de Zapadlina se fueron por el camino de la Cresta de las Hayas, cada uno hacia su descanso, no al bosque – y ella con ellos, sin volverse ni una sola vez. La vela en la mano de Hanka se apagó sola, en calma, como se apaga una luz antes de dormir. # pokaz: marysia
    - else:
        Aquella sola, la de la camisita blanca, se detuvo todavía en la orilla del bosque. «A esta me la llevé cuando no había palabra», dijo el Señor del Bosque, sin volverse. «Y ha estado demasiado tiempo conmigo.»{ ekwipunek ? wstazka_marysi: Jaromir se acercó a ella, se desenrolló de la muñeca la cinta desteñida y se la ató en el pelo con un lazo, como solía hacerlo Hanka.} La pequeña se dio la vuelta y le dijo adiós a su madre con la manita. Hanka levantó la mano. La vela que sostenía en la otra se apagó sola, en calma, como se apaga una luz antes de dormir. # pokaz: marysia
    }
}
Sobre Zapadlina se hizo de día – sin más, gris, como en cualquier amanecer de noviembre. En las cabañas los niños dejaron de llorar. # pokaz: swit # dalej
~ zapiski += (pan_lasu_12, zielarka_5, dzieci_3)
{ wilk_zywy():
    ~ zapiski += tropy_7
}
-> epilog_granica

= ostatnie_miejsce
# tlo: miejsce
«Me quedaré», dijo Jaromir.
El Señor del Bosque no respondió hasta que la escarcha se le posó en la barba.
«Lo sabía», dijo al fin. «Desde que viniste a mí por tu propio pie.»{ glosy_boru == odpowiedzial_marysi: «Aquella noche te conté. Ochocientos. Hace mucho que eras mío.»}{ zastaw_u_leszego == zastaw_cien: «Tu sombra te espera bajo el roble.»}
# pytanie: ¿Cómo se marchará Jaromir?
*   [Despedirse de Hanka{ marysia_odzyskana: y de Marysia}.]
    ~ pozegnanie = pozegnal_sie
    Entró en la estancia. Hanka estaba junto al horno, pálida, con las manos apretadas sobre el delantal. Lo sabía – él lo vio enseguida.{ marysia_odzyskana: Marysia se había vuelto a dormir en el banco. La besó en la frente, con cuidado de no despertarla, y se quedó largo rato mirando cómo respiraba.} # pokaz: hanka
    «¿Volverás?», {pani_w_zbozu_noc == za_spiewem:musitó con un ronco hilo de voz|preguntó}.
    «No me iré lejos», dijo. «Tras la cerca. Siempre.»
    Ella se abrazó a él como la noche después de la boda, y lo retuvo hasta que el calor de ella empezó a enfriarse entre las manos de él. Entonces lo soltó. # dalej
*   [Marcharse sin una palabra – así les será más fácil.]
    ~ pozegnanie = odszedl_bez_slowa
    No entró en la estancia. Se quedó un momento junto a la ventana y miró por la rendija del postigo cómo Hanka, rendida por la vigilia, dormía en el banco con la cabeza apoyada en la pared{ marysia_odzyskana:, y Marysia acurrucada a su lado, con las rodillas bajo la barbilla|, con la vela de la Candelaria encendida entre las manos}. Dejó en el alféizar, junto al cuenco de gachas para las ánimas, su gorra. Luego se dio la vuelta y se fue. # pokaz: czapka
    Por la mañana Hanka encontró la gorra y lo comprendió todo. Desde entonces la llevó siempre en el seno. # dalej
-   Fueron juntos hasta el borde del bosque. Junto al tocón del Viejo Roble, el Señor del Bosque menguó hasta volverse un viejo con una zamarra vuelta del revés, la lana hacia fuera, y un sombrero de musgo – el mismo que Jaromir había visto la noche de su boda. # pokaz: starzec
Se quitó el sombrero y se lo puso a Jaromir en la cabeza. Pesaba, estaba frío y olía a corteza mojada. Al sentirlo, algo dentro de Jaromir crujió quedamente – como el hielo en un estanque – y oyó el bosque. Cada árbol. Cada raíz. Cada animal que justo entonces se dormía en su madriguera antes del invierno. Y en ese mismo instante no supo recordar a qué olía el pelo de Marysia. # pokaz: kapelusz
{ zastaw_u_leszego == zastaw_siekiera:
    El viejo sacó de la oscuridad el hacha del abuelo, todavía enredada en raicillas, y la apoyó en el tocón. Jaromir no la levantó.
}
Después, el antiguo Señor del Bosque se tendió al pie del tocón. Suspiró largamente, como un árbol cuando lo suelta la helada, y empezó a hundirse en la tierra. El musgo crecía sobre él, las hojas lo tapaban, hasta que solo quedó un montículo vestido de liquen gris. # pokaz: pagorek
«Ahora cuenta tú», susurró algo bajo tierra.
Jaromir se volvió hacia el séquito. Estaban todos ante él, esperando. # dalej
«Volved», dijo. Su voz recorrió las copas desde el bosque hasta el lago. «A casa. Todos.»
Se fueron. Las rusalkas al lago, las mamunas a sus piedras, la vieja del centeno al rastrojo, el licho a la niebla. La maldición de la herbolaria ataba las manos del anterior. Las del nuevo no las conocía.
~ zapiski += (pan_lasu_12, zielarka_5, dzieci_3)
{ marysia_odzyskana:
    { cena_caluna == cena_franek:
        Franek se apartó de la ventana de Antek. Se volvió una vez hacia la cabaña donde dormía su hermano y desapareció en la niebla. # pokaz: franek # dalej
    - else:
        ~ zapiski += tropy_7
        El lobo blanco se quedó el último. Jaromir le puso la mano en la cabeza. «Vete, Franek», dijo. «Eres libre.» El lobo le lamió los dedos y corrió hacia el bosque, ligero, como un perro joven. # pokaz: wilk # dalej
    }
- else:
    ~ zapiski += tropy_7
    El lobo blanco se quedó el último. Jaromir le puso la mano en la cabeza. «Vete, Franek», dijo. «Eres libre.» El lobo le lamió los dedos y corrió hacia el bosque, ligero, como un perro joven. # pokaz: wilk
    En el camino quedó aquella sola, la de la camisita blanca. Jaromir se acercó a ella{ ekwipunek ? wstazka_marysi:, le ató en el pelo su cinta desteñida} y le tendió la mano. Ella se la agarró enseguida, fuerte, como antes. «¿Vamos a casa, papá?», preguntó. «Vamos», dijo él. Se adentraron juntos en el bosque, y el bosque los recibió sin un crujido. En la cabaña de Hanka se apagó la vela. # pokaz: marysia # dalej
}
-> epilog_miejsce

= ostatni_ogien
# tlo: pozar_boru
Jaromir sacó el eslabón. Era pequeño, ennegrecido, y guardaba memoria de las manos del abuelo, que lo había desenterrado de las cenizas de la cabaña de la herbolaria.
«No», dijo el Señor del Bosque. Esta vez su voz no venía de todas partes, sino de un solo sitio. «Nieto de Maciek. No.» # pokaz: leszy
Jaromir {cena_caluna == cena_zdrowie:se arrastró, sobre unas piernas que no sentía,|corrió} hasta el lindero del monte joven, allí donde el liquen gris había llegado ya hasta los mismos cercados, y golpeó. Una vez. Otra. La tercera chispa saltó al musgo seco – y prendió en un instante, y tras él los abetos, y tras los abetos el bosque, como arde todo aquello sobre lo que hace años que no cae una gota de lluvia. # pokaz: ogien # dalej
Retumbó como si la tierra suspirara. Una bocanada de calor golpeó a Jaromir en la cara; olió a resina y a pelo quemado. Del bosque, hacia la aldea, huían en desbandada corzos, jabalíes, liebres, cegados, sin hacer caso de la gente. El séquito aulló con una sola voz. Las rusalkas se lanzaron hacia el lago, las mamunas tras ellas, el licho se deshizo con el primer humo.{ los_figurki == figurka_w_skrzyni: En la cabaña de Jaromir el arcón de debajo de la cama crujió y por sus rendijas brotó humo: la figurilla que ningún horno había querido tomar ardía por fin como madera corriente.} Los niños bajo el roble huyeron al bosque; desde lo más hondo aún llegaba su canturreo. Se cortó a la mitad y no volvió a empezar.
El Señor del Bosque seguía en pie entre las llamas y no huía. La corteza de su cara se agrietaba, la cornamenta ardía como la leña seca en una hoguera de San Juan, y sus ojos miraban a Jaromir con calma, hasta el final.
«Contado está», dijo todavía. Y se desplomó con estrépito, como cae un viejo roble. # pokaz: runal
{ wilk_zywy():
    { wilk_przy_mnie():
        El lobo blanco permaneció junto a Jaromir hasta el final y no se movió, aunque las chispas le chamuscaban el pelo. # pokaz: wilk
    - else:
        El lobo blanco saltó al fuego tras su señor. Antek aulló como si fuera a él a quien quemaban.{ obietnica_antkowi: Nadie se quedó con el lobo – así se lo había prometido Jaromir a Antek. Se lo llevó el fuego.}
    }
}
{ not marysia_odzyskana:
    Del humo salió corriendo la pequeña de la camisita blanca, derecha a los brazos de Hanka. Hanka la abrazó – y en ese mismo instante se apagó la vela. En los brazos solo le quedó ceniza tibia.
}
{ zastaw_u_leszego == zastaw_cien:
    La sombra no volvió a Jaromir. Ardió bajo el roble con todo lo demás.
}
La maldición de la herbolaria empezó con el fuego y con el fuego terminó. Pero el viento cambió. Las llamas saltaron por encima del monte joven{ cialo_kopii == pod_mlodnikiem:, pasaron sobre la pequeña tumba del palo y la cinta roja} y se fueron hacia la aldea – hacia los graneros, los tejados de paja, las cabañas donde lloraban los niños.
# pytanie: ¿Qué hará Jaromir?
*   [Correr a su cabaña, en busca de Hanka{ marysia_odzyskana: y de Marysia}.]
    ~ noc_pozaru = antek_pod_stodola
    Jaromir {cena_caluna == cena_zdrowie:se arrastró hasta casa sobre las piernas entumecidas|corrió a casa}, sacó{ marysia_odzyskana: a Marysia y} a Hanka al prado, y cuando se volvió, vio a Antek. Antek había ido solo al granero de los de Staś, el más cercano al monte joven, y había empezado a abrir a hachazos sus paredes{ cena_caluna == cena_antek: con la mano izquierda}, para derribarlo antes de que el fuego pasara por él al resto de la aldea. No paró hasta que el tejado empezó a arder sobre su cabeza. Le gritaban que huyera. Él solo respondió a voces: «¡Cuídame a Franek!», y no se supo a cuál de los dos. # pokaz: stodola
    El granero se vino abajo con él dentro – y las llamas se detuvieron en las vigas derribadas. # pokaz: stodola_runela
    Jadwisia estuvo sentada hasta el amanecer en la ceniza, con el pequeño Franek en las rodillas. # dalej
*   [Apagar él solo las llamas en el borde de los cercados.]
    ~ noc_pozaru = oslepl
    Jaromir se lanzó solo – con el chaquetón, con un saco mojado, con las manos desnudas – y fue golpeando las llamas en el borde de los cercados, hasta que la gente de los cubos logró echar sobre los tejados toda el agua del pozo. # pokaz: gaszenie
    El fuego no pasó. Pero por la mañana Jaromir ya no veía ni la luz, ni a Hanka, que lloraba sobre él en el barro. Las brasas le habían quemado los ojos. # dalej
*   [Arar un cortafuegos con toda la aldea.]
    ~ noc_pozaru = pol_wsi
    «¡Los caballos!», gritó Jaromir. El herrero enganchó los caballos al arado y los hombres araron ante los cercados una franja negra de tierra, mientras las mujeres apaleaban el fuego con sábanas mojadas. # pokaz: przesieka
    Defendieron cada tejado uno a uno, y el fuego se llevaba lo que no alcanzaban a salvar. Al alba media Zapadlina yacía en cenizas: graneros, pocilgas, cuatro cabañas. La gente vivía. Pero el invierno sorprendió a media aldea sin techo. # dalej
-   Cuando salió el sol, el bosque estaba negro hasta donde alcanzaba la vista. No quedaba en pie ni un solo árbol. Sobre lo calcinado flotaba el humo. Se dijo después que allí donde, en el corazón del bosque, había estado el roble, solo quedaba un montón de ceniza gris, cubierto por la primera nieve. # pokaz: popiol # dalej
~ zapiski += (pan_lasu_12, zielarka_5, dzieci_3)
{ wilk_zywy():
    ~ zapiski += tropy_7
}
-> epilog_ogien

= epilog_granica
# tlo: epilog_dab
# ozdobnik
Medio siglo después, el Día de los Difuntos, el viejo Jaromir estaba sentado en el banco bajo la cruz, al borde del bosque.{ cena_caluna == cena_zdrowie: Tenía las piernas envueltas en una zamarra, como desde hacía cincuenta años.}{ bielmo(): Del ojo izquierdo, desde hacía medio siglo, solo veía niebla.} A lo largo del bosque volvían a alzarse los humilladeros – los levantaron la primera primavera, todos juntos, y desde entonces cada generación los renovaba antes de Pentecostés.
{ zoladz_zasadzony:
    Junto al tocón del Viejo Roble crecía un roble joven, más alto ya que un tejado de paja. En medio siglo se había fundido con la vieja madera y había engullido el hacha; de la corteza, a la altura de las rodillas, solo asomaba el filo oxidado, que nadie se había atrevido a tocar. # pokaz: dab
}
{ marysia_odzyskana:
    Alrededor de Jaromir estaban sentados los hijos de Marysia – tres, pecosos, con hoyuelos en las mejillas – y los hijos de sus hijos.{ cena_caluna == cena_umowa: Marysia, ya canosa, llevaba cada año, la Noche de San Juan, una hogaza a las piedras planas. A nadie le decía para qué.}
- else:
    Alrededor de Jaromir estaban sentados los nietos de Antek – Jaromir no llegó a tener nietos propios.
}
Hanka, a su lado, tenía al más pequeño en las rodillas y le pelaba una manzana.
«Abuelo, cuéntanos lo del Señor del Bosque», pidió el más pequeño.
{ zastaw_u_leszego == zastaw_cien:
    Jaromir sonrió. A los niños hacía tiempo que no les extrañaba que el abuelo no proyectara sombra. Así eran las cosas.
}
«Unos setenta años antes de que yo mirara por primera vez hacia el bosque», empezó, «mi abuelo bajó a Zapadlina con un hatillo al hombro…»
{ zoladz_zasadzony:
    El bosque, a su espalda, estaba en calma. En la Noche de San Juan los niños de Zapadlina encendían las hogueras bajo el roble joven, saltaban por encima del fuego y recogían bajo el árbol las bellotas del año anterior, y por la mañana todos dormían en sus propias camas. En medio siglo no se había perdido ninguno. {marysia_odzyskana:Uno de los nietos de Marysia|El menor de los nietos de Antek} apretaba ahora una bellota en el puño y escuchaba con la boca abierta. # pokaz: zoledzie # dalej
- else:
    El bosque, a su espalda, estaba en calma. Solo a veces, en la Noche de San Juan, desaparecía un niño de alguna cabaña – y volvía al cabo de unas noches, oliendo a resina, sin recordar nada. La última en perderse así había sido la pequeña de los Kowalczyk. Ahora estaba sentada más cerca que nadie y escuchaba con la boca abierta. # dalej
}
-> koniec_opowiesci

= epilog_miejsce
# tlo: epilog_bor
# ozdobnik
Medio siglo después, los niños de Zapadlina iban al bosque por setas y arándanos y volvían sanos y salvos, con las cestas llenas a rebosar. Los viejos decían que hacía tiempo que el bosque no extraviaba a nadie. Que los senderos llevaban adonde uno quería ir.
{noc_ognia == ratowal_szymona:Al pie del monte joven, junto a la crucecita de abedul que una vez clavó allí el viejo Staś|Junto al humilladero, al borde del bosque} había una tumba sin cuerpo, con una cruz de enebro.{ przysiega_ksiedzu: En el cementerio de Bukowiec el cura no le había dado sitio.}
{ pozegnanie == pozegnal_sie:
    La inscripción la grabó la propia Hanka, cuando ya era vieja: Jaromir. Tras la cerca.
- else:
    No había inscripción. Hanka dejó sobre la cruz su gorra y el viento nunca se la llevó de allí. # pokaz: czapka
}
{ marysia_odzyskana:
    Marysia iba allí cada Día de los Difuntos con sus propios hijos. Dejaba sobre la tumba un cuenco de gachas y un jarro de agua, y por la mañana el cuenco estaba vacío, y a su lado había una hoja de roble, fresca y verde.{ cena_caluna == cena_umowa: La Noche de San Juan llevaba además una hogaza a las piedras planas – hasta el fin de su vida.} # pokaz: miski
- else:
    Hanka iba allí cada Día de los Difuntos, mientras le alcanzaron las fuerzas. Dejaba sobre la tumba dos cuencos – uno grande y uno pequeño – y por la mañana los dos estaban vacíos. # pokaz: miski
}
A veces los niños que recogían ramas secas veían al borde del bosque a un viejo alto con un sombrero de musgo. Estaba inmóvil, y cuando alguno de los niños lo saludaba con la mano, inclinaba la cabeza – despacio, con gravedad. # pokaz: starzec
{marysia_odzyskana:Su bisnieta|Una pequeña de casa de Antek} se detuvo un día donde empezaban los árboles y miró por primera vez, ella sola, hacia el bosque. Desde el otro lado alguien la estuvo observando largo rato, como si intentara recordar de qué conocía esa carita. # pokaz: prawnuczka # dalej
-> koniec_opowiesci

= epilog_ogien
# tlo: epilog_wrzosy
# ozdobnik
Medio siglo después, en las colinas tras Zapadlina no crecía nada salvo brezo y enebros. El bosque no rebrotó. La madera se traía de lejos, de más allá de Bukowiec, y en las cabañas faltaba leña. Los jóvenes se marchaban a la ciudad y no volvían. De Zapadlina quedaban tres cabañas; del resto – montículos cubiertos de ortigas.
{ noc_pozaru:
- antek_pod_stodola:
    En el cementerio de Bukowiec, bajo un abedul, estaba la tumba de Antek. Franek, ya canoso, la barría cada sábado.
- oslepl:
    Desde hacía cincuenta años Jaromir no veía nada. Le quedaba el oído – y el viento, que ya no tenía entre qué susurrar.
- pol_wsi:
    Las cabañas levantadas después del incendio eran de ladrillo, traído de la ciudad. La gente decía que el ladrillo no arde.
}
{ cena_caluna == cena_zdrowie:
    Jaromir estaba sentado con las piernas envueltas en una zamarra – desde aquel Día de los Difuntos nada se las había calentado.
}
No había maldición. Nadie desaparecía en la Noche de San Juan.{ cena_caluna == cena_umowa: Las palas de lavar junto al lago no las oía nadie – salvo Marysia, que cada año llevaba una hogaza a las piedras planas.} El Día de los Difuntos, en los alféizares había gachas y agua, y por la mañana seguían intactas.
Solo una vez, en primavera, {marysia_odzyskana:una nieta|la nieta de Antek} trajo de la colina algo en el puño y se lo enseñó a Jaromir en la palma abierta. Era un brote de abeto, pequeño y verde, blando y tibio como un polluelo. # pokaz: kielek
«¿Lo tiro?», preguntó. «¿Y cómo era, abuelo, cuando había bosque?»
Jaromir sostuvo el brote entre los dedos.{ noc_pozaru == oslepl: No lo veía, pero lo sentía.} Luego se lo devolvió.
«Plántalo», dijo. «Lejos de la aldea.» Se acomodó. «Unos setenta años antes de que yo mirara por primera vez hacia el bosque que ya no existe…» # dalej
-> koniec_opowiesci

= koniec_opowiesci
# ozdobnik
_Fin._
-> END

=== function bielmo()
~ return dlug_u_jagny && (dlug_jagny == dlug_odmowiony || (not marysia_odzyskana && cialo_kopii != oddane_jagnie))

=== function wilk_zywy()
~ return cena_caluna != cena_franek

=== function wilk_przy_mnie()
~ return wilk_przy_jaromirze && znak_rozpoznania != po_wilku && cena_caluna != cena_franek
