// ------------------------------------------------------------
//  Rozdział trzynasty – Wspólny sen (figurka). Przednówek i roztopy po
//  zimie ze strzygą (Jaromir ma dwadzieścia dwa lata, Marysia półtora roku).
//  Figurka z prologu wraca: [starucha] przywozi ją wnuczka Jagna, [handlarz]
//  leży na jarmarku, [bez zgliszcz] Józek wygrzebuje ją z popiołu po chacie
//  zielarki, [bagno] wypływa z mokradeł. Odrzucona – i tak wraca do chałupy.
//  Dzieci śnią ten sam sen, ogniki podchodzą pod płoty; zaufać Jagnie albo nie.
//  W Wielki Czwartek Józek idzie we śnie na kładkę, gdzie czeka topielec:
//  siekiera (rozorany bark), figurka rzucona w wodę albo latarnia (płonie
//  kapliczka przy kładce). Potem: piec (figurka nie płonie), kapliczka albo
//  Jagna. W maju syn Antka, Franek; w czerwcu paliki pod drogę Urbaniaka.
// ------------------------------------------------------------

=== rozdzial_trzynasty ===
# tlo: przednowek
# rozdzial: Capítulo decimotercero
# tytul: El sueño compartido
La nieve cubrió los campos hasta mediados de marzo, gris y apelmazada, y en las casas ya se comían gachas sin tocino y se repartían a puñados las patatas guardadas bajo tierra.{ polnoc_strzygi == na_twarz: La mano de Antek no sanó hasta los días de la escasez de primavera – le quedaron en ella dos semicírculos de cicatrices menudas y blancas, que Jadwisia besaba cuando creía que nadie la veía.} {trzy_noce == czuwanie_przy_kolysce:En la casa de los Wójcik no se instaló nadie. En febrero, una noche, el tejado podrido se hundió bajo la nieve con un estruendo que despertó a media aldea.|La señora Wójcik pasó el invierno en cama con fiebre, pero en marzo salió a la puerta apoyada en un palo, y lo primero que hizo fue llevarle a Marysia un puñado de manzanas secas.}
{ ekwipunek ? szczenie_psa:
    Marysia cumplió año y medio. Corría por la estancia, se caía, se levantaba y seguía corriendo, y las palabras las cazaba al vuelo. El cachorro rojizo había crecido durante el invierno hasta hacerse un perrillo zanquilargo que la seguía paso a paso y gruñía a cualquiera que le alzara la voz – incluso a su madre. # pokaz: szczenie
- else:
    Marysia cumplió año y medio. Corría por la estancia, se caía, se levantaba y seguía corriendo, y sabía ya más palabras de las que Hanka había alcanzado a enseñarle.
}
El deshielo llegó de golpe. La nieve se escurrió de los campos en dos días, y las ciénagas del otro lado de la pasarela crecieron tanto que el agua llegó hasta las mismas cercas. El hielo del lago estuvo crujiendo y quebrándose tres días seguidos. La cuarta noche, por primera vez en años, se encendieron lucecitas sobre las ciénagas. # pokaz: ogniki # dalej
{ figurka_u_staruchy: -> figurka_od_jagny }
{ not przeszukal_zgliszcza: -> figurka_ze_zgliszcz }
{ figurka_w_bagnie: -> figurka_z_bagna }
-> figurka_na_jarmarku

