// ------------------------------------------------------------
//  Prolog – Zapadlina, około siedemdziesiąt lat przed główną
//  częścią opowieści. Maciek, dziadek Jaromira, wybiera
//  miejsce na chatę.
// ------------------------------------------------------------

=== prolog ===
# tlo: zapadlina
# rozdzial: Prólogo
# tytul: Zapadlina
Zapadlina – uma aldeia situada ali onde a terra, cansada de ser planície, tinha afundado. Para chegar a ela, era sempre preciso descer de outeiros, barrancos e encostas – fosse da estrada pela Serra das Faias, fosse da floresta por uma trilha batida. Da cidade, a volta levava seis horas, e o último trecho do caminho serpenteava entre pântanos, sempre ladeira abaixo. A névoa gostava daquela bacia. Derramava-se nela ao entardecer como leite numa tigela, e às vezes nem ao meio-dia queria sair dali.
A leste, o bosque avançava – velho, de coníferas e tão cerrado que, mesmo de dia, as árvores lançavam uma sombra pesada e fria. Ao norte, a terra mole se convertia em brejos cobertos de taboas, junças e arbustos anões. A água ali era negra, turva e parada. Alguns diziam que não se devia fitá-la por muito tempo, porque assim se podiam despertar os afogados presos sob a camada de lodo. Pelas noites, fogos-fátuos voavam muitas vezes sobre ela. A oeste, no ponto mais baixo do vale, ficava o lago, redondo, como se alguém o tivesse calcado com o joelho. Dizia-se que ninguém jamais lhe vira o fundo.
A aldeia era pequena, mas não era nova. Cinco casas se erguiam longe umas das outras, porque cada um tinha tanta terra quanto os seus antepassados haviam conseguido arrotear e defender. Moravam nela umas trinta pessoas, contando as crianças. Todos se conheciam bem. Igreja, só na cidade; ia-se até lá algumas vezes por ano, nas festas mais importantes, se os caminhos permitissem. Então não ficava na aldeia uma única alma viva.
Uns setenta anos antes de Jaromir olhar pela primeira vez para o lado do bosque, seu avô desceu até Zapadlina com um bornal no ombro. Maciek não tinha nada além de um machado, pão, um par de braços e teimosia. O machado e o pão, comprara-os na cidade com o dinheiro ganho em quatro anos de trabalho em terra alheia. Queria enfim ter algo seu – um canto onde morar e dar à família um teto. O senhor das terras cedia ali terrenos baldios para arrotear por um foro baixo, de modo que cada pedaço de chão que Maciek limpasse seria dele. Era primavera, os campos fumegavam e aqui e ali, à sombra, ainda restava neve suja. Havia alguns dias que Maciek percorria os arredores, procurando onde erguer a cabana. Três lugares voltavam-lhe com mais frequência ao pensamento.
# ozdobnik
O primeiro ficava no extremo leste da aldeia, bem ao pé do bosque. A terra era fértil, a madeira estava ao alcance da mão, e caça também não faltava. Só que da floresta vinha sempre um frio, mesmo nos dias de calor, e à noite chegavam de lá sons que ele não sabia nomear.
O segundo estava ao norte, junto aos brejos. Havia ali vastos prados onde se poderia pastorear o gado, e turfa para queimar nunca faltaria. Em compensação, contava-se que, depois do escurecer, alguma coisa piscava sobre os pântanos. As pessoas que ele encontrava junto ao poço diziam apenas: – Lá não se vai nem se constrói. Lá só se afoga.
O terceiro, à beira do lago, parecia o mais pitoresco. A água era limpa, os peixes pulavam sozinhos para a mão, e a margem era suave – bastava abrir caminho pelos juncos cerrados. Restavam ali também os vestígios de uma casa que outrora se erguera naquele lugar: toras velhas, apodrecidas e carbonizadas. Ninguém na aldeia queria dizer quem morara nela nem que destino tivera, e as pessoas se benziam toda vez que alguém a mencionava.
# pytanie: Onde Maciek vai erguer a cabana?
*   [Na orla do bosque, a leste.]
    ~ chata_macka = przy_lesie
    -> budowa
*   [Junto aos brejos, ao norte.]
    ~ chata_macka = przy_mokradlach
    -> budowa
*   [À beira do lago.]
    ~ chata_macka = nad_jeziorem
    -> budowa


// ------------------------------------------------------------
//  Budowa chaty – początek zależy od wybranego miejsca.
// ------------------------------------------------------------
=== budowa ===
{ chata_macka:
    - przy_lesie: -> las
    - przy_mokradlach: -> mokradla
    - else: -> jezioro
}

= las
# tlo: budowa_las
# rozdzial: Prólogo
# tytul: A cabana
Maciek escolheu a orla do bosque. Achou que a madeira à mão lhe permitiria erguer a cabana mais depressa, e era isso o que mais lhe importava. A terra fértil serviria para a horta – afinal, alguma coisa era preciso comer. E o sono? Haveria de se dar um jeito. Já na primeira manhã pôs mãos à obra e cravou o machado no abeto mais próximo. O eco do golpe correu entre as árvores e voltou depois de um tempo estranhamente longo – arrastado, grave e não de todo parecido com a batida de um machado.
-> praca

= mokradla
# tlo: budowa_mokradla
# rozdzial: Prólogo
# tytul: A cabana
Maciek escolheu os prados junto aos brejos. Quando começou o trabalho, as pessoas que o viam balançavam a cabeça. Para elas, aquele era o último lugar onde levantariam uma casa. A terra ali cedia sob os pés, mas dava turfa que bastaria até para cem invernos. Para que a cabana não afundasse na lama, Maciek teve de preparar um embasamento. Durante todo o primeiro dia carregou pedras dos outeiros e as assentou com esmero.
Ia buscar madeira longe, ao pé da floresta. Acontecia-lhe cair em alguma poça rasa – ainda não conhecia as trilhas do lugar – e andava com as botas sempre encharcadas. Ao pensar nas histórias dos moradores, sentia inquietação, mas também curiosidade. Não lhe saía da cabeça o que poderia estar piscando sobre os pântanos. Procurava evitar a água negra e levou a sério a advertência sobre os afogados. Se existiam, com certeza não queria encontrá-los.
-> praca

