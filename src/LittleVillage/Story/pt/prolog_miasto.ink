// ------------------------------------------------------------
//  Prolog, część druga – miasto, rodzina, powrót do Zapadliny
//  i zakończenie prologu (zależy od tego, komu Maciek sprzedał figurkę).
// ------------------------------------------------------------

=== miasto ===
# tlo: gosciniec
# rozdzial: Prólogo
# tytul: A cidade
A estrada se estendia por campos e capões, ora morro acima, ora morro abaixo. Cruzavam com ele carroças de camponeses que levavam cereal para a feira, e a certa altura passou rodando uma caleça, de onde alguém gritou que saísse do caminho.{ los_psa == oswojony: O cão andava colado à sua perna e rosnava a cada estrépito de rodas.} O sol já ia alto quando, por trás de um outeiro, surgiu a torre da igreja e, aos pés dela, os telhados da cidade – vermelhos, cinzentos e cobertos de musgo, apertados como grãos numa espiga. # dalej
-> rynek

= rynek
# tlo: rynek
A praça zumbia como uma colmeia. Entre as barracas acotovelavam-se camponeses de capote, as vendedeiras apregoavam ovos e manteiga, e de junto da casa da câmara vinha o balido das cabras. Cheirava a pão, a esterco de cavalo e a peixe defumado.{ ekwipunek ? figurka: Maciek apalpou no bolso a figura de madeira. Primeiro era preciso vendê-la – só depois poderia pensar em comer.}
{ ekwipunek ? figurka: -> kramarze | -> zakupy }

= kramarze
O primeiro foi um vendedor de estampas de santos e terços. Examinou demoradamente a estatueta contra a luz, por fim fez uma careta e devolveu-a depressa, como se queimasse.
– Isso não é santo nenhum – resmungou, e persignou-se às escondidas. – Não levo isso para debaixo do meu teto.
O entalhador de colheres e gamelas nem chegou a tocá-la. Declarou que a madeira estava podre, meio queimada e não servia para nada, a não ser para acender o fogo.
Só o vendedor de trastes velhos, com uma carrocinha cheia de panelas e sapatos rotos, a revirou mais tempo entre os dedos.
– Dois groszy – disse afinal. – Mais que isso ninguém te dá.
Era o preço de um pão. Um só. Maciek prometeu que ainda ia pensar e seguiu para a parte mais pobre da praça, onde, em vez de barracas, havia panos estendidos no chão com cebolas, farrapos e ferragens enferrujadas. # dalej
-> starucha

= starucha
# tlo: zaulek
De repente alguém o segurou pela manga. A mão era pequena e seca, cheirava a hortelã e a fumaça.
Diante dele estava uma velha miúda de capuz escuro, apoiada num cajado, com um cesto de ervas secas ao ombro. A capa era remendada, mas limpa, e sob o capuz branquejava a orla de uma touca. Tinha um olho velado por uma névoa branca; o outro – negro e vivo – fitava direto o bolso dele. # pokaz: starucha
– O que é que você leva aí, filho? – sussurrou. – Sinto cheiro de cinza. Cinza velha, da beira d'água.
{ los_psa == oswojony:
    O cão farejou o cesto dela, espirrou por causa das ervas e depois eriçou o pelo e rosnou baixo – não para ela, mas para o bolso de Maciek. # pokaz: pies
}
Maciek quis ir embora, mas ela não largava a manga.
– Isso não é seu. Você desenterrou isso onde não se devia cavar – dizia baixinho, para que ninguém em volta ouvisse. – Essa coisa chama, filho. Enquanto você a carregar, aquilo que mora na água sabe onde te procurar. A você e aos que você ama. Não a queime nem a jogue na água, porque ela volta. Alguém precisa saber o que fazer com ela – e eu sei.
Só então o soltou.
– Eu fico com ela. Mas não de graça, porque o que se dá de graça volta para quem deu. Dou dez groszy. Cinco vezes mais do que queria dar aquele da carrocinha.
Devia estar em algum lugar por perto quando ele regateava com o negociante. Só que ele não se lembrava de tê-la visto ali.
# pytanie: A quem Maciek vai vender a estatueta?
*   [Vender à velhinha – ela entende dessas coisas, e com dez groszy a família aguenta até as primeiras colheitas.]
    ~ figurka_u_staruchy = true
    ~ ekwipunek -= figurka
    # tlo: rynek
    Maciek tirou a estatueta e a pôs na palma estendida da velha. Ela não a agarrou de imediato. Primeiro embrulhou-a num paninho de linho e só assim, através do pano, a tomou na mão. As moedas, tirou-as de uma trouxinha presa à cintura.
    – Agora isto é assunto meu – disse. – Vá com Deus, filho. E não olhe para trás por causa dela.
    Virou-se e sumiu na multidão antes que ele conseguisse responder o que fosse.{ los_psa == oswojony: O cão parou de rosnar assim que o bolso ficou leve.}
    -> zakupy
