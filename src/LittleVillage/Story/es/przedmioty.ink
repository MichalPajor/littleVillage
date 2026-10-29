// ------------------------------------------------------------
//  Przedmioty i ekwipunek.
//  Dodanie przedmiotu:   ~ ekwipunek += siekiera
//  Zabranie przedmiotu:  ~ ekwipunek -= chleb
//  Sprawdzenie:          { ekwipunek ? siekiera: ... }
// ------------------------------------------------------------

LIST Przedmioty = siekiera, chleb, pies_towarzysz, figurka, krzesiwo, zapasy, nasiona, nozyk, kora, ksiega, szczeniak, mak, monety, zoladz, piolun, korale, swiatek, podkowa, krzyzyk, gromnica, szczenie_psa, bucik_marysi, wstazka_marysi, rozaniec

// Ekwipunek na początku gry — to, co Maciek przyniósł w tobołku.
VAR ekwipunek = (siekiera, chleb)

// Nazwa wyświetlana w oknie ekwipunku.
=== function nazwa_przedmiotu(p)
{ p:
    - siekiera:
        { siekiera_dziadka:
            ~ return "El hacha del abuelo Maciek"
        }
        ~ return "Hacha"
    - chleb:     ~ return "Una hogaza de pan"
    - pies_towarzysz: ~ return "El perro – compañero"
    - figurka:   ~ return "Figurilla chamuscada"
    - krzesiwo:  ~ return "Eslabón"
    - zapasy:    ~ return "Provisiones de la ciudad"
    - nasiona:   ~ return "Semillas de hortalizas"
    - nozyk:     ~ return "Navajita"
    - kora:      ~ return "Corteza con un signo"
    - ksiega:    ~ return "Libro de relatos"
    - szczeniak: ~ return imie_psa
    - mak:       ~ return "Un puñado de semillas de amapola"
    - monety:    ~ return "Monedas del aserradero"
    - zoladz:    ~ return "Bellota del Viejo Roble"
    - piolun:    ~ return "Ajenjo"
    - korale:    ~ return "Collar de serbal"
    - swiatek:   ~ return "Santito del humilladero"
    - podkowa:   ~ return "La herradura del herrero"
    - krzyzyk:   ~ return "La crucecita del herrero"
    - gromnica:  ~ return "Vela de la Candelaria"
    - szczenie_psa:
        { rozdzial_trzynasty:
            ~ return "Perro canelo"
        }
        ~ return "Cachorro canelo"
    - bucik_marysi:
        { drugi_drewniak:
            ~ return "Los zuecos de Marysia"
        }
        ~ return "El zueco de Marysia"
    - wstazka_marysi: ~ return "La cinta de Marysia"
    - rozaniec: ~ return "Rosario bendito"
}
~ return ""

