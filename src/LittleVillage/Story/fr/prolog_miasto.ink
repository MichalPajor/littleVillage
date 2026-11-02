// ------------------------------------------------------------
//  Prolog, część druga – miasto, rodzina, powrót do Zapadliny
//  i zakończenie prologu (zależy od tego, komu Maciek sprzedał figurkę).
// ------------------------------------------------------------

=== miasto ===
# tlo: gosciniec
# rozdzial: Prologue
# tytul: La ville
La grand-route s’étirait à travers champs et bosquets, tantôt en montée, tantôt en descente. Des charrettes de paysans qui menaient leur grain au marché le dépassaient, et à un moment une calèche passa près de lui en cahotant, d’où quelqu’un lui cria de s’ôter du chemin.{ los_psa == oswojony: Le chien se tenait tout contre sa jambe et grondait au moindre roulement de roues.} Le soleil était déjà haut lorsque, derrière une butte, surgit le clocher d’une église et, à ses pieds, les toits de la ville – rouges, gris et moussus, serrés comme les grains dans un épi. # dalej
-> rynek

= rynek
# tlo: rynek
La place du marché bourdonnait comme une ruche. Entre les étals se bousculaient des paysans en casaque, des revendeuses vantaient leurs œufs et leur beurre, et du pied de l’hôtel de ville montaient des bêlements de chèvres. L’air sentait le pain, le crottin de cheval et le poisson fumé.{ ekwipunek ? figurka: Maciek palpa dans sa poche la silhouette de bois. Il fallait d’abord la vendre – ensuite seulement il pourrait songer à manger.}
{ ekwipunek ? figurka: -> kramarze | -> zakupy }

= kramarze
Le premier fut un marchand d’images pieuses et de chapelets. Il examina longuement la figurine à contre-jour, puis finit par grimacer et la rendit vivement, comme si elle lui brûlait les doigts.
– Ce n’est point un saint – marmonna-t-il en se signant à la dérobée. – Je ne prendrai pas cette chose sous mon toit.
Le sculpteur de cuillères et d’écuelles ne voulut même pas y toucher. Il déclara que le bois était vermoulu, roussi, bon à rien, sinon à allumer le feu.
Seul le brocanteur, avec sa charrette à bras pleine de pots et de souliers éculés, la tourna plus longtemps entre ses doigts.
– Deux groszy – dit-il enfin. – Personne ne t’en donnera davantage.
C’était le prix d’une miche de pain. Une seule. Maciek promit d’y réfléchir encore et s’en alla vers la partie la plus pauvre du marché, où, au lieu d’étals, des toiles étendues à même le sol offraient des oignons, des hardes et de la ferraille rouillée. # dalej
-> starucha

= starucha
# tlo: zaulek
Soudain, quelqu’un le retint par la manche. La main était petite et sèche, elle sentait la menthe et la fumée.
Devant lui se tenait une vieille femme menue en capuchon sombre, appuyée sur un bâton, un panier d’herbes séchées au bras. Son manteau était rapiécé mais propre, et sous le capuchon blanchissait le bord d’une coiffe. Elle avait un œil voilé d’une taie ; l’autre – noir et vif – fixait droit sa poche. # pokaz: starucha
– Qu’est-ce que tu portes là, mon garçon ? – chuchota-t-elle. – Je sens la cendre. De la vieille cendre, venue du bord de l’eau.
{ los_psa == oswojony:
    Le chien flaira son panier, éternua à cause des herbes, puis hérissa le poil et gronda sourdement – non pas contre elle, mais contre la poche de Maciek. # pokaz: pies
}
Maciek voulut s’éloigner, mais elle ne lâchait pas sa manche.
– Ce n’est pas à toi. Tu as déterré ça là où il ne fallait pas fouiller – disait-elle à voix basse, pour que personne alentour n’entende. – Cette chose appelle, mon garçon. Tant que tu la portes, ce qui habite dans l’eau sait où te chercher. Toi, et ceux que tu aimes. Ne la brûle pas et ne la jette pas à l’eau, car elle reviendra. Quelqu’un doit savoir quoi en faire – et moi, je le sais.
Alors seulement elle le lâcha.
– Je te la prendrai. Mais pas pour rien, car ce qui est donné pour rien retourne à qui l’a donné. Je t’en offre dix groszy. Cinq fois plus que n’en proposait l’homme à la charrette.
Elle avait dû se tenir quelque part tout près pendant qu’il marchandait avec le brocanteur. Seulement, il ne se souvenait pas de l’y avoir vue.
# pytanie: À qui Maciek va-t-il vendre la figurine ?
*   [La vendre à la vieille – elle s’y connaît en pareilles choses, et dix groszy feront tenir la famille jusqu’aux premières récoltes.]
    ~ figurka_u_staruchy = true
    ~ ekwipunek -= figurka
    # tlo: rynek
    Maciek sortit la figurine et la posa sur sa paume tendue. La vieille ne s’en saisit pas aussitôt. Elle l’enveloppa d’abord dans un chiffon de lin et ne la prit en main qu’ainsi, à travers la toile. Elle tira les pièces d’une petite bourse nouée à sa ceinture.
    – Maintenant, c’est mon affaire – dit-elle. – Va avec Dieu, mon garçon. Et ne te retourne pas sur elle.
    Elle se détourna et disparut dans la foule avant qu’il ait pu répondre quoi que ce soit.{ los_psa == oswojony: Le chien cessa de gronder dès que la poche se fit légère.}
    -> zakupy
