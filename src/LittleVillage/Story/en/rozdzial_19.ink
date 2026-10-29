// ------------------------------------------------------------
//  Rozdział dziewiętnasty — Świt. Dwie drogi po rozdziale osiemnastym.
//  [Marysia żyje] powrót o świcie, dług u Jagny (wstążka, drewniak albo odmowa),
//  lato i żniwa, pod koniec sierpnia kijanki nad jeziorem — mamuny piorą mały całun
//  (cenę za zmycie imienia wybiera się w r20, w noc Zaduszek). Jesień, mgła pod płotami,
//  gromnice gasną.
//  [zły wybór] Hanka poznaje po zapachu, co Jaromir przyniósł; ciało pochowane,
//  oddane Jagnie, spalone albo zakopane pod młodnikiem; trumienka z bzu, wianki,
//  kołysanka; jesień — „Przyjdzie?”; paliła się tylko gromnica Hanki.
// ------------------------------------------------------------

=== rozdzial_dziewietnasty ===
{ marysia_odzyskana:
    -> powrot_z_marysia
- else:
    -> powrot_bez_niej
}

= powrot_z_marysia
# tlo: laka_swit
# rozdzial: Chapter Nineteen
# tytul: Dawn
The sun rose over the forest just as Jaromir reached the edge of the young wood. Dew glittered on the swathes so brightly that it hurt his eyes, and in the corn a lark struck up—the first bird he had heard in three days.
{ ekwipunek ? szczenie_psa:
    The dog ran on ahead of him towards the village, yapping so wildly that every farmyard in Zapadlina answered. # pokaz: pies
}
{ wilk_przy_jaromirze && znak_rozpoznania != po_wilku:
    The white wolf saw them as far as the last spruces and sat down there. When Jaromir looked back a moment later, he was gone. # pokaz: wilk
}
Hanka came running from the cottage, her lullaby broken off mid-word, barefoot through the wet grass, her arms stretched out before her—as if she feared that if she lowered them, she would wake beside a burnt-out pine splint. She did not cry out.{ pani_w_zbozu_noc == za_spiewem: She could not. All that came from her throat was a dry, ragged wheeze.} She reached them halfway and flung her arms round them both with all her strength, until Marysia squeaked in indignation. She buried her face in her daughter’s hair and for a while only breathed; then she began to laugh and weep at once, kissing the little one’s dirty feet, her hands, her head. Only then did she look at Jaromir, at his cheeks slashed by branches, and touch them with her fingertips, carefully, as though making sure it was really him. # pokaz: uscisk
Jaromir felt his legs would carry him no further. He sat down in the grass. The three of them stayed like that, while the people with rakes stood on the swathes and no one stirred.
Antek was the first to come over. He said nothing—he took off his coat and wrapped it round the little girl.{ zastaw_u_leszego == zastaw_cien: Only at noon, when they went out into the yard, did Hanka glance down at her husband’s feet, and she could not tear her eyes from the place where his shadow should have lain. She did not ask. Jaromir was more grateful to her for that than for anything else.} # pokaz: antek # dalej
{ dlug_u_jagny:
    -> dlug_jagny_dobry
}
-> lato_po_powrocie

= dlug_jagny_dobry
# tlo: wies_sianokosy
Jagna was waiting by the fence, beside her cart. As Jaromir passed with Marysia in his arms, she raised her good eye to him. # pokaz: jagna
“The first thing you carry out of the forest,” she reminded him quietly. “That was the price.”
Hanka stopped mid-step. Marysia clung to Jaromir’s neck.
# pytanie: What will Jaromir give Jagna?
*   [The ribbon from his wrist.]
    ~ dlug_jagny = oddana_wstazka
    Jaromir raised his hand with the red loop round the wrist. “It went ahead of me while I was pushing the branches aside,” he said. “It came out of the forest before I carried my daughter out.”
    ~ ekwipunek -= wstazka_marysi
    Jagna studied him without a word, and then the corners of her mouth twitched. She slid the ribbon off his wrist and tucked it into the front of her blouse. “What’s been in the forest and come back will serve me in my work,” she said. # tobolek
    Hanka pressed her lips together. She had plaited that ribbon into Marysia’s hair on St John’s Eve. # dalej
