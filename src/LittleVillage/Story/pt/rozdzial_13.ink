// ------------------------------------------------------------
//  Rozdział trzynasty – Wspólny sen (figurka). Przednówek i roztopy po
//  zimie ze strzygą (Jaromir ma dwadzieścia dwa lata, Marysia półtora roku).
//  Figurka z prologu wraca: [starucha] przywozi ją wnuczka Jagna, [handlarz]
//  leży na jarmarku, [bez zgliszcz] Józek wygrzebuje ją z popiołu po chacie
//  zielarki, [bagno] wypływa z mokradeł. Odrzucona – i tak wraca do chałupy.
//  Dzieci śnią ten sam sen, ogniki podchodzą pod płoty; zaufać Jagnie albo nie.
//  W Wielki Czwartek Józek idzie we śnie na kładkę, gdzie czeka topielec:
//  siekiera (rozorany bark), figurka rzucona w wodę albo latarnia (płonie
//  kapliczka przy kładce). Potem: piec (figurka nie płonie), kapliczka albo
//  Jagna. W maju syn Antka, Franek; w czerwcu paliki pod drogę Urbaniaka.
// ------------------------------------------------------------

=== rozdzial_trzynasty ===
# tlo: przednowek
# rozdzial: Capítulo décimo terceiro
# tytul: O sonho compartilhado
A neve ficou nos campos até meados de março, cinzenta e compacta, e nas casas já se comia cevadinha sem toucinho e se repartiam aos punhados as batatas guardadas na cova.{ polnoc_strzygi == na_twarz: A mão de Antek só sarou no tempo da fome antes da colheita – ficaram nela dois semicírculos de cicatrizes miúdas e brancas, que Jadwisia beijava quando pensava que ninguém estava vendo.} {trzy_noce == czuwanie_przy_kolysce:Na casa dos Wójcik ninguém foi morar. Em fevereiro, numa noite, o telhado podre desabou sob a neve com um estrondo que acordou meia aldeia.|A senhora Wójcik passou o inverno de cama, com febre, mas em março saiu à porta apoiada num cajado, e a primeira coisa que fez foi levar para Marysia um punhado de maçãs secas.}
{ ekwipunek ? szczenie_psa:
    Marysia completou um ano e meio. Corria pela sala, caía, levantava-se e seguia correndo, e as palavras ela pegava no ar. O filhote ruivo tinha crescido durante o inverno e virado um cachorro pernalta, que a seguia passo a passo e rosnava para qualquer um que levantasse a voz para ela – até para a mãe. # pokaz: szczenie
- else:
    Marysia completou um ano e meio. Corria pela sala, caía, levantava-se e seguia correndo, e já sabia mais palavras do que Hanka tivera tempo de lhe ensinar.
}
O degelo chegou de uma vez. A neve escorreu dos campos em dois dias, e os brejos do outro lado da pinguela incharam tanto que a água chegou até junto das cercas. O gelo do lago estalou e rachou durante três dias. Na quarta noite, pela primeira vez em anos, acenderam-se luzes sobre os brejos. # pokaz: ogniki # dalej
{ figurka_u_staruchy: -> figurka_od_jagny }
{ not przeszukal_zgliszcza: -> figurka_ze_zgliszcz }
{ figurka_w_bagnie: -> figurka_z_bagna }
-> figurka_na_jarmarku

