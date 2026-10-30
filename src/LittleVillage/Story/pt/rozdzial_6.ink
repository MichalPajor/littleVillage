// ------------------------------------------------------------
//  Rozdział szósty – Południca. Żniwa w upale, Jaromir ma trzynaście
//  lat. Południca zadaje w samo południe trzy zagadki; za każdą
//  pomyłkę tnie sierpem. Księga daje dodatkową odpowiedź. Przy dwóch
//  i więcej pomyłkach ratuje go Hanka z dzbanem wody (gorączka, blizna),
//  inaczej Południca ostrzega: „Pan Lasu się budzi, pilnuj kapliczek”.
// ------------------------------------------------------------

=== rozdzial_szosty ===
# tlo: zniwa
# rozdzial: Capítulo sexto
# tytul: Meio-dia em ponto
A colheita chegou num calor terrível. Fazia semanas que não caía uma gota de chuva, o céu já branqueava de mormaço ao raiar do dia, e a terra das divisas rachava em fendas longas e tortuosas. As searas amadureceram de repente, em poucos dias, e estavam agora nos campos, douradas e secas, farfalhando como papel a cada sopro de vento.
Saíam para o campo antes que os galos cantassem. Os homens iam na frente, as mulheres atrás deles atavam os feixes, e as crianças catavam as espigas caídas e carregavam água em jarros de barro. Jaromir tinha treze anos e pela primeira vez ceifava junto com os adultos – na fileira, passo a passo atrás do pai, e a lâmina em suas mãos assobiava quase tão compassada quanto a dos velhos ceifeiros. O ar cheirava a palha aquecida e a suor, as gadanhas tiniam contra as pedras de amolar, e de sob os pés levantavam voo a todo instante codornas assustadas.
Hanka trabalhava na leira vizinha. De vez em quando se endireitava, enxugava a testa com as costas da mão e espiava na direção de Jaromir, e quando os olhares se cruzavam, virava logo a cabeça e voltava aos feixes com um zelo fingido. Jaromir não sabia por que toda vez sentia então um calor tão estranho – e não era do sol. # pokaz: hanka
{ figurka_u_staruchy:
    O pai quase não falava. Ao meio-dia em ponto mandava sempre todo mundo sair do campo para a sombra, ainda que o centeio fosse se debulhar no pé.
- else:
    O pai brincava e cantava no trabalho, mas ao meio-dia em ponto mandava sempre todo mundo sair do campo para a sombra. – Meu avô fazia assim – dizia – e o avô dele também. Não fui eu que inventei. – E quando as crianças insistiam, contava da moça, a melhor ceifeira das redondezas, que apostou com os peões que ceifaria sozinha a seara inteira até o meio-dia. Não saiu do campo na maior soalheira. Encontraram-na à tardinha, de foice na mão e espigas nos cabelos.
}
Certo dia, Jaromir ficou sozinho no fim da leira. Queria terminar o renque antes de ir para a sombra e não reparou quando os outros se foram para debaixo da pereira na divisa. O sol parou bem em cima da sua cabeça, e a sombra encolheu e sumiu sob os pés. # pokaz: sam # dalej
-> poludnica_przychodzi

= poludnica_przychodzi
# tlo: poludnica
Fez-se silêncio. Os grilos se calaram, as searas pararam de farfalhar, e o ar sobre o campo se adensou e ondulou como água sobre uma pedra em brasa.
Entre as espigas apareceu uma mulher. # pokaz: poludnica
Era alta e magra, esticada como uma corda, numa longa camisa branca que lhe descia até os tornozelos e ondulava, embora não soprasse a menor brisa. Os cabelos claros chegavam-lhe aos joelhos e esvoaçavam para os lados, e na cabeça trazia uma grinalda de espigas e papoulas vermelhas. O rosto era pálido e estreito, de maçãs altas, os olhos como linho alvejado ao sol, sem pupilas, e a boca apertada num traço fino. Os pés descalços não tocavam o chão – pairava algumas polegadas acima do restolho, e debaixo dela tremia o mormaço. Na mão direita segurava uma foice. Na ponta pendia uma gota vermelha.
Estendeu para ele a mão esquerda, aberta, como quem pede alguma coisa.
– Quem trabalha na minha hora – disse, com uma voz seca como o estalar da palha – tem de me responder. Três enigmas. Por cada erro – um corte.
{ ekwipunek ? ksiega:
    Surgiu diante dos olhos de Jaromir uma página do livro de mestre Ignacy: “A Dama do Meio-Dia anda pelos campos na maior soalheira e interroga os ceifeiros. Quem responder a tudo – fica livre. Quem errar ou fugir – ela o corta com a foice ou lhe manda a febre.” Embaixo, em letra mais miúda, o professor acrescentara uma solução que anos atrás ouvira de uma velha de Bukowiec, e a sublinhara duas vezes: “O grão morre três vezes e três vezes volta.”
}
# dalej
-> zagadka_1

