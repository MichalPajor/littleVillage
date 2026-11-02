// ------------------------------------------------------------
//  Prolog – Zapadlina, około siedemdziesiąt lat przed główną
//  częścią opowieści. Maciek, dziadek Jaromira, wybiera
//  miejsce na chatę.
// ------------------------------------------------------------

=== prolog ===
# tlo: zapadlina
# rozdzial: Prologue
# tytul: Zapadlina
Zapadlina – un village couché là où la terre, lasse d’être une plaine, s’était affaissée. Pour l’atteindre, il fallait toujours descendre des collines, des talus et des pentes – que ce fût depuis la grand-route par la Crête des Hêtres, ou depuis la forêt par un sentier battu. De la ville, on revenait en six heures, et le dernier tronçon du chemin serpentait entre les tourbières, toujours en descente. Le brouillard aimait cette cuvette. Il s’y déversait au crépuscule comme du lait dans une écuelle, et il lui arrivait de s’y attarder jusqu’à midi passé.
À l’est, la forêt pressait le village – vieille, résineuse et si dense que même de jour les arbres jetaient une ombre profonde et fraîche. Au nord, la terre molle cédait la place aux marais envahis de massettes, de laîches et d’arbustes rabougris. L’eau y stagnait, noire, trouble et immobile. Certains disaient qu’il ne fallait pas la fixer trop longtemps, car on risquait d’appeler ainsi les noyés prisonniers sous la couche de vase. La nuit, des feux follets voletaient souvent au-dessus. À l’ouest, au point le plus bas de la vallée, s’étendait un lac, rond, comme si quelqu’un l’avait imprimé du genou. On disait que nul n’en avait jamais vu le fond.
Le village était petit, mais pas jeune. Cinq chaumières se dressaient loin les unes des autres, car chacun possédait autant de champ que ses ancêtres avaient pu en essarter et en défendre. Il y vivait une trentaine de personnes, enfants compris. Tout le monde se connaissait bien. L’église la plus proche se trouvait à la ville ; on s’y rendait quelques fois par an, aux grandes fêtes, si les chemins le permettaient. Alors il ne restait plus au village une seule âme qui vive.
Quelque soixante-dix ans avant que Jaromir ne tournât pour la première fois les yeux vers la forêt, son grand-père descendit à Zapadlina, son baluchon sur l’épaule. Maciek ne possédait rien d’autre qu’une hache, du pain, deux bras et son obstination. La hache et le pain, il les avait achetés à la ville avec l’argent gagné en quatre ans de labeur sur le champ d’autrui. Il voulait enfin avoir quelque chose à lui – un coin où il vivrait et offrirait un toit à sa famille. Le seigneur cédait ici les friches contre une faible redevance à qui les défricherait, si bien que chaque arpent dégagé par Maciek lui reviendrait. C’était le printemps, les champs fumaient, et çà et là, à l’ombre, s’attardait encore une neige sale. Depuis quelques jours, Maciek battait la campagne, cherchant où bâtir sa cabane. Trois endroits revenaient le plus souvent dans ses pensées.
# ozdobnik
Le premier se trouvait à l’extrémité est du village, tout contre la forêt. La terre y était fertile, le bois à portée de main, et le gibier ne manquait pas. Seulement, de la forêt montait toujours un froid, même par les jours de canicule, et la nuit il en venait des bruits qu’il ne savait pas nommer.
Le deuxième était au nord, près des marais. Il y avait là de vastes prairies où l’on aurait pu faire paître du bétail, et la tourbe pour le feu n’aurait jamais manqué. En revanche, à la nuit tombée, quelque chose clignotait, à ce qu’on racontait, au-dessus des tourbières. Les gens croisés au puits se bornaient à dire : – Là-bas, on ne va pas et on ne bâtit pas. Là-bas, on se noie, c’est tout.
Le troisième, au bord du lac, semblait le plus pittoresque. L’eau était claire, les poissons sautaient d’eux-mêmes dans la main, et la rive était douce – il suffisait de se frayer un passage à travers les roseaux serrés. Il y restait aussi les vestiges d’une chaumière qui s’élevait là autrefois : de vieilles poutres vermoulues et calcinées. Personne au village ne voulait dire qui y avait vécu ni quel sort lui était échu, et les gens se signaient chaque fois que quelqu’un l’évoquait.
# pytanie: Où Maciek bâtira-t-il sa cabane ?
*   [À l’orée de la forêt, à l’est.]
    ~ chata_macka = przy_lesie
    -> budowa
*   [Près des marais, au nord.]
    ~ chata_macka = przy_mokradlach
    -> budowa
*   [Au bord du lac.]
    ~ chata_macka = nad_jeziorem
    -> budowa


// ------------------------------------------------------------
//  Budowa chaty – początek zależy od wybranego miejsca.
// ------------------------------------------------------------
=== budowa ===
{ chata_macka:
    - przy_lesie: -> las
    - przy_mokradlach: -> mokradla
    - else: -> jezioro
}

= las
# tlo: budowa_las
# rozdzial: Prologue
# tytul: La cabane
Maciek choisit l’orée de la forêt. Il jugea qu’avec le bois sous la main il bâtirait plus vite sa cabane, et c’était ce qui lui importait le plus. La terre fertile servirait pour les légumes – il fallait bien manger. Et le sommeil ? On s’en arrangerait. Dès le premier matin, il se mit à l’ouvrage et planta sa hache dans l’épicéa le plus proche. L’écho du coup s’en alla entre les arbres et revint après un temps étrangement long – traînant, grave, et pas tout à fait semblable au choc d’une hache.
-> praca

= mokradla
# tlo: budowa_mokradla
# rozdzial: Prologue
# tytul: La cabane
Maciek choisit les prairies près des marais. Quand il se mit au travail, ceux qui le voyaient secouaient la tête. Pour eux, c’était le dernier endroit où ils auraient bâti une chaumière. Le sol ployait ici sous les pieds, mais il donnait de la tourbe pour cent hivers au moins. Pour empêcher la cabane de s’enfoncer dans la boue, Maciek dut préparer un soubassement. Tout le premier jour, il porta des pierres depuis les collines et les assembla avec soin.
Pour le bois, il devait aller loin, jusqu’à la forêt. Il lui arrivait de tomber dans une flaque bourbeuse – il ne connaissait pas encore les sentiers d’alentour – et ses bottes étaient sans cesse trempées. En pensant aux récits des habitants, il éprouvait de l’inquiétude, mais aussi de la curiosité. Il ne cessait de se demander ce qui pouvait bien clignoter au-dessus des tourbières. Il s’efforçait d’éviter l’eau noire et avait pris à cœur l’avertissement au sujet des noyés. S’ils existaient, il n’avait certes aucune envie de les rencontrer.
-> praca

