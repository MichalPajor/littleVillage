// ------------------------------------------------------------
//  Rozdział pierwszy – Lato. Dzieciństwo Jaromira, około pół
//  wieku po prologu. Przebieg zależy od zakończenia prologu:
//    figurka_u_staruchy – dom na pagórku obok Stasia, milczący ojciec
//                         (z psem żyje jeszcze babka Marianna);
//    inaczej            – chata dziadka Maćka (las / mokradła / jezioro),
//                         ojciec opowiada legendy jak bajki.
// ------------------------------------------------------------

=== rozdzial_pierwszy ===
// Czy Maciek miał krzesiwo – babka Marianna może je oddać wnukowi w rozdziale 4.
~ krzesiwo_dziadka = ekwipunek ? krzesiwo
// Nowy bohater – Jaromir zaczyna z pustym tobołkiem (przedmioty Maćka zostają w prologu).
~ ekwipunek = ()
# nowy_tobolek
# tlo: zapadlina_lato
# rozdzial: Chapitre premier
# tytul: L’été
Zapadlina, où grandissait Jaromir, n’était déjà plus le même village que celui où, bien des années auparavant, son grand-père était descendu avec son baluchon. Les maisons s’étaient multipliées – il y en avait désormais neuf, éparpillées sur les pentes et les prés comme des grains jetés à la volée sur un champ. Le bois avait un peu reculé devant les haches, les cultures s’étendaient plus loin, et une solide passerelle de madriers de chêne traversait les marais. Au bord des chemins se dressaient une foule d’oratoires, toujours parés de fleurs fraîches. La brume affectionnait encore cette vallée et, l’été, elle s’y attardait bien après le lever du soleil. Les environs aussi avaient changé : derrière la Crête des Hêtres, à une heure de marche de Zapadlina, avait poussé Bukowiec – un bourg plus grand et plus prospère, avec un moulin, une auberge et une école, et, tout à côté de l’école, une petite église de bois près de laquelle s’était installé un vieux curé. On n’allait plus à la ville que pour les foires et les grandes fêtes patronales.
{ figurka_u_staruchy:
    Jaromir habitait une chaumière sur la butte, à côté de la ferme du vieux Staś, avec qui son père avait grandi comme avec un frère. La maison était petite mais chaude, avec ses murs blanchis à la chaux et son toit de roseaux, et du seuil on découvrait tout le village – les champs, les prés, le lac et le trait sombre de la forêt à l’est.
- else:
    { chata_macka:
        - przy_lesie: Jaromir habitait la maison au pied du bois, celle-là même qu’avait bâtie grand-père Maciek. Son père y avait ajouté une seconde pièce et une grange. Sous la fenêtre poussait un pommier, planté le jour de la naissance de l’enfant, et du côté nord se dressaient des pruniers sauvages qui laissaient souvent tomber de petits fruits verts, encore loin d’être mûrs. Derrière la palissade basse commençait la forêt – l’été, elle sentait la résine et les champignons, et pendant les après-midi brûlants elle offrait une ombre où l’on pouvait rester étendu jusqu’à la nuit tombée.
        - przy_mokradlach: Jaromir habitait la maison près des marais, celle-là même qu’avait bâtie grand-père Maciek – sur un soubassement de pierre que, en un demi-siècle, ni l’eau ni le gel n’avaient ébranlé. Son père y avait ajouté une seconde pièce et une grange. Sous la fenêtre poussait un pommier, planté le jour de la naissance de l’enfant, et du côté nord se dressaient des pruniers sauvages qui laissaient souvent tomber de petits fruits verts, encore loin d’être mûrs. Derrière la palissade basse s’étendaient des prés où marchaient les cigognes, et au crépuscule montait des mares un concert de grenouilles si sonore qu’il couvrait même les grillons.
        - else: Jaromir habitait la maison au bord du lac, celle-là même qu’avait bâtie grand-père Maciek. Son père y avait ajouté une seconde pièce et une grange. Sous la fenêtre poussait un pommier, planté le jour de la naissance de l’enfant, et du côté nord se dressaient des pruniers sauvages qui laissaient souvent tomber de petits fruits verts, encore loin d’être mûrs. Du seuil jusqu’à l’eau, il n’y avait guère que quelques dizaines de pas, et l’été le garçon les franchissait en courant tant de fois par jour qu’il s’était tracé dans l’herbe son propre sentier.
    }
}
Son père, Dobrosław, était alors déjà un homme d’âge mûr, à la barbe grisonnante et aux mains crevassées par le travail. { figurka_u_staruchy: Il parlait peu et riait plus rarement encore. Quand il s’asseyait le soir sur le seuil, il regardait longuement du côté des marais, comme s’il guettait quelque chose. Il aimait son fils à sa manière – en silence, d’une main lourde posée sur l’épaule et du meilleur morceau de viande glissé dans son écuelle. | Il aimait plaisanter et, le soir, il racontait des histoires qu’il tenait lui-même de son père – sur les créatures des tourbières et sur l’herboriste du lac. Jaromir les écoutait le souffle coupé, bien qu’il sût que ce n’étaient que des contes. }
Sa mère, Agnieszka, avait bien quinze ans de moins que son mari. Elle sentait le pain et la fumée du four, chantait à chaque ouvrage et ne savait jamais rester fâchée longtemps.
{ figurka_u_staruchy && los_psa == oswojony:
    Dans un coin de la pièce, sur un escabeau, se tenait grand-mère Marianna, voûtée et silencieuse. Parfois elle caressait la tête de son petit-fils et le regardait comme si elle voyait en lui quelqu’un d’autre.
}
Le garçon n’était guère à la maison. L’été lui appartenait – tout entier, des premières chaleurs jusqu’à la moisson – et ses journées se déroulaient presque à l’identique, et pourtant aucune ne ressemblait à la veille. # dalej
-> poranek

