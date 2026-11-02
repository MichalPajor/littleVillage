// ------------------------------------------------------------
//  Rozdział dwunasty – Czuwanie przy zmarłym (strzyga). Wiosna i lato po
//  obławie (pierwsze kroki Marysi, wesele Antka z Jadwisią), w listopadzie
//  umiera stary Wójcik – urodzony z zębami. Czuwanie: sprawdzić zęby albo
//  nie ruszać. O północy zmarły wstaje: przewrócić go twarzą do deski
//  (gryzie Antka), sierp przy szyi (czarna krew, plotki) albo gromnica
//  (wypala się). Pogrzeb: po staremu za murem, po księdzowsku albo z makiem
//  Hanki z medalika. Po księdzowsku bez niczego strzyga wraca po trzech
//  nocach: rozkopać grób albo czuwać przy kołysce (umiera Wójcikowa).
//  W Wigilię na talerzu dla wędrowca zostaje garść mchu.
// ------------------------------------------------------------

=== rozdzial_dwunasty ===
# tlo: wiosna_orka
# rozdzial: Chapitre douzième
# tytul: La veillée funèbre
{ uklad_z_mamunami == dar_swietojanski:
    { ekwipunek ? szczenie_psa:
        Ce printemps-là, le village se jeta au travail pour rattraper ce long hiver. Après les gelées, la moitié des vergers ne fleurit pas, mais le seigle leva dru et égal. Jaromir labourait de l’aube au crépuscule, et le chiot roux se fourrait dans ses jambes au fond des sillons et aboyait après les corneilles qui se posaient sur les mottes fraîchement retournées. # pokaz: szczenie
    - else:
        Ce printemps-là, le village se jeta au travail pour rattraper ce long hiver. Après les gelées, la moitié des vergers ne fleurit pas, mais le seigle leva dru et égal. Jaromir labourait de l’aube au crépuscule.
    }
    La nuit de la Saint-Jean, pendant que les jeunes allumaient des feux au bord du lac, Jaromir s’en alla seul sur l’autre rive, vers les pierres plates. Sur la plus grande, il déposa {sposob_na_odmienca == chrzest_odmienca:deux miches de pain|une miche de pain} et une couronne de brins de rue, comme il l’avait promis. Il ne se retourna pas. Mais quand il fut près des roseaux, il entendit derrière lui un léger clapotis, puis comme un soupir. # pokaz: noc # dalej
- else:
    { ekwipunek ? szczenie_psa:
        Ce printemps-là, le village se jeta au travail pour rattraper ce long hiver. Après les gelées, la moitié des vergers ne fleurit pas, mais le seigle leva dru et égal. Jaromir labourait de l’aube au crépuscule, et le chiot roux se fourrait dans ses jambes au fond des sillons et aboyait après les corneilles qui se posaient sur les mottes fraîchement retournées. # pokaz: szczenie # dalej
    - else:
        Ce printemps-là, le village se jeta au travail pour rattraper ce long hiver. Après les gelées, la moitié des vergers ne fleurit pas, mais le seigle leva dru et égal. Jaromir labourait de l’aube au crépuscule. # dalej
    }
}
-> lato_w_zapadlinie

