// ------------------------------------------------------------
//  Rozdział trzynasty – Wspólny sen (figurka). Przednówek i roztopy po
//  zimie ze strzygą (Jaromir ma dwadzieścia dwa lata, Marysia półtora roku).
//  Figurka z prologu wraca: [starucha] przywozi ją wnuczka Jagna, [handlarz]
//  leży na jarmarku, [bez zgliszcz] Józek wygrzebuje ją z popiołu po chacie
//  zielarki, [bagno] wypływa z mokradeł. Odrzucona – i tak wraca do chałupy.
//  Dzieci śnią ten sam sen, ogniki podchodzą pod płoty; zaufać Jagnie albo nie.
//  W Wielki Czwartek Józek idzie we śnie na kładkę, gdzie czeka topielec:
//  siekiera (rozorany bark), figurka rzucona w wodę albo latarnia (płonie
//  kapliczka przy kładce). Potem: piec (figurka nie płonie), kapliczka albo
//  Jagna. W maju syn Antka, Franek; w czerwcu paliki pod drogę Urbaniaka.
// ------------------------------------------------------------

=== rozdzial_trzynasty ===
# tlo: przednowek
# rozdzial: Chapitre treizième
# tytul: Le rêve partagé
La neige resta sur les champs jusqu’à la mi-mars, grise et tassée, et dans les chaumières on mangeait déjà le gruau sans graisse et l’on distribuait les pommes de terre du silo par poignées.{ polnoc_strzygi == na_twarz: La main d’Antek ne guérit qu’au temps de la soudure – il y resta deux demi-cercles de petites cicatrices blanches, que Jadwisia embrassait quand elle croyait que personne ne la voyait.} {trzy_noce == czuwanie_przy_kolysce:Personne ne s’installa dans la chaumière des Wójcik. En février, une nuit, le toit pourri s’effondra sous la neige dans un fracas qui réveilla la moitié du village.|La mère Wójcik passa l’hiver alitée, rongée de fièvre, mais en mars elle sortit devant sa chaumière appuyée sur un bâton, et la première chose qu’elle fit fut d’apporter à Marysia une poignée de pommes séchées.}
{ ekwipunek ? szczenie_psa:
    Marysia avait maintenant un an et demi. Elle courait dans la pièce, tombait, se relevait et repartait de plus belle, et elle attrapait les mots au vol. Le chiot roux était devenu au fil de l’hiver un jeune chien aux longues pattes, qui la suivait pas à pas et grognait contre quiconque élevait la voix sur elle – même contre sa mère. # pokaz: szczenie
- else:
    Marysia avait maintenant un an et demi. Elle courait dans la pièce, tombait, se relevait et repartait de plus belle, et elle connaissait déjà plus de mots que Hanka n’avait eu le temps de lui en apprendre.
}
Le dégel vint d’un coup. La neige quitta les champs en deux jours, et les marais derrière la passerelle gonflèrent tant que l’eau monta jusqu’aux clôtures. La glace du lac se brisa avec fracas trois jours durant. La quatrième nuit, pour la première fois depuis des années, de petites lumières s’allumèrent au-dessus des marais. # pokaz: ogniki # dalej
{ figurka_u_staruchy: -> figurka_od_jagny }
{ not przeszukal_zgliszcza: -> figurka_ze_zgliszcz }
{ figurka_w_bagnie: -> figurka_z_bagna }
-> figurka_na_jarmarku

