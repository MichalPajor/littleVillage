// ------------------------------------------------------------
//  Rozdział dziewiętnasty – Świt. Dwie drogi po rozdziale osiemnastym.
//  [Marysia żyje] powrót o świcie, dług u Jagny (wstążka, drewniak albo odmowa),
//  lato i żniwa, pod koniec sierpnia kijanki nad jeziorem – mamuny piorą mały całun
//  (cenę za zmycie imienia wybiera się w r20, w noc Zaduszek). Jesień, mgła pod płotami,
//  gromnice gasną.
//  [zły wybór] Hanka poznaje po zapachu, co Jaromir przyniósł; ciało pochowane,
//  oddane Jagnie, spalone albo zakopane pod młodnikiem; trumienka z bzu, wianki,
//  kołysanka; jesień – „Przyjdzie?”; paliła się tylko gromnica Hanki.
// ------------------------------------------------------------

=== rozdzial_dziewietnasty ===
{ marysia_odzyskana:
    -> powrot_z_marysia
- else:
    -> powrot_bez_niej
}

= powrot_z_marysia
# tlo: laka_swit
# rozdzial: Capítulo decimonoveno
# tytul: El alba
El sol asomó por detrás del bosque justo cuando Jaromir llegaba al lindero del monte joven. En las hileras de hierba segada brilló el rocío con tal fuerza que le dolieron los ojos, y en el sembrado cantó una alondra – el primer pájaro que oía en tres días.
{ ekwipunek ? szczenie_psa:
    El perro se le adelantó y echó a correr hacia la aldea con tal alboroto de ladridos que le respondieron todos los corrales de Zapadlina. # pokaz: pies
}
{ wilk_przy_jaromirze && znak_rozpoznania != po_wilku:
    El lobo blanco los acompañó hasta los últimos abetos y allí se sentó. Cuando Jaromir se volvió al cabo de un momento, ya no estaba. # pokaz: wilk
}
Hanka llegó corriendo desde la cabaña, con la nana cortada a media palabra, descalza, por la hierba mojada, con los brazos tendidos hacia delante – como si temiera que, si los bajaba, iba a despertarse junto a una tea apagada. No gritó.{ pani_w_zbozu_noc == za_spiewem: No podía. De la garganta solo le salía un silbido seco, entrecortado.} Los alcanzó a medio camino y los abrazó a los dos, con todas sus fuerzas, hasta que Marysia chilló indignada. Hundió la cara en el pelo de su hija y durante un rato no hizo más que respirar; luego se echó a reír y a llorar a la vez, y besaba a la pequeña en los pies sucios, en las manos, en la cabeza. Solo entonces miró a Jaromir, sus mejillas arañadas por las ramas, y se las tocó con los dedos, con cuidado, como si comprobara que era él. # pokaz: uscisk
Jaromir sintió que las piernas ya no lo sostenían. Se sentó en la hierba. Así se quedaron los tres, mientras la gente de los rastrillos seguía de pie entre las hileras segadas y nadie se movía.
Antek fue el primero en acercarse. No dijo nada – se quitó el chaquetón y tapó con él a la pequeña.{ zastaw_u_leszego == zastaw_cien: Solo a mediodía, cuando salieron al patio, Hanka miró a los pies de su marido y no pudo apartar la vista del lugar donde debería estar su sombra. No preguntó. Jaromir se lo agradeció más que ninguna otra cosa.} # pokaz: antek # dalej
{ dlug_u_jagny:
    -> dlug_jagny_dobry
}
-> lato_po_powrocie

= dlug_jagny_dobry
# tlo: wies_sianokosy
Jagna esperaba junto a la cerca, al lado de su carro. Cuando Jaromir pasó por delante con Marysia en brazos, alzó hacia él el ojo sano. # pokaz: jagna
«La primera cosa que saques del bosque», le recordó en voz baja. «Ese era el precio.»
Hanka se detuvo a medio paso. Marysia se abrazó con fuerza al cuello de Jaromir.
# pytanie: ¿Qué le dará Jaromir a Jagna?
*   [La cinta de la muñeca.]
    ~ dlug_jagny = oddana_wstazka
    Jaromir alzó la mano con el lazo rojo en la muñeca. «Iba delante mientras yo apartaba las ramas», dijo. «Salió del bosque antes de que yo sacara a mi hija.»
    ~ ekwipunek -= wstazka_marysi
    Jagna lo observó sin decir palabra, y luego se le curvaron las comisuras de la boca. Le deslizó la cinta de la muñeca y se la guardó en el seno. «Lo que ha estado en el bosque y ha vuelto me servirá para mi oficio», dijo. # tobolek
    Hanka apretó los labios. Aquella cinta se la había trenzado a Marysia en el pelo la víspera de San Juan. # dalej
