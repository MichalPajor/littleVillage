// ------------------------------------------------------------
//  Rozdział dwudziesty – Ostatnia noc. Zaduszki: mgła pod płotami, nakrycia dla dziadów.
//  Przed północą do wsi wchodzi świta Pana Lasu (słudzy, umarli, dzieci spod dębu).
//  Trzy drogi: zwrócić mu granicę (siekiera w pniaku, słowo całej wsi; z żołędziem
//  ze Starego Dębu Pan Lasu nie bierze już dzieci), zająć jego miejsce (pożegnanie
//  albo odejście bez słowa) albo – z krzesiwem – skrzesać ogień (Antek pod stodołą,
//  ślepota albo pół wsi w popiele). Trzy epilogi pół wieku później.
// ------------------------------------------------------------

=== rozdzial_dwudziesty ===
# tlo: dziady
# rozdzial: Capítulo vigésimo
# tytul: A última noite
No dia dois de novembro Zapadlina acordou numa névoa tão densa que da soleira não se via o poço. Ninguém foi ao bosque buscar gravetos nem ao lago lavar roupa. As mulheres esfregavam desde cedo os bancos e as mesas, os homens rachavam lenha rente às paredes das casas, para não se afastarem mais que dois passos da porta. Nas estacas das cercas, do lado da floresta, encanecia o líquen – seco e quebradiço, embora em todo o resto a névoa pousasse em gotas.
{ przysiega_ksiedzu:
    Antes do meio-dia veio de Bukowiec o padre, com o hissope e um balde de água benta, para aspergir as cercas. Diante da casa de Jaromir, deteve o cavalo.
    – Você está cumprindo o que jurou sobre o terço? – perguntou. # pokaz: ksiadz
    { cialo_kopii == spalone || cialo_kopii == pod_mlodnikiem:
        Jaromir ficou calado. O padre deu meia-volta; a cerca deles, não a aspergiu.
    - else:
        – Estou cumprindo – respondeu Jaromir. O padre aspergiu a cerca duas vezes.
    }
}
Em cada peitoril pousou uma tigela de cevadinha e uma caneca de água. Em cada sala deixou-se à mesa um lugar a mais – para os que voltam naquela noite. # dalej
{ marysia_odzyskana:
    Hanka sentou Marysia junto ao forno e não tirou os olhos dela.
- else:
    Hanka pôs dois lugares a mais: um para as almas dos antepassados, outro pequeno, com a colherzinha de pau que Jaromir entalhara no inverno passado. Ninguém disse uma palavra.
}
{ ekwipunek ? szczenie_psa:
    O cão ruivo enfiou-se debaixo do banco e não saiu de lá nem por um osso.
}
{ uboze == nakarmione:
    O pires de leite que Jaromir deixara atrás do forno ao amanhecer continuou intocado até a noite. No canto, alguma coisa raspou, inquieta, o dia inteiro.
}
Ao cair da tarde a névoa adensou-se junto às cercas e parou. Não se movia, embora o vento sacudisse os telhados de palha. As velas da Candelária que se tinham apagado na volta do cemitério não queriam acender – os pavios chiavam e enegreciam.
{ not marysia_odzyskana:
    Só a vela de Hanka ardia sobre a mesa, firme, igual à véspera. # pokaz: gromnica_hanki
}
Jaromir sentou-se na soleira. Encostou ao batente o machado {zastaw_u_leszego == zastaw_siekiera:do sogro|do avô}, com o cabo à mão.{ ekwipunek ? krzesiwo: No bolso sentia o frio da pederneira.} Esperou. # pokaz: prog # dalej
-> swita_pana_lasu

= swita_pana_lasu
# tlo: swita
Vieram antes da meia-noite.
Primeiro fez-se silêncio – um silêncio tamanho que Jaromir ouvia, lá dentro, as brasas estalando no forno. Depois a névoa se abriu, e pela estrada da floresta entrou na aldeia o séquito.
Andavam devagar, sem o menor ruído. Das primeiras fileiras vinha um cheiro de lodo e de umidade; das últimas – de madeira podre, adocicada. A mendiga caolha, em farrapos, com o seu cajado. A Dama da Meia-Noite, alta, chata como uma sombra na parede{ polnocnica == policzyla_mak:, com as sementes de papoula no punho cerrado}. As rusalkas de camisolas molhadas, chamadas do lodo fora do seu tempo – escorria-lhes água dos cabelos, e no meio delas ia Kaśka, a filha dos Wójcik{ ratunek_franka == krzyzem: e Bartek, o filho do moleiro, com uma alga enrolada no pescoço}. As mamunas com os seus batedores de roupa. A velha do centeio, encurvada, com espigas nos cabelos{ not wilk_przy_jaromirze: e um tamanco vermelho na mão}. As luzinhas errantes, que balançavam sobre as cabeças como lanternas.{ los_figurki == figurka_u_stwora: A criatura dos brejos, corcunda, com a estatueta apertada contra o peito, como uma mãe aperta o filho.}{ poludnica_uklon: A Dama do Meio-Dia, de camisola branca; ao passar, fez uma reverência a Jaromir – igual àquela vez, no restolho.} As crianças sob o carvalho, de mãos dadas. Nenhuma fazia sombra. # pokaz: swita, dzieci # dalej
{ not marysia_odzyskana:
    Entre elas havia uma que não dava a mão a ninguém. Descalça, de camisolinha branca, sem fita nos cabelos. Andava mais devagar que as outras e olhava para as casas, como se buscasse o caminho de casa. Hanka a viu pela janela. Não gritou. Só apertou contra si a vela, com tanta força que a cera lhe escorreu pelos dedos, e a chama nem tremeu. # pokaz: marysia
}
Vinham também os mortos de Zapadlina. O velho Wójcik{ pochowek_wojcika == pochowany_za_murem || trzy_noce == rozkopany_grob: – com o rosto virado para a terra, embora andasse direito}.{ trzy_noce == czuwanie_przy_kolysce: A senhora Wójcik, de mãos cruzadas sobre o peito{ korale_kaski == oddane: e com o colar da filha debaixo do lenço}.} A avó Marianna. À frente de todos eles – o avô Maciek, de machado à cinta e bornal ao ombro, tal como setenta anos antes, quando desceu pela primeira vez a Zapadlina. Ao passar diante da casa, olhou para o neto e fez-lhe um aceno de cabeça. # pokaz: umarli
Por último, curvado para não enganchar a galhada no céu, vinha o Senhor da Floresta. Cada passo dele era comprido como uma leira. O musgo brotava por toda parte onde ele pisava e logo encanecia de geada. # pokaz: leszy
Parou diante da casa de Jaromir. O séquito deteve-se atrás dele. # dalej
{ marysia_odzyskana: -> calun_nad_jeziorem }
-> po_calunie

