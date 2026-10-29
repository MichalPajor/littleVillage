// ------------------------------------------------------------
//  Rozdział szesnasty — W głąb boru. Jaromir wchodzi do boru po Marysię.
//  Ścieżki zawracają: ubranie na lewą stronę (las wyjmuje mu z pamięci twarz
//  córki, pies ucieka sam), nacięcia na pniach (las jęczy), pies (poziomki
//  i ostry mech) albo dziura w chmurach z rady płanetnika (pragnienie).
//  O zmierzchu głosy: odpowiedział Marysi (Leszy go policzył), milczał albo
//  poszedł za Frankiem (biały wilk). Bagno z garnkami i błędnice: za światłami
//  (rozpruta torba), krąg z soli, wilk (rana dłoni), różaniec (spalony)
//  albo krzesiwo (pożar porostu). W sercu boru dąb i starzec, który zdejmuje
//  kapelusz i rośnie w Pana Lasu: „Usiądź, wnuku Maćka. Porozmawiamy”.
// ------------------------------------------------------------

=== rozdzial_szesnasty ===
# tlo: skraj_bor
# rozdzial: Chapter Sixteen
# tytul: Into the Forest
Seventy years after Grandfather Maciek had come down into Zapadlina with a bundle on his shoulder, Jaromir looked towards the forest for the first time – not the way one looks at the woods from the field, from the safe side of the fence, but the way one looks at a road that has to be travelled.
He stood at the edge of the young wood, axe in hand and a bag slung over his shoulder. He had wound Marysia’s ribbon round his wrist, so as to feel it with every movement.
{ obietnica_bor:
    Once he had promised {figurka_u_staruchy && los_psa == oswojony:his grandmother on her deathbed|his father} that he would never go into the forest, no matter who called him. He had kept that word for thirteen years. He took his first step between the pines warily, his heart in his throat, and felt that he was breaking something that could never be mended.
- else:
    {poszedl_po_wstazke:Ever since he had gone in among the spruces as a boy after Hanka’s ribbon, he had never ventured more than a few dozen paces deep.|He had never ventured more than a few dozen paces deep, to where the birds fell silent.} He had promised no one – his feet simply turned back of themselves whenever the trees began to stand too close.
}
{ droga_do_boru:
    On Urbaniak’s cutting pale shoots sprouted from every stump, and the ruts were overgrown with moss, though carts had driven along them only last autumn. At the first great pines the road came to an end, and beyond it there was nothing but forest.
- else:
    He forced his way through the young wood that had crept up to the village on the night of the fire. The spruces stood so thick that he had to squeeze through sideways, and needles showered down his collar.
}
{ ekwipunek ? szczenie_psa:
    Beyond the farmyard fences the dog caught up with him – he must have slipped away from Hanka at the door. Jaromir had not the heart to drive him off. He held out Marysia’s clog; the dog sniffed it, gave a thin whimper and ran on ahead. # pokaz: pies
}
Past the first pines everything went still. Needles fell from the branches straight down, without a rustle, for there was no wind to carry them aside. The meadow behind him was dripping with dew, but here the ground was dry and warm, the moss crackled underfoot like parched leather, and the air was heavy with the smell of resin and sun-heated wood that scratched at the throat.{ rada_przed_borem == rada_planetnika: “Where it doesn’t rain,” Jaromir remembered, and his fingers tightened on the axe handle.} # pokaz: igly
He walked straight ahead until the sun stood high. At last the spruces parted and he saw a wet meadow, {pani_w_zbozu_noc == z_pochodniami:trampled rye|{pole_zbite_gradem:corn beaten flat by hail|{pani_w_zbozu_noc == gonil_babe:trodden rye|rye}}} and the juniper at the edge of the young wood. He had come back to the very place he had set out from. He tried a second time, keeping the sun on his right hand. And a third. Each time the forest led him back to the village – gently, courteously, the way one sees to the gate a guest whom nobody invited.{ ekwipunek ? szczenie_psa: At every attempt the dog lagged a little behind, nose to the bark, and came back to Jaromir reluctantly, whining.}
# pytanie: How will Jaromir get through the forest?
*   [Turn his clothes inside out, as Mr Ignacy taught.]
    ~ wejscie_do_boru = ubranie_na_lewo
    # tlo: bor_suchy
    He took off his coat and shirt and put them back on with the seams outward.{ glos_w_lesie == kozuch: Just as on that winter night when he was nine and had stood {figurka_u_staruchy:in the fog-bound field|in the snow below the forest}.} When he set off again, the path no longer turned back. The forest took him in as one of its own – branches drew aside of themselves, and the moss guided his feet.
    { ekwipunek ? szczenie_psa:
        ~ ekwipunek -= szczenie_psa
        ~ pies_pobiegl_sam = true
        The dog sniffed at him from a distance and his hackles rose, as at a stranger. Then he ran on alone, following Marysia’s scent, and vanished between the trunks. Jaromir called him until he was hoarse. # pokaz: pies_ucieka # tobolek
    }
    He walked for a long time. Towards evening he sat down on a root and tried to call up Marysia’s face – and took fright. He could see the ribbon, he could see the clogs, he could hear her laugh, but her little face blurred like a reflection in water into which someone has thrown a stone. He squeezed his eyes shut and whispered, one by one: the freckles on her nose, the little tooth that was growing in crooked, the dimple in her left cheek. The forest had accepted him as its own – and was quietly taking from him whatever belonged to Jaromir alone. # dalej
