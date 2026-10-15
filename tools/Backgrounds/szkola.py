# Generator tel rozdzialu drugiego (Szkola):
#   jesien    — Zapadlina jesienia: stodola z jaskolkami rzedem na kalenicy (po chwili odlatuja), stary bez z baza gubi zolte liscie,
#               na polach dymia ogniska z letow, szron na trawie; Jaromir w za duzej czapce z lniana torba (# pokaz: jaromir)
#   szkola_izba — izba szkoly w Bukowcu: piec kaflowy, tablica, lawki; Bartek z tabliczka (# pokaz: bartek), pan Ignacy w drzwiach
#               (# pokaz: ignacy), obrona Antka (# pokaz: obrona), potrzaskana tabliczka (# pokaz: tabliczka)
#   droga_bor — przed switem sciezka pnie sie pod gore na Bukowy Grzbiet: z lewej pola, z prawej sciana swierkow, mgla;
#               czworka dzieci w drodze do szkoly; miedzy swierkami jasne oczy z czerwonymi zrenicami (# pokaz: oczy)
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/szkola.py src/LittleVillage/Resources/Images         -> pliki bg_jesien_*.svg, bg_drogabor_*.svg, bg_szkola_*.svg
#   python3 tools/Backgrounds/szkola.py --master jesien|droga_bor|szkola_izba [wszystko] > podglad.svg
import sys, random, math
from common import *
import art, postacie

RED = "#A8101A"


def swallow(x, y, k=1.0):
    """Jaskolka siedzaca (profil w prawo): granatowy grzbiet, biala piers, dlugi rozwidlony ogon."""
    P = lambda dx, dy: f"{x + dx * k:.1f} {y + dy * k:.1f}"
    return (f'<path d="M{P(-1, 0)}C{P(-6, -2)} {P(-6, -9)} {P(0, -10)}C{P(4, -10)} {P(6, -7)} {P(5, -5)}L{P(8, -5)}L{P(5, -3)}'
            f'C{P(4, -1)} {P(2, 0)} {P(-1, 0)}Z" fill="#000000" stroke-width="1"/>'
            f'<path d="M{P(1, -4)}C{P(3, -4)} {P(4, -2)} {P(2, -1)}" fill="#FFFFFF" stroke="none"/>'
            f'<path d="M{P(-4, -2)}L{P(-13, 4)}M{P(-4, -1)}L{P(-11, 6)}" fill="none" stroke-width="{1.2 * k:.1f}"/>'
            f'<path d="M{P(0, 0)}v{2 * k:.1f}" fill="none" stroke-width="0.8"/>')


def leaf(x, y, k=1.0, rot=0):
    """Zolty lisc bzu: bialy (jasny) owal z nerwem."""
    return (f'<g transform="rotate({rot} {x} {y})"><path d="M{x - 6 * k:.1f} {y}C{x - 3 * k:.1f} {y - 4 * k:.1f} {x + 3 * k:.1f} {y - 4 * k:.1f} {x + 7 * k:.1f} {y}'
            f'C{x + 3 * k:.1f} {y + 4 * k:.1f} {x - 3 * k:.1f} {y + 4 * k:.1f} {x - 6 * k:.1f} {y}Z" fill="#FFFFFF" stroke-width="1.3"/>'
            f'<path d="M{x - 8 * k:.1f} {y}H{x + 5 * k:.1f}" fill="none" stroke-width="0.8"/></g>')