= lato_w_zapadlinie
# tlo: lato_podworze
En juillet, alors que Jaromir fauchait le pré derrière la grange, Marysia fit ses premiers pas – elle lâcha la jupe de sa mère, traversa toute la cour en titubant comme un coq ivre et se jeta en piaillant dans ses bras. Hanka riait si fort qu’elle dut s’asseoir sur le seuil. # pokaz: kroki
{ obietnica_antkowi && oblawa_wilk == wydal_wilka:Tout le printemps et tout l’été, Antek évita leur chaumière. Il ne vint qu’après la moisson, la casquette à la main, et dit qu’il épousait Jadwisia de Bukowiec et qu’il voulait Jaromir pour garçon d’honneur. Ni l’un ni l’autre ne parla du loup blanc.|Après la moisson, Antek annonça qu’il épousait Jadwisia de Bukowiec, et demanda aussitôt à Jaromir d’être son garçon d’honneur.} Jadwisia était une fille douce, couverte de taches de rousseur, qui riait à chaque mot d’Antek, même quand il ne plaisantait pas du tout. Aux noces, Antek dansa avec Hanka et avec Marysia dans les bras, jusqu’à ce que la petite s’endormît sur son épaule.{ uklad_z_mamunami == oddane_lata: Une tante de Jadwisia examina les tempes grises de Jaromir et demanda tout bas à Hanka si son mari était veuf quand il l’avait épousée.}
Cet été-là, le jeune bois sous la forêt avança d’une raie de plus. Les petits épicéas levaient dans le seigle de chez Staś plus dru que la nielle ; les enfants les arrachaient chaque matin, et le lendemain, aux mêmes endroits, s’en dressaient de nouveaux, déjà hauts jusqu’aux genoux.
Le vieux Wójcik déclinait de mois en mois. Depuis la Pentecôte où les roussalkas étaient sorties de l’eau, il ne parlait presque plus. Le soir, il restait assis sur le ponton et murmurait quelque chose au lac, jusqu’à ce que sa femme vînt le chercher. La mère Wójcik avoua à Hanka qu’en juin, bien que la grand-mère de Hanka l’eût mise en garde, elle s’était tapie une nuit dans les roseaux pour écouter les mamounes battre leur linge. Au-dessus de chaque linceul, elles criaient le nom de quelqu’un. Elle n’en avait entendu qu’un. Elle ne voulut pas dire lequel, mais depuis, elle ne quittait plus son mari d’un pas. # pokaz: wieczor # dalej
-> czuwanie_u_wojcikow

= czuwanie_u_wojcikow
# tlo: czuwanie_izba
Le vieux Wójcik mourut en novembre, la nuit qui suivit la première neige.
Au matin, quand Jaromir sortit à l’étable, la mère Wójcik l’attendait déjà près de la clôture – un fichu noir sur la tête, les yeux gonflés de larmes, le chapelet serré dans le poing.
– Jaromir, mon petit – dit-elle – veille-le cette nuit. Personne ne veut venir. On jase au village… – s’interrompit-elle.
On jasait, et beaucoup. Que Wójcik était né avec des dents, comme le racontait encore la mère de Staś, qui avait aidé à l’accouchement soixante ans plus tôt. Qu’il n’avait jamais été malade, même pendant les hivers de famine. Que la maladie épargnait son étable quand, chez les voisins, les vaches crevaient l’une après l’autre. Et que le corps, bien qu’il fût là depuis l’aube, ne refroidissait pas du tout.
Le soir, quelques hommes se réunirent chez les Wójcik – Jaromir, Antek, le vieux Staś, qui s’était entêté à venir bien qu’il tînt à peine sur ses jambes – et deux ou trois femmes pour chanter. On voila le miroir d’une toile, on jeta l’eau des baquets par-dessus le seuil et on entrouvrit la fenêtre de la largeur d’une main, pour que l’âme pût sortir. Dans la pièce, cela sentait la cire, la laine humide et quelque chose de douceâtre qui donnait la nausée.
Wójcik reposait sur une planche contre le mur, dans sa chemise mortuaire de lin, les mains croisées sur la poitrine. Ses joues étaient roses comme celles d’un vivant. Ses paupières refusaient de se fermer, et sous les cils luisait le blanc des yeux. Et les lèvres… les lèvres s’entrouvraient légèrement, comme si quelque chose les écartait de l’intérieur. # pokaz: wargi
# pytanie: Que va faire Jaromir ?
*   [Soulever la lèvre du mort et voir ce qu’il y a dessous.]
    ~ sprawdzil_zeby = true
    Jaromir s’approcha de la planche et, prudemment, de deux doigts, souleva la lèvre supérieure du mort.
    Des dents. Deux rangées de dents – l’une derrière l’autre, petites et pointues comme celles d’un brochet. # pokaz: zeby
    Quelqu’un gémit derrière lui. Le vieux Staś se signa trois fois, et les femmes s’arrêtèrent net au milieu d’un mot du cantique.
    – Deux âmes – chuchota Staś. – Ma mère, Dieu ait son âme, c’est elle qui l’a reçu quand il est né. Elle disait que le petit gars avait des dents comme un brocheton, et qu’après, elle était restée à genoux jusqu’au jour, parce qu’il lui semblait que… – Il n’acheva pas. – L’une est partie à Dieu. Et l’autre… l’autre est encore ici. # dalej
