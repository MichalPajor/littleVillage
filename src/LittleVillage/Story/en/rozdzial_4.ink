// ------------------------------------------------------------
//  Rozdział czwarty — Marzanna. Przedwiośnie, Jaromir ma dziesięć
//  lat. Topienie Marzanny (coś wciąga kukłę pod wodę), prawda
//  o nocy z prologu, przewrócona kapliczka, ludzie Urbaniaka.
//  Prawda zależy od zakończenia prologu:
//    figurka_u_staruchy i pies   — umierająca babka Marianna;
//    figurka_u_staruchy bez psa  — ojciec, który przeżył pod podłogą;
//    inaczej                     — ojciec, który kiedyś się z tego śmiał.
// ------------------------------------------------------------

=== rozdzial_czwarty ===
# tlo: stodola_marzanna
# rozdzial: Chapter Four
# tytul: Marzanna
In March the eaves began at last to drip, dirty rivulets ran across the fields, and at night the ice on the lake cracked and groaned until the dogs howled in every farmyard. The marshes were the first to wake – black water broke through the snow, vapour rose from it at dawn, and from the floodwater by the footbridge came once more the gurgling that had not been heard for long months.
On the fifth Sunday of Lent the children of all Zapadlina gathered to drown Marzanna. So it had always been done: whoever carried winter out of the village and threw it into the water would bring in the spring and drive away sickness, hunger and every evil.
They made the effigy in the barn at Staś’s. Franek, who had stopped going to school at Christmas and now helped his grandfather in the fields, twisted a body out of straw and tied it to a stick. Antek brought some old rags that had been his mother’s – a skirt and a headscarf – and Jaromir pressed two lumps of coal into the head for eyes and drew a mouth with soot. Hanka threaded eggshells on a string so that Marzanna would have a necklace of beads. The figure looked dreadful – and that was exactly the point. # pokaz: kukla
The girl reached for her plait and began to untie the red ribbon.
“She can have mine,” she said. “Let her take away everything that’s bad.”
{ poszedl_po_wstazke:
    Jaromir remembered the old man in the moss hat and the scrap of red fluttering in his hand.
- else:
    Jaromir remembered the morning when that same ribbon had hung on their fence, tied in a bow by a hand no one had seen.
}
# pytanie: Will Hanka give Marzanna her ribbon?
*   [Let Hanka tie on the ribbon.]
    ~ wstazka_marzanny = true
    Hanka knotted the ribbon round the effigy’s straw neck and stepped back to take a look. Against the grey straw the red was like a wound. # pokaz: wstazka # dalej
    -> topienie
*   [Talk her out of giving it away.]
    “Don’t do it,” Jaromir begged. “It’s come back from the forest once already.”
    Hanka gave him an odd look, but tucked the ribbon away in her apron pocket. The effigy stayed grey; only the eggshell beads rattled softly whenever anyone touched it. # dalej
    -> topienie