= calun_nad_jeziorem
Das fileiras saíram as mamunas. A mais velha ergueu nas mãos estendidas um pequeno pano molhado, mostrou-o a Jaromir e, sem uma palavra, seguiu com as outras rumo ao lago.
– Vai – disse o Senhor da Floresta, sem virar a cabeça. – Eu espero. A noite é longa. # dalej
# tlo: calun_noc
Nas pedras chatas do outro lado do lago, as mamunas estenderam o pano e alisaram-no com as palmas. Continuava molhado, embora desde agosto tivessem passado dois meses. Do tamanho exato de uma criança. O lago jazia negro e liso, e da aldeia não chegava som nenhum. # pokaz: mamuny
– Marysia – disse a mais velha sobre a mortalha, com ternura, e bateu com o batedor na pedra. – Marysia.
{
- dar_pominiety:
    – Uma vez esqueceste – grasnou. – Agora viemos buscar o que é nosso.
- uklad_z_mamunami:
    – Não olhes assim, patrão – grasnou. – Nós cumprimos. Isto não vem de nós. Lavamos o que a água nos traz, e agora a água traz as crianças da aldeia de vocês.
- else:
    – Não somos nós que escolhemos – grasnou. – Lavamos o que a água nos traz, e agora a água traz as crianças da aldeia de vocês.
}
– Até o amanhecer ela seca – disse. – Aí ninguém mais lava o nome, nem nós. Enquanto está molhada, ainda se pode. – Sorriu com as gengivas negras. – Só que nada sai do pano de graça. # pokaz: calun
# pytanie: O que Jaromir vai fazer?
*   [Arrancar a mortalha com as próprias mãos.]
    ~ cena_caluna = cena_zdrowie
    Entrou na água até os joelhos e arrancou a mortalha da pedra. As mamunas lançaram-se sobre ele – mãos frias e molhadas enlaçaram-lhe os braços e as panturrilhas, os batedores caíam-lhe nas costas como manguais na eira. Não largou. Quando se arrastou para a margem, o pano escorria-lhe entre os punhos, e da água, por muito tempo, vieram atrás dele risinhos. # pokaz: wyrwany
    O nome se apagou. Mas o frio do lago ficou nele: dos joelhos para baixo as pernas ficaram-lhe frias como as pedras do fundo, e nada mais as aqueceu – nem o forno, nem a samarra. Nunca mais pegou na foice.
*   [Chamar Antek.]
    ~ cena_caluna = cena_antek
    – Antek! – gritou Jaromir na direção da aldeia. Antek, que não dormira naquela noite, chegou correndo ao lago antes que o eco se calasse sobre a água. Não perguntou nada. Entrou no meio das mamunas como quem entra na forja e arrancou a mortalha da pedra – a mortalha da menina que ele segurara no batismo. # pokaz: antek
    A mais velha ergueu o batedor. No silêncio estalou como um galho que se parte. Antek não gritou. Saiu para a margem com a mortalha na mão esquerda, e o braço direito pendia-lhe torcido no cotovelo, como braço nenhum se torce. O ferreiro examinou-o depois e só balançou a cabeça. Antek nunca mais voltou à forja.
*   { wilk_przy_jaromirze && znak_rozpoznania != po_wilku } [Chamar o lobo branco.]
    ~ cena_caluna = cena_franek
    ~ zapiski += tropy_6
    – Franek! – chamou Jaromir na direção da aldeia, sem saber sequer se o lobo o ouviria. O nome, a mais pesada das palavras, correu sobre a água.
    O lobo ouviu. Uma sombra branca passou veloz pela margem, caiu no meio das mamunas e rasgou a mortalha em tiras com os dentes. Elas uivaram, estridentes, e atiraram-se sobre ele todas ao mesmo tempo. A água junto às pedras ferveu como num caldeirão de roupa – e depois se alisou. # pokaz: wilk
    Junto à margem, entre os juncos, jazia um corpo branco, pesado de água. Antek, que viera correndo ao ouvir o uivo, ajoelhou-se ao lado e pousou a mão sobre o anel de pelo gasto na pata dianteira. – É ele – disse apenas. – Eu te disse.{ wilk_pod_debem == opowiedzial_o_antku: Jaromir lembrou-se das palavras debaixo do carvalho: com a tua memória na cabeça, não viverá muito.}
