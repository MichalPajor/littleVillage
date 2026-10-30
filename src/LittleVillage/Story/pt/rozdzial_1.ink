// ------------------------------------------------------------
//  Rozdział pierwszy – Lato. Dzieciństwo Jaromira, około pół
//  wieku po prologu. Przebieg zależy od zakończenia prologu:
//    figurka_u_staruchy – dom na pagórku obok Stasia, milczący ojciec
//                         (z psem żyje jeszcze babka Marianna);
//    inaczej            – chata dziadka Maćka (las / mokradła / jezioro),
//                         ojciec opowiada legendy jak bajki.
// ------------------------------------------------------------

=== rozdzial_pierwszy ===
// Czy Maciek miał krzesiwo – babka Marianna może je oddać wnukowi w rozdziale 4.
~ krzesiwo_dziadka = ekwipunek ? krzesiwo
// Nowy bohater – Jaromir zaczyna z pustym tobołkiem (przedmioty Maćka zostają w prologu).
~ ekwipunek = ()
# nowy_tobolek
# tlo: zapadlina_lato
# rozdzial: Capítulo primeiro
# tytul: Verão
A Zapadlina em que Jaromir cresceu já era outra aldeia, diferente daquela a que, anos antes, seu avô descera com o bornal às costas. As casas tinham aumentado – agora eram nove, espalhadas pelas encostas e pelos prados como grãos lançados a mancheias num campo. O bosque tinha cedido um pouco aos machados, as lavouras chegavam mais longe, e sobre os brejos passava uma pinguela firme de toras de carvalho. À beira dos caminhos erguia-se uma infinidade de oratórios, sempre enfeitados com flores frescas. A névoa continuava a gostar daquele vale e, no verão, demorava-se nele para além do nascer do sol. Também os arredores tinham mudado: para lá da Serra das Faias, a uma hora de caminhada de Zapadlina, crescera Bukowiec – um povoado maior e mais próspero, com moinho, taberna e escola, e, bem ao lado da escola, uma igrejinha de madeira, junto à qual viera morar um padre velho. À cidade já só se ia para as feiras e as grandes romarias.
{ figurka_u_staruchy:
    Jaromir morava numa casa no outeiro, ao lado do sítio do velho Staś, com quem seu pai tinha sido criado como um irmão. Era pequena, mas aconchegante, de paredes caiadas e telhado de junco, e da soleira se via Zapadlina inteira – os campos, os prados, o lago e a risca escura da floresta a leste.
- else:
    { chata_macka:
        - przy_lesie: Jaromir morava na cabana junto ao bosque, a mesma que o avô Maciek tinha erguido. O pai lhe acrescentara uma segunda sala e um celeiro. Debaixo da janela crescia uma macieira, plantada no dia em que o filho nasceu, e do lado norte havia ameixeiras-bravas, que viviam deixando cair frutinhas pequenas, verdes, ainda por amadurecer. Para lá da cerca baixa começava a floresta – no verão cheirava a resina e a cogumelos, e nas tardes de calor dava uma sombra onde se podia ficar deitado até o anoitecer.
        - przy_mokradlach: Jaromir morava na cabana junto aos brejos, a mesma que o avô Maciek tinha erguido – sobre o alicerce de pedra que em meio século nem a água nem a geada tinham abalado. O pai lhe acrescentara uma segunda sala e um celeiro. Debaixo da janela crescia uma macieira, plantada no dia em que o filho nasceu, e do lado norte havia ameixeiras-bravas, que viviam deixando cair frutinhas pequenas, verdes, ainda por amadurecer. Para lá da cerca baixa estendiam-se os prados por onde andavam as cegonhas, e ao crepúsculo chegava dos alagados um concerto de rãs tão sonoro que abafava até os grilos.
        - else: Jaromir morava na cabana à beira do lago, a mesma que o avô Maciek tinha erguido. O pai lhe acrescentara uma segunda sala e um celeiro. Debaixo da janela crescia uma macieira, plantada no dia em que o filho nasceu, e do lado norte havia ameixeiras-bravas, que viviam deixando cair frutinhas pequenas, verdes, ainda por amadurecer. Da soleira até a água eram umas poucas dezenas de passos, e no verão o menino os percorria correndo tantas vezes por dia que abriu no capim uma trilha só sua.
    }
}
O pai, Dobrosław, já era então um homem entrado em anos, de barba grisalha e mãos rachadas pelo trabalho. { figurka_u_staruchy: Falava pouco e ria ainda menos. Quando à tardinha se sentava na soleira, ficava muito tempo olhando para os brejos, como se procurasse alguma coisa ali. Amava o filho a seu modo – em silêncio, com a mão pesada no ombro e o melhor pedaço de carne empurrado para a tigela dele. | Gostava de brincar e, à noite, contava histórias que ouvira do próprio pai – de criaturas do pântano e da erveira do lago. Jaromir as escutava com a respiração suspensa, embora soubesse que eram só contos. }
A mãe, Agnieszka, era uns bons quinze anos mais nova que o marido. Cheirava a pão e à fumaça do forno, cantava em qualquer serviço e nunca conseguia ficar zangada por muito tempo.
{ figurka_u_staruchy && los_psa == oswojony:
    No canto da sala, num mocho, costumava sentar-se a avó Marianna, curvada e calada. Às vezes afagava a cabeça do neto e olhava para ele como se visse nele outra pessoa.
}
O menino pouco parava em casa. O verão pertencia a ele – inteirinho, dos primeiros calores até a colheita – e seus dias eram quase todos iguais, e no entanto nenhum se parecia com o anterior. # dalej
-> poranek