*   [The clog he had carried against his chest.]
    ~ dlug_jagny = oddany_drewniak
    “I carried it next to my heart,” said Jaromir. “Ahead of her.” He reached under his coat and handed Jagna a little red shoe{ drugi_drewniak:—one of the two}.
    { drugi_drewniak:
        ~ drugi_drewniak = false
    - else:
        ~ ekwipunek -= bucik_marysi
    }
    Jagna turned it over in her fingers and sniffed the felt inside. “It’s been in the rye with that one, and in the forest,” she muttered. “So be it.” She tossed it into her basket of herbs. # tobolek
    Marysia followed the clog with her eyes, and when the cart moved off she began to cry as she had not cried even under the oak. From that day on she would let no one put a shoe on her feet—she kicked and screamed until in the end Hanka gave in. The little one went barefoot until the first snow. # dalej
*   [Refuse—a child is not a thing.]
    ~ dlug_jagny = dlug_odmowiony
    “You’ll not have her,” said Jaromir. “Not today, not ever.”
    Jagna did not raise her voice. “It’s not her I’ve come for,” she replied. “It’s what I’m owed.” She harnessed the horse. “A debt doesn’t rot, Jaromir. It’ll wait.”
    She drove off slowly. That night Hanka hung over the little one’s bed everything she had: a cross, a wreath of herbs, a little knife. She did not sleep till dawn. # dalej
-   -> lato_po_powrocie

= lato_po_powrocie
# tlo: zniwa
Marysia remembered nothing.{ rada_przed_borem == rada_ksiedza: The priest from Bukowiec had been right.} When they asked her where she had been, she looked at them in surprise and said she had been asleep. She was afraid of the dark—from then on a pine splint burned in the window every night, though they were no longer watching for anyone—and she never again hummed her tune. Every evening Hanka listened at the little one’s bedside, but in vain.
The harvest was late and hard. Heat lay over the fields, the air hung thick with chaff dust and the smell of sun-warmed straw, and the scythes rang from dawn till dusk.{ pole_zbite_gradem: Jaromir, who had nothing to mow on his own land, hired himself out to Staś’s family and to the Kowalczyks for every tenth stook.}{ zastaw_u_leszego == zastaw_siekiera: He split firewood with an axe borrowed from his father-in-law—the handle was too smooth, too thick, not his own.}{ zastaw_u_leszego == zastaw_krzesiwo: He lit his fire from the neighbours’ embers; his own flint and steel were gone.}
{ pies_pobiegl_sam:
    ~ ekwipunek += szczenie_psa
    A week later, on a rainy night, a dog whined at the door. He was thin as a stick, his paws torn and bloody. Jaromir let him in without a word, and the dog slept for two days under Marysia’s bench. # tobolek
}
{ znak_rozpoznania == po_wilku:
    In the evenings Antek would stand at the edge of the field and listen. Since that morning no howling had come from the forest.
}
But the water gave them no peace. Marysia would not go near the lake, and when Hanka did the washing in the stream, the little one hid behind her skirt, went stiff all over and never took her eyes off the current.{ dar_pominiety: In July Hanka found a wet wreath of rue on the doorstep—just like the one Jaromir carried every year to the stones on the far side of the lake. It lay in a puddle, though it had not rained for a week.} # dalej
-> kijanki

