// ------------------------------------------------------------
//  Rozdział trzynasty — Wspólny sen (figurka). Przednówek i roztopy po
//  zimie ze strzygą (Jaromir ma dwadzieścia dwa lata, Marysia półtora roku).
//  Figurka z prologu wraca: [starucha] przywozi ją wnuczka Jagna, [handlarz]
//  leży na jarmarku, [bez zgliszcz] Józek wygrzebuje ją z popiołu po chacie
//  zielarki, [bagno] wypływa z mokradeł. Odrzucona — i tak wraca do chałupy.
//  Dzieci śnią ten sam sen, ogniki podchodzą pod płoty; zaufać Jagnie albo nie.
//  W Wielki Czwartek Józek idzie we śnie na kładkę, gdzie czeka topielec:
//  siekiera (rozorany bark), figurka rzucona w wodę albo latarnia (płonie
//  kapliczka przy kładce). Potem: piec (figurka nie płonie), kapliczka albo
//  Jagna. W maju syn Antka, Franek; w czerwcu paliki pod drogę Urbaniaka.
// ------------------------------------------------------------

=== rozdzial_trzynasty ===
# tlo: przednowek
# rozdzial: Chapter Thirteen
# tytul: The Shared Dream
Snow lay on the fields until the middle of March, grey and packed hard, and in the cottages people were already eating their groats without dripping and doling out potatoes from the clamp a handful at a time.{ polnoc_strzygi == na_twarz: Antek’s hand did not heal until the hungry gap had set in – it was left with two half-circles of small white scars, which Jadwisia kissed when she thought no one was looking.} {trzy_noce == czuwanie_przy_kolysce:No one moved into the Wójciks’ cottage. In February the rotten roof caved in one night under the snow with a crash that woke half the village.|Mrs Wójcik lay the whole winter in a fever, but in March she came out in front of her cottage on a stick, and the first thing she did was bring Marysia a handful of dried apples.}
{ ekwipunek ? szczenie_psa:
    Marysia was a year and a half old now. She scampered about the room, tumbled over, got up and ran on, and she caught words on the wing. Over the winter the russet pup had grown into a long-legged young dog that followed her step for step and growled at anyone who raised a voice to her – even her mother. # pokaz: szczenie
- else:
    Marysia was a year and a half old now. She scampered about the room, tumbled over, got up and ran on, and she already knew more words than Hanka had found time to teach her.
}
The thaw came all at once. The snow ran off the fields in two days, and the marshes beyond the footbridge swelled so high that the water crept right up to the farmyard fences. For three days the ice on the lake split with sharp reports. On the fourth night, for the first time in years, little lights kindled above the marshes. # pokaz: ogniki # dalej
{ figurka_u_staruchy: -> figurka_od_jagny }
{ not przeszukal_zgliszcza: -> figurka_ze_zgliszcz }
{ figurka_w_bagnie: -> figurka_z_bagna }
-> figurka_na_jarmarku

= figurka_od_jagny
# tlo: jagna_izba
In the middle of March a strange woman came to Zapadlina by cart – thin, in a grey headscarf, with one eye clouded by a milky film. She asked after the grandson of that Maciek who had built a hut here long ago. People pointed her to Jaromir’s cottage.
“My name is Jagna,” she said, once she had sat down on the bench. “My grandmother lived in town, beyond the market square. Before she died she made me swear I would give this back.”
From her basket she took something wrapped in a black rag and unfolded it on the table. A wooden figurine, charred on one side, with a lock of grey hair wound round its neck. {los_psa == oswojony && zona_wie:Jaromir had never seen the figurine, and yet he knew it at once – from what Grandmother Marianna had once told him.|Jaromir had never seen the figurine, nor ever heard of it, and yet at the sight of it a chill went through him, as if someone had opened the door onto a hard frost.} # pokaz: figurka
“Grandmother bought it from your grandfather at the market,” Jagna went on quietly, without raising her eyes. “And she did something with it that she paid for to the end of her days. I don’t know exactly what – in her fever she raved about a doll and about water. I only know she died badly. And that the last thing she said was: ‘Give it back where it came from.’”
# pytanie: What will Jaromir do?
*   [Take the figurine.]
    ~ ekwipunek += figurka
    Jaromir wrapped the figurine up in the rag again and hid it in the chest under the bed. Jagna let out a breath, as if someone had lifted a sack of stones off her back. As she was leaving, she said she would stay with her sister in Bukowiec until Whitsun and sell herbs at the market. # dalej
