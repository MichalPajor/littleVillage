// ------------------------------------------------------------
//  Prolog, część druga — miasto, rodzina, powrót do Zapadliny
//  i zakończenie prologu (zależy od tego, komu Maciek sprzedał figurkę).
// ------------------------------------------------------------

=== miasto ===
# tlo: gosciniec
# rozdzial: Prologue
# tytul: The Town
The high road wound on through fields and copses, now uphill, now down. Peasants’ carts taking grain to market went past him, and at one point a britzka rattled by and someone shouted from it for him to get out of the way.{ los_psa == oswojony: The dog kept close at his heel and growled at every rumble of wheels.} The sun was already high when a church tower rose from behind a hillock, and beneath it the roofs of the town – red, grey and mossy, packed tight as grains in an ear of wheat. # dalej
-> rynek

= rynek
# tlo: rynek
The market square hummed like a hive. Peasants in homespun coats jostled between the stalls, market women cried up their eggs and butter, and from under the town hall came the bleating of goats. It smelled of bread, horse dung and smoked fish.{ ekwipunek ? figurka: Maciek felt for the wooden figure in his pocket. First it had to be sold – only then could he think about food.}
{ ekwipunek ? figurka: -> kramarze | -> zakupy }

= kramarze
The first was a stallholder selling holy pictures and rosaries. He studied the figurine against the light for a long while, then finally grimaced and handed it back quickly, as though it scalded him.
“That’s no saint,” he muttered, and crossed himself on the sly. “I’ll not take that under my roof.”
The carver of spoons and bowls would not even touch it. He declared the wood rotten and scorched, good for nothing, unless it be kindling.
Only the second-hand dealer, with a barrow full of pots and torn boots, turned it over in his fingers for longer.
“Two groszy,” he said at last. “Nobody’ll give you more for that.”
That was what a loaf of bread cost. One. Maciek promised he would think it over and set off towards the poorer end of the market, where instead of stalls there were sheets spread on the ground with onions, rags and rusty scrap iron. # dalej
-> starucha

= starucha
# tlo: zaulek
Suddenly someone caught hold of his sleeve. The hand was small and dry, and smelled of mint and smoke.
Before him stood a slight old woman in a dark hood, leaning on a staff, with a basket of dried herbs on her arm. Her cloak was patched but clean, and the white edge of a cap showed beneath the hood. One eye was clouded with a milky film; the other – black and sharp – stared straight at his pocket. # pokaz: starucha
“What’s that you’re carrying, son?” she whispered. “I can smell ashes. Old ashes, from by the water.”
{ los_psa == oswojony:
    The dog sniffed at her basket, sneezed at the herbs, then raised its hackles and growled low – not at her, but at Maciek’s pocket. # pokaz: pies
}
Maciek wanted to walk away, but she would not let go of his sleeve.
“It isn’t yours. You dug it up where there was no call to be digging,” she said softly, so that those around would not hear. “That thing calls out, son. As long as you carry it, what dwells in the water knows where to look for you. For you and for those you love. Don’t burn it and don’t throw it in the water, for it will come back. Someone must know what to do with it – and I do.”
Only now did she let go.
“I’ll take it off your hands. But not for nothing, for what’s given for nothing goes back to the giver. I’ll give you ten groszy. Five times what the fellow with the barrow wanted to pay.”
She must have been standing somewhere close by while he haggled with the dealer. Only he could not remember seeing her there.
# pytanie: To whom will Maciek sell the figurine?
* [To the old woman – she knows about such things, and ten groszy will see the family through to the first harvest.]
    ~ figurka_u_staruchy = true
    ~ ekwipunek -= figurka
    # tlo: rynek
    Maciek took out the figurine and laid it on his outstretched palm. The crone did not snatch it at once. First she wrapped it in a linen rag, and only then, through the cloth, did she take it in her hand. The coins she drew from a little knotted pouch at her belt.
    “Now it’s my affair,” she said. “Go with God, son. And don’t look back for it.”
    She turned and vanished into the crowd before he could say a word in reply.{ los_psa == oswojony: The dog stopped growling the moment the pocket grew light.}
    -> zakupy
