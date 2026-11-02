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
# rozdzial: Chapitre dix-neuvième
# tytul: L’aube
Le soleil surgit de derrière la forêt à l’instant même où Jaromir parvenait à la lisière du jeune bois. Sur les andains, la rosée se mit à scintiller si vivement qu’il en eut mal aux yeux, et dans les blés une alouette chanta – le premier oiseau qu’il entendait depuis trois jours.
{ ekwipunek ? szczenie_psa:
    Le chien le devança et fila vers le village en aboyant si furieusement que toutes les cours de Zapadlina lui répondirent. # pokaz: pies
}
{ wilk_przy_jaromirze && znak_rozpoznania != po_wilku:
    Le loup blanc les accompagna jusqu’aux derniers épicéas et s’y assit. Quand Jaromir se retourna, un instant plus tard, il avait disparu. # pokaz: wilk
}
Hanka accourait de la chaumière, sa berceuse interrompue au milieu d’un mot, pieds nus dans l’herbe mouillée, les bras tendus devant elle – comme si elle craignait, en les baissant, de se réveiller près d’un éclat de pin éteint. Elle ne criait pas.{ pani_w_zbozu_noc == za_spiewem: Elle ne le pouvait pas. De sa gorge ne sortait qu’un sifflement sec et haché.} Elle les rejoignit à mi-chemin et les étreignit tous deux, de toutes ses forces, si bien que Marysia poussa un petit cri indigné. Elle enfouit son visage dans les cheveux de sa fille et, un moment, ne fit que respirer ; puis elle se mit à rire et à pleurer à la fois, couvrit de baisers les pieds sales de la petite, ses mains, sa tête. Alors seulement elle regarda Jaromir, ses joues lacérées par les branches, et les toucha du bout des doigts, avec précaution, comme pour s’assurer que c’était bien lui. # pokaz: uscisk
Jaromir sentit que ses jambes ne le portaient plus. Il s’assit dans l’herbe. Ils restèrent ainsi tous les trois, tandis que les gens, râteau en main, se tenaient sur les andains sans que personne bougeât.
Antek fut le premier à s’approcher. Il ne dit rien – il ôta sa veste et en couvrit la petite.{ zastaw_u_leszego == zastaw_cien: Ce n’est qu’à midi, quand ils sortirent dans la cour, que Hanka baissa les yeux vers les pieds de son mari et ne put les détacher de l’endroit où aurait dû s’étendre son ombre. Elle ne posa pas de question. Jaromir lui en fut plus reconnaissant que de toute autre chose.} # pokaz: antek # dalej
{ dlug_u_jagny:
    -> dlug_jagny_dobry
}
-> lato_po_powrocie

= dlug_jagny_dobry
# tlo: wies_sianokosy
Jagna attendait près de la clôture, à côté de sa charrette. Quand Jaromir passa devant elle avec Marysia dans les bras, elle leva sur lui son œil valide. # pokaz: jagna
– La première chose que tu rapporteras de la forêt – rappela-t-elle à mi-voix. – C’était le prix.
Hanka s’arrêta net. Marysia se serra contre le cou de Jaromir.
# pytanie: Que va donner Jaromir à Jagna ?
*   [Le ruban noué à son poignet.]
    ~ dlug_jagny = oddana_wstazka
    Jaromir leva la main, une boucle rouge autour du poignet. – Il allait devant moi quand j’écartais les branches – dit-il. – Il est sorti de la forêt avant que j’en ramène ma fille.
    ~ ekwipunek -= wstazka_marysi
    Jagna l’observa sans un mot, puis les coins de sa bouche frémirent. Elle fit glisser le ruban de son poignet et le cacha dans son corsage. – Ce qui a été dans la forêt et en est revenu me servira pour mon ouvrage – dit-elle. # tobolek
    Hanka serra les lèvres. Ce ruban, elle l’avait tressé dans les cheveux de Marysia la veille de la Saint-Jean. # dalej
*   [Le sabot qu’il portait sous sa veste, contre sa poitrine.]
    ~ dlug_jagny = oddany_drewniak
    – Je l’ai porté contre mon cœur – dit Jaromir. – Devant elle. – Il glissa la main sous sa veste et tendit à Jagna un petit sabot rouge{ drugi_drewniak: – l’un des deux}.
    { drugi_drewniak:
        ~ drugi_drewniak = false
    - else:
        ~ ekwipunek -= bucik_marysi
    }
    Jagna le tourna entre ses doigts et renifla le feutre à l’intérieur. – Il a été dans le seigle, chez celle-là, et il a été dans la forêt – grommela-t-elle. – Soit. – Elle le jeta dans son panier d’herbes. # tobolek
    Marysia suivit le sabot des yeux et, quand la charrette s’ébranla, elle se mit à pleurer comme elle n’avait pas pleuré même sous le chêne. À partir de ce jour, elle ne se laissa plus mettre aucune chaussure – elle ruait et hurlait, tant et si bien que Hanka finit par céder. La petite alla pieds nus jusqu’à la première neige. # dalej