= jezioro
# tlo: budowa_jezioro
# rozdzial: Prólogo
# tytul: A cabana
Maciek escolheu a margem do lago. Algo no fundo do coração lhe dizia que aquele lugar era para ele. Talvez o atraísse a própria água – lisa e clara, com o céu inteiro dentro. As toras apodrecidas e carbonizadas da antiga casa, empurrou-as para dentro do juncal alto, para que não lhe ferissem os olhos. O que passou, passou – repetia a si mesmo enquanto arrancava o mato, quando lhe vinham à lembrança as histórias dos moradores. As árvores, derrubava-as nas encostas e rolava os troncos ladeira abaixo. Para cobrir o telhado juntava caniço, que ali não faltava – passava-lhe da cabeça.
-> praca

= praca
A construção durou mais de um mês. Às vezes algum morador vinha ajudar Maciek. Na maioria das vezes era Andrzej, com quem melhor se entendia. Ele próprio não nadava em fartura, mas, vendo em que miséria vivia o forasteiro, de quando em quando lhe trazia algo para comer. Gostava também de falar do filho, que era o seu orgulho. O menino tinha onze anos e já era de grande ajuda para o pai.
Erguer a cabana em si não era difícil: derrubar as árvores, descascá-las, cortá-las em toras do comprimento certo e entalhar nas pontas os encaixes, para que, depois de montadas, se segurassem bem. Graças a isso, as paredes ficavam de pé sem um único prego. As frestas, tapava-as com musgo e barro. Do trabalho pesado de todos os dias, as mãos se cobriram de bolhas, que estouravam e cicatrizavam, até que a pele endureceu como casca de árvore.
Racionava o pão com todo o cuidado – uma fatia no desjejum, outra na ceia, com um gole de água. Prometia a si mesmo que iria à cidade buscar mais assim que terminasse o telhado. O que restava secava, encolhia e a cada dia pesava menos – e Maciek junto com ele.
Dormia numa choça que armara às pressas no primeiro anoitecer: alguns galhos grossos apoiados num tronco, cobertos de ramagem com folhas e de torrões de relva, e dentro um leito de musgo. Só cabia nela deitado. O machado, mantinha-o sempre ao lado. # dalej
-> noce

= noce
As noites eram o pior. O frio e a umidade da primavera entravam por baixo da roupa, mordendo fundo até os ossos. Era difícil adormecer. Maciek ficava deitado de olhos abertos, escutando.
{ chata_macka:
    - przy_lesie: O bosque nunca se calava. Não havia vento, e ainda assim os galhos estalavam – devagar, preguiçosos, ora mais perto, ora mais longe. Muitas vezes ele ficava imóvel, à escuta, embora alguns sons lhe dessem arrepios.
    - przy_mokradlach: Os pântanos nunca dormiam. Borbulhavam, davam estalidos molhados e às vezes – tinha essa impressão – suspiravam como gente. Na primeira vez que ouviu isso, estremeceu, agarrou o machado e espiou para fora da choça. As histórias do poço se revelaram verdadeiras. Passada a meia-noite, lá longe sobre a água negra, acendia-se uma luzinha que piscava. Apagava-se quando ele olhava para ela e voltava a brilhar quando desviava os olhos.
    - else: O lago respirava à noite. Cada fôlego seu era morno e agradável. Embora não houvesse vento nem ondas, de tempos em tempos algo chapinhava no raso. Certa vez Maciek ouviu algo pesado sair da água e vir pela margem, através dos juncos, na direção dele. De manhã foi verificar. Os juncos estavam intactos, e na água rasa cochilavam patos, tranquilos como todo dia.
}
Certa noite, quando do pão só lhe restava a ponta, chegou-lhe um som que até então não conhecia ali. Um uivo baixo, entrecortado – fino, parecido com o de um lobo, mas fraco. Vinha do matagal ali perto. Maciek tentou não lhe dar atenção, mas ele sempre voltava.
# pytanie: O que Maciek deveria fazer?
*   [Pegar o machado – embora no escuro seja fácil perdê-lo na lama – sair da choça e ver o que é.]
    -> pies
*   [Ficar na choça e, apesar de tudo, tentar dormir. Aqui ele se sente seguro.]
    -> zostal

= zostal
~ los_psa = niespotkany
Maciek apertou os dedos em volta do machado e não saiu do lugar. O uivo durou ainda muito tempo. Depois virou um ganido lamentoso e, antes do amanhecer, calou-se. # dalej
-> dach


// ------------------------------------------------------------
//  Pies w zaroślach – tylko gdy Maciek wyszedł z szałasu.
// ------------------------------------------------------------
=== pies ===
# tlo: zarosla_noc
Maciek saiu rastejando com o machado na mão. A noite estava clara de lua, e a relva molhada de orvalho. Ia devagar atrás do som, passo a passo, sentindo que o coração queria saltar-lhe do peito. O uivo ora se calava, ora soava cada vez mais perto.
Nas moitas cerradas ouviu um farfalhar. Afastou os galhos com o cabo do machado e ficou paralisado. Da escuridão surgiram dois olhos brilhantes. À luz da lua, percebeu que era um cão jovem. Estava tão magro que as costelas lhe saltavam sob a pele, e tinha as patas grandes demais para o resto do corpo. O focinho era comprido e estreito, e as orelhas, eretas e duras. Não fugia do homem. Rosnava baixinho, tremendo inteiro. # pokaz: pies
Maciek levou a mão ao bolso. Havia nele uma pequena trouxinha com o último pedaço de pão – duro como pedra, mas afinal era a sua refeição do dia seguinte.
# pytanie: O que Maciek vai fazer?
*   [Dar ao cão o pedaço de pão.]
    -> dal_chleb
