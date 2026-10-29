// ------------------------------------------------------------
//  Rozdział trzeci — Wigilia. Zima, Jaromir ma dziewięć lat.
//  Nocnica nawiedza Zosię, siostrzyczkę Antka; dziad proszalny
//  w wigilijny wieczór; szczeniak z rodu psa dziadka Maćka.
//  Ojciec jak w rozdziałach 1–2:
//    figurka_u_staruchy — milczący, nieufny;
//    inaczej            — pogodny, sam nie umie czytać.
// ------------------------------------------------------------

=== rozdzial_trzeci ===
# tlo: roraty
# rozdzial: Chapter Three
# tytul: Christmas Eve
In the first week of December the frost gripped the lake so hard that the peasants drove out onto the ice in sledges, and the marshes, which in summer no one in their right mind would cut across, turned into a smooth white sheet. Snow creaked underfoot, the beams in the walls cracked in the night, and in the mornings the windowpanes were covered in frost shaped like ferns.
It was Advent. Every day, while it was still dark, the children walked to Bukowiec for Rorate Mass, and from the little church went straight on to school, which stood right next to it. Each of them carried a lantern – Jaromir’s father had glued his together from wooden laths and greased paper, and inside it a tallow stub glowed. On the path along the forest their little flames swayed like marsh lights, and among the spruces lay a blackness so thick that the light sank into it after a few steps.
{ zawolal_do_lasu:
    Jaromir always walked in the middle and never turned his head towards the trees. Since that morning in the mist he could not shake off the feeling that someone now knew his voice.
- else:
    Jaromir always walked in the middle and tried not to turn his head towards the trees.
}
Antek lagged behind more and more often. In October a little sister had been born to him, Zosia, and since then no one in the cottage at Staś’s had slept a whole night through. The baby cried until dawn, and when for once she fell quiet, her mother kept watch over the cradle all the same, because the silence frightened her more than the screaming. The boy came to Rorate Mass with dark rings under his eyes, and in lessons he dozed over his slate, so that Mr Ignacy sometimes had to wake him. # pokaz: antek # dalej
-> antek_prosi


= antek_prosi
# tlo: przerwa_sniezki
{ obrona_antka:
- stanal:
    At break, while the others pelted one another with snowballs outside the little church, Antek came up to Jaromir of his own accord. Since the day Jaromir had stood up for him, he had kept no secrets from him.
- poskarzyl:
    At break, while the others pelted one another with snowballs outside the little church, Antek circled round Jaromir for a long time before he spoke. Perhaps he remembered that it was Jaromir who had run for Mr Ignacy that day, or perhaps he simply had no one else left to turn to.
- else:
    At break, while the others pelted one another with snowballs outside the little church, Hanka brought Antek to Jaromir almost by force. Antek had not spoken to Jaromir since the day Bartek smashed his slate, and even now he was looking off to one side. # pokaz: hanka
}
“Something comes to Zosia,” he said quietly. “After midnight. First it goes cold, and then something rustles in the room, like dry leaves. Once I opened my eyes and saw something over the cradle, something pale and tall… and hair, black, right down to the floor. I didn’t look again.” He swallowed. “And Zosia doesn’t cry then. She just wheezes, like she can’t catch her breath. In the morning she’s white as a wall and won’t eat.”
He spoke quickly, swallowing his words, and kept glancing over his shoulder. The snowball he had been kneading in his hands all the while crumbled between his fingers.
“Did you tell your mama?”
“She says I’m dreaming it. That I’m tired.” Antek lowered his eyes. “But I’m not asleep. I hear it every night.”
Jaromir remembered Mr Ignacy’s Friday stories and went cold, though the sun glared off the snow so brightly that it hurt his eyes.
“I’ll come on Christmas Eve,” he promised. “When everyone’s asleep. But first I have to find out how to drive it away.”
# pytanie: Whom will Jaromir ask for advice?
* [Ask Hanka – she knows her granny’s remedies for everything.]
    ~ rada_jaromira = hanka
    Hanka listened to him, frowning, and was silent for a long time. # pokaz: hanka
    “Granny used to say that’s Lady Midnight,” she said at last. “A dead mama, the sort that never got to hush her own little one, so she goes to other folks’. She’s afraid of iron. You have to slip a knife under the pillow, or a nail at least.” She hesitated. “Only Granny says it has to be when she’s already bending down, else she won’t come near. And Mama says Granny gets everything muddled.” # dalej
    -> wigilia
