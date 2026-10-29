// ------------------------------------------------------------
//  Rozdział dwunasty — Czuwanie przy zmarłym (strzyga). Wiosna i lato po
//  obławie (pierwsze kroki Marysi, wesele Antka z Jadwisią), w listopadzie
//  umiera stary Wójcik — urodzony z zębami. Czuwanie: sprawdzić zęby albo
//  nie ruszać. O północy zmarły wstaje: przewrócić go twarzą do deski
//  (gryzie Antka), sierp przy szyi (czarna krew, plotki) albo gromnica
//  (wypala się). Pogrzeb: po staremu za murem, po księdzowsku albo z makiem
//  Hanki z medalika. Po księdzowsku bez niczego strzyga wraca po trzech
//  nocach: rozkopać grób albo czuwać przy kołysce (umiera Wójcikowa).
//  W Wigilię na talerzu dla wędrowca zostaje garść mchu.
// ------------------------------------------------------------

=== rozdzial_dwunasty ===
# tlo: wiosna_orka
# rozdzial: Chapter Twelve
# tytul: The Wake
{ uklad_z_mamunami == dar_swietojanski:
    { ekwipunek ? szczenie_psa:
        That spring the village threw itself into work to make up for the long winter. After the frosts half the orchards failed to blossom, but the rye came up thick and even. Jaromir ploughed from dawn to dusk, and the russet pup got under his feet in the furrows and yapped at the crows settling on the fresh-turned sods. # pokaz: szczenie
    - else:
        That spring the village threw itself into work to make up for the long winter. After the frosts half the orchards failed to blossom, but the rye came up thick and even. Jaromir ploughed from dawn to dusk.
    }
    On Midsummer Night, while the young folk lit bonfires by the lake, Jaromir went alone to the far shore, to the flat stones. On the largest he laid {sposob_na_odmienca == chrzest_odmienca:two loaves of bread|a loaf of bread} and a wreath of rue, as he had promised. He did not look back. But when he had reached the reeds, he heard a soft splash behind him, and then something like a sigh. # pokaz: noc # dalej
- else:
    { ekwipunek ? szczenie_psa:
        That spring the village threw itself into work to make up for the long winter. After the frosts half the orchards failed to blossom, but the rye came up thick and even. Jaromir ploughed from dawn to dusk, and the russet pup got under his feet in the furrows and yapped at the crows settling on the fresh-turned sods. # pokaz: szczenie # dalej
    - else:
        That spring the village threw itself into work to make up for the long winter. After the frosts half the orchards failed to blossom, but the rye came up thick and even. Jaromir ploughed from dawn to dusk. # dalej
    }
}
-> lato_w_zapadlinie

= lato_w_zapadlinie
# tlo: lato_podworze
In July, while Jaromir was mowing the meadow behind the barn, Marysia took her first steps – she let go of her mother’s skirt, crossed the whole yard, tottering like a drunken cockerel, and fell squealing into his arms. Hanka laughed so hard she had to sit down on the doorstep. # pokaz: kroki
{ obietnica_antkowi && oblawa_wilk == wydal_wilka:All spring and summer Antek kept away from their cottage. He came only after the harvest, cap in fist, and said he was marrying Jadwisia from Bukowiec and wanted Jaromir for his best man. Neither of them mentioned the white wolf.|After the harvest Antek announced that he was marrying Jadwisia from Bukowiec, and straight away asked Jaromir to be his best man.} Jadwisia was a gentle, freckled girl who laughed at every word Antek said, even when he was not joking at all. At the wedding Antek danced with Hanka, and with Marysia in his arms, until the little one fell asleep on his shoulder.{ uklad_z_mamunami == oddane_lata: One of Jadwisia’s aunts studied the grey at Jaromir’s temples and asked Hanka in a whisper whether her husband had been a widower when he took her.}
That summer the young wood below the forest crept forward by another field balk. Little spruces sprang up in the rye at Staś’s thicker than corncockle; the children pulled them out every morning, and by the next day new ones stood in the same places, already knee-high.
Old Wójcik was fading month by month. Since that Whitsun when the rusalki came up out of the water, he had scarcely said a word. In the evenings he sat out on the jetty, murmuring something softly to the lake, until his wife came to fetch him. Mrs Wójcik confided to Hanka that in June, though Hanka’s grandmother had warned against it, she had crouched one night in the reeds and listened to the mamunas washing. Over every shroud they called out someone’s name. She had heard only one. She would not say whose, but since then she had not left her husband’s side for a moment. # pokaz: wieczor # dalej
-> czuwanie_u_wojcikow