= figurka_od_jagny
# tlo: jagna_izba
À la mi-mars, une inconnue arriva en charrette à Zapadlina – maigre, coiffée d’un fichu gris, un œil voilé d’une taie blanche. Elle demandait le petit-fils de ce Maciek qui avait jadis bâti ici une cabane. Les gens lui montrèrent la chaumière de Jaromir.
– Je m’appelle Jagna – dit-elle quand elle se fut assise sur le banc. – Ma grand-mère vivait en ville, derrière la place du marché. Avant de mourir, elle m’a fait promettre de rendre ceci.
Elle tira de son panier un paquet enveloppé d’un chiffon noir et le déroula sur la table. Une figurine de bois, calcinée d’un côté, une mèche de cheveux gris enroulée autour du cou. {los_psa == oswojony && zona_wie:Jaromir n’avait jamais vu la figurine, et pourtant il la reconnut aussitôt – d’après ce que lui avait raconté un jour grand-mère Marianna.|Jaromir n’avait jamais vu la figurine ni jamais entendu parler d’elle, et pourtant, à sa vue, il sentit un froid le saisir, comme si quelqu’un avait ouvert la porte sur le gel.} # pokaz: figurka
– Ma grand-mère l’a achetée à ton grand-père, sur la place du marché – disait Jagna à voix basse, sans lever les yeux. – Et elle en a fait quelque chose qu’elle a payé jusqu’à la fin de sa vie. Je ne sais pas au juste quoi – dans sa fièvre, elle délirait sur une poupée et sur de l’eau. Je sais seulement qu’elle a eu une mauvaise mort. Et que ses dernières paroles ont été : « Rends-la là d’où elle est venue ».
# pytanie: Que va faire Jaromir ?
*   [Prendre la figurine.]
    ~ ekwipunek += figurka
    Jaromir enveloppa de nouveau la figurine dans le chiffon et la rangea dans le coffre sous le lit. Jagna poussa un long soupir, comme si on lui avait ôté du dos un sac de pierres. En partant, elle dit que jusqu’à la Pentecôte elle resterait à Bukowiec chez sa sœur et vendrait des herbes au marché. # dalej
*   [La renvoyer avec sa figurine.]
    ~ odrzucil_figurke = true
    – Remportez ça – dit Jaromir. – Et ne revenez pas.
    Jagna le regarda longuement de son œil valide et remballa la figurine. Du seuil, elle lança seulement que jusqu’à la Pentecôte elle serait à Bukowiec chez sa sœur.
    ~ ekwipunek += figurka
    Mais le matin, quand Hanka ouvrit la porte, la figurine gisait sur le seuil. Le chiffon était trempé et puait la tourbière. Jaromir cacha la figurine dans le coffre avant que Marysia ne la voie. # pokaz: prog # dalej
-   -> wspolny_sen

= figurka_na_jarmarku
# tlo: jarmark
À la mi-mars, Jaromir partit pour la foire de la ville avec les cuillères qu’il avait taillées pendant l’hiver. Il les vendit toutes avant midi et flâna encore entre les étals, cherchant pour Marysia un petit quelque chose pour la fête patronale. Au dernier éventaire, chez un vieux brocanteur, entre des pots fêlés et des fers à cheval rouillés, gisait une figurine de bois – calcinée d’un côté, le visage lissé par des doigts étrangers. # pokaz: figurka
Jaromir la prit dans sa main. Le bois était froid et humide, bien que la journée fût sèche.
– Jolie, hein ? – ricana le marchand. – Mon grand-père l’a achetée à un paysan, quand il était encore jeune lui-même. Depuis, personne n’en a voulu. Pour toi, ce sera un sou.
# pytanie: Que va faire Jaromir ?
*   [Acheter la figurine.]
    ~ ekwipunek += figurka
    Jaromir paya, enveloppa la figurine dans un mouchoir et la glissa sous sa chemise. Tout le chemin du retour, il la sentit contre son cœur comme un morceau de glace. À la maison, il la mit dans le coffre sous le lit. # dalej
*   [La reposer et s’en aller.]
    ~ odrzucil_figurke = true
    ~ ekwipunek += figurka
    Jaromir reposa la figurine sur l’étal et s’éloigna sans se retourner. Mais le soir, quand il dételait le cheval devant la chaumière, la figurine gisait au fond de la charrette, parmi les copeaux – là où le matin se trouvaient les cuillères. Il la contempla longtemps avant de la ranger dans le coffre sous le lit. # pokaz: woz # dalej