* [To the dealer, for a pittance – better it end up among the pots, with someone who doesn’t know what it is.]
    ~ ekwipunek -= figurka
    # tlo: rynek
    “Thank you, mother, but there’s no need,” Maciek answered, and stepped back a pace.
    The crone looked at him a long while with her good eye. “As you will,” was all she said, and she went back to her herbs.
    The dealer shrugged, tossed the figurine among his pots and counted out two groszy. “Told you nobody’d give more.”{ los_psa == oswojony: The dog stopped growling only when the figurine disappeared under a heap of potsherds.}
    -> zakupy

= zakupy
~ ekwipunek += (zapasy, nasiona)
{
- figurka_u_staruchy: With the crone’s coins and the rest of his own coppers Maciek bought two loaves of bread, a sack of groats, salt, a piece of pork fat, vegetable seeds and even a basket of seed potatoes. The bundle weighed down on his back, but it was the pleasantest burden he had borne in a long time.
- przeszukal_zgliszcza && not figurka_w_bagnie: With his last coppers and the dealer’s two groszy Maciek bought a loaf of bread, a handful of salt, a small bag of groats and some vegetable seeds. Not much, but enough to get by on for a few days.
- else: With his last coppers – what was left after the axe – Maciek bought a loaf of bread, a handful of salt, a small bag of groats and seeds of all sorts of vegetables.
}
It was spring, so the sowing could not wait.
By the town well he ate his first slice of bread in weeks. It was soft and still warm. He had to hold himself back from wolfing the lot at once.{ los_psa == oswojony: The second slice he gave to the dog.}
Then he set off out of town, to the manor farm where for four years he had laboured on another man’s field, and where his wife and little son were waiting for him. # dalej
-> rodzina


// ------------------------------------------------------------
//  Rodzina — spotkanie z żoną i synem w Czworakach.
// ------------------------------------------------------------
=== rodzina ===
# tlo: czworaki
# rozdzial: Prologue
# tytul: The Family
He reached the farmhands’ row as the sun was already sinking towards the west. The long, low building with its crooked chimney looked just as it had on the day he left. Before the doorstep a small boy was drawing signs in the sand with a stick. He raised his head, looked at the strange, gaunt man – and for a moment did not know him. # pokaz: dziecko
“Dobrosław,” Maciek said quietly.
The little one leapt up from the ground and ran inside, shouting. Almost at once Marianna appeared in the doorway. She was wiping her hands on her apron – and froze when she saw her husband. # pokaz: marianna
A moment later she flung her arms round his neck so hard that he staggered. She wept into his shoulder, and he stroked her hair and could not get out a single word. Dobrosław clung to his leg and would not let go.
“Lord Jesus, Maciek,” she whispered at last, drawing back to look at him. She touched his sunken cheeks, his jutting collarbones. “There’s half as much of you as when you went away. What did you eat out there? Bark off the trees?”
He laughed, though there were tears in his eyes.
{ los_psa == oswojony:
    The dog stood to one side, uncertain, until Dobrosław held out a hand to it. Soon it was letting itself be scratched behind the ear, and the little boy squealed with delight. # pokaz: pies
}
In the evening, over a bowl of groats, Maciek told his tale. About the hut – the log walls he had hewn himself, the reed roof, the threshold where he used to sit after work. About the land: they would have as much of it as they could till.
“We set off tomorrow at first light,” he announced. “We’ll start everything afresh. On our own land.”
Marianna listened, smiling to herself. But when their son had fallen asleep, she moved closer and looked into her husband’s face.
“And now tell me the truth. What went on there? I can see something’s gnawing at you.”
# pytanie: Will Maciek tell his wife about that night?
* [Yes – tell her about the creature, the legend and the voice from the marshes. She must know where she is going.]
    ~ zona_wie = true
    He held nothing back. The howling in the thicket, the silence that had woken him, the shape that came out of the mist. The burnt herbwoman and her curse. The bog that had called to him in Marianna’s voice.{ figurka_u_staruchy: The charred figurine from under the ashes, which he had sold that very day at the market to an old woman in a hood.}
    Marianna listened in silence, paler with every sentence. When he had finished, she gazed for a long time at the dark window.
    “Will we go back there?” she asked softly at last.
    “We will. It’s our home.”
    She nodded. She said nothing more, but that night she never closed her eyes – he could tell by her breathing. # dalej
    -> powrot