= figurka_od_jagny
# tlo: jagna_izba
A mediados de marzo llegó en carro a Zapadlina una forastera – flaca, con un pañuelo gris y un ojo velado por una nube blanca. Preguntaba por el nieto de aquel Maciek que años atrás había levantado allí una cabaña. La gente le señaló la casa de Jaromir.
«Me llamo Jagna», dijo cuando se sentó en el banco. «Mi abuela vivía en la ciudad, detrás de la plaza del mercado. Antes de morir me hizo jurar que devolvería esto.»
Sacó de la cesta un envoltorio de trapo negro y lo desplegó sobre la mesa. Una figurilla de madera, chamuscada por un lado, con un mechón de pelo canoso enrollado al cuello. {los_psa == oswojony && zona_wie:Jaromir no había visto nunca la figurilla y, aun así, la reconoció al instante – por lo que una vez le había contado la abuela Marianna.|Jaromir no había visto nunca la figurilla ni había oído hablar de ella y, aun así, al verla sintió frío, como si alguien hubiera abierto la puerta a la helada.} # pokaz: figurka
«La abuela se la compró a tu abuelo en la plaza», decía Jagna en voz baja, sin alzar la vista. «E hizo con ella algo que pagó hasta el fin de sus días. No sé bien qué – con la fiebre deliraba sobre una muñeca y sobre el agua. Solo sé que tuvo una mala muerte. Y que lo último que dijo fue: “Devuélvela al lugar de donde vino”.»
# pytanie: ¿Qué hará Jaromir?
*   [Tomar la figurilla.]
    ~ ekwipunek += figurka
    Jaromir volvió a envolver la figurilla en el trapo y la guardó en el arcón bajo la cama. Jagna respiró hondo, como si le hubieran quitado de la espalda un saco de piedras. Al despedirse dijo que hasta Pentecostés se quedaría en Bukowiec, en casa de su hermana, y que vendería hierbas en el mercado. # dalej
*   [Ordenarle que se vaya con la figurilla.]
    ~ odrzucil_figurke = true
    «Llévate eso», dijo Jaromir. «Y no vuelvas.»
    Jagna lo miró largamente con su ojo sano y envolvió la figurilla. Desde el umbral solo le dijo que hasta Pentecostés estaría en Bukowiec, en casa de su hermana.
    ~ ekwipunek += figurka
    Pero a la mañana siguiente, cuando Hanka abrió la puerta, la figurilla estaba en el umbral. El trapo estaba empapado y apestaba a pantano. Jaromir guardó la figurilla en el arcón antes de que la viera Marysia. # pokaz: prog # dalej
-   -> wspolny_sen

= figurka_na_jarmarku
# tlo: jarmark
A mediados de marzo Jaromir fue a la feria de la ciudad con las cucharas que había tallado durante el invierno. Las vendió todas antes del mediodía y siguió paseando entre los tenderetes, buscando algún regalo de romería para Marysia. En el último puesto, el de un viejo ropavejero, entre ollas rajadas y herraduras oxidadas, había una figurilla de madera – chamuscada por un lado, con la cara alisada por el roce de dedos ajenos. # pokaz: figurka
Jaromir la tomó en la mano. La madera estaba fría y húmeda, aunque el día era seco.
«Bonita, ¿eh?», se carcajeó el ropavejero. «Mi abuelo se la compró a un campesino cuando él mismo era todavía joven. Desde entonces nadie la ha querido. Para ti, por una moneda de cobre.»
# pytanie: ¿Qué hará Jaromir?
*   [Comprar la figurilla.]
    ~ ekwipunek += figurka
    Jaromir pagó, envolvió la figurilla en un pañuelo y se la guardó en el pecho, bajo la camisa. Todo el camino de vuelta la sintió junto al corazón como un trozo de hielo. En casa la metió en el arcón bajo la cama. # dalej
*   [Dejarla y marcharse.]
    ~ odrzucil_figurke = true
    ~ ekwipunek += figurka
    Jaromir dejó la figurilla sobre el mostrador y se fue sin volverse. Pero al anochecer, cuando desenganchaba el caballo frente a la casa, la figurilla estaba en el fondo del carro, entre las virutas – allí donde por la mañana habían ido las cucharas. Se quedó mirándola un buen rato antes de guardarla en el arcón bajo la cama. # pokaz: woz # dalej
-   -> wspolny_sen

= figurka_ze_zgliszcz
# tlo: zgliszcza_kra
A mediados de marzo los chicos de la aldea fueron al lago a ver cómo bajaban los témpanos. Entre ellos estaba Józek, el bisnieto más pequeño del viejo Staś – de siete años, pelirrojo y curioso de todo como una urraca. Los témpanos removieron los viejos maderos carbonizados entre los juncos, en la orilla occidental del lago, donde antaño se alzaba la cabaña de la herbolaria, y los empujaron a tierra. Józek hurgó con un palo en la ceniza hasta que sacó algo duro.
Corrió con ello a casa de Jaromir, porque Jaromir tallaba los mejores juguetes de la aldea y el chico quería presumir. En la palma del niño había una figurilla de madera, chamuscada por un lado. El hollín que la cubría manchaba los dedos como si fuera fresco. # pokaz: figurka
# pytanie: ¿Qué hará Jaromir?
*   [Quitarle la figurilla.]
    ~ ekwipunek += figurka
    «Dámela», dijo Jaromir. «A cambio te tallaré un caballo con su carro.»
    Józek se enfurruñó, pero al final aceptó. Jaromir guardó la figurilla en el arcón bajo la cama y estuvo mucho tiempo frotándose las manos en la tina, aunque las tenía limpias. # dalej
