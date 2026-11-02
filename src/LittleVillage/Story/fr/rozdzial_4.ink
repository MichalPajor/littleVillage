// ------------------------------------------------------------
//  Rozdział czwarty – Marzanna. Przedwiośnie, Jaromir ma dziesięć
//  lat. Topienie Marzanny (coś wciąga kukłę pod wodę), prawda
//  o nocy z prologu, przewrócona kapliczka, ludzie Urbaniaka.
//  Prawda zależy od zakończenia prologu:
//    figurka_u_staruchy i pies   – umierająca babka Marianna;
//    figurka_u_staruchy bez psa  – ojciec, który przeżył pod podłogą;
//    inaczej                     – ojciec, który kiedyś się z tego śmiał.
// ------------------------------------------------------------

=== rozdzial_czwarty ===
# tlo: stodola_marzanna
# rozdzial: Chapitre quatrième
# tytul: Marzanna
En mars, les toits se mirent enfin à goutter, des ruisselets boueux coulèrent à travers champs, et la nuit la glace du lac craquait et gémissait si fort que les chiens hurlaient dans les cours. Les marais s’éveillèrent les premiers – l’eau noire perçait la neige, une vapeur s’en élevait à l’aube, et des mares près de la passerelle montait de nouveau le gargouillement qu’on n’avait plus entendu depuis de longs mois.
Le cinquième dimanche de Carême, les enfants de tout Zapadlina se rassemblaient pour noyer Marzanna, l’effigie de paille de l’hiver. Il en avait toujours été ainsi : qui emportait l’hiver hors du village et le jetait à l’eau faisait venir le printemps et chassait les maladies, la faim et tout le mal.
On prépara l’effigie dans la grange, chez Staś. Franek, qui depuis Noël n’allait plus à l’école et aidait son grand-père aux champs, tordit un corps de paille et l’attacha à un bâton. Antek apporta de vieilles nippes de sa mère – une jupe et un fichu – et Jaromir enfonça dans la tête deux morceaux de charbon en guise d’yeux, puis traça une bouche avec de la suie. Hanka enfila sur un fil des coquilles d’œufs, pour que Marzanna ait un collier. Elle faisait peur à voir – et c’était bien le but. # pokaz: kukla
La fillette porta la main à sa tresse et commença à dénouer son ruban rouge.
– Je lui donne le mien – dit-elle. – Qu’elle emporte avec elle tout ce qui est mauvais.
{ poszedl_po_wstazke:
    Jaromir se rappela le vieillard au chapeau de mousse et le rouge qui palpitait dans sa main.
- else:
    Jaromir se rappela le matin où ce même ruban pendait à leur clôture, noué en boucle par une main que personne n’avait vue.
}
# pytanie: Hanka donnera-t-elle son ruban à Marzanna ?
*   [Laisser Hanka attacher le ruban.]
    ~ wstazka_marzanny = true
    Hanka noua le ruban autour du cou de paille et recula pour contempler son ouvrage. Ce rouge sur la paille grise ressemblait à une plaie. # pokaz: wstazka # dalej
    -> topienie
*   [La convaincre de ne pas le donner.]
    – Ne fais pas ça – supplia Jaromir. – Il est déjà revenu une fois de la forêt.
    Hanka lui jeta un regard étrange, mais rangea le ruban dans la poche de son tablier. L’effigie resta grise ; seules les perles de coquille cliquetaient doucement quand quelqu’un la touchait. # dalej
    -> topienie