*   [Ne pas toucher au mort – ça ne se fait pas.]
    – Laissez-le – dit Jaromir, quand Antek tendit la main vers le visage du mort. – Ça ne se fait pas.
    Antek retira la main. Les femmes continuèrent à chanter, les hommes s’assirent contre le mur et personne ne regarda plus la planche. Mais toute la soirée, Jaromir sentit que le mort les observait sous ses paupières mi-closes. # pokaz: powieki # dalej
-   -> o_polnocy

= o_polnocy
# tlo: polnoc_strzyga
Vers minuit, les chandelles se mirent à fumer. Les flammes rapetissèrent et brûlèrent d’un bleu pâle, comme les feux follets au-dessus de la tourbière. Les femmes chantaient de plus en plus bas, jusqu’à se taire tout à fait.
C’est alors que les doigts du mort tressaillirent. # pokaz: palce
D’abord un, puis un autre. Les ongles grattèrent doucement la planche. Les paupières se soulevèrent lentement, découvrant des yeux troubles, pareils à ceux d’un poisson mort. La bouche s’ouvrit plus grand, et de la gorge sortit un son – pas une voix, seulement un long soupir sifflant, comme celui d’un homme tiré de sous la glace qui prend sa première bouffée d’air.
Le vieux Wójcik commença à se redresser. # pokaz: wstaje
Une des femmes poussa un cri et se jeta vers la porte. Staś resta pétrifié, et Antek agrippa Jaromir par le bras.
~ zapiski += strzyga_1
# pytanie: Que va faire Jaromir ?
*   [Le retourner face contre la planche.]
    ~ polnoc_strzygi = na_twarz
    – Mettez-le face contre la planche ! – cria Staś. – Avant qu’il se lève !
    Jaromir et Antek se jetèrent sur le mort. Il était lourd comme une pierre, et pourtant il se débattait avec une force qu’il n’avait pas même eue de son vivant. Comme ils le retournaient sur le ventre, il tordit brusquement la tête et planta les dents dans la main d’Antek. Antek hurla, mais ne lâcha pas. # pokaz: twarz
    Ils lui plaquèrent le visage contre la planche et le tinrent à deux jusqu’à ce que, derrière la fenêtre, chantât le premier coq. Le corps s’amollit et ne bougea plus.
    Au matin, Hanka lava la main d’Antek à l’eau-de-vie et l’enveloppa d’un linge. La plaie était superficielle, mais de tout l’hiver elle ne voulut pas guérir. # dalej
*   [Lui poser une faucille sur le cou.]
    ~ polnoc_strzygi = sierp_przy_szyi
    Au mur, près de la porte, pendait une faucille. Jaromir la décrocha d’un geste et en appliqua la lame contre le cou du mort, juste sous le menton.
    Wójcik eut un sursaut, comme brûlé, et retomba sur la planche. La lame entama la peau – à peine, une simple éraflure – et de la plaie coula un filet de sang. Noir et épais comme de la poix. Une odeur de pourriture se répandit dans la pièce. # pokaz: sierp
    Jaromir tint la faucille contre sa gorge jusqu’à l’aube. Ses mains s’engourdirent au point qu’il ne sentait plus ses doigts.
    Au matin, la moitié du village savait déjà que, chez les Wójcik, le mort avait saigné. À midi, tout le monde le savait. # dalej
