// ------------------------------------------------------------
//  Rozdział ósmy — Chude lato (licho). To samo lato co Zielone Świątki,
//  Jaromir ma czternaście lat. Susza, seria nieszczęść, jednooka
//  żebraczka (chleb, przegnać albo nie patrzeć), ojciec przygnieciony
//  sosną w wyrębie Urbaniaka, babka Hanki nazywa licho, nocne pukanie
//  (ugościć, przegnać głownią — licho idzie do kuźni, albo milczeć),
//  Urbaniak każe wykopać kapliczki spod boru; rano w dołach rosną świerki.
// ------------------------------------------------------------

=== rozdzial_osmy ===
# tlo: susza
# rozdzial: Chapter Eight
# tytul: The Lean Summer
After Whitsun the rain stopped.
At first nobody worried about it. The haymaking went off smoothly—the grass dried in two days and smelled of honey, and the mowers sang in the meadows from dawn till dusk. June passed, and still the sky was white and empty. The pastures turned yellow and crackled underfoot, the rye stood low and thin, and the potato leaves curled into tubes and lay flat on the ridges as if trampled.
The lake drew back a dozen paces or more from the shore. The exposed mud cracked into angular slabs, and the jetty from which the girls had so lately set their wreaths afloat now jutted over the dry bed like a skeleton. The stream running down from the forest barely trickled, the great wheel at the sawmill stood still, and Urbaniak swore at the inn that he was paying people to sit idle. # pokaz: pomost
{ korale_kaski == zatrzymane:
    In the whole cottage only one thing never dried out—the rag with Kaśka’s beads, hidden under the straw mattress. Every morning it was wet, as if someone had only just lifted it out of the lake.
}
The old folk shook their heads and said they could not remember such a year.
“A lean summer,” they kept saying. “And after a lean summer comes a hungry winter.” # dalej
-> przy_studni

= przy_studni
# tlo: studnia
At the end of July the Wójciks’ well ran dry, and the next day their cow died—she lay down in the byre and never got up again. That same week, at Staś’s, a single spark from a pipe set the barn alight, and it burned down together with the hay before anyone could come running with a bucket. The anvil in Hanka’s father’s smithy cracked—a thick iron one, on which his own grandfather had once worked.
The village began to whisper. Everyone who met with misfortune would afterwards recall that the day before he had seen a beggar woman by his fence. Small, hunched, barely waist-high to a grown man, wrapped in so many rags that there was no telling where one ended and the next began. Nobody knew where she had come from or where she slept. She wore the cloth over her head pulled down so low that all you could see was a pointed grey chin.
Jaromir first saw her by the well in the middle of the village, when he was carrying his father’s dinner out to the field. She sat on the well curb, bent over the black depths, mumbling something down into them. When he came up with the bucket, she slowly turned her head. # pokaz: zebraczka
She had only one eye—large, round, with a black pupil and a red, weepy rim. Where the other should have been there was smooth grey skin, without lid or lashes.
“A bit o’ bread,” she croaked, stretching out a bony hand with dark, hooked nails. “A bit o’ bread for an old woman…”
All the shadows in the village lay in one direction, short and black. Only hers fell the other way—against the sun—long and thin as a beanpole, and it pointed straight at Jaromir’s cottage. # pokaz: cien
# pytanie: What will Jaromir do?
*   [Give her the hunk of bread he was carrying for his father’s dinner.]
    ~ licho_studnia = chleb_przy_studni
    The beggar woman snatched the bread with both hands and hid it under her rags so fast that Jaromir did not even see how. She gave no thanks. She went on looking at him a long while with that single eye, then slid down off the curb and pattered away with tiny steps towards the high road. Her shadow set off after her only a moment later, as though reluctant. # pokaz: odchodzi
    That day his father worked in the field until dark on nothing but water, and did not ask what had become of the bread. # dalej
    -> przy_stole
*   [Chase her away from the well.]
    ~ licho_studnia = przegnal
    “Get away from here!” Jaromir shouted, swinging the bucket at her. The beggar woman was not frightened in the least. She slid down off the curb and moved off slowly, and at the fence she looked back and giggled—briefly, in a croak. # pokaz: chichot
    “I’ll remember you, sonny,” she said. # dalej
    -> przy_stole