-   -> wspolny_sen

= figurka_ze_zgliszcz
# tlo: zgliszcza_kra
À la mi-mars, les garçons du village allèrent au lac regarder la débâcle. Parmi eux se trouvait Józek, le plus jeune arrière-petit-fils du vieux Staś – sept ans, roux et curieux de tout comme une pie. Les glaçons avaient remué les vieilles poutres carbonisées dans les roseaux, sur la rive ouest du lac, là où se dressait autrefois la cabane de l’herboriste, et les avaient poussées sur la berge. Józek fouilla la cendre avec un bâton jusqu’à en déterrer quelque chose de dur.
Il accourut chez Jaromir avec sa trouvaille, car Jaromir taillait les plus beaux jouets du village et le gamin voulait se vanter. Dans la paume du garçon reposait une figurine de bois, calcinée d’un côté. La suie qui l’enduisait salissait les doigts comme si elle était fraîche. # pokaz: figurka
# pytanie: Que va faire Jaromir ?
*   [Lui prendre la figurine.]
    ~ ekwipunek += figurka
    – Donne-la-moi – dit Jaromir. – En échange, je te taillerai un cheval avec sa charrette.
    Józek bouda, mais finit par accepter. Jaromir rangea la figurine dans le coffre sous le lit et se frotta longtemps les mains dans le baquet, bien qu’elles fussent propres. # dalej
*   [Le laisser la garder.]
    ~ jozek_mial_figurke = true
    Jaromir rendit la figurine au garçon, et Józek rentra chez lui en courant. Le lendemain, la mère de Józek vint trouver Jaromir, pâle, la figurine enveloppée dans son tablier. Józek avait dormi toute la nuit en la serrant dans son poing, il avait parlé en rêve avec la voix d’un autre, et au matin il s’était réveillé les cheveux mouillés, alors que personne ne l’avait baigné. # pokaz: matka
    – Prends ça – dit-elle. – Tu es le petit-fils de Maciek. Toi, tu sais ce que c’est.
    ~ ekwipunek += figurka
    Jaromir rangea la figurine dans le coffre sous le lit. # dalej
-   -> wspolny_sen

= figurka_z_bagna
# tlo: kladka_naprawa
À la mi-mars, quand l’eau commença à baisser, Jaromir alla avec Antek réparer la passerelle des marais que la crue avait emportée. Il arrachait de la vase un vieux pieu quand il vit que quelque chose y collait – noir, englué de limon. Il gratta la boue avec son couteau.
Une figurine de bois, calcinée d’un côté. En tant d’années, l’eau n’en avait pas lavé la suie. Jaromir se rappela ce que son père lui racontait dans son enfance sur grand-père Maciek et sur la figurine que celui-ci avait perdue dans la tourbière, au premier printemps. # pokaz: figurka
# pytanie: Que va faire Jaromir ?
*   [Emporter la figurine.]
    ~ ekwipunek += figurka
    Jaromir enveloppa la figurine dans un chiffon et la glissa sous sa chemise. Antek le regardait par en dessous, mais ne dit rien. À la maison, Jaromir la rangea dans le coffre sous le lit. # dalej
*   [La rejeter dans la tourbière.]
    ~ odrzucil_figurke = true
    Jaromir prit son élan et lança la figurine le plus loin possible, dans un trou d’eau noire entre les touffes. La tourbière l’avala sans un seul rond sur l’eau. # pokaz: plusk
    ~ ekwipunek += figurka
    Mais le matin, quand Hanka ouvrit la porte, la figurine gisait sur le seuil – trempée, couverte de lentilles d’eau, le visage tourné vers la pièce. Jaromir la cacha dans le coffre avant que Marysia ne la voie. # dalej
-   -> wspolny_sen