* [No – put her off. Why frighten her, when the hut stands and what’s past is past.]
    “Nothing went on,” he lied. “Hard work and little food. That’s all.”
    Marianna kept looking at him a moment longer, as though waiting for the rest. Then she sighed and laid her head on his shoulder.
    That night he lay awake a long time. He thought he would tell her one day. One day, once everything had settled. # dalej
    -> powrot


// ------------------------------------------------------------
//  Powrót do Zapadliny z rodziną.
// ------------------------------------------------------------
=== powrot ===
# tlo: sciezka_rodzina
# rozdzial: Prologue
# tytul: The Return
They set out at dawn. Marianna carried their belongings knotted up in a cloth, Maciek the bundle of food – and, when the little one tired of walking, him as well, on his shoulders.
{ los_psa == oswojony:
    The dog ran back and forth between them, as if seeing to it that no one fell behind. # pokaz: pies
}
It was well past noon when they stood on Beech Ridge. Below lay Zapadlina.{ chcial_odejsc: In that very spot, a few days earlier, Maciek had stood with his bundle on his shoulder, meaning to leave for good. Now his son was asleep on his back.}
Up on the ridge Maciek halted and turned to his wife.
“Now be careful,” he said. “Walk right behind me, step for step. Don’t leave the path, whatever happens. Don’t look into the black water. And don’t listen to the voices from the marshes. Whatever you hear – don’t answer and don’t turn round.”
{ zona_wie: Marianna {chcial_odejsc:laid her hand on the back of their sleeping son|took her son by the hand} and nodded. She knew what he meant. | Marianna raised her eyebrows as though she might laugh, but something in his face stopped her. She nodded without a word. }
They went slowly, in single file. Mist drifted low over the floodwaters, and somewhere far off, in the rushes, something splashed softly. Halfway across he heard Marianna catch her breath sharply behind him. He did not look back. Only when they came out onto dry ground did he ask what she had heard.
“Nothing,” she answered quickly. Too quickly. # dalej
-> nowy_dom

= nowy_dom
{ chata_macka:
    - przy_lesie: # tlo: chata_las
    - przy_mokradlach: # tlo: chata_mokradla
    - else: # tlo: chata_jezioro
}
The hut stood where Maciek had left it. {chata_macka == przy_lesie:On the edge of the woods, in the shade of the spruces,}{chata_macka == przy_mokradlach:In the meadow by the marshes, on its stone footing,}{chata_macka == nad_jeziorem:By the lake, among the rustling reeds,} with the roof he had laid himself, sheaf by sheaf. # pokaz: dach
Marianna stopped before the threshold and for a long while said nothing. Then she went inside, ran her palm along the wall, breathed in the smell of resin and lit up like a little child at the sight of its parent’s face. # pokaz: rodzina
“Ours,” she said. “Truly ours.”
Dobrosław soon spied some loose boards in the corner of the room. Maciek moved them aside and showed him a pit dug in the earth – deep enough to keep potatoes and groats cool.
“The cellar,” he announced proudly. “For our stores. Only don’t you go climbing in there without asking.”
The little one, of course, jumped straight in and curled up so tight that he could not be seen. All three of them laughed.
{ ekwipunek ? krzesiwo: That evening a fire blazed before the new hut | That evening they ate their supper on the threshold of the new hut } and Maciek thought it had been worth going through all of it. # dalej
{ figurka_u_staruchy: -> czary | -> lata_spokoju }