*   [Vender ao negociante por uns trocados – melhor que ela vá parar no meio das panelas, com alguém que não sabe o que ela é.]
    ~ ekwipunek -= figurka
    # tlo: rynek
    – Obrigado, minha senhora, mas não é preciso – respondeu Maciek, e recuou um passo.
    A velha ficou muito tempo olhando para ele com o olho são. – Como quiser – disse apenas, e voltou para as suas ervas.
    O negociante deu de ombros, jogou a estatueta entre as panelas e contou dois groszy. – Eu disse que mais ninguém dava.{ los_psa == oswojony: O cão só parou de rosnar quando a estatueta desapareceu sob um monte de cacos.}
    -> zakupy

= zakupy
~ ekwipunek += (zapasy, nasiona)
{
- figurka_u_staruchy: Com as moedas da velha e o resto dos seus cobres, Maciek comprou dois pães, um saco de cevadinha, sal, um pedaço de toucinho, sementes de hortaliças e até um cesto de batata-semente. O bornal lhe vergava as costas, mas era o fardo mais agradável que carregava em muito tempo.
- przeszukal_zgliszcza && not figurka_w_bagnie: Com os últimos cobres e os dois groszy do negociante, Maciek comprou um pão, um punhado de sal, um saquinho de cevadinha e algumas sementes de hortaliças. Pouca coisa, mas dava para sobreviver uns dias.
- else: Com os últimos cobres – o que sobrara do machado – Maciek comprou um pão, um punhado de sal, um saquinho de cevadinha e sementes de várias hortaliças.
}
Era primavera, e era preciso apressar a semeadura.
Junto ao poço da cidade comeu a primeira fatia em semanas. Era macia e ainda quente. Teve de se conter para não devorar tudo de uma vez.{ los_psa == oswojony: A segunda deu ao cão.}
Depois saiu da cidade rumo à fazenda onde por quatro anos trabalhara em terra alheia e onde a mulher e o filhinho o esperavam. # dalej
-> rodzina