= wspolny_sen
# tlo: sen_kladka
~ zapiski += ogniki_2
{ not przeszukal_zgliszcza:Le premier rêve visita Józek.|Le premier rêve visita Józek, le plus jeune arrière-petit-fils du vieux Staś.} Ensuite la fille du meunier de Bukowiec, puis les jumeaux des Kowalczyk. Au bout d’une semaine, les mères au puits ne parlaient plus que de cela, car chaque enfant faisait le même rêve : il se tenait la nuit sur la passerelle au-dessus des marais, de petites lumières clignotaient tout autour, et sous les planches, dans l’eau noire, quelqu’un renversait des pots de terre, l’un après l’autre, et regardait sous chacun. Et ce quelqu’un finissait par lever la tête et demander : « Où est ma poupée ? ». # pokaz: glowa
{ not odrzucil_figurke && not jozek_mial_figurke:
    Au bout de quelques nuits, le même rêve vint à Jaromir – le seul adulte du village. Lui seul, après tout, avait pris la figurine de son plein gré. Il se réveillait en sursaut avant l’aube, un bruissement d’eau dans les oreilles et les pieds mouillés, bien qu’il dormît sous l’édredon.
}
Marysia se réveillait en pleurant chaque nuit{ skarb_dla_corki: et serrait son petit poing sur le lacet de cuir garni {skarb_jaromira == muszelka:d’un coquillage|{skarb_jaromira == pioro:d’une plume de geai|d’un clou}}, qu’elle portait au cou depuis l’hiver}. Elle montrait la fenêtre de son petit doigt et répétait des mots que personne ne lui avait appris :
– Monsieur mouillé. Monsieur mouillé.
Chaque nuit, les feux follets au-dessus des marais brûlaient plus près. D’abord seulement derrière la passerelle, puis sur la prairie, et enfin ils se tinrent dans les joncs juste derrière les clôtures – comme des gens qui attendent que quelqu’un leur ouvre la porte. # pokaz: ognie
{ figurka_u_staruchy:
    Le dimanche, Jagna vint à pied de Bukowiec, seule, et demanda dès le seuil si les enfants du village rêvaient.
- else:
    La même semaine, au marché de Bukowiec, Hanka acheta de l’absinthe à une herboriste étrangère – une femme maigre, coiffée d’un fichu gris, un œil voilé d’une taie blanche. En lui rendant la monnaie, l’herboriste saisit soudain la main de Hanka et renifla ses doigts.
    – Je sens la cendre – chuchota-t-elle. – De la vieille cendre, venue du bord de l’eau. Vous en avez chez vous, n’est-ce pas ?
    { przeszukal_zgliszcza && not figurka_w_bagnie:
        – Ma grand-mère a voulu jadis acheter une chose pareille à un garçon, sur la place du marché – ajouta-t-elle plus bas. – Il ne la lui a pas vendue. Jusqu’à sa mort, elle n’a jamais su à qui il l’avait finalement donnée.
    }
    Elle dit qu’elle s’appelait Jagna et qu’elle resterait à Bukowiec jusqu’à la Pentecôte. Hanka l’amena à la chaumière l’après-midi même, sans demander l’avis de son mari.
}
{figurka_u_staruchy:– Parle-lui des rêves – dit sa femme avant que Jaromir ait eu le temps d’ouvrir la bouche. – C’est elle qui l’a apportée, qu’elle sache ce qui en est sorti.|– Si tu as enfoui quelque chose, ne le lui cache pas – dit sa femme avant que Jaromir ait eu le temps d’ouvrir la bouche. – {odrzucil_figurke && figurka_w_bagnie:J’ai vu ce qui est revenu sur notre seuil.|{jozek_mial_figurke:J’ai vu ce que la mère de Józek a apporté.|Je t’ai vu regarder sous le lit.}}}
# pytanie: Que va faire Jaromir ?
*   [{figurka_u_staruchy:Parler des rêves à Jagna.|Montrer la figurine à Jagna et lui parler des rêves.}]
    ~ zaufal_jagnie = true
    { figurka_u_staruchy:
        // Jagna przywiozła figurkę i wiedziała tylko, że babka bredziła o lalce i o wodzie – dopiero sny dzieci składają jej to w całość.
        Jaromir lui parla de la passerelle, des pots renversés au fond des marais et de la question que chaque enfant entendait en rêve. Au mot « poupée », Jagna blêmit.
        – Dans sa fièvre, ma grand-mère ne parlait que d’une poupée et de l’eau. Je croyais qu’elle délirait – dit-elle doucement. – Les vieilles herboristes racontaient ce genre de choses : on les taille dans une racine tirée de la tourbière et on leur donne le nom de ce qui vit là-dessous. Celui qui possède une telle poupée, c’est lui qu’il suit. Il a longtemps dormi, et maintenant elle est revenue au bord du lac et elle l’appelle. Et les enfants l’entendent – ils ont l’oreille plus fine que nous.
    - else:
        Jagna tourna longtemps la figurine entre ses doigts, penchée vers la fenêtre, car son œil valide était faible.
        – C’est une poupée – dit-elle enfin. – Ma grand-mère m’en a parlé. L’herboriste du lac l’a taillée dans une racine qu’elle avait tirée de la tourbière, et lui a donné le nom de ce qui vit là-dessous. Celui qui possède la poupée, c’est lui qu’il suit. Tant qu’elle restait {przeszukal_zgliszcza && not figurka_w_bagnie:au loin|intacte}, il dormait. Maintenant elle est revenue – et elle l’appelle. Et les enfants l’entendent – ils ont l’oreille plus fine que nous.
        Elle enveloppa la figurine dans le chiffon et la rendit à Jaromir.
    }
    – Le feu n’en viendra pas à bout, elle y est déjà passée une fois. Seule une terre bénite la fera taire. {odrzucil_figurke:Ou alors… – elle s’interrompit et secoua la tête. – Non. Moi, elle ne m’écoutera plus. Vous l’avez repoussée, et elle vous est revenue quand même. Maintenant, elle est à vous.|{figurka_u_staruchy:Ma grand-mère m’a demandé de la rendre là d’où elle était venue, et je l’ai rendue. Je ne la reprendrai pas.|Ou alors… – elle hésita – ou alors donnez-la-moi. Je l’emporterai si loin qu’il ne l’entendra plus.}} # dalej