= kijanki
# tlo: calun_noc
Towards the end of August, on the night that marked three years since Marysia had come into the world, Jaromir was woken by a slapping. Steady, wet, from the lake—a washing paddle against stone. He remembered that sound from the days when Marysia still lay in her cradle.
He looked at the bench by the stove. The little one was asleep, curled into a ball, her fist under her cheek. Hanka was breathing evenly.
He slipped out quietly, barefoot, went round the lake along the shore and crouched in the reeds on the other side, close by the flat stones. The mamunas knelt on them—hunchbacked, wet, in rags of moss—washing something small and pale in the water. Just the size of a child. They called no name. When the reeds rustled, the eldest did not even lift her head. # pokaz: mamuny
{ dar_pominiety:
    “You forgot once, goodman,” she croaked into the water. “We’ll not wash any slower.”
- else:
    “Not tonight, goodman,” she croaked into the water. “We wash what the water brings us.”
}
“On All Souls’ Day we’ll bring what’s washed,” added a second. # dalej
-> jesien_przed_zaduszkami

= jesien_przed_zaduszkami
# tlo: jesien_zaduszki
~ zapiski += pan_lasu_11
Autumn came early. Threshing in the barns, rye sown for the winter, flax to be scutched—the village went about its work as it did every year, and Jaromir seized on any task at all so as not to be left alone with his thoughts. Marysia was growing. In October, for the first time since her return, she laughed out loud at the table, and Hanka went out into the passage and did not come back for a long while.
Jaromir did not tell Hanka what he had seen on the stones across the lake. But every evening before he fell asleep he reckoned how long was left until All Souls’, and each time it seemed to him less than the night before.
The nearer All Souls’ drew, the quieter Zapadlina became. People came home from the fields before dark and bolted their doors, and every evening a mist crept from the forest across the meadows, heavy and wet, right up to the fences. Jaromir remembered every word: “On All Souls’ Day I shall come to the village. Then we shall settle our reckoning, to the very end.” # pokaz: mgla
On the first of November the village went to the churchyard in Bukowiec. That year, instead of little lamps, people carried Candlemas candles from their homes. On the way back they went out in a single breath, every one of them, though the air was still. # pokaz: zgasly # dalej
-> rozdzial_dziewietnasty_ciag_dalszy

= powrot_bez_niej
# tlo: laka_swit
# rozdzial: Chapter Nineteen
# tytul: Dawn
The sun rose over the forest just as Jaromir reached the edge of the young wood. Dew glittered on the swathes, and in the corn a lark struck up. Jaromir did not hear it at all.
Hanka came running from the cottage, the lullaby still on her lips, barefoot through the wet grass, her arms stretched out before her. Halfway she slowed. Then she stopped.
She did not cry out.{ pani_w_zbozu_noc == za_spiewem: She could not.} She took the child from Jaromir’s arms, carefully, the way one lifts a sleeper, and buried her face in the soft hair, as she did every evening. She breathed it in for a long time. The hair smelled of nothing—not of milk, not of smoke, not of her. She understood. # pokaz: kolysze
She sat down with the child in the grass and began to rock it. The people with rakes stood on the swathes and no one stirred. Antek was the first to come over. He took off his cap. # pokaz: antek
{ wilk_przy_jaromirze && znak_rozpoznania != po_wilku:
    The white wolf, who had followed Jaromir all through the young wood, stayed behind by the last spruces. When someone looked that way, he was gone. # pokaz: wilk
}
{ ekwipunek ? szczenie_psa:
    The dog lay down at Hanka’s feet and whimpered, softly, without a pause, until someone dragged him away. # pokaz: pies
}
{ zastaw_u_leszego == zastaw_cien:
    No one noticed that Jaromir cast no shadow. No one was looking at him.
}
{ dlug_u_jagny:
    Jagna came over from the fence and bent over the child in Hanka’s arms. She studied the stiff little feet and the polite, frozen smile. Then she straightened up and said to Jaromir quietly, so that Hanka would not hear: “That’s not your child. That’s wood. It came out of the forest right behind you. I can take it instead of the debt. I know what’s done with such a thing.” # pokaz: jagna
- else:
    Old Staś hobbled up on his stick, looked at the child and crossed himself. “Children from the forest don’t get buried in hallowed ground,” he muttered. “In my grandad’s day, when there weren’t no church in Bukowiec yet and you had to trudge to town for every burying, even then everyone knew… It’s either the fire, or out by the woods.” # pokaz: stas
}
Jaromir remembered the voice from under the oak: “You will bury it as your own.”
# pytanie: What will Jaromir do with the body?
*   [Bury it like a daughter, in the churchyard.]
    ~ cialo_kopii = pochowane
    He took it from Hanka and carried it into the cottage. He laid it on the bench where Marysia used to sleep and covered it with a linen cloth. # dalej