= czuwanie_u_wojcikow
# tlo: czuwanie_izba
Old Wójcik died in November, on the night after the first snow.
In the morning, when Jaromir went out to the cowshed, Mrs Wójcik was already waiting at the fence – in a black headscarf, her eyes swollen from weeping, a rosary clenched in her fist.
“Jaromir, dear,” she said, “sit with him tonight. Nobody will come. They’re talking in the village…” She broke off.
They were talking, and plenty. That Wójcik had been born with teeth, as Staś’s mother used to tell – she had helped at that birth sixty years ago. That he had never been ill, not even in the hungry winters. That the murrain had passed his cowshed by when the neighbours’ cows were dropping one after another. And that the body, though it had lain there since dawn, would not go cold at all.
In the evening a few men gathered in the Wójciks’ cottage – Jaromir, Antek, old Staś, who had insisted on coming though he could barely stand – and a handful of women to sing. The mirror was covered with linen, the water from the tubs poured out over the threshold, and the window opened a hand’s breadth so that the soul could leave. The room smelled of wax, damp wool and something sweetish that turned the stomach.
Wójcik lay on the board by the wall, in a linen death-shirt, his hands folded on his breast. His cheeks were rosy as a living man’s. His eyelids would not close fully, and the whites gleamed from under the lashes. And his lips… his lips were slightly parted, as though something were forcing them from within. # pokaz: wargi
# pytanie: What will Jaromir do?
*   [Lift the dead man’s lip and see what lies beneath.]
    ~ sprawdzil_zeby = true
    Jaromir went to the board and carefully, with two fingers, raised the dead man’s upper lip.
    Teeth. Two rows of teeth – one behind the other, small and sharp as a pike’s. # pokaz: zeby
    Someone behind him groaned. Old Staś crossed himself three times, and the women broke off their hymn in the middle of a word.
    “Two souls,” Staś whispered. “My mother, God rest her, brought him into the world. Said the lad had teeth like a little pike, and after, she stayed on her knees till morning, for it seemed to her that…” He broke off. “One’s gone to God. And the other… the other’s still here.” # dalej
* [Leave the dead man be – it isn’t fitting.]
    “Leave him,” Jaromir said, when Antek reached towards the dead man’s face. “It isn’t right.”
    Antek drew back his hand. The women sang on, the men sat down along the wall, and no one looked at the board any more. But all evening Jaromir felt the dead man watching them from under his half-closed lids. # pokaz: powieki # dalej
-   -> o_polnocy

= o_polnocy
# tlo: polnoc_strzyga
Towards midnight the candles began to smoke. The flames shrank and burned bluish, like the wisps over the bog. The women sang ever more softly, until at last they fell silent.
Then the dead man’s fingers twitched. # pokaz: palce
First one, then another. The nails scraped softly against the board. The eyelids rose slowly, baring eyes as cloudy as a dead fish’s. The mouth gaped wider and from the throat came a sound – not a voice, only a long, wheezing sigh, like someone dragged from under the ice catching his first breath.
Old Wójcik began to rise. # pokaz: wstaje
One of the women screamed and rushed for the door. Staś stood rooted to the spot, and Antek gripped Jaromir by the arm.
~ zapiski += strzyga_1
# pytanie: What will Jaromir do?
*   [Turn him face down on the board.]
    ~ polnoc_strzygi = na_twarz
    “On his face!” Staś cried. “Before he’s up!”
    Jaromir and Antek threw themselves on the dead man. He was heavy as stone, yet he thrashed with a strength he had never had even in life. As they rolled him onto his belly, he jerked his head round and sank his teeth into Antek’s hand. Antek howled, but did not let go. # pokaz: twarz
    They pressed him face down against the board and held him there, the two of them, until the first cock crowed outside the window. The body went slack and stirred no more.
    In the morning Hanka washed Antek’s hand with vodka and bound it in linen. The wound was shallow, but all winter long it would not heal. # dalej
*   [Put a sickle to his throat.]
    ~ polnoc_strzygi = sierp_przy_szyi
    A sickle hung on the wall by the door. Jaromir snatched it from its peg and laid the blade against the dead man’s neck, just below the chin.
    Wójcik flinched as if scalded and fell back onto the board. The edge broke the skin – shallowly, barely a scratch – and a trickle of blood seeped from the cut. Black, and thick as pitch. A smell of rot filled the room. # pokaz: sierp
    Jaromir held the sickle to his throat until dawn. His arms grew so numb he could not feel his fingers.
    By morning half the village knew that the dead man at the Wójciks’ had bled. By noon the whole of it knew. # dalej
