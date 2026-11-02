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
            ~ return "La hache de grand-père Maciek"
        }
        ~ return "Hache"
    - chleb:     ~ return "Miche de pain"
    - pies_towarzysz: ~ return "Le chien – un compagnon"
    - figurka:   ~ return "Figurine calcinée"
    - krzesiwo:  ~ return "Briquet à silex"
    - zapasy:    ~ return "Provisions de la ville"
    - nasiona:   ~ return "Graines potagères"
    - nozyk:     ~ return "Canif"
    - kora:      ~ return "Écorce marquée"
    - ksiega:    ~ return "Livre de contes"
    - szczeniak: ~ return imie_psa
    - mak:       ~ return "Une poignée de graines de pavot"
    - monety:    ~ return "Pièces de la scierie"
    - zoladz:    ~ return "Gland du Vieux Chêne"
    - piolun:    ~ return "Absinthe"
    - korale:    ~ return "Collier de sorbier"
    - swiatek:   ~ return "Statuette de l’oratoire"
    - podkowa:   ~ return "Le fer à cheval du forgeron"
    - krzyzyk:   ~ return "La croix du forgeron"
    - gromnica:  ~ return "Cierge de la Chandeleur"
    - szczenie_psa:
        { rozdzial_trzynasty:
            ~ return "Chien roux"
        }
        ~ return "Chiot roux"
    - bucik_marysi:
        { drugi_drewniak:
            ~ return "Les sabots de Marysia"
        }
        ~ return "Le sabot de Marysia"
    - wstazka_marysi: ~ return "Le ruban de Marysia"
    - rozaniec: ~ return "Chapelet béni"
}
~ return ""

