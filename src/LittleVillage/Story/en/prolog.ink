// ------------------------------------------------------------
//  Prolog — Zapadlina, około siedemdziesiąt lat przed główną
//  częścią opowieści. Maciek, dziadek Jaromira, wybiera
//  miejsce na chatę.
// ------------------------------------------------------------

=== prolog ===
# tlo: zapadlina
# rozdzial: Prologue
# tytul: Zapadlina
Zapadlina – a village lying where the earth, weary of being a plain, had slumped downwards. To reach it, one always had to descend from hills, banks and slopes – whether from the high road over Beech Ridge or from the forest along a trodden path. The way back from town took six hours, and the last stretch wound among the bogs, downhill all the while. The mist was fond of this hollow. It poured into it at dusk like milk into a bowl, and at times would not leave it even by noon.
From the east the forest pressed in – old, coniferous and so dense that even by day the trees cast a deep, cool shade. To the north the soft ground gave way to marshland overgrown with bulrushes, sedge and stunted shrubs. The water there stood black, murky and still. Some said one must not stare into it too long, for that might call up the drowned held captive under a layer of silt. At night marsh lights often flitted above it. To the west, at the lowest point of the valley, lay a lake, round, as if someone had pressed it out with a knee. It was said that no one had ever seen its bottom.
The village was small, but not young. Five cottages stood far apart, for each family had as much field as its forebears had managed to clear and hold. Some thirty people lived there, children included. Everyone knew everyone well. The nearest church was in town; folk walked there a few times a year, for the great feasts, if the roads allowed. Then not a single living soul remained in the village.
Some seventy years before Jaromir first looked towards the forest, his grandfather came down into Zapadlina with a bundle on his shoulder. Maciek had nothing but an axe, bread, a pair of hands and his own stubbornness. The axe and the bread he had bought in town with money earned over four years of labour on another man’s field. He wanted at last to have something of his own – a corner where he would live and give his family a roof over their heads. The squire let out waste land here for clearing at a low rent, so every scrap of ground Maciek cleared would be his. It was spring; the fields steamed, and here and there dirty snow still lingered in the shade. For several days Maciek had been roaming the area, looking for a place to put up his hut. Three spots kept returning to his thoughts.
# ozdobnik
The first lay on the eastern edge of the village, right beneath the forest. The soil was fertile, timber was within arm’s reach, and there was no shortage of game either. Only, a chill always drifted out of the forest, even on sweltering days, and at night sounds came from there that he could not put a name to.
The second was to the north, by the marshes. There were wide meadows there where cattle might graze, and there would never be any lack of peat for burning. But after dark, so they said, something winked above the bogs. The people he met at the well said only: “You don’t go there and you don’t build there. There you only drown.”
The third, by the lake, seemed the loveliest of all. The water was clear, the fish all but leapt into one’s hand, and the shore sloped gently – one had only to force a way through the thick reeds. Remnants of a cottage that had once stood on the spot lay there too: old, rotten, charred logs. No one in the village would say who had lived in it or what fate had befallen them, and people crossed themselves whenever anyone mentioned it.
# pytanie: Where will Maciek build his hut?
*   [On the edge of the forest, to the east.]
    ~ chata_macka = przy_lesie
    -> budowa
*   [By the marshes, to the north.]
    ~ chata_macka = przy_mokradlach
    -> budowa
*   [By the lake.]
    ~ chata_macka = nad_jeziorem
    -> budowa


// ------------------------------------------------------------
//  Budowa chaty — początek zależy od wybranego miejsca.
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
# tytul: The Hut
Maciek chose the edge of the forest. He reckoned that timber close at hand would let him raise the hut sooner, and that mattered to him most of all. The fertile soil would serve for vegetables – a man has to eat, after all. And sleep? It would come right somehow. On the very first morning he set to work and drove his axe into the nearest spruce. The echo of the blow went off among the trees and came back after a strangely long while – drawn out, low, and not quite like the knock of an axe.
-> praca

= mokradla
# tlo: budowa_mokradla
# rozdzial: Prologue
# tytul: The Hut
Maciek chose the meadows by the marshes. When he began work, the people who saw him shook their heads. For them it was the last place they would ever have put up a cottage. The ground gave underfoot here, but it yielded peat enough for a hundred winters. So that the hut would not sink into the mud, Maciek had to lay a stone footing. All that first day he carried stones down from the hills and set them painstakingly in place.
For timber he had to walk far, to the edge of the forest. Now and then he would blunder into a shallow pool – he did not yet know the paths hereabouts – and his boots were forever soaked. At the thought of the villagers’ tales he felt uneasy, but curious too. He could not stop wondering what it was that winked above the bogs. He tried to keep clear of the black water and took the warning about the drowned to heart. If they existed, he certainly had no wish to meet them.
-> praca