*   { uklad_z_mamunami == dar_swietojanski && not dar_pominiety } [Lembrar-lhes o trato e estendê-lo à filha.]
    ~ cena_caluna = cena_umowa
    – Prometi a vocês uma oferenda enquanto eu viver – disse Jaromir. – Que seja: enquanto ela viver. Quando eu faltar, ela mesma vai trazê-la.
    A mais velha observou-o sem se mexer. Depois largou o batedor. – Feito – grasnou. – Mas ela também terá de se lembrar. Todo ano. Até o fim.
    Quando Jaromir estendeu a mão para a mortalha, o pano se desfez na água como espuma. # pokaz: piana
    { przysiega_ksiedzu:
        O juramento feito em Bukowiec – de acabar com as oferendas ao que mora na água – ele o quebrou na mesma noite em que o padre { cialo_kopii == spalone || cialo_kopii == pod_mlodnikiem: dera meia-volta diante da cerca dele | lhe aspergira a cerca }.
    }
-   ~ zapiski += mamuny_4
    As mamunas recolheram os batedores e, uma após a outra, entraram na água. Jaromir tomou o caminho de volta à aldeia. # dalej
    -> powrot_do_swity

= powrot_do_swity
# tlo: swita
Quando voltou à casa, o séquito estava onde o deixara. O Senhor da Floresta não se movera nem um passo.{ cena_caluna == cena_zdrowie: Jaromir andava devagar; o frio do lago subia-lhe pelas pernas.}{ cena_caluna == cena_antek: Antek caminhava a seu lado, com o braço direito enfiado no cinto.} # pokaz: swita, dzieci, umarli, leszy
-> po_calunie

= po_calunie
{ cena_caluna == cena_franek:
    Foi então que, na fileira dos mortos, Jaromir viu Franek – não o lobo, mas Franek, magro, de cabelos até os ombros, tal como o vira pela última vez na choça junto ao lago. Franek foi até a janela de Antek e pousou a mão no caixilho, como se pousa a mão no pescoço de um cavalo. # pokaz: franek
- else:
    { wilk_przy_mnie():
        O lobo branco saiu de trás do celeiro e parou junto à soleira, rente à perna de Jaromir. Tinha o pelo eriçado. # pokaz: wilk
    - else:
        Ao lado do Senhor da Floresta estava o lobo branco. Não olhou para Jaromir. # pokaz: wilk_pan
    }
}
{ bielmo():
    Jagna surgiu da névoa do lado da cerca e parou diante do Senhor da Floresta, sem baixar os olhos.
    – Este homem me deve a primeira coisa da floresta – disse. # pokaz: jagna
    – O que saiu da floresta saiu pela minha palavra – respondeu o Senhor da Floresta.
    – A palavra é sua, a dívida é minha. – Jagna virou-se para Jaromir. – Minha avó comprava e tomava para si o que os outros tinham medo de tocar, e pagou por isso com um olho. Eu, depois dela, cobro o que cada um deve. – Chegou tão perto que ele sentiu no rosto o cheiro de erva-de-são-joão. – Você também saiu da floresta, Jaromir. Saiu primeiro, antes de trazer {marysia_odzyskana:a sua filha|aquilo}.
    Pousou-lhe um dedo na pálpebra esquerda. Era seco e morno. Quando o retirou, com o olho esquerdo Jaromir já só via uma névoa leitosa, igual à que habitava o olho dela.
    – Agora estamos quites – disse, e sumiu na névoa.
}
{ cialo_kopii == oddane_jagnie:
    Jagna saiu da névoa com um embrulho de linho e depositou-o aos pés do Senhor da Floresta. – Devolvo o que não é meu – disse. O lençol assentou, achatado; debaixo dele só restavam folhas secas e cascas de árvore. # pokaz: jagna
}
– Vim acertar as contas até o fim – disse o Senhor da Floresta. A voz dele vinha da terra, dos telhados de palha, do poço. – O Velho Carvalho, a palavra, os oratórios. Vocês tomaram tudo. Os meus vieram buscar os filhos de vocês, porque a cerca com que eu os prendia desabou. Hoje não tenho com que os deter.
De trás dele veio um cantarolar – eram as crianças sob o carvalho começando a sua melodia. Passava de casa em casa, e em cada uma, atrás das portas trancadas, alguma criança acordava e começava a chorar.{ marysia_odzyskana: Marysia também acordou. Não chorou – sentou-se no banco e ficou olhando a janela, e Hanka a segurava pelos ombros.}
– Podes devolver-me a fronteira – disse o Senhor da Floresta. – Como antigamente: vocês, não além dela; eu – uma criança por geração. Podes tomar o meu lugar – mas para os teus não voltarás.
{ ekwipunek ? krzesiwo:
    Olhou para o casaco de Jaromir, e pela primeira vez soou-lhe na voz algo semelhante ao medo. – Ou podes fazer aquilo para que trazes contigo a pederneira. Mas depois de um fogo assim não restará nem floresta, nem vocês.
- else:
    { zastaw_u_leszego == zastaw_krzesiwo:
        – O fogo, deixaste-o comigo. Foi sensato.
    }
}
# pytanie: O que Jaromir vai fazer?
*   [Devolver-lhe a fronteira.]
    ~ ostatnia_noc = zwrocil_granice
    -> ostatnia_granica