= jezioro
# tlo: budowa_jezioro
# rozdzial: Prologue
# tytul: La cabane
Maciek choisit la rive du lac. Quelque chose, au fond de son cœur, lui disait que cet endroit était fait pour lui. Peut-être était-ce l’eau elle-même qui l’attirait – lisse et claire, avec tout le ciel dedans. Les poutres vermoulues et calcinées de l’ancienne chaumière, il les poussa dans les hauts joncs pour ne plus les avoir sous les yeux. Ce qui est passé est passé – se répétait-il en arrachant les broussailles, lorsque lui revenaient les récits des habitants. Il abattait les arbres sur les pentes et en faisait rouler les troncs jusqu’en bas. Pour couvrir le toit, il ramassait des roseaux, qui ne manquaient pas ici – ils montaient plus haut que sa tête.
-> praca

= praca
La construction dura plus d’un mois. Parfois, quelqu’un du village venait aider Maciek. Le plus souvent, c’était Andrzej, avec qui il avait toujours le plus de plaisir à causer. Celui-ci ne roulait pas sur l’or, mais voyant dans quelle misère vivait le nouveau venu, il lui apportait de temps à autre de quoi manger. Il aimait aussi parler de son fils, qui faisait sa fierté. Le garçon avait onze ans et était déjà d’un grand secours à son père.
Bâtir la cabane en elle-même n’était pas difficile : abattre les arbres, les peler, les débiter en rondins de la bonne longueur et tailler à leurs extrémités des entailles, pour qu’une fois assemblés ils s’emboîtent solidement. Ainsi, les murs tenaient debout sans un seul clou. Il bouchait les fentes avec de la mousse et de l’argile. À force de ce dur labeur quotidien, ses mains se couvrirent d’ampoules qui crevaient et se refermaient, jusqu’à ce que la peau devînt dure comme de l’écorce.
Il mangeait son pain avec une grande parcimonie – une tranche le matin, une autre le soir, en les arrosant d’eau. Il se promettait d’aller à la ville chercher de nouvelles provisions dès qu’il aurait fini le toit. La miche se desséchait, se ratatinait et pesait chaque jour un peu moins – et Maciek avec elle.
Il dormait dans un abri qu’il avait assemblé à la hâte le premier soir : quelques grosses branches appuyées contre un tronc, couvertes de rameaux feuillus et de mottes de gazon, et à l’intérieur une couche de mousse. Il ne pouvait y tenir que couché. Il gardait toujours sa hache à son côté. # dalej
-> noce

= noce
Les nuits étaient le pire. Le froid et l’humidité du printemps se glissaient sous les vêtements et mordaient jusqu’aux os. Le sommeil venait mal. Maciek restait couché les yeux ouverts, et il écoutait.
{ chata_macka:
    - przy_lesie: La forêt ne se taisait jamais. Il n’y avait pas de vent, et pourtant des branches craquaient – lentement, paresseusement, tantôt plus près, tantôt plus loin. Souvent il se figeait pour tendre l’oreille, même si certains bruits lui donnaient des frissons.
    - przy_mokradlach: Les tourbières ne dormaient jamais. Elles gargouillaient, chuintaient, et parfois – lui semblait-il – soupiraient comme des êtres humains. La première fois qu’il l’entendit, il tressaillit, empoigna sa hache et jeta un coup d’œil hors de l’abri. Les récits du puits s’avéraient vrais. Passé minuit, loin au-dessus de l’eau noire, une petite lumière s’allumait et clignotait. Elle s’éteignait quand il la regardait, et se rallumait dès qu’il détournait les yeux.
    - else: La nuit, le lac respirait. Chacun de ses souffles était tiède et doux. Bien qu’il n’y eût ni vent ni vagues, un clapotis s’élevait de temps à autre sur le haut-fond. Une fois, Maciek entendit quelque chose de lourd sortir de l’eau et s’avancer vers lui le long de la rive, à travers les roseaux. Au matin, il alla voir. Les roseaux étaient intacts, et sur le haut-fond somnolaient des canards, paisibles comme tous les jours.
}
Une nuit, alors qu’il ne lui restait plus de la miche que le quignon, lui parvint un son qu’il n’avait encore jamais entendu ici. Un hurlement faible, entrecoupé – grêle, pareil à celui d’un loup, mais chétif. Il venait des fourrés tout proches. Maciek tenta de ne pas y prêter attention, mais le son revenait sans cesse.
# pytanie: Que devrait faire Maciek ?
*   [Prendre la hache – bien qu’on la perde facilement dans la boue, à tâtons dans le noir – sortir de l’abri et voir ce que c’est.]
    -> pies
*   [Rester dans l’abri et tenter malgré tout de dormir. Ici, il se sent en sécurité.]
    -> zostal

= zostal
~ los_psa = niespotkany
Maciek serra les doigts sur sa cognée et ne bougea pas. Le hurlement dura encore longtemps. Puis il se mua en un gémissement pitoyable et, avant l’aube, se tut. # dalej
-> dach


// ------------------------------------------------------------
//  Pies w zaroślach – tylko gdy Maciek wyszedł z szałasu.
// ------------------------------------------------------------
=== pies ===
# tlo: zarosla_noc
Maciek sortit de l’abri à quatre pattes, la hache à la main. La nuit était claire de lune, l’herbe mouillée de rosée. Il avançait lentement vers le son, pas à pas, sentant son cœur près de s’échapper de sa poitrine. Le hurlement tantôt faiblissait, tantôt reprenait, de plus en plus proche.
Dans les buissons épais, il entendit un froissement. Il écarta les branches avec le manche de sa hache et se figea. Deux yeux luisants surgirent de l’obscurité. Au clair de lune, il vit que c’était un jeune chien. Il était si maigre que ses côtes saillaient sous la peau, et ses pattes semblaient trop grandes pour sa taille. Il avait le museau long et étroit, les oreilles dressées toutes raides. Il ne fuyait pas devant l’homme. Il grondait doucement, tremblant de tout son corps. # pokaz: pies
Maciek fouilla dans sa poche. Il y avait là un petit paquet enveloppant son dernier morceau de pain – dur comme pierre, mais c’était pourtant son repas du lendemain.
# pytanie: Que va faire Maciek ?
*   [Donner au chien un morceau de pain.]
    -> dal_chleb