*   [Refuser – un enfant n’est pas une chose.]
    ~ dlug_jagny = dlug_odmowiony
    – Vous ne l’aurez pas – dit Jaromir. – Ni aujourd’hui, ni jamais.
    Jagna n’éleva pas la voix. – Ce n’est pas pour elle que je suis là – répondit-elle. – C’est pour ce qui m’est dû. – Elle attela son cheval. – Une dette ne pourrit pas, Jaromir. Elle attendra.
    Elle s’éloigna lentement. Cette nuit-là, Hanka suspendit au-dessus de la couche de la petite tout ce qu’elle possédait : une croix, une couronne d’herbes, un canif. Elle veilla jusqu’à l’aube. # dalej
-   -> lato_po_powrocie

= lato_po_powrocie
# tlo: zniwa
Marysia ne se souvenait de rien.{ rada_przed_borem == rada_ksiedza: Le curé de Bukowiec avait eu raison.} Quand on lui demandait où elle avait été, elle regardait les siens avec étonnement et disait qu’elle avait dormi. Elle avait peur du noir – depuis lors, un éclat de pin brûlait chaque nuit à la fenêtre, bien qu’on n’attendît plus personne – et jamais plus elle ne fredonna sa mélodie. Chaque soir, Hanka tendait l’oreille au chevet de la petite, mais en vain.
Les moissons furent tardives et pénibles. La chaleur pesait sur les champs, l’air était chargé de la poussière des épis et de l’odeur de la paille chauffée, et les faux tintaient de l’aube au crépuscule.{ pole_zbite_gradem: Jaromir, qui n’avait rien à faucher sur sa propre terre, se louait à ceux de chez Staś et aux Kowalczyk, pour une gerbe sur dix.}{ zastaw_u_leszego == zastaw_siekiera: Il fendait le bois avec une hache empruntée à son beau-père – le manche était trop lisse, trop épais, ce n’était pas le sien.}{ zastaw_u_leszego == zastaw_krzesiwo: Il allumait son feu aux braises des voisins ; son propre briquet à silex, il ne l’avait plus.}
{ pies_pobiegl_sam:
    ~ ekwipunek += szczenie_psa
    Une semaine plus tard, par une nuit de pluie, un chien gémit derrière la porte. Il était maigre comme un clou, les pattes écorchées jusqu’au sang. Jaromir le fit entrer sans un mot, et le chien dormit deux jours sous le banc de Marysia. # tobolek
}
{ znak_rozpoznania == po_wilku:
    Le soir, Antek se postait au bord du champ et écoutait. Depuis ce matin-là, plus aucun hurlement ne montait de la forêt.
}
Mais l’eau ne leur laissait pas de répit. Marysia refusait d’aller au lac et, quand Hanka faisait la lessive au ruisseau, la petite se cachait derrière sa jupe, se raidissait tout entière et ne quittait pas le courant des yeux.{ dar_pominiety: En juillet, Hanka trouva sur le seuil une couronne de rue mouillée – pareille à celle que Jaromir portait chaque année sur les pierres de l’autre côté du lac. Elle gisait dans une flaque, alors qu’il n’avait pas plu depuis une semaine.} # dalej
-> kijanki

= kijanki
# tlo: calun_noc
Vers la fin d’août, la nuit où cela faisait trois ans que Marysia était venue au monde, Jaromir fut réveillé par un claquement. Régulier, mouillé, venu du lac – un battoir contre une pierre. Il se souvenait de ce bruit du temps où Marysia était encore au berceau.
Il regarda le banc près du poêle. La petite dormait, roulée en boule, le poing sous la joue. Hanka respirait paisiblement.
Il sortit sans bruit, pieds nus, fit le tour du lac par la rive et se tapit dans les roseaux de l’autre côté, tout près des pierres plates. Des mamounes y étaient agenouillées – bossues, ruisselantes, vêtues de haillons de mousse – et lavaient dans l’eau quelque chose de petit et de clair. Juste à la taille d’un enfant. Elles n’appelaient aucun nom. Quand les roseaux bruissèrent, la plus vieille ne leva même pas la tête. # pokaz: mamuny
{ dar_pominiety:
    – Une fois, tu as oublié, maître – croassa-t-elle dans l’eau. – Nous ne laverons pas plus lentement.
- else:
    – Pas aujourd’hui, maître – croassa-t-elle dans l’eau. – Nous lavons ce que l’eau nous apporte.
}
– Le jour des Morts, nous apporterons ce qui est lavé – ajouta une autre. # dalej
-> jesien_przed_zaduszkami

