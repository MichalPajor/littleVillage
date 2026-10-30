// ------------------------------------------------------------
//  Rozdział trzeci – Wigilia. Zima, Jaromir ma dziewięć lat.
//  Nocnica nawiedza Zosię, siostrzyczkę Antka; dziad proszalny
//  w wigilijny wieczór; szczeniak z rodu psa dziadka Maćka.
//  Ojciec jak w rozdziałach 1–2:
//    figurka_u_staruchy – milczący, nieufny;
//    inaczej            – pogodny, sam nie umie czytać.
// ------------------------------------------------------------

=== rozdzial_trzeci ===
# tlo: roraty
# rozdzial: Capítulo terceiro
# tytul: Véspera de Natal
Na primeira semana de dezembro o frio congelou o lago com tanta força que os camponeses saíam de trenó sobre o gelo, e os brejos, por onde no verão ninguém em seu juízo cortava caminho, transformaram-se num lençol branco e liso. A neve rangia sob as botas, de noite as vigas estalavam nas paredes, e de manhã as vidraças se cobriam de escarcha em forma de samambaias.
Era Advento. Todos os dias, ainda no escuro, as crianças iam a Bukowiec para as missas da aurora e da igrejinha seguiam direto para a escola, que ficava logo ao lado. Cada uma levava a sua própria lanterna – a de Jaromir, o pai a montara com ripinhas de madeira e papel untado, e dentro ardia fraquinho um toco de vela de sebo. Na trilha sob a floresta as chamazinhas balançavam como fogos-fátuos, e entre os abetos reinava uma escuridão tão espessa que a luz se atolava nela depois de poucos passos.
{ zawolal_do_lasu:
    Jaromir sempre andava no meio e não virava a cabeça para o lado das árvores. Desde aquela manhã na névoa não conseguia se livrar da impressão de que agora alguém conhecia a sua voz.
- else:
    Jaromir sempre andava no meio e procurava não virar a cabeça para o lado das árvores.
}
Antek ficava para trás cada vez mais. Em outubro nascera-lhe uma irmãzinha, Zosia, e desde então ninguém na casa da família de Staś dormia uma noite inteira. A pequena chorava até o amanhecer, e quando por acaso se calava, a mãe velava junto ao berço do mesmo jeito, porque o silêncio a assustava mais que o choro. O menino chegava às missas da aurora com olheiras fundas, cochilava nas aulas sobre a lousa, e mestre Ignacy às vezes tinha de acordá-lo. # pokaz: antek # dalej
-> antek_prosi


= antek_prosi
# tlo: przerwa_sniezki
{ obrona_antka:
- stanal:
    No recreio, enquanto os outros se atiravam bolas de neve diante da igrejinha, Antek foi sozinho até Jaromir. Desde o dia em que o amigo o defendera, não tinha segredos para ele.
- poskarzyl:
    No recreio, enquanto os outros se atiravam bolas de neve diante da igrejinha, Antek rodeou Jaromir por muito tempo antes de abrir a boca. Talvez se lembrasse de que fora Jaromir quem correra daquela vez para chamar mestre Ignacy, ou talvez simplesmente já não tivesse a quem recorrer.
- else:
    No recreio, enquanto os outros se atiravam bolas de neve diante da igrejinha, Hanka levou Antek até Jaromir quase à força. Antek não falava com Jaromir desde o dia em que Bartek lhe espatifara a lousa, e agora também olhava para o lado. # pokaz: hanka
}
– Tem uma coisa que vem ver a Zosia – disse baixinho. – Depois da meia-noite. Primeiro fica frio, e depois alguma coisa farfalha na sala, feito folhas secas. Uma vez abri os olhos e vi em cima do berço uma coisa clara, alta… e cabelos, pretos, até o chão. Não olhei mais. – Engoliu em seco. – E a Zosia nessa hora não chora. Só chia, como se não conseguisse respirar. De manhã está branca feito parede e não quer comer.
Falava depressa, engolindo as palavras, e a todo instante olhava por cima do ombro. A bola de neve que o tempo todo amassava nas mãos se desfez entre seus dedos.
– Você contou para a sua mãe?
– Ela diz que eu sonho. Que estou cansado. – Antek baixou os olhos. – Mas eu não estou dormindo. Eu ouço isso toda noite.
Jaromir lembrou-se das histórias de sexta-feira de mestre Ignacy e sentiu frio, embora o sol refletisse na neve com tanta força que doíam os olhos.
– Eu vou na Véspera de Natal – prometeu. – Quando todos estiverem dormindo. Mas antes preciso descobrir como espantar isso.
# pytanie: A quem Jaromir vai pedir conselho?
*   [Perguntar a Hanka – ela conhece as simpatias da avó para tudo.]
    ~ rada_jaromira = hanka
    Hanka o escutou franzindo a testa e ficou muito tempo calada. # pokaz: hanka
    – A avó dizia que é a Dama da Meia-Noite – falou por fim. – Uma mãe morta, que não teve tempo de ninar o seu nenê, e por isso vai atrás dos filhos dos outros. Tem medo de ferro. Tem que pôr debaixo do travesseiro uma faca, ou pelo menos um prego. – Hesitou. – Só que a avó diz que só quando ela já está se debruçando, senão não chega perto. E a mamãe diz que a avó confunde tudo. # dalej
    -> wigilia