*   [Draw the water and walk away without looking at her.]
    ~ licho_studnia = nie_patrzyl
    He pretended not to see her. He drew the water and set off home, but the whole way he felt eyes on his back, and when he looked round by the fence, the well curb was already empty. At home it turned out that the water in the bucket was cloudy and stank of mud, though he had drawn it from the very bottom. Mother poured it out by the fence, and from then on she went to the well herself. # pokaz: slad # dalej
    -> przy_stole

= przy_stole
# tlo: izba_sierpien
~ zapiski += licho_1
On the first of August Father came back from the field earlier than usual. He sat down at the table and for a long time turned an ear of rye in his fingers—light, almost empty—without saying a word. Mother set a bowl of porridge in front of him and was silent too. Nothing could be heard in the room but the buzzing of flies. It was close, there was a smell of groats and of the sun-warmed timber of the walls, and not a single breath of air came in through the open window.
“There won’t be enough of this rye even for seed,” he said at last. “The potatoes will wither in the ground. We won’t have enough for bread till spring.”
Then he looked at his son the way he had begun to look at him since Easter—as at a grown man.
“Urbaniak’s looking for men for the felling. The saw’s standing idle, so he wants to cut as many trunks as he can over the summer, and when the rains come and the water turns the wheel, he’ll mill the lot at once. He pays by the tree.” He clenched his jaw. “I swore to myself I’d never work a single day for him.”
{ pracowal_w_tartaku:
    Jaromir remembered how his father had looked at him a year ago, when his son brought home his first silver from Urbaniak.
}
“What do you think, son?”
# pytanie: What will Jaromir answer?
*   [Go to the felling together with his father.]
    ~ wyreb_z_ojcem = true
    “I’ll go with you,” said Jaromir. “The two of us will earn twice as much.”
    His father studied him for a long time, then nodded. Mother turned away to the stove, but Jaromir saw that her shoulders were shaking. # pokaz: matka # dalej
    -> na_wyrebie
*   [Stay at home—someone has to look after the field and his mother.]
    “Go,” said Jaromir. “I’ll see to the farmyard. I’ll carry water to the garden and dig the well deeper.”
    His father laid a heavy hand on his shoulder.
    “Good. While I’m gone, you’re the master here.” # dalej
    -> wiesci_z_wyrebu
*   { ekwipunek ? monety } [Give his father the coins from the sawmill.]
    ~ ekwipunek -= monety
    Jaromir took a small wrapped cloth from under his straw mattress and laid on the table the silver he had got from Urbaniak a year before. His father looked at the coins for so long that Mother had to turn her eyes away. # pokaz: monety
    “You put it by,” he said quietly. “That was wise.”
    After the drought, rye in Bukowiec had grown so dear that for silver which a year earlier would have bought a calf, his father got barely two bushels for sowing. There was nothing left over for the winter, so after a week he went to the felling all the same—alone, because someone had to stay and mind the farm. # dalej
    -> wiesci_z_wyrebu

= na_wyrebie
# tlo: wyreb
The felling stretched beyond the stream, at the edge of the forest, where only a year ago the oldest oaks had grown. The ground here was churned up and full of stumps, and between them lay barked logs, white as bones. The work went on from first light, in dust and scorching heat, and the air shook with the thud of axes and the whine of saws. Jaromir lopped branches, while his father and two sawyers brought the trees down.
On the third day, towards evening, Jaromir saw her again. The beggar woman was sitting on a stump at the edge of the clearing, watching his father with her one eye. No one but Jaromir noticed her, though she had walked right past the sawyers. # pokaz: licho
Father was just undercutting a tall pine. The air was heavy and still, not a leaf stirred—and yet, when the tree creaked, a sudden gust came from the forest, hot and dry as breath from an oven. The pine twisted on its stump and crashed down the wrong way. # pokaz: podmuch
“Run!” yelled one of the sawyers.
Father leapt aside, but his foot caught in the brambles. The trunk came down with a crash that made the ground boom, and pinned him from the knees down. # pokaz: upadek
When Jaromir looked towards the stump, the beggar woman was no longer there.
# pytanie: What will Jaromir do?
*   [Lever the trunk up with a pole.]
    ~ noga_ojca = zlamana
    Jaromir seized a barked pole, rammed it under the trunk and threw his whole body against it. The wood did not budge. He heaved again, until everything went dark before his eyes—and then the sawyers were beside him. The three of them raised the pine a hand’s span, just enough for his father to crawl out from under it. # pokaz: drag
    The leg was broken, but whole. Father clenched his teeth so hard that blood ran from his lip, and he did not cry out once. # dalej
    -> babka_hanki