*   [Tell her to go and take the figurine with her.]
    ~ odrzucil_figurke = true
    “Take that away,” said Jaromir. “And don’t come back.”
    Jagna gave him a long look with her good eye and wrapped up the figurine. From the threshold she said only that she would be at her sister’s in Bukowiec until Whitsun.
    ~ ekwipunek += figurka
    But in the morning, when Hanka opened the door, the figurine was lying on the threshold. The rag was wet and stank of the bog. Jaromir hid the figurine in the chest before Marysia could see it. # pokaz: prog # dalej
-   -> wspolny_sen

= figurka_na_jarmarku
# tlo: jarmark
In the middle of March Jaromir drove to the fair in town with the spoons he had whittled over the winter. He sold them all before noon and went on wandering among the stalls, looking for something to bring Marysia for the church feast. At the very last booth, kept by an old junk dealer, between cracked pots and rusty horseshoes, lay a wooden figurine – charred on one side, its face rubbed smooth by other people’s fingers. # pokaz: figurka
Jaromir picked it up. The wood was cold and damp, though the day was dry.
“Pretty, eh?” the dealer cackled. “My grandad bought it off some peasant when he was a young man himself. Nobody’s wanted it since. Yours for a grosz.”
# pytanie: What will Jaromir do?
*   [Buy the figurine.]
    ~ ekwipunek += figurka
    Jaromir paid, wrapped the figurine in a kerchief and tucked it inside his shirt. All the way back he felt it against his heart like a lump of ice. Once indoors, he put it in the chest under the bed. # dalej
*   [Put it down and walk away.]
    ~ odrzucil_figurke = true
    ~ ekwipunek += figurka
    Jaromir set the figurine back down on the stall and walked off without looking round. But that evening, as he was unharnessing the horse outside the cottage, the figurine lay on the floor of the cart among the shavings – just where the spoons had lain that morning. He stared at it a long while before he hid it in the chest under the bed. # pokaz: woz # dalej
-   -> wspolny_sen

= figurka_ze_zgliszcz
# tlo: zgliszcza_kra
In the middle of March the village boys went down to the lake to watch the ice floes drift. Among them was Józek, old Staś’s youngest great-grandson – seven years old, red-haired and as curious about everything as a magpie. The floes shifted the old charred logs in the reeds on the western side of the lake, where the herbwoman’s hut had once stood, and shoved them up onto the shore. Józek poked about in the ashes with a stick until he dug out something hard.
He ran with it to Jaromir, because Jaromir whittled the best toys in the village and the lad wanted to show off. On the boy’s palm lay a wooden figurine, charred on one side. The soot caked on it blackened the fingers as though it were fresh. # pokaz: figurka
# pytanie: What will Jaromir do?
*   [Take the figurine from him.]
    ~ ekwipunek += figurka
    “Give it to me,” said Jaromir. “In exchange I’ll carve you a horse and cart.”
    Józek sulked, but in the end he agreed. Jaromir hid the figurine in the chest under the bed and scrubbed his hands in the tub for a long time, though they were clean. # dalej
*   [Let him keep it.]
    ~ jozek_mial_figurke = true
    Jaromir handed the figurine back, and Józek ran home with it. The next day Józek’s mother came to Jaromir, pale, with the figurine wrapped in her apron. The boy had slept all night with it clutched in his fist and talked in his sleep in a stranger’s voice, and in the morning he woke with wet hair, though no one had bathed him. # pokaz: matka
    “Take it,” she said. “You’re Maciek’s grandson. You know what it is.”
    ~ ekwipunek += figurka
    Jaromir hid the figurine in the chest under the bed. # dalej
-   -> wspolny_sen