= topienie
# tlo: rozlewisko
Ils se mirent en route dans l’après-midi. En tête, Franek portait Marzanna au bout de son bâton, bien haut pour que tous la voient ; derrière lui venaient les enfants de tout le village, et en queue quelques commères qui faisaient mine de venir seulement regarder. Ils chantaient à pleins poumons :
« Marzanna, Marzanna, demoiselle d’hiver,
va dans l’eau profonde et ne reviens plus guère ! »
La neige clapotait sous leurs souliers d’écorce, et l’air, pour la première fois depuis des mois, sentait la terre mouillée.
En chemin, à tout instant, quelqu’un arrachait la paille de l’effigie ou la cinglait d’une verge, car il le fallait – l’hiver ne devait pas s’en aller en paix.
Ils arrivèrent à la mare près de la passerelle. La glace y avait presque entièrement fondu ; seule une croûte grise et trouée s’accrochait encore aux bords, et au milieu dormait une eau noire, lisse comme du verre. Hanka s’agrippa à la manche de Jaromir de ses doigts glacés, et il sentit son cœur cogner jusque dans sa gorge. Franek prit son élan et lança Marzanna de toutes ses forces, loin devant lui. # pokaz: rzut
L’effigie claqua sur l’eau et se balança. Un instant elle flotta, sa jupe étalée autour d’elle comme une fleur. Soudain, d’un seul mouvement, elle s’enfonça. Pas comme coule une chose gorgée d’eau. Comme si quelqu’un l’avait tirée par en dessous. # pokaz: tonie
Les enfants se turent. À l’endroit où elle avait disparu crevèrent quelques grosses bulles paresseuses, et des cercles s’élargirent.
– Maintenant, on file ! – souffla Hanka. – Et on ne se retourne pas !
{ ekwipunek ? ksiega:
    Jaromir le savait lui aussi. Dans le livre de monsieur Ignacy, il avait lu que celui qui se retourne sur la Marzanna qu’on noie, la maladie le rattrape avant Pâques.
- else:
    – Qui se retourne, la maladie le rattrape avant Pâques – ajouta une des commères.
}
Tous détalèrent. Derrière Jaromir, il y eut un clapotis – sonore, pesant, comme si quelque chose de grand émergeait de la mare. # pokaz: ucieczka
# pytanie: Que va faire Jaromir ?
*   [Se retourner.]
    ~ obejrzal_sie = true
    Il se retourna. Rien que le temps d’un battement de cils.
    Près de la passerelle, dans l’eau noire, quelque chose tenait Marzanna – une main grise terminée par des griffes, couverte d’algues. Au-dessus de la surface, plus haut que n’aurait atteint un homme fait, luisaient deux yeux, verdâtres et troubles comme les lueurs au-dessus de la tourbière.{ wstazka_marzanny: Lentement, les serres enroulaient sur elles le ruban rouge.} Puis le bras se retira et l’eau se referma sans laisser de trace. # pokaz: reka
    Cette nuit-là, Jaromir fut pris de fièvre. Il resta couché trois jours ; sa mère lui posait des chiffons mouillés sur le front et ne comprenait pas pourquoi, dans son délire, il réclamait l’oratoire près de la passerelle. # dalej
    -> prawda
*   [Continuer à courir sans se retourner.]
    Il ne se retourna pas. Il courut en serrant la main de Hanka jusqu’aux premières clôtures, et derrière eux, du côté des marais, s’élevait un petit rire étouffé – le rire de quelqu’un qui vient de recevoir un cadeau. Au-dessus de la tourbière s’allumèrent quelques pâles feux follets. – C’est ceux qui ont brûlé la sorcière – haleta une des commères. – Qui suit une de ces lueurs ne revient jamais. # pokaz: chichot
    ~ zapiski += ogniki_1
    { wstazka_marzanny:
        Le lendemain, Hanka allait la tresse défaite et y portait sans cesse la main, comme si elle cherchait quelque chose. # dalej
    - else:
        Longtemps, aucun d’eux ne dit mot. # dalej
    }
    -> prawda

= prawda
{ figurka_u_staruchy && los_psa == oswojony: -> prawda_babki }
{ figurka_u_staruchy: -> prawda_ojca_sieroty }
-> prawda_ojca

