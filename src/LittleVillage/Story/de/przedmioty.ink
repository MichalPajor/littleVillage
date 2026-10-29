// ------------------------------------------------------------
//  Przedmioty i ekwipunek.
//  Dodanie przedmiotu:   ~ ekwipunek += siekiera
//  Zabranie przedmiotu:  ~ ekwipunek -= chleb
//  Sprawdzenie:          { ekwipunek ? siekiera: ... }
// ------------------------------------------------------------

LIST Przedmioty = siekiera, chleb, pies_towarzysz, figurka, krzesiwo, zapasy, nasiona, nozyk, kora, ksiega, szczeniak, mak, monety, zoladz, piolun, korale, swiatek, podkowa, krzyzyk, gromnica, szczenie_psa, bucik_marysi, wstazka_marysi, rozaniec

// Ekwipunek na początku gry – to, co Maciek przyniósł w tobołku.
VAR ekwipunek = (siekiera, chleb)

// Nazwa wyświetlana w oknie ekwipunku.
=== function nazwa_przedmiotu(p)
{ p:
    - siekiera:
        { siekiera_dziadka:
            ~ return "Großvater Macieks Axt"
        }
        ~ return "Axt"
    - chleb:     ~ return "Ein Laib Brot"
    - pies_towarzysz: ~ return "Hund – Gefährte"
    - figurka:   ~ return "Angekohlte Figur"
    - krzesiwo:  ~ return "Feuerstahl"
    - zapasy:    ~ return "Vorräte aus der Stadt"
    - nasiona:   ~ return "Gemüsesamen"
    - nozyk:     ~ return "Kleines Messer"
    - kora:      ~ return "Rinde mit Zeichen"
    - ksiega:    ~ return "Sagenbuch"
    - szczeniak: ~ return imie_psa
    - mak:       ~ return "Eine Handvoll Mohn"
    - monety:    ~ return "Münzen vom Sägewerk"
    - zoladz:    ~ return "Eichel der Alten Eiche"
    - piolun:    ~ return "Wermut"
    - korale:    ~ return "Vogelbeerkette"
    - swiatek:   ~ return "Heiligenfigur aus dem Bildstock"
    - podkowa:   ~ return "Hufeisen des Schmieds"
    - krzyzyk:   ~ return "Kreuz des Schmieds"
    - gromnica:  ~ return "Lichtmesskerze"
    - szczenie_psa:
        { rozdzial_trzynasty:
            ~ return "Fuchsroter Hund"
        }
        ~ return "Fuchsroter Welpe"
    - bucik_marysi:
        { drugi_drewniak:
            ~ return "Marysias Holzschuhe"
        }
        ~ return "Marysias Holzschuh"
    - wstazka_marysi: ~ return "Marysias Band"
    - rozaniec: ~ return "Geweihter Rosenkranz"
}
~ return ""

