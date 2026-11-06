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
            ~ return "マチェクじいさんの斧"
        }
        ~ return "斧"
    - chleb:     ~ return "ひとかたまりのパン"
    - pies_towarzysz: ~ return "連れの犬"
    - figurka:   ~ return "焦げた木の像"
    - krzesiwo:  ~ return "火打ち金"
    - zapasy:    ~ return "町で買った食糧"
    - nasiona:   ~ return "野菜の種"
    - nozyk:     ~ return "小刀"
    - kora:      ~ return "印のある樹皮"
    - ksiega:    ~ return "昔話の帳面"
    - szczeniak: ~ return imie_psa
    - mak:       ~ return "ひと握りのケシの実"
    - monety:    ~ return "製材所の銀貨"
    - zoladz:    ~ return "老樫のどんぐり"
    - piolun:    ~ return "ニガヨモギ"
    - korale:    ~ return "ナナカマドの数珠"
    - swiatek:   ~ return "祠の聖像"
    - podkowa:   ~ return "鍛冶屋の蹄鉄"
    - krzyzyk:   ~ return "鍛冶屋の十字架"
    - gromnica:  ~ return "聖燭祭の蝋燭"
    - szczenie_psa:
        { rozdzial_trzynasty:
            ~ return "赤毛の犬"
        }
        ~ return "赤毛の子犬"
    - bucik_marysi:
        { drugi_drewniak:
            ~ return "マリシャの木靴"
        }
        ~ return "マリシャの木靴の片方"
    - wstazka_marysi: ~ return "マリシャのリボン"
    - rozaniec: ~ return "聖別されたロザリオ"
}
~ return ""

