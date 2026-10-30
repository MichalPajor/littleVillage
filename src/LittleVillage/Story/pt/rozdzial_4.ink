// ------------------------------------------------------------
//  Rozdział czwarty – Marzanna. Przedwiośnie, Jaromir ma dziesięć
//  lat. Topienie Marzanny (coś wciąga kukłę pod wodę), prawda
//  o nocy z prologu, przewrócona kapliczka, ludzie Urbaniaka.
//  Prawda zależy od zakończenia prologu:
//    figurka_u_staruchy i pies   – umierająca babka Marianna;
//    figurka_u_staruchy bez psa  – ojciec, który przeżył pod podłogą;
//    inaczej                     – ojciec, który kiedyś się z tego śmiał.
// ------------------------------------------------------------

=== rozdzial_czwarty ===
# tlo: stodola_marzanna
# rozdzial: Capítulo quarto
# tytul: Marzanna
Em março os telhados enfim começaram a gotejar, regatos sujos escorreram pelos campos, e de noite o gelo do lago estalava e gemia tanto que os cães uivavam pelos quintais. Os brejos foram os primeiros a despertar – a água negra rompia a neve, ao amanhecer subia dela um vapor, e dos alagados junto à pinguela voltava a vir aquele borbulhar que por longos meses não se ouvira.
No quinto domingo da Quaresma, as crianças de toda Zapadlina se reuniam para afogar Marzanna, a boneca de palha do inverno. Assim se fazia desde sempre: quem levasse o inverno para fora da aldeia e o atirasse na água traria a primavera e espantaria as doenças, a fome e todo o mal.
Preparavam a boneca no celeiro da família de Staś. Franek, que desde o Natal já não ia à escola e ajudava o avô na roça, torceu um tronco de palha e o amarrou a um pau. Antek trouxe uns trapos velhos da mãe – uma saia e um lenço –, e Jaromir enfiou na cabeça da boneca dois torrões de carvão no lugar dos olhos e desenhou a boca com fuligem. Hanka passou por uma linha cascas de ovo, para que Marzanna tivesse um colar. A figura tinha um aspecto medonho – e era justamente essa a ideia. # pokaz: kukla
A menina levou a mão à trança e começou a desatar a fita vermelha.
– Vou dar a minha para ela – disse. – Que leve consigo tudo o que é ruim.
{ poszedl_po_wstazke:
    Jaromir se lembrou do velho do chapéu de musgo e do vermelho que esvoaçava na mão dele.
- else:
    Jaromir se lembrou da manhã em que aquela mesma fita pendia da cerca deles, atada num laço por uma mão que ninguém tinha visto.
}
# pytanie: Hanka vai dar a fita a Marzanna?
*   [Deixar que Hanka amarre a fita.]
    ~ wstazka_marzanny = true
    Hanka amarrou a fita no pescoço de palha da boneca e se afastou para olhar. O vermelho sobre a palha cinzenta parecia uma ferida. # pokaz: wstazka # dalej
    -> topienie
*   [Convencê-la a não entregar a fita.]
    – Não faça isso – pediu Jaromir. – Ela já voltou uma vez da floresta.
    Hanka lhe lançou um olhar estranho, mas guardou a fita no bolso do avental. A boneca ficou cinzenta, só o colar de cascas chocalhava baixinho quando alguém a tocava. # dalej
    -> topienie