*   [Dejar que se la quede.]
    ~ jozek_mial_figurke = true
    Jaromir le devolvió la figurilla al niño y Józek se fue corriendo con ella a casa. Al día siguiente se presentó en casa de Jaromir la madre de Józek, pálida, con la figurilla envuelta en el delantal. El pequeño había dormido toda la noche con ella en el puño, hablando en sueños con una voz que no era la suya, y por la mañana se despertó con el pelo mojado, aunque nadie lo había bañado. # pokaz: matka
    «Toma esto», dijo. «Tú eres el nieto de Maciek. Tú sabes lo que es.»
    ~ ekwipunek += figurka
    Jaromir guardó la figurilla en el arcón bajo la cama. # dalej
-   -> wspolny_sen

= figurka_z_bagna
# tlo: kladka_naprawa
A mediados de marzo, cuando el agua empezó a bajar, Jaromir fue con Antek a reparar la pasarela sobre las ciénagas que se había llevado la riada. Estaba sacando del cieno un viejo poste cuando vio que algo se le había quedado pegado – negro, cubierto de légamo. Raspó el barro con el cuchillo.
Una figurilla de madera, chamuscada por un lado. En tantos años el agua no le había quitado el hollín. Jaromir recordó lo que su padre le contaba de niño sobre el abuelo Maciek y sobre una figurilla que este había perdido en el pantano la primera primavera. # pokaz: figurka
# pytanie: ¿Qué hará Jaromir?
*   [Llevarse la figurilla.]
    ~ ekwipunek += figurka
    Jaromir envolvió la figurilla en un trapo y se la metió bajo la camisa. Antek lo miraba ceñudo, de reojo, pero no dijo nada. En casa Jaromir la guardó en el arcón bajo la cama. # dalej
*   [Arrojarla de nuevo al pantano.]
    ~ odrzucil_figurke = true
    Jaromir tomó impulso y lanzó la figurilla lo más lejos que pudo, a un ojo de agua negra entre las matas. El pantano se la tragó sin dejar un solo círculo en el agua. # pokaz: plusk
    ~ ekwipunek += figurka
    Pero a la mañana siguiente, cuando Hanka abrió la puerta, la figurilla estaba en el umbral – mojada, cubierta de lenteja de agua, con la cara vuelta hacia la estancia. Jaromir la guardó en el arcón antes de que la viera Marysia. # dalej
-   -> wspolny_sen

