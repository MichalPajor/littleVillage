// ------------------------------------------------------------
//  Rozdział dziewiętnasty – Świt. Dwie drogi po rozdziale osiemnastym.
//  [Marysia żyje] powrót o świcie, dług u Jagny (wstążka, drewniak albo odmowa),
//  lato i żniwa, pod koniec sierpnia kijanki nad jeziorem – mamuny piorą mały całun
//  (cenę za zmycie imienia wybiera się w r20, w noc Zaduszek). Jesień, mgła pod płotami,
//  gromnice gasną.
//  [zły wybór] Hanka poznaje po zapachu, co Jaromir przyniósł; ciało pochowane,
//  oddane Jagnie, spalone albo zakopane pod młodnikiem; trumienka z bzu, wianki,
//  kołysanka; jesień – „Przyjdzie?”; paliła się tylko gromnica Hanki.
// ------------------------------------------------------------

=== rozdzial_dziewietnasty ===
{ marysia_odzyskana:
    -> powrot_z_marysia
- else:
    -> powrot_bez_niej
}

= powrot_z_marysia
# tlo: laka_swit
# rozdzial: Capítulo décimo nono
# tytul: A aurora
O sol saiu de trás da floresta bem no instante em que Jaromir chegou à orla do mato novo. Nos renques de feno o orvalho cintilou tanto que lhe doeram os olhos, e na seara cantou uma cotovia – o primeiro pássaro que ouvia em três dias.
{ ekwipunek ? szczenie_psa:
    O cão passou-lhe à frente e disparou rumo à aldeia com tamanho alarido que lhe responderam todos os terreiros de Zapadlina. # pokaz: pies
}
{ wilk_przy_jaromirze && znak_rozpoznania != po_wilku:
    O lobo branco acompanhou-os até os últimos abetos e ali se sentou. Quando Jaromir olhou para trás, pouco depois, ele já não estava. # pokaz: wilk
}
Hanka veio correndo da casa, com a cantiga de ninar cortada no meio de uma palavra, descalça, pela relva molhada, de braços estendidos à frente – como se temesse que, se os baixasse, acordaria junto a um facho de pinho apagado. Não gritou.{ pani_w_zbozu_noc == za_spiewem: Não conseguia. Da garganta só lhe saía um silvo seco, entrecortado.} Alcançou-os a meio caminho e abraçou os dois, com toda a força, até Marysia dar um guincho de indignação. Enterrou o rosto nos cabelos da filha e por um momento apenas respirou; depois desatou a rir e a chorar ao mesmo tempo, beijava a pequena nos pés sujos, nas mãos, na cabeça. Só então olhou para Jaromir, para as faces lanhadas pelos galhos, e tocou-as com os dedos, devagarinho, como quem verifica se era mesmo ele. # pokaz: uscisk
Jaromir sentiu que as pernas já não o sustinham. Sentou-se na relva. Ficaram assim os três, enquanto a gente de ancinho na mão continuava parada entre os renques de feno, e ninguém se mexia.
Antek foi o primeiro a se aproximar. Não disse nada – tirou o casaco e cobriu com ele a pequena.{ zastaw_u_leszego == zastaw_cien: Só ao meio-dia, quando saíram para o terreiro, Hanka olhou para os pés do marido e não conseguiu despregar os olhos do lugar onde deveria estar a sombra dele. Não perguntou. Jaromir lhe foi grato por isso mais do que por qualquer outra coisa.} # pokaz: antek # dalej
{ dlug_u_jagny:
    -> dlug_jagny_dobry
}
-> lato_po_powrocie

= dlug_jagny_dobry
# tlo: wies_sianokosy
Jagna esperava junto à cerca, ao lado da sua carroça. Quando Jaromir passou com Marysia no colo, ergueu para ele o olho bom. # pokaz: jagna
– A primeira coisa que você trouxer da floresta – lembrou ela, baixinho. – Esse era o preço.
Hanka parou no meio do passo. Marysia agarrou-se ao pescoço de Jaromir.
# pytanie: O que Jaromir vai dar a Jagna?
*   [A fita do pulso.]
    ~ dlug_jagny = oddana_wstazka
    Jaromir ergueu a mão com o laço vermelho no pulso. – Ela ia na frente enquanto eu afastava os galhos – disse. – Saiu da floresta antes de eu trazer a minha filha.
    ~ ekwipunek -= wstazka_marysi
    Jagna observou-o sem uma palavra, e então os cantos da sua boca estremeceram. Tirou-lhe a fita do pulso e guardou-a no seio. – O que esteve na floresta e voltou vai me servir no ofício – disse. # tobolek
    Hanka apertou os lábios. Aquela fita, ela a trançara nos cabelos de Marysia na véspera de São João. # dalej
