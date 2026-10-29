// ------------------------------------------------------------
//  Rozdział czwarty — Marzanna. Przedwiośnie, Jaromir ma dziesięć
//  lat. Topienie Marzanny (coś wciąga kukłę pod wodę), prawda
//  o nocy z prologu, przewrócona kapliczka, ludzie Urbaniaka.
//  Prawda zależy od zakończenia prologu:
//    figurka_u_staruchy i pies   — umierająca babka Marianna;
//    figurka_u_staruchy bez psa  — ojciec, który przeżył pod podłogą;
//    inaczej                     — ojciec, który kiedyś się z tego śmiał.
// ------------------------------------------------------------

=== rozdzial_czwarty ===
# tlo: stodola_marzanna
# rozdzial: Capítulo cuarto
# tytul: Marzanna
En marzo por fin empezaron a gotear los tejados, por los campos corrieron arroyuelos sucios, y de noche el hielo del lago crujía y gemía de tal modo que los perros aullaban en los corrales. Las ciénagas fueron las primeras en despertar – el agua negra se abría paso a través de la nieve, al alba se alzaba vapor sobre ella, y de los aguazales junto a la pasarela volvía a llegar aquel borboteo que durante largos meses no se había oído.
El quinto domingo de Cuaresma los niños de toda Zapadlina se reunían para ahogar a Marzanna, la muñeca de paja del invierno. Así se había hecho siempre: quien sacara el invierno de la aldea y lo arrojara al agua traería la primavera y ahuyentaría las enfermedades, el hambre y todo mal.
La muñeca la preparaban en el granero de los de Staś. Franek, que desde Navidad ya no iba a la escuela y ayudaba a su abuelo en el campo, retorció un cuerpo de paja y lo ató a un palo. Antek trajo unos harapos viejos que habían sido de su madre – una falda y un pañuelo – y Jaromir le hundió en la cabeza dos trocitos de carbón por ojos y le pintó la boca con hollín. Hanka ensartó cáscaras de huevo en un hilo para que Marzanna tuviera collar. La efigie daba miedo – y de eso se trataba precisamente. # pokaz: kukla
La niña se llevó la mano a la trenza y empezó a desatar la cinta roja.
«Le daré la mía», dijo. «Que se lleve consigo todo lo malo.»
{ poszedl_po_wstazke:
    Jaromir se acordó del viejo del sombrero de musgo y del rojo que aleteaba en su mano.
- else:
    Jaromir se acordó de la mañana en que esa misma cinta colgaba de su cerca, atada en un lazo por una mano que nadie había visto.
}
# pytanie: ¿Le dará Hanka su cinta a Marzanna?
*   [Dejar que Hanka ate la cinta.]
    ~ wstazka_marzanny = true
    Hanka anudó la cinta al cuello de paja de la muñeca y se apartó para contemplarla. El rojo sobre la paja gris parecía una herida. # pokaz: wstazka # dalej
    -> topienie
*   [Convencerla de que no la entregue.]
    «No lo hagas», le pidió Jaromir. «Ya volvió una vez del bosque.»
    Hanka lo miró de un modo extraño, pero se guardó la cinta en el bolsillo del delantal. La muñeca se quedó gris; solo el collar de cáscaras tintineaba quedo cuando alguien la tocaba. # dalej
    -> topienie