= jesien_przed_zaduszkami
# tlo: jesien_zaduszki
~ zapiski += pan_lasu_11
L’automne vint tôt. Le battage dans les granges, les semailles du seigle d’hiver, le teillage du lin – le village faisait son ouvrage comme chaque année, et Jaromir s’accrochait à n’importe quelle besogne pour ne pas rester seul avec ses pensées. Marysia grandissait. En octobre, pour la première fois depuis son retour, elle éclata de rire à table, et Hanka sortit dans l’entrée et ne revint pas de longtemps.
Jaromir ne dit pas à Hanka ce qu’il avait vu sur les pierres, de l’autre côté du lac. Mais chaque soir, avant de s’endormir, il songeait au temps qui le séparait encore du jour des Morts, et chaque fois il lui semblait qu’il s’était raccourci davantage que la nuit précédente.
Plus le jour des Morts approchait, plus Zapadlina devenait silencieuse. Les gens rentraient des champs avant la nuit, verrouillaient leurs portes, et chaque soir un brouillard lourd et mouillé montait de la forêt à travers les prés, jusque contre les clôtures. Jaromir se rappelait chaque mot : « Le jour des Morts, je viendrai au village. Alors nous ferons nos comptes jusqu’au bout. » # pokaz: mgla
Le premier novembre, le village se rendit au cimetière de Bukowiec. Cette année-là, au lieu de lumignons, les gens emportèrent de chez eux des cierges de la Chandeleur. Sur le chemin du retour, ils s’éteignirent d’un seul souffle, tous ensemble, alors que l’air était immobile. # pokaz: zgasly # dalej
-> rozdzial_dziewietnasty_ciag_dalszy

= powrot_bez_niej
# tlo: laka_swit
# rozdzial: Chapitre dix-neuvième
# tytul: L’aube
Le soleil surgit de derrière la forêt à l’instant même où Jaromir parvenait à la lisière du jeune bois. Sur les andains, la rosée se mit à scintiller, et dans les blés une alouette chanta. Jaromir ne l’entendit pas.
Hanka accourait de la chaumière, la berceuse encore aux lèvres, pieds nus dans l’herbe mouillée, les bras tendus devant elle. À mi-chemin, elle ralentit. Puis elle s’arrêta.
Elle ne cria pas.{ pani_w_zbozu_noc == za_spiewem: Elle ne le pouvait pas.} Elle prit l’enfant des bras de Jaromir, avec précaution, comme on soulève un dormeur, et enfouit son visage dans les cheveux fins, ainsi qu’elle le faisait chaque soir. Elle les respira longtemps. Ils ne sentaient rien – ni le lait, ni la fumée, ni elle. Elle comprit. # pokaz: kolysze
Elle s’assit dans l’herbe avec l’enfant et se mit à le bercer. Les gens, râteau en main, restaient sur les andains, et personne ne bougeait. Antek fut le premier à s’approcher. Il ôta son bonnet. # pokaz: antek
{ wilk_przy_jaromirze && znak_rozpoznania != po_wilku:
    Le loup blanc, qui avait suivi Jaromir à travers tout le jeune bois, s’arrêta près des derniers épicéas. Quand quelqu’un regarda de ce côté, il n’y était plus. # pokaz: wilk
}
{ ekwipunek ? szczenie_psa:
    Le chien se coucha aux pieds de Hanka et gémit, tout bas, sans relâche, jusqu’à ce que quelqu’un l’emmène. # pokaz: pies
}
{ zastaw_u_leszego == zastaw_cien:
    Personne ne remarqua que Jaromir ne projetait pas d’ombre. Personne ne le regardait.
}
{ dlug_u_jagny:
    Jagna s’approcha du côté de la clôture et se pencha sur l’enfant dans les bras de Hanka. Elle examina les petits pieds raides et le sourire sage, figé. Puis elle se redressa et dit à Jaromir, à voix basse, pour que Hanka n’entende pas : – Ce n’est pas ton enfant. C’est du bois. C’est sorti de la forêt juste derrière toi. Je peux le prendre à la place de la dette. Je sais ce qu’on fait d’une chose pareille. # pokaz: jagna
- else:
    Le vieux Staś arriva clopin-clopant, appuyé sur son bâton, regarda l’enfant et se signa. – Les enfants de la forêt, on les met pas en terre bénite – marmonna-t-il. – Du temps de mon grand-père, quand y avait pas encore d’église à Bukowiec et qu’il fallait aller à la ville pour chaque enterrement, tout le monde le savait déjà… Ou bien le feu, ou bien au pied de la forêt. # pokaz: stas
}
Jaromir se rappela la voix sous le chêne : « Tu l’enterreras comme le tien. »
# pytanie: Que va faire Jaromir du corps ?
*   [L’enterrer comme sa fille, au cimetière.]
    ~ cialo_kopii = pochowane
    Il le prit des bras de Hanka et le porta dans la chaumière. Il le coucha sur le banc où dormait Marysia et le couvrit d’une toile de lin. # dalej
