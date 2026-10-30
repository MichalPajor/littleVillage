// ------------------------------------------------------------
//  Rozdział szesnasty – W głąb boru. Jaromir wchodzi do boru po Marysię.
//  Ścieżki zawracają: ubranie na lewą stronę (las wyjmuje mu z pamięci twarz
//  córki, pies ucieka sam), nacięcia na pniach (las jęczy), pies (poziomki
//  i ostry mech) albo dziura w chmurach z rady płanetnika (pragnienie).
//  O zmierzchu głosy: odpowiedział Marysi (Leszy go policzył), milczał albo
//  poszedł za Frankiem (biały wilk). Bagno z garnkami i błędnice: za światłami
//  (rozpruta torba), krąg z soli, wilk (rana dłoni), różaniec (spalony)
//  albo krzesiwo (pożar porostu). W sercu boru dąb i starzec, który zdejmuje
//  kapelusz i rośnie w Pana Lasu: „Usiądź, wnuku Maćka. Porozmawiamy”.
// ------------------------------------------------------------

=== rozdzial_szesnasty ===
# tlo: skraj_bor
# rozdzial: Capítulo décimo sexto
# tytul: Floresta adentro
Setenta anos depois de o avô Maciek ter descido a Zapadlina com o bornal no ombro, Jaromir olhou pela primeira vez na direção do bosque – não como se olha a floresta desde a lavoura, do lado seguro da cerca, mas como se olha um caminho que é preciso percorrer.
Estava parado na orla do mato novo, com o machado na mão e a sacola a tiracolo. A fita de Marysia, enrolara-a no pulso, para senti-la a cada movimento.
{ obietnica_bor:
    Um dia prometera {figurka_u_staruchy && los_psa == oswojony:à avó, no leito de morte,|ao pai} que nunca entraria na floresta, fosse quem fosse que o chamasse. Cumprira essa palavra durante treze anos. O primeiro passo entre os pinheiros deu-o com cautela, com o coração na boca, e sentiu que quebrava algo que já não teria conserto.
- else:
    {poszedl_po_wstazke:Desde que, ainda menino, entrara entre os abetos atrás da fita de Hanka, nunca se embrenhara mais do que umas dezenas de passos.|Nunca se embrenhara mais do que umas dezenas de passos, até onde os pássaros se calavam.} Não prometera isso a ninguém – as pernas davam meia-volta sozinhas quando as árvores começavam a ficar juntas demais.
}
{ droga_do_boru:
    Na picada do senhor Urbaniak, de cada toco brotavam rebentos claros, e os sulcos das rodas tinham-se coberto de musgo, embora no outono ainda passassem carroças por ali. Junto aos primeiros pinheiros grandes a estrada acabava, e adiante já não havia nada além da floresta.
- else:
    Abriu caminho pelo mato novo que chegara até a aldeia na noite do incêndio. Os abetos estavam tão juntos que ele precisava se espremer de lado, e as agulhas caíam-lhe pela gola.
}
{ ekwipunek ? szczenie_psa:
    Passadas as últimas cercas, o cachorro o alcançou – devia ter escapado de Hanka na soleira. Jaromir não teve coragem de enxotá-lo. Estendeu-lhe o tamanco de Marysia; o cachorro farejou o tamanquinho, ganiu fininho e correu na frente. # pokaz: pies
}
Depois dos primeiros pinheiros, tudo emudeceu. As agulhas caíam dos galhos a prumo, sem um sussurro, porque não havia vento que as levasse. O prado às suas costas escorria orvalho, mas ali a terra estava seca e morna, o musgo estalava sob as botas como couro ressequido, e no ar pairava um cheiro de resina e de madeira aquecida que arranhava a garganta.{ rada_przed_borem == rada_planetnika: “Onde não chove” – lembrou-se Jaromir, e apertou os dedos no cabo do machado.} # pokaz: igly
Seguiu em frente até o sol subir alto. Por fim os abetos se afastaram e ele viu um prado úmido, {pani_w_zbozu_noc == z_pochodniami:o centeio pisoteado|{pole_zbite_gradem:a lavoura batida pelo granizo|{pani_w_zbozu_noc == gonil_babe:o centeio amassado|o centeio}}} e o zimbro na orla do mato novo. Voltara ao mesmo lugar de onde partira. Tentou uma segunda vez, mantendo o sol à mão direita. E uma terceira. Todas as vezes a floresta o conduzia de volta para perto da aldeia – com brandura, com cortesia, assim como se acompanha até o portão uma visita que ninguém convidou.{ ekwipunek ? szczenie_psa: A cada tentativa o cachorro ficava um pouco para trás, com o focinho junto à casca, e voltava para Jaromir de má vontade, ganindo.}
# pytanie: Como Jaromir vai atravessar a floresta?
*   [Virar a roupa do avesso, como ensinava mestre Ignacy.]
    ~ wejscie_do_boru = ubranie_na_lewo
    # tlo: bor_suchy
    Tirou o casaco e a camisa e vestiu-os de novo com as costuras para fora.{ glos_w_lesie == kozuch: Exatamente como naquela noite de inverno, quando tinha nove anos e estava {figurka_u_staruchy:no campo, no meio da névoa|na neve, junto à floresta}.} Quando retomou a marcha, o caminho deixou de dar voltas. A floresta acolheu-o como a um dos seus – os galhos afastavam-se sozinhos para os lados, e o musgo guiava-lhe os pés.
    { ekwipunek ? szczenie_psa:
        ~ ekwipunek -= szczenie_psa
        ~ pies_pobiegl_sam = true
        O cachorro farejou-o de longe e eriçou o pelo, como diante de um estranho. Depois seguiu sozinho, atrás do cheiro de Marysia, e sumiu entre os troncos. Jaromir chamou-o até ficar rouco. # pokaz: pies_ucieka # tobolek
    }
    Caminhou muito tempo. Ao entardecer sentou-se numa raiz e tentou lembrar o rosto de Marysia – e assustou-se. Via a fita, via os tamancos, ouvia o riso dela, mas o rostinho desfazia-se como um reflexo na água onde alguém atirou uma pedra. Apertou as pálpebras e sussurrou, um por um: as sardas no nariz, o dentinho que lhe crescia torto, a covinha na bochecha esquerda. A floresta o tomara por seu – e, em silêncio, ia tirando dele o que pertencia só a Jaromir. # dalej
