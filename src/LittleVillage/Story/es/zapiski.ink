// ------------------------------------------------------------
//  Zapiski — bestiariusz. Każda istota ma kilka wpisów (etapów),
//  które fabuła odsłania dopiero wtedy, gdy bohater czegoś się dowie:
//      ~ zapiski += licho_2
//  Kolejność na liście = kolejność kart. Tytuł karty bierze się z
//  najnowszego odsłoniętego wpisu (np. „Jednooka żebraczka” → „Licho”).
//  Wpisy nie mówią więcej, niż w tej chwili wiedzą postacie.
// ------------------------------------------------------------

LIST Zapiski = stwor_1, zielarka_1, pan_lasu_1, starzec_1, polnocnica_1, polnocnica_2, dziad_1, stwor_2, zielarka_2, ogniki_1, uboze_1, pan_lasu_2, poludnica_1, pan_lasu_3, rusalki_1, uboze_2, licho_1, licho_2, licho_3, pan_lasu_4, starzec_2, tropy_1, mamuny_1, odmieniec_1, mamuny_2, tropy_2, pan_lasu_5, strzyga_1, strzyga_2, mamuny_3, starzec_3, ogniki_2, stwor_3, zielarka_3, pan_lasu_6, uboze_3, zytnia_baba_1, zytnia_baba_2, pan_lasu_7, planetnik_1, tropy_3, blednice_1, starzec_4, pan_lasu_8, pan_lasu_9, zielarka_4, tropy_4, dzieci_1, pan_lasu_10, tropy_5, mamuny_4, tropy_6, dzieci_2, pan_lasu_11, pan_lasu_12, zielarka_5, tropy_7, dzieci_3
VAR zapiski = ()

=== function tytul_zapisku(z)
{ z:
    - stwor_1:      ~ return "La criatura de la maleza"
    - stwor_2:      ~ return "El ahogado"
    - zielarka_1:   ~ return "La herbolaria del lago"
    - zielarka_2:   ~ return "La herbolaria del lago"
    - pan_lasu_1:   ~ return "El Señor del Bosque"
    - pan_lasu_2:   ~ return "El Señor del Bosque"
    - pan_lasu_3:   ~ return "El Señor del Bosque"
    - pan_lasu_4:   ~ return "El Señor del Bosque"
    - starzec_1:    ~ return "El viejo del sombrero de musgo"
    - starzec_2:    ~ return "El viejo del sombrero de musgo"
    - polnocnica_1: ~ return "La Dama de la Medianoche"
    - polnocnica_2: ~ return "La Dama de la Medianoche"
    - dziad_1:      ~ return "El viejo de la zanfoña"
    - ogniki_1:     ~ return "Fuegos fatuos"
    - uboze_1:      ~ return "El duende del hogar"
    - uboze_2:      ~ return "El duende del hogar"
    - poludnica_1:  ~ return "La Dama del Mediodía"
    - rusalki_1:    ~ return "Rusalkas"
    - licho_1:      ~ return "La mendiga tuerta"
    - licho_2:      ~ return "El licho"
    - licho_3:      ~ return "El licho"
    - tropy_1:      ~ return "Bajo la ventana"
    - tropy_2:      ~ return "El lobo blanco"
    - pan_lasu_5:   ~ return "El Señor del Bosque"
    - mamuny_1:     ~ return "Mamunas"
    - mamuny_2:     ~ return "Mamunas"
    - odmieniec_1:  ~ return "El niño cambiado"
    - strzyga_1:    ~ return "El muerto que no se enfría"
    - strzyga_2:    ~ return "La strzyga"
    - mamuny_3:     ~ return "Mamunas"
    - starzec_3:    ~ return "El viejo del sombrero de musgo"
    - ogniki_2:     ~ return "Fuegos fatuos"
    - stwor_3:      ~ return "El ahogado"
    - zielarka_3:   ~ return "La herbolaria del lago"
    - pan_lasu_6:   ~ return "El Señor del Bosque"
    - uboze_3:      ~ return "El duende del hogar"
    - zytnia_baba_1: ~ return "La mujer del centeno"
    - zytnia_baba_2: ~ return "La vieja del centeno"
    - pan_lasu_7:   ~ return "El Señor del Bosque"
    - planetnik_1:  ~ return "El planetnik"
    - tropy_3:      ~ return "El lobo blanco"
    - blednice_1:   ~ return "Candelillas"
    - starzec_4:    ~ return "El viejo del sombrero de musgo"
    - pan_lasu_8:   ~ return "El Señor del Bosque"
    - pan_lasu_9:   ~ return "El Señor del Bosque"
    - zielarka_4:   ~ return "La herbolaria del lago"
    - tropy_4:      ~ return "El lobo blanco"
    - dzieci_1:     ~ return "Los niños bajo el roble"
    - pan_lasu_10:  ~ return "El Señor del Bosque"
    - tropy_5:      ~ return "El lobo blanco"
    - mamuny_4:     ~ return "Mamunas"
    - tropy_6:      ~ return "El lobo blanco"
    - dzieci_2:     ~ return "Los niños bajo el roble"
    - pan_lasu_11:  ~ return "El Señor del Bosque"
    - pan_lasu_12:  ~ return "El Señor del Bosque"
    - zielarka_5:   ~ return "La herbolaria del lago"
    - tropy_7:      ~ return "El lobo blanco"
    - dzieci_3:     ~ return "Los niños bajo el roble"
}
~ return ""