// ------------------------------------------------------------
//  Rodzina – spotkanie z żoną i synem w Czworakach.
// ------------------------------------------------------------
=== rodzina ===
# tlo: czworaki
# rozdzial: Prólogo
# tytul: A família
Chegou à casa dos jornaleiros quando o sol já descambava para o poente. O prédio comprido e baixo, de chaminé torta, estava igualzinho ao dia em que partira. Diante da soleira, um menino de poucos anos riscava sinais na areia com um graveto. Ergueu a cabeça, olhou para o homem estranho e macilento – e por um instante não o reconheceu. # pokaz: dziecko
– Dobrosław – disse Maciek baixinho.
O pequeno levantou-se num pulo e correu para dentro, gritando. Quase no mesmo instante Marianna apareceu à porta. Enxugava as mãos no avental – e ficou paralisada ao ver o marido. # pokaz: marianna
Um momento depois atirou-se ao pescoço dele com tanto ímpeto que ele chegou a cambalear. Chorava em seu ombro, e ele lhe afagava os cabelos sem conseguir dizer uma palavra. Dobrosław abraçou-se à perna do pai e não queria largá-la.
– Jesus, Maciek – sussurrou ela por fim, afastando-se para olhá-lo bem. Tocou as faces encovadas, as clavículas saltadas. – Você está pela metade do que era quando foi embora. O que é que você comia lá? Casca de árvore?
Ele riu, embora tivesse lágrimas nos olhos.
{ los_psa == oswojony:
    O cão ficou de lado, desconfiado, até que Dobrosław lhe estendeu a mão. Pouco depois já se deixava coçar atrás da orelha, e o pequeno guinchava de alegria. # pokaz: pies
}
À noite, diante de uma tigela de cevadinha, Maciek contou. Falou da cabana – das paredes de toras que ele mesmo desbastara, do telhado de junco, da soleira onde se sentava depois do trabalho. Da terra, que seria tanta quanto conseguissem cultivar.
– Amanhã de madrugada a gente parte – anunciou. – Vamos começar tudo de novo. No que é nosso.
Marianna escutava, sorrindo para si mesma. Mas quando o filho adormeceu, chegou-se mais perto e olhou o marido bem no rosto.
– Agora me conte a verdade. O que aconteceu lá? Estou vendo que alguma coisa te rói por dentro.
# pytanie: Maciek vai contar à mulher sobre aquela noite?
*   [Sim – contar-lhe da criatura, da lenda e da voz que vem dos pântanos. Ela precisa saber para onde vai.]
    ~ zona_wie = true
    Não calou nada. Falou dos uivos no matagal, do silêncio que o acordara, do vulto que saíra da névoa. Da erveira queimada e da sua maldição. Do pântano que o chamara com a voz de Marianna.{ figurka_u_staruchy: Da estatueta chamuscada tirada de debaixo das cinzas, que naquele mesmo dia vendera na praça a uma velhinha de capuz.}
    Marianna escutava calada, mais pálida a cada frase. Quando ele terminou, ficou muito tempo olhando a janela escura.
    – Vamos voltar para lá? – perguntou enfim, baixinho.
    – Vamos. É a nossa casa.
    Ela assentiu com a cabeça. Não disse mais nada, mas naquela noite não pregou o olho – ele percebia pela sua respiração. # dalej
    -> powrot
*   [Não – desconversar. Para que assustá-la, se a cabana está de pé e o que passou, passou.]
    – Não aconteceu nada – mentiu. – Trabalho pesado e pouca comida. Só isso.
    Marianna ainda o olhou por um momento, como se esperasse o resto. Depois suspirou e encostou a cabeça no ombro dele.
    Naquela noite ele custou a dormir. Pensou que um dia lhe contaria. Um dia, quando tudo se ajeitasse. # dalej
    -> powrot


// ------------------------------------------------------------
//  Powrót do Zapadliny z rodziną.
// ------------------------------------------------------------
=== powrot ===
# tlo: sciezka_rodzina
# rozdzial: Prólogo
# tytul: O regresso
Partiram de madrugada. Marianna levava uma trouxa com os seus pertences, Maciek – o bornal com a comida e, quando o pequeno se cansava da caminhada, também o menino, de cavalinho.
{ los_psa == oswojony:
    O cão corria de um para o outro, como se vigiasse para que ninguém ficasse para trás. # pokaz: pies
}
Já ia bem avançada a tarde quando chegaram à Serra das Faias. Lá embaixo ficava Zapadlina.{ chcial_odejsc: Naquele mesmo lugar, poucos dias antes, Maciek estivera com o bornal ao ombro, querendo ir embora para sempre. Agora era o filho que dormia nas suas costas.}
No alto da serra Maciek parou e olhou para a mulher.
– Agora preste atenção – disse. – Venha logo atrás de mim, passo a passo. Não saia da trilha, aconteça o que acontecer. Não olhe para a água negra. E não dê ouvidos às vozes que vêm dos pântanos. Seja o que for que você ouvir – não responda e não se vire.
{ zona_wie: Marianna {chcial_odejsc:pousou a mão nas costas do filho adormecido|tomou o filho pela mão} e fez que sim com a cabeça. Sabia do que ele falava. | Marianna ergueu as sobrancelhas, como se quisesse rir, mas algo no rosto dele a conteve. Fez que sim com a cabeça, sem dizer palavra. }
Seguiram devagar, em fila indiana. A névoa arrastava-se baixa sobre os alagados, e em algum lugar ao longe, no juncal, algo chapinhava de mansinho. No meio do caminho ele ouviu, às suas costas, Marianna puxar o ar de repente. Não se virou. Só quando pisaram em terra firme perguntou o que ela tinha ouvido.
– Nada – respondeu ela depressa. Depressa demais. # dalej
-> nowy_dom

