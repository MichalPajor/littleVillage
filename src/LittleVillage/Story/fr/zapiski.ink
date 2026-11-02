// ------------------------------------------------------------
//  Zapiski – bestiariusz. Każda istota ma kilka wpisów (etapów),
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
    - stwor_1:      ~ return "La Créature des fourrés"
    - stwor_2:      ~ return "Le Noyé"
    - zielarka_1:   ~ return "L’Herboriste du lac"
    - zielarka_2:   ~ return "L’Herboriste du lac"
    - pan_lasu_1:   ~ return "Le Seigneur de la Forêt"
    - pan_lasu_2:   ~ return "Le Seigneur de la Forêt"
    - pan_lasu_3:   ~ return "Le Seigneur de la Forêt"
    - pan_lasu_4:   ~ return "Le Seigneur de la Forêt"
    - starzec_1:    ~ return "Le Vieillard au chapeau de mousse"
    - starzec_2:    ~ return "Le Vieillard au chapeau de mousse"
    - polnocnica_1: ~ return "La Dame de Minuit"
    - polnocnica_2: ~ return "La Dame de Minuit"
    - dziad_1:      ~ return "Le vieillard à la vielle"
    - ogniki_1:     ~ return "Feux follets"
    - uboze_1:      ~ return "Le lutin du foyer"
    - uboze_2:      ~ return "Le lutin du foyer"
    - poludnica_1:  ~ return "La Dame de Midi"
    - rusalki_1:    ~ return "Roussalkas"
    - licho_1:      ~ return "La mendiante borgne"
    - licho_2:      ~ return "Le licho"
    - licho_3:      ~ return "Le licho"
    - tropy_1:      ~ return "Sous la fenêtre"
    - tropy_2:      ~ return "Le loup blanc"
    - pan_lasu_5:   ~ return "Le Seigneur de la Forêt"
    - mamuny_1:     ~ return "Mamounes"
    - mamuny_2:     ~ return "Mamounes"
    - odmieniec_1:  ~ return "Le changelin"
    - strzyga_1:    ~ return "Le mort qui ne refroidit pas"
    - strzyga_2:    ~ return "La strzyga"
    - mamuny_3:     ~ return "Mamounes"
    - starzec_3:    ~ return "Le Vieillard au chapeau de mousse"
    - ogniki_2:     ~ return "Feux follets"
    - stwor_3:      ~ return "Le Noyé"
    - zielarka_3:   ~ return "L’Herboriste du lac"
    - pan_lasu_6:   ~ return "Le Seigneur de la Forêt"
    - uboze_3:      ~ return "Le lutin du foyer"
    - zytnia_baba_1: ~ return "La femme dans le seigle"
    - zytnia_baba_2: ~ return "La Vieille du Seigle"
    - pan_lasu_7:   ~ return "Le Seigneur de la Forêt"
    - planetnik_1:  ~ return "Le planetnik"
    - tropy_3:      ~ return "Le loup blanc"
    - blednice_1:   ~ return "Follettes"
    - starzec_4:    ~ return "Le Vieillard au chapeau de mousse"
    - pan_lasu_8:   ~ return "Le Seigneur de la Forêt"
    - pan_lasu_9:   ~ return "Le Seigneur de la Forêt"
    - zielarka_4:   ~ return "L’Herboriste du lac"
    - tropy_4:      ~ return "Le loup blanc"
    - dzieci_1:     ~ return "Les enfants sous le chêne"
    - pan_lasu_10:  ~ return "Le Seigneur de la Forêt"
    - tropy_5:      ~ return "Le loup blanc"
    - mamuny_4:     ~ return "Mamounes"
    - tropy_6:      ~ return "Le loup blanc"
    - dzieci_2:     ~ return "Les enfants sous le chêne"
    - pan_lasu_11:  ~ return "Le Seigneur de la Forêt"
    - pan_lasu_12:  ~ return "Le Seigneur de la Forêt"
    - zielarka_5:   ~ return "L’Herboriste du lac"
    - tropy_7:      ~ return "Le loup blanc"
    - dzieci_3:     ~ return "Les enfants sous le chêne"
}
~ return ""