=== function tresc_zapisku(z)
{ z:
- stwor_1:
    Tres cabezas más alto que un hombre, encorvado, con unos brazos que le cuelgan casi hasta el suelo y un pelo largo y mojado. Apesta a pantano. Salió de la niebla cuando callaron los grillos y las ranas, y se alejó hacia las ciénagas. {czary.noc:Maciek lo vio una vez más – en el umbral de su propia cabaña.|Maciek lo vio una sola vez – y no lo olvidó jamás.}
- stwor_2:
    Medio siglo después regresó, cuando los niños ahogaban a Marzanna – {obejrzal_sie:una mano gris arrastró la muñeca de paja bajo el agua|algo tiró de la muñeca de paja desde abajo y la hundió en el agua}.{figurka_u_staruchy && los_psa == oswojony: «Los como él no mueren. Esperan.»}{not figurka_u_staruchy || los_psa == oswojony: Dicen los viejos que quien se ahoga sin cura no va ni al cielo ni al infierno, sino que se queda en el agua. En el fondo, el ahogado guarda las almas de los que se tragó el agua bajo pucheros de barro vueltos boca abajo, y de noche los va volcando uno tras otro. Cuando algún puchero se raja, el alma escapa en una burbuja hacia la superficie.}
- zielarka_1:
    Vivía junto al lago, allí donde entre los juncos asoman unos troncos carbonizados. Curaba a la gente con hierbas, hasta que empezó a hablar de noche con alguien a quien nadie veía. Cuando en la aldea comenzó a cortarse la leche y a morir el ganado, los campesinos le clavaron tablas en la puerta y prendieron fuego a la cabaña. Al morir, maldijo la aldea y a todo el que algún día viviera en ella. Los que la quemaron no vieron el invierno – uno tras otro se metieron en el pantano.
- zielarka_2:
    La maldición no se apagó con el fuego. El abuelo Maciek la llevó dentro toda su vida – {figurka_u_staruchy:y pagó por ella más de lo que quiso confesar nunca a nadie|y a su hijo se la contaba como un cuento, aunque él mismo nunca se rio de ella}.{chata_macka != nad_jeziorem: Todavía hoy nadie en Zapadlina levanta su casa junto al lago por el lado de poniente.}
- pan_lasu_1:
    Los viejos lo llaman de distintas maneras – Borowy, el Señor del Bosque – y los más ancianos de ninguna, porque más vale no nombrarlo. Vive en lo más hondo del bosque y lo vigila como un amo vigila su corral. A quien entra allí sin pedir permiso, lo extravía hasta hacerle andar en círculos. El que se pierda, que se quite la ropa y se la ponga del revés – entonces Borowy se confunde, porque cree tener delante a uno de los suyos.
- pan_lasu_2:
    Hay árboles que guarda como su propio corazón. El Viejo Roble, al borde del bosque, era la frontera – mientras estuvo en pie, el bosque terminaba donde terminaba.{ franek_scial_dab: El primer hachazo se lo dio Franek.}{pracowal_w_tartaku: El viejo Wawrzyniec, el del aserradero, contaba que cuando los primeros hombres bajaron a este valle tuvieron que prometer que no pasarían del Viejo Roble con un hacha – y solo entonces se retiró el bosque – y que, a cambio, una vez por generación, él se lleva a un niño durante unas cuantas noches. «Los humilladeros son como clavos en una cerca. Arrancas uno y la cerca sigue en pie. Los arrancas todos…»}
- pan_lasu_3:
    {ostrzezenie_poludnicy:La Dama del Mediodía lo dijo sin rodeos: el Señor del Bosque se despierta.{pomylki_poludnica == 0: Con cada árbol talado, su sueño es más ligero.}|Algo cambió después de la tala del Viejo Roble. En los huertos, entre los bancales, brotaba en una sola noche un musgo como el que crece bajo los abetos más viejos, y cada mañana el verdor del lado del bosque asomaba más pegado a las cercas.}
- pan_lasu_4:
    Cuando los hombres de Urbaniak desenterraron los humilladeros del pie del bosque, en los hoyos que dejaron brotaron en una sola noche abetos jóvenes. Parecía que el bosque se acercaba cada día un poco más a la aldea.{ kapliczki_drogi == obronil_kapliczke: Solo se salvó un humilladero – el que Jaromir había defendido.}
- starzec_1:
    {poszedl_po_wstazke:Estaba de pie en la penumbra del bosque, tan alto que habría tenido que agacharse para entrar en una cabaña. Llevaba una zamarra vuelta con la lana hacia fuera, ceñida con un cordel, y un sombrero de musgo de ala ancha, y debajo solo se veían dos puntos claros: los ojos. Se apoyaba en un bastón nudoso del que brotaban hojas. En la mano tenía la cinta de Hanka.|Alguien lo dibujó en el libro de don Ignacy: un viejo con la ropa del revés y un sombrero de musgo.}{czytal_ksiege: Bajo el dibujo, en el libro, ponía: «Quien lo encuentre, que haga lo mismo que él. Ese viene del otro lado, donde todo está al revés.»}
- starzec_2:
    Vino a la boda de Jaromir y Hanka – se quedó al borde del bosque, cabeceando al compás de la música.{ poszedl_po_wstazke: No había envejecido ni un día.} {weselny_gosc == ugoszczony_kolaczem:Aceptó la rosca de boda e inclinó la cabeza como hace un amo ante otro amo.|{weselny_gosc == zapytany:Habló con una voz como el viento en las copas de los árboles: «Bien te casas, nieto de Maciek. Cuida de ella.»|Allí siguió hasta el primer canto del gallo.}}
- polnocnica_1:
    Pasada la medianoche, acude junto a los niños de pecho. Primero se hace el frío, luego algo susurra en la estancia como hojas secas. Antek solo vio algo claro sobre la cuna y unos cabellos negros que llegaban hasta el suelo. En lugar de llorar, la criatura silba, como si no pudiera tomar aliento. Le teme al hierro puesto bajo la almohada.{rada_jaromira == ksiega_rada: El libro de don Ignacy añade que las semillas de amapola esparcidas tiene que contarlas una a una – y solo sabe contar hasta el alba.}
- polnocnica_2:
    De cerca se la ve entera: flota sobre las tablas sin tocarlas con los pies, envuelta en una mortaja deshilachada por abajo, con la cara flaca como una calavera, los ojos como dos pozos negros y unos dientes menudos y afilados. {rada_jaromira == hanka:La abuela de Hanka dice que es el alma de una madre que murió de parto antes de que el cura alcanzara a bendecirla – no llegó a acunar a su hijo, así que acude a los ajenos. Y que nunca viene por su cuenta: alguien tiene que mostrarle el camino. }{polnocnica == przegnana_nozem:A Zosia la salvó un cuchillito metido bajo la almohada.|{polnocnica == policzyla_mak:A Zosia la salvó la amapola: estuvo contando hasta el alba y no le dio tiempo.|Zosia sobrevivió, pero en la frente le quedó una manchita gris, como la huella de un dedo sucio.}}
- dziad_1:
    Llamó a la puerta en Nochebuena, apenas habían partido la oblea de Navidad: encorvado, harapiento, con la zanfoña a la espalda y los ojos blancos como la leche. {wpuscil_dziada:Comió poco, cantó una canción sobre las almas que esa noche regresan a sus casas y se fue en la oscuridad, aunque nadie vio hacia dónde. Al salir, le susurró a Jaromir: «Hueles a bosque, muchacho.»|No lo dejaron entrar. Se alejó hacia el bosque y desapareció en la ventisca a mitad del campo.} En Nochebuena no se le cierra la puerta a ningún pordiosero, porque nunca se sabe quién ha venido – a veces es el alma de alguien de la familia que vuelve disfrazada para ver si todavía la recuerdan.
- ogniki_1:
    Lucecitas pálidas sobre las ciénagas junto a la pasarela, que se encienden al anochecer y se ríen por lo bajo como quien ha recibido un regalo. Las comadres dicen que son los que quemaron a la herbolaria del lago – se metieron en el pantano y todavía hoy alumbran allí de noche. Quien siga a una de esas lucecitas ya no vuelve.
- uboze_1:
    Un viejecito diminuto, no más grande que un gato, con un chaquetón remendado y un gorrito rojo, y una barba cana enrollada alrededor de sus patitas de gallina. Vive detrás de la estufa en las viejas casas de labranza. A quien da de comer al duende del hogar, le prospera la hacienda; quien lo echa, atrae la pobreza sobre su techo. Llega con el primer amo de la casa y se queda mientras la choza siga en pie. Cuando arde, se va con el humo y ya no vuelve.
- uboze_2:
    {uboze == nakarmione:Lo agradece en silencio: en la despensa no se crían ratones, en el cántaro siempre hay más leche de la que se vertió{rozdzial_dziewiaty:, y en el invierno de hambre la harina no parece acabarse nunca}. Solo que lo que sobra en un hogar falta en otro – en casa de Staś, esos mismos meses, se cortaba la leche.|{uboze == przegnane:Desde que lo echaron, la casa parecía no quererlos: las gallinas dejaron de poner y en la despensa a cada rato se estropeaba algo.|Nadie volvió a verlo. Solo a veces, por la mañana, la ceniza del poyo de la estufa aparecía revuelta, como si una gallina hubiera buscado sitio para pasar la noche.}}
- poludnica_1:
    Una mujer alta y blanca, con una camisa larga. A mediodía en punto acude a los campos. No toca el suelo con los pies, tiene los ojos blancos, sin pupilas, y una hoz en la mano. A quien trabaja en lo peor de la canícula le plantea acertijos – por cada error, un tajo de hoz.{ not figurka_u_staruchy: Dicen que en otro tiempo fue la mejor segadora de la comarca: apostó con los mozos de labranza que segaría ella sola un campo entero antes de las doce, y no salió de él en lo más fuerte del calor. La encontraron al anochecer con la hoz en la mano y espigas en el pelo.}{ poludnica_uklon: Antes de la respuesta del libro inclinó la cabeza.}{ poludnica_darowala: A Jaromir le perdonó una equivocación, porque no retrocedió ante la hoz.}{ blizna_sierpa: A Jaromir le quedó de ella una cicatriz en forma de media luna.}
- rusalki_1:
    Almas de muchachas ahogadas. En Pentecostés salen del lago y bailan a la luz de la luna – jóvenes, pálidas, con camisas de lino mojadas, coronas de junco y los ojos enteramente negros, sin nada de blanco. Atraen con un canto sin palabras y arrastran a las aguas hondas a todo el que se deja tentar. Solo se muestran desde Pentecostés hasta San Juan; el resto del año duermen en el limo del lecho. Una de ellas era Kaśka, la hija de los Wójcik.{ratunek_franka == piolunem: Temen al ajenjo más que al fuego – pero a la que se lo dio no la olvidan. El agua no devolvió la corona de Hanka.|{ratunek_franka == krzyzem: La cruz no las quema – «estábamos aquí antes que ella». Soltaron a Franek, pero el agua no se fue a dormir con hambre: por la mañana encontraron entre los juncos a Bartek, el hijo del molinero.| Kaśka soltó a Franek cuando Hanka la llamó por su nombre. En la mejilla de Jaromir, donde ella lo había tocado, quedó una mancha blanca y fría.}}
- licho_1:
    Una mendiga pequeña y encorvada, que apenas le llega a la cintura a un adulto, envuelta en tantos harapos que no se sabe dónde acaba uno y empieza otro. Tiene un solo ojo, con un cerco rojo; en el sitio del otro hay piel lisa y gris. Su sombra es demasiado larga y cae hacia el sol, al lado contrario que todas las demás. Quien la ve al pie de su cerca sufre al día siguiente una desgracia.
- licho_2:
    La abuela de Hanka lo llamó por su nombre: el Licho que no duerme. Va de choza en choza y se asienta allí donde está a gusto – donde se tala el bosque y las cosas santas se cambian de un rincón a otro. No entra en ninguna casa mientras nadie lo llame. Si lo echan, pasa al vecino; si lo agasajan, se marcha saciado. La abuela de Hanka oyó de su madre que el otro ojo se quedó en el bosque, porque el Licho son los ojos que el Señor del Bosque envía entre la gente – ella misma no sabe si es verdad.
- licho_3:
    {licho_noc == ugoszczone:Cuando le dieron tocino, se fue por el camino del aserradero – y por la mañana a Urbaniak se le rompió la sierra y en el establo se le murió el mejor caballo.|{licho_noc == odpedzone:Echado con un tizón, corrió hacia la fragua – y esa noche la fragua del herrero ardió.|Hasta el alba estuvo arañando la puerta y tentando con olor a pan, y la tabla en la que llamaba se pudrió en una sola noche. Nadie le respondió.}} En octubre se marchó por el camino del pie del bosque y se metió entre los árboles, como si alguien lo hubiera llamado.
- tropy_1:
    La mañana después de la boda todo el patio estaba blanco de escarcha – solo bajo la ventana del cuarto nuevo la escarcha se había derretido en un óvalo ancho, hasta la tierra desnuda, como si algo grande y caliente hubiera estado tendido allí la noche entera, hecho un ovillo. La tierra aún estaba tibia. Hanka cubrió el sitio con ceniza y les pidió que no se lo contaran a nadie.
- mamuny_1:
    Viven junto al lago. Ellas mismas paren hijos feos y enfermizos, así que roban a la gente los sanos – mientras el niño no está bautizado – y dejan en la cuna uno de los suyos. En verano, por las noches, se las oye golpear la ropa contra las piedras con palas de lavar. La abuela de Hanka dice que lavan mortajas para los que morirán en la aldea antes de la próxima primavera – y sobre cada mortaja pronuncian a voces el nombre de alguien. Más vale no escucharlas a escondidas. Temen el rojo, el hierro y la vela de la Candelaria.
- mamuny_2:
    Altas y jorobadas, con cabezas demasiado grandes para sus cuellos endebles y cabellos como ramitas secas, vestidas con harapos de musgo y corteza. Su tacto es frío y húmedo.{noc_mamun == zaslonil: Cuando no consiguen al niño, le quitan la leche a la madre.} Saben canturrear de tal modo que el que duerme quita él solo la protección de la cuna.{podmiana:{uklad_z_mamunami == oddany_skarb: Por Marysia se llevaron el tesoro de niño de Jaromir y lo arrojaron al lago.|{uklad_z_mamunami == dar_swietojanski: Por Marysia, Jaromir les prometió cada año, la Noche de San Juan, pan y una corona de flores sobre la piedra de la orilla. Si lo olvida, vendrán por lo suyo.|{uklad_z_mamunami == oddane_lata: Por Marysia le quitaron a Jaromir años de vida – se le encanecieron las sienes como a un viejo.| El cambio solo lo deshizo el agua hervida en cáscaras de huevo.}}}}{sposob_na_odmienca == chrzest_odmienca: No olvidarán que a su hijo lo hicieron astillas.}
- odmieniec_1:
    Criatura de las mamunas, dejada en la cuna en lugar de una humana. De lejos parece la otra, pero pesa más y está fría, tiene la piel como corteza y los ojos más oscuros que los de cualquier niño. No llora: come sin parar, y cuando cree que nadie la mira, sonríe como una vieja. El cambio solo puede deshacerse durante siete días.
- tropy_2:
    Un macho enorme, mayor que cualquier lobo de la comarca, tan flaco que bajo el pelaje blanco se le ven todas las costillas. Guía a la manada, pero él no se acerca a los establos.{noc_wilkow == bronil_obory: Con un solo aullido es capaz de apartarla del establo.} En la pata delantera tiene un anillo de pelo gastado y más ralo, en el mismo sitio donde Franek tenía tres marcas de zarpazo. Tiene ojos humanos: claros, tristes, con la pupila bien marcada. Antek dice que no los confundiría con ningunos otros.{oblawa_wilk == wydal_wilka: Recibió una bala del guardabosques Pawlik y escapó al bosque dejando un reguero de sangre en la nieve. Desde entonces su aullido suena distinto.| Sobrevivió a la batida. A la mañana siguiente, sobre el tocón junto a la cerca, apareció una liebre con el cuello mordido.}{noc_na_kladce != (): La noche en que Józek caminó dormido hasta la pasarela, algo blanco cruzó como una exhalación por el dique, más allá de las ciénagas – y el ahogado volvió la testa al oír su aullido.}
- pan_lasu_5:
    El monte joven, que en unos pocos años avanzó desde el bosque hasta las mismas cercas, se volvió escondrijo de lobos. Los viejos dicen que el bosque no crece hacia la aldea sin motivo: primero llegan los árboles, luego los animales, y al final el que los gobierna.
- strzyga_1:
    {sprawdzil_zeby:El viejo Wójcik tenía dos hileras de dientes – una detrás de otra, menudos y afilados como los de un lucio.|La gente decía que el viejo Wójcik había nacido con dientes.} Quien nace con dientes o con dos corazones tiene dos almas. Al morir, una va a Dios y la otra se queda en el cuerpo y no le da paz: no se enfría, las mejillas siguen sonrosadas, los párpados no acaban de cerrarse. Hacia la medianoche, un muerto así se levanta. Antes lo enterraban boca abajo, con una hoz sobre la garganta y semillas de amapola en el ataúd – para que no pudiera darse la vuelta, para que se hiriera si intentaba alzarse y para que la amapola lo adormeciera hasta el Juicio.
- strzyga_2:
    {polnoc_strzygi == na_twarz:Vuelto boca abajo contra la tabla, se debatió hasta el primer canto del gallo y mordió a Antek en la mano. La herida tardó mucho en cerrarse.|{polnoc_strzygi == sierp_przy_szyi:Cuando la hoz le tocó el cuello, brotó de él una sangre negra y espesa.|Solo lo calmó la vela de la Candelaria entre las manos; entonces pronunció el nombre de su hija.}} {pochowek_wojcika == pochowany_za_murem:Lo enterraron fuera de la tapia del cementerio, boca abajo, y no volvió más.|{pochowek_wojcika == pochowany_z_makiem:Descansó en tierra bendita con la amapola de Hanka sobre el pecho y no volvió más. Por esa amapola, el cura la apartó de la comunión hasta Pascua.|{trzy_noce == rozkopany_grob:Volvió a las tres noches y se quedó bajo la ventana, junto a la cuna de Marysia, hasta que Jaromir y Antek abrieron su tumba.|Volvió a las tres noches. Se apartó de la ventana tras la cual dormía Marysia – pero esa mañana encontraron muerta a la señora Wójcik.}}}
- mamuny_3:
    Sobre la colada gritan el nombre de aquellos para quienes lavan las mortajas. La señora Wójcik las espió en junio desde los juncos y oyó un solo nombre. En noviembre murió su marido.{trzy_noce == czuwanie_przy_kolysce: Se equivocó – o no quiso oír el segundo.}
- starzec_3:
    En Nochebuena, Hanka dejó en la mesa un cubierto para el caminante. Por la mañana, en el plato, en el sitio de la oblea, había un puñado de musgo fresco y verde – en pleno invierno.
- ogniki_2:
    Cuando la figurilla {przeszukal_zgliszcza && not figurka_w_bagnie:volvió a Zapadlina|salió a la superficie}, los fuegos fatuos empezaron a acercarse a las cercas – cada noche un poco más, como si esperaran a que alguien abriera la puerta.{los_figurki == figurka_w_skrzyni: Siguen ardiendo, pero al otro lado de la pasarela, lejos de los vallados.}{los_figurki == figurka_pod_kapliczka || los_figurki == figurka_u_jagny || los_figurki == figurka_u_stwora: Se apagaron todos a la vez la misma noche en que la figurilla dejó de llamar.}
- stwor_3:
    Volvió a las ciénagas junto con la figurilla. Todos los niños de la aldea tuvieron con él el mismo sueño: está bajo la pasarela, en el agua negra, vuelca pucheros de barro, mira debajo de cada uno y luego pregunta: «¿Dónde está mi muñeca?»{figurka_u_staruchy: En el brazo tiene una cicatriz honda y vieja del hacha del abuelo Maciek.}{noc_na_kladce == siekiera_na_kladce: Jaromir lo hirió con el hacha, y él le abrió el hombro de un zarpazo.}{noc_na_kladce == figurka_dla_stwora: Cuando recibió la figurilla, soltó al muchacho y la apretó contra el pecho como una madre a su niño. Al hundirse bajo el agua, se llevó consigo la vieja pasarela.}{noc_na_kladce == latarnia_na_wodzie: Teme al fuego más que al hierro – huyó del aceite en llamas.}
- zielarka_3:
    {zaufal_jagnie:Jagna dice que la figurilla es una muñeca: la herbolaria la talló de una raíz sacada del pantano y le dio el nombre del que vive en el agua. Quien tiene la muñeca, a ese lo sigue él. Al fuego no le teme – solo la tierra bendita la hará callar.{odrzucil_figurke: Una vez rechazada, ya no se le puede dar a nadie.}|La figurilla chamuscada del lago {przeszukal_zgliszcza && not figurka_w_bagnie:volvió a Zapadlina|salió a la superficie} después de más de sesenta años – y con ella regresaron los sueños.}{los_figurki == figurka_pod_kapliczka: Ahora está bajo el humilladero, y dónde exactamente solo lo sabe Jaromir.}{los_figurki == figurka_u_jagny: Jagna se la llevó consigo, tan lejos que el ahogado no pudiera oírla.}{los_figurki == figurka_w_skrzyni: El fuego no pudo con ella. Está en un arcón bajo la cama, rodeado con una cadena.}{los_figurki == figurka_u_stwora: Ahora la tiene el que vive bajo la pasarela.}
- pan_lasu_6:
    La noche en que ardieron los humilladeros, el bosque avanzó hacia la aldea todo un campo. Los árboles que por la mañana se alzaban donde antes había rastrojo parecían crecer allí desde hacía años. Las estacas que marcaban el camino de Urbaniak echaban brotes, y de los tocones de la trocha salían cada amanecer ramitas nuevas.{droga_do_boru: El camino llegó hasta los primeros pinos grandes y allí se cortó – nadie quiso seguir talando.}{szarwark && not droga_do_boru && rozdzial_czternasty.pierwszy_snieg_czternasty: El monte joven se detuvo en el límite de los humilladeros quemados y ya no creció más.}
- uboze_3:
    Despertó al amo a tirones de pelo cuando el fuego avanzaba desde el bosque. Tenía tanto miedo que le temblaba la barba. El duende del hogar recuerda quién le dio de comer.
- zytnia_baba_1:
    Baja, encorvada, ancha de caderas como una gavilla, con la cara arrugada como la costra tostada del pan y el pelo hecho de espigas. Huele a grano caliente. Se agazapa entre la mies y agita ante los niños, como un sonajero, lo que es suyo.
- zytnia_baba_2:
    Dice el viejo Staś que la vieja del centeno atrapa a los niños en la mies y allí los deja – pero a Marysia no la dejó. La guio a través del campo hasta el pie del bosque, como si se la llevara a alguien.{pani_w_zbozu_noc == gonil_babe: Quien la persigue da vueltas por el campo hasta el alba, y en las heridas de los tallos se le quedan aristas que se le clavan cada vez más hondo.}{pani_w_zbozu_noc == za_spiewem: Canta con la voz de la madre – y a la madre luego se le queda la voz partida en dos.}{pani_w_zbozu_noc == z_pochodniami: Cuando la busca la aldea entera, huye – pero deja tras de sí el campo pisoteado.}
- pan_lasu_7:
    {rada_przed_borem == rada_ksiedza:En los libros parroquiales está escrito que, una vez cada muchos años, desaparece un niño de alguna aldea al pie del bosque, siempre la Noche de San Juan. Los que vuelven no recuerdan nada.|{rada_przed_borem == rada_jagny:Jagna dice que el bosque se lleva a los niños cuando su señor despierta – no los mata, solo los retiene.|El planetnik dice que sobre el bosque las nubes se apartan y que, desde que hay memoria, no ha caído allí ni una gota de lluvia.}}
- planetnik_1:
    Un viejo alto y harapiento, con la barba revuelta por el viento y un saco a la espalda. Anda por delante de la tormenta y lleva las nubes atadas con una soga. Quien le dé pan no verá reventar las nubes sobre su campo – y quien le pregunte algo lo pagará con la cosecha.
- tropy_3:
    {oblawa_wilk == wydal_wilka:La herida de bala se le curó mal. En el bosque siguió a Jaromir durante toda la noche – y no para protegerlo.|Encontró a Jaromir en el bosque, cuando este fue tras la voz de Franek.{przejscie_bagna == za_wilkiem: Lo guio a través del pantano. Cuando Jaromir le tendió la mano y lo llamó Franek, lanzó una dentellada – de advertencia, pero hasta hacer sangre.}}
- blednice_1:
    Pálidas bolas de luz sobre el pantano, en lo hondo del bosque, del tamaño de la cabeza de un niño. En cada bola hay acurrucada una criaturita con ojos como granos negros. No son los fuegos fatuos de junto a la aldea: no parpadean de lejos, sino que se acercan flotando, pían como polluelos e invitan a ir con ellas.{przejscie_bagna == za_blednicami: Hacen dar vueltas alrededor de una misma mata hasta el alba y se quedan con lo que uno trae en el morral.}{przejscie_bagna == krag_z_soli: No cruzan la sal, aunque tengan la cara de alguien muy querido.}{przejscie_bagna == za_wilkiem: Se mantienen lejos del lobo blanco.}{przejscie_bagna == z_rozancem: Con la oración se apagan aullando – pero se cobran algo a cambio.}{przejscie_bagna == z_krzesiwem: Temen a las chispas.}
- starzec_4:
    En el corazón del bosque se quitó el sombrero.
- pan_lasu_8:
    En el corazón del bosque, donde nunca llueve, se alza un roble más grande de lo que fue el Viejo Roble. Allí el viejo del sombrero de musgo se quitó el sombrero. Debajo había corteza. De la frente le brotó una cornamenta, y él mismo creció por encima de las copas de los árboles y no proyectaba sombra. Había esperado setenta años a que alguien del linaje de Maciek viniera a él por su propio pie.
- pan_lasu_9:
    El valle fue suyo en otro tiempo, desde la cresta hasta el lago. Se retiró cuando el primero de los hombres llegó al Viejo Roble sin hacha y dijo: no iremos más allá. A cambio, el Señor del Bosque se lleva un niño por generación, la Noche de San Juan, y lo devuelve antes de que olvide su casa. El Roble era la frontera, el pacto la cerca, y los humilladeros los clavos.{chata_macka == przy_lesie: Maciek, que no sabía nada, levantó su casa del lado del bosque y la primera mañana clavó el hacha en un abeto. Con él empezó la cuenta.} Fue él mismo quien se llevó a Marysia: él mandó a buscarla a la vieja del centeno. Si para esconderla de los del agua o para sí, eso no lo dijo. Desde que cayó la cerca, la maldición despierta a sus siervos y los arrastra hacia las casas. Esta vez hará pagar por ella, porque el pacto lo rompió la aldea, no él.{pytanie_do_leszego == kim_jest: Estaba en el valle antes de que bajaran a él los primeros hombres. Cuenta los árboles viejos talados más allá de la frontera y a las personas que se le entregaron por su propia voluntad. Cuando llegue a mil, se dormirá para siempre, y otro contará por él. También él vino un día solo al bosque.}{pytanie_do_leszego == gdzie_marysia: Sus hijos no tienen sombra.}
- zielarka_4:
    La visitaban los del agua – y el Señor del Bosque. Una vez le mostró en el agua una cabaña en llamas, la suya propia, pero ella no le creyó. Ardiendo, maldijo la aldea con manos ajenas: «Los huesos de vuestros hijos serán quebrados, y su sangre, bebida.» Mientras el Viejo Roble estuvo en pie, la palabra pudo más que el maleficio.{pytanie_do_leszego == o_klatwe: Levantará la maldición quien devuelva al Señor del Bosque su frontera, o quien ocupe su lugar. O el fuego que la empezó – pero tras él no quedarán ni el bosque ni la aldea.}{zastaw_u_leszego == zastaw_krzesiwo: El eslabón que Maciek encontró en sus cenizas lleva dentro la misma brasa que la quemó.}
- tropy_4:
    Trajo hasta el roble el otro zueco de Marysia – el que agitaba la vieja del centeno. {wilk_przy_jaromirze:Lo dejó a los pies de Jaromir y pasó toda la noche tumbado a su lado.|Se lo entregó al Señor del Bosque y está sentado junto a él, indiferente como los árboles.}{wilk_pod_debem != nie_ruszal_sie: Cada palabra humana que recuerda le quita un pedazo de su vida de lobo.}
- dzieci_1:
    Al alba salen de una grieta del roble y se sientan en corro: más de una docena de niñas con una misma cara, con las mismas camisitas y cintas nuevas en el pelo. Sonríen formales y pacientes, hablan con una sola voz, huelen a madera podrida. Cuando el padre elige, las demás se deshacen en hojas secas y corteza.{znak_rozpoznania == po_melodii: Cantan la melodía hasta el final.}{znak_rozpoznania == po_buzi || znak_rozpoznania == po_skarbie: Todo lo que la niña tiene a la izquierda, ellas lo tienen a la derecha{skarb_dla_corki:, y lo que lleva al cuello, ellas lo tienen liso y nuevo}.}{pytanie_do_leszego == gdzie_marysia: No proyectan sombra y nunca lloran.}
- pan_lasu_10:
    {marysia_odzyskana:Cumplió su palabra: quien reconoce a su hijo se lo lleva y nadie lo detiene.|Cumplió su palabra: quien elige mal se lleva a casa lo que eligió – y lo entierra como suyo.} Anunció que el Día de los Difuntos vendría a la aldea a ajustar cuentas hasta el final.
- tropy_5:
    Ayudó a encontrar a la niña verdadera, aunque los siervos del Señor del Bosque no ayudan a los hombres. Se quedó junto al roble, con la mano del Señor del Bosque en la nuca.
- mamuny_4:
    A finales de agosto lavaban una mortaja pequeña sobre las piedras planas del otro lado del lago. El Día de los Difuntos la trajeron en el séquito del Señor del Bosque y gritaban sobre ella: «Marysia». Ellas no eligen – lavan lo que les trae el agua. Mientras la mortaja no se seque antes del alba, aún se puede borrar el nombre, pero alguien tiene que pagarlo.{cena_caluna == cena_umowa: La ofrenda de San Juan pesará ahora también sobre Marysia, hasta el fin de sus días.}
- tropy_6:
    La noche de Difuntos desgarró la mortaja de las mamunas con el nombre de Marysia, y ellas lo arrastraron bajo el agua. Antek lo reconoció por el anillo de pelo gastado en la pata delantera.
- dzieci_2:
    La que uno elige muere al borde del bosque.{cialo_kopii == spalone: En el fuego crepita como leña resinosa, y el humo huele a pinocha.}{cialo_kopii == oddane_jagnie: Jagna dice que es madera, y sabe qué se hace con algo así.}{cialo_kopii == pochowane || cialo_kopii == pod_mlodnikiem: Yace bajo tierra como una niña, aunque no huele a nada.}
- pan_lasu_11:
    Cumple su palabra hasta la última tilde – y exige lo mismo a los demás. Antes del Día de los Difuntos la niebla del bosque se acerca cada tarde hasta las cercas, y el primero de noviembre, al volver del cementerio de Bukowiec, se apagaron de un soplo todas las velas de la Candelaria{not marysia_odzyskana: salvo la que llevaba Hanka}, aunque el aire estaba quieto.
- pan_lasu_12:
    {ostatnia_noc == zwrocil_granice:El Día de los Difuntos vino a la aldea con su séquito y recibió de vuelta su frontera: el hacha de Maciek clavada en el tocón del Viejo Roble y la palabra de toda la aldea. Palabra por palabra.{zoladz_zasadzony: Junto al tocón brotó la bellota del Viejo Roble, plantada por mano humana. Mientras el roble crezca, el Señor del Bosque ya no se lleva niños.}|{ostatnia_noc == zajal_miejsce:Le dio a Jaromir el sombrero de musgo y se tendió al pie del tocón del Viejo Roble. «Ahora cuenta tú.»|Ardió junto con el bosque. Lo último que dijo fue: «Contado está.»}}
- zielarka_5:
    {ostatnia_noc == zwrocil_granice:Los siervos del Señor del Bosque volvieron a su sitio; su maldición queda otra vez tras la cerca.|{ostatnia_noc == zajal_miejsce:Su maldición ataba las manos del antiguo Señor del Bosque. Las del nuevo no las conocía.|Su maldición empezó con el fuego y con el fuego terminó.}}
- tropy_7:
    {ostatnia_noc == zwrocil_granice:Se fue al bosque con el séquito.|{ostatnia_noc == zajal_miejsce:El nuevo Señor del Bosque lo dejó libre.|{wilk_przy_mnie():Estuvo junto a Jaromir mientras ardía el bosque.|Saltó al fuego tras su señor.}}}
- dzieci_3:
    El Día de los Difuntos iban en el séquito del Señor del Bosque, cogidos de la mano. Ninguno proyectaba sombra.{ostatnia_noc == skrzesal_ogien: Su canturreo se cortó a la mitad en el bosque en llamas y no volvió a empezar.}
}