= figurka_od_jagny
# tlo: jagna_izba
Em meados de março chegou a Zapadlina, de carroça, uma forasteira – magra, de xale cinzento, com um olho coberto de belida. Perguntava pelo neto daquele Maciek que, anos atrás, erguera ali uma cabana. As pessoas lhe indicaram a casa de Jaromir.
– Meu nome é Jagna – disse ela, quando se sentou no banco. – Minha avó morava na cidade, para lá da praça do mercado. Antes de morrer, me fez prometer que eu devolveria isto.
Tirou do cesto uma trouxinha enrolada num trapo preto e abriu-a sobre a mesa. Uma estatueta de madeira, chamuscada de um lado, com uma mecha de cabelos brancos enrolada no pescoço. {los_psa == oswojony && zona_wie:Jaromir nunca tinha visto a estatueta e, mesmo assim, reconheceu-a na hora – pelo que um dia lhe contara a avó Marianna.|Jaromir nunca tinha visto a estatueta nem ouvido falar dela e, mesmo assim, ao vê-la sentiu um frio, como se alguém tivesse aberto a porta para a geada.} # pokaz: figurka
– Minha avó a comprou do seu avô, no mercado – dizia Jagna baixinho, sem levantar os olhos. – E fez com ela uma coisa que pagou até o fim da vida. Não sei bem o quê – na febre delirava com uma boneca e com água. Só sei que morreu mal. E que a última coisa que disse foi: “Devolva-a para o lugar de onde veio”.
# pytanie: O que Jaromir vai fazer?
*   [Ficar com a estatueta.]
    ~ ekwipunek += figurka
    Jaromir tornou a embrulhar a estatueta no trapo e guardou-a na arca debaixo da cama. Jagna respirou fundo, como se alguém lhe tivesse tirado das costas um saco de pedras. Ao sair, disse que até Pentecostes ficaria em Bukowiec, na casa da irmã, vendendo ervas na feira. # dalej
*   [Mandá-la embora junto com a estatueta.]
    ~ odrzucil_figurke = true
    – Leve isso – disse Jaromir. – E não volte.
    Jagna ficou olhando para ele por muito tempo com o olho bom e embrulhou a estatueta. Da porta, disse apenas que até Pentecostes estaria em Bukowiec, na casa da irmã.
    ~ ekwipunek += figurka
    Mas de manhã, quando Hanka abriu a porta, a estatueta estava na soleira. O trapo, encharcado, fedia a pântano. Jaromir guardou a estatueta na arca antes que Marysia a visse. # pokaz: prog # dalej
-   -> wspolny_sen

= figurka_na_jarmarku
# tlo: jarmark
Em meados de março Jaromir foi à feira da cidade com as colheres que entalhara durante o inverno. Vendeu todas antes do meio-dia e ainda andava entre as barracas, procurando para Marysia algum mimo para a festa do padroeiro. Na última banca, a de um vendedor de trastes velhos já entrado em anos, entre panelas rachadas e ferraduras enferrujadas, estava uma estatueta de madeira – chamuscada de um lado, com o rosto gasto e liso de tantos dedos alheios. # pokaz: figurka
Jaromir pegou-a na mão. A madeira estava fria e úmida, embora o dia fosse seco.
– Bonita, hein? – gargalhou o vendedor. – Meu avô a comprou de um camponês qualquer, quando ele mesmo ainda era moço. Desde então ninguém a quis. Para você, por um grosz.
# pytanie: O que Jaromir vai fazer?
*   [Comprar a estatueta.]
    ~ ekwipunek += figurka
    Jaromir pagou, embrulhou a estatueta num lenço e guardou-a no peito, por dentro da camisa. Durante todo o caminho de volta sentiu-a junto ao coração como um pedaço de gelo. Em casa, colocou-a na arca debaixo da cama. # dalej
*   [Deixá-la ali e ir embora.]
    ~ odrzucil_figurke = true
    ~ ekwipunek += figurka
    Jaromir largou a estatueta na banca e foi-se sem olhar para trás. Mas quando, à tardinha, desatrelava o cavalo diante de casa, a estatueta estava no fundo da carroça, entre as aparas – onde de manhã estavam as colheres. Ficou muito tempo olhando para ela antes de guardá-la na arca debaixo da cama. # pokaz: woz # dalej
-   -> wspolny_sen

= figurka_ze_zgliszcz
# tlo: zgliszcza_kra
Em meados de março os meninos da aldeia foram ao lago ver o gelo descer. Entre eles estava Józek, o bisneto mais novo do velho Staś – de sete anos, ruivo e curioso de tudo como uma pega. O gelo à deriva deslocou as velhas toras carbonizadas no juncal do lado oeste do lago, onde um dia ficava a cabana da erveira, e empurrou-as para a margem. Józek esgaravatou as cinzas com um graveto até tirar delas uma coisa dura.
Veio correndo mostrá-la a Jaromir, porque Jaromir entalhava os melhores brinquedos da aldeia e o garoto queria se exibir. Na mão aberta do menino estava uma estatueta de madeira, chamuscada de um lado. A fuligem que a cobria sujava os dedos como se fosse fresca. # pokaz: figurka
# pytanie: O que Jaromir vai fazer?
*   [Tomar dele a estatueta.]
    ~ ekwipunek += figurka
    – Me dê isso – disse Jaromir. – Em troca eu lhe entalho um cavalo com carroça.
    Józek ficou emburrado, mas por fim concordou. Jaromir guardou a estatueta na arca debaixo da cama e esfregou as mãos na tina por muito tempo, embora estivessem limpas. # dalej