= jezioro
# tlo: budowa_jezioro
# rozdzial: Prologue
# tytul: The Hut
Maciek chose the lakeshore. Something deep in his heart told him that this place was meant for him. Perhaps it was the water itself that drew him – smooth and bright, with the whole sky inside it. The rotten, charred logs of the old cottage he shoved into the tall rushes, so they would no longer nag at his eye. “What’s done is done,” he kept telling himself as he grubbed out the undergrowth, whenever the villagers’ tales came back to him. He felled trees on the slopes and rolled the trunks down. For thatching the roof he gathered reeds, of which there was no lack here – they grew taller than his head.
-> praca

= praca
The building took more than a month. Now and again one of the villagers came to give Maciek a hand. Most often it was Andrzej, the one he always found it easiest to talk to. He was far from well-off himself, but seeing the poverty the newcomer lived in, he sometimes brought him something to eat. He also liked to talk about his son, who was his pride. The boy was eleven and already a great help to his father.
Raising the hut itself was not difficult: fell the trees, strip their bark, cut them into logs of the right length, and notch the ends so they would hold fast once fitted together. That way the walls stood without a single nail. He stuffed the gaps with moss and clay. From the heavy daily toil his palms broke out in blisters, which burst and healed over until the skin grew hard as bark.
He ate his bread very sparingly – a slice for breakfast, another for supper, washed down with water. He promised himself he would go to town for fresh supplies as soon as the roof was done. The loaf dried out, shrank, and weighed less with each passing day – and Maciek along with it.
He slept in a shelter he had cobbled together on the first evening: a few boughs propped against a trunk, covered with leafy branches and turf, and inside a bed of moss. He fitted in it only lying down. He always kept the axe by his side. # dalej
-> noce

= noce
The nights were the worst. The spring chill and damp crept under his clothes, biting through to the bone. Sleep came hard. Maciek lay with open eyes and listened.
{ chata_macka:
    - przy_lesie: The forest never fell silent. There was no wind, yet branches cracked – slowly, lazily, now nearer, now farther off. Often he froze and listened, though some of the sounds sent shivers down his spine.
    - przy_mokradlach: The bogs never slept. They gurgled, they smacked, and sometimes – so it seemed to him – they sighed like a person. The first time he heard it, he flinched, seized the axe and peered out of the shelter. The tales from the well had proved true. After midnight, far off over the black water, a small light would kindle and wink. It went out when he looked at it, and flared again when he looked away.
    - else: At night the lake breathed. Each of its breaths was warm and pleasant. Though there was neither wind nor wave, every so often something splashed in the shallows. Once Maciek heard something heavy come out of the water and walk along the shore through the reeds towards him. In the morning he went to look. The reeds stood untouched, and ducks dozed by the bank, calm as on any other day.
}
One night, when all that remained of the loaf was the heel, a sound reached him such as he had not yet heard here. A soft, broken howling – thin, like a wolf’s, but feeble. It came from the thicket nearby. Maciek tried to pay it no heed, but it kept coming back.
# pytanie: What should Maciek do?
* [Take the axe – though in the dark it is easily lost in the mud – leave the shelter and see what it is.]
    -> pies
*   [Stay in the shelter and try to sleep regardless. Here he feels safe.]
    -> zostal

= zostal
~ los_psa = niespotkany
Maciek clenched his fingers round the axe haft and did not stir. The howling went on a long while yet. Then it turned into a pitiful whimpering, and before dawn it fell silent. # dalej
-> dach


// ------------------------------------------------------------
//  Pies w zaroślach — tylko gdy Maciek wyszedł z szałasu.
// ------------------------------------------------------------
=== pies ===
# tlo: zarosla_noc
Maciek crawled outside, axe in hand. The night was bright with moonlight and the grass wet with dew. He followed the sound slowly, step by step, feeling as though his heart would burst from his chest. The howling now faded, now rose again, ever closer.
In the dense bushes he heard a rustle. He parted the branches with the axe handle and froze. Two gleaming eyes emerged from the darkness. In the moonlight he made out that it was a young dog. It was so thin that its ribs stuck out under its skin, and its paws were too big for the rest of its body. Its muzzle was long and narrow, its ears pricked stiffly. It did not run from the man. It growled softly, trembling all over. # pokaz: pies
Maciek reached into his pocket. In it was a small wrapped cloth holding his last piece of bread – hard as stone, but it was, after all, tomorrow’s meal.
# pytanie: What will Maciek do?
*   [Give the dog a piece of bread.]
    -> dal_chleb
*   [Keep it and go back to the shelter.]
    -> nie_dal_chleba