= nowy_dom
{ chata_macka:
    - przy_lesie: # tlo: chata_las
    - przy_mokradlach: # tlo: chata_mokradla
    - else: # tlo: chata_jezioro
}
A cabana estava onde Maciek a deixara. {chata_macka == przy_lesie:Na orla do bosque, à sombra dos abetos,}{chata_macka == przy_mokradlach:No prado junto aos brejos, sobre o alicerce de pedra,}{chata_macka == nad_jeziorem:À beira do lago, entre juncos sussurrantes,} com o telhado que ele mesmo assentara feixe a feixe. # pokaz: dach
Marianna parou diante da soleira e por muito tempo não disse nada. Depois entrou, passou a mão pela parede, cheirou a resina e iluminou-se como uma criança pequena quando vê o rosto do pai ou da mãe. # pokaz: rodzina
– Nossa – disse. – Nossa de verdade.
Dobrosław logo descobriu no canto da sala umas tábuas soltas. Maciek afastou-as e mostrou-lhe um buraco cavado na terra – fundo o bastante para guardar no frio as batatas e a cevadinha.
– Uma adega – anunciou com orgulho. – Para os mantimentos. Só não vá entrar aí sem pedir.
O pequeno, é claro, pulou lá dentro na mesma hora e se encolheu tanto que não se via nada dele. Riram os três.
{ ekwipunek ? krzesiwo: Naquela noite um fogo ardeu diante da cabana nova | Naquela noite cearam na soleira da cabana nova } e Maciek pensou que tinha valido a pena passar por tudo aquilo. # dalej
{ figurka_u_staruchy: -> czary | -> lata_spokoju }


// ------------------------------------------------------------
//  Zakończenie A – figurka u staruchy: czary i nocny napad.
// ------------------------------------------------------------
=== czary ===
# tlo: czary
# rozdzial: Prólogo
# tytul: Uma vela
Naquela mesma noite, longe dali, numa sala apertada atrás da praça da cidade, ardia uma única vela.
A velha baixou o capuz. Os cabelos grisalhos e ralos caíram-lhe pelas costas. Na mesa diante dela havia uma tigela de água negra e turva e, ao lado – a estatueta chamuscada, já desembrulhada do paninho de linho.
A mulher picou o dedo com uma agulha e deixou três gotas de sangue caírem sobre a madeira. Depois mergulhou a estatueta na tigela e começou a murmurar – baixo, monótono, numa língua que ninguém na cidade entenderia. A chama da vela esmoreceu e inclinou-se, embora na sala não houvesse corrente de ar.
– Esperei muito tempo, mãe – sussurrou. – Mas por fim alguém veio. E ele mesmo te trouxe para mim.
A água borbulhou, como se alguém respirasse lá no fundo. Do murmúrio foram surgindo palavras, ditas cada vez mais alto:
– Os ossos dos vossos filhos serão quebrados, e o sangue deles, bebido…
A velha curvou-se mais sobre a tigela. – Vai. Conheces o caminho. A cabana {chata_macka == przy_lesie:junto ao bosque}{chata_macka == przy_mokradlach:junto aos brejos}{chata_macka == nad_jeziorem:à beira do lago}. Um homem, uma mulher e uma criança. # dalej
-> noc

