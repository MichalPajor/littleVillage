// ------------------------------------------------------------
//  Przedmioty i ekwipunek.
//  Dodanie przedmiotu:   ~ ekwipunek += siekiera
//  Zabranie przedmiotu:  ~ ekwipunek -= chleb
//  Sprawdzenie:          { ekwipunek ? siekiera: ... }
// ------------------------------------------------------------

LIST Przedmioty = siekiera, chleb, pies_towarzysz, figurka, krzesiwo, zapasy, nasiona, nozyk, kora, ksiega, szczeniak, mak, monety, zoladz, piolun, korale, swiatek, podkowa, krzyzyk, gromnica, szczenie_psa, bucik_marysi, wstazka_marysi, rozaniec

// Ekwipunek na początku gry – to, co Maciek przyniósł w tobołku.
VAR ekwipunek = (siekiera, chleb)

// Nazwa wyświetlana w oknie ekwipunku.
=== function nazwa_przedmiotu(p)
{ p:
    - siekiera:
        { siekiera_dziadka:
            ~ return "O machado do avô Maciek"
        }
        ~ return "Machado"
    - chleb:     ~ return "Um pão inteiro"
    - pies_towarzysz: ~ return "Cão – companheiro"
    - figurka:   ~ return "Estatueta chamuscada"
    - krzesiwo:  ~ return "Pederneira"
    - zapasy:    ~ return "Provisões da cidade"
    - nasiona:   ~ return "Sementes de hortaliças"
    - nozyk:     ~ return "Canivete"
    - kora:      ~ return "Casca com um sinal"
    - ksiega:    ~ return "Livro de contos"
    - szczeniak: ~ return imie_psa
    - mak:       ~ return "Um punhado de sementes de papoula"
    - monety:    ~ return "Moedas da serraria"
    - zoladz:    ~ return "Bolota do Velho Carvalho"
    - piolun:    ~ return "Losna"
    - korale:    ~ return "Colar de sorveira"
    - swiatek:   ~ return "Santinho do oratório"
    - podkowa:   ~ return "A ferradura do ferreiro"
    - krzyzyk:   ~ return "A cruzinha do ferreiro"
    - gromnica:  ~ return "Vela da Candelária"
    - szczenie_psa:
        { rozdzial_trzynasty:
            ~ return "Cão ruivo"
        }
        ~ return "Filhote ruivo"
    - bucik_marysi:
        { drugi_drewniak:
            ~ return "Os tamancos de Marysia"
        }
        ~ return "O tamanco de Marysia"
    - wstazka_marysi: ~ return "A fita de Marysia"
    - rozaniec: ~ return "Terço bento"
}
~ return ""

