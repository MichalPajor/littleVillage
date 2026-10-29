// ------------------------------------------------------------
//  Rozdział szesnasty – W głąb boru. Jaromir wchodzi do boru po Marysię.
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
# rozdzial: Capítulo decimosexto
# tytul: Bosque adentro
Setenta años después de que el abuelo Maciek bajara a Zapadlina con el hatillo al hombro, Jaromir miró por primera vez hacia el bosque – no como se mira el bosque desde el campo, desde el lado seguro de la cerca, sino como se mira un camino que hay que recorrer.
Estaba al borde del monte joven, con el hacha en la mano y el zurrón en bandolera. La cinta de Marysia se la había enrollado en la muñeca, para sentirla a cada movimiento.
{ obietnica_bor:
    Una vez le había prometido a {figurka_u_staruchy && los_psa == oswojony:su abuela en el lecho de muerte|su padre} que nunca entraría en el bosque, por mucho que lo llamaran. Había mantenido esa palabra trece años. El primer paso entre los pinos lo dio con cuidado, con el corazón en la garganta, y sintió que rompía algo que ya no podría recomponerse.
- else:
    {poszedl_po_wstazke:Desde que de niño se metió entre los abetos a por la cinta de Hanka, nunca se había adentrado más de unas decenas de pasos.|Nunca se había adentrado más de unas decenas de pasos, hasta donde callaban los pájaros.} No se lo había prometido a nadie – los pies se volvían solos cuando los árboles empezaban a crecer demasiado juntos.
}
{ droga_do_boru:
    En la trocha de Urbaniak, de cada tocón brotaban retoños claros, y las rodadas se habían cubierto de musgo, aunque en otoño todavía pasaban por ellas los carros. Junto a los primeros pinos grandes el camino terminaba y más allá no había nada salvo el bosque.
- else:
    Se abrió paso por el monte joven, que se había acercado a la aldea la noche del incendio. Los abetos crecían tan apretados que tenía que pasar de costado, y las agujas se le colaban por el cuello de la camisa.
}
{ ekwipunek ? szczenie_psa:
    Pasadas las cercas lo alcanzó el perro – debía de habérsele escapado a Hanka del umbral. Jaromir no tuvo valor para ahuyentarlo. Le acercó el zueco de Marysia; el perro lo olfateó, gimió flojito y echó a correr por delante. # pokaz: pies
}
Tras los primeros pinos, todo enmudeció. Las agujas caían de las ramas en vertical, sin un susurro, porque no había viento que se las llevara. El prado a su espalda chorreaba rocío, pero aquí la tierra estaba seca y tibia, el musgo crujía bajo las botas como cuero reseco, y en el aire flotaba un olor a resina y a madera caldeada que raspaba la garganta.{ rada_przed_borem == rada_planetnika: “Donde no llueve”, recordó Jaromir, y apretó los dedos en el mango del hacha.} # pokaz: igly
Caminó todo recto hasta que el sol estuvo alto. Por fin los abetos se apartaron y vio el prado mojado, {pani_w_zbozu_noc == z_pochodniami:el centeno pisoteado|{pole_zbite_gradem:el grano batido por el granizo|{pani_w_zbozu_noc == gonil_babe:el centeno hollado|el centeno}}} y el enebro al borde del monte joven. Había vuelto al mismo sitio del que había salido. Lo intentó una segunda vez, con el sol a la mano derecha. Y una tercera. Cada vez el bosque lo sacaba de nuevo hasta la aldea – con suavidad, con cortesía, como se acompaña hasta la portilla a un huésped al que nadie ha invitado.{ ekwipunek ? szczenie_psa: En cada intento el perro se quedaba un poco rezagado, con el hocico pegado a la corteza, y volvía junto a Jaromir de mala gana, gimiendo.}
# pytanie: ¿Cómo cruzará Jaromir el bosque?
*   [Ponerse la ropa del revés, como enseñaba don Ignacy.]
    ~ wejscie_do_boru = ubranie_na_lewo
    # tlo: bor_suchy
    Se quitó el chaquetón y la camisa y se los volvió a poner con las costuras por fuera.{ glos_w_lesie == kozuch: Exactamente como aquella noche de invierno, cuando tenía nueve años y estaba {figurka_u_staruchy:en el campo, entre la niebla|en la nieve al pie del bosque}.} Cuando echó a andar de nuevo, el sendero dejó de dar la vuelta. El bosque lo acogió como a uno de los suyos – las ramas se apartaban solas a los lados, y el musgo le guiaba los pies.
    { ekwipunek ? szczenie_psa:
        ~ ekwipunek -= szczenie_psa
        ~ pies_pobiegl_sam = true
        El perro lo olfateó desde lejos y erizó el pelo, como ante un extraño. Luego siguió corriendo solo, tras el olor de Marysia, y desapareció entre los troncos. Jaromir lo llamó hasta quedarse ronco. # pokaz: pies_ucieka # tobolek
    }
    Caminó mucho tiempo. Al caer la tarde se sentó en una raíz e intentó recordar la cara de Marysia – y se asustó. Veía la cinta, veía los zuecos, oía su risa, pero la carita se le desdibujaba como un reflejo en el agua en la que alguien ha tirado una piedra. Apretó los párpados y fue susurrando por orden: las pecas de la nariz, el dientecito que le crecía torcido, el hoyuelo de la mejilla izquierda. El bosque lo había tomado por uno de los suyos – y a escondidas le iba quitando lo que solo era de Jaromir. # dalej