*   [O tamanco que trazia junto ao peito.]
    ~ dlug_jagny = oddany_drewniak
    – Eu o trouxe junto ao coração – disse Jaromir. – Na frente dela. – Enfiou a mão por baixo do casaco e estendeu a Jagna um sapatinho vermelho{ drugi_drewniak: – um dos dois}.
    { drugi_drewniak:
        ~ drugi_drewniak = false
    - else:
        ~ ekwipunek -= bucik_marysi
    }
    Jagna virou-o entre os dedos e cheirou o feltro de dentro. – Esteve no centeio com aquela e esteve na floresta – resmungou. – Que seja. – Atirou-o no cesto das ervas. # tobolek
    Marysia seguiu o tamanco com os olhos e, quando a carroça partiu, rompeu num choro como não chorara nem debaixo do carvalho. Desde aquele dia não deixou que lhe calçassem sapato nenhum – esperneava e gritava, até que Hanka acabou cedendo. A pequena andou descalça até a primeira neve. # dalej
*   [Recusar – uma criança não é uma coisa.]
    ~ dlug_jagny = dlug_odmowiony
    – Você não vai tê-la – disse Jaromir. – Nem hoje, nem nunca.
    Jagna não ergueu a voz. – Não vim por ela – respondeu. – Vim pelo que me é devido. – Atrelou o cavalo. – Dívida não apodrece, Jaromir. Sabe esperar.
    Partiu devagar. Naquela noite Hanka pendurou sobre a caminha da pequena tudo o que tinha: uma cruzinha, uma coroa de ervas, uma faquinha. Não dormiu até o amanhecer. # dalej
-   -> lato_po_powrocie

= lato_po_powrocie
# tlo: zniwa
Marysia não se lembrava de nada.{ rada_przed_borem == rada_ksiedza: O padre de Bukowiec tivera razão.} Quando lhe perguntavam onde estivera, olhava para eles espantada e dizia que tinha dormido. Tinha medo do escuro – desde então um facho de pinho ardia todas as noites na janela, embora já não esperassem ninguém – e nunca mais cantarolou a sua melodia. Hanka ficava à escuta junto à caminha da pequena a cada anoitecer, mas em vão.
A colheita foi tardia e pesada. O calor pairava sobre os campos, no ar flutuava a poeira das espigas e o cheiro da palha aquecida, e as foices tiniam da aurora ao cair da noite.{ pole_zbite_gradem: Jaromir, que não tinha o que ceifar no seu próprio campo, trabalhava a jornal na casa de Staś e na dos Kowalczyk, por um feixe de cada dez.}{ zastaw_u_leszego == zastaw_siekiera: Rachava lenha com um machado emprestado do sogro – o cabo era liso demais, grosso demais, não era o dele.}{ zastaw_u_leszego == zastaw_krzesiwo: Acendia o fogo com as brasas dos vizinhos; pederneira própria, já não tinha.}
{ pies_pobiegl_sam:
    ~ ekwipunek += szczenie_psa
    Uma semana depois, numa noite de chuva, um cão ganiu à porta. Estava magro como um graveto, com as patas feridas até sangrar. Jaromir deixou-o entrar sem uma palavra, e o cão dormiu dois dias seguidos debaixo do banco de Marysia. # tobolek
}
{ znak_rozpoznania == po_wilku:
    Ao entardecer, Antek parava à beira do campo e ficava escutando. Desde aquela manhã não vinha mais da floresta uivo nenhum.
}
Mas a água não lhes dava sossego. Marysia não queria ir ao lago, e quando Hanka lavava roupa no riacho, a pequena se escondia atrás da saia dela, ficava toda rígida e não tirava os olhos da correnteza.{ dar_pominiety: Em julho Hanka encontrou na soleira uma coroa de arruda molhada – igual à que Jaromir levava todo ano às pedras do outro lado do lago. Estava numa poça, embora não chovesse havia uma semana.} # dalej
-> kijanki