= topienie
# tlo: rozlewisko
Puseram-se a caminho à tarde. À frente ia Franek, levando Marzanna no pau, bem alto, para que todos a vissem; atrás dele vinham as crianças da aldeia inteira e, no fim, algumas comadres que fingiam ir só para olhar. Cantavam a plenos pulmões:
“Marzanna, Marzanna, menina do gelo,
vai pra água funda, não volte tão cedo!”
A neve chapinhava sob as alpercatas de entrecasca, e no ar, pela primeira vez em meses, havia cheiro de terra molhada.
Pelo caminho, a todo instante alguém puxava a palha da boneca ou a açoitava com uma vara, porque assim tinha de ser – o inverno não podia partir em paz.
Chegaram ao alagado junto à pinguela. Ali o gelo já derretera quase por completo, só junto às margens resistia uma crosta cinzenta e esburacada, e no meio repousava a água negra, lisa como vidro. Hanka agarrou-se à manga de Jaromir com dedos frios como neve, e ele sentia o coração bater-lhe até a garganta. Franek tomou impulso e, com toda a força, lançou Marzanna bem longe à sua frente. # pokaz: rzut
A boneca bateu na superfície com um estalo e balançou. Por um instante boiou, e a saia se abriu à sua volta como uma flor. De repente, num só movimento, afundou. Não como afunda uma coisa encharcada. Mas como se alguém a tivesse puxado por baixo. # pokaz: tonie
As crianças se calaram. No lugar onde ela sumira, estouraram algumas bolhas grandes e preguiçosas, e os círculos se espalharam.
– Agora, sebo nas canelas – sussurrou Hanka. – E sem olhar para trás!
{ ekwipunek ? ksiega:
    Jaromir também sabia disso. No livro de mestre Ignacy tinha lido que quem olhasse para trás, para a Marzanna afogada, seria alcançado pela doença ainda antes da Páscoa.
- else:
    – Quem olhar para trás, a doença pega ainda antes da Páscoa – acrescentou uma das comadres.
}
Todos se lançaram em fuga. Às costas de Jaromir a água chapinhou – alto, pesado, como se alguma coisa grande emergisse. # pokaz: ucieczka
# pytanie: O que Jaromir vai fazer?
*   [Olhar para trás.]
    ~ obejrzal_sie = true
    Olhou para trás. Só por um piscar de olhos.
    Junto à pinguela, na água negra, algo segurava Marzanna – uma mão cinzenta terminada em garras, coberta de algas. Acima da superfície, mais alto do que alcançaria um homem feito, ardiam dois olhos, esverdeados e turvos como as luzes sobre o pântano.{ wstazka_marzanny: As unhas compridas enrolavam devagar a fita vermelha.} Depois o braço recuou e a água se fechou sem deixar rastro. # pokaz: reka
    Naquela noite Jaromir teve febre. Ficou três dias de cama, e a mãe lhe punha panos molhados na testa sem conseguir entender por que, no delírio, ele chamava pelo oratório junto à pinguela. # dalej
    -> prawda
*   [Continuar correndo sem olhar para trás.]
    Não olhou para trás. Correu, apertando a mão de Hanka, até as primeiras cercas, e atrás deles, do lado dos brejos, ecoava uma risadinha baixa – como a de alguém que acabou de ganhar um presente. Sobre o pântano acenderam-se alguns fogos-fátuos pálidos. – São aqueles que queimaram a bruxa – ofegou uma das comadres. – Quem vai atrás de um fogo desses nunca mais volta. # pokaz: chichot
    ~ zapiski += ogniki_1
    { wstazka_marzanny:
        No dia seguinte Hanka andava com a trança desfeita e a todo momento levava a mão a ela, como se procurasse alguma coisa. # dalej
    - else:
        Por muito tempo nenhum dos dois disse uma palavra. # dalej
    }
    -> prawda

= prawda
{ figurka_u_staruchy && los_psa == oswojony: -> prawda_babki }
{ figurka_u_staruchy: -> prawda_ojca_sieroty }
-> prawda_ojca

= prawda_babki
# tlo: babka_lozko
Naquela primavera, a avó Marianna já não se levantou. Desde a Candelária estava deitada na cama atrás do forno, cada vez menor e mais leve, como se a terra a fosse tomando para si aos pedaços. Quando soube da Marzanna, mandou chamar o neto.
– Senta – sussurrou. A mão com que o agarrou pelo pulso era seca e fria como uma folha. – Seu pai não vai lhe contar. Ele não sabe. Então eu conto, enquanto ainda posso.
Contou-lhe tudo. {zona_wie:De como o avô Maciek encontrou nas cinzas junto ao lago uma estatueta chamuscada e a vendeu na cidade a uma velhinha de capuz.|De como o avô Maciek voltou da cidade mudado e não quis dizer o que o atormentava.} Da criatura que, poucas noites depois, arrombou a porta da cabana deles. Do cão que se lançou sobre ela primeiro, e do machado que lhe entrou fundo no ombro. De como o avô morreu no chão de terra batida com a cabeça no colo dela, enquanto o pequeno Dobrosław passava a noite inteira debaixo do assoalho, apertando as mãos contra os ouvidos.
– Aquilo na água era ele – disse. – Não morreu. Os da laia dele não morrem. Esperam. Quem se afoga sem padre não vai nem para o céu nem para o inferno, fica na água. Os antigos diziam que um desses guarda no fundo as almas de outros afogados debaixo de panelas de barro emborcadas, e de noite vai virando uma por uma, cuidando de seus bens. E quando alguma panela racha, a alma escapa numa bolha até a superfície.
A avó apontou o canto atrás da cama. Debaixo de um casaco velho jazia um machado de cabo escuro e gasto. Na lâmina, embora polida até brilhar, ainda se viam manchas cor de ferrugem. # pokaz: siekiera
{ krzesiwo_dziadka:
    ~ ekwipunek += krzesiwo
    ~ krzesiwo_od_babki = true
    – Era dele. Você vai ficar com ele quando crescer. – De debaixo do travesseiro tirou uma pequena pederneira enegrecida. – E isto, leve já. {zona_wie:Estava nas cinzas junto com aquela estatueta. Seu avô não se separou dela até o fim.|Onde a arranjou, nunca me disse. Mas não se separou dela até o fim.} # pokaz: krzesiwo
- else:
    – Era dele. Você vai ficar com ele quando crescer.
}
– Prometa-me uma coisa – acrescentou depois de um tempo. – Que nunca vai entrar na floresta. Seja quem for a chamá-lo.
-> obietnica