*   [El zueco que llevaba bajo la camisa.]
    ~ dlug_jagny = oddany_drewniak
    «Lo he traído junto al corazón», dijo Jaromir. «Por delante de ella.» Metió la mano bajo el chaquetón y le tendió a Jagna un zapatito rojo{ drugi_drewniak: – uno de los dos}.
    { drugi_drewniak:
        ~ drugi_drewniak = false
    - else:
        ~ ekwipunek -= bucik_marysi
    }
    Jagna le dio vueltas entre los dedos y olió el fieltro de dentro. «Ha estado en el centeno con aquella y ha estado en el bosque», masculló. «Sea.» Lo echó en la cesta de las hierbas. # tobolek
    Marysia siguió el zueco con la mirada, y cuando el carro arrancó se echó a llorar como no había llorado ni siquiera bajo el roble. Desde aquel día no dejó que le pusieran ningún zapato – pataleaba y chillaba hasta que Hanka acabó cediendo. La pequeña anduvo descalza hasta las primeras nieves. # dalej
*   [Negarse – una criatura no es una cosa.]
    ~ dlug_jagny = dlug_odmowiony
    «No la tendrás», dijo Jaromir. «Ni hoy ni nunca.»
    Jagna no alzó la voz. «No he venido por ella», respondió. «Vengo por lo que se me debe.» Enganchó el caballo. «Una deuda no se pudre, Jaromir. Esperará.»
    Se alejó despacio. Aquella noche Hanka colgó sobre el lecho de la pequeña todo lo que tenía: una crucecita, una corona de hierbas, un cuchillito. No durmió hasta el alba. # dalej
-   -> lato_po_powrocie

= lato_po_powrocie
# tlo: zniwa
Marysia no recordaba nada.{ rada_przed_borem == rada_ksiedza: El cura de Bukowiec había tenido razón.} Cuando le preguntaban dónde había estado, los miraba extrañada y decía que había dormido. Le daba miedo la oscuridad – desde entonces ardía todas las noches una tea en la ventana, aunque ya no esperaban a nadie – y nunca más volvió a tararear su melodía. Hanka aguzaba el oído cada atardecer junto al lecho de la pequeña, pero en vano.
La cosecha fue tardía y penosa. El calor pesaba sobre los campos, en el aire flotaba el polvo de las espigas y el olor de la paja recalentada, y las guadañas resonaban del alba al anochecer.{ pole_zbite_gradem: Jaromir, que no tenía nada que segar en lo suyo, se ajustaba como jornalero con los de Staś y con los Kowalczyk, por una gavilla de cada diez.}{ zastaw_u_leszego == zastaw_siekiera: Partía la leña con un hacha prestada por su suegro – el mango era demasiado liso, demasiado grueso, no era el suyo.}{ zastaw_u_leszego == zastaw_krzesiwo: Encendía el fuego con las brasas de los vecinos; su propio eslabón ya no lo tenía.}
{ pies_pobiegl_sam:
    ~ ekwipunek += szczenie_psa
    Al cabo de una semana, una noche de lluvia, un perro gimió ante la puerta. Estaba flaco como un palo, con las patas heridas hasta sangrar. Jaromir lo dejó entrar sin una palabra y el perro durmió dos días seguidos bajo el banco de Marysia. # tobolek
}
{ znak_rozpoznania == po_wilku:
    Por las tardes Antek se plantaba al borde del campo y escuchaba. Desde aquella mañana ya no llegaba del bosque ningún aullido.
}
Pero el agua no los dejaba en paz. Marysia no quería acercarse al lago, y cuando Hanka lavaba en el arroyo, la pequeña se escondía tras su falda, se ponía rígida de pies a cabeza y no apartaba los ojos de la corriente.{ dar_pominiety: En julio Hanka encontró en el umbral una corona de ruda mojada – igual que la que Jaromir llevaba cada año a las piedras del otro lado del lago. Estaba en un charco, aunque no llovía desde hacía una semana.} # dalej
-> kijanki