= prawda_babki
# tlo: babka_lozko
Ce printemps-là, grand-mère Marianna ne se releva plus. Depuis la Chandeleur, elle restait couchée sur le lit derrière le poêle, chaque jour plus menue et plus légère, comme si la terre la reprenait morceau par morceau. Quand elle apprit ce qui s’était passé avec Marzanna, elle fit appeler son petit-fils.
– Assieds-toi – murmura-t-elle. La main dont elle lui saisit le poignet était sèche et froide comme une feuille morte. – Ton père ne te le dira pas. Il ne saurait pas. Alors c’est moi qui parlerai, tant que je le peux encore.
Elle lui raconta tout. {zona_wie:Comment grand-père Maciek avait trouvé dans les cendres, au bord du lac, une figurine calcinée et l’avait vendue en ville à une vieille femme encapuchonnée.|Comment grand-père Maciek était revenu de la ville changé, sans vouloir dire ce qui le rongeait.} La créature qui, quelques nuits plus tard, avait enfoncé la porte de leur maison. Le chien qui s’était jeté sur elle le premier, et la hache qui lui était entrée profond dans le bras. Comment grand-père avait rendu l’âme sur la terre battue, la tête sur ses genoux, tandis que le petit Dobrosław passait toute la nuit sous le plancher, les mains plaquées sur les oreilles.
– Ce qui était dans l’eau, c’était lui – dit-elle. – Il n’est pas mort. Ceux de son espèce ne meurent pas. Ils attendent. Qui se noie sans prêtre ne va ni au ciel ni en enfer : il reste dans l’eau. Les anciens disaient qu’un tel garde au fond les âmes des autres noyés sous des pots de terre renversés, et que la nuit il les retourne un à un pour surveiller son bien. Et si un pot se fend, l’âme s’envole en bulle vers la surface.
Grand-mère montra le coin derrière le lit. Sous une vieille veste reposait une hache au manche sombre et usé. Sur le fer, pourtant fourbi jusqu’à luire, on voyait encore des traînées couleur de rouille. # pokaz: siekiera
{ krzesiwo_dziadka:
    ~ ekwipunek += krzesiwo
    ~ krzesiwo_od_babki = true
    – C’était la sienne. Tu la prendras quand tu seras grand. – De sous l’oreiller, elle tira un petit briquet à silex tout noirci. – Mais ceci, prends-le dès maintenant. {zona_wie:Il était dans les cendres, avec cette figurine. Ton grand-père ne s’en est jamais séparé, jusqu’à la fin.|D’où il le tenait, il ne me l’a jamais dit. Mais il ne s’en est jamais séparé, jusqu’à la fin.} # pokaz: krzesiwo
- else:
    – C’était la sienne. Tu la prendras quand tu seras grand.
}
– Promets-moi une chose – ajouta-t-elle après un moment. – Que tu n’entreras jamais dans la forêt. Peu importe qui t’appellera.
-> obietnica

= prawda_ojca_sieroty
# tlo: prog_noc
{obejrzal_sie:Quand Jaromir se releva après sa fièvre|Quand Jaromir revint de la mare}, son père ne lui demanda rien. Il garda le silence toute la soirée. Ce n’est qu’une fois la mère endormie qu’il prit son fils par le bras, l’emmena sur le seuil et s’assit près de lui dans l’obscurité.
– J’avais ton âge – commença-t-il, et sa voix se brisait, rouillée de n’avoir pas servi depuis si longtemps. – Peut-être moins.
Il raconta tout. La nuit où quelque chose avait enfoncé la porte de leur maison. Les planches au-dessus de sa tête, entre lesquelles filtrait la lune, les cris – d’abord de son père, puis de sa mère – et quelque chose de chaud qui lui gouttait dans les cheveux. Le reniflement juste au-dessus de lui, rauque comme celui d’un chien à l’entrée d’un terrier.
– Ce qui était dans l’eau, c’était lui – dit-il. – C’est pour ça que je vérifie le verrou. Chaque nuit, depuis bientôt soixante ans.
– Promets-moi une chose – demanda-t-il. – Que tu n’entreras jamais dans la forêt. Peu importe qui t’appellera.
-> obietnica