*   [Ne rien donner et retourner à l’abri.]
    -> nie_dal_chleba

= dal_chleb
~ ekwipunek -= chleb
~ los_psa = nakarmiony
Maciek déplia le chiffon et lança le pain sous le buisson. Le chien recula en grondant, mais bientôt il se mit à flairer ce qui était tombé. Soudain, il happa sa prise et disparut dans l’obscurité avant que l’homme ait eu le temps de cligner des yeux.
Il regagna en rampant son abri de branchages et s’endormit le ventre creux, sachant que le lendemain matin il n’aurait rien à manger. # dalej
-> dach

= nie_dal_chleba
~ los_psa = porzucony
Maciek garda le pain dans sa poche.
– Moi-même, je tiens à peine debout – grommela-t-il à l’adresse du chien, comme pour se justifier devant lui.
Il recula lentement et se cacha sous les branches. Le hurlement s’éleva encore une fois, plus faible qu’auparavant. Cette nuit-là, il ne l’entendit plus. # dalej
-> dach


// ------------------------------------------------------------
//  Dach – dzień po nocy z wyciem. Przebieg zależy od losu psa.
// ------------------------------------------------------------
=== dach ===
{ chata_macka:
    - przy_lesie: # tlo: budowa_las
    - przy_mokradlach: # tlo: budowa_mokradla
    - else: # tlo: budowa_jezioro
}
# rozdzial: Prologue
# tytul: Le toit
{ los_psa == nakarmiony: -> bez_chleba | -> z_chlebem }

= z_chlebem
~ ekwipunek -= chleb
Au matin, Maciek déplia le petit paquet et mangea son dernier morceau de pain. Il le mâchait lentement, bouchée après bouchée, pour qu’il lui tienne toute la journée. Il but de l’eau, s’épousseta les mains et partit travailler.
-> trzcina ->
Il coupait les tiges serrées à la hache, au ras du sol, les liait en gerbes et les portait jusqu’à la cabane. Encore et encore, sans répit. Son dos le brûlait comme un feu vif, mais le tas contre le mur grandissait.
Dans l’après-midi, il n’y eut plus de roseaux à cet endroit, et il alla plus loin. Il revint par un autre chemin – du côté d’où était venu le hurlement la nuit précédente. Il marchait, quand soudain son pied resta suspendu en l’air.
Dans l’herbe, sous un buisson, gisait un chien. Maigre, au museau long, au poil hirsute. Il était raide, couché sur le flanc, les yeux mi-clos. Les mouches s’étaient déjà posées sur lui.
{ los_psa == niespotkany:
    Maciek resta longtemps immobile au-dessus de lui. C’est seulement alors qu’il comprit ce qui avait hurlé cette nuit-là. Pas une bête sauvage, pas un esprit malin – juste un chiot affamé, transi, qui avait appelé, appelé, puis s’était tu.
    Sa gorge se serra. Il se dit qu’il aurait pu sortir, ce soir-là. Mais aussitôt il se répondit à lui-même : et s’il était tombé droit dans la gueule d’un loup ? Dans le noir, on ne sait pas ce qui attend dans les buissons. Un homme sensé reste dans son abri, la hache à portée de main – et il vit.
    Il détourna les yeux, jeta une gerbe sur son dos et retourna à l’ouvrage. Il laissa le chien là où il l’avait trouvé. # dalej
- else:
    Maciek tomba à genoux. Il se souvenait de ces yeux sous la lune, de ce grondement sans conviction, du tremblement de tout ce corps. Le chien avait supplié, et lui s’était détourné et était parti.
    Un morceau. Un seul morceau de pain dur.
    – Moi-même, je tenais à peine debout – dit-il à voix haute, comme si quelqu’un l’accusait. – Si j’avais tout donné, qui serait couché là ? Le chien ou moi ?
    Ces mots sonnaient raisonnables, mais n’apportèrent aucun soulagement. Maciek se releva et, sans plus regarder sous le buisson, retourna porter ses roseaux. Il n’enterra pas le corps. # dalej
}
-> uplyw_czasu

= bez_chleba
Au matin, Maciek s’éveilla affamé. Il porta machinalement la main à sa poche et se rappela que le petit paquet était vide. Il soupira, but un peu d’eau et partit travailler.
-> trzcina ->
Il coupait les tiges serrées à la hache, au ras du sol, les liait en gerbes et les portait jusqu’à la cabane. Encore et encore, sans répit.
Vers midi, en redressant son dos endolori, il aperçut au loin un mouvement. En bordure de la prairie, entre les touffes d’herbe, rôdait un chien – le même, maigre, au long museau. Il flairait, s’arrêtait et regardait vers lui, prêt à détaler à tout instant.
Maciek sourit, pour la première fois depuis bien des jours.
– Tu es vivant – murmura-t-il.
Les jours suivants, le chien revint. D’abord, il se tint à distance. Puis il s’asseyait sur une butte et observait des heures durant l’homme qui s’affairait autour des gerbes. Chaque jour, il était un peu plus près – de quelques enjambées, guère plus, comme s’il éprouvait jusqu’où on le laissait venir. # dalej
-> uplyw_czasu

// Wspólny akapit o trzcinie na dach – skąd ją brał, zależy od miejsca chaty.
= trzcina
Les murs se dressaient déjà bien droits, les chevrons tenaient solidement. Restait le toit. Pour le chaume, il lui fallait des roseaux – beaucoup de roseaux, plus qu’on ne l’aurait cru à voir la cabane elle-même.
{ chata_macka:
    - przy_lesie: Les plus proches poussaient au bord des marais, à une demi-heure de marche, si bien qu’il devait porter chaque gerbe à travers toute la prairie.
    - przy_mokradlach: Ils poussaient presque au pied du seuil, serrés et hauts, seulement il fallait patauger pour les atteindre dans la boue froide jusqu’aux genoux.
    - else: Ils poussaient tout autour de la rive, plus hauts que lui, et bruissaient à chaque souffle de vent comme quelqu’un qui chuchote dans votre dos.
}
->->