*   [Não dar e voltar para a choça.]
    -> nie_dal_chleba

= dal_chleb
~ ekwipunek -= chleb
~ los_psa = nakarmiony
Maciek desembrulhou o pano e jogou o pão debaixo da moita. O cão recuou e rosnou, mas logo começou a farejar o que tinha caído. De repente abocanhou a presa e sumiu na escuridão antes que se pudesse piscar.
O homem voltou a se arrastar para baixo dos galhos da sua choça e adormeceu com fome, sabendo que no dia seguinte não haveria desjejum. # dalej
-> dach

= nie_dal_chleba
~ los_psa = porzucony
Maciek deixou o pão no bolso.
– Eu mesmo mal tenho fôlego – resmungou para o cão, como se quisesse se desculpar diante dele.
Recuou devagar e se escondeu sob os galhos. O uivo voltou uma vez ainda, mais fraco que antes. Depois disso, naquela noite, não o ouviu de novo. # dalej
-> dach


// ------------------------------------------------------------
//  Dach – dzień po nocy z wyciem. Przebieg zależy od losu psa.
// ------------------------------------------------------------
=== dach ===
{ chata_macka:
    - przy_lesie: # tlo: budowa_las
    - przy_mokradlach: # tlo: budowa_mokradla
    - else: # tlo: budowa_jezioro
}
# rozdzial: Prólogo
# tytul: O telhado
{ los_psa == nakarmiony: -> bez_chleba | -> z_chlebem }

= z_chlebem
~ ekwipunek -= chleb
De manhã Maciek desembrulhou a trouxinha e comeu o último pedaço de pão. Mastigava-o devagar, bocado a bocado, para que durasse o dia inteiro. Bebeu água, sacudiu as mãos e foi trabalhar.
-> trzcina ->
Cortava a touceira com o machado rente ao chão, amarrava-a em feixes e levava-os para junto da cabana. Vez após vez, sem descanso. As costas lhe ardiam em brasa, mas o monte junto à parede crescia.
À tarde já não havia junco naquele lugar, então seguiu adiante. Voltou por outro caminho – do lado de onde, na noite anterior, viera o uivo. Caminhava, quando de repente seu pé ficou suspenso no ar.
Na relva, debaixo de uma moita, jazia um cão. Magro, de focinho comprido e pelo emaranhado. Estava rígido, tombado de lado, com os olhos entreabertos. As moscas já o tinham coberto.
{ los_psa == niespotkany:
    Maciek ficou muito tempo parado diante dele. Só agora entendeu o que uivara naquela noite. Não um bicho selvagem, nem assombração alguma – apenas um filhote faminto e enregelado, que chamou e chamou, até se calar.
    Sentiu um nó na garganta. Pensou que poderia ter saído naquela hora. Mas logo respondeu a si mesmo: e se tivesse caído direto na goela de um lobo? No escuro, não se sabe o que espera nas moitas. Um homem sensato fica na choça com o machado à mão – e vive.
    Desviou o olhar, jogou o feixe nas costas e voltou ao trabalho. Deixou o cão onde o encontrara. # dalej
- else:
    Maciek caiu de joelhos. Lembrava-se daqueles olhos à luz da lua, daquele rosnado sem convicção, do tremor do corpo inteiro. O cão tinha pedido, e ele lhe dera as costas e fora embora.
    Um pedaço. Um pedaço duro de pão.
    – Eu mesmo mal tinha fôlego – disse em voz alta, como se alguém o acusasse. – Se eu tivesse dado tudo, quem estaria deitado aqui? O cão ou eu?
    As palavras soavam sensatas, mas não trouxeram alívio. Maciek se levantou e, sem olhar mais para debaixo da moita, voltou a carregar junco. Não enterrou o corpo. # dalej
}
-> uplyw_czasu

= bez_chleba
De manhã Maciek acordou com fome. Levou a mão ao bolso por costume e se lembrou de que a trouxinha estava vazia. Suspirou, bebeu um pouco de água e foi trabalhar.
-> trzcina ->
Cortava a touceira com o machado rente ao chão, amarrava-a em feixes e levava-os para junto da cabana. Vez após vez, sem descanso.
Perto do meio-dia, endireitando as costas doloridas, notou um movimento ao longe. Na beira do prado, entre os tufos de capim, rondava um cão – o mesmo, magro, de focinho comprido. Farejava, parava e olhava na direção dele, pronto para fugir a qualquer momento.
Maciek sorriu, pela primeira vez em muitos dias.
– Está vivo – murmurou.
Nos dias seguintes, o cão voltou. Primeiro se mantinha longe. Depois sentava-se num outeiro e passava horas olhando o homem se afanar com os feixes. A cada dia chegava um pouco mais perto – alguns passos, não mais, como se medisse quanto lhe era permitido. # dalej
-> uplyw_czasu

// Wspólny akapit o trzcinie na dach – skąd ją brał, zależy od miejsca chaty.
= trzcina
As paredes já estavam aprumadas, os caibros bem firmes. Faltava o telhado. Para a cobertura de colmo precisava de junco – muito junco, mais do que parecia olhando só para a cabana.
{ chata_macka:
    - przy_lesie: O mais próximo crescia na beira dos brejos, a meia hora dali, então cada feixe tinha de ser carregado através de todo o prado.
    - przy_mokradlach: Crescia quase junto à soleira, denso e alto, só que era preciso entrar até os joelhos na lama fria para colhê-lo.
    - else: Crescia ao longo de toda a margem, mais alto que ele, e rumorejava a cada lufada como alguém que sussurra às costas.
}
->->