= poranek
# tlo: poranek
Acordava com o canto do galo e com um raio de luz que se espremia pela fresta da veneziana e se deitava em seu rosto como uma fita dourada. Ainda ficava um pouco debaixo do acolchoado de penas, escutando a mãe lidar junto ao forno – a água borbulhando nas panelas, o fogo atiçado crepitando sob a chapa, as tábuas rangendo sob os seus passos. Da sala vinha o cheiro de leite e de pão recém-assado.
Então se lembrava de que era verão e pulava da cama como se tivesse se queimado.
Tomava o café da manhã quase de pé. Uma fatia grossa com manteiga, uma caneca de leite tirado da vaca, ainda morno, às vezes queijo branco. A mãe balançava a cabeça, sorrindo.
– Senta, filho. Ninguém vai tirar isso de você. Dia para brincar com a criançada é o que não vai te faltar.
# pytanie: O que Jaromir vai fazer?
*   [Sentar-se e comer com calma, como pede a mãe.]
    Suspirava e sentava-se na beirada do banco, e como prêmio ganhava um beijo na testa e uma colherada de mel no pão. Comia ligeiro, mas até o fim, e quando a caneca ficava vazia, só gritava: – Vou à casa dos vizinhos! – e já tinha ido. # pokaz: jaromir
    -> poranek_dalej
*   [Agarrar a fatia e sair correndo.]
    -> poranek_bieg

= poranek_bieg
Mas ele já limpava a boca na manga e estava junto à porta. Antes que a mãe tivesse tempo de dizer que tomasse cuidado, só gritou: – Vou à casa dos vizinhos! – e já disparava pelo terreiro, espantando as galinhas, que fugiam cacarejando de debaixo dos seus pés. # pokaz: jaromir
-> poranek_dalej

= poranek_dalej
De madrugada o capim estava molhado de orvalho e frio, e as botas logo se encharcavam. Tinha o cheiro que só tem a essa hora – fresco, verde, um pouco como pepino cortado ao meio. Sobre os prados ainda pairavam farrapos de névoa, mas o sol já os dispersava, e em cada gota sobre as folhas de capim acendia-se uma faísca minúscula. As cotovias subiam ao céu e cantavam tão alto que era impossível avistá-las.
Na casa de Staś já o esperavam. Franek, o mais velho dos netos do dono da casa, era graúdo e tinha quatro anos mais que Jaromir. O irmão dele, Antek, dois invernos mais novo, cutucava a terra com um graveto, cavando um regozinho por onde queria levar a água de uma poça para outra. Pouco depois vinha correndo do lado do lago Hanka, a filha do ferreiro, com a trança pulando nas costas. # pokaz: dzieci
– O que a gente faz hoje? – perguntava Franek, embora todos soubessem que quem ia decidir era ele mesmo. # dalej
-> wojna