= noc
# tlo: noc_atak
Passaram-se alguns dias. Maciek cavava canteiros para as batatas, Marianna levantava um forno de barro, e Dobrosław {los_psa == oswojony:corria com o cão pelo prado|colhia calêndulas-do-brejo no prado}. À tardinha sentavam-se juntos na soleira e olhavam a névoa escorrer para dentro do vale.
{ los_psa == oswojony: Certa noite foi o cão que os acordou. Estava junto à porta, com o pelo eriçado no lombo, e rosnava tão baixo que mal se ouvia. Depois começou a latir – alto, furioso, sem parar. | Certa noite foram acordados por um estrondo. Algo bateu na porta com tanta força que as dobradiças gemeram, e continuou batendo até a madeira rachar com um estalo. }
Maciek saltou do catre. Pela fresta da porta viu na névoa dois olhos em brasa. # pokaz: slepia
Não pensou. Agarrou Dobrosław no colo, afastou as tábuas do canto e enfiou-o na adega.
– Fique quietinho – sussurrou. – Aconteça o que acontecer, não saia. Ouviu? Não saia antes de o dia clarear.
Recolocou as tábuas por cima da cabeça do menino. # dalej
{ los_psa == oswojony: -> walka | -> rzez }

= walka
# tlo: walka
A porta caiu para dentro junto com o batente. A criatura teve de se curvar para passar sob a verga – enorme, encharcada, fedendo a pântano. A água escorria dela em fios sobre o chão de terra batida. # pokaz: stwor
O cão foi o primeiro a se lançar sobre ela. Cravou os dentes no antebraço do monstro e ficou pendurado ali, sacudindo, até que o bicho o arremessou contra a parede. Ganiu e caiu. # pokaz: pies
Maciek pôs-se diante de Marianna com o machado erguido. # pokaz: maciek
– Fique atrás de mim!
A fera estendeu a mão para ele. As garras lhe rasgaram o ombro e o flanco, mas ele não arredou pé. Golpeou com toda a força, e a lâmina entrou fundo no braço ossudo. A criatura uivou – com o mesmo gemido longo e gutural daquela noite junto à choça. Maciek golpeou de novo. E mais uma vez.
O monstro recuou, derrubando o banco, e com um rugido fugiu para a névoa. Por um momento ouviu-se algo pesado abrindo caminho pelo matagal, e depois um chapinhar – cada vez mais longe, na direção do pântano.
O machado caiu das mãos de Maciek. Ele vergou-se de joelhos, depois tombou de lado. Debaixo dele crescia uma poça escura. # pokaz: kaluza
Marianna, ajoelhada ao seu lado, apertava as mãos contra as feridas, mas o sangue lhe escapava por entre os dedos.
– Não, não, não… Não me deixe…
– Dobrosław… – sussurrou ele. – Tire ele de lá… só de manhã.
O cão arrastou-se até ele, mancando, e deitou a cabeça no seu peito.
Maciek ainda sorriu. Olhou para a mulher até que seus olhos deixaram de ver o que quer que fosse.
Debaixo do assoalho, na adega, Dobrosław apertava as mãos contra os ouvidos e não deixava escapar nenhum som. Assim como prometera ao pai. # dalej
-> sierota

= rzez
# tlo: pod_podloga
A porta partiu-se ao meio. Para dentro da sala irromperam o frio, o fedor do pântano e uma sombra enorme, que teve de se curvar para passar sob a verga.
Maciek ainda conseguiu agarrar o machado. Marianna tapou a boca com a mão.
Dobrosław não viu o que aconteceu depois. Via apenas as estreitas faixas de luar entre as tábuas sobre a sua cabeça – e as sombras que as cortavam. Ouvia tudo. # pokaz: cien
Ouviu o pai gritar para a mãe fugir. Ouviu os golpes surdos do machado, um e outro, e um uivo que fazia a terra tremer. Depois um estalo – alto, molhado, igual ao daquela vez no matagal, embora o menino não pudesse saber disso. O pai parou de gritar.
A mãe gritou por mais tempo.
Quando também ela se calou, pelas frestas das tábuas começou a pingar algo morno. Gota após gota, nos seus cabelos e nas suas faces. # pokaz: krew
Algo pesado passou pelo assoalho, bem em cima dele. Parou. Ele ouvia aquilo farejar – longamente, com um ronco rouco, como um cão diante de uma toca. Cravou os dentes na manga para não soltar nem um pio.
Depois os passos se afastaram e se dissolveram na névoa.
Ficou na adega até de manhã. Assim como prometera ao pai. # dalej
-> sierota