*   [La céder au brocanteur pour trois fois rien – mieux vaut qu’elle finisse parmi les pots, chez quelqu’un qui ignore ce qu’elle est.]
    ~ ekwipunek -= figurka
    # tlo: rynek
    – Merci, la mère, mais ce n’est pas la peine – répondit Maciek en reculant d’un pas.
    La vieille le regarda longuement de son œil valide. – Comme tu voudras – dit-elle seulement, et elle retourna à ses herbes.
    Le brocanteur haussa les épaules, jeta la figurine parmi ses pots et compta deux groszy. – Je te l’avais bien dit, personne ne t’en donnera plus.{ los_psa == oswojony: Le chien ne cessa de gronder que lorsque la figurine eut disparu sous un tas de tessons.}
    -> zakupy

= zakupy
~ ekwipunek += (zapasy, nasiona)
{
- figurka_u_staruchy: Avec les pièces de la vieille et le reste de ses sous de cuivre, Maciek acheta deux miches de pain, un sac de gruau, du sel, un morceau de lard, des graines de légumes et même un panier de pommes de terre de semence. Le baluchon lui écrasait le dos, mais c’était le fardeau le plus agréable qu’il eût porté depuis longtemps.
- przeszukal_zgliszcza && not figurka_w_bagnie: Avec ses derniers sous de cuivre et les deux groszy du brocanteur, Maciek acheta une miche de pain, une poignée de sel, un petit sac de gruau et quelques graines de légumes. Ce n’était pas grand-chose, mais de quoi survivre quelques jours.
- else: Avec ses derniers sous de cuivre – ce qui lui restait après la hache – Maciek acheta une miche de pain, une poignée de sel, un petit sac de gruau et des graines de toutes sortes de légumes.
}
C’était le printemps, il fallait donc se hâter de semer.
Près du puits de la ville, il mangea sa première tranche de pain depuis des semaines. Elle était tendre et encore tiède. Il dut se retenir pour ne pas tout engloutir d’un coup.{ los_psa == oswojony: La deuxième, il la donna au chien.}
Puis il sortit de la ville et prit le chemin du domaine où, quatre années durant, il avait travaillé la terre d’autrui et où l’attendaient sa femme et son petit garçon. # dalej
-> rodzina