// Opis wyświetlany pod nazwą.
=== function opis_przedmiotu(p)
{ p:
    - siekiera:
        { siekiera_dziadka:
            ~ return "柄がすり減って黒ずんだ斧。マチェクじいさんがその昔、よその畑で四年働いて得た金で、町で買ったもの。婚礼の日に父がヤロミルに譲った。今ではヤロミルがこの家のあるじだ。"
        }
        ~ return "よその畑で四年働いて得た金で、町で買った。これからの暮らしのすべてが、この一本にかかっている。"
    - chleb:     ~ return "固い粗挽きの黒パン。亜麻の布切れにくるんである。長く持たせなければならない。"
    - pies_towarzysz: ~ return "痩せていて、鼻づらが長く、足ばかりが大きい。藪の怪物からマチェクを守り、あの夜からかたときもそばを離れない。"
    - figurka:
        { rozdzial_trzynasty && przeszukal_zgliszcza && not figurka_w_bagnie:
            ~ return "足もとまで届く腕をした小さな木の像。片側が焦げている。六十年あまりの時を経て、ザパドリナに戻ってきた。木はいつも冷たく湿っている。乾いた日でさえも。"
        }
        { rozdzial_trzynasty:
            ~ return "足もとまで届く腕をした小さな木の像。片側が焦げている。六十年あまりの時を経て、また表に出てきた。木はいつも冷たく湿っている。乾いた日でさえも。"
        }
        ~ return "足もとまで届く腕をした小さな木の像。片側が焦げている。魔女の小屋の灰の中から掘り出したもの。"
    - krzesiwo:
        { krzesiwo_od_babki:
            ~ return "マチェクじいさんの、小さな黒ずんだ火打ち金。マリアンナばあさんが死の床でヤロミルに託した。じいさんは最期までこれを手放さなかった。"
        }
        { krzesiwo_na_slubie:
            ~ return "マチェクじいさんの、小さな黒ずんだ火打ち金。婚礼の日に、父が斧と一緒にヤロミルに譲った。じいさんは最期までこれを肌身離さず持っていた。"
        }
        ~ return "像のそばの灰の中に落ちていた。魔女の小屋に火をつけたのは、これだったのだろうか。"
    - zapasy:
        { figurka_u_staruchy:
            ~ return "パンが二つ、ひき割り麦ひと袋、塩、豚の脂身ひと切れ、籠いっぱいの種芋。老婆からもらった銭で買った。"
        }
        ~ return "パンがひとかたまり、ひと握りの塩、ひき割り麦の小袋。何かが実るまで、これで食いつながなければならない。"
    - nasiona:   ~ return "町の市場で買った。春だったので、一刻も早く蒔かねばならなかった。"
    - nozyk:     ~ return "名の日の祝いに父がくれた贈り物。小ぶりで、木の柄はすり減り、刃は父が砥石で研ぎあげた。ヤロミルはこれで、もういくつも弓を削り出している。"
    - kora:      ~ return "渦巻きのある木の下で拾った、筒状に丸まった松の樹皮のかけら。なめらかな内側に、誰かが線や丸を幾列にも刻みつけている。文字のようでいて、ヤロミルの知る文字はひとつもない。"
    - ksiega:
        { ksiega_zatrzymana:
            ~ return "革で綴じたイグナツィ先生の分厚い帳面。ていねいな右上がりの字で、ブナの尾根のあたりに伝わる話が書きつけてある。先生がそのまま持っていてよいと言ってくれた。読めるのは昼のあいだだけ。"
        }
        ~ return "革で綴じたイグナツィ先生の分厚い帳面。ていねいな右上がりの字で、ブナの尾根のあたりに伝わる話が書きつけてある。読めるのは昼のあいだだけで、降誕祭には返さなければならない。"
    - szczeniak:
        { rozdzial_jedenasty:
            ~ return "マチェクじいさんの犬の血を引く犬。かつてはスタシじいさんにもらった子犬だったが、今では鼻づらも白くなった老犬だ。それでも寝床の足もとで眠り、それでも眠ったまま森の方へうなる。"
        }
        { rozdzial_piaty:
            ~ return "マチェクじいさんの犬の血を引く犬。かつて聖夜にスタシじいさんからもらった子犬だった。耳のとがった大きな犬に育ち、胸には白い斑がある。寝床の足もとで眠り、眠ったまま窓の方へうなる。"
        }
        ~ return "マチェクじいさんの犬の血を引く子犬。聖夜にスタシじいさんがくれた贈り物。とがった耳、胸の白い斑、体のわりに大きすぎる足。寝床の足もとで眠り、眠ったまま窓の方へうなる。"
    - mak:       ~ return "聖夜の鉢からこっそり取ったケシの実をひと握り包んだ布切れ。イグナツィ先生の帳面によれば、真夜中の女は近づく前に、その粒をひとつ残らず数えなければならない。"
    - monety:    ~ return "片面に鷲の刻まれた、重く冷たい銀貨。ひと夏、板を積む仕事をした礼に、ウルバニャクの旦那から受け取ったもの。"
    - zoladz:    ~ return "切り倒された老樫の根もとで拾った、大きくてつややかなどんぐり。中で何かが生きているかのように、今も温かい。"
    - piolun:    ~ return "苦く鋭い匂いのする、灰緑色の茎の束。聖霊降臨祭にハンカがくれた。その日に水から出てくるものは、火よりもニガヨモギを恐れるという。"
    - korale:    ~ return "ルサルカたちと過ごした夜のあと、桟橋で見つけたナナカマドの数珠。ヴイチク家の娘カシカのものだった。今も濡れていて、流れたばかりの血のように赤い。"
    - swiatek:   ~ return "幼子を抱いた木彫りの聖母。ウルバニャクの旦那の手下が森の下の祠を掘り起こしていたとき、夜のうちにその荷車から抜き出した。雨に洗われて顔はすり減り、ほとんど見分けられない。古いニワトコの隠れ家の板の下に隠してある。"
    - podkowa:   ~ return "ハンカの父が婚礼のために打った鉄の蹄鉄。両端を上に向けて家の戸口の上に掛けてある。悪いものが入ってこないように、そして幸せがこぼれ落ちないように。"
    - krzyzyk:   ~ return "革紐に通した小さな鉄の十字架。ハンカの父が婚礼のために打ったもの。ハンカは首に掛けて、外さずにいる。決して外すなと、鍛冶屋の父に言いつけられたのだ。"
    - gromnica:  ~ return "聖燭祭にブコヴィエツで祝別された太い蜜蝋の蝋燭。どの家にもなくてはならない。雷の夜にも、お産にも、死にぎわにも。"
    - bucik_marysi:
        { drugi_drewniak:
            ~ return "菩提樹を削った小さな木靴がひと組。赤く塗られ、ドブロスワフじいさんの古い帽子の毛氈が内に張ってある。もう片方は、白い狼が樫の下から運んできた。"
        }
        { dlug_jagny == oddany_drewniak:
            ~ return "菩提樹を削った小さな木靴。赤く塗られ、ドブロスワフじいさんの古い帽子の毛氈が内に張ってある。もう片方はヤグナが持っていった。"
        }
        { rozdzial_siedemnasty:
            ~ return "菩提樹を削った小さな木靴。赤く塗られ、ドブロスワフじいさんの古い帽子の毛氈が内に張ってある。もう片方は森に残された。"
        }
        ~ return "菩提樹を削った小さな木靴。赤く塗られ、ドブロスワフじいさんの古い帽子の毛氈が内に張ってある。もう片方はライ麦畑に残った。それを手にしていた女のもとに。"
    - wstazka_marysi:
        { pani_w_zbozu_noc == gonil_babe:
            ~ return "聖ヨハネの祝日の前夜、ハンカがマリシャの髪に編みこんだ赤いリボン。畦のアザミに引っかかっていた。"
        }
        ~ return "聖ヨハネの祝日の前夜、ハンカがマリシャの髪に編みこんだ赤いリボン。若木の林のはずれのネズの枝に、子どもの小さな手が届くほどの高さで引っかかっていた。"
    - rozaniec: ~ return "ブコヴィエツの神父が聖別した木のロザリオ。ヤロミルはこれにかけて、異教の習わしとは縁を切ると誓った。"
    - szczenie_psa:
        { rozdzial_dziewietnasty && not marysia_odzyskana:
            ~ return "胸に白い斑のある赤毛の犬。マチェクじいさんの犬の血を引いている。マリシャが眠っていた長腰掛けの下で眠り、どうなだめてもそこから出てこない。"
        }
        { rozdzial_trzynasty:
            ~ return "胸に白い斑のある赤毛の犬。マチェクじいさんの犬の血を引いている。脚の長い犬に育ち、どこへ行くにもマリシャのあとをついて歩き、マリシャに声を荒らげる者には誰かれかまわずうなる。"
        }
        ~ return "胸に白い斑のある赤毛の子犬。マチェクじいさんの犬の血を引いている。見つけたものは何でもかじり、マリシャの揺りかごのそばで眠り、かたときもそばを離れない。"
}
~ return ""