= wspolny_sen
# tlo: sen_kladka
~ zapiski += ogniki_2
{ not przeszukal_zgliszcza:El primero en tener el sueño fue Józek.|El primero en tener el sueño fue Józek, el bisnieto más pequeño del viejo Staś.} Después, la hija del molinero de Bukowiec, y luego los gemelos de los Kowalczyk. Al cabo de una semana las madres, junto al pozo, no hablaban de otra cosa, porque todos los niños soñaban lo mismo: que estaban de noche en la pasarela sobre las ciénagas, con lucecitas parpadeando alrededor, y bajo las tablas, en el agua negra, alguien iba volcando ollas de barro, una tras otra, y miraba debajo de cada una. Y que ese alguien al final alzaba la cabeza y preguntaba: «¿Dónde está mi muñeca?». # pokaz: glowa
{ not odrzucil_figurke && not jozek_mial_figurke:
    Pasadas unas noches, el mismo sueño le vino a Jaromir – el único adulto de la aldea que lo tuvo. Solo él, al fin y al cabo, había tomado la figurilla por propia voluntad. Se despertaba sobresaltado antes del alba con el rumor del agua en los oídos y los pies mojados, aunque dormía bajo el edredón de plumas.
}
Marysia se despertaba llorando cada noche{ skarb_dla_corki: y apretaba el puñito sobre el cordoncillo de cuero con {skarb_jaromira == muszelka:la conchita|{skarb_jaromira == pioro:la pluma de arrendajo|el clavo}} que llevaba al cuello desde el invierno}. Señalaba la ventana con el dedito y repetía unas palabras que nadie le había enseñado:
«Señor mojado. Señor mojado.»
Los fuegos fatuos sobre las ciénagas ardían cada noche más cerca. Primero solo al otro lado de la pasarela, luego en el prado, y al final se quedaban quietos entre los juncos, justo detrás de las cercas – como gente que espera a que alguien abra la puerta. # pokaz: ognie
{ figurka_u_staruchy:
    El domingo Jagna vino a pie desde Bukowiec, sola, y desde el umbral preguntó si los niños de la aldea soñaban.
- else:
    Esa misma semana Hanka compró ajenjo en el mercado de Bukowiec a una herbolaria forastera – una mujer flaca, con pañuelo gris y un ojo velado por una nube blanca. Al darle el cambio, la mujer le agarró de pronto la mano a Hanka y le olió los dedos.
    «Huelo a ceniza», susurró. «Ceniza vieja, de junto al agua. La tenéis en casa, ¿verdad?»
    { przeszukal_zgliszcza && not figurka_w_bagnie:
        «Mi abuela quiso una vez comprarle una cosa así a un muchacho en el mercado», añadió más bajo. «No se la vendió. Hasta su muerte no supo a quién se la había dado al final.»
    }
    Dijo que se llamaba Jagna y que se quedaría en Bukowiec hasta Pentecostés. Hanka la llevó a casa esa misma tarde, sin pedirle parecer a su marido.
}
{figurka_u_staruchy:«Háblale de los sueños», dijo su mujer antes de que Jaromir pudiera abrir la boca. «Ella misma la trajo; que sepa lo que ha brotado de ello.»|«Si has escondido algo, no se lo ocultes», dijo su mujer antes de que Jaromir pudiera abrir la boca. «{odrzucil_figurke && figurka_w_bagnie:He visto lo que volvió a nuestro umbral.»|{jozek_mial_figurke:He visto lo que trajo la madre de Józek.»|Te he visto mirar debajo de la cama.»}}}
# pytanie: ¿Qué hará Jaromir?
*   [{figurka_u_staruchy:Contarle a Jagna lo de los sueños.|Enseñarle a Jagna la figurilla y contarle lo de los sueños.}]
    ~ zaufal_jagnie = true
    { figurka_u_staruchy:
        // Jagna przywiozła figurkę i wiedziała tylko, że babka bredziła o lalce i o wodzie – dopiero sny dzieci składają jej to w całość.
        Jaromir le habló de la pasarela, de las ollas volcadas en el fondo de las ciénagas y de la pregunta que todos los niños oían en sueños. Al oír la palabra «muñeca», Jagna palideció.
        «Con la fiebre, la abuela solo hablaba de una muñeca y del agua. Creí que deliraba», dijo en voz baja. «Las viejas herbolarias contaban cosas así: se tallan de una raíz sacada del pantano y se les da el nombre de lo que allí vive. Él va detrás de quien tenga una muñeca así. Ha dormido mucho tiempo, y ahora ella ha vuelto al lago y lo llama. Y los niños lo oyen – tienen el oído más fino que nosotros.»
    - else:
        Jagna estuvo largo rato dando vueltas a la figurilla entre los dedos, arrimada a la ventana, porque también el ojo sano lo tenía débil.
        «Es una muñeca», dijo al fin. «La abuela me hablaba de ellas. La herbolaria del lago la talló de una raíz que sacó del pantano y le dio el nombre de lo que allí vive. Él va detrás de quien tenga la muñeca. Mientras estuvo {przeszukal_zgliszcza && not figurka_w_bagnie:lejos|intacta}, él dormía. Ahora ha vuelto – y lo llama. Y los niños lo oyen – tienen el oído más fino que nosotros.»
        Envolvió la figurilla en el trapo y se la devolvió a Jaromir.
    }
    «El fuego no podrá con ella, ya estuvo una vez en él. Solo la tierra bendita la acallará. {odrzucil_figurke:O…», se interrumpió y negó con la cabeza. «No. A mí ya no me hará caso. La apartasteis de vosotros y aun así volvió. Ahora es vuestra.»|{figurka_u_staruchy:La abuela me mandó devolverla al lugar de donde vino, y la devolví. No pienso llevármela otra vez.»|O…», vaciló, «o dádmela a mí. Me la llevaré tan lejos que él no la oiga.»}} # dalej