= wojna
# tlo: laka_bitwa
O mais das vezes começava com a guerra.
Cada um tinha a sua espada – uma vara descascada de aveleira ou de salgueiro, com a ponta afiada. Jaromir a levava enfiada no cinto e, quando tinha de se separar dela, sempre a deixava no mesmo lugar: num canto do celeiro. Não havia na aldeia inteira arma mais certinha – lisa de tanto ser empunhada e escura do suor das mãos. { figurka_u_staruchy: O pai, sem dizer palavra, ajudou-o a afiar a espada, certa tardinha, junto à soleira. | O pai o ajudara a entalhar aquela espada, rindo e dizendo que com ela parecia um cavaleiro de estampa de feira, e que com uma arma daquelas até um dragão se podia vencer. }
O inimigo eram as ervas daninhas. Nas divisas e junto às valas cresciam seus exércitos sem conta: salsas-do-monte com umbelas do tamanho de pratos, cardos eriçados de cabeças roxas e urtigas que chegavam até as orelhas. As crianças invadiam os prados com um grito que espantava os pardais. As varas silvavam no ar, os talos se partiam com um estalo suculento, e as cabeças espinhosas voavam para todo lado. # pokaz: bitwa
Depois de cada batalha chegava a hora de tratar os ferimentos. Não raro eram joelhos esfolados até sangrar, panturrilhas cobertas de bolhas da queimadura das urtigas, antebraços e mãos arranhados. Hanka tinha remédio para tudo: punha folhas de tanchagem sobre as queimaduras e mandava segurar até parar de arder. Ninguém chorava – bom, às vezes Antek, mas só um tiquinho, e logo depois fingia que era o suor que lhe escorria para os olhos.
Mais tarde caíam na relva, ofegantes e felizes, e ficavam deitados de costas, de braços abertos. Sobre eles passavam nuvens brancas, nas quais cada criança lia outra coisa – um cavalo, um navio, uma velha de vassoura, um urso. Cheirava a terra aquecida, a camomila e a mato amassado. Em algum lugar ali perto zumbia uma mamangava, e os gafanhotos saltavam de debaixo das mãos como faíscas de uma fogueira. # dalej
-> luki

= luki
# tlo: luki
Quando se cansavam das espadas, chegava a vez dos arcos.
~ ekwipunek += nozyk
Os melhores eram de aveleira, que crescia cerrada na orla do bosque – reta, flexível e resistente. Franek escolhia um galho do comprimento certo – igual à sua altura – e Jaromir o desbastava com o canivete que ganhara do pai no dia do seu santo. Era preciso cuidado para não tirar madeira demais num só lugar, porque então o arco se quebrava na primeira vez que o vergavam. Para a corda servia um barbante grosso, furtado do cesto da mãe, ou – nos dias de sorte – um pedaço de linha encerada de sapateiro.
As flechas também eram de aveleira, mas bem mais fina. Pontas de ferro não havia – em compensação, afiavam a ponta até picar como um espinho, e na outra extremidade – aletas de papel ou de plumas catadas nos terreiros da aldeia inteira.
O alvo era um feixe de palha posto de pé na divisa, com um círculo pintado de fuligem. A corda zunia junto à orelha como uma vespa, a flecha silvava curta, e depois soava um “toc” surdo, quando a ponta afiada se cravava na palha. Os projéteis voavam razoavelmente retos, acertavam a terra ou o alvo, e às vezes subiam alto, céu acima. Quem se saía melhor era Hanka. Apertava um olho, punha a pontinha da língua para fora e não errava nem uma vez – e os meninos, embora por nada no mundo o admitissem, admiravam-na por isso mais do que por qualquer outra coisa. # pokaz: hanka
# pytanie: Jaromir vai se medir com Hanka?
*   [Sim – desafiá-la para uma disputa.]
    ~ celny_strzal = true
    Perdia, é claro. Hanka acertava sem falhar, e as flechas dele caíam quase sempre no meio do trigo. Mas no dia seguinte chegava à divisa ainda antes dela e treinava até os dedos ficarem dormentes.
    -> luki_dalej