= prawda_ojca
# tlo: izba_wieczor
Quand il apprit ce qui s’était passé près de la mare, son père ne rit pas. C’était la première fois que Jaromir voyait une histoire de créature ne pas amener de sourire sur ce visage.
– Ton grand-père me racontait la même chose – dit-il à voix basse en faisant tourner le gobelet entre ses doigts. – {obejrzal_sie:Une main sortie de l’eau.|Une chose qui vous tire au fond, par en dessous.} Une voix qui appelle depuis les tourbières. L’herboriste brûlée dans sa chaumière au bord du lac.{ pregi_na_lydkach: Il me montrait les zébrures sur ses mollets, cinq de chaque côté{ uratowal_andrzej: – et il disait que sans le vieil Andrzej et sa perche, il n’y aurait eu ni lui ni moi}. Je croyais que c’étaient des sangsues.} Moi, je riais. Je pensais qu’il voulait me faire peur, pour que je n’aille pas traîner seul près de l’eau. – Il se tut longtemps. – Et avant de mourir, il m’a serré la main et m’a soufflé : « Veille sur les oratoires, Dobruś. Ce n’étaient pas des contes. »
– Il disait aussi que celui qui se noie sans prêtre reste dans l’eau et y garde les âmes des autres noyés sous des pots de terre. Quand un pot se fend, l’âme s’échappe en bulle jusqu’à la surface. – Son père reposa le gobelet. – Tu te souviens de ces bulles, près de la passerelle ?
– Promets-moi une chose – demanda-t-il. – Que tu n’entreras jamais dans la forêt. Peu importe qui t’appellera.
-> obietnica

= obietnica
# pytanie: Jaromir va-t-il promettre ?
~ zapiski += (stwor_2, zielarka_2)
*   [Promettre.]
    ~ obietnica_bor = true
    – Je le promets – dit Jaromir.
    { figurka_u_staruchy && los_psa == oswojony:
        Il ne savait pas encore combien il lui serait dur, un jour, de tenir cette parole.
        -> smierc_babki
    }
    Il ne savait pas encore combien il lui serait dur, un jour, de tenir cette parole. # dalej
    -> kapliczka
*   [Se taire.]
    Jaromir ne répondit pas. Il pensa à Hanka et au ruban rouge,{ poszedl_po_wstazke: au vieillard au chapeau de mousse,} à la voix qui l’avait appelé cet hiver-là {figurka_u_staruchy:depuis la brume au-dessus du champ|d’entre les arbres}, et il ne parvint pas à tirer de sa gorge ce seul mot.
    { figurka_u_staruchy && los_psa == oswojony:
        Grand-mère le regarda longuement dans les yeux, puis soupira, comme si c’était justement ce qu’elle attendait.
        -> smierc_babki
    }
    Son père le regarda longuement dans les yeux, puis hocha la tête, comme si c’était justement ce qu’il attendait. # dalej
    -> kapliczka

= smierc_babki
Marianna mourut quelques jours plus tard, le Jeudi saint. Elle avait demandé qu’on l’enterre auprès de son mari, au cimetière de la ville, et le père de Jaromir exauça son vœu, bien que le trajet, le cercueil sur la charrette, eût pris toute une journée. # pokaz: swieca # dalej
-> kapliczka