*   [Marcar o caminho com o machado nos troncos.]
    ~ wejscie_do_boru = naciete_pnie
    # tlo: bor_suchy
    A cada poucos troncos deixava um entalhe fundo, à altura do rosto. A resina que escorria das feridas era fria como água de poço e tão grossa que empastava o gume – precisava arrancá-lo do tronco com todo o peso do corpo. Passada uma hora, olhou para trás. Os entalhes que fizera no começo fechavam-se diante dos seus olhos – a casca deslizava sobre eles como uma pálpebra. # pokaz: naciecia
    Mas aquilo bastava: quando o caminho queria fazê-lo voltar, ele via as feridas frescas à sua frente e seguia adiante. De algum lugar no fundo da floresta, muito longe, chegou-lhe um gemido – grave, prolongado, como de uma árvore velha a tombar. Ou como se alguém muito grande sibilasse de dor. Jaromir não parou, mas as mãos começaram a tremer-lhe e não pararam até a noite. # dalej
*   { ekwipunek ? szczenie_psa } [Confiar no cachorro – faro não se perde.]
    ~ wejscie_do_boru = za_psem
    # tlo: bor_suchy
    – Procura – sussurrou Jaromir, e outra vez estendeu ao cachorro o tamanco. – Procura a Marysia.
    Desta vez não o chamou de volta. O cachorro ia com o focinho rente ao chão, em ziguezague, às vezes parava e farejava a casca à altura da mãozinha de uma criança. Os caminhos viravam, bifurcavam-se e davam meia-volta, mas o cachorro não lhes dava ouvidos – passava por cima de raízes reviradas, enfiava-se debaixo de troncos caídos, sempre direto atrás do cheiro. Jaromir ia atrás dele, rasgado, cheio de manchas roxas, com a boca cheia de agulhas. # pokaz: pies_trop
    Ao entardecer o cachorro parou junto a um pinheiro tombado e ganiu. Num toco de galho pendia um fiapo de linho branco – da camisolinha de Marysia. E embaixo do galho, sobre o musgo, alguém deixara um punhado de morangos silvestres, bem arrumados, um ao lado do outro, como para uma criança. Cheiravam tão doce que a boca de Jaromir se encheu de água; não comia nada desde a manhã.{ rada_przed_borem == rada_jagny: “O que encontrar na floresta, não coma” – lembrou-se ele, e cerrou o punho até as unhas lhe entrarem na palma.} Afastou o cachorro à força. Só então viu que o bicho tinha sangue nas patas – o musgo em volta dos morangos era cortante como vidro moído. # pokaz: poziomki # dalej