*   [Não – treinar sozinho, longe dos outros.]
    Ia para o fim da divisa e atirava num toco velho até o ombro doer. Ninguém via quantas vezes errava, e assim era melhor.
    -> luki_dalej

= luki_dalej
Uma vez Jaromir acertou bem no meio do círculo. Pelo resto do dia andou tão orgulhoso que se esqueceu até do almoço, e a mãe teve de chamá-lo muitas vezes. # pokaz: trafienie # dalej
-> lato_baza

= lato_baza
# tlo: baza
O lugar mais importante do mundo, porém, era o esconderijo.
Ficava – ou melhor, pendia – na copa do velho sabugueiro que crescia na beira do prado, tão frondoso que à sua sombra caberiam algumas vacas. Levaram um verão inteiro, comprido, para construí-lo. As tábuas, arranjavam-nas onde dava: de um chiqueiro desmoronado, de uma cerca que ninguém mais consertava, {figurka_u_staruchy:do celeiro de Staś, que balançava a cabeça, mas não proibia|do celeiro do pai de Jaromir, que fingia não ver nada}. Pregavam-nas com pregos endireitados batendo pedra contra pedra, e onde os pregos faltavam, amarravam com barbante. Para subir havia uma escadinha de degraus atados ao tronco. No esconderijo sempre cheirava a madeira aquecida e a flor de sabugueiro, tão doce que depois de uma hora a cabeça girava. Pelas frestas entre as tábuas entravam finos raios de sol, onde dançava a poeira, e quando ventava, a copa inteira balançava e rangia, como se o esconderijo fosse um barco em água agitada.
Lá dentro cabiam cinco, se se sentassem apertados – para quatro, portanto, era bem confortável. Tinham ali tudo de que precisavam: uma caixa de tesouros, onde guardavam pedrinhas coloridas, penas e conchinhas, e, para o caso de um ataque – uma aljava com flechas, um arco e as “espadas”.
# pytanie: O que Jaromir vai guardar na caixa de tesouros?
*   [Uma conchinha do lago, branca como leite.]
    ~ skarb_jaromira = muszelka
    Embrulhou-a numa folha de bardana e guardou-a bem no fundo.
    -> baza_dalej
*   [Uma pena de gaio, azul como o céu depois da tempestade.]
    ~ skarb_jaromira = pioro
    Colocou-a por cima de tudo, para que brilhasse assim que se abrisse a tampa.
    -> baza_dalej
*   [Um prego enferrujado que – segundo ele – caíra um dia de uma verdadeira armadura de cavaleiro.]
    ~ skarb_jaromira = gwozdz
    Enrolou-o num paninho como uma relíquia. Franek caiu na risada, mas Antek olhava para o prego com respeito.
    -> baza_dalej

= baza_dalej
O mais bonito era estar lá durante um aguaceiro. A trovoada de verão chegava de repente, numa muralha escura vinda de trás do bosque, e antes que as crianças conseguissem correr para casa, caíam os primeiros pingos pesados. Então trepavam para o esconderijo e ficavam encolhidas sob o teto de tábuas, por onde de todo modo pingava um pouco. As folhas rumorejavam como o mar, que nenhuma delas jamais tinha visto, os trovões rolavam sobre a aldeia, e o ar cheirava a chuva, a madeira molhada e a sabugueiro em flor. Depois da tempestade o prado fumegava, e no céu se armava um arco-íris. # pokaz: burza # dalej
-> lato_jezioro

