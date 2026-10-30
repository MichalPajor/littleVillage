// ------------------------------------------------------------
//  Rozdział jedenasty – Obława (biały wilk). Sroga zima po narodzinach
//  Marysi (Jaromir ma dwadzieścia lat). Wilki we wsi: obrona obory
//  (stary pies przeżywa) albo pilnowanie drzwi (pies ginie, zagryzając
//  wilka). Gajowy Pawlik ogłasza obławę i nagrodę za białego wilka,
//  Antek widzi w nim oczy Franka (obietnica). W młodniku: wydać wilka
//  (ranny ucieka do boru), zmylić obławę albo – z celnością z dzieciństwa –
//  rzucić kamieniem w lufę (kolba, blizna, odrabianie u dziedzica).
//  Wiosną szczenię z rodu psa.
// ------------------------------------------------------------

=== rozdzial_jedenasty ===
# tlo: mroz_izba
# rozdzial: Capítulo décimo primeiro
# tytul: A caçada
No primeiro inverno de Marysia, depois do Dia de Reis, o frio apertou tanto que à noite os troncos das árvores estalavam com um estrondo de tiro, os pardais caíam dos galhos congelados feito pedra, e o gelo do lago retumbava até de manhã. A água do balde congelava na entrada antes que alguém tivesse tempo de usá-la.
Em casa o fogo ardia da aurora até a noite. Hanka dormia com Marysia rente ao forno, enrolada em dois acolchoados de penas, e Jaromir se levantava a cada poucas horas para pôr mais lenha. {noga_ojca == zlamana:O pai mancava com o frio mais do que de costume|O pai já nem descia do banco}, e a mãe lhe aplicava no joelho compressas quentes de farelo.{ uklad_z_mamunami == oddane_lata: Os ossos de Jaromir também doíam – uma dor surda, teimosa, como se o inverno tivesse se aninhado dentro dele.}
Marysia começou a rir ao ver Jaromir, agarrava os dedos dele e levava à boca tudo o que encontrava ao alcance das mãos. À noite, quando lá fora o frio estalava, Hanka cantava para ela junto ao berço, e Jaromir ficava sentado ao lado, pensando que nunca na vida tinha sido tão feliz.
Só da floresta, cada vez mais atrevidos, chegavam uivos. # pokaz: wycie # dalej
-> owczarnia

= owczarnia
# tlo: owczarnia_noc
Em meados de janeiro os lobos vieram à aldeia.
Primeiro, na casa dos Wójcik, encontraram de manhã um monte de neve escavado e sangue no chão branco. Depois, na casa de Staś, numa só noite morreram três ovelhas – embora o redil deles ficasse bem no meio de Zapadlina, onde ninguém jamais tinha visto um lobo. O povo começou a levar as aves para dentro de casa e a escorar os portões com varas.
No domingo, antes do amanhecer, Jaromir foi acordado pelos balidos aflitos das ovelhas. Descalço, correu à janela. À luz da lua viu sombras cinzentas que rondavam o estábulo – cinco, talvez seis – e uma branca, maior que as outras, imóvel à beira do campo.{ ekwipunek ? szczeniak: {imie_psa} – já velho, de focinho grisalho – rosnava junto à porta até lhe tremerem os flancos, e arranhava as tábuas com as unhas.} # pokaz: wilki
# pytanie: O que Jaromir vai fazer?
*   [Sair correndo com o machado e defender o estábulo.]
    ~ noc_wilkow = bronil_obory
    Agarrou o machado do avô e se precipitou para o terreiro. O frio lhe cortou o fôlego na garganta. Os lobos se voltaram para ele de cabeça baixa, rente ao chão, com um brilho de presas nas bocarras.{ ekwipunek ? szczeniak: {imie_psa} saltou atrás dele e se atirou sobre o mais próximo, embora tivesse metade do tamanho do lobo.}
    Atrás de Jaromir, Hanka gritou. A porta da entrada estava escancarada, e um dos cinzentos tinha se esgueirado para dentro, direto para a sala onde Marysia dormia. Antes que Jaromir conseguisse voltar, a mulher empurrou o lobo para fora da soleira com um tição arrancado do forno – mas o bicho ainda alcançou com os dentes o antebraço dela.
    O lobo branco uivou – curto, agudo, como uma ordem. A alcateia inteira recuou do estábulo, como se alguém a tivesse puxado por uma corda. O grande macho deixou passar a última sombra e só então sumiu na escuridão atrás do celeiro da família de Staś.{ ekwipunek ? szczeniak: {imie_psa} voltou com uma orelha rasgada e a espádua ensanguentada, mas vivo.} Até o amanhecer, na entrada, Jaromir tratou das feridas {ekwipunek ? szczeniak:do cão e de Hanka|de Hanka}. O corte era fundo; a marca das presas ela carregou pela vida toda. # pokaz: rozkaz # dalej
    -> gajowy