*   { ekwipunek ? ksiega } [Consultar o livro de mestre Ignacy.]
    ~ rada_jaromira = ksiega_rada
    # tlo: izba_noc
    Naquela noite, junto às brasas, procurou no livro a página certa. “Dama da Meia-Noite – escrevia mestre Ignacy com sua letra inclinada – visita os recém-nascidos depois da meia-noite, debruça-se sobre eles e suga-lhes o sono e as forças. Tem medo do ferro, que se deve pôr sob o travesseiro da criança. Os antigos dizem também que, se se espalhar em volta do berço um punhado de sementes de papoula, a Dama da Meia-Noite tem de contar cada grão antes de chegar mais perto – e só sabe contar até o amanhecer”. # pokaz: ksiega
    ~ czytal_po_zmroku = true
    Jaromir leu a última frase três vezes. Depois, até o raiar do dia, ficou pensando na voz que, na névoa sob a floresta, contava algo que não se via.
    De manhã, quando abriu o livro junto à janela, encontrou na página da Dama da Meia-Noite um fio de cabelo comprido e negro. Na véspera, à noite, ele não estava ali. # dalej
    -> wigilia
*   [Perguntar ao pai.]
    ~ rada_jaromira = ojciec
    # tlo: izba_noc
    { figurka_u_staruchy:
        O pai empalideceu quando ouviu o que o filho perguntava. Levantou-se da mesa, saiu para a entrada e demorou muito a voltar. Quando por fim apareceu à porta, disse apenas: – Ferro. Debaixo do travesseiro. E nem uma palavra a ninguém, entendeu? # pokaz: ojciec # dalej
    - else:
        O pai riu e lhe despenteou os cabelos. – Seu avô Maciek costumava dizer que, contra qualquer licho, o melhor é ferro debaixo do travesseiro – disse. – Mas isso é conversa, filho. A pequena tem cólicas e pronto. – Mesmo assim, naquela noite Jaromir viu o pai enfiar um prego velho debaixo do colchão de palha do menino. # pokaz: ojciec # dalej
    }
    -> wigilia