= uplyw_czasu
Les jours passaient. Les neiges fondirent tout à fait, même dans l’ombre la plus épaisse sous la forêt. La terre cessa de fumer et devint tiède sous le pied nu. À l’orée du bois fleurirent les anémones – blanches, drues comme du givre – et sur les terres humides les soucis d’eau brillaient d’or.
Maciek n’avait plus de pain depuis longtemps. Il vivait de ce qu’il trouvait lui-même ou de ce que lui apportait Andrzej. Dans les marais, il ramassait des canneberges qui avaient passé l’hiver, acides et ridées, mais encore mangeables. Aux églantiers, il détachait les cynorrhodons de l’an passé, durs comme des perles. Dans la prairie, il arrachait de l’oseille qu’il mâchait crue, et dans les recoins humides sous les arbres, il trouvait de l’ail des ours. Il entaillait aussi les bouleaux et buvait la sève douceâtre qui en gouttait jusqu’au matin. La faim ne le quittait pas, mais on pouvait vivre avec.
Le toit montait de jour en jour. Gerbe contre gerbe, couche sur couche. # dalej
-> wieczor


// ------------------------------------------------------------
//  Wieczór – stwór w zaroślach.
// ------------------------------------------------------------
=== wieczor ===
# tlo: zmierzch
Ce jour-là, Maciek posait déjà ses gerbes tout près du faîte. Il ne manquait plus qu’une rangée, deux peut-être. Ses mains tremblaient de fatigue, et le soleil avait glissé derrière l’horizon, laissant au ciel un rouge sale.
Il descendit du toit et s’assit près de l’abri. Il voulait se reposer un instant seulement, tant qu’il faisait encore clair. Il appuya la tête contre le tronc, ferma les yeux…
…et s’endormit.
Ce fut le silence qui le réveilla.
On n’entendait ni grillons, ni grenouilles, ni vent. Tout alentour baignait dans un brouillard épais et blanc qui montait jusqu’aux genoux. Maciek ne savait pas combien de temps il avait dormi. Il savait seulement que quelque chose n’allait pas – il le sentait dans son corps et dans son âme avant que son esprit ne le comprît.
Un son s’éleva. Ni hurlement ni cri, mais quelque chose entre les deux : une longue plainte gutturale, qui se changea en craquement de branches brisées. Quelque chose bondit avec fracas dans les fourrés – tout près, non loin de l’abri. # pokaz: oczy
Maciek se dressa d’un bond. La hache se retrouva d’elle-même dans ses mains. Il serrait la cognée si fort que ses jointures blanchirent, et fixait l’obscurité d’où venaient des pas – lents, lourds, de plus en plus proches. # dalej
{ los_psa == nakarmiony: -> obrona | -> zdobycz }

= zdobycz
# tlo: zmierzch_zdobycz
Les buissons s’écartèrent. Du brouillard surgit une silhouette. # pokaz: topielec
Elle dépassait un homme fait de trois bonnes têtes. Elle se tenait sur deux jambes, mais voûtée, les bras terminés par des griffes et pendant presque jusqu’au sol, les longs cheveux ruisselant d’eau de tourbière. Elle avait forme humaine – et n’avait rien d’humain. Dans sa gueule, elle tenait quelque chose de gros et d’inerte, qui retombait des deux côtés de sa tête.
Maciek le reconnut aussitôt, bien qu’il eût préféré ne pas le reconnaître. # pokaz: cialo
La silhouette referma les mâchoires. Il y eut un craquement – fort, mouillé, comme des branches sèches qui se brisent, sauf que ce n’étaient pas des branches. Puis la créature se retourna et fila vers les {chata_macka == przy_mokradlach:proches }marais, si vite que le brouillard tourbillonna derrière elle comme de l’eau.
Maciek ne pouvait plus bouger. Il tremblait de tout son corps, une sueur froide lui coulait dans le dos, et ses jambes étaient comme du coton. La hache pesait dans ses mains, inutile. Il resta ainsi très longtemps, jusqu’à ce que l’obscurité se fût de nouveau apaisée.
-> strach_o_chate ->
Enfin, il rentra à quatre pattes dans l’abri. Longtemps il ne put fermer l’œil et resta aux aguets, puis, épuisé par le travail et la peur, il s’endormit. # dalej
-> zgliszcza

= obrona
# tlo: zmierzch_obrona
Les buissons s’écartèrent. Dans l’obscurité s’allumèrent deux yeux – haut, trop haut pour un loup ou un sanglier. Une silhouette se tenait dans les fourrés sur deux jambes, voûtée, les bras pendant presque jusqu’au sol, les longs cheveux ruisselant d’eau de tourbière. Elle avait forme humaine – et n’avait rien d’humain. # pokaz: topielec
Maciek ne pouvait plus bouger. Il tremblait de tout son corps, une sueur froide lui coulait dans le dos. Les yeux le fixaient droit et, lentement, très lentement, se rapprochaient.
Au loin, des aboiements retentirent.
Le chien jaillit de l’obscurité comme une flèche et se planta entre Maciek et les fourrés. Le poil hérissé sur la nuque, arc-bouté sur place, il aboyait – fort, avec rage, sans s’interrompre un instant, bien qu’il tremblât tout entier. Maigre, jeune, la queue entre les pattes – et il ne recula pas d’un pas. # pokaz: pies
Les yeux s’arrêtèrent. La silhouette hésita, poussa un sifflement guttural – puis fit demi-tour et, dans un fracas de branches, fila en direction des {chata_macka == przy_mokradlach:proches }marais, et le brouillard tourbillonna derrière elle comme de l’eau.
-> strach_o_chate ->
~ los_psa = oswojony
~ ekwipunek += pies_towarzysz
Il fallut longtemps à Maciek pour reprendre ses esprits. Enfin, il se laissa glisser à terre près de l’abri et respira lourdement, comme après une longue course. Le chien avait cessé d’aboyer. Il s’approcha de lui, hésitant, la tête basse – et remua la queue, fier de lui comme personne au monde.
Maciek tendit une main tremblante. L’animal la flaira, puis se laissa caresser.
– Bon chien – chuchota-t-il. – Brave, va – souffla-t-il.
Cette nuit-là, ils entrèrent ensemble dans l’abri. Le chien se coucha à l’entrée, la tête tournée vers les fourrés. Maciek veilla encore longtemps, l’oreille tendue vers l’obscurité, jusqu’à ce que le sommeil l’emporte. Mais il n’était plus seul. # tobolek # dalej
-> zgliszcza