def schoolboy(x, y, k=1.0):
    """Jaromir przodem: za duza czapka ojca na uszach, lniana torba na ramieniu (biala, z pasem przez piers)."""
    P = lambda dx, dy: f"{x + dx * k:.1f} {y + dy * k:.1f}"
    return (postacie.child(x, y, k) +
            f'<g stroke-width="2">'
            f'<path d="M{P(-9, -40)}L{P(-11, -49)}C{P(-6, -53)} {P(8, -53)} {P(12, -49)}L{P(9, -40)}Z" fill="#000000"/>'
            f'<path d="M{P(-11, -49)}C{P(-4, -51)} {P(6, -51)} {P(12, -49)}" fill="none" stroke="#FFFFFF" stroke-width="{0.8 * k:.1f}"/>'
            f'<path d="M{P(-4, -40)}C{P(2, -37)} {P(10, -37)} {P(15, -40)}L{P(9, -41)}Z" fill="#000000" stroke-width="{1.4 * k:.1f}"/>'
            f'<path d="M{P(-6, -32)}L{P(7, -14)}" fill="none" stroke="#FFFFFF" stroke-width="{1.6 * k:.1f}"/>'
            f'<path d="M{P(4, -18)}h{9 * k:.1f}v{9 * k:.1f}c0 {2 * k:.1f} {-1 * k:.1f} {3 * k:.1f} {-3 * k:.1f} {3 * k:.1f}h{-4 * k:.1f}'
            f'c{-2 * k:.1f} 0 {-2 * k:.1f} {-1 * k:.1f} {-2 * k:.1f} {-3 * k:.1f}Z" fill="#FFFFFF" stroke-width="1.6"/>'
            f'<path d="M{P(4, -15)}h{9 * k:.1f}" fill="none" stroke-width="1.1"/>'
            f'</g>')


# ======================= JESIEN w Zapadlinie =======================
J = {}
rnd = random.Random(202)
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M0 0H390V70C300 84 200 62 110 76C60 84 30 74 0 80Z" fill="url(#hatchDense)" stroke="none"/>',
     '<path d="M0 80C30 74 60 84 110 76C200 62 300 84 390 70V150C300 160 210 140 120 154C70 162 30 150 0 156Z" fill="url(#hatch)" stroke="none"/>']
# horyzont: pola i bor na wschodzie
t.append('<path d="M-10 196C70 186 150 192 230 184C300 178 350 186 400 182V440H-10Z" fill="#EDEBE6" stroke-width="3"/>')
for i in range(12):
    t.append(spruce(214 + i * 9, 190 - (i % 3) * 3, 26 + (i % 4) * 5, 13))
# zaorane pola z bruzdami i kopkami zeschlych letow
for i in range(7):
    y0 = 208 + i * 14
    t.append(f'<path d="M150 {y0}C210 {y0 - 4} 300 {y0 + 3} 400 {y0 - 2}" fill="none" stroke-width="1"/>')
for (x, y) in [(214, 236), (262, 228), (318, 246), (366, 232)]:
    t.append(f'<path d="M{x - 7} {y}Q{x} {y - 9} {x + 7} {y}Z" fill="url(#hatchDense)" stroke-width="1.4"/>')
# stodola z lewej: sciana z desek, dach kryty strzecha, wielkie wrota; kalenica prosta (siedza na niej jaskolki)
t.append('<path d="M-10 238H176V392H-10Z" fill="#FFFFFF" stroke-width="3"/>')
for x in range(4, 176, 12):
    t.append(f'<path d="M{x} 240V392" fill="none" stroke-width="0.9"/>')
t.append('<path d="M-10 244L18 150H160L196 244Z" fill="url(#hatch)" stroke-width="3"/>')
for k in range(1, 6):
    t.append(f'<path d="M{-10 + k * 5} {244 - k * 16}H{196 - k * 6}" fill="none" stroke-width="0.9"/>')
t.append('<path d="M14 151H164" fill="none" stroke-width="4"/>')
t.append('<path d="M60 392V290H140V392Z" fill="#000000" stroke-width="2.4"/><path d="M100 290V392M60 290L100 340L140 290" fill="none" stroke="#FFFFFF" stroke-width="1.4"/>')
# stary bez z prawej, w koronie baza z desek
BX = 304
# trzy pnie wyrastajace z jednego karpa, rozchodza sie ku gorze
t.append(f'<path d="M{BX - 10} 402C{BX - 8} 360 {BX - 30} 320 {BX - 56} 268M{BX + 2} 402C{BX + 2} 350 {BX + 4} 300 {BX + 2} 240M{BX + 12} 402C{BX + 16} 356 {BX + 40} 318 {BX + 66} 262" fill="none" stroke-width="6"/>')
t.append(f'<path d="M{BX - 40} 300C{BX - 60} 296 {BX - 76} 286 {BX - 86} 270M{BX + 48} 296C{BX + 66} 292 {BX + 78} 282 {BX + 86} 268M{BX - 56} 268L{BX - 70} 236M{BX - 56} 268L{BX - 36} 230M{BX + 2} 240L{BX - 16} 206M{BX + 2} 240L{BX + 22} 204M{BX + 66} 262L{BX + 56} 226M{BX + 66} 262L{BX + 88} 236" fill="none" stroke-width="2.6"/>')
# baza: podloga z desek miedzy pniami, scianka z gałezi i daszek
t.append(f'<path d="M{BX - 44} 304H{BX + 48}V296H{BX - 44}Z" fill="#FFFFFF" stroke-width="2"/>')
for k in range(7):
    t.append(f'<path d="M{BX - 40 + k * 14} 304V296" fill="none" stroke-width="0.9"/>')
