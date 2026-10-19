# Generator tel rozdzialu siodmego (Zielone Swiatki), strony 5-9:
#   swiatki         — wies w Zielone Swiatki: chalupa z brzozowymi galazkami za wegłami, tatarak na progu, kapliczka w wiankach
#                     z kaczencow, plot; Hanka z piolunem (# pokaz: hanka), odbiega z usmiechem, piolun przy sercu Jaromira
#                     (# pokaz: usmiech) albo odchodzi, piolun pod plotem (# pokaz: odchodzi)
#   jezioro_swiatki — wieczor nad jeziorem: ognisko na cyplu, mlodziez; wianki z luczywkami (# pokaz: wianki), Wojcikowa na pomoscie
#                     z korona z grzybieni (# pokaz: wojcikowa), spiew z trzcin (# pokaz: spiew), Franek wchodzi do wody (# pokaz: franek)
#   rusalki         — noc, plycizna w ksiezycu: trzy rusalki autora (# pokaz: rusalki, znikaja przy # pokaz: znikaja), Franek po pas
#                     w wodzie, piolun leci (# pokaz: piolun), smiech (# pokaz: smiech), szarpanie w wodzie (# pokaz: szarpanie)
#   brzeg_noc       — brzeg noca: Franek lezy, kaszle wodą, potem siada (# pokaz: franek), Jaromir i Hanka mokrzy, dogasajace ognisko
#   pomost_rano     — swit nad jeziorem, mgla schodzi: korale z jarzebiny na pomoscie (# pokaz: korale), zabrane — mokry slad
#                     (# pokaz: zabrane), wrzucone do wody — kregi i westchnienie trzcin (# pokaz: plusk)
#   bez_zachod      — zakwitly bez z zbutwiala baza o zachodzie: Hanka sama, potem para (# pokaz: para), pocalunek (# pokaz: pocalunek)
#                     albo splecione dlonie (# pokaz: dlonie), ciemna postac we mgle nad jeziorem (# pokaz: postac)
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/rusalki.py src/LittleVillage/Resources/Images
#   python3 tools/Backgrounds/rusalki.py --master <tlo> [wszystko] > podglad.svg
import sys, random, math, re
from common import *
import art, postacie, efekty
from efekty import add as _add
from kapliczki import shrine

RED = "#A8101A"
PRZOD = ['<path d="M-10 432H400V844H-10Z" fill="#EDEBE6" stroke="none"/>']


def chata(x, base, k=1.0):
    """Chalupa z bali pod strzecha, drzwi i okienko."""
    w, h = 150 * k, 62 * k
    g = [f'<path d="M{x} {base}V{base - h}H{x + w}V{base}Z" fill="#FFFFFF" stroke-width="2.6"/>']
    for i in range(1, 6):
        g.append(f'<path d="M{x} {base - i * h / 6:.0f}H{x + w}" fill="none" stroke-width="1"/>')
    g.append(f'<path d="M{x - 14 * k} {base - h + 2}L{x + w / 2} {base - h - 58 * k}L{x + w + 14 * k} {base - h + 2}Z" fill="url(#hatchDense)" stroke-width="2.6"/>')
    g.append(f'<path d="M{x + 92 * k} {base}V{base - 44 * k}H{x + 116 * k}V{base}Z" fill="#000000" stroke-width="2"/>')
    g.append(f'<path d="M{x + 26 * k} {base - 44 * k}H{x + 56 * k}V{base - 20 * k}H{x + 26 * k}Z" fill="#FFFFFF" stroke-width="2"/><path d="M{x + 41 * k} {base - 44 * k}V{base - 20 * k}M{x + 26 * k} {base - 32 * k}H{x + 56 * k}" fill="none" stroke-width="1.6"/>')
    g.append(f'<path d="M{x + 110 * k} {base - h - 30 * k}V{base - h - 52 * k}H{x + 124 * k}V{base - h - 18 * k}" fill="#FFFFFF" stroke-width="2"/>')
    return "".join(g)


def brzozka(x, base, h, k=1.0, lean=0):
    """Mloda brzozowa galazka zatknieta za wegiel: bialy pret z kreskami i drobne listki."""
    tip = (x + lean, base - h)
    g = [f'<path d="M{x} {base}Q{x + lean * 0.3:.0f} {base - h * 0.5:.0f} {tip[0]:.0f} {tip[1]:.0f}" fill="none" stroke-width="3"/>',
         f'<path d="M{x} {base}Q{x + lean * 0.3:.0f} {base - h * 0.5:.0f} {tip[0]:.0f} {tip[1]:.0f}" fill="none" stroke="#FFFFFF" stroke-width="1.4"/>']
    rnd = random.Random(int(x * 7 + base))
    for i in range(14):
        f = rnd.uniform(0.25, 1.0)
        px, py = x + lean * f * f, base - h * f
        side = 1 if i % 2 else -1
        g.append(f'<path d="M{px:.0f} {py:.0f}q{side * 4} {-2} {side * 8} {3}q{-side * 4} {3} {-side * 8} {-3}z" fill="url(#hatch)" stroke-width="1"/>')
    return "".join(g)


def wianek_wody(x, y, k=1.0, light=True):
    """Wianek plywajacy po wodzie (elipsa z kwiatkami), opcjonalnie z luczywkiem."""
    g = [f'<ellipse cx="{x}" cy="{y}" rx="{11 * k:.1f}" ry="{3.6 * k:.1f}" fill="url(#hatch)" stroke-width="1.6"/>']
    for dx in (-8, -3, 3, 8):
        g.append(f'<circle cx="{x + dx * k:.1f}" cy="{y - 2 * k + abs(dx) * 0.1:.1f}" r="{1.6 * k:.1f}" fill="#FFFFFF" stroke-width="0.8"/>')
    if light:
        g.append(f'<path d="M{x} {y - 2}V{y - 10 * k:.1f}" fill="none" stroke-width="1.6"/>')
    return "".join(g)


def ogienek(x, y, k=1.0):
    return f'<path d="M{x} {y}c-2.4 -2.4 -1.6 -6.4 0 -9c1.6 2.6 2.4 6.6 0 9z" fill="{RED}" stroke="none"/>'


def sitting(x, y, k=1.0, facing=1):
    """Postac siedzaca na ziemi z kolanami pod broda (profil)."""
    f = facing
    P = lambda dx, dy: f"{x + dx * f * k:.1f} {y + dy * k:.1f}"
    return (f'<g stroke-width="2"><path d="M{P(-10, 0)}C{P(-14, -12)} {P(-10, -26)} {P(-2, -30)}C{P(6, -30)} {P(10, -18)} {P(14, -10)}L{P(18, 0)}Z" fill="#000000"/>'
            f'<circle cx="{x + 1 * f * k:.1f}" cy="{y - 36 * k:.1f}" r="{6.4 * k:.1f}" fill="#000000"/></g>')


def lying(x, y, k=1.0):
    """Postac lezaca na brzegu (glowa z lewej)."""
    P = lambda dx, dy: f"{x + dx * k:.1f} {y + dy * k:.1f}"
    return (f'<g stroke-width="2"><circle cx="{x - 30 * k:.1f}" cy="{y - 6 * k:.1f}" r="{6.4 * k:.1f}" fill="#000000"/>'
            f'<path d="M{P(-22, -12)}C{P(-6, -16)} {P(14, -14)} {P(24, -8)}L{P(44, -6)}L{P(44, 0)}L{P(-22, 0)}Z" fill="#000000"/>'
            f'<path d="M{P(-20, -10)}L{P(-30, 4)}" fill="none" stroke-width="{3 * k:.1f}"/></g>')