*   { ekwipunek ? gromnica } [Allumer le cierge de la Chandeleur et le lui mettre entre les mains.]
    ~ polnoc_strzygi = gromnica_w_dloniach
    Jaromir prit le cierge de la Chandeleur que Hanka lui avait fourré dans la main au moment où il partait, l’alluma à la chandelle qui fumait et le mit entre les mains du mort.
    La cire grésilla comme si elle était tombée sur une tôle brûlante. Wójcik se figea. Son visage changea un instant – il s’adoucit, comme s’il se souvenait de quelque chose – et de sa bouche ouverte s’échappa un faible murmure : # pokaz: gromnica
    – Kaśka…
    ~ ekwipunek -= gromnica
    Puis il ferma les yeux et retomba sur la planche. Le cierge brûla entre ses mains jusqu’au matin et se consuma jusqu’au bout. # dalej
-   -> pogrzeb_wojcika

= pogrzeb_wojcika
# tlo: cmentarz_bukowiec
Le matin venu, le curé de Bukowiec arriva. Il écouta tout en silence, les lèvres de plus en plus serrées, et quand Staś se mit à raconter comment on enterrait autrefois ceux de l’espèce de Wójcik – face contre terre, une faucille au-dessus de la gorge, du pavot dans le cercueil – il l’interrompit au milieu d’une phrase.
– Dans la terre bénite, il n’y aura pas de rites païens – dit-il durement. – Ou bien vous l’enterrez en chrétien, ou bien vous l’enterrez vous-mêmes. Derrière le mur du cimetière. # pokaz: ksiadz
La mère Wójcik regarda Jaromir. Elle était la marraine de sa fille, et pour la deuxième fois depuis la veille elle lui demandait quelque chose – cette fois non par des mots, mais des yeux.
# pytanie: Comment va-t-on enterrer Wójcik ?
*   [L’enterrer à l’ancienne – derrière le mur du cimetière.]
    ~ pochowek_wojcika = pochowany_za_murem
    Ils l’enterrèrent à trois – Jaromir, Antek et Staś – derrière le mur du cimetière de Bukowiec, à la croisée des chemins. Face contre terre. Au-dessus de la gorge, Jaromir planta une faucille, la lame vers le cou, et la mère Wójcik versa elle-même une poignée de pavot dans le cercueil, en marmonnant quelque chose entre ses dents. # pokaz: za_murem
    Le curé ne vint pas. Les gens de la paroisse les regardaient de loin comme des lépreux. Pendant tout le chemin du retour, la veuve ne dit pas un mot, mais quand ils se séparèrent devant sa chaumière, elle saisit la main de Jaromir et la serra fort.
    – Merci, mon garçon – murmura-t-elle. – Maintenant il va reposer. Et moi aussi. # dalej
    -> spokojna_zima
*   [L’enterrer comme le veut le curé, en terre bénite.]
    ~ pochowek_wojcika = pochowany_po_ksiedzowsku
    Ils l’enterrèrent au cimetière de Bukowiec, en terre bénite, face au ciel, un chapelet entre les mains. Le curé dit la messe, aspergea le cercueil d’eau bénite, et les gens rentrèrent chez eux, soulagés que tout se fût passé comme il faut. # pokaz: poswiecona
    Seul le vieux Staś, pendant que les fossoyeurs jetaient le sable, secoua la tête et dit doucement, pour lui-même :
    – Il y tiendra pas, là-dessous. # dalej
    -> trzecia_noc