= topienie
# tlo: rozlewisko
Se pusieron en marcha por la tarde. Delante iba Franek con Marzanna en el palo, bien alta para que todos la vieran; tras él venían los niños de toda la aldea y, al final, unas cuantas comadres que fingían ir solo a mirar. Cantaban a pleno pulmón:
«Marzanna, Marzanna, doncella de hielo,
¡vete al agua honda y no vuelvas presto!»
La nieve chapoteaba bajo las abarcas, y en el aire, por primera vez en meses, olía a tierra mojada.
Por el camino, a cada rato alguien le tiraba de la paja a la muñeca o la azotaba con una vara, porque así tenía que ser – el invierno no podía marcharse en paz.
Llegaron al aguazal junto a la pasarela. Allí el hielo se había derretido casi del todo; solo en las orillas aguantaba una costra gris y agujereada, y en medio se extendía el agua negra, lisa como un cristal. Hanka se agarró a la manga de Jaromir con dedos helados, y él sentía el corazón golpeándole hasta en la garganta. Franek tomó impulso y lanzó a Marzanna con todas sus fuerzas, lejos, por delante de él. # pokaz: rzut
La muñeca chocó contra el agua con un chasquido y se meció. Por un momento flotó en la superficie, con la falda abierta a su alrededor como una flor. De pronto, de golpe, se fue al fondo. No como se hunde algo que se ha empapado. Como si alguien hubiera tirado de ella desde abajo. # pokaz: tonie
Los niños enmudecieron. Donde había desaparecido reventaron unas cuantas burbujas grandes y perezosas, y se abrieron círculos en el agua.
«¡Ahora, a correr!», susurró Hanka. «¡Y sin mirar atrás!»
{ ekwipunek ? ksiega:
    Jaromir también lo sabía. En el libro de don Ignacy había leído que a quien se vuelva a mirar a la Marzanna ahogada, la enfermedad lo alcanzará antes de Pascua.
- else:
    «Al que mire atrás, la enfermedad lo alcanza antes de Pascua», añadió una de las comadres.
}
Todos echaron a correr. A espaldas de Jaromir sonó un chapoteo – fuerte, pesado, como si del agua emergiera algo grande. # pokaz: ucieczka
# pytanie: ¿Qué hará Jaromir?
*   [Mirar atrás.]
    ~ obejrzal_sie = true
    Miró atrás. Solo un instante.
    Junto a la pasarela, en el agua negra, algo sujetaba a Marzanna – una mano gris acabada en garras, cubierta de algas. Sobre la superficie, más arriba de lo que alcanzaría un hombre hecho y derecho, ardían dos ojos, verdosos y turbios como las lucecitas sobre el pantano.{ wstazka_marzanny: Las zarpas se iban enrollando despacio la cinta roja.} Luego el brazo se retiró y el agua se cerró sin dejar rastro. # pokaz: reka
    Esa noche a Jaromir le entró fiebre. Pasó tres días en cama, y su madre le ponía paños mojados en la frente y no entendía por qué, en su delirio, clamaba por el humilladero de la pasarela. # dalej
    -> prawda
*   [Seguir corriendo sin mirar atrás.]
    No miró atrás. Corrió, apretando la mano de Hanka, hasta las primeras cercas, y tras ellos, desde las ciénagas, llegaba una risita queda – como la de alguien que acaba de recibir un regalo. Sobre el pantano se encendieron unos pálidos fuegos fatuos. «Son los que quemaron a la bruja», resolló una de las comadres. «El que siga a uno de esos fuegos ya no vuelve.» # pokaz: chichot
    ~ zapiski += ogniki_1
    { wstazka_marzanny:
        Al día siguiente Hanka andaba con la trenza deshecha y a cada rato se llevaba la mano a ella, como si buscara algo. # dalej
    - else:
        Durante mucho tiempo ninguno de los dos dijo una palabra. # dalej
    }
    -> prawda

= prawda
{ figurka_u_staruchy && los_psa == oswojony: -> prawda_babki }
{ figurka_u_staruchy: -> prawda_ojca_sieroty }
-> prawda_ojca

= prawda_babki
# tlo: babka_lozko
Aquella primavera la abuela Marianna ya no se levantó. Desde la Candelaria yacía en la cama detrás del horno, cada vez más menuda y más liviana, como si la tierra se la fuera llevando a pedazos. Cuando oyó lo de Marzanna, mandó llamar a su nieto.
«Siéntate», susurró. La mano con que le agarró la muñeca estaba seca y fría como una hoja. «Tu padre no te lo dirá. No sabe. Así que te lo diré yo, mientras todavía pueda.»
Se lo contó todo. {zona_wie:Cómo el abuelo Maciek había encontrado entre los restos calcinados junto al lago una figurilla chamuscada y se la había vendido en la ciudad a una viejecita encapuchada.|Cómo el abuelo Maciek había vuelto de la ciudad cambiado y no quería decir qué lo reconcomía.} La criatura que unas noches después echó abajo la puerta de su cabaña. El perro que se le lanzó encima el primero, y el hacha que se le hundió hondo en el brazo. Cómo el abuelo murió sobre la tierra apisonada con la cabeza en su regazo, mientras el pequeño Dobrosław pasaba la noche entera bajo el entarimado, tapándose los oídos con las manos.
«Lo que había en el agua era él», dijo. «No murió. Los como él no mueren. Esperan. El que se ahoga sin cura no va ni al cielo ni al infierno: se queda en el agua. Los viejos decían que uno así guarda en el fondo las almas de otros ahogados bajo pucheros de barro boca abajo, y de noche los va volteando uno tras otro, vigilando su hacienda. Y si algún puchero se raja, el alma escapa en una burbuja hacia la superficie.»
La abuela señaló el rincón tras la cama. Bajo un viejo chaquetón había un hacha de mango oscuro y gastado. En la hoja, aunque estaba limpia hasta relucir, todavía se veían regueros herrumbrosos. # pokaz: siekiera
{ krzesiwo_dziadka:
    ~ ekwipunek += krzesiwo
    ~ krzesiwo_od_babki = true
    «Es suya. Te la llevarás cuando seas mayor.» De debajo de la almohada sacó un eslabón pequeño y ennegrecido. «Y esto tómalo ya. {zona_wie:Estaba en la ceniza junto con aquella figurilla. El abuelo no se separó de él hasta el final.»|De dónde lo sacó, nunca me lo dijo. Pero no se separó de él hasta el final.»} # pokaz: krzesiwo
- else:
    «Es suya. Te la llevarás cuando seas mayor.»
}
«Prométeme una cosa», añadió al cabo de un rato. «Que nunca entrarás en el bosque. Te llame quien te llame.»
-> obietnica