// ------------------------------------------------------------
//  Rodzina – spotkanie z żoną i synem w Czworakach.
// ------------------------------------------------------------
=== rodzina ===
# tlo: czworaki
# rozdzial: Prologue
# tytul: La famille
Il atteignit le logis des journaliers alors que le soleil déclinait déjà vers le couchant. Le long bâtiment bas, à la cheminée de travers, avait le même air que le jour où il en était parti. Devant le seuil, un garçonnet de quelques années traçait des signes dans le sable avec un bâton. Il leva la tête, regarda l’inconnu décharné – et un instant ne le reconnut pas. # pokaz: dziecko
– Dobrosław – dit doucement Maciek.
Le petit bondit sur ses pieds et courut à l’intérieur en criant. Presque aussitôt, Marianna parut dans l’encadrement de la porte. Elle s’essuyait les mains à son tablier – et se figea en voyant son mari. # pokaz: marianna
Un instant plus tard, elle se jeta à son cou si violemment qu’il en chancela. Elle pleurait contre son épaule, et il lui caressait les cheveux, incapable d’articuler un seul mot. Dobrosław lui avait enlacé la jambe et ne voulait plus la lâcher.
– Jésus, Maciek – murmura-t-elle enfin en s’écartant pour mieux le regarder. Elle toucha ses joues creuses, ses clavicules saillantes. – Tu as fondu de moitié depuis que tu es parti. Qu’est-ce que tu as mangé là-bas ? De l’écorce d’arbre ?
Il rit, bien qu’il eût les larmes aux yeux.
{ los_psa == oswojony:
    Le chien restait à l’écart, hésitant, jusqu’à ce que Dobrosław lui tende la main. Bientôt il se laissa gratter derrière l’oreille, et le petit piaillait de joie. # pokaz: pies
}
Le soir, devant une écuelle de gruau, Maciek raconta. Il parla de la cabane – des murs de rondins qu’il avait équarris lui-même, du toit de roseaux, du seuil où il s’asseyait après le travail. De la terre : il y en aurait autant qu’ils pourraient en cultiver.
– Demain, à l’aube, nous partons – annonça-t-il. – Nous allons tout recommencer. Sur notre terre.
Marianna écoutait en souriant pour elle-même. Mais quand leur fils se fut endormi, elle se rapprocha et scruta le visage de son mari.
– Et maintenant, dis-moi la vérité. Que s’est-il passé là-bas ? Je vois bien que quelque chose te ronge.
# pytanie: Maciek va-t-il parler de cette nuit-là à sa femme ?
*   [Oui – lui parler de la créature, de la légende et de la voix venue des tourbières. Elle doit savoir où elle va.]
    ~ zona_wie = true
    Il ne tut rien. Le hurlement dans les fourrés, le silence qui l’avait réveillé, la silhouette sortie de la brume. L’herboriste brûlée et sa malédiction. La tourbière qui l’avait appelé avec la voix de Marianna.{ figurka_u_staruchy: La figurine calcinée tirée des cendres, qu’il avait vendue le jour même au marché à une petite vieille en capuchon.}
    Marianna écoutait en silence, plus pâle à chaque phrase. Quand il eut fini, elle regarda longtemps la fenêtre obscure.
    – Nous y retournerons ? – demanda-t-elle enfin, tout bas.
    – Nous y retournerons. C’est notre maison.
    Elle hocha la tête. Elle ne dit rien de plus, mais cette nuit-là elle ne ferma pas l’œil – il le sentait à son souffle. # dalej
    -> powrot
*   [Non – se dérober. À quoi bon lui faire peur, puisque la cabane tient debout et que le passé est passé.]
    – Il ne s’est rien passé – mentit-il. – Un travail dur et peu à manger. Voilà tout.
    Marianna le regarda encore un instant, comme si elle attendait la suite. Puis elle soupira et posa la tête sur son épaule.
    Cette nuit-là, il fut long à trouver le sommeil. Il pensa qu’un jour il lui parlerait. Un jour, quand tout serait rentré dans l’ordre. # dalej
    -> powrot


// ------------------------------------------------------------
//  Powrót do Zapadliny z rodziną.
// ------------------------------------------------------------
=== powrot ===
# tlo: sciezka_rodzina
# rozdzial: Prologue
# tytul: Le retour
Ils partirent à l’aube. Marianna portait le ballot de leurs biens, Maciek, le baluchon de vivres et, quand le petit fut las de marcher, son fils aussi, à califourchon sur ses épaules.
{ los_psa == oswojony:
    Le chien courait de l’un à l’autre, comme s’il veillait à ce que personne ne reste en arrière. # pokaz: pies
}
L’après-midi était déjà bien avancé quand ils parvinrent sur la Crête des Hêtres. En contrebas s’étendait Zapadlina.{ chcial_odejsc: Au même endroit, quelques jours plus tôt, Maciek s’était tenu, le baluchon sur l’épaule, résolu à partir pour toujours. À présent, son fils dormait sur son dos.}
Là-haut, Maciek s’arrêta et se tourna vers sa femme.
– Maintenant, fais attention – dit-il. – Marche juste derrière moi, pas à pas. Ne quitte le sentier pour rien au monde. Ne regarde pas l’eau noire. Et n’écoute pas les voix qui montent des tourbières. Quoi que tu entendes – ne réponds pas et ne te retourne pas.
{ zona_wie: Marianna {chcial_odejsc:posa la main sur le dos de son fils endormi|prit son fils par la main} et hocha la tête. Elle savait de quoi il parlait. | Marianna haussa les sourcils, comme si elle allait rire, mais quelque chose dans le visage de son mari l’arrêta. Elle hocha la tête sans un mot. }
Ils avançaient lentement, en file indienne. La brume rampait bas au-dessus des mares, et quelque part au loin, dans les joncs, quelque chose clapotait doucement. À mi-chemin, il entendit Marianna, derrière lui, retenir brusquement son souffle. Il ne se retourna pas. Ce n’est qu’une fois sur la terre ferme qu’il lui demanda ce qu’elle avait entendu.
– Rien – répondit-elle vite. Trop vite. # dalej
-> nowy_dom

