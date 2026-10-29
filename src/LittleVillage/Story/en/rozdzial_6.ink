// ------------------------------------------------------------
//  Rozdział szósty — Południca. Żniwa w upale, Jaromir ma trzynaście
//  lat. Południca zadaje w samo południe trzy zagadki; za każdą
//  pomyłkę tnie sierpem. Księga daje dodatkową odpowiedź. Przy dwóch
//  i więcej pomyłkach ratuje go Hanka z dzbanem wody (gorączka, blizna),
//  inaczej Południca ostrzega: „Pan Lasu się budzi, pilnuj kapliczek”.
// ------------------------------------------------------------

=== rozdzial_szosty ===
# tlo: zniwa
# rozdzial: Chapter Six
# tytul: High Noon
The harvest came in a great heat. For weeks not a drop of rain had fallen, the sky turned white with glare by dawn, and the earth on the field balks split into long, crooked cracks. The grain had ripened suddenly, in a matter of days, and now stood in the fields golden and dry, rustling like paper at every breath of wind.
They went out to the fields before the cocks crowed. The men walked in front, the women behind them binding sheaves, and the children gathered the gleanings and carried water in clay jugs. Jaromir was thirteen and for the first time was mowing alongside the grown-ups—in the row, step for step behind his father, and the blade in his hands swished almost as evenly as the old reapers’. The air smelled of hot straw and sweat, scythes rang against whetstones, and every so often startled quails whirred up from underfoot.
Hanka was working on the neighbouring strip. Now and again she would straighten up, wipe her brow with the back of her hand and steal a glance towards Jaromir, and whenever their eyes met she would turn her head at once and go back to the sheaves with feigned zeal. Jaromir did not know why each time he grew so strangely hot—and not from the sun. # pokaz: hanka
{ figurka_u_staruchy:
    His father hardly spoke. At high noon he always made everyone leave the field for the shade, even if the rye were to shed its grain.
- else:
    His father joked and sang as he worked, but at high noon he always made everyone leave the field for the shade. “Your grandfather did it,” he would say, “and his grandfather before him. It’s not my invention.” And when the children pestered him, he told of a lass, the best reaper in the district, who had wagered with the farmhands that she would reap a whole field single-handed before noon. She did not leave the field in the fiercest heat. They found her in the evening with a sickle in her hand and ears of grain in her hair.
}
One day Jaromir was left alone at the end of the strip. He wanted to finish the swathe before going down into the shade, and did not notice when the others went off to the pear tree on the balk. The sun stood directly over his head, and his shadow shrank and vanished beneath his feet. # pokaz: sam # dalej
-> poludnica_przychodzi

= poludnica_przychodzi
# tlo: poludnica
It grew quiet. The crickets fell silent, the grain stopped rustling, and the air over the field thickened and rippled like water over a sun-baked stone.
Among the ears of grain a woman appeared. # pokaz: poludnica
She was tall and thin, straight as a bowstring, in a white shift down to her ankles that billowed, though not the slightest breeze was blowing. Fair hair reached to her knees and streamed out to either side, and on her head she wore a wreath of corn-ears and red poppies. Her face was pale and narrow, with high cheekbones, her eyes like linen bleached in the sun, without pupils, and her lips pressed into a thin line. Her bare feet did not touch the ground—she hovered a few inches above the stubble, and beneath her the heat quivered. In her right hand she held a sickle. From its tip hung a red drop.
Her left hand she stretched out towards him, open, as if asking for something.
“Whoever works in my hour,” she said in a voice dry as the crackle of straw, “must answer me. Three riddles. For every mistake—one cut.”
{ ekwipunek ? ksiega:
    Before Jaromir’s eyes rose a page from Mr Ignacy’s book: “Lady Midday walks the fields in the fiercest heat and questions the reapers. Whoever answers everything goes free. Whoever errs or runs away, she cuts down with her sickle or sends a fever upon him.” Below, in smaller writing, the teacher had added one answer he had heard years before from an old woman in Bukowiec, and underlined it twice: “The grain dies three times and three times comes back.”
}
# dalej
-> zagadka_1

= zagadka_1
Lady Midday tilted her head to one side, like a bird.
“Without legs it runs through the corn, without hands it combs the ears, without a mouth it wails in the chimney. Everyone has heard it, and no one has ever seen it. What is it?”
# pytanie: What will Jaromir answer?
*   [Fire.]
    -> zle_1
*   [The wind.]
    Lady Midday was silent for a moment. Then her lips twitched—it was not a smile, rather something that recalled one.
    “The wind,” she repeated. “My brother. Good.” # dalej
    -> zagadka_2
*   [Smoke.]
    -> zle_1

