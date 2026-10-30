// ------------------------------------------------------------
//  Zapiski – bestiariusz. Każda istota ma kilka wpisów (etapów),
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
    - stwor_1:      ~ return "A criatura do matagal"
    - stwor_2:      ~ return "O afogado"
    - zielarka_1:   ~ return "A erveira do lago"
    - zielarka_2:   ~ return "A erveira do lago"
    - pan_lasu_1:   ~ return "O Senhor da Floresta"
    - pan_lasu_2:   ~ return "O Senhor da Floresta"
    - pan_lasu_3:   ~ return "O Senhor da Floresta"
    - pan_lasu_4:   ~ return "O Senhor da Floresta"
    - starzec_1:    ~ return "O velho do chapéu de musgo"
    - starzec_2:    ~ return "O velho do chapéu de musgo"
    - polnocnica_1: ~ return "A Dama da Meia-Noite"
    - polnocnica_2: ~ return "A Dama da Meia-Noite"
    - dziad_1:      ~ return "O velho da viela de roda"
    - ogniki_1:     ~ return "Fogos-fátuos"
    - uboze_1:      ~ return "O duende da casa"
    - uboze_2:      ~ return "O duende da casa"
    - poludnica_1:  ~ return "A Dama do Meio-Dia"
    - rusalki_1:    ~ return "Rusalkas"
    - licho_1:      ~ return "A mendiga caolha"
    - licho_2:      ~ return "O licho"
    - licho_3:      ~ return "O licho"
    - tropy_1:      ~ return "Sob a janela"
    - tropy_2:      ~ return "O lobo branco"
    - pan_lasu_5:   ~ return "O Senhor da Floresta"
    - mamuny_1:     ~ return "Mamunas"
    - mamuny_2:     ~ return "Mamunas"
    - odmieniec_1:  ~ return "A criança trocada"
    - strzyga_1:    ~ return "O morto que não esfria"
    - strzyga_2:    ~ return "A strzyga"
    - mamuny_3:     ~ return "Mamunas"
    - starzec_3:    ~ return "O velho do chapéu de musgo"
    - ogniki_2:     ~ return "Fogos-fátuos"
    - stwor_3:      ~ return "O afogado"
    - zielarka_3:   ~ return "A erveira do lago"
    - pan_lasu_6:   ~ return "O Senhor da Floresta"
    - uboze_3:      ~ return "O duende da casa"
    - zytnia_baba_1: ~ return "A mulher do centeio"
    - zytnia_baba_2: ~ return "A velha do centeio"
    - pan_lasu_7:   ~ return "O Senhor da Floresta"
    - planetnik_1:  ~ return "O planetnik"
    - tropy_3:      ~ return "O lobo branco"
    - blednice_1:   ~ return "Luzinhas errantes"
    - starzec_4:    ~ return "O velho do chapéu de musgo"
    - pan_lasu_8:   ~ return "O Senhor da Floresta"
    - pan_lasu_9:   ~ return "O Senhor da Floresta"
    - zielarka_4:   ~ return "A erveira do lago"
    - tropy_4:      ~ return "O lobo branco"
    - dzieci_1:     ~ return "As crianças sob o carvalho"
    - pan_lasu_10:  ~ return "O Senhor da Floresta"
    - tropy_5:      ~ return "O lobo branco"
    - mamuny_4:     ~ return "Mamunas"
    - tropy_6:      ~ return "O lobo branco"
    - dzieci_2:     ~ return "As crianças sob o carvalho"
    - pan_lasu_11:  ~ return "O Senhor da Floresta"
    - pan_lasu_12:  ~ return "O Senhor da Floresta"
    - zielarka_5:   ~ return "A erveira do lago"
    - tropy_7:      ~ return "O lobo branco"
    - dzieci_3:     ~ return "As crianças sob o carvalho"
}
~ return ""