*   [Marcar el camino con el hacha en los troncos.]
    ~ wejscie_do_boru = naciete_pnie
    # tlo: bor_suchy
    Cada pocos troncos dejaba una muesca honda, a la altura de la cara. La resina que manaba de las heridas era fría como agua de pozo y tan espesa que empastaba el filo – tenía que arrancarlo del tronco con todo el peso del cuerpo. Al cabo de una hora miró atrás. Las muescas que había hecho al principio se le cerraban ante los ojos – la corteza se deslizaba sobre ellas como un párpado. # pokaz: naciecia
    Pero bastó con eso: cuando el sendero quería dar la vuelta, veía delante las heridas frescas y seguía adelante. De algún lugar del fondo del bosque, muy lejos, le llegó un gemido – grave, prolongado, como si se viniera abajo un árbol viejo. O como si alguien muy grande hubiera siseado de dolor. Jaromir no se detuvo, pero empezaron a temblarle las manos y no pararon hasta la noche. # dalej
*   { ekwipunek ? szczenie_psa } [Fiarse del perro – el olfato no se extravía.]
    ~ wejscie_do_boru = za_psem
    # tlo: bor_suchy
    «Busca», susurró Jaromir, y volvió a acercarle al perro el zueco. «Busca a Marysia.»
    Esta vez no lo llamó para que volviera. El perro avanzaba con el hocico pegado al suelo, en zigzag; a ratos se paraba y olía la corteza a la altura de la manita de una niña. Los senderos torcían, se bifurcaban y daban la vuelta, pero el perro no les hacía caso – trepaba por los árboles arrancados de cuajo, se escurría bajo los troncos caídos, derecho tras el rastro. Jaromir lo seguía, desgarrado, magullado, con la boca llena de agujas. # pokaz: pies_trop
    Al caer la tarde el perro se detuvo junto a un pino caído y soltó un gañido. De un nudo colgaba una hilacha de lino blanco – de la camisita de Marysia. Y bajo el nudo, sobre el musgo, alguien había dejado un puñado de fresas silvestres, bien colocadas, una junto a otra, como para un niño. Olían tan dulce que a Jaromir se le hizo la boca agua; no había comido nada desde la mañana.{ rada_przed_borem == rada_jagny: “Lo que encuentres en el bosque, no lo comas”, recordó, y apretó el puño hasta clavarse las uñas en la palma.} Apartó al perro a la fuerza. Solo entonces vio que el animal tenía sangre en las patas – el musgo alrededor de las fresas era cortante como vidrio molido. # pokaz: poziomki # dalej