*   [Mark the way with the axe on the trunks.]
    ~ wejscie_do_boru = naciete_pnie
    # tlo: bor_suchy
    Every few trunks he left a deep notch, at the height of his face. The resin that seeped from the wounds was cold as well water and so thick that it gummed up the blade – he had to wrench it out of the trunk with his whole weight. After an hour he looked back. The notches he had made at the start were healing over before his eyes – the bark slid down over them like an eyelid. # pokaz: naciecia
    But it was enough: whenever the path tried to turn back, he could see fresh wounds ahead of him and walked on. From somewhere deep in the forest, very far off, came a groan – low and drawn out, as when an old tree is toppling. Or as if someone very large had hissed with pain. Jaromir did not stop, but his hands began to shake and did not cease until evening. # dalej
* { ekwipunek ? szczenie_psa } [Trust the dog – a nose never loses its way.]
    ~ wejscie_do_boru = za_psem
    # tlo: bor_suchy
    “Seek,” Jaromir whispered, and once more held out the clog to the dog. “Seek Marysia.”
    This time he did not call him back. The dog went nose to the ground, zigzagging, now and then stopping to sniff the bark at the height of a child’s hand. The paths twisted, forked and turned back, but the dog paid them no heed – he scrambled through windthrows and squeezed under fallen trunks, straight along the scent. Jaromir followed, torn, bruised, his mouth full of needles. # pokaz: pies_trop
    Towards evening the dog stopped by a fallen pine and yelped. From a knot hung a shred of white linen – from Marysia’s shift. And beneath the knot, on the moss, someone had laid a handful of wild strawberries, neatly, one beside the next, as if for a child. They smelled so sweet that Jaromir’s mouth watered; he had eaten nothing since morning.{ rada_przed_borem == rada_jagny: “Whatever you find in the forest, don’t eat it,” he remembered, and clenched his fist until his nails bit into his palm.} He dragged the dog away by force. Only then did he see that the animal had blood on his paws – the moss around the strawberries was as sharp as broken glass. # pokaz: poziomki # dalej
*   { rada_przed_borem == rada_planetnika } [Go where there are no clouds over the forest.]
    ~ wejscie_do_boru = pod_czystym_niebem
    # tlo: bor_suchy
    Instead of watching the paths, he looked upwards. Grey, heavy clouds trailed over the forest – and between the treetops, far away, gaped a hole of clear sky, around which the clouds parted the way a current flows round a stone. He made for that hole, through windthrows and thickets, across every path, and the forest could not lead him back, because he was walking none of its ways. # pokaz: niebo
    But his neck ached from craning, his feet were scraped bloody on roots he could not see, and he had brought no water – in Zapadlina no one carried water into the forest. By evening his tongue was cleaving to the roof of his mouth, and every brook he passed babbled so invitingly that he had to turn his head away. # dalej
-   -> glosy_w_borze