// Tylko gdy chata stoi przy mokradłach – stwór uciekł właśnie tam.
= strach_o_chate
{ chata_macka == przy_mokradlach:
    Et puis il comprit que la créature n’avait pas fui bien loin. Elle avait disparu dans la tourbière, à quelques dizaines de pas de l’abri – là où lui-même dormait, mangeait et travaillait depuis un mois. Peut-être y était-elle depuis le début. Peut-être chaque nuit, tandis que Maciek écoutait gargouiller l’eau noire, quelque chose, de l’autre côté, l’écoutait, lui. « Là-bas, on ne bâtit pas. Là-bas, on se noie, c’est tout » – lui revinrent les paroles des gens du puits. Pour la première fois depuis le jour où il avait commencé à bâtir, il se dit qu’il avait peut-être commis une erreur. Qu’il aurait peut-être fallu écouter.
}
->->


// ------------------------------------------------------------
//  Zgliszcza – poranek po nocy z topielcem, dokończenie dachu,
//  rozmowa z Andrzejem.
// ------------------------------------------------------------
=== zgliszcza ===
~ zapiski += stwor_1
{ chata_macka:
    - przy_lesie: # tlo: chata_las
    - przy_mokradlach: # tlo: chata_mokradla
    - else: # tlo: chata_jezioro
}
# rozdzial: Prologue
# tytul: Les cendres
Le jour se levait. Maciek s’éveilla engourdi et transi. Un instant, il ne sut pas si ce qu’il avait vu dans la nuit s’était réellement passé. Puis le craquement des branches brisées lui revint en mémoire, et un frisson le parcourut.
{ los_psa == oswojony:
    Le chien était couché à l’entrée de l’abri, la tête sur les pattes, les yeux tournés vers les marais. Il ne dormait plus. Maciek eut l’impression qu’il avait veillé ainsi jusqu’à l’aube.
- else:
    L’abri était silencieux. Maciek regarda dehors. L’herbe près des fourrés était couchée sur une large bande, collée de vase, et puait la tourbière{chata_macka != przy_mokradlach:, bien que les marais fussent loin}. La traînée menait {chata_macka == przy_mokradlach:vers l’eau noire|vers eux}, et sur les brins d’herbe s’assombrissaient des gouttes de sang. # pokaz: slady
}
Il s’approcha de sa cabane inachevée et s’assit sur le seuil. Il restait là, le regard perdu devant lui. Ses pensées tourbillonnaient comme le brouillard au-dessus du village. Fuir. Tout abandonner tant qu’il était encore en vie, et ne jamais revenir. Mais d’un autre côté – plus d’un mois de travail, les ampoules aux mains, les dernières tranches de pain. Chaque rondin de ces murs, il l’avait équarri lui-même. Et où irait-il ? Sur le champ d’un autre, de nouveau pour une écuelle de gruau ? Il avait pourtant promis de faire venir ici sa famille. Qu’ils auraient leur propre toit.
# pytanie: Que va décider Maciek ?
*   [Rester. Il a mis trop de lui-même dans cet endroit.]
    -> zostaje
*   [Rassembler ce qu’il a et partir tant qu’il est encore temps.]
    -> odchodzi

= zostaje
Il se leva, épousseta son pantalon et regarda le toit. Il restait une rangée de roseaux, deux peut-être.
– Je n’ai pas bâti tout ça pour m’enfuir maintenant – dit-il à voix haute, pour que quelque chose d’autre que {chata_macka == przy_lesie:la forêt|les roseaux} l’entende. # dalej
-> dach_gotowy

= odchodzi
~ chcial_odejsc = true
Il jeta son baluchon sur l’épaule et prit la montée, vers la grand-route. Il marchait vite, sans se retourner. C’est seulement sur la Crête des Hêtres qu’il s’arrêta et regarda en bas.
La cabane était là, petite et inachevée, avec son toit pareil à une phrase laissée en suspens. Sa cabane.
{ los_psa == oswojony: Le chien l’avait suivi un bout de chemin, puis s’était assis à mi-pente et regardait – tantôt vers lui, tantôt en arrière – comme s’il attendait que l’homme comprenne de lui-même. }
Maciek ne bougea pas avant que le soleil se fût levé au-dessus de la forêt. Puis il rebroussa chemin. Non qu’il eût cessé d’avoir peur. Il n’avait nulle part où aller, voilà tout. # dalej
-> dach_gotowy

= dach_gotowy
Il posa les dernières gerbes de roseaux avant midi. Il les lia avec du liber, les maintint sous des perches et descendit de l’échelle. Pour la première fois depuis son arrivée à Zapadlina, il se tenait devant une cabane achevée – la sienne, des fondations jusqu’au faîte. # pokaz: dach
Cette nuit-là, il y dormit enfin. Les murs sentaient la résine et l’argile humide, et par une fente de la porte se faufilait le clair de lune.
Il n’y avait pas encore de lit, mais au moins il avait au-dessus de la tête un toit à lui. Ici, chez lui, pour la première fois depuis des semaines, il dormit d’une traite.
{ los_psa == oswojony: Le chien s’installa sur le seuil et, à partir de cette nuit, ne le céda plus à personne. }
Au matin, Maciek alla voir le seul homme en qui il avait confiance. Il fallait qu’il parle à quelqu’un. # dalej
-> u_andrzeja

= u_andrzeja
# tlo: izba_andrzeja
La chaumière d’Andrzej se dressait sur une butte, loin de l’eau. La pièce exiguë sentait la fumée. Staś, le fils de la maison, était assis sur le banc près de la table et taillait un bâton au canif. À la vue du visiteur, il sourit jusqu’aux oreilles.
Maciek commença par le tout début : le silence, les pas, et… la silhouette plus haute qu’un homme de trois têtes, aux cheveux ruisselant d’eau de tourbière.
Andrzej écoutait, quand soudain il éclata de rire.
– C’est la faim qui t’a fait voir des choses, mon pauvre. Secoue-toi. Un mois au pain et à l’eau – il y a de quoi voir l’archange Michel en personne.
Staś avait cessé de tailler. Il fixait le nouveau venu, bouche bée, la peur dans les yeux.
– C’est vrai ? – demanda-t-il.
# pytanie: Que va faire Maciek ?
*   [Affirmer fermement que c’est vrai et tout raconter jusqu’au bout, devant le garçon. Qu’il sache de quoi il doit se garder.]
    ~ stas_zaufanie = true
    -> prawda_przy_chlopcu