= figurka_z_bagna
# tlo: kladka_naprawa
In the middle of March, when the water began to fall, Jaromir went with Antek to mend the footbridge over the marshes, which the flood had torn away. He was hauling an old post out of the mud when he saw that something had stuck to it – black, plastered with slime. He scraped the muck off with his knife.
A wooden figurine, charred on one side. In all those years the water had not washed the soot from it. Jaromir remembered what his father had told him as a child about Grandfather Maciek and the figurine he had lost in the bog that first spring. # pokaz: figurka
# pytanie: What will Jaromir do?
*   [Take the figurine.]
    ~ ekwipunek += figurka
    Jaromir wrapped the figurine in a rag and slipped it inside his shirt. Antek eyed him from under his brows but said nothing. At home Jaromir hid it in the chest under the bed. # dalej
*   [Throw it back into the bog.]
    ~ odrzucil_figurke = true
    Jaromir swung his arm and hurled the figurine as far as he could, into a black pool between the tussocks. The bog swallowed it without a single ripple. # pokaz: plusk
    ~ ekwipunek += figurka
    But in the morning, when Hanka opened the door, the figurine was lying on the threshold – wet, coated in duckweed, its face turned towards the room. Jaromir hid it in the chest before Marysia could see it. # dalej
-   -> wspolny_sen

= wspolny_sen
# tlo: sen_kladka
~ zapiski += ogniki_2
{ not przeszukal_zgliszcza:The first to have the dream was Józek.|The first to have the dream was Józek, old Staś’s youngest great-grandson.} After him the miller’s daughter from Bukowiec, then the Kowalczyks’ twins. Within a week the mothers at the well talked of nothing else, for every child dreamed the same thing: that it stood at night on the footbridge over the marshes, with little lights winking all around, while beneath the planks, in the black water, someone was turning over clay pots, one after another, and peering under each. And that at last this someone raised his head and asked: “Where is my doll?” # pokaz: glowa
{ not odrzucil_figurke && not jozek_mial_figurke:
    After a few nights the same dream came to Jaromir – the only grown man in the village it visited. He alone, after all, had taken the figurine of his own free will. He would start up before dawn with the rush of water in his ears and his feet wet, though he slept under the featherbed.
}
Marysia woke up crying every night{ skarb_dla_corki: and clenched her little fist round the leather thong with the {skarb_jaromira == muszelka:shell|{skarb_jaromira == pioro:jay’s feather|nail}}, which she had worn round her neck since winter}. She pointed her small finger at the window and repeated words no one had taught her:
“Wet man. Wet man.”
Night by night the wisps over the marshes burned closer. At first only beyond the footbridge, then in the meadow, and in the end they stood in the rushes just outside the fences – like people waiting for someone to open the door. # pokaz: ognie
{ figurka_u_staruchy:
    On Sunday Jagna came over from Bukowiec on foot, alone, and asked from the threshold whether the children in the village were dreaming.
- else:
    That same week Hanka bought wormwood at the market in Bukowiec from a herbwoman she did not know – thin, in a grey headscarf, with one eye clouded by a milky film. As she counted out the change, the stranger suddenly seized Hanka by the hand and sniffed her fingers.
    “I smell ashes,” she whispered. “Old ashes, from by the water. You have them in your house, don’t you?”
    { przeszukal_zgliszcza && not figurka_w_bagnie:
        “My grandmother once wanted to buy such a thing from some lad at the market,” she added, more quietly. “He wouldn’t sell it. To her dying day she never knew who he gave it to in the end.”
    }
    She said her name was Jagna and that she would stay in Bukowiec until Whitsun. Hanka brought her to the cottage that very afternoon, without asking her husband’s leave.
}
{figurka_u_staruchy:“Tell her about the dreams,” his wife spoke up before Jaromir could open his mouth. “She brought the thing herself; let her know what has grown out of it.”|“If you’ve hidden something, don’t keep it from her,” his wife spoke up before Jaromir could open his mouth. “{odrzucil_figurke && figurka_w_bagnie:I saw what came back to our threshold.”|{jozek_mial_figurke:I saw what Józek’s mother brought.”|I’ve seen you looking under the bed.”}}}
# pytanie: What will Jaromir do?
*   [{figurka_u_staruchy:Tell Jagna about the dreams.|Show Jagna the figurine and tell her about the dreams.}]
    ~ zaufal_jagnie = true
    { figurka_u_staruchy:
        // Jagna przywiozła figurkę i wiedziała tylko, że babka bredziła o lalce i o wodzie — dopiero sny dzieci składają jej to w całość.
        Jaromir told her about the footbridge, about the pots overturned on the bottom of the marshes and about the question every child heard in the dream. At the word “doll” Jagna turned pale.
        “In her fever Grandmother spoke only of a doll and of water. I thought she was raving,” she said quietly. “The old herbwomen used to tell of such things: you whittle it from a root pulled out of the bog and give it the name of what lives there. He goes after whoever holds such a doll. He slept a long time, and now it has come back to the lake and is calling him. And the children hear it – their ears are keener than ours.”
    - else:
        Jagna turned the figurine over in her fingers for a long while, leaning close to the window, for her good eye was weak.
        “It’s a doll,” she said at last. “Grandmother told me of such things. The herbwoman from the lake whittled it from a root she pulled out of the bog and gave it the name of what lives there. He goes after whoever holds the doll. As long as it lay {przeszukal_zgliszcza && not figurka_w_bagnie:far away|untouched}, he slept. Now it has come back – and it is calling him. And the children hear it – their ears are keener than ours.”
        She wrapped the figurine in the rag and handed it back to Jaromir.
    }
    “Fire won’t take it; it has been in the fire once already. Only hallowed ground will quiet it. {odrzucil_figurke:Or…” She broke off and shook her head. “No. It won’t heed me any more. You pushed it away, and it came back to you all the same. Now it is yours.”|{figurka_u_staruchy:Grandmother told me to give it back where it came from, and I did. I won’t take it again.”|Or…” she hesitated, “or give it to me. I’ll carry it so far away that he won’t hear it.”}} # dalej