*   [Ne rien lui dire.]
    {figurka_u_staruchy:– Les enfants dorment tranquilles – mentit Jaromir.|– Je ne sais pas de quoi vous parlez – répondit Jaromir.}
    Jagna hocha la tête, comme si c’était justement ce qu’elle attendait.
    – Quand les lumières arriveront au seuil – dit-elle – venez me trouver. Jusqu’à la Pentecôte, je suis à Bukowiec.
    Hanka la raccompagna jusqu’au-delà de la clôture et chuchota longtemps avec elle. Jusqu’au soir, elle n’adressa pas un mot à Jaromir. # dalej
-   -> wielki_czwartek

= wielki_czwartek
# tlo: noc_kladka
{ not odrzucil_figurke && not jozek_mial_figurke:
    La nuit du Jeudi saint, le rêve vint à Jaromir comme chaque nuit – sauf que cette fois, sur la passerelle, parmi les feux follets, se tenait Józek. Jaromir bondit de sa couche avant de comprendre qu’il ne dormait plus. Il saisit la hache{ siekiera_dziadka: de son grand-père}, la lanterne et, dans le coffre, le paquet qui contenait la figurine. Il n’eut besoin de demander à personne où courir. # pokaz: jozek
    Derrière les clôtures, dans les joncs, clignotaient de petites lumières – et parmi elles, vers la passerelle, avançait une petite silhouette claire, pieds nus, les bras tendus devant elle. Jaromir atteignit la rive au moment où l’enfant s’arrêtait au milieu du passage. L’eau bouillonna sous les planches, et une main grise en surgit. Elle se referma sur la cheville de Józek.
- else:
    La nuit du Jeudi saint, Jaromir fut réveillé par un cri sur la route : la mère de Józek courait d’une clôture à l’autre avec une lanterne et appelait son fils, dont elle avait trouvé la couche vide. Quand Jaromir regarda dehors depuis l’entrée, une pâle petite lumière se tenait sur le seuil, si près qu’elle éclairait les nœuds des planches – et elle s’éloigna dans l’obscurité dès qu’il posa les yeux sur elle. Il saisit la hache{ siekiera_dziadka: de son grand-père}, la lanterne et le paquet qui contenait la figurine – il avait peur de la laisser à la maison, près de Marysia. Ils coururent d’abord au lac avec la mère de Józek, et c’est seulement de là que Jaromir vit que les petites lumières s’étaient rassemblées en un seul endroit. # pokaz: jozek
    Quand il arriva, il était presque trop tard. La main grise avait déjà entraîné l’enfant vers le fond – Józek pendait dans l’eau noire jusqu’à la taille et, sans s’éveiller, se retenait d’une main à la passerelle.
}
{ figurka_u_staruchy:
    La créature émergeait lentement – énorme, voûtée, les cheveux comme des algues mouillées, les yeux luisant d’un vert blême comme du bois pourri. Elle portait au bras une vieille et profonde cicatrice – la trace de la hache dont grand-père Maciek l’avait frappée jadis. Józek ne criait pas. Il dormait. # pokaz: stwor, blizna
- else:
    La créature émergeait lentement – énorme, voûtée, les cheveux comme des algues mouillées, les yeux luisant d’un vert blême comme du bois pourri. Józek ne criait pas. Il dormait. # pokaz: stwor
}
{ oblawa_wilk == wydal_wilka:
    Au-delà des marais, un loup hurla – d’une voix rauque, la fin brisée net, exactement comme la nuit qui avait suivi la battue. La créature tourna la tête de ce côté. Sur la digue, entre les aulnes, quelque chose de blanc passa, bas et boitillant, ménageant un flanc – et se perdit dans l’obscurité.
- else:
    Au-delà des marais, un loup hurla – longuement et purement, si bien que les petites flammes tremblèrent dans les joncs. La créature tourna la tête de ce côté. Sur la digue, entre les aulnes, quelque chose de blanc fila, plus vite qu’un chien – et se perdit dans l’obscurité.
}
Jaromir ne sut pas à qui ce cri servait d’avertissement – à la créature ou à lui.
~ zapiski += stwor_3
# pytanie: Que va faire Jaromir ?
*   [Frapper la créature avec la hache.]
    ~ noc_na_kladce = siekiera_na_kladce
    Jaromir sauta sur la passerelle et frappa de toutes ses forces. La lame s’enfonça profondément dans le bras gris{ figurka_u_staruchy:, juste à côté de la vieille cicatrice}. La créature rugit – longuement, du fond de la gorge, à faire trembler les planches – lâcha l’enfant et, pour se venger, laboura de ses griffes l’épaule de Jaromir. Elle s’abîma sous l’eau, comme si quelqu’un l’y avait entraînée. # pokaz: siekiera
    Jaromir prit Józek dans ses bras et le porta sur la rive. L’enfant ne s’éveilla qu’à la chaumière, près du poêle, et ne se souvenait de rien. La plaie à l’épaule de Jaromir mit jusqu’aux moissons à se refermer. # dalej
    -> co_z_figurka