*   [Tomar o lugar dele.]
    ~ ostatnia_noc = zajal_miejsce
    -> ostatnie_miejsce
*   { ekwipunek ? krzesiwo } [Tirar fogo da pederneira.]
    ~ ostatnia_noc = skrzesal_ogien
    -> ostatni_ogien

= ostatnia_granica
# tlo: granica
– Você vai ter a fronteira – disse Jaromir. – Mas não só de mim.
Percorreu a aldeia inteira e debaixo de cada janela chamou os donos da casa pelo nome. O primeiro a sair foi Antek{ cena_caluna == cena_antek:, com a manga direita enfiada no cinto}. Depois o ferreiro e Szymon{ noc_ognia == ratowal_kapliczke:, com o rosto envolto num pano e as mãos em trapos}. Józek trazia pela mão o velho Staś, tão idoso que mal enxergava. O pai, {noga_ojca == strzaskana:de muletas|de bengala}, e a mãe, agasalhada na samarra. Por fim Hanka{ marysia_odzyskana:, com Marysia embrulhada no xale}. Seguiram-no através da névoa, com as velas da Candelária que não queriam acender{ not marysia_odzyskana: – só a de Hanka ardia}, direto pelo meio do séquito. As rusalkas e as mamunas abriam-se para os lados diante deles como a água diante da proa de um barco. # pokaz: ludzie
O toco do Velho Carvalho erguia-se na orla da floresta, negro, coberto de orelhas-de-pau. O Senhor da Floresta parou do outro lado. # pokaz: leszy # dalej
{ zastaw_u_leszego == zastaw_siekiera:
    O Senhor da Floresta enfiou a mão na escuridão às suas costas e estendeu a Jaromir o machado do avô. O cabo estava úmido da seiva da raiz que o prendera.
- else:
    O Senhor da Floresta olhou para o machado do avô nas mãos de Jaromir.
}
– {chata_macka == przy_lesie:Com este ferro o teu avô atravessou a fronteira|Com este ferro a tua gente derrubou a minha floresta} – disse. – Aquele, o primeiro, veio a mim sem ferro. Tu deixarás o teu.
~ ekwipunek -= siekiera
Jaromir cravou o machado no toco, até a madeira gemer. O cabo era pesado e frio, e as mãos tremiam-lhe tanto que teve de golpear duas vezes. # pokaz: siekiera
{ ekwipunek ? zoladz:
    ~ ekwipunek -= zoladz
    ~ zoladz_zasadzony = true
    Depois ajoelhou-se e cavou com os dedos uma covinha na terra gelada, até quebrar as unhas. Pôs nela a bolota que guardava desde menino – ainda morna. Quando a cobriu com torrões, de baixo deles despontou um broto pálido – em novembro, na geada. # pokaz: kielek
}
{ dlug_jagny:
- oddana_wstazka:
    Jagna saiu da névoa e enrolou no cabo do machado a fita vermelha de Marysia. – Eu disse que ia servir – resmungou. # pokaz: wstazka
- oddany_drewniak:
    Jagna saiu da névoa e pôs o tamanco vermelho junto ao toco. – Madeira com madeira – resmungou. # pokaz: drewniak
}
– Não iremos além – disse Jaromir. O bafo saiu-lhe da boca numa nuvem. Atrás dele, todos repetiram, desencontrados, roucos.{ pani_w_zbozu_noc == za_spiewem: Hanka só mexia os lábios.} – Palavra por palavra. # dalej
{ zoladz_zasadzony:
    O Senhor da Floresta não olhava para o machado. Olhava para o broto. Inclinou-se sobre ele tão baixo que a galhada se enganchou na névoa, e tocou-o com o dedo – com cuidado, como se toca um potrinho que acabou de se pôr de pé.
    – Aquele, o primeiro, deu-me a palavra – disse baixinho. – E eu cobrei por ela uma criança por geração, porque a palavra nada pesa, e o Velho Carvalho era meu, não de vocês. – Endireitou-se. – Este é de vocês. Brotou do meu Velho Carvalho, e plantou-o a mão que o guardou a vida inteira. Até hoje vocês só me davam o que lhes pertencia. Tu me devolveste o que é meu. Enquanto este carvalho crescer, não levarei criança nenhuma desta aldeia. Vocês – não além deste ferro. Os oratórios, vocês vão reerguê-los. Todos. E tu guardarás a palavra e a árvore até o fim dos teus dias. Todo Dia de Finados – aqui.
    Hanka agarrou a mão de Jaromir.{ marysia_odzyskana: Marysia dormia no xale e não sabia que naquele instante a resgatavam da floresta – a ela e a todas as crianças que ainda haviam de nascer em Zapadlina.}
- else:
    O Senhor da Floresta olhava para o machado cravado no toco. Depois assentiu com a cabeça.
    – Palavra por palavra – disse. – Vocês – não além deste ferro. Eu – uma criança por geração, na Noite de São João. E eu a devolverei antes que se esqueça de sua casa. Os oratórios, vocês vão reerguê-los. Todos. – Inclinou-se sobre Jaromir. – E tu guardarás a palavra enquanto viveres. Todo Dia de Finados – aqui.
}
{ przysiega_ksiedzu:
    Jaromir pensou no terço e no juramento feito em Bukowiec. Acabava de quebrá-lo{ cena_caluna == cena_umowa || cialo_kopii == spalone || cialo_kopii == pod_mlodnikiem: pela segunda vez} – e sabia que o quebraria de novo.
}
O Senhor da Floresta deu as costas e sumiu entre as árvores. Os seus servos seguiram-no, um após o outro, e a névoa fechou-se atrás do último.{ not zoladz_zasadzony || marysia_odzyskana: Os mortos não o seguiram; dispersaram-se pela estrada da Serra das Faias, cada um rumo ao seu descanso.}{ wilk_zywy() && not wilk_przy_mnie(): O lobo branco ia logo à frente do Senhor da Floresta.}{ wilk_przy_mnie(): O lobo branco ficou ainda um momento rente à perna de Jaromir, depois correu atrás deles e não olhou para trás.}
{ not marysia_odzyskana:
    { zoladz_zasadzony:
        Aquela uma, de camisolinha branca, não entrou com eles. Da orla da floresta, o Senhor da Floresta voltou-se para ela.
        – Ficou tempo demais comigo. Da casa só se lembra como num sonho – disse. – Viva, não a devolvo a vocês. Mas minha já não é.
        { ekwipunek ? wstazka_marysi:
            Jaromir aproximou-se dela, desenrolou do pulso a fita desbotada e atou-a num laço nos cabelos dela, como fazia Hanka.
        }
        A pequena ficou um momento imóvel, sem saber para onde ir. Depois correu até a mãe e tocou-lhe a mão, como fazia toda noite. Então o avô Maciek lhe estendeu a sua, e ela a agarrou sem medo. Os mortos de Zapadlina seguiram pela estrada da Serra das Faias, cada um rumo ao seu descanso, e não para a floresta – e ela junto com eles, sem olhar para trás nem uma vez. A vela na mão de Hanka apagou-se sozinha, serena, como quem apaga a luz antes de dormir. # pokaz: marysia
    - else:
        Aquela uma, de camisolinha branca, deteve-se ainda na orla. – Esta eu tomei quando não havia palavra – disse o Senhor da Floresta, sem olhar para trás. – E ficou tempo demais comigo.{ ekwipunek ? wstazka_marysi: Jaromir aproximou-se dela, desenrolou do pulso a fita desbotada e atou-a num laço nos cabelos dela, como fazia Hanka.} A pequena virou-se e acenou para a mãe com a mãozinha. Hanka ergueu o braço. A vela que segurava na outra mão apagou-se sozinha, serena, como quem apaga a luz antes de dormir. # pokaz: marysia
    }
}
Sobre Zapadlina clareou – de um jeito comum, cinzento, como em qualquer madrugada de novembro. Nas casas, as crianças pararam de chorar. # pokaz: swit # dalej
~ zapiski += (pan_lasu_12, zielarka_5, dzieci_3)
{ wilk_zywy():
    ~ zapiski += tropy_7
}
-> epilog_granica