// Epilog zakończenia A – chłopca przygarnia Andrzej.
= sierota
# tlo: izba_andrzeja
{ los_psa == oswojony:
    De manhã Andrzej passou para vê-los. Encontrou Marianna no chão de terra batida, com a cabeça do marido no colo. Já não chorava. O cão estava deitado ao lado e não deixava ninguém se aproximar.
    Enterraram Maciek no cemitério junto à igreja da cidade. A viúva nunca mais voltou para a cabana – foi morar com o menino na casa do lavrador do outeiro, que os acolheu sob o seu teto como se fossem da família.
- else:
    De manhã Andrzej passou para vê-los. A porta da cabana, partida ao meio, jazia no capim. Na sala não havia ninguém – só um rastro de lodo que se estendia da soleira na direção do pântano, e manchas escuras no chão de terra batida. Ficou muito tempo parado à porta, até ouvir, de debaixo do assoalho, um choramingo baixinho.
    O menino não disse uma palavra – nem naquele dia, nem por muitos dias depois. Andrzej levou-o para casa e criou-o junto com Staś como a um filho seu.
}
Depois daquela noite, a aldeia começou a erguer oratórios novos – à beira dos caminhos, nas encruzilhadas, na orla do bosque e junto à pinguela sobre os brejos – ao lado de alguns velhos postes carcomidos ao longo da floresta, dos quais já ninguém se lembrava quem os tinha posto ali. A cada ano eram mais numerosos, até que em toda Zapadlina não restou lugar de onde não se avistasse ao menos um.
Dobrosław cresceu e tornou-se um homem calado e forte. Nunca ia aos pântanos e nunca desceu a nenhuma adega. Casou-se com uma moça da aldeia vizinha, e logo lhe nasceu um filho.
Deram-lhe o nome de Jaromir. # dalej
-> prolog_ciag_dalszy


// ------------------------------------------------------------
//  Zakończenie B – figurka u handlarza albo bez figurki: spokojne lata.
// ------------------------------------------------------------
=== lata_spokoju ===
# tlo: kapliczki
# rozdzial: Prólogo
# tytul: Anos de paz
O afogado não veio. Nem naquele ano, nem no seguinte.
Maciek e Marianna aravam o campo, que a cada ano ficava um pouco maior. Dobrosław crescia depressa – primeiro pastoreava os gansos, depois andava atrás do arado, até que um dia passou a guiar o cavalo sozinho.{ los_psa == oswojony: O cão envelheceu junto à soleira e, num inverno, já não se levantou. Enterraram-no junto ao bosque.}
Às vezes, nas longas noites de inverno, Maciek contava ao menino sobre a primeira primavera em Zapadlina. Sobre os uivos no matagal, sobre aquilo que saíra da névoa junto à choça, sobre a voz que o chamava dos pântanos. Sobre a erveira queimada na cabana à beira do lago. O filho escutava com as faces em fogo, mas tinha tudo aquilo por contos da carochinha – desses que se contam às crianças para que não andem sozinhas perto da água.
Quando o filho se fez homem, a aldeia começou a erguer oratórios novos, ao lado de alguns postes carcomidos ao longo da floresta, dos quais já ninguém se lembrava quem os tinha posto ali. Um junto à estrada que descia da Serra das Faias, outro na orla do bosque, um terceiro junto à pinguela sobre os brejos. Depois vieram outros, até que havia um em quase cada divisa. O povo dizia que desde então as luzes sobre os pântanos piscavam mais raramente. Dobrosław não acreditava nisso, mas todo ano, em maio, enfeitava os oratórios com flores junto com os outros. # pokaz: kapliczki
Os pais de Dobrosław morreram de velhice, um depois do outro, na mesma cabana que Maciek um dia construíra desde a primeira tora. Dobrosław casou-se com uma moça da aldeia vizinha, e logo lhe nasceu um filho.
Deram-lhe o nome de Jaromir. # dalej
-> prolog_ciag_dalszy