*   { ekwipunek ? figurka } [Lui jeter la figurine.]
    ~ noc_na_kladce = figurka_dla_stwora
    ~ los_figurki = figurka_u_stwora
    Jaromir déroula le chiffon et lança la figurine dans l’eau, tout près de la créature.
    ~ ekwipunek -= figurka
    La main lâcha aussitôt la cheville du garçon. La créature saisit la figurine, la serra contre sa poitrine comme une mère son enfant et glissa dans l’eau noire, souple comme une loutre. Les lumières au-dessus des marais s’éteignirent toutes à la fois, comme si quelqu’un les avait soufflées. # pokaz: figurka
    Aussitôt après, l’eau sous les planches fut aspirée vers le fond, avec un gémissement de glace qui se fend, et entraîna les pieux. Jaromir eut à peine le temps de sauter sur la rive avec Józek avant que la passerelle – aussi vieille que le village – ne se plie en deux et ne sombre. Le garçon dormait toujours, paisiblement, la joue contre son épaule. # dalej
    -> paliki_pod_droge
*   [Briser la lanterne sur l’eau.]
    ~ noc_na_kladce = latarnia_na_wodzie
    Jaromir lança la lanterne aux pieds de la créature. Le verre éclata, l’huile se répandit sur l’eau et s’embrasa d’un coup. La créature lâcha l’enfant et recula dans l’obscurité en hurlant, et Jaromir empoigna Józek avant que l’eau noire n’ait pu l’engloutir. # pokaz: latarnia
    Mais le feu courut sur les roseaux secs de l’an passé comme sur une traînée de poudre. Avant que les paysans n’accourent avec des seaux, la moitié des joncs avait brûlé, et avec eux l’oratoire près de la passerelle – l’un des plus anciens du village. Au matin, il n’en restait que des moignons noirs et un saint de bois au visage calciné. # pokaz: pozar # dalej
    -> co_z_figurka