= topienie
# tlo: rozlewisko
They set off in the afternoon. Franek went in front, carrying Marzanna on her stick, held high so that everyone could see; behind him came the children from every cottage, and at the back a few village women who pretended they had only come to watch. They sang at the tops of their voices:
“Marzanna, Marzanna, maiden of the snow,
go into deep water, and come back slow!”
The snow squelched under their bast shoes, and the air, for the first time in months, smelled of wet earth.
All along the way someone kept tugging at the effigy’s straw or switching it with a birch rod, for that was how it had to be – winter could not be allowed to leave in peace.
They came to the floodwater by the footbridge. The ice there had melted almost entirely; only along the banks a grey, holed crust still clung, and in the middle lay black water, smooth as glass. Hanka caught hold of Jaromir’s sleeve with icy fingers, and he felt his heart pounding right up in his throat. Franek swung back and hurled Marzanna with all his strength, far out ahead of him. # pokaz: rzut
The effigy slapped onto the surface and rocked. For a moment it floated, its skirt spreading round it like a flower. Then, all at once, in a single movement, it went under. Not the way a thing sinks once it is sodden. As if someone had yanked it from below. # pokaz: tonie
The children fell silent. Where it had vanished, a few large, lazy bubbles burst and rings spread out across the water.
“Now run,” Hanka whispered. “And don’t look back!”
{ ekwipunek ? ksiega:
    Jaromir knew it too. In Mr Ignacy’s book he had read that whoever looks back at the drowning Marzanna will be overtaken by sickness before Easter.
- else:
    “Look back, and sickness’ll catch you before Easter,” one of the women added.
}
They all took to their heels. Behind Jaromir’s back came a splash – loud, heavy, as though something large were rising out of the water. # pokaz: ucieczka
# pytanie: What will Jaromir do?
*   [Look back.]
    ~ obejrzal_sie = true
    He looked back. Only for the blink of an eye.
    By the footbridge, in the black water, something was holding Marzanna – a grey hand ending in claws, matted with waterweed. Above the surface, higher than a grown man could reach, two eyes smouldered, greenish and murky like the lights over the marsh.{ wstazka_marzanny: Slowly the talons were winding the red ribbon around themselves.} Then the arm drew back and the water closed over without a trace. # pokaz: reka
    That night Jaromir came down with a fever. He lay three days, while his mother pressed wet rags to his brow and could not understand why, in his delirium, he kept calling out about the wayside shrine by the footbridge. # dalej
    -> prawda
*   [Run on without looking back.]
    He did not look back. He ran, gripping Hanka’s hand, all the way to the first fences, and behind them, from the direction of the marshes, came a soft giggling – the way someone laughs who has just been given a present. Over the bog a few pale will-o’-the-wisps flickered alight. “That’s them as burned the witch,” one of the women panted. “Follow a light like that and you’ll never come back.” # pokaz: chichot
    ~ zapiski += ogniki_1
    { wstazka_marzanny:
        The next day Hanka went about with her plait undone, and kept reaching up to it as if she were feeling for something. # dalej
    - else:
        For a long while neither of them said a word. # dalej
    }
    -> prawda

= prawda
{ figurka_u_staruchy && los_psa == oswojony: -> prawda_babki }
{ figurka_u_staruchy: -> prawda_ojca_sieroty }
-> prawda_ojca

= prawda_babki
# tlo: babka_lozko
That spring Grandmother Marianna did not get up again. Since Candlemas she had lain on the bed behind the stove, growing smaller and lighter, as though the earth were taking her back piece by piece. When she heard about Marzanna, she had her grandson called.
“Sit down,” she whispered. The hand that closed round his wrist was dry and cold as a leaf. “Your father won’t tell you. He doesn’t know how. So I’ll tell you, while I still can.”
She told him everything. {zona_wie:Of how Grandfather Maciek had found a charred figurine in the ashes by the lake and sold it in town to an old woman in a hood.|Of how Grandfather Maciek had come back from town changed and would not say what was gnawing at him.} Of the creature that a few nights later broke in the door of their hut. Of the dog that flew at it first, and of the axe that bit deep into its arm. Of how Grandfather had died on the earthen floor with his head in her lap, while little Dobrosław sat the whole night through beneath the floorboards, his hands pressed over his ears.
“What was in the water – that was him,” she said. “He didn’t die. His kind don’t die. They wait. Whoever drowns without a priest goes neither to heaven nor to hell, but stays in the water. The old folk used to say such a one keeps the souls of other drowned men down at the bottom, under upturned clay pots, and of a night turns them over one after another, tending his hoard. And if a pot cracks, the soul flies up to the surface in a bubble.”
Grandmother pointed to the corner behind the bed. Under an old coat lay an axe with a worn, dark haft. On the blade, though it had been scoured to a shine, rusty streaks still showed. # pokaz: siekiera
{ krzesiwo_dziadka:
    ~ ekwipunek += krzesiwo
    ~ krzesiwo_od_babki = true
    “His. You’ll take it when you’re grown.” From under the pillow she drew a small, blackened flint and steel. “But take this now. {zona_wie:It lay in the ashes together with that figurine. Grandfather kept it by him to the very end.”|He never told me where he got it. But he kept it by him to the very end.”} # pokaz: krzesiwo
- else:
    “His. You’ll take it when you’re grown.”
}
“Promise me one thing,” she added after a moment. “That you will never go into the forest. No matter who calls you.”
-> obietnica