= poranek
# tlo: poranek
Il était réveillé par le chant du coq et par un rai de lumière qui se faufilait par la fente du volet et se posait en bande dorée sur son visage. Il restait encore un moment sous l’édredon, à écouter sa mère s’affairer près du fourneau – l’eau bouillonner dans les marmites, le feu attisé crépiter sous la plaque, les planches grincer sous ses pas. De la pièce montait une odeur de lait et de pain frais.
Puis il se rappelait que c’était l’été, et il bondissait de sa couche comme s’il s’était brûlé.
Il déjeunait presque debout. Une épaisse tartine beurrée, un gobelet de lait tout juste tiré de la vache, encore tiède, parfois du fromage blanc. Sa mère secouait la tête en souriant.
– Assieds-toi donc, mon fils. Personne ne va te le prendre. La journée sera bien assez longue pour jouer avec les gamins.
# pytanie: Que va faire Jaromir ?
*   [S’asseoir et manger tranquillement, comme le demande sa mère.]
    Il soupirait et s’asseyait au bord du banc, et pour récompense il recevait un baiser sur le front et une cuillerée de miel sur son pain. Il mangeait vite, mais jusqu’au bout, et quand le gobelet était vide, il lançait seulement : – Je vais chez les voisins ! – et il était déjà parti. # pokaz: jaromir
    -> poranek_dalej
*   [Attraper sa tartine et filer dehors.]
    -> poranek_bieg

= poranek_bieg
Mais il s’essuyait déjà la bouche d’un revers de manche et se trouvait près de la porte. Avant que sa mère ait eu le temps de lui dire de faire attention, il criait seulement : – Je vais chez les voisins ! – et il traversait la cour à toutes jambes, effarouchant les poules qui lui détalaient sous les pieds en caquetant. # pokaz: jaromir
-> poranek_dalej

= poranek_dalej
À l’aube, l’herbe était froide et mouillée de rosée, et ses souliers étaient vite trempés. Elle avait une odeur qu’elle n’avait qu’à cette heure-là – fraîche, verte, un peu comme un concombre coupé en deux. Au-dessus des prés flottaient encore des lambeaux de brume, mais le soleil les dissipait déjà, et dans chaque goutte posée sur les brins d’herbe s’allumait une minuscule étincelle. Les alouettes s’élevaient dans le ciel et chantaient si haut qu’on ne pouvait les apercevoir.
Ceux de chez Staś l’attendaient déjà. Franek, l’aîné des petits-fils du fermier, était un grand gaillard qui avait quatre ans de plus que Jaromir. Son frère Antek, son cadet de deux hivers, fouillait la terre avec un bâton pour creuser une rigole par laquelle il voulait faire passer l’eau d’une flaque à l’autre. Au bout d’un moment, Hanka, la fille du forgeron, arrivait en courant du côté du lac, sa natte sautillant dans son dos. # pokaz: dzieci
– Qu’est-ce qu’on fait aujourd’hui ? – demandait Franek, alors que tous savaient bien que c’était lui, de toute façon, qui déciderait. # dalej
-> wojna