= co_z_figurka
# tlo: skrzynia_izba
Après Pâques, Jaromir resta de longues soirées assis devant le coffre. Les lumières brûlaient toujours au-dessus des marais, quoique plus loin des clôtures qu’auparavant, et Marysia se réveillait encore la nuit en montrant la fenêtre.
# pytanie: Que va-t-il faire de la figurine ?
*   [Jeter la figurine dans le poêle.]
    ~ los_figurki = figurka_w_skrzyni
    La figurine resta toute la nuit dans la braise sans prendre feu – elle sifflait seulement comme du bois mouillé, et le poêle exhalait une puanteur de tourbière. Au matin, Jaromir la retira avec le tisonnier. Elle était calcinée exactement comme avant, pas un brin de plus. Dans l’entrée, tous les seaux étaient pleins d’une eau trouble de tourbière, bien que la veille Hanka les eût remplis d’eau claire du puits. # pokaz: piec
    Jaromir enferma la figurine dans le coffre, entoura le coffre d’une chaîne et n’en parla plus. # pokaz: lancuch # dalej
*   [L’enterrer sous l’oratoire.]
    ~ los_figurki = figurka_pod_kapliczka
    ~ ekwipunek -= figurka
    À la nuit tombée, Jaromir alla avec une pelle jusqu’à l’oratoire {noc_na_kladce == latarnia_na_wodzie:de la route de Bukowiec, derrière le ruisseau|près de la passerelle}. Il creusa un trou profond d’une coudée, enveloppa la figurine dans une toile propre, la recouvrit et tassa la terre de ses pieds. Cette nuit-là, les lumières au-dessus des marais s’éteignirent, et les enfants cessèrent de rêver. # pokaz: lopata
    Il ne dit à personne où il l’avait enterrée. Pas même à Hanka. # dalej
*   { zaufal_jagnie } { not odrzucil_figurke } { not figurka_u_staruchy } [La donner à Jagna.]
    ~ los_figurki = figurka_u_jagny
    ~ ekwipunek -= figurka
    Jaromir porta le paquet à Bukowiec. Jagna le prit à deux mains, avec précaution, comme une chose très fragile, et le cacha aussitôt au fond de son panier, sous des bottes d’herbes séchées. # pokaz: kosz
    – N’aie pas peur – dit-elle. – Elle ne reviendra plus.
    Le lendemain, elle partit. Cette nuit-là, les lumières au-dessus des marais s’éteignirent, et les enfants cessèrent de rêver. # dalej