*   [Run for help to the far end of the clearing.]
    ~ noga_ojca = strzaskana
    Jaromir ran as fast as his legs would carry him, leaping over logs and stumps. By the time he got back with the men and they managed to heave up the trunk, an eternity had passed. # pokaz: pomoc
    When they pulled Father out, his face was grey, and the leg below the knee was in such a state that one of the sawyers turned away and was sick into the bracken. # dalej
    -> babka_hanki

= wiesci_z_wyrebu
# tlo: droga_wyreb
~ noga_ojca = strzaskana
Father went to the felling beyond the stream from dawn to dusk. He came home so worn out that he fell asleep at the table over his bowl, and in the morning he was off again before Jaromir had opened his eyes.
On the third day, towards evening, Jaromir was carrying water from the lake to the garden when he saw the beggar woman on the road beneath the forest. She was pattering along with tiny steps towards the felling, and a long shadow trailed after her through the dust—only it was not behind her but in front, as if it were the one leading. # pokaz: zebraczka
He set down the buckets and watched until she disappeared round the bend. Something cold clenched in the pit of his stomach.
An hour later he heard a rumbling. Along the road from the stream came Urbaniak’s cart, with two sawyers running behind it. On the cart, on a bundle of branches, lay Father—grey in the face, his leg wrapped in a bloodied shirt. # pokaz: woz
“The pine twisted,” one of the sawyers panted. “There was no wind, and it twisted on its stump, like somebody shoved it…” # dalej
-> babka_hanki

= babka_hanki
# tlo: izba_ranny
They laid Father on the bench in the main room. Nobody had to send for Hanka’s grandmother—the girl brought her herself the moment she heard what had happened. The grandmother knew more about broken bones than the doctor in Bukowiec. The old woman came with a basket of herbs, looked at the leg, muttered something under her breath and told them to hold him. Jaromir held him. When she set the bone, Father fainted, and just as well, for the scream he managed to let out Jaromir heard afterwards in his dreams for many nights.
The grandmother packed the break with crushed root and bound it with hazel splints. There was a scent of comfrey and camomile, bitter and clean, like a field after rain. Hanka carried water from the lake, because there was nothing left in the well but mud, and cooled the injured man’s brow with a wet rag.
{ noga_ojca == zlamana:
    “It’ll knit,” said the old woman. “Crooked, but it’ll knit. He won’t get up for a month, and after that he’ll walk with a stick.”
- else:
    “It’ll knit, or it won’t,” said the old woman. “If he takes a fever, you’ll have to send for the barber-surgeon to cut it off. And if he lives, he’ll limp to the end of his days.”
}
In the passage, as she was leaving, she caught Jaromir by the sleeve and pulled him close.
“You’ve seen her, haven’t you?” she whispered. “Little, in rags, with one eye.”
He nodded.
“The Licho,” said the old woman, and spat over her shoulder. “The Licho that never sleeps. It goes from cottage to cottage and settles wherever it fares well. Where the shrines stand and folk live God-fearing lives, it won’t stay long. But where they cut down the forest and shift holy things from corner to corner, there it’ll settle in and feed till nothing’s left but bones. It didn’t come of its own will. Somebody sent it here. And why it has one eye,” she added more quietly, “nobody knows. My mother used to say the other stayed behind in the forest—that the Licho is the eyes the Lord of the Forest sends out among folk. I couldn’t say. I know it watches.” # pokaz: babka
“How do you drive it away?” asked Jaromir.
“You don’t drive off the licho. Chase it from your door, and it goes to your neighbour’s. You can feed it, so it moves on with a full belly. Or else you don’t open to it and don’t speak a single word to it, however it begs and tempts you with whatever it knows. It’ll only come inside if somebody calls it in.”
{ licho_studnia:
- chleb_przy_studni:
    “You’ve given it bread once already?” The old woman nodded. “Clever lad. The licho remembers good and bad alike.”
- przegnal:
    “You chased it away from the well?” she sighed. “Then it’s marked you now.”
}
Hanka followed them out onto the threshold. When her grandmother set off towards the smithy, the girl stopped beside Jaromir and {pocalunek:quickly kissed him on the cheek|squeezed his hand}. # pokaz: hanka
“I won’t sleep tonight,” she whispered. “I’ll help you with your father as long as I’m needed.” # dalej
-> pukanie

