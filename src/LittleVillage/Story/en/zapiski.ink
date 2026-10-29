// ------------------------------------------------------------
//  Zapiski — bestiariusz. Każda istota ma kilka wpisów (etapów),
//  które fabuła odsłania dopiero wtedy, gdy bohater czegoś się dowie:
//      ~ zapiski += licho_2
//  Kolejność na liście = kolejność kart. Tytuł karty bierze się z
//  najnowszego odsłoniętego wpisu (np. „Jednooka żebraczka” → „Licho”).
//  Wpisy nie mówią więcej, niż w tej chwili wiedzą postacie.
// ------------------------------------------------------------

LIST Zapiski = stwor_1, zielarka_1, pan_lasu_1, starzec_1, polnocnica_1, polnocnica_2, dziad_1, stwor_2, zielarka_2, ogniki_1, uboze_1, pan_lasu_2, poludnica_1, pan_lasu_3, rusalki_1, uboze_2, licho_1, licho_2, licho_3, pan_lasu_4, starzec_2, tropy_1, mamuny_1, odmieniec_1, mamuny_2, tropy_2, pan_lasu_5, strzyga_1, strzyga_2, mamuny_3, starzec_3, ogniki_2, stwor_3, zielarka_3, pan_lasu_6, uboze_3, zytnia_baba_1, zytnia_baba_2, pan_lasu_7, planetnik_1, tropy_3, blednice_1, starzec_4, pan_lasu_8, pan_lasu_9, zielarka_4, tropy_4, dzieci_1, pan_lasu_10, tropy_5, mamuny_4, tropy_6, dzieci_2, pan_lasu_11, pan_lasu_12, zielarka_5, tropy_7, dzieci_3
VAR zapiski = ()

=== function tytul_zapisku(z)
{ z:
    - stwor_1:      ~ return "The Thing in the Thicket"
    - stwor_2:      ~ return "The Drowned One"
    - zielarka_1:   ~ return "The Herbwoman from the Lake"
    - zielarka_2:   ~ return "The Herbwoman from the Lake"
    - pan_lasu_1:   ~ return "The Lord of the Forest"
    - pan_lasu_2:   ~ return "The Lord of the Forest"
    - pan_lasu_3:   ~ return "The Lord of the Forest"
    - pan_lasu_4:   ~ return "The Lord of the Forest"
    - starzec_1:    ~ return "The Old Man in the Moss Hat"
    - starzec_2:    ~ return "The Old Man in the Moss Hat"
    - polnocnica_1: ~ return "Lady Midnight"
    - polnocnica_2: ~ return "Lady Midnight"
    - dziad_1:      ~ return "The Old Man with the Hurdy-Gurdy"
    - ogniki_1:     ~ return "Will-o’-the-wisps"
    - uboze_1:      ~ return "The Hearth Sprite"
    - uboze_2:      ~ return "The Hearth Sprite"
    - poludnica_1:  ~ return "Lady Midday"
    - rusalki_1:    ~ return "Rusalki"
    - licho_1:      ~ return "The One-Eyed Beggar Woman"
    - licho_2:      ~ return "The Licho"
    - licho_3:      ~ return "The Licho"
    - tropy_1:      ~ return "Under the Window"
    - tropy_2:      ~ return "The White Wolf"
    - pan_lasu_5:   ~ return "The Lord of the Forest"
    - mamuny_1:     ~ return "Mamunas"
    - mamuny_2:     ~ return "Mamunas"
    - odmieniec_1:  ~ return "The Changeling"
    - strzyga_1:    ~ return "The Dead Man Who Won’t Go Cold"
    - strzyga_2:    ~ return "Strzyga"
    - mamuny_3:     ~ return "Mamunas"
    - starzec_3:    ~ return "The Old Man in the Moss Hat"
    - ogniki_2:     ~ return "Will-o’-the-wisps"
    - stwor_3:      ~ return "The Drowned One"
    - zielarka_3:   ~ return "The Herbwoman from the Lake"
    - pan_lasu_6:   ~ return "The Lord of the Forest"
    - uboze_3:      ~ return "The Hearth Sprite"
    - zytnia_baba_1: ~ return "The Woman in the Rye"
    - zytnia_baba_2: ~ return "The Rye Mother"
    - pan_lasu_7:   ~ return "The Lord of the Forest"
    - planetnik_1:  ~ return "Planetnik"
    - tropy_3:      ~ return "The White Wolf"
    - blednice_1:   ~ return "Wisplings"
    - starzec_4:    ~ return "The Old Man in the Moss Hat"
    - pan_lasu_8:   ~ return "The Lord of the Forest"
    - pan_lasu_9:   ~ return "The Lord of the Forest"
    - zielarka_4:   ~ return "The Herbwoman from the Lake"
    - tropy_4:      ~ return "The White Wolf"
    - dzieci_1:     ~ return "The Children under the Oak"
    - pan_lasu_10:  ~ return "The Lord of the Forest"
    - tropy_5:      ~ return "The White Wolf"
    - mamuny_4:     ~ return "Mamunas"
    - tropy_6:      ~ return "The White Wolf"
    - dzieci_2:     ~ return "The Children under the Oak"
    - pan_lasu_11:  ~ return "The Lord of the Forest"
    - pan_lasu_12:  ~ return "The Lord of the Forest"
    - zielarka_5:   ~ return "The Herbwoman from the Lake"
    - tropy_7:      ~ return "The White Wolf"
    - dzieci_3:     ~ return "The Children under the Oak"
}
~ return ""