*   { rada_przed_borem == rada_planetnika } [Ir hacia donde no hay nubes sobre el bosque.]
    ~ wejscie_do_boru = pod_czystym_niebem
    # tlo: bor_suchy
    En vez de mirar los senderos, miraba hacia arriba. Sobre el bosque se arrastraban nubes grises y pesadas – y entre las copas, a lo lejos, se abría un agujero de cielo limpio, en torno al cual las nubes se apartaban, igual que la corriente rodea una piedra. Fue hacia aquel agujero, aunque fuera entre raigones y matorrales, aunque fuera de través a todos los senderos, y el bosque no pudo sacarlo fuera, porque no iba por ninguno de sus caminos. # pokaz: niebo
    Pero le dolía la nuca de tanto levantar la cabeza, tenía los pies despellejados hasta la sangre por raíces que no veía, y agua no había cogido – en Zapadlina nadie llevaba agua al bosque. Al caer la tarde la lengua se le pegaba al paladar, y cada arroyuelo que dejaba atrás murmuraba de un modo tan tentador que tenía que apartar la cabeza. # dalej
-   -> glosy_w_borze

= glosy_w_borze
# tlo: glosy_noc
Al anochecer empezaron a llamarlo las voces.
Primero Hanka. Por la izquierda, desde detrás de unos abetos espesos.
«¡Jaromir! ¡Vuelve! Ella está en casa, ha vuelto sola, ¿me oyes? ¡Vuelve!»
{ pani_w_zbozu_noc == za_spiewem:
    La voz estaba entera – cálida, un poco ronca, como la que tenía Hanka antes de que aquello del centeno le arrebatara la mitad. Ahora Hanka apenas susurraba. Jaromir apretó los dientes.
- else:
    La voz era la suya, en cada ronquera. Jaromir dio un paso hacia allí antes de recordar que Hanka había prometido encender la tea cada noche hasta que volvieran – junto a la aldea, no en lo hondo del bosque.
}
Luego su madre, por la derecha, con calidez y dulzura, como le hablaba cuando era pequeño:
«Hijito, ven conmigo. Tengo frío. Me he perdido.»{ glos_w_lesie == odpowiedzial: Las mismas palabras que aquel invierno, cuando tenía nueve años y contestó. Una por una.}
Luego Franek – aquel Franek, el hermano de Antek – alegre, desde lejos, igual que lo llamaba antaño para ir al lago:
«¡Jaromir! ¡Por aquí! ¡Ven, que te enseño una cosa!»
Y al final, con un hilo de voz, desde el fondo del bosque, lloró una niña.
«¡Papá! ¡Papá, tengo miedo!»
# pytanie: ¿Qué hará Jaromir?
*   [Responder a Marysia.]
    ~ glosy_boru = odpowiedzial_marysi
    «¡Marysia!» El grito se le escapó solo. «¡Aquí estoy! ¡Voy a por ti!»
    El llanto se cortó en seco. El bosque enmudeció. Al cabo de un momento, en algún sitio muy cerca, justo sobre su cabeza, alguien empezó a contar, despacio, con solemnidad: # pokaz: liczy
    «…setecientos noventa y ocho… setecientos noventa y nueve…» Una pausa. «Y tú. Ochocientos. Este es mío.»
    { glos_w_lesie == odpowiedzial && zawolal_do_lasu:
        «Te dije que te contaría cuando llegara la hora», añadió la misma voz, tranquila, casi con ternura. «Ha llegado.»
    }
    Jaromir cayó de rodillas. Durante un rato no pudo recobrar el aliento – algo pesado le oprimía el pecho y lo aplastaba. Cuando se levantó, estaba seguro de una cosa: desde entonces el bosque sabía quién era, y ya no necesitaba buscarlo. # dalej
*   [Callar y seguir adelante.]
    ~ glosy_boru = milczal
    Mordía la manga del chaquetón para no responder; tenía en la boca sabor a lana y a sangre. Hanka llamaba cada vez más desesperada, su madre lloraba, Franek se reía y lo llamaba. Y Marysia… Marysia lloró toda la noche, más cerca y más lejos, por un lado y por otro, y repetía «papá, papá», y cada «papá» le daba justo donde la pequeña se le acurrucaba por las noches – bajo la clavícula. Al final empezó a preguntar por qué no iba.
    Siguió andando. No contestó ni una sola vez. Al amanecer el llanto cesó – no se cortó, sino que se fue apagando despacio, quedito, como el de una criatura que se ha cansado de llamar y se ha dormido. Jaromir se quedó largo rato inmóvil y no sabía si debía alegrarse. # pokaz: swit # dalej