= wojna
# tlo: laka_bitwa
Le plus souvent, cela commençait par la guerre.
Chacun avait son épée – un bâton de noisetier ou de saule, écorcé, à la pointe effilée. Jaromir portait la sienne passée dans sa ceinture et, lorsqu’il devait s’en séparer, il la remettait toujours à sa place : dans le coin de la grange. Il n’y avait pas dans tout le village d’arme plus droite – lisse à force d’être tenue et sombre de la sueur des paumes. { figurka_u_staruchy: Son père l’avait aidé sans un mot à aiguiser son épée, un soir, sur le seuil. | Son père l’avait aidé à tailler cette épée, en riant qu’il avait l’air, avec elle, d’un chevalier d’image de foire, et qu’avec une telle arme on viendrait bien à bout d’un dragon. }
L’ennemi, c’étaient les mauvaises herbes. Sur les raies et le long des fossés, elles poussaient en armées innombrables : des peucédans aux ombelles larges comme des assiettes, des chardons hérissés de têtes violettes et des orties qui montaient jusqu’aux oreilles. Les enfants se ruaient dans les prés avec un cri qui faisait s’envoler les moineaux. Les bâtons sifflaient dans l’air, les tiges se brisaient avec un craquement juteux, et les têtes épineuses volaient de tous côtés. # pokaz: bitwa
Après chaque bataille venait le temps de panser les blessures. Bien souvent, c’étaient des genoux écorchés jusqu’au sang, des mollets couverts de cloques laissées par les orties, des avant-bras et des mains égratignés. Hanka avait un remède à tout : elle appliquait sur les brûlures des feuilles de plantain et ordonnait de les tenir jusqu’à ce que cela cesse de cuire. Personne ne pleurait – enfin, parfois Antek, mais juste un tout petit peu, et aussitôt après il faisait semblant que c’était la sueur qui lui coulait dans les yeux.
Ensuite ils se laissaient tomber dans l’herbe, essoufflés et heureux, et restaient couchés sur le dos, bras écartés. Au-dessus d’eux voguaient des nuages blancs, où chacun des enfants lisait autre chose – un cheval, un navire, une vieille sur son balai, un ours. L’air sentait la terre chauffée, la camomille et les herbes écrasées. Tout près vrombissait un bourdon, et les sauterelles jaillissaient de sous leurs mains comme des étincelles d’un feu de bois. # dalej
-> luki

= luki
# tlo: luki
Quand ils étaient las des épées, venait l’heure des arcs.
~ ekwipunek += nozyk
Les meilleurs étaient en noisetier, qui poussait dru à l’orée du bois – droit, souple et solide. Franek y choisissait une branche de la bonne longueur – égale à sa propre taille – et Jaromir la dégrossissait avec le canif que son père lui avait offert pour sa fête. Il fallait prendre garde à ne pas enlever trop de bois au même endroit, sinon l’arc se brisait à la première tension. Pour la corde, on prenait une grosse ficelle chipée dans le panier maternel ou – les jours fastes – un bout de ligneul de cordonnier.
Les flèches aussi étaient en noisetier, mais taillées dans des baguettes bien plus minces. Il n’y avait pas de pointes de fer – en revanche, ils taillaient le bout jusqu’à ce qu’il pique comme une épine, et à l’autre extrémité – des empennages de papier ou de plumes ramassées dans les cours de tout le village.
La cible était une botte de paille dressée sur la raie, avec un cercle peint à la suie. La corde vibrait près de l’oreille comme une guêpe, la flèche sifflait brièvement, puis on entendait un « toc » sourd quand la pointe effilée se plantait dans la paille. Les traits filaient assez droit, se fichaient en terre ou dans la cible, et parfois s’envolaient haut dans le ciel. C’était Hanka la plus adroite. Elle plissait un œil, sortait le bout de la langue et ne manquait pas une seule fois – et les garçons, bien qu’ils ne l’eussent avoué pour rien au monde, l’admiraient pour cela plus que pour toute autre chose. # pokaz: hanka
# pytanie: Jaromir va-t-il se mesurer à Hanka ?
*   [Oui – la défier à un concours.]
    ~ celny_strzal = true
    Il perdait, évidemment. Hanka faisait mouche à tous les coups, et ses flèches à lui tombaient le plus souvent dans les blés. Mais le lendemain, il arrivait sur la raie avant elle et s’exerçait jusqu’à en avoir les doigts engourdis.
    -> luki_dalej