*   { rada_przed_borem == rada_planetnika } [Ir para onde não há nuvens sobre a floresta.]
    ~ wejscie_do_boru = pod_czystym_niebem
    # tlo: bor_suchy
    Em vez de olhar para os caminhos, olhava para cima. Sobre o bosque arrastavam-se nuvens cinzentas e pesadas – e entre as copas, ao longe, abria-se um buraco de céu limpo, em volta do qual as nuvens se afastavam, como a correnteza contorna uma pedra. Andava na direção daquele buraco, nem que fosse por raízes reviradas e brenhas, nem que fosse atravessando todos os caminhos, e a floresta não conseguia levá-lo para fora, porque ele não seguia nenhuma das suas trilhas. # pokaz: niebo
    Mas a nuca doía-lhe de tanto erguer a cabeça, os pés estavam esfolados até sangrar nas raízes que ele não via, e água ele não levara – em Zapadlina ninguém levava água para o bosque. Ao entardecer a língua grudava-lhe no céu da boca, e cada regato por que passava murmurava de modo tão convidativo que ele precisava virar o rosto para o outro lado. # dalej
-   -> glosy_w_borze

= glosy_w_borze
# tlo: glosy_noc
Ao cair da noite, as vozes começaram a chamá-lo.
Primeiro Hanka. Do lado esquerdo, de trás dos abetos cerrados.
– Jaromir! Volte! Ela está em casa, voltou sozinha, está ouvindo? Volte!
{ pani_w_zbozu_noc == za_spiewem:
    A voz estava inteira – quente, um pouco rouca, como Hanka falava antes que aquilo no centeio lhe levasse a metade. Agora Hanka mal sussurrava. Jaromir cerrou os dentes.
- else:
    A voz era dela, em cada rouquidão. Jaromir deu um passo naquela direção antes de se lembrar de que Hanka prometera manter o facho aceso toda noite, até que voltassem – perto da aldeia, não no fundo da floresta.
}
Depois a mãe, do lado direito, com calor e brandura, como lhe falava quando ele era pequeno:
– Filho, vem cá comigo. Estou com frio. Eu me perdi.{ glos_w_lesie == odpowiedzial: As mesmas palavras daquele inverno, quando ele tinha nove anos e respondeu. Sem tirar nem pôr.}
Depois Franek – aquele Franek, o irmão de Antek – alegre, de longe, do mesmo jeito que o chamava antigamente para o lago:
– Jaromir! Por aqui! Vem, quero te mostrar uma coisa!
E por último, fininho, do fundo da floresta, uma criança chorou.
– Papai! Papai, estou com medo!
# pytanie: O que Jaromir vai fazer?
*   [Responder a Marysia.]
    ~ glosy_boru = odpowiedzial_marysi
    – Marysia! – O grito escapou-lhe sozinho. – Estou aqui! Estou indo!
    O choro parou no meio. O bosque emudeceu. Pouco depois, em algum lugar muito perto, bem por cima da cabeça dele, alguém começou a contar, devagar, com solenidade: # pokaz: liczy
    – …setecentos e noventa e oito… setecentos e noventa e nove… – Uma pausa. – E tu. Oitocentos. Este é meu.
    { glos_w_lesie == odpowiedzial && zawolal_do_lasu:
        – Eu disse que te contaria quando chegasse a hora – acrescentou a mesma voz, calma, quase com ternura. – Chegou.
    }
    Jaromir caiu de joelhos. Por um momento não conseguia tomar fôlego – algo pesado estava deitado sobre o seu peito e o comprimia. Quando se levantou, tinha certeza de uma coisa: dali em diante a floresta sabia quem ele era e já não precisava procurá-lo. # dalej
