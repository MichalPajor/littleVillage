// ------------------------------------------------------------
//  Rozdział pierwszy — Lato. Dzieciństwo Jaromira, około pół
//  wieku po prologu. Przebieg zależy od zakończenia prologu:
//    figurka_u_staruchy — dom na pagórku obok Stasia, milczący ojciec
//                         (z psem żyje jeszcze babka Marianna);
//    inaczej            — chata dziadka Maćka (las / mokradła / jezioro),
//                         ojciec opowiada legendy jak bajki.
// ------------------------------------------------------------

=== rozdzial_pierwszy ===
// Czy Maciek miał krzesiwo — babka Marianna może je oddać wnukowi w rozdziale 4.
~ krzesiwo_dziadka = ekwipunek ? krzesiwo
// Nowy bohater — Jaromir zaczyna z pustym tobołkiem (przedmioty Maćka zostają w prologu).
~ ekwipunek = ()
# nowy_tobolek
# tlo: zapadlina_lato
# rozdzial: Chapter One
# tytul: Summer
The Zapadlina in which Jaromir grew up was a different village from the one his grandfather had come down into with his bundle years before. There were more houses now – nine of them, scattered over the slopes and meadows like grain flung by the handful across a field. The woods had given way a little to the axe, the crops reached further, and a sturdy footbridge of oak logs led across the marshes. Wayside shrines stood in great numbers along the roads, always decked with fresh flowers. The mist was still fond of this valley, and in summer it lingered there past sunrise. The country round about had changed too: beyond Beech Ridge, an hour’s walk from Zapadlina, Bukowiec had sprung up – a bigger and more prosperous settlement, with a mill, an inn and a school, and right beside the school a little wooden church, where an old priest had come to live. Folk went to town now only for fairs and the great church feasts.
{ figurka_u_staruchy:
    Jaromir lived in a cottage on the hill, next to the farmstead of old Staś, with whom his father had grown up like a brother. The house was small but warm, with whitewashed walls and a reed roof, and from its threshold you could see the whole of Zapadlina – the fields, the meadows, the lake and the dark line of the forest to the east.
- else:
    { chata_macka:
        - przy_lesie: Jaromir lived in the hut below the woods, the very one Grandfather Maciek had built. His father had added a second room and a barn. Under the window grew an apple tree, planted on the day his son was born, and on the north side stood wild plum trees that often dropped small, green, unripe fruit. Beyond the low fence the forest began – in summer it smelled of resin and mushrooms, and on sweltering afternoons it gave a shade where you could lie about till dusk if you pleased.
        - przy_mokradlach: Jaromir lived in the hut by the marshes, the very one Grandfather Maciek had built – on a stone footing that in half a century neither water nor frost had shifted. His father had added a second room and a barn. Under the window grew an apple tree, planted on the day his son was born, and on the north side stood wild plum trees that often dropped small, green, unripe fruit. Beyond the low fence stretched meadows where storks strutted, and at dusk a chorus of frogs rose from the floodwaters, so loud that it drowned out even the crickets.
        - else: Jaromir lived in the hut by the lake, the very one Grandfather Maciek had built. His father had added a second room and a barn. Under the window grew an apple tree, planted on the day his son was born, and on the north side stood wild plum trees that often dropped small, green, unripe fruit. From the threshold to the water was barely a few dozen paces, and in summer the boy covered them at a run so many times a day that he wore a path of his own through the grass.
    }
}
His father, Dobrosław, was by then a man well on in years, with a greying beard and hands cracked from toil. { figurka_u_staruchy: He spoke little and laughed still less. When he sat on the threshold of an evening, he would gaze a long while towards the marshes, as if watching for something out there. He loved his son in his own way – in silence, with a heavy hand on the shoulder and the best piece of meat slipped into his bowl. | He liked a joke, and in the evenings he told stories he had heard from his own father – about creatures from the bogs and the herbwoman from the lake. Jaromir listened with bated breath, though he knew they were only fairy tales. }
His mother, Agnieszka, was a good fifteen years younger than her husband. She smelled of bread and oven smoke, sang at every task and could never stay cross for long.
{ figurka_u_staruchy && los_psa == oswojony:
    In the corner of the room, on a stool, sat Grandmother Marianna, bent and quiet. Now and then she stroked her grandson’s head and looked at him as though she saw someone else in him.
}
The boy spent little time indoors. Summer belonged to him – the whole of it, from the first heat until the harvest – and his days were almost all alike, and yet not one of them resembled the day before. # dalej
-> poranek