= kijanki
# tlo: calun_noc
No fim de agosto, na noite em que se completavam três anos desde que Marysia viera ao mundo, Jaromir acordou com umas pancadas. Compassadas, molhadas, vindas do lago – um batedor de roupa contra a pedra. Lembrava-se daquele som do tempo em que Marysia ainda estava no berço.
Olhou para o banco junto ao forno. A pequena dormia enroscada, com o punhozinho sob a face. Hanka respirava tranquila.
Saiu sem ruído, descalço, contornou o lago pela margem e agachou-se entre os juncos do outro lado, bem junto às pedras chatas. Ajoelhadas sobre elas estavam as mamunas – corcundas, molhadas, em farrapos de musgo – lavando na água algo pequeno e claro. Do tamanho exato de uma criança. Não chamavam nenhum nome. Quando o junco farfalhou, a mais velha nem sequer levantou a cabeça. # pokaz: mamuny
{ dar_pominiety:
    – Uma vez esqueceste, patrão – grasnou ela para a água. – Não vamos lavar mais devagar.
- else:
    – Hoje não, patrão – grasnou ela para a água. – Lavamos o que a água nos traz.
}
– No Dia de Finados traremos o que estiver lavado – acrescentou uma segunda. # dalej
-> jesien_przed_zaduszkami

= jesien_przed_zaduszkami
# tlo: jesien_zaduszki
~ zapiski += pan_lasu_11
O outono chegou cedo. A debulha nos celeiros, a semeadura do centeio de inverno, a espadelagem do linho – a aldeia fazia o seu trabalho como todo ano, e Jaromir se agarrava a qualquer serviço, só para não ficar a sós com os pensamentos. Marysia crescia. Em outubro, pela primeira vez desde a volta, riu alto à mesa, e Hanka saiu para a entrada e demorou muito a voltar.
Jaromir não contou a Hanka o que vira nas pedras do outro lado do lago. Mas toda noite, antes de adormecer, pensava em quanto faltava ainda para Finados, e a cada vez lhe parecia que menos do que na noite anterior.
Quanto mais se aproximava o Dia de Finados, mais silêncio havia em Zapadlina. As pessoas voltavam dos campos antes do escurecer, trancavam as portas, e da floresta, ao cair de cada tarde, vinha pelos prados uma névoa pesada e úmida, até rente às cercas. Jaromir lembrava-se de cada palavra: “No Dia de Finados irei à aldeia. Então acertaremos as contas até o fim.” # pokaz: mgla
No primeiro de novembro a aldeia foi ao cemitério de Bukowiec. Naquele ano, em vez de lamparinas, as pessoas levavam de casa velas da Candelária. No caminho de volta apagaram-se de um só sopro, todas, embora o ar estivesse parado. # pokaz: zgasly # dalej
-> rozdzial_dziewietnasty_ciag_dalszy

= powrot_bez_niej
# tlo: laka_swit
# rozdzial: Capítulo décimo nono
# tytul: A aurora
O sol saiu de trás da floresta bem no instante em que Jaromir chegou à orla do mato novo. Nos renques de feno o orvalho cintilou, e na seara cantou uma cotovia. Jaromir nem a ouviu.
Hanka veio correndo da casa, ainda com a cantiga de ninar nos lábios, descalça, pela relva molhada, de braços estendidos à frente. A meio caminho, afrouxou o passo. Depois parou.
Não gritou.{ pani_w_zbozu_noc == za_spiewem: Não conseguia.} Tomou a criança dos braços de Jaromir, com cuidado, como se pega alguém que dorme, e enterrou o rosto nos cabelinhos, como fazia toda noite. Cheirou-os longamente. Os cabelos não cheiravam a nada – nem a leite, nem a fumaça, nem a ela. Compreendeu. # pokaz: kolysze
Sentou-se na relva com ela e começou a embalá-la. A gente de ancinho na mão continuava parada entre os renques de feno, e ninguém se mexia. Antek foi o primeiro a se aproximar. Tirou o gorro. # pokaz: antek
{ wilk_przy_jaromirze && znak_rozpoznania != po_wilku:
    O lobo branco, que seguira Jaromir por todo o mato novo, ficou junto aos últimos abetos. Quando alguém olhou para aquele lado, ele já não estava. # pokaz: wilk
}
{ ekwipunek ? szczenie_psa:
    O cão deitou-se aos pés de Hanka e ganiu, baixinho, sem parar, até que alguém o puxou dali. # pokaz: pies
}
{ zastaw_u_leszego == zastaw_cien:
    Ninguém notou que Jaromir não fazia sombra. Ninguém olhava para ele.
}
{ dlug_u_jagny:
    Jagna aproximou-se pelo lado da cerca e inclinou-se sobre a criança nos braços de Hanka. Observou os pezinhos rígidos e o sorriso comportado, petrificado. Depois endireitou-se e disse a Jaromir em voz baixa, para que Hanka não ouvisse: – Isso não é a sua filha. É madeira. Saiu da floresta logo atrás de você. Posso levá-lo no lugar da dívida. Sei o que se faz com uma coisa dessas. # pokaz: jagna
- else:
    O velho Staś veio mancando com o cajado, olhou para a criança e se benzeu. – Criança da floresta não se enterra em chão bento – resmungou. – No tempo do meu avô, quando inda não tinha igreja em Bukowiec e pra todo enterro se ia até a cidade, mesmo assim todo mundo sabia… Ou o fogo, ou na beira do mato. # pokaz: stas
}
Jaromir lembrava-se da voz debaixo do carvalho: “Vais enterrá-lo como teu.”
# pytanie: O que Jaromir vai fazer com o corpo?
*   [Enterrá-lo como filha, no cemitério.]
    ~ cialo_kopii = pochowane
    Tirou o corpo dos braços de Hanka e levou-o para casa. Deitou-o no banco onde dormia Marysia e cobriu-o com um pano de linho. # dalej