= ostatnie_miejsce
# tlo: miejsce
– Eu fico – disse Jaromir.
O Senhor da Floresta não respondeu, até que a geada lhe pousou na barba.
– Eu sabia – disse por fim. – Desde que vieste a mim sozinho.{ glosy_boru == odpowiedzial_marysi: Contei-te naquela noite. Oitocentos. Há muito que és meu.}{ zastaw_u_leszego == zastaw_cien: A tua sombra espera por ti debaixo do carvalho.}
# pytanie: Como Jaromir vai partir?
*   [Despedir-se de Hanka{ marysia_odzyskana: e de Marysia}.]
    ~ pozegnanie = pozegnal_sie
    Entrou na sala. Hanka estava junto ao forno, pálida, com as mãos crispadas no avental. Sabia – ele viu logo.{ marysia_odzyskana: Marysia tinha voltado a adormecer no banco. Beijou-a na testa, com cuidado, para não acordá-la, e ficou muito tempo olhando-a respirar.} # pokaz: hanka
    – Você volta? – {pani_w_zbozu_noc == za_spiewem:rouquejou ela, quase sem voz|perguntou ela}.
    – Vou estar perto – disse ele. – Além da cerca. Sempre.
    Abraçou-se a ele como na noite depois do casamento, e segurou-o até que o calor dela começasse a esfriar nas mãos dele. Então o soltou. # dalej
*   [Partir sem uma palavra – assim lhes será mais leve.]
    ~ pozegnanie = odszedl_bez_slowa
    Não entrou na sala. Ficou um momento junto à janela, olhando pela fresta da veneziana Hanka, vencida pela vigília, dormir no banco com a cabeça encostada à parede{ marysia_odzyskana:, e Marysia encolhida a seu lado, com os joelhos sob o queixo|, com a vela acesa nas mãos}. Deixou no peitoril, ao lado da tigela de cevadinha para as almas, o seu gorro. Depois virou-se e foi embora. # pokaz: czapka
    De manhã Hanka encontrou o gorro e compreendeu tudo. Passou a trazê-lo no seio. # dalej