= glosy_w_borze
# tlo: glosy_noc
At dusk the voices began to call him.
First Hanka. From the left, from behind dense spruces.
“Jaromir! Come back! She’s at home, she came back by herself, do you hear? Come back!”
{ pani_w_zbozu_noc == za_spiewem:
    The voice was whole – warm, a little husky, the way Hanka had spoken before that thing in the corn took half of it away. Now Hanka could barely whisper. Jaromir clenched his teeth.
- else:
    The voice was hers, down to every huskiness. Jaromir had taken a step that way before he remembered that Hanka had promised to keep the pine splint burning every night until they came back – by the village, not deep in the forest.
}
Then his mother, from the right, warm and gentle, the way she had spoken to him when he was small:
“Come to me, son. I’m cold. I’ve lost my way.”{ glos_w_lesie == odpowiedzial: The same words as that winter when he was nine and had answered. Every one.}
Then Franek – that Franek, Antek’s brother – cheerfully, from far off, just as he used to call him down to the lake long ago:
“Jaromir! This way! Come on, I’ll show you something!”
And last of all, thinly, from deep in the forest, a child began to cry.
“Papa! Papa, I’m scared!”
# pytanie: What will Jaromir do?
*   [Answer Marysia.]
    ~ glosy_boru = odpowiedzial_marysi
    “Marysia!” The cry burst from him unbidden. “I’m here! I’m coming to you!”
    The crying broke off mid-sob. The forest fell silent. After a moment, somewhere very close, right above his head, someone began to count, slowly and solemnly: # pokaz: liczy
    “…seven hundred and ninety-eight… seven hundred and ninety-nine…” A pause. “And you. Eight hundred. This one is mine.”
    { glos_w_lesie == odpowiedzial && zawolal_do_lasu:
        “I told you I would count you when the time came,” the same voice added, calmly, almost tenderly. “It has come.”
    }
    Jaromir fell to his knees. For a while he could not catch his breath – something heavy lay on his chest, pressing down. When he got up, he was certain of one thing: from now on the forest knew who he was, and had no more need to look for him. # dalej
*   [Keep silent and walk on.]
    ~ glosy_boru = milczal
    He bit his coat sleeve so as not to answer; his mouth tasted of wool and blood. Hanka called ever more desperately, his mother wept, Franek laughed and beckoned. And Marysia… Marysia cried all night long, nearer and farther, from one side and then the other, and kept saying “Papa, Papa”, and every “Papa” struck him where the little one used to nestle against him at night – just below the collarbone. In the end she began to ask why he did not come.
    He walked on. He did not answer once. Towards morning the crying died away – it did not break off, but slowly, very softly, faded out, like a child who has grown tired of calling and fallen asleep. For a long time Jaromir stood motionless, not knowing whether he ought to be glad of it. # pokaz: swit # dalej
*   [Follow Franek’s voice.]
    ~ glosy_boru = za_frankiem
    ~ zapiski += tropy_3
    “Franek?” Jaromir whispered, and turned left, in among the spruces.
    The voice led him a long way, laughing, calling, until at last it fell silent above a windthrow hollow. In the darkness, on a fallen trunk, sat the white wolf. # pokaz: wilk
    { oblawa_wilk == wydal_wilka:
        On his flank was an old, badly healed bullet wound – a thick, naked weal on the skin amid the white fur. When he saw Jaromir, he laid back his ears and bared his fangs. He did not attack. But all night long Jaromir heard his footfalls behind him – and knew that the wolf was not following him to keep him safe. # pokaz: rana # dalej
    - else:
        He was leaner than he had been that time in the young wood, and his muzzle had greyed – like an old dog’s, though barely two winters had passed since the hunt. He looked at Jaromir without malice. Then he leapt down from the trunk, turned his head to see whether Jaromir was following, and set off into the dark. # dalej
    }
-   -> bagno_w_borze