*   [Tell her nothing.]
    {figurka_u_staruchy:“The children sleep soundly,” Jaromir lied.|“I don’t know what you’re talking about,” Jaromir answered.}
    Jagna nodded, as if this was just what she had expected.
    “When the lights reach your threshold,” she said, “come to me. Until Whitsun I’m in Bukowiec.”
    Hanka walked her all the way out past the fence and stood there whispering with her a long time. Until evening she did not say a single word to Jaromir. # dalej
-   -> wielki_czwartek

= wielki_czwartek
# tlo: noc_kladka
{ not odrzucil_figurke && not jozek_mial_figurke:
    On the night of Maundy Thursday the dream came to Jaromir as it did every night – only this time it was Józek who stood on the footbridge among the wisps. Jaromir leapt up from his bed before he understood that he was no longer asleep. He snatched up the axe{ siekiera_dziadka: that had been his grandfather’s}, the lantern and, from the chest, the figurine in its wrapping. He had no need to ask anyone where to run. # pokaz: jozek
    Beyond the farmyard fences, in the rushes, little lights were winking – and among them, towards the footbridge, went a small pale figure, barefoot, its arms stretched out before it. Jaromir reached the bank just as the boy stopped halfway across. The water beneath the planks churned, and out of it slid a grey hand. It closed round Józek’s ankle.
- else:
    On the night of Maundy Thursday Jaromir was woken by a scream in the lane: Józek’s mother was running from fence to fence with a lantern, calling for her son, whose bed she had found empty. When Jaromir looked out of the passage, a pale little light stood on the threshold, so close that it lit up the knots in the boards – and it drifted away into the dark the moment he looked at it. He snatched up the axe{ siekiera_dziadka: that had been his grandfather’s}, the lantern and the figurine in its wrapping – he was afraid to leave it in the house, near Marysia. First he ran with Józek’s mother down to the lake, and only from there did Jaromir see that the lights had gathered in a cluster in one place. # pokaz: jozek
    By the time he got there it was almost too late. The grey hand had already dragged the boy down – Józek hung waist-deep in the black water, still asleep, holding on to the footbridge with one hand.
}
{ figurka_u_staruchy:
    The creature rose slowly – huge, hunched, with hair like wet waterweed and eyes that glowed greenish, like rotten wood. On its arm was an old, deep scar – the mark of the axe with which Grandfather Maciek had struck it years ago. Józek did not cry out. He was asleep. # pokaz: stwor, blizna
- else:
    The creature rose slowly – huge, hunched, with hair like wet waterweed and eyes that glowed greenish, like rotten wood. Józek did not cry out. He was asleep. # pokaz: stwor
}
{ oblawa_wilk == wydal_wilka:
    Beyond the marshes a wolf howled – hoarsely, the end of it broken off, just as on the night after the hunt. The creature turned its head that way. Along the causeway, among the alders, something white moved past, low and uneven, favouring one side – and was lost in the darkness.
- else:
    Beyond the marshes a wolf howled – long and clear, so that the little flames in the rushes trembled. The creature turned its head that way. Along the causeway, among the alders, something white flashed by, faster than a dog – and was lost in the darkness.
}
Jaromir did not know whom that voice was meant to warn – the creature or himself.
~ zapiski += stwor_3
# pytanie: What will Jaromir do?
*   [Strike the creature with the axe.]
    ~ noc_na_kladce = siekiera_na_kladce
    Jaromir sprang onto the footbridge and hacked with all his might. The blade sank deep into the grey arm{ figurka_u_staruchy:, just beside the old scar}. The creature roared – long and guttural, till the planks shook – let go of the boy and, in revenge, tore open Jaromir’s shoulder with its claws. It sank beneath the water as if something had pulled it down. # pokaz: siekiera
    Jaromir snatched Józek up and carried him ashore. The boy did not wake until he was in the cottage, by the stove, and he remembered nothing. The wound on Jaromir’s shoulder took until harvest to heal. # dalej
    -> co_z_figurka
