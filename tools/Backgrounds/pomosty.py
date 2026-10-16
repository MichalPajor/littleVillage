# Generator tel stron-pomostow miedzy rozdzialami (pory roku, wiejskie zycie):
#   budowa_tartaku  — jesien: szopa tartaku w budowie (rusztowanie, belki), robotnicy z mlotami, wozy, dzieci patrza;
#                     (# pokaz: budowa) szopa rosnie, (# pokaz: lata) pory roku sie zmieniaja, (# pokaz: hanka) Hanka
#   wykopki         — wrzesien: pole ziemniakow, kosze, ogniska z letow, babie lato; (# pokaz: zmrok) zapada zmrok, gwiazdy nad borem
#   zaduszki        — noc: cmentarz przy koscolku w Bukowcu z setkami swieczek; (# pokaz: parapet) okno chalupy z chlebem i kubkiem,
#                     (# pokaz: okruchy) chleb znika
#   zima_przedzenie — izba zima: kolowrotki (kreca sie), darcie pierza (puch fruwa, # pokaz: pierze), Hanka; ubożę za piecem (# pokaz: uboze)
#   wielkanoc       — wiosna: rozlewiska, kladka pod woda, kry na jeziorze (# pokaz: lod), dyngus — woda z wiadra (# pokaz: dyngus)
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/pomosty.py src/LittleVillage/Resources/Images
#   python3 tools/Backgrounds/pomosty.py --master <tlo> [wszystko] > podglad.svg
import sys, random
from common import *
import art, postacie, efekty
from efekty import add as _add
from wiosna import kapliczka, sciana_deski, kura
from tartak import kolo, deski, pnie, woz
from kapliczki import hut

RED = "#A8101A"


def ognisko(x, y, k=1.0):
    return (f'<path d="M{x - 10 * k:.0f} {y}C{x - 12 * k:.0f} {y - 12 * k:.0f} {x - 4 * k:.0f} {y - 16 * k:.0f} {x} {y - 26 * k:.0f}C{x + 4 * k:.0f} {y - 16 * k:.0f} {x + 12 * k:.0f} {y - 12 * k:.0f} {x + 10 * k:.0f} {y}Z" fill="{RED}" stroke="{RED}" stroke-width="1.2"/>'
            f'<path d="M{x - 14 * k:.0f} {y + 2}l{28 * k:.0f} -4M{x - 12 * k:.0f} {y - 2}l{26 * k:.0f} 6" fill="none" stroke-width="2.4"/>')


def kolowrotek(cx, cy, r):
    return (kolo(cx, cy, r) + f'<path d="M{cx} {cy}L{cx + r + 14} {cy + r + 10}M{cx - r} {cy + r + 14}H{cx + r + 20}M{cx - r + 4} {cy + r + 14}V{cy + r}M{cx + r + 16} {cy + r + 14}V{cy + r - 4}" fill="none" stroke-width="2"/>')


def gwiazdy(x, y, w, h, n, seed):
    return efekty.iskry(x, y, w, h, n=n, seed=seed, duration=3600)