= pukanie
# tlo: drzwi_noc
~ zapiski += licho_2
In the night someone knocked.
Three times, softly and low down—as if someone very small were rapping a staff against the bottom board of the door.{ ekwipunek ? szczeniak: {imie_psa} squeezed under the bench and growled dully, the fur bristling on his neck.} Mother was asleep on the stool beside Father, her head propped against the wall, so worn out that she did not even stir.
Jaromir put his eye to the crack in the shutter. On the threshold, in the moonlight, stood the beggar woman. Her shadow, thin as a finger, was sliding into the room beneath the door. # pokaz: cien
“Master…” came the croak from behind the door. “Let the old woman in, master. I’m hungry. Give us a bit o’ dripping, master, just a scrap, and I’ll be on my way and never come back…”
Under the ceiling beams, on a hook, hung a slab of pork fat. The last one—and Hanka’s grandmother had told them Father must eat fatty food, or the bone would not knit.
# pytanie: What will Jaromir do?
*   [Cut her a piece off the last slab of pork fat and pass it through the window.]
    ~ licho_noc = ugoszczone
    Jaromir cut a thick piece, eased the shutter open and stuck his hand out. Something cold and dry as bark brushed his fingers, and the fat was gone. # pokaz: pajda
    “Good dripping,” came the croak from under the window. “From a proper farmhouse. I’ll go on my way full.”
    He heard the tiny steps moving away from the cottage. Not towards the village—down the road to the sawmill.
    In the morning the village was saying that Urbaniak’s great saw had split in two, and that his best horse had dropped dead in the stable.
    To the end of the summer Father ate his porridge cooked in water, with no fat. He did not complain, but Hanka’s grandmother, whenever she came to change the splints, shook her head for a long time over his thinning arms. # dalej
    -> kapliczki_pod_borem
*   [Snatch a firebrand from the stove and drive her from the threshold.]
    ~ licho_noc = odpedzone
    Jaromir pulled a smouldering brand out of the ashes, wrenched the door open and burst out onto the threshold, brandishing the fire. The beggar woman let out a piercing shriek, like a hare under the knife, and fled. She went over the fence nimbler than a cat and vanished into the darkness—towards the smithy. # pokaz: glownia
    In the morning Hanka came running in tears. Her father’s smithy had burned down in the night. He himself had barely escaped with his life, and his hands were so badly burned that he could not hold a hammer until autumn. # dalej
    -> kapliczki_pod_borem
*   [Keep the door shut and say not a word.]
    ~ licho_noc = przemilczane
    Jaromir clenched his teeth and gave no answer.
    The beggar woman knocked for a long time. Then she stopped croaking and fell quiet. Instead, from under the door there began to seep the smell of bread—warm, straight from the oven, with a browned crust—and something scratched at the bottom board, patiently, again and again, like a cat asking to be let in.
    { figurka_u_staruchy && los_psa == oswojony:
        It smelled just as it had on Saturdays at Grandmother Marianna’s, when she took the loaves out of the oven, though Grandmother had lain four years now in the churchyard in town. # pokaz: glos
    - else:
        It smelled just as it did on Saturdays, when Mother took the loaves out of the oven. # pokaz: glos
        And yet Mother was asleep two steps away from him, on the stool beside Father, and there had not been a handful of flour in the kneading trough for a week.
    }
    His mouth watered and his eyes filled with tears, but he did not open up. He sat like that until dawn, his hands clenched on his knees, until the cock crowed and outside all fell silent.
    In the morning the bottom board of the door, where the knocking had been, was black and soft as if rotten, though Father had planed it barely three years before. # pokaz: rysy # dalej
    -> kapliczki_pod_borem

= kapliczki_pod_borem
# tlo: kapliczki_wykop
At the end of August Urbaniak decided he would not wait for rain. Since the saw stood idle and the stream would not carry a raft, the trunks would have to be hauled to Bukowiec—and the carts with their long logs could not get round the bends of the road beneath the forest. There, at every bend, stood a wayside shrine. # dalej
-> u_urbaniaka

