# Generator tel rozdzialu trzynastego (Wspólny sen):
#   przednowek     — roztopy we wsi: wezbrane mokradla pod opłotkami, kra; szczenie (# pokaz: szczenie), noc i ogniki (# pokaz: ogniki)
#   jagna_izba     — izba w dzien: Jagna na lawie z koszem; figurka na stole (# pokaz: figurka), rano figurka na progu (# pokaz: prog)
#   jarmark        — miejski jarmark: kramy, tlum; figurka na kramie starzyzny (# pokaz: figurka), wieczor i woz pod chalupa (# pokaz: woz)
#   zgliszcza_kra  — jezioro z kra, zweglone bale w trzcinach, chlopcy; figurka w dloni Józka (# pokaz: figurka), matka z fartuchem (# pokaz: matka)
#   kladka_naprawa — mokradla po powodzi, zerwana kladka, Jaromir i Antek; figurka na palu (# pokaz: figurka), plusk w oczku (# pokaz: plusk)
#   sen_kladka     — sen dzieci: kladka w ciemnosci, swiatelka, garnki pod woda; glowa z wody (# pokaz: glowa), ognie pod plotami (# pokaz: ognie)
#   noc_kladka     — noc na mokradlach, kapliczka przy kladce; Józek we snie (# pokaz: jozek), topielec autora (# pokaz: stwor), blizna (# pokaz: blizna),
#                    siekiera (# pokaz: siekiera), figurka w wode (# pokaz: figurka), latarnia i ogien (# pokaz: latarnia), pogorzelisko (# pokaz: pozar)
#   skrzynia_izba  — izba wieczorem: skrzynia pod lozkiem, piec; figurka w zarze (# pokaz: piec), lancuch (# pokaz: lancuch), lopata (# pokaz: lopata),
#                    kosz Jagny (# pokaz: kosz)
#   wiosna_paliki  — majowa wies: tartak, laki, bor; Antek z synem (# pokaz: antek), brzozowy krzyz (# pokaz: krzyz), paliki pod droge (# pokaz: paliki)
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/figurka.py src/LittleVillage/Resources/Images
#   python3 tools/Backgrounds/figurka.py --master <tlo> [wszystko] > podglad.svg
import sys, random, math
from common import *
import art, postacie, efekty
from efekty import add as _add
from licho import izba_tlo, okno, piec, stol, bor, PRZOD, PRZOD_IZBA
from wesele import chalupa, dym
from narodziny import lozko
from czuwanie import krzyz, plomyk, z_siekiera, siedzi_na_lawie

RED = "#A8101A"
NOC = '<rect width="390" height="440" fill="url(#hatchNight)" stroke="none" opacity="0.8"/>'


def figurka(x, y, k=1.0):
    """Nadpalona figurka: postac z rekami do stop (x,y = stopy)."""
    P = lambda dx, dy: f"{x + dx * k:.1f} {y + dy * k:.1f}"
    return (f'<g stroke-width="{1.2 * k:.1f}"><circle cx="{x}" cy="{y - 15 * k:.1f}" r="{2.6 * k:.1f}" fill="#000000"/>'
            f'<path d="M{P(-2.5, -12)}L{P(-3, 0)}H{x + 3 * k:.1f}L{P(2.5, -12)}Z" fill="url(#hatchDense)"/>'
            f'<path d="M{P(-2.5, -11)}C{P(-6, -6)} {P(-6, -2)} {P(-6, 1)}M{P(2.5, -11)}C{P(6, -6)} {P(6, -2)} {P(6, 1)}" fill="none" stroke-width="{1.4 * k:.1f}"/>'
            f'<path d="M{P(0, -12)}L{P(3, -2)}" fill="none" stroke="#000000" stroke-width="{1.8 * k:.1f}"/></g>')


def jagna(x, y, k=1.0, sitting=False):
    """Jagna: chuda kobieta w szarej (kreskowanej) chuscie, z bielmem na jednym oku."""
    base = siedzi_na_lawie(x, y, k, -1) if sitting else postacie.woman(x, y, k)
    hy = y - (36 if sitting else 66) * k
    return (base + f'<path d="M{x - 8 * k:.1f} {hy + 2 * k:.1f}Q{x} {hy - 16 * k:.1f} {x + 8 * k:.1f} {hy + 2 * k:.1f}L{x + 5 * k:.1f} {hy + 7 * k:.1f}Q{x} {hy + 3 * k:.1f} {x - 5 * k:.1f} {hy + 7 * k:.1f}Z" fill="url(#hatch)" stroke-width="{1.6 * k:.1f}"/>'
            f'<circle cx="{x - 2.4 * k:.1f}" cy="{hy + 1 * k:.1f}" r="{1.4 * k:.1f}" fill="#FFFFFF" stroke="none"/>')


def kosz(x, y, k=1.0):
    return (f'<path d="M{x - 12 * k:.1f} {y - 12 * k:.1f}H{x + 12 * k:.1f}L{x + 9 * k:.1f} {y}H{x - 9 * k:.1f}Z" fill="url(#hatch)" stroke-width="1.6"/>'
            f'<path d="M{x - 10 * k:.1f} {y - 12 * k:.1f}C{x - 8 * k:.1f} {y - 26 * k:.1f} {x + 8 * k:.1f} {y - 26 * k:.1f} {x + 10 * k:.1f} {y - 12 * k:.1f}" fill="none" stroke-width="1.8"/>'
            f'<path d="M{x - 6 * k:.1f} {y - 12 * k:.1f}l-3 -8M{x} {y - 12 * k:.1f}l1 -9M{x + 6 * k:.1f} {y - 12 * k:.1f}l4 -7" fill="none" stroke-width="1.2"/>')


def kra(x, y, w, h):
    return f'<path d="M{x} {y}L{x + w * 0.3:.0f} {y - h}L{x + w} {y - h * 0.7:.0f}L{x + w * 0.8:.0f} {y + h * 0.3:.0f}Z" fill="#FFFFFF" stroke-width="1.6"/>'


def kladka(x0, x1, y, broken=False):
    g = [f'<path d="M{x0} {y}H{x1}V{y + 5}H{x0}Z" fill="#FFFFFF" stroke-width="2"/>']
    for x in range(x0 + 10, x1, 34):
        g.append(f'<path d="M{x} {y + 5}V{y + 26}" fill="none" stroke-width="3"/>')
    if broken:
        mid = (x0 + x1) // 2
        g.append(f'<path d="M{mid - 14} {y - 1}H{mid + 14}V{y + 7}H{mid - 14}Z" fill="#EDEBE6" stroke="none"/>'
                 f'<path d="M{mid + 14} {y}L{mid + 24} {y + 14}" fill="none" stroke-width="2.4"/>')
    return group(g)