*   [Sourire et éconduire le garçon en disant que ce n’était sans doute qu’un rêve, mais demander à Andrzej de l’envoyer dehors, et tout lui raconter en détail, entre quatre yeux. Ce ne sont pas des choses pour un enfant.]
    -> w_cztery_oczy

= prawda_przy_chlopcu
– Oui, c’est vrai. Que le petit écoute. Mieux vaut qu’il ait peur que d’aller seul à la tourbière et de n’en jamais revenir.
Le maître des lieux regarda son fils, puis Maciek. Le sourire s’effaça lentement de son visage.
-> dziad_opowiadal

= w_cztery_oczy
– À vrai dire… c’était sans doute un mauvais rêve – répondit-il.
Il demanda pourtant à son ami de lui parler entre quatre yeux. Celui-ci envoya Staś chercher de l’eau. Le garçon sortit à contrecœur et laissa la porte entrouverte. Aucun des deux hommes ne le remarqua.
-> dziad_opowiadal

= dziad_opowiadal
– Plus haute de trois têtes, tu dis – reprit enfin Andrzej, qui ne riait plus du tout. – Et des cheveux trempés de tourbière. – Un long moment, il tourna entre ses doigts une écuelle vide. – Mon grand-père racontait une histoire pareille. Je croyais qu’il voulait faire peur aux enfants.
Maciek raconta encore une fois, pas à pas, toute cette nuit-là. # dalej
-> legenda


// ------------------------------------------------------------
//  Legenda o wiedźmie znad jeziora – opowiada Andrzej.
// ------------------------------------------------------------
=== legenda ===
# tlo: legenda
– Il paraît que tout a commencé là-bas, au bord du lac, où gisent ces poutres calcinées. – Andrzej baissa la voix. – Autrefois, une femme vivait là. Une herboriste. Les gens allaient la trouver pour leurs douleurs, leurs maladies, leurs fièvres – et elle ne refusait personne. Mais avec le temps, quelque chose est entré en elle. On ne sait pas pourquoi. Elle parlait la nuit, mais pas à elle-même – à quelqu’un que personne ne voyait. Les uns disaient que c’était aux noyés, les autres à un vieux au chapeau de mousse qui venait la voir du côté de la forêt. Elle-même répétait que les morts sortaient de l’eau pour lui conter un avenir terrible. Bientôt, tout le monde l’a évitée, parce qu’on avait peur.
Ensuite, au village, ça a été de mal en pis. Le lait tournait dans les seaux, les petits enfants s’éveillaient en hurlant, les légumes pourrissaient en terre. Les bêtes disparaissaient aussi – d’abord un veau, puis une vache, puis tout un poulailler en une seule nuit. Les gens disaient que c’était son œuvre, et ils se sont mis à l’appeler sorcière.
Une nuit, quelques paysans se sont rassemblés devant sa chaumière. Ils ont cloué la porte avec des planches pendant qu’elle dormait, ont entassé de la paille contre les murs et y ont mis le feu. # pokaz: chlopi, ogien
Andrzej se tut un moment.
– Mon grand-père disait qu’elle a crié jusqu’au bout. Pas de douleur, Maciek. Elle maudissait. Le village, la terre, tous ceux qui vivent ici et qui y vivront un jour. Que personne ne connaîtrait la paix tant que ceux qui viennent la voir n’auraient pas massacré ici tout le monde, jusqu’au dernier. On l’entendait aussi gémir en lançant les mots de la malédiction : « Les os de vos enfants seront brisés, et leur sang sera bu… ». – Andrzej se passa la main sur le visage. – Et il disait encore qu’à l’orée de la forêt, pendant que la chaumière brûlait, quelqu’un de grand se tenait là et regardait. Personne n’est allé voir qui.
– C’est terrible… Et ceux qui l’ont brûlée ?
– Pas un n’a vu l’hiver. L’un après l’autre, ils ont perdu la raison. Ils parlaient tout seuls, ne dormaient plus, allaient au bord de l’eau dans le noir. Jusqu’à ce qu’un jour ils entrent tous dans la tourbière, et ils n’en sont jamais ressortis. Ceux qui les ont vus les derniers disaient qu’ils avaient quelque chose d’étrange dans les yeux. Comme si dans chacun couvait un lumignon. # pokaz: wegielki
Andrzej se pencha vers lui.
– Ce sont leurs yeux qui clignotent la nuit au-dessus des marais. Pas des feux follets, non. Ils sont là-bas, debout, ils guettent – et ils appâtent.
{ chata_macka:
    - przy_mokradlach: Maciek sentit le froid lui nouer l’estomac. Chaque nuit, il voyait ces petites lumières depuis son seuil. Il avait cru que c’était du bois pourri ou des exhalaisons de la tourbière. Que ce n’était que de la lumière.
    - nad_jeziorem: Maciek blêmit. Ces poutres, il les avait lui-même poussées dans les roseaux. Il avait bâti sa cabane exactement là où l’autre avait brûlé.
}
{ stas_zaufanie:
    Staś était assis, immobile, le bâton inachevé à la main. # dalej
- else:
    Derrière la porte entrouverte, quelque chose grinça doucement. Quand le maître des lieux jeta un coup d’œil, il n’y avait dans l’entrée qu’un seau d’eau. Staś était déjà loin dans la cour. # dalej
}
-> zgliszcza_wiedzmy


// ------------------------------------------------------------
//  Zgliszcza chaty wiedźmy w trzcinach nad jeziorem.
// ------------------------------------------------------------
=== zgliszcza_wiedzmy ===
# tlo: zgliszcza
~ zapiski += zielarka_1
En revenant de chez Andrzej, Maciek ne pouvait s’empêcher de penser aux décombres.
{ chata_macka == nad_jeziorem: À présent qu’il savait ce que c’était, il les voyait chaque fois qu’il regardait les roseaux près de chez lui. Des poutres noires, calcinées, dressées comme des côtes. }
Quelque chose en lui le poussait à les examiner de près, bien qu’il eût peur.
# pytanie: Que va faire Maciek ?
*   [Aller aux décombres et fouiller la cendre.]
    -> przeszukuje