= kijanki
# tlo: calun_noc
A finales de agosto, la noche en que se cumplían tres años desde que Marysia vino al mundo, a Jaromir lo despertó un golpeteo. Acompasado, mojado, venía del lago – una pala de lavar contra la piedra. Recordaba ese sonido de cuando Marysia aún estaba en la cuna.
Miró el banco junto al horno. La pequeña dormía, hecha un ovillo, con el puñito bajo la mejilla. Hanka respiraba tranquila.
Salió sin hacer ruido, descalzo, rodeó el lago por la orilla y se agazapó entre los juncos del otro lado, junto a las piedras planas. Sobre ellas estaban arrodilladas las mamunas – jorobadas, mojadas, con harapos de musgo – y lavaban en el agua algo pequeño y claro. Justo del tamaño de un niño. No pronunciaban ningún nombre. Cuando susurraron los juncos, la más vieja ni siquiera levantó la cabeza. # pokaz: mamuny
{ dar_pominiety:
    «Una vez te olvidaste, amo», graznó con la vista en el lago. «No lavaremos más despacio.»
- else:
    «Hoy no, amo», graznó con la vista en el lago. «Lavamos lo que nos trae el agua.»
}
«El Día de los Difuntos traeremos lo que esté lavado», añadió otra. # dalej
-> jesien_przed_zaduszkami

= jesien_przed_zaduszkami
# tlo: jesien_zaduszki
~ zapiski += pan_lasu_11
El otoño llegó pronto. La trilla en los graneros, la siembra del centeno de invierno, el agramado del lino – la aldea hacía lo suyo como cada año, y Jaromir se agarraba a cualquier faena con tal de no quedarse a solas con sus pensamientos. Marysia crecía. En octubre, por primera vez desde su regreso, se rió en voz alta a la mesa, y Hanka salió al zaguán y tardó mucho en volver.
Jaromir no le contó a Hanka lo que había visto en las piedras del otro lado del lago. Pero cada noche, antes de dormirse, pensaba en cuánto faltaba aún para Difuntos, y cada vez le parecía que menos que la noche anterior.
Cuanto más se acercaba el Día de los Difuntos, más silencio había en Zapadlina. La gente volvía de los campos antes del anochecer y atrancaba las puertas, y desde el bosque, cada tarde, subía por los prados una niebla pesada y húmeda, hasta las mismas cercas. Jaromir recordaba cada palabra: «El Día de los Difuntos iré a la aldea. Entonces ajustaremos cuentas hasta el final.» # pokaz: mgla
El primero de noviembre la aldea fue al cementerio de Bukowiec. Aquel año, en lugar de candiles, la gente llevaba desde sus casas velas de la Candelaria. En el camino de vuelta se apagaron de un solo soplo, todas, aunque el aire estaba quieto. # pokaz: zgasly # dalej
-> rozdzial_dziewietnasty_ciag_dalszy

= powrot_bez_niej
# tlo: laka_swit
# rozdzial: Capítulo decimonoveno
# tytul: El alba
El sol asomó por detrás del bosque justo cuando Jaromir llegaba al lindero del monte joven. En las hileras de hierba segada brilló el rocío, y en el sembrado cantó una alondra. Jaromir no la oyó en absoluto.
Hanka llegó corriendo desde la cabaña, todavía con la nana en los labios, descalza, por la hierba mojada, con los brazos tendidos hacia delante. A medio camino aflojó el paso. Luego se detuvo.
No gritó.{ pani_w_zbozu_noc == za_spiewem: No podía.} Tomó a la criatura de los brazos de Jaromir, con cuidado, como se toma a un niño dormido, y hundió la cara en su pelito, como hacía cada noche. Lo olió largo rato. El pelo no olía a nada – ni a leche, ni a humo, ni a ella. Comprendió. # pokaz: kolysze
Se sentó con ella en la hierba y empezó a mecerla. La gente de los rastrillos seguía de pie entre las hileras segadas y nadie se movía. Antek fue el primero en acercarse. Se quitó la gorra. # pokaz: antek
{ wilk_przy_jaromirze && znak_rozpoznania != po_wilku:
    El lobo blanco, que había seguido a Jaromir por todo el monte joven, se quedó junto a los últimos abetos. Cuando alguien miró hacia allí, ya no estaba. # pokaz: wilk
}
{ ekwipunek ? szczenie_psa:
    El perro se tumbó a los pies de Hanka y gimoteó, bajito, sin parar, hasta que alguien se lo llevó a rastras. # pokaz: pies
}
{ zastaw_u_leszego == zastaw_cien:
    Nadie se dio cuenta de que Jaromir no proyectaba sombra. Nadie lo miraba.
}
{ dlug_u_jagny:
    Jagna se acercó desde la cerca y se inclinó sobre la criatura que Hanka tenía en brazos. Observó los piececitos rígidos y la sonrisa modosa, cuajada. Luego se enderezó y le dijo a Jaromir en voz baja, para que Hanka no la oyera: «Esa no es tu hija. Es madera. Salió del bosque justo detrás de ti. Puedo llevármela en lugar de la deuda. Sé lo que se hace con algo así.» # pokaz: jagna
- else:
    El viejo Staś llegó cojeando con su cayado, miró a la criatura y se santiguó. «A los críos del bosque no se les da sepultura en tierra sagrada», masculló. «En tiempos de mi agüelo, cuando aún no había iglesia en Bukowiec y para cada entierro había que ir hasta la ciudad, ya entonces lo sabía todo el mundo… O el fuego, o al pie del monte.» # pokaz: stas
}
Jaromir recordaba la voz de debajo del roble: «Lo enterrarás como tuyo.»
# pytanie: ¿Qué hará Jaromir con el cuerpo?
*   [Enterrarlo como a una hija, en el cementerio.]
    ~ cialo_kopii = pochowane
    La tomó de los brazos de Hanka y la llevó a la cabaña. La acostó en el banco donde dormía Marysia y la cubrió con un lienzo de lino. # dalej