*   [No contarle nada.]
    {figurka_u_staruchy:«Los niños duermen tranquilos», mintió Jaromir.|«No sé de qué hablas», respondió Jaromir.}
    Jagna asintió, como si eso fuera justo lo que esperaba.
    «Cuando las luces lleguen al umbral», dijo, «venid a buscarme. Hasta Pentecostés estoy en Bukowiec.»
    Hanka la acompañó hasta más allá de la cerca y se quedó mucho rato cuchicheando con ella. Hasta la noche no le dirigió a Jaromir ni una palabra. # dalej
-   -> wielki_czwartek

= wielki_czwartek
# tlo: noc_kladka
{ not odrzucil_figurke && not jozek_mial_figurke:
    La noche del Jueves Santo el sueño vino a Jaromir como todas las noches – solo que esta vez, en la pasarela, entre los fuegos fatuos, estaba Józek. Jaromir saltó del jergón antes de comprender que ya no dormía. Agarró el hacha{ siekiera_dziadka: del abuelo}, el farol y, del arcón, el envoltorio con la figurilla. No tuvo que preguntar a nadie adónde correr. # pokaz: jozek
    Más allá de las cercas, entre los juncos, parpadeaban las lucecitas – y entre ellas, hacia la pasarela, avanzaba una figura pequeña y clara, descalza, con los brazos tendidos hacia delante. Jaromir alcanzó la orilla en el momento en que el niño se detenía a mitad de camino. El agua bajo las tablas se arremolinó, y de ella asomó una mano gris. Se cerró en torno al tobillo de Józek.
- else:
    La noche del Jueves Santo a Jaromir lo despertó un grito en el camino: la madre de Józek corría de cerca en cerca con un farol, llamando a su hijo, cuyo jergón había encontrado vacío. Cuando Jaromir se asomó desde el zaguán, en el umbral había una lucecita pálida, tan cerca que alumbraba los nudos de las tablas – y se alejó flotando en la oscuridad en cuanto la miró. Agarró el hacha{ siekiera_dziadka: del abuelo}, el farol y el envoltorio con la figurilla – temía dejarla en casa, junto a Marysia. Primero corrieron con la madre de Józek al lago, y solo desde allí vio Jaromir que las lucecitas se habían apiñado en un mismo lugar. # pokaz: jozek
    Cuando llegó, era casi demasiado tarde. La mano gris ya había arrastrado al niño hacia abajo – Józek estaba hundido hasta la cintura en el agua negra y, dormido, se agarraba a la pasarela con una mano.
}
{ figurka_u_staruchy:
    La criatura emergía despacio – enorme, encorvada, con el pelo como algas mojadas y unos ojos que relucían verdosos como madera podrida. En el brazo tenía una cicatriz vieja y honda – la huella del hacha con que el abuelo Maciek la había golpeado años atrás. Józek no gritaba. Dormía. # pokaz: stwor, blizna
- else:
    La criatura emergía despacio – enorme, encorvada, con el pelo como algas mojadas y unos ojos que relucían verdosos como madera podrida. Józek no gritaba. Dormía. # pokaz: stwor
}
{ oblawa_wilk == wydal_wilka:
    Más allá de las ciénagas aulló un lobo – ronco, con el final cortado, igual que la noche después de la batida. La criatura volvió la cabeza hacia allí. Por el dique, entre los alisos, pasó algo blanco, bajo y renqueante, cuidando un costado – y se perdió en la oscuridad.
- else:
    Más allá de las ciénagas aulló un lobo – largo y limpio, hasta hacer temblar las llamitas entre los juncos. La criatura volvió la cabeza hacia allí. Por el dique, entre los alisos, cruzó como un rayo algo blanco, más rápido que un perro – y se perdió en la oscuridad.
}
Jaromir no supo para quién era aquella voz una advertencia – para la criatura o para él.
~ zapiski += stwor_3
# pytanie: ¿Qué hará Jaromir?
*   [Golpear a la criatura con el hacha.]
    ~ noc_na_kladce = siekiera_na_kladce
    Jaromir saltó a la pasarela y descargó un tajo con todas sus fuerzas. La hoja entró muy adentro en el brazo gris{ figurka_u_staruchy:, justo al lado de la vieja cicatriz}. La criatura rugió – largo, desde la garganta, hasta que retemblaron las tablas –, soltó al niño y, en represalia, le desgarró a Jaromir el hombro con las zarpas. Se hundió bajo el agua como si alguien tirara de ella. # pokaz: siekiera
    Jaromir tomó a Józek en brazos y lo sacó a la orilla. El niño no despertó hasta estar en casa, junto a la estufa, y no recordaba nada. La herida del hombro de Jaromir tardó en cerrarse hasta la siega. # dalej
    -> co_z_figurka