// Opis wyświetlany pod nazwą.
=== function opis_przedmiotu(p)
{ p:
    - siekiera:
        { siekiera_dziadka:
            ~ return "Un hacha de mango oscuro y gastado. El abuelo Maciek la compró en la ciudad con el dinero de cuatro años de trabajo en campo ajeno. Su padre se la dio a Jaromir el día de su boda – ahora el amo de la casa es él."
        }
        ~ return "Comprada en la ciudad con el dinero de cuatro años de trabajo en campo ajeno. Sobre ella descansa todo el porvenir."
    - chleb:     ~ return "Duro, moreno, envuelto en un paño de lino. Tiene que durar mucho tiempo."
    - pies_towarzysz: ~ return "Flaco, de hocico largo y patas demasiado grandes. Defendió a Maciek de la criatura de la maleza y desde aquella noche no se aparta de él ni un paso."
    - figurka:
        { rozdzial_trzynasty && przeszukal_zgliszcza && not figurka_w_bagnie:
            ~ return "Una pequeña figura de madera con los brazos colgando hasta los pies, chamuscada por un lado. Volvió a Zapadlina al cabo de más de sesenta años. La madera está siempre fría y húmeda, incluso en los días secos."
        }
        { rozdzial_trzynasty:
            ~ return "Una pequeña figura de madera con los brazos colgando hasta los pies, chamuscada por un lado. Al cabo de más de sesenta años ha salido a la luz. La madera está siempre fría y húmeda, incluso en los días secos."
        }
        ~ return "Una pequeña figura de madera con los brazos colgando hasta los pies, chamuscada por un lado. Sacada de las cenizas de la cabaña de la bruja."
    - krzesiwo:
        { krzesiwo_od_babki:
            ~ return "El pequeño eslabón ennegrecido del abuelo Maciek. La abuela Marianna se lo dio a Jaromir en su lecho de muerte. El abuelo no se separó de él hasta el final."
        }
        { krzesiwo_na_slubie:
            ~ return "El pequeño eslabón ennegrecido del abuelo Maciek. Su padre se lo dio a Jaromir el día de su boda, junto con el hacha – el abuelo lo llevó siempre encima hasta el final."
        }
        ~ return "Estaba en la ceniza, junto a la figurilla. ¿Sería con él con lo que prendieron fuego a la cabaña de la bruja?"
    - zapasy:
        { figurka_u_staruchy:
            ~ return "Dos hogazas de pan, un saco de grano para gachas, sal, un trozo de tocino y una cesta de patatas de siembra. Todo comprado con las monedas de la vieja."
        }
        ~ return "Una hogaza de pan, un puñado de sal y una talega de grano para gachas. Tiene que bastar hasta que crezca algo."
    - nasiona:   ~ return "Compradas en el mercado de la ciudad. Era primavera – había que sembrarlas cuanto antes."
    - nozyk:     ~ return "Regalo de su padre por su santo. Pequeño, con el mango de madera gastado y una hoja que el padre afiló con la piedra de amolar. Jaromir ya ha desbastado con él más de un arco."
    - kora:      ~ return "Un trozo de corteza de pino enrollado como un canuto, recogido al pie del árbol de la espiral. En la cara lisa alguien grabó hileras de rayas y circulitos – parecen letras, y sin embargo Jaromir no conoce ninguna."
    - ksiega:
        { ksiega_zatrzymana:
            ~ return "El grueso cuaderno de don Ignacy, encuadernado en piel y escrito con letra esmerada e inclinada – historias de los alrededores de la Cresta de las Hayas. El maestro le permitió quedárselo. Solo puede leerse de día."
        }
        ~ return "El grueso cuaderno de don Ignacy, encuadernado en piel y escrito con letra esmerada e inclinada – historias de los alrededores de la Cresta de las Hayas. Solo puede leerse de día, y hay que devolverlo por Navidad."
    - szczeniak:
        { rozdzial_jedenasty:
            ~ return "Un perro de la estirpe del perro del abuelo Maciek – en su día un cachorro del viejo Staś, hoy entrado en años, con el hocico canoso. Todavía duerme a los pies del jergón y todavía gruñe en sueños hacia el bosque."
        }
        { rozdzial_piaty:
            ~ return "Un perro de la estirpe del perro del abuelo Maciek, en su día un cachorro que le regaló el viejo Staś por Nochebuena. Se ha hecho un perro grande, de orejas puntiagudas y con una mancha blanca en el pecho. Duerme a los pies del jergón y gruñe en sueños hacia la ventana."
        }
        ~ return "Un cachorro de la estirpe del perro del abuelo Maciek, regalo del viejo Staś por Nochebuena. Orejas puntiagudas, una mancha blanca en el pecho y unas patas demasiado grandes para el resto del cuerpo. Duerme a los pies del jergón y gruñe en sueños hacia la ventana."
    - mak:       ~ return "Un trapo con un puñado de semillas de amapola sisadas del cuenco de Nochebuena. Según el libro de don Ignacy, la Dama de la Medianoche tiene que contar cada granito antes de acercarse."
    - monety:    ~ return "Pesadas y frías monedas de plata con un águila en una cara – la paga del señor Urbaniak por un verano apilando tablones."
    - zoladz:    ~ return "Una bellota grande y lisa, recogida bajo las raíces del Viejo Roble talado. Todavía está tibia, como si dentro viviera algo."
    - piolun:    ~ return "Un manojo de tallos de un verde grisáceo, de olor amargo y penetrante. Se lo dio Hanka por Pentecostés – dicen que lo que sale entonces del agua le tiene más miedo al ajenjo que al fuego."
    - korale:    ~ return "Una sarta de cuentas de serbal encontrada en el embarcadero tras la noche de las rusalkas. Eran de Kaśka, la hija de los Wójcik. Siguen mojadas y rojas como la sangre fresca."
    - swiatek:   ~ return "Una Virgen de madera con el Niño, sacada de noche del carro de Urbaniak mientras sus hombres desenterraban los humilladeros al pie del bosque. Tiene la cara tan gastada por las lluvias que apenas se distingue. Escondida bajo las tablas de la guarida del viejo saúco."
    - podkowa:   ~ return "Una herradura de hierro forjada por el padre de Hanka para la boda. Cuelga sobre el umbral de la casa con las puntas hacia arriba, para que no entre nada malo y no se derrame la suerte."
    - krzyzyk:   ~ return "Una crucecita de hierro en un cordón de cuero, forjada por el padre de Hanka para la boda. Hanka la lleva al cuello y no se la quita – el herrero le encargó que jamás lo hiciera."
    - gromnica:  ~ return "Un grueso cirio de cera bendecido en Bukowiec el día de la Candelaria. En toda casa tiene que haber uno – para la tormenta, para el parto y para la muerte."
    - bucik_marysi:
        { drugi_drewniak:
            ~ return "Un par de zuequitos de tilo, pintados de rojo y forrados con fieltro del viejo sombrero del abuelo Dobrosław. El otro lo trajo el lobo blanco de debajo del roble."
        }
        { dlug_jagny == oddany_drewniak:
            ~ return "Un zuequito de tilo, pintado de rojo y forrado con fieltro del viejo sombrero del abuelo Dobrosław. El otro se lo llevó Jagna."
        }
        { rozdzial_siedemnasty:
            ~ return "Un zuequito de tilo, pintado de rojo y forrado con fieltro del viejo sombrero del abuelo Dobrosław. El otro se quedó en el bosque."
        }
        ~ return "Un zuequito de tilo, pintado de rojo y forrado con fieltro del viejo sombrero del abuelo Dobrosław. El otro se quedó en el centeno, en manos de la que lo tenía."
    - wstazka_marysi:
        { pani_w_zbozu_noc == gonil_babe:
            ~ return "La cinta roja que Hanka le trenzó a Marysia en el pelo la víspera de San Juan. Colgaba de los cardos junto a la linde."
        }
        ~ return "La cinta roja que Hanka le trenzó a Marysia en el pelo la víspera de San Juan. Colgaba de un enebro en el lindero del monte joven, a la altura de una manita de niño."
    - rozaniec: ~ return "Un rosario de madera bendecido por el cura de Bukowiec. Juró sobre él que acabaría con el paganismo."
    - szczenie_psa:
        { rozdzial_dziewietnasty && not marysia_odzyskana:
            ~ return "Un perro canelo con una mancha blanca en el pecho, de la estirpe del perro del abuelo Maciek. Duerme debajo del banco donde dormía Marysia y no hay manera de sacarlo de allí."
        }
        { rozdzial_trzynasty:
            ~ return "Un perro canelo con una mancha blanca en el pecho, de la estirpe del perro del abuelo Maciek. Se ha hecho un perro zanquilargo, sigue a Marysia paso a paso y gruñe a cualquiera que le levante la voz."
        }
        ~ return "Un cachorro canelo con una mancha blanca en el pecho, de la estirpe del perro del abuelo Maciek. Muerde todo lo que encuentra, duerme junto a la cuna de Marysia y no se aparta de ella ni un paso."
}
~ return ""