= dal_chleb
~ ekwipunek -= chleb
~ los_psa = nakarmiony
Maciek unwrapped the rag and tossed the bread under the bush. The dog shrank back and growled, but after a moment began to sniff at what had fallen. All at once it snatched the prize in its jaws and vanished into the darkness before the man could blink.
He crawled back under the branches of his shelter and fell asleep hungry, knowing there would be no breakfast tomorrow. # dalej
-> dach

= nie_dal_chleba
~ los_psa = porzucony
Maciek left the bread in his pocket.
“I’m on my last legs myself,” he muttered to the dog, as though he wished to excuse himself before it.
He backed away slowly and hid beneath the branches. The howling came once more, quieter than before. He did not hear it again that night. # dalej
-> dach


// ------------------------------------------------------------
//  Dach — dzień po nocy z wyciem. Przebieg zależy od losu psa.
// ------------------------------------------------------------
=== dach ===
{ chata_macka:
    - przy_lesie: # tlo: budowa_las
    - przy_mokradlach: # tlo: budowa_mokradla
    - else: # tlo: budowa_jezioro
}
# rozdzial: Prologue
# tytul: The Roof
{ los_psa == nakarmiony: -> bez_chleba | -> z_chlebem }

= z_chlebem
~ ekwipunek -= chleb
In the morning Maciek unwrapped the cloth and ate the last piece of bread. He chewed it slowly, bite by bite, so that it would last him the whole day. He washed it down with water, brushed off his hands and went to work.
-> trzcina ->
He hacked through the dense growth with his axe close to the ground, bound it into sheaves and carried them to the hut. Again and again, without respite. His back burned like living fire, but the pile by the wall grew.
By afternoon there were no reeds left in that spot, so he moved on. He came back by another way – from the side where the howling had come from the night before. He walked on until suddenly he stopped mid-stride, one foot still in the air.
In the grass beneath a bush lay a dog. Thin, long-muzzled, with matted fur. It was stiff, tipped over on its side, its eyes half open. The flies had already settled on it.
{ los_psa == niespotkany:
    Maciek stood over it a long time without moving. Only now did he understand what had howled that night. No wild beast, no night-hag – just a hungry, chilled pup that had cried out until it stopped.
    His throat tightened. He thought he could have gone out then. But at once he answered himself: and what if he had walked straight into a wolf’s jaws? In the dark there’s no knowing what waits in the bushes. A sensible man stays in his shelter with his axe to hand – and lives.
    He looked away, slung a sheaf over his back and went back to work. He left the dog where he had found it. # dalej
- else:
    Maciek sank to his knees. He remembered those eyes in the moonlight, that half-hearted growling, the trembling of its whole body. The dog had begged, and he had turned and walked away.
    One piece. One hard piece of bread.
    “I was on my last legs myself,” he said aloud, as if someone were accusing him. “If I’d given away everything, who’d be lying here? The dog or me?”
    The words sounded reasonable, but brought no relief. Maciek got up off his knees and, without another glance under the bush, went back to carrying reeds. He did not bury the body. # dalej
}
-> uplyw_czasu

= bez_chleba
In the morning Maciek woke hungry. He reached into his pocket out of habit and remembered that the cloth was empty. He sighed, drank some water and went to work.
-> trzcina ->
He hacked through the dense growth with his axe close to the ground, bound it into sheaves and carried them to the hut. Again and again, without respite.
Around noon, as he straightened his aching back, he noticed movement in the distance. At the edge of the meadow, among tufts of grass, a dog was nosing about – the same one, thin, long-muzzled. It sniffed, stopped, and looked his way, ready to bolt at any moment.
Maciek smiled, for the first time in many days.
“You’re alive,” he muttered.
Over the days that followed the dog returned. At first it kept its distance. Then it would sit on a hillock and watch for hours as the man bustled about the sheaves. Every day it was a little closer – a few paces, no more, as if testing how far it was allowed. # dalej
-> uplyw_czasu

// Wspólny akapit o trzcinie na dach — skąd ją brał, zależy od miejsca chaty.
= trzcina
The walls now stood true, and the rafters held firm. The roof was all that was left. For thatch he needed reeds – a great many reeds, more than one would think from looking at the hut alone.
{ chata_macka:
    - przy_lesie: The nearest grew at the edge of the marshes, half an hour’s walk away, so he had to haul every sheaf across the whole meadow.
    - przy_mokradlach: They grew almost at his threshold, thick and tall, except that he had to wade out for them through cold mud up to his knees.
    - else: They grew all round the shore, taller than he was, and rustled at every gust like someone whispering behind his back.
}
->->