*   { ekwipunek ? figurka } [Arrojarle la figurilla.]
    ~ noc_na_kladce = figurka_dla_stwora
    ~ los_figurki = figurka_u_stwora
    Jaromir desenvolvió el trapo y arrojó la figurilla al agua, justo al lado de la criatura.
    ~ ekwipunek -= figurka
    La mano soltó el tobillo del niño en el acto. La criatura atrapó la figurilla, la apretó contra el pecho como una madre a su hijo y se deslizó en el agua negra, suave como una nutria. Las lucecitas sobre las ciénagas se apagaron todas a la vez, como si alguien las hubiera soplado. # pokaz: figurka
    Enseguida el agua bajo las tablas se sorbió hacia el fondo, con un gemido como de hielo que se quiebra, y arrastró consigo los postes. Jaromir apenas tuvo tiempo de saltar con Józek a la orilla antes de que la pasarela – vieja como la aldea – se doblara por la mitad y se hundiera. El niño seguía durmiendo, tranquilo, con la mejilla en su hombro. # dalej
    -> paliki_pod_droge
*   [Estrellar el farol contra el agua.]
    ~ noc_na_kladce = latarnia_na_wodzie
    Jaromir lanzó el farol a los pies de la criatura. El vidrio estalló, el aceite se derramó sobre el agua y prendió en llamaradas. La criatura soltó al niño y retrocedió aullando hacia la oscuridad, y Jaromir agarró a Józek antes de que el agua negra pudiera tragárselo. # pokaz: latarnia
    Pero el fuego corrió por los juncos secos del año anterior como por pólvora. Antes de que los hombres llegaran con cubos, ardió la mitad del juncal y el humilladero junto a la pasarela – uno de los más antiguos de la aldea. A la mañana siguiente quedaban de él unos muñones negros y un santito con la cara chamuscada. # pokaz: pozar # dalej
    -> co_z_figurka

= co_z_figurka
# tlo: skrzynia_izba
Después de Pascua, Jaromir pasó muchas veladas sentado junto al arcón. Las lucecitas sobre las ciénagas seguían ardiendo, aunque más lejos de las cercas que antes, y Marysia aún se despertaba de noche y señalaba la ventana.
# pytanie: ¿Qué hará con la figurilla?
*   [Echar la figurilla a la estufa.]
    ~ los_figurki = figurka_w_skrzyni
    La figurilla pasó toda la noche entre las brasas y no prendió – solo siseaba como leña mojada, y de la estufa salía un hedor a pantano. Por la mañana Jaromir la sacó con el atizador. Estaba chamuscada exactamente igual que antes, ni un ápice más. En el zaguán todos los cubos estaban llenos de agua turbia y cenagosa, aunque la víspera Hanka los había llenado de agua limpia del pozo. # pokaz: piec
    Jaromir encerró la figurilla en el arcón, rodeó el arcón con una cadena y no volvió a hablar de ella. # pokaz: lancuch # dalej
*   [Enterrarla bajo el humilladero.]
    ~ los_figurki = figurka_pod_kapliczka
    ~ ekwipunek -= figurka
    Al caer la noche Jaromir fue con una pala al humilladero {noc_na_kladce == latarnia_na_wodzie:del camino de Bukowiec, pasado el arroyo|junto a la pasarela}. Cavó un hoyo de un codo de hondo, envolvió la figurilla en un lienzo limpio, la cubrió de tierra y la apisonó con los pies. Esa misma noche las lucecitas sobre las ciénagas se apagaron y los niños dejaron de soñar. # pokaz: lopata
    No le dijo a nadie dónde la había enterrado. Ni siquiera a Hanka. # dalej