= poranek
# tlo: poranek
He was woken by the crowing of the cock and a shaft of light that squeezed through the crack in the shutter and lay across his face in a golden stripe. For a while he lay on under the featherbed, listening to his mother bustling about the stove – to the bubbling of water boiling in the pots, the crackle of the fire stoked up under the iron plate, the creak of the floorboards beneath her steps. From the main room drifted the smell of milk and freshly baked bread.
Then he would remember that it was summer, and spring out of bed as if scalded.
He ate his breakfast almost standing up. A thick slice of bread spread with butter, a mug of milk straight from the cow, still warm, and sometimes white cheese. His mother shook her head with a smile.
“Do sit down, son. Nobody’s going to take it from you. There’ll be day enough left for your games with the others.”
# pytanie: What will Jaromir do?
*   [Sit down and eat properly, as his mother asks.]
    He sighed and perched on the edge of the bench, and for his reward he got a kiss on the forehead and a spoonful of honey on his bread. He ate quickly but finished every crumb, and when the mug was empty he only called out, “I’m off to the neighbours!” and was gone. # pokaz: jaromir
    -> poranek_dalej
*   [Grab a slice and dash out.]
    -> poranek_bieg

= poranek_bieg
But he was already wiping his mouth on his sleeve and was at the door. Before his mother could tell him to be careful, he only shouted, “I’m off to the neighbours!” and was already racing across the yard, scattering the hens, which fled cackling from under his feet. # pokaz: jaromir
-> poranek_dalej

= poranek_dalej
At daybreak the grass was cold and wet with dew, and his boots were soon soaked through. It smelled the way it smells only at that hour – fresh, green, a little like a cucumber cut in half. Shreds of mist still hung over the meadows, but the sun was already driving them off, and in every drop on the blades a tiny spark kindled. Larks rose into the sky and sang so high up that there was no making them out.
At Staś’s they were already waiting for him. Franek, the eldest of the farmer’s grandsons, was a big lad, four years older than Jaromir. His brother Antek, two winters younger than him, was poking at the ground with a stick, scratching out a little channel to lead water from one puddle to the next. Soon Hanka, the smith’s daughter, came running from the direction of the lake, her plait bouncing on her back. # pokaz: dzieci
“What are we doing today?” Franek would ask, though they all knew he would decide himself in any case. # dalej
-> wojna

= wojna
# tlo: laka_bitwa
Most often it began with war.
Every one of them had a sword – a peeled stick of hazel or willow, sharpened at the end. Jaromir wore his tucked into his belt, and when he had to part with it, he always put it back in its place: in the corner of the barn. There was no straighter weapon in the whole village – smooth from constant handling and dark with the sweat of his palm. { figurka_u_staruchy: His father had helped him sharpen the sword without a word, one evening by the threshold. | His father had helped him whittle that sword, laughing that with it he looked like a knight from a fairground picture, and that with such a blade a body could slay a dragon. }
The enemy was the weeds. Along the field balks and ditches they grew in countless armies: mountain parsley with umbels as big as plates, thistles bristling with purple heads, and nettles reaching right up to your ears. The children charged into the meadows with a war cry that sent the sparrows flying. Sticks whistled through the air, stalks snapped with a juicy crack, and prickly heads flew in all directions. # pokaz: bitwa
After every battle came the time for tending wounds. Often enough these were knees skinned bloody, calves covered in blisters from nettle stings, scratched forearms and hands. Hanka knew a cure for everything: she laid plantain leaves on the stings and told you to hold them there until the burning stopped. Nobody cried – well, perhaps Antek sometimes, but only a little, and straight afterwards he pretended it was sweat running into his eyes.
Afterwards they flopped down in the grass, breathless and happy, and lay on their backs with arms flung wide. Above them sailed white clouds in which each of the children read something different – a horse, a ship, an old hag with a broom, a bear. It smelled of sun-warmed earth, camomile and crushed greenery. Somewhere close by a bumblebee droned, and grasshoppers shot out from under their hands like sparks from a bonfire. # dalej
-> luki

= luki
# tlo: luki
When they grew tired of swords, the time came for bows.
~ ekwipunek += nozyk
The best were of hazel, which grew thick on the edge of the woods – straight, supple and strong. Franek would pick a branch of the right length – as long as he was tall – and Jaromir shaved it down with the little knife his father had given him on his name day. You had to take care not to pare away too much wood in one place, or the bow would snap at the first draw. For the string they used thick twine filched from his mother’s basket or – on better days – a length of cobbler’s waxed thread.
The arrows they made of hazel too, but much thinner. There were no arrowheads – instead they sharpened the tip until it pricked like a thorn, and at the other end went fletching of paper or of feathers gathered from farmyards all over the village.
The target was a sheaf of straw set up on the field balk, with a circle daubed on it in soot. The string twanged by the ear like a wasp, the arrow gave a short whistle, and then came a dull “thock” as the sharpened point drove into the straw. The shafts flew fairly true, striking the ground or the mark, and sometimes soaring high into the sky. Hanka was the best at it. She would squint one eye, poke out the tip of her tongue and never miss once – and the boys, though nothing on earth would have made them own it, admired her for that more than for anything else. # pokaz: hanka
# pytanie: Will Jaromir take on Hanka?
* [Yes – challenge her to a match.]
    ~ celny_strzal = true
    He lost, of course. Hanka hit the target every time, and his arrows mostly came down in the corn. But the next day he was at the field balk even before her, practising until his fingers went numb.
    -> luki_dalej