= uplyw_czasu
The days went by. The snows melted away entirely, even in the deepest shade beneath the forest. The earth stopped steaming and grew warm under a bare foot. At the forest’s edge the anemones came into flower – white, thick as hoarfrost – and on the wet ground marsh marigolds glowed gold.
Maciek had long been without bread. He lived on what he found for himself or what Andrzej brought him. In the marshes he gathered overwintered cranberries, sour and wrinkled but still fit to eat. From wild rose bushes he plucked last year’s hips, hard as beads. In the meadow he picked sorrel, which he chewed raw, and in damp nooks under the trees he found wild garlic. He also tapped the birches and drank the sweetish sap that dripped from them till morning. Hunger did not leave him, but it was something a man could live with.
The roof grew from day to day. Sheaf by sheaf, layer upon layer. # dalej
-> wieczor


// ------------------------------------------------------------
//  Wieczór — stwór w zaroślach.
// ------------------------------------------------------------
=== wieczor ===
# tlo: zmierzch
That day Maciek was laying sheaves right up by the ridge. Only one more course was missing, perhaps two. His hands shook with weariness, and the sun had slipped below the horizon, leaving a dirty red across the sky.
He climbed down from the roof and sat by the shelter. He meant to rest only a moment, while it was still light. He leaned his head against a trunk, closed his eyes…
…and fell asleep.
It was the silence that woke him.
There were no crickets to be heard, no frogs, no wind. Everything around was sunk in mist, thick and white, reaching to his knees. Maciek did not know how long he had slept. He knew only that something was wrong – he felt it in body and soul before his mind understood.
A sound rang out. Not a howl, nor a scream, but something in between: a long, guttural moan that broke into the crack of snapping branches. Something leapt with a crash into the thicket – close by, not far from the shelter. # pokaz: oczy
Maciek sprang to his feet. The axe found its own way into his hands. He gripped it so hard his knuckles went white, and stared into the darkness from which the footsteps came – slow, heavy, ever nearer. # dalej
{ los_psa == nakarmiony: -> obrona | -> zdobycz }

= zdobycz
# tlo: zmierzch_zdobycz
The bushes parted. A figure emerged from the mist. # pokaz: topielec
It was taller than a grown man by a good three heads. It stood on two legs, but hunched, with clawed hands hanging almost to the ground, and long hair dripping with bog-water. It had a human shape – and was no human at all. In its jaws it held something large and limp that drooped down on both sides of its head.
Maciek knew it at once, though he would rather not have. # pokaz: cialo
The figure clamped its jaws shut. There was a crack – loud, wet, like dry branches snapping, except that it was not branches. Then the creature turned and sped off towards the {chata_macka == przy_mokradlach:nearby }marshes, so swiftly that the mist swirled behind it like water.
Maciek could not move. He was shaking all over, cold sweat ran down his back, and his legs had gone weak as wool. The axe hung heavy in his hands, useless. He stood like that a very long time, until the darkness grew quiet again.
-> strach_o_chate ->
At last he crawled into the shelter. For a long time he could not close his eyes and lay listening, until, worn out by work and fear, he fell asleep. # dalej
-> zgliszcza

= obrona
# tlo: zmierzch_obrona
The bushes parted. In the gloom two eyes blazed – high up, too high for a wolf or a boar. The figure stood in the thicket on two legs, hunched, with arms hanging almost to the ground and long hair dripping with bog-water. It had a human shape – and was no human at all. # pokaz: topielec
Maciek could not move. He was shaking all over, cold sweat ran down his back. The eyes stared straight at him and slowly, very slowly, drew nearer.
From far off came barking.
The dog burst out of the darkness like an arrow and planted itself between Maciek and the thicket. Its hackles rose; it braced its legs and bayed – loudly, fiercely, without a moment’s pause, though it was trembling all over. Thin, young, its tail tucked under – and it did not give back a single step. # pokaz: pies
The eyes stopped. The figure hesitated, let out a guttural hiss – and then turned and, with a crashing of branches, sped off towards the {chata_macka == przy_mokradlach:nearby }marshes, the mist swirling behind it like water.
-> strach_o_chate ->
~ los_psa = oswojony
~ ekwipunek += pies_towarzysz
It was a long time before Maciek came to himself. At last he sank to the ground by the shelter, breathing heavily as after a long run. The dog stopped barking. It came up to him uncertainly, head lowered – and wagged its tail, prouder of itself than anyone in the world.
Maciek held out a shaking hand. The animal sniffed it, then let itself be stroked.
“Good dog,” he whispered. “Good,” he breathed out.
That night they went into the shelter together. The dog lay down at the entrance, its head towards the thicket. Maciek kept watch a long while yet, listening to the darkness, until sleep overcame him. But he was no longer alone. # tobolek # dalej
-> zgliszcza