*   { dlug_u_jagny } [Give it to Jagna.]
    ~ cialo_kopii = oddane_jagnie
    Hanka would not let go of it. She loosened her hold only when Jagna laid a palm over Hanka’s eyes and whispered something. Jagna wrapped the body in a linen sheet, laid it on the cart among the baskets of herbs and drove slowly off towards Bukowiec. The debt was paid. # dalej
*   [Burn it in the stove.]
    ~ cialo_kopii = spalone
    In the evening, when Hanka had at last fallen asleep from exhaustion, Jaromir built up a fierce fire. For a long time he could not bring himself to lay the child in the flames. When at last he did, it did not burn like flesh. It crackled like resinous wood, hissed with sap, and the smoke smelled of pine needles. In the morning only charcoal lay among the cinders.
    Hanka saw the ashes. She said nothing. From that morning on she never once lit the stove—it was always he who kindled it. # dalej
*   { not dlug_u_jagny } [Bury it under the young wood, as Staś advises.]
    ~ cialo_kopii = pod_mlodnikiem
    He dug the grave himself, beneath the last spruces, where the earth was soft with needles. Hanka stood beside him and would not let herself be comforted. # dalej
-   -> pogrzeb

= pogrzeb
{ cialo_kopii == pod_mlodnikiem:
    -> pogrzeb_pod_lasem
}
# tlo: pogrzeb
-> pogrzeb_trumienka

= pogrzeb_pod_lasem
# tlo: skraj_powrot
-> pogrzeb_trumienka

= pogrzeb_trumienka
~ zapiski += (dzieci_2, pan_lasu_11)
Jaromir made the little coffin himself, from the wood of the old elder—the very one in whose crown he had kept his den as a boy.{ zastaw_u_leszego == zastaw_siekiera: He felled it with an axe borrowed from his father-in-law.} People said such a tree must never be cut down, for it brings misfortune. Jaromir no longer cared. The fresh cut smelled bitter and sickly, and the last withered blossoms drifted from the branches onto his sleeve.{ kapliczki_drogi == ocalil_swiatka: As he was taking apart the boards of the den, the Mother of God he had once carried off Mr Urbaniak’s cart fell into his hands. He stood her at the head of the coffin.} In the silence there was only the knock of nails. # pokaz: trumienka
The village girls wove wreaths of cornflowers and camomile, picked straight from the field balk, and laid them on the lid. They smelled of a sun no one in Zapadlina had seen that day. # pokaz: wianki
{ pani_w_zbozu_noc == za_spiewem:
    Hanka did not sing—since that night in the rye she had not been able to. She spoke the words of the lullaby one after another, hoarsely, without a tune, and that was worse than weeping.
- else:
    Hanka sang the lullaby she had hummed to Marysia every evening. Her voice did not break once, and that was why it was the worst of all.
}
{ cialo_kopii == oddane_jagnie || cialo_kopii == spalone:
    There was no body in the little coffin—only Marysia’s dress, folded neatly, as if to be laid away in a chest.
}
{ skarb_dla_corki:
    Before they nailed down the lid, Jaromir placed in the coffin the treasure from the den—{skarb_jaromira == muszelka:the shell with the scratch left by a crooked little tooth|{skarb_jaromira == pioro:the chewed feather with its bitten quill|the nail with its brown rust}}.
- else:
    ~ ekwipunek -= bucik_marysi
    Before they nailed down the lid, Jaromir placed in the coffin {drugi_drewniak:both red clogs|the red clog—the only one he had left}{uklad_z_mamunami != oddany_skarb:, and beside {drugi_drewniak:them|it} the treasure from the box in the den—{skarb_jaromira == muszelka:the white shell|{skarb_jaromira == pioro:the jay’s feather|the rusty nail}}. He had meant to show it to his daughter one day}. # tobolek
}
{ cialo_kopii == pod_mlodnikiem:
    They covered the grave under the young wood with turf, and at its head Antek drove in a stick tied with the red ribbon Hanka had unplaited from the child’s hair, so that people would know the place. # dalej
- else:
    They buried the little coffin in the churchyard at Bukowiec, under a birch. The priest{ przysiega_ksiedzu:, who had taken Jaromir’s oath on the rosary,} did everything as it should be done and asked nothing.{ cialo_kopii == oddane_jagnie || cialo_kopii == spalone: When the gravedigger filled in the hole, the earth thudded on the lid so hollowly that Jaromir heard it for nights afterwards.} # dalej
}
-> jesien_po_pogrzebie