# ======================= BUDOWA TARTAKU =======================
B = {}
rnd = random.Random(701)
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M0 0H390V100C300 114 200 90 110 106C60 114 30 104 0 110Z" fill="url(#hatch)" stroke="none" opacity="0.5"/>']
t.append('<path d="M-10 190C80 180 200 186 400 178V440H-10Z" fill="#EDEBE6" stroke-width="3"/>')
for i in range(16):
    t.append(spruce(-4 + i * 18, 186 - (i % 2) * 4, 60 + (i % 3) * 14, 26))
t.append('<path d="M70 196C110 230 150 250 200 290C240 322 290 344 400 360V384C290 370 236 350 190 316C140 280 100 250 56 200Z" fill="url(#water)" stroke-width="2"/>')
t.append(pnie(30, 386, 10) + deski(300, 340, 70, 6))
B["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
# rusztowanie: same slupy i belki (zawsze)
rusz = ['<path d="M150 300V200M300 300V200M190 300V210M260 300V210M150 200H300M150 250H300" fill="none" stroke-width="3"/>',
        '<path d="M150 300L190 250M260 250L300 300" fill="none" stroke-width="1.6"/>']
B["rusztowanie"] = (140, 190, 170, 120, group(rusz))
# szopa urosla (# pokaz: budowa)
szopa = ['<path d="M150 300V200H300V300Z" fill="#FFFFFF" stroke-width="3"/>', '<path d="M136 204L180 160H286L314 204Z" fill="url(#hatch)" stroke-width="3"/>',
         ''.join(f'<path d="M{x} 202V300" fill="none" stroke-width="0.8"/>' for x in range(160, 300, 12)), '<path d="M186 300V236H262V300Z" fill="#000000" stroke-width="2.4"/>']
B["szopa"] = (130, 156, 190, 150, group(szopa))
B["kolo"] = (106, 230, 56, 56, group([kolo(134, 258, 24)]))
B["robotnicy"] = (150, 150, 160, 60, group([postacie.man(170, 200, 0.6, arm="l6 -10"), postacie.man(280, 200, 0.6, arm="l-6 -10")]))
B["mlotki"] = (164, 170, 130, 30, group(['<path d="M176 186l6 -10h6v4h-4zM286 186l-6 -10h-6v4h4z" fill="#000000" stroke-width="1.2"/>']))
B["woz"] = (40, 380, 110, 40, group([woz(50, 402, 1.0)]))
B["dzieci"] = (220, 360, 110, 70, group([postacie.child(240, 428, 1.4), postacie.child(270, 428, 1.3), postacie.girl(300, 428, 1.35)]))
B["hanka"] = (300, 330, 60, 100, group([postacie.girl(330, 428, 1.9)]))
# pory roku przemijaja (# pokaz: lata): snieg pada i znika, potem liscie
B["snieg"] = efekty.platki(0, 0, 390, 300, n=24, seed=702, fall=160, duration=6000)[0]
B["liscie"] = efekty.platki(0, 100, 390, 260, n=14, seed=703, fall=120, duration=5200, r=(1.6, 2.4))[0]
p = ['<path d="M-10 432H400V844H-10Z" fill="#EDEBE6" stroke="none"/>']
for i in range(16):
    p.append(grass(rnd.uniform(0, 390), rnd.uniform(440, 840), rnd.uniform(0.9, 1.3)))
B["przod"] = (0, 422, 390, 422, group(p))
BUDOWA = ["tlo", "rusztowanie", "szopa", "kolo", "robotnicy", "mlotki", "woz", "dzieci", "snieg", "liscie", "hanka", "przod"]
B_REVEAL = {"szopa": "budowa", "kolo": "budowa", "snieg": "lata", "liscie": "lata", "hanka": "hanka"}
B_ANIM = {"robotnicy": {"type": "bob", "amplitude": 1, "duration": 800}, "mlotki": {"type": "bob", "amplitude": 4, "duration": 500},
          "woz": {"type": "drift", "amplitude": 30, "duration": 14000}, "dzieci": {"type": "bob", "amplitude": 0.6, "duration": 1500},
          "kolo": {"type": "spin", "amplitude": -360, "duration": 4000, "anchorX": 0.5, "anchorY": 0.5},
          "snieg": {"type": "rise", "amplitude": -160, "duration": 6000}, "liscie": {"type": "float", "amplitude": 6, "dx": -60, "dy": 140, "duration": 5200},
          "hanka": {"type": "bob", "amplitude": 0.5, "duration": 2000}}
B_EXTRA = {"szopa": {"fadeDuration": 4000}, "kolo": {"fadeDuration": 4000}, "rusztowanie": {"hideOn": "budowa", "fadeDuration": 3000},
           "snieg": {"hideAfter": 5000, "fadeDuration": 1500}, "liscie": {"appearAfter": 6500, "hideAfter": 6000, "fadeDuration": 1500},
           "dzieci": {"hideOn": "lata", "fadeDuration": 1500}, "robotnicy": {"hideOn": "lata", "fadeDuration": 1500}, "mlotki": {"hideOn": "lata"},
           "hanka": {"fadeDuration": 2000}, "przod": {"depth": 1.0}}
B_COMMENTS = {"tlo": "jesień nad strugą: bór, sterty pni i desek", "rusztowanie": "rusztowanie budowy (znika przy # pokaz: budowa)",
              "szopa": "szopa tartaku wyrasta (# pokaz: budowa)", "kolo": "koło wodne (# pokaz: budowa, kręci się)", "robotnicy": "robotnicy na rusztowaniu",
              "mlotki": "młotki stukają", "woz": "wóz z belkami", "dzieci": "dzieci patrzą na budowę", "snieg": "zimy przychodzą (# pokaz: lata)",
              "liscie": "i jesienie (# pokaz: lata)", "hanka": "Hanka (# pokaz: hanka)", "przod": "pierwszy plan"}
_add(B, BUDOWA, B_ANIM, B_COMMENTS, "wrony", efekty.wrony(60, 90, n=3, seed=704), before="rusztowanie")

# ======================= WYKOPKI =======================
W = {}
rnd = random.Random(705)
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M0 0H390V110C300 124 200 100 110 116C60 124 30 114 0 120Z" fill="url(#hatch)" stroke="none" opacity="0.45"/>']
t.append('<path d="M-10 210C80 200 200 206 400 198V440H-10Z" fill="#EDEBE6" stroke-width="3"/>')
for i in range(18):
    t.append(spruce(4 + i * 22, 206 - (i % 2) * 4, 50 + (i % 3) * 12, 22))
for i in range(10):
    y0 = 240 + i * 20
    t.append(f'<path d="M-10 {y0}C100 {y0 - 6} 250 {y0 + 4} 400 {y0 - 4}" fill="none" stroke-width="1.4" stroke-dasharray="10 6"/>')
for (x, y) in [(60, 300), (200, 330), (300, 290)]:
    t.append(f'<path d="M{x - 10} {y}C{x - 10} {y - 14} {x + 10} {y - 14} {x + 10} {y}Z" fill="url(#hatchDense)" stroke-width="1.4"/>')
W["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
W["ludzie"] = (40, 260, 300, 100, group([postacie.woman(80, 350, 1.0), postacie.man(160, 352, 1.0, arm="l12 18"), postacie.child(230, 350, 1.2),
                                          postacie.woman(300, 352, 1.0)]))
W["kosze"] = (60, 330, 280, 30, group(['<path d="M96 350c0 -10 20 -10 20 0zM250 352c0 -10 20 -10 20 0z" fill="url(#hatch)" stroke-width="1.4"/>']))
W["ogniska"] = (100, 360, 200, 50, group([ognisko(130, 400, 1.0), ognisko(270, 396, 0.9)]))
W["dym"] = (110, 290, 190, 80, group(['<path d="M130 370C124 350 136 340 128 322C124 312 132 304 128 296" fill="none" stroke-width="4" stroke-linecap="round" opacity="0.5"/>',
                                     '<path d="M270 368C264 350 276 340 268 322C264 312 272 304 268 296" fill="none" stroke-width="4" stroke-linecap="round" opacity="0.5"/>']))
W["iskry"] = (120, 340, 160, 60, group([f'<circle cx="{126 + i * 22}" cy="{360 - (i % 3) * 8}" r="1.4" fill="{RED}" stroke="none"/>' for i in range(7)]))
W["zmrok"] = (0, 0, 390, 440, group(['<rect width="390" height="440" fill="url(#hatchNight)" stroke="none" opacity="0.7"/>']))
W["babie_lato"] = (0, 120, 390, 120, group([f'<path d="M{20 + i * 70} {150 + (i % 2) * 30}C{50 + i * 70} {140 + (i % 2) * 30} {70 + i * 70} {170 + (i % 2) * 30} {90 + i * 70} {160 + (i % 2) * 30}" fill="none" stroke="#FFFFFF" stroke-width="1.2"/>' for i in range(5)]))
p = ['<path d="M-10 432H400V844H-10Z" fill="#EDEBE6" stroke="none"/>']
W["przod"] = (0, 422, 390, 422, group(p))
WYKOPKI = ["tlo", "babie_lato", "ludzie", "kosze", "dym", "zmrok", "ogniska", "iskry", "przod"]
W_REVEAL = {"zmrok": "zmrok"}
W_ANIM = {"ludzie": {"type": "bob", "amplitude": 1.4, "duration": 1300}, "dym": {"type": "sway", "amplitude": 3, "duration": 4600, "anchorX": 0.5, "anchorY": 1},
          "ogniska": {"type": "flame", "amplitude": 0.14, "duration": 800, "anchorX": 0.5, "anchorY": 1}, "iskry": {"type": "rise", "amplitude": 50, "duration": 1800},
          "babie_lato": {"type": "drift", "amplitude": 20, "duration": 9000}}
W_EXTRA = {"ogniska": {"noInvert": True}, "iskry": {"noInvert": True}, "zmrok": {"fadeDuration": 5000}, "przod": {"depth": 1.0}}
W_COMMENTS = {"tlo": "wrzesień: pole ziemniaków z bruzdami, kopce, bór", "ludzie": "ludzie kopią ziemniaki", "kosze": "kosze z kartoflami",
              "ogniska": "ogniska z łętów (czerwone)", "dym": "dym z ognisk", "iskry": "iskry", "zmrok": "zapada zmrok (# pokaz: zmrok)",
              "babie_lato": "nitki babiego lata płyną w powietrzu", "przod": "pierwszy plan"}
_add(W, WYKOPKI, W_ANIM, W_COMMENTS, "gwiazdy", gwiazdy(0, 10, 390, 150, 20, 706), before="ogniska")
W_REVEAL["gwiazdy"] = "zmrok"
W_EXTRA["gwiazdy"] = {"fadeDuration": 5000}
W_COMMENTS["gwiazdy"] = "gwiazdy nad borem (# pokaz: zmrok)"
_add(W, WYKOPKI, W_ANIM, W_COMMENTS, "wrony", efekty.wrony(220, 90, n=4, seed=707), before="ludzie")

# ======================= ZADUSZKI =======================
Z = {}
rnd = random.Random(708)
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<rect width="390" height="440" fill="url(#hatchNight)" stroke="none"/>',
     '<circle cx="320" cy="56" r="14" fill="#FFFFFF" stroke-width="1.6"/>']
t.append('<path d="M-10 280C80 274 200 278 400 272V440H-10Z" fill="url(#hatch)" stroke-width="2"/>')
t.append('<path d="M20 280V180H120V280Z" fill="#000000" stroke="#FFFFFF" stroke-width="1.6"/><path d="M14 184L70 136L126 184Z" fill="#000000" stroke="#FFFFFF" stroke-width="1.6"/>')
t.append('<path d="M60 136V112H80V136M70 112V98M64 104H76" fill="none" stroke="#FFFFFF" stroke-width="1.6"/>')
CROSSES = [(150, 330), (200, 310), (250, 340), (310, 316), (360, 336), (180, 370), (290, 380), (110, 360), (60, 380)]
for (x, y) in CROSSES:
    t.append(f'<path d="M{x} {y}V{y - 34}M{x - 10} {y - 24}H{x + 10}" fill="none" stroke="#FFFFFF" stroke-width="2.4"/><path d="M{x - 12} {y + 2}h24" fill="none" stroke="#FFFFFF" stroke-width="1.4"/>')
Z["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
for g in range(3):
    pts = CROSSES[g::3]
    Z[f"swieczki_{g}"] = (40, 290, 340, 110, group([f'<path d="M{x - 6 + j * 6} {y + 2}v-6h3v6z" fill="#FFFFFF" stroke-width="0.6"/><circle cx="{x - 4.5 + j * 6}" cy="{y - 6}" r="1.6" fill="{RED}" stroke="none"/>' for (x, y) in pts for j in range(3)]))
Z["ludzie"] = (140, 340, 160, 70, group([postacie.woman(170, 404, 0.9), postacie.man(210, 406, 0.9), postacie.child(240, 404, 1.0)]))
Z["kaganki"] = (160, 356, 100, 24, group([f'<circle cx="{182 + i * 34}" cy="{366}" r="2.4" fill="{RED}" stroke="none"/>' for i in range(3)]))
# okno chalupy z parapetem, chlebem i kubkiem (# pokaz: parapet)
okno = ['<path d="M40 40H350V300H40Z" fill="#EDEBE6" stroke="none"/><path d="M40 40H350V300H40Z" fill="url(#hatchNight)" stroke="none"/>',
        '<circle cx="290" cy="90" r="18" fill="#FFFFFF" stroke-width="1.6"/><path d="M40 230C120 220 260 226 350 216V300H40Z" fill="#FFFFFF" stroke-width="1.2"/>',
        '<path d="M0 0H390V440H0ZM40 40V300H350V40Z" fill="#000000" fill-rule="evenodd" stroke="none"/>',
        '<path d="M195 40V300M40 170H350" fill="none" stroke-width="10"/>', '<path d="M30 300H360V330H30Z" fill="#FFFFFF" stroke-width="3"/>',
        '<path d="M30 330H360V440H30Z" fill="url(#hatchNight)" stroke="none"/>']
Z["okno"] = (0, 0, 390, 440, group(okno))
Z["kubek"] = (230, 270, 30, 32, group(['<path d="M234 300V276H254V300Z" fill="#FFFFFF" stroke-width="1.6"/><path d="M254 282c6 0 6 10 0 10" fill="none" stroke-width="1.4"/>']))
Z["chleb"] = (120, 280, 70, 24, group(['<path d="M124 300C124 286 184 284 186 300Z" fill="url(#hatch)" stroke-width="1.6"/>']))
Z["okruchy"] = (120, 290, 70, 14, group([f'<circle cx="{128 + i * 8}" cy="{298 - (i % 2) * 2}" r="1.2" fill="#FFFFFF" stroke-width="0.6"/>' for i in range(7)]))
Z["ksiezyc_smuga"] = efekty.smuga([(150, 40), (240, 40), (300, 300), (110, 300)], opacity=0.18)[0]
p = ['<path d="M-10 432H400V844H-10Z" fill="url(#hatchNight)" stroke="none"/>']
Z["przod"] = (0, 422, 390, 422, group(p))
ZADUSZKI = ["tlo", "swieczki_0", "swieczki_1", "swieczki_2", "ludzie", "kaganki", "okno", "ksiezyc_smuga", "chleb", "kubek", "okruchy", "przod"]
Z_REVEAL = {"okno": "parapet", "ksiezyc_smuga": "parapet", "chleb": "parapet", "kubek": "parapet", "okruchy": "okruchy"}
Z_ANIM = {f"swieczki_{g}": {"type": "flicker", "amplitude": 0.35, "duration": 900 + g * 300, "phase": round(g * 0.3, 2)} for g in range(3)}
Z_ANIM.update({"ludzie": {"type": "drift", "amplitude": 30, "duration": 16000}, "kaganki": {"type": "drift", "amplitude": 30, "duration": 16000},
               "ksiezyc_smuga": {"type": "flicker", "amplitude": 0.7, "duration": 6000}})
Z_EXTRA = {f"swieczki_{g}": {"noInvert": True} for g in range(3)}
Z_EXTRA.update({"kaganki": {"noInvert": True}, "okno": {"fadeDuration": 2500}, "chleb": {"fadeDuration": 2500, "hideOn": "okruchy"},
                "kubek": {"fadeDuration": 2500}, "ksiezyc_smuga": {"fadeDuration": 2500}, "okruchy": {"fadeDuration": 1500}, "przod": {"depth": 1.0}})
Z_COMMENTS = {"tlo": "noc Zaduszek: kościółek w Bukowcu, krzyże na cmentarzu, księżyc", "ludzie": "ludzie z kagankami między grobami",
              "kaganki": "kaganki (czerwone)", "okno": "okno chałupy nocą (# pokaz: parapet)", "ksiezyc_smuga": "smuga księżyca na parapecie",
              "chleb": "kromka chleba dla dziadów (znika przy # pokaz: okruchy)", "kubek": "kubek wody dla dziadów", "okruchy": "zostały okruchy (# pokaz: okruchy)",
              "przod": "pierwszy plan"}
Z_COMMENTS.update({f"swieczki_{g}": "świeczki na grobach migoczą" for g in range(3)})
_add(Z, ZADUSZKI, Z_ANIM, Z_COMMENTS, "mgla", ((-30, 300, 450, 50, group([f'<path d="{ribbon(-20, 410, 320, 16, 4)}" fill="#EDEBE6" stroke-width="1.2" opacity="0.5"/>'])),
                                               {"type": "drift", "amplitude": 12, "duration": 15000}, "mgła między grobami"), before="ludzie")
_add(Z, ZADUSZKI, Z_ANIM, Z_COMMENTS, "gwiazdy", gwiazdy(120, 10, 270, 120, 16, 709), before="swieczki_0")

# ======================= ZIMA PRZY KOLOWROTKACH =======================
P = {}
w = sciana_deski(390, 440, 16)
w.append('<rect width="390" height="440" fill="url(#hatch)" stroke="none" opacity="0.45"/>')
w.append('<path d="M-10 300H400V440H-10Z" fill="url(#hatchDense)" stroke="none" opacity="0.6"/><path d="M-10 300H400" fill="none" stroke-width="3"/>')
w.append('<path d="M40 70H110V140H40Z" fill="#FFFFFF" stroke-width="3"/><path d="M75 70V140M40 105H110" fill="none" stroke-width="3"/>')
w.append('<path d="M40 120C60 112 90 116 110 108V140H40Z" fill="#FFFFFF" stroke-width="1"/>')
w.append('<path d="M290 300V130H390V300Z" fill="#FFFFFF" stroke-width="3"/><path d="M284 134H396" fill="none" stroke-width="3"/><path d="M310 300V254Q334 236 358 254V300Z" fill="#000000" stroke-width="2.4"/>')
w.append('<path d="M130 256H270V266H130ZM138 266V300M262 266V300" fill="#FFFFFF" stroke-width="2.4"/>')
P["tlo"] = (0, 0, 390, 440, w[0] + "\n" + group(w[1:]))
P["zar"] = (314, 280, 44, 20, group([f'<path d="M318 296q4 -8 8 0q4 -10 8 0q4 -8 8 0q4 -6 8 0" fill="none" stroke="{RED}" stroke-width="2.2"/>']))
P["kolo_0"] = (16, 210, 50, 50, group([kolowrotek(40, 234, 18)]))
P["kolo_1"] = (226, 210, 50, 50, group([kolowrotek(250, 234, 18)]))
P["przadki"] = (30, 180, 260, 122, group([postacie.woman(76, 300, 1.35), postacie.woman(214, 300, 1.35)]))
P["stol_kobiety"] = (130, 200, 140, 60, group([postacie.woman(160, 260, 0.9), postacie.woman(196, 258, 0.85), postacie.girl(236, 262, 0.95)]))
P["kosz"] = (176, 240, 40, 20, group(['<path d="M180 256c0 -12 32 -12 32 0z" fill="#FFFFFF" stroke-width="1.4"/>']))
P["pierze"] = efekty.platki(130, 150, 140, 110, n=18, seed=710, fall=-40, duration=4200, r=(1.4, 2.4))[0]
TR = art.parse_transform("translate(356 224) scale(0.13)")
RIG_U = art.rig("uboze", TR, [("cialo", ["cien", "nozki", "tulow", "broda", "glowa", "rece_z_naparstkiem"], {"type": "bob", "amplitude": 0.5, "duration": 2400}, None),
                              ("czapka", ["czapeczka"], {"type": "sway", "amplitude": 6, "duration": 1200}, "czapeczka")], "uboze")
art.install_rig(P, RIG_U)
p = ['<path d="M-10 432H400V844H-10Z" fill="url(#hatchDense)" stroke="none" opacity="0.6"/>']
P["przod"] = (0, 422, 390, 422, group(p))
UB = art.rig_names(RIG_U)
ZIMA = ["tlo", "zar", "kolo_0", "kolo_1", "przadki", "stol_kobiety", "kosz", "pierze"] + UB + ["przod"]
P_REVEAL = {"pierze": "pierze", "stol_kobiety": "pierze", "kosz": "pierze"}
P_REVEAL.update({n: "uboze" for n in UB})
P_ANIM = {"kolo_0": {"type": "spin", "amplitude": 360, "duration": 1400, "anchorX": 0.48, "anchorY": 0.48},
          "kolo_1": {"type": "spin", "amplitude": 360, "duration": 1600, "anchorX": 0.48, "anchorY": 0.48},
          "przadki": {"type": "sway", "amplitude": 1.2, "duration": 1500, "anchorX": 0.5, "anchorY": 1},
          "stol_kobiety": {"type": "bob", "amplitude": 0.6, "duration": 1800}, "zar": {"type": "flicker", "amplitude": 0.3, "duration": 1500},
          "pierze": {"type": "float", "amplitude": 8, "dx": 40, "dy": -50, "duration": 5000}}
P_ANIM.update(art.rig_anims(RIG_U))
P_EXTRA = {"zar": {"noInvert": True}, "przadki": {"hideOn": "pierze", "fadeDuration": 1500}, "kolo_0": {"hideOn": "pierze", "fadeDuration": 1500},
           "kolo_1": {"hideOn": "pierze", "fadeDuration": 1500}, "stol_kobiety": {"fadeDuration": 1500}, "przod": {"depth": 1.0}}
P_EXTRA.update({n: {"fadeDuration": 2000} for n in UB})
P_COMMENTS = {"tlo": "izba zimą: okno ze śniegiem, piec, stół", "zar": "żar w piecu", "kolo_0": "kołowrotek (koło się kręci)", "kolo_1": "kołowrotek (koło się kręci)",
              "przadki": "kobiety przędą len", "stol_kobiety": "sąsiadki i Hanka przy darciu pierza (# pokaz: pierze)", "kosz": "kosz gęsiego puchu",
              "pierze": "puch fruwa po izbie (# pokaz: pierze)", "przod": "pierwszy plan"}
P_COMMENTS.update({n: f"ubożę z naparstkiem za piecem — {n[7:]} (rysunek autora; # pokaz: uboze)" for n in UB})
_add(P, ZIMA, P_ANIM, P_COMMENTS, "platki", efekty.platki(42, 72, 66, 50, n=8, seed=711, fall=40, duration=5000, r=(0.9, 1.5)), before="zar")

# ======================= WIELKANOC =======================
E = {}
rnd = random.Random(712)
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M0 0H390V90C300 104 200 80 110 96C60 104 30 94 0 100Z" fill="url(#hatch)" stroke="none" opacity="0.35"/>']
t.append('<path d="M-10 230C80 220 200 226 400 218V440H-10Z" fill="#EDEBE6" stroke-width="3"/>')
for i in range(16):
    t.append(spruce(230 + i * 11, 226 - (i % 2) * 3, 44 + (i % 3) * 10, 18))
t.append('<path d="M10 250C60 236 240 236 300 250C310 270 240 284 150 284C60 284 0 270 10 250Z" fill="url(#water)" stroke-width="2"/>')
t.append('<path d="M150 300C200 290 300 296 360 310C350 330 260 336 190 330C150 326 130 314 150 300Z" fill="url(#water)" stroke-width="1.6"/>')
for k in range(6):
    t.append(f'<rect x="{220 + k * 12}" y="{314 - k * 2}" width="10" height="4" fill="#FFFFFF" stroke-width="1.1" opacity="0.6"/>')
t.append(kapliczka(206, 320, 0.6))
for (x, y, k) in [(30, 330, 1.0), (330, 360, 1.1)]:
    t.append(hut(x, y, k))
E["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
E["kry"] = (40, 240, 240, 40, group(['<path d="M60 258l20 -4l10 6l-16 6zM140 262l18 -3l10 5l-14 5zM220 256l16 -3l8 5l-12 4z" fill="#FFFFFF" stroke-width="1.2"/>']))
E["chlopak"] = (90, 340, 50, 90, group([postacie.child(110, 428, 1.8, arm="l16 -14"), '<path d="M130 370h12l-2 14h-8z" fill="#FFFFFF" stroke-width="1.6"/>']))
E["hanka"] = (180, 340, 60, 90, group([postacie.girl(210, 428, 1.8, running=True, facing=-1)]))
E["woda"] = (136, 350, 70, 40, group([f'<path d="M{140 + i * 10} {360 + (i % 2) * 6}c-2 4 -3 7 0 9c3 -2 2 -5 0 -9z" fill="#FFFFFF" stroke-width="1"/>' for i in range(6)]))
E["koszyk"] = (290, 380, 50, 40, group(['<path d="M296 410c0 -14 36 -14 36 0z" fill="url(#hatch)" stroke-width="1.6"/><path d="M298 404c4 -24 30 -24 32 0" fill="none" stroke-width="1.6"/>',
                                        f'<ellipse cx="306" cy="400" rx="4" ry="5" fill="{RED}" stroke-width="1"/><ellipse cx="318" cy="398" rx="4" ry="5" fill="#FFFFFF" stroke-width="1"/>']))
p = ['<path d="M-10 432H400V844H-10Z" fill="#EDEBE6" stroke="none"/>']
for i in range(18):
    p.append(grass(rnd.uniform(0, 390), rnd.uniform(440, 840), rnd.uniform(0.9, 1.3)))
E["przod"] = (0, 422, 390, 422, group(p))
WIELKANOC = ["tlo", "kry", "koszyk", "chlopak", "hanka", "woda", "przod"]
E_REVEAL = {"kry": "lod", "chlopak": "dyngus", "hanka": "dyngus", "woda": "dyngus"}
E_ANIM = {"kry": {"type": "drift", "amplitude": 20, "duration": 6000}, "chlopak": {"type": "bob", "amplitude": 1.4, "duration": 600},
          "hanka": {"type": "bob", "amplitude": 1.6, "duration": 500}, "woda": {"type": "arc", "amplitude": 20, "dx": 60, "dy": 10, "duration": 1400},
          "koszyk": {"type": "sway", "amplitude": 2, "duration": 2600, "anchorX": 0.5, "anchorY": 1}}
E_EXTRA = {"koszyk": {"noInvert": True}, "przod": {"depth": 1.0}}
E_COMMENTS = {"tlo": "wiosna: wezbrane rozlewiska, kładka pod wodą, kapliczka, chałupy", "kry": "kry płyną po jeziorze (# pokaz: lod)",
              "chlopak": "Jaromir z wiadrem (# pokaz: dyngus)", "hanka": "Hanka ucieka (# pokaz: dyngus)", "woda": "woda chlusta z wiadra (# pokaz: dyngus)",
              "koszyk": "koszyk wielkanocny z pisankami", "przod": "pierwszy plan"}
_add(E, WIELKANOC, E_ANIM, E_COMMENTS, "bociany", ((-62, 86, 74, 42, group([postacie.stork(-26, 106, 1.1)])),
                                                    {"type": "arc", "amplitude": 22, "dx": 470, "dy": -24, "duration": 18000, "phase": 0.2}, "bocian wraca"), before="kry")
_add(E, WIELKANOC, E_ANIM, E_COMMENTS, "iskry", efekty.iskry(150, 290, 210, 50, n=10, seed=713), before="koszyk")
E_COMMENTS["iskry"] = "słońce migocze na rozlewisku"
STR = 4
for k in range(STR):
    E[f"bazie_{k}"] = (k * 90 + 10, 330, 50, 80, group([f'<path d="M{k * 90 + 30} 410C{k * 90 + 28} 380 {k * 90 + 34} 360 {k * 90 + 32} 340" fill="none" stroke-width="1.6"/>'
                                                       + "".join(f'<ellipse cx="{k * 90 + 32 + (4 if j % 2 else -4)}" cy="{350 + j * 10}" rx="2.4" ry="3.4" fill="#FFFFFF" stroke-width="1"/>' for j in range(5))]))
    WIELKANOC.insert(WIELKANOC.index("przod"), f"bazie_{k}")
    E_ANIM[f"bazie_{k}"] = {"type": "sway", "amplitude": 3, "duration": 2600, "anchorX": 0.5, "anchorY": 1, "phase": round(k * 0.15, 2)}
    E_COMMENTS[f"bazie_{k}"] = "gałązki bazi kołyszą się"

BACKGROUNDS = {"budowa_tartaku": ("bg_budowa", B, BUDOWA, B_ANIM, B_REVEAL, B_EXTRA, B_COMMENTS, "budowa tartaku"),
               "wykopki": ("bg_wykopki", W, WYKOPKI, W_ANIM, W_REVEAL, W_EXTRA, W_COMMENTS, "wykopki"),
               "zaduszki": ("bg_zaduszki", Z, ZADUSZKI, Z_ANIM, Z_REVEAL, Z_EXTRA, Z_COMMENTS, "Zaduszki"),
               "zima_przedzenie": ("bg_przedzenie", P, ZIMA, P_ANIM, P_REVEAL, P_EXTRA, P_COMMENTS, "zima przy kołowrotkach"),
               "wielkanoc": ("bg_wielkanoc", E, WIELKANOC, E_ANIM, E_REVEAL, E_EXTRA, E_COMMENTS, "Wielkanoc")}

if __name__ == "__main__":
    if sys.argv[1] == "--master":
        prefix, L, order, anim, reveal, extra, comments, scene = BACKGROUNDS[sys.argv[2]]
        hide = set() if len(sys.argv) > 3 and sys.argv[3] == "wszystko" else set(reveal) | {n for n, e in extra.items() if e.get("appearAfter")}
        print(master(L, [n for n in order if n not in hide]))
    else:
        import bgjson
        for key, (prefix, L, order, anim, reveal, extra, comments, scene) in BACKGROUNDS.items():
            write_layers(sys.argv[1], prefix, scene, L, [n for n in L if n in comments], comments)
            bgjson.upsert(key, bgjson.entry(prefix, order, L, anim, reveal, extra))