= prawda_ojca_sieroty
# tlo: prog_noc
{obejrzal_sie:Cuando Jaromir se levantó después de la fiebre|Cuando Jaromir volvió del aguazal}, su padre no le preguntó nada. Estuvo callado toda la velada. Solo cuando la madre se durmió, tomó a su hijo del brazo, lo sacó al umbral y se sentó a su lado en la oscuridad.
«Tenía tus años», empezó, y la voz se le quebraba, como si llevara muchísimo tiempo sin usarla. «Puede que menos.»
Se lo contó todo. La noche en que algo echó abajo la puerta de su cabaña. Las tablas sobre su cabeza, entre las que se filtraba la luna; los gritos – primero de su padre, luego de su madre – y algo caliente que le goteaba en el pelo. El husmeo justo encima de él, ronco como el de un perro ante una madriguera.
«Lo que había en el agua era él», dijo. «Por eso compruebo el cerrojo. Cada noche, desde hace cerca de sesenta años.»
«Prométeme una cosa», le pidió. «Que nunca entrarás en el bosque. Te llame quien te llame.»
-> obietnica

= prawda_ojca
# tlo: izba_wieczor
Cuando su padre oyó lo que había pasado en el aguazal, no se echó a reír. Era la primera vez que Jaromir veía que una historia sobre la criatura no le arrancaba una sonrisa.
«Tu abuelo me contaba lo mismo», dijo en voz baja, dándole vueltas al tazón entre los dedos. «{obejrzal_sie:De una mano que salía del agua.|De algo que arrastra al fondo desde abajo.} De una voz que llama desde los pantanos. De la herbolaria quemada en su cabaña junto al lago.{ pregi_na_lydkach: Me enseñaba los verdugones de las pantorrillas, cinco a cada lado{ uratowal_andrzej: – y decía que, de no ser por el viejo Andrzej con su pértiga, no estaríamos ni él ni yo}. Yo creía que eran de sanguijuelas.} Me reía. Pensaba que quería asustarme para que no anduviera solo por la orilla.» Calló un buen rato. «Y antes de morir me apretó la mano y me susurró: “Vela por los humilladeros, Dobruś. No eran cuentos”.»
«Decía también que el que se ahoga sin cura se queda en el agua y guarda allí las almas de otros ahogados bajo pucheros de barro. Si algún puchero se raja, el alma sube a la superficie en una burbuja.» Su padre dejó el tazón. «¿Te acuerdas de aquellas burbujas junto a la pasarela?»
«Prométeme una cosa», le pidió. «Que nunca entrarás en el bosque. Te llame quien te llame.»
-> obietnica

= obietnica
# pytanie: ¿Lo prometerá Jaromir?
~ zapiski += (stwor_2, zielarka_2)
*   [Prometerlo.]
    ~ obietnica_bor = true
    «Lo prometo», dijo Jaromir.
    { figurka_u_staruchy && los_psa == oswojony:
        Aún no sabía lo difícil que le resultaría algún día cumplir esa palabra.
        -> smierc_babki
    }
    Aún no sabía lo difícil que le resultaría algún día cumplir esa palabra. # dalej
    -> kapliczka
*   [Callar.]
    Jaromir no respondió. Pensó en Hanka y en la cinta roja,{ poszedl_po_wstazke: en el viejo del sombrero de musgo,} en la voz que lo había llamado en invierno {figurka_u_staruchy:desde la niebla sobre el campo|de entre los árboles}, y no fue capaz de sacar de sí esa única palabra.
    { figurka_u_staruchy && los_psa == oswojony:
        La abuela lo miró largamente a los ojos y luego suspiró, como si justo eso fuera lo que esperaba.
        -> smierc_babki
    }
    Su padre lo miró largamente a los ojos y luego asintió con la cabeza, como si justo eso fuera lo que esperaba. # dalej
    -> kapliczka

= smierc_babki
Marianna murió pocos días después, el Jueves Santo. Había pedido que la enterraran junto a su marido, en el cementerio de la ciudad, y el padre cumplió su voluntad, aunque el camino con el ataúd en el carro les llevó un día entero. # pokaz: swieca # dalej
-> kapliczka