// Tylko gdy chata stoi przy mokradłach — stwór uciekł właśnie tam.
= strach_o_chate
{ chata_macka == przy_mokradlach:
    And then it dawned on him that the creature had not fled far. It had vanished into the bog a few dozen paces from the shelter – where he himself had slept, eaten and worked for a month. Perhaps it had been there from the start. Perhaps every night, as Maciek listened to the gurgling of the black water, something on the other side had been listening to him. “You don’t build there. There you only drown” – the words of the people at the well came back to him. For the first time since the day he began building, he thought he might have made a mistake. That perhaps he ought to have listened.
}
->->


// ------------------------------------------------------------
//  Zgliszcza — poranek po nocy z topielcem, dokończenie dachu,
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
# tytul: The Ashes
Dawn began to break. Maciek woke stiff and chilled through. For a moment he did not know whether what he had seen in the night had truly happened. Then the crack of snapping branches came back to him, and a shudder ran through him.
{ los_psa == oswojony:
    The dog lay at the entrance to the shelter, head on its paws, gazing towards the marshes. It was already awake. Maciek had the feeling it had kept watch like that until dawn.
- else:
    The shelter was quiet. Maciek looked outside. The grass by the thicket had been flattened in a broad swathe, smeared with silt, and it reeked of the bog{chata_macka != przy_mokradlach:, though the marshes were far off}. The swathe led {chata_macka == przy_mokradlach:towards the black water|in their direction}, and drops of blood darkened on the blades. # pokaz: slady
}
He went over to his unfinished hut and sat down on its threshold. He sat and stared ahead. Thoughts churned in him like the mist over the village. Run. Leave everything while he was still alive, and never come back. And on the other hand – more than a month’s labour, blisters on his palms, the last slices of bread. Every log in those walls he had hewn himself. And where was he to go? To another man’s field, once again for a bowl of porridge? He had promised, after all, that he would bring his family here. That they would have a roof of their own.
# pytanie: What will Maciek decide?
*   [Stay. He has put too much into this place.]
    -> zostaje
*   [Pack what he has and leave while there is still time.]
    -> odchodzi

= zostaje
He stood up, brushed off his trousers and looked at the roof. One course of reeds was left, perhaps two.
“I didn’t build all this just to run away now,” he said aloud, so that something more than the {chata_macka == przy_lesie:trees|reeds} would hear him. # dalej
-> dach_gotowy

= odchodzi
~ chcial_odejsc = true
He slung his bundle over his shoulder and set off uphill towards the high road. He strode fast, without looking back. Only on Beech Ridge did he stop and look down.
The hut stood there, small and unfinished, its roof like a sentence broken off. His hut.
{ los_psa == oswojony: The dog followed him a little way, then sat down halfway up the slope and watched – now him, now what lay behind – as if waiting for Maciek to understand on his own. }
Maciek did not move until the sun had risen over the forest. Then he turned back. Not because he had stopped being afraid. He had nowhere to go, and that was all. # dalej
-> dach_gotowy

= dach_gotowy
He laid the last sheaves of reed by noon. He bound them with bast, pressed them down with poles and climbed down the ladder. For the first time since coming to Zapadlina he stood before a finished hut – his own, from sill beam to ridge. # pokaz: dach
That night he slept in it at last. The walls smelled of resin and damp clay, and moonlight squeezed in through a crack in the door.
There was no bed yet, but at least he had a roof of his own over his head. Here, at home, for the first time in weeks he slept the night through without waking.
{ los_psa == oswojony: The dog settled on the threshold, and from that night on yielded it to no one. }
In the morning Maciek went to the only man he trusted. He had to tell someone. # dalej
-> u_andrzeja

= u_andrzeja
# tlo: izba_andrzeja
Andrzej’s cottage stood on a hillock, away from the water. The room smelled of smoke and was cramped. Staś, the householder’s son, sat on the bench at the table, whittling a stick with a little knife. At the sight of the guest he grinned from ear to ear.
Maciek began from the very beginning: the silence, the footsteps, and… the figure three heads taller than a man, its hair dripping with bog-water.
Andrzej listened, then suddenly burst out laughing.
“Hunger’s been playing tricks on you, man. Shake it off. A month on bread and water – you could see the Archangel Michael himself.”
Staś stopped whittling. He stared at the newcomer open-mouthed, fear in his eyes.
“Is it true?” he asked.
# pytanie: What will Maciek do?
*   [Firmly confirm it is true, and tell the whole of it in front of the boy. Let him know what he must beware of.]
    ~ stas_zaufanie = true
    -> prawda_przy_chlopcu