def kapliczka(x, base, k=1.0, burnt=False):
    if burnt:
        return (f'<path d="M{x - 6 * k:.1f} {base}V{base - 26 * k:.1f}M{x + 6 * k:.1f} {base}V{base - 20 * k:.1f}M{x} {base}V{base - 34 * k:.1f}" fill="none" stroke-width="{3.4 * k:.1f}"/>'
                f'<circle cx="{x}" cy="{base - 6 * k:.1f}" r="{4 * k:.1f}" fill="url(#hatchDense)" stroke-width="1.2"/>')
    return (f'<path d="M{x - 2 * k:.1f} {base}V{base - 30 * k:.1f}H{x + 2 * k:.1f}V{base}Z" fill="#000000"/>'
            f'<path d="M{x - 10 * k:.1f} {base - 30 * k:.1f}H{x + 10 * k:.1f}V{base - 50 * k:.1f}H{x - 10 * k:.1f}Z" fill="#FFFFFF" stroke-width="{2 * k:.1f}"/>'
            f'<path d="M{x - 13 * k:.1f} {base - 50 * k:.1f}L{x} {base - 60 * k:.1f}L{x + 13 * k:.1f} {base - 50 * k:.1f}Z" fill="url(#hatchDense)" stroke-width="{1.8 * k:.1f}"/>'
            f'<circle cx="{x}" cy="{base - 42 * k:.1f}" r="{3 * k:.1f}" fill="#000000"/><path d="M{x - 4 * k:.1f} {base - 34 * k:.1f}H{x + 4 * k:.1f}" fill="none" stroke-width="1.6"/>')


def swiatelka(pts, r=3.2):
    return group([f'<circle cx="{x}" cy="{y}" r="{r * 2.8:.1f}" fill="#FFFFFF" stroke="none" opacity="0.35"/><circle cx="{x}" cy="{y}" r="{r}" fill="#FFFFFF" stroke="#000000" stroke-width="0.8"/>' for x, y in pts])


def topielec(cx, waterline, k, prefix, scar_layer=False):
    """Topielec autora wynurzony z wody (stopy pod woda): kiwa glowa, ramiona kolysza sie, krople spadaja."""
    tr = art.parse_transform(f"translate({cx + 190 * k:.1f} {waterline + 230 * k - 582 * k:.1f}) scale({-k} {k})")
    if scar_layer:
        return art.rig("topielec", tr, [("blizna", ["blizna"], {"type": "sway", "amplitude": 5, "duration": 4000, "phase": 0.5}, "ramie_blizsze")], prefix)
    return art.topielec_rig(tr, prefix, shadow=False, drops_fall=30 * k)


def ton(y, x0=-10, x1=400, night=True, h=None):
    h = h or 440 - y
    return group([f'<path d="M{x0} {y}C{x0 + 60} {y - 3} {x1 - 60} {y + 3} {x1} {y}V{y + h}H{x0}Z" fill="{"#000000" if night else "#EDEBE6"}" stroke-width="2"/>',
                  f'<path d="M{x0 + 20} {y + 10}h40M{x0 + 120} {y + 16}h30M{x0 + 250} {y + 8}h46" fill="none" stroke="#FFFFFF" stroke-width="1" opacity="0.6"/>'])


# ======================= PRZEDNOWEK =======================
A = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V150H0Z" fill="url(#hatch)" stroke="none" opacity="0.35"/>',
     '<path d="M-10 214C80 208 200 212 400 206V440H-10Z" fill="#EDEBE6" stroke-width="2.6"/>']
t += bor(212, 150, 400, 12, seed=1301)
rnd = random.Random(1302)
for i in range(9):
    x, y = rnd.uniform(0, 200), rnd.uniform(240, 420)
    t.append(f'<path d="M{x:.0f} {y:.0f}c10 -4 30 -4 40 0c-10 4 -30 4 -40 0z" fill="#FFFFFF" stroke-width="1"/>')