*   [Deixar que ele fique com ela.]
    ~ jozek_mial_figurke = true
    Jaromir devolveu a estatueta ao menino, e Józek saiu correndo com ela. No dia seguinte apareceu na casa de Jaromir a mãe de Józek, pálida, com a estatueta embrulhada no avental. Józek dormira com ela na mão a noite inteira e falara durante o sono com uma voz estranha, e de manhã acordara com os cabelos molhados, embora ninguém o tivesse banhado. # pokaz: matka
    – Fique com isto – disse ela. – Você é neto do Maciek. Você sabe o que é.
    ~ ekwipunek += figurka
    Jaromir guardou a estatueta na arca debaixo da cama. # dalej
-   -> wspolny_sen

= figurka_z_bagna
# tlo: kladka_naprawa
Em meados de março, quando a água começou a baixar, Jaromir foi com Antek consertar a pinguela sobre os brejos, que a cheia tinha levado. Estava arrancando do lodo uma estaca velha quando viu que algo se grudara nela – preto, coberto de limo. Raspou a lama com a faca.
Uma estatueta de madeira, chamuscada de um lado. Em tantos anos a água não lhe lavara a fuligem. Jaromir lembrou-se do que o pai lhe contava na infância sobre o avô Maciek e sobre a estatueta que ele perdera no pântano na primeira primavera. # pokaz: figurka
# pytanie: O que Jaromir vai fazer?
*   [Levar a estatueta.]
    ~ ekwipunek += figurka
    Jaromir enrolou a estatueta num trapo e enfiou-a no peito da camisa. Antek olhava para ele de esguelha, mas não disse nada. Em casa, Jaromir guardou-a na arca debaixo da cama. # dalej
*   [Atirá-la de volta ao pântano.]
    ~ odrzucil_figurke = true
    Jaromir tomou impulso e arremessou a estatueta o mais longe que pôde, num olho-d’água negro entre as touceiras. O pântano engoliu-a sem um único círculo na água. # pokaz: plusk
    ~ ekwipunek += figurka
    Mas de manhã, quando Hanka abriu a porta, a estatueta estava na soleira – molhada, coberta de lentilha-d’água, com o rosto virado para dentro da casa. Jaromir guardou-a na arca antes que Marysia a visse. # dalej
-   -> wspolny_sen