= zagadka_1
A Dama do Meio-Dia inclinou a cabeça de lado, como um pássaro.
– Sem pernas corre pelas searas, sem mãos penteia as espigas, sem boca geme na chaminé. Todos já o ouviram, e ninguém ainda o viu. O que é?
# pytanie: O que Jaromir vai responder?
*   [Fogo.]
    -> zle_1
*   [Vento.]
    A Dama do Meio-Dia ficou calada um instante. Depois seus lábios estremeceram – não era um sorriso, mas algo que lembrava um.
    – O vento – repetiu. – Meu irmão. Muito bem. # dalej
    -> zagadka_2
*   [Fumaça.]
    -> zle_1

= zle_1
{ odwaga_jaromira && not poludnica_darowala:
    ~ poludnica_darowala = true
    A foice sibilou – e parou a um fio de cabelo do seu ombro. Jaromir não se mexeu. {figurka_u_staruchy:Certa vez, em águas fundas, alguma coisa lhe roçara a panturrilha, e ele fugira para a margem. Agora não fugiu.|Certa vez, no juncal à beira do lago, pousara a mão numa viga carbonizada, quando os outros não tiveram coragem. Agora não recuou.}
    – Não foges – disse a Dama do Meio-Dia, afastando a lâmina. – Esta, uma só, eu te perdoo. Mas era o vento. Fogo e fumaça, todos já viram; o vento, ninguém ainda viu. # dalej
    -> zagadka_2
}
~ pomylki_poludnica += 1
~ ciecie_ramie = true
A foice sibilou antes que Jaromir tivesse tempo de piscar. Sentiu uma dor ardida no ombro, e quando olhou para baixo, o sangue escorria pela camisa rasgada. # pokaz: ciecie
– Errado – disse a Dama do Meio-Dia. – O vento. Fogo e fumaça, todos já viram; o vento, ninguém ainda viu. # dalej
-> zagadka_2

= zagadka_2
– Enterram-no na terra como a um defunto, e ele se levanta. Decepam-no como a um malfeitor, e ele não sangra. Batem nele, e ele não se queixa. E quando o metem no braseiro – só então todos o querem. O que é?
# pytanie: O que Jaromir vai responder?
*   [Linho.]
    -> zle_2
*   [Centeio.]
    – O centeio – sussurrou, e o seu rosto branco se abrandou por um momento, como se ela se lembrasse da própria colheita, muito tempo atrás. – Menino esperto. # dalej
    -> zagadka_3
*   [Batata.]
    -> zle_2
*   { ekwipunek ? ksiega } [Grão.]
    ~ poludnica_uklon = true
    A Dama do Meio-Dia abriu a boca e fechou-a sem dizer nada. Olhou-o demoradamente com aqueles olhos brancos e depois inclinou a cabeça – de leve, quase imperceptivelmente, como diante de alguém que se respeita. # pokaz: uklon
    – O grão – repetiu baixinho. – Morre na terra, volta da gadanha e do mangual, e no forno renasce como pão. Uma resposta assim eu não ouvia havia cem anos. Alguém te ensinou bem. # dalej
    -> zagadka_3

= zle_2
{ odwaga_jaromira && not poludnica_darowala:
    ~ poludnica_darowala = true
    A foice sibilou – e parou a um fio de cabelo da sua mão. Jaromir não se mexeu. {figurka_u_staruchy:Certa vez, em águas fundas, alguma coisa lhe roçara a panturrilha, e ele fugira para a margem. Agora não fugiu.|Certa vez, no juncal à beira do lago, pousara a mão numa viga carbonizada, quando os outros não tiveram coragem. Agora não recuou.}
    – Não foges – disse a Dama do Meio-Dia, afastando a lâmina. – Esta, uma só, eu te perdoo. Mas era o centeio. Linho não se põe no forno, e batata ninguém debulha. # dalej
    -> zagadka_3
}
~ pomylki_poludnica += 1
~ ciecie_dlon = true
A foice cintilou no ar. O corte atravessou as costas da mão, raso, mas o sangue esguichou no restolho. # pokaz: ciecie
– O centeio – sibilou. – Linho não se põe no forno, e batata ninguém debulha. # dalej
-> zagadka_3