*   [Non – s’exercer seul, loin des autres.]
    Il s’en allait au bout de la raie et tirait sur une vieille souche jusqu’à en avoir mal à l’épaule. Personne ne voyait combien de fois il manquait son coup, et c’était bien mieux ainsi.
    -> luki_dalej

= luki_dalej
Un jour, Jaromir atteignit le centre même du cercle. Tout le reste de la journée, il se promena si fier qu’il en oublia même le dîner, et sa mère dut l’appeler bien des fois. # pokaz: trafienie # dalej
-> lato_baza

= lato_baza
# tlo: baza
Mais l’endroit le plus important du monde, c’était la cabane.
Elle se dressait – ou plutôt elle était suspendue – dans la ramure d’un vieux sureau qui poussait au bord du pré, si étalé que plusieurs vaches auraient pu se cacher dans son ombre. Ils l’avaient construite pendant tout un long été. Les planches, ils les rapportaient d’où ils pouvaient : d’une porcherie effondrée, d’une clôture que personne ne réparait plus, {figurka_u_staruchy:de la grange de Staś, qui secouait la tête mais ne le leur défendait pas|de la grange du père de Jaromir, qui faisait semblant de ne rien voir}. Ils les fixaient avec des clous redressés à coups de pierre sur une pierre et, là où il n’y en avait plus, ils les attachaient avec de la ficelle. On y montait par une petite échelle aux barreaux liés au tronc. Dans la cabane flottait toujours une odeur de bois chauffé et de fleur de sureau, si suave qu’au bout d’une heure la tête tournait. Par les fentes entre les planches entraient de minces filets de soleil où dansait la poussière, et quand le vent soufflait, toute la ramure se balançait et grinçait, comme si la cabane eût été une barque sur une eau agitée.
À l’intérieur, ils tenaient à cinq en se serrant – à quatre, ils y étaient donc tout à fait à l’aise. Ils y avaient tout ce qu’il fallait : un coffret aux trésors où reposaient des cailloux de couleur, des plumes et des coquillages, et, en cas d’attaque – un carquois plein de flèches, un arc et des « épées ».
# pytanie: Que va cacher Jaromir dans le coffret aux trésors ?
*   [Un coquillage du lac, blanc comme du lait.]
    ~ skarb_jaromira = muszelka
    Il l’enveloppa dans une feuille de bardane et le cacha tout au fond.
    -> baza_dalej
*   [Une plume de geai, bleue comme le ciel après l’orage.]
    ~ skarb_jaromira = pioro
    Il la posa sur le dessus, pour qu’elle brille dès qu’on soulèverait le couvercle.
    -> baza_dalej
*   [Un clou rouillé, tombé jadis – à l’en croire – d’une véritable armure de chevalier.]
    ~ skarb_jaromira = gwozdz
    Il l’emmaillota dans un chiffon comme une relique. Franek pouffa de rire, mais Antek regarda le clou avec respect.
    -> baza_dalej

= baza_dalej
Le plus beau, c’était pendant les averses. L’orage d’été arrivait soudain, en un rempart sombre surgi de derrière le bois, et avant que les enfants aient pu regagner leurs maisons, tombaient les premières grosses gouttes. Alors ils grimpaient dans la cabane et restaient blottis sous le toit de planches, qui fuyait un peu malgré tout. Les feuilles bruissaient comme la mer, qu’aucun d’eux n’avait jamais vue, le tonnerre roulait au-dessus du village, et l’air sentait la pluie, le bois mouillé et le sureau en fleur. Après la pluie, le pré fumait, et un arc-en-ciel se dressait dans le ciel. # pokaz: burza # dalej
-> lato_jezioro