*   [Smile and put the boy off, saying it was most likely only a dream, but ask Andrzej to send him away, and tell him everything in detail, in private. These are no things for a child.]
    -> w_cztery_oczy

= prawda_przy_chlopcu
“Yes, it’s true. Let the lad listen. Better he’s afraid than goes off to the bog alone and never comes back.”
The householder looked at his son, then at Maciek. The smile slowly faded from his face.
-> dziad_opowiadal

= w_cztery_oczy
“Well, now… it was likely just a bad dream,” he replied.
Yet he asked his friend for a word in private. Andrzej sent Staś to fetch water. The boy went out reluctantly, leaving the door ajar. Neither of the men noticed.
-> dziad_opowiadal

= dziad_opowiadal
“Three heads taller, you say,” Andrzej spoke at last, no longer laughing. “And hair wet from the bog.” For a long while he turned an empty bowl in his fingers. “My grandad used to tell of something like that. I thought he was only frightening us children.”
Once more, step by step, Maciek went through that whole night. # dalej
-> legenda


// ------------------------------------------------------------
//  Legenda o wiedźmie znad jeziora — opowiada Andrzej.
// ------------------------------------------------------------
=== legenda ===
# tlo: legenda
“They say it all began there, by the lake, where those charred logs lie.” Andrzej lowered his voice. “A woman lived there once. A herbwoman. Folk came to her with aches, sickness and fever – and she turned no one away. But in time something got into her. Nobody knows why. She’d talk at night, but not to herself – to someone nobody could see. Some said to the drowned, others to the old man in the moss hat who came calling on her from the forest side. She herself kept saying the dead came up out of the water and told her of a terrible future. Soon everyone shunned her, for they were afraid.
“After that, things went from bad to worse in the village. Milk soured in the pails, little ones woke screaming, vegetables rotted in the ground. Beasts went missing too – first a calf, then a cow, then a whole henhouse in a single night. People said it was her doing, and began to call her a witch.
“One night a few of the men gathered outside her hut. They boarded up the door while she slept, banked straw against the walls and set it alight.” # pokaz: chlopi, ogien
Andrzej fell silent for a moment.
“Grandad said she screamed to the very end. Not from the pain, Maciek. She was cursing. The village, the land, everyone who lives here and everyone who ever will. That no one would know peace till those who visit her had slaughtered every last soul here. You could hear her moaning, too, as she flung out the words of the curse: ‘The bones of your children shall be broken, and their blood drunk…’” Andrzej rubbed his face with his hand. “And he said as well that at the edge of the forest, while the hut was burning, someone tall stood watching. Nobody went to see who.”
“Dreadful… And the ones who burned her?”
“Not one of them lived to see the winter. One after another they lost their wits. Talked to themselves, never slept, wandered down to the water in the dark. Till at last they all walked into the bog and never came out. Those who saw them last said there was something strange in their eyes. As if a little lamp were smouldering in each one.” # pokaz: wegielki
Andrzej leaned towards him.
“It’s their eyes that wink over the marshes at night. Not marsh lights, nothing of the kind. They stand out there keeping watch – luring folk in.”
{ chata_macka:
    - przy_mokradlach: Maciek felt the cold clench in his stomach. Every night he had seen those little lights from his own threshold. He had thought it was rotting wood or bog vapours. That it was only light.
    - nad_jeziorem: Maciek went pale. He had shoved those logs into the reeds with his own hands. He had built his hut exactly where hers had burned.
}
{ stas_zaufanie:
    Staś sat motionless, the unfinished stick in his hand. # dalej
- else:
    Something creaked softly behind the door left ajar. When the householder looked out, there was only a pail of water standing in the passage. Staś was already far off across the yard. # dalej
}
-> zgliszcza_wiedzmy


// ------------------------------------------------------------
//  Zgliszcza chaty wiedźmy w trzcinach nad jeziorem.
// ------------------------------------------------------------
=== zgliszcza_wiedzmy ===
# tlo: zgliszcza
~ zapiski += zielarka_1
On his way back from Andrzej’s, Maciek could not stop thinking about the burnt remains.
{ chata_macka == nad_jeziorem: Now that he knew what they were, he saw them every time he looked into the reeds by his home. Black, charred logs jutting out like ribs. }
Something within him urged him to look them over closely, though he was afraid.
# pytanie: What will Maciek do?
*   [Go to the ruins and search through the ashes.]
    -> przeszukuje
*   [Keep well away from them.]
    -> omija