=== function tresc_zapisku(z)
{ z:
- stwor_1:
    De trois têtes plus grand qu’un homme, voûté, les bras pendant presque jusqu’à terre, de longs cheveux mouillés. Il pue la tourbière. Il sortit de la brume quand se turent les grillons et les grenouilles, et s’en alla vers les marais. {czary.noc:Maciek le revit une fois encore – sur le seuil de sa propre cabane.|Maciek ne le vit qu’une seule fois – et ne l’oublia jamais.}
- stwor_2:
    Un demi-siècle plus tard, il revint, quand les enfants noyaient Marzanna – {obejrzal_sie:une main grise entraîna l’effigie sous l’eau|quelque chose tira l’effigie par en dessous et l’entraîna sous l’eau}.{figurka_u_staruchy && los_psa == oswojony: « Ceux de son espèce ne meurent pas. Ils attendent. »}{not figurka_u_staruchy || los_psa == oswojony: Les vieux disent que celui qui se noie sans prêtre ne va ni au ciel ni en enfer : il reste dans l’eau. Au fond, le noyé garde les âmes de ceux qui ont péri là sous des pots de terre retournés, et la nuit il les renverse un à un. Quand un pot se fend, l’âme s’échappe et monte à la surface dans une bulle.}
- zielarka_1:
    Elle vivait au bord du lac, là où des poutres calcinées dépassent des roseaux. Elle soignait les gens par les herbes, jusqu’au jour où elle se mit à parler la nuit avec quelqu’un que personne ne voyait. Quand au village le lait commença à tourner et les bêtes à crever, les paysans clouèrent des planches sur sa porte et mirent le feu à la chaumière. En mourant, elle maudit le village et quiconque viendrait un jour y vivre. Ceux qui l’avaient brûlée ne virent pas l’hiver – l’un après l’autre, ils s’enfoncèrent dans la tourbière.
- zielarka_2:
    La malédiction ne s’éteignit pas avec le feu. Grand-père Maciek la porta en lui toute sa vie – {figurka_u_staruchy:et la paya plus cher qu’il n’aurait voulu l’avouer à quiconque|et il en parlait à son fils comme d’un conte, bien que lui-même n’en rît jamais}.{chata_macka != nad_jeziorem: Aujourd’hui encore, personne à Zapadlina ne bâtit au bord du lac, du côté ouest.}
- pan_lasu_1:
    Les vieux lui donnent divers noms – Borowy, le Seigneur de la Forêt – et les plus anciens aucun, car mieux vaut ne pas l’appeler par son nom. Il habite au plus profond de la forêt et veille sur elle comme un paysan sur son enclos. Celui qui y entre sans demander, il l’égare si bien que l’homme tourne en rond. Qui s’est perdu, qu’il ôte ses vêtements et les remette à l’envers – alors Borowy perd sa trace, car il croit avoir devant lui l’un des siens.
- pan_lasu_2:
    Il est des arbres qu’il garde comme son propre cœur. Le Vieux Chêne, à l’orée de la forêt, était la frontière – tant qu’il restait debout, la forêt s’arrêtait là où elle s’arrêtait.{ franek_scial_dab: Le premier coup, c’est Franek qui le lui porta.}{pracowal_w_tartaku: Le vieux Wawrzyniec, de la scierie, contait que, lorsque les premiers hommes descendirent dans cette vallée, ils durent promettre de ne jamais passer le Vieux Chêne avec une hache – et alors seulement les bois reculèrent – et qu’en échange, une fois par génération, il s’empare d’un enfant pour quelques nuits. « Les oratoires sont comme les clous d’une clôture. Tu en arraches un, la clôture tient encore. Tu les arraches tous… »}
- pan_lasu_3:
    {ostrzezenie_poludnicy:La Dame de Midi le dit sans détour : le Seigneur de la Forêt s’éveille.{pomylki_poludnica == 0: À chaque arbre abattu, son sommeil se fait plus léger.}|Quelque chose changea après l’abattage du Vieux Chêne. Dans les jardins, entre les plates-bandes, la mousse surgissait en une seule nuit comme sous les plus vieux épicéas, et chaque matin la verdure, du côté de la forêt, se tenait plus près des clôtures.}
- pan_lasu_4:
    Quand les hommes d’Urbaniak eurent déterré les oratoires au pied de la forêt, de jeunes épicéas poussèrent en une nuit dans les fosses qu’ils avaient laissées. De jour en jour, la forêt semblait se tenir plus près du village.{ kapliczki_drogi == obronil_kapliczke: Il ne resta qu’un seul oratoire – celui que Jaromir avait défendu.}
- starzec_1:
    {poszedl_po_wstazke:Il se tenait dans la pénombre de la forêt, si grand qu’il aurait dû se baisser pour entrer dans une maison. Une peau de mouton retournée, laine en dehors, ceinte d’une ficelle, un chapeau de mousse à larges bords, et dessous rien que les deux points clairs des yeux. Il s’appuyait sur un bâton noueux d’où poussaient des feuilles. Dans sa main, il tenait le ruban de Hanka.|Quelqu’un l’avait dessiné dans le livre de monsieur Ignacy : un vieillard aux vêtements mis à l’envers, coiffé d’un chapeau de mousse.}{czytal_ksiege: Sous le dessin, le livre disait : « Qui le rencontre, qu’il fasse tout comme lui. Celui-là vient de l’autre côté, où tout va à rebours. »}
- starzec_2:
    Il vint au mariage de Jaromir et de Hanka – debout à l’orée du bois, il hochait la tête en mesure avec la musique de la noce.{ poszedl_po_wstazke: Il n’avait pas vieilli d’un seul jour.} {weselny_gosc == ugoszczony_kolaczem:Il accepta la brioche de noces et inclina la tête comme un maître de maison devant un autre.|{weselny_gosc == zapytany:Il parla d’une voix pareille au vent dans la cime des arbres : « Tu choisis bien ta femme, petit-fils de Maciek. Veille sur elle. »|Il resta là jusqu’au premier chant du coq.}}
- polnocnica_1:
    Elle vient après minuit chez les nourrissons. D’abord il fait froid, puis quelque chose bruisse dans la pièce comme des feuilles sèches. Antek ne vit qu’une forme claire au-dessus du berceau et des cheveux noirs jusqu’au plancher. Au lieu de pleurer, l’enfant siffle, comme s’il ne pouvait reprendre son souffle. Elle craint le fer sous l’oreiller.{rada_jaromira == ksiega_rada: Le livre de monsieur Ignacy ajoute qu’elle doit compter le pavot répandu, graine par graine – et elle ne sait compter que jusqu’à l’aube.}
- polnocnica_2:
    De près, on la voit tout entière : elle flotte au-dessus des planches sans les toucher des pieds, dans un linceul effiloché par le bas, le visage décharné comme une tête de mort, les yeux pareils à deux puits noirs, et de petites dents pointues. {rada_jaromira == hanka:La grand-mère de Hanka dit que c’est l’âme d’une mère morte en couches avant que le prêtre eût pu la relever – elle n’a pas pu bercer son propre enfant, alors elle va vers ceux des autres. Et qu’elle ne vient jamais d’elle-même : quelqu’un doit lui montrer le chemin. }{polnocnica == przegnana_nozem:Zosia fut sauvée par le petit couteau glissé sous son oreiller.|{polnocnica == policzyla_mak:Zosia fut sauvée par le pavot – la Dame de Minuit compta jusqu’à l’aube et n’en vint pas à bout.|Zosia survécut, mais il lui resta sur le front une petite tache grise, comme laissée par un doigt sale.}}
- dziad_1:
    Il frappa à la porte pendant la veillée de Noël, à peine l’opłatek rompu : voûté, en haillons, une vielle sur le dos, les yeux blancs comme du lait. {wpuscil_dziada:Il mangea peu, chanta une complainte sur les âmes qui reviennent cette nuit-là dans leurs chaumières, et s’en alla dans l’obscurité, sans que personne vît de quel côté. En sortant, il murmura à Jaromir : « Tu sens la forêt, garçon. »|On ne le laissa pas entrer. Il partit vers la forêt et disparut dans la bourrasque de neige, au milieu du champ.} Le soir de la veillée de Noël, on ne chasse pas un mendiant du seuil, car on ne sait jamais qui est venu – parfois c’est l’âme d’un parent qui revient sous un déguisement, pour voir si l’on se souvient encore d’elle.
- ogniki_1:
    De pâles petites lumières au-dessus des marais, près de la passerelle, qui s’allument au crépuscule et gloussent comme quelqu’un qui a reçu un cadeau. Les commères disent que ce sont ceux qui ont brûlé l’herboriste du lac – ils sont entrés dans la tourbière et, aujourd’hui encore, ils y luisent la nuit. Qui suit un de ces feux follets ne revient jamais.
- uboze_1:
    Un tout petit vieux, pas plus grand qu’un chat, en veste rapiécée et petit bonnet rouge, la barbe grise enroulée autour de ses pattes de poule. Il habite derrière le poêle, dans les vieilles chaumières. Qui nourrit le lutin du foyer voit prospérer sa ferme ; qui le chasse attire la misère sur son toit. Le lutin arrive avec le premier maître de maison et reste tant que la chaumière est debout. Quand elle brûle, il s’en va avec la fumée et ne revient plus.
- uboze_2:
    {uboze == nakarmione:Il rend le bien en silence : au garde-manger les souris ne se multiplient pas, dans la cruche il y a toujours plus de lait qu’on n’en a versé{rozdzial_dziewiaty:, et pendant l’hiver de disette la farine, on ne sait comment, ne veut pas finir}. Seulement, ce qui s’ajoute dans une chaumière se retranche dans une autre – chez Staś, pendant ces mêmes mois, le lait tournait.|{uboze == przegnane:Depuis qu’on l’avait chassé, la chaumière semblait ne plus les aimer : les poules cessèrent de pondre, et au garde-manger quelque chose se gâtait à tout moment.|Personne ne le revit jamais. Parfois seulement, le matin, la cendre sur le rebord du poêle était grattée, comme par une poule qui cherche où passer la nuit.}}
- poludnica_1:
    Une grande femme blanche en longue chemise. À midi juste, elle vient dans les champs. Ses pieds ne touchent pas le sol, ses yeux sont blancs, sans pupilles, et elle tient une faucille à la main. À qui travaille au plus fort de la chaleur, elle pose des énigmes – pour chaque erreur, elle tranche de sa lame.{ not figurka_u_staruchy: On dit qu’elle fut jadis la meilleure moissonneuse du pays : elle paria avec les valets de ferme qu’elle moissonnerait seule tout un arpent avant midi, et elle ne quitta pas les blés par la pire canicule. On la trouva le soir, la faucille à la main et des épis dans les cheveux.}{ poludnica_uklon: Devant la réponse tirée du livre, elle inclina la tête.}{ poludnica_darowala: Elle fit grâce à Jaromir d’une erreur, parce qu’il n’avait pas reculé devant la faucille.}{ blizna_sierpa: Elle laissa à Jaromir une cicatrice en forme de croissant de lune.}
- rusalki_1:
    Les âmes des filles noyées. À la Pentecôte, elles sortent du lac et dansent au clair de lune – jeunes, pâles, en chemises de lin mouillées, couronnées de joncs, les yeux tout noirs, sans blanc. Elles attirent par un chant sans paroles et entraînent dans l’abîme quiconque se laisse tenter. Elles ne se montrent que de la Pentecôte à la Saint-Jean ; le reste de l’année, elles dorment dans la vase du fond. L’une d’elles était Kaśka, la fille des Wójcik.{ratunek_franka == piolunem: Elles craignent l’absinthe plus que le feu – mais celle qui l’a donnée, elles ne l’oublient pas. L’eau ne rendit pas la couronne de Hanka.|{ratunek_franka == krzyzem: La croix ne les brûle pas – « nous étions là avant elle ». Elles lâchèrent Franek, mais l’eau ne se coucha pas le ventre vide – au matin, on trouva dans les joncs Bartek, le fils du meunier.| Kaśka lâcha Franek quand Hanka l’appela par son nom. Sur la joue de Jaromir, là où elle l’avait touché, resta une tache blanche et froide.}}
- licho_1:
    Une petite mendiante voûtée, à peine à la ceinture d’un adulte, enveloppée de tant de haillons qu’on ne sait où l’un finit et où commence l’autre. Elle n’a qu’un œil, cerclé de rouge ; à la place de l’autre, une peau lisse et grise. Son ombre est trop longue et tombe vers le soleil, à l’opposé de toutes les autres. Qui la voit au pied de sa clôture, le malheur le frappe le lendemain.
- licho_2:
    La grand-mère de Hanka le nomma par son nom : le Licho qui ne dort pas. Il va de chaumière en chaumière et s’installe là où il se plaît – là où l’on abat la forêt et où l’on déplace les choses saintes d’un coin à l’autre. Il n’entre dans aucune maison tant que quelqu’un ne l’y a pas appelé. Chassé, il va chez le voisin ; bien reçu, il s’en va rassasié. La grand-mère de Hanka tient de sa mère que l’autre œil est resté dans la forêt, parce que le Licho, ce sont les yeux que le Seigneur de la Forêt envoie parmi les hommes – elle-même ne sait pas si c’est vrai.
- licho_3:
    {licho_noc == ugoszczone:Quand on lui eut donné du lard, il prit la route de la scierie – et au matin, chez Urbaniak, la scie se brisa et son meilleur cheval creva à l’écurie.|{licho_noc == odpedzone:Chassé à coups de tison, il s’enfuit vers la forge – cette nuit-là, l’atelier du forgeron brûla.|Jusqu’au matin il gratta sous la porte et tenta les gens par une odeur de pain, et la planche où il frappait pourrit en une seule nuit. Personne ne lui répondit.}} En octobre, il s’en alla par la route qui longe la forêt et entra parmi les arbres, comme si quelqu’un l’avait appelé.
- tropy_1:
    Le matin d’après les noces, toute la cour était blanche de givre – seulement, sous la fenêtre de la pièce neuve, le givre avait fondu en un large ovale, jusqu’à la terre nue, comme si quelque chose de grand et de chaud y était resté couché toute la nuit, roulé en boule. La terre était encore tiède. Hanka couvrit l’endroit de cendre et ordonna de n’en parler à personne.
- mamuny_1:
    Elles habitent au bord du lac. Les enfants qu’elles mettent elles-mêmes au monde sont laids et chétifs, aussi volent-elles aux gens leurs petits bien portants – tant qu’ils ne sont pas baptisés – et laissent les leurs au berceau. L’été, la nuit, on les entend frapper le linge sur les pierres à coups de battoir. La grand-mère de Hanka dit qu’elles lavent les linceuls de ceux qui mourront au village avant le printemps prochain – et sur chaque linceul elles crient un nom. Mieux vaut ne pas écouter. Elles craignent le rouge, le fer et le cierge de la Chandeleur.
- mamuny_2:
    Grandes et bossues, la tête trop grosse pour leur cou frêle, des cheveux pareils à des brindilles sèches, vêtues de haillons de mousse et d’écorce. Leur toucher est froid et mouillé.{noc_mamun == zaslonil: Quand elles n’obtiennent pas l’enfant, elles prennent le lait de la mère.} Elles savent fredonner de telle sorte que le dormeur ôte lui-même les protections du berceau.{podmiana:{uklad_z_mamunami == oddany_skarb: En échange de Marysia, elles prirent le trésor d’enfance de Jaromir et le jetèrent dans le lac.|{uklad_z_mamunami == dar_swietojanski: En échange de Marysia, Jaromir leur promit chaque année, la nuit de la Saint-Jean, du pain et une couronne sur la pierre près de la rive. S’il oublie, elles viendront prendre leur dû.|{uklad_z_mamunami == oddane_lata: En échange de Marysia, elles prirent à Jaromir des années de vie – ses tempes blanchirent comme celles d’un vieillard.| Seule l’eau bouillie dans des coquilles d’œufs défit la substitution.}}}}{sposob_na_odmienca == chrzest_odmienca: Elles n’oublieront pas qu’on a réduit leur enfant en éclats.}
- odmieniec_1:
    Un rejeton des mamounes, déposé à la place d’un enfant des hommes. De loin, il ressemble à l’autre, mais il est plus lourd et froid, sa peau est comme de l’écorce, et ses yeux sont plus sombres que ceux d’aucun nouveau-né. Il ne pleure pas, il mange sans arrêt, et quand il croit que personne ne le regarde, il sourit comme une vieille femme. La substitution ne peut être défaite que dans les sept jours.
- tropy_2:
    Un énorme loup mâle, plus grand que tous ceux de la contrée, si maigre que sous sa fourrure blanche on voit toutes ses côtes. Il mène la meute, mais lui-même n’approche pas des étables.{noc_wilkow == bronil_obory: D’un seul hurlement, il sait la rappeler loin d’une étable.} À une patte de devant, il a un anneau de poil usé, plus clairsemé, à l’endroit même où Franek portait trois zébrures de griffes. Ses yeux sont humains : clairs, tristes, avec une pupille bien nette. Antek dit qu’il ne les confondrait avec nuls autres.{oblawa_wilk == wydal_wilka: Le garde-chasse Pawlik lui logea une balle, et il s’échappa dans la forêt, laissant une traînée de sang sur la neige. Depuis, son hurlement sonne autrement.| Il survécut à la battue. Le lendemain matin, sur la souche près de la clôture, gisait un lièvre à la nuque broyée par les crocs.}{noc_na_kladce != (): La nuit où Józek marcha en dormant jusqu’à la passerelle, quelque chose de blanc fila sur la digue au-delà des marais – et le noyé tourna la tête à son hurlement.}
- pan_lasu_5:
    Le jeune bois qui, en quelques années, s’était avancé depuis la forêt jusqu’aux clôtures des cours devint un repaire de loups. Les vieux disent que les bois ne poussent pas vers un village sans raison : d’abord viennent les arbres, puis les bêtes, et à la fin celui qui les gouverne.
- strzyga_1:
    {sprawdzil_zeby:Le vieux Wójcik avait deux rangées de dents – l’une derrière l’autre, petites et pointues comme celles d’un brochet.|Les gens disaient que le vieux Wójcik était né avec des dents.} Qui naît avec des dents ou avec deux cœurs a deux âmes. Après la mort, l’une va à Dieu, et l’autre reste dans le corps et ne lui laisse pas de repos : le cadavre ne refroidit pas, les joues restent roses, les paupières ne se ferment pas. Vers minuit, un tel mort se relève. Autrefois, on l’enterrait face contre terre, une faucille au-dessus de la gorge et du pavot dans le cercueil – pour qu’il ne pût se retourner, qu’il se blessât s’il tentait de se lever, et que le pavot l’endormît jusqu’au Jugement dernier.
- strzyga_2:
    {polnoc_strzygi == na_twarz:Retourné face contre la planche, il se débattit jusqu’au premier chant du coq et mordit Antek à la main. La plaie fut longue à guérir.|{polnoc_strzygi == sierp_przy_szyi:Quand la faucille toucha son cou, il en coula un sang noir et épais.|Seul le cierge de la Chandeleur placé entre ses mains l’apaisa ; il prononça alors le nom de sa fille.}} {pochowek_wojcika == pochowany_za_murem:On l’enterra hors du mur du cimetière, face contre terre, et il ne revint plus.|{pochowek_wojcika == pochowany_z_makiem:Il fut couché en terre bénite avec le pavot de Hanka sur la poitrine et ne revint plus. Pour ce pavot, le prêtre lui refusa la communion jusqu’à Pâques.|{trzy_noce == rozkopany_grob:Il revint au bout de trois nuits et se tint sous la fenêtre, au-dessus du berceau de Marysia, jusqu’à ce que Jaromir et Antek eussent rouvert sa tombe.|Il revint au bout de trois nuits. Il s’éloigna de la fenêtre derrière laquelle dormait Marysia – mais ce matin-là, on trouva la mère Wójcik morte.}}}
- mamuny_3:
    Au-dessus du linge, elles appellent par leur nom ceux dont elles lavent les linceuls. La mère Wójcik les épia en juin, cachée dans les roseaux, et n’entendit qu’un seul nom. En novembre, son mari mourut.{trzy_noce == czuwanie_przy_kolysce: Elle s’était trompée – ou n’avait pas voulu entendre le second.}
- starzec_3:
    Pour la veillée de Noël, Hanka laissa sur la table un couvert pour un voyageur de passage. Au matin, dans l’assiette, à la place de l’opłatek, il y avait une poignée de mousse fraîche et verte – au cœur même de l’hiver.
- ogniki_2:
    Quand la figurine {przeszukal_zgliszcza && not figurka_w_bagnie:revint à Zapadlina|remonta à la surface}, les feux follets se mirent à approcher des clôtures – chaque nuit plus près, comme s’ils attendaient que quelqu’un ouvre la porte.{los_figurki == figurka_w_skrzyni: Ils brûlent toujours, mais au-delà de la passerelle, loin des clôtures.}{los_figurki == figurka_pod_kapliczka || los_figurki == figurka_u_jagny || los_figurki == figurka_u_stwora: Ils s’éteignirent tous d’un coup, la nuit même où la figurine cessa d’appeler.}
- stwor_3:
    Il revint aux marais avec la figurine. Les enfants du village firent tous le même rêve de lui : il se tient sous la passerelle, dans l’eau noire, retourne les pots de terre, regarde sous chacun, puis demande : « Où est ma poupée ? »{figurka_u_staruchy: Il porte au bras une profonde et vieille cicatrice laissée par la hache de grand-père Maciek.}{noc_na_kladce == siekiera_na_kladce: Jaromir le blessa d’un coup de hache, et le noyé lui laboura l’épaule.}{noc_na_kladce == figurka_dla_stwora: Quand il reçut la figurine, il lâcha le garçon et la serra contre sa poitrine comme une mère son enfant. En s’enfonçant sous l’eau, il entraîna avec lui la vieille passerelle.}{noc_na_kladce == latarnia_na_wodzie: Il craint le feu plus que le fer – il s’enfuit devant l’huile en flammes.}
- zielarka_3:
    {zaufal_jagnie:Jagna dit que la figurine est une poupée : l’herboriste l’a taillée dans une racine tirée de la tourbière et lui a donné le nom de celui qui vit dans l’eau. Celui qui détient la poupée, c’est lui qu’il suit. La poupée ne craint pas le feu – seule la terre bénite la fera taire.{odrzucil_figurke: Une fois repoussée, on ne peut plus la donner à personne.}|La figurine calcinée du lac {przeszukal_zgliszcza && not figurka_w_bagnie:revint à Zapadlina|remonta à la surface} après plus de soixante ans – et avec elle reparurent les rêves.}{los_figurki == figurka_pod_kapliczka: Elle repose à présent sous un oratoire, et où – Jaromir seul le sait.}{los_figurki == figurka_u_jagny: Jagna l’a emportée avec elle, si loin que le noyé ne l’entendra pas.}{los_figurki == figurka_w_skrzyni: Le feu ne l’a pas prise. Elle est dans un coffre sous le lit, entouré d’une chaîne.}{los_figurki == figurka_u_stwora: Elle appartient maintenant à celui qui vit sous la passerelle.}
- pan_lasu_6:
    La nuit où brûlèrent les oratoires, la forêt avança vers le village de tout un champ. Les arbres qui se dressaient au matin là où s’étendait le chaume semblaient y croître depuis des années. Les piquets plantés pour la route d’Urbaniak jetaient des pousses, et sur les souches de la laie, chaque matin, surgissaient de nouveaux rameaux.{droga_do_boru: La route atteignit les premiers grands pins et s’arrêta là – personne ne voulut couper plus avant.}{szarwark && not droga_do_boru && rozdzial_czternasty.pierwszy_snieg_czternasty: Le jeune bois s’arrêta à la limite des oratoires brûlés et ne grandit plus.}
- uboze_3:
    Il réveilla le maître de maison en lui tirant les cheveux, quand le feu arriva de la forêt. Il avait si peur que sa barbe tremblait. Le lutin du foyer se souvient de qui l’a nourri.
- zytnia_baba_1:
    Petite, voûtée, large de hanches comme une gerbe, le visage ridé comme une croûte de pain grillée, les cheveux faits d’épis. Elle sent le grain chaud. Elle s’accroupit parmi les tiges et balance devant les enfants ce qui leur appartient, comme un hochet.
- zytnia_baba_2:
    Le vieux Staś dit que la vieille du seigle attrape les enfants dans les blés et les y laisse – mais Marysia, elle ne la laissa pas. Elle la conduisit à travers le champ jusqu’au bois, comme si elle la portait à quelqu’un.{pani_w_zbozu_noc == gonil_babe: Celui qui la poursuit tourne dans le champ jusqu’à l’aube, et dans les entailles laissées par les tiges restent des barbes d’épi qui s’enfoncent toujours plus profond.}{pani_w_zbozu_noc == za_spiewem: Elle chante avec la voix de la mère – et la mère en garde ensuite une voix fêlée par le milieu.}{pani_w_zbozu_noc == z_pochodniami: Quand tout le village la cherche, elle s’enfuit – mais laisse derrière elle un champ piétiné.}
- pan_lasu_7:
    {rada_przed_borem == rada_ksiedza:Les registres de la paroisse rapportent qu’à quelques dizaines d’années d’intervalle, un enfant disparaît d’un village au pied de la forêt, toujours la nuit de la Saint-Jean. Ceux qui reviennent ne se souviennent de rien.|{rada_przed_borem == rada_jagny:Jagna dit que la forêt prend les enfants quand son seigneur s’éveille – elle ne les tue pas, elle les garde.|Le planetnik dit qu’au-dessus de la forêt les nuages s’écartent et que, de mémoire d’homme, il n’y est pas tombé une seule goutte de pluie.}}
- planetnik_1:
    Un grand vieillard en haillons, la barbe soulevée par le vent et un sac sur le dos. Il marche devant l’orage et mène les nuages au bout d’une corde. Qui lui donne du pain, sur son champ les nuées ne crèveront pas – et qui lui pose une question le paiera de son champ.
- tropy_3:
    {oblawa_wilk == wydal_wilka:La blessure de la balle guérit mal. Dans la forêt, il suivit Jaromir toute la nuit – et non pour veiller sur lui.|Il retrouva Jaromir dans la forêt, quand celui-ci s’était laissé guider par la voix de Franek.{przejscie_bagna == za_wilkiem: Il lui fit traverser la tourbière. Quand Jaromir lui tendit la main et l’appela Franek, il fit claquer ses crocs – en guise d’avertissement, mais jusqu’au sang.}}
- blednice_1:
    De pâles boules de lumière au-dessus de la tourbière, au fond de la forêt, grosses comme une tête d’enfant. Dans chaque boule est assise une petite silhouette recroquevillée, aux yeux pareils à des graines noires. Ce ne sont pas les feux follets d’en bas, près du village : elles ne clignotent pas de loin, elles s’approchent tout près, piaillent comme des oisillons et font signe de les suivre.{przejscie_bagna == za_blednicami: Elles font tourner autour d’une même butte jusqu’à l’aube et emportent ce que chacun a dans sa besace.}{przejscie_bagna == krag_z_soli: Elles ne franchissent pas le sel, même sous le visage d’un être cher.}{przejscie_bagna == za_wilkiem: Elles se tiennent loin du loup blanc.}{przejscie_bagna == z_rozancem: Sous la prière, elles s’éteignent en hurlant – mais réclament quelque chose en échange.}{przejscie_bagna == z_krzesiwem: Elles craignent les étincelles.}
- starzec_4:
    Au cœur de la forêt, il ôta son chapeau.
- pan_lasu_8:
    Au cœur de la forêt, là où il ne pleut jamais, se dresse un chêne plus grand que ne l’était autrefois le Vieux Chêne. Là, le vieillard au chapeau de mousse se découvrit. Dessous, il y avait de l’écorce. De son front jaillirent des bois de cerf, et lui-même grandit par-dessus la cime des arbres, sans jeter d’ombre. Il avait attendu soixante-dix ans que quelqu’un de la lignée de Maciek vînt à lui de son plein gré.
- pan_lasu_9:
    La vallée était jadis à lui, de la crête jusqu’au lac. Il recula quand le premier des hommes vint au Vieux Chêne sans hache et dit : nous n’irons pas plus loin. En échange, le Seigneur de la Forêt prend un enfant par génération, la nuit de la Saint-Jean, et le rend avant qu’il n’oublie sa maison. Le Vieux Chêne était la frontière, le pacte la clôture, et les oratoires les clous.{chata_macka == przy_lesie: Maciek, qui n’en savait rien, bâtit sa chaumière du côté de la forêt et, le premier matin, planta sa hache dans un épicéa. C’est avec lui que le compte commença.} Marysia, il la prit lui-même – c’est lui qui envoya la vieille du seigle la chercher. Était-ce pour la cacher à ceux des eaux, ou pour lui-même, il ne le dit pas. Depuis la chute de la clôture, la malédiction réveille ses serviteurs et les attire vers les chaumières. Cette fois, il fera payer pour elle, car c’est le village qui a rompu le pacte, pas lui.{pytanie_do_leszego == kim_jest: Il était dans la vallée avant que les premiers hommes n’y descendent. Il compte les vieux arbres abattus au-delà de la frontière et les hommes qui se sont livrés à lui d’eux-mêmes. Quand il aura compté jusqu’à mille, il s’endormira pour de bon, et quelqu’un d’autre comptera à sa place. Lui aussi, autrefois, était venu seul à la forêt.}{pytanie_do_leszego == gdzie_marysia: Ses enfants n’ont pas d’ombre.}
- zielarka_4:
    Ceux des eaux venaient chez elle – et le Seigneur de la Forêt. Il lui montra un jour dans l’eau une chaumière en flammes – la sienne – mais elle ne le crut pas. Tandis qu’elle brûlait, elle maudit le village par des mains étrangères : « Les os de vos enfants seront brisés, et leur sang sera bu. » Tant que le Vieux Chêne resta debout, la parole donnée fut plus forte que l’imprécation.{pytanie_do_leszego == o_klatwe: La malédiction sera levée par celui qui rendra au Seigneur de la Forêt sa frontière, ou par celui qui prendra sa place. Ou par le feu qui l’a fait naître – mais après lui, il ne restera ni forêt ni village.}{zastaw_u_leszego == zastaw_krzesiwo: Le briquet à silex que Maciek trouva dans ses cendres porte en lui la même braise qui l’a consumée.}
- tropy_4:
    Il apporta sous le chêne l’autre sabot de Marysia – celui que la vieille du seigle avait bercé. {wilk_przy_jaromirze:Il le posa aux pieds de Jaromir et resta couché près de lui toute la nuit.|Il le remit au Seigneur de la Forêt et reste assis près de lui, indifférent comme les arbres.}{wilk_pod_debem != nie_ruszal_sie: Chaque mot humain qui lui revient en mémoire lui ôte un morceau de sa vie de loup.}
- dzieci_1:
    À l’aube, elles sortent d’une fente du chêne et s’assoient en cercle : plus d’une douzaine de fillettes au même visage, dans les mêmes petites chemises, des rubans neufs dans les cheveux. Elles sourient poliment et patiemment, parlent d’une seule voix, sentent le bois pourri. Quand le père a fait son choix, les autres s’effritent en feuilles sèches et en écorce.{znak_rozpoznania == po_melodii: Elles chantent la mélodie jusqu’au bout.}{znak_rozpoznania == po_buzi || znak_rozpoznania == po_skarbie: Tout ce que l’enfant a à gauche, elles l’ont à droite{skarb_dla_corki:, et ce qu’elle porte au cou, elles l’ont lisse et neuf}.}{pytanie_do_leszego == gdzie_marysia: Elles ne projettent pas d’ombre et ne pleurent jamais.}
- pan_lasu_10:
    {marysia_odzyskana:Il tint parole : qui reconnaît son enfant l’emmène, et personne ne le retient.|Il tint parole : qui choisit mal ramène chez lui ce qu’il a choisi – et l’enterre comme le sien.} Il annonça qu’au jour des Morts il viendrait au village pour faire les comptes jusqu’au bout.
- tropy_5:
    Il aida à trouver le véritable enfant, bien que les serviteurs du Seigneur de la Forêt n’aident pas les hommes. Il resta sous le chêne, la main du Seigneur de la Forêt sur la nuque.
- mamuny_4:
    Fin août, sur les pierres plates de l’autre côté du lac, elles lavaient un petit linceul. Au jour des Morts, elles l’apportèrent dans le cortège du Seigneur de la Forêt et crièrent au-dessus de lui « Marysia ». Elles ne choisissent pas elles-mêmes – elles lavent ce que l’eau leur amène. Tant que le linceul n’est pas sec à l’aube, on peut encore en laver le nom, mais quelqu’un doit le payer.{cena_caluna == cena_umowa: L’offrande de la Saint-Jean, Marysia aussi devra désormais la porter, jusqu’à la fin de ses jours.}
- tropy_6:
    Dans la nuit du jour des Morts, il déchira le linceul des mamounes qui portait le nom de Marysia, et elles l’entraînèrent sous l’eau. Antek le reconnut à l’anneau de poil usé sur sa patte de devant.
- dzieci_2:
    Celle qu’on a choisie meurt à l’orée de la forêt.{cialo_kopii == spalone: Dans le feu, elle crépite comme du bois résineux, et la fumée sent les aiguilles de pin.}{cialo_kopii == oddane_jagnie: Jagna dit que c’est du bois, et elle sait ce qu’on fait d’une chose pareille.}{cialo_kopii == pochowane || cialo_kopii == pod_mlodnikiem: Elle repose en terre comme un enfant, bien qu’elle n’ait aucune odeur.}
- pan_lasu_11:
    Il tient parole à la lettre – et exige la même chose des autres. Avant le jour des Morts, la brume monte chaque soir de la forêt jusqu’aux clôtures, et le premier novembre, au retour du cimetière de Bukowiec, tous les cierges de la Chandeleur s’éteignirent d’un seul souffle{not marysia_odzyskana: sauf celui que portait Hanka}, bien que l’air fût immobile.
- pan_lasu_12:
    {ostatnia_noc == zwrocil_granice:Au jour des Morts, il vint au village avec son cortège et recouvra sa frontière : la hache de Maciek plantée dans la souche du Vieux Chêne et la parole de tout le village. Parole contre parole.{zoladz_zasadzony: Près de la souche germa un gland du Vieux Chêne, planté par une main humaine. Tant que le chêne grandit, le Seigneur de la Forêt ne prend plus d’enfants.}|{ostatnia_noc == zajal_miejsce:Il donna à Jaromir le chapeau de mousse et se coucha sous la souche du Vieux Chêne. « À toi de compter. »|Il brûla avec la forêt. Ses dernières paroles furent : « C’est compté. »}}
- zielarka_5:
    {ostatnia_noc == zwrocil_granice:Les serviteurs du Seigneur de la Forêt rentrèrent chez eux ; sa malédiction à elle se tient de nouveau derrière la clôture.|{ostatnia_noc == zajal_miejsce:Sa malédiction liait les mains de l’ancien Seigneur de la Forêt. Celles du nouveau, elle ne les connaissait pas.|Sa malédiction commença par le feu, et c’est par le feu qu’elle finit.}}
- tropy_7:
    {ostatnia_noc == zwrocil_granice:Il s’en alla dans la forêt avec le cortège.|{ostatnia_noc == zajal_miejsce:Le nouveau Seigneur de la Forêt le laissa libre.|{wilk_przy_mnie():Il se tint auprès de Jaromir pendant que la forêt brûlait.|Il sauta dans le feu à la suite de son maître.}}}
- dzieci_3:
    Au jour des Morts, elles marchaient dans le cortège du Seigneur de la Forêt, en se tenant par la main. Aucune ne projetait d’ombre.{ostatnia_noc == skrzesal_ogien: Dans la forêt en flammes, leur fredonnement se brisa au beau milieu et ne reprit jamais.}
}