*   { ekwipunek ? ksiega } [Look in Mr Ignacy’s book.]
    ~ rada_jaromira = ksiega_rada
    # tlo: izba_noc
    That night, by the glowing embers, he found the right page in the book. “Lady Midnight,” Mr Ignacy had written in his slanting hand, “visits infants after midnight, bends over them and sucks the sleep and strength out of them. She fears iron, which must be laid beneath the child’s pillow. Old people say, too, that if a handful of poppy seed be scattered round the cradle, Lady Midnight must count every grain before she may come nearer – and she can count only until dawn.” # pokaz: ksiega
    ~ czytal_po_zmroku = true
    Jaromir read the last sentence three times. Then, until daybreak, he thought of the voice that, in the mist below the forest, had been counting something no one could see.
    In the morning, when he opened the book by the window, he found a long black hair on the page about Lady Midnight. It had not been there the evening before. # dalej
    -> wigilia
*   [Ask his father.]
    ~ rada_jaromira = ojciec
    # tlo: izba_noc
    { figurka_u_staruchy:
        His father went pale when he heard what his son was asking. He got up from the table, went out into the passage and did not come back for a long time. When at last he stood in the doorway, all he said was: “Iron. Under the pillow. And not a word to anyone, understand?” # pokaz: ojciec # dalej
    - else:
        His father laughed and ruffled his hair. “Your Grandfather Maciek used to say that against any licho the best thing is iron under the pillow,” he said. “But those are fairy tales, son. The little one has colic, that’s all.” All the same, that night Jaromir saw his father slip an old nail under the boy’s straw mattress. # pokaz: ojciec # dalej
    }
    -> wigilia

= wigilia
# tlo: wigilia
~ zapiski += polnocnica_1
{ ekwipunek ? ksiega:
    ~ ksiega_zatrzymana = true
    On the last day before Christmas Jaromir brought the book to school, wrapped in a linen kerchief. Mr Ignacy took it, weighed it in his hands and gave it back. “Keep it,” he said. “Something tells me it will be of more use to you than to me. Only remember: not after dark.”{ czytal_po_zmroku: Jaromir lowered his eyes. The teacher studied him a moment longer than he needed to, but asked him nothing.}
- else:
    On the last day before Christmas Mr Ignacy gave each of the children a piece of gingerbread and wished them all a merry Christmas. He looked at Jaromir longer than at the others, as if he wanted to ask him something, but in the end only nodded to him.
}
Since morning the cottage had smelled of mushrooms, cabbage and poppy seed. His mother was grinding the seed in the earthenware bowl until the wooden pestle sang against its clay sides; his father brought a sheaf of rye from the barn and stood it in the corner, and slipped a handful of hay under the tablecloth. At the bench one more place had been laid – for a wanderer, should one knock, and for those who had departed and might come back on this night. From noon Jaromir watched at the window for the first star. It kindled above the forest, tiny and cold. # pokaz: gwiazdka
They had barely shared the Christmas wafer when someone knocked at the door.
On the threshold stood an old beggar – bent, in rags tied up with string, a bag over his shoulder and a hurdy-gurdy on his back. His beard had frozen into icicles, and his eyes were pale as milk, as though he had seen nothing with them for a long time. # pokaz: dziad
“Praised be Jesus Christ,” he croaked. “Will you take an old man in for supper?”
{ figurka_u_staruchy:
    His father did not answer. He stood with his hand on the bolt, looking now at the stranger, now at the empty place, and then he turned to his son and waited to hear what he would say.
- else:
    “For ever and ever,” answered Dobrosław, but he hesitated with his hand on the latch. He glanced at his son, who had been the first to run to the door. “My father used to say that on Christmas Eve you don’t turn anyone away from your threshold. What do you say?”
}
# pytanie: Will the old beggar stay for supper?
*   [Ask his father to let him in.]
    ~ wpuscil_dziada = true
    The old beggar sat down at the empty place and ate little, but slowly and thoroughly. Then he took the hurdy-gurdy from his back and sang an old song about the souls who on this one night return to their cottages and warm their hands at another’s fire. Jaromir’s mother wiped her eyes with her apron. # pokaz: lira
    On his way out the beggar stopped beside Jaromir and bent over him so low that the smell of smoke and frost struck the boy’s nose.
    “You smell of the forest, lad,” he whispered. “When she comes to the little one, don’t speak to her. Not one word.”
    Before anyone could ask what he meant, he was already over the threshold. The night was bright with snow, and yet nobody saw which way he went. “It’s a good thing we didn’t turn him away,” his mother whispered, clearing his bowl from the table. “You never know who it is that’s come. Sometimes it’s the soul of someone from the family, come back in disguise to see whether they still remember it.” # pokaz: odszedl # dalej
    -> po_wieczerzy