= uplyw_czasu
Os dias foram passando. A neve derreteu por completo, mesmo na sombra mais funda ao pé da floresta. A terra deixou de fumegar e ficou morna sob o pé descalço. Na orla do bosque desabrocharam as anêmonas – brancas, densas como geada – e nos terrenos alagadiços brilhavam, douradas, as calêndulas-do-brejo.
Pão, Maciek já não tinha havia muito tempo. Vivia do que ele mesmo encontrava ou do que Andrzej lhe trazia. Nos brejos colhia oxicocos que tinham passado o inverno, azedos e enrugados, mas ainda comestíveis. Das roseiras-bravas arrancava os frutos do ano anterior, duros como contas. No prado apanhava azedinha, que mastigava crua, e nos cantos úmidos sob as árvores achava alho-de-urso. Também fazia talhos nas bétulas e bebia a seiva adocicada que pingava delas até o amanhecer. A fome não ia embora, mas dava para viver com ela.
O telhado crescia dia a dia. Feixe junto a feixe, camada sobre camada. # dalej
-> wieczor


// ------------------------------------------------------------
//  Wieczór – stwór w zaroślach.
// ------------------------------------------------------------
=== wieczor ===
# tlo: zmierzch
Naquele dia Maciek já assentava os feixes junto à cumeeira. Faltava só uma faixa, talvez duas. As mãos tremiam-lhe de cansaço, e o sol escorregara para trás do horizonte, deixando no céu um vermelho sujo.
Desceu do telhado e sentou-se junto à choça. Queria descansar só um instante, enquanto ainda havia luz. Encostou a cabeça no tronco, fechou os olhos…
…e adormeceu.
Acordou-o o silêncio.
Não se ouviam grilos, nem rãs, nem vento. Tudo ao redor submergia na névoa, densa e branca, que chegava aos joelhos. Maciek não sabia quanto tempo dormira. Sabia apenas que algo estava errado – sentia-o no corpo e na alma antes de compreendê-lo com a razão.
Ouviu-se um som. Nem uivo nem grito, mas algo no meio: um gemido longo, gutural, que se transformou num estalar de galhos quebrados. Alguma coisa saltou com estrondo para dentro do matagal – bem ao lado, não longe da choça. # pokaz: oczy
Maciek pôs-se de pé num salto. O machado foi parar sozinho nas suas mãos. Apertava-o com tanta força que os nós dos dedos ficaram brancos, e fitava a escuridão de onde vinham passos – lentos, pesados, cada vez mais próximos. # dalej
{ los_psa == nakarmiony: -> obrona | -> zdobycz }

= zdobycz
# tlo: zmierzch_zdobycz
As moitas se abriram. Da névoa surgiu um vulto. # pokaz: topielec
Era mais alto que um homem adulto, umas boas três cabeças. Estava sobre duas pernas, mas curvado, com braços terminados em garras, pendendo quase até o chão, e com longos cabelos encharcados de lodo do pântano. Tinha forma de gente – e não era gente de modo nenhum. Na bocarra segurava algo grande e inerte, que lhe pendia dos dois lados da cabeçorra.
Maciek o reconheceu na hora, embora preferisse não reconhecer. # pokaz: cialo
O vulto cerrou as mandíbulas. Houve um estalo – alto, molhado, como galhos secos se partindo, só que não eram galhos. Depois a criatura se virou e disparou rumo aos brejos{chata_macka == przy_mokradlach: ali perto}, tão depressa que a névoa rodopiou atrás dela como água.
Maciek não conseguia se mexer. Tremia inteiro, um suor frio lhe escorria pelas costas e as pernas pareciam de algodão. O machado pesava-lhe nas mãos, inútil. Ficou assim muito, muito tempo, até que a escuridão voltasse a silenciar.
-> strach_o_chate ->
Por fim, arrastou-se para dentro da choça. Por muito tempo não conseguiu pregar o olho e ficou à escuta, até que, exausto de trabalho e de medo, adormeceu. # dalej
-> zgliszcza

= obrona
# tlo: zmierzch_obrona
As moitas se abriram. Na escuridão acenderam-se dois olhos – altos, altos demais para um lobo ou um javali. O vulto estava de pé no matagal, sobre duas pernas, curvado, com os braços pendendo quase até o chão e longos cabelos encharcados de lodo do pântano. Tinha forma de gente – e não era gente de modo nenhum. # pokaz: topielec
Maciek não conseguia se mexer. Tremia inteiro, um suor frio lhe escorria pelas costas. Os olhos fitavam-no direto e, devagar, muito devagar, aproximavam-se.
Ao longe ouviu-se um latido.
O cão irrompeu da escuridão como uma flecha e se plantou entre Maciek e o matagal. O pelo se eriçou na nuca, fincou as patas no chão e latia – alto, furioso, sem um instante de pausa, embora tremesse inteiro. Magro, novo, com o rabo entre as pernas – e não recuou nem um passo. # pokaz: pies
Os olhos pararam. O vulto hesitou, soltou um silvo gutural – e então deu meia-volta e, com estalar de galhos, disparou rumo aos brejos{chata_macka == przy_mokradlach: ali perto}, e a névoa rodopiou atrás dele como água.
-> strach_o_chate ->
~ los_psa = oswojony
~ ekwipunek += pies_towarzysz
Levou muito tempo até Maciek voltar a si. Por fim deixou-se cair no chão junto à choça e respirou pesado, como depois de uma longa corrida. O cão parou de latir. Aproximou-se, hesitante, de cabeça baixa – e abanou o rabo, orgulhoso de si como ninguém no mundo.
Maciek estendeu a mão trêmula. O animal cheirou-a e depois se deixou afagar.
– Bom cão – sussurrou. – Bom – disse, aliviado.
Naquela noite entraram juntos na choça. O cão deitou-se à entrada, com a cabeça virada para o matagal. Maciek ficou de vigia ainda muito tempo, atento à escuridão, até que o sono o venceu. Mas já não estava sozinho. # tobolek # dalej
-> zgliszcza