*   { dlug_u_jagny } [Dárselo a Jagna.]
    ~ cialo_kopii = oddane_jagnie
    Hanka no quería soltarla. Solo la soltó cuando Jagna le posó la mano sobre los ojos y le susurró algo. Jagna envolvió el cuerpo en una sábana de lino, lo colocó en el carro entre las cestas de hierbas y se alejó despacio hacia Bukowiec. La deuda estaba saldada. # dalej
*   [Quemarlo en el horno.]
    ~ cialo_kopii = spalone
    Por la noche, cuando Hanka por fin se durmió de puro agotamiento, Jaromir encendió un fuego fuerte. Tardó mucho en decidirse a poner a la criatura entre las llamas. Cuando por fin lo hizo, no ardió como un cuerpo. Crepitaba como leña de tea, rezumaba resina entre siseos, y el humo olía a agujas de pino. Por la mañana en la ceniza solo quedaban carbones.
    Hanka vio las cenizas. No dijo nada. Desde aquella mañana no volvió a encender el horno ni una sola vez – lo encendía siempre él. # dalej
*   { not dlug_u_jagny } [Enterrarlo al pie del monte joven, como aconseja Staś.]
    ~ cialo_kopii = pod_mlodnikiem
    Cavó la tumba él solo, bajo los últimos abetos, allí donde la tierra estaba blanda de agujas. Hanka permanecía a su lado y no se dejaba consolar. # dalej
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
Jaromir clavó él mismo el pequeño ataúd, con madera del viejo saúco – el mismo en cuya copa había tenido de niño su guarida.{ zastaw_u_leszego == zastaw_siekiera: Lo taló con el hacha prestada por su suegro.} Se decía que un árbol así no se corta, porque trae desgracia. A Jaromir ya le daba todo igual. El corte fresco olía amargo y empalagoso, y de las ramas le cayeron en la manga las últimas florecillas secas.{ kapliczki_drogi == ocalil_swiatka: Al desmontar las tablas de la guarida, se le vino a las manos la Virgen que una vez había sacado del carro del señor Urbaniak. La puso a la cabecera.} En el silencio solo se oía el golpe de los clavos. # pokaz: trumienka
Las niñas de la aldea trenzaron coronas de acianos y manzanilla, recién cogidos de los ribazos, y las pusieron sobre la tapa. Olían al sol que nadie en Zapadlina había visto aquel día. # pokaz: wianki
{ pani_w_zbozu_noc == za_spiewem:
    Hanka no cantó – desde aquella noche en el centeno no podía. Decía las palabras de la nana, una tras otra, con voz ronca, sin melodía, y eso era peor que el llanto.
- else:
    Hanka cantó la nana que le tarareaba a Marysia todas las noches. La voz no se le quebró ni una vez, y por eso fue lo peor.
}
{ cialo_kopii == oddane_jagnie || cialo_kopii == spalone:
    En el pequeño ataúd no había ningún cuerpo – solo el vestidito de Marysia, doblado con esmero, como para guardarlo en un arcón.
}
{ skarb_dla_corki:
    Antes de clavar la tapa, Jaromir puso en el ataúd el tesoro de la guarida – {skarb_jaromira == muszelka:la concha con la raya de un dientecito torcido|{skarb_jaromira == pioro:la pluma chupada, con el cañón mordisqueado|el clavo de herrumbre parda}}.
- else:
    ~ ekwipunek -= bucik_marysi
    Antes de clavar la tapa, Jaromir puso en el ataúd {drugi_drewniak:los dos zuecos rojos|el zueco rojo – el único que le quedaba}{uklad_z_mamunami != oddany_skarb:, y junto a {drugi_drewniak:ellos|él} el tesoro de la caja de la guarida – {skarb_jaromira == muszelka:la concha blanca|{skarb_jaromira == pioro:la pluma de arrendajo|el clavo oxidado}}. Algún día había pensado enseñárselo a su hija}. # tobolek
}
{ cialo_kopii == pod_mlodnikiem:
    Cubrieron la tumba al pie del monte joven con tepes, y Antek clavó a la cabecera un palo con la cinta roja atada, la que Hanka había destrenzado del pelo de la criatura, para que se supiera dónde. # dalej
- else:
    Enterraron el pequeño ataúd en el cementerio de Bukowiec, bajo un abedul. El cura{ przysiega_ksiedzu:, que había recibido el juramento de Jaromir sobre el rosario,} lo hizo todo como es debido y no preguntó nada.{ cialo_kopii == oddane_jagnie || cialo_kopii == spalone: Cuando el sepulturero llenaba la fosa, la tierra golpeaba la tapa con un sonido tan hueco que Jaromir lo oyó después durante muchas noches.} # dalej
}
-> jesien_po_pogrzebie