*   [Seguir la voz de Franek.]
    ~ glosy_boru = za_frankiem
    ~ zapiski += tropy_3
    «¿Franek?», susurró Jaromir, y torció a la izquierda, entre los abetos.
    La voz lo guió mucho rato, reía, lo llamaba, hasta que al fin calló junto a un árbol arrancado de cuajo. En la oscuridad, sobre un tronco caído, estaba sentado el lobo blanco. # pokaz: wilk
    { oblawa_wilk == wydal_wilka:
        En el costado tenía una vieja herida de bala, mal cerrada – una franja gruesa y pelada en la piel entre el pelaje blanco. Cuando vio a Jaromir, echó las orejas atrás y enseñó los colmillos. No atacó. Pero durante toda la noche Jaromir oyó sus pasos detrás de él – y supo que el lobo no lo seguía para guardarlo. # pokaz: rana # dalej
    - else:
        Estaba más flaco que aquella vez en el monte joven, y en el hocico le habían salido canas – como a un perro viejo, aunque desde la batida apenas habían pasado dos inviernos. Miraba a Jaromir sin rencor. Luego saltó del tronco, volvió la cabeza para ver si Jaromir lo seguía, y se adentró en la oscuridad. # dalej
    }
-   -> bagno_w_borze

= bagno_w_borze
# tlo: bagno_blednice
Al día siguiente, al caer la tarde, el bosque descendió y se convirtió en un pantano.
Entre los troncos de alisos podridos se estancaba el agua – parda, inmóvil, con una película irisada por encima – y de ella asomaban matas de juncia. Olía a hojarasca fermentada y a hierro viejo; cada bocanada se posaba en la lengua como herrumbre. En la otra orilla, allí donde el bosque volvía a elevarse, la tierra estaba seca y gris. Allí no llovía. Pero para llegar hasta allí había que cruzar aquello.
Junto a la orilla, donde el agua era poco profunda, había pucheros de barro – boca abajo, uno junto a otro, cada vez más lejos, hasta donde alcanzaba la vista. Jaromir recordó el sueño que la primavera pasada habían soñado los niños de Zapadlina, y sintió que se le erizaba la piel de la nuca. # pokaz: garnki
~ zapiski += blednice_1
Y entonces se encendieron luces sobre el agua. # pokaz: blednice
Primero una, luego otra, luego una docena larga – esferas pálidas del tamaño de la cabeza de un niño, flotando sobre la juncia. Dentro de cada una, como en una burbuja de jabón, había una figurilla encogida con ojos como dos granitos negros. Las luces no se parecían a los fuegos fatuos de las ciénagas de junto a la aldea – aquellos solo parpadeaban de lejos. Estas se acercaban mucho, susurraban y piaban finito, como polluelos en el nido, y se alejaban hacia el fondo del pantano, volviéndose una y otra vez hacia Jaromir. Lo invitaban.
# pytanie: ¿Cómo cruzará Jaromir el pantano?
*   [Seguir a las luces.]
    ~ przejscie_bagna = za_blednicami
    Las siguió de mata en mata, y las luces serpenteaban ante él, piaban, esperaban. Por un momento le pareció que de verdad lo guiaban a través del pantano.
    Cuando empezó a clarear, vio que se había pasado la noche dando vueltas alrededor de una sola y misma mata – pisoteada hasta dejar la tierra al desnudo. El zurrón le colgaba del hombro descosido de arriba abajo. El pan, el queso, la sal y el vestidito de lana de Marysia habían desaparecido.{ ekwipunek ? ksiega: Y con ellos, el libro de don Ignacy.} Solo se había salvado lo que llevaba en el pecho, bajo la camisa: el zueco{ ekwipunek ? zoladz: y la bellota}. Un poco más allá, sobre la juncia, yacía extendido el vestidito, como si alguien se lo hubiera estado probando – y antes de que Jaromir pudiera dar un paso, el agua lo tragó. # pokaz: welniak # tobolek
    ~ ekwipunek -= ksiega
    Llegó a la otra orilla al alba, por unas matas que a la luz del día se veían bien. Temblaba – y no de frío. # dalej