-   -> paliki_pod_droge

= paliki_pod_droge
# tlo: wiosna_paliki
~ zapiski += zielarka_3
En mai, Jadwisia donna un fils à Antek. Antek s’entêta à l’appeler Franek, et personne n’osa le contredire. Il demanda à Jaromir d’être le parrain. # pokaz: antek
{ los_figurki:
- figurka_u_stwora: Les lumières ne se rallumèrent plus jamais au-dessus des marais. Józek ne se souvenait pas de cette nuit-là. Personne ne rebâtit la passerelle : les pieux que les paysans enfonçaient dans la vase gisaient le matin arrachés sur la berge, si bien que pour gagner les prairies d’au-delà il fallut désormais contourner la tourbière par la lisière de la forêt. Le vieux Staś, quand il apprit ce que Jaromir avait fait, se signa et ne lança plus jamais sa ligne dans les trous d’eau de ce côté-là.
- figurka_w_skrzyni: Les rêves revenaient de plus en plus rarement, mais ne cessèrent pas tout à fait. Parfois, les nuits sans lune, Marysia s’asseyait sur sa couche et fixait le coffre sous le lit, jusqu’à ce que Hanka la recouche.
- else: Les enfants du village oublièrent le rêve plus vite que les mères ne cessèrent d’en jaser. Marysia dormait de nouveau ses nuits entières.
}
{ noc_na_kladce == siekiera_na_kladce:
    Une épaisse cicatrice rose resta sur l’épaule de Jaromir{ figurka_u_staruchy && los_psa == oswojony: – à l’endroit même où, des années plus tôt, les griffes de la créature avaient atteint son grand-père}.
}
{ noc_na_kladce == latarnia_na_wodzie:
    À la place de l’oratoire brûlé, les paysans plantèrent une croix de bouleau. Personne n’en éleva un nouveau – il n’y avait pas de quoi le payer. # pokaz: krzyz
}
Vers la fin mai, Hanka chercha Marysia par toute la ferme. Elle ne la trouva que derrière la grange, dans le seigle jusqu’aux aisselles. La petite se tenait immobile, la tête penchée, comme quelqu’un qui tend l’oreille.
– Maman chante – dit-elle en montrant de sa menotte les blés, du côté opposé à la chaumière.
{ glos_w_lesie:
    Quand Hanka le raconta le soir, Jaromir se rappela la nuit de la veillée de Noël, des années plus tôt, et la voix de sa mère {figurka_u_staruchy:montée de la brume sur le champ|venue d’entre les arbres}{glos_w_lesie == odpowiedzial: – puis un rire qui n’était pas du tout le sien|{glos_w_lesie == kozuch: – puis des pas lourds, qui étaient passés tout près| – et la façon dont la voix l’avait poursuivi dans la neige jusqu’à la clôture de chez Staś}}. Il ne dit rien. Seulement, cette nuit-là, il se leva deux fois pour voir si Marysia dormait.
}
Au début de juin, les hommes d’Urbaniak commencèrent à planter des piquets en terre : depuis la scierie, à travers les prairies et les marais, droit vers la forêt. Monsieur Urbaniak voulait avoir sa route jusqu’au bois. Au bout d’une semaine, les piquets plantés le plus près de la forêt firent des pousses vertes – eux qui étaient secs et écorcés. # pokaz: paliki # dalej
-> rozdzial_trzynasty_ciag_dalszy


// Koniec rozdziału trzynastego – dalej rozdział czternasty.
=== rozdzial_trzynasty_ciag_dalszy ===
# ozdobnik
_Fin du chapitre treizième._ # dalej
-> rozdzial_czternasty