= wspolny_sen
# tlo: sen_kladka
~ zapiski += ogniki_2
{ not przeszukal_zgliszcza:O primeiro a ter o sonho foi Józek.|O primeiro a ter o sonho foi Józek, o bisneto mais novo do velho Staś.} Depois dele, a filha do moleiro de Bukowiec, em seguida os gêmeos dos Kowalczyk. Passada uma semana, as mães no poço já não falavam de outra coisa, porque todas as crianças tinham o mesmo sonho: que estava de pé, à noite, na pinguela sobre os brejos, em volta piscavam luzes, e debaixo das tábuas, na água negra, alguém virava panelas de barro, uma após a outra, e espiava debaixo de cada uma. E que esse alguém por fim levantava a cabeça e perguntava: “Onde está a minha boneca?”. # pokaz: glowa
{ not odrzucil_figurke && not jozek_mial_figurke:
    Algumas noites depois, o mesmo sonho veio a Jaromir – o único adulto da aldeia. Afinal, só ele tinha pegado a estatueta por vontade própria. Acordava sobressaltado antes da aurora, com o rumor da água nos ouvidos e com os pés molhados, embora dormisse debaixo do acolchoado de penas.
}
Marysia acordava chorando todas as noites{ skarb_dla_corki: e apertava na mãozinha a tira de couro com {skarb_jaromira == muszelka:a conchinha|{skarb_jaromira == pioro:a pena de gaio|o prego}}, que trazia ao pescoço desde o inverno}. Apontava a janela com o dedinho e repetia palavras que ninguém lhe ensinara:
– Moço molhado. Moço molhado.
Os fogos-fátuos sobre os brejos ardiam a cada noite mais perto. Primeiro só além da pinguela, depois no prado, e por fim já estavam parados entre os juncos, logo atrás das cercas – como gente que espera que alguém abra a porta. # pokaz: ognie
{ figurka_u_staruchy:
    No domingo Jagna veio a pé de Bukowiec, sozinha, e logo à porta perguntou se as crianças da aldeia andavam sonhando.
- else:
    Naquela mesma semana Hanka comprou losna na feira de Bukowiec de uma erveira forasteira – uma mulher magra de xale cinzento, com um olho coberto de belida. Quando a erveira lhe dava o troco, agarrou de repente a mão de Hanka e cheirou-lhe os dedos.
    – Sinto cheiro de cinza – sussurrou. – Cinza velha, da beira d’água. Vocês têm isso em casa, não têm?
    { przeszukal_zgliszcza && not figurka_w_bagnie:
        – Minha avó quis uma vez comprar uma coisa assim de um rapaz no mercado – acrescentou mais baixo. – Ele não vendeu. Até morrer ela não soube a quem ele acabou dando.
    }
    Disse que se chamava Jagna e que até Pentecostes ficaria em Bukowiec. Hanka levou-a para casa naquela mesma tarde, sem pedir a opinião do marido.
}
{figurka_u_staruchy:– Conte a ela sobre os sonhos – disse a esposa, antes que Jaromir conseguisse abrir a boca. – Foi ela mesma quem trouxe isso, que saiba o que brotou daí.|– Se você guardou alguma coisa, não a esconda dela – disse a esposa, antes que Jaromir conseguisse abrir a boca. – {odrzucil_figurke && figurka_w_bagnie:Eu vi o que voltou para a nossa soleira.|{jozek_mial_figurke:Eu vi o que a mãe de Józek trouxe.|Eu vi você espiando debaixo da cama.}}}
# pytanie: O que Jaromir vai fazer?
*   [{figurka_u_staruchy:Contar a Jagna sobre os sonhos.|Mostrar a estatueta a Jagna e contar sobre os sonhos.}]
    ~ zaufal_jagnie = true
    { figurka_u_staruchy:
        // Jagna przywiozła figurkę i wiedziała tylko, że babka bredziła o lalce i o wodzie – dopiero sny dzieci składają jej to w całość.
        Jaromir contou-lhe sobre a pinguela, sobre as panelas viradas no fundo dos brejos e sobre a pergunta que toda criança ouvia em sonho. À palavra “boneca”, Jagna empalideceu.
        – Na febre minha avó só falava de uma boneca e de água. Eu pensava que delirava – disse baixinho. – As velhas erveiras contavam dessas coisas: entalha-se a boneca de uma raiz tirada do pântano e dá-se a ela o nome do que mora lá. Ele vai atrás de quem tem uma boneca dessas. Por muito tempo dormiu, e agora ela voltou para o lago e o está chamando. E as crianças ouvem – têm ouvidos mais finos que os nossos.
    - else:
        Jagna ficou muito tempo virando a estatueta entre os dedos, junto à janela, porque o olho bom era fraco.
        – É uma boneca – disse por fim. – Minha avó me contava de coisas assim. A erveira do lago entalhou-a de uma raiz que tirou do pântano e deu-lhe o nome do que mora lá. Ele vai atrás de quem tem a boneca. Enquanto ela estava {przeszukal_zgliszcza && not figurka_w_bagnie:longe|intocada}, ele dormia. Agora ela voltou – e o está chamando. E as crianças ouvem – têm ouvidos mais finos que os nossos.
        Embrulhou a estatueta no trapo e devolveu-a a Jaromir.
    }
    – O fogo não a leva, ela já esteve nele uma vez. Só a terra benta pode calá-la. {odrzucil_figurke:Ou… – interrompeu-se e balançou a cabeça. – Não. A mim ela já não obedece. Vocês a repeliram, e mesmo assim ela voltou para vocês. Agora é de vocês.|{figurka_u_staruchy:Minha avó me mandou devolvê-la para o lugar de onde veio, e eu devolvi. Não vou aceitá-la de volta.|Ou… – hesitou – ou a entreguem a mim. Eu a levo para tão longe que ele não vai mais ouvi-la.}} # dalej