= nowy_dom
{ chata_macka:
    - przy_lesie: # tlo: chata_las
    - przy_mokradlach: # tlo: chata_mokradla
    - else: # tlo: chata_jezioro
}
La cabane se dressait là où Maciek l’avait laissée. {chata_macka == przy_lesie:À l’orée du bois, à l’ombre des épicéas,}{chata_macka == przy_mokradlach:Dans le pré près des marais, sur son soubassement de pierre,}{chata_macka == nad_jeziorem:Au bord du lac, parmi les roseaux bruissants,} avec le toit qu’il avait posé lui-même, gerbe après gerbe. # pokaz: dach
Marianna s’arrêta devant le seuil et resta longtemps sans rien dire. Puis elle entra, passa la main sur le mur, respira l’odeur de la résine et s’illumina comme un tout-petit à la vue de son père ou de sa mère. # pokaz: rodzina
– La nôtre – dit-elle. – Vraiment la nôtre.
Dobrosław eut vite fait de repérer, dans un coin de la pièce, des planches mal fixées. Maciek les écarta et lui montra un trou creusé dans la terre – assez profond pour garder au frais les pommes de terre et le gruau.
– Un caveau – annonça-t-il fièrement. – Pour les provisions. Seulement, n’y descends pas sans demander.
Le petit, bien sûr, y sauta sur-le-champ et se recroquevilla si bien qu’on ne le voyait plus. Ils rirent tous les trois.
{ ekwipunek ? krzesiwo: Ce soir-là, un feu flamba devant la nouvelle cabane | Ce soir-là, ils prirent leur souper sur le seuil de la nouvelle cabane } et Maciek songea qu’il n’avait pas enduré tout cela pour rien. # dalej
{ figurka_u_staruchy: -> czary | -> lata_spokoju }


// ------------------------------------------------------------
//  Zakończenie A – figurka u staruchy: czary i nocny napad.
// ------------------------------------------------------------
=== czary ===
# tlo: czary
# rozdzial: Prologue
# tytul: Une seule bougie
Cette même nuit, loin de là, dans une pièce exiguë derrière la place du marché, brûlait une seule bougie.
La vieille rabattit son capuchon. De rares cheveux gris lui tombèrent sur le dos. Sur la table, devant elle, il y avait une écuelle d’eau noire et trouble et, à côté – la figurine calcinée, sortie de son chiffon de lin.
La femme se piqua le doigt avec une aiguille et laissa trois gouttes de sang tomber sur le bois. Puis elle plongea la figurine dans l’écuelle et se mit à marmonner – bas, d’une voix monotone, dans une langue que personne en ville n’aurait comprise. La flamme de la bougie faiblit et s’inclina, bien qu’il n’y eût aucun courant d’air dans la pièce.
– J’ai longtemps attendu, mère – chuchota-t-elle. – Mais quelqu’un a fini par venir. Et il t’a lui-même remise entre mes mains.
L’eau gargouilla, comme si quelqu’un, tout au fond, avait respiré. Du marmonnement émergèrent des mots, prononcés de plus en plus fort :
– Les os de vos enfants seront brisés, et leur sang sera bu…
La vieille se pencha plus bas sur l’écuelle. – Va. Tu connais le chemin. La cabane {chata_macka == przy_lesie:au pied du bois}{chata_macka == przy_mokradlach:près des marais}{chata_macka == nad_jeziorem:au bord du lac}. Un homme, une femme et un enfant. # dalej
-> noc