= przeszukuje
~ przeszukal_zgliszcza = true
~ ekwipunek += figurka
He parted the reeds with his axe and knelt by the blackened logs. The ash was cold, packed and damp. He rummaged in it a long time, until his fingers struck something hard. # pokaz: maciek
A small wooden figurine, charred on one side. A human shape with arms too long, reaching down to its feet.
Maciek turned it over in his hands. He thought he might trade it in town for something to eat, so he kept it.
{ los_psa == oswojony: The dog, which had been sniffing along the shore, backed away and growled softly at his pocket. }
After a moment he spotted something else in the ashes.
“It can’t be,” he whispered, drawing a blackened flint and steel out of the cinders. “Was this what they set the witch’s hut alight with?”
# pytanie: Will Maciek take the flint and steel?
* [Yes – cursed or not, it will let him light fires and cook warm meals.]
    ~ ekwipunek += krzesiwo
    -> wieczor_przy_chacie
* [No – he will not risk a curse that might fall upon him.]
    -> wieczor_przy_chacie

= omija
{chata_macka == nad_jeziorem:He could not avoid the reeds at his own threshold, but from then on, whenever he left the hut, he turned his eyes away from them.|He gave the lake a wide berth and never once looked towards the reeds.} Some things are better left alone. # dalej
-> wieczor_przy_chacie


// ------------------------------------------------------------
//  Wieczór przy chacie — ogień (jeśli ma krzesiwo) i plan wyprawy do miasta.
// ------------------------------------------------------------
=== wieczor_przy_chacie ===
{ chata_macka:
    - przy_lesie: # tlo: wieczor_las
    - przy_mokradlach: # tlo: wieczor_mokradla
    - else: # tlo: wieczor_jezioro
}
{ ekwipunek ? krzesiwo:
    In the evening Maciek gathered dry twigs and laid them in a ring of stones in front of the hut. The flint and steel lay strangely heavy in his palm. For a while he studied it, wondering whose hands had held it last. Then he struck once, twice, three times – and a spark began to glow in the tinder. # pokaz: ogien
    The fire flared up brightly, and the warmth splashed against his face so suddenly that his head swam. For weeks nothing hot had passed his lips. Now he cooked a soup of nettles and sorrel in a clay pot. He ate slowly, burning his mouth, and nothing in the world had ever tasted so good to him.
    { los_psa == oswojony:
        The dog lay down on the other side of the fire. The flames were mirrored in its eyes, and it gazed into them as if spellbound. # pokaz: pies
    }
- else:
    The evening fell cold and dark. Maciek ate a handful of raw sorrel and a few wrinkled cranberries, washed them down with water and sat on the threshold.
}
For a long while he sat looking towards the high road, laying out a plan in his mind. The hut was ready. It was time to set off for town – to buy bread, salt, perhaps some groats.
{ ekwipunek ? figurka: He would try to sell the figurine – perhaps someone would pay for such a curiosity. }
And then, as soon as he had gathered his strength, he would bring his family here. To the home he had built with his own hands. # dalej
-> droga_do_miasta


// ------------------------------------------------------------
//  Droga do miasta — kręta ścieżka między mokradłami, głos znad wody.
// ------------------------------------------------------------
=== droga_do_miasta ===
# tlo: sciezka
He set out at dawn. It was six hours’ walk to town, and the first stretch led along a winding path between the marshes, uphill all the way to Beech Ridge. He walked briskly, though his stomach growled with hunger. He thought of his wife and his little son – of how they would stand for the first time on the threshold of the new hut. Longing gripped him by the throat.
{ los_psa == oswojony:
    The dog trotted close at his side, merrily wagging its tail. # pokaz: pies
}
Mist lay low over the black water. The path was narrow, in places so sodden that he had to leap from tussock to tussock. Maciek trod carefully, head bowed. He remembered what people said: you must not look into that water too long.
Halfway along, though, something made him raise his eyes. Deep in the marshes a pale little light glimmered. Day had fully broken, yet it was still there. It winked slowly, evenly, as if someone stood holding a lamp, keeping watch. # pokaz: swiatelko
Then he heard his name.
“Maaaciek…”
Softly, long-drawn, from over the water. In a voice that sounded like his beloved wife’s.
She had always called him like that when something was wrong. But she had stayed behind at the manor farm beyond the town, and was to wait for him there… Perhaps he was only imagining it. Or perhaps it was the bog calling him to itself.
# pytanie: What will Maciek do?
* [Go towards the voice – perhaps his wife needs help.]
    { los_psa == oswojony: -> ratunek | -> utoniecie }
* [Keep his eyes ahead and walk on – it surely cannot be her.]
    -> nie_odwraca_sie

= ratunek
# tlo: sciezka_po
~ pies_uratowal = true
He took one step off the path, then another, pushed past the thicket and leapt across the sucking mud. The bog squelched and seized his ankles with icy fingers. He felt it drawing his legs beneath the surface. Then the dog sprang, caught his homespun coat in its teeth and yanked him backwards with all its might. Maciek fell flat on his back and cried out. The light went out as if blown, and somewhere in the mist a soft giggle sounded.
He lay in the mud, panting, while the animal stood over him, growling towards the marshes until the mist closed over the water. # pokaz: upadek # dalej
-> na_grzbiecie