-   Foram juntos até a orla da floresta. Junto ao toco do Velho Carvalho, o Senhor da Floresta encolheu até virar um velho de samarra virada do avesso e chapéu de musgo – tal como Jaromir o vira na noite do seu casamento. # pokaz: starzec
Tirou o chapéu e pô-lo na cabeça de Jaromir. Era pesado, frio, e cheirava a casca molhada. Quando o sentiu, algo dentro de Jaromir estalou baixinho – como gelo num açude – e ele ouviu a floresta. Cada árvore. Cada raiz. Cada bicho que naquele instante adormecia na toca antes do inverno. E nesse mesmo momento não conseguiu lembrar como cheiravam os cabelos de Marysia. # pokaz: kapelusz
{ zastaw_u_leszego == zastaw_siekiera:
    O velho tirou da escuridão o machado do avô, ainda enleado em raizinhas, e encostou-o ao toco. Jaromir não o apanhou.
}
Então o antigo Senhor da Floresta deitou-se ao pé do toco. Suspirou longamente, como uma árvore quando o gelo se solta dentro dela, e começou a afundar na terra. O musgo foi cobrindo-o, as folhas foram tapando-o, até restar só um outeiro coberto de líquen grisalho. # pokaz: pagorek
– Agora contas tu – sussurrou algo debaixo da terra.
Jaromir voltou-se para o séquito. Estavam todos diante dele, à espera. # dalej
– Voltem – disse. A sua voz correu pelas copas, da floresta até o lago. – Para casa. Todos.
Foram-se. As rusalkas para o lago, as mamunas para as pedras, a velha do centeio para o restolho, o licho para a névoa. A maldição da erveira prendia as mãos do outro. As do novo, não as conhecia.
~ zapiski += (pan_lasu_12, zielarka_5, dzieci_3)
{ marysia_odzyskana:
    { cena_caluna == cena_franek:
        Da janela de Antek, Franek se afastou. Olhou uma vez para a casa onde dormia o irmão e sumiu na névoa. # pokaz: franek # dalej
    - else:
        ~ zapiski += tropy_7
        O lobo branco ficou por último. Jaromir pousou-lhe a mão na cabeça. – Vá, Franek – disse. – Você está livre. – O lobo lambeu-lhe a palma e correu para a floresta, leve, como um cão novo. # pokaz: wilk # dalej
    }
- else:
    ~ zapiski += tropy_7
    O lobo branco ficou por último. Jaromir pousou-lhe a mão na cabeça. – Vá, Franek – disse. – Você está livre. – O lobo lambeu-lhe a palma e correu para a floresta, leve, como um cão novo. # pokaz: wilk
    Na estrada ficou aquela uma, de camisolinha branca. Jaromir aproximou-se dela{ ekwipunek ? wstazka_marysi:, atou-lhe nos cabelos a sua fita desbotada} e estendeu-lhe a mão. Ela a agarrou logo, com força, como antigamente. – Vamos para casa, papai? – perguntou. – Vamos – disse ele. Entraram juntos na floresta, e a floresta os recebeu sem um farfalhar. Na casa de Hanka, a vela se apagou. # pokaz: marysia # dalej
}
-> epilog_miejsce

= ostatni_ogien
# tlo: pozar_boru
Jaromir tirou a pederneira. Era pequena, enegrecida, e guardava a memória das mãos do avô, que a desenterrara das cinzas da cabana da erveira.
– Não – disse o Senhor da Floresta. Desta vez a voz não vinha de toda parte, mas de um só lugar. – Neto de Maciek. Não. # pokaz: leszy
Jaromir {cena_caluna == cena_zdrowie:arrastou-se, sobre pernas que não sentia,|correu} até a orla do mato novo, onde o líquen grisalho já chegara rente às cercas, e bateu. Uma vez. Outra. A terceira faísca saltou no musgo seco – e ele pegou fogo num instante, e depois dele os abetos, e depois dos abetos a floresta, como arde tudo aquilo sobre o que há anos não cai uma gota de chuva. # pokaz: ogien # dalej
Houve um estrondo, como se a terra suspirasse. O calor bateu no rosto de Jaromir, cheirou a resina e a pelo queimado. Da floresta, rumo à aldeia, dispararam corças, javalis, lebres, cegos de pavor, sem fazer caso das pessoas. O séquito uivou numa só voz. As rusalkas lançaram-se rumo ao lago, as mamunas atrás delas, o licho se desfez com a primeira fumaça.{ los_figurki == figurka_w_skrzyni: Na casa de Jaromir, a arca debaixo da cama estalou e pelas frestas saiu fumaça: a estatueta, que nenhum forno quisera aceitar, ardia enfim como madeira comum.} As crianças sob o carvalho fugiram para a floresta; do fundo dela ainda vinha o seu cantarolar. Interrompeu-se no meio e nunca mais recomeçou.
O Senhor da Floresta estava de pé nas chamas e não fugia. A casca do seu rosto rachava, a galhada ardia como gravetos secos numa fogueira de São João, e os olhos fitavam Jaromir com calma, até o fim.
– Está contado – disse ainda. E desabou com estrondo, como tomba um velho carvalho. # pokaz: runal
{ wilk_zywy():
    { wilk_przy_mnie():
        O lobo branco ficou ao lado de Jaromir até o fim e não se mexeu, embora as faíscas lhe chamuscassem o pelo. # pokaz: wilk
    - else:
        O lobo branco saltou no fogo atrás do seu senhor. Antek uivou, como se fosse ele que ardesse.{ obietnica_antkowi: Ninguém ficou com o lobo – assim Jaromir prometera a Antek. Levou-o o fogo.}
    }
}
{ not marysia_odzyskana:
    Da fumaça saiu correndo a pequena de camisolinha branca, direto para os braços de Hanka. Hanka a abraçou – e no mesmo instante a vela se apagou. Nos braços ficou-lhe só cinza morna.
}
{ zastaw_u_leszego == zastaw_cien:
    A sombra não voltou para Jaromir. Ardeu debaixo do carvalho junto com todo o resto.
}
A maldição da erveira começou pelo fogo e pelo fogo terminou. Mas o vento virou. As chamas saltaram o mato novo{ cialo_kopii == pod_mlodnikiem:, passaram sobre o pequeno túmulo com o pau e a fita vermelha} e avançaram sobre a aldeia – sobre os celeiros, sobre os telhados de palha, sobre as casas onde choravam as crianças.
# pytanie: O que Jaromir vai fazer?
*   [Correr para a própria casa, buscar Hanka{ marysia_odzyskana: e Marysia}.]
    ~ noc_pozaru = antek_pod_stodola
    Jaromir {cena_caluna == cena_zdrowie:arrastou-se até em casa sobre as pernas dormentes|correu para casa}, carregou{ marysia_odzyskana: Marysia e} Hanka até o prado e, quando se virou, viu Antek. Antek, por conta própria, fora até o celeiro da família de Staś, o mais próximo do mato novo, e começara a derrubar-lhe as paredes a machadadas{ cena_caluna == cena_antek: com a mão esquerda}, para pô-lo abaixo antes que o fogo passasse por ele ao resto da aldeia. Golpeou até o telhado começar a arder sobre a sua cabeça. Gritavam-lhe que fugisse. Ele só gritou de volta: – Cuide do Franek pra mim! – e não se sabia de qual. # pokaz: stodola
    O celeiro desabou com ele dentro – e as chamas pararam nas vigas caídas. # pokaz: stodola_runela
    Jadwisia ficou até de manhã sentada nas cinzas, com o pequeno Franek no colo. # dalej