*   [Não lhe dizer nada.]
    {figurka_u_staruchy:– As crianças dormem tranquilas – mentiu Jaromir.|– Não sei do que a senhora está falando – respondeu Jaromir.}
    Jagna assentiu com a cabeça, como se esperasse exatamente isso.
    – Quando os fogos chegarem à soleira – disse ela – venham me procurar. Até Pentecostes estou em Bukowiec.
    Hanka acompanhou-a até depois da cerca e ficou muito tempo cochichando com ela. Até a noite não dirigiu a Jaromir uma única palavra. # dalej
-   -> wielki_czwartek

= wielki_czwartek
# tlo: noc_kladka
{ not odrzucil_figurke && not jozek_mial_figurke:
    Na noite de Quinta-feira Santa o sonho veio a Jaromir como todas as noites – só que dessa vez, na pinguela, entre os fogos-fátuos, estava Józek. Jaromir saltou da cama antes de entender que já não dormia. Agarrou o machado{ siekiera_dziadka: do avô}, a lanterna e, da arca, a trouxa com a estatueta. Não precisou perguntar a ninguém para onde correr. # pokaz: jozek
    Além das cercas, nos juncos, piscavam as luzes – e entre elas, rumo à pinguela, caminhava um vulto pequeno e claro, descalço, com os braços estendidos para a frente. Jaromir alcançou a margem no instante em que o menino parou no meio da travessia. A água sob as tábuas revolveu-se, e dela surgiu uma mão cinzenta. Fechou-se no tornozelo de Józek.
- else:
    Na noite de Quinta-feira Santa Jaromir foi acordado por gritos na estrada: a mãe de Józek corria de cerca em cerca com uma lanterna, chamando o filho, cuja cama encontrara vazia. Quando Jaromir espiou da entrada, pairava na soleira uma luz pálida, tão perto que iluminava os nós das tábuas – e afastou-se flutuando na escuridão assim que ele olhou para ela. Agarrou o machado{ siekiera_dziadka: do avô}, a lanterna e a trouxa com a estatueta – tinha medo de deixá-la em casa, perto de Marysia. Primeiro correram com a mãe de Józek até o lago, e só de lá Jaromir viu que as luzes tinham se ajuntado num só lugar. # pokaz: jozek
    Quando chegou, era quase tarde demais. A mão cinzenta já tinha puxado o menino para baixo – Józek estava mergulhado até a cintura na água negra e, dormindo, segurava-se na pinguela com uma das mãos.
}
{ figurka_u_staruchy:
    A criatura emergia devagar – enorme, curvada, com cabelos como algas molhadas e olhos que brilhavam esverdeados como madeira podre no escuro. No ombro tinha uma cicatriz velha e funda – a marca do machado com que, anos atrás, o avô Maciek a golpeara. Józek não gritava. Dormia. # pokaz: stwor, blizna
- else:
    A criatura emergia devagar – enorme, curvada, com cabelos como algas molhadas e olhos que brilhavam esverdeados como madeira podre no escuro. Józek não gritava. Dormia. # pokaz: stwor
}
{ oblawa_wilk == wydal_wilka:
    Para lá dos brejos uivou um lobo – rouco, com o fim cortado, tal como na noite depois da caçada. A criatura virou a cabeça naquela direção. Pelo dique, entre os amieiros, passou alguma coisa branca, baixa e desigual, poupando um dos lados – e sumiu na escuridão.
- else:
    Para lá dos brejos uivou um lobo – longo e límpido, a ponto de estremecerem as chamazinhas nos juncos. A criatura virou a cabeça naquela direção. Pelo dique, entre os amieiros, passou como um raio alguma coisa branca, mais rápida que um cachorro – e sumiu na escuridão.
}
Jaromir não sabia a quem aquela voz servia de aviso – à criatura ou a ele.
~ zapiski += stwor_3
# pytanie: O que Jaromir vai fazer?
*   [Golpear a criatura com o machado.]
    ~ noc_na_kladce = siekiera_na_kladce
    Jaromir saltou para a pinguela e golpeou com toda a força. A lâmina entrou fundo no braço cinzento{ figurka_u_staruchy:, bem ao lado da velha cicatriz}. A criatura urrou – longo, gutural, a ponto de fazer tremer as tábuas – soltou o menino e, em revide, rasgou com as garras o ombro de Jaromir. Afundou na água, como se alguém a puxasse. # pokaz: siekiera
    Jaromir tomou Józek nos braços e carregou-o para a margem. O menino só acordou em casa, junto ao forno, e não se lembrava de nada. A ferida no ombro de Jaromir levou até a ceifa para sarar. # dalej
    -> co_z_figurka