// Opis wyświetlany pod nazwą.
=== function opis_przedmiotu(p)
{ p:
    - siekiera:
        { siekiera_dziadka:
            ~ return "Um machado de cabo escuro e gasto. O avô Maciek o comprou certa vez na cidade com o dinheiro de quatro anos de trabalho em terra alheia. O pai o deu a Jaromir no dia do casamento – agora é ele o dono da casa."
        }
        ~ return "Comprado na cidade com o dinheiro de quatro anos de trabalho em terra alheia. Nele se apoia todo o futuro."
    - chleb:     ~ return "Duro, de centeio integral, embrulhado num pano de linho. Tem de durar muito."
    - pies_towarzysz: ~ return "Magro, de focinho comprido e patas grandes demais. Defendeu Maciek da criatura do matagal e desde aquela noite não se afasta dele um passo."
    - figurka:
        { rozdzial_trzynasty && przeszukal_zgliszcza && not figurka_w_bagnie:
            ~ return "Uma pequena figura de madeira com os braços descendo até os pés, chamuscada de um lado. Voltou a Zapadlina depois de mais de sessenta anos. A madeira está sempre fria e úmida, mesmo em dia seco."
        }
        { rozdzial_trzynasty:
            ~ return "Uma pequena figura de madeira com os braços descendo até os pés, chamuscada de um lado. Depois de mais de sessenta anos, veio à tona. A madeira está sempre fria e úmida, mesmo em dia seco."
        }
        ~ return "Uma pequena figura de madeira com os braços descendo até os pés, chamuscada de um lado. Desenterrada das cinzas da cabana da bruxa."
    - krzesiwo:
        { krzesiwo_od_babki:
            ~ return "A pequena pederneira enegrecida do avô Maciek. A avó Marianna a deu a Jaromir no leito de morte. O avô não se separou dela até o fim."
        }
        { krzesiwo_na_slubie:
            ~ return "A pequena pederneira enegrecida do avô Maciek. O pai a deu a Jaromir no dia do casamento, junto com o machado – o avô a levou consigo até o fim."
        }
        ~ return "Estava nas cinzas, ao lado da estatueta. Teria sido com ela que atearam fogo à cabana da bruxa?"
    - zapasy:
        { figurka_u_staruchy:
            ~ return "Dois pães, um saco de cevadinha, sal, um pedaço de toucinho e um cesto de batata-semente. Comprados com as moedas da velha."
        }
        ~ return "Um pão, um punhado de sal e um saquinho de cevadinha. Tem de durar até que alguma coisa cresça."
    - nasiona:   ~ return "Compradas na feira da cidade. Era primavera – tinham de ser semeadas quanto antes."
    - nozyk:     ~ return "Presente do pai pelo dia do seu santo. Pequeno, de cabo de madeira gasto e lâmina que o pai afiou na pedra de amolar. Com ele Jaromir já talhou mais de um arco."
    - kora:      ~ return "Um pedaço de casca de pinheiro enrolado como uma cornetinha, tirado de debaixo da árvore da espiral. No lado liso alguém gravou fileiras de traços e círculos – parecem letras, mas Jaromir não conhece nenhuma delas."
    - ksiega:
        { ksiega_zatrzymana:
            ~ return "O caderno grosso de mestre Ignacy, encadernado em couro e escrito com letra cuidadosa e inclinada – histórias das redondezas da Serra das Faias. O professor deixou que ele ficasse com o livro. Só pode ser lido de dia."
        }
        ~ return "O caderno grosso de mestre Ignacy, encadernado em couro e escrito com letra cuidadosa e inclinada – histórias das redondezas da Serra das Faias. Só pode ser lido de dia, e no Natal tem de ser devolvido."
    - szczeniak:
        { rozdzial_jedenasty:
            ~ return "Um cão da linhagem do cão do avô Maciek – outrora filhote dado pelo velho Staś, hoje já entrado em anos, de focinho grisalho. Ainda dorme aos pés da cama e ainda rosna dormindo para o lado da floresta."
        }
        { rozdzial_piaty:
            ~ return "Da linhagem do cão do avô Maciek, outrora filhote presenteado pelo velho Staś na Véspera de Natal. Cresceu e virou um cachorro grande, de orelhas pontudas e uma mancha branca no peito. Dorme aos pés da cama e rosna dormindo para o lado da janela."
        }
        ~ return "Um filhote da linhagem do cão do avô Maciek, presente do velho Staś na Véspera de Natal. Orelhas pontudas, mancha branca no peito e patas grandes demais para o resto do corpo. Dorme aos pés da cama e rosna dormindo para o lado da janela."
    - mak:       ~ return "Um paninho com um punhado de sementes de papoula surrupiadas da tigela da ceia de Natal. Segundo o livro de mestre Ignacy, a Dama da Meia-Noite tem de contar cada grãozinho antes de chegar mais perto."
    - monety:    ~ return "Pesadas e frias moedas de prata, com uma águia de um lado – o pagamento do senhor Urbaniak por um verão empilhando tábuas."
    - zoladz:    ~ return "Uma bolota grande e lisa, de debaixo das raízes do Velho Carvalho derrubado. Ainda está morna, como se algo vivesse dentro dela."
    - piolun:    ~ return "Um feixe de hastes verde-acinzentadas, de cheiro amargo e acre. Foi Hanka quem lhe deu, em Pentecostes – dizem que o que sai da água nesse tempo teme a losna mais do que o fogo."
    - korale:    ~ return "Um colar de bagas de sorveira encontrado no trapiche depois da noite das rusalkas. Pertencia a Kaśka, a filha dos Wójcik. As bagas ainda estão molhadas e vermelhas como sangue fresco."
    - swiatek:   ~ return "Uma Nossa Senhora de madeira com o Menino, tirada à noite da carroça de Urbaniak, quando seus homens desenterravam os oratórios junto à floresta. O rosto está tão gasto pelas chuvas que mal se distingue. Escondida debaixo das tábuas do esconderijo no velho sabugueiro."
    - podkowa:   ~ return "Uma ferradura de ferro forjada pelo pai de Hanka para o casamento. Fica pendurada sobre a soleira da casa com as pontas para cima, para que nada de ruim entre e para que a sorte não se derrame."
    - krzyzyk:   ~ return "Uma pequena cruz de ferro num cordão de couro, forjada pelo pai de Hanka para o casamento. Hanka a usa no pescoço e não a tira – o ferreiro ordenou que nunca o fizesse."
    - gromnica:  ~ return "Uma vela grossa de cera, benzida em Bukowiec no dia da Candelária. Toda casa tem de ter uma – para a tempestade, para o parto e para a morte."
    - bucik_marysi:
        { drugi_drewniak:
            ~ return "Um par de tamanquinhos de tília, pintados de vermelho e forrados com feltro do chapéu velho do avô Dobrosław. O outro foi trazido de debaixo do carvalho pelo lobo branco."
        }
        { dlug_jagny == oddany_drewniak:
            ~ return "Um pequeno tamanco de tília, pintado de vermelho e forrado com feltro do chapéu velho do avô Dobrosław. O outro, Jagna levou."
        }
        { rozdzial_siedemnasty:
            ~ return "Um pequeno tamanco de tília, pintado de vermelho e forrado com feltro do chapéu velho do avô Dobrosław. O outro ficou na floresta."
        }
        ~ return "Um pequeno tamanco de tília, pintado de vermelho e forrado com feltro do chapéu velho do avô Dobrosław. O outro ficou no centeio, com aquela que o segurava."
    - wstazka_marysi:
        { pani_w_zbozu_noc == gonil_babe:
            ~ return "A fita vermelha que Hanka trançou nos cabelos de Marysia na véspera de São João. Estava presa nos cardos junto à divisa."
        }
        ~ return "A fita vermelha que Hanka trançou nos cabelos de Marysia na véspera de São João. Estava pendurada num zimbro na orla do mato novo, à altura da mãozinha de uma criança."
    - rozaniec: ~ return "Um terço de madeira benzido pelo padre de Bukowiec. Sobre ele jurou que acabaria com o paganismo."
    - szczenie_psa:
        { rozdzial_dziewietnasty && not marysia_odzyskana:
            ~ return "Um cão ruivo com uma mancha branca no peito, da linhagem do cão do avô Maciek. Dorme debaixo do banco onde Marysia dormia, e não há quem o tire de lá."
        }
        { rozdzial_trzynasty:
            ~ return "Um cão ruivo com uma mancha branca no peito, da linhagem do cão do avô Maciek. Cresceu e virou um cachorro de pernas compridas, segue Marysia passo a passo e rosna para qualquer um que levante a voz para ela."
        }
        ~ return "Um filhote ruivo com uma mancha branca no peito, da linhagem do cão do avô Maciek. Rói tudo o que encontra, dorme junto ao berço de Marysia e não se afasta dela um passo."
}
~ return ""