* [Say nothing – the old man frightens him.]
    Jaromir lowered his eyes. The door closed slowly and the bolt clanked. The beggar did not knock a second time. # pokaz: rygiel
    Through a crack in the shutter the boy watched the stranger trudge through the snow – not towards the village, but straight for the forest. Halfway across the field the wind rose and lifted a white swirl from the drifts. When it settled, there was no one there. # dalej
    -> po_wieczerzy

= po_wieczerzy
~ zapiski += dziad_1
{ los_psa == oswojony: -> wigilijny_szczeniak | -> noc_w_sniegu }

= wigilijny_szczeniak
# tlo: wigilia_szczeniak
After supper old Staś came by. He sat down heavily on the bench and opened his sheepskin coat, under which something wriggled and squeaked.
“Your grandfather had a dog like no other in these parts,” he said to Jaromir. “{pies_uratowal:Dragged your grandfather out of the bog by his homespun coat, he did, when something was calling him from over the water – Maciek told me so himself. }When the dog’s time came, his pups went all round the village, and one of them ended up with my father. Ever since, there’s always been one of his grandsons or great-grandsons running about our yard.” He drew a ball of fur from under his sheepskin. “And the bitch whelped this autumn. This one’s the boldest of the litter. He’s yours by right.”
The puppy had pricked, pointed ears, a white patch on his chest and paws too big for the rest of him. He sniffed the boy’s fingers, sneezed and, without a second thought, clambered onto his lap. # pokaz: pies
{ figurka_u_staruchy:
    Grandmother Marianna stretched out a trembling hand towards the puppy and for a long while could not get a word out.
}
# pytanie: What will Jaromir call him?
*   [Smoky.]
    ~ imie_psa = "Smoky"
*   [Paws.]
    ~ imie_psa = "Paws"
*   [Thunder.]
    ~ imie_psa = "Thunder"
-   ~ ekwipunek += szczeniak
    “{imie_psa},” Staś repeated, nodding. “A good name. Maciek would have been glad.”
    Afterwards the puppy slept at the foot of Jaromir’s bed, and every so often he growled in his sleep towards the window. # dalej
    -> noc_w_sniegu