// ------------------------------------------------------------
//  Zakończenie A — figurka u staruchy: czary i nocny napad.
// ------------------------------------------------------------
=== czary ===
# tlo: czary
# rozdzial: Prologue
# tytul: One Candle
That same night, far from there, in a cramped room behind the town square, a single candle was burning.
The crone pushed back her hood. Thin grey hair fell down her back. On the table before her stood a bowl of black, murky water, and beside it – the charred figurine, unwrapped from its linen rag.
The woman pricked her finger with a needle and let three drops of blood fall onto the wood. Then she dipped the figurine into the bowl and began to mutter – low, monotonous, in a tongue that no one in the town would have understood. The candle flame dimmed and leaned aside, though there was no draught in the room.
“I have waited long, mother,” she whispered. “But someone came at last. And brought you to me himself.”
The water bubbled, as if something deep within it had drawn breath. Out of the muttering rose words, spoken louder and louder:
“The bones of your children shall be broken, and their blood drunk…”
The crone bent lower over the bowl. “Go. You know the way. The hut {chata_macka == przy_lesie:below the woods}{chata_macka == przy_mokradlach:by the marshes}{chata_macka == nad_jeziorem:by the lake}. A man, a woman and a child.” # dalej
-> noc

= noc
# tlo: noc_atak
Several days went by. Maciek dug beds for potatoes, Marianna built an oven out of clay, and Dobrosław {los_psa == oswojony:ran about the meadow with the dog|gathered marsh marigolds in the meadow}. In the evenings they sat together on the threshold and watched the mist pour into the valley.
{ los_psa == oswojony: One night the dog woke them. It stood by the door with the hair bristling along its back, growling so low it could scarcely be heard. Then it began to bark – loud, savage, without stopping. | One night a crash woke them. Something struck the door with such force that the hinges groaned, and kept on battering until the wood split with a crack. }
Maciek sprang up from his pallet. Through a gap in the door he saw two glowing eyes in the mist. # pokaz: slepia
He did not think. He snatched Dobrosław up in his arms, pulled aside the boards in the corner and lowered him into the cellar.
“Keep quiet,” he whispered. “Whatever happens, don’t come out. Do you hear? Don’t come out till it’s day.”
He laid the boards back over the boy’s head. # dalej
{ los_psa == oswojony: -> walka | -> rzez }

= walka
# tlo: walka
The door crashed inward, frame and all. The creature had to stoop to squeeze under the lintel – huge, wet, stinking of the bog. Water streamed off it onto the earthen floor. # pokaz: stwor
The dog went for it first. It sank its teeth into the forearm and hung there, tearing, until the monster hurled it against the wall. It yelped and dropped. # pokaz: pies
Maciek stood before Marianna with his axe raised. # pokaz: maciek
“Get behind me!”
The beast reached for him. Its claws ploughed through his shoulder and side, but he kept his feet. He swung with all his strength, and the blade bit deep into the bony arm. The creature howled – the same long, guttural moan as that night by the shelter. Maciek struck again. And again.
The monster lurched back, overturning the bench, and fled roaring into the mist. For a moment they could hear something heavy tearing through the undergrowth, and then a splashing – further and further off, towards the bog.
The axe fell from Maciek’s hands. He sank to his knees, then onto his side. Beneath him a dark pool spread. # pokaz: kaluza
Marianna knelt beside him and pressed her hands to his wounds, but the blood seeped between her fingers.
“No, no, no… Don’t leave me…”
“Dobrosław…” he whispered. “Take him out… only in the morning.”
The dog dragged itself over to him, limping, and laid its head on his chest.
Maciek smiled once more. He looked at his wife until his eyes could no longer see anything at all.
Beneath the floor, in the cellar, Dobrosław pressed his hands over his ears and did not make a sound. Just as he had promised his father. # dalej
-> sierota