= zle_1
{ odwaga_jaromira && not poludnica_darowala:
    ~ poludnica_darowala = true
    The sickle whistled—and stopped a hair’s breadth from his shoulder. Jaromir did not flinch. {figurka_u_staruchy:Once, in deep water, something had brushed against his calf, and he had fled to the shore. This time he did not flee.|Once, in the reeds by the lake, he had laid his hand on a charred log, though the others had not dared. This time he did not draw back.}
    “You don’t run,” said Lady Midday, and moved the blade away. “This one I’ll spare you. But it was the wind. Fire and smoke everyone has seen, but the wind no one ever has.” # dalej
    -> zagadka_2
}
~ pomylki_poludnica += 1
~ ciecie_ramie = true
The sickle whistled before Jaromir could blink. He felt a searing pain in his shoulder, and when he looked down, blood was seeping through his torn shirt. # pokaz: ciecie
“Wrong,” said Lady Midday. “The wind. Fire and smoke everyone has seen, but the wind no one ever has.” # dalej
-> zagadka_2

= zagadka_2
“They bury him in the earth like a dead man, and he rises. They cut him down like a felon, and he does not bleed. They beat him, and he does not complain. And when they put him into the fire—only then does everyone want him. What is it?”
# pytanie: What will Jaromir answer?
*   [Flax.]
    -> zle_2
*   [Rye.]
    “Rye,” she whispered, and for a moment her white face softened, as though she remembered a harvest of her own, long ago. “A clever boy.” # dalej
    -> zagadka_3
*   [The potato.]
    -> zle_2
*   { ekwipunek ? ksiega } [Grain.]
    ~ poludnica_uklon = true
    Lady Midday opened her mouth and closed it again without a word. For a long time she looked at him with those white eyes, and then she bowed her head—slightly, barely perceptibly, as one bows to someone held in respect. # pokaz: uklon
    “Grain,” she repeated softly. “In the earth it dies, from under scythe and flail it comes back, and in the oven it is born as bread. Such an answer I have not heard in a hundred years. Someone taught you well.” # dalej
    -> zagadka_3

= zle_2
{ odwaga_jaromira && not poludnica_darowala:
    ~ poludnica_darowala = true
    The sickle whistled—and stopped a hair’s breadth from his hand. Jaromir did not flinch. {figurka_u_staruchy:Once, in deep water, something had brushed against his calf, and he had fled to the shore. This time he did not flee.|Once, in the reeds by the lake, he had laid his hand on a charred log, though the others had not dared. This time he did not draw back.}
    “You don’t run,” said Lady Midday, and moved the blade away. “This one I’ll spare you. But it was rye. Flax is not baked, and no one threshes potatoes.” # dalej
    -> zagadka_3
}
~ pomylki_poludnica += 1
~ ciecie_dlon = true
The sickle flashed through the air. The cut went across the back of his hand, shallow, but blood spattered onto the stubble. # pokaz: ciecie
“Rye,” she hissed. “Flax is not baked, and no one threshes potatoes.” # dalej
-> zagadka_3

= zagadka_3
The air rippled more strongly. The heat rose into Jaromir’s throat, his ears rang, and the field began to sway as though he were standing in a boat.
“And now tell me,” Lady Midday lowered her voice, “who has a house older than all the cottages hereabouts, yet not a single door in it? Who herds wolves as you herd sheep? And from whose fence, this summer, did they tear the thickest stake—the oaken one?”
# pytanie: What will Jaromir answer?
*   [Saint George.]
    ~ pomylki_poludnica += 1
    ~ ciecie_policzek = true
    “A saint?” Lady Midday laughed, dry and unpleasant, like crackling stubble. “The saints sit in the wayside shrines, boy. And that one is waiting for someone to tear them out for him.”
    The blade flashed. Jaromir felt a sharp sting on his cheek, and something warm trickled down his chin. # pokaz: ciecie
*   [The Lord of the Forest.]
    Everything fell quieter still, though it had seemed it could not be any quieter. Lady Midday drew back her outstretched hand.
    “You know him,” she said, and for the first time something like fear sounded in her voice. “That is bad. For he knows you too.”
*   [I don’t know.]
    Lady Midday was silent for a long time.
    “You know,” she said. “Only you are afraid to say it. That is wise. Do not speak his name at noon.”
-   -> wynik

= wynik
{ pomylki_poludnica:
- 0:
    Lady Midday lowered her sickle.
    “You are free,” she said. “But listen, for I will not say it twice. The Lord of the Forest is waking. With every tree felled, his sleep grows shallower. Keep watch on the wayside shrines, boy. Keep watch on them while they still stand.”
- 1:
    Lady Midday studied him for a long time, and then lowered her sickle.
    “It could have been worse,” she said. “Go. But remember: the Lord of the Forest is waking. Keep watch on the shrines.”
- else:
    Lady Midday raised the sickle high, above his head. The boy shut his eyes—and then he heard a shout. # pokaz: zamach
}
Someone was running onto the strip, stumbling over the sheaves. Hanka. In her hands she carried a clay jug, water slopping out of it. # pokaz: dzban
“Jaromir! Jaromir, what are you doing out here at high noon?!”
{ pomylki_poludnica < 2:
    ~ ostrzezenie_poludnicy = true
    When he looked ahead again, there was no one there. Only on the stubble lay the wreath of corn-ears and poppies, already beginning to wilt. # pokaz: znika, wianek # dalej
    -> po_poludniu
- else:
    Hanka did not slow down. She sprang to the boy’s side and dashed the water from the jug—not over him, but straight ahead, where the heat was rippling.
    “Here, drink!” she cried into the emptiness in a breaking voice, just as her grandmother had taught her. “Drink, and let him go!”
    Lady Midday hesitated with her sickle raised. She looked at the girl, then at the dark stain vanishing into the cracked earth—and dissolved into the quivering air like steam. Hanka poured the rest of the water over Jaromir’s head. # pokaz: znika, woda # dalej
    -> goraczka
}