*   { dlug_u_jagny } [Entregá-lo a Jagna.]
    ~ cialo_kopii = oddane_jagnie
    Hanka não queria largá-lo. Só o largou quando Jagna lhe pousou a mão sobre os olhos e sussurrou alguma coisa. Jagna envolveu o corpo num lençol de linho, acomodou-o na carroça entre os cestos de ervas e partiu devagar para Bukowiec. A dívida estava paga. # dalej
*   [Queimá-lo no forno.]
    ~ cialo_kopii = spalone
    À noite, quando Hanka enfim adormeceu de exaustão, Jaromir acendeu um fogo forte. Demorou muito a criar coragem para pôr a criança nas chamas. Quando por fim o fez, ela não ardeu como um corpo. Estalava como lenha de pinho, chiava de resina, e a fumaça cheirava a agulhas de pinheiro. De manhã, nas cinzas, só havia carvões.
    Hanka viu a cinza. Não disse nada. Desde aquela manhã não acendeu o forno uma única vez – quem acendia era sempre ele. # dalej
*   { not dlug_u_jagny } [Enterrá-lo junto ao mato novo, como aconselha Staś.]
    ~ cialo_kopii = pod_mlodnikiem
    Cavou a cova sozinho, debaixo dos últimos abetos, onde a terra era macia de agulhas. Hanka ficou ao lado e não se deixou consolar. # dalej
-   -> pogrzeb

= pogrzeb
{ cialo_kopii == pod_mlodnikiem:
    -> pogrzeb_pod_lasem
}
# tlo: pogrzeb
-> pogrzeb_trumienka

= pogrzeb_pod_lasem
# tlo: skraj_powrot
-> pogrzeb_trumienka

= pogrzeb_trumienka
~ zapiski += (dzieci_2, pan_lasu_11)
Jaromir pregou ele mesmo o caixãozinho, com a madeira do velho sabugueiro – o mesmo em cuja copa, menino, tivera o seu esconderijo.{ zastaw_u_leszego == zastaw_siekiera: Derrubou-o com o machado emprestado do sogro.} Dizia-se que uma árvore assim não se corta, porque traz desgraça. Para Jaromir já tanto fazia. O corte fresco cheirava amargo e enjoativo, e dos galhos caíram-lhe na manga as últimas florzinhas secas.{ kapliczki_drogi == ocalil_swiatka: Quando desmontava as tábuas do esconderijo, caiu-lhe nas mãos a Nossa Senhora que um dia tirara da carroça do senhor Urbaniak. Colocou-a à cabeceira.} No silêncio, só se ouvia o bater dos pregos. # pokaz: trumienka
As meninas da aldeia trançaram grinaldas de centáureas e camomila, colhidas ali mesmo na divisa, e puseram-nas sobre a tampa. Cheiravam ao sol que ninguém em Zapadlina vira naquele dia. # pokaz: wianki
{ pani_w_zbozu_noc == za_spiewem:
    Hanka não cantou – desde aquela noite no centeio, não conseguia. Dizia as palavras da cantiga de ninar, uma após outra, roucamente, sem melodia, e isso era pior que o choro.
- else:
    Hanka cantou a cantiga de ninar que entoava para Marysia toda noite. A voz não lhe falhou nem uma vez, e por isso foi o pior de tudo.
}
{ cialo_kopii == oddane_jagnie || cialo_kopii == spalone:
    No caixãozinho não havia corpo – só o vestidinho de Marysia, dobrado com esmero, como para guardar numa arca.
}
{ skarb_dla_corki:
    Antes de pregarem a tampa, Jaromir pôs no caixãozinho o tesouro do esconderijo – {skarb_jaromira == muszelka:a conchinha riscada por um dentinho torto|{skarb_jaromira == pioro:a pena babada, de canhão mordiscado|o prego coberto de ferrugem parda}}.
- else:
    ~ ekwipunek -= bucik_marysi
    Antes de pregarem a tampa, Jaromir pôs no caixãozinho {drugi_drewniak:os dois tamancos vermelhos|o tamanco vermelho – o único que lhe restara}{uklad_z_mamunami != oddany_skarb:, e ao lado {drugi_drewniak:deles|dele} o tesouro da caixinha do esconderijo – {skarb_jaromira == muszelka:a conchinha branca|{skarb_jaromira == pioro:a pena de gaio|o prego enferrujado}}. Um dia pensara em mostrá-lo à filha}. # tobolek
}
{ cialo_kopii == pod_mlodnikiem:
    Cobriram a cova junto ao mato novo com torrões de grama, e Antek fincou à cabeceira um pau com a fita vermelha amarrada, que Hanka destrançara dos cabelos da criança, para que se soubesse onde era. # dalej
- else:
    Enterraram o caixãozinho no cemitério de Bukowiec, debaixo de uma bétula. O padre{ przysiega_ksiedzu:, que recebera o juramento de Jaromir sobre o terço,} fez tudo como manda o costume e não perguntou nada.{ cialo_kopii == oddane_jagnie || cialo_kopii == spalone: Quando o coveiro enchia a cova, a terra batia na tampa com um som tão oco que Jaromir o ouviu depois por muitas noites.} # dalej
}
-> jesien_po_pogrzebie