= kapliczka
# tlo: kapliczka_przewrocona
Après Pâques, la terre commença à sécher, et les premiers soucis d’eau jaunirent le long des raies. Un après-midi, en revenant de l’école par le sentier au pied de la forêt, Jaromir et Antek{ ekwipunek ? szczeniak: ainsi que le chien {imie_psa}, qui suivait désormais Jaromir partout,} virent que l’oratoire, à l’orée du bois, était renversé dans l’herbe. Tous deux s’arrêtèrent net. Dans le silence qui s’était fait d’un coup, on n’entendait que les gouttes tomber des branches sur le petit toit couché dans la boue.
C’était l’un des plus anciens de Zapadlina, dressé dès {figurka_u_staruchy:l’enfance|la jeunesse} de son père. Le poteau de bois avait été arraché du sol avec sa motte de gazon, le petit toit, brisé, gisait quelques pas plus loin, et le saint – gris de pluie, le visage usé par {figurka_u_staruchy:un demi-siècle|des dizaines d’années} – était fiché dans la boue, face contre terre. L’herbe alentour était labourée, comme si quelqu’un avait traîné l’oratoire vers les arbres et l’avait abandonné à mi-chemin.
{ ekwipunek ? kora:
    Au pied, quelqu’un avait gravé dans le bois une spirale – la même que sur le pin près du sentier. Jaromir n’eut pas besoin de sortir de sa besace son morceau d’écorce pour le savoir. # pokaz: spirala
}
{ ekwipunek ? szczeniak:
    {imie_psa} hérissa le poil et grondait vers la forêt en reculant sur ses pattes raidies. # pokaz: pies
}
– Il faut le dire aux grands – chuchota Antek.
# pytanie: Que vont faire les garçons ?
*   [Redresser l’oratoire avec Antek, sans les adultes.]
    ~ kapliczka_podniesiona = true
    Le poteau était lourd, mouillé et glissant de boue. Ils s’y arc-boutèrent à deux, tant et si bien qu’il finit par tenir debout dans son trou, vacillant comme un ivrogne. Jaromir le cala avec des pierres et tassa la terre à coups de talon, et Antek essuya le saint avec sa manche, le remit sous le petit toit et le recloua en tapant avec un galet plat. # pokaz: podniesiona
    Quand ils eurent fini, un vent se leva du côté de la forêt – froid, bien que la journée fût douce – et un instant tous les arbres de la lisière bruissèrent ensemble. Puis tout se tut. # pokaz: wiatr
    Quand il l’apprit, son père alla voir l’oratoire et revint avec un visage que Jaromir ne sut pas déchiffrer.
    – Vous avez bien fait – dit-il seulement. # dalej
    -> urbaniak
*   [Courir chercher les adultes.]
    Ils filèrent au village à toutes jambes. Le père de Jaromir et le vieux Staś s’y rendirent le soir même, avec une lanterne et une pelle. Ils rentrèrent après minuit, crottés et muets. # pokaz: latarnia
    L’oratoire n’était plus là où les garçons l’avaient vu. Ils ne le retrouvèrent que plusieurs dizaines de pas plus loin, parmi les premiers épicéas, planté en terre la tête en bas. Ils le remirent à son ancienne place et l’enfoncèrent plus profond qu’avant.
    – Y a quelqu’un, par ici, qui veut pas d’oratoires – grommela Staś, quand il croyait que personne ne l’entendait. # dalej
    -> urbaniak

= urbaniak
# tlo: urbaniak
En mai, quand les cigognes avaient déjà repris le vieux nid sur le toit de la forge, une calèche arriva à Zapadlina. Il en descendit un monsieur corpulent, en manteau de ville et chapeau, suivi de deux hommes munis de haches et d’une longue corde à nœuds. Ils arpentèrent toute la journée la lisière de la forêt – ils mesuraient, notaient quelque chose et, tous les quelques pas, entaillaient l’écorce des chênes de marques blanches. # pokaz: znaki
Jaromir les regardait par-dessus la clôture. Chaque encoche ressemblait à une blessure fraîche.
– Monsieur Urbaniak – dit son père quand la calèche fut repartie. – Le seigneur lui a vendu la coupe. Il y aura une scierie. # pokaz: odjazd
Cette nuit-là, pour la première fois depuis des années, un hurlement monta de la forêt – long, traînant, ni de loup ni de chien. Les gens fermaient leurs volets et se signaient en cachette, et Jaromir, couché dans le noir, l’édredon tiré jusqu’aux yeux, écouta jusqu’à ce qu’il se taise. # pokaz: noc # dalej
-> rozdzial_czwarty_ciag_dalszy


// Koniec rozdziału czwartego i darmowej części – dalej rozdział piąty, już w pełnej wersji.
=== rozdzial_czwarty_ciag_dalszy ===
# ozdobnik
_Fin du chapitre quatrième._ # pelna_wersja # dalej
-> rozdzial_piaty
