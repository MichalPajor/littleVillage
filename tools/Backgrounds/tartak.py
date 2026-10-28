# Generator tel rozdzialu piatego (Tartak):
#   tartak          — tartak nad struga: kolo wodne (kreci sie), pila (tnie), wozy z pniami, sterty desek, pylki trocin;
#                     Franek pod plotem (# pokaz: franek), Urbaniak z Jaromirem (# pokaz: urbaniak)
#   ognisko_tartak  — noc na placu tartaku: ognisko z iskrami, tracze, sterty pni; ktos stuka miedzy pniami (# pokaz: stukanie)
#   pole_orka       — ojciec orze, Jaromir; w glebi boru pada drzewo (# pokaz: drzewo); Franek z sakiewka (# pokaz: franek)
#   stary_dab       — Stary Dab na skraju boru: krowy w cieniu, ptaki w koronie; bialy znak (# pokaz: znak), chlopcy (# pokaz: chlopcy),
#                     Franek odchodzi do tartaku (# pokaz: odchodzi)
#   sciecie_debu    — ludzie pod debem, tracze z siekierami, Urbaniak z zegarkiem; sok jak krew (# pokaz: sok), dab pada (# pokaz: upadek),
#                     zoladz (# pokaz: zoladz), wiwat (# pokaz: wiwat)
#   uboze_piec      — noc w izbie: ubozę autora przy piecu (# pokaz: uboze), pije mleko z naparstka (# pokaz: mleko), znika (# pokaz: zniknal),
#                     myszy (# pokaz: myszy), kurze slady w popiele (# pokaz: slady)
#   przed_zniwami   — wieczor przed zniwami: zboze, jaskolki, zachod; Franek nad jeziorem (# pokaz: franek_noc), wielkie slady (# pokaz: slady)
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/tartak.py src/LittleVillage/Resources/Images
#   python3 tools/Backgrounds/tartak.py --master <tlo> [wszystko] > podglad.svg
import sys, random
from common import *
import art, postacie, efekty
from efekty import add as _add
from wiosna import oak, kapliczka, sciana_deski

RED = "#A8101A"


def deski(x, y, w, n, h=5):
    return "".join(f'<path d="M{x + (i % 2) * 3} {y - i * h}h{w}v{h}h{-w}z" fill="#FFFFFF" stroke-width="1.2"/>' for i in range(n))


def pnie(x, y, n, r=7):
    return "".join(f'<circle cx="{x + (i % 4) * r * 2 + (i // 4) * r}" cy="{y - (i // 4) * r * 1.7:.0f}" r="{r}" fill="#FFFFFF" stroke-width="1.4"/>'
                   f'<circle cx="{x + (i % 4) * r * 2 + (i // 4) * r}" cy="{y - (i // 4) * r * 1.7:.0f}" r="{r * 0.45:.1f}" fill="none" stroke-width="0.8"/>' for i in range(n))


def woz(x, y, k=1.0):
    P = lambda dx, dy: f"{x + dx * k:.1f} {y + dy * k:.1f}"
    return (f'<path d="M{P(0, 0)}H{P(60, 0)[:P(60, 0).index(" ")]}" fill="none" stroke-width="3"/>'
            f'<circle cx="{x + 10 * k:.1f}" cy="{y + 6 * k:.1f}" r="{7 * k:.1f}" fill="#FFFFFF" stroke-width="1.8"/><circle cx="{x + 50 * k:.1f}" cy="{y + 6 * k:.1f}" r="{7 * k:.1f}" fill="#FFFFFF" stroke-width="1.8"/>'
            f'<path d="M{P(2, -2)}H{x + 58 * k:.1f}V{y - 8 * k:.1f}H{x + 2 * k:.1f}Z" fill="url(#hatchDense)" stroke-width="1.4"/>'
            f'<path d="M{P(-2, -10)}H{x + 64 * k:.1f}M{P(0, -14)}H{x + 62 * k:.1f}" fill="none" stroke-width="3"/>'
            f'<path d="M{P(60, -2)}L{P(72, -4)}L{P(76, -16)}L{P(88, -20)}L{P(94, -28)}L{P(98, -20)}L{P(92, -16)}L{P(90, -2)}M{P(76, -4)}v{10 * k:.1f}M{P(88, -4)}v{10 * k:.1f}" fill="#000000" stroke-width="1.6"/>')


def kolo(cx, cy, r):
    spokes = "".join(f'<path d="M{cx} {cy}L{cx + r * c:.1f} {cy + r * s:.1f}" fill="none" stroke-width="2"/>' for c, s in [(1, 0), (0, 1), (-1, 0), (0, -1), (0.7, 0.7), (-0.7, 0.7), (0.7, -0.7), (-0.7, -0.7)])
    paddles = "".join(f'<path d="M{cx + r * c:.1f} {cy + r * s:.1f}l{4 * -s:.1f} {4 * c:.1f}" fill="none" stroke-width="4"/>' for c, s in [(1, 0), (0, 1), (-1, 0), (0, -1), (0.7, 0.7), (-0.7, 0.7), (0.7, -0.7), (-0.7, -0.7)])
    return f'<circle cx="{cx}" cy="{cy}" r="{r}" fill="none" stroke-width="3"/>{spokes}{paddles}<circle cx="{cx}" cy="{cy}" r="4" fill="#000000"/>'


def tlusty(x, y, k=1.0):
    """Pan Urbaniak: tegi, w kapeluszu i miejskim plaszczu, lancuszek zegarka."""
    P = lambda dx, dy: f"{x + dx * k:.1f} {y + dy * k:.1f}"
    return (f'<g stroke-width="2">'
            f'<path d="M{P(-6, 0)}V{y - 26 * k:.1f}H{x - 1 * k:.1f}V{y:.1f}ZM{P(6, 0)}V{y - 26 * k:.1f}H{x + 1 * k:.1f}V{y:.1f}Z" fill="#000000"/>'
            f'<path d="M{P(-16, -22)}C{P(-20, -48)} {P(-12, -62)} {P(0, -62)}C{P(12, -62)} {P(20, -48)} {P(16, -22)}Z" fill="#000000"/>'
            f'<path d="M{P(-6, -44)}C{P(-2, -40)} {P(4, -40)} {P(8, -44)}" fill="none" stroke="#FFFFFF" stroke-width="1.4"/>'
            f'<circle cx="{x}" cy="{y - 69 * k:.1f}" r="{7 * k:.1f}" fill="#000000"/>'
            f'<path d="M{P(-12, -74)}H{x + 12 * k:.1f}L{P(7, -84)}H{x - 7 * k:.1f}Z" fill="#000000"/>'
            f'</g>')