= u_urbaniaka
# tlo: tartak_susza
On Sunday after High Mass a dozen or so men from Zapadlina gathered outside the sawmill. Old Staś came, leaning on his stick, the smith{licho_noc == odpedzone: with his hands wrapped in rags after the fire}, Wójcik, who since his daughter’s death seldom left his cottage, Antek—and Jaromir, because someone had to stand in for his father.
{
- powiedzial_ojcu_poludnica && not figurka_u_staruchy:
    In the morning his father called him over to the bench. “A year ago I went to him with the other men, and he gave us his word he wouldn’t touch the shrines,” he said. “And here at home I swore I’d see to it.” He squeezed his son’s hand until the bones creaked. “I can’t hobble that far. Go and remind him what he promised.”
- figurka_u_staruchy:
    Father said nothing. Only when his son was already standing in the doorway did he give him a nod from the bench—once, briefly, as to a grown man.
}
Urbaniak came out to them on the porch in nothing but his waistcoat, a napkin still tucked into his collar. He heard old Staś out to the end without interrupting, toying all the while with his watch chain.
“The shrines were put up by our fathers,” Staś was saying. “My father, Andrzej, carried the post up by the woods himself, when I was a lad, and tamped the earth round it barefoot, because he said it wasn’t fitting in boots…” He lost the thread and was silent a while. “So long as they stand, the forest stays where it’s always been. Haul shorter logs, sir.”
“Shorter logs, worse business,” Urbaniak replied. “And not mine—yours. I’ll balance my accounts one way or another.” He took from his pocket a little notebook in an oilcloth cover, licked his finger and began to turn the pages. “Wójcik: two bushels of flour since Easter. Staś: for the tax, still from the winter. The smith: iron for a new anvil. Shall I read on?” He shut the notebook. “I force nobody. Whoever doesn’t want my silver needn’t take it. But then let him give me back what he’s already taken.”
The men hung their heads. Only Antek stepped out in front of his elders.
“I don’t owe you anything,” he said. His voice shook, but the boy did not back down. “And I never will.”
“You’re the smith’s lad?” Urbaniak looked him over with amusement. “Then the smith will be in my debt if he doesn’t shoe my horses.” Antek went red to the ears, and the smith, without a word, grabbed him by the collar and pulled him back.
{ pracowal_w_tartaku: “And you carried planks for me.” Urbaniak looked at Jaromir. “Carried them well. It’d be a pity if come winter you had nothing to carry your father but peelings.” }
{ powiedzial_ojcu_poludnica && not figurka_u_staruchy:“A year ago you gave my father your word that nobody would touch the shrines,” said Jaromir calmly, though inside he was trembling all over. “Father’s lying with his leg in splints, so I’ve come to remind you.” “A year ago it was raining,” Urbaniak replied. “And now the saw stands idle, but the bills in town don’t.”|“Leave the shrines alone, sir,” said Jaromir calmly, though inside he was trembling all over. “Not for our sake. For yours too.”}
{ wyreb_z_ojcem:
    “I was at the felling when the tree pinned my father,” Jaromir added. “That pine didn’t fall from the wind. There was no wind.”
    “Then from what?” Urbaniak raised his eyebrows. “From the licho?” Several of the men crossed themselves on the sly, and he laughed.
}
{ licho_noc == ugoszczone: “And somebody split my saw in half in the night and poisoned my horse,” Urbaniak threw in, turning serious for a moment. “When I find out which of you it was, not even the saints will save him.” }
“The shrines come down on Monday,” Urbaniak announced at last. “Whoever wants to can come with a spade; I’ll pay cash, that same evening, no credit. And whoever doesn’t had better look to his own bread, because he’ll get none from me.” He pulled the napkin out of his collar, shook it out and went back inside.
They walked back in silence. By the dried-up stream old Staś stopped, spat into the cracked mud and said, looking at no one:
“The forest remembers longer than that notebook of his.” # dalej
-> kopanie