*   { ekwipunek ? figurka } [Atirar-lhe a estatueta.]
    ~ noc_na_kladce = figurka_dla_stwora
    ~ los_figurki = figurka_u_stwora
    Jaromir desembrulhou o trapo e atirou a estatueta na água, bem ao lado da criatura.
    ~ ekwipunek -= figurka
    A mão soltou o tornozelo do menino no mesmo instante. A criatura agarrou a estatueta, apertou-a contra o peito como uma mãe aperta o filho e deslizou para a água negra, lisa como uma lontra. As luzes sobre os brejos se apagaram todas de uma vez, como se alguém as tivesse soprado. # pokaz: figurka
    Logo depois a água sob as tábuas foi sugada para o fundo, com um gemido de gelo que se parte, e arrastou consigo as estacas. Jaromir mal teve tempo de pular com Józek para a margem antes que a pinguela – velha como a aldeia – se dobrasse ao meio e afundasse. O menino continuava dormindo, tranquilo, com a bochecha no ombro dele. # dalej
    -> paliki_pod_droge
*   [Espatifar a lanterna na água.]
    ~ noc_na_kladce = latarnia_na_wodzie
    Jaromir arremessou a lanterna aos pés da criatura. O vidro estourou, o óleo se espalhou pela água e explodiu em chamas. A criatura soltou o menino e recuou berrando para a escuridão, e Jaromir agarrou Józek antes que a água negra o tragasse. # pokaz: latarnia
    Mas o fogo correu pelos juncos secos do ano anterior como por pólvora. Antes que os homens chegassem com baldes, queimou metade do juncal e o oratório junto à pinguela – um dos mais antigos da aldeia. De manhã restavam dele tocos negros e o santinho com o rosto chamuscado. # pokaz: pozar # dalej
    -> co_z_figurka

= co_z_figurka
# tlo: skrzynia_izba
Depois da Páscoa, Jaromir passou muitos serões sentado diante da arca. As luzes sobre os brejos continuavam a arder, embora mais longe das cercas do que antes, e Marysia ainda acordava de noite e apontava a janela.
# pytanie: O que ele vai fazer com a estatueta?
*   [Jogar a estatueta no forno.]
    ~ los_figurki = figurka_w_skrzyni
    A estatueta ficou nas brasas a noite inteira e não pegou fogo – só chiava como lenha molhada, e do forno saía um fedor de pântano. De manhã Jaromir tirou-a com o atiçador. Estava chamuscada exatamente como antes, nem um pouco mais. Na entrada, todos os baldes estavam cheios de uma água turva, de lodaçal, embora na véspera Hanka tivesse posto neles água limpa do poço. # pokaz: piec
    Jaromir trancou a estatueta na arca, passou-lhe uma corrente em volta e nunca mais falou dela. # pokaz: lancuch # dalej
*   [Enterrá-la debaixo do oratório.]
    ~ los_figurki = figurka_pod_kapliczka
    ~ ekwipunek -= figurka
    Depois de escurecer, Jaromir foi com uma pá ao oratório {noc_na_kladce == latarnia_na_wodzie:da estrada de Bukowiec, para lá do riacho|junto à pinguela}. Cavou uma cova de um côvado de fundura, enrolou a estatueta num pano limpo, cobriu-a e calcou o chão com os pés. Naquela mesma noite as luzes sobre os brejos se apagaram, e as crianças pararam de sonhar. # pokaz: lopata
    Não contou a ninguém onde a enterrara. Nem a Hanka. # dalej