= noc
# tlo: noc_atak
Quelques jours passèrent. Maciek bêchait les planches de pommes de terre, Marianna façonnait un four de glaise et Dobrosław {los_psa == oswojony:courait dans le pré avec le chien|cueillait des soucis d’eau dans le pré}. Le soir, ils s’asseyaient ensemble sur le seuil et regardaient la brume se déverser dans la vallée.
{ los_psa == oswojony: Une nuit, ce fut le chien qui les réveilla. Il se tenait près de la porte, le poil hérissé sur l’échine, et grondait si bas qu’on l’entendait à peine. Puis il se mit à aboyer – fort, avec rage, sans s’arrêter. | Une nuit, un fracas les réveilla. Quelque chose heurta la porte avec une telle force que les gonds gémirent, et continua de cogner jusqu’à ce que le bois éclate avec un craquement. }
Maciek bondit de sa couche. Par une fente de la porte, il vit dans la brume deux prunelles rougeoyantes. # pokaz: slepia
Il ne réfléchit pas. Il prit Dobrosław dans ses bras, écarta les planches du coin et le fit descendre dans le caveau.
– Reste tranquille – chuchota-t-il. – Quoi qu’il arrive, ne sors pas. Tu entends ? Ne sors pas avant qu’il fasse jour.
Il remit les planches en place au-dessus de sa tête. # dalej
{ los_psa == oswojony: -> walka | -> rzez }

= walka
# tlo: walka
La porte s’abattit vers l’intérieur avec son chambranle. La créature dut se courber pour passer sous le linteau – énorme, ruisselante, puant la tourbière. L’eau coulait d’elle à flots sur la terre battue. # pokaz: stwor
Le chien se jeta sur elle le premier. Il planta ses crocs dans l’avant-bras et y resta pendu, à tirer, jusqu’à ce que le monstre le projette contre le mur. Il glapit et retomba. # pokaz: pies
Maciek se dressa devant Marianna, la hache levée. # pokaz: maciek
– Mets-toi derrière moi !
La bête tendit la main vers lui. Ses griffes lui labourèrent l’épaule et le flanc, mais il tint bon. Il frappa de toutes ses forces et la lame s’enfonça profondément dans le bras osseux. La créature hurla – de cette même plainte gutturale et prolongée que cette nuit-là, près de l’abri. Maciek frappa encore. Et encore.
Le monstre recula, renversant le banc, et s’enfuit dans la brume en rugissant. Un moment, on entendit quelque chose de lourd se frayer un passage à travers les fourrés, puis un clapotis – de plus en plus lointain, du côté de la tourbière.
La hache échappa des mains de Maciek. Il tomba à genoux, puis sur le côté. Sous lui s’élargissait une flaque sombre. # pokaz: kaluza
Marianna, agenouillée près de lui, pressait les mains sur ses plaies, mais le sang filtrait entre ses doigts.
– Non, non, non… Ne me laisse pas…
– Dobrosław… – murmura-t-il. – Sors-le… seulement au matin.
Le chien se traîna jusqu’à lui en boitant et posa le museau sur sa poitrine.
Maciek sourit encore. Il regarda sa femme jusqu’à ce que ses yeux ne voient plus rien.
Sous le plancher, dans le caveau, Dobrosław se pressait les mains sur les oreilles et ne laissait échapper aucun son. Comme il l’avait promis à son père. # dalej
-> sierota

= rzez
# tlo: pod_podloga
La porte se fendit en deux. Dans la pièce s’engouffrèrent le froid, la puanteur de la tourbière et une ombre gigantesque qui dut se courber pour passer sous le linteau.
Maciek eut encore le temps de saisir la hache. Marianna se couvrit la bouche de la main.
Dobrosław ne vit pas ce qui se passa ensuite. Il ne voyait que les minces rais de clair de lune entre les planches au-dessus de sa tête – et les ombres qui les traversaient. Il entendait tout. # pokaz: cien
Il entendit son père crier à sa mère de fuir. Il entendit les coups sourds de la hache, une fois, deux fois, et un hurlement qui faisait trembler la terre. Puis un craquement – fort, mouillé, le même que jadis dans les fourrés, bien que l’enfant ne pût le savoir. Son père cessa de crier.
Sa mère cria plus longtemps.
Quand elle aussi se tut, par les fentes des planches se mit à goutter quelque chose de chaud. Goutte après goutte, sur ses cheveux et ses joues. # pokaz: krew
Quelque chose de lourd passa sur le plancher, juste au-dessus de lui. S’arrêta. Il l’entendait flairer – longuement, d’un souffle rauque, comme un chien devant un terrier. Il serra les dents sur sa manche pour ne pas gémir.
Puis les pas s’éloignèrent et se perdirent dans la brume.
Il resta dans le caveau jusqu’au matin. Comme il l’avait promis à son père. # dalej
-> sierota