= kopanie
# tlo: kapliczki_wykop
On Monday morning Urbaniak’s men came with spades. They dug out the posts, pulled down the little roofs, and threw the holy figures onto a cart like firewood. The women peered out from behind their fences and wept, the old men cursed—but when Urbaniak called out that he would pay silver for a day’s work, cash in hand, a few men from Zapadlina joined his people. Hunger was stronger than fear. The spades grated on stones, and every post came out of its hole with a sucking sound, as if the earth did not want to let it go. Jaromir felt something tighten in his throat—he did not know whether it was anger, or shame for those who were digging. # pokaz: kopacze
{ kapliczka_podniesiona:
    At the very edge of the forest stood the one that Jaromir and Antek had raised out of the mud four years ago.
}
{ ostrzezenie_poludnicy:
    The words he had heard on the stubble field at high noon rang in his head: “The Lord of the Forest is waking… Keep watch on the shrines, boy.”
}
# pytanie: What will Jaromir do?
*   [Stand in front of the shrine at the forest’s edge and not let them touch it.]
    ~ kapliczki_drogi = obronil_kapliczke
    Jaromir stood in front of the post and spread his arms. After a moment Antek joined him—silent, his face black with soot from the smithy. # pokaz: obrona
    One of Urbaniak’s men shoved Jaromir so hard that he fell in the dust. The boy got up and went back to his place. The man shoved him again. Again Jaromir got up.
    At last Urbaniak, who had been watching all this from his britzka, laughed and waved his hand.
    “Let it stand, since he’s so stubborn,” he said. “One shrine won’t hurt the carts. But your father, boy, will get no more work from me. Not even once he’s on his feet.” # dalej
    -> blizej
*   [Steal up to the cart at night and save at least one figure.]
    ~ kapliczki_drogi = ocalil_swiatka
    ~ ekwipunek += swiatek
    The cart with the figures stood overnight under the sawmill shed. Jaromir crept there after midnight with Hanka—it was she who thought of coming from the stream side, where the watchman couldn’t see from his hut, and she who stayed by the fence, ready to hoot like an owl if the watchman stirred. Groping under the tarpaulin, Jaromir pulled out the first figure that came to hand. It was a wooden saint—the Mother of God with the Child, her face worn away by the rains until it could barely be made out. # pokaz: noc
    He carried the figure to the den in the old elder and hid it under the boards. On the way back Hanka kept looking over her shoulder, and only by the smithy did she whisper that someone had been walking after them along the edge of the forest, stopping whenever they stopped. # dalej
    -> blizej
*   [Keep out of it—there’s no bread at home, and his father is laid up.]
    ~ kapliczki_drogi = nie_wtracal
    Jaromir stood by the fence and watched them dig out one shrine after another. He did nothing. Hanka did it for him: she planted herself by the last post, right under the forest, and did not move until two of Urbaniak’s men set her aside like a sack of chaff. On her way back she passed Jaromir and did not look at him once. In the evening Jaromir brought home a handful of coppers—for carrying boards from the dismantled roofs—and laid them on the table without a word. Mother said nothing either. She bought flour with them. # pokaz: wozy # dalej
    -> blizej

= blizej
# tlo: bor_blizej
That night a wind came from the forest.
It blew hot and dry, without a single drop of rain, and roared in the treetops so that nobody in all Zapadlina got a wink of sleep. Over the forest there was lightning without thunder, and in its glare the trees seemed to move—not to sway, but to walk. # pokaz: burza
In the morning the whole village saw the road beneath the forest. In the holes where the shrines had stood young spruces were growing—several in each, green, smelling of resin, an ell high—though the evening before nothing had grown there yet. # pokaz: swierki
{ kapliczki_drogi == obronil_kapliczke:
    Only by that one shrine which Jaromir had not let them touch was the ground bare and quiet. # pokaz: kapliczka
}
The forest seemed nearer than it had the day before. Nobody could say by how much—but everyone felt it.
The rain came only in September, when it was already too late. Of the rye they gathered so little that it fitted into two sacks, and of potatoes not much more. {noga_ojca == zlamana:Father got up after a month and walked with a stick, wincing at every step.|Father survived the fever and kept his leg, but he did not rise from the bench until Christmas, and after that he could only walk on crutches.} So it was Jaromir who ploughed. He sowed the winter crop alone, hauled the firewood for winter alone, and alone haggled over the price of grain in Bukowiec, until the dealers stopped taking him for a boy.
The last time he saw the beggar woman was in October, at dusk. She was walking along the road beneath the forest, with tiny steps, and did not look back. At the edge of the woods she stopped, as if someone had called her, and then she went in among the trees and was gone. # pokaz: zebraczka
And a few paces ahead of her, going the same way, walked Franek. # pokaz: franek # dalej
-> rozdzial_osmy_ciag_dalszy


// Koniec rozdziału ósmego — dalej rozdział dziewiąty.
=== rozdzial_osmy_ciag_dalszy ===
# ozdobnik
~ zapiski += (licho_3, pan_lasu_4)
_End of Chapter Eight._ # dalej
-> rozdzial_dziewiaty