*   { dlug_u_jagny } [Le donner à Jagna.]
    ~ cialo_kopii = oddane_jagnie
    Hanka ne voulait pas le lâcher. Elle ne desserra les bras que lorsque Jagna lui posa la paume sur les yeux et murmura quelque chose. Jagna enveloppa le corps dans un drap de lin, le déposa sur sa charrette entre les paniers d’herbes et repartit lentement vers Bukowiec. La dette était payée. # dalej
*   [Le brûler dans le poêle.]
    ~ cialo_kopii = spalone
    Le soir, quand Hanka se fut enfin endormie d’épuisement, Jaromir fit un grand feu. Longtemps, il ne put se résoudre à déposer l’enfant dans les flammes. Quand il s’y décida, cela ne brûla pas comme un corps. Cela craquait comme du bois résineux, sifflait de sève, et la fumée sentait les aiguilles de pin. Au matin, il ne restait dans la cendre que des charbons.
    Hanka vit la cendre. Elle ne dit rien. À partir de ce matin-là, elle n’alluma plus une seule fois le poêle – c’était toujours lui qui faisait le feu. # dalej
*   { not dlug_u_jagny } [L’enterrer sous le jeune bois, comme le conseille Staś.]
    ~ cialo_kopii = pod_mlodnikiem
    Il creusa la tombe lui-même, sous les derniers épicéas, là où la terre était molle d’aiguilles. Hanka se tenait à côté et ne se laissa pas consoler. # dalej
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
Le petit cercueil, Jaromir l’assembla lui-même, avec le bois du vieux sureau – celui-là même dans la couronne duquel il avait eu sa cabane quand il était enfant.{ zastaw_u_leszego == zastaw_siekiera: Il l’abattit avec une hache empruntée à son beau-père.} On disait qu’un tel arbre ne se coupe pas, car il porte malheur. Tout était désormais égal à Jaromir. L’entaille fraîche avait une odeur amère et fade, et des branches tombèrent sur sa manche les dernières fleurs desséchées.{ kapliczki_drogi == ocalil_swiatka: Comme il démontait les planches de la cabane, la Mère de Dieu qu’il avait jadis emportée de la charrette de monsieur Urbaniak lui tomba entre les mains. Il la plaça à la tête du cercueil.} Dans le silence, on n’entendait que les coups sur les clous. # pokaz: trumienka
Les fillettes du village tressèrent des couronnes de bleuets et de camomille, cueillis à même la raie, et les posèrent sur le couvercle. Elles sentaient le soleil que personne à Zapadlina n’avait vu ce jour-là. # pokaz: wianki
{ pani_w_zbozu_noc == za_spiewem:
    Hanka ne chanta pas – depuis cette nuit dans le seigle, elle ne le pouvait plus. Elle disait les mots de la berceuse, un à un, d’une voix rauque, sans mélodie, et c’était pire que des larmes.
- else:
    Hanka chanta la berceuse qu’elle fredonnait chaque soir à Marysia. Sa voix ne se brisa pas une seule fois, et c’est pour cela que ce fut le pire.
}
{ cialo_kopii == oddane_jagnie || cialo_kopii == spalone:
    Il n’y avait pas de corps dans le petit cercueil – seulement la robe de Marysia, soigneusement pliée, comme pour être rangée dans un coffre.
}
{ skarb_dla_corki:
    Avant qu’on cloue le couvercle, Jaromir déposa dans le cercueil le trésor de la cabane – {skarb_jaromira == muszelka:le coquillage rayé par une petite dent de travers|{skarb_jaromira == pioro:la plume mâchonnée au tuyau mordillé|le clou couvert de rouille brune}}.
- else:
    ~ ekwipunek -= bucik_marysi
    Avant qu’on cloue le couvercle, Jaromir déposa dans le cercueil {drugi_drewniak:les deux sabots rouges|le sabot rouge – le seul qui lui restait}{uklad_z_mamunami != oddany_skarb:, et à côté {drugi_drewniak:d’eux|de lui} le trésor caché dans la boîte de la cabane – {skarb_jaromira == muszelka:le coquillage blanc|{skarb_jaromira == pioro:la plume de geai|le clou rouillé}}. Il avait voulu le montrer un jour à sa fille}. # tobolek
}
{ cialo_kopii == pod_mlodnikiem:
    Ils recouvrirent de gazon la tombe sous le jeune bois, et à sa tête Antek planta un bâton noué du ruban rouge que Hanka avait défait des cheveux de l’enfant, pour qu’on sache où elle était. # dalej
- else:
    Ils enterrèrent le petit cercueil au cimetière de Bukowiec, sous un bouleau. Le curé{ przysiega_ksiedzu:, qui avait reçu le serment de Jaromir sur le chapelet,} fit tout comme il convenait et ne demanda rien.{ cialo_kopii == oddane_jagnie || cialo_kopii == spalone: Quand le fossoyeur combla la fosse, la terre heurta le couvercle d’un bruit si creux que Jaromir l’entendit ensuite des nuits durant.} # dalej
}
-> jesien_po_pogrzebie