= goraczka
# tlo: goraczka
~ blizna_sierpa = true
~ zapiski += poludnica_1
For three days the fever consumed him. He lay in the cottage under wet cloths, {rany_sierpa()} burned as if seared with a hot iron, and in his delirium he kept seeing white eyes without pupils and hearing a dry whisper: “For every mistake—one cut.” # pokaz: majaki
His mother did not leave his side for a moment. Hanka brought herbs from her grandmother, and on the second day, telling no one, she went at high noon to that strip of field and set a jug of fresh water on the balk. She came back shaken and would not say what she had seen there. That night the fever began to break. # pokaz: hanka
When at last he got up, a white scar in the shape of a crescent moon was left on his {miejsce_blizny()}, as if from the tip of a sickle.
-> czy_powiedziec

= po_poludniu
# tlo: czerwony_ksiezyc
~ zapiski += poludnica_1
~ mak_w_medaliku = true
He did not tell the reapers what had happened at high noon. Only in the evening, as he sat with Hanka on the fence watching a great red moon rise over the stubble, did he take from his pocket a wilted poppy from the wreath and lay it in her palm. # pokaz: mak
From the fields came the smell of dust and sun-scorched earth, the crickets were chirring wildly, and Hanka sat so close that he could feel the warmth of her arm through his shirt.
“Who’s it from?” she asked.
“From someone who told me to keep watch on the wayside shrines,” he said.
Hanka did not understand, but she tucked the poppy into the locket she wore round her neck, and from then on she never parted with it.
-> czy_powiedziec

= czy_powiedziec
Antek pounced on Jaromir as soon as they were alone.
“I saw you from under the pear tree,” he said quietly. “You were standing alone at the end of the strip, talking to thin air, and above you it shimmered the way it does over the smithy hearth.” He swallowed. “If you’re going to tell the grown-ups, I’ll tell them what I saw too. With two of us they’re more likely to believe it.”
# pytanie: Will Jaromir tell his father?
*   [{ostrzezenie_poludnicy:Tell his father about Lady Midday’s warning.|Tell his father about Lady Midday.}]
    ~ powiedzial_ojcu_poludnica = true
    # tlo: kapliczki_noc
    { figurka_u_staruchy:
        His father heard his son out in silence. Then he got up, took the lantern down from its nail and went out into the night. He came back towards morning. Mother told afterwards how he had gone round every wayside shrine in Zapadlina and knelt at each one, as though begging forgiveness. # pokaz: ojciec # dalej
    - else:
        His father did not laugh. He was silent a long while, and then said that tomorrow he would call the men together and they would go to Urbaniak as one. “He’ll not touch the shrines,” he added. “Not if he brings the whole sawmill down on my head.” # pokaz: ojciec # dalej
    }
    -> rozdzial_szosty_ciag_dalszy
*   [Keep it to himself.]
    # tlo: kapliczki_noc
    Jaromir told no one—apart from Antek, who knew anyway. Every night, when everyone was asleep, the two of them slipped out and made the rounds of the nearest wayside shrines. They straightened lopsided little roofs and pulled out the weeds twining round the posts. Sometimes, halfway through the work, the crickets fell silent—first beneath the forest, then nearer and nearer—and then the boys stood motionless until they began to chirp again. Jaromir came back before dawn drenched in cold sweat, the legs of his trousers wet with dew, and for a long time could not fall asleep, listening to every rustle outside the window. # pokaz: jaromir # dalej
    -> rozdzial_szosty_ciag_dalszy


// Koniec rozdziału szóstego — dalej rozdział siódmy.
=== rozdzial_szosty_ciag_dalszy ===
# ozdobnik
~ zapiski += pan_lasu_3
_End of Chapter Six._ # dalej
-> rozdzial_siodmy

=== function rany_sierpa()
{
- ciecie_ramie && ciecie_dlon && ciecie_policzek: ~ return "the cuts on his shoulder, hand and cheek"
- ciecie_ramie && ciecie_dlon: ~ return "the cuts on his shoulder and hand"
- ciecie_ramie: ~ return "the cuts on his shoulder and cheek"
- else: ~ return "the cuts on his hand and cheek"
}

=== function miejsce_blizny()
{
- ciecie_ramie: ~ return "shoulder"
- ciecie_dlon: ~ return "hand"
- else: ~ return "cheek"
}