= lato_jezioro
# tlo: jezioro_lato
Quand le soleil montait au zénith et que la chaleur commençait à trembler au-dessus des champs, toute la bande partait vers le lac. Ils traversaient le pré à qui arriverait le premier, jetant leurs chemises en chemin, et se précipitaient dans l’eau en hurlant, si bien que les éclaboussures volaient jusqu’au ciel. Près de la rive, le fond était bas et sablonneux, l’eau chauffée par le soleil comme dans un baquet, et de menus poissons chatouillaient les pieds. Franek faisait le fier en plongeant la tête la première d’un tronc renversé, et Antek, assis dans le bas-fond, attrapait des têtards dans ses mains. Il flottait une odeur de jonc et de vase tiède, et des libellules filaient au ras de l’eau. # pokaz: kapiel
{ figurka_u_staruchy: Jaromir n’entrait jamais dans l’eau plus haut que la taille. Son père le lui avait interdit une seule fois, brièvement et si sévèrement que le garçon n’avait pas osé demander pourquoi. Tout aussi fermement, il lui avait défendu d’approcher des marais et des roseaux de la rive ouest, où, disait-on, s’élevait jadis une chaumière. | Sur la rive ouest, dans les roseaux, des moignons noirs de rondins calcinés pointaient encore hors de terre. Les enfants s’en servaient pour se faire peur, en se racontant l’histoire de l’herboriste brûlée – celle-là même que le père de Jaromir déroulait le soir – mais en plein soleil, nul ne tremblait. }
{ figurka_u_staruchy:
    Ce jour-là, Franek nagea jusqu’en eau profonde et cria à Jaromir de le rejoindre.
    # pytanie: Jaromir va-t-il obéir à son père ?
    *   [Rester près de la rive.]
        Il secoua la tête et ne bougea pas du bas-fond. De loin lui parvint un « Froussard ! », mais au bout d’un moment tout le monde avait oublié, et ils continuèrent de s’éclabousser.
        -> jezioro_dalej
    *   [Nager jusqu’à Franek.]
        ~ odwaga_jaromira = true
        Il fit un pas, puis un autre. L’eau lui monta à la poitrine et devint soudain glacée, et quelque chose de visqueux lui frôla le mollet. Il recula si vite qu’il en but la tasse. Il n’en parla à personne – et surtout pas à son père.
        -> jezioro_dalej
- else:
    Ce jour-là, Franek paria que personne n’oserait toucher les rondins calcinés.
    # pytanie: Jaromir va-t-il relever le pari ?
    *   [Les toucher – il n’est pas un froussard, après tout.]
        ~ odwaga_jaromira = true
        Il se fraya un chemin à travers les roseaux et posa la main sur le plus haut d’entre eux. Le bois était froid, bien que le soleil tapât depuis le matin, et le garçon retira sa main plus vite qu’il ne l’aurait voulu. Tous tinrent cela pour la plus grande bravoure de l’été.
        -> jezioro_dalej
    *   [Rester avec les autres sur le sable.]
        Il haussa les épaules et resta où il était. Franek y alla seul, effleura le bois noir du bout du doigt et revint en courant, en faisant mine de ne pas se presser du tout.
        -> jezioro_dalej
}

= jezioro_dalej
Après la baignade, ils se séchaient sur l’herbe, couchés sur le ventre, et mangeaient ce que donnait le bois : des fraises des bois, des myrtilles qui noircissaient les dents et la langue, et des feuilles aigrelettes d’oseille mâchées pour se rafraîchir. Parfois quelqu’un apportait de chez lui un concombre ou un morceau de fromage, et ils le partageaient équitablement, en autant de parts qu’il y avait de bouches. Dans le verger des Wójcik mûrissaient les cerises, et le maître des lieux dormait après le dîner si profondément qu’il n’entendait pas quelqu’un secouer les branches.
La chaleur se posait sur toute chose comme un édredon tiède. Les grillons stridulaient si fort qu’on eût dit que de leur chant dépendait le coucher même du soleil. Des andains que les paysans retournaient au râteau montait l’odeur du foin, et de la raie soufflait la douceur du serpolet et du trèfle. Les abeilles bourdonnaient dans les tilleuls, les papillons se posaient sur les fleurs, et le temps s’écoulait si lentement que la journée semblait ne jamais devoir finir. # dalej
-> lato_wieczor