*   { ekwipunek ? figurka } [Throw him the figurine.]
    ~ noc_na_kladce = figurka_dla_stwora
    ~ los_figurki = figurka_u_stwora
    Jaromir unwrapped the rag and flung the figurine into the water, right beside the creature.
    ~ ekwipunek -= figurka
    The hand let go of the boy’s ankle in an instant. The creature seized the figurine, pressed it to its breast as a mother does her child, and slid into the black water, smooth as an otter. The lights over the marshes were snuffed all at once, as if someone had blown on them. # pokaz: figurka
    Straight afterwards the water beneath the planks was sucked down into the depths with a groan like cracking ice, and it dragged the posts after it. Jaromir barely managed to leap ashore with Józek before the footbridge – as old as the village – folded in two and went under. The boy slept on peacefully, his cheek on Jaromir’s shoulder. # dalej
    -> paliki_pod_droge
*   [Smash the lantern on the water.]
    ~ noc_na_kladce = latarnia_na_wodzie
    Jaromir hurled the lantern at the creature’s feet. The glass shattered, the oil spread over the water and burst into flame. The creature let go of the boy and drew back howling into the darkness, and Jaromir grabbed Józek before the black water could pull him under. # pokaz: latarnia
    But the fire ran through last year’s dry reeds like a trail of powder. Before the men came running with buckets, half the rushes had burned, and with them the wayside shrine by the footbridge – one of the oldest in the village. By morning all that remained of it were black stumps and the saint with a charred face. # pokaz: pozar # dalej
    -> co_z_figurka

= co_z_figurka
# tlo: skrzynia_izba
After Easter Jaromir sat for long evenings over the chest. The lights above the marshes still burned, though farther from the fences than before, and Marysia still woke in the night and pointed at the window.
# pytanie: What will he do with the figurine?
*   [Throw the figurine into the stove.]
    ~ los_figurki = figurka_w_skrzyni
    The figurine lay in the embers all night and would not catch – it only hissed like wet wood, and a stench of bog came from the stove. In the morning Jaromir raked it out with the poker. It was charred exactly as before, not a whit more. In the passage every bucket stood full of murky bog water, though the evening before Hanka had filled them with clean water from the well. # pokaz: piec
    Jaromir shut the figurine in the chest, bound the chest round with a chain and never spoke of it again. # pokaz: lancuch # dalej