// Tylko gdy chata stoi przy mokradłach – stwór uciekł właśnie tam.
= strach_o_chate
{ chata_macka == przy_mokradlach:
    E então se deu conta de que a criatura não fugira para longe. Sumira no pântano, a algumas dezenas de passos da choça – ali onde ele mesmo, havia um mês, dormia, comia e trabalhava. Talvez estivesse lá desde o começo. Talvez toda noite, enquanto Maciek escutava o borbulhar da água negra, algo do outro lado o escutasse a ele. “Lá não se constrói. Lá só se afoga” – vieram-lhe à memória as palavras da gente do poço. Pela primeira vez desde o dia em que começara a obra, pensou que talvez tivesse cometido um erro. Que talvez devesse ter dado ouvidos.
}
->->


// ------------------------------------------------------------
//  Zgliszcza – poranek po nocy z topielcem, dokończenie dachu,
//  rozmowa z Andrzejem.
// ------------------------------------------------------------
=== zgliszcza ===
~ zapiski += stwor_1
{ chata_macka:
    - przy_lesie: # tlo: chata_las
    - przy_mokradlach: # tlo: chata_mokradla
    - else: # tlo: chata_jezioro
}
# rozdzial: Prólogo
# tytul: As cinzas
Começava a clarear. Maciek acordou entorpecido e enregelado. Por um momento não soube se o que vira à noite tinha acontecido de verdade. Depois voltou-lhe à memória o estalar dos galhos quebrados, e um calafrio o percorreu.
{ los_psa == oswojony:
    O cão estava deitado à entrada da choça, com a cabeça sobre as patas, olhando na direção dos brejos. Já não dormia. Maciek teve a impressão de que velara assim até o amanhecer.
- else:
    Na choça reinava o silêncio. Maciek espiou para fora. A relva junto ao matagal estava deitada numa faixa larga, emplastrada de lodo, e fedia a pântano{chata_macka != przy_mokradlach:, embora os brejos ficassem longe}. A faixa seguia {chata_macka == przy_mokradlach:rumo à água negra|na direção deles}, e nas folhas de capim escureciam gotas de sangue. # pokaz: slady
}
Foi até a sua cabana inacabada e sentou-se na soleira. Ficou ali sentado, olhando para a frente. Os pensamentos se enovelavam dentro dele como a névoa sobre a aldeia. Fugir. Deixar tudo enquanto ainda estava vivo e nunca mais voltar. Mas, por outro lado – mais de um mês de trabalho, as bolhas nas mãos, as últimas fatias de pão. Cada tora daquelas paredes, ele mesmo a desbastara. E para onde iria? Para a terra alheia, de novo por uma tigela de cevadinha? Tinha prometido trazer a família para cá. Que teriam o seu próprio teto.
# pytanie: O que Maciek vai decidir?
*   [Ficar. Já pôs demais de si neste lugar.]
    -> zostaje
*   [Juntar o que tem e ir embora enquanto é tempo.]
    -> odchodzi

= zostaje
Levantou-se, sacudiu as calças e olhou para o telhado. Faltava uma faixa de junco, talvez duas.
– Não construí tudo isto para fugir agora – disse em voz alta, para que o ouvisse algo mais do que {chata_macka == przy_lesie:o bosque|os juncos}. # dalej
-> dach_gotowy

= odchodzi
~ chcial_odejsc = true
Jogou o bornal no ombro e partiu ladeira acima, rumo à estrada. Marchava depressa, sem se virar. Só na Serra das Faias se deteve e lançou o olhar para baixo.
Lá estava a cabana, pequena e inacabada, com o telhado como uma frase por terminar. A sua cabana.
{ los_psa == oswojony: O cão o seguiu por um trecho, depois sentou-se a meio da encosta e ficou olhando – ora para ele, ora para trás – como se esperasse que Maciek entendesse sozinho. }
Maciek não se moveu até o sol nascer sobre a floresta. Então voltou. Não porque tivesse deixado de ter medo. Não tinha para onde ir, e pronto. # dalej
-> dach_gotowy

= dach_gotowy
Os últimos feixes de junco, assentou-os até o meio-dia. Amarrou-os com embira, prendeu-os com varas e desceu da escada. Pela primeira vez desde que chegara a Zapadlina, estava diante de uma cabana terminada – sua, do baldrame à cumeeira. # pokaz: dach
Naquela noite, enfim, dormiu nela. As paredes cheiravam a resina e a barro úmido, e pela fresta da porta se esgueirava o luar.
Ainda não havia cama, mas ao menos tinha sobre a cabeça o seu próprio teto. Ali, no que era seu, pela primeira vez em semanas dormiu a noite inteira sem acordar.
{ los_psa == oswojony: O cão se acomodou na soleira e, desde aquela noite, não a cedeu a ninguém. }
De manhã Maciek foi ter com o único homem em quem confiava. Precisava contar a alguém. # dalej
-> u_andrzeja

= u_andrzeja
# tlo: izba_andrzeja
A casa de Andrzej ficava num outeiro, longe da água. Na sala cheirava a fumaça e o espaço era apertado. Staś, o filho do dono da casa, estava sentado à mesa, no banco, aparando um graveto com um canivete. Ao ver o visitante, abriu um sorriso de orelha a orelha.
Maciek começou do princípio: do silêncio, dos passos e… do vulto três cabeças mais alto que um homem, com os cabelos encharcados de lodo do pântano.
Andrzej escutava, até que de repente caiu na risada.
– Foi a fome que fez você ver coisas, homem. Sacode isso. Um mês a pão e água – assim a gente vê até o arcanjo Miguel.
Staś parou de aparar o graveto. Fitava o forasteiro de boca aberta e com medo nos olhos.
– É verdade? – perguntou.
# pytanie: O que Maciek vai fazer?
*   [Confirmar com firmeza que é verdade e contar tudo até o fim, diante do menino. Que ele saiba do que deve se guardar.]
    ~ stas_zaufanie = true
    -> prawda_przy_chlopcu