= lato_jezioro
# tlo: jezioro_lato
Quando o sol subia ao zênite e sobre os campos começava a tremular a soalheira, o bando inteiro partia para o lago. Corriam apostando corrida pelo prado, largando as camisas pelo caminho, e caíam na água aos berros, levantando borrifos até o céu. Junto à margem era raso e arenoso, a água aquecida pelo sol como numa tina, e peixinhos miúdos faziam cócegas nos pés. Franek se exibia mergulhando de cabeça de um tronco caído, e Antek ficava sentado no raso, apanhando girinos com as mãos. Cheirava a junco e a lodo aquecido, e sobre a água riscavam as libélulas. # pokaz: kapiel
{ figurka_u_staruchy: Jaromir nunca entrava além da cintura. O pai o proibira uma vez, em poucas palavras e com tanta severidade que o menino não se atreveu a perguntar por quê. Com a mesma firmeza o proibira de chegar perto dos brejos e dos juncos do lado oeste, onde diziam que um dia houvera uma cabana. | Na margem oeste, entre os caniços, ainda se erguiam da terra os tocos negros de toras carbonizadas. As crianças assustavam-se umas às outras com eles, contando a história da erveira queimada – a mesma que o pai de Jaromir desfiava à noite – mas em pleno sol ninguém tinha medo. }
{ figurka_u_staruchy:
    Naquele dia Franek nadou até a parte funda e gritou para Jaromir ir ter com ele.
    # pytanie: Jaromir vai obedecer ao pai?
    *   [Ficar junto à margem.]
        Balançou a cabeça e não saiu do raso. De longe chegou-lhe um “Medroso!”, mas logo todos esqueceram e continuaram chapinhando.
        -> jezioro_dalej
    *   [Nadar até Franek.]
        ~ odwaga_jaromira = true
        Deu um passo, depois outro. A água chegou-lhe ao peito e de repente ficou gelada, e algo escorregadio roçou-lhe a panturrilha. Recuou tão depressa que chegou a engasgar. Não contou a ninguém – e muito menos ao pai.
        -> jezioro_dalej
- else:
    Naquele dia Franek apostou que ninguém teria coragem de tocar as toras carbonizadas.
    # pytanie: Jaromir vai aceitar a aposta?
    *   [Tocá-las – afinal, ele não é medroso.]
        ~ odwaga_jaromira = true
        Abriu caminho pelos juncos e pousou a mão na mais alta delas. A madeira estava fria, embora o sol queimasse desde cedo, e o menino recolheu a mão mais depressa do que pretendia. Todos acharam que aquela foi a maior coragem daquele verão.
        -> jezioro_dalej
    *   [Ficar com os outros na areia.]
        Deu de ombros e não se mexeu do lugar. Franek foi sozinho, tocou a madeira negra com a ponta do dedo e voltou correndo, fingindo que não tinha pressa nenhuma.
        -> jezioro_dalej
}

= jezioro_dalej
Depois do banho secavam-se na relva, deitados de bruços, e comiam o que o bosque dava: morangos silvestres, mirtilos que deixavam os dentes e a língua pretos, e folhas azedas de azedinha mascadas para refrescar. Às vezes alguém trazia de casa um pepino ou um pedaço de queijo, e repartiam com justiça, em tantas partes quantas eram as bocas. No pomar dos Wójcik amadureciam as cerejas, e o dono dormia depois do almoço um sono tão pesado que não ouvia ninguém sacudir os galhos.
O calor deitava-se sobre tudo como um acolchoado quente. Os grilos cricrilavam tão alto como se do seu canto dependesse que o sol chegasse a se pôr. Dos renques de capim ceifado que os camponeses reviravam com o ancinho vinha o cheiro de feno, e das divisas soprava a doçura do serpão e do trevo. As abelhas zumbiam nas tílias, as borboletas pousavam nas flores, e o tempo corria tão devagar que o dia parecia não ter fim. # dalej
-> lato_wieczor