= prawda_ojca_sieroty
# tlo: prog_noc
{obejrzal_sie:When Jaromir was up again after the fever|When Jaromir came back from the floodwater}, his father asked him nothing. He was silent the whole evening. Only when Mother had fallen asleep did he take his son by the arm, lead him out onto the doorstep and sit down beside him in the dark.
“I was as old as you are,” he began, and his voice cracked, unused for a very long time. “Maybe younger.”
He told him everything. Of the night something broke in the door of their hut. Of the boards overhead, through which the moonlight seeped, of the screams – first his father’s, then his mother’s – and of something warm that dripped onto his hair. Of the snuffling right above him, hoarse as a dog’s at a burrow.
“What was in the water – that was him,” he said. “That’s why I check the bolt. Every night, for close on sixty years.”
“Promise me one thing,” he asked. “That you will never go into the forest. No matter who calls you.”
-> obietnica

= prawda_ojca
# tlo: izba_wieczor
When his father heard what had happened at the floodwater, he did not laugh. It was the first time Jaromir had seen a story about the creature fail to bring a smile to his father’s face.
“Your grandfather used to tell me the same,” he said quietly, turning the mug in his fingers. “{obejrzal_sie:Of a hand out of the water.|Of something that drags you under from below.} Of a voice that calls from over the marshes. Of the herbwoman burned in her hut by the lake.{ pregi_na_lydkach: He showed me the weals on his calves, five on each side{ uratowal_andrzej: – and said that if it hadn’t been for old Andrzej with his pole, there’d be neither him nor me}. I thought they were from leeches.} I laughed. I reckoned he wanted to frighten me so I wouldn’t go wandering off to the water alone.” He fell silent for a long time. “And before he died he gripped my hand and whispered: ‘Keep watch on the shrines, Dobruś. Those weren’t fairy tales.’”
“He said too that whoever drowns without a priest stays in the water and keeps the souls of other drowned men there under clay pots. If a pot cracks, the soul flies up to the surface in a bubble.” His father set down the mug. “Do you remember those bubbles by the footbridge?”
“Promise me one thing,” he asked. “That you will never go into the forest. No matter who calls you.”
-> obietnica

= obietnica
# pytanie: Will Jaromir promise?
~ zapiski += (stwor_2, zielarka_2)
*   [Promise.]
    ~ obietnica_bor = true
    “I promise,” said Jaromir.
    { figurka_u_staruchy && los_psa == oswojony:
        He did not know yet how hard it would one day be to keep that word.
        -> smierc_babki
    }
    He did not know yet how hard it would one day be to keep that word. # dalej
    -> kapliczka
*   [Say nothing.]
    Jaromir did not answer. He thought of Hanka and the red ribbon,{ poszedl_po_wstazke: of the old man in the moss hat,} of the voice that had called to him that winter {figurka_u_staruchy:out of the mist over the field|from among the trees}, and he could not force out that one word.
    { figurka_u_staruchy && los_psa == oswojony:
        Grandmother looked him in the eyes for a long time, then sighed, as if this was just what she had expected.
        -> smierc_babki
    }
    His father looked him in the eyes for a long time, then nodded, as if this was just what he had expected. # dalej
    -> kapliczka

= smierc_babki
Marianna died a few days later, on Maundy Thursday. She had asked to be buried beside her husband, in the cemetery in town, and Jaromir’s father did as she wished, though the road with the coffin on the cart took a whole day. # pokaz: swieca # dalej
-> kapliczka