*   [Se tenir loin d’eux.]
    -> omija

= przeszukuje
~ przeszukal_zgliszcza = true
~ ekwipunek += figurka
Il écarta les roseaux avec sa hache et s’agenouilla près des poutres noircies. La cendre était froide, tassée et humide. Il y fouilla longtemps, jusqu’à ce que ses doigts rencontrent quelque chose de dur. # pokaz: maciek
Une petite figurine de bois, brûlée d’un côté. Une forme humaine aux bras trop longs, qui descendaient jusqu’aux pieds.
Maciek la tournait et la retournait dans ses mains. Il se dit qu’il pourrait peut-être l’échanger en ville contre de quoi manger, et il la garda.
{ los_psa == oswojony: Le chien, qui jusque-là flairait le long de la rive, recula et gronda doucement en direction de sa poche. }
Au bout d’un moment, il aperçut dans la cendre autre chose encore.
– Impossible – chuchota-t-il en tirant des cendres un briquet à silex noirci. – Serait-ce avec ça qu’on a mis le feu à la chaumière de la sorcière ?
# pytanie: Maciek prendra-t-il le briquet ?
*   [Oui – maudit ou non, il lui permettra d’allumer du feu et de préparer des repas chauds.]
    ~ ekwipunek += krzesiwo
    -> wieczor_przy_chacie
*   [Non – ne pas risquer la malédiction qui pourrait s’abattre sur lui.]
    -> wieczor_przy_chacie

= omija
{chata_macka == nad_jeziorem:Il ne pouvait éviter les roseaux au pied de son propre seuil, mais désormais, en sortant de la cabane, il en détournait les yeux.|Il fit un large crochet pour éviter le lac et ne jeta pas un seul regard vers les roseaux.} Il y a des choses qu’il vaut mieux ne pas toucher. # dalej
-> wieczor_przy_chacie


// ------------------------------------------------------------
//  Wieczór przy chacie – ogień (jeśli ma krzesiwo) i plan wyprawy do miasta.
// ------------------------------------------------------------
=== wieczor_przy_chacie ===
{ chata_macka:
    - przy_lesie: # tlo: wieczor_las
    - przy_mokradlach: # tlo: wieczor_mokradla
    - else: # tlo: wieczor_jezioro
}
{ ekwipunek ? krzesiwo:
    Le soir, Maciek ramassa des branches sèches et les disposa dans un cercle de pierres devant la cabane. Le briquet pesait étrangement lourd dans sa main. Un moment, il le contempla en pensant aux mains qui l’avaient tenu en dernier. Puis il frappa une fois, deux fois, trois fois – et une étincelle rougeoya dans l’amadou. # pokaz: ogien
    Le feu jaillit, vif et clair, et la chaleur lui sauta au visage si soudainement que la tête lui tourna. Depuis des semaines, il n’avait rien mangé de chaud. Il fit cuire dans un pot de terre une soupe d’orties et d’oseille. Il mangea lentement, en se brûlant les lèvres, et rien au monde ne lui avait jamais paru si bon.
    { los_psa == oswojony:
        Le chien se coucha de l’autre côté du foyer. Les flammes se reflétaient dans ses yeux, et il les fixait comme envoûté. # pokaz: pies
    }
- else:
    Le soir tomba, froid et sombre. Maciek mangea une poignée d’oseille crue et quelques canneberges ridées, but de l’eau et s’assit sur le seuil.
}
Il resta longtemps assis, le regard tourné vers la grand-route, à mûrir un plan. La cabane était prête. Il était temps de partir pour la ville – acheter du pain, du sel, peut-être un peu de gruau.
{ ekwipunek ? figurka: La figurine, il tenterait de la vendre – peut-être quelqu’un paierait-il pour une telle curiosité. }
Et ensuite, dès qu’il aurait repris des forces, il amènerait sa famille ici. Dans la maison qu’il avait bâtie de ses propres mains. # dalej
-> droga_do_miasta


// ------------------------------------------------------------
//  Droga do miasta – kręta ścieżka między mokradłami, głos znad wody.
// ------------------------------------------------------------
=== droga_do_miasta ===
# tlo: sciezka
Il se mit en route à l’aube. Il y avait six heures de marche jusqu’à la ville, et le premier tronçon suivait un sentier sinueux entre les marais, en montant jusqu’à la Crête des Hêtres. Il marchait d’un bon pas, malgré son ventre qui criait famine. Il pensait à sa femme et à son petit garçon – au moment où ils franchiraient pour la première fois le seuil de la nouvelle cabane. Le manque lui serrait la gorge.
{ los_psa == oswojony:
    Le chien trottait tout contre lui et remuait gaiement la queue. # pokaz: pies
}
Le brouillard s’étendait bas au-dessus de l’eau noire. Le sentier était étroit, si détrempé par endroits qu’il fallait sauter de touffe en touffe. Maciek posait les pieds avec prudence, la tête baissée. Il se rappelait ce que disaient les gens : il ne faut pas fixer cette eau trop longtemps.
À mi-chemin, pourtant, quelque chose l’obligea à lever les yeux. Au fond des marais luisait une pâle petite lumière. Il faisait déjà grand jour, et elle était toujours là. Elle clignotait lentement, régulièrement, comme si quelqu’un, un lumignon à la main, guettait. # pokaz: swiatelko
C’est alors qu’il entendit son nom.
– Maaaciek…
Doucement, longuement, depuis l’eau. D’une voix qui ressemblait à celle de sa femme bien-aimée.
Elle l’appelait toujours ainsi quand quelque chose n’allait pas. Mais elle était restée au domaine, au-delà de la ville, et devait l’y attendre… Peut-être n’était-ce qu’une illusion. Ou peut-être était-ce la tourbière qui l’appelait à elle.
# pytanie: Que va faire Maciek ?
*   [Aller vers la voix – sa femme a peut-être besoin d’aide.]
    { los_psa == oswojony: -> ratunek | -> utoniecie }
*   [Ne pas se retourner et continuer son chemin – ce ne peut pas être elle.]
    -> nie_odwraca_sie