// Opis wyświetlany pod nazwą.
=== function opis_przedmiotu(p)
{ p:
    - siekiera:
        { siekiera_dziadka:
            ~ return "Une hache au manche sombre et usé. Grand-père Maciek l’avait achetée jadis en ville avec l’argent de quatre années de labeur sur le champ d’un autre. Son père l’a donnée à Jaromir le jour de ses noces – c’est lui, désormais, le maître de la ferme."
        }
        ~ return "Achetée en ville avec l’argent de quatre années de labeur sur le champ d’un autre. Tout l’avenir repose sur elle."
    - chleb:     ~ return "Un pain bis, dur, enveloppé dans un chiffon de lin. Il doit durer longtemps."
    - pies_towarzysz: ~ return "Maigre, le museau long et les pattes trop grandes. Il a défendu Maciek contre la créature des fourrés et, depuis cette nuit-là, ne le quitte plus d’un pas."
    - figurka:
        { rozdzial_trzynasty && przeszukal_zgliszcza && not figurka_w_bagnie:
            ~ return "Une petite silhouette de bois aux bras qui descendent jusqu’aux pieds, calcinée d’un côté. Elle est revenue à Zapadlina après plus de soixante ans. Le bois est toujours froid et humide, même par temps sec."
        }
        { rozdzial_trzynasty:
            ~ return "Une petite silhouette de bois aux bras qui descendent jusqu’aux pieds, calcinée d’un côté. Après plus de soixante ans, elle a refait surface. Le bois est toujours froid et humide, même par temps sec."
        }
        ~ return "Une petite silhouette de bois aux bras qui descendent jusqu’aux pieds, calcinée d’un côté. Tirée des cendres de la chaumière de la sorcière."
    - krzesiwo:
        { krzesiwo_od_babki:
            ~ return "Le petit briquet à silex noirci de grand-père Maciek. Grand-mère Marianna l’a remis à Jaromir sur son lit de mort. Grand-père ne s’en est jamais séparé, jusqu’à la fin."
        }
        { krzesiwo_na_slubie:
            ~ return "Le petit briquet à silex noirci de grand-père Maciek. Son père l’a donné à Jaromir le jour de ses noces, avec la hache – grand-père l’a porté sur lui jusqu’à la fin."
        }
        ~ return "Il gisait dans les cendres, près de la figurine. Serait-ce avec lui qu’on a mis le feu à la chaumière de la sorcière ?"
    - zapasy:
        { figurka_u_staruchy:
            ~ return "Deux miches de pain, un sac de gruau, du sel, un morceau de lard et un panier de pommes de terre à planter. Achetés avec les pièces de la vieille."
        }
        ~ return "Une miche de pain, une poignée de sel et un petit sac de gruau. Il faudra s’en contenter jusqu’à ce que quelque chose pousse."
    - nasiona:   ~ return "Achetées sur la place du marché, en ville. C’était le printemps – il fallait les semer au plus vite."
    - nozyk:     ~ return "Un cadeau de son père pour sa fête. Petit, avec un manche de bois usé et une lame que son père a affûtée à la pierre. Jaromir en a déjà taillé plus d’un arc."
    - kora:      ~ return "Un morceau d’écorce de pin roulé en cornet, pris au pied de l’arbre à la spirale. Sur la face lisse, quelqu’un a gravé des rangées de traits et de cercles – on dirait des lettres, et pourtant Jaromir n’en connaît aucune."
    - ksiega:
        { ksiega_zatrzymana:
            ~ return "L’épais cahier de monsieur Ignacy, relié de cuir et couvert d’une écriture soignée et penchée – des histoires des environs de la Crête des Hêtres. Le maître a permis qu’on le garde. On ne peut le lire que de jour."
        }
        ~ return "L’épais cahier de monsieur Ignacy, relié de cuir et couvert d’une écriture soignée et penchée – des histoires des environs de la Crête des Hêtres. On ne peut le lire que de jour, et il faudra le rendre à Noël."
    - szczeniak:
        { rozdzial_jedenasty:
            ~ return "Un chien de la lignée du chien de grand-père Maciek – jadis un chiot donné par le vieux Staś, aujourd’hui vieux lui-même, le museau gris. Il dort toujours au pied du lit et grogne toujours en dormant du côté de la forêt."
        }
        { rozdzial_piaty:
            ~ return "Un chien de la lignée du chien de grand-père Maciek, jadis un chiot offert par le vieux Staś à la veillée de Noël. Il est devenu un grand chien aux oreilles pointues, avec une tache blanche sur le poitrail. Il dort au pied du lit et grogne en dormant du côté de la fenêtre."
        }
        ~ return "Un chiot de la lignée du chien de grand-père Maciek, cadeau du vieux Staś pour la veillée de Noël. Des oreilles pointues, une tache blanche sur le poitrail et des pattes trop grandes pour le reste du corps. Il dort au pied du lit et grogne en dormant du côté de la fenêtre."
    - mak:       ~ return "Un chiffon noué sur une poignée de graines de pavot chipées dans le plat de la veillée de Noël. D’après le livre de monsieur Ignacy, la Dame de Minuit doit compter chaque graine avant de pouvoir s’approcher."
    - monety:    ~ return "De lourdes pièces d’argent, froides, frappées d’un aigle sur une face – le salaire de monsieur Urbaniak pour un été passé à empiler des planches."
    - zoladz:    ~ return "Un gros gland lisse, ramassé sous les racines du Vieux Chêne abattu. Il est encore tiède, comme si quelque chose vivait dedans."
    - piolun:    ~ return "Une botte de tiges d’armoise gris-vert à l’odeur amère et âpre. Hanka la lui a donnée à la Pentecôte – on dit que ce qui sort alors de l’eau craint l’absinthe plus que le feu."
    - korale:    ~ return "Un collier de baies de sorbier trouvé sur le ponton après la nuit des roussalkas. Il appartenait à Kaśka, la fille des Wójcik. Les baies sont toujours mouillées et rouges comme du sang frais."
    - swiatek:   ~ return "Une Vierge à l’Enfant en bois, tirée de nuit de la charrette d’Urbaniak, quand ses hommes déterraient les oratoires au pied de la forêt. Les pluies ont tant usé son visage qu’on le distingue à peine. Cachée sous les planches de la cabane du vieux sureau."
    - podkowa:   ~ return "Un fer à cheval forgé par le père de Hanka pour les noces. Il est pendu au-dessus du seuil de la chaumière, branches en l’air, pour que rien de mauvais n’entre et que la chance ne se répande pas au-dehors."
    - krzyzyk:   ~ return "Une petite croix de fer sur un lacet de cuir, forgée par le père de Hanka pour les noces. Hanka la porte au cou et ne l’ôte pas – le forgeron lui a ordonné de ne jamais l’enlever."
    - gromnica:  ~ return "Un gros cierge de cire béni à Bukowiec le jour de la Chandeleur. Chaque maison doit en avoir un – pour l’orage, pour l’accouchement et pour la mort."
    - bucik_marysi:
        { drugi_drewniak:
            ~ return "Une paire de petits sabots de tilleul, peints en rouge et garnis du feutre d’un vieux chapeau de grand-père Dobrosław. Le second, c’est le loup blanc qui l’a rapporté de sous le chêne."
        }
        { dlug_jagny == oddany_drewniak:
            ~ return "Un petit sabot de tilleul, peint en rouge et garni du feutre d’un vieux chapeau de grand-père Dobrosław. Jagna a pris le second."
        }
        { rozdzial_siedemnasty:
            ~ return "Un petit sabot de tilleul, peint en rouge et garni du feutre d’un vieux chapeau de grand-père Dobrosław. Le second est resté dans la forêt."
        }
        ~ return "Un petit sabot de tilleul, peint en rouge et garni du feutre d’un vieux chapeau de grand-père Dobrosław. Le second est resté dans le seigle, chez celle qui le tenait."
    - wstazka_marysi:
        { pani_w_zbozu_noc == gonil_babe:
            ~ return "Le ruban rouge que Hanka avait tressé dans les cheveux de Marysia la veille de la Saint-Jean. Il pendait aux chardons, au bord de la raie."
        }
        ~ return "Le ruban rouge que Hanka avait tressé dans les cheveux de Marysia la veille de la Saint-Jean. Il pendait à un genévrier à l’orée du jeune bois, à hauteur d’une petite main d’enfant."
    - rozaniec: ~ return "Un chapelet de bois béni par le curé de Bukowiec. Il a juré dessus d’en finir avec les pratiques païennes."
    - szczenie_psa:
        { rozdzial_dziewietnasty && not marysia_odzyskana:
            ~ return "Un chien roux avec une tache blanche sur le poitrail, de la lignée du chien de grand-père Maciek. Il dort sous le banc où dormait Marysia, et rien ne peut l’en faire sortir."
        }
        { rozdzial_trzynasty:
            ~ return "Un chien roux avec une tache blanche sur le poitrail, de la lignée du chien de grand-père Maciek. Il est devenu un chien haut sur pattes, suit Marysia pas à pas et grogne contre quiconque élève la voix sur elle."
        }
        ~ return "Un chiot roux avec une tache blanche sur le poitrail, de la lignée du chien de grand-père Maciek. Il mâchonne tout ce qu’il trouve, dort près du berceau de Marysia et ne la quitte pas d’un pas."
}
~ return ""