*   { ekwipunek ? gromnica } [Light the Candlemas candle and put it in his hands.]
    ~ polnoc_strzygi = gromnica_w_dloniach
    Jaromir reached for the Candlemas candle that Hanka had pressed on him as he left the house, lit it from one of the smoking tapers and placed it in the dead man’s hands.
    The wax hissed as if it had dripped onto a hot stove-plate. Wójcik went still. For a moment his face changed – softened, as though he had remembered something – and from the gaping mouth came a faint whisper: # pokaz: gromnica
    “Kaśka…”
    ~ ekwipunek -= gromnica
    Then he closed his eyes and sank back onto the board. The candle flamed in his hands till morning, until it had burned right down to nothing. # dalej
-   -> pogrzeb_wojcika

= pogrzeb_wojcika
# tlo: cmentarz_bukowiec
In the morning the priest came over from Bukowiec. He heard it all out in silence, his lips pressed ever tighter, and when Staś began to tell how in the old days the likes of Wójcik used to be buried – face to the earth, a sickle over the throat, poppy seed in the coffin – he cut him off mid-sentence.
“There will be no heathen rites in hallowed ground,” he said sternly. “Either you bury him as a Christian, or you bury him yourselves. Outside the churchyard wall.” # pokaz: ksiadz
Mrs Wójcik looked at Jaromir. She was his daughter’s godmother, and for the second time since yesterday she was asking something of him – not in words this time, but with her eyes.
# pytanie: How will they bury Wójcik?
* [Bury him the old way – outside the churchyard wall.]
    ~ pochowek_wojcika = pochowany_za_murem
    The three of them buried him – Jaromir, Antek and Staś – outside the wall of the Bukowiec churchyard, by the crossroads. Face to the earth. Over his throat Jaromir drove in a sickle, blade towards the neck, and Mrs Wójcik herself scattered a handful of poppy seed into the coffin, muttering something under her breath. # pokaz: za_murem
    The priest did not come. The parishioners watched them from a distance as if they were lepers. All the way home the widow said not a word, but when they parted at her cottage, she caught Jaromir’s hand and squeezed it hard.
    “Thank you, son,” she whispered. “Now he’ll have his rest. And so will I.” # dalej
    -> spokojna_zima
*   [Bury him as the priest wants, in hallowed ground.]
    ~ pochowek_wojcika = pochowany_po_ksiedzowsku
    They buried him in the Bukowiec churchyard, in hallowed ground, face to the sky, a rosary in his hands. The priest said Mass and sprinkled the coffin with holy water, and people went home relieved that everything had been done as it should be. # pokaz: poswiecona
    Only old Staś, as the gravediggers shovelled in the sand, shook his head and said quietly, to himself:
    “He’ll not stand it down there.” # dalej
    -> trzecia_noc
* { mak_w_medaliku } [Bury him as the priest wants – but with Hanka’s poppy in the coffin.]
    ~ pochowek_wojcika = pochowany_z_makiem
    As they were carrying the coffin out of the cottage, Hanka stepped closer and opened the locket she had worn round her neck since that summer of Lady Midday. She shook the dried poppy out over the dead man’s breast – the very one Jaromir had once laid in her palm as they sat on the fence under a red moon.
    “Sleep,” she whispered. “Poppy brings sleep even to the likes of you.” # pokaz: mak
    ~ mak_w_medaliku = false
    Wójcik was laid to rest in hallowed ground, face to the sky, a rosary in his fingers and a pinch of poppy on his breast. But a few seeds had been left on the Wójciks’ threshold, and the priest saw them. After the funeral he summoned Hanka to the sacristy. She came out pale and would not tell Jaromir what she had heard – only that she might not go to communion until Easter. The Bukowiec women edged away from her in the pew. Hanka closed the empty locket and never opened it again. # pokaz: poswiecona # dalej
    -> spokojna_zima

= spokojna_zima
# tlo: cmentarz_bukowiec
~ zapiski += strzyga_2
{ pochowek_wojcika == pochowany_za_murem:
    After the funeral snow fell and lay soft until February. By spring the grave outside the churchyard wall was overgrown with grass, and no one but Mrs Wójcik ever went near it. She came every Sunday, alone, and sat on a stone by the crossroads – until that winter she took to her bed. # pokaz: wdowa
- else:
    After the funeral snow fell and lay soft until February. Every Sunday Mrs Wójcik set a little candle on the grave in Bukowiec, until she fell ill, and Hanka laid a wreath of dried poppies upon it. # pokaz: swieczka
}
Old Wójcik did not rise again. Only the dogs, for many months, tucked their tails between their legs whenever they passed his cottage. # dalej
-> boze_narodzenie