*   [Calar-se e seguir adiante.]
    ~ glosy_boru = milczal
    Mordia a manga do casaco para não responder; tinha na boca o gosto de lã e de sangue. Hanka chamava cada vez mais desesperada, a mãe chorava, Franek ria e o chamava. E Marysia… Marysia chorou a noite inteira, mais perto e mais longe, de um lado e do outro, e repetia “papai, papai”, e cada “papai” o acertava ali onde a pequena se aconchegava à noite – debaixo da clavícula. Por fim começou a perguntar por que ele não vinha.
    Seguiu andando. Não respondeu nem uma vez. De madrugada o choro cessou – não se interrompeu, apenas se apagou devagar, baixinho, como o de uma criança que se cansou de chamar e adormeceu. Jaromir ficou muito tempo imóvel, sem saber se devia alegrar-se com aquilo. # pokaz: swit # dalej
*   [Seguir a voz de Franek.]
    ~ glosy_boru = za_frankiem
    ~ zapiski += tropy_3
    – Franek? – sussurrou Jaromir, e virou à esquerda, entre os abetos.
    A voz guiou-o por muito tempo, ria, chamava, até que por fim se calou sobre uma cova de árvore arrancada. Na escuridão, sobre um tronco caído, estava sentado o lobo branco. # pokaz: wilk
    { oblawa_wilk == wydal_wilka:
        No flanco tinha uma velha ferida de bala, mal cicatrizada – uma faixa grossa e nua de pele em meio ao pelo branco. Quando viu Jaromir, deitou as orelhas para trás e arreganhou as presas. Não atacou. Mas a noite inteira Jaromir ouviu os passos dele às suas costas – e sabia que o lobo não o seguia para guardá-lo. # pokaz: rana # dalej
    - else:
        Estava mais magro do que daquela vez no mato novo, e o focinho ganhara cãs – como o de um cachorro velho, embora desde a caçada mal tivessem passado dois invernos. Olhava para Jaromir sem raiva. Depois saltou do tronco, virou a cabeça, verificando se Jaromir o seguia, e partiu para a escuridão. # dalej
    }
-   -> bagno_w_borze

= bagno_w_borze
# tlo: bagno_blednice
No dia seguinte, ao entardecer, a floresta desceu e transformou-se em pântano.
Entre os troncos de amieiros podres havia água parada – parda, imóvel, com uma película furta-cor por cima – e dela despontavam touceiras de carriço. Cheirava a folha curtida e a ferro velho; cada inspiração deixava na língua gosto de ferrugem. Na outra margem, onde o bosque voltava a subir, a terra era seca e cinzenta. Lá não chovia. Mas para chegar lá era preciso atravessar aquilo.
Junto à margem, onde a água era rasa, havia panelas de barro – emborcadas, uma ao lado da outra, cada vez mais longe, a perder de vista. Jaromir lembrou-se do sonho que as crianças de Zapadlina tinham sonhado na primavera passada e sentiu a pele da nuca se arrepiar. # pokaz: garnki
~ zapiski += blednice_1
E então, sobre a água, acenderam-se luzes. # pokaz: blednice
Primeiro uma, depois outra, depois uma dúzia – esferas pálidas do tamanho da cabeça de uma criança, pairando sobre o carriço. Em cada uma, como numa bolha de sabão, estava encolhida uma figurinha de olhos como dois grãozinhos pretos. Aquelas luzes não lembravam os fogos-fátuos dos brejos perto da aldeia – esses só piscavam de longe. Estas chegavam perto, sussurravam e piavam fininho, como filhotes no ninho, e afastavam-se para o fundo do pântano, voltando-se a todo instante para Jaromir. Convidavam.
# pytanie: Como Jaromir vai atravessar o pântano?
*   [Seguir as luzes.]
    ~ przejscie_bagna = za_blednicami
    Seguiu-as de touceira em touceira, e as luzes serpenteavam à sua frente, piavam, esperavam. Por um momento pareceu-lhe que elas o guiavam de verdade através do pântano.
    Quando o céu ficou cinzento, viu que passara a noite inteira dando voltas em torno de uma única e mesma touceira – pisada até a terra nua. A sacola pendia-lhe do ombro rasgada de baixo a cima. O pão, o queijo, o sal e o vestidinho de lã de Marysia tinham sumido.{ ekwipunek ? ksiega: E com eles o livro de mestre Ignacy.} Só se salvara o que ele levava por dentro da camisa: o tamanco{ ekwipunek ? zoladz: e a bolota}. Um pouco adiante, sobre o carriço, o vestidinho jazia estendido, como se alguém o tivesse provado – e antes que Jaromir pudesse dar um passo, a água o puxou para baixo. # pokaz: welniak # tobolek
    ~ ekwipunek -= ksiega
    Chegou à outra margem ao amanhecer, pelas touceiras, que à luz do dia se viam bem. Tremia – e não de frio. # dalej