= wigilia
# tlo: wigilia
~ zapiski += polnocnica_1
{ ekwipunek ? ksiega:
    ~ ksiega_zatrzymana = true
    No último dia antes das festas, Jaromir levou à escola o livro, embrulhado num lenço de linho. Mestre Ignacy pegou-o, sopesou-o nas mãos e devolveu-o. – Fique com ele – disse. – Algo me diz que vai ser mais útil a você do que a mim. Só não se esqueça: nunca depois de escurecer.{ czytal_po_zmroku: – Jaromir baixou os olhos. O professor olhou-o um instante mais do que o necessário, mas não perguntou nada.}
- else:
    No último dia antes das festas, mestre Ignacy deu a cada criança um pedaço de pão de mel e desejou a todos um feliz Natal. Para Jaromir olhou mais demoradamente que para os outros, como se quisesse lhe perguntar alguma coisa, mas por fim apenas lhe fez um aceno de cabeça.
}
Desde cedo a casa cheirava a cogumelos, repolho e papoula. A mãe moía as sementes num alguidar de barro, até o pilão de madeira cantar contra as paredes; o pai trouxe do celeiro um feixe de centeio e o pôs no canto, e debaixo da toalha enfiou um punhado de feno. Junto à mesa havia um lugar posto a mais – para o andarilho, se batesse à porta, e para os que tinham partido e nessa noite podiam voltar. Desde o meio-dia Jaromir espiava pela janela à espera da primeira estrela. Ela se acendeu sobre a floresta, minúscula e fria. # pokaz: gwiazdka
Mal tinham partido entre si a obreia de Natal, alguém bateu à porta.
Na soleira estava um velho mendigo – curvado, em farrapos amarrados com barbante, com um alforje a tiracolo e uma viela de roda às costas. A barba congelara-lhe em pingentes, e os olhos eram pálidos como leite, como se há muito não enxergassem nada. # pokaz: dziad
– Louvado seja Nosso Senhor Jesus Cristo – rouquejou. – Aceitam um velho à ceia?
{ figurka_u_staruchy:
    O pai não respondeu. Ficou com a mão na tranca, olhando ora para o forasteiro, ora para o lugar vazio, e depois virou-se para o filho e esperou para ver o que ele diria.
- else:
    – Para sempre seja louvado – respondeu Dobrosław, mas hesitou com a mão no trinco. Olhou de relance para o filho, que fora o primeiro a correr até a porta. – Meu pai dizia que na Véspera de Natal não se manda ninguém embora da porta. O que você acha?
}
# pytanie: O mendigo vai ficar para a ceia?
*   [Pedir ao pai que o deixe entrar.]
    ~ wpuscil_dziada = true
    O mendigo sentou-se diante do lugar vazio e comeu pouco, mas devagar e com cuidado. Depois tirou das costas a viela de roda e cantou uma velha canção sobre as almas que, nessa única noite, voltam às suas casas e aquecem as mãos em fogo alheio. A mãe enxugava os olhos com o avental. # pokaz: lira
    Ao sair, o mendigo parou junto de Jaromir e debruçou-se sobre ele tão perto que o menino sentiu no nariz o cheiro de fumaça e de geada.
    – Você cheira a floresta, menino – sussurrou. – Quando ela vier ver a pequenina, não fale com ela. Nem uma palavra.
    Antes que alguém pudesse perguntar o que ele queria dizer, já tinha passado da soleira. A noite estava clara de neve e, no entanto, ninguém viu para que lado ele foi. – Que bom que não o mandamos embora – sussurrou a mãe, recolhendo da mesa a tigela dele. – Nunca se sabe quem veio. Às vezes é a alma de alguém da família que volta disfarçada, para ver se ainda se lembram dela. # pokaz: odszedl # dalej
    -> po_wieczerzy
*   [Não dizer nada – o velho lhe causa medo.]
    Jaromir baixou os olhos. A porta se fechou devagar e a tranca estalou. O mendigo não bateu uma segunda vez. # pokaz: rygiel
    Pela fresta da veneziana o menino viu o forasteiro avançar com dificuldade pela neve – não em direção à aldeia, mas direto para a floresta. No meio do campo soprou um vento e levantou dos montes de neve um redemoinho branco. Quando assentou, não havia mais ninguém. # dalej
    -> po_wieczerzy

= po_wieczerzy
~ zapiski += dziad_1
{ los_psa == oswojony: -> wigilijny_szczeniak | -> noc_w_sniegu }

= wigilijny_szczeniak
# tlo: wigilia_szczeniak
Depois da ceia chegou o velho Staś. Sentou-se pesadamente no banco e abriu a samarra, debaixo da qual algo se remexia e ganía.
– Seu avô tinha um cachorro que igual não havia na redondeza – disse a Jaromir. – {pies_uratowal:Tirou o seu avô do pântano puxando pelo capote, quando uma coisa o chamava lá da água – o próprio Maciek me contou. }Quando chegou a hora do cachorro, os filhotes dele se espalharam pela aldeia, e um foi parar com o meu pai. Desde então, no nosso terreiro, sempre correu algum neto ou bisneto dele. – Tirou de debaixo da samarra um novelo de pelo. – E a cadela deu cria no outono. Este é o mais corajoso da ninhada. É seu por direito.
O filhote tinha orelhas espetadas e pontudas, uma mancha branca no peito e patas grandes demais para o resto do corpo. Farejou os dedos do menino, espirrou e, sem pensar duas vezes, trepou-lhe desajeitado no colo. # pokaz: pies
{ figurka_u_staruchy:
    A avó Marianna estendeu para o filhote a mão trêmula e por muito tempo não conseguiu tirar a voz do peito.
}
# pytanie: Que nome Jaromir vai lhe dar?
*   [Cinzento.]
    ~ imie_psa = "Cinzento"