= bagno_w_borze
# tlo: bagno_blednice
Towards evening of the next day the forest sank lower and turned into a bog.
Between the trunks of rotting alders stood water – brown, motionless, with a rainbow scum on its surface – and out of it rose tussocks of sedge. It smelled of fermenting leaves and old iron; every breath settled on the tongue like rust. On the far side, where the forest rose again, the ground was dry and grey. There it did not rain. But to get there, he would have to cross this.
Along the edge, where the water was shallow, lay clay pots – upturned, bottoms up, one beside the next, further and further out, as far as the eye could see. Jaromir remembered the dream that had come to the children of Zapadlina the spring before, and felt the skin prickle on the back of his neck. # pokaz: garnki
~ zapiski += blednice_1
And then lights kindled above the water. # pokaz: blednice
First one, then a second, then a dozen or more – pale globes the size of a child’s head, hovering over the sedge. In each, as in a soap bubble, crouched a small shrivelled figure with eyes like two black seeds. These lights were nothing like the will-o’-the-wisps over the marshes below the village – those only winked from afar. These floated up close, whispered and cheeped thinly, like fledglings in a nest, and drifted off into the depths of the bog, turning back towards Jaromir again and again. They were beckoning.
# pytanie: How will Jaromir cross the bog?
*   [Follow the lights.]
    ~ przejscie_bagna = za_blednicami
    He followed them from tussock to tussock, and the lights wove before him, cheeping, waiting. For a while it seemed to him that they really were guiding him across the bog.
    When the grey light came, he saw that all night long he had been circling one and the same tussock – trodden down to bare earth. The bag hung from his shoulder slit open from bottom to top. The bread, the cheese, the salt and Marysia’s woollen frock were gone.{ ekwipunek ? ksiega: And with them Mr Ignacy’s book.} Only what he carried inside his shirt had survived: the clog{ ekwipunek ? zoladz: and the acorn}. A little way off, on the sedge, lay the frock spread out, as though someone had been trying it on – and before Jaromir could take a step, the water sucked it under. # pokaz: welniak # tobolek
    ~ ekwipunek -= ksiega
    He crossed to the far side at daybreak, by tussocks that were plain to see in daylight. He was shaking – and not from the cold. # dalej
*   [Pour a ring of salt and wait for dawn.]
    ~ przejscie_bagna = krag_z_soli
    He took from the bag the rag of salt Hanka had tied up for him and poured a ring around himself on a dry tussock. He sat down in the middle with the axe across his knees. # pokaz: krag
    The lights circled the ring all night, ever closer, ever more insistent, whispering to him in Hanka’s voice, in his mother’s voice, in Marysia’s. Towards morning one of the globes settled right by the salt, and in it Jaromir saw, clear as in a mirror, his daughter’s face – the freckles, the crooked little tooth, the dimple in her cheek. She was smiling at him and holding out her arms. He sat with his hands jammed beneath his thighs so as not to reach for her. The globe did not cross the salt. It went out with the others when the sun rose.
    In the grey light he saw a narrow causeway of logs running across the bog, which had not been visible in the night. He crossed by it. He had no salt left – all of it had stayed in the ring, melted into the moss. # pokaz: grobla # dalej
*   { glosy_boru == za_frankiem && oblawa_wilk != wydal_wilka } [Follow the white wolf.]
    ~ przejscie_bagna = za_wilkiem
    The wolf paid no heed to the lights. He crossed the bog surely, by tussocks Jaromir could not see at all in the darkness, and every few steps he turned his head. Jaromir set his feet exactly where the wolf had trodden. The lights hissed with rage and kept their distance. # pokaz: wilk
    On the far side the wolf stopped and, for the first time, looked Jaromir straight in the eyes. Jaromir could not bear it. He reached out a hand to touch him.
    “Franek?” he whispered.
    The wolf snapped – quick and short, like a dog that warns rather than bites. But his fangs laid open the back of Jaromir’s hand to the bone. When he raised his head, the wolf was gone. Blood dripped from his fingers onto the grey lichen and for a long time would not stop. # pokaz: krew # dalej
*   { ekwipunek ? rozaniec } [Grip the rosary tight and walk straight on, praying aloud.]
    ~ przejscie_bagna = z_rozancem
    “Hail Mary, full of grace…” Jaromir began, and took the first step.
    The lights howled – high and piercing, like birds caught in snares – and all went out at once. A darkness fell so thick that he could not see his own hands. He groped his way forward, testing the tussocks with the axe handle, and prayed until his throat was parched. # pokaz: ciemnosc
    ~ ekwipunek -= rozaniec
    He got across. But when he reached the far side, the rosary in his hand was charred, and the beads crumbled to ash at the first touch. # tobolek # dalej