= lato_wieczor
# tlo: wieczor_lato
E, no entanto, sempre terminava. O sol escorregava para trás do lago, as sombras se alongavam pelo prado até irem de uma ponta à outra, e o céu sobre a água ganhava a cor de framboesas maduras. O ar esfriava e cheirava a capim ceifado e à fumaça das chaminés, e dos brejos chegavam as primeiras rãs – primeiro uma, depois dezenas, até o vale inteiro coaxar como um grande coro. Dos terreiros, um após outro, começavam então a vir os chamados.
– Jaroooomir! Pra caaaasa! # pokaz: matka
# pytanie: Jaromir vai voltar logo?
*   [Correr para casa na mesma hora.]
    A voz da mãe atravessava a aldeia inteira. O menino não se fazia esperar: despedia-se dos outros, combinava para o dia seguinte – sempre para o dia seguinte, sempre junto ao marco de madeira que assinalava o limite do campo do pai, logo depois do café – e corria pelo prado, onde se acendiam os primeiros vaga-lumes. # pokaz: jaromir
    -> wieczor_dalej
*   [Brincar mais um pouquinho.]
    -> wieczor_zwlekanie

= wieczor_zwlekanie
A voz da mãe atravessava a aldeia inteira. O menino fingia não ouvir, até que a mãe chamasse pela segunda vez – e na terceira aparecia na voz dela uma nota que não prometia nada de bom. Então ele se despedia dos outros, combinava para o dia seguinte – sempre para o dia seguinte, sempre junto ao marco de madeira que assinalava o limite do campo do pai, logo depois do café – e corria pelo prado, onde se acendiam os primeiros vaga-lumes. # pokaz: jaromir
-> wieczor_dalej

= wieczor_dalej
Voltava sujo, com capim no cabelo, terra debaixo das unhas e os joelhos cheios de cascas de feridas. A mãe suspirava, pegava-o pela orelha e levava-o até a tina de água, e depois punha diante dele uma tigela de ovos mexidos ou de coalhada com batatas.
{ figurka_u_staruchy:
    O pai ficava sentado em frente, calado. Quando terminava, fazia sempre a mesma coisa: levantava-se, verificava se a porta estava bem trancada e só então ia dormir.
    { los_psa == oswojony:
        A avó Marianna erguia-se então do mocho, traçava uma cruzinha na testa do neto e sussurrava algo que o menino não entendia.
    }
- else:
    O pai, se a noite estava quente, levava o banco para fora da cabana e contava histórias. Do avô Maciek, que descera para Zapadlina só com um machado, da criatura do pântano, da voz que chamava da beira d'água. Jaromir costumava começar a cochilar no meio, com a cabeça nos joelhos do pai, e nunca ouvia o final.
}
Depois ficava deitado no colchão de palha debaixo da janela, escutando a noite. As rãs coaxavam nos alagados, no estábulo um cavalo bufou, em algum lugar ao longe latiu um cão. Pela fresta da veneziana viam-se as estrelas – densas como o orvalho no prado.
Adormecia sorrindo, pensando que amanhã de novo o esperava um dia quente de verão, cheio de brincadeiras da aurora ao crepúsculo. # dalej
-> zloty_dzien

= zloty_dzien
# tlo: zapadlina_lato
Dias assim houve sem conta. Mais tarde fundiam-se na sua memória numa única faixa longa e dourada, cheirando a feno e a terra aquecida, cheia de sol, de risadas e do zumbido das abelhas. O verão passava, e Jaromir crescia – alcançava cada vez mais alto os galhos do sabugueiro, sua flecha voava cada vez mais longe, cada vez menos precisava da escadinha para subir ao esconderijo. # dalej
-> rozdzial_pierwszy_ciag_dalszy


// Koniec rozdziału pierwszego – dalej rozdział drugi.
=== rozdzial_pierwszy_ciag_dalszy ===
# ozdobnik
_Fim do capítulo primeiro._ # dalej
-> rozdzial_drugi