def jezioro_noc(sky_dark=True, moon=(300, 64), water_top=200):
    """Wspolne tlo nocnego jeziora: niebo, ksiezyc, drugi brzeg z borem, tafla."""
    t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>']
    if sky_dark:
        t.append(f'<path d="M0 0H390V{water_top}H0Z" fill="url(#hatchNight)" stroke="none" opacity="0.85"/>')
    t.append(f'<path d="M-10 {water_top}C80 {water_top - 8} 200 {water_top - 4} 400 {water_top - 10}V{water_top + 10}H-10Z" fill="#000000" stroke-width="2"/>')
    for i in range(24):
        t.append(spruce(-6 + i * 17, water_top - 4 - (i % 2) * 3, 26 + (i % 3) * 8, 13))
    t.append(f'<path d="M-10 {water_top + 6}H400V440H-10Z" fill="url(#water)" stroke="none"/>')
    t.append(f'<path d="M-10 {water_top + 6}H400" fill="none" stroke-width="2"/>')
    return t


# ======================= ZIELONE SWIATKI =======================
S = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M0 0H390V40C300 52 200 34 110 46C60 52 30 44 0 50Z" fill="url(#hatch)" stroke="none" opacity="0.5"/>',
     '<circle cx="330" cy="54" r="18" fill="#FFFFFF" stroke-width="2.6"/><path d="M330 26v-8M330 82v8M302 54h-8M358 54h8M310 34l-6 -6M350 34l6 -6" fill="none" stroke-width="2"/>',
     '<path d="M-10 230C80 222 200 226 400 220V440H-10Z" fill="#EDEBE6" stroke-width="2.6"/>']
for i in range(12):
    t.append(spruce(250 + i * 12, 226 - (i % 2) * 3, 34 + (i % 3) * 8, 15))
t.append(chata(30, 300, 1.0))
# tatarak rozsypany na klepisku przed progiem
rnd = random.Random(701)
for i in range(16):
    x, y = rnd.uniform(100, 170), rnd.uniform(302, 318)
    t.append(f'<path d="M{x:.0f} {y:.0f}l{rnd.uniform(-16, 16):.0f} {rnd.uniform(-2, 3):.0f}" fill="none" stroke-width="1.4"/>')
t.append(shrine(300, 312, 1.0))
# plot z zerdzi
t.append('<path d="M-10 356H400M-10 372H400" fill="none" stroke-width="2.4"/>')
for x in range(-4, 400, 24):
    t.append(f'<path d="M{x - 3} 388V344L{x} 338L{x + 3} 344V388Z" fill="#FFFFFF" stroke-width="1.6"/>')
for i in range(22):
    t.append(grass(rnd.uniform(0, 390), rnd.uniform(392, 432), rnd.uniform(0.7, 1.1)))