= kapliczka
# tlo: kapliczka_przewrocona
Después de Pascua la tierra empezó a secarse, y en las lindes amarillearon las primeras caltas. Una tarde, volviendo de la escuela por la senda al pie del bosque, Jaromir y Antek{ ekwipunek ? szczeniak: junto con el perro {imie_psa}, que ahora seguía a Jaromir a todas partes,} vieron que el humilladero del lindero del bosque yacía en la hierba. Los dos se quedaron clavados en el sitio. En el silencio que cayó de pronto solo se oían las gotas que se desprendían de las ramas sobre el tejadillo hundido en el barro.
Era uno de los más antiguos de Zapadlina, levantado ya en {figurka_u_staruchy:la niñez|la juventud} de su padre. El poste de madera había sido arrancado de la tierra con tepe y todo, el tejadillo se había partido y estaba unos pasos más allá, y el santito – gris de tantas lluvias, con el rostro borrado por {figurka_u_staruchy:medio siglo|decenas de años} – estaba clavado boca abajo en el fango. La hierba de alrededor estaba revuelta, como si alguien hubiera arrastrado el humilladero hacia los árboles y lo hubiera abandonado a medio camino.
{ ekwipunek ? kora:
    Al pie del poste alguien había arañado en la madera una espiral, igual que la del pino junto a la senda. Jaromir no necesitaba sacar de la bolsa su trozo de corteza para saberlo. # pokaz: spirala
}
{ ekwipunek ? szczeniak:
    {imie_psa} erizó el pelo y gruñía hacia el bosque, reculando sobre las patas tiesas. # pokaz: pies
}
«Hay que decírselo a los mayores», susurró Antek.
# pytanie: ¿Qué harán los muchachos?
*   [Levantar el humilladero con Antek, sin los mayores.]
    ~ kapliczka_podniesiona = true
    El poste pesaba, estaba mojado y resbaladizo de barro. Empujaron los dos con todas sus fuerzas hasta que por fin quedó en pie en el hoyo del que lo habían arrancado, tambaleándose como un borracho. Jaromir lo calzó con piedras y apisonó la tierra con las botas, y Antek limpió el santito con la manga, lo devolvió bajo el tejadillo y volvió a clavarlo, golpeando con un canto rodado plano. # pokaz: podniesiona
    Cuando terminaron, sopló un viento desde el bosque – frío, aunque el día era templado – y por un momento todos los árboles del lindero susurraron a la vez. Luego todo se calmó. # pokaz: wiatr
    Su padre, cuando se enteró, fue a ver el humilladero y regresó con una cara que Jaromir no supo descifrar.
    «Habéis hecho bien», dijo solamente. # dalej
    -> urbaniak
*   [Correr a buscar a los mayores.]
    Corrieron a la aldea sin tomar aliento. Su padre y el viejo Staś fueron esa misma tarde, con un farol y una pala. Volvieron pasada la medianoche, embarrados y callados. # pokaz: latarnia
    El humilladero ya no estaba donde lo habían visto los chicos. No lo encontraron sino varias decenas de pasos más allá, entre los primeros abetos, hincado en la tierra cabeza abajo. Lo devolvieron a su antiguo sitio y lo enterraron más hondo que antes.
    «Alguien hay por aquí que no quiere humilladeros», masculló Staś cuando creyó que nadie lo oía. # dalej
    -> urbaniak

= urbaniak
# tlo: urbaniak
En mayo, cuando las cigüeñas ya se habían posado en el viejo nido del tejado de la herrería, llegó a Zapadlina una calesa. Bajó de ella un señor corpulento con abrigo de ciudad y sombrero, y tras él dos hombres con hachas y una larga cuerda llena de nudos. Anduvieron todo el día por el lindero del bosque – medían, apuntaban algo y cada pocos pasos hacían muescas blancas en la corteza de los robles. # pokaz: znaki
Jaromir los miraba desde detrás de la cerca. Cada uno de aquellos tajos parecía una herida fresca.
«El señor Urbaniak», dijo su padre cuando se fue la calesa. «El señor de la finca le ha vendido la tala. Va a haber aserradero.» # pokaz: odjazd
Esa noche, por primera vez en años, llegó del bosque un aullido – largo, sostenido, ni de lobo ni de perro. La gente cerraba los postigos y se santiguaba a escondidas, y Jaromir, tendido a oscuras con el edredón de plumas subido hasta los ojos, escuchó hasta que cesó. # pokaz: noc # dalej
-> rozdzial_czwarty_ciag_dalszy


// Koniec rozdziału czwartego i darmowej części — dalej rozdział piąty, już w pełnej wersji.
=== rozdzial_czwarty_ciag_dalszy ===
# ozdobnik
_Fin del capítulo cuarto._ # pelna_wersja # dalej
-> rozdzial_piaty