*   [Ficar com Hanka e a criança – é preciso segurar a porta.]
    ~ noc_wilkow = pilnowal_drzwi
    Escorou a porta com as costas e ficou assim até o amanhecer, de machado nas mãos, ouvindo as ovelhas berrarem e depois se calarem, uma após a outra. Hanka apertava Marysia contra o peito e sussurrava orações.{ ekwipunek ? szczeniak: Por fim {imie_psa} escapou pela janelinha entreaberta da despensa e disparou para o terreiro antes que Jaromir conseguisse agarrá-lo.}
    { ekwipunek ? szczeniak:
        ~ ekwipunek -= szczeniak
        ~ pies_zginal = true
        Pela manhã viram o que tinha restado. Duas ovelhas degoladas, sangue na neve até a cerca. Junto ao estábulo jazia {imie_psa}. Estava morto, mas bem ao lado dele, de garganta dilacerada, estirava-se um lobo – duas vezes maior que ele. Jaromir enterrou o cão debaixo da macieira, na terra congelada, que teve de rachar com o machado como se fosse lenha. # pokaz: swit, pies # dalej
    - else:
        Pela manhã viram o que tinha restado. Duas ovelhas degoladas, sangue na neve até a cerca. # pokaz: swit # dalej
    }
    -> gajowy

= gajowy
# tlo: gajowy_karczma
No fim de janeiro chegou a Zapadlina, de trenó, o guarda-florestal do solar, Pawlik – enorme, vermelho de frio, com a espingarda de dois canos atravessada nas costas. Parou diante da taverna e chamou o povo. # pokaz: gajowy
– Sua Senhoria, o senhor das terras, ordena uma caçada – anunciou. – No sábado, ao romper do dia. De cada casa, um homem com matraca ou forcado. Os atiradores do solar vão se postar na passagem junto à floresta, e vocês tocam os lobos do mato novo direto para cima deles. – Correu os olhos pelos reunidos e acrescentou mais baixo: – Pela pele daquele branco o senhor das terras paga dez rublos de prata. O senhor Urbaniak põe outro tanto.
Pela multidão passou um murmúrio. Vinte rublos era mais do que muito lavrador de Zapadlina tinha visto na vida inteira.
À noite Antek veio à casa de Jaromir. Sentou-se no banco, ficou muito tempo girando o boné nas mãos e não conseguia começar. # pokaz: antek
– Eu o vi – disse por fim. – Aquele branco. Perto do velho oratório. Ficou olhando. – A voz lhe falhou. – Tem os olhos de Franek. Eu sei. É bobagem. Mas esses olhos eu não confundiria.
# pytanie: O que Jaromir vai dizer?
*   [Prometer a Antek que, se for Franek, não vão deixar que o matem.]
    ~ obietnica_antkowi = true
    Jaromir pôs a mão no ombro dele.
    – Se for ele – disse – ninguém vai pegá-lo. Eu prometo.
    Antek assentiu sem levantar os olhos, e só junto à porta Jaromir reparou que o amigo tinha as faces molhadas. # dalej
    -> oblawa
*   [Dizer a ele que é só um animal.]
    – É um lobo, Antek – disse Jaromir com brandura. – Um lobo faminto. Franek sumiu há mais de um ano.
    Antek olhou para ele como se Jaromir lhe tivesse batido no rosto. Levantou-se e saiu sem se despedir. # dalej
    -> oblawa