t.append(f'<path d="M{BX - 38} 296V272M{BX + 42} 296V274M{BX - 38} 284H{BX + 42}" fill="none" stroke-width="2"/>')
t.append(f'<path d="M{BX - 44} 274H{BX + 48}L{BX + 38} 260H{BX - 34}Z" fill="url(#hatch)" stroke-width="2"/>')
t.append(f'<path d="M{BX - 24} 402h50" fill="none" stroke-width="2.4"/>')
J["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))

# resztki lisci na galeziach bzu (kolysza sie na wietrze)
J["korona"] = (BX - 96, 190, 196, 100, group([leaf(BX + dx, dy, 1.0, rnd.uniform(-40, 40)) for (dx, dy) in
                                             [(-84, 270), (-70, 238), (-36, 232), (-62, 254), (-16, 208), (22, 206), (4, 226), (56, 228), (86, 238), (84, 266), (70, 250), (-48, 284), (60, 288)]]))
# opadajace liscie (kazdy osobno, z opoznieniem)
LEAVES = [(BX - 60, 246), (BX + 40, 236), (BX - 10, 220), (BX + 76, 258), (BX - 80, 262)]
for i, (x, y) in enumerate(LEAVES):
    J[f"lisc_{i}"] = (x - 9, y - 9, 18, 18, group([leaf(x, y, 1.0, 20 * i)]))
# jaskolki rzedem na kalenicy — po chwili odlatuja
J["jaskolki"] = (10, 128, 162, 26, group([swallow(34 + i * 19 + (3 if i % 2 else 0), 150, 1.5) for i in range(7)]))
J["jaskolki_lot"] = (20, 110, 150, 40, group([crow(30 + i * 19, 130 - (i % 3) * 6, 0.42) for i in range(7)]))
# dym z ognisk na polach (snuje sie nisko z wiatrem) i zar
J["dym"] = (200, 160, 180, 80, group([
    '<path d="M262 226C254 212 266 204 258 192C252 182 262 176 270 170C280 166 300 168 318 164" fill="none" stroke-width="5" stroke-linecap="round" opacity="0.6"/>',
    '<path d="M318 244C312 232 322 224 316 214C312 206 322 200 334 196C346 192 362 194 380 190" fill="none" stroke-width="4" stroke-linecap="round" opacity="0.55"/>']))
J["zar"] = (254, 222, 70, 28, group([f'<path d="M258 230q4 -6 8 0M314 248q4 -6 8 0" fill="none" stroke="{RED}" stroke-width="2.2"/>']))
J["jaromir"] = (176, 340, 50, 84, group([schoolboy(200, 420, 1.55)]))

p = ['<path d="M-10 410H400V844H-10Z" fill="#EDEBE6" stroke="none"/>']
for i in range(24):
    p.append(grass(rnd.uniform(0, 390), rnd.uniform(430, 840), rnd.uniform(0.9, 1.3)))
J["przod"] = (0, 400, 390, 444, group(p))
# szron na trawie migocze
sparks = []
for i in range(14):
    x, y = rnd.uniform(8, 382), rnd.uniform(408, 436)
    sparks.append(f'<path d="M{x - 3:.0f} {y:.0f}h6M{x:.0f} {y - 3:.0f}v6" fill="none" stroke-width="1.1"/>')
J["szron"] = (0, 400, 390, 42, group(sparks))

JESIEN = ["tlo", "dym", "zar", "jaskolki", "jaskolki_lot", "korona"] + [f"lisc_{i}" for i in range(len(LEAVES))] + ["jaromir", "przod", "szron"]
J_REVEAL = {"jaromir": "jaromir"}
J_ANIM = {"dym": {"type": "sway", "amplitude": 2, "duration": 6000, "anchorX": 0.3, "anchorY": 1},
          "zar": {"type": "flicker", "amplitude": 0.3, "duration": 1600},
          "jaskolki": {"type": "bob", "amplitude": 0.8, "duration": 900},
          "jaskolki_lot": {"type": "arc", "amplitude": 30, "dx": -260, "dy": -60, "duration": 8000, "phase": 0.5},
          "korona": {"type": "sway", "amplitude": 2, "duration": 3200, "anchorX": 0.5, "anchorY": 1},
          "szron": {"type": "flicker", "amplitude": 0.2, "duration": 2600},
          "jaromir": {"type": "bob", "amplitude": 0.6, "duration": 1400}}
J_ANIM.update({f"lisc_{i}": {"type": "float", "amplitude": 5, "dx": -50 - 10 * i, "dy": 150 + 12 * i, "duration": 6000 + 900 * i,
                              "phase": round(i * 0.21, 2)} for i in range(len(LEAVES))})
# jaskolki siedza chwile, potem stado odlatuje (petla luku zsynchronizowana z pojawieniem: 12 s = 1,5 cyklu + faza 0,5)
J_EXTRA = {"jaskolki": {"hideAfter": 12000, "fadeDuration": 500},
           "jaskolki_lot": {"appearAfter": 12000, "fadeDuration": 300, "hideAfter": 5400},
           "przod": {"depth": 1.0}, "szron": {"depth": 1.0}, "jaromir": {"depth": 0.6}}
J_COMMENTS = {"tlo": "Zapadlina jesienią: stodoła, stary bez z bazą, zaorane pola, bór", "dym": "dym z ognisk z łętów (snuje się)",
              "zar": "żar ognisk (migocze, czerwony)", "jaskolki": "jaskółki rzędem na kalenicy (znikają po chwili)",
              "jaskolki_lot": "stado jaskółek odlatuje", "korona": "resztki liści na bzie (kołyszą się)",
              "jaromir": "Jaromir w za dużej czapce, z lnianą torbą (# pokaz: jaromir)", "przod": "pierwszy plan: trawa",
              "szron": "szron na trawie (migocze)"}
J_COMMENTS.update({f"lisc_{i}": "żółty liść bzu opada" for i in range(len(LEAVES))})


# ======================= DROGA pod borem we mgle =======================
D = {}
rnd = random.Random(203)
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M0 0H390V100C300 116 200 92 110 108C60 116 30 104 0 112Z" fill="url(#hatchDense)" stroke="none"/>',
     '<path d="M0 112C30 104 60 116 110 108C200 92 300 116 390 100V150H0Z" fill="url(#hatch)" stroke="none" opacity="0.6"/>']
# zbocze Bukowego Grzbietu: grzbiet wysoko, pola opadaja w lewo i w dol
t.append('<path d="M-10 214C60 196 130 170 200 150C250 138 300 136 400 140V440H-10Z" fill="#EDEBE6" stroke-width="3"/>')
for i in range(9):
    y0 = 230 + i * 24
    t.append(f'<path d="M-10 {y0}C50 {y0 - 14 - i} 120 {y0 - 30 - i * 2} 190 {y0 - 46 - i * 2}" fill="none" stroke-width="1"/>')
t.append('<path d="M40 300C80 286 120 270 160 250" fill="none" stroke-width="1.8"/>')   # miedza
# sciezka wije sie od dolu pod gore az na grzbiet
t.append('<path d="M150 440C170 400 196 372 210 340C224 306 222 280 232 250C240 222 248 190 250 150" fill="none" stroke-width="2.6"/>')
t.append('<path d="M214 440C226 404 240 372 250 340C260 306 256 280 262 250C268 222 266 190 262 150" fill="none" stroke-width="2.6"/>')
# kapliczka przy sciezce, ledwie widoczna
from kapliczki import shrine
t.append(shrine(196, 276, 0.42))
# sciana swierkow po prawej, coraz wieksze ku widzowi
for i, (x, base, h) in enumerate([(286, 160, 40), (300, 168, 46), (316, 178, 54), (332, 190, 62), (350, 204, 72), (370, 220, 84), (392, 238, 96),
                                  (282, 214, 70), (304, 240, 90), (330, 268, 112), (360, 300, 136), (388, 330, 150), (290, 300, 120), (318, 352, 170), (352, 400, 200), (386, 430, 220)]):
    t.append(spruce(x, base, h, h * 0.42))
D["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))

D["mgla_daleka"] = (80, 150, 330, 50, group([f'<path d="{ribbon(100, 380, 166, 14, 3)}" fill="#EDEBE6" stroke-width="1.6" opacity="0.9"/>']))
D["dzieci"] = (196, 166, 76, 160, group([postacie.child(250, 214, 0.95),                  # Franek przodem, najwyzej
                                        postacie.girl(226, 262, 0.85), postacie.child(244, 264, 0.85),    # Hanka tuz przy Jaromirze
                                        postacie.child(214, 320, 0.95)]))                 # Antek zostaje w tyle
D["mgla"] = (-30, 250, 450, 120, group([f'<path d="{ribbon(-20, 250, 284, 18, 4)}" fill="#EDEBE6" stroke-width="1.8" opacity="0.92"/>',
                                        f'<path d="{ribbon(140, 410, 330, 20, 5)}" fill="#EDEBE6" stroke-width="1.8" opacity="0.85"/>']))
# oczy miedzy swierkami — wysoko, wyzej niz dorosly czlowiek
D["oczy"] = (330, 266, 40, 20, group(['<ellipse cx="342" cy="277" rx="4.2" ry="2.6" fill="#FFFFFF" stroke="none"/>',
                                       '<ellipse cx="358" cy="275" rx="4.6" ry="2.8" fill="#FFFFFF" stroke="none"/>',
                                       f'<circle cx="343" cy="277" r="1.2" fill="{RED}" stroke="none"/><circle cx="359" cy="275" r="1.3" fill="{RED}" stroke="none"/>']))
p = ['<path d="M-10 420H400V844H-10Z" fill="#EDEBE6" stroke="none"/>']
for i in range(22):
    p.append(grass(rnd.uniform(0, 390), rnd.uniform(436, 840), rnd.uniform(0.9, 1.3)))
D["przod"] = (0, 410, 390, 434, group(p))

DROGA = ["tlo", "mgla_daleka", "dzieci", "oczy", "mgla", "przod"]
D_REVEAL = {"oczy": "oczy"}
D_ANIM = {"mgla_daleka": {"type": "drift", "amplitude": 8, "duration": 16000},
          "mgla": {"type": "drift", "amplitude": 14, "duration": 12000},
          "dzieci": {"type": "bob", "amplitude": 0.6, "duration": 900}}
D_ANIM["oczy"] = {"type": "blink", "duration": 4800}
D_EXTRA = {"oczy": {"fadeDuration": 2500}, "mgla": {"depth": 0.8}, "przod": {"depth": 1.0}}
D_COMMENTS = {"tlo": "przed świtem: ścieżka pod górę na Bukowy Grzbiet, pola z lewej, ściana świerków z prawej",
              "mgla_daleka": "mgła pod grzbietem (dryfuje)", "mgla": "mgła nad ścieżką (dryfuje)",
              "dzieci": "Franek, Hanka z Jaromirem i Antek w drodze do szkoły", "oczy": "oczy między świerkami, wyżej niż człowiek (# pokaz: oczy)",
              "przod": "pierwszy plan: trawa"}


# ======================= IZBA szkolna w Bukowcu =======================
S = {}
rnd = random.Random(204)
w = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>']
# sciana z desek i podloga w perspektywie
for x in range(0, 390, 15):
    w.append(f'<path d="M{x} 0V262" fill="none" stroke-width="0.8"/>')
w.append('<path d="M-10 262H400" fill="none" stroke-width="3"/>')
w.append('<path d="M-10 262H400V440H-10Z" fill="url(#hatch)" stroke="none" opacity="0.35"/>')
for x in range(-200, 600, 40):
    w.append(f'<path d="M{195 + (x - 195) * 0.35:.0f} 262L{x} 440" fill="none" stroke-width="0.9"/>')
# drzwi po lewej (uchylone na sien)
w.append('<path d="M10 262V112H70V262Z" fill="#FFFFFF" stroke-width="2.6"/><path d="M10 112H70V150C50 146 30 152 10 148Z" fill="url(#hatch)" stroke="none"/><path d="M70 262V112L92 104V270Z" fill="#FFFFFF" stroke-width="2.4"/>')
w.append('<path d="M84 190h4" fill="none" stroke-width="2"/>')
# dwa okna z krzyzem ramy, za nimi niebo i galaz
for x in (122, 214):
    w.append(f'<path d="M{x} 70H{x + 62}V160H{x}Z" fill="#FFFFFF" stroke-width="3"/><path d="M{x + 31} 70V160M{x} 112H{x + 62}" fill="none" stroke-width="2.4"/>')
    w.append(f'<path d="M{x + 4} 96C{x + 14} 92 {x + 22} 98 {x + 28} 94M{x + 36} 140C{x + 44} 132 {x + 52} 136 {x + 58} 128" fill="none" stroke-width="1.2"/>')
    w.append(f'<path d="M{x - 6} 164H{x + 68}" fill="none" stroke-width="3"/>')
# tablica i krzyz nad nia
w.append('<path d="M150 182H260V238H150Z" fill="#000000" stroke-width="2.4"/><path d="M162 198h30M162 212h50M162 226h20" fill="none" stroke="#FFFFFF" stroke-width="1.4"/>')
w.append('<path d="M205 36V62M197 44H213" fill="none" stroke-width="2.4"/>')
# wielki kaflowy piec w prawym kacie
w.append('<path d="M300 268V60H384V268Z" fill="#FFFFFF" stroke-width="3"/>')
for y in range(60, 268, 18):
    w.append(f'<path d="M300 {y}H384" fill="none" stroke-width="1.1"/>')
    off = 0 if (y // 18) % 2 else 14
    for x in range(300 + off, 384, 28):
        w.append(f'<path d="M{x} {y}V{min(y + 18, 268)}" fill="none" stroke-width="1"/>')
w.append('<path d="M294 60H390V50H294Z" fill="#FFFFFF" stroke-width="2.4"/>')
w.append('<path d="M322 236H362V262H322Z" fill="#000000" stroke-width="2"/>')
# biurko nauczyciela z szuflada (zeszyt w skorze)
w.append('<path d="M110 300H250V312H110ZM118 312V360M242 312V360M200 312H242V332H200Z" fill="#FFFFFF" stroke-width="2.4"/><path d="M218 322h6" fill="none" stroke-width="2"/>')
S["tlo"] = (0, 0, 390, 440, w[0] + "\n" + group(w[1:]))
S["ogien"] = (324, 238, 36, 22, group([f'<path d="M330 260q4 -14 8 -4q3 -12 8 0q4 -10 8 2" fill="none" stroke="{RED}" stroke-width="2.4"/>']))
S["ogien"] = (324, 238, 36, 24, S["ogien"][4])


def bench_row(y, xs, k):
    """Lawka z dziecmi widzianymi od tylu (glowy i ramiona)."""
    g = [f'<path d="M{xs[0] - 30} {y}H{xs[-1] + 30}V{y + 8}H{xs[0] - 30}Z" fill="url(#hatchDense)" stroke-width="2"/>',
         f'<path d="M{xs[0] - 24} {y + 8}V{y + 30}M{xs[-1] + 24} {y + 8}V{y + 30}" fill="none" stroke-width="2.4"/>']
    for x in xs:
        g.append(f'<path d="M{x - 11 * k:.0f} {y + 2}C{x - 12 * k:.0f} {y - 14 * k:.0f} {x - 6 * k:.0f} {y - 20 * k:.0f} {x} {y - 20 * k:.0f}C{x + 6 * k:.0f} {y - 20 * k:.0f} {x + 12 * k:.0f} {y - 14 * k:.0f} {x + 11 * k:.0f} {y + 2}Z" fill="#000000"/>')
        g.append(f'<circle cx="{x}" cy="{y - 26 * k:.0f}" r="{6.5 * k:.1f}" fill="#000000"/>')
    return g


S["lawki"] = (0, 300, 390, 140, group(bench_row(352, [40, 76, 288, 330], 1.0) + bench_row(404, [22, 70, 300, 352], 1.3)))
# Bartek, wyzszy od wszystkich, unosi tabliczke Antka nad glowe; Antek z zacisnietymi piesciami
bart = postacie.child(178, 352, 1.65, arm="l6 -22")
bart += f'<g stroke-width="2"><path d="M182 286h14v12h-14z" fill="#000000"/><path d="M184 288h10v8h-10z" fill="#FFFFFF" stroke-width="1"/></g>'
S["bartek"] = (150, 270, 100, 86, group([bart, postacie.child(222, 352, 1.15)]))
# pan Ignacy w drzwiach: chudy, w okularach, z laska
ign = postacie.man(40, 262, 1.6, hat=False, arm="l10 22l2 30")
ign += '<g stroke-width="1.4"><circle cx="36" cy="151" r="3" fill="#FFFFFF"/><circle cx="45" cy="151" r="3" fill="#FFFFFF"/></g>'
S["ignacy"] = (14, 130, 60, 136, group([ign]))
# obrona: Jaromir, za nim Franek i Hanka ze szczapa
obr = [postacie.child(128, 356, 1.3), postacie.child(104, 356, 1.5),
       postacie.girl(82, 358, 1.25), '<path d="M92 324L104 300" fill="none" stroke-width="4"/>']
S["obrona"] = (60, 290, 90, 70, group(obr))
# potrzaskana tabliczka na podlodze
S["tabliczka"] = (190, 362, 60, 30, group(['<path d="M196 380l14 -10l8 8l-12 8z" fill="#000000" stroke-width="1.6"/>',
                                            '<path d="M222 386l12 -6l6 6l-10 6z" fill="#000000" stroke-width="1.6"/>',
                                            '<path d="M214 372l6 4" fill="none" stroke-width="1.4"/>']))
p = ['<path d="M-10 420H400V844H-10Z" fill="url(#hatch)" stroke="none" opacity="0.35"/>']
for x in range(-200, 600, 40):
    p.append(f'<path d="M{x} 440L{195 + (x - 195) * 2.4:.0f} 844" fill="none" stroke-width="0.9"/>')
S["przod"] = (0, 410, 390, 434, group(p))

IZBA = ["tlo", "ogien", "lawki", "bartek", "tabliczka", "obrona", "ignacy", "przod"]
S_REVEAL = {"bartek": "bartek", "ignacy": "ignacy", "obrona": "obrona", "tabliczka": "tabliczka"}
S_ANIM = {"ogien": {"type": "flame", "amplitude": 0.12, "duration": 900, "anchorX": 0.5, "anchorY": 1},
          "bartek": {"type": "bob", "amplitude": 0.8, "duration": 700}}
S_EXTRA = {"lawki": {"depth": 0.5}, "przod": {"depth": 1.0}}
S_COMMENTS = {"tlo": "izba szkolna: ściana z desek, dwa okna, tablica, kaflowy piec, biurko nauczyciela", "ogien": "ogień w piecu (czerwony)",
              "lawki": "ławki z dziećmi (od tyłu)", "bartek": "Bartek unosi tabliczkę Antka (# pokaz: bartek)",
              "tabliczka": "potrzaskana tabliczka na podłodze (# pokaz: tabliczka)", "obrona": "Jaromir, Franek i Hanka ze szczapą (# pokaz: obrona)",
              "ignacy": "pan Ignacy w drzwiach (# pokaz: ignacy)", "przod": "pierwszy plan: podłoga"}

BACKGROUNDS = {"jesien": ("bg_jesien", J, JESIEN, J_ANIM, J_REVEAL, J_EXTRA, J_COMMENTS, "Zapadlina jesienią"),
               "droga_bor": ("bg_drogabor", D, DROGA, D_ANIM, D_REVEAL, D_EXTRA, D_COMMENTS, "droga pod borem"),
               "szkola_izba": ("bg_szkola", S, IZBA, S_ANIM, S_REVEAL, S_EXTRA, S_COMMENTS, "izba szkolna")}

if __name__ == "__main__":
    if sys.argv[1] == "--master":
        prefix, L, order, anim, reveal, extra, comments, scene = BACKGROUNDS[sys.argv[2]]
        hide = set() if len(sys.argv) > 3 and sys.argv[3] == "wszystko" else set(reveal) | {n for n, e in extra.items() if e.get("appearAfter")}
        print(master(L, [n for n in order if n not in hide]))
    else:
        import bgjson
        for key, (prefix, L, order, anim, reveal, extra, comments, scene) in BACKGROUNDS.items():
            write_layers(sys.argv[1], prefix, scene, L, order, comments)
            bgjson.upsert(key, bgjson.entry(prefix, order, L, anim, reveal, extra))