= ratunek
# tlo: sciezka_po
~ pies_uratowal = true
Il fit un pas hors du sentier, puis un deuxième, dépassa un fourré et sauta par-dessus la boue mouvante. La tourbière clapota et le saisit aux chevilles de ses doigts glacés. Il sentit qu’elle lui aspirait les jambes sous la surface. C’est alors que le chien bondit, le happa par le pan de sa casaque et le tira en arrière de toutes ses forces. Maciek tomba sur le dos en criant. La petite lumière s’éteignit comme soufflée, et quelque part dans le brouillard retentit un petit rire étouffé.
Il gisait dans la boue, haletant, tandis que l’animal, dressé au-dessus de lui, grondait vers les marais, jusqu’à ce que le brouillard se refermât sur l’eau. # pokaz: upadek # dalej
-> na_grzbiecie

= utoniecie
// Bez psa: Maciek idzie za głosem i tonie – ale przeżywa. Ratuje się krzesiwem albo ratuje go Andrzej;
// bagno zabiera figurkę (zostaje tylko spokojne zakończenie) i zostawia na łydkach sine pręgi.
# tlo: sciezka_ratunek
~ pregi_na_lydkach = true
Il fit un pas hors du sentier, puis un deuxième, dépassa un fourré et sauta par-dessus la boue mouvante. La tourbière clapota et le saisit aux chevilles de ses doigts glacés. Il sentit qu’elle lui aspirait les jambes sous la surface. La voix se rapprochait – chaude à présent, familière, celle qui lui manquait depuis des semaines.
– Maaaciek…
Il restait immobile, enfoncé déjà jusqu’aux genoux, puis jusqu’à la taille. Il ne sentait pas le froid. Il sentait seulement qu’un être aimé s’approchait de lui.
C’est seulement quand l’eau noire lui atteignit la poitrine qu’il comprit. Il se débattit, mais quelque chose le retenait par les mollets – quelque chose qui avait des doigts. La petite lumière clignota juste devant son visage, et Maciek vit que ce n’était pas un lumignon. C’étaient des yeux – tels que les avait décrits Andrzej. # pokaz: oczy
{ ekwipunek ? krzesiwo:
    Alors il se souvint du briquet qu’il portait sous sa chemise depuis ce jour-là. De ses mains engourdies, il l’arracha avec l’amadou et frappa – une fois, deux fois – juste au-dessus de l’eau. La troisième étincelle jaillit droit dans les yeux. Dans l’eau, quelque chose siffla comme une bûche jetée au feu, l’étreinte sur ses mollets se relâcha, et la petite lumière s’éteignit comme soufflée. Maciek se jeta en arrière, agrippa des touffes d’herbe, les arracha à pleines poignées, jusqu’à ce qu’enfin il se hissât en rampant sur le sentier. # pokaz: iskry, ratunek
    { ekwipunek ? figurka:
        ~ ekwipunek -= figurka
        ~ figurka_w_bagnie = true
        Sur le sentier, il sentit que sa poche était légère. La figurine à demi brûlée avait dû glisser dans la tourbière. Un instant, il crut la voir encore – une petite forme sombre qui s’enfonçait lentement dans les profondeurs – puis il n’y eut plus rien. # pokaz: figurka
        Il ne retourna pas la chercher. Pour rien au monde.
    }
- else:
    ~ uratowal_andrzej = true
    – Maciek ! Attrape !
    Tout près, une longue perche claqua sur l’eau. Sur la digue se tenait Andrzej, dans ses souliers d’écorce crottés, un panier en bandoulière – à l’aube, il relevait ses nasses près des mares. Maciek s’agrippa à la gaule des deux mains. Le voisin s’arc-bouta en geignant, tandis que la tourbière tirait de son côté, jusqu’à ce qu’enfin elle lâche prise avec un bruit de succion boudeur. Le feu follet clignota encore une fois et s’éteignit. # pokaz: andrzej, ratunek
    – Je te l’avais dit – haleta Andrzej, quand ils furent tous deux étendus dans la boue. – N’écoute pas les voix qui viennent de l’eau.
    { ekwipunek ? figurka:
        ~ ekwipunek -= figurka
        ~ figurka_w_bagnie = true
        Sur la digue, Maciek sentit que sa poche était légère. La figurine à demi brûlée avait dû glisser dans la tourbière. Un instant, il crut la voir encore – une petite forme sombre qui s’enfonçait lentement dans les profondeurs – puis il n’y eut plus rien. # pokaz: figurka
        – Elle a pris son dû – grommela Andrzej, et il cracha par-dessus son épaule gauche.
    }
}
Sur ses deux mollets, là où cette chose l’avait tenu, restèrent des marques bleuâtres – longues, étroites, cinq de chaque côté. Elles ne s’effacèrent ni ce jour-là, ni jusqu’à la fin de sa vie. # dalej
-> na_grzbiecie

= nie_odwraca_sie
Il serra les dents et continua, pas après pas, sans tourner la tête. La voix l’appela encore deux fois, de plus en plus faible. Puis elle se tut. # dalej
-> na_grzbiecie

= na_grzbiecie
# tlo: zapadlina
// Kto poszedł za głosem (pies go wyciągnął albo bagno puściło), już się odwrócił – dla niego inny tekst.
{ pies_uratowal || pregi_na_lydkach:
    Il gravit le reste de la montée comme dans un rêve – {pregi_na_lydkach:trempé jusqu’à la poitrine|trempé jusqu’à la taille}, couvert de vase, les {pregi_na_lydkach:mollets où il sentait encore des doigts étrangers|chevilles où il sentait encore l’étreinte glacée de la tourbière}.{ los_psa == oswojony: Le chien ne le quittait pas d’une semelle et se retournait sans cesse vers l’eau.}
    Sur la Crête des Hêtres, il s’assit sur une pierre, et c’est seulement là que ses mains cessèrent de trembler. En contrebas s’étendait Zapadlina – silencieuse, couverte de brouillard comme d’un linceul. Quelque part là-bas se dressait sa cabane.
- else:
    Sur la Crête des Hêtres, Maciek osa enfin se retourner. En contrebas s’étendait Zapadlina – silencieuse, couverte de brouillard comme d’un linceul. Quelque part là-bas se dressait sa cabane.
}
Puis il reprit la grand-route en direction de la ville. # dalej
-> miasto


// Koniec prologu – dalej rozdział pierwszy z Jaromirem.
=== prolog_ciag_dalszy ===
# ozdobnik
_Fin du prologue._ # dalej
-> rozdzial_pierwszy