*   [Bury it under the wayside shrine.]
    ~ los_figurki = figurka_pod_kapliczka
    ~ ekwipunek -= figurka
    After dark Jaromir went with a spade to the shrine {noc_na_kladce == latarnia_na_wodzie:on the Bukowiec road, beyond the stream|by the footbridge}. He dug a hole an ell deep, wrapped the figurine in clean linen, filled it in and trod the earth down hard. That same night the lights above the marshes went out, and the children stopped dreaming. # pokaz: lopata
    He told no one where he had buried it. Not even Hanka. # dalej
*   { zaufal_jagnie } { not odrzucil_figurke } { not figurka_u_staruchy } [Give it to Jagna.]
    ~ los_figurki = figurka_u_jagny
    ~ ekwipunek -= figurka
    Jaromir carried the wrapped figurine to Bukowiec. Jagna took it in both hands, carefully, like something very fragile, and at once hid it at the bottom of her basket, under bunches of dried herbs. # pokaz: kosz
    “Don’t be afraid,” she said. “It won’t come back now.”
    Next day she left. That night the lights above the marshes went out, and the children stopped dreaming. # dalej
-   -> paliki_pod_droge

= paliki_pod_droge
# tlo: wiosna_paliki
~ zapiski += zielarka_3
In May Jadwisia bore Antek a son. Antek insisted that the boy should be called Franek, and no one dared gainsay him. He asked Jaromir to stand godfather. # pokaz: antek
{ los_figurki:
- figurka_u_stwora: The lights over the marshes never kindled again. Józek did not remember that night. No one rebuilt the footbridge: the posts the men drove into the mud lay torn out on the bank by morning, so from then on anyone going to the far meadows had to skirt the bog along the edge of the forest. When old Staś heard what Jaromir had done, he crossed himself and never again cast a line into the pools out there.
- figurka_w_skrzyni: The dreams came more and more seldom, but they did not stop altogether. Sometimes, on moonless nights, Marysia would sit up on her pallet and stare at the chest under the bed until Hanka laid her down again.
- else: The village children forgot the dream sooner than their mothers left off gossiping about it. Marysia slept through the night again.
}
{ noc_na_kladce == siekiera_na_kladce:
    A thick pink scar remained on Jaromir’s shoulder{ figurka_u_staruchy && los_psa == oswojony: – in the very place where, years before, the creature’s talons had reached his grandfather}.
}
{ noc_na_kladce == latarnia_na_wodzie:
    Where the shrine had burned, the men drove a birch cross into the ground. No one put up a new one – there was nothing to pay for it with. # pokaz: krzyz
}
Towards the end of May Hanka searched the whole farmyard for Marysia. She found her at last behind the barn, up to her armpits in the rye. The little one stood stock-still, her small head tilted, like someone listening.
“Mama’s singing,” she said, and pointed with her little hand into the corn, away from the cottage.
{ glos_w_lesie:
    When Hanka told him about it that evening, Jaromir remembered that Christmas Eve years ago and his mother’s voice {figurka_u_staruchy:out of the mist over the field|from among the trees}{glos_w_lesie == odpowiedzial: – and then laughter that was not hers at all|{glos_w_lesie == kozuch: – and then heavy footsteps that passed close beside him| – and how the voice had chased him over the snow all the way to the fence at Staś’s}}. He said nothing. Only, that night, he got up twice to look and see whether Marysia was asleep.
}
At the beginning of June Urbaniak’s men began driving stakes into the ground: from the sawmill, across the meadows and the marshes, straight towards the forest. Mr Urbaniak wanted a road into the woods. Within a week the stakes driven nearest the forest had put out green shoots – from dry wood, stripped of its bark. # pokaz: paliki # dalej
-> rozdzial_trzynasty_ciag_dalszy


// Koniec rozdziału trzynastego — dalej rozdział czternasty.
=== rozdzial_trzynasty_ciag_dalszy ===
# ozdobnik
_End of Chapter Thirteen._ # dalej
-> rozdzial_czternasty