*   [Sorrir e despachar o menino dizendo que aquilo foi só um sonho, mas pedir a Andrzej que o mande sair e, a sós, contar tudo em detalhes. Não são coisas para criança.]
    -> w_cztery_oczy

= prawda_przy_chlopcu
– Sim, é verdade. Deixe o menino ouvir. Melhor que ele tenha medo do que vá sozinho até o pântano e nunca mais volte.
O dono da casa olhou para o filho, depois para Maciek. O sorriso foi-lhe sumindo do rosto devagar.
-> dziad_opowiadal

= w_cztery_oczy
– Na verdade… na verdade, deve ter sido um pesadelo – respondeu.
Ainda assim, pediu ao amigo para conversarem a sós. Este mandou Staś buscar água. O menino saiu de má vontade e deixou a porta entreaberta. Nenhum dos homens percebeu.
-> dziad_opowiadal

= dziad_opowiadal
– Três cabeças mais alto, você diz – falou por fim Andrzej, já sem rir. – E os cabelos molhados de pântano. – Por um bom tempo ficou girando entre os dedos uma tigela vazia. – Meu avô contava de uma coisa assim. Eu achava que era para assustar as crianças.
Maciek contou mais uma vez, passo a passo, aquela noite inteira. # dalej
-> legenda


// ------------------------------------------------------------
//  Legenda o wiedźmie znad jeziora – opowiada Andrzej.
// ------------------------------------------------------------
=== legenda ===
# tlo: legenda
– Dizem que tudo começou lá, à beira do lago, onde estão aquelas toras carbonizadas. – Andrzej baixou a voz. – Morava lá, uma vez, uma mulher. Uma erveira. O povo ia até ela com dores, doenças e febres – e ela nunca negou ajuda a quem quer que fosse. Mas, com o tempo, alguma coisa entrou nela. Não se sabe por quê. Falava pelas noites, mas não sozinha – falava com alguém que nenhum olho via. Uns diziam que com os afogados, outros que com o velho do chapéu de musgo, que vinha espiá-la do lado da floresta. Ela mesma repetia que os mortos vinham da água e lhe contavam sobre um futuro terrível. Logo todos passaram a evitá-la, porque tinham medo.
Depois, na aldeia, as coisas foram de mal a pior. O leite azedava nos baldes, as criancinhas acordavam aos gritos, as hortaliças apodreciam na terra. Sumiam também os animais – primeiro um bezerro, depois uma vaca, depois um galinheiro inteiro numa só noite. O povo dizia que era obra dela e começou a chamá-la de bruxa.
Uma noite, alguns camponeses se juntaram diante da cabana dela. Pregaram a porta com tábuas enquanto ela dormia, cercaram as paredes de palha e atearam fogo. # pokaz: chlopi, ogien
Andrzej calou-se por um momento.
– Meu avô dizia que ela gritou até o fim. Não de dor, Maciek. Rogava pragas. À aldeia, à terra, a cada um que mora aqui e que um dia vier a morar. Que ninguém conheceria sossego enquanto aqueles que a visitavam não matassem aqui todos, até o último. Ouviam-se também os gemidos dela, lançando as palavras da maldição: “Os ossos dos vossos filhos serão quebrados, e o sangue deles, bebido…”. – Andrzej esfregou o rosto com a mão. – E dizia também que, na orla da floresta, enquanto a cabana ardia, havia alguém alto parado, olhando. Ninguém foi ver quem era.
– Que horror… E os que a queimaram?
– Nenhum chegou vivo ao inverno. Um após o outro foram perdendo o juízo. Falavam sozinhos, não dormiam, andavam no escuro até a beira da água. Até que, por fim, todos entraram no pântano e de lá não saíram mais. Os que os viram por último diziam que tinham algo estranho nos olhos. Como se em cada um ardesse uma lamparina. # pokaz: wegielki
Andrzej inclinou-se para ele.
– São os olhos deles que piscam de noite sobre os brejos. Nada de fogos-fátuos. Eles estão lá parados, espreitando – atraindo.
{ chata_macka:
    - przy_mokradlach: Maciek sentiu o frio apertar-lhe o estômago. Toda noite via aquelas luzinhas da sua soleira. Pensava que fossem madeira podre ou vapores do pântano. Que fossem só luz.
    - nad_jeziorem: Maciek empalideceu. Aquelas toras, ele as empurrara com as próprias mãos para o juncal. Erguera a sua cabana exatamente onde ardera a outra.
}
{ stas_zaufanie:
    Staś estava sentado imóvel, com o graveto inacabado na mão. # dalej
- else:
    Atrás da porta entreaberta algo rangeu baixinho. Quando o dono da casa espiou, na entrada só havia um balde de água. Staś já ia longe, no terreiro. # dalej
}
-> zgliszcza_wiedzmy


// ------------------------------------------------------------
//  Zgliszcza chaty wiedźmy w trzcinach nad jeziorem.
// ------------------------------------------------------------
=== zgliszcza_wiedzmy ===
# tlo: zgliszcza
~ zapiski += zielarka_1
Voltando da casa de Andrzej, Maciek não conseguia parar de pensar nos restos calcinados.
{ chata_macka == nad_jeziorem: Agora que sabia o que eram, via-os toda vez que olhava para os juncos junto à sua casa. Toras negras, carbonizadas, espetadas como costelas. }
Algo lá dentro o tentava a examiná-los de perto, embora sentisse receio.
# pytanie: O que Maciek vai fazer?
*   [Ir até os restos calcinados e revirar as cinzas.]
    -> przeszukuje
*   [Manter-se longe deles.]
    -> omija