*   { mak_w_medaliku } [L’enterrer comme le veut le curé – mais avec le pavot de Hanka dans le cercueil.]
    ~ pochowek_wojcika = pochowany_z_makiem
    Quand on sortit le cercueil de la chaumière, Hanka s’approcha et ouvrit le médaillon qu’elle portait au cou depuis cet été-là, celui de la Dame de Midi. Elle répandit sur la poitrine du mort le pavot séché – celui-là même que Jaromir lui avait un jour posé dans la paume, assis sur la clôture, sous une lune rouge.
    – Dors – chuchota-t-elle. – Le pavot endort même ceux de ton espèce. # pokaz: mak
    ~ mak_w_medaliku = false
    Wójcik reposa en terre bénite, face au ciel, un chapelet entre les doigts et une pincée de pavot sur la poitrine. Mais quelques graines étaient restées sur le seuil des Wójcik, et le curé les vit. Après l’enterrement, il convoqua Hanka à la sacristie. Elle en ressortit pâle et ne dit pas à Jaromir ce qu’elle avait entendu – seulement que, jusqu’à Pâques, elle n’avait pas le droit de communier. À l’église, les commères de Bukowiec s’écartaient d’elle sur le banc. Hanka referma le médaillon vide et ne l’ouvrit plus jamais. # pokaz: poswiecona # dalej
    -> spokojna_zima

= spokojna_zima
# tlo: cmentarz_bukowiec
~ zapiski += strzyga_2
{ pochowek_wojcika == pochowany_za_murem:
    Après l’enterrement, la neige tomba et resta, moelleuse, jusqu’en février. La tombe derrière le mur du cimetière se couvrit d’herbe au printemps, et personne, hormis la mère Wójcik, n’y allait. Elle, elle venait chaque dimanche, seule, et s’asseyait sur une pierre à la croisée des chemins – jusqu’au jour où, en hiver, elle dut s’aliter. # pokaz: wdowa
- else:
    Après l’enterrement, la neige tomba et resta, moelleuse, jusqu’en février. Sur la tombe de Bukowiec, la mère Wójcik allumait chaque dimanche une petite bougie, jusqu’à ce qu’elle tombât malade, et Hanka y laissa une couronne de pavots séchés. # pokaz: swieczka
}
Le vieux Wójcik ne se releva plus. Seuls les chiens, quand ils passaient devant sa chaumière, rentraient la queue pendant de longs mois. # dalej
-> boze_narodzenie

= trzecia_noc
# tlo: strzyga_okno
La troisième nuit après l’enterrement, avant même minuit, Hanka entendit la neige crisser dans la cour. Elle sortit avant que Jaromir ait pu se lever, et revint avec la mère Wójcik. La vieille avait jeté n’importe comment une peau de mouton sur ses épaules nues et enroulé son chapelet autour de sa main si serré que les grains s’enfonçaient dans sa chair.
– Il est revenu – sanglotait-elle. – Il était sous la fenêtre. Il collait son visage à la vitre et m’appelait par mon nom. Deux nuits, il a appelé. Et aujourd’hui… aujourd’hui, il a demandé après la petite.
Hanka pâlit et, d’instinct, regarda le berceau où dormait Marysia. Puis, sans un mot, elle se mit à préparer un lit pour la mère Wójcik sur le banc près du poêle, mais la vieille lui saisit la main.
– S’il ne me trouve pas chez moi, il viendra ici – chuchota-t-elle, et elle ressortit dans la nuit.
Cette nuit-là, Jaromir ne ferma pas l’œil. Il resta assis près du berceau, la hache{ siekiera_dziadka: de grand-père} sur les genoux. Vers le matin, juste avant le chant des coqs, il entendit un son léger, pareil à un souffle tout contre la vitre. Il leva la tête. Sur le verre, du dehors, s’était épanouie une tache de buée. # pokaz: oddech
Derrière la fenêtre se tenait le vieux Wójcik. Dans sa chemise mortuaire maculée de glaise, avec ses yeux troubles de poisson mort. Sa bouche était ouverte et Jaromir voyait les deux rangées de dents, tandis qu’un filet sombre lui coulait sur le menton. # pokaz: strzyga
Il regardait le berceau.
# pytanie: Que va faire Jaromir ?
*   [Rouvrir sa tombe et l’enterrer à l’ancienne.]
    ~ trzy_noce = rozkopany_grob
    -> rozkopany_grob_wojcika