*   [Trazar un círculo de sal y esperar al alba.]
    ~ przejscie_bagna = krag_z_soli
    Sacó del zurrón el trapito con la sal que le había atado Hanka y trazó un círculo a su alrededor sobre una mata seca. Se sentó en medio con el hacha sobre las rodillas. # pokaz: krag
    Las luces giraron en torno al círculo toda la noche, cada vez más cerca, cada vez con más insistencia, le susurraban con la voz de Hanka, con la voz de su madre, con la voz de Marysia. De madrugada una de las esferas se posó justo al lado de la sal y Jaromir vio en ella, nítida como en un espejo, la carita de su hija – las pecas, el dientecito torcido, el hoyuelo de la mejilla. Le sonreía y le tendía los bracitos. Él se quedó sentado con las manos metidas bajo los muslos, para no alargarlas hacia ella. La esfera no cruzó la sal. Se apagó junto con las demás cuando salió el sol.
    A la luz gris vio un estrecho terraplén de troncos que atravesaba el pantano y que de noche no se distinguía. Cruzó por él. Sal ya no le quedaba – toda se había quedado en el círculo, fundida con el musgo. # pokaz: grobla # dalej
*   { glosy_boru == za_frankiem && oblawa_wilk != wydal_wilka } [Seguir al lobo blanco.]
    ~ przejscie_bagna = za_wilkiem
    El lobo no miraba las luces. Cruzaba el pantano con paso seguro, por matas que Jaromir en la oscuridad no veía en absoluto, y cada pocos pasos volvía la cabeza. Jaromir ponía los pies exactamente donde él. Las luces siseaban de rabia y se mantenían a distancia. # pokaz: wilk
    En la otra orilla el lobo se detuvo y por primera vez miró a Jaromir directamente a los ojos. Jaromir no pudo aguantarse. Tendió la mano para tocarlo.
    «¿Franek?», susurró.
    El lobo lanzó una dentellada – rápida, breve, como un perro que avisa, no que muerde. Pero los colmillos le abrieron a Jaromir el dorso de la mano hasta el hueso. Cuando alzó la cabeza, el lobo ya no estaba. La sangre le goteaba de los dedos sobre el liquen gris y tardó mucho en cortarse. # pokaz: krew # dalej
*   { ekwipunek ? rozaniec } [Apretar el rosario en la mano y seguir adelante, rezando en voz alta.]
    ~ przejscie_bagna = z_rozancem
    «Dios te salve, María, llena eres de gracia…», empezó Jaromir, y dio el primer paso.
    Las luces aullaron – agudo, penetrante, como pájaros en el lazo – y se apagaron todas a la vez. Cayó una oscuridad tan densa que no se veía las manos. Avanzó a tientas, tanteando las matas con el mango del hacha, y rezó hasta quedarse con la garganta seca. # pokaz: ciemnosc
    ~ ekwipunek -= rozaniec
    Cruzó. Pero cuando llegó a la otra orilla, el rosario que llevaba en la mano estaba carbonizado, y las cuentas se deshicieron en ceniza al primer roce. # tobolek # dalej
*   { ekwipunek ? krzesiwo } [Sacar chispas y seguir su resplandor.]
    ~ przejscie_bagna = z_krzesiwem
    Sacó el eslabón del abuelo y golpeó – una vez, dos. Las chispas cayeron sobre la juncia, y las luces se apartaron de ellas chillando, como escaldadas. Atravesó el pantano haciendo saltar chispas cada pocos pasos, y las esferas se abrían ante él. # pokaz: iskry
    En la otra orilla una chispa cayó en el liquen gris – y el liquen prendió en un instante, como la pólvora. Jaromir pisoteó la llama, se arrancó el chaquetón y golpeó el fuego con él hasta que se le agrietó la piel de las manos. Lo sofocó. Pero en el bosque se hizo un silencio tan grande que oía su propio corazón, y tardó mucho en quitarse de encima la certeza de que cada árbol a su alrededor estaba escuchando. # pokaz: ogien # dalej
-   -> serce_boru