= oblawa
# tlo: oblawa_mlodnik
No sábado levantaram-se ainda no escuro. O frio era tanto que o hálito congelava nos bigodes, e a neve rangia sob as botas, alto como tábuas secas. Os camponeses de Zapadlina e de Bukowiec formaram uma longa fileira à beira do campo – algumas dezenas de homens com matracas, com panelas em que batiam com varas, com forcados e machados. À frente deles negrejava o mato novo: abetos que, nos últimos anos, tinham avançado da floresta quase até as cercas.
Ao sinal do guarda-florestal, puseram-se em marcha. As matracas estalavam, os homens gritavam e assobiavam, e o eco batia na parede do bosque, como se do outro lado avançasse mais uma caçada. Em algum lugar à frente latiam os sabujos do solar. Então ressoou o primeiro tiro. E o segundo. # pokaz: naganka
Jaromir ia na ponta extrema da fileira, onde o mato novo descia até os brejos congelados.{ obietnica_antkowi: Antek se mantinha colado a ele, branco como a neve.} Jaromir varou o matagal e parou de chofre.
Numa pequena depressão entre os abetos, debaixo de um tronco caído, estava o lobo branco. # pokaz: wilk
Era enorme – maior que qualquer lobo que Jaromir já tinha visto – e tão magro que sob o pelo se desenhavam todas as costelas. O pelo da nuca estava eriçado. Na pata dianteira via-se um anel de pelo gasto, mais ralo – exatamente no lugar onde Franek, anos atrás, tinha três riscos de garras, que ele dizia serem de um prego.
E os olhos… Os olhos eram humanos. Claros, de pupila nítida, tristes. Olhavam para Jaromir de cabeça baixa, e não havia neles nem medo nem raiva. Só cansaço.
Atrás de si ouviu o ranger de passos. O guarda-florestal Pawlik abria caminho entre os abetos com a espingarda pronta para atirar. # pokaz: gajowy
# pytanie: O que Jaromir vai fazer?
*   [Gritar ao guarda-florestal que o lobo está aqui.]
    ~ oblawa_wilk = wydal_wilka
    – Aqui! – gritou Jaromir. – Ele está aqui!
    O tiro estrondeou. O lobo branco estremeceu, como se alguém o tivesse socado no flanco, tombou na neve – e se pôs de pé num salto. Pulou o tronco e sumiu no matagal, para o lado da floresta. Sobre o branco ficou um rastro de sangue, comprido e vermelho como uma fita. # pokaz: strzal
    – Acertei! – berrava o guarda-florestal. – Não vai longe!
    { obietnica_antkowi:
        Antek ficou imóvel. Depois foi até Jaromir e lhe bateu no rosto – uma vez, com toda a força – e se afastou sem olhar para trás. # dalej
    - else:
        À tardinha os homens do solar seguiram o sangue do branco até os primeiros pinheiros grandes, mas dali em diante ninguém se atreveu a entrar, nem mesmo o guarda-florestal. # dalej
    }
    -> po_oblawie
*   [Gritar que o lobo fugiu para os brejos.]
    ~ oblawa_wilk = zmylil_oblawe
    – Para os brejos! – gritou Jaromir, virando-se. – Foi para os brejos!
    O guarda-florestal praguejou e correu ladeira abaixo, pelos juncos, e atrás dele alguns batedores.{ obietnica_antkowi: – Lá! Eu vi! – exclamou Antek, e saiu atrás deles agitando a matraca, para que ninguém tivesse dúvida.} Quando Jaromir se voltou para a depressão, debaixo do tronco já não havia ninguém. Só dos galhos de um abeto ainda caía neve, sacudida na corrida. # pokaz: zmylka
    Lá de baixo, dos brejos, veio um estalo e um grito. O gelo sob a neve acumulada era ali fino como uma obreia: o jovem Kuba, filho do segeiro de Bukowiec, afundou até o peito na água negra. Tiraram-no com varas, duro de frio, e o levaram para os trenós sobre samarras. # dalej
    -> po_oblawie
*   { celny_strzal } [Atirar uma pedra no cano da espingarda do guarda-florestal quando ele fizer pontaria.]
    ~ oblawa_wilk = rzucil_kamieniem
    O guarda-florestal levou a espingarda ao ombro. Jaromir se abaixou, cavou na neve uma pedra do tamanho de um ovo e a atirou – com a mesma certeza com que, menino, mirava o feixe na divisa, quando treinava dias inteiros para vencer Hanka.
    A pedra acertou o cano. O tiro foi parar num monte de neve, levantando uma nuvem branca. O lobo branco pulou o tronco e sumiu no matagal. # pokaz: kamien
    O guarda-florestal se voltou para Jaromir com a cara roxa de fúria e, sem uma palavra, golpeou-o no rosto com a coronha. Jaromir caiu de costas. O sangue lhe escorreu da face rasgada, quente e salgado.
    – O senhor das terras vai saber disso – bufou Pawlik. – Você vai me pagar essa pólvora. # dalej
    -> po_oblawie