# ======================= TARTAK nad struga =======================
T = {}
rnd = random.Random(501)
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M0 0H390V100C300 114 200 90 110 106C60 114 30 104 0 110Z" fill="url(#hatch)" stroke="none" opacity="0.5"/>']
t.append('<path d="M-10 190C80 180 200 186 400 178V440H-10Z" fill="#EDEBE6" stroke-width="3"/>')
for i in range(16):
    t.append(spruce(-4 + i * 18, 186 - (i % 2) * 4, 60 + (i % 3) * 14, 26))
# struga z boru (z lewej gory) do dolu po prawej
t.append('<path d="M70 196C110 230 150 250 200 290C240 322 290 344 400 360V384C290 370 236 350 190 316C140 280 100 250 56 200Z" fill="url(#water)" stroke-width="2"/>')
# szopa tartaku z otwartym frontem i kolem wodnym przy strudze
t.append('<path d="M150 300V200H300V300Z" fill="#FFFFFF" stroke-width="3"/><path d="M136 204L180 160H286L314 204Z" fill="url(#hatch)" stroke-width="3"/>')
for x in range(160, 300, 12):
    t.append(f'<path d="M{x} 202V300" fill="none" stroke-width="0.8"/>')
t.append('<path d="M186 300V236H262V300Z" fill="#000000" stroke-width="2.4"/>')
t.append(deski(20, 300, 70, 6) + deski(310, 330, 60, 5) + pnie(30, 386, 10))
t.append('<path d="M-10 404C90 396 200 396 400 402" fill="none" stroke-width="2"/>')
T["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
T["kolo"] = (106, 230, 56, 56, group([kolo(134, 258, 24)]))
T["piana"] = (110, 276, 50, 20, group(['<path d="M116 286c4 -4 8 -4 12 0c4 -4 8 -4 12 0c4 -4 8 -4 12 0" fill="none" stroke="#FFFFFF" stroke-width="1.6"/>']))
T["pila"] = (200, 240, 48, 60, group(['<path d="M222 244V296" fill="none" stroke="#FFFFFF" stroke-width="3"/>',
                                      ''.join(f'<path d="M222 {248 + i * 6}l4 3l-4 3" fill="none" stroke="#FFFFFF" stroke-width="1"/>' for i in range(8)),
                                      '<path d="M200 290H250V296H200Z" fill="#FFFFFF" stroke-width="1.2"/>']))
T["woz"] = (40, 380, 110, 40, group([woz(50, 402, 1.0)]))
T["trociny"] = (190, 280, 70, 30, group([f'<circle cx="{196 + i * 7}" cy="{288 + (i % 3) * 5}" r="1.2" fill="#FFFFFF" stroke-width="0.6"/>' for i in range(9)]))
T["franek"] = (300, 330, 60, 100, group([postacie.child(330, 426, 2.0, arm="l10 10"), '<circle cx="352" cy="390" r="3" fill="#FFFFFF" stroke-width="1"/>']))
T["moneta"] = (346, 384, 12, 12, group(['<path d="M352 386l1.5 3l3 1.5l-3 1.5l-1.5 3l-1.5 -3l-3 -1.5l3 -1.5z" fill="#FFFFFF" stroke-width="0.8"/>']))
T["urbaniak"] = (290, 300, 100, 130, group([tlusty(330, 428, 1.5), postacie.child(372, 428, 1.6)]))
p = ['<path d="M-10 432H400V844H-10Z" fill="#EDEBE6" stroke="none"/>']
for i in range(16):
    p.append(grass(rnd.uniform(0, 390), rnd.uniform(440, 840), rnd.uniform(0.9, 1.3)))
T["przod"] = (0, 422, 390, 422, group(p))
TARTAK = ["tlo", "kolo", "piana", "pila", "trociny", "woz", "franek", "moneta", "urbaniak", "przod"]
T_REVEAL = {"franek": "franek", "moneta": "franek", "urbaniak": "urbaniak"}
T_ANIM = {"kolo": {"type": "spin", "amplitude": -360, "duration": 4000, "anchorX": 0.5, "anchorY": 0.5},
          "piana": {"type": "drift", "amplitude": 4, "duration": 900},
          "pila": {"type": "bob", "amplitude": 4, "duration": 500},
          "trociny": {"type": "rise", "amplitude": -16, "duration": 1200},
          "woz": {"type": "drift", "amplitude": 30, "duration": 14000},
          "moneta": {"type": "flicker", "amplitude": 0.1, "duration": 1300},
          "franek": {"type": "bob", "amplitude": 0.6, "duration": 1500}}
T_EXTRA = {"urbaniak": {"fadeDuration": 1500}, "przod": {"depth": 1.0}}
T_EXTRA["franek"] = {"hideOn": "urbaniak", "fadeDuration": 800}
T_EXTRA["moneta"] = {"hideOn": "urbaniak"}
T_COMMENTS = {"tlo": "tartak nad strugą: szopa z otwartym frontem, sterty desek i pni, bór", "kolo": "koło wodne (kręci się)",
              "piana": "piana przy kole", "pila": "piła tnie (w górę i w dół)", "trociny": "trociny sypią się spod piły",
              "woz": "wóz z pniami jedzie drogą", "franek": "Franek pod płotem (# pokaz: franek)", "moneta": "błysk monety (# pokaz: franek)",
              "urbaniak": "pan Urbaniak ogląda Jaromira (# pokaz: urbaniak)", "przod": "pierwszy plan: trawa"}
_add(T, TARTAK, T_ANIM, T_COMMENTS, "iskry", efekty.iskry(200, 300, 190, 70, n=12, seed=52), before="woz")
T_COMMENTS["iskry"] = "słońce migocze na strudze"
_add(T, TARTAK, T_ANIM, T_COMMENTS, "wrony", efekty.wrony(80, 80, n=3, seed=53), before="kolo")

# ======================= OGNISKO na placu tartaku (noc) =======================
O = {}
rnd = random.Random(502)
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V250H0Z" fill="url(#hatchNight)" stroke="none"/>',
     '<circle cx="70" cy="60" r="16" fill="#FFFFFF" stroke-width="1.6"/>']
t.append('<path d="M-10 250H400V440H-10Z" fill="url(#hatch)" stroke-width="2"/>')
t.append('<path d="M230 260V150H390V260Z" fill="#000000" stroke-width="2.4"/><path d="M216 154L260 116H390V154Z" fill="url(#hatchDense)" stroke-width="2.4"/>')
t.append(pnie(20, 300, 12, 9) + pnie(300, 300, 8, 8))
O["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
O["ogien"] = (176, 330, 40, 50, group([f'<path d="M184 376C180 360 190 352 194 340C198 352 200 344 202 336C208 350 212 360 206 376Z" fill="{RED}" stroke="{RED}" stroke-width="1.4"/>',
                                       '<path d="M178 378l40 -6M180 372l38 8" fill="none" stroke-width="3"/>']))
O["blask"] = (120, 290, 150, 120, group(['<ellipse cx="196" cy="360" rx="70" ry="50" fill="#FFFFFF" stroke="none" opacity="0.3"/>']))
O["iskry"] = (184, 300, 24, 40, group([f'<circle cx="{188 + i * 5}" cy="{334 - (i % 3) * 9}" r="1.3" fill="{RED}" stroke="none"/>' for i in range(4)]))
O["tracze"] = (100, 320, 200, 70, group([postacie.child(130, 384, 1.5), postacie.man(250, 388, 0.95), postacie.child(160, 384, 1.3)]))
O["stukacz"] = (40, 200, 50, 110, group(['<path d="M52 300C50 260 54 230 62 214C68 206 76 206 78 216C82 236 82 270 80 300Z" fill="#000000" stroke="#FFFFFF" stroke-width="1"/>',
                                         '<path d="M78 236L96 250" fill="none" stroke="#FFFFFF" stroke-width="1.4"/>']))
O["stuk"] = (84, 238, 30, 30, group(['<path d="M92 250c4 -4 8 -4 12 0M90 256c6 -6 12 -6 18 0" fill="none" stroke="#FFFFFF" stroke-width="1.2"/>']))
p = ['<path d="M-10 432H400V844H-10Z" fill="url(#hatch)" stroke="none"/>']
O["przod"] = (0, 422, 390, 422, group(p))
OGNISKO = ["tlo", "blask", "stukacz", "stuk", "tracze", "ogien", "iskry", "przod"]
O_REVEAL = {"stukacz": "stukanie", "stuk": "stukanie"}
O_ANIM = {"ogien": {"type": "flame", "amplitude": 0.15, "duration": 800, "anchorX": 0.5, "anchorY": 1},
          "blask": {"type": "flicker", "amplitude": 0.6, "duration": 1400}, "iskry": {"type": "rise", "amplitude": 60, "duration": 1800},
          "tracze": {"type": "bob", "amplitude": 0.4, "duration": 2600}, "stuk": {"type": "ripple", "amplitude": 1.3, "duration": 900, "anchorX": 0.3, "anchorY": 0.5}}
O_EXTRA = {"ogien": {"noInvert": True}, "iskry": {"noInvert": True}, "stukacz": {"fadeDuration": 3000, "hideAfter": 6000},
           "stuk": {"hideAfter": 6000, "fadeDuration": 600}, "przod": {"depth": 1.0}}
O_COMMENTS = {"tlo": "noc na placu tartaku: szopa, sterty pni, księżyc", "ogien": "ognisko (czerwone, płonie)", "blask": "blask ogniska (migocze)",
              "iskry": "iskry wzlatują", "tracze": "tracze przy ognisku", "stukacz": "wysoki cień między pniami (# pokaz: stukanie, znika)",
              "stuk": "stukanie w pień (# pokaz: stukanie)", "przod": "pierwszy plan"}
_add(O, OGNISKO, O_ANIM, O_COMMENTS, "gwiazdy", efekty.iskry(120, 10, 260, 120, n=16, seed=54, duration=3600), before="blask")
O_COMMENTS["gwiazdy"] = "gwiazdy"
_s, _so = efekty.sowa(320, 145, 1.0)
_add(O, OGNISKO, O_ANIM, O_COMMENTS, "sowa_oczy", _so, before="blask")

# ======================= POLE: orka, w borze pada drzewo =======================
F = {}
rnd = random.Random(503)
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M0 0H390V100C300 114 200 90 110 106C60 114 30 104 0 110Z" fill="url(#hatch)" stroke="none" opacity="0.4"/>',
     '<circle cx="320" cy="60" r="18" fill="#FFFFFF" stroke-width="2"/>']
t.append('<path d="M-10 200C80 190 200 196 400 188V440H-10Z" fill="#EDEBE6" stroke-width="3"/>')
for i in range(18):
    t.append(spruce(4 + i * 22, 196 - (i % 2) * 4, 56 + (i % 3) * 12, 24))
for i in range(9):
    y0 = 240 + i * 22
    t.append(f'<path d="M-10 {y0}C100 {y0 - 6} 250 {y0 + 4} 400 {y0 - 4}" fill="none" stroke-width="1.1"/>')
F["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
F["drzewo"] = (210, 120, 40, 80, group([spruce(230, 196, 72, 28)]))
F["kurz"] = (190, 170, 80, 30, group([f'<path d="{ribbon(196, 262, 184, 10, 3)}" fill="#EDEBE6" stroke-width="1.2" opacity="0.8"/>']))
# ojciec za plugiem z koniem
orka = ('<path d="M100 352L128 340L136 324L152 320L160 308L166 318L158 322L156 352M132 352v14M150 352v14" fill="#000000" stroke-width="1.8"/>'
        '<path d="M96 350L70 360L62 372" fill="none" stroke-width="2.6"/>')
F["orka"] = (30, 290, 150, 100, group([orka, postacie.man(56, 388, 1.3)]))
F["jaromir"] = (230, 320, 40, 80, group([postacie.child(250, 396, 1.6, arm="l12 -20"), '<path d="M262 344L282 312L292 318" fill="none" stroke-width="2"/>']))
F["franek"] = (310, 320, 60, 100, group([postacie.child(336, 416, 1.9), '<path d="M350 368c4 0 6 6 4 10c-4 2 -8 0 -8 -4z" fill="url(#hatch)" stroke-width="1.4"/>']))
p = ['<path d="M-10 432H400V844H-10Z" fill="#EDEBE6" stroke="none"/>']
for i in range(16):
    p.append(grass(rnd.uniform(0, 390), rnd.uniform(440, 840), rnd.uniform(0.9, 1.3)))
F["przod"] = (0, 422, 390, 422, group(p))
POLE = ["tlo", "drzewo", "kurz", "orka", "jaromir", "franek", "przod"]
F_REVEAL = {"kurz": "drzewo", "franek": "franek"}
F_ANIM = {"drzewo": {"type": "spin", "amplitude": 84, "duration": 2600, "once": True, "anchorX": 0.5, "anchorY": 1},
          "kurz": {"type": "ripple", "amplitude": 1.3, "duration": 2200, "anchorX": 0.5, "anchorY": 0.8},
          "orka": {"type": "drift", "amplitude": 6, "duration": 3000}, "jaromir": {"type": "bob", "amplitude": 0.6, "duration": 1300},
          "franek": {"type": "bob", "amplitude": 0.5, "duration": 1600}}
F_EXTRA = {"kurz": {"appearAfter": 1800, "hideAfter": 2500, "fadeDuration": 600}, "przod": {"depth": 1.0}}
F_REVEAL["drzewo"] = "drzewo"
F_EXTRA["drzewo"] = {"fadeDuration": 100, "hideAfter": 4000}
F_COMMENTS = {"tlo": "pole pod borem: bruzdy, słońce", "drzewo": "w borze pada drzewo (# pokaz: drzewo)", "kurz": "kurz po upadku drzewa",
              "orka": "ojciec za pługiem z koniem", "jaromir": "Jaromir z kosą", "franek": "Franek z sakiewką (# pokaz: franek)", "przod": "pierwszy plan"}
_add(F, POLE, F_ANIM, F_COMMENTS, "skowronki", efekty.wrony(150, 120, n=2, k=0.35, seed=55, amplitude=30), before="drzewo")
F_COMMENTS["skowronki"] = "skowronki"
_add(F, POLE, F_ANIM, F_COMMENTS, "motyl", ((300, 360, 28, 22, group([postacie.butterfly(314, 370, 1.0)])),
                                            {"type": "wander", "amplitude": 28, "flap": 0.65, "duration": 6000}, "motyl nad polem"), before="przod")

# ======================= STARY DAB =======================
D = {}
rnd = random.Random(504)
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M0 0H390V90C300 104 200 80 110 96C60 104 30 94 0 100Z" fill="url(#hatch)" stroke="none" opacity="0.4"/>']
t.append('<path d="M-10 300C80 292 200 296 400 290V440H-10Z" fill="#EDEBE6" stroke-width="3"/>')
for i in range(10):
    t.append(spruce(240 + i * 18, 300 - (i % 2) * 6, 130 + (i % 3) * 20, 50))
t.append('<path d="M-10 400C90 392 200 390 400 398M-10 424C90 416 200 414 400 422" fill="none" stroke-width="2.2"/>')
TLO_BEZ_DEBU = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
# gruby pien debu
PIEN = ['<path d="M120 310C126 260 116 220 128 180H176C188 220 178 260 186 310Z" fill="#000000" stroke-width="2.4"/>',
        '<path d="M120 310C110 312 100 318 96 324H210C204 318 196 312 186 310Z" fill="#000000" stroke-width="2"/>']
t += PIEN
D["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
D["korona"] = (20, 40, 260, 170, group(['<path d="M40 180C10 150 30 90 80 80C90 50 150 40 180 60C220 40 270 70 262 110C290 140 270 190 230 190C200 210 120 210 90 196C70 200 50 194 40 180Z" fill="url(#hatchDense)" stroke-width="2.6"/>',
                                        '<path d="M150 180L110 130M150 180L200 120M150 180L150 100" fill="none" stroke-width="5"/>']))
D["swiatlo"] = (80, 220, 140, 80, group(['<ellipse cx="110" cy="260" rx="10" ry="4" fill="#FFFFFF" stroke="none" opacity="0.6"/><ellipse cx="190" cy="270" rx="12" ry="4" fill="#FFFFFF" stroke="none" opacity="0.6"/>']))
D["krowy"] = (10, 284, 110, 50, group([postacie.krowa(40, 330, 0.5, 1), postacie.krowa(92, 328, 0.45, -1)]))
D["znak"] = (140, 236, 24, 30, group(['<path d="M146 240h12v22h-12z" fill="#FFFFFF" stroke-width="1.2"/>']))
D["chlopcy"] = (200, 320, 90, 110, group([postacie.child(226, 426, 1.9), postacie.child(266, 428, 2.1)]))
D["franek_idzie"] = (240, 320, 60, 110, group([postacie.child(266, 428, 2.1)]))
D["jaromir_sam"] = (200, 320, 50, 110, group([postacie.child(226, 426, 1.9)]))
p = ['<path d="M-10 432H400V844H-10Z" fill="#EDEBE6" stroke="none"/>']
for i in range(16):
    p.append(grass(rnd.uniform(0, 390), rnd.uniform(440, 840), rnd.uniform(0.9, 1.3)))
D["przod"] = (0, 422, 390, 422, group(p))
DAB = ["tlo", "korona", "swiatlo", "krowy", "znak", "chlopcy", "jaromir_sam", "franek_idzie", "przod"]
D_REVEAL = {"znak": "znak", "chlopcy": "chlopcy", "jaromir_sam": "odchodzi", "franek_idzie": "odchodzi"}
D_ANIM = {"korona": {"type": "sway", "amplitude": 1.2, "duration": 4200, "anchorX": 0.5, "anchorY": 1},
          "swiatlo": {"type": "flicker", "amplitude": 0.3, "duration": 2600}, "krowy": {"type": "sway", "amplitude": 1, "duration": 4000, "anchorX": 0.3, "anchorY": 1},
          "znak": {"type": "flicker", "amplitude": 0.6, "duration": 1800}, "chlopcy": {"type": "bob", "amplitude": 0.6, "duration": 1400},
          "franek_idzie": {"type": "slide", "dx": 160, "dy": -10, "duration": 5000, "once": True}}
D_EXTRA = {"chlopcy": {"hideOn": "odchodzi", "fadeDuration": 300}, "jaromir_sam": {"fadeDuration": 300}, "franek_idzie": {"fadeDuration": 300, "hideAfter": 4200},
           "znak": {"fadeDuration": 2000}, "przod": {"depth": 1.0}}
D_COMMENTS = {"tlo": "Stary Dąb na skraju boru: gruby pień, ścieżka", "korona": "korona dębu (kołysze się)", "swiatlo": "plamy słońca w cieniu (migoczą)",
              "krowy": "dwie krowy w cieniu dębu", "znak": "biały znak na korze (# pokaz: znak)", "chlopcy": "Jaromir i Franek (# pokaz: chlopcy)",
              "jaromir_sam": "Jaromir zostaje (# pokaz: odchodzi)", "franek_idzie": "Franek odchodzi do tartaku (# pokaz: odchodzi)", "przod": "pierwszy plan"}
_add(D, DAB, D_ANIM, D_COMMENTS, "ptaki", efekty.wrony(100, 90, n=3, k=0.35, seed=56, amplitude=36), before="krowy")
D_COMMENTS["ptaki"] = "ptaki krążą nad koroną"
_add(D, DAB, D_ANIM, D_COMMENTS, "liscie", efekty.platki(40, 120, 200, 100, n=8, seed=57, fall=120, duration=6000, r=(1.4, 2.0)), before="krowy")
D_COMMENTS["liscie"] = "listki spadają z dębu"

# ======================= SCIECIE DEBU =======================
C = {}
rnd = random.Random(505)
t = list(D["tlo"][4:])
C["tlo"] = TLO_BEZ_DEBU
C["pien"] = (94, 176, 120, 152, group(PIEN))
C["dab"] = (20, 40, 260, 290, group(['<path d="M40 180C10 150 30 90 80 80C90 50 150 40 180 60C220 40 270 70 262 110C290 140 270 190 230 190C200 210 120 210 90 196C70 200 50 194 40 180Z" fill="url(#hatchDense)" stroke-width="2.6"/>',
                                     '<path d="M150 180L110 130M150 180L200 120M150 180L150 100" fill="none" stroke-width="5"/>']))
C["pien_scieta"] = (90, 290, 130, 40, group(['<path d="M110 324C108 312 118 306 152 306C186 306 196 312 194 324Z" fill="#FFFFFF" stroke-width="2"/>',
                                             '<ellipse cx="152" cy="312" rx="38" ry="6" fill="#FFFFFF" stroke-width="1.6"/>',
                                             '<path d="M152 312c6 -2 10 2 6 4s-12 0 -12 -4s10 -6 18 -2" fill="none" stroke-width="1"/>']))
C["lezy"] = (150, 250, 240, 90, group(['<path d="M180 320L390 300L392 316L184 334Z" fill="#000000" stroke-width="2"/>',
                                       '<path d="M300 270C330 250 380 256 392 280L392 330C360 340 310 336 290 320C270 304 280 280 300 270Z" fill="url(#hatchDense)" stroke-width="2.4"/>']))
C["kurz"] = (140, 270, 240, 80, group([f'<path d="{ribbon(150, 370, 300, 22, 5)}" fill="#EDEBE6" stroke-width="1.4" opacity="0.85"/>']))
C["sok"] = (172, 236, 40, 50, group([f'<circle cx="{180 + i * 6}" cy="{250 + (i % 3) * 8}" r="2.4" fill="{RED}" stroke="none"/>' for i in range(5)]))
C["tracze"] = (70, 230, 160, 100, group([postacie.man(96, 324, 1.3, arm="l14 -22"), postacie.man(214, 324, 1.3, arm="l-14 -22")]))
C["siekiery"] = (100, 220, 120, 60, group(['<path d="M112 270L130 240M206 270L188 240" fill="none" stroke-width="3"/>',
                                           '<path d="M126 236l10 -4l2 10zM192 236l-10 -4l-2 10z" fill="#FFFFFF" stroke-width="1.6"/>']))
C["urbaniak"] = (300, 330, 60, 100, group([tlusty(330, 428, 1.4), '<path d="M340 368c4 4 4 10 0 12" fill="none" stroke="#FFFFFF" stroke-width="1.2"/><circle cx="341" cy="381" r="2.4" fill="#FFFFFF" stroke-width="1"/>']))
C["ludzie"] = (0, 330, 290, 100, group([postacie.woman(20, 428, 1.3), postacie.child(60, 428, 1.5), postacie.man(110, 432, 1.3),
                                         postacie.child(160, 430, 1.6), postacie.woman(206, 430, 1.25), postacie.man(256, 432, 1.25)]))
C["wiwat"] = (90, 300, 200, 60, group(['<path d="M110 340l-6 -24M262 340l8 -26M150 338l-2 -26" fill="none" stroke-width="3"/>',
                                       '<path d="M264 312c-4 -10 8 -12 10 -4l-2 8z" fill="#FFFFFF" stroke-width="1.4"/>']))
C["zoladz"] = (140, 320, 20, 20, group(['<path d="M150 324c-4 2 -4 10 0 12c4 -2 4 -10 0 -12z" fill="#FFFFFF" stroke-width="1.2"/><path d="M146 326h8" fill="none" stroke-width="1.6"/>',
                                        '<path d="M156 322l1.5 3l3 1.5l-3 1.5l-1.5 3l-1.5 -3l-3 -1.5l3 -1.5z" fill="#FFFFFF" stroke-width="0.6"/>']))
p = ['<path d="M-10 432H400V844H-10Z" fill="#EDEBE6" stroke="none"/>']
for i in range(16):
    p.append(grass(rnd.uniform(0, 390), rnd.uniform(440, 840), rnd.uniform(0.9, 1.3)))
C["przod"] = (0, 422, 390, 422, group(p))
SCIECIE = ["tlo", "pien", "dab", "pien_scieta", "lezy", "kurz", "sok", "tracze", "siekiery", "zoladz", "urbaniak", "ludzie", "wiwat", "przod"]
C_REVEAL = {"pien_scieta": "upadek", "lezy": "upadek", "kurz": "upadek", "sok": "sok", "zoladz": "zoladz", "wiwat": "wiwat"}
C_ANIM = {"dab": {"type": "sway", "amplitude": 1.5, "duration": 1200, "anchorX": 0.5, "anchorY": 1},
          "sok": {"type": "rise", "amplitude": -26, "duration": 1300},
          "siekiery": {"type": "sway", "amplitude": 10, "duration": 700, "anchorX": 0.5, "anchorY": 1},
          "tracze": {"type": "bob", "amplitude": 1, "duration": 700},
          "kurz": {"type": "drift", "amplitude": 14, "duration": 3000},
          "urbaniak": {"type": "sway", "amplitude": 1.5, "duration": 2400, "anchorX": 0.5, "anchorY": 1},
          "ludzie": {"type": "bob", "amplitude": 0.6, "duration": 1800},
          "zoladz": {"type": "flicker", "amplitude": 0.3, "duration": 1500},
          "wiwat": {"type": "bob", "amplitude": 2, "duration": 600}}
C_EXTRA = {"dab": {"hideOn": "upadek", "fadeDuration": 1200}, "pien": {"hideOn": "upadek", "fadeDuration": 1200}, "sok": {"noInvert": True, "hideOn": "upadek"}, "siekiery": {"hideOn": "upadek"},
           "kurz": {"hideAfter": 4000, "fadeDuration": 1500}, "lezy": {"fadeDuration": 1200}, "przod": {"depth": 1.0}}
C_COMMENTS = {"tlo": "skraj boru (jak przy Starym Dębie), bez dębu", "pien": "pień Starego Dębu (znika przy # pokaz: upadek)", "dab": "korona dębu drży pod uderzeniami (znika przy # pokaz: upadek)",
              "pien_scieta": "pień ze słojami w spiralę (# pokaz: upadek)", "lezy": "powalony dąb (# pokaz: upadek)", "kurz": "kurz po upadku",
              "sok": "czerwony sok tryska z rany (# pokaz: sok)", "tracze": "tracze z siekierami", "siekiery": "siekiery w zamachu",
              "zoladz": "lśniący żołądź (# pokaz: zoladz)", "urbaniak": "pan Urbaniak z zegarkiem", "ludzie": "połowa wsi patrzy",
              "wiwat": "ludzie Urbaniaka wiwatują z gąsiorem (# pokaz: wiwat)", "przod": "pierwszy plan"}
_add(C, SCIECIE, C_ANIM, C_COMMENTS, "ptaki", efekty.wrony(120, 70, n=5, seed=58, amplitude=60, duration=3000), before="dab")
C_REVEAL["ptaki"] = "upadek"
C_COMMENTS["ptaki"] = "ptaki zrywają się z lasu (# pokaz: upadek)"
C_EXTRA["ptaki"] = {"hideAfter": 4000, "fadeDuration": 800}

# ======================= UBOZE przy piecu (noc) =======================
U = {}
w = sciana_deski(390, 440, 16)
w.append('<rect width="390" height="440" fill="url(#hatchNight)" stroke="none" opacity="0.6"/>')
w.append('<path d="M-10 300H400V440H-10Z" fill="url(#hatchDense)" stroke="none" opacity="0.8"/><path d="M-10 300H400" fill="none" stroke-width="3"/>')
w.append('<path d="M40 80H110V150H40Z" fill="#FFFFFF" stroke-width="3"/><path d="M75 80V150M40 115H110" fill="none" stroke-width="3"/><circle cx="96" cy="94" r="7" fill="#FFFFFF" stroke-width="1.2"/>')
w.append('<path d="M210 300V120H370V300Z" fill="#FFFFFF" stroke-width="3"/><path d="M204 124H376" fill="none" stroke-width="3"/>')
w.append('<path d="M250 300V250Q290 228 330 250V300Z" fill="#000000" stroke-width="2.4"/>')
w.append('<path d="M20 200H180" fill="none" stroke-width="3"/>')                                 # polka
U["tlo"] = (0, 0, 390, 440, w[0] + "\n" + group(w[1:]))
U["garnki"] = (24, 170, 150, 32, group(['<path d="M34 200c0 -14 24 -14 24 0z M84 200c0 -18 30 -18 30 0z M134 200c0 -12 20 -12 20 0z" fill="#FFFFFF" stroke-width="1.6"/>']))
U["zar"] = (254, 280, 72, 22, group([f'<path d="M262 298q4 -8 8 0q4 -10 8 0q4 -8 8 0q4 -6 8 0q4 -8 8 0" fill="none" stroke="{RED}" stroke-width="2.2"/>']))
U["smuga"] = efekty.smuga([(40, 150), (110, 150), (240, 300), (130, 300)], opacity=0.28)[0]
TR = art.parse_transform("translate(150 176) scale(0.25)")
RIG_UBOZE = art.rig("uboze", TR, [
    ("cialo", ["cien", "nozki", "tulow"], {"type": "bob", "amplitude": 0.5, "duration": 2400}, None),
    ("broda", ["broda"], {"type": "sway", "amplitude": 3, "duration": 3000}, "broda"),
    ("glowa", ["glowa"], {"type": "sway", "amplitude": 4, "duration": 2400}, "glowa"),
    ("czapka", ["czapeczka"], {"type": "sway", "amplitude": 6, "duration": 1200}, "czapeczka"),
    ("okruch", ["rece_z_okruchem"], {"type": "sway", "amplitude": 4, "duration": 2000}, "rece_z_okruchem")], "uboze")
RIG_NAPARSTEK = art.rig("uboze", TR, [("naparstek", ["rece_z_naparstkiem"], {"type": "sway", "amplitude": 8, "duration": 1200}, "rece_z_naparstkiem")], "uboze")
art.install_rig(U, RIG_UBOZE)
art.install_rig(U, RIG_NAPARSTEK)
U["myszy"] = (100, 300, 150, 20, group(['<path d="M110 312c2 -6 10 -6 12 0zM110 312l-6 2M160 314c2 -6 10 -6 12 0zM172 314l6 2" fill="#000000" stroke-width="1"/>']))
U["slady"] = (146, 298, 70, 20, group(['<path d="M150 312c6 -4 14 -6 22 -2c6 -4 14 -4 20 0c6 -2 12 0 16 4" fill="none" stroke="#FFFFFF" stroke-width="1.2"/>'] + [f'<path d="M{x} {y}l{dx} -3" fill="none" stroke="#FFFFFF" stroke-width="1"/>' for x, y, dx in [(156, 308, 3), (166, 304, -2), (176, 309, 4), (188, 303, -3), (198, 308, 2), (206, 305, 3)]]))
p = ['<path d="M-10 432H400V844H-10Z" fill="url(#hatchDense)" stroke="none" opacity="0.8"/>']
U["przod"] = (0, 422, 390, 422, group(p))
UB = art.rig_names(RIG_UBOZE)
U["obloczek"] = (176, 250, 70, 60, group([f'<path d="{ribbon(182, 236, 280, 12, 3)}" fill="#EDEBE6" stroke-width="1.2" opacity="0.85"/>']))
UBOZE = ["tlo", "smuga", "garnki", "zar"] + UB + art.rig_names(RIG_NAPARSTEK) + ["obloczek", "myszy", "slady", "przod"]
U_REVEAL = {n: "uboze" for n in UB}
U_REVEAL.update({"uboze_naparstek": "mleko", "myszy": "myszy", "slady": "slady", "obloczek": "zniknal"})
U_ANIM = {"garnki": {"type": "sway", "amplitude": 1.5, "duration": 260, "anchorX": 0.5, "anchorY": 1},
          "zar": {"type": "flicker", "amplitude": 0.3, "duration": 1500}, "smuga": {"type": "flicker", "amplitude": 0.7, "duration": 6000},
          "myszy": {"type": "drift", "amplitude": 40, "duration": 2400},
          "obloczek": {"type": "ripple", "amplitude": 1.4, "duration": 1400, "anchorX": 0.5, "anchorY": 0.6}}
U_ANIM.update(art.rig_anims(RIG_UBOZE))
U_ANIM.update(art.rig_anims(RIG_NAPARSTEK))
U_EXTRA = {n: {"hideOn": "zniknal", "fadeDuration": 1200} for n in UB}
U_EXTRA["uboze_okruch"] = {"hideOn": "mleko, zniknal", "fadeDuration": 600}
U_EXTRA["uboze_naparstek"] = {"hideOn": "zniknal", "fadeDuration": 600}
U_EXTRA.update({"zar": {"noInvert": True}, "garnki": {"hideOn": "zniknal"}, "obloczek": {"hideAfter": 1500, "fadeDuration": 500}, "przod": {"depth": 1.0}})
U_COMMENTS = {"tlo": "izba nocą: okno z księżycem, piec, półka", "garnki": "garnki dzwonią na półce (drżą; cichną przy # pokaz: zniknal)",
              "zar": "żar w piecu (czerwony)", "smuga": "smuga księżyca (pulsuje)", "myszy": "myszy w izbie (# pokaz: myszy)",
              "slady": "rozgrzebany popiół na przypiecku (# pokaz: slady)", "obloczek": "obłoczek popiołu, gdy ubożę znika (# pokaz: zniknal)", "przod": "pierwszy plan"}
U_COMMENTS.update({n: f"ubożę przy piecu — {n[6:]} (rysunek autora; # pokaz: uboze, znika przy # pokaz: zniknal)" for n in UB})
U_COMMENTS["uboze_naparstek"] = "ubożę pije mleko z naparstka (rysunek autora; # pokaz: mleko)"

# ======================= PRZED ZNIWAMI =======================
Z = {}
rnd = random.Random(506)
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M0 0H390V140C300 154 200 130 110 146C60 154 30 144 0 150Z" fill="url(#hatch)" stroke="none" opacity="0.6"/>']
t.append('<path d="M-10 230C80 220 200 226 400 218V440H-10Z" fill="#EDEBE6" stroke-width="3"/>')
for i in range(14):
    t.append(spruce(220 + i * 13, 226 - (i % 2) * 3, 50 + (i % 3) * 12, 20))
t.append('<path d="M20 252C60 240 160 240 200 252C206 266 160 274 100 272C50 270 14 264 20 252Z" fill="url(#water)" stroke-width="2"/>')
from kapliczki import hut
for (x, y, k) in [(30, 300, 1.1), (120, 296, 0.9)]:
    t.append(hut(x, y, k))
t.append(kapliczka(196, 330, 0.6))
Z["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
Z["slonce"] = (300, 150, 60, 40, group(['<path d="M306 186A24 24 0 0 1 354 186Z" fill="#FFFFFF" stroke-width="2.4"/>']))
Z["swierczki"] = (200, 220, 60, 70, group([spruce(214, 290, 50, 20), spruce(240, 296, 40, 16)]))
STRIPS = 5
for k in range(STRIPS):
    Z[f"zboze_{k}"] = (k * 78, 330, 80, 100, group([f'<path d="M{k * 78 + i * 8} 426C{k * 78 + i * 8 - 2} 400 {k * 78 + i * 8 + 2} 380 {k * 78 + i * 8} 360" fill="none" stroke-width="1.3"/>'
                                                    f'<ellipse cx="{k * 78 + i * 8}" cy="354" rx="2.4" ry="7" fill="url(#hatchDense)" stroke-width="1"/>' for i in range(10)]))
Z["franek"] = (90, 236, 30, 40, group([postacie.child(104, 268, 0.9)]))
STEPS = [(60, 404), (88, 386), (110, 368), (134, 352), (160, 338)]
for i, (x, y) in enumerate(STEPS):
    Z[f"slad_{i}"] = (x - 12, y - 10, 24, 18, group([f'<path d="M{x - 9} {y + 4}c0 -6 4 -9 7 -7c2 -4 7 -4 9 0c3 -2 6 1 5 5c2 1 2 3 0 4z" fill="url(#hatchDense)" stroke-width="1.2"/>']))
p = ['<path d="M-10 432H400V844H-10Z" fill="#EDEBE6" stroke="none"/>']
Z["przod"] = (0, 422, 390, 422, group(p))
ZNIWA = ["tlo", "slonce", "swierczki", "franek"] + [f"slad_{i}" for i in range(len(STEPS))] + [f"zboze_{k}" for k in range(STRIPS)] + ["przod"]
Z_REVEAL = {"franek": "franek_noc"}
Z_REVEAL.update({f"slad_{i}": "slady" for i in range(len(STEPS))})  # kepy mchu wyrosle przez noc
Z_ANIM = {"slonce": {"type": "slide", "dx": 0, "dy": 20, "duration": 30000, "once": True},
          "swierczki": {"type": "sway", "amplitude": 2, "duration": 3400, "anchorX": 0.5, "anchorY": 1},
          "franek": {"type": "bob", "amplitude": 0.4, "duration": 2400}}
Z_ANIM.update({f"zboze_{k}": {"type": "sway", "amplitude": 3, "duration": 3200, "anchorX": 0.5, "anchorY": 1, "phase": round(k * 0.08, 2)} for k in range(STRIPS)})
Z_EXTRA = {"franek": {"fadeDuration": 2500}, "przod": {"depth": 1.0}}
Z_EXTRA.update({f"slad_{i}": {"appearAfter": 400 + i * 600, "fadeDuration": 400} for i in range(len(STEPS))})
Z_COMMENTS = {"tlo": "wieczór przed żniwami: jezioro, chałupy, kapliczka, bór", "slonce": "słońce zachodzi (powoli)", "swierczki": "młode świerki podchodzą pod płoty",
              "franek": "Franek nad jeziorem (# pokaz: franek_noc)", "przod": "pierwszy plan"}
Z_COMMENTS.update({f"zboze_{k}": "dojrzałe zboże faluje" for k in range(STRIPS)})
Z_COMMENTS.update({f"slad_{i}": "kępa mchu wyrosła przez noc między grządkami (# pokaz: slady, po kolei)" for i in range(len(STEPS))})
_add(Z, ZNIWA, Z_ANIM, Z_COMMENTS, "jaskolki", efekty.wrony(100, 180, n=3, k=0.35, seed=59, amplitude=50), before="swierczki")
Z_COMMENTS["jaskolki"] = "jaskółki śmigają nad polem"

# ======================= TARTAK W SUSZY (rozdz. 8: Urbaniak i chlopi) =======================
TS = {}
rnd = random.Random(511)
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<circle cx="320" cy="62" r="22" fill="#FFFFFF" stroke-width="2.6"/>',
     '<path d="M0 0H390V100C300 114 200 90 110 106C60 114 30 104 0 110Z" fill="url(#hatch)" stroke="none" opacity="0.25"/>']
t.append('<path d="M-10 190C80 180 200 186 400 178V440H-10Z" fill="#EDEBE6" stroke-width="3"/>')
for i in range(16):
    t.append(spruce(-4 + i * 18, 186 - (i % 2) * 4, 60 + (i % 3) * 14, 26))
# wyschnieta struga: popekany mul zamiast wody
t.append('<path d="M70 196C110 230 150 250 200 290C240 322 290 344 400 360V384C290 370 236 350 190 316C140 280 100 250 56 200Z" fill="url(#hatch)" stroke-width="2" opacity="0.8"/>')
for (x, y) in [(90, 214), (130, 246), (170, 276), (214, 306), (260, 334), (310, 352), (356, 364)]:
    t.append(f'<path d="M{x} {y}l8 6l-4 8M{x + 8} {y + 6}l9 -2" fill="none" stroke-width="1.2"/>')
t.append('<path d="M150 300V200H300V300Z" fill="#FFFFFF" stroke-width="3"/><path d="M136 204L180 160H286L314 204Z" fill="url(#hatch)" stroke-width="3"/>')
for x in range(160, 300, 12):
    t.append(f'<path d="M{x} 202V300" fill="none" stroke-width="0.8"/>')
t.append('<path d="M186 300V236H262V300Z" fill="#000000" stroke-width="2.4"/>')
t.append('<path d="M222 244V296" fill="none" stroke="#FFFFFF" stroke-width="3"/><path d="M200 290H250V296H200Z" fill="#FFFFFF" stroke-width="1.2"/>')
t.append(kolo(134, 258, 24))
t.append(deski(20, 300, 70, 6) + deski(310, 330, 60, 5) + pnie(30, 386, 10))
t.append('<path d="M-10 404C90 396 200 396 400 402" fill="none" stroke-width="2"/>')
TS["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
TS["urbaniak"] = (270, 300, 60, 130, group([tlusty(296, 426, 1.5)]))
TS["chlopi"] = (20, 330, 220, 100, group([postacie.man(x, 428, 1.1, hat=True) for x in (50, 110, 170)] + [postacie.man(80, 432, 1.15, hat=False), postacie.man(140, 432, 1.2, hat=False), postacie.man(214, 430, 1.05, hat=True)]))
p = ['<path d="M-10 432H400V844H-10Z" fill="#EDEBE6" stroke="none"/>']
TS["przod"] = (0, 422, 390, 422, group(p))
SUSZA_T = ["tlo", "chlopi", "urbaniak", "przod"]
TS_REVEAL = {}
TS_ANIM = {"chlopi": {"type": "bob", "amplitude": 0.4, "duration": 2600}, "urbaniak": {"type": "sway", "amplitude": 1.2, "duration": 3000, "anchorX": 0.5, "anchorY": 1}}
TS_EXTRA = {"przod": {"depth": 1.0}}
TS_COMMENTS = {"tlo": "tartak w suszy: wyschnięta, popękana struga, nieruchome koło i piła", "chlopi": "chłopi z Zapadliny pod tartakiem",
              "urbaniak": "pan Urbaniak na ganku (kołysze się na piętach)", "przod": "pierwszy plan"}
_add(TS, SUSZA_T, TS_ANIM, TS_COMMENTS, "zar", ((0, 120, 390, 60, group([f'<path d="{ribbon(-20, 410, 150, 8, 3)}" fill="#FFFFFF" stroke="none" opacity="0.35"/>'])),
                                         {"type": "drift", "amplitude": 10, "duration": 5000}, "drżące od upału powietrze"), before="chlopi")
_add(TS, SUSZA_T, TS_ANIM, TS_COMMENTS, "kurz", efekty.pylki(20, 340, 350, 80, n=10, seed=512, duration=6000), before="przod")
TS_COMMENTS["kurz"] = "kurz nad wyschniętą drogą"
_add(TS, SUSZA_T, TS_ANIM, TS_COMMENTS, "wrony", efekty.wrony(70, 80, n=3, seed=513), before="chlopi")
_add(TS, SUSZA_T, TS_ANIM, TS_COMMENTS, "lancuszek", ((300, 360, 14, 12, group(['<path d="M302 362c4 6 8 6 10 0" fill="none" stroke="#FFFFFF" stroke-width="1.2"/>'])),
                                               {"type": "sway", "amplitude": 10, "duration": 1200, "anchorX": 0, "anchorY": 0}, "łańcuszek od zegarka w palcach Urbaniaka"), before="przod")

BACKGROUNDS = {"tartak": ("bg_tartak", T, TARTAK, T_ANIM, T_REVEAL, T_EXTRA, T_COMMENTS, "tartak"),
               "tartak_susza": ("bg_tartaksusza", TS, SUSZA_T, TS_ANIM, TS_REVEAL, TS_EXTRA, TS_COMMENTS, "tartak w suszy"),
               "ognisko_tartak": ("bg_ognisko", O, OGNISKO, O_ANIM, O_REVEAL, O_EXTRA, O_COMMENTS, "ognisko w tartaku"),
               "pole_orka": ("bg_orka", F, POLE, F_ANIM, F_REVEAL, F_EXTRA, F_COMMENTS, "orka"),
               "stary_dab": ("bg_dab", D, DAB, D_ANIM, D_REVEAL, D_EXTRA, D_COMMENTS, "Stary Dąb"),
               "sciecie_debu": ("bg_sciecie", C, SCIECIE, C_ANIM, C_REVEAL, C_EXTRA, C_COMMENTS, "ścięcie dębu"),
               "uboze_piec": ("bg_uboze", U, UBOZE, U_ANIM, U_REVEAL, U_EXTRA, U_COMMENTS, "ubożę przy piecu"),
               "przed_zniwami": ("bg_zniwa", Z, ZNIWA, Z_ANIM, Z_REVEAL, Z_EXTRA, Z_COMMENTS, "przed żniwami")}

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