= serce_boru
# tlo: serce_boru
Pasado el pantano, el bosque era distinto.
Los árboles estaban más espaciados, pero eran tan viejos que Jaromir no alcanzaba a abarcar con la vista sus copas. La corteza se había fundido con el musgo en una sola cosa, gris y blanda como un pelaje. Bajo los pies no crecía hierba, solo un liquen seco y gris, y el aire era tan pesado e inmóvil que cada aliento sabía a polvo. Aquí no llovía. Nunca.
En medio del claro se alzaba un roble – más grande de lo que había sido en su día el Viejo Roble, tan enorme que sus raíces salían de la tierra como lomos de peces gigantescos. En el tronco se abría una grieta de dos hombres de alto, y de ella salía un frescor de bodega.
De detrás del roble, quedamente, llegaba un canto. La melodía de Marysia – corta, triste. Solo que esta vez no se cortaba a la mitad. Alguien la cantaba hasta la última nota con una voz honda y áspera, parecida al crujir de un árbol al viento. Jaromir nunca había oído cómo terminaba. Se sintió robado: era él quien tenía que oír primero ese final – con ella, junto a su cama. # pokaz: spiew
De la sombra del roble salió un viejo. # pokaz: starzec
Jaromir lo reconoció al instante – era el que estaba al borde del bosque la noche de la boda{ poszedl_po_wstazke:, y el que años atrás aguardaba en la penumbra del bosque junto a la cinta de Hanka}. Solo que entonces estaba lejos. Ahora Jaromir veía que la zamarra no estaba cosida, sino que había crecido entera, como la corteza, y que el musgo del sombrero estaba fresco y húmedo, aunque allí nunca había caído ni una gota de lluvia. El viejo no proyectaba sombra.
«Setenta años llevo esperando», dijo. La voz no le salía de la boca, sino de todas partes – de los árboles, de la tierra, del aire. «A que alguno de los vuestros viniera aquí solo.»
# pytanie: ¿Qué hará Jaromir?
*   [Quitarse la gorra e inclinarse como ante el más anciano de la aldea.]
    ~ przed_panem_lasu = uklon
    Jaromir se quitó la gorra y se inclinó profundamente. El viejo lo contempló largo rato, y luego, por primera vez, algo tembló en su rostro.
    «Cortés», dijo. «No me lo esperaba de los vuestros.» # dalej
*   [Alzar el hacha y exigir que le devuelva a su hija.]
    ~ przed_panem_lasu = uniosl_siekiere
    «Devuélvemela», dijo Jaromir, y alzó el hacha. «Devuélveme a mi hija.»
    El viejo miró el hacha, y las hojas de su cayado se ennegrecieron y se enroscaron. # pokaz: liscie
    «{siekiera_dziadka:Conozco este hierro|Conozco esa clase de hierro}», dijo en voz baja.{ wejscie_do_boru == naciete_pnie: «Y tú has herido a un centenar de mis árboles. Me acuerdo de cada uno.»} # dalej
*   [Llamar a Marysia.]
    ~ przed_panem_lasu = zawolal_marysie
    «¡Marysia!», gritó Jaromir. «¡Marysia, soy papá!»
    El canto se cortó. Durante un instante terrible reinó el silencio. Y luego le respondió una risa – infantil, despreocupada, feliz, la risa de Marysia. Pero le llegó desde su espalda, del pantano que acababa de cruzar.
    El viejo meneó la cabeza como ante alguien que ha cometido un error evidente. # dalej
-   ~ zapiski += (starzec_4, pan_lasu_8)
El viejo se quitó el sombrero de musgo. Debajo no había cara, solo corteza – y dos ojos claros, inmóviles, engastados en ella hondo como nudos de la madera. Luego empezó a crecer. La zamarra se deshizo en musgo y líquenes, el cayado echó raíces en la tierra, y la barba le cayó hasta las rodillas, luego hasta el suelo, cana y espesa como el musgo de la cara norte de los troncos. De la frente le brotó una cornamenta, amplia y enmarañada como las ramas de un árbol derribado por el viento. Creció hasta que su cabeza estuvo entre las copas y las hojas susurraron a su alrededor. # pokaz: pan_lasu
El Señor del Bosque se inclinó sobre Jaromir.
«Siéntate, nieto de Maciek», dijo, y su voz hizo temblar todo el bosque. «Hablaremos.» # dalej
-> rozdzial_szesnasty_ciag_dalszy


// Koniec rozdziału szesnastego – dalej rozdział siedemnasty.
=== rozdzial_szesnasty_ciag_dalszy ===
# ozdobnik
_Fin del capítulo decimosexto._ # dalej
-> rozdzial_siedemnasty