= lato_wieczor
# tlo: wieczor_lato
Et pourtant, elle finissait toujours. Le soleil glissait derrière le lac, les ombres s’allongeaient sur le pré jusqu’à le couvrir d’un bord à l’autre, et le ciel au-dessus de l’eau prenait la couleur des framboises mûres. L’air fraîchissait et sentait l’herbe fauchée et la fumée des cheminées, et des marais s’élevaient les voix des premières grenouilles – d’abord une seule, puis des dizaines, jusqu’à ce que toute la vallée coasse comme un seul grand chœur. Alors, d’une cour après l’autre, commençaient à monter les appels.
– Jaroooomir ! À la maiiiison ! # pokaz: matka
# pytanie: Jaromir va-t-il rentrer tout de suite ?
*   [Courir aussitôt à la maison.]
    La voix de sa mère portait à travers tout le village. Le garçon ne se faisait pas attendre : il disait au revoir aux autres, prenait rendez-vous pour le lendemain – toujours pour le lendemain, toujours près du petit poteau de bois qui marquait la limite du champ de son père, sitôt le déjeuner avalé – et courait à travers le pré où s’allumaient les premiers vers luisants. # pokaz: jaromir
    -> wieczor_dalej
*   [Jouer encore un moment.]
    -> wieczor_zwlekanie

= wieczor_zwlekanie
La voix de sa mère portait à travers tout le village. Le garçon faisait semblant de ne pas entendre, jusqu’au second appel – et au troisième, une note perçait dans la voix maternelle qui ne présageait rien de bon. Alors il disait au revoir aux autres, prenait rendez-vous pour le lendemain – toujours pour le lendemain, toujours près du petit poteau de bois qui marquait la limite du champ de son père, sitôt le déjeuner avalé – et courait à travers le pré où s’allumaient les premiers vers luisants. # pokaz: jaromir
-> wieczor_dalej

= wieczor_dalej
Il rentrait sale, de l’herbe dans les cheveux, de la terre sous les ongles et les genoux couverts de croûtes. Sa mère soupirait, l’attrapait par l’oreille et le menait au baquet d’eau, puis posait devant lui une écuelle d’œufs brouillés ou du lait caillé avec des pommes de terre.
{ figurka_u_staruchy:
    Son père était assis en face et se taisait. Quand il avait fini, il faisait toujours la même chose : il se levait, vérifiait que la porte était bien verrouillée, et alors seulement il allait se coucher.
    { los_psa == oswojony:
        Grand-mère Marianna se levait alors de son escabeau, traçait une petite croix sur le front de son petit-fils et murmurait quelque chose que le garçon ne comprenait pas.
    }
- else:
    Son père, si la soirée était douce, sortait le banc devant la maison et racontait. Il parlait de grand-père Maciek, descendu à Zapadlina avec sa seule hache, de la créature des tourbières, de la voix qui appelait depuis l’eau. Jaromir commençait d’ordinaire à s’assoupir au milieu, la tête sur les genoux de son père, et n’entendait jamais la fin.
}
Ensuite il restait étendu sur sa paillasse sous la fenêtre et écoutait la nuit. Les grenouilles coassaient dans les mares, à l’écurie un cheval s’ébroua, quelque part au loin un chien aboya. Par la fente du volet, on voyait les étoiles – serrées comme la rosée sur un pré.
Il s’endormait le sourire aux lèvres, en pensant que demain l’attendait de nouveau une chaude journée d’été, pleine de jeux de l’aube au crépuscule. # dalej
-> zloty_dzien

= zloty_dzien
# tlo: zapadlina_lato
Des journées comme celle-là, il y en eut sans nombre. Elles se fondaient ensuite dans sa mémoire en une seule longue traînée dorée, qui sentait le foin et la terre chaude, pleine de soleil, de rires et de bourdonnement d’abeilles. L’été passait, et Jaromir grandissait – il atteignait les branches du sureau de plus en plus haut, sa flèche volait de plus en plus loin, et il avait de moins en moins besoin de l’échelle pour grimper dans la cabane. # dalej
-> rozdzial_pierwszy_ciag_dalszy


// Koniec rozdziału pierwszego – dalej rozdział drugi.
=== rozdzial_pierwszy_ciag_dalszy ===
# ozdobnik
_Fin du chapitre premier._ # dalej
-> rozdzial_drugi