S["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
S["brzozka_0"] = (14, 220, 40, 84, group([brzozka(30, 300, 76, 1.0, lean=-8)]))
S["brzozka_1"] = (166, 220, 40, 84, group([brzozka(180, 300, 76, 1.0, lean=8)]))
S["brzozka_2"] = (130, 250, 30, 60, group([brzozka(142, 302, 50, 1.0, lean=4)]))
S["wianki"] = (282, 220, 36, 40, group([f'<ellipse cx="300" cy="{236 + i * 10}" rx="12" ry="4" fill="none" stroke-width="2"/>' +
                                        "".join(f'<circle cx="{300 + dx}" cy="{236 + i * 10 + (2 if abs(dx) > 6 else 3)}" r="2.2" fill="#FFFFFF" stroke-width="1"/>' for dx in (-10, -4, 4, 10))
                                        for i in range(2)]))
S["kaczence"] = (276, 296, 50, 18, group([f'<path d="M{x} 312v-8" fill="none" stroke-width="1.2"/><circle cx="{x}" cy="303" r="3" fill="#FFFFFF" stroke-width="1.2"/><circle cx="{x}" cy="303" r="0.9" fill="#000000" stroke="none"/>'
                                          for x in range(282, 322, 7)]))
S["dym"] = (136, 140, 30, 60, group(['<path d="M148 196c-6 -8 4 -12 -1 -20c-3 -5 2 -10 0 -14c-2 -6 4 -10 2 -16" fill="none" stroke-width="2.6" opacity="0.6"/>']))
S["jaromir"] = (150, 270, 40, 90, group([postacie.man(170, 352, 1.05, hat=False)]))
HANKA_BUNDLE = '<path d="M{x} {y}l10 -16M{x} {y}l14 -12M{x} {y}l6 -18M{x} {y}l16 -6" fill="none" stroke="#000000" stroke-width="1.4"/><path d="M{x} {y}l8 -9" fill="none" stroke="#FFFFFF" stroke-width="1"/>'
S["hanka"] = (210, 300, 50, 92, group([postacie.girl(230, 390, 2.0), HANKA_BUNDLE.format(x=242, y=346)]))
S["hanka_biegnie"] = (212, 300, 56, 92, group([postacie.girl(234, 390, 2.0, running=True)]))
S["piolun_serce"] = (170, 300, 22, 20, group([HANKA_BUNDLE.format(x=174, y=318)]))
S["hanka_odchodzi"] = (212, 300, 50, 92, group([postacie.girl(232, 390, 2.0, facing=-1)]))
S["piolun_plot"] = (226, 386, 40, 16, group(['<path d="M230 398l30 -6M232 400l28 -2M234 396l24 -10" fill="none" stroke-width="1.4"/>']))
S["przod"] = (0, 422, 390, 422, group(PRZOD))
SWIATKI = ["tlo", "dym", "brzozka_0", "brzozka_1", "brzozka_2", "wianki", "kaczence", "jaromir", "piolun_serce",
           "hanka", "hanka_biegnie", "hanka_odchodzi", "piolun_plot", "przod"]
S_REVEAL = {"hanka": "hanka", "hanka_biegnie": "usmiech", "piolun_serce": "usmiech", "hanka_odchodzi": "odchodzi", "piolun_plot": "odchodzi"}
S_ANIM = {"brzozka_0": {"type": "sway", "amplitude": 4, "duration": 2600, "anchorX": 0.5, "anchorY": 1},
          "brzozka_1": {"type": "sway", "amplitude": 4, "duration": 2900, "anchorX": 0.5, "anchorY": 1, "phase": 0.3},
          "brzozka_2": {"type": "sway", "amplitude": 3, "duration": 2400, "anchorX": 0.5, "anchorY": 1, "phase": 0.6},
          "wianki": {"type": "sway", "amplitude": 3, "duration": 3200, "anchorX": 0.5, "anchorY": 0},
          "kaczence": {"type": "sway", "amplitude": 2, "duration": 2200, "anchorX": 0.5, "anchorY": 1},
          "dym": {"type": "sway", "amplitude": 3, "duration": 5000, "anchorX": 0.5, "anchorY": 1},
          "jaromir": {"type": "bob", "amplitude": 0.4, "duration": 3000},
          "hanka": {"type": "bob", "amplitude": 0.6, "duration": 2400},
          "hanka_biegnie": {"type": "slide", "dx": 190, "dy": 0, "duration": 2600, "once": True},
          "hanka_odchodzi": {"type": "slide", "dx": -260, "dy": 0, "duration": 7000, "once": True}}
S_EXTRA = {"hanka": {"hideOn": "usmiech,odchodzi", "fadeDuration": 300}, "hanka_biegnie": {"hideAfter": 2400, "fadeDuration": 300},
           "hanka_odchodzi": {"hideAfter": 6500, "fadeDuration": 600}, "piolun_serce": {"fadeDuration": 800}, "przod": {"depth": 1.0}}
S_COMMENTS = {"tlo": "Zielone Świątki: chałupa pod strzechą, tatarak na klepisku, kapliczka, płot, bór",
              "brzozka_0": "brzozowa gałązka za węgłem (kołysze się)", "brzozka_1": "brzozowa gałązka za węgłem (kołysze się)",
              "brzozka_2": "brzozowa gałązka wbita przy progu (kołysze się)", "wianki": "wianki z kaczeńców na kapliczce (kołyszą się)",
              "kaczence": "kaczeńce u stóp kapliczki", "dym": "dym z komina", "jaromir": "Jaromir za płotem",
              "hanka": "Hanka z piołunem pod płotem (# pokaz: hanka)", "hanka_biegnie": "Hanka odbiega z uśmiechem (# pokaz: usmiech)",
              "piolun_serce": "piołun za pazuchą Jaromira (# pokaz: usmiech)", "hanka_odchodzi": "Hanka odchodzi bez słowa (# pokaz: odchodzi)",
              "piolun_plot": "piołun rzucony pod płot (# pokaz: odchodzi)", "przod": "pierwszy plan"}
_add(S, SWIATKI, S_ANIM, S_COMMENTS, "chmurki", ((40, 70, 220, 40, group(['<path d="M60 92c6 -10 20 -10 24 0c6 -6 18 -2 16 6h-40z" fill="#FFFFFF" stroke-width="1.6"/>',
                                                                             '<path d="M200 84c6 -10 20 -10 24 0c6 -6 18 -2 16 6h-40z" fill="#FFFFFF" stroke-width="1.6"/>'])),
                                                 {"type": "drift", "amplitude": 14, "duration": 16000}, "obłoki (dryfują)"), before="dym")
_add(S, SWIATKI, S_ANIM, S_COMMENTS, "jaskolki", efekty.wrony(120, 120, n=3, k=0.35, seed=71, amplitude=50, duration=5200), before="dym")
S_COMMENTS["jaskolki"] = "jaskółki nad wsią"
_add(S, SWIATKI, S_ANIM, S_COMMENTS, "motyl", ((250, 310, 28, 22, group([postacie.butterfly(264, 320, 0.9)])),
                                               {"type": "wander", "amplitude": 24, "flap": 0.65, "duration": 6400}, "motyl przy kapliczce"), before="jaromir")

# ======================= WIECZOR NAD JEZIOREM =======================
J = {}
t = jezioro_noc(moon=None, water_top=196)
# cypel piaszczysty z lewej, pomost z prawej, trzciny
t.append('<path d="M-10 300C40 290 110 286 160 300C150 330 80 344 -10 340Z" fill="#EDEBE6" stroke-width="2.4"/>')
for i in range(40):
    t.append(f'<circle cx="{random.Random(i).uniform(0, 150):.0f}" cy="{random.Random(i + 99).uniform(300, 336):.0f}" r="0.9" fill="#000000" stroke="none"/>')
t.append('<path d="M76 316l-14 -6M84 316l14 -8M80 318v-10" fill="none" stroke-width="2.4"/>')
t.append('<path d="M262 300H400V308H262Z" fill="#FFFFFF" stroke-width="2.2"/>')
for x in range(270, 400, 26):
    t.append(f'<path d="M{x} 308V332" fill="none" stroke-width="2.4"/>')
t.append('<path d="M-10 360C100 352 280 356 400 350V440H-10Z" fill="#EDEBE6" stroke-width="2.6"/>')
for i in range(26):
    t.append(grass(random.Random(i + 7).uniform(0, 390), random.Random(i + 70).uniform(370, 432), 0.9))
J["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
J["ksiezyc"] = (60, 60, 40, 40, group(['<path d="M90 64A20 20 0 1 0 90 100A15 15 0 1 1 90 64Z" fill="#FFFFFF" stroke-width="2"/>']))
J["plomien"] = (70, 288, 20, 26, group([f'<path d="M80 312c-7 -6 -5 -16 0 -22c5 6 7 16 0 22z" fill="{RED}" stroke="none"/>']))
J["blask"] = (30, 270, 100, 60, group(['<ellipse cx="80" cy="304" rx="46" ry="22" fill="#FFFFFF" stroke="none" opacity="0.35"/>']))
J["iskry_ognia"] = (64, 250, 32, 50, group([f'<circle cx="{x}" cy="{y}" r="1.2" fill="#FFFFFF" stroke-width="0.6"/>' for (x, y) in [(72, 290), (84, 280), (78, 268), (88, 262)]]))
J["mlodziez"] = (14, 270, 150, 60, group([sitting(40, 320, 0.9, 1), sitting(122, 320, 0.9, -1), postacie.girl(56, 324, 1.2), postacie.girl(106, 326, 1.2)]))
WREATHS = [(150, 236, 0.9), (200, 260, 1.0), (240, 228, 0.8), (120, 276, 1.0)]
for k, (x, y, s) in enumerate(WREATHS):
    J[f"wianek_{k}"] = (x - 14, y - 14, 28, 20, group([wianek_wody(x, y, s), ogienek(x, y - 9 * s)]))
J["wojcikowa"] = (300, 230, 30, 72, group([postacie.woman(316, 300, 1.0)]))
J["korona"] = (276, 316, 30, 12, group(['<ellipse cx="290" cy="322" rx="12" ry="3.6" fill="#FFFFFF" stroke-width="1.6"/>' +
                                        "".join(f'<path d="M{290 + dx} 320c-2 -4 2 -6 2 -2c0 -4 4 -2 2 2z" fill="#FFFFFF" stroke-width="0.9"/>' for dx in (-8, -2, 4))]))
J["franek"] = (170, 330, 50, 44, group([sitting(190, 370, 1.1, -1)]))
J["franek_idzie"] = (166, 290, 40, 84, group([postacie.man(186, 370, 1.0, hat=False)]))
J["spiew"] = (300, 230, 90, 70, group([f'<path d="M{310 + i * 22} {290 - i * 10}c6 -6 10 6 16 0s10 6 16 0" fill="none" stroke-width="1.4" stroke-dasharray="3 3"/>' for i in range(3)]))
J["trzciny"] = (330, 260, 70, 50, group([cattail(x, 300 - (x % 3) * 2, 1.4) + reeds(x + 4, 300, 1.4) for x in range(334, 396, 9)]))
J["mgla"] = (-30, 200, 450, 30, group([f'<path d="{ribbon(-20, 410, 212, 12, 4)}" fill="#EDEBE6" stroke-width="1.2" opacity="0.6"/>']))
J["przod"] = (0, 422, 390, 422, group(PRZOD))
JEZIORO = ["tlo", "ksiezyc", "mgla"] + [f"wianek_{k}" for k in range(len(WREATHS))] + ["korona", "blask", "plomien", "iskry_ognia", "mlodziez",
                                                                                     "wojcikowa", "trzciny", "spiew", "franek", "franek_idzie", "przod"]
J_REVEAL = {**{f"wianek_{k}": "wianki" for k in range(len(WREATHS))}, "wojcikowa": "wojcikowa", "korona": "wojcikowa", "spiew": "spiew", "franek_idzie": "franek"}
J_ANIM = {"ksiezyc": {"type": "slide", "dx": 0, "dy": -16, "duration": 40000, "once": True},
          "mgla": {"type": "drift", "amplitude": 12, "duration": 14000},
          **{f"wianek_{k}": {"type": "bob", "amplitude": 1.2, "duration": 2400 + k * 300, "phase": round(k * 0.25, 2)} for k in range(len(WREATHS))},
          "korona": {"type": "slide", "dx": -120, "dy": -50, "duration": 40000, "once": True},
          "plomien": {"type": "flame", "amplitude": 0.18, "duration": 900, "anchorX": 0.5, "anchorY": 1},
          "blask": {"type": "flicker", "amplitude": 0.5, "duration": 1500},
          "iskry_ognia": {"type": "rise", "amplitude": 30, "duration": 1800},
          "mlodziez": {"type": "bob", "amplitude": 0.5, "duration": 2600},
          "trzciny": {"type": "sway", "amplitude": 3, "duration": 3000, "anchorX": 0.5, "anchorY": 1},
          "spiew": {"type": "flicker", "amplitude": 0.1, "duration": 2800},
          "franek_idzie": {"type": "slide", "dx": 40, "dy": -50, "duration": 9000, "once": True}}
J_EXTRA = {**{f"wianek_{k}": {"fadeDuration": 1200 + k * 400} for k in range(len(WREATHS))}, "korona": {"fadeDuration": 1500},
           "plomien": {"noInvert": True}, "blask": {"noInvert": True}, "spiew": {"fadeDuration": 2500},
           "franek": {"hideOn": "franek", "fadeDuration": 300}, "franek_idzie": {"fadeDuration": 300}, "przod": {"depth": 1.0}}
J_COMMENTS = {"tlo": "wieczór nad jeziorem: piaszczysty cypel z ogniskiem, pomost przy trzcinach, bór na drugim brzegu",
              "ksiezyc": "sierp księżyca (powoli wschodzi)", "mgla": "mgła nad wodą", "korona": "korona z grzybieni Wójcikowej odpływa (# pokaz: wojcikowa)",
              "plomien": "ognisko (czerwony płomień)", "blask": "blask ogniska", "iskry_ognia": "iskry z ogniska", "mlodziez": "młodzież przy ognisku",
              "wojcikowa": "stara Wójcikowa na pomoście (# pokaz: wojcikowa)", "trzciny": "trzciny z pałkami (kołyszą się)",
              "spiew": "śpiew bez słów płynie z trzcin (# pokaz: spiew)", "franek": "Franek siedzi nad samą wodą",
              "franek_idzie": "Franek wchodzi do wody (# pokaz: franek)", "przod": "pierwszy plan",
              **{f"wianek_{k}": "wianek z łuczywkiem na wodzie (# pokaz: wianki)" for k in range(len(WREATHS))}}
_add(J, JEZIORO, J_ANIM, J_COMMENTS, "gwiazdy", efekty.iskry(120, 10, 260, 140, n=14, seed=72, duration=3600), before="ksiezyc")
_add(J, JEZIORO, J_ANIM, J_COMMENTS, "nietoperz", ((180, 100, 40, 24, group([postacie.bat(200, 112, 1.0)])),
                                                   {"type": "wander", "amplitude": 60, "flap": 0.6, "duration": 5600}, "nietoperz"), before="mgla")
_add(J, JEZIORO, J_ANIM, J_COMMENTS, "ogniki", ((140, 216, 120, 70, group([f'<path d="M{x} {y}h8" fill="none" stroke="#FFFFFF" stroke-width="1.6"/>' for (x, y) in [(150, 226), (196, 250), (236, 232), (170, 270), (220, 280)]])),
                                                {"type": "flicker", "amplitude": 0.2, "duration": 1700}, "odblaski ognia na wodzie"), before="korona")

# ======================= RUSALKI NA PLYCIZNIE =======================
R = {}
t = jezioro_noc(water_top=180)
t.append('<circle cx="196" cy="70" r="30" fill="#FFFFFF" stroke-width="2.6"/>')
R["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
R["smuga"] = (150, 190, 92, 240, group([f'<path d="M{196 - w / 2:.0f} {y}h{w:.0f}" fill="none" stroke="#FFFFFF" stroke-width="2.4"/>'
                                         for y, w in [(196, 30), (214, 40), (236, 52), (262, 60), (292, 72), (326, 80), (364, 86), (404, 90)]]))
K = 0.38
POOL = ('<path d="M24 422C60 410 110 408 150 410C190 408 240 410 276 422C262 452 204 464 150 464C96 464 38 452 24 422Z" fill="#EDEBE6" stroke="none"/>'
        '<path d="M24 422C60 410 110 408 150 410C190 408 240 410 276 422" fill="none" stroke-width="3"/>')
RIGS = []
SPEC = {"rusalka_1": (78, [("wlosy", ["wlosy_tyl"], {"type": "sway", "amplitude": 8, "duration": 2400, "phase": 0.12}, "wlosy_tyl"),
                           ("reka_l", ["reka_lewa"], {"type": "sway", "amplitude": 10, "duration": 2400}, "reka_lewa"),
                           ("koszula", ["koszula"], {"type": "sway", "amplitude": 2, "duration": 2400}, "koszula"),
                           ("reka_p", ["reka_prawa"], {"type": "sway", "amplitude": 8, "duration": 2400, "phase": 0.5}, "reka_prawa"),
                           ("glowa", ["glowa", "wianek"], {"type": "sway", "amplitude": 6, "duration": 2400}, "glowa"),
                           ("krople", ["krople"], {"type": "rise", "amplitude": -12, "duration": 1200}, None),
                           ("woda", ["woda_i_odbicie"], {"type": "drift", "amplitude": 1.5, "duration": 3000}, None)]),
        "rusalka_2": (196, [("wlosy", ["wlosy_tyl"], {"type": "sway", "amplitude": 3, "duration": 3500}, "wlosy_tyl"),
                            ("reka_l", ["reka_lewa"], {"type": "sway", "amplitude": 4, "duration": 3000}, "reka_lewa"),
                            ("koszula", ["koszula", "wlosy_przod"], {"type": "bob", "amplitude": 0.6, "duration": 3000}, None),
                            ("glowa", ["glowa", "wianek"], {"type": "sway", "amplitude": 3, "duration": 4000}, "glowa"),
                            ("reka_p", ["reka_prawa_do_widza"], {"type": "sway", "amplitude": 5, "duration": 3000, "phase": 0.25}, "reka_prawa_do_widza"),
                            ("krople", ["krople"], {"type": "rise", "amplitude": -12, "duration": 1200, "phase": 0.3}, None),
                            ("woda", ["woda_i_odbicie"], {"type": "drift", "amplitude": 1.5, "duration": 3000, "phase": 0.3}, None)]),
        "rusalka_3": (314, [("wlosy", ["wlosy_tyl"], {"type": "sway", "amplitude": 5, "duration": 2800}, "wlosy_tyl"),
                            ("reka_p", ["reka_prawa"], {"type": "sway", "amplitude": 8, "duration": 2800}, "reka_prawa"),
                            ("koszula", ["koszula"], {"type": "bob", "amplitude": 0.6, "duration": 2800}, None),
                            ("glowa", ["glowa", "wianek", "wlosy_przod"], {"type": "sway", "amplitude": 4, "duration": 2800, "phase": 0.2}, "glowa"),
                            ("reka_l", ["reka_lewa_odgarnia"], {"type": "sway", "amplitude": 6, "duration": 2800, "phase": 0.4}, "reka_lewa_odgarnia"),
                            ("krople", ["krople"], {"type": "rise", "amplitude": -12, "duration": 1200, "phase": 0.6}, None),
                            ("woda", ["woda_i_odbicie"], {"type": "drift", "amplitude": 1.5, "duration": 3000, "phase": 0.6}, None)])}
RUS = []
R_ANIM, R_REVEAL, R_EXTRA, R_COMMENTS = {}, {}, {}, {}
for i, (name, (cx, groups)) in enumerate(SPEC.items()):
    tr = art.parse_transform(f"translate({cx - 150 * K:.1f} {350 - 420 * K:.1f}) scale({K})")
    rig = art.rig(name, tr, groups, f"r{i + 1}")
    # woda autora to prostokat w kolorze papieru — na kreskowanej tafli wygladal jak skrzynka; zostaje owalna, jasna toń wokol nog
    rig = [(n, (*lay[:4], re.sub(r'<path d="M0 41[0-9][^"]*V530H0Z" fill="#EDEBE6" stroke-width="3.5"/>', POOL, lay[4])), a) for n, lay, a in rig]
    art.install_rig(R, rig)
    names = art.rig_names(rig)
    RUS += names
    R_ANIM.update(art.rig_anims(rig))
    for n in names:
        R_REVEAL[n] = "rusalki"
        R_EXTRA[n] = {"fadeDuration": 2500, "hideOn": "znikaja"}
        R_COMMENTS[n] = f"rusałka {i + 1} — {n.split('_', 1)[1]} (rysunek autora; # pokaz: rusalki, znika przy # pokaz: znikaja)"
# Franek po pas w wodzie, plecami do nas, miedzy nami a rusalka z koralami
R["franek"] = (150, 290, 60, 90, group([postacie.man(180, 410, 1.25, hat=False, arm="l18 -16"),
                                        '<path d="M140 362H220V414H140Z" fill="#EDEBE6" stroke="none"/><path d="M140 362H220V414H140Z" fill="url(#water)" stroke="none"/><path d="M150 362h60" fill="none" stroke-width="2"/>',
                                        '<ellipse cx="180" cy="362" rx="26" ry="5" fill="none" stroke="#FFFFFF" stroke-width="1.6"/>']))
R["mgla_przed"] = (0, 230, 390, 130, group([f'<path d="{ribbon(10, 380, 260 + i * 36, 18, 5)}" fill="#EDEBE6" stroke-width="1.2" opacity="0.75"/>' for i in range(3)]))
R["trzciny_l"] = (-6, 330, 90, 110, group([cattail(x, 432 - (x % 4) * 3, 2.4) + reeds(x + 6, 432, 2.6) for x in range(0, 80, 10)]))
R["trzciny_r"] = (300, 330, 96, 110, group([cattail(x, 432 - (x % 4) * 3, 2.4) + reeds(x + 6, 432, 2.6) for x in range(306, 392, 10)]))
R["dzieci"] = (318, 340, 72, 100, group([postacie.man(340, 436, 1.15, hat=False), postacie.girl(372, 436, 1.8)]))
R["piolun"] = (300, 300, 30, 26, group(['<path d="M304 320l12 -14M306 322l16 -10M304 318l8 -16" fill="none" stroke-width="1.8"/><path d="M306 318l8 -8" fill="none" stroke="#FFFFFF" stroke-width="1"/>']))
R["blysk"] = (130, 220, 130, 120, group(['<ellipse cx="195" cy="290" rx="60" ry="50" fill="#FFFFFF" stroke="none" opacity="0.8"/>']))
R["smiech"] = (210, 180, 60, 40, group([f'<path d="M{216 + i * 14} {210 - i * 6}q4 -8 8 0" fill="none" stroke-width="1.4"/>' for i in range(3)]))
R["szarpanie"] = (140, 330, 90, 50, group([f'<path d="M{x} {y}l{dx} -14" fill="none" stroke-width="1.6"/>' for (x, y, dx) in [(148, 362, -6), (160, 358, -2), (200, 358, 2), (212, 362, 6), (176, 356, 0)]] +
                                         [f'<circle cx="{x}" cy="{y}" r="1.6" fill="#FFFFFF" stroke-width="0.8"/>' for (x, y) in [(152, 342), (170, 336), (196, 338), (214, 344)]]))
RINGS = [(78, 350), (196, 350), (314, 350)]
for k, (x, y) in enumerate(RINGS):
    R[f"krag_{k}"] = (x - 34, y - 9, 68, 18, group([f'<ellipse cx="{x}" cy="{y}" rx="30" ry="6" fill="none" stroke-width="1.6"/><ellipse cx="{x}" cy="{y}" rx="16" ry="3.4" fill="none" stroke-width="1.2"/>']))
R["mgla_po"] = (0, 250, 390, 110, group([f'<path d="{ribbon(10, 380, 280 + i * 30, 16, 5)}" fill="#EDEBE6" stroke-width="1.2" opacity="0.7"/>' for i in range(3)]))
R["przod"] = (0, 422, 390, 422, group(PRZOD))
RUSALKI = ["tlo", "smuga", "mgla_przed"] + RUS + ["franek", "blysk", "piolun", "smiech", "szarpanie"] + [f"krag_{k}" for k in range(len(RINGS))] + \
          ["mgla_po", "trzciny_l", "dzieci", "trzciny_r", "przod"]
# franek przed woda rusalki z koralami
RUSALKI.remove("franek")
RUSALKI.insert(RUSALKI.index("r2_woda") + 1, "franek")
R_REVEAL.update({"blysk": "piolun", "piolun": "piolun", "smiech": "smiech", "szarpanie": "szarpanie", "mgla_po": "znikaja",
                 **{f"krag_{k}": "znikaja" for k in range(len(RINGS))}})
R_ANIM.update({"smuga": {"type": "flicker", "amplitude": 0.4, "duration": 2600},
               "mgla_przed": {"type": "drift", "amplitude": 10, "duration": 9000},
               "franek": {"type": "sway", "amplitude": 2, "duration": 3000, "anchorX": 0.5, "anchorY": 1},
               "trzciny_l": {"type": "sway", "amplitude": 2.5, "duration": 3200, "anchorX": 0.5, "anchorY": 1},
               "trzciny_r": {"type": "sway", "amplitude": 2.5, "duration": 3600, "anchorX": 0.5, "anchorY": 1, "phase": 0.4},
               "dzieci": {"type": "bob", "amplitude": 0.5, "duration": 1400},
               "piolun": {"type": "arc", "amplitude": 50, "dx": -120, "dy": 30, "spin": -300, "duration": 1400, "anchorX": 0.5, "anchorY": 0.5, "once": True},
               "blysk": {"type": "flash", "amplitude": 0.9, "duration": 1600},
               "smiech": {"type": "flicker", "amplitude": 0, "duration": 700},
               "szarpanie": {"type": "flicker", "amplitude": 0, "duration": 360},
               **{f"krag_{k}": {"type": "ripple", "amplitude": 1.3, "duration": 2600 + k * 300, "anchorX": 0.5, "anchorY": 0.5, "phase": round(k * 0.3, 2)} for k in range(len(RINGS))},
               "mgla_po": {"type": "rise", "amplitude": 40, "duration": 6000}})
R_EXTRA.update({"mgla_przed": {"hideOn": "rusalki", "fadeDuration": 2500}, "franek": {"hideOn": "znikaja", "fadeDuration": 1500},
                "piolun": {"hideAfter": 1400, "fadeDuration": 200}, "blysk": {"hideAfter": 1800, "fadeDuration": 300, "noInvert": True, "appearAfter": 1000},
                "smiech": {"hideAfter": 4000, "fadeDuration": 800}, "szarpanie": {"hideOn": "znikaja", "fadeDuration": 400},
                "mgla_po": {"hideAfter": 9000, "fadeDuration": 3000}, "przod": {"depth": 1.0}})
R_COMMENTS.update({"tlo": "noc nad jeziorem: wielki księżyc, bór na drugim brzegu, płycizna", "smuga": "księżycowa smuga na wodzie (migocze)",
                   "mgla_przed": "mgła nad płycizną (znika, gdy wyłaniają się rusałki)", "franek": "Franek po pas w wodzie, plecami do nas (znika przy # pokaz: znikaja)",
                   "trzciny_l": "trzciny (kołyszą się)", "trzciny_r": "trzciny (kołyszą się)", "dzieci": "Jaromir i Hanka w trzcinach",
                   "piolun": "piołun leci w wodę (# pokaz: piolun)", "blysk": "rozbłysk, gdy piołun wpada między rusałki (# pokaz: piolun)",
                   "smiech": "dźwięczny śmiech rusałki z koralami (# pokaz: smiech)", "szarpanie": "bryzgi — szarpanina w wodzie (# pokaz: szarpanie)",
                   **{f"krag_{k}": "kręgi tam, gdzie zanurzyła się rusałka (# pokaz: znikaja)" for k in range(len(RINGS))},
                   "mgla_po": "mgła unosi się nad pustą wodą (# pokaz: znikaja)", "przod": "pierwszy plan"})

# ======================= BRZEG NOCA =======================
B = {}
t = jezioro_noc(water_top=170)
t.append('<path d="M-10 300C80 290 200 296 400 288V440H-10Z" fill="#EDEBE6" stroke-width="2.6"/>')
for x in range(0, 400, 9):
    t.append(reeds(x, 300 - (x % 5), 1.3))
for i in range(30):
    t.append(grass(random.Random(i + 300).uniform(0, 390), random.Random(i + 310).uniform(320, 432), 0.9))
t.append('<path d="M300 330l-12 -4M308 330l12 -6M304 332v-8" fill="none" stroke-width="2.4"/>')
B["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
B["ksiezyc"] = (40, 40, 40, 40, group(['<circle cx="60" cy="60" r="16" fill="#FFFFFF" stroke-width="2"/>']))
B["zar"] = (290, 318, 28, 16, group([f'<circle cx="{x}" cy="{y}" r="2" fill="{RED}" stroke="none"/>' for (x, y) in [(296, 328), (304, 326), (310, 329), (302, 331)]]))
B["dym"] = (292, 270, 24, 56, group(['<path d="M304 324c-5 -8 4 -12 -1 -20c-3 -5 2 -10 0 -16" fill="none" stroke-width="2" opacity="0.5"/>']))
B["franek_lezy"] = (110, 380, 90, 30, group([lying(150, 404, 1.2)]))
B["franek_siedzi"] = (120, 340, 50, 70, group([sitting(140, 404, 1.3, 1), '<path d="M136 352c-2 6 -2 12 0 16" fill="none" stroke="#FFFFFF" stroke-width="1"/>']))
B["krople"] = (110, 370, 70, 30, group([f'<path d="M{x} 380c-1.4 2.6-1.8 4.4 0 5.4c1.8-1 1.4-2.8 0-5.4z" fill="#FFFFFF" stroke-width="0.9"/>' for x in (118, 132, 146, 160)]))
B["jaromir"] = (216, 320, 44, 92, group([postacie.man(236, 408, 1.1, hat=False)]))
B["hanka"] = (256, 330, 40, 84, group([postacie.girl(272, 410, 1.8)]))
B["przod"] = (0, 422, 390, 422, group(PRZOD))
BRZEG = ["tlo", "ksiezyc", "dym", "zar", "franek_lezy", "franek_siedzi", "krople", "jaromir", "hanka", "przod"]
B_REVEAL = {"franek_siedzi": "franek"}
B_ANIM = {"ksiezyc": {"type": "slide", "dx": 10, "dy": -8, "duration": 40000, "once": True},
          "zar": {"type": "flicker", "amplitude": 0.3, "duration": 1800}, "dym": {"type": "sway", "amplitude": 3, "duration": 4600, "anchorX": 0.5, "anchorY": 1},
          "franek_lezy": {"type": "bob", "amplitude": 1.2, "duration": 700}, "franek_siedzi": {"type": "bob", "amplitude": 0.5, "duration": 3200},
          "krople": {"type": "rise", "amplitude": -18, "duration": 1300}, "hanka": {"type": "bob", "amplitude": 0.6, "duration": 260}}
B_EXTRA = {"franek_lezy": {"hideOn": "franek", "fadeDuration": 600}, "franek_siedzi": {"fadeDuration": 800}, "zar": {"noInvert": True}, "przod": {"depth": 1.0}}
B_COMMENTS = {"tlo": "brzeg jeziora nocą: trzciny, trawa, dogasające ognisko", "ksiezyc": "księżyc (powoli się przesuwa)",
              "zar": "żar dogasającego ogniska (czerwony)", "dym": "dym znad żaru", "franek_lezy": "Franek leży na brzegu i kaszle wodą",
              "franek_siedzi": "Franek siedzi i patrzy na nich (# pokaz: franek)", "krople": "krople kapią z mokrych ubrań",
              "jaromir": "Jaromir, przemoczony", "hanka": "Hanka drży z zimna", "przod": "pierwszy plan"}
_add(B, BRZEG, B_ANIM, B_COMMENTS, "gwiazdy", efekty.iskry(100, 10, 290, 130, n=14, seed=73, duration=3600), before="ksiezyc")
_add(B, BRZEG, B_ANIM, B_COMMENTS, "mgla", ((-30, 170, 450, 40, group([f'<path d="{ribbon(-20, 410, 186, 14, 4)}" fill="#EDEBE6" stroke-width="1.2" opacity="0.7"/>'])),
                                            {"type": "drift", "amplitude": 14, "duration": 15000}, "mgła nad jeziorem"), before="dym")
for k, (x, y) in enumerate([(90, 240), (250, 260)]):
    _add(B, BRZEG, B_ANIM, B_COMMENTS, f"krag_{k}", ((x - 24, y - 6, 48, 12, group([f'<ellipse cx="{x}" cy="{y}" rx="20" ry="4" fill="none" stroke="#FFFFFF" stroke-width="1.4"/>'])),
                                                     {"type": "ripple", "amplitude": 1.2, "duration": 3400 + k * 900, "anchorX": 0.5, "anchorY": 0.5}, "kręgi na wodzie"), before="dym")
_add(B, BRZEG, B_ANIM, B_COMMENTS, "swietliki", ((40, 300, 300, 80, group([f'<circle cx="{x}" cy="{y}" r="1.8" fill="#FFFFFF" stroke-width="0.6"/>' for (x, y) in [(50, 320), (180, 312), (330, 350), (90, 360)]])),
                                                 {"type": "wander", "amplitude": 12, "duration": 5200}, "świetliki"), before="franek_lezy")

# ======================= POMOST O SWICIE =======================
M = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M0 0H390V60C300 70 200 54 110 64C60 70 30 62 0 68Z" fill="url(#hatch)" stroke="none" opacity="0.3"/>',
     '<path d="M-10 190C80 182 200 186 400 180V200H-10Z" fill="#000000" stroke-width="2"/>']
for i in range(24):
    t.append(spruce(-6 + i * 17, 188 - (i % 2) * 3, 22 + (i % 3) * 7, 12))
t.append('<path d="M-10 196H400V440H-10Z" fill="url(#water)" stroke="none" opacity="0.7"/><path d="M-10 196H400" fill="none" stroke-width="2"/>')
# pomost z desek od prawego dolnego rogu w glab jeziora
t.append('<path d="M230 300L400 350V412L180 316Z" fill="#FFFFFF" stroke-width="2.6"/>')
for k in range(1, 7):
    a = k / 7
    t.append(f'<path d="M{230 - 50 * a:.0f} {300 + 16 * a:.0f}L400 {350 + 62 * a:.0f}" fill="none" stroke-width="1"/>')
for (x, y) in [(186, 318), (232, 302), (260, 350), (330, 380)]:
    t.append(f'<path d="M{x} {y}V{y + 30}" fill="none" stroke-width="3"/>')
for x in range(0, 120, 8):
    t.append(reeds(x, 300 + (x % 3) * 6, 1.6) + cattail(x + 3, 304 + (x % 4) * 5, 1.5))
M["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
M["slonce"] = (300, 160, 70, 40, group(['<path d="M306 196A28 28 0 0 1 362 196Z" fill="#FFFFFF" stroke-width="2.4"/>']))
M["jaromir"] = (302, 284, 40, 92, group([postacie.man(322, 372, 1.1, hat=False)]))
M["korale"] = (250, 330, 50, 20, group([f'<circle cx="{256 + i * 4}" cy="{340 + (3 if i in (3, 4, 5, 6) else 0) + (1 if i in (2, 7) else 0)}" r="2.3" fill="{RED}" stroke="#000000" stroke-width="0.8"/>' for i in range(10)]))
M["krople_korali"] = (252, 338, 44, 16, group([f'<path d="M{x} 344c-1 2-1.4 3.4 0 4c1.4-.6 1-2 0-4z" fill="#FFFFFF" stroke-width="0.8"/>' for x in (262, 274, 286)]))
M["slad"] = (248, 332, 52, 18, group(['<path d="M252 342c6 -6 30 -8 42 -2c4 4 -6 8 -20 8c-14 0 -26 -2 -22 -6z" fill="url(#hatchDense)" stroke-width="1" opacity="0.7"/>']))
M["plusk"] = (190, 330, 70, 24, group(['<ellipse cx="224" cy="342" rx="30" ry="6" fill="none" stroke-width="1.6"/><ellipse cx="224" cy="342" rx="14" ry="3" fill="none" stroke-width="1.2"/>']))
M["westchnienie"] = (10, 240, 150, 60, group([f'<path d="M{20 + i * 40} {270 - i * 4}c10 -8 20 8 30 0" fill="none" stroke-width="1.4" stroke-dasharray="3 3"/>' for i in range(3)]))
M["przod"] = (0, 422, 390, 422, group(PRZOD))
POMOST = ["tlo", "slonce", "plusk", "jaromir", "slad", "korale", "krople_korali", "westchnienie", "przod"]
M_REVEAL = {"korale": "korale", "krople_korali": "korale", "slad": "zabrane", "plusk": "plusk", "westchnienie": "plusk"}
M_ANIM = {"slonce": {"type": "slide", "dx": 0, "dy": -26, "duration": 40000, "once": True},
          "korale": {"type": "flicker", "amplitude": 0.65, "duration": 2400}, "krople_korali": {"type": "rise", "amplitude": -8, "duration": 1500},
          "plusk": {"type": "ripple", "amplitude": 1.4, "duration": 2400, "anchorX": 0.5, "anchorY": 0.5},
          "westchnienie": {"type": "drift", "amplitude": 8, "duration": 3000}, "jaromir": {"type": "bob", "amplitude": 0.4, "duration": 3000}}
M_EXTRA = {"korale": {"noInvert": True, "fadeDuration": 1500, "hideOn": "zabrane,plusk"}, "krople_korali": {"fadeDuration": 1500, "hideOn": "zabrane,plusk"},
           "slad": {"fadeDuration": 1500}, "plusk": {"hideAfter": 7200, "fadeDuration": 1500},
           "westchnienie": {"appearAfter": 1500, "hideAfter": 6000, "fadeDuration": 1500}, "przod": {"depth": 1.0}}
M_COMMENTS = {"tlo": "świt nad jeziorem: pomost z desek, trzciny, bór na drugim brzegu", "slonce": "słońce wschodzi",
              "jaromir": "Jaromir na pomoście", "korale": "korale z jarzębiny na deskach, czerwone (# pokaz: korale)",
              "krople_korali": "woda kapie z korali (# pokaz: korale)", "slad": "mokry ślad po koralach (# pokaz: zabrane)",
              "plusk": "kręgi po koralach wrzuconych do wody (# pokaz: plusk)", "westchnienie": "westchnienie od trzcin (# pokaz: plusk)",
              "przod": "pierwszy plan"}
for k in range(2):
    _add(M, POMOST, M_ANIM, M_COMMENTS, f"mgla_{k}", ((-40, 200 + k * 40, 470, 36, group([f'<path d="{ribbon(-30, 420, 216 + k * 40, 14, 5)}" fill="#EDEBE6" stroke-width="1.2" opacity="0.8"/>'])),
                                                      {"type": "drift", "amplitude": 30 + k * 10, "duration": 16000 + k * 3000, "phase": round(k * 0.4, 2)}, "mgła schodzi z jeziora (rozwiewa się)"), before="plusk")
    M_EXTRA[f"mgla_{k}"] = {"hideAfter": 14000 + k * 4000, "fadeDuration": 6000}
_add(M, POMOST, M_ANIM, M_COMMENTS, "blyski", ((60, 210, 300, 80, group([f'<path d="M{x} {y}h10" fill="none" stroke="#FFFFFF" stroke-width="2"/>' for (x, y) in [(120, 220), (180, 236), (260, 214), (300, 250), (150, 270)]])),
                                               {"type": "flicker", "amplitude": 0.25, "duration": 1600}, "błyski słońca na wodzie"), before="plusk")
_add(M, POMOST, M_ANIM, M_COMMENTS, "czajki", efekty.wrony(140, 120, n=2, k=0.4, seed=74, amplitude=60, duration=7000), before="plusk")
M_COMMENTS["czajki"] = "czajki nad jeziorem"
_add(M, POMOST, M_ANIM, M_COMMENTS, "trzciny", ((0, 260, 130, 60, group([reeds(x, 312, 2.0) for x in range(6, 126, 14)])),
                                                {"type": "sway", "amplitude": 2.5, "duration": 3000, "anchorX": 0.5, "anchorY": 1}, "trzciny (kołyszą się)"), before="plusk")
_add(M, POMOST, M_ANIM, M_COMMENTS, "wazka", ((150, 270, 22, 16, group(['<path d="M154 278h14M158 278l-3 -5M158 278l-3 5M162 278l3 -5M162 278l3 5" fill="none" stroke-width="1.4"/>'])),
                                              {"type": "wander", "amplitude": 26, "flap": 0.5, "duration": 5600}, "ważka"), before="plusk")

# ======================= BEZ O ZACHODZIE =======================
Z = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M0 0H390V150H0Z" fill="url(#hatch)" stroke="none" opacity="0.45"/>',
     '<path d="M-10 280C60 274 120 278 170 276C260 272 330 278 400 272V440H-10Z" fill="#EDEBE6" stroke-width="2.6"/>']
for i in range(12):
    t.append(spruce(262 + i * 11, 278 - (i % 2) * 3, 36 + (i % 3) * 8, 15))
# jezioro w oddali z lewej
t.append('<path d="M-10 290C30 284 90 284 120 292C110 302 40 306 -10 304Z" fill="url(#water)" stroke-width="2"/>')
# pnie bzu i korona obsypana kwieciem
rnd = random.Random(707)
for (dx, top) in [(-10, 250), (0, 236), (10, 246), (-20, 270), (18, 262)]:
    t.append(f'<path d="M{226 + dx * 0.3:.0f} 410C{224 + dx * 0.6:.0f} 360 {220 + dx:.0f} 320 {226 + dx * 1.6:.0f} {top}" fill="none" stroke-width="5"/>')
t.append('<path d="M104 250C80 220 100 168 140 166C146 124 196 104 230 120C258 96 316 110 324 150C366 156 374 214 344 244C320 270 140 276 104 250Z" fill="url(#hatchDense)" stroke-width="3"/>')
for i in range(70):
    x, y = rnd.uniform(110, 350), rnd.uniform(122, 258)
    if not (166 < x < 286 and 166 < y < 244):
        t.append(f'<ellipse cx="{x:.0f}" cy="{y:.0f}" rx="{rnd.uniform(5, 8):.0f}" ry="3" fill="#FFFFFF" stroke-width="1.1"/>')
# zbutwiala baza: krzywa podloga, sciany, dziurawy daszek, okienko, drabinka bez dwoch szczebli
t.append('<path d="M170 242H284V234H170Z" fill="#FFFFFF" stroke-width="2.4"/>')
for x in range(176, 282, 13):
    t.append(f'<path d="M{x} 234V{196 + (x % 3) * 2}" fill="none" stroke-width="1.2"/>')
t.append('<path d="M176 234V198H278V234Z" fill="none" stroke-width="2.6"/>')
t.append('<path d="M166 200L228 174L288 198L282 202L228 180L172 204Z" fill="url(#hatch)" stroke-width="2.4"/>')
t.append('<path d="M238 180L252 186L246 190Z" fill="#EDEBE6" stroke-width="1.6"/>')
t.append('<path d="M196 206H250V224H196Z" fill="#FFFFFF" stroke-width="2"/>')
for y in range(256, 404, 18):
    if y not in (292, 346):
        t.append(f'<path d="M216 {y}H238" fill="none" stroke-width="2.6"/>')
    else:
        t.append(f'<path d="M216 {y}h5M236 {y}l2 3" fill="none" stroke-width="2"/>')
for i in range(24):
    t.append(grass(rnd.uniform(0, 390), rnd.uniform(320, 432), rnd.uniform(0.7, 1.1)))
Z["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
Z["slonce"] = (30, 140, 70, 70, group(['<circle cx="64" cy="174" r="26" fill="#FFFFFF" stroke-width="2.4"/>']))
Z["hanka"] = (196, 204, 54, 22, group(['<circle cx="214" cy="218" r="5.6" fill="#000000" stroke-width="1.2"/><path d="M210 214c-6 2 -8 8 -8 10" fill="none" stroke-width="2"/>']))
Z["para"] = (196, 204, 54, 22, group(['<circle cx="214" cy="218" r="5.6" fill="#000000" stroke-width="1.2"/><path d="M210 214c-6 2 -8 8 -8 10" fill="none" stroke-width="2"/>',
                                      '<circle cx="234" cy="217" r="6" fill="#000000" stroke-width="1.2"/>']))
Z["pocalunek"] = (196, 204, 54, 22, group(['<circle cx="218" cy="218" r="5.6" fill="#000000" stroke-width="1.2"/><path d="M214 214c-6 2 -8 8 -8 10" fill="none" stroke-width="2"/>',
                                           '<circle cx="228" cy="216" r="6" fill="#000000" stroke-width="1.2"/>']))
Z["dlonie"] = (214, 220, 24, 8, group(['<path d="M218 224h16" fill="none" stroke-width="3"/><circle cx="226" cy="224" r="2.4" fill="#000000" stroke-width="1"/>']))
Z["postac"] = (40, 230, 24, 66, group(['<path d="M52 236c-6 0 -8 8 -6 14c-4 10 -8 30 -10 42h32c-2 -12 -6 -32 -10 -42c2 -6 0 -14 -6 -14z" fill="#000000" stroke-width="1.4"/>']))
Z["przod"] = (0, 422, 390, 422, group(PRZOD))
BEZ = ["tlo", "slonce", "postac", "hanka", "para", "pocalunek", "dlonie", "przod"]
Z_REVEAL = {"para": "para", "pocalunek": "pocalunek", "dlonie": "dlonie", "postac": "postac"}
Z_ANIM = {"slonce": {"type": "slide", "dx": 0, "dy": 50, "duration": 60000, "once": True},
          "postac": {"type": "sway", "amplitude": 1.5, "duration": 5000, "anchorX": 0.5, "anchorY": 1},
          "para": {"type": "bob", "amplitude": 0.3, "duration": 3000}, "pocalunek": {"type": "bob", "amplitude": 0.3, "duration": 3000}}
Z_EXTRA = {"hanka": {"hideOn": "para", "fadeDuration": 400}, "para": {"hideOn": "pocalunek", "fadeDuration": 600}, "pocalunek": {"fadeDuration": 600},
           "dlonie": {"fadeDuration": 1200}, "postac": {"fadeDuration": 5000}, "przod": {"depth": 1.0}}
Z_COMMENTS = {"tlo": "zakwitły stary bez z zbutwiałą bazą (dziurawy daszek, drabinka bez dwóch szczebli), łąka, jezioro w oddali",
              "slonce": "słońce zachodzi", "hanka": "Hanka sama w okienku bazy", "para": "Jaromir i Hanka w okienku bazy (# pokaz: para)",
              "pocalunek": "pocałunek (# pokaz: pocalunek)", "dlonie": "splecione dłonie na parapecie (# pokaz: dlonie)",
              "postac": "wysoka, ciemna postać we mgle nad jeziorem (# pokaz: postac)", "przod": "pierwszy plan"}
_add(Z, BEZ, Z_ANIM, Z_COMMENTS, "chmurki", ((150, 40, 220, 40, group(['<path d="M170 62c6 -10 20 -10 24 0c6 -6 18 -2 16 6h-40z" fill="#FFFFFF" stroke-width="1.6"/>',
                                                                        '<path d="M300 52c6 -10 20 -10 24 0c6 -6 18 -2 16 6h-40z" fill="#FFFFFF" stroke-width="1.6"/>'])),
                                             {"type": "drift", "amplitude": 12, "duration": 18000}, "obłoki (dryfują)"), before="slonce")
_add(Z, BEZ, Z_ANIM, Z_COMMENTS, "mgla", ((-30, 280, 200, 30, group([f'<path d="{ribbon(-20, 160, 292, 12, 4)}" fill="#EDEBE6" stroke-width="1.2" opacity="0.7"/>'])),
                                          {"type": "drift", "amplitude": 10, "duration": 12000}, "mgła nad jeziorem"), before="hanka")
_add(Z, BEZ, Z_ANIM, Z_COMMENTS, "kwiaty", ((90, 110, 270, 160, group([f'<ellipse cx="{x}" cy="{y}" rx="7" ry="3" fill="#FFFFFF" stroke-width="1.1"/>' for (x, y) in [(110, 230), (124, 176), (334, 200), (346, 236), (300, 148), (150, 150), (200, 126), (260, 118)]])),
                                            {"type": "sway", "amplitude": 1.6, "duration": 3000, "anchorX": 0.5, "anchorY": 0.6}, "baldachy kwiatów bzu (kołyszą się)"), before="hanka")
_add(Z, BEZ, Z_ANIM, Z_COMMENTS, "platki", efekty.platki(110, 180, 250, 200, n=16, seed=75, fall=90, duration=8000, r=(1.2, 2.0)), before="hanka")
Z_COMMENTS["platki"] = "płatki bzu opadają"
_add(Z, BEZ, Z_ANIM, Z_COMMENTS, "jaskolki", efekty.wrony(100, 90, n=3, k=0.35, seed=76, amplitude=50, duration=5600), before="slonce")
Z_COMMENTS["jaskolki"] = "jaskółki o zachodzie"
STARS = [(40, 30), (120, 20), (200, 40), (280, 24), (360, 50)]
for k, (x, y) in enumerate(STARS):
    Z[f"gwiazda_{k}"] = (x - 6, y - 6, 12, 12, group([f'<path d="M{x - 4} {y}h8M{x} {y - 4}v8" fill="none" stroke-width="1.4"/><circle cx="{x}" cy="{y}" r="1.2" fill="#FFFFFF" stroke="none"/>']))
    BEZ.insert(1, f"gwiazda_{k}")
    Z_ANIM[f"gwiazda_{k}"] = {"type": "flicker", "amplitude": 0.4, "duration": 2400 + k * 300}
    Z_EXTRA[f"gwiazda_{k}"] = {"appearAfter": 20000 + k * 5000, "fadeDuration": 3000}
    Z_COMMENTS[f"gwiazda_{k}"] = "gwiazda (zapala się po kolei)"
_add(Z, BEZ, Z_ANIM, Z_COMMENTS, "swietliki", ((20, 320, 340, 90, group([f'<circle cx="{x}" cy="{y}" r="1.8" fill="#FFFFFF" stroke-width="0.6"/>' for (x, y) in [(40, 340), (150, 360), (300, 330), (340, 390), (90, 396)]])),
                                               {"type": "wander", "amplitude": 12, "duration": 5600}, "świetliki w trawie (pojawiają się po chwili)"), before="przod")
Z_EXTRA["swietliki"] = {"appearAfter": 12000, "fadeDuration": 3000}

BACKGROUNDS = {"swiatki": ("bg_swiatki", S, SWIATKI, S_ANIM, S_REVEAL, S_EXTRA, S_COMMENTS, "Zielone Świątki"),
               "jezioro_swiatki": ("bg_jezswiatki", J, JEZIORO, J_ANIM, J_REVEAL, J_EXTRA, J_COMMENTS, "wieczór nad jeziorem"),
               "rusalki": ("bg_rusalki", R, RUSALKI, R_ANIM, R_REVEAL, R_EXTRA, R_COMMENTS, "rusałki"),
               "brzeg_noc": ("bg_brzegnoc", B, BRZEG, B_ANIM, B_REVEAL, B_EXTRA, B_COMMENTS, "brzeg nocą"),
               "pomost_rano": ("bg_pomost", M, POMOST, M_ANIM, M_REVEAL, M_EXTRA, M_COMMENTS, "pomost o świcie"),
               "bez_zachod": ("bg_bezzachod", Z, BEZ, Z_ANIM, Z_REVEAL, Z_EXTRA, Z_COMMENTS, "bez o zachodzie")}

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