*   [Fazer um círculo de sal e esperar o amanhecer.]
    ~ przejscie_bagna = krag_z_soli
    Tirou da sacola o paninho com sal que Hanka lhe amarrara e despejou em volta de si um círculo, numa touceira seca. Sentou-se no meio, com o machado sobre os joelhos. # pokaz: krag
    As luzes rodearam o círculo a noite inteira, cada vez mais perto, cada vez mais insistentes, sussurravam-lhe com a voz de Hanka, com a voz da mãe, com a voz de Marysia. De madrugada uma das esferas pousou bem junto ao sal, e Jaromir viu nela, nítido como num espelho, o rostinho da filha – as sardas, o dentinho torto, a covinha na bochecha. Ela sorria para ele e estendia os bracinhos. Ficou sentado com as mãos enfiadas debaixo das coxas, para não a agarrar. A esfera não atravessou o sal. Apagou-se junto com as outras quando o sol nasceu.
    À luz cinzenta, viu um dique estreito de troncos que atravessava o pântano e que de noite não se enxergava. Passou por ele. Sal já não tinha – ficara todo no círculo, entranhado no musgo. # pokaz: grobla # dalej
*   { glosy_boru == za_frankiem && oblawa_wilk != wydal_wilka } [Seguir o lobo branco.]
    ~ przejscie_bagna = za_wilkiem
    O lobo não olhava para as luzes. Atravessava o pântano com segurança, por touceiras que Jaromir no escuro nem chegava a ver, e a cada poucos passos virava a cabeça. Jaromir pisava exatamente onde ele pisava. As luzes chiavam de raiva e mantinham-se à distância. # pokaz: wilk
    Na outra margem o lobo parou e, pela primeira vez, olhou Jaromir direto nos olhos. Jaromir não aguentou. Estendeu a mão para tocá-lo.
    – Franek? – sussurrou.
    O lobo deu uma dentada no ar – rápida, curta, como um cachorro que avisa, e não morde. Mas as presas abriram o dorso da mão de Jaromir até o osso. Quando ele ergueu a cabeça, o lobo já não estava ali. O sangue pingava-lhe dos dedos sobre o líquen cinzento e demorou muito a estancar. # pokaz: krew # dalej
*   { ekwipunek ? rozaniec } [Apertar o terço na mão e seguir em frente, rezando em voz alta.]
    ~ przejscie_bagna = z_rozancem
    – Ave Maria, cheia de graça… – começou Jaromir, e deu o primeiro passo.
    As luzes uivaram – agudo, lancinante, como pássaros presos no laço – e apagaram-se todas de uma vez. Caiu uma escuridão tão espessa que ele não via as próprias mãos. Avançou às apalpadelas, sondando as touceiras com o cabo do machado, e rezou até a garganta secar. # pokaz: ciemnosc
    ~ ekwipunek -= rozaniec
    Atravessou. Mas quando chegou à outra margem, o terço na sua mão estava carbonizado, e as contas desfizeram-se em cinza ao primeiro toque. # tobolek # dalej
*   { ekwipunek ? krzesiwo } [Tirar faíscas e seguir o seu clarão.]
    ~ przejscie_bagna = z_krzesiwem
    Tirou a pederneira do avô e bateu – uma vez, outra. As faíscas choveram sobre o carriço, e as luzes recuaram delas com um guincho, como escaldadas. Atravessou o pântano tirando faíscas a cada poucos passos, e as esferas abriam-se diante dele. # pokaz: iskry
    Na outra margem uma faísca caiu no líquen cinzento – e o líquen pegou fogo num instante, como pólvora. Jaromir pisoteou a chama, arrancou o casaco e bateu com ele no fogo, até a pele das mãos rachar. Abafou-o. Mas na floresta fez-se um silêncio tão grande que ele ouvia o próprio coração, e por muito tempo não conseguiu livrar-se da certeza de que cada árvore à sua volta estava à escuta. # pokaz: ogien # dalej
-   -> serce_boru