=== function tresc_zapisku(z)
{ z:
- stwor_1:
    Three heads taller than a man, hunched, with arms hanging almost to the ground and long, wet hair. It reeks of the bog. It came out of the mist when the crickets and frogs fell silent, and went off towards the marshes. {czary.noc:Maciek saw it once more – on the threshold of his own hut.|Maciek saw it only once – and never forgot it.}
- stwor_2:
    Half a century later it returned, when the children were drowning Marzanna – {obejrzal_sie:a grey hand dragged the effigy under the water|something jerked the effigy from below and pulled it under}.{figurka_u_staruchy && los_psa == oswojony: “His kind don’t die. They wait.”}{not figurka_u_staruchy || los_psa == oswojony: The old folk say that whoever drowns without a priest goes neither to heaven nor to hell, but stays in the water. Down on the bottom the drowned one keeps the souls of those the water has taken under clay pots turned upside down, and at night it overturns them one after another. When a pot cracks, the soul escapes to the surface in a bubble.}
- zielarka_1:
    She lived by the lake, where charred logs jut from the reeds. She healed people with herbs, until she began talking at night with someone nobody could see. When milk started to sour in the village and the cattle to die, the peasants nailed planks across her door and set fire to the hut. Dying, she cursed the village and everyone who would ever live in it. Those who burnt her did not live to see the winter – one after another they walked into the bog.
- zielarka_2:
    The curse did not die out with the fire. Grandfather Maciek carried it within him all his life – {figurka_u_staruchy:and paid for it more dearly than he cared to tell anyone|and told his son of it as if it were a fairy tale, though he himself never laughed at it}.{chata_macka != nad_jeziorem: To this day no one in Zapadlina builds on the western side of the lake.}
- pan_lasu_1:
    The old folk have different names for him – Borowy, the Lord of the Forest – and the very oldest have none at all, for it is wiser not to call him by name. He lives in the deepest part of the forest and guards it as a farmer guards his farmstead. Whoever goes in there without asking, he leads astray till the man walks round in circles. Whoever loses his way should take off his clothes and put them on inside out – then Borowy loses track of him, for he thinks he is looking at one of his own.
- pan_lasu_2:
    There are trees he guards like his own heart. The Old Oak at the edge of the forest was the boundary – as long as it stood, the forest ended where it ended.{ franek_scial_dab: It was Franek who struck the first blow.}{pracowal_w_tartaku: Old Wawrzyniec from the sawmill used to tell how, when the first people came down into this valley, they had to promise never to go past the Old Oak with an axe – and only then did the woods draw back – and in return, once in a generation, he takes a child for himself for a few nights. “The wayside shrines are like nails in a fence. Pull out one, and the fence still stands. Pull out the lot…”}
- pan_lasu_3:
    {ostrzezenie_poludnicy:Lady Midday said it plainly: the Lord of the Forest is waking.{pomylki_poludnica == 0: With every tree felled his sleep grows shallower.}|Something changed after the Old Oak was cut down. In the gardens, between the beds, moss sprang up in a single night as if from beneath the oldest spruces, and every morning the green on the forest side stood closer to the fences.}
- pan_lasu_4:
    When Urbaniak’s men dug up the wayside shrines along the forest edge, young spruces sprang up overnight in the pits they left. With each day the forest seemed to stand nearer the village.{ kapliczki_drogi == obronil_kapliczke: Only one shrine held out – the one Jaromir had defended.}
- starzec_1:
    {poszedl_po_wstazke:He stood in the half-light of the forest, so tall he would have had to stoop to enter a hut. A sheepskin coat turned fleece-out, belted with string; a broad-brimmed hat of moss, and beneath it only two bright points of eyes. He leant on a knotted staff from which leaves were sprouting. In his hand he held Hanka’s ribbon.|Someone had drawn him in Mr Ignacy’s book: an old man in clothes turned inside out, in a moss hat.}{czytal_ksiege: Beneath the drawing in the book it said: “Whoever meets him, let him do just as he does. That one comes from the other side, where everything is the wrong way round.”}
- starzec_2:
    He came to Jaromir and Hanka’s wedding – he stood at the edge of the woods and nodded along in time to the music.{ poszedl_po_wstazke: He had not aged a single day.} {weselny_gosc == ugoszczony_kolaczem:He accepted the wedding loaf and inclined his head as one master of a house to another.|{weselny_gosc == zapytany:He spoke in a voice like wind in the treetops: “You’ve chosen well, grandson of Maciek. Watch over her.”|He stood there until first cockcrow.}}
- polnocnica_1:
    She comes to infants after midnight. First it grows cold, then a rustling like dry leaves fills the room. Antek saw only a pale shape above the cradle and black hair reaching to the very floor. Instead of crying, the child wheezes, as though it cannot catch its breath. She is afraid of iron beneath the pillow.{rada_jaromira == ksiega_rada: Mr Ignacy’s book adds that she must count scattered poppy seed grain by grain – and she can count only until dawn.}
- polnocnica_2:
    Up close you can see all of her: she floats above the floorboards without touching them with her feet, in a shroud tattered at the hem, with a face as gaunt as a death’s-head, eyes like two black wells and small, sharp teeth. {rada_jaromira == hanka:Hanka’s grandmother says she is the soul of a mother who died in childbirth before the priest could church her – she never got to hush her own child, so she goes to other people’s. And that she never comes of her own accord: someone has to show her the way. }{polnocnica == przegnana_nozem:Zosia was saved by the little knife slipped under her pillow.|{polnocnica == policzyla_mak:Zosia was saved by the poppy seed – Lady Midnight counted until dawn and never finished.|Zosia lived, but a grey spot was left on her forehead, as if from the touch of a dirty finger.}}
- dziad_1:
    He knocked on Christmas Eve, just after they had shared the Christmas wafer: bent, in rags, a hurdy-gurdy on his back, with eyes white as milk. {wpuscil_dziada:He ate little, sang a song about the souls who return to their cottages on this night, and went off into the darkness, though no one saw which way. On his way out he whispered to Jaromir: “You smell of the forest, boy.”|They did not let him in. He set off towards the forest and vanished into the driving snow halfway across the field.} On Christmas Eve no beggar is turned away from the door, for one never knows who has come – sometimes it is the soul of someone from the family returning in disguise, to see whether it is still remembered.
- ogniki_1:
    Pale little lights over the marshes by the footbridge, which kindle at dusk and giggle like someone who has been given a present. The village women say they are the ones who burnt the herbwoman from the lake – they walked into the bog, and to this day they shine there at night. Whoever follows such a wisp will never come back.
- uboze_1:
    A tiny old man no bigger than a cat, in a patched coat and a little red cap, with a grey beard wound round his chicken’s feet. It lives behind the stove in old cottages. Whoever feeds the Hearth Sprite prospers in house and farmyard; whoever drives it out brings poverty upon the home. The Hearth Sprite comes along with the first master of the house and stays as long as the cottage stands. When the cottage burns, it departs with the smoke and never returns.
- uboze_2:
    {uboze == nakarmione:It repays kindness quietly: no mice breed in the pantry, there is always more milk in the jug than was poured{rozdzial_dziewiaty:, and in the hungry winter the flour somehow will not run out}. Only, whatever is gained in one cottage is lost in another – at Staś’s the milk went sour all through those same months.|{uboze == przegnane:Ever since it was driven out, the cottage has seemed to bear them a grudge: the hens stopped laying, and in the pantry something was forever going bad.|No one ever saw it again. Only sometimes, in the morning, the ashes on the ledge by the stove were scratched about, as if by a hen looking for a place to roost.}}
- poludnica_1:
    A tall, white woman in a long shift. At high noon she comes to the fields. Her feet do not touch the ground, her eyes are white, without pupils, and in her hand she holds a sickle. To whoever works in the fiercest heat she sets riddles – for every mistake she slashes with the sickle.{ not figurka_u_staruchy: They say she was once the best reaper in those parts: she wagered with the farmhands that she would reap a whole strip of rye alone by noon, and she would not leave the field in the worst of the heat. They found her in the evening with the sickle in her hand and ears of grain in her hair.}{ poludnica_uklon: She bowed her head to the answer from the book.}{ poludnica_darowala: She forgave Jaromir one mistake, because he did not shrink from her blade.}{ blizna_sierpa: She left Jaromir with a crescent-shaped scar.}
- rusalki_1:
    Souls of drowned girls. At Whitsun they come out of the lake and dance in the moonlight – young, pale, in wet linen shifts, with garlands of rushes and eyes wholly black, without whites. They lure with wordless song and drag down into the depths anyone who lets himself be tempted. They show themselves only from Whitsun until St John’s Day; the rest of the year they sleep in the silt on the bottom. One of them was Kaśka, the Wójciks’ daughter.{ratunek_franka == piolunem: They fear wormwood more than fire – but the one who gave it they never forget. The water did not give back Hanka’s garland.|{ratunek_franka == krzyzem: The cross does not burn them – “we were here before it”. They let Franek go, but the water did not go to sleep hungry – in the morning Bartek, the miller’s son, was found in the rushes.| Kaśka let Franek go when Hanka called her by name. On Jaromir’s cheek, where she had touched him, a white, cold mark remained.}}
- licho_1:
    A small, stooped beggar woman, barely waist-high to a grown man, wrapped in so many rags that you cannot tell where one ends and the next begins. She has only one eye, red-rimmed; in place of the other there is smooth grey skin. Her shadow is too long and falls towards the sun, the opposite way from all the others. Whoever sees her by his fence will meet misfortune the next day.
- licho_2:
    Hanka’s grandmother called it by its name: the Licho that never sleeps. It goes from cottage to cottage and settles wherever it feels at home – where the forest is felled and holy things are shoved from corner to corner. It will not enter a cottage until someone calls it in. Driven off, it moves on to the neighbour’s; made welcome, it leaves sated. Hanka’s grandmother heard from her mother that its other eye stayed behind in the forest, because the Licho is the eyes the Lord of the Forest sends out among people – she herself does not know whether it is true.
- licho_3:
    {licho_noc == ugoszczone:When it had been given pork fat, it went off down the road to the sawmill – and in the morning Urbaniak’s saw cracked, and his best horse dropped dead in the stable.|{licho_noc == odpedzone:Driven off with a burning brand, it fled towards the forge – that night the smithy burnt to the ground.|Till morning it scratched at the door and tempted them with the smell of bread, and the plank it knocked on rotted through in a single night. No one answered it.}} In October it went away along the road below the forest and walked in among the trees, as if someone had called it.
- tropy_1:
    On the morning after the wedding the whole yard was white with hoarfrost – only under the window of the new room had the frost melted in a broad oval, down to the bare earth, as if something large and warm had lain there all night, curled up in a ball. The ground was still lukewarm. Hanka covered the spot with ash and bade them tell no one.
- mamuny_1:
    They live by the lake. The children they bear themselves are ugly and sickly, so they steal healthy ones from people – while the child is still unbaptised – and leave their own in the cradle. On summer nights you can hear them beating their washing against the stones with paddles. Hanka’s grandmother says they wash shrouds for those who will die in the village before next spring – and over each shroud they call out someone’s name. Better not to listen. They fear red, iron and the Candlemas candle.
- mamuny_2:
    Tall and hunchbacked, with heads too big for their frail necks and hair like dry twigs, in rags of moss and bark. Their touch is cold and wet.{noc_mamun == zaslonil: When they do not get a child, they take the mother’s milk.} They can hum in such a way that the sleeper rises and takes the charms off the cradle himself.{podmiana:{uklad_z_mamunami == oddany_skarb: For Marysia they took Jaromir’s childhood treasure and flung it into the lake.|{uklad_z_mamunami == dar_swietojanski: For Marysia Jaromir promised them, every year on Midsummer Night, bread and a garland on the stone by the shore. If he forgets, they will come for what is theirs.|{uklad_z_mamunami == oddane_lata: For Marysia they took years of Jaromir’s life – his temples went grey like an old man’s.| Only water boiled in eggshells undid the exchange.}}}}{sposob_na_odmienca == chrzest_odmienca: They will not forget that their child was turned to splinters.}
- odmieniec_1:
    A child of the mamunas, left in the place of a human one. From afar it looks like the other, but it is heavier and cold, its skin is like bark, and its eyes are darker than any child’s. It does not cry, only eats without end, and when it thinks no one is looking, it smiles like an old woman. The exchange can be undone only within seven days.
- tropy_2:
    An enormous old dog-wolf, bigger than any other in those parts, so gaunt that every rib shows under the white fur. He leads the pack, but does not come near the byres himself.{noc_wilkow == bronil_obory: With a single howl he can call it off from a byre.} On one foreleg he has a ring of worn, thinner fur, in the same place where Franek had three claw marks. His eyes are human: bright, sorrowful, with a clear pupil. Antek says he would not mistake them for any others.{oblawa_wilk == wydal_wilka: Pawlik the gamekeeper put a bullet in him, and he escaped into the forest, leaving a bloody streak on the snow. Since then his howl has sounded different.| He survived the hunt. The next morning a hare with its neck bitten through lay on the stump by the fence.}{noc_na_kladce != (): On the night Józek walked in his sleep to the footbridge, something white flashed along the causeway beyond the marshes – and the drowned one turned its head at the howling.}
- pan_lasu_5:
    The young wood, which over a few years had crept from the forest right up to the farmyard fences, became a hiding place for wolves. The old folk say the woods do not grow towards a village without reason: first come the trees, then the beasts, and last of all the one who rules them.
- strzyga_1:
    {sprawdzil_zeby:Old Wójcik had two rows of teeth – one behind the other, small and sharp as a pike’s.|People said old Wójcik had been born with teeth.} Whoever is born with teeth or with two hearts has two souls. After death one goes to God, and the other stays in the body and gives it no rest: the corpse does not grow cold, the cheeks stay rosy, the eyelids will not close. Around midnight such a dead man rises. In the old days he was buried face down, with a sickle over his throat and poppy seed in the coffin – so that he could not turn over, so that he would cut himself if he tried to rise, and so that the poppy would lull him to sleep until the Last Judgement.
- strzyga_2:
    {polnoc_strzygi == na_twarz:Turned face down against the board, he thrashed until first cockcrow and bit Antek on the hand. The wound was long in healing.|{polnoc_strzygi == sierp_przy_szyi:When the sickle touched his neck, thick black blood flowed from it.|He was calmed only by the Candlemas candle in his hands; then he spoke his daughter’s name.}} {pochowek_wojcika == pochowany_za_murem:He was buried outside the churchyard wall, face down, and never came back.|{pochowek_wojcika == pochowany_z_makiem:He was laid to rest in consecrated ground with Hanka’s poppy seed on his breast and never came back. For that poppy seed the priest barred her from communion until Easter.|{trzy_noce == rozkopany_grob:He came back after three nights and stood beneath the window by Marysia’s cradle, until Jaromir and Antek dug up his grave.|He came back after three nights. He went away from the window behind which Marysia slept – but that morning Mrs Wójcik was found dead.}}}
- mamuny_3:
    Over their washing they call out the names of those whose shrouds they are laundering. Mrs Wójcik listened from the reeds in June and caught only one name. In November her husband died.{trzy_noce == czuwanie_przy_kolysce: She was mistaken – or did not want to hear the second.}
- starzec_3:
    On Christmas Eve Hanka left a place set at the table for a wanderer. In the morning, on the plate, where the Christmas wafer had been, lay a handful of fresh green moss – in the very depths of winter.
- ogniki_2:
    When the figurine {przeszukal_zgliszcza && not figurka_w_bagnie:came back to Zapadlina|came to the surface}, the wisps began to creep up to the fences – closer every night, as though waiting for someone to open the door.{los_figurki == figurka_w_skrzyni: They still burn, but beyond the footbridge, far from the fences.}{los_figurki == figurka_pod_kapliczka || los_figurki == figurka_u_jagny || los_figurki == figurka_u_stwora: They all went out at once, on the same night the figurine stopped calling.}
- stwor_3:
    It returned to the marshes together with the figurine. The children of the village all had the same dream of it: it stands beneath the footbridge in the black water, overturning clay pots, looking under each one, and then it asks: “Where is my doll?”{figurka_u_staruchy: On its arm it bears a deep old scar from Grandfather Maciek’s axe.}{noc_na_kladce == siekiera_na_kladce: Jaromir wounded it with the axe, and it tore his shoulder open.}{noc_na_kladce == figurka_dla_stwora: When it was given the figurine, it let the boy go and pressed it to its breast as a mother does a child. Sinking beneath the water, it dragged the old footbridge down after it.}{noc_na_kladce == latarnia_na_wodzie: It fears fire more than iron – it fled from the burning oil.}
- zielarka_3:
    {zaufal_jagnie:Jagna says the figurine is a doll: the herbwoman carved it from a root pulled out of the bog and gave it the name of the one who lives in the water. Whoever holds the doll, that one follows. The doll does not fear fire – only consecrated ground will quiet it.{odrzucil_figurke: Once pushed away, it can never be given to anyone again.}|The charred figurine from the lake {przeszukal_zgliszcza && not figurka_w_bagnie:came back to Zapadlina|came to the surface} after more than sixty years – and the dreams returned with it.}{los_figurki == figurka_pod_kapliczka: It lies now beneath a wayside shrine, and which one, only Jaromir knows.}{los_figurki == figurka_u_jagny: Jagna took it away with her, so far that the drowned one would not hear it.}{los_figurki == figurka_w_skrzyni: The fire did not take it. It lies in a chest under the bed, wound about with a chain.}{los_figurki == figurka_u_stwora: It now belongs to the one who lives beneath the footbridge.}
- pan_lasu_6:
    On the night the wayside shrines burned, the forest advanced on the village by a whole field. The trees that stood in the morning where the stubble had been looked as if they had grown there for years. The stakes marking out Urbaniak’s road put out shoots, and every morning new twigs sprouted from the stumps along the cutting.{droga_do_boru: The road reached the first great pines and there it broke off – no one was willing to cut any further.}{szarwark && not droga_do_boru && rozdzial_czternasty.pierwszy_snieg_czternasty: The young wood halted at the line of the burnt shrines and grew no further.}
- uboze_3:
    It woke the master of the house by tugging at his hair when the fire came from the woods. It was so frightened that its beard shook. The Hearth Sprite remembers who fed it.
- zytnia_baba_1:
    Short, stooped, broad in the hips as a sheaf, with a face wrinkled like a baked crust of bread and hair made of ears of rye. She smells of warm corn. She squats among the stalks and swings before the children whatever belongs to them, like a rattle.
- zytnia_baba_2:
    Old Staś says the rye mother catches children in the corn and leaves them there – but Marysia she did not leave. She led her across the field right up to the woods, as if bringing her to someone.{pani_w_zbozu_noc == gonil_babe: Whoever chases her goes round and round the field until dawn, and in the cuts from the stalks there remain awns that work their way ever deeper.}{pani_w_zbozu_noc == za_spiewem: She sings in the mother’s voice – and afterwards the mother is left with a voice cracked in two.}{pani_w_zbozu_noc == z_pochodniami: When the whole village searches for her, she flees – but leaves a trampled field behind her.}
- pan_lasu_7:
    {rada_przed_borem == rada_ksiedza:The parish books record that once every few decades a child disappears from a village below the forest, always on Midsummer Night. Those who come back remember nothing.|{rada_przed_borem == rada_jagny:Jagna says the woods take children when their lord awakes – they do not kill them, only keep them.|The planetnik says the clouds part above the forest, and for as long as anyone can remember, not a single drop of rain has fallen there.}}
- planetnik_1:
    A tall old man in rags, with a beard tossed by the wind and a sack on his back. He walks ahead of a storm, leading the clouds on a rope. Whoever gives him bread, over that man’s field the clouds will not burst – and whoever asks him anything will pay with his field.
- tropy_3:
    {oblawa_wilk == wydal_wilka:The bullet wound healed badly. In the forest he followed Jaromir all night – and not to guard him.|He found Jaromir in the forest, when the man had gone after Franek’s voice.{przejscie_bagna == za_wilkiem: He led him across the bog. When Jaromir held out his hand to him and called him Franek, he snapped his teeth – as a warning, but hard enough to draw blood.}}
- blednice_1:
    Pale globes of light over the bog deep in the forest, the size of a child’s head. In each globe sits a small huddled figure with eyes like black seeds. These are not the will-o’-the-wisps from below the village: they do not wink from afar, but drift up close, cheep like nestlings and beckon.{przejscie_bagna == za_blednicami: They lead a man round and round a single tussock until dawn and take whatever he carries in his bag.}{przejscie_bagna == krag_z_soli: They do not cross salt, even when they wear the face of one’s nearest and dearest.}{przejscie_bagna == za_wilkiem: They keep well away from the white wolf.}{przejscie_bagna == z_rozancem: Prayer snuffs them out, howling – but they take something in return.}{przejscie_bagna == z_krzesiwem: They are afraid of sparks.}
- starzec_4:
    In the heart of the forest he took off his hat.
- pan_lasu_8:
    In the heart of the forest, where it never rains, stands an oak greater than the Old Oak ever was. There the old man in the moss hat bared his head. Beneath the hat was bark. Antlers shot from his brow, and he himself grew taller than the treetops and cast no shadow. He had waited seventy years for someone of Maciek’s blood to come to him of his own accord.
- pan_lasu_9:
    The valley was once his, from the ridge to the lake. He drew back when the first of the people came to the Old Oak without an axe and said: we will go no further. In return the Lord of the Forest takes one child a generation, on Midsummer Night, and gives it back before it forgets its home. The oak was the boundary, the pact the fence, and the wayside shrines the nails.{chata_macka == przy_lesie: Maciek, who knew nothing of all this, built his cottage on the forest side and on the first morning drove his axe into a spruce. With him the counting began.} Marysia he took himself – it was he who sent the rye mother for her. Whether to hide her from those by the water or to keep her for himself, he did not say. Since the fence fell, the curse has been waking his servants and drawing them to the cottages. This time he will make them pay for her, because it was the village that broke the pact, not he.{pytanie_do_leszego == kim_jest: He was in the valley before the first people came down into it. He counts the old trees felled beyond the boundary and the people who gave themselves to him willingly. When he has counted to a thousand, he will fall asleep for good, and someone else will count in his place. He too once came to the forest of his own accord.}{pytanie_do_leszego == gdzie_marysia: His children cast no shadow.}
- zielarka_4:
    Those from the water came to her – and the Lord of the Forest. Once he showed her in the water a hut in flames – her own – but she did not believe him. Burning, she cursed the village through other hands than hers: “The bones of your children shall be broken, and their blood drunk.” As long as the Old Oak stood, the word given was stronger than the curse.{pytanie_do_leszego == o_klatwe: The curse will be lifted by whoever gives the Lord of the Forest back his boundary, or by whoever takes his place. Or by the fire that began it – but after that neither forest nor village will remain.}{zastaw_u_leszego == zastaw_krzesiwo: The flint and steel that Maciek found in her ashes carries within it the same embers that burnt her.}
- tropy_4:
    He brought Marysia’s other clog to the oak – the one the rye mother had rocked. {wilk_przy_jaromirze:He set it down at Jaromir’s feet and lay beside him all night.|He gave it to the Lord of the Forest and stays at his side, indifferent as the trees.}{wilk_pod_debem != nie_ruszal_sie: Every human word that comes back to him takes away a piece of his wolf’s life.}
- dzieci_1:
    At dawn they come out of a cleft in the oak and sit down in a circle: a dozen or more little girls with a single face, in the same little shifts and with new ribbons in their hair. They smile politely and patiently, speak with one voice, smell of rotting wood. When the father chooses, the rest crumble into dry leaves and bark.{znak_rozpoznania == po_melodii: They sing the tune right to the end.}{znak_rozpoznania == po_buzi || znak_rozpoznania == po_skarbie: Whatever the child has on the left, they have on the right{skarb_dla_corki:, and what hangs at her neck hangs smooth and new at theirs}.}{pytanie_do_leszego == gdzie_marysia: They cast no shadow and never cry.}
- pan_lasu_10:
    {marysia_odzyskana:He kept his word: whoever recognises his own child takes it away, and no one stops him.|He kept his word: whoever chooses wrongly takes home what he chose – and buries it as his own.} He announced that on All Souls’ Day he would come to the village to settle the reckoning to the very end.
- tropy_5:
    He helped to find the real child, though the servants of the Lord of the Forest do not help people. He stayed beneath the oak, with the Lord of the Forest’s hand on his nape.
- mamuny_4:
    At the end of August, on the flat stones on the far side of the lake, they were washing a small shroud. On All Souls’ Day they brought it in the retinue of the Lord of the Forest and called “Marysia” over it. They do not choose for themselves – they wash whatever the water brings them. Until the shroud dries at daybreak, the name can still be rinsed out of it, but someone must pay for that.{cena_caluna == cena_umowa: From now on Marysia too will bear the Midsummer gift, to the end of her life.}
- tropy_6:
    On All Souls’ night he tore apart the mamunas’ shroud bearing Marysia’s name, and they dragged him under the water. Antek knew him by the ring of worn fur on his foreleg.
- dzieci_2:
    The one that is chosen dies at the edge of the forest.{cialo_kopii == spalone: In the fire it crackles like resinous wood, and the smoke smells of pine needles.}{cialo_kopii == oddane_jagnie: Jagna says it is wood, and she knows what is done with such things.}{cialo_kopii == pochowane || cialo_kopii == pod_mlodnikiem: It lies in the earth like a child, though it smells of nothing.}
- pan_lasu_11:
    He keeps his word to the last jot – and demands the same of others. Before All Souls’ Day the mist from the forest creeps up to the fences every evening, and on the first of November, on the way back from the churchyard in Bukowiec, every Candlemas candle went out as if at a single breath{not marysia_odzyskana: except the one Hanka carried}, though the air stood still.
- pan_lasu_12:
    {ostatnia_noc == zwrocil_granice:On All Souls’ Day he came to the village with his retinue and received his boundary back: Maciek’s axe driven into the stump of the Old Oak, and the word of the whole village. A word for a word.{zoladz_zasadzony: Beside the stump an acorn from the Old Oak sprouted, planted by a human hand. As long as the oak grows, the Lord of the Forest takes no more children.}|{ostatnia_noc == zajal_miejsce:He gave Jaromir the moss hat and lay down beneath the stump of the Old Oak. “Now you count.”|He burned together with the forest. The last thing he said was: “All counted.”}}
- zielarka_5:
    {ostatnia_noc == zwrocil_granice:The servants of the Lord of the Forest went back where they belong; her curse is held beyond the fence once more.|{ostatnia_noc == zajal_miejsce:Her curse bound the hands of the old Lord of the Forest. The hands of the new one it did not know.|Her curse began with fire, and with fire it ended.}}
- tropy_7:
    {ostatnia_noc == zwrocil_granice:He went away into the forest with the retinue.|{ostatnia_noc == zajal_miejsce:The new Lord of the Forest set him free.|{wilk_przy_mnie():He stood by Jaromir while the forest burned.|He leapt into the fire after his master.}}}
- dzieci_3:
    On All Souls’ Day they walked in the retinue of the Lord of the Forest, holding hands. Not one of them cast a shadow.{ostatnia_noc == skrzesal_ogien: Their humming broke off halfway in the burning forest and never began again.}
}