= jesien_po_pogrzebie
# tlo: jesien_zaduszki
Vers la fin d’août, la nuit où cela faisait trois ans que Marysia était venue au monde, Hanka alla seule sur la tombe et y resta assise jusqu’à l’aube. Jaromir ne la suivit pas. Il n’aurait pas su la regarder en face – car il savait ce qu’elle ne lui dirait pas.{ znak_rozpoznania == po_imieniu: S’il ne l’avait pas appelée par son nom.}{ znak_rozpoznania == po_drewniaku: Il s’était laissé prendre au rouge, comme un enfant.}{ znak_rozpoznania == po_buzi: Il l’avait regardée sans la reconnaître.}{ znak_rozpoznania == po_cieniu: Il avait lui-même donné ce qui l’avait trompé ensuite.}
L’automne vint tôt. Le battage dans les granges, les semailles du seigle d’hiver, le teillage du lin – le village faisait son ouvrage comme chaque année, et Hanka avec lui, adroitement et sans un mot. Chaque nuit, Jaromir entendait sa femme se lever et aller et venir dans la pièce, du poêle à la fenêtre, puis de la fenêtre au poêle.
{ pies_pobiegl_sam:
    ~ ekwipunek += szczenie_psa
    Le chien était revenu de la forêt dès juillet, une semaine après la Saint-Jean, maigre comme un clou, et s’était couché sous le banc où dormait Marysia. Rien ne put l’en faire sortir. # tobolek
}
{ dlug_u_jagny && cialo_kopii != oddane_jagnie:
    Jagna ne revint plus une seule fois. La dette n’était pas payée, et Jaromir savait qu’elle le savait aussi.
}
En octobre, Hanka demanda, sans se détourner de la marmite : – Le jour des Morts, les défunts reviennent chez eux. C’est ce qu’on dit. – Elle remua. – Elle viendra ?
Jaromir ne répondit pas. Il se souvenait de la voix de la forêt, qui était arrivée à la moitié de l’air et s’était tue. Il se souvenait aussi de l’autre : « Le jour des Morts, je viendrai au village. Alors nous ferons nos comptes jusqu’au bout. »
Plus le jour des Morts approchait, plus Zapadlina devenait silencieuse. Les gens rentraient des champs avant la nuit, verrouillaient leurs portes, et chaque soir un brouillard lourd et mouillé montait de la forêt à travers les prés, jusque contre les clôtures. # pokaz: mgla
Le premier novembre, le village se rendit au cimetière de Bukowiec. Cette année-là, au lieu de lumignons, les gens emportèrent de chez eux des cierges de la Chandeleur. Sur le chemin du retour, ils s’éteignirent d’un seul souffle, tous ensemble, alors que l’air était immobile. Seul celui de Hanka brûlait encore – d’une flamme égale et calme, comme dans une pièce close. # pokaz: zgasly, gromnica_hanki # dalej
-> rozdzial_dziewietnasty_ciag_dalszy


// Koniec rozdziału dziewiętnastego – dalej rozdział dwudziesty (Ostatnia noc).
=== rozdzial_dziewietnasty_ciag_dalszy ===
# ozdobnik
_Fin du chapitre dix-neuvième._ # dalej
-> rozdzial_dwudziesty