*   [Apagar sozinho as chamas na beira das cercas.]
    ~ noc_pozaru = oslepl
    Jaromir atirou-se sozinho – com o casaco, com um saco molhado, com as mãos nuas – e espancou as chamas na beira das cercas, até que a gente dos baldes conseguiu despejar sobre os telhados toda a água do poço. # pokaz: gaszenie
    O fogo não passou. Mas de manhã Jaromir já não via nem a luz, nem Hanka, que chorava sobre ele na lama. O calor lhe queimara os olhos. # dalej
*   [Arar um aceiro com a aldeia inteira.]
    ~ noc_pozaru = pol_wsi
    – Os cavalos! – gritou Jaromir. O ferreiro atrelou os cavalos ao arado, e os homens araram diante das cercas uma faixa negra de terra, enquanto as mulheres batiam no fogo com lençóis molhados. # pokaz: przesieka
    Defenderam cada telhado separadamente, e o fogo levava o que não conseguiam defender. Ao amanhecer, metade de Zapadlina jazia em cinzas: celeiros, chiqueiros, quatro casas. As pessoas estavam vivas. Mas o inverno encontrou meia aldeia sem teto. # dalej
-   Quando o sol nasceu, a floresta estava negra a perder de vista. Não restava de pé uma única árvore. Sobre o que sobrara pairava a fumaça. Diziam depois que lá, onde no coração da floresta se erguia o carvalho, havia só um monte de cinza pálida, coberto pela primeira neve. # pokaz: popiol # dalej
~ zapiski += (pan_lasu_12, zielarka_5, dzieci_3)
{ wilk_zywy():
    ~ zapiski += tropy_7
}
-> epilog_ogien

= epilog_granica
# tlo: epilog_dab
# ozdobnik
Meio século depois, no Dia de Finados, o velho Jaromir estava sentado no banco sob a cruz, na orla da floresta.{ cena_caluna == cena_zdrowie: Tinha as pernas enroladas na samarra, como havia cinquenta anos.}{ bielmo(): Do olho esquerdo, havia meio século que só via névoa.} Ao longo do bosque voltavam a erguer-se oratórios – tinham-nos levantado na primeira primavera, todos juntos, e desde então cada geração os renovava antes de Pentecostes.
{ zoladz_zasadzony:
    Rente ao toco do Velho Carvalho crescia um carvalho jovem, já mais alto que um telhado de palha. Em meio século ele se entranhara na madeira velha e engolira o machado; da casca, à altura dos joelhos, só despontava a lâmina enferrujada, em que ninguém ousava tocar. # pokaz: dab
}
{ marysia_odzyskana:
    Em volta de Jaromir sentavam-se os filhos de Marysia – três, sardentos, com covinhas nas faces – e os filhos dos filhos dela.{ cena_caluna == cena_umowa: Marysia, já de cabelos grisalhos, todo ano na Noite de São João levava um pão às pedras chatas. A ninguém dizia para quê.}
- else:
    Em volta de Jaromir sentavam-se os netos de Antek – os seus, Jaromir não chegou a ter.
}
Hanka estava sentada ao lado, com o caçula no colo, descascando-lhe uma maçã.
– Vovô, conta do Senhor da Floresta – pediu o caçula.
{ zastaw_u_leszego == zastaw_cien:
    Jaromir sorriu. Havia muito que as crianças não estranhavam que o avô não fizesse sombra. Sempre fora assim.
}
– Uns setenta anos antes de eu olhar pela primeira vez para o lado do bosque – começou ele – o meu avô desceu até Zapadlina com um bornal no ombro…
{ zoladz_zasadzony:
    A floresta, às suas costas, estava quieta. Na Noite de São João as crianças de Zapadlina acendiam fogueiras sob o carvalho jovem, pulavam sobre o fogo e catavam debaixo da árvore as bolotas do ano anterior, e de manhã todas dormiam nas suas próprias camas. Fazia meio século que nenhuma se perdia. {marysia_odzyskana:Um dos netinhos de Marysia|O mais novo dos netos de Antek} apertava agora uma bolota no punho e escutava de boca aberta. # pokaz: zoledzie # dalej
- else:
    A floresta, às suas costas, estava quieta. Só às vezes, na Noite de São João, sumia de alguma casa uma criança – e voltava depois de algumas noites, cheirando a resina, sem se lembrar de nada. Da última vez, quem se perdera por umas noites fora a pequena dos Kowalczyk. Estava agora sentada mais perto de todos e escutava de boca aberta. # dalej
}
-> koniec_opowiesci