= przeszukuje
~ przeszukal_zgliszcza = true
~ ekwipunek += figurka
Abriu caminho entre os juncos com o machado e ajoelhou-se junto às toras enegrecidas. A cinza estava fria, compacta e úmida. Remexeu nela por muito tempo, até que os dedos toparam com algo duro. # pokaz: maciek
Uma pequena estatueta de madeira, chamuscada de um lado. Uma figura humana com braços compridos demais, que chegavam aos pés.
Maciek revirou-a nas mãos. Pensou que talvez pudesse trocá-la na cidade por algo de comer, então ficou com ela.
{ los_psa == oswojony: O cão, que até então farejava junto à margem, recuou e rosnou baixinho para o bolso dele. }
Pouco depois avistou ali mais alguma coisa.
– Não pode ser – sussurrou, e tirou da cinza uma pederneira enegrecida. – Será que foi com isto que atearam fogo à cabana da bruxa?
# pytanie: Maciek vai levar a pederneira?
*   [Sim – amaldiçoada ou não, com ela poderá acender fogo e preparar comida quente.]
    ~ ekwipunek += krzesiwo
    -> wieczor_przy_chacie
*   [Não – não quer arriscar uma maldição que poderia cair sobre ele.]
    -> wieczor_przy_chacie

= omija
{chata_macka == nad_jeziorem:Os juncos junto à própria soleira não podia evitar, mas desde então, ao sair da cabana, desviava deles o olhar.|Contornou o lago com uma larga volta e nem uma vez olhou para os juncos.} Há coisas em que é melhor não mexer. # dalej
-> wieczor_przy_chacie


// ------------------------------------------------------------
//  Wieczór przy chacie – ogień (jeśli ma krzesiwo) i plan wyprawy do miasta.
// ------------------------------------------------------------
=== wieczor_przy_chacie ===
{ chata_macka:
    - przy_lesie: # tlo: wieczor_las
    - przy_mokradlach: # tlo: wieczor_mokradla
    - else: # tlo: wieczor_jezioro
}
{ ekwipunek ? krzesiwo:
    Ao anoitecer, Maciek juntou galhos secos e arrumou-os num círculo de pedras diante da cabana. A pederneira pesava-lhe na mão de um jeito estranho. Por um momento ficou a observá-la, pensando em quem teriam sido as últimas mãos a segurá-la. Depois bateu uma vez, duas, três – e na isca acendeu-se uma faísca. # pokaz: ogien
    O fogo se ergueu claro, e o calor lhe bateu no rosto tão de repente que a cabeça chegou a rodar. Fazia semanas que não punha na boca nada quente. Agora cozinhou numa panela de barro uma sopa de urtiga e azedinha. Comia devagar, queimando os lábios, e nada no mundo lhe parecera tão saboroso.
    { los_psa == oswojony:
        O cão deitou-se do outro lado da fogueira. As chamas se refletiam nos seus olhos, e ele as fitava como enfeitiçado. # pokaz: pies
    }
- else:
    A noite caiu fria e escura. Maciek comeu um punhado de azedinha crua e alguns oxicocos enrugados, bebeu água e sentou-se na soleira.
}
Ficou muito tempo sentado, olhando na direção da estrada, e traçava um plano em pensamento. A cabana estava pronta. Era hora de ir à cidade – comprar pão, sal, talvez um pouco de cevadinha.
{ ekwipunek ? figurka: A estatueta, tentaria vendê-la – talvez alguém pagasse por uma curiosidade assim. }
E depois, assim que recuperasse as forças, traria a família para cá. Para a casa que construíra com as próprias mãos. # dalej
-> droga_do_miasta


// ------------------------------------------------------------
//  Droga do miasta – kręta ścieżka między mokradłami, głos znad wody.
// ------------------------------------------------------------
=== droga_do_miasta ===
# tlo: sciezka
Partiu ao raiar do dia. Até a cidade eram seis horas de caminho, e o primeiro trecho seguia por uma trilha sinuosa entre os brejos, subindo até a Serra das Faias. Andava com ânimo, embora a barriga roncasse de fome. Pensava na mulher e no filhinho – em como pela primeira vez parariam à soleira da nova cabana. A saudade lhe apertava a garganta.
{ los_psa == oswojony:
    O cão ia bem junto dele, abanando alegremente o rabo. # pokaz: pies
}
A névoa pairava baixa sobre a água negra. A trilha era estreita, em certos trechos tão encharcada que era preciso saltar de tufo em tufo. Maciek pisava com cuidado, de cabeça baixa. Lembrava-se do que diziam as pessoas: não se deve olhar por muito tempo para essa água.
No meio do caminho, porém, algo o obrigou a erguer os olhos. No fundo dos brejos bruxuleava uma luzinha pálida. Já era dia claro, e ela continuava lá. Piscava devagar, de forma regular, como se alguém estivesse parado com uma lamparina, à espreita. # pokaz: swiatelko
Foi então que ouviu o próprio nome.
– Maaaciek…
Baixinho, arrastado, vindo da água. Com uma voz que soava como a da sua amada esposa.
Ela sempre o chamava assim quando algo acontecia. Mas tinha ficado na fazenda além da cidade, à espera dele… Talvez fosse só impressão. Ou talvez fosse o pântano que o chamava para si.
# pytanie: O que Maciek vai fazer?
*   [Ir na direção da voz – talvez a esposa precise de ajuda.]
    { los_psa == oswojony: -> ratunek | -> utoniecie }
*   [Não se virar e seguir adiante – não pode ser ela, com certeza.]
    -> nie_odwraca_sie