*   [Patinhas.]
    ~ imie_psa = "Patinhas"
*   [Trovão.]
    ~ imie_psa = "Trovão"
-   ~ ekwipunek += szczeniak
    – {imie_psa} – repetiu Staś, balançando a cabeça. – Bom nome. O Maciek ia ficar contente.
    Depois disso o filhote dormia aos pés da cama de Jaromir e de vez em quando rosnava em sonhos na direção da janela. # dalej
    -> noc_w_sniegu

= noc_w_sniegu
# tlo: noc_snieg
Naquele ano ninguém foi à Missa do Galo em Bukowiec – o frio estava cortante demais, e a trilha sobre a serra, coberta de neve até os joelhos. Todos se deitaram cedo.
{ rada_jaromira == ksiega_rada:
    ~ ekwipunek += mak
}
Jaromir ficou imóvel até que da sala chegou o ronco regular do pai. Então vestiu-se no escuro, enfiou o canivete por dentro da camisa{ ekwipunek ? mak:, e no bolso um paninho com as sementes de papoula que à noitinha surrupiara da tigela, lembrando o que tinha lido no livro de mestre Ignacy,} e esgueirou-se para a entrada.{ ekwipunek ? szczeniak: O filhote levantou a cabeça, mas não ganiu, como se entendesse que agora era preciso ficar quieto.}
O mundo estava prateado de lua. A neve cintilava nos campos, cada galho lançava uma sombra negra e nítida, e o frio picava as faces até os olhos lacrimejarem. { figurka_u_staruchy: Até o terreiro da família de Staś eram só algumas dezenas de passos, mas a trilha cortava o campo de través, e sobre ele se arrastava uma névoa baixa, embora o céu estivesse limpo, e a linha escura da floresta parecia mais próxima de noite que de dia. | A casa da família de Staś não ficava longe, mas a trilha corria pela orla da floresta, e a floresta, àquela hora, estava surda e imóvel. }
No meio do caminho alguém o chamou.
– Jaromir!
A voz vinha {figurka_u_staruchy:da névoa sobre o campo|do meio das árvores}. Quente, suave, conhecida – a voz da mãe.
– Filho, vem cá. Estou com frio. Eu me perdi.
Jaromir estacou. A mãe, afinal, dormia em casa, coberta com o acolchoado até o queixo. Ele a vira ao sair.
# pytanie: O que Jaromir vai fazer?
*   [Responder.]
    ~ glos_w_lesie = odpowiedzial
    – Mamãe? – escapou-lhe, antes que tivesse tempo de pensar.
    { zawolal_do_lasu:
        {figurka_u_staruchy:Na névoa|Entre as árvores} alguma coisa riu – baixo, de mansinho, nada parecida com a voz da mãe. Depois aquela mesma voz calma, que ele ouvira no outono sob a floresta, disse: – Tu outra vez. Hei de te contar quando chegar a hora. # pokaz: oczy
    - else:
        {figurka_u_staruchy:Na névoa|Entre as árvores} alguma coisa riu – baixo, de mansinho, nada parecida com a voz da mãe. Depois, em algum lugar lá no fundo, alguém começou a contar calmamente: – …quinhentos e um… quinhentos e dois… # pokaz: oczy
    }
    Jaromir disparou a correr e só parou debaixo da janela da família de Staś. # pokaz: bieg # dalej
    -> kolyska