= kapliczka
# tlo: kapliczka_przewrocona
After Easter the ground began to dry, and the first marsh marigolds turned the field balks yellow. One afternoon, coming home from school along the path beneath the forest, Jaromir and Antek{ ekwipunek ? szczeniak: and the dog {imie_psa}, who these days went everywhere at Jaromir’s heels,} saw that the wayside shrine at the edge of the wood lay toppled in the grass. Both stopped dead. In the silence that suddenly fell there was no sound but the drops falling from the branches onto the little roof sunk in the mud.
It was one of the oldest in Zapadlina, put up back {figurka_u_staruchy:when his father was a child|when his father was a young man}. The wooden post had been torn out of the ground, turf and all; the little roof had broken off and lay a few paces away, and the saint – grey from the rains, his face worn smooth by {figurka_u_staruchy:half a century|decades} – was stuck face down in the mud. The grass all around was churned up, as if someone had dragged the shrine towards the trees and abandoned it halfway.
{ ekwipunek ? kora:
    At the foot of the post someone had scratched a spiral into the wood – just like the one on the pine by the path. Jaromir did not need to take his piece of bark out of his bag to know it. # pokaz: spirala
}
{ ekwipunek ? szczeniak:
    {imie_psa} bristled and growled towards the forest, backing away on stiff legs. # pokaz: pies
}
“We have to tell the grown-ups,” Antek whispered.
# pytanie: What will the boys do?
*   [Set the shrine back up with Antek, without the grown-ups.]
    ~ kapliczka_podniesiona = true
    The post was heavy, wet and slippery with mud. The two of them heaved and strained until at last it stood in its torn-out hole, swaying like a drunkard. Jaromir packed stones round it and stamped the earth down with his boots, while Antek wiped the saint with his sleeve, set him back under the little roof and nailed him fast again, tapping with a flat river stone. # pokaz: podniesiona
    When they had finished, a wind blew from the forest – cold, though the day was warm – and for a moment all the trees at the edge of the wood soughed at once. Then it grew still. # pokaz: wiatr
    His father, on hearing of it, went to look at the shrine and came back with a face Jaromir could not read.
    “You did right,” was all he said. # dalej
    -> urbaniak
*   [Run for the grown-ups.]
    They raced back to the village as fast as their legs would carry them. Jaromir’s father and old Staś went out that same evening, with a lantern and a spade. They came back after midnight, muddy and silent. # pokaz: latarnia
    The shrine was no longer where the boys had seen it. It was only found several dozen paces further on, among the first spruces, driven into the ground upside down. The men set it back in its old place and dug it in deeper than before.
    “Somebody hereabouts don’t want shrines,” Staś muttered, when he thought no one could hear. # dalej
    -> urbaniak

= urbaniak
# tlo: urbaniak
In May, when the storks were already sitting on the old nest on the smithy roof, a britzka drove into Zapadlina. Out of it climbed a stout gentleman in a town coat and hat, and after him two men with axes and a long knotted cord. They walked the edge of the forest all day – measuring, writing something down, and every few paces cutting white marks into the bark of the oaks. # pokaz: znaki
Jaromir watched them from behind the fence. Every such notch looked like a fresh wound.
“Mr Urbaniak,” his father said when the britzka had gone. “The squire’s sold him the felling rights. There’s to be a sawmill.” # pokaz: odjazd
That night, for the first time in years, a howl came from the forest – long, drawn-out, neither a wolf’s nor a dog’s. People barred their shutters and crossed themselves on the sly, and Jaromir lay in the dark with the featherbed pulled up to his very eyes and listened until it stopped. # pokaz: noc # dalej
-> rozdzial_czwarty_ciag_dalszy


// Koniec rozdziału czwartego i darmowej części — dalej rozdział piąty, już w pełnej wersji.
=== rozdzial_czwarty_ciag_dalszy ===
# ozdobnik
_End of Chapter Four._ # pelna_wersja # dalej
-> rozdzial_piaty