= utoniecie
// Bez psa: Maciek idzie za głosem i tonie — ale przeżywa. Ratuje się krzesiwem albo ratuje go Andrzej;
// bagno zabiera figurkę (zostaje tylko spokojne zakończenie) i zostawia na łydkach sine pręgi.
# tlo: sciezka_ratunek
~ pregi_na_lydkach = true
He took one step off the path, then another, pushed past the thicket and leapt across the sucking mud. The bog squelched and seized his ankles with icy fingers. He felt it drawing his legs beneath the surface. The voice drew ever nearer – warm now, familiar, the one he had been longing for these many weeks.
“Maaaciek…”
He stood still, sunk to his knees already, then to his waist. He did not feel the cold. He felt only that someone dearly loved was coming close.
Only when the black water reached his chest did he understand. He jerked, but something held him by the calves – something that had fingers. The little light winked right before his face, and Maciek saw that it was no lamp. They were eyes – just as Andrzej had told. # pokaz: oczy
{ ekwipunek ? krzesiwo:
    Then he remembered the flint and steel he had carried inside his shirt ever since that day. With numb hands he tore it out together with the tinder and struck – once, twice – just above the water. The third spark leapt straight into the eyes. Something in the water hissed like a log thrown on a fire, the grip on his calves slackened, and the light went out as if blown. Maciek threw himself backwards, clutching at tufts of grass, tearing them out by the fistful, until at last he crawled out onto the path. # pokaz: iskry, ratunek
    { ekwipunek ? figurka:
        ~ ekwipunek -= figurka
        ~ figurka_w_bagnie = true
        On the path he felt that his pocket was light. The charred figurine must have slipped out in the bog. For a moment he thought he could still see it – a small dark shape slowly sinking into the depths – and then there was nothing. # pokaz: figurka
        He did not go back for it. Not for anything in the world.
    }
- else:
    ~ uratowal_andrzej = true
    “Maciek! Grab hold!”
    A long pole slapped onto the water right beside him. On the causeway stood Andrzej, in muddy bast shoes, a basket slung over his shoulder – at dawn he had been checking his fish traps by the floodwaters. Maciek clung to the shaft with both hands. His neighbour braced himself and grunted, while the bog pulled its own way, until at last it let go with a grudging smack. The wisp winked once more and went out. # pokaz: andrzej, ratunek
    “Told you,” Andrzej panted, as the two of them lay in the mud. “Don’t heed voices from over the water.”
    { ekwipunek ? figurka:
        ~ ekwipunek -= figurka
        ~ figurka_w_bagnie = true
        On the causeway Maciek felt that his pocket was light. The charred figurine must have slipped out in the bog. For a moment he thought he could still see it – a small dark shape slowly sinking into the depths – and then there was nothing. # pokaz: figurka
        “It’s taken its due,” Andrzej muttered, and spat over his left shoulder.
    }
}
On both calves, where the thing had gripped him, he was left with livid weals – long, narrow, five on each side. They did not fade that day, nor ever, to the end of his life. # dalej
-> na_grzbiecie

= nie_odwraca_sie
He clenched his teeth and walked on, step by step, without turning his head. The voice called twice more, ever fainter. Then it fell silent. # dalej
-> na_grzbiecie

= na_grzbiecie
# tlo: zapadlina
// Kto poszedł za głosem (pies go wyciągnął albo bagno puściło), już się odwrócił — dla niego inny tekst.
{ pies_uratowal || pregi_na_lydkach:
    He climbed the rest of the way as if in a dream – {pregi_na_lydkach:soaked to the chest|soaked to the waist}, caked in silt, with {pregi_na_lydkach:calves on which he could still feel another’s fingers|ankles that still felt the bog’s icy grip}.{ los_psa == oswojony: The dog never left his side and kept glancing back at the water.}
    On Beech Ridge he sat down on a stone, and only there did his hands stop shaking. Below lay Zapadlina – quiet, covered in mist as in a shroud. Somewhere down there stood his hut.
- else:
    On Beech Ridge Maciek at last dared to look back. Below lay Zapadlina – quiet, covered in mist as in a shroud. Somewhere down there stood his hut.
}
Then he set off along the high road towards the town. # dalej
-> miasto


// Koniec prologu — dalej rozdział pierwszy z Jaromirem.
=== prolog_ciag_dalszy ===
# ozdobnik
_End of the Prologue._ # dalej
-> rozdzial_pierwszy