*   { zaufal_jagnie } { not odrzucil_figurke } { not figurka_u_staruchy } [Dársela a Jagna.]
    ~ los_figurki = figurka_u_jagny
    ~ ekwipunek -= figurka
    Jaromir llevó el envoltorio a Bukowiec. Jagna lo tomó con las dos manos, con cuidado, como algo muy frágil, y lo escondió enseguida en el fondo de la cesta, bajo los manojos de hierbas secas. # pokaz: kosz
    «No temas», dijo. «Ya no volverá.»
    Al día siguiente se marchó. Esa noche las lucecitas sobre las ciénagas se apagaron y los niños dejaron de soñar. # dalej
-   -> paliki_pod_droge

= paliki_pod_droge
# tlo: wiosna_paliki
~ zapiski += zielarka_3
En mayo Jadwisia le dio a Antek un hijo. Antek se empeñó en que el chico se llamaría Franek, y nadie se atrevió a llevarle la contraria. Le pidió a Jaromir que fuera el padrino. # pokaz: antek
{ los_figurki:
- figurka_u_stwora: Las lucecitas sobre las ciénagas no volvieron a encenderse ni una sola vez. Józek no recordaba aquella noche. Nadie reconstruyó la pasarela: los postes que los hombres clavaban en el cieno aparecían por la mañana arrancados en la orilla, así que desde entonces, para llegar a los prados del otro lado, había que rodear el pantano bordeando el bosque. El viejo Staś, cuando se enteró de lo que había hecho Jaromir, se santiguó y nunca más echó la caña en aquellas pozas.
- figurka_w_skrzyni: Los sueños venían cada vez con menos frecuencia, pero no cesaron del todo. A veces, en las noches sin luna, Marysia se incorporaba en el jergón y miraba el arcón bajo la cama hasta que Hanka volvía a acostarla.
- else: Los niños de la aldea olvidaron el sueño antes de que las madres dejaran de comentarlo. Marysia volvió a dormir las noches de un tirón.
}
{ noc_na_kladce == siekiera_na_kladce:
    En el hombro de Jaromir quedó una cicatriz gruesa y rosada{ figurka_u_staruchy && los_psa == oswojony: – en el mismo sitio donde, años atrás, las garras de la criatura habían alcanzado al abuelo}.
}
{ noc_na_kladce == latarnia_na_wodzie:
    En el lugar del humilladero quemado los hombres clavaron en la tierra una cruz de abedul. Nadie levantó uno nuevo – no había con qué. # pokaz: krzyz
}
A finales de mayo Hanka buscó a Marysia por todo el patio. No la encontró hasta detrás del granero, metida en el centeno hasta los sobacos. La pequeña estaba inmóvil, con la cabecita ladeada, como quien escucha.
«Mamá canta», dijo, y señaló con la manita hacia el sembrado, en dirección contraria a la casa.
{ glos_w_lesie:
    Cuando Hanka lo contó por la noche, Jaromir recordó la Nochebuena de años atrás y la voz de su madre {figurka_u_staruchy:desde la niebla sobre el campo|de entre los árboles}{glos_w_lesie == odpowiedzial: – y después una risa que no era suya en absoluto|{glos_w_lesie == kozuch: – y después unos pasos pesados que pasaron justo a su lado| – y cómo aquella voz lo persiguió por la nieve hasta la cerca de los de Staś}}. No dijo nada. Solo que esa noche se levantó dos veces a ver si Marysia dormía.
}
A principios de junio la gente de Urbaniak empezó a clavar estacas en la tierra: desde el aserradero, a través de los prados y las ciénagas, derechas hacia el bosque. Lo que el señor Urbaniak quería era un camino hasta los árboles. Al cabo de una semana, las clavadas más cerca de la espesura echaron brotes verdes – de una madera seca y descortezada. # pokaz: paliki # dalej
-> rozdzial_trzynasty_ciag_dalszy


// Koniec rozdziału trzynastego – dalej rozdział czternasty.
=== rozdzial_trzynasty_ciag_dalszy ===
# ozdobnik
_Fin del capítulo decimotercero._ # dalej
-> rozdzial_czternasty