= jesien_po_pogrzebie
# tlo: jesien_zaduszki
Towards the end of August, on the night that marked three years since Marysia had come into the world, Hanka went to the grave alone and sat there until dawn. Jaromir did not follow her. He could not have looked her in the eye—because he knew what she would never say to him.{ znak_rozpoznania == po_imieniu: If only he had not called her by her name.}{ znak_rozpoznania == po_drewniaku: He had let himself be lured by a scrap of red, like a child.}{ znak_rozpoznania == po_buzi: He had looked at her and not known her.}{ znak_rozpoznania == po_cieniu: He himself had given away the very thing that later deceived him.}
Autumn came early. Threshing in the barns, rye sown for the winter, flax to be scutched—the village went about its work as it did every year, and Hanka with it, deftly and without a word. Every night Jaromir heard his wife get up and pace the room, from the stove to the window and back.
{ pies_pobiegl_sam:
    ~ ekwipunek += szczenie_psa
    The dog had found his way home from the forest in July, a week after St John’s, thin as a stick, and lain down under the bench where Marysia used to sleep. Nothing would coax him out. # tobolek
}
{ dlug_u_jagny && cialo_kopii != oddane_jagnie:
    Jagna never came again. The debt had not been paid, and Jaromir knew that she knew it too.
}
In October Hanka asked, without turning from the pot: “On All Souls’ the dead come back to their homes. So they say.” She stirred. “Will she come?”
Jaromir did not answer. He remembered the voice from the forest that had come halfway and fallen silent. He remembered the other one too: “On All Souls’ Day I shall come to the village. Then we shall settle our reckoning, to the very end.”
The nearer All Souls’ drew, the quieter Zapadlina became. People came home from the fields before dark and bolted their doors, and every evening a mist crept from the forest across the meadows, heavy and wet, right up to the fences. # pokaz: mgla
On the first of November the village went to the churchyard in Bukowiec. That year, instead of little lamps, people carried Candlemas candles from their homes. On the way back they went out in a single breath, every one of them, though the air was still. Only Hanka’s candle went on burning—evenly, calmly, as if in a shut room. # pokaz: zgasly, gromnica_hanki # dalej
-> rozdzial_dziewietnasty_ciag_dalszy


// Koniec rozdziału dziewiętnastego — dalej rozdział dwudziesty (Ostatnia noc).
=== rozdzial_dziewietnasty_ciag_dalszy ===
# ozdobnik
_End of Chapter Nineteen._ # dalej
-> rozdzial_dwudziesty