// Opis wyświetlany pod nazwą.
=== function opis_przedmiotu(p)
{ p:
    - siekiera:
        { siekiera_dziadka:
            ~ return "Eine Axt mit abgegriffenem, dunklem Stiel. Großvater Maciek kaufte sie einst in der Stadt, mit dem Lohn aus vier Jahren Arbeit auf fremdem Feld. Der Vater gab sie Jaromir am Tag seiner Hochzeit – nun ist er der Bauer auf dem Hof."
        }
        ~ return "In der Stadt gekauft, mit dem Lohn aus vier Jahren Arbeit auf fremdem Feld. Auf ihr ruht die ganze Zukunft."
    - chleb:     ~ return "Hart, aus grobem Schrot, in ein Leinentüchlein gewickelt. Das muss lange reichen."
    - pies_towarzysz: ~ return "Mager, mit langer Schnauze und zu großen Pfoten. Er hat Maciek vor dem Wesen aus dem Dickicht verteidigt und weicht seit jener Nacht nicht von seiner Seite."
    - figurka:
        { rozdzial_trzynasty && przeszukal_zgliszcza && not figurka_w_bagnie:
            ~ return "Eine kleine Holzgestalt mit Armen, die bis zu den Füßen reichen, auf einer Seite angekohlt. Nach über sechzig Jahren ist sie nach Zapadlina zurückgekehrt. Das Holz ist immer kalt und feucht, selbst an einem trockenen Tag."
        }
        { rozdzial_trzynasty:
            ~ return "Eine kleine Holzgestalt mit Armen, die bis zu den Füßen reichen, auf einer Seite angekohlt. Nach über sechzig Jahren ist sie wieder ans Licht gekommen. Das Holz ist immer kalt und feucht, selbst an einem trockenen Tag."
        }
        ~ return "Eine kleine Holzgestalt mit Armen, die bis zu den Füßen reichen, auf einer Seite angekohlt. Aus der Asche der Hexenhütte gescharrt."
    - krzesiwo:
        { krzesiwo_od_babki:
            ~ return "Großvater Macieks kleiner, geschwärzter Feuerstahl. Großmutter Marianna gab ihn Jaromir auf dem Sterbebett. Der Großvater trug ihn bis zuletzt bei sich."
        }
        { krzesiwo_na_slubie:
            ~ return "Großvater Macieks kleiner, geschwärzter Feuerstahl. Der Vater gab ihn Jaromir am Tag der Hochzeit, zusammen mit der Axt – der Großvater trennte sich bis zuletzt nicht von ihm."
        }
        ~ return "Er lag in der Asche neben der Figur. Ob man mit ihm die Hütte der Hexe angezündet hat?"
    - zapasy:
        { figurka_u_staruchy:
            ~ return "Zwei Laibe Brot, ein Sack Grütze, Salz, ein Stück Speck und ein Korb Saatkartoffeln. Gekauft mit den Münzen der Alten."
        }
        ~ return "Ein Laib Brot, eine Handvoll Salz und ein Beutelchen Grütze. Das muss reichen, bis irgendetwas wächst."
    - nasiona:   ~ return "Auf dem Markt in der Stadt gekauft. Es war Frühling – sie mussten so rasch wie möglich in die Erde."
    - nozyk:     ~ return "Ein Geschenk des Vaters zum Namenstag. Klein, mit abgegriffenem Holzgriff und einer Klinge, die der Vater am Wetzstein geschärft hat. Jaromir hat damit schon so manchen Bogen geschnitzt."
    - kora:      ~ return "Ein zur Rolle gedrehtes Stück Kiefernrinde vom Fuß des Baumes mit der Spirale. Auf der glatten Seite hat jemand Reihen von Strichen und Kringeln eingeritzt – beinahe wie Buchstaben, und doch kennt Jaromir keinen davon."
    - ksiega:
        { ksiega_zatrzymana:
            ~ return "Herrn Ignacys dickes Heft, in Leder gebunden und in sorgfältiger, schräger Schrift beschrieben – Geschichten aus der Gegend um den Buchenkamm. Der Lehrer hat es ihm überlassen. Lesen kann man darin nur bei Tag."
        }
        ~ return "Herrn Ignacys dickes Heft, in Leder gebunden und in sorgfältiger, schräger Schrift beschrieben – Geschichten aus der Gegend um den Buchenkamm. Lesen kann man darin nur bei Tag, und zu Weihnachten muss es zurückgegeben werden."
    - szczeniak:
        { rozdzial_jedenasty:
            ~ return "Ein Nachkomme von Großvater Macieks Hund – einst ein Welpe vom alten Staś, heute selbst alt, mit grauer Schnauze. Noch immer schläft er am Fußende des Lagers, und noch immer knurrt er im Schlaf zum Wald hin."
        }
        { rozdzial_piaty:
            ~ return "Ein Nachkomme von Großvater Macieks Hund, einst ein Welpe, den der alte Staś zu Heiligabend schenkte. Er ist zu einem großen Tier mit spitzen Ohren und einem weißen Fleck auf der Brust herangewachsen. Er schläft am Fußende des Lagers und knurrt im Schlaf zum Fenster hin."
        }
        ~ return "Ein Welpe, Nachkomme von Großvater Macieks Hund, ein Geschenk des alten Staś zu Heiligabend. Spitze Ohren, ein weißer Fleck auf der Brust und Pfoten, zu groß für den übrigen Körper. Er schläft am Fußende des Lagers und knurrt im Schlaf zum Fenster hin."
    - mak:       ~ return "Ein Läppchen mit einer Handvoll Mohn, heimlich aus der Schüssel vom Heiligabend genommen. Nach Herrn Ignacys Buch muss die Mitternachtsfrau jedes Körnchen zählen, ehe sie näher kommt."
    - monety:    ~ return "Schwere, kalte Silbermünzen mit einem Adler auf der einen Seite – Herrn Urbaniaks Lohn für einen Sommer beim Bretterstapeln."
    - zoladz:    ~ return "Eine große, glatte Eichel, unter den Wurzeln der gefällten Alten Eiche aufgelesen. Sie ist noch immer warm, als lebte etwas in ihr."
    - piolun:    ~ return "Ein Bund graugrüner Stängel mit bitterem, scharfem Geruch. Hanka hat ihn ihm zu Pfingsten gegeben – es heißt, was dann aus dem Wasser steigt, fürchtet den Wermut mehr als das Feuer."
    - korale:    ~ return "Eine Kette aus Vogelbeeren, nach der Nacht mit den Rusalken auf dem Bootssteg gefunden. Sie gehörte Kaśka, der Tochter der Wójciks. Die Beeren sind noch immer nass und rot wie frisches Blut."
    - swiatek:   ~ return "Eine hölzerne Muttergottes mit dem Kinde, nachts von Urbaniaks Wagen geholt, als seine Leute die Bildstöcke am Waldrand ausgruben. Ihr Gesicht ist vom Regen so abgewetzt, dass man es kaum noch erkennt. Unter den Brettern im Versteck im alten Holunder verborgen."
    - podkowa:   ~ return "Ein Hufeisen, das Hankas Vater zur Hochzeit geschmiedet hat. Es hängt über der Schwelle der Hütte, die Enden nach oben, damit nichts Böses hereinkommt und das Glück nicht herausfällt."
    - krzyzyk:   ~ return "Ein kleines eisernes Kreuz an einem Lederriemen, von Hankas Vater zur Hochzeit geschmiedet. Hanka trägt es um den Hals und legt es nie ab – der Schmied hat es ihr so eingeschärft."
    - gromnica:  ~ return "Eine dicke Wachskerze, zu Lichtmess in Bukowiec geweiht. In jedem Haus muss eine sein – für Gewitter, Geburt und Tod."
    - bucik_marysi:
        { drugi_drewniak:
            ~ return "Ein Paar kleiner Holzschuhe aus Lindenholz, rot bemalt und mit Filz aus Großvater Dobrosławs altem Hut ausgelegt. Den zweiten brachte der weiße Wolf unter der Eiche hervor."
        }
        { dlug_jagny == oddany_drewniak:
            ~ return "Ein kleiner Holzschuh aus Lindenholz, rot bemalt und mit Filz aus Großvater Dobrosławs altem Hut ausgelegt. Den anderen hat Jagna genommen."
        }
        { rozdzial_siedemnasty:
            ~ return "Ein kleiner Holzschuh aus Lindenholz, rot bemalt und mit Filz aus Großvater Dobrosławs altem Hut ausgelegt. Der andere ist im Wald geblieben."
        }
        ~ return "Ein kleiner Holzschuh aus Lindenholz, rot bemalt und mit Filz aus Großvater Dobrosławs altem Hut ausgelegt. Der andere ist im Roggen geblieben, bei der, die ihn festhielt."
    - wstazka_marysi:
        { pani_w_zbozu_noc == gonil_babe:
            ~ return "Das rote Band, das Hanka Marysia am Johannisabend ins Haar geflochten hat. Es hing in den Disteln am Feldrain."
        }
        ~ return "Das rote Band, das Hanka Marysia am Johannisabend ins Haar geflochten hat. Es hing an einem Wacholder am Rand des Jungholzes, in der Höhe einer Kinderhand."
    - rozaniec: ~ return "Ein hölzerner Rosenkranz, vom Pfarrer aus Bukowiec geweiht. Darauf hat er geschworen, mit dem Heidentum zu brechen."
    - szczenie_psa:
        { rozdzial_dziewietnasty && not marysia_odzyskana:
            ~ return "Ein fuchsroter Hund mit weißem Fleck auf der Brust, ein Nachkomme von Großvater Macieks Hund. Er schläft unter der Bank, auf der Marysia geschlafen hat, und lässt sich von dort nicht weglocken."
        }
        { rozdzial_trzynasty:
            ~ return "Ein fuchsroter Hund mit weißem Fleck auf der Brust, ein Nachkomme von Großvater Macieks Hund. Aus ihm ist ein hochbeiniger Junghund geworden, er folgt Marysia auf Schritt und Tritt und knurrt jeden an, der gegen sie die Stimme erhebt."
        }
        ~ return "Ein fuchsroter Welpe mit weißem Fleck auf der Brust, ein Nachkomme von Großvater Macieks Hund. Er zernagt alles, was er findet, schläft neben Marysias Wiege und weicht ihr nicht von der Seite."
}
~ return ""