* [No – practise alone, away from the others.]
    He went off to the far end of the field balk and shot at an old stump until his shoulder ached. No one saw how often he missed, and that was best.
    -> luki_dalej

= luki_dalej
Once Jaromir hit the very centre of the circle. For the rest of the day he went about so proud that he even forgot his dinner, and his mother had to call him over and over again. # pokaz: trafienie # dalej
-> lato_baza

= lato_baza
# tlo: baza
But the most important place in the world was the den.
It stood – or rather hung – in the crown of the old elder that grew at the edge of the meadow, so wide-spreading that several cows could have hidden in its shade. They had built it over one long summer. The boards they hauled from wherever they could: from a tumbledown pigsty, from a fence nobody mended any more, {figurka_u_staruchy:from the barn of Staś, who shook his head but did not forbid it|from the barn of Jaromir’s father, who pretended not to see a thing}. They fixed them with nails hammered straight stone on stone, and where those ran out they tied them with string. Up to it went a ladder of rungs lashed to the trunk. The den always smelled of warm wood and elderflower, so sweetly that after an hour your head would spin. Through the cracks between the boards fell thin shafts of sunlight with dust dancing in them, and when the wind blew, the whole crown swayed and creaked, as if the den were a boat on rough water.
Inside there was room for five if they sat close – so for four it was quite comfortable. They had everything needful up there: a treasure chest holding coloured pebbles, feathers and little shells, and in case of attack – a quiver of arrows, a bow and the “swords”.
# pytanie: What will Jaromir put in the treasure chest?
*   [A shell from the lake, white as milk.]
    ~ skarb_jaromira = muszelka
    He wrapped it in a burdock leaf and hid it at the very bottom.
    -> baza_dalej
*   [A jay’s feather, blue as the sky after a storm.]
    ~ skarb_jaromira = pioro
    He laid it on top, so that it would shine out the moment the lid was lifted.
    -> baza_dalej
* [A rusty nail which – so he claimed – had once dropped from a real knight’s armour.]
    ~ skarb_jaromira = gwozdz
    He wrapped it in a rag like a holy relic. Franek snorted with laughter, but Antek gazed at the nail with respect.
    -> baza_dalej

= baza_dalej
It was loveliest there in a downpour. A summer storm came on suddenly, a dark bank rolling in from beyond the woods, and before the children could reach their homes the first heavy drops were falling. Then they scrambled up into the den and sat huddled under the plank roof, which let a little through all the same. The leaves roared like the sea, which none of them had ever seen, thunder rolled over the village, and the air smelled of rain, wet wood and flowering elder. After the storm the meadow steamed, and a rainbow stood in the sky. # pokaz: burza # dalej
-> lato_jezioro

= lato_jezioro
# tlo: jezioro_lato
When the sun climbed to its height and the heat began to shimmer over the fields, the whole band set off for the lake. They raced across the meadow, flinging off their shirts as they went, and plunged shrieking into the water till the spray flew heavenwards. Near the shore it was shallow and sandy, the water warmed by the sun as in a tub, and tiny fish tickled their feet. Franek showed off by diving headfirst from a fallen trunk, while Antek sat in the shallows catching tadpoles in his hands. It smelled of rushes and warm mud, and dragonflies darted over the water. # pokaz: kapiel
{ figurka_u_staruchy: Jaromir never went in deeper than his waist. His father had forbidden it once, curtly and so sternly that the boy did not dare ask why. Just as firmly he had told him to keep away from the marshes and from the reeds on the western side, where some hut was said to have stood long ago. | On the western shore, in the reeds, black stumps of charred logs still jutted from the ground. The children frightened one another with them, telling the story of the burnt herbwoman – the same one Jaromir’s father would spin of an evening – but in broad sunlight nobody was afraid. }
{ figurka_u_staruchy:
    That day Franek swam out into the deep water and called for Jaromir to join him.
    # pytanie: Will Jaromir obey his father?
    *   [Stay by the shore.]
        He shook his head and did not stir from the shallows. From far off came a cry of “Coward!”, but a moment later they had all forgotten and went on splashing.
        -> jezioro_dalej
    *   [Swim out to Franek.]
        ~ odwaga_jaromira = true
        He took one step, then another. The water reached his chest and all at once turned icy, and something slippery brushed against his calf. He backed away so fast that he swallowed a mouthful and choked. He told no one about it – and least of all his father.
        -> jezioro_dalej
- else:
    That day Franek bet that nobody would dare to touch the charred logs.
    # pytanie: Will Jaromir take the wager?
    * [Touch them – he is no coward, after all.]
        ~ odwaga_jaromira = true
        He pushed through the reeds and laid his hand on the tallest of them. The wood was cold, though the sun had been blazing since morning, and the boy snatched his hand back faster than he had meant to. Everyone reckoned it the bravest deed of that summer.
        -> jezioro_dalej
    *   [Stay with the others on the sand.]
        He shrugged and did not budge. Franek went alone, touched the black wood with a fingertip and came back at a run, pretending he was in no hurry at all.
        -> jezioro_dalej
}