*   { ekwipunek ? krzesiwo } [Strike sparks and follow their glow.]
    ~ przejscie_bagna = z_krzesiwem
    He took out his grandfather’s flint and steel and struck – once, twice. Sparks showered onto the sedge, and the lights sprang back from them with a squeal, as if scalded. He made his way across the bog, striking every few steps, and the globes parted before him. # pokaz: iskry
    On the far side a spark fell into the grey lichen – and the lichen caught in an instant, like gunpowder. Jaromir stamped at the flames, tore off his coat and beat at the fire with it until the skin of his hands cracked. He smothered it. But the forest had grown so quiet that he could hear his own heart, and for a long time he could not shake the certainty that every tree around him was listening. # pokaz: ogien # dalej
-   -> serce_boru

= serce_boru
# tlo: serce_boru
Beyond the bog the forest was different.
The trees stood further apart, but they were so old that Jaromir could not take in their crowns at a glance. Bark and moss had grown together into one, grey and soft as fur. No grass grew underfoot, only a dry grey lichen, and the air was so heavy and still that every breath tasted of dust. Here it did not rain. Not ever.
In the middle of the clearing stood an oak – larger than the Old Oak had ever been, so vast that its roots broke from the earth like the backs of enormous fish. A cleft gaped in its trunk, the height of two men, and from it came the chill of a cellar.
From behind the oak, softly, came singing. Marysia’s tune – short and sad. Only this time it did not break off halfway. Someone was singing it through to the last note in a deep, rough voice, like the creak of a tree in the wind. Jaromir had never heard how it ended. He felt robbed: he was the one who should have heard that ending first – together with her, by her bed. # pokaz: spiew
Out of the oak’s shadow stepped an old man. # pokaz: starzec
Jaromir knew him at once – it was he who had stood at the edge of the woods on the night of the wedding{ poszedl_po_wstazke:, and he who years ago had waited in the half-light of the forest beside Hanka’s ribbon}. Only then he had been far away. Now Jaromir could see that the sheepskin was not sewn but grown, like bark, and that the moss on the hat was fresh and damp, though not a drop of rain had ever fallen here. The old man cast no shadow.
“Seventy years I have waited,” he said. The voice came not from his mouth but from everywhere – from the trees, from the earth, from the air. “For one of you to come here on his own.”
# pytanie: What will Jaromir do?
*   [Take off his cap and bow as to the eldest in the village.]
    ~ przed_panem_lasu = uklon
    Jaromir took off his cap and bowed low. The old man studied him for a long while, and then, for the first time, something in his face stirred.
    “Courteous,” he said. “That I did not expect of your kind.” # dalej
*   [Raise the axe and demand his daughter.]
    ~ przed_panem_lasu = uniosl_siekiere
    “Give her back to me,” said Jaromir, and raised the axe. “Give me back my daughter.”
    The old man looked at the axe, and the leaves on his staff blackened and curled. # pokaz: liscie
    “{siekiera_dziadka:I know this iron|I know iron like this},” he said quietly.{ wejscie_do_boru == naciete_pnie: “And you have wounded a hundred of my trees. I remember each one.”} # dalej
*   [Call out to Marysia.]
    ~ przed_panem_lasu = zawolal_marysie
    “Marysia!” Jaromir shouted. “Marysia, it’s Papa!”
    The singing broke off. For one terrible moment there was silence. And then laughter answered him – a child’s laughter, carefree, happy, Marysia’s laughter. But it came from behind him, from the bog he had only just crossed.
    The old man shook his head as over someone who has made an obvious mistake. # dalej
-   ~ zapiski += (starzec_4, pan_lasu_8)
The old man took off his moss hat. Beneath it there was no face, only bark – and two pale, unmoving eyes, set deep in it like knots. Then he began to grow. The sheepskin crumbled into moss and lichen, the staff took root in the ground, and his beard flowed down to his knees, then to the earth, grey and thick as the moss on the north side of trunks. Antlers burst from his brow, spreading and tangled like the branches of a windfall. He grew until his head was among the treetops and leaves rustled all about it. # pokaz: pan_lasu
The Lord of the Forest bent down over Jaromir.
“Sit, grandson of Maciek,” he said, and at his voice the whole forest trembled. “We shall talk.” # dalej
-> rozdzial_szesnasty_ciag_dalszy


// Koniec rozdziału szesnastego — dalej rozdział siedemnasty.
=== rozdzial_szesnasty_ciag_dalszy ===
# ozdobnik
_End of Chapter Sixteen._ # dalej
-> rozdzial_siedemnasty