= serce_boru
# tlo: serce_boru
Depois do pântano, a floresta era outra.
As árvores estavam mais espaçadas, mas eram tão velhas que Jaromir não conseguia abarcar com a vista as suas copas. A casca fundira-se com o musgo numa coisa só, cinzenta e macia como pelo. Sob os pés não crescia capim, só um líquen seco e cinzento, e o ar era tão pesado e parado que cada respiração tinha gosto de pó. Ali não chovia. Nunca.
No meio da clareira erguia-se um carvalho – maior do que fora um dia o Velho Carvalho, tão grande que as suas raízes saíam da terra como dorsos de peixes enormes. No tronco abria-se uma fenda da altura de dois homens, e dela vinha um frio de porão.
De trás do carvalho chegava, baixinho, um canto. A melodia de Marysia – curta, triste. Só que desta vez não se interrompia no meio. Alguém a cantava até a última nota com uma voz grave e áspera, parecida com o ranger de uma árvore ao vento. Jaromir nunca tinha ouvido como ela terminava. Sentiu-se roubado: era ele quem devia ouvir primeiro aquele final – junto com ela, ao lado da caminha dela. # pokaz: spiew
Da sombra do carvalho saiu um velho. # pokaz: starzec
Jaromir reconheceu-o de imediato – era ele que estava na orla do bosque na noite do casamento{ poszedl_po_wstazke:, e era ele que, anos antes, esperara na penumbra da floresta junto à fita de Hanka}. Só que naquela vez estava longe. Agora Jaromir via que a samarra não era costurada, mas crescida, como casca, e que o musgo no chapéu era fresco e úmido, embora ali nunca tivesse caído uma só gota de chuva. O velho não fazia sombra.
– Setenta anos esperei – disse. A voz não saía da boca dele, mas de toda parte – das árvores, da terra, do ar. – Até que um de vocês viesse aqui sozinho.
# pytanie: O que Jaromir vai fazer?
*   [Tirar o gorro e fazer uma reverência, como diante do mais velho da aldeia.]
    ~ przed_panem_lasu = uklon
    Jaromir tirou o gorro e curvou-se profundamente. O velho observou-o por muito tempo, e depois, pela primeira vez, algo se moveu no seu rosto.
    – Educado – disse. – Isso eu não esperava de vocês. # dalej
*   [Erguer o machado e exigir a filha.]
    ~ przed_panem_lasu = uniosl_siekiere
    – Devolva-a – disse Jaromir, e ergueu o machado. – Devolva a minha filha.
    O velho olhou para o machado, e as folhas do seu cajado enegreceram e se enrolaram. # pokaz: liscie
    – {siekiera_dziadka:Conheço este ferro|Conheço ferro assim} – disse baixinho.{ wejscie_do_boru == naciete_pnie: – E tu feriste uma centena das minhas árvores. Lembro-me de cada uma.} # dalej
*   [Chamar Marysia.]
    ~ przed_panem_lasu = zawolal_marysie
    – Marysia! – gritou Jaromir. – Marysia, é o papai!
    O canto cessou. Por um instante terrível reinou o silêncio. E depois respondeu-lhe um riso – de criança, despreocupado, feliz, o riso de Marysia. Mas veio das suas costas, do pântano que ele acabara de atravessar.
    O velho balançou a cabeça como diante de alguém que cometeu um erro evidente. # dalej
-   ~ zapiski += (starzec_4, pan_lasu_8)
O velho tirou o chapéu de musgo. Debaixo dele não havia rosto, só casca – e dois olhos claros, imóveis, cravados nela fundo como nós de madeira. Depois começou a crescer. A samarra desfez-se em musgo e líquen, o cajado enraizou-se na terra, e a barba escorreu-lhe até os joelhos, depois até o chão, grisalha e espessa como o musgo do lado norte dos troncos. Da testa brotou-lhe uma galhada, larga e emaranhada como os galhos de árvores derrubadas pelo vento. Cresceu até a cabeça ficar entre as copas, e as folhas sussurraram em volta dela. # pokaz: pan_lasu
O Senhor da Floresta inclinou-se sobre Jaromir.
– Senta-te, neto de Maciek – disse, e com a sua voz a floresta inteira estremeceu. – Conversaremos. # dalej
-> rozdzial_szesnasty_ciag_dalszy


// Koniec rozdziału szesnastego – dalej rozdział siedemnasty.
=== rozdzial_szesnasty_ciag_dalszy ===
# ozdobnik
_Fim do capítulo décimo sexto._ # dalej
-> rozdzial_siedemnasty