*   [Virar a samarra do avesso, como dizia mestre Ignacy.]
    ~ glos_w_lesie = kozuch
    Com dedos trêmulos desatou o cinto, tirou a samarra e vestiu-a de novo, com a lã para fora. Mal terminou, a voz se calou.
    Por um momento reinou o silêncio. Depois soaram passos – pesados, lentos, tão espaçados como se fossem dados por alguém muito alto. Esse alguém passou bem ao lado. Jaromir sentiu no rosto o seu hálito frio, que cheirava a resina e podridão, mas o outro não o notou. # pokaz: kroki
    – Onde você está? – veio já de longe, no tom de uma criança desapontada a quem esconderam um brinquedo. # dalej
    -> kolyska
*   [Sair correndo.]
    ~ glos_w_lesie = ucieczka
    Correu com todas as forças. A neve entrava-lhe pelos canos das botas. Duas vezes caiu e duas vezes se levantou num salto, e a voz da mãe o perseguia no escuro, cada vez mais perto e cada vez mais chorosa. Só se calou quando o menino alcançou a cerca da família de Staś. Arquejava tanto que o peito lhe doía como se o furassem com uma faca. # pokaz: bieg # dalej
    -> kolyska

= kolyska
# tlo: kolyska
Antek esperava junto à janela e abriu-a antes que Jaromir tivesse tempo de bater. Na sala estava quente e escuro. Em cima do forno roncava o pai de Antek, num canto dormia Franek, e a mãe, esgotada por tantas noites em claro, adormecera no mocho com a cabeça apoiada no berço. Zosia respirava depressa e curto.
Sentaram-se no chão junto à parede, de onde podiam ver tudo. A lua entrava na sala numa faixa de prata. Por muito tempo nada aconteceu. Passou da meia-noite, as pálpebras de Jaromir pesavam, e Antek cochilou duas vezes no ombro dele.
Até que ficou frio.
A faixa de luz esmaeceu, como se alguém tivesse tapado a janela. Sobre o assoalho começou a se arrastar uma névoa, e dela brotou uma figura – alta, numa mortalha esfarrapada na barra, com cabelos negros que escorriam até o chão. Pairava acima das tábuas, sem tocá-las com os pés. Tinha o rosto magro como uma caveira, os olhos grandes e redondos, e na boca entreaberta brilhavam dentes miúdos e afiados. Debruçou-se sobre Zosia e estendeu para baixo os dedos de graveto terminados em garras. # pokaz: polnocnica
A pequena começou a chiar.
Antek cravou as unhas no braço de Jaromir com tanta força que ele quase gritou.
# pytanie: O que Jaromir vai fazer?
*   [Enfiar o canivete debaixo do travesseiro no berço.]
    ~ polnocnica = przegnana_nozem
    ~ ekwipunek -= nozyk
    Jaromir rastejou de gatinhas até o berço. A Dama da Meia-Noite virou a cabeça para ele – os olhos eram como dois poços negros com um ponto claro no fundo – e sibilou. O menino engoliu o medo, enfiou a mão debaixo do travesseiro, bem sob as unhas aduncas dela, e deixou ali o canivete.
    A Dama da Meia-Noite estremeceu como se tivesse tocado ferro em brasa. Abriu a boca sem som, ergueu-se até o teto e ficou suspensa ali, de olhos cravados nos dois, e seus cabelos ondulavam como algas na correnteza. # pokaz: odlot, noz
    Assim permaneceu até quase o amanhecer. Quando no estábulo o galo cantou, ela já não estava lá. # pokaz: kogut
    Ao clarear, Jaromir estendeu a mão para o canivete, mas mudou de ideia.
    – Deixa ficar com a Zosia – sussurrou para Antek. – Por via das dúvidas. # dalej
    -> boze_narodzenie
*   { ekwipunek ? mak } [Espalhar as sementes de papoula em volta do berço.]
    ~ polnocnica = policzyla_mak
    ~ ekwipunek -= mak
    Jaromir tirou do bolso o paninho e com a mão trêmula espalhou as sementes em volta do berço. Os grãozinhos tamborilaram no assoalho como chuva miúda.
    A Dama da Meia-Noite ficou paralisada. Devagar, muito devagar, baixou, até que sua mortalha se esparramou pelas tábuas como névoa. Pairou sobre o grãozinho mais próximo e tocou-o com a garra. # pokaz: odlot, mak
    – Um – sussurrou, com uma voz que parecia o farfalhar de folhas secas. – Dois… três…
    Contou a noite inteira. Os meninos ficaram sentados junto à parede, sem ousar se mexer, e ela deslizava pela sala, grão por grão, sussurrando cada vez mais depressa, cada vez com mais raiva. Tinha chegado a alguns milhares quando no estábulo o galo cantou. Então soltou um guincho tão agudo que os ouvidos de Jaromir zuniram – e sumiu. Ninguém além dos dois ouviu aquele grito. # pokaz: kogut # dalej
    -> boze_narodzenie