= prawda_ojca_sieroty
# tlo: prog_noc
{obejrzal_sie:Quando Jaromir se levantou depois da febre|Quando Jaromir voltou do alagado}, o pai não perguntou nada. Ficou calado a noite inteira. Só quando a mãe adormeceu, tomou o filho pelo braço, levou-o até a soleira e sentou-se ao lado dele na escuridão.
– Eu tinha a sua idade – começou, e a voz lhe falhava, desacostumada havia muito tempo. – Talvez menos.
Contou tudo. Da noite em que alguma coisa arrombou a porta da cabana deles. Das tábuas acima da cabeça, por entre as quais escorria o luar, dos gritos – primeiro do pai, depois da mãe – e de algo quente que lhe pingava nos cabelos. Do farejar logo acima dele, rouco como o de um cão na boca da toca.
– Aquilo na água era ele – disse. – Por isso confiro o ferrolho. Toda noite, há quase sessenta anos.
– Prometa-me uma coisa – pediu. – Que nunca vai entrar na floresta. Seja quem for a chamá-lo.
-> obietnica

= prawda_ojca
# tlo: izba_wieczor
O pai, quando soube o que tinha acontecido no alagado, não riu. Era a primeira vez que Jaromir via uma história sobre a criatura não arrancar dele um sorriso.
– Seu avô me contava a mesma coisa – disse baixinho, girando a caneca entre os dedos. – {obejrzal_sie:Da mão saindo da água.|De algo que puxa para o fundo, por baixo.} Da voz que chama dos brejos. Da erveira queimada na cabana junto ao lago.{ pregi_na_lydkach: Ele me mostrava os vergões nas panturrilhas, cinco de cada lado{ uratowal_andrzej: – e dizia que, se não fosse o velho Andrzej com a vara, não existiria nem ele nem eu}. Pensava que eram de sanguessugas.} Eu ria. Achava que ele queria me assustar, para eu não ir sozinho até a água. – Ficou calado por muito tempo. – E antes de morrer apertou minha mão e sussurrou: “Cuide dos oratórios, Dobruś. Não eram contos da carochinha”.
– Dizia também que quem se afoga sem padre fica na água e guarda ali as almas de outros afogados debaixo de panelas de barro. Quando alguma panela racha, a alma escapa numa bolha até a superfície. – O pai pousou a caneca. – Lembra daquelas bolhas junto à pinguela?
– Prometa-me uma coisa – pediu. – Que nunca vai entrar na floresta. Seja quem for a chamá-lo.
-> obietnica

= obietnica
# pytanie: Jaromir vai prometer?
~ zapiski += (stwor_2, zielarka_2)
*   [Prometer.]
    ~ obietnica_bor = true
    – Prometo – disse Jaromir.
    { figurka_u_staruchy && los_psa == oswojony:
        Ainda não sabia quão difícil lhe seria, um dia, cumprir essa palavra.
        -> smierc_babki
    }
    Ainda não sabia quão difícil lhe seria, um dia, cumprir essa palavra. # dalej
    -> kapliczka
*   [Ficar calado.]
    Jaromir não respondeu. Pensou em Hanka e na fita vermelha,{ poszedl_po_wstazke: no velho do chapéu de musgo,} na voz que o chamara no inverno {figurka_u_staruchy:da névoa sobre o campo|do meio das árvores}, e não conseguiu arrancar de si aquela única palavra.
    { figurka_u_staruchy && los_psa == oswojony:
        A avó o olhou nos olhos por muito tempo e depois suspirou, como se esperasse justamente isso.
        -> smierc_babki
    }
    O pai o olhou nos olhos por muito tempo e depois assentiu com a cabeça, como se esperasse justamente isso. # dalej
    -> kapliczka

= smierc_babki
Marianna morreu poucos dias depois, na Quinta-feira Santa. Pedira para ser enterrada junto ao marido, no cemitério da cidade, e o pai cumpriu sua vontade, embora a viagem com o caixão na carroça tenha levado o dia inteiro. # pokaz: swieca # dalej
-> kapliczka