// Epilog zakończenia A – chłopca przygarnia Andrzej.
= sierota
# tlo: izba_andrzeja
{ los_psa == oswojony:
    Au matin, Andrzej passa les voir. Il trouva Marianna sur la terre battue, la tête de son mari sur les genoux. Elle ne pleurait plus. Le chien était couché à côté et ne laissait personne approcher.
    On enterra Maciek au cimetière près de l’église, en ville. La veuve ne revint jamais à la cabane – elle alla vivre avec le garçon chez le fermier de la butte, qui les accueillit sous son toit comme sa propre famille.
- else:
    Au matin, Andrzej passa les voir. La porte de la cabane, fendue en deux, gisait dans l’herbe. Dans la pièce, il n’y avait personne – seulement une traînée de vase qui allait du seuil vers la tourbière, et des taches sombres sur la terre battue. Il resta longtemps planté à l’entrée avant d’entendre, sous le plancher, de faibles sanglots.
    L’enfant ne dit pas un mot – ni ce jour-là, ni pendant bien des jours encore. Andrzej l’emmena chez lui et l’éleva avec Staś comme son propre fils.
}
Après cette nuit-là, le village se mit à dresser de nouveaux oratoires – au bord des chemins, aux croisées, à l’orée du bois et près de la passerelle des marais – à côté de quelques vieux poteaux vermoulus le long de la forêt, dont plus personne ne se rappelait qui les avait plantés. Chaque année, il y en avait davantage, si bien qu’il ne resta plus à Zapadlina un seul endroit d’où l’on n’en vît au moins un.
Dobrosław devint un homme taciturne et robuste. Il n’alla jamais du côté des tourbières et ne descendit jamais dans aucune cave. Il épousa une fille du village voisin, et bientôt un fils lui naquit.
On lui donna le nom de Jaromir. # dalej
-> prolog_ciag_dalszy


// ------------------------------------------------------------
//  Zakończenie B – figurka u handlarza albo bez figurki: spokojne lata.
// ------------------------------------------------------------
=== lata_spokoju ===
# tlo: kapliczki
# rozdzial: Prologue
# tytul: Les années paisibles
Le noyé ne vint pas. Ni cette année-là, ni la suivante.
Maciek et Marianna labouraient un champ qui, d’année en année, s’agrandissait un peu. Dobrosław poussait vite – d’abord il garda les oies, puis il marcha derrière la charrue et finit par mener lui-même le cheval.{ los_psa == oswojony: Le chien vieillit au seuil de la maison et, un hiver, ne se releva plus. On l’enterra à l’orée du bois.}
Parfois, pendant les longues soirées d’hiver, Maciek parlait au garçon du premier printemps à Zapadlina. Du hurlement dans les fourrés, de ce qui était sorti de la brume près de l’abri, de la voix qui l’appelait depuis les tourbières. De l’herboriste brûlée dans sa chaumière au bord du lac. Le fils écoutait, les joues en feu, mais il tenait tout cela pour des contes – de ceux qu’on fait aux enfants pour qu’ils n’aillent pas seuls au bord de l’eau.
Quand le fils fut devenu un homme, le village se mit à dresser de nouveaux oratoires, à côté de quelques poteaux vermoulus le long de la forêt, dont plus personne ne se rappelait qui les avait plantés. L’un près du chemin qui descend de la Crête des Hêtres, un autre à l’orée du bois, un troisième près de la passerelle des marais. Puis il en vint d’autres, tant et si bien qu’il y en eut presque à chaque raie. On disait que, depuis, les lueurs au-dessus des tourbières clignotaient moins souvent. Dobrosław n’y croyait pas, mais chaque année, en mai, il ornait les oratoires de fleurs avec les autres. # pokaz: kapliczki
Les parents de Dobrosław moururent de vieillesse, l’un après l’autre, dans la cabane même que Maciek avait jadis bâtie depuis le premier rondin. Dobrosław épousa une fille du village voisin, et bientôt un fils lui naquit.
On lui donna le nom de Jaromir. # dalej
-> prolog_ciag_dalszy