= noc_w_sniegu
# tlo: noc_snieg
That year no one went to Midnight Mass in Bukowiec – the frost was too bitter, and the path over the ridge lay knee-deep in snow. Everyone went to bed early.
{ rada_jaromira == ksiega_rada:
    ~ ekwipunek += mak
}
Jaromir lay without moving until his father’s even snoring came from the room. Then he dressed in the dark, tucked his little knife inside his coat{ ekwipunek ? mak:, and into his pocket a scrap of cloth with poppy seed he had filched from the bowl that evening, remembering what he had read in Mr Ignacy’s book,} and slipped out into the passage.{ ekwipunek ? szczeniak: The puppy raised his head but did not whimper, as if he understood that now they must be quiet.}
The world was silver with moonlight. The snow sparkled on the fields, every branch cast a sharp black shadow, and the frost nipped his cheeks until his eyes watered. { figurka_u_staruchy: It was barely a few dozen steps to Staś’s farmstead, but the path cut straight across a field over which a mist crept low, though the sky was clear, and the dark line of the forest seemed nearer by night than by day. | It was not far to the cottage at Staś’s, but the path ran along the edge of the forest, which at that hour stood mute and motionless. }
Halfway there, someone called to him.
“Jaromir!”
The voice came {figurka_u_staruchy:from the mist over the field|from among the trees}. Warm, gentle, familiar – his mother’s voice.
“Come to me, my boy. I’m cold. I’ve lost my way.”
Jaromir stopped dead. Why, his mother was asleep at home, covered by the featherbed right up to her chin. He had seen her as he left.
# pytanie: What will Jaromir do?
*   [Answer.]
    ~ glos_w_lesie = odpowiedzial
    “Mama?” The word escaped him before he could think.
    { zawolal_do_lasu:
        {figurka_u_staruchy:In the mist|Among the trees} something laughed – low, soft, nothing like his mother. Then the same calm voice he had heard that autumn below the forest said: “You again. I’ll count you when the time comes.” # pokaz: oczy
    - else:
        {figurka_u_staruchy:In the mist|Among the trees} something laughed – low, soft, nothing like his mother. Then, somewhere farther in, someone calmly began to count: “…five hundred and one… five hundred and two…” # pokaz: oczy
    }
    Jaromir broke into a run and did not stop until he was under the window at Staś’s. # pokaz: bieg # dalej
    -> kolyska
*   [Turn his sheepskin inside out, as Mr Ignacy said.]
    ~ glos_w_lesie = kozuch
    With trembling fingers he untied his belt, threw off the sheepskin and put it back on, fleece-out. No sooner had he finished than the voice stopped.
    For a while all was still. Then came footsteps – heavy, slow, so far apart that it was as if someone very tall were taking them. Whoever it was passed right by him. Jaromir felt its cold breath on his face, smelling of resin and rot, but the thing did not notice him. # pokaz: kroki
    “Where are you?” came from far off now, in the tone of a disappointed child whose toy someone has hidden. # dalej
    -> kolyska
*   [Run for it.]
    ~ glos_w_lesie = ucieczka
    He ran as fast as his legs would carry him. Snow poured into the tops of his boots. Twice he fell and twice he scrambled up, and his mother’s voice chased him through the dark, ever nearer and ever more tearful. It fell silent only when the boy reached the fence at Staś’s. He was panting so hard that his chest stabbed as if with a knife. # pokaz: bieg # dalej
    -> kolyska

= kolyska
# tlo: kolyska
Antek was waiting at the window and opened it before Jaromir had a chance to tap. The room was warm and dark. Antek’s father was snoring on the stove, Franek slept in the corner, and his mother, worn out by one sleepless night after another, had dozed off on a stool with her head resting against the cradle. Zosia was breathing fast and shallow.
They sat on the floor against the wall, where they could keep an eye on everything. The moonlight fell into the room in a silver strip. For a long while nothing happened. Midnight passed, Jaromir’s eyelids grew heavy, and twice Antek nodded off on his shoulder.
Until it turned cold.
The strip of light dimmed, as if someone had covered the window. A mist began to creep across the floor, and out of it rose a figure – tall, in a shroud ragged at the hem, with black hair flowing all the way to the ground. She hovered above the boards, her feet not touching them. Her face was gaunt as a death’s head, her eyes huge and round, and in her parted lips small sharp teeth glinted. She bent over Zosia and reached down with stick-thin fingers tipped with claws. # pokaz: polnocnica
The baby began to wheeze.
Antek dug his nails into Jaromir’s arm so hard that Jaromir nearly cried out.
# pytanie: What will Jaromir do?
*   [Slip the knife under the pillow in the cradle.]
    ~ polnocnica = przegnana_nozem
    ~ ekwipunek -= nozyk
    Jaromir crept to the cradle on all fours. Lady Midnight turned her head towards him – her eyes were like two black wells with a bright point at the bottom – and hissed. The boy swallowed his fear, slid his hand under the pillow right beneath her talons, and left the knife there.
    Lady Midnight jerked as if she had touched red-hot iron. Soundlessly she gaped, rose up to the very ceiling and hung there, staring at the two of them, her hair waving like waterweed in a current. # pokaz: odlot, noz
    So she stayed until first cockcrow. When the rooster called out in the little cowshed, there was no sign of her. # pokaz: kogut
    Towards morning Jaromir reached for the knife, but thought better of it.
    “Let it stay with Zosia,” he whispered to Antek. “Just in case.” # dalej
    -> boze_narodzenie