= epilog_miejsce
# tlo: epilog_bor
# ozdobnik
Meio século depois, as crianças de Zapadlina iam ao bosque colher cogumelos e mirtilos e voltavam inteiras, com os cestos cheios até a borda. Os velhos diziam que havia muito a floresta não desencaminhava ninguém. Que as trilhas levavam aonde se queria ir.
{noc_ognia == ratowal_szymona:Junto ao mato novo, ao lado da cruzinha de bétula que o velho Staś um dia ali fincara|Junto ao oratório na orla da floresta} havia um túmulo sem corpo, com uma cruz de zimbro.{ przysiega_ksiedzu: No cemitério de Bukowiec, o padre não lhe deu lugar.}
{ pozegnanie == pozegnal_sie:
    A inscrição, Hanka mesma a entalhou, quando já era velha: Jaromir. Além da cerca.
- else:
    Não havia inscrição. Hanka pendurou na cruz o gorro dele, e o vento nunca o arrancou dali. # pokaz: czapka
}
{ marysia_odzyskana:
    Marysia ia lá todo Dia de Finados com os próprios filhos. Deixava sobre o túmulo uma tigela de cevadinha e uma caneca de água, e de manhã a tigela estava vazia e, ao lado dela, havia uma folha de carvalho fresca, verde.{ cena_caluna == cena_umowa: Na Noite de São João ainda levava um pão às pedras chatas – até o fim da vida.} # pokaz: miski
- else:
    Hanka ia lá todo Dia de Finados, enquanto as forças lhe deram. Deixava sobre o túmulo duas tigelas – uma grande e uma pequena – e de manhã ambas estavam vazias. # pokaz: miski
}
Às vezes as crianças que catavam gravetos viam na orla da floresta um velho alto de chapéu de musgo. Ficava imóvel e, quando alguma delas lhe acenava, respondia com a cabeça – devagar, com gravidade. # pokaz: starzec
{marysia_odzyskana:A bisneta dele|A pequena da família de Antek} parou um dia na orla da floresta e, pela primeira vez, olhou sozinha para o lado do bosque. Do outro lado, alguém a observou por muito tempo, como se tentasse lembrar de onde conhecia aquele rostinho. # pokaz: prawnuczka # dalej
-> koniec_opowiesci

= epilog_ogien
# tlo: epilog_wrzosy
# ozdobnik
Meio século depois, nos morros além de Zapadlina, não crescia nada além de urze e zimbro. A floresta nunca mais rebrotou. A lenha vinha de longe, de além de Bukowiec, e nas casas faltava com que aquecer. Os moços partiam para a cidade e não voltavam. De Zapadlina restavam três casas; do resto – montículos tomados pela urtiga.
{ noc_pozaru:
- antek_pod_stodola:
    No cemitério de Bukowiec, debaixo de uma bétula, ficava o túmulo de Antek. Franek, já grisalho, varria-o todo sábado.
- oslepl:
    Havia cinquenta anos que Jaromir não via nada. Restara-lhe o ouvido – e o vento, que já não tinha onde sussurrar.
- pol_wsi:
    As casas erguidas depois do incêndio eram de tijolo, trazido da cidade. O povo dizia que tijolo não arde.
}
{ cena_caluna == cena_zdrowie:
    Jaromir ficava sentado com as pernas enroladas na samarra – desde aquele Dia de Finados nada mais as aquecera.
}
Não havia maldição. Ninguém sumia na Noite de São João.{ cena_caluna == cena_umowa: Os batedores de roupa junto ao lago, ninguém os ouvia – exceto Marysia, que todo ano levava um pão às pedras chatas.} No Dia de Finados, nos peitoris, havia cevadinha e água, e de manhã continuavam intocadas.
Só uma vez, na primavera, {marysia_odzyskana:a neta|a neta de Antek} trouxe do morro alguma coisa no punho fechado e mostrou-a a Jaromir na palma aberta. Era um pequeno broto verde de abeto, macio e morno como um passarinho. # pokaz: kielek
– Jogo fora? – perguntou. – E como era, vovô, quando havia floresta?
Jaromir segurou o broto entre os dedos.{ noc_pozaru == oslepl: Não o via, mas sentia.} Depois devolveu-o a ela.
– Planta – disse. – Longe da aldeia. – Ajeitou-se melhor no banco. – Uns setenta anos antes de eu olhar pela primeira vez para o lado da floresta que já não existe… # dalej
-> koniec_opowiesci

= koniec_opowiesci
# ozdobnik
_Fim._
-> END

=== function bielmo()
~ return dlug_u_jagny && (dlug_jagny == dlug_odmowiony || (not marysia_odzyskana && cialo_kopii != oddane_jagnie))

=== function wilk_zywy()
~ return cena_caluna != cena_franek

=== function wilk_przy_mnie()
~ return wilk_przy_jaromirze && znak_rozpoznania != po_wilku && cena_caluna != cena_franek