= jezioro_dalej
After bathing they dried off on the grass, lying on their bellies, and ate what the woods had given: wild strawberries, bilberries that turned teeth and tongues black, and sour sorrel leaves chewed to cool the mouth. Sometimes someone brought a cucumber or a bit of cheese from home, and they shared it fairly, into as many pieces as there were mouths. In the Wójciks’ orchard the cherries were ripening, and the farmer slept so soundly after his dinner that he never heard anyone shaking the branches.
The heat lay over everything like a warm featherbed. The crickets chirred so loudly you would think whether the sun set at all depended on their fiddling. From the swaths the peasants were turning with their rakes came the scent of hay, and from the field balks wafted the sweetness of wild thyme and clover. Bees hummed in the lime trees, butterflies settled on the flowers, and time flowed so slowly that the day seemed to have no end. # dalej
-> lato_wieczor

= lato_wieczor
# tlo: wieczor_lato
And yet it always ended. The sun slid down behind the lake, the shadows stretched across the meadow until they reached from one side of it to the other, and the sky above the water took on the colour of ripe raspberries. The air cooled and smelled of mown grass and chimney smoke, and from the marshes the first frogs struck up – first one, then dozens, until the whole valley croaked like a single great choir. Then from one farmyard after another the calling would begin.
“Jaroooomir! Hooooome!” # pokaz: matka
# pytanie: Will Jaromir go home at once?
*   [Run home straight away.]
    His mother’s voice carried across the whole village. The boy did not keep her waiting: he said goodbye to the others, agreed to meet tomorrow – always tomorrow, always by the wooden post that marked the edge of his father’s field, straight after breakfast – and ran off across the meadow, where the first fireflies were kindling. # pokaz: jaromir
    -> wieczor_dalej
*   [Play a little longer.]
    -> wieczor_zwlekanie

= wieczor_zwlekanie
His mother’s voice carried across the whole village. The boy pretended not to hear until she called a second time – and by the third a note crept into her voice that boded no good. Then he said goodbye to the others, agreed to meet tomorrow – always tomorrow, always by the wooden post that marked the edge of his father’s field, straight after breakfast – and ran off across the meadow, where the first fireflies were kindling. # pokaz: jaromir
-> wieczor_dalej

= wieczor_dalej
He came home grubby, with grass in his hair, dirt under his nails and scabs on his knees. His mother would sigh, take him by the ear and lead him to the tub of water, and then set before him a bowl of scrambled eggs or soured milk with potatoes.
{ figurka_u_staruchy:
    His father sat across from him and said nothing. When he had finished, he always did the same thing: he got up, made sure the door was properly bolted, and only then went to bed.
    { los_psa == oswojony:
        Grandmother Marianna would rise from her stool then, trace a little cross on her grandson’s forehead and whisper something the boy did not understand.
    }
- else:
    If the evening was warm, his father carried the bench out in front of the hut and told stories. About Grandfather Maciek, who came down into Zapadlina with nothing but an axe, about the creature from the bogs, about the voice that called from across the water. Jaromir usually began to nod off halfway through, his head on his father’s knees, and never heard the ending.
}
Afterwards he lay on his straw mattress under the window and listened to the night. Frogs croaked in the floodwaters, a horse snorted in the stable, somewhere far off a dog barked. Through the crack in the shutter the stars could be seen – thick as dew on a meadow.
He fell asleep smiling, thinking that tomorrow another warm summer’s day awaited him, full of play from dawn till dusk. # dalej
-> zloty_dzien

= zloty_dzien
# tlo: zapadlina_lato
There were days like that beyond counting. Later they ran together in his memory into one long golden streak, smelling of hay and sun-warmed earth, full of sunshine, laughter and the humming of bees. The summer passed, and Jaromir grew – reaching ever higher into the branches of the elder, sending his arrow ever further, needing the ladder ever less often to climb up into the den. # dalej
-> rozdzial_pierwszy_ciag_dalszy


// Koniec rozdziału pierwszego — dalej rozdział drugi.
=== rozdzial_pierwszy_ciag_dalszy ===
# ozdobnik
_End of Chapter One._ # dalej
-> rozdzial_drugi