= rzez
# tlo: pod_podloga
The door split in two. Into the room burst cold air, the stench of the bog and an enormous shadow that had to stoop to squeeze under the lintel.
Maciek just managed to seize the axe. Marianna clapped a hand over her mouth.
Dobrosław did not see what happened next. He saw only narrow strips of moonlight between the boards above his head – and the shadows that cut across them. He heard everything. # pokaz: cien
He heard his father shouting at his mother to run. He heard the dull blows of the axe, once and again, and a howl that made the earth tremble. Then a crack – loud, wet, just like that time in the thicket, though the boy could not have known it. His father stopped shouting.
His mother screamed for longer.
When she too fell silent, something warm began to drip through the cracks between the boards. Drop by drop, onto his hair and cheeks. # pokaz: krew
Something heavy crossed the floor, right above him. It stopped. He could hear it sniffing – long and hoarse, like a dog at a burrow. He clamped his teeth on his sleeve so as not to whimper.
Then the footsteps moved away and melted into the mist.
He stayed in the cellar until morning. Just as he had promised his father. # dalej
-> sierota

// Epilog zakończenia A — chłopca przygarnia Andrzej.
= sierota
# tlo: izba_andrzeja
{ los_psa == oswojony:
    In the morning Andrzej looked in on them. He found Marianna on the earthen floor, with her husband’s head in her lap. She was no longer weeping. The dog lay beside them and would let no one come near.
    They buried Maciek in the churchyard in town. The widow never went back to the hut – she and the boy went to live with the farmer on the hill, who took them under his roof like family.
- else:
    In the morning Andrzej looked in on them. The door of the hut, split in two, lay in the grass. There was no one in the room – only a smear of mud trailing from the threshold towards the bog, and dark stains on the earthen floor. He stood in the doorway a long time before he heard soft sobbing from under the floor.
    The boy did not say a word – not that day, nor for many days after. Andrzej took him home and raised him alongside Staś as his own child.
}
After that night the village began to put up new wayside shrines – by the roads, at the crossways, on the edge of the woods and by the footbridge over the marshes – beside a few old, rotting posts along the forest, and no one remembered any more who had set those up. Each year there were more of them, until there was no place left in all Zapadlina from which at least one could not be seen.
Dobrosław grew into a silent, strong man. He never went near the marshes and never went down into any cellar. He married a girl from the next village, and soon a son was born to him.
They named him Jaromir. # dalej
-> prolog_ciag_dalszy


// ------------------------------------------------------------
//  Zakończenie B — figurka u handlarza albo bez figurki: spokojne lata.
// ------------------------------------------------------------
=== lata_spokoju ===
# tlo: kapliczki
# rozdzial: Prologue
# tytul: Quiet Years
The drowned one did not come. Not that year, nor the next.
Maciek and Marianna ploughed a field that was a little larger with every year. Dobrosław shot up fast – first he herded the geese, then he walked behind the plough, until at last he led the horse himself.{ los_psa == oswojony: The dog grew old by the threshold and one winter did not get up again. They buried it at the edge of the woods.}
Sometimes, on long winter evenings, Maciek told the boy about that first spring in Zapadlina. About the howling in the thicket, about what had come out of the mist by the shelter, about the voice that had called him from the marshes. About the herbwoman burnt in her hut by the lake. His son listened with flushed cheeks, but took it all for fairy tales – the kind told to children so they won’t go down to the water alone.
When the son was grown, the village began to put up new wayside shrines, beside a few rotting posts along the forest, and no one remembered any more who had set those up. One by the road from Beech Ridge, a second on the edge of the woods, a third by the footbridge over the marshes. Then more were added, until they stood beside almost every field balk. People said that ever since, the lights over the marshes had flickered less often. Dobrosław did not believe it, but every May he decked the shrines with flowers along with everyone else. # pokaz: kapliczki
Dobrosław’s parents died of old age, one after the other, in the same hut Maciek had once built from the first log up. Dobrosław married a girl from the next village, and soon a son was born to him.
They named him Jaromir. # dalej
-> prolog_ciag_dalszy