= zagadka_3
O ar ondulou com mais força. O calor subia até a garganta de Jaromir, os ouvidos zumbiam, e o campo começou a balançar, como se ele estivesse num barco.
– E agora diz-me – a Dama do Meio-Dia baixou a voz – quem tem uma casa mais velha que todas as casas da redondeza, e nela não há porta nenhuma? Quem pastoreia lobos como vocês pastoreiam ovelhas? E de quem arrancaram neste verão, da cerca, a estaca mais grossa, a de carvalho?
# pytanie: O que Jaromir vai responder?
*   [São Jorge.]
    ~ pomylki_poludnica += 1
    ~ ciecie_policzek = true
    – Santo? – A Dama do Meio-Dia riu, seca e desagradavelmente, como restolho estalando. – Os santos ficam nos oratórios, menino. E aquele outro espera que alguém os arranque para ele.
    A lâmina relampejou. Jaromir sentiu na face um arranhão agudo, e pelo queixo escorreu-lhe algo quente. # pokaz: ciecie
*   [O Senhor da Floresta.]
    Tudo ficou ainda mais quieto, embora parecesse que mais silêncio já não podia haver. A Dama do Meio-Dia recolheu a mão estendida.
    – Tu o conheces – disse, e pela primeira vez soou em sua voz algo parecido com medo. – Isso é mau. Porque ele também te conhece.
*   [Não sei.]
    A Dama do Meio-Dia guardou um longo silêncio.
    – Sabes, sim – disse. – Só tens medo de dizer. É sensato. Não digas o nome dele ao meio-dia.
-   -> wynik

= wynik
{ pomylki_poludnica:
- 0:
    A Dama do Meio-Dia baixou a foice.
    – Estás livre – disse. – Mas escuta, porque não vou repetir. O Senhor da Floresta está despertando. A cada árvore derrubada, seu sono fica mais raso. Cuida dos oratórios, menino. Cuida deles enquanto estão de pé.
- 1:
    A Dama do Meio-Dia observou-o demoradamente e depois baixou a foice.
    – Podia ter sido pior – disse. – Vai. Mas guarda bem: o Senhor da Floresta está despertando. Cuida dos oratórios.
- else:
    A Dama do Meio-Dia ergueu a foice bem alto, acima da cabeça dele. O menino fechou os olhos – e então ouviu um grito. # pokaz: zamach
}
Alguém vinha correndo pela leira, tropeçando nos feixes. Hanka. Nas mãos trazia um jarro de barro, de onde a água respingava. # pokaz: dzban
– Jaromir! Jaromir, o que você está fazendo aqui ao meio-dia em ponto?!
{ pomylki_poludnica < 2:
    ~ ostrzezenie_poludnicy = true
    Quando voltou a olhar para a frente, já não havia ninguém. Só no restolho jazia a grinalda de espigas e papoulas, que já começavam a murchar. # pokaz: znika, wianek # dalej
    -> po_poludniu
- else:
    Hanka não diminuiu o passo. Chegou de um salto junto ao menino e atirou a água do jarro – não nele, mas para a frente, onde o mormaço ondulava.
    – Tome, beba! – gritou para o vazio, com a voz falhando, como a avó lhe ensinara. – Beba e solte-o!
    A Dama do Meio-Dia hesitou, com a foice erguida. Olhou para a menina, depois para a mancha escura que sumia na terra rachada – e dissipou-se no ar trêmulo como vapor. Hanka despejou o resto da água na cabeça de Jaromir. # pokaz: znika, woda # dalej
    -> goraczka
}

= goraczka
# tlo: goraczka
~ blizna_sierpa = true
~ zapiski += poludnica_1
Durante três dias a febre o consumiu. Jazia em casa sob panos molhados, {rany_sierpa()} ardiam como se queimadas a ferro, e no delírio continuava a ver os olhos brancos sem pupilas e a ouvir o sussurro seco: “Por cada erro – um corte.” # pokaz: majaki
A mãe não saía do lado dele nem por um instante. Hanka trazia ervas da avó, e no segundo dia, sem dizer nada a ninguém, foi ao meio-dia em ponto àquela leira e deixou na divisa um jarro de água fresca. Voltou toda trêmula e não quis contar o que tinha visto lá. Naquela noite a febre começou a baixar. # pokaz: hanka
Quando enfim se levantou, ficou-lhe {miejsce_blizny()} uma cicatriz branca em forma de meia-lua, como da ponta de uma foice.
-> czy_powiedziec