*   { ekwipunek ? mak } [Scatter the poppy seed round the cradle.]
    ~ polnocnica = policzyla_mak
    ~ ekwipunek -= mak
    Jaromir took the scrap of cloth from his pocket and with a trembling hand scattered the poppy seed all round the cradle. The grains pattered on the floor like fine rain.
    Lady Midnight froze. Slowly, very slowly, she sank lower, until her shroud spread across the boards like mist. She hung over the nearest seed and touched it with a claw. # pokaz: odlot, mak
    “One,” she whispered, in a voice like the rustle of dry leaves. “Two… three…”
    She counted all night. The boys sat against the wall, not daring to stir, while she glided about the room, seed by seed, whispering ever faster, ever more angrily. She had reached several thousand when the rooster crowed in the cowshed. Then she shrieked so piercingly that Jaromir’s ears rang – and vanished. No one but the two of them heard that scream. # pokaz: kogut # dalej
    -> boze_narodzenie
*   [Shout and wake the grown-ups.]
    ~ polnocnica = uslyszala_krzyk
    “Help!” Jaromir screamed{ wpuscil_dziada:, though at once he remembered what the old beggar had whispered to him on his way out}.
    Lady Midnight turned to him. For one instant she looked him straight in the eye, then melted into the darkness like smoke. Antek’s mother leapt up with a cry, his father tumbled off the stove, someone lit a pine splint. In the cradle there was nothing but pale Zosia, barely breathing. # pokaz: odlot, krzyk
    At daybreak Jaromir was taken home, where he got a sound thrashing. And Lady Midnight came back on the nights that followed. # pokaz: kogut # dalej
    -> boze_narodzenie

= boze_narodzenie
~ zapiski += polnocnica_2
// Mak był potrzebny tylko na tę jedną noc.
~ ekwipunek -= mak
# tlo: koledy
{ polnocnica:
- przegnana_nozem:
    In the morning Zosia was sleeping peacefully, rosy as a little apple, and for the first time in weeks she fed so greedily that her mother wept for joy. None of the grown-ups knew how a knife had come to be in the cradle. She looked it over, crossed herself and put it back under the pillow.
- policzyla_mak:
    In the morning Zosia was sleeping peacefully, rosy as a little apple, and for the first time in weeks she fed so greedily that her mother wept for joy. Of the poppy seed there was no trace – not a single grain, though the boys searched every crack in the floor.
- else:
    Zosia grew weaker by the day. Only at Epiphany did old Staś, who had heard his grandson out without laughing, lay a rusty sickle under the cradle. The little one lived, but she was always sickly and pale, and on her forehead there remained a small grey mark, as if from the touch of a dirty finger.
}
{ polnocnica == uslyszala_krzyk:
    Antek bore Jaromir no grudge. He said that at least someone had believed him – and that was more than he could say of the grown-ups.
- else:
    From that night on Antek no longer lagged behind. He walked to school beside Jaromir now, and when anyone asked why he stuck so close to him, he only shrugged and smiled to himself.
}
Then Christmas came. The carol singers went from cottage to cottage with a paper star that spun on a pole, and the horned turoń snapped its wooden jaws until the girls squealed. For a sleigh ride on the frozen lake Staś harnessed two horses; the sleigh flew along so fast that the wind whistled in their ears, the bells jingled and snow sprayed from under the runners. Jaromir laughed along with the others, but at night, before he fell asleep, he listened to the silence beyond the window. # pokaz: kulig
When he told Hanka about it all, the girl grew serious and for a good while said nothing. # pokaz: hanka
“Granny says Lady Midnight never comes of her own accord,” she said at last. “Someone has to show her the way.” # dalej
-> rozdzial_trzeci_ciag_dalszy


// Koniec rozdziału trzeciego — dalej rozdział czwarty.
=== rozdzial_trzeci_ciag_dalszy ===
# ozdobnik
_End of Chapter Three._ # dalej
-> rozdzial_czwarty