=== function tresc_zapisku(z)
{ z:
- stwor_1:
    Três cabeças mais alto do que um homem, curvado, com os braços pendendo quase até o chão e longos cabelos molhados. Fede a pântano. Veio da névoa quando se calaram os grilos e as rãs, e foi-se na direção dos brejos. {czary.noc:Maciek ainda o viu mais uma vez – à soleira da própria cabana.|Maciek só o viu uma vez – e nunca mais o esqueceu.}
- stwor_2:
    Voltou depois de meio século, quando as crianças lançavam às águas Marzanna, a boneca de palha do inverno – {obejrzal_sie:uma mão cinzenta arrastou-a para o fundo|algo a puxou por baixo e a fez submergir}.{figurka_u_staruchy && los_psa == oswojony: “Os como ele não morrem. Esperam.”}{not figurka_u_staruchy || los_psa == oswojony: Dizem os velhos que quem se afoga sem padre não vai nem para o céu nem para o inferno, mas fica na água. Lá embaixo, o afogado mantém as almas dos que se perderam ali sob potes de barro emborcados, e de noite vai virando um a um. Quando algum pote racha, a alma sobe numa bolha à superfície.}
- zielarka_1:
    Morava junto ao lago, ali onde entre os juncos se erguem toras carbonizadas. Curava as pessoas com ervas, até que passou a falar de noite com alguém que ninguém via. Quando na aldeia o leite começou a azedar e o gado a morrer, os camponeses pregaram tábuas na sua porta e atearam fogo à cabana. Ao morrer, amaldiçoou a aldeia e todo aquele que um dia viesse a morar nela. Os que a queimaram não chegaram ao inverno – um após o outro, entraram no pântano.
- zielarka_2:
    A maldição não se apagou junto com o fogo. O avô Maciek carregou-a dentro de si a vida inteira – {figurka_u_staruchy:e pagou por ela mais do que jamais quis contar a quem quer que fosse|e ao filho a contava como história de criança, embora ele mesmo nunca zombasse dela}.{chata_macka != nad_jeziorem: Até hoje ninguém em Zapadlina levanta casa junto ao lago, do lado do poente.}
- pan_lasu_1:
    Os velhos lhe dão vários nomes – Borowy, o Senhor da Floresta – e os mais antigos nenhum, porque é melhor não chamá-lo pelo nome. Mora na parte mais funda da floresta e a guarda como um lavrador cuida do seu terreiro. Quem entra ali sem pedir licença, ele engana de tal jeito que a pessoa anda em círculos. Quem se perder, que tire a roupa e a vista do avesso – então Borowy se confunde, porque pensa ter diante de si um dos seus.
- pan_lasu_2:
    Há árvores que ele guarda como o próprio coração. O Velho Carvalho, na orla da floresta, era a fronteira – enquanto estava de pé, a mata terminava onde terminava.{ franek_scial_dab: O primeiro golpe foi Franek quem lhe deu.}{pracowal_w_tartaku: O velho Wawrzyniec, da serraria, costumava contar que, quando os primeiros homens desceram a este vale, tiveram de prometer que não passariam do Velho Carvalho com machado – e só então a mata recuou –, e que, em troca, uma vez a cada geração, leva consigo uma criança por algumas noites. “Os oratórios são como pregos numa cerca. Arranque um, e a cerca ainda se aguenta. Arranque todos…”}
- pan_lasu_3:
    {ostrzezenie_poludnicy:A Dama do Meio-Dia disse sem rodeios: o Senhor da Floresta está despertando.{pomylki_poludnica == 0: A cada árvore derrubada, seu sono fica mais leve.}|Algo mudou depois que derrubaram o Velho Carvalho. Nas hortas, entre os canteiros, crescia numa só noite um musgo como o de debaixo dos abetos mais velhos, e o verde do lado da floresta amanhecia cada dia mais perto das cercas.}
- pan_lasu_4:
    Quando os homens do senhor Urbaniak arrancaram os oratórios junto à floresta, nas covas que deixaram brotaram numa só noite abetos novos. A floresta parecia estar a cada dia mais perto da aldeia.{ kapliczki_drogi == obronil_kapliczke: Só ficou de pé um oratório – aquele que Jaromir defendeu.}
- starzec_1:
    {poszedl_po_wstazke:Estava de pé na penumbra da floresta, tão alto que teria de se curvar para entrar numa cabana. Uma samarra virada com a lã para fora, cingida por um cordão, um chapéu de musgo de aba larga, e por baixo dele só os dois pontos claros dos olhos. Apoiava-se num cajado nodoso do qual brotavam folhas. Na mão segurava a fita de Hanka.|Alguém o desenhou no livro de mestre Ignacy: um velho com a roupa virada do avesso e um chapéu de musgo.}{czytal_ksiege: Sob o desenho, no livro, lia-se: “Quem o encontrar, que faça o mesmo que ele. Aquele vem do outro lado, onde tudo é ao contrário.”}
- starzec_2:
    Veio às bodas de Jaromir e Hanka – parou na orla da mata e balançava a cabeça no compasso da música da festa.{ poszedl_po_wstazke: Não tinha envelhecido nem um dia.} {weselny_gosc == ugoszczony_kolaczem:Aceitou a rosca de casamento e inclinou a cabeça como um dono de casa a outro.|{weselny_gosc == zapytany:Falou com uma voz como o vento nas copas das árvores: “Fazes bom casamento, neto de Maciek. Cuida dela.”|Ficou ali até o primeiro canto do galo.}}
- polnocnica_1:
    Vem depois da meia-noite atrás dos recém-nascidos. Primeiro esfria, depois algo farfalha na sala como folhas secas. Antek viu só algo claro sobre o berço e cabelos negros até o chão. A criança, em vez de chorar, assobia, como se não conseguisse tomar fôlego. Teme o ferro posto debaixo do travesseiro.{rada_jaromira == ksiega_rada: O livro de mestre Ignacy acrescenta que ela tem de contar as sementes de papoula espalhadas, uma a uma – e só sabe contar até o amanhecer.}
- polnocnica_2:
    De perto, vê-se inteira: paira sobre as tábuas sem tocá-las com os pés, numa mortalha esfarrapada na barra, com um rosto magro como uma caveira, olhos como dois poços negros e dentes miúdos e afiados. {rada_jaromira == hanka:A avó de Hanka diz que é a alma de uma mãe que morreu no parto antes que o padre tivesse tempo de abençoá-la – não chegou a ninar o próprio filho, por isso vai até os dos outros. E que nunca vem por conta própria: alguém tem de lhe mostrar o caminho. }{polnocnica == przegnana_nozem:Zosia foi salva por uma faquinha enfiada debaixo do travesseiro.|{polnocnica == policzyla_mak:Zosia foi salva pelas sementes de papoula – a Dama contou até o amanhecer e não terminou a tempo.|Zosia sobreviveu, mas na sua testa ficou uma manchinha cinzenta, como do toque de um dedo sujo.}}
- dziad_1:
    Bateu à porta na Véspera de Natal, mal tinham repartido a obreia: curvado, em farrapos, com a viela de roda às costas e olhos brancos como leite. {wpuscil_dziada:Comeu pouco, cantou uma canção sobre as almas que nessa noite voltam às suas casas, e foi-se na escuridão, embora ninguém tenha visto para que lado. Ao sair, sussurrou a Jaromir: “Cheiras a floresta, rapaz.”|Não o deixaram entrar. Foi-se na direção da floresta e sumiu num redemoinho de neve no meio do campo.} Na Véspera de Natal não se manda embora da porta um pedinte, porque nunca se sabe quem veio – às vezes é a alma de alguém da família que volta disfarçada, para ver se ainda se lembram dela.
- ogniki_1:
    Luzes pálidas sobre os brejos junto à pinguela, que se acendem ao entardecer e dão risadinhas como alguém que ganhou um presente. As comadres dizem que são os que queimaram a erveira do lago – entraram no pântano e até hoje brilham ali pelas noites. Quem seguir um desses fogos-fátuos nunca mais volta.
- uboze_1:
    Um velhinho minúsculo, não maior que um gato, de casaco remendado e gorrinho vermelho, com a barba grisalha enrolada em volta das perninhas de galinha. Mora atrás do forno nas choupanas antigas. Quem alimenta o duende da casa vê o sítio prosperar; quem o enxota atrai a miséria para o seu teto. Chega com o primeiro dono e fica enquanto a choupana estiver de pé. Quando ela arde, vai-se com a fumaça e nunca mais volta.
- uboze_2:
    {uboze == nakarmione:Retribui em silêncio: na despensa não se criam ratos, na jarra há sempre mais leite do que se pôs{rozdzial_dziewiaty:, e no inverno de fome a farinha como que não quer acabar}. Só que o que sobra numa casa falta em outra – no sítio de Staś, nesses mesmos meses, o leite azedava.|{uboze == przegnane:Desde que o enxotaram, a casa parecia não gostar deles: as galinhas pararam de pôr, e na despensa a todo momento algo se estragava.|Ninguém mais o viu depois disso. Só às vezes, de manhã, a cinza no rebordo do forno aparecia remexida, como por uma galinha procurando lugar para a noite.}}
- poludnica_1:
    Uma mulher alta e branca, de camisa comprida. Ao meio-dia em ponto vem aos campos. Não toca o chão com os pés, tem olhos brancos, sem pupilas, e uma foice na mão. A quem trabalha no maior calor propõe enigmas – a cada erro, golpeia com a foice.{ not figurka_u_staruchy: Dizem que outrora foi a melhor ceifeira da redondeza: apostou com os moços da lavoura que ceifaria sozinha a seara inteira até o meio-dia, e não saiu do campo nem no pior da canícula. Encontraram-na à noitinha com a foice na mão e espigas nos cabelos.}{ poludnica_uklon: Antes da resposta tirada do livro, inclinou a cabeça.}{ poludnica_darowala: Perdoou a Jaromir um erro, porque ele não recuou diante da foice.}{ blizna_sierpa: Jaromir ficou com uma cicatriz em forma de meia-lua deixada por ela.}
- rusalki_1:
    Almas de moças afogadas. Em Pentecostes saem do lago e dançam ao luar – jovens, pálidas, em camisas de linho molhadas, com grinaldas de junco e olhos inteiramente negros, sem o branco. Atraem com um canto sem palavras e arrastam para as profundezas quem quer que se deixe seduzir. Aparecem só de Pentecostes até São João; no resto do ano dormem no lodo do fundo. Uma delas era Kaśka, a filha dos Wójcik.{ratunek_franka == piolunem: Temem a losna mais do que o fogo – mas daquela que a deu não se esquecem. A água não devolveu a grinalda de Hanka.|{ratunek_franka == krzyzem: A cruz não as queima – “estávamos aqui antes dela”. Soltaram Franek, mas a água não foi dormir com fome – de manhã, nos juncos, encontraram Bartek, o filho do moleiro.| Kaśka soltou Franek quando Hanka a chamou pelo nome. Na face de Jaromir, onde ela o tocou, ficou uma mancha branca e fria.}}
- licho_1:
    Uma mendiga pequena e encurvada, que mal chega à cintura de um adulto, enrolada em tantos farrapos que não se sabe onde termina um e começa o outro. Tem um olho só, de borda vermelha; no lugar do outro há pele lisa e cinzenta. Sua sombra é comprida demais e cai contra o sol, para o lado oposto ao de todas as outras. Quem a vê junto à própria cerca é atingido pela desgraça no dia seguinte.
- licho_2:
    A avó de Hanka deu nome à coisa: o Licho que não dorme. Anda de choupana em choupana e se assenta onde está bem – onde se derruba a mata e se mudam as coisas santas de um canto para outro. Não entra numa casa a não ser que alguém o chame. Enxotado, passa ao vizinho; bem acolhido, parte saciado. A avó de Hanka ouviu da mãe que o outro olho ficou na floresta, porque o Licho são os olhos que o Senhor da Floresta envia para o meio das pessoas – ela mesma não sabe se é verdade.
- licho_3:
    {licho_noc == ugoszczone:Quando ganhou toucinho, seguiu pela estrada até a serraria – e de manhã a serra do senhor Urbaniak se partiu, e na estrebaria dele morreu o melhor cavalo.|{licho_noc == odpedzone:Enxotado com um tição, fugiu na direção da forja – naquela noite a forja do ferreiro ardeu.|Até de manhã raspou debaixo da porta e tentou com o cheiro de pão, e a tábua em que batia apodreceu numa só noite. Ninguém lhe respondeu.}} Em outubro foi-se pela estrada que passa rente à floresta e entrou entre as árvores, como se alguém o tivesse chamado.
- tropy_1:
    Na manhã depois do casamento, o terreiro inteiro estava branco de geada – só debaixo da janela da sala nova a geada derretera num largo oval, até a terra nua, como se algo grande e quente tivesse passado ali a noite inteira deitado, enroscado. A terra ainda estava morna. Hanka cobriu o lugar com cinza e pediu que ninguém falasse disso.
- mamuny_1:
    Moram junto ao lago. Elas mesmas dão à luz filhos feios e doentios, por isso roubam das pessoas os sadios – enquanto a criança não é batizada – e deixam no berço os seus. No verão, de noite, ouve-se o estalo dos batedores de roupa contra as pedras. A avó de Hanka diz que lavam mortalhas para os que vão morrer na aldeia antes da primavera seguinte – e sobre cada mortalha pronunciam em voz alta o nome de alguém. É melhor não escutar às escondidas. Têm medo do vermelho, do ferro e da vela da Candelária.
- mamuny_2:
    Altas e corcundas, com cabeças grandes demais para os pescoços franzinos e cabelos como gravetos secos, em farrapos de musgo e casca de árvore. O seu toque é frio e úmido.{noc_mamun == zaslonil: Quando não conseguem a criança, tiram o leite da mãe.} Sabem cantarolar de tal modo que quem dorme tira sozinho a proteção do berço.{podmiana:{uklad_z_mamunami == oddany_skarb: Em troca de Marysia levaram o tesouro de infância de Jaromir e o atiraram no lago.|{uklad_z_mamunami == dar_swietojanski: Em troca de Marysia, Jaromir prometeu-lhes todo ano, na Noite de São João, pão e uma grinalda sobre a pedra junto à margem. Se ele esquecer, virão buscar o que é delas.|{uklad_z_mamunami == oddane_lata: Em troca de Marysia tomaram de Jaromir anos de vida – as têmporas dele ficaram grisalhas como as de um velho.| Só a água fervida em cascas de ovo desfez a troca.}}}}{sposob_na_odmienca == chrzest_odmienca: Não esquecerão que o filho delas foi feito em lascas.}
- odmieniec_1:
    Filho das mamunas, deixado no lugar de uma criança humana. De longe parece aquela, mas é mais pesado e frio, tem a pele como casca de árvore e os olhos mais escuros que os de qualquer criança. Não chora, só come sem parar, e quando pensa que ninguém está olhando, sorri como uma velha. A troca só pode ser desfeita dentro de sete dias.
- tropy_2:
    Um macho enorme, maior que qualquer lobo da redondeza, tão magro que debaixo do pelo branco se veem todas as costelas. Conduz a alcateia, mas ele próprio não se aproxima dos estábulos.{noc_wilkow == bronil_obory: Com um único uivo consegue chamá-la para longe do estábulo.} Na pata dianteira tem um anel de pelo gasto, mais ralo, no mesmo lugar onde Franek tinha três vergões de garras. Os olhos são humanos: claros, tristes, com a pupila bem marcada. Antek diz que os reconheceria entre quaisquer outros.{oblawa_wilk == wydal_wilka: Levou uma bala do guarda-florestal Pawlik e escapou para a floresta, deixando um rastro de sangue na neve. Desde então o seu uivo soa diferente.| Sobreviveu à caçada. Na manhã seguinte, sobre um toco junto à cerca, havia uma lebre com o pescoço partido a dentadas.}{noc_na_kladce != (): Na noite em que Józek foi, dormindo, até a pinguela, algo branco passou veloz pelo dique além dos brejos – e o afogado voltou a cabeça ao ouvir o seu uivo.}
- pan_lasu_5:
    O mato novo que, ao longo de alguns anos, avançou da floresta até rente às cercas tornou-se esconderijo dos lobos. Os velhos dizem que a mata não cresce na direção da aldeia sem motivo: primeiro vêm as árvores, depois os bichos, e por último aquele que manda neles.
- strzyga_1:
    {sprawdzil_zeby:O velho Wójcik tinha duas fileiras de dentes – uma atrás da outra, miúdos e afiados como os de um lúcio.|As pessoas diziam que o velho Wójcik nascera com dentes.} Quem nasce com dentes ou com dois corações tem duas almas. Depois da morte, uma vai para Deus e a outra fica no corpo e não lhe dá sossego: o cadáver não esfria, as faces continuam rosadas, as pálpebras não se fecham. Por volta da meia-noite, um morto assim se ergue. Antigamente enterravam-no de bruços, com uma foice sobre a garganta e sementes de papoula no caixão – para que não pudesse se virar, para que se ferisse se tentasse levantar, e para que a papoula o fizesse dormir até o Juízo.
- strzyga_2:
    {polnoc_strzygi == na_twarz:Virado de rosto para a tábua, debateu-se até o primeiro canto do galo e mordeu Antek na mão. A ferida custou muito a sarar.|{polnoc_strzygi == sierp_przy_szyi:Quando a foice tocou seu pescoço, escorreu dele um sangue negro e espesso.|Só a vela da Candelária posta nas suas mãos o acalmou; disse então o nome da filha.}} {pochowek_wojcika == pochowany_za_murem:Enterraram-no do lado de fora do muro do cemitério, de bruços, e ele não voltou mais.|{pochowek_wojcika == pochowany_z_makiem:Descansou em terra benta com as sementes de papoula de Hanka sobre o peito, e não voltou mais. Por causa dessa papoula, o padre a proibiu de comungar até a Páscoa.|{trzy_noce == rozkopany_grob:Voltou depois de três noites e ficou parado sob a janela, junto ao berço de Marysia, até que Jaromir e Antek abriram a sua sepultura.|Voltou depois de três noites. Afastou-se da janela atrás da qual dormia Marysia – mas naquela manhã encontraram morta a senhora Wójcik.}}}
- mamuny_3:
    Enquanto batem a roupa, chamam pelo nome aqueles cujas mortalhas lavam. A senhora Wójcik espreitou-as em junho, escondida nos caniços, e escutou um só nome. Em novembro morreu o marido dela.{trzy_noce == czuwanie_przy_kolysce: Enganou-se – ou não quis ouvir o segundo.}
- starzec_3:
    Na Véspera de Natal, Hanka deixou na mesa um lugar posto para o andarilho. De manhã, no prato, em vez da obreia, havia um punhado de musgo fresco e verde – em pleno inverno.
- ogniki_2:
    Quando a estatueta {przeszukal_zgliszcza && not figurka_w_bagnie:voltou para Zapadlina|veio à tona}, os fogos-fátuos começaram a se aproximar das cercas – a cada noite mais perto, como se esperassem que alguém abrisse a porta.{los_figurki == figurka_w_skrzyni: Continuam acesos, mas além da pinguela, longe das cercas.}{los_figurki == figurka_pod_kapliczka || los_figurki == figurka_u_jagny || los_figurki == figurka_u_stwora: Apagaram-se todos de uma vez na mesma noite em que a estatueta parou de chamar.}
- stwor_3:
    Voltou aos brejos junto com a estatueta. As crianças da aldeia tinham todas o mesmo sonho com ele: está debaixo da pinguela, na água negra, virando os potes de barro, espiando sob cada um, e depois pergunta: “Onde está a minha boneca?”{figurka_u_staruchy: No ombro tem uma cicatriz funda e antiga do machado do avô Maciek.}{noc_na_kladce == siekiera_na_kladce: Jaromir feriu-o com o machado, e ele lhe rasgou a espádua.}{noc_na_kladce == figurka_dla_stwora: Quando recebeu a estatueta, soltou o menino e apertou-a contra o peito como uma mãe aperta o filho. Ao afundar, arrastou consigo a velha pinguela.}{noc_na_kladce == latarnia_na_wodzie: Teme o fogo mais do que o ferro – fugiu do óleo em chamas.}
- zielarka_3:
    {zaufal_jagnie:Jagna diz que a estatueta é uma boneca: a erveira entalhou-a numa raiz tirada do pântano e deu-lhe o nome daquele que mora na água. Quem tem a boneca, a esse ele segue. O fogo não a assusta – só a terra benta a fará calar.{odrzucil_figurke: Uma vez rejeitada, não se pode mais dá-la a ninguém.}|A estatueta chamuscada do lago {przeszukal_zgliszcza && not figurka_w_bagnie:voltou para Zapadlina|veio à tona} depois de mais de sessenta anos – e com ela voltaram os sonhos.}{los_figurki == figurka_pod_kapliczka: Está agora sob o oratório, e onde exatamente, só Jaromir sabe.}{los_figurki == figurka_u_jagny: Jagna levou-a consigo, para tão longe que o afogado não a ouvisse.}{los_figurki == figurka_w_skrzyni: O fogo não a levou. Está numa arca debaixo da cama, enrolada numa corrente.}{los_figurki == figurka_u_stwora: Agora está com aquele que mora debaixo da pinguela.}
- pan_lasu_6:
    Na noite em que arderam os oratórios, a floresta chegou um campo inteiro mais perto da aldeia. As árvores que de manhã estavam no lugar do restolho pareciam estar ali havia anos. As estacas da estrada do senhor Urbaniak deitavam brotos, e dos tocos na picada nasciam novos galhos toda manhã.{droga_do_boru: A estrada chegou até os primeiros pinheiros grandes e ali parou – ninguém quis cortar mais adiante.}{szarwark && not droga_do_boru && rozdzial_czternasty.pierwszy_snieg_czternasty: O mato novo estacou na linha dos oratórios queimados e não cresceu mais.}
- uboze_3:
    Despertou o dono do sítio aos puxões de cabelo, quando o fogo vinha da mata. Tinha tanto medo que lhe tremia a barba. O duende da casa lembra-se de quem lhe deu de comer.
- zytnia_baba_1:
    Baixa, encurvada, larga de quadris como um feixe, com o rosto enrugado como côdea de pão bem assada e cabelos de espigas. Cheira a grão morno. Agacha-se no meio do centeio e balança diante das crianças aquilo que é delas, como um chocalho.
- zytnia_baba_2:
    O velho Staś diz que a velha do centeio apanha as crianças na seara e as abandona lá – mas Marysia ela não abandonou. Conduziu-a pelo campo até a beira da mata, como se a estivesse levando a alguém.{pani_w_zbozu_noc == gonil_babe: Quem a persegue anda em círculos pelo campo até o amanhecer, e nas feridas abertas pelas hastes ficam-lhe cravadas farpas das espigas, que se enterram cada vez mais fundo.}{pani_w_zbozu_noc == za_spiewem: Canta com a voz da mãe – e a mãe fica depois com a voz rachada ao meio.}{pani_w_zbozu_noc == z_pochodniami: Quando a aldeia inteira a procura, foge – mas deixa para trás o campo pisoteado.}
- pan_lasu_7:
    {rada_przed_borem == rada_ksiedza:Nos livros da paróquia está escrito que, uma vez a cada tantas décadas, some uma criança de uma aldeia junto à floresta, sempre na Noite de São João. As que voltam não se lembram de nada.|{rada_przed_borem == rada_jagny:Jagna diz que a floresta leva as crianças quando o seu senhor desperta – não mata, só guarda.|O planetnik diz que sobre a floresta as nuvens se abrem e que, desde que há memória, não caiu ali nem uma gota de chuva.}}
- planetnik_1:
    Um velho alto, em farrapos, com a barba desgrenhada pelo vento e um saco às costas. Aparece antes da tempestade e leva as nuvens presas por uma corda. Quem lhe der pão não verá as nuvens se rasgarem sobre o seu campo – e quem lhe fizer uma pergunta pagará com a lavoura.
- tropy_3:
    {oblawa_wilk == wydal_wilka:A ferida da bala sarou mal. Na floresta seguiu Jaromir a noite inteira – e não para protegê-lo.|Encontrou Jaromir na floresta, quando este seguiu a voz de Franek.{przejscie_bagna == za_wilkiem: Guiou-o através do pântano. Quando Jaromir lhe estendeu a mão e o chamou de Franek, deu-lhe uma dentada – de aviso, mas que tirou sangue.}}
- blednice_1:
    Bolas pálidas de luz sobre o pântano no fundo da floresta, do tamanho da cabeça de uma criança. Em cada uma há uma pequena figura encolhida, de olhos como grãozinhos negros. Não são os fogos-fátuos de junto da aldeia: não piscam de longe, mas chegam bem perto, piam como passarinhos recém-nascidos e convidam.{przejscie_bagna == za_blednicami: Fazem andar em volta da mesma touceira até o amanhecer e levam o que cada um traz na sacola.}{przejscie_bagna == krag_z_soli: Não atravessam o sal, ainda que tenham o rosto de alguém muito querido.}{przejscie_bagna == za_wilkiem: Mantêm-se longe do lobo branco.}{przejscie_bagna == z_rozancem: Com a oração apagam-se uivando – mas tomam algo em troca.}{przejscie_bagna == z_krzesiwem: Têm medo de faíscas.}
- starzec_4:
    No coração da floresta, tirou o chapéu.
- pan_lasu_8:
    No coração da floresta, onde nunca chove, ergue-se um carvalho maior do que foi um dia o Velho Carvalho. Ali o velho do chapéu de musgo tirou o chapéu. Debaixo dele havia casca de árvore. Da testa brotou-lhe uma galhada, e ele mesmo cresceu acima das copas e não lançava sombra. Esperara setenta anos que alguém da linhagem de Maciek viesse até ele por conta própria.
- pan_lasu_9:
    O vale já foi dele, da serra até o lago. Recuou quando o primeiro dos homens chegou ao Velho Carvalho sem machado e disse: não iremos além. Em troca, o Senhor da Floresta leva uma criança por geração, na Noite de São João, e devolve-a antes que ela esqueça a sua casa. O Velho Carvalho era a fronteira, o pacto a cerca, e os oratórios os pregos.{chata_macka == przy_lesie: Maciek, que de nada sabia, levantou a sua choupana do lado da floresta e, na primeira manhã, cravou o machado num abeto. Com ele começou a contagem.} Marysia, levou-a ele mesmo – foi ele quem mandou a velha do centeio buscá-la. Se para escondê-la dos das águas ou para si, isso não disse. Desde que a cerca caiu, a maldição desperta os seus servos e os arrasta para as choupanas. Desta vez ele vai cobrar por ela, porque quem rompeu o pacto foi a aldeia, não ele.{pytanie_do_leszego == kim_jest: Já estava no vale antes que nele descessem os primeiros homens. Conta as árvores velhas derrubadas além da fronteira e as pessoas que se entregaram a ele de livre vontade. Quando chegar a mil, adormecerá de vez, e outro contará em seu lugar. Ele também, um dia, veio por conta própria para a floresta.}{pytanie_do_leszego == gdzie_marysia: Os filhos dele não têm sombra.}
- zielarka_4:
    Vinham ter com ela os das águas – e o Senhor da Floresta. Certa vez ele lhe mostrou, refletida na superfície, uma cabana em chamas – a dela própria –, mas ela não acreditou. Ardendo, amaldiçoou a aldeia por mãos alheias: “Os ossos dos vossos filhos serão quebrados, e o sangue deles, bebido…” Enquanto o Velho Carvalho esteve de pé, a palavra dada foi mais forte do que a praga.{pytanie_do_leszego == o_klatwe: Desfará a maldição quem devolver ao Senhor da Floresta a fronteira, ou quem tomar o seu lugar. Ou o fogo que a começou – mas depois dele não restará nem floresta nem aldeia.}{zastaw_u_leszego == zastaw_krzesiwo: A pederneira que Maciek encontrou nas cinzas dela traz em si a mesma brasa que a queimou.}
- tropy_4:
    Trouxe até o pé do carvalho o outro tamanco de Marysia – aquele que a velha do centeio balançava. {wilk_przy_jaromirze:Deixou-o aos pés de Jaromir e passou a noite inteira deitado ao lado dele.|Entregou-o ao Senhor da Floresta e fica sentado junto dele, indiferente como as árvores.}{wilk_pod_debem != nie_ruszal_sie: Cada palavra humana que lhe volta à memória tira-lhe um pedaço da vida de lobo.}
- dzieci_1:
    Ao amanhecer saem de uma fenda no carvalho e sentam-se em roda: mais de uma dúzia de meninas com um só rosto, com as mesmas camisolinhas e fitas novas nos cabelos. Sorriem com gentileza e paciência, falam com uma só voz, cheiram a madeira podre. Quando o pai escolhe, as outras se desfazem em folhas secas e casca.{znak_rozpoznania == po_melodii: Cantam a melodia até o fim.}{znak_rozpoznania == po_buzi || znak_rozpoznania == po_skarbie: Tudo o que na criança fica à esquerda, nelas fica à direita{skarb_dla_corki:, e o que ela traz no pescoço, nelas é liso e novo}.}{pytanie_do_leszego == gdzie_marysia: Não lançam sombra e nunca choram.}
- pan_lasu_10:
    {marysia_odzyskana:Cumpriu a palavra: quem reconhece a sua criança leva-a embora, e ninguém o impede.|Cumpriu a palavra: quem escolhe mal leva para casa o que escolheu – e enterra-o como seu.} Anunciou que no Dia de Finados viria à aldeia para acertar as contas até o fim.
- tropy_5:
    Ajudou a achar a criança verdadeira, embora os servos do Senhor da Floresta não auxiliem os homens. Ficou junto ao carvalho, com a mão do seu senhor na nuca.
- mamuny_4:
    No fim de agosto, nas pedras chatas do outro lado do lago, batiam uma mortalha pequenina. No Dia de Finados trouxeram-na no séquito do Senhor da Floresta e sobre ela chamavam: “Marysia”. Elas mesmas não escolhem – lavam o que a água lhes traz. Enquanto a mortalha não estiver seca ao romper do dia, o nome ainda pode ser apagado dela, mas alguém tem de pagar por isso.{cena_caluna == cena_umowa: A oferenda de São João, agora Marysia também terá de levá-la, até o fim da vida.}
- tropy_6:
    Na noite de Finados rasgou a mortalha das mamunas com o nome de Marysia, e elas o arrastaram para debaixo da água. Antek reconheceu-o pelo anel de pelo gasto na pata dianteira.
- dzieci_2:
    A que for escolhida morre na orla da floresta.{cialo_kopii == spalone: No fogo estala como lenha resinosa, e a fumaça cheira a agulhas de pinheiro.}{cialo_kopii == oddane_jagnie: Jagna diz que é madeira, e sabe o que se faz com uma coisa dessas.}{cialo_kopii == pochowane || cialo_kopii == pod_mlodnikiem: Repousa na terra como uma criança, embora não cheire a nada.}
- pan_lasu_11:
    Cumpre a palavra ao pé da letra – e exige o mesmo dos outros. Antes de Finados, a névoa vinda da floresta chega toda noitinha até as cercas, e no dia primeiro de novembro, no caminho de volta do cemitério de Bukowiec, apagaram-se de um só sopro todas as velas da Candelária{not marysia_odzyskana: menos a que Hanka levava}, embora o ar estivesse parado.
- pan_lasu_12:
    {ostatnia_noc == zwrocil_granice:No Dia de Finados veio à aldeia com o séquito e recebeu de volta a fronteira: o machado de Maciek cravado no toco do Velho Carvalho e a palavra da aldeia inteira. Palavra por palavra.{zoladz_zasadzony: Ao lado do toco brotou uma bolota do Velho Carvalho, plantada por mão humana. Enquanto o carvalho crescer, o Senhor da Floresta não leva mais crianças.}|{ostatnia_noc == zajal_miejsce:Entregou a Jaromir o chapéu de musgo e deitou-se ao pé do toco do Velho Carvalho. “Agora contas tu.”|Ardeu junto com a floresta. A última coisa que disse foi: “Está contado.”}}
- zielarka_5:
    {ostatnia_noc == zwrocil_granice:Os servos do Senhor da Floresta voltaram aos seus domínios; a maldição dela torna a ficar do outro lado da cerca.|{ostatnia_noc == zajal_miejsce:A maldição dela atava as mãos do antigo Senhor da Floresta. As do novo, ela não as conhecia.|A maldição dela começou com o fogo e com o fogo acabou.}}
- tropy_7:
    {ostatnia_noc == zwrocil_granice:Partiu com o séquito para a floresta.|{ostatnia_noc == zajal_miejsce:O novo Senhor da Floresta deixou-o ir em liberdade.|{wilk_przy_mnie():Ficou ao lado de Jaromir enquanto a floresta ardia.|Lançou-se ao fogo atrás do seu senhor.}}}
- dzieci_3:
    No Dia de Finados seguiam no séquito do Senhor da Floresta, de mãos dadas. Nenhuma lançava sombra.{ostatnia_noc == skrzesal_ogien: A sua cantiga cortou-se pela metade na floresta em chamas e nunca mais recomeçou.}
}