= ratunek
# tlo: sciezka_po
~ pies_uratowal = true
Deu um passo para fora da trilha, depois outro, passou pelo mato cerrado e saltou sobre a lama movediça. O pântano chapinhou e agarrou-o pelos tornozelos com dedos gelados. Sentiu que lhe puxava as pernas para baixo da superfície. Foi então que o cão pulou, agarrou-o com os dentes pelo capote e deu um puxão para trás com toda a força. Maciek caiu de costas e gritou. A luzinha se apagou como soprada, e em algum lugar na névoa ecoou uma risadinha baixa.
Ficou estendido na lama, ofegante, e o animal, de pé sobre ele, rosnava para os brejos, até que a névoa se fechou sobre a água. # pokaz: upadek # dalej
-> na_grzbiecie

= utoniecie
// Bez psa: Maciek idzie za głosem i tonie – ale przeżywa. Ratuje się krzesiwem albo ratuje go Andrzej;
// bagno zabiera figurkę (zostaje tylko spokojne zakończenie) i zostawia na łydkach sine pręgi.
# tlo: sciezka_ratunek
~ pregi_na_lydkach = true
Deu um passo para fora da trilha, depois outro, passou pelo mato cerrado e saltou sobre a lama movediça. O pântano chapinhou e agarrou-o pelos tornozelos com dedos gelados. Sentiu que lhe puxava as pernas para baixo da superfície. A voz estava cada vez mais perto – agora morna, conhecida, aquela de que sentia saudade havia semanas.
– Maaaciek…
Ficou imóvel, já mergulhado até os joelhos, depois até a cintura. Não sentia frio. Sentia apenas que alguém amado se aproximava dele.
Só quando a água negra lhe chegou ao peito, entendeu. Debateu-se, mas algo o segurava pelas panturrilhas – algo que tinha dedos. A luzinha piscou bem diante do seu rosto, e Maciek viu que não era uma lamparina. Eram olhos – como aqueles de que falara Andrzej. # pokaz: oczy
{ ekwipunek ? krzesiwo:
    Então se lembrou da pederneira, que desde aquele dia trazia junto ao peito. Com as mãos dormentes arrancou-a junto com a isca e bateu – uma vez, duas – logo acima da água. A terceira faísca saltou direto nos olhos. Na água algo chiou como uma acha atirada ao fogo, o aperto nas panturrilhas afrouxou, e a luzinha se apagou como soprada. Maciek jogou-se para trás, agarrava-se aos tufos de capim, arrancava-os aos punhados, até que por fim conseguiu se arrastar para a trilha. # pokaz: iskry, ratunek
    { ekwipunek ? figurka:
        ~ ekwipunek -= figurka
        ~ figurka_w_bagnie = true
        Na trilha, sentiu o bolso leve. A estatueta chamuscada devia ter escorregado dele no pântano. Por um momento pareceu-lhe que ainda a via – uma pequena forma escura, afundando devagar – e depois não havia mais nada. # pokaz: figurka
        Não voltou para buscá-la. Por nada deste mundo.
    }
- else:
    ~ uratowal_andrzej = true
    – Maciek! Pega!
    Bem ao lado, uma vara comprida bateu na água. No dique estava Andrzej, com as alpercatas de entrecasca enlameadas e um cesto pendurado no ombro – ao raiar do dia fora ver os covos nos alagados. Maciek agarrou-se ao varapau com as duas mãos. O vizinho firmou os pés e gemeu, e o pântano puxava para o seu lado, até que finalmente soltou, com um chupão relutante. A luzinha piscou mais uma vez e se apagou. # pokaz: andrzej, ratunek
    – Eu avisei – arquejou Andrzej, quando os dois jaziam na lama. – Não dê ouvidos a vozes que vêm da água.
    { ekwipunek ? figurka:
        ~ ekwipunek -= figurka
        ~ figurka_w_bagnie = true
        No dique, Maciek sentiu o bolso leve. A estatueta chamuscada devia ter escorregado dele no pântano. Por um momento pareceu-lhe que ainda a via – uma pequena forma escura, afundando devagar – e depois não havia mais nada. # pokaz: figurka
        – Levou o que é seu – resmungou Andrzej, e cuspiu por cima do ombro esquerdo.
    }
}
Nas duas panturrilhas, onde aquela coisa o segurara, ficaram-lhe vergões roxos – compridos, estreitos, cinco de cada lado. Não sumiram nem naquele dia, nem até o fim da vida dele. # dalej
-> na_grzbiecie

= nie_odwraca_sie
Cerrou os dentes e seguiu em frente, passo a passo, sem virar a cabeça. A voz chamou ainda duas vezes, cada vez mais baixo. Depois se calou. # dalej
-> na_grzbiecie

= na_grzbiecie
# tlo: zapadlina
// Kto poszedł za głosem (pies go wyciągnął albo bagno puściło), już się odwrócił – dla niego inny tekst.
{ pies_uratowal || pregi_na_lydkach:
    O resto da subida, fez como num sonho – {pregi_na_lydkach:molhado até o peito|molhado até a cintura}, coberto de lodo, com {pregi_na_lydkach:as panturrilhas onde ainda sentia dedos alheios|os tornozelos onde ainda sentia o aperto gelado do pântano}.{ los_psa == oswojony: O cão não se afastava dele nem um passo e a todo momento olhava para trás, para a água.}
    Na Serra das Faias sentou-se numa pedra, e só ali as mãos pararam de tremer. Lá embaixo jazia Zapadlina – silenciosa, coberta de névoa como de uma mortalha. Em algum lugar ali estava a sua cabana.
- else:
    Na Serra das Faias, Maciek enfim teve coragem de olhar para trás. Lá embaixo jazia Zapadlina – silenciosa, coberta de névoa como de uma mortalha. Em algum lugar ali estava a sua cabana.
}
Depois seguiu pela estrada rumo à cidade. # dalej
-> miasto


// Koniec prologu – dalej rozdział pierwszy z Jaromirem.
=== prolog_ciag_dalszy ===
# ozdobnik
_Fim do prólogo._ # dalej
-> rozdzial_pierwszy