= kapliczka
# tlo: kapliczka_przewrocona
Depois da Páscoa a terra começou a secar, e nas divisas amarelaram as primeiras calêndulas-do-brejo. Certa tarde, voltando da escola pela trilha ao pé da floresta, Jaromir e Antek{ ekwipunek ? szczeniak: e o cão {imie_psa}, que agora seguia Jaromir por toda parte,} viram que o oratório da orla do bosque estava caído na relva. Os dois estacaram, pregados ao chão. No silêncio que de repente caiu, só se ouviam as gotas pingando dos galhos sobre o telhadinho tombado na lama.
Era um dos mais antigos de Zapadlina, erguido ainda {figurka_u_staruchy:na infância|na mocidade} do pai. O poste de madeira fora arrancado da terra junto com o torrão, o telhadinho se partira e jazia a alguns passos dali, e o santinho – cinzento das chuvas, com o rosto gasto por {figurka_u_staruchy:meio século|dezenas de anos} – estava cravado na lama de cara para baixo. A relva em volta fora revolvida, como se alguém tivesse arrastado o oratório em direção às árvores e o largado no meio do caminho.
{ ekwipunek ? kora:
    Na base, alguém tinha riscado na madeira uma espiral – igual à do pinheiro junto à trilha. Jaromir não precisou tirar da sacola o seu pedaço de casca para saber disso. # pokaz: spirala
}
{ ekwipunek ? szczeniak:
    {imie_psa} eriçou o pelo e rosnava para o lado da floresta, recuando sobre as patas rígidas. # pokaz: pies
}
– Temos que contar aos adultos – sussurrou Antek.
# pytanie: O que os meninos vão fazer?
*   [Erguer o oratório com Antek, sem os adultos.]
    ~ kapliczka_podniesiona = true
    O poste era pesado, molhado e escorregadio de lama. Fizeram força os dois juntos, até que por fim ele ficou de pé no buraco arrancado, oscilando como um bêbado. Jaromir o calçou com pedras e socou a terra com as botas, e Antek limpou o santinho com a manga, colocou-o sob o telhadinho e o pregou de novo, batendo com um seixo achatado. # pokaz: podniesiona
    Quando terminaram, da floresta soprou um vento – frio, embora o dia estivesse quente – e por um instante todas as árvores da orla rumorejaram ao mesmo tempo. Depois tudo se aquietou. # pokaz: wiatr
    O pai, quando soube, foi ver o oratório e voltou com uma expressão que Jaromir não soube decifrar.
    – Fizeram bem – disse apenas. # dalej
    -> urbaniak
*   [Correr para chamar os adultos.]
    Dispararam para a aldeia a toda pressa. O pai e o velho Staś foram naquela mesma noite, com uma lanterna e uma pá. Voltaram depois da meia-noite, enlameados e calados. # pokaz: latarnia
    O oratório já não estava onde os meninos o tinham visto. Só o encontraram algumas dezenas de passos adiante, entre os primeiros abetos, cravado na terra de cabeça para baixo. Puseram-no de volta no antigo lugar e o enterraram mais fundo do que antes.
    – Tem alguém por aqui que não quer saber de oratório – resmungou Staś, quando achou que ninguém o ouvia. # dalej
    -> urbaniak

= urbaniak
# tlo: urbaniak
Em maio, quando as cegonhas já estavam no velho ninho sobre o telhado da ferraria, chegou a Zapadlina uma caleça. Dela desceu um cavalheiro corpulento, de casaco da cidade e chapéu, e atrás dele dois homens com machados e uma longa corda cheia de nós. Andaram pela orla da floresta o dia inteiro – mediam, anotavam alguma coisa e a cada poucos passos talhavam marcas brancas na casca dos carvalhos. # pokaz: znaki
Jaromir os observava de trás da cerca. Cada um daqueles cortes parecia uma ferida fresca.
– O senhor Urbaniak – disse o pai, quando a caleça partiu. – O senhor das terras vendeu a ele a derrubada da mata. Vai ter serraria. # pokaz: odjazd
Naquela noite, pela primeira vez em anos, veio da floresta um uivo – longo, arrastado, nem de lobo, nem de cão. As pessoas fechavam os postigos e se benziam às escondidas, e Jaromir ficou deitado no escuro, com o acolchoado de penas puxado até os olhos, escutando até que se calasse. # pokaz: noc # dalej
-> rozdzial_czwarty_ciag_dalszy


// Koniec rozdziału czwartego i darmowej części – dalej rozdział piąty, już w pełnej wersji.
=== rozdzial_czwarty_ciag_dalszy ===
# ozdobnik
_Fim do capítulo quarto._ # pelna_wersja # dalej
-> rozdzial_piaty