*   [Gritar e acordar os adultos.]
    ~ polnocnica = uslyszala_krzyk
    – Socorro! – berrou Jaromir{ wpuscil_dziada:, embora logo se lembrasse do que o mendigo lhe sussurrara ao partir}.
    A Dama da Meia-Noite voltou-se para ele. Por um instante fitou-o bem nos olhos, e depois se dissolveu na escuridão como fumaça. A mãe de Antek levantou-se num pulo, gritando, o pai caiu de cima do forno, alguém acendeu um facho de pinho. No berço não havia nada além de Zosia, pálida, respirando a custo. # pokaz: odlot, krzyk
    Ao amanhecer, acompanharam Jaromir até sua casa, onde ele apanhou uma boa surra. A Dama da Meia-Noite, por sua vez, voltou nas noites seguintes. # pokaz: kogut # dalej
    -> boze_narodzenie

= boze_narodzenie
~ zapiski += polnocnica_2
// Mak był potrzebny tylko na tę jedną noc.
~ ekwipunek -= mak
# tlo: koledy
{ polnocnica:
- przegnana_nozem:
    De manhã Zosia dormia tranquila, corada como uma maçãzinha, e pela primeira vez em semanas comeu com tanta avidez que a mãe chorou de felicidade. Nenhum dos adultos sabia como o canivete tinha ido parar no berço. A mãe examinou-o, fez o sinal da cruz e guardou-o de volta debaixo do travesseiro.
- policzyla_mak:
    De manhã Zosia dormia tranquila, corada como uma maçãzinha, e pela primeira vez em semanas comeu com tanta avidez que a mãe chorou de felicidade. Das sementes de papoula não restava sinal – nem um grãozinho sequer, embora os meninos vasculhassem cada fresta do assoalho.
- else:
    Zosia enfraquecia a cada dia. Só no Dia de Reis o velho Staś, que ouvira o neto sem rir, pôs debaixo do berço uma foice enferrujada. A pequena sobreviveu, mas foi sempre doentia e pálida, e na testa ficou-lhe uma manchinha cinzenta, como a marca de um dedo sujo.
}
{ polnocnica == uslyszala_krzyk:
    Antek não guardou rancor de Jaromir. Dizia que pelo menos alguém tinha acreditado nele – e isso era mais do que podia dizer dos adultos.
- else:
    Desde aquela noite Antek não ficava mais para trás. Agora ia para a escola ao lado de Jaromir, e quando alguém perguntava por que andava tão grudado nele, apenas dava de ombros e sorria de canto de boca.
}
Chegaram as festas. Os cantadores de Natal iam de casa em casa com uma estrela de papel que girava na ponta de uma vara, e o turoń, com sua cabeça chifruda, batia a bocarra de madeira até as moças gritarem. Para o passeio de trenó pelo lago gelado, Staś atrelou dois cavalos; o trenó deslizava tão depressa que o vento assobiava nos ouvidos, os guizos tilintavam e a neve espirrava de debaixo dos patins. Jaromir ria junto com os outros, mas à noite, antes de adormecer, ficava escutando o silêncio do lado de fora da janela. # pokaz: kulig
Quando contou tudo a Hanka, a menina ficou séria e por um bom tempo não disse nada. # pokaz: hanka
– A avó diz que a Dama da Meia-Noite nunca vem por conta própria – disse por fim. – Alguém tem de lhe mostrar o caminho. # dalej
-> rozdzial_trzeci_ciag_dalszy


// Koniec rozdziału trzeciego – dalej rozdział czwarty.
=== rozdzial_trzeci_ciag_dalszy ===
# ozdobnik
_Fim do capítulo terceiro._ # dalej
-> rozdzial_czwarty