= po_poludniu
# tlo: czerwony_ksiezyc
~ zapiski += poludnica_1
~ mak_w_medaliku = true
Aos ceifeiros não contou o que acontecera ao meio-dia. Só à noite, quando estava sentado com Hanka na cerca, vendo nascer sobre o restolho uma lua enorme e vermelha, tirou do bolso a papoula murcha da grinalda e pousou-a na palma da mão dela. # pokaz: mak
Dos campos vinha um cheiro de poeira e de sol queimado, os grilos cantavam feito loucos, e Hanka estava sentada tão perto que ele sentia através da camisa o calor do braço dela.
– De quem é isto? – perguntou.
– De alguém que mandou cuidar dos oratórios – disse.
Hanka não entendeu, mas guardou a papoula dentro da medalhinha que trazia ao pescoço e desde então nunca mais se separou dela.
-> czy_powiedziec

= czy_powiedziec
Antek abordou Jaromir assim que ficaram sozinhos.
– Eu vi você lá da pereira – disse baixinho. – Estava sozinho no fim da leira, falando com o ar, e o ar em cima de você tremia como sobre o braseiro da ferraria. – Engoliu em seco. – Se você for contar aos adultos, eu também conto o que vi. Nós dois juntos, vão acreditar mais depressa.
# pytanie: Jaromir vai contar ao pai?
*   [{ostrzezenie_poludnicy:Contar ao pai sobre o aviso da Dama do Meio-Dia.|Contar ao pai sobre a Dama do Meio-Dia.}]
    ~ powiedzial_ojcu_poludnica = true
    # tlo: kapliczki_noc
    { figurka_u_staruchy:
        O pai ouviu o filho em silêncio. Depois se levantou, tirou a lanterna do prego e saiu noite adentro. Voltou de madrugada. A mãe contou mais tarde que ele percorrera todos os oratórios de Zapadlina e se ajoelhara diante de cada um, como quem pede perdão. # pokaz: ojciec # dalej
    - else:
        O pai não riu. Ficou calado muito tempo e depois disse que no dia seguinte reuniria o povo e iriam juntos falar com Urbaniak. – Nos oratórios ele não toca – acrescentou. – Nem que tenha de derrubar a serraria na minha cabeça. # pokaz: ojciec # dalej
    }
    -> rozdzial_szosty_ciag_dalszy
*   [Guardar isso para si.]
    # tlo: kapliczki_noc
    Jaromir não contou a ninguém – a não ser a Antek, que de qualquer modo já sabia. Toda noite, quando todos já dormiam, os dois escapuliam e davam a volta pelos oratórios mais próximos. Endireitavam os telhadinhos tortos e arrancavam o mato que se enroscava nos postes. Às vezes, no meio do trabalho, os grilos se calavam – primeiro ao pé da floresta, depois cada vez mais perto – e então ficavam imóveis até que recomeçassem a cantar. Jaromir voltava antes do amanhecer banhado em suor frio, com as barras das calças molhadas de orvalho, e demorava a pegar no sono, atento a cada farfalhar do lado de fora da janela. # pokaz: jaromir # dalej
    -> rozdzial_szosty_ciag_dalszy


// Koniec rozdziału szóstego – dalej rozdział siódmy.
=== rozdzial_szosty_ciag_dalszy ===
# ozdobnik
~ zapiski += pan_lasu_3
_Fim do capítulo sexto._ # dalej
-> rozdzial_siodmy

=== function rany_sierpa()
{
- ciecie_ramie && ciecie_dlon && ciecie_policzek: ~ return "as feridas no ombro, na mão e na face"
- ciecie_ramie && ciecie_dlon: ~ return "as feridas no ombro e na mão"
- ciecie_ramie: ~ return "as feridas no ombro e na face"
- else: ~ return "as feridas na mão e na face"
}

=== function miejsce_blizny()
{
- ciecie_ramie: ~ return "no ombro"
- ciecie_dlon: ~ return "na mão"
- else: ~ return "na face"
}