= jesien_po_pogrzebie
# tlo: jesien_zaduszki
No fim de agosto, na noite em que se completavam três anos desde que Marysia viera ao mundo, Hanka foi sozinha ao túmulo e ficou ali sentada até o amanhecer. Jaromir não a seguiu. Não teria sido capaz de olhá-la nos olhos – porque sabia o que ela não lhe diria.{ znak_rozpoznania == po_imieniu: Se ele não a tivesse chamado pelo nome.}{ znak_rozpoznania == po_drewniaku: Deixara-se apanhar pelo vermelho, como uma criança.}{ znak_rozpoznania == po_buzi: Olhara para ela e não a reconhecera.}{ znak_rozpoznania == po_cieniu: Ele mesmo entregara aquilo que depois o enganou.}
O outono chegou cedo. A debulha nos celeiros, a semeadura do centeio de inverno, a espadelagem do linho – a aldeia fazia o seu trabalho como todo ano, e Hanka junto com ela, diligente e calada. Jaromir ouvia toda noite a mulher se levantar e andar pela sala, do forno à janela e de volta.
{ pies_pobiegl_sam:
    ~ ekwipunek += szczenie_psa
    O cão voltara da floresta ainda em julho, uma semana depois de São João, magro como um graveto, e deitara-se debaixo do banco onde dormia Marysia. Não houve jeito de tirá-lo de lá. # tobolek
}
{ dlug_u_jagny && cialo_kopii != oddane_jagnie:
    Jagna não apareceu mais, nem uma vez. A dívida não estava paga, e Jaromir sabia que ela também sabia.
}
Em outubro Hanka perguntou, sem se virar da panela: – No Dia de Finados os mortos voltam para casa. É o que dizem. – Mexeu. – Ela vem?
Jaromir não respondeu. Lembrava-se da voz da floresta, que chegara até a metade e se calara. Lembrava-se também da outra: “No Dia de Finados irei à aldeia. Então acertaremos as contas até o fim.”
Quanto mais se aproximava Finados, mais silêncio havia em Zapadlina. As pessoas voltavam dos campos antes do escurecer, trancavam as portas, e da floresta, ao cair de cada tarde, vinha pelos prados uma névoa pesada e úmida, até rente às cercas. # pokaz: mgla
No primeiro de novembro a aldeia foi ao cemitério de Bukowiec. Naquele ano, em vez de lamparinas, as pessoas levavam de casa velas da Candelária. No caminho de volta apagaram-se de um só sopro, todas, embora o ar estivesse parado. Só a vela de Hanka continuava acesa – firme, serena, como numa sala fechada. # pokaz: zgasly, gromnica_hanki # dalej
-> rozdzial_dziewietnasty_ciag_dalszy


// Koniec rozdziału dziewiętnastego – dalej rozdział dwudziesty (Ostatnia noc).
=== rozdzial_dziewietnasty_ciag_dalszy ===
# ozdobnik
_Fim do capítulo décimo nono._ # dalej
-> rozdzial_dwudziesty