*   { zaufal_jagnie } { not odrzucil_figurke } { not figurka_u_staruchy } [Entregá-la a Jagna.]
    ~ los_figurki = figurka_u_jagny
    ~ ekwipunek -= figurka
    Jaromir levou a trouxa a Bukowiec. Jagna recebeu-a com as duas mãos, com cuidado, como algo muito frágil, e logo a escondeu no fundo do cesto, debaixo de molhos de ervas secas. # pokaz: kosz
    – Não tenha medo – disse ela. – Não vai voltar mais.
    No dia seguinte partiu. Nessa noite as luzes sobre os brejos se apagaram, e as crianças pararam de sonhar. # dalej
-   -> paliki_pod_droge

= paliki_pod_droge
# tlo: wiosna_paliki
~ zapiski += zielarka_3
Em maio Jadwisia deu a Antek um filho. Antek teimou que o menino se chamaria Franek, e ninguém ousou contrariá-lo. Para padrinho convidou Jaromir. # pokaz: antek
{ los_figurki:
- figurka_u_stwora: As luzes sobre os brejos não voltaram a se acender nem uma vez. Józek não se lembrava daquela noite. A pinguela ninguém reconstruiu: as estacas que os homens cravavam no lodo amanheciam arrancadas na margem, de modo que, para chegar aos prados mais distantes, era preciso dali em diante contornar o pântano pela orla da floresta. O velho Staś, quando soube o que Jaromir tinha feito, persignou-se e nunca mais lançou o anzol naqueles olhos-d’água.
- figurka_w_skrzyni: Os sonhos vinham cada vez mais raramente, mas não cessaram de todo. Às vezes, em noites sem lua, Marysia sentava-se na caminha e ficava olhando para a arca debaixo da cama dos pais, até que Hanka a deitasse.
- else: As crianças da aldeia esqueceram o sonho mais depressa do que as mães pararam de falar dele. Marysia voltou a dormir as noites inteiras.
}
{ noc_na_kladce == siekiera_na_kladce:
    No ombro de Jaromir ficou uma cicatriz grossa e rosada{ figurka_u_staruchy && los_psa == oswojony: – no mesmo lugar em que, anos atrás, as garras da criatura tinham alcançado o avô}.
}
{ noc_na_kladce == latarnia_na_wodzie:
    No lugar do oratório queimado, os homens cravaram na terra uma cruz de bétula. Ninguém ergueu um novo – não havia com quê. # pokaz: krzyz
}
No fim de maio, Hanka procurou Marysia por todo o terreiro. Só a encontrou atrás do celeiro, mergulhada no centeio até o peito. A pequena estava imóvel, com a cabecinha inclinada, como quem escuta.
– Mamãe está cantando – disse ela, e apontou com a mãozinha para a seara, para o lado oposto ao da casa.
{ glos_w_lesie:
    Quando Hanka contou isso ao serão, Jaromir lembrou-se da Véspera de Natal de anos atrás e da voz da mãe {figurka_u_staruchy:vinda da névoa sobre o campo|vinda de entre as árvores}{glos_w_lesie == odpowiedzial: – e depois de um riso que não era dela de jeito nenhum|{glos_w_lesie == kozuch: – e depois de passos pesados que roçaram bem ao seu lado| – e de como a voz o perseguira pela neve até a cerca da casa de Staś}}. Não disse nada. Só que naquela noite se levantou duas vezes para ver se Marysia dormia.
}
No início de junho, os homens de Urbaniak puseram-se a cravar estacas no chão: desde a serraria, pelos prados e brejos, direto rumo à floresta. O senhor Urbaniak queria ter uma estrada até o bosque. Uma semana depois, as estacas cravadas mais perto da floresta deitaram brotos verdes – de madeira seca e descascada. # pokaz: paliki # dalej
-> rozdzial_trzynasty_ciag_dalszy


// Koniec rozdziału trzynastego – dalej rozdział czternasty.
=== rozdzial_trzynasty_ciag_dalszy ===
# ozdobnik
_Fim do capítulo décimo terceiro._ # dalej
-> rozdzial_czternasty