= po_oblawie
# tlo: po_oblawie
~ zapiski += tropy_2
Até a noite, os atiradores abateram cinco lobos. O guarda-florestal mandou pregar as peles no portão do celeiro do solar, em Bukowiec, para que todos vissem. O branco não estava entre eles.
{ oblawa_wilk == rzucil_kamieniem:
    Pela pedrada, o tribunal comunal de Bukowiec condenou Jaromir a uma semana de cadeia e ao pagamento da pólvora. Para a multa não havia de onde tirar, por isso ele a pagou com três semanas de trabalho para o solar, no transporte de lenha. A cicatriz sob o olho nunca mais sumiu – estreita e clara como a marca de uma garra.
}
{ oblawa_wilk == wydal_wilka:
    À noite, da floresta, veio um uivo – não como sempre, mas longo, rouco, cheio de dor. Jaromir ficou deitado de olhos abertos, escutando a voz se aproximar da aldeia, calar-se e voltar. De madrugada as vacas começaram a se debater no estábulo, como se algo rondasse as paredes, e quando ele saiu com a lanterna, no ar gelado pairava apenas um cheiro pesado de pelo molhado e sangue. # pokaz: wycie
    Hanka não dormiu até o amanhecer. Ficou sentada junto ao berço com a vela da Candelária nas mãos, e quando Jaromir quis tomá-la, ela afastou a mão dele.
– Você não – disse baixinho. – Hoje, você não. # dalej
    -> odwilz
}
Na manhã seguinte, quando Jaromir saiu para rachar lenha, sobre o cepo junto à cerca jazia uma lebre – fresca, ainda quente, com a nuca partida por uma só mordida, limpa. Mal ele se inclinou sobre a lebre, do mato novo chegou um latido curto – baixo, quase de cão – e nada mais. # pokaz: zajac
Hanka ficou muito tempo calada quando ele lhe contou. Depois pegou a lebre e começou a esfolá-la.
{obietnica_antkowi:– Tolo – sussurrou, não se sabia para quem. – Tolo e bom Franek.|– Tolo – sussurrou, não se sabia para quem. – Tolo e bom…} # dalej
-> odwilz

= odwilz
# tlo: odwilz
Em março o frio cedeu. A neve escorreu dos campos em regatos sujos, e do mato novo junto à floresta voltaram a chegar vozes de pássaros.
{ ekwipunek ? szczeniak:
    ~ ekwipunek += szczenie_psa
    {imie_psa} lambeu as feridas até sarar, embora nunca mais tenha corrido como antes. Na primavera a cadela da família de Staś deu cria, e um dos filhotes – ruivo, com uma mancha branca no peito – era o retrato vivo do pai. Jaromir ficou com ele. # pokaz: szczenie
}
{ pies_zginal:
    ~ ekwipunek += szczenie_psa
    Na primavera a cadela da família de Staś deu cria. Um dos filhotes – ruivo, com uma mancha branca no peito – era tal e qual {imie_psa} de anos atrás. O velho Staś o trouxe no gorro e o deixou na soleira sem dizer palavra. # pokaz: szczenie
}
Lobos, nunca mais se viram. Só às vezes, em noites de lua, das profundezas da floresta vinha um uivo solitário – e Jaromir não sabia dizer se nele soava um lamento ou um aviso. # pokaz: wilk
{
- obietnica_antkowi && oblawa_wilk == wydal_wilka:
    Antek não falou com ele até a colheita. # dalej
- not obietnica_antkowi:
    Antek ficou muito tempo sem aparecer na casa deles. Só veio na Páscoa, sentou-se junto ao berço de Marysia como se nada tivesse acontecido – mas do lobo branco, diante de Jaromir, nunca mais falou. # dalej
- else:
    Antek agora vinha mais vezes do que antes. Sentava-se junto ao berço de Marysia, embalava-a e ficava calado – e Jaromir sabia em quem os dois estavam pensando. # dalej
}
-> rozdzial_jedenasty_ciag_dalszy


// Koniec rozdziału jedenastego – dalej rozdział dwunasty.
=== rozdzial_jedenasty_ciag_dalszy ===
# ozdobnik
~ zapiski += pan_lasu_5
_Fim do capítulo décimo primeiro._ # dalej
-> rozdzial_dwunasty