t.append(chalupa(10, 330, 130, 70, 56))
t.append('<path d="M180 300C230 290 330 292 400 296V440H180C170 400 172 340 180 300Z" fill="url(#hatch)" stroke-width="2"/>')
t += [reeds(x, y, 0.8) for x, y in [(190, 312), (220, 360), (372, 320), (300, 410)]]
t.append(kladka(230, 360, 330))
t.append('<path d="M150 330V300M164 330V302M178 330V300M150 312H190" fill="none" stroke-width="2"/>')
A["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
A["kra"] = (190, 296, 200, 60, group([kra(210, 316, 30, 10), kra(300, 306, 40, 12), kra(340, 350, 26, 8)]))
RIG_A = art.dog_barking(art.parse_transform("translate(110 304) scale(0.12)"), "ps", shadow=True, bark=False, shiver=False, quiet=True)
art.install_rig(A, RIG_A)
PS = art.rig_names(RIG_A)
A["noc"] = (0, 0, 390, 440, group([NOC]))
A["ogniki"] = (180, 290, 210, 120, swiatelka([(200, 300), (250, 318), (310, 296), (360, 340), (280, 380)]))
A["przod"] = (0, 422, 390, 422, group(PRZOD))
PRZED = ["tlo", "kra"] + PS + ["noc", "ogniki", "przod"]
A_REVEAL = {**{n: "szczenie" for n in PS}, "noc": "ogniki", "ogniki": "ogniki"}
A_ANIM = {"kra": {"type": "drift", "amplitude": 10, "duration": 9000}, "ogniki": {"type": "wander", "amplitude": 6, "duration": 4000}}
A_ANIM.update(art.rig_anims(RIG_A))
A_EXTRA = {**{n: {"fadeDuration": 1500, "hideOn": "ogniki"} for n in PS}, "noc": {"fadeDuration": 3000}, "ogniki": {"fadeDuration": 3000, "noInvert": True}, "przod": {"depth": 1.0}}
A_COMMENTS = {"tlo": "roztopy: chałupa, łaty śniegu, wezbrane mokradła pod opłotkami, kładka", "kra": "kra na wezbranej wodzie (dryfuje)",
              "noc": "noc (# pokaz: ogniki)", "ogniki": "światełka nad mokradłami (# pokaz: ogniki)", "przod": "pierwszy plan",
              **{n: f"rudy psiak przy chałupie — {n[3:]} (# pokaz: szczenie)" for n in PS}}
_add(A, PRZED, A_ANIM, A_COMMENTS, "chmury", ((40, 50, 300, 40, group(['<path d="M60 82c8 -14 28 -14 34 0c8 -8 24 -2 22 8h-56z" fill="#FFFFFF" stroke-width="1.6"/>',
                                                                      '<path d="M220 66c8 -14 28 -14 34 0c8 -8 24 -2 22 8h-56z" fill="#FFFFFF" stroke-width="1.6"/>'])),
                                              {"type": "drift", "amplitude": 16, "duration": 15000}, "chmury"), before="kra")
_add(A, PRZED, A_ANIM, A_COMMENTS, "krople", ((10, 262, 150, 16, group([f'<path d="M{x} 266c-1 2-1.4 3.4 0 4c1.4-.6 1-2 0-4z" fill="#FFFFFF" stroke-width="0.8"/>' for x in range(20, 150, 16)])),
                                              {"type": "rise", "amplitude": -20, "duration": 1200}, "krople kapią z dachu"), before="kra")
_add(A, PRZED, A_ANIM, A_COMMENTS, "dym", ((90, 160, 30, 60, group([dym(104, 210, 50)])), {"type": "sway", "amplitude": 3, "duration": 4600, "anchorX": 0.5, "anchorY": 1}, "dym z komina"), before="kra")
_add(A, PRZED, A_ANIM, A_COMMENTS, "wrony", efekty.wrony(170, 110, n=4, k=0.4, seed=1303, amplitude=50), before="kra")
A_EXTRA["wrony"] = {"hideOn": "ogniki", "fadeDuration": 2000}
_add(A, PRZED, A_ANIM, A_COMMENTS, "zmarszczki", ((180, 300, 210, 120, group(['<path d="M200 340h24M260 360h30M320 380h20M220 400h26" fill="none" stroke-width="1"/>'])),
                                                  {"type": "drift", "amplitude": 5, "duration": 3000}, "zmarszczki na wodzie"), before="kra")
_add(A, PRZED, A_ANIM, A_COMMENTS, "trzciny", ((180, 280, 210, 140, group([reeds(x, y, 0.9) for x, y in [(200, 330), (350, 312), (260, 420)]])),
                                               {"type": "sway", "amplitude": 3, "duration": 2800, "anchorX": 0.5, "anchorY": 1}, "trzciny"), before="noc")

# ======================= JAGNA W IZBIE =======================
J = {}
t = izba_tlo()
t.append(okno(40, 110, 70, 70))
t.append(piec(310, 330, 1.0))
t.append(stol(130, 330, 120, 1.0))
t.append('<path d="M250 330V170H290V330Z" fill="url(#hatchDense)" stroke-width="2.4"/><circle cx="256" cy="252" r="2" fill="#000000"/>')
J["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
J["jagna"] = (90, 240, 60, 110, group([jagna(108, 312, 1.7, sitting=True), '<path d="M80 312H140V318H80Z" fill="#FFFFFF" stroke-width="1.6"/>', kosz(70, 330, 1.2)]))
J["jaromir"] = (196, 220, 60, 112, group([postacie.man(224, 330, 1.35, hat=False)]))
J["figurka"] = (160, 250, 50, 54, group(['<ellipse cx="184" cy="300" rx="16" ry="3" fill="#000000" stroke="none" opacity="0.4"/>', figurka(184, 300, 2.4)]))
J["prog"] = (0, 0, 390, 440, group(['<path d="M250 170L290 170L290 330L250 330Z" fill="#FFFFFF" stroke-width="2.4"/>', '<path d="M250 330L370 440H130Z" fill="#FFFFFF" stroke="none" opacity="0.35"/>',
                                     figurka(272, 334, 1.6)]))
J["przod"] = (0, 422, 390, 422, group(PRZOD_IZBA))
JAG = ["tlo", "jagna", "figurka", "jaromir", "prog", "przod"]
J_REVEAL = {"figurka": "figurka", "prog": "prog"}
J_ANIM = {"jagna": {"type": "bob", "amplitude": 0.4, "duration": 3000}, "jaromir": {"type": "bob", "amplitude": 0.3, "duration": 3600},
          "figurka": {"type": "flicker", "amplitude": 0.85, "duration": 3000}, "prog": {"type": "flicker", "amplitude": 0.9, "duration": 5000}}
J_EXTRA = {"figurka": {"fadeDuration": 1500, "hideOn": "prog"}, "jagna": {"hideOn": "prog", "fadeDuration": 1500}, "jaromir": {"hideOn": "prog", "fadeDuration": 1500},
           "prog": {"fadeDuration": 2500}, "przod": {"depth": 1.0}}
J_COMMENTS = {"tlo": "izba w dzień: okno, piec, stół, drzwi", "jagna": "Jagna na ławie, kosz z ziołami", "jaromir": "Jaromir przy stole",
              "figurka": "nadpalona figurka na stole (# pokaz: figurka)", "prog": "rano: otwarte drzwi, figurka na progu (# pokaz: prog)", "przod": "pierwszy plan"}
_add(J, JAG, J_ANIM, J_COMMENTS, "smuga", efekty.smuga([(40, 110), (110, 110), (200, 330), (90, 330)], 0.3), before="jagna")
_add(J, JAG, J_ANIM, J_COMMENTS, "pylki", efekty.pylki(60, 150, 140, 150, n=7, seed=1304, duration=8000), before="przod")
_add(J, JAG, J_ANIM, J_COMMENTS, "plomien", ((328, 300, 34, 24, group([plomyk(345, 322, 1.0)])), {"type": "flame", "amplitude": 0.15, "duration": 800, "anchorX": 0.5, "anchorY": 1}, "ogień w piecu"), before="jagna")
J_EXTRA["plomien"] = {"noInvert": True}
_add(J, JAG, J_ANIM, J_COMMENTS, "ziola", ((56, 290, 30, 24, group(['<path d="M64 306l-4 -10M70 304l1 -12M76 306l5 -9" fill="none" stroke-width="1.4"/>'])),
                                           {"type": "sway", "amplitude": 4, "duration": 2600, "anchorX": 0.5, "anchorY": 1}, "zioła w koszu"), before="figurka")

# ======================= JARMARK =======================
K = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V140H0Z" fill="url(#hatch)" stroke="none" opacity="0.3"/>']
for i, (x, h) in enumerate([(0, 120), (70, 150), (150, 110), (220, 160), (300, 130)]):
    t.append(f'<path d="M{x} 250V{250 - h}H{x + 70}V250Z" fill="#FFFFFF" stroke-width="2.2"/><path d="M{x - 4} {250 - h}L{x + 35} {230 - h}L{x + 74} {250 - h}Z" fill="url(#hatchDense)" stroke-width="2"/>')
    t += [okno(x + 12, 270 - h + 20, 16, 18, "#000000"), okno(x + 42, 270 - h + 20, 16, 18, "#000000")]
t.append('<path d="M-10 250H400V440H-10Z" fill="url(#hatch)" stroke="none" opacity="0.25"/><path d="M-10 250H400" fill="none" stroke-width="2.4"/>')
for x in (20, 140):
    t.append(f'<path d="M{x} 340V290H{x + 90}V340" fill="none" stroke-width="3"/><path d="M{x - 6} 290H{x + 96}V300H{x - 6}Z" fill="#FFFFFF" stroke-width="2"/>')
t.append('<path d="M250 360V320H380V360" fill="none" stroke-width="3"/><path d="M244 320H386V330H244Z" fill="#FFFFFF" stroke-width="2"/>')
t += [f'<path d="M{x - 8} 320C{x - 8} 308 {x + 8} 308 {x + 8} 320Z" fill="#000000" stroke-width="1.2"/>' for x in (262, 290, 352)]
t.append('<path d="M330 320c4 -8 10 -8 14 0" fill="none" stroke-width="2.4"/>')
K["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
K["markizy"] = (10, 270, 230, 24, group([f'<path d="M{x} 276H{x + 96}L{x + 90} 290H{x + 6}Z" fill="url(#hatch)" stroke-width="1.6"/>' for x in (14, 134)]))
K["tlum"] = (0, 290, 250, 130, group([postacie.man(x, 410, 1.0, hat=True) for x in (30, 120, 200)] + [postacie.woman(x, 412, 0.95) for x in (70, 160)]))
K["handlarz"] = (300, 270, 50, 60, group([postacie.man(316, 330, 0.9, hat=True)]))
K["jaromir"] = (230, 300, 50, 120, group([postacie.man(250, 420, 1.4, hat=False)]))
K["figurka"] = (300, 296, 30, 30, group(['<ellipse cx="312" cy="320" rx="16" ry="8" fill="#FFFFFF" stroke="none" opacity="0.5"/>', figurka(312, 320, 1.3)]))
K["woz"] = (0, 0, 390, 440, group(['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M-10 300C80 294 200 298 400 292V440H-10Z" fill="#EDEBE6" stroke-width="2.4"/>',
                                    '<rect width="390" height="440" fill="url(#hatchNight)" stroke="none" opacity="0.65"/>', chalupa(30, 380, 140, 70, 56, lit=True),
                                    '<path d="M200 400L360 400L350 370H210Z" fill="#FFFFFF" stroke-width="2"/>', '<circle cx="226" cy="404" r="14" fill="none" stroke-width="2.4"/><circle cx="334" cy="404" r="14" fill="none" stroke-width="2.4"/>',
                                    figurka(282, 392, 1.4)]))
K["przod"] = (0, 422, 390, 422, group(PRZOD))
JAR = ["tlo", "markizy", "handlarz", "figurka", "tlum", "jaromir", "woz", "przod"]
K_REVEAL = {"figurka": "figurka", "woz": "woz"}
K_ANIM = {"markizy": {"type": "sway", "amplitude": 1.5, "duration": 2400, "anchorX": 0.5, "anchorY": 0}, "tlum": {"type": "bob", "amplitude": 0.6, "duration": 1600},
          "handlarz": {"type": "bob", "amplitude": 0.5, "duration": 1200}, "jaromir": {"type": "bob", "amplitude": 0.3, "duration": 3000},
          "figurka": {"type": "flicker", "amplitude": 0.8, "duration": 2600}}
K_EXTRA = {"figurka": {"fadeDuration": 1500, "hideOn": "woz"}, "woz": {"fadeDuration": 3000}, "przod": {"depth": 1.0}}
K_COMMENTS = {"tlo": "miejski rynek: kamienice, kramy, kram starzyzny z garnkami", "markizy": "płócienne daszki kramów (falują)", "tlum": "ludzie na jarmarku",
              "handlarz": "stary handlarz starzyzną", "jaromir": "Jaromir między straganami", "figurka": "figurka na kramie starzyzny (# pokaz: figurka)",
              "woz": "wieczór: wóz pod chałupą, figurka między wiórami (# pokaz: woz)", "przod": "pierwszy plan"}
_add(K, JAR, K_ANIM, K_COMMENTS, "golebie", efekty.wrony(150, 120, n=5, k=0.35, seed=1305, amplitude=60, duration=4500), before="markizy")
K_COMMENTS["golebie"] = "gołębie nad rynkiem"
_add(K, JAR, K_ANIM, K_COMMENTS, "dym", ((240, 70, 30, 60, group([dym(254, 120, 50)])), {"type": "sway", "amplitude": 3, "duration": 4600, "anchorX": 0.5, "anchorY": 1}, "dym z komina"), before="markizy")
_add(K, JAR, K_ANIM, K_COMMENTS, "chmury", ((40, 30, 300, 40, group(['<path d="M60 62c8 -14 28 -14 34 0c8 -8 24 -2 22 8h-56z" fill="#FFFFFF" stroke-width="1.6"/>'])),
                                            {"type": "drift", "amplitude": 16, "duration": 15000}, "chmury"), before="markizy")
_add(K, JAR, K_ANIM, K_COMMENTS, "choragiewka", ((96, 70, 30, 30, group(['<path d="M104 96V74l16 6l-16 6" fill="#FFFFFF" stroke-width="1.6"/>'])),
                                                 {"type": "sway", "amplitude": 8, "duration": 1400, "anchorX": 0.2, "anchorY": 0.9}, "chorągiewka na dachu"), before="markizy")

# ======================= ZGLISZCZA I KRA =======================
Z = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V140H0Z" fill="url(#hatch)" stroke="none" opacity="0.3"/>']
t += bor(214, -6, 400, 12, seed=1306)
t.append(ton(220, night=False, h=110))
t.append('<path d="M-10 330C80 322 240 326 400 320V440H-10Z" fill="#EDEBE6" stroke-width="2.4"/>')
t += [f'<path d="M{x} {y}L{x + 40} {y - 14}" fill="none" stroke-width="5"/>' for x, y in [(230, 338), (250, 346), (290, 336)]]
t += [reeds(x, 334, 0.9) for x in (210, 330, 360, 380)]
Z["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
Z["kra"] = (0, 220, 390, 100, group([kra(30, 260, 50, 14), kra(140, 240, 36, 10), kra(250, 270, 60, 16), kra(330, 236, 30, 8)]))
Z["chlopcy"] = (40, 310, 140, 80, group([postacie.child(70, 380, 1.3), postacie.child(110, 384, 1.3), postacie.child(150, 380, 1.25)]))
Z["jozek"] = (230, 330, 60, 60, group([postacie.crouching_child(250, 380, 1.4)]))
Z["figurka"] = (264, 330, 40, 40, group(['<ellipse cx="282" cy="360" rx="16" ry="12" fill="#FFFFFF" stroke="none" opacity="0.5"/>', figurka(282, 366, 1.4)]))
Z["matka"] = (0, 0, 390, 440, group(['<rect width="390" height="440" fill="#EDEBE6" stroke="none" opacity="0.6"/>', postacie.woman(200, 400, 1.6, bundle=True)]))
Z["przod"] = (0, 422, 390, 422, group(PRZOD))
ZGL = ["tlo", "kra", "chlopcy", "jozek", "figurka", "matka", "przod"]
Z_REVEAL = {"figurka": "figurka", "matka": "matka"}
Z_ANIM = {"kra": {"type": "drift", "amplitude": 14, "duration": 9000}, "chlopcy": {"type": "bob", "amplitude": 1, "duration": 900}, "jozek": {"type": "bob", "amplitude": 0.5, "duration": 1400},
          "figurka": {"type": "flicker", "amplitude": 0.8, "duration": 2600}, "matka": {"type": "bob", "amplitude": 0.3, "duration": 3000}}
Z_EXTRA = {"figurka": {"fadeDuration": 1500}, "matka": {"fadeDuration": 2500}, "chlopcy": {"hideOn": "matka", "fadeDuration": 1500}, "przod": {"depth": 1.0}}
Z_COMMENTS = {"tlo": "jezioro z krą, zwęglone bale w trzcinach po zachodniej stronie", "kra": "kra spływa po jeziorze", "chlopcy": "chłopcy na brzegu",
              "jozek": "Józek grzebie patykiem w popiele", "figurka": "figurka wygrzebana z popiołu (# pokaz: figurka)", "matka": "matka Józka z figurką w fartuchu (# pokaz: matka)", "przod": "pierwszy plan"}
_add(Z, ZGL, Z_ANIM, Z_COMMENTS, "wrony", efekty.wrony(150, 110, n=4, k=0.4, seed=1307, amplitude=60), before="kra")
_add(Z, ZGL, Z_ANIM, Z_COMMENTS, "chmury", ((40, 40, 300, 40, group(['<path d="M70 70c8 -14 28 -14 34 0c8 -8 24 -2 22 8h-56z" fill="#FFFFFF" stroke-width="1.6"/>'])),
                                            {"type": "drift", "amplitude": 16, "duration": 15000}, "chmury"), before="kra")
_add(Z, ZGL, Z_ANIM, Z_COMMENTS, "trzciny", ((190, 290, 200, 50, group([reeds(x, 336, 1.0) for x in (200, 320, 372)])),
                                             {"type": "sway", "amplitude": 3, "duration": 2800, "anchorX": 0.5, "anchorY": 1}, "trzciny"), before="chlopcy")
_add(Z, ZGL, Z_ANIM, Z_COMMENTS, "popiol", ((230, 320, 100, 30, group([f'<circle cx="{x}" cy="{y}" r="1.2" fill="#000000" stroke="none"/>' for x, y in [(240, 336), (262, 330), (280, 340), (300, 328)]])),
                                            {"type": "rise", "amplitude": 12, "duration": 2400}, "popiół unosi się spod patyka"), before="jozek")
_add(Z, ZGL, Z_ANIM, Z_COMMENTS, "trawa", ((0, 390, 390, 40, group([grass(x, 430, 1.2) for x in range(6, 390, 22)])),
                                           {"type": "sway", "amplitude": 2, "duration": 2800, "anchorX": 0.5, "anchorY": 1}, "zeszłoroczna trawa"), before="matka")

# ======================= NAPRAWA KLADKI =======================
B = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V140H0Z" fill="url(#hatch)" stroke="none" opacity="0.3"/>']
t += bor(214, -6, 400, 12, seed=1308)
t.append('<path d="M-10 214C80 208 200 212 400 206V440H-10Z" fill="#EDEBE6" stroke-width="2.6"/>')
t.append('<path d="M-10 290C100 280 280 284 400 290V440H-10Z" fill="url(#hatch)" stroke-width="2" opacity="0.9"/>')
t.append(kladka(40, 350, 286, broken=True))
B["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
B["ludzie"] = (130, 290, 160, 130, group([postacie.man(170, 400, 1.3, hat=False, arm="l20 -10"), postacie.man(250, 400, 1.3, hat=True, arm="l-30 -6"),
                                          '<path d="M200 380L222 300" fill="none" stroke-width="5"/>']))
B["figurka"] = (196, 290, 50, 40, group(['<ellipse cx="220" cy="306" rx="16" ry="12" fill="#FFFFFF" stroke="none" opacity="0.5"/>', figurka(220, 316, 1.4)]))
B["plusk"] = (260, 300, 120, 60, group(['<ellipse cx="320" cy="330" rx="20" ry="5" fill="none" stroke="#FFFFFF" stroke-width="1.6"/>',
                                       '<ellipse cx="320" cy="330" rx="34" ry="9" fill="none" stroke="#FFFFFF" stroke-width="1" opacity="0.6"/>']))
B["przod"] = (0, 422, 390, 422, group(PRZOD))
NAPR = ["tlo", "ludzie", "figurka", "plusk", "przod"]
B_REVEAL = {"figurka": "figurka", "plusk": "plusk"}
B_ANIM = {"ludzie": {"type": "bob", "amplitude": 0.8, "duration": 1600}, "figurka": {"type": "flicker", "amplitude": 0.8, "duration": 2600},
          "plusk": {"type": "flicker", "amplitude": 0.2, "duration": 1200}}
B_EXTRA = {"figurka": {"fadeDuration": 1500, "hideOn": "plusk"}, "plusk": {"fadeDuration": 600}, "przod": {"depth": 1.0}}
B_COMMENTS = {"tlo": "mokradła po powodzi, zerwana kładka", "ludzie": "Jaromir i Antek wyciągają z mułu pal", "figurka": "figurka przywarta do pala (# pokaz: figurka)",
              "plusk": "kręgi na czarnym oczku (# pokaz: plusk)", "przod": "pierwszy plan"}
_add(B, NAPR, B_ANIM, B_COMMENTS, "czajki", efekty.wrony(120, 130, n=3, k=0.4, seed=1309, amplitude=70, duration=4000), before="ludzie")
B_COMMENTS["czajki"] = "czajki nad mokradłami"
_add(B, NAPR, B_ANIM, B_COMMENTS, "chmury", ((40, 40, 300, 40, group(['<path d="M240 70c8 -14 28 -14 34 0c8 -8 24 -2 22 8h-56z" fill="#FFFFFF" stroke-width="1.6"/>'])),
                                            {"type": "drift", "amplitude": 16, "duration": 15000}, "chmury"), before="ludzie")
_add(B, NAPR, B_ANIM, B_COMMENTS, "trzciny", ((0, 280, 390, 150, group([reeds(x, y, 1.0) for x, y in [(20, 330), (90, 380), (340, 350), (380, 410)]])),
                                              {"type": "sway", "amplitude": 3, "duration": 2800, "anchorX": 0.5, "anchorY": 1}, "trzciny"), before="plusk")
_add(B, NAPR, B_ANIM, B_COMMENTS, "babelki", ((140, 380, 120, 30, group([f'<circle cx="{x}" cy="400" r="1.6" fill="none" stroke="#FFFFFF" stroke-width="0.8"/>' for x in (150, 180, 230, 250)])),
                                              {"type": "rise", "amplitude": 10, "duration": 1800}, "bąbelki z mułu"), before="ludzie")

# ======================= SEN — KLADKA =======================
S = {}
t = ['<rect width="390" height="440" fill="#000000" stroke="none"/>', '<path d="M-10 230C100 222 290 226 400 230V440H-10Z" fill="url(#hatchNight)" stroke-width="2"/>']
t += [f'<path d="M{x - 10} {y}C{x - 10} {y - 14} {x + 10} {y - 14} {x + 10} {y}Z" fill="url(#hatch)" stroke="#FFFFFF" stroke-width="1"/>' for x, y in [(60, 380), (110, 410), (290, 396), (340, 370), (200, 420)]]
t.append('<path d="M40 300H350V306H40Z" fill="#FFFFFF" stroke-width="2"/>')
t += [f'<path d="M{x} 306V330" fill="none" stroke="#FFFFFF" stroke-width="2"/>' for x in range(56, 350, 40)]
S["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
S["dziecko"] = (180, 240, 40, 64, group(['<g stroke="#FFFFFF">' + postacie.child(198, 300, 1.4) + '</g>', '<path d="M190 268h16v30h-16z" fill="#FFFFFF" stroke="none"/>']))
S["swiatelka"] = (0, 180, 390, 120, swiatelka([(30, 220), (90, 260), (150, 210), (250, 240), (320, 200), (370, 270)]))
S["glowa"] = (0, 0, 0, 0, "")
RIG_S = art.rig("topielec", art.parse_transform("translate(300 274) scale(-0.42 0.42) translate(-190 -200)"), [
    ("glowa", ["szyja", "wlosy_tyl", "glowa", "wlosy_przod"], {"type": "sway", "amplitude": 4, "duration": 4000}, "glowa")], "sg")
del S["glowa"]
art.install_rig(S, RIG_S)
SG = art.rig_names(RIG_S)
S["woda"] = (-10, 300, 410, 140, group(['<path d="M-10 316C100 310 290 314 400 316V440H-10Z" fill="url(#hatchNight)" stroke="none" opacity="0.85"/>']))
S["ognie"] = (0, 120, 390, 120, swiatelka([(20, 150), (70, 140), (130, 170), (260, 150), (330, 136), (380, 170)], 3.6))
S["przod"] = (0, 422, 390, 422, group(['<path d="M-10 432H400V844H-10Z" fill="#000000" stroke="none"/>']))
SEN = ["tlo", "swiatelka"] + SG + ["woda", "dziecko", "ognie", "przod"]
S_REVEAL = {**{n: "glowa" for n in SG}, "ognie": "ognie"}
S_ANIM = {"swiatelka": {"type": "wander", "amplitude": 8, "duration": 4500}, "dziecko": {"type": "sway", "amplitude": 1.2, "duration": 3000, "anchorX": 0.5, "anchorY": 1},
          "ognie": {"type": "wander", "amplitude": 6, "duration": 3500}, "woda": {"type": "drift", "amplitude": 4, "duration": 5000}}
S_ANIM.update(art.rig_anims(RIG_S))
S_EXTRA = {**{n: {"fadeDuration": 3000} for n in SG}, "swiatelka": {"noInvert": True}, "ognie": {"fadeDuration": 3000, "noInvert": True}, "przod": {"depth": 1.0}}
S_COMMENTS = {"tlo": "sen: kładka w ciemności, gliniane garnki pod wodą", "dziecko": "dziecko w białej koszuli na kładce (kołysze się)", "swiatelka": "światełka wokół kładki",
              "woda": "czarna woda (faluje)", "ognie": "światełka tuż za płotami (# pokaz: ognie)", "przod": "pierwszy plan",
              **{n: f"głowa topielca wynurza się spod kładki — {n[3:]} (rysunek autora; # pokaz: glowa)" for n in SG}}
_add(S, SEN, S_ANIM, S_COMMENTS, "garnki", ((40, 350, 320, 80, group([f'<circle cx="{x}" cy="{y}" r="1.4" fill="none" stroke="#FFFFFF" stroke-width="0.8"/>' for x, y in [(60, 366), (110, 396), (290, 382), (340, 356)]])),
                                            {"type": "rise", "amplitude": 30, "duration": 3000}, "bąble spod garnków"), before="woda")
_add(S, SEN, S_ANIM, S_COMMENTS, "mgla", ((-30, 280, 450, 30, group([f'<path d="{ribbon(-20, 410, 292, 10, 4)}" fill="#FFFFFF" stroke="none" opacity="0.25"/>'])),
                                          {"type": "drift", "amplitude": 20, "duration": 9000}, "mgła nad wodą"), before="dziecko")
_add(S, SEN, S_ANIM, S_COMMENTS, "gwiazdy", efekty.iskry(0, 10, 390, 100, n=10, seed=1310, duration=3600), before="swiatelka")
S_COMMENTS["gwiazdy"] = "gwiazdy"

# ======================= NOC NA KLADCE =======================
N = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V220H0Z" fill="url(#hatchNight)" stroke="none" opacity="0.9"/>']
t += bor(214, -6, 400, 12, seed=1311)
t.append('<path d="M-10 214C80 208 200 212 400 206V440H-10Z" fill="url(#hatchNight)" stroke-width="2.6" opacity="0.9"/>')
t.append(ton(292, night=True))
t.append(kladka(20, 380, 286))
N["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
N["kapliczka"] = (20, 200, 40, 90, group([kapliczka(36, 286, 1.2)]))
N["swiatelka"] = (60, 220, 330, 80, swiatelka([(80, 250), (130, 236), (200, 260), (270, 244), (330, 266), (370, 236)]))
N["jozek"] = (150, 220, 50, 70, group(['<g stroke="#FFFFFF">' + postacie.child(170, 286, 1.4) + '</g>', '<path d="M162 254h16v30h-16z" fill="#FFFFFF" stroke="none"/>',
                                       '<path d="M176 262l14 -2" fill="none" stroke="#FFFFFF" stroke-width="3"/>']))
RIG_N = topielec(250, 292, 0.36, "nt")
art.install_rig(N, RIG_N)
NT = art.rig_names(RIG_N)
RIG_NB = topielec(250, 292, 0.36, "nb", scar_layer=True)
art.install_rig(N, RIG_NB)
NB = art.rig_names(RIG_NB)
N["woda"] = (-10, 290, 410, 150, group(['<path d="M-10 296C80 292 300 296 400 294V440H-10Z" fill="#000000" stroke="none"/>',
                                        '<path d="M200 300c20 -4 60 -4 90 0M220 312c16 -3 40 -3 60 0" fill="none" stroke="#FFFFFF" stroke-width="1.2"/>']))
N["reka"] = (170, 270, 60, 30, group(['<path d="M222 296C210 290 196 290 180 288" fill="none" stroke="#000000" stroke-width="5"/><path d="M180 288l-6 -4M180 288l-6 2" fill="none" stroke-width="2"/>']))
N["siekiera"] = (60, 140, 150, 160, group([z_siekiera(110, 286, 1.4, raised=True), f'<path d="M170 180L230 260" fill="none" stroke="{RED}" stroke-width="3"/>']))
N["figurka"] = (200, 270, 120, 50, group(['<ellipse cx="250" cy="300" rx="30" ry="7" fill="none" stroke="#FFFFFF" stroke-width="1.6"/>',
                                          '<ellipse cx="250" cy="300" rx="46" ry="11" fill="none" stroke="#FFFFFF" stroke-width="1" opacity="0.6"/>']))
N["latarnia"] = (160, 250, 200, 60, group([plomyk(x, 300, 1.4) for x in (190, 220, 250, 280, 310, 340)]))
N["pozar"] = (0, 0, 390, 440, group(['<rect width="390" height="440" fill="#EDEBE6" stroke="none" opacity="0.55"/>', kapliczka(36, 286, 1.2, burnt=True),
                                     '<path d="M0 286C40 278 90 282 150 286V300H0Z" fill="url(#hatchDense)" stroke="none"/>']))
N["przod"] = (0, 422, 390, 422, group(['<path d="M-10 432H400V844H-10Z" fill="#000000" stroke="none"/>']))
NOCK = ["tlo", "kapliczka", "swiatelka"] + NT + NB + ["woda", "reka", "jozek", "siekiera", "figurka", "latarnia", "pozar", "przod"]
HIDE_NT = "siekiera,figurka,latarnia"
N_REVEAL = {"jozek": "jozek", **{n: "stwor" for n in NT}, **{n: "blizna" for n in NB}, "reka": "stwor", "siekiera": "siekiera", "figurka": "figurka", "latarnia": "latarnia", "pozar": "pozar"}
N_ANIM = {"swiatelka": {"type": "wander", "amplitude": 8, "duration": 4500}, "jozek": {"type": "slide", "dx": 40, "dy": 0, "duration": 6000, "once": True},
          "woda": {"type": "drift", "amplitude": 3, "duration": 4000}, "reka": {"type": "sway", "amplitude": 3, "duration": 2000, "anchorX": 1, "anchorY": 0.8},
          "siekiera": {"type": "sway", "amplitude": 6, "duration": 700, "anchorX": 0.3, "anchorY": 1}, "figurka": {"type": "flicker", "amplitude": 0.2, "duration": 1200},
          "latarnia": {"type": "flame", "amplitude": 0.25, "duration": 600, "anchorX": 0.5, "anchorY": 1}}
N_ANIM.update(art.rig_anims(RIG_N))
N_ANIM.update(art.rig_anims(RIG_NB))
N_EXTRA = {"jozek": {"fadeDuration": 1500}, **{n: {"fadeDuration": 2500, "hideOn": HIDE_NT} for n in NT}, **{n: {"fadeDuration": 2500, "hideOn": HIDE_NT} for n in NB},
           "reka": {"fadeDuration": 1500, "hideOn": HIDE_NT}, "siekiera": {"fadeDuration": 600}, "figurka": {"fadeDuration": 600},
           "swiatelka": {"noInvert": True, "hideOn": "figurka", "fadeDuration": 800}, "latarnia": {"fadeDuration": 600, "noInvert": True, "hideOn": "pozar"},
           "kapliczka": {"hideOn": "pozar", "fadeDuration": 2000}, "pozar": {"fadeDuration": 4000}, "przod": {"depth": 1.0}}
N_COMMENTS = {"tlo": "noc na mokradłach: kładka, czarna woda, bór", "kapliczka": "stara kapliczka przy kładce", "swiatelka": "błędne ogniki w szuwarach",
              "jozek": "Józek we śnie idzie po kładce (# pokaz: jozek)", "woda": "czarna woda przed stworem", "reka": "szara ręka na kostce chłopca (# pokaz: stwor)",
              "siekiera": "Jaromir tnie siekierą (# pokaz: siekiera)", "figurka": "kręgi po figurce rzuconej w wodę, ogniki gasną (# pokaz: figurka)",
              "latarnia": "płonący olej na wodzie (# pokaz: latarnia)", "pozar": "świt: spalona kapliczka i szuwary (# pokaz: pozar)", "przod": "pierwszy plan",
              **{n: f"topielec wynurza się spod kładki — {n[3:]} (rysunek autora; # pokaz: stwor)" for n in NT},
              **{n: f"stara blizna po siekierze Maćka (rysunek autora; # pokaz: blizna)" for n in NB}}
_add(N, NOCK, N_ANIM, N_COMMENTS, "gwiazdy", efekty.iskry(0, 10, 390, 140, n=12, seed=1312, duration=3600), before="kapliczka")
N_COMMENTS["gwiazdy"] = "gwiazdy"
_add(N, NOCK, N_ANIM, N_COMMENTS, "trzciny", ((0, 250, 390, 60, group([reeds(x, 296, 1.0) for x in (6, 70, 360, 384)])),
                                              {"type": "sway", "amplitude": 3, "duration": 2800, "anchorX": 0.5, "anchorY": 1}, "trzciny"), before="woda")
_add(N, NOCK, N_ANIM, N_COMMENTS, "dym", ((150, 150, 220, 120, group(['<path d="M190 270c-10 -30 10 -50 -4 -90M250 270c10 -30 -10 -60 6 -100M320 270c-8 -30 8 -50 -2 -80" fill="none" stroke-width="2" opacity="0.6"/>'])),
                                          {"type": "rise", "amplitude": 16, "duration": 2400}, "dym z płonących trzcin (# pokaz: latarnia)"), before="latarnia")
N_REVEAL["dym"] = "latarnia"
N_EXTRA["dym"] = {"fadeDuration": 1500}
_add(N, NOCK, N_ANIM, N_COMMENTS, "ksiezyc", ((300, 30, 40, 40, group(['<circle cx="320" cy="50" r="14" fill="#FFFFFF" stroke-width="2"/>'])), None, "księżyc"), before="kapliczka")

# ======================= SKRZYNIA W IZBIE =======================
Q = {}
t = izba_tlo(dark=True)
t.append(okno(40, 110, 64, 64, fill="#000000"))
t.append(lozko(120, 330, 160))
t.append('<path d="M150 330V306H230V330Z" fill="#000000" stroke-width="2"/><path d="M150 312H230" fill="none" stroke="#FFFFFF" stroke-width="1"/>')
t.append(piec(300, 330, 1.0))
t.append('<path d="M320 170V330" fill="none" stroke-width="0"/>')
Q["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
Q["jaromir"] = (40, 230, 60, 100, group([siedzi_na_lawie(70, 300, 1.5, 1), '<path d="M30 300H110V306H30ZM36 306V330M104 306V330" fill="#FFFFFF" stroke-width="2"/>']))
Q["plomien"] = (318, 296, 34, 28, group([plomyk(335, 322, 1.0)]))
Q["piec"] = (300, 260, 90, 80, group(['<ellipse cx="335" cy="310" rx="40" ry="30" fill="#FFFFFF" stroke="none" opacity="0.35"/>', figurka(335, 324, 1.3),
                                      f'<path d="M322 324c-4 -6 -2 -14 2 -18M348 324c4 -6 2 -14 -2 -18" fill="none" stroke="{RED}" stroke-width="2"/>']))
Q["wiadra"] = (240, 300, 60, 30, group(['<path d="M246 330L250 310H270L274 330ZM276 330L280 310H300L304 330Z" fill="url(#hatchDense)" stroke-width="1.6"/>']))
Q["lancuch"] = (146, 300, 90, 30, group(['<path d="M150 318H230" fill="none" stroke-width="3" stroke-dasharray="4 2"/><path d="M186 314h8v10h-8z" fill="#FFFFFF" stroke-width="1.6"/>']))
Q["lopata"] = (0, 0, 390, 440, group(['<rect width="390" height="440" fill="url(#hatchNight)" stroke="none" opacity="0.6"/>', '<path d="M40 110H104V174H40Z" fill="#FFFFFF" stroke="none" opacity="0.4"/>',
                                       postacie.man(80, 330, 1.4, hat=True), '<path d="M96 260L120 330" fill="none" stroke-width="3"/><path d="M114 324l12 -2l4 12l-10 4z" fill="#FFFFFF" stroke-width="1.4"/>']))
Q["kosz"] = (140, 270, 50, 40, group([kosz(164, 306, 1.4)]))
Q["przod"] = (0, 422, 390, 422, group(PRZOD_IZBA))
SKR = ["tlo", "jaromir", "plomien", "piec", "wiadra", "lancuch", "kosz", "lopata", "przod"]
Q_REVEAL = {"piec": "piec", "wiadra": "piec", "lancuch": "lancuch", "lopata": "lopata", "kosz": "kosz"}
Q_ANIM = {"plomien": {"type": "flame", "amplitude": 0.15, "duration": 800, "anchorX": 0.5, "anchorY": 1}, "jaromir": {"type": "bob", "amplitude": 0.4, "duration": 3200},
          "piec": {"type": "flicker", "amplitude": 0.7, "duration": 900}, "lopata": {"type": "bob", "amplitude": 0.4, "duration": 2400}}
Q_EXTRA = {"plomien": {"noInvert": True}, "piec": {"fadeDuration": 1500, "hideOn": "lancuch"}, "wiadra": {"fadeDuration": 2000}, "lancuch": {"fadeDuration": 1500},
           "lopata": {"fadeDuration": 2500}, "kosz": {"fadeDuration": 1500}, "jaromir": {"hideOn": "lopata,kosz", "fadeDuration": 1500}, "przod": {"depth": 1.0}}
Q_COMMENTS = {"tlo": "izba wieczorem: łóżko, skrzynia pod łóżkiem, piec", "jaromir": "Jaromir siedzi nad skrzynią", "plomien": "ogień w piecu",
              "piec": "figurka w żarze syczy (# pokaz: piec)", "wiadra": "wiadra pełne bagiennej wody (# pokaz: piec)", "lancuch": "skrzynia okręcona łańcuchem (# pokaz: lancuch)",
              "lopata": "Jaromir wychodzi po zmroku z łopatą (# pokaz: lopata)", "kosz": "kosz Jagny z zawiniątkiem (# pokaz: kosz)", "przod": "pierwszy plan"}
_add(Q, SKR, Q_ANIM, Q_COMMENTS, "zar", ((316, 300, 40, 14, group([f'<circle cx="{x}" cy="306" r="1.6" fill="{RED}" stroke="none"/>' for x in (324, 332, 340, 348)])),
                                         {"type": "flicker", "amplitude": 0.3, "duration": 1600}, "żar w piecu"), before="plomien")
Q_EXTRA["zar"] = {"noInvert": True}
_add(Q, SKR, Q_ANIM, Q_COMMENTS, "dym", ((300, 120, 40, 60, group([dym(324, 170, 50, 0.4)])), {"type": "sway", "amplitude": 3, "duration": 4600, "anchorX": 0.5, "anchorY": 1}, "dym nad piecem"), before="plomien")
_add(Q, SKR, Q_ANIM, Q_COMMENTS, "ogniki", ((44, 114, 56, 56, swiatelka([(56, 140), (84, 128), (90, 156)], 2.2)), {"type": "wander", "amplitude": 4, "duration": 4000}, "ogniki za oknem"), before="jaromir")
Q_EXTRA["ogniki"] = {"noInvert": True}
_add(Q, SKR, Q_ANIM, Q_COMMENTS, "pylki", efekty.pylki(120, 200, 160, 100, n=6, seed=1313, duration=8000), before="przod")

# ======================= WIOSNA I PALIKI =======================
W = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V140H0Z" fill="url(#hatch)" stroke="none" opacity="0.2"/>',
     '<path d="M-10 214C80 208 200 212 400 206V440H-10Z" fill="#EDEBE6" stroke-width="2.6"/>']
t += bor(212, 220, 400, 12, seed=1314)
t.append('<path d="M20 214V180H90V214Z" fill="#FFFFFF" stroke-width="2"/><path d="M14 182L55 160L96 182Z" fill="url(#hatchDense)" stroke-width="2"/><path d="M70 160V140H80V172" fill="#FFFFFF" stroke-width="1.6"/>')
t.append('<path d="M110 300C170 290 230 292 300 300C250 310 160 312 110 300Z" fill="url(#hatch)" stroke-width="1.4"/>')
t.append(chalupa(10, 360, 130, 70, 56))
W["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
W["antek"] = (150, 300, 70, 110, group([postacie.man(170, 404, 1.3, hat=True), postacie.woman(200, 404, 1.2, bundle=True)]))
W["krzyz"] = (196, 250, 30, 60, group([krzyz(210, 300, 44, 1.0), '<path d="M206 286h8M206 270h8" fill="none" stroke="#FFFFFF" stroke-width="1"/>']))
W["paliki"] = (60, 196, 300, 60, group([f'<path d="M{60 + i * 22} {214 + (i % 2) * 2}v-{12 - i * 0.4:.0f}" fill="none" stroke-width="2.4"/>' for i in range(14)]))
W["przod"] = (0, 422, 390, 422, group(PRZOD))
WIO = ["tlo", "paliki", "krzyz", "antek", "przod"]
W_REVEAL = {"antek": "antek", "krzyz": "krzyz", "paliki": "paliki"}
W_ANIM = {"antek": {"type": "bob", "amplitude": 0.4, "duration": 2400}, "paliki": {"type": "flicker", "amplitude": 0.6, "duration": 3000}}
W_EXTRA = {"antek": {"fadeDuration": 1500}, "krzyz": {"fadeDuration": 2000}, "paliki": {"fadeDuration": 3000}, "przod": {"depth": 1.0}}
W_COMMENTS = {"tlo": "majowa wieś: tartak w dali, łąki, mokradła, bór", "antek": "Antek i Jadwisia z synkiem (# pokaz: antek)",
              "krzyz": "brzozowy krzyż w miejscu spalonej kapliczki (# pokaz: krzyz)", "paliki": "paliki pod drogę od tartaku pod bór (# pokaz: paliki)", "przod": "pierwszy plan"}
_add(W, WIO, W_ANIM, W_COMMENTS, "dym", ((60, 90, 30, 60, group([dym(74, 140, 50)])), {"type": "sway", "amplitude": 3, "duration": 4600, "anchorX": 0.5, "anchorY": 1}, "dym z tartaku"), before="paliki")
_add(W, WIO, W_ANIM, W_COMMENTS, "chmury", ((40, 40, 300, 40, group(['<path d="M120 70c8 -14 28 -14 34 0c8 -8 24 -2 22 8h-56z" fill="#FFFFFF" stroke-width="1.6"/>'])),
                                            {"type": "drift", "amplitude": 16, "duration": 16000}, "chmury"), before="paliki")
_add(W, WIO, W_ANIM, W_COMMENTS, "jaskolki", efekty.wrony(200, 120, n=3, k=0.32, seed=1315, amplitude=70, duration=4000), before="paliki")
W_COMMENTS["jaskolki"] = "jaskółki"
_add(W, WIO, W_ANIM, W_COMMENTS, "motyle", ((230, 320, 140, 80, group([postacie.butterfly(250, 360, 0.8), postacie.butterfly(320, 340, 0.7)])),
                                            {"type": "wander", "amplitude": 14, "flap": 0.4, "duration": 4000}, "motyle"), before="antek")
_add(W, WIO, W_ANIM, W_COMMENTS, "trawa", ((0, 384, 390, 46, group([grass(x, 430, 1.4) for x in range(6, 390, 18)])),
                                           {"type": "sway", "amplitude": 3, "duration": 2600, "anchorX": 0.5, "anchorY": 1}, "wysoka trawa"), before="przod")
_add(W, WIO, W_ANIM, W_COMMENTS, "trzciny", ((100, 270, 210, 40, group([reeds(x, 304, 0.8) for x in (120, 170, 260, 296)])),
                                             {"type": "sway", "amplitude": 3, "duration": 2800, "anchorX": 0.5, "anchorY": 1}, "trzciny na mokradłach"), before="krzyz")

BACKGROUNDS = {"przednowek": ("bg_przednowek", A, PRZED, A_ANIM, A_REVEAL, A_EXTRA, A_COMMENTS, "przednówek"),
               "jagna_izba": ("bg_jagna", J, JAG, J_ANIM, J_REVEAL, J_EXTRA, J_COMMENTS, "Jagna w izbie"),
               "jarmark": ("bg_jarmark", K, JAR, K_ANIM, K_REVEAL, K_EXTRA, K_COMMENTS, "jarmark w mieście"),
               "zgliszcza_kra": ("bg_zgliszczakra", Z, ZGL, Z_ANIM, Z_REVEAL, Z_EXTRA, Z_COMMENTS, "zgliszcza i kra"),
               "kladka_naprawa": ("bg_kladkanapr", B, NAPR, B_ANIM, B_REVEAL, B_EXTRA, B_COMMENTS, "naprawa kładki"),
               "sen_kladka": ("bg_senkladka", S, SEN, S_ANIM, S_REVEAL, S_EXTRA, S_COMMENTS, "wspólny sen"),
               "noc_kladka": ("bg_nockladka", N, NOCK, N_ANIM, N_REVEAL, N_EXTRA, N_COMMENTS, "noc na kładce"),
               "skrzynia_izba": ("bg_skrzynia", Q, SKR, Q_ANIM, Q_REVEAL, Q_EXTRA, Q_COMMENTS, "skrzynia w izbie"),
               "wiosna_paliki": ("bg_wiosnapaliki", W, WIO, W_ANIM, W_REVEAL, W_EXTRA, W_COMMENTS, "wiosna i paliki")}

if __name__ == "__main__":
    if sys.argv[1] == "--master":
        prefix, Ls, order, anim, reveal, extra, comments, scene = BACKGROUNDS[sys.argv[2]]
        hide = set() if len(sys.argv) > 3 and sys.argv[3] == "wszystko" else set(reveal) | {n for n, e in extra.items() if e.get("appearAfter")}
        print(master(Ls, [n for n in order if n not in hide]))
    else:
        import bgjson
        for key, (prefix, Ls, order, anim, reveal, extra, comments, scene) in BACKGROUNDS.items():
            write_layers(sys.argv[1], prefix, scene, Ls, [n for n in Ls if n in comments], comments)
            bgjson.upsert(key, bgjson.entry(prefix, order, Ls, anim, reveal, extra))