= jesien_po_pogrzebie
# tlo: jesien_zaduszki
A finales de agosto, la noche en que se cumplían tres años desde que Marysia vino al mundo, Hanka fue sola a la tumba y se quedó allí sentada hasta el alba. Jaromir no la siguió. No habría podido mirarla a los ojos – porque sabía lo que ella nunca le diría.{ znak_rozpoznania == po_imieniu: Si no la hubiera llamado por su nombre.}{ znak_rozpoznania == po_drewniaku: Se había dejado atrapar por algo rojo, como un niño.}{ znak_rozpoznania == po_buzi: La había mirado y no la había reconocido.}{ znak_rozpoznania == po_cieniu: Él mismo había entregado lo que luego lo engañó.}
El otoño llegó pronto. La trilla en los graneros, la siembra del centeno de invierno, el agramado del lino – la aldea hacía lo suyo como cada año, y Hanka con ella, diestra y sin decir palabra. Jaromir oía cada noche cómo su mujer se levantaba y andaba por la estancia, del horno a la ventana y vuelta.
{ pies_pobiegl_sam:
    ~ ekwipunek += szczenie_psa
    El perro había vuelto del bosque ya en julio, una semana después de San Juan, flaco como un palo, y se había tumbado bajo el banco donde dormía Marysia. No hubo manera de sacarlo de allí. # tobolek
}
{ dlug_u_jagny && cialo_kopii != oddane_jagnie:
    Jagna no volvió a aparecer ni una vez. La deuda no estaba saldada, y Jaromir sabía que ella también lo sabía.
}
En octubre Hanka preguntó, sin volverse del puchero: «El Día de los Difuntos los muertos vuelven a sus casas. Eso dicen.» Removió. «¿Vendrá?»
Jaromir no respondió. Recordaba la voz del bosque que llegó hasta la mitad y enmudeció. Recordaba también la otra: «El Día de los Difuntos iré a la aldea. Entonces ajustaremos cuentas hasta el final.»
Cuanto más se acercaba el Día de los Difuntos, más silencio había en Zapadlina. La gente volvía de los campos antes del anochecer y atrancaba las puertas, y desde el bosque, cada tarde, subía por los prados una niebla pesada y húmeda, hasta las mismas cercas. # pokaz: mgla
El primero de noviembre la aldea fue al cementerio de Bukowiec. Aquel año, en lugar de candiles, la gente llevaba desde sus casas velas de la Candelaria. En el camino de vuelta se apagaron de un solo soplo, todas, aunque el aire estaba quieto. Solo seguía ardiendo la vela de Hanka – con llama pareja, serena, como en una estancia cerrada. # pokaz: zgasly, gromnica_hanki # dalej
-> rozdzial_dziewietnasty_ciag_dalszy


// Koniec rozdziału dziewiętnastego – dalej rozdział dwudziesty (Ostatnia noc).
=== rozdzial_dziewietnasty_ciag_dalszy ===
# ozdobnik
_Fin del capítulo decimonoveno._ # dalej
-> rozdzial_dwudziesty