*   [Veiller près du berceau jusqu’à l’aube – qu’il vienne, s’il l’ose.]
    ~ trzy_noce = czuwanie_przy_kolysce
    Jaromir se leva, se plaça entre la fenêtre et le berceau et brandit la hache. Wójcik le regarda longtemps, sans ciller. Puis il sourit – largement, au point que toutes ses dents brillèrent dans la lumière grise – et s’éloigna de la fenêtre. # pokaz: odszedl
    Il ne vint plus jamais chez eux. Mais dès qu’il fit jour, Hanka courut chez la mère Wójcik – et en revint le temps d’un Notre Père plus tard, sans fichu, les doigts pressés contre la bouche. La veuve gisait dans la pièce, sur son lit, les mains croisées sur la poitrine, le visage paisible. Elle avait au cou deux petites piqûres rouges, comme faites par une alène.
    ~ zapiski += strzyga_2
    Ils l’enterrèrent à côté de son mari. Cette fois à l’ancienne – le curé, quand il vit son cou, ne protesta pas d’un seul mot. # dalej
    -> boze_narodzenie

= rozkopany_grob_wojcika
# tlo: cmentarz_bukowiec
Le jour même, à la tombée de la nuit, Jaromir et Antek allèrent avec des pelles au cimetière de Bukowiec. Ils creusèrent la tombe fraîche, soulevèrent le couvercle du cercueil – Wójcik y gisait, rose et replet, du sang sur les lèvres – et le retournèrent face contre terre. Au-dessus de la gorge, ils plantèrent une faucille, et dans le cercueil ils versèrent du pavot. Ils comblèrent la fosse et rentrèrent avant l’aube, sans échanger un mot. # pokaz: rozkop
~ zapiski += strzyga_2
Wójcik ne revint plus. Mais le curé, quand il vit la fosse fraîchement remuée, jeta l’anathème, du haut de la chaire, sur « les impies qui ont profané un tombeau », et pendant de longues années, à l’église, Jaromir sentit sur lui les regards des gens de Bukowiec. # dalej
-> boze_narodzenie

= boze_narodzenie
# tlo: wigilia_stol
~ zapiski += mamuny_3
~ zapiski += starzec_3
{ trzy_noce == czuwanie_przy_kolysce:
    La chaumière des Wójcik resta vide tout l’hiver. Personne ne voulut l’acheter ni même jeter un œil à l’intérieur, et les enfants faisaient un large détour pour l’éviter.
- else:
    La mère Wójcik attrapa un mal de poitrine cet hiver-là, mais elle en réchappa. Dans sa chaumière, chaque nuit, une chandelle brûlait à la fenêtre du côté du lac. # pokaz: swieca
}
{ ekwipunek ? szczenie_psa:
    Marysia disait déjà quelques mots, et le plus fort, « papa ». Le chiot roux la suivait partout et dormait sous le berceau, le nez contre les barreaux. # pokaz: szczenie
- else:
    Marysia disait déjà quelques mots, et le plus fort, « papa ».
}
En s’endormant, elle fredonnait parfois pour elle-même quelques notes – montant et descendant, comme de l’eau qu’on verse d’une cruche dans une autre. Cette mélodie, ni Hanka ni la mère de Hanka ne la connaissaient.
À la veillée de Noël, Hanka, comme chaque année, dressa la table avec une assiette de plus – pour le voyageur égaré – et y posa l’opłatek. Personne ne vint. Mais au matin, quand elle desservit, il y avait sur cette assiette, à la place de l’opłatek, une poignée de mousse. Humide et verte comme en mai. # pokaz: mech # dalej
-> rozdzial_dwunasty_ciag_dalszy


// Koniec rozdziału dwunastego – dalej rozdział trzynasty.
=== rozdzial_dwunasty_ciag_dalszy ===
# ozdobnik
_Fin du chapitre douzième._ # dalej
-> rozdzial_trzynasty