= trzecia_noc
# tlo: strzyga_okno
On the third night after the funeral, before midnight had come, Hanka heard snow creaking in the yard. She went out before Jaromir could get up, and came back with Mrs Wójcik. The old woman had a sheepskin coat flung anyhow over her bare shoulders and a rosary wound round her hand so tightly that the beads bit into the skin.
“He’s come back,” she sobbed. “He stood under the window. Pressed his face to the glass and called me by name. Two nights he called. And tonight… tonight he asked after the little one.”
Hanka went pale and glanced instinctively at the cradle where Marysia lay asleep. Then without a word she began making up a bed for Mrs Wójcik on the bench by the stove, but the old woman caught her by the hand.
“If he doesn’t find me at home, he’ll come here,” she whispered, and went back out into the night.
That night Jaromir did not close his eyes. He sat by the cradle with his{ siekiera_dziadka: grandfather’s} axe across his knees. Towards morning, just before cockcrow, he heard a faint sound, like breathing just beyond the pane. He raised his head. On the glass, from outside, a misty patch had bloomed. # pokaz: oddech
Outside the window stood old Wójcik. In a death-shirt caked with clay, with the cloudy eyes of a dead fish. His mouth hung open, and Jaromir could see the two rows of teeth, and a dark trickle running down his chin. # pokaz: strzyga
He was looking at the cradle.
# pytanie: What will Jaromir do?
*   [Dig up his grave and bury him the old way.]
    ~ trzy_noce = rozkopany_grob
    -> rozkopany_grob_wojcika
* [Keep watch by the cradle till dawn – let him come, if he dares.]
    ~ trzy_noce = czuwanie_przy_kolysce
    Jaromir rose, stood between the window and the cradle and raised the axe. Wójcik looked at him for a long time, unblinking. Then he smiled – broadly, so that every tooth flashed in the grey light – and moved away from the window. # pokaz: odszedl
    He never came to them again. But the moment it grew light, Hanka ran to Mrs Wójcik’s – and was back within the space of a prayer, without her headscarf, her fingers pressed to her mouth. The widow lay in her room, on her bed, her hands folded on her breast and her face at peace. On her neck were two tiny red punctures, as if from an awl.
    ~ zapiski += strzyga_2
    They buried her beside her husband. The old way, this time – when the priest saw her neck, he did not say a single word against it. # dalej
    -> boze_narodzenie

= rozkopany_grob_wojcika
# tlo: cmentarz_bukowiec
That very same day, after dark, Jaromir and Antek went with spades to the Bukowiec churchyard. They dug down into the fresh grave and prised open the coffin – Wójcik lay inside, rosy and plump, blood on his lips – and turned him face to the earth. Over his throat they drove in a sickle, and into the coffin they scattered poppy seed. They filled in the grave and were home before dawn, without exchanging a single word. # pokaz: rozkop
~ zapiski += strzyga_2
Wójcik came no more. But when the priest saw the freshly disturbed grave, he denounced from the pulpit “the godless men who have desecrated a grave”, and for many long years Jaromir felt the eyes of the Bukowiec folk on him in church. # dalej
-> boze_narodzenie

= boze_narodzenie
# tlo: wigilia_stol
~ zapiski += mamuny_3
~ zapiski += starzec_3
{ trzy_noce == czuwanie_przy_kolysce:
    The Wójciks’ cottage stood empty all winter. No one wanted to buy it, or even look inside, and the children gave it a wide berth.
- else:
    That winter Mrs Wójcik fell ill with her lungs, but she pulled through. Every night a candle burned in her cottage, in the window that looked towards the lake. # pokaz: swieca
}
{ ekwipunek ? szczenie_psa:
    Marysia could already say a few words, and loudest of all “Papa”. The russet pup followed her everywhere and slept under the cradle, his nose against the slats. # pokaz: szczenie
- else:
    Marysia could already say a few words, and loudest of all “Papa”.
}
Falling asleep, she would sometimes hum a few notes to herself – up and down, like water poured from jug to jug. It was a tune neither Hanka nor Hanka’s mother knew.
On Christmas Eve, as every year, Hanka laid one plate more than was needed – for a lost wayfarer – and placed a Christmas wafer on it. No one came. But in the morning, when she was clearing the table, that plate held not the wafer but a handful of moss. Damp and green, as if it were May. # pokaz: mech # dalej
-> rozdzial_dwunasty_ciag_dalszy


// Koniec rozdziału dwunastego — dalej rozdział trzynasty.
=== rozdzial_dwunasty_ciag_dalszy ===
# ozdobnik
_End of Chapter Twelve._ # dalej
-> rozdzial_trzynasty
