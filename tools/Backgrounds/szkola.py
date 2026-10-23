# Generator tel rozdzialu drugiego (Szkola):
#   jesien    — Zapadlina jesienia: stodola z jaskolkami rzedem na kalenicy (po chwili odlatuja), stary bez z baza gubi zolte liscie,
#               na polach dymia ogniska z letow, szron na trawie; Jaromir w za duzej czapce z lniana torba (# pokaz: jaromir)
#   szkola_izba — izba szkoly w Bukowcu: piec kaflowy, tablica, lawki; Bartek z tabliczka (# pokaz: bartek), pan Ignacy w drzwiach
#               (# pokaz: ignacy), obrona Antka (# pokaz: obrona), potrzaskana tabliczka (# pokaz: tabliczka)
#   szkola_podania — ta sama izba w piatek: za oknami bor, pan Ignacy na brzegu biurka (znika przy # pokaz: okno), cien postaci
#               w kapeluszu na scianie (# pokaz: cien), nauczyciel przy oknie (# pokaz: okno)
#   sosna_spirala — zmierzch, sosna z kora zdarta w spirale; kawalek kory znika, Jaromir kuca po nia (# pokaz: kora);
#               spirala rosnie wyzej (# pokaz: spirala)
#   wstazka_wiatr — wichura na skraju boru: swierki sie gna, czerwona wstazka trzepocze na mlodej sosnie, czworka dzieci
#   bor_starzec — w glebi boru, pnie i mgla; wstazka daleko; starzec w kozuchu z wstazka w palcach (# pokaz: starzec,
#               znika przy # pokaz: zniknal), wstazka na wyciagniecie reki (# pokaz: zniknal)
#   jesien_plot — ranek: plot przed chata, wstazka zawiazana na kokarde (# pokaz: kokarda)
#   szkola_ksiega — izba po lekcjach: pan Ignacy za biurkiem, Jaromir przy nim; kora (# pokaz: kora), ksiega (# pokaz: ksiega),
#               ksiega przesunieta do Jaromira (# pokaz: pozyczka), Jaromir na progu (# pokaz: prog)
#   pierwszy_snieg — podworze za oknem: listopadowa noc, potem snieg (# pokaz: snieg)
#   droga_bor — przed switem sciezka pnie sie pod gore na Bukowy Grzbiet: z lewej pola, z prawej sciana swierkow, mgla;
#               czworka dzieci w drodze do szkoly; miedzy swierkami jasne oczy z czerwonymi zrenicami (# pokaz: oczy)
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/szkola.py src/LittleVillage/Resources/Images         -> pliki bg_jesien_*.svg, bg_drogabor_*.svg, bg_szkola_*.svg
#   python3 tools/Backgrounds/szkola.py --master jesien|droga_bor|szkola_izba|szkola_podania|sosna_spirala|wstazka_wiatr|bor_starzec|jesien_plot|szkola_ksiega|pierwszy_snieg [wszystko] > podglad.svg
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


# ----- piatkowe opowiesci (to samo wnetrze): pan Ignacy na brzegu biurka, cien Borowego na scianie, na koniec nauczyciel przy oknie
view = []
for x in (122, 214):
    view.append(f'<path d="M{x} 138C{x + 20} 132 {x + 40} 130 {x + 62} 126V160H{x}Z" fill="#FFFFFF" stroke-width="1.6"/>')
    for i in range(8):
        sx = x + 4 + i * 8
        view.append(spruce(sx, 134 - i * 1.4, 14 + (i % 3) * 3, 7))
    view.append(f'<path d="M{x} 146C{x + 20} 144 {x + 40} 142 {x + 62} 140M{x} 154C{x + 24} 152 {x + 40} 150 {x + 62} 148" fill="none" stroke-width="0.9"/>')
    view.append(f'<path d="M{x} 70H{x + 62}V160H{x}Z" fill="none" stroke-width="3"/><path d="M{x + 31} 70V160M{x} 112H{x + 62}" fill="none" stroke-width="2.4"/>')
S["widok"] = (118, 66, 162, 98, group(view))
# pan Ignacy przysiadl na brzegu biurka, okulary w dloni
sit = postacie.man(150, 350, 1.3, hat=False, arm="l12 10l6 -8")
sit += '<g stroke-width="1.2"><circle cx="171" cy="273" r="2.6" fill="#FFFFFF"/><circle cx="177" cy="273" r="2.6" fill="#FFFFFF"/></g>'
S["ignacy_biurko"] = (126, 240, 62, 112, group([sit]))
# cien wysokiej postaci w kapeluszu, rzucany przez ogien z pieca na sciane (pojawia sie i gasnie)
S["cien"] = (150, 14, 150, 250, group([
    '<path d="M214 262L220 190C206 170 200 120 204 84C210 70 222 64 232 66L236 52C210 50 184 42 176 30C200 24 240 20 280 26C278 36 262 46 250 52'
    'L252 66C264 68 272 80 274 96C278 130 270 176 258 192L266 262H246L240 200H234L230 262Z" fill="url(#hatchNight)" stroke="none" opacity="0.8"/>',
    '<path d="M206 100C196 140 190 180 184 228M270 104C278 140 286 176 290 220" fill="none" stroke-width="5" opacity="0.6"/>']))
# nauczyciel przy oknie, plecami do izby
win = postacie.man(245, 262, 1.5, hat=False)
S["ignacy_okno"] = (220, 140, 50, 124, group([win]))

PODANIA = ["tlo", "widok", "cien", "ogien", "ignacy_biurko", "ignacy_okno", "lawki", "przod"]
P_REVEAL = {"cien": "cien", "ignacy_okno": "okno"}
P_ANIM = {"ogien": S_ANIM["ogien"], "cien": {"type": "sway", "amplitude": 1.5, "duration": 2600, "anchorX": 0.5, "anchorY": 1}}
P_EXTRA = {"cien": {"fadeDuration": 3000, "hideAfter": 5000}, "ignacy_biurko": {"hideOn": "okno", "fadeDuration": 1200},
           "ignacy_okno": {"fadeDuration": 1200}, "lawki": {"depth": 0.5}, "przod": {"depth": 1.0}}
P_COMMENTS = dict(S_COMMENTS)
P_COMMENTS.update({"widok": "za oknami Bukowy Grzbiet i ściana boru", "ignacy_biurko": "pan Ignacy na brzegu biurka (znika przy # pokaz: okno)",
                   "cien": "cień wysokiej postaci w kapeluszu na ścianie (# pokaz: cien, gaśnie po chwili)",
                   "ignacy_okno": "pan Ignacy przy oknie, plecami do izby (# pokaz: okno)"})


# ======================= SOSNA ze spirala zdartej kory (zmierzch, skraj boru) =======================
K = {}
rnd = random.Random(205)
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M0 0H390V120C300 134 200 110 110 126C60 134 30 124 0 130Z" fill="url(#hatchDense)" stroke="none"/>',
     '<path d="M0 130C30 124 60 134 110 126C200 110 300 134 390 120V200H0Z" fill="url(#hatch)" stroke="none"/>']
t.append('<path d="M-10 300C80 290 200 296 400 288V440H-10Z" fill="#EDEBE6" stroke-width="3"/>')
# sciana boru w glebi
for i in range(22):
    x = -6 + i * 19
    t.append(spruce(x, 296 - (i % 2) * 4, 110 + (i % 3) * 22, 40))
# sciezka wzdluz skraju lasu
t.append('<path d="M-10 404C80 396 160 392 230 394C300 396 350 404 400 410" fill="none" stroke-width="2.4"/>')
t.append('<path d="M-10 428C80 420 160 416 230 418C300 420 350 428 400 434" fill="none" stroke-width="2.4"/>')
# gruby pien sosny (korona poza kadrem), lekko rozszerzony u nasady
TX0, TX1 = 248, 300
t.append(f'<path d="M{TX0} 0V380C{TX0} 396 {TX0 - 10} 404 {TX0 - 18} 410H{TX1 + 18}C{TX1 + 10} 404 {TX1} 396 {TX1} 380V0Z" fill="#EDEBE6" stroke="none"/>')
t.append(f'<path d="M{TX0} 0V380C{TX0} 396 {TX0 - 10} 404 {TX0 - 18} 410H{TX1 + 18}C{TX1 + 10} 404 {TX1} 396 {TX1} 380V0Z" fill="url(#hatchDense)" stroke-width="3"/>')
for y in range(12, 380, 22):
    t.append(f'<path d="M{TX0 + 4} {y}q12 -4 20 2M{TX0 + 28} {y + 10}q10 -3 18 2" fill="none" stroke="#FFFFFF" stroke-width="1.2"/>')


def spiral_band(y_bottom, y_top, pitch=64, width=13):
    """Pas zdartej kory owiniety wokol pnia: widoczne ukosne odcinki od lewej krawedzi do prawej, co skok `pitch`."""
    out = []
    y = y_bottom
    while y - pitch * 0.5 > y_top:
        a, b = y, y - pitch * 0.5
        out.append(f'<path d="M{TX0} {a}C{TX0 + 18} {a - 4} {TX1 - 18} {b + 6} {TX1} {b}V{b - width}C{TX1 - 18} {b - width + 6} {TX0 + 18} {a - width - 4} {TX0} {a - width}Z" fill="#FFFFFF" stroke-width="1.8"/>')
        out.append(f'<path d="M{TX0 + 8} {a - width * 0.5}C{TX0 + 22} {a - width * 0.5 - 4} {TX1 - 22} {b - width * 0.5 + 5} {TX1 - 6} {b - width * 0.5}" fill="none" stroke-width="0.7"/>')
        y -= pitch
    return out


t += spiral_band(392, 150)
K["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
# spirala rosnie wyzej (wariant: odchodza, Jaromir oglada sie przez ramie)
K["spirala"] = (TX0 - 2, 0, TX1 - TX0 + 4, 160, group(spiral_band(136, -40)))
# krople zywicy lsnia
drops = []
for (x, y) in [(258, 346), (290, 286), (262, 224), (284, 176)]:
    drops.append(f'<path d="M{x} {y}c-2 4 -3 7 0 9c3 -2 2 -5 0 -9z" fill="#FFFFFF" stroke-width="1.2"/><path d="M{x - 1} {y + 5}h1" fill="none" stroke-width="0.8"/>')
K["zywica"] = (250, 170, 46, 190, group(drops))
# zwiniety w trabke kawalek kory u stop sosny
K["kora"] = (224, 398, 26, 14, group(['<path d="M228 408C226 402 232 400 238 402L246 404C250 406 248 412 242 410L232 410C229 410 228 409 228 408Z" fill="url(#hatchDense)" stroke-width="1.6"/>',
                                       '<ellipse cx="231" cy="406" rx="2.5" ry="3.4" fill="#FFFFFF" stroke-width="1.2"/>']))
# dzieci na sciezce: Hanka wskazuje sosne, chlopcy przy niej
K["dzieci"] = (90, 326, 120, 92, group([postacie.child(112, 414, 1.25), postacie.child(140, 412, 1.4),
                                         postacie.girl(186, 414, 1.25), '<path d="M190 382L210 370" fill="none" stroke-width="3"/>']))
# Jaromir przykucniety po kore
K["jaromir"] = (196, 372, 44, 40, group([postacie.crouching_child(214, 410, 1.15)]))
p = ['<path d="M-10 432H400V844H-10Z" fill="#EDEBE6" stroke="none"/>']
for i in range(22):
    p.append(grass(rnd.uniform(0, 390), rnd.uniform(440, 840), rnd.uniform(0.9, 1.3)))
K["przod"] = (0, 422, 390, 422, group(p))

SOSNA = ["tlo", "spirala", "zywica", "kora", "dzieci", "jaromir", "przod"]
K_REVEAL = {"spirala": "spirala", "jaromir": "kora"}
K_ANIM = {"zywica": {"type": "flicker", "amplitude": 0.4, "duration": 2200}, "dzieci": {"type": "bob", "amplitude": 0.4, "duration": 1600}}
K_EXTRA = {"spirala": {"fadeDuration": 7000}, "kora": {"hideOn": "kora", "fadeDuration": 600}, "przod": {"depth": 1.0}}
K_COMMENTS = {"tlo": "zmierzch na skraju boru: gruba sosna z korą zdartą w spiralę", "spirala": "spirala sięga wyżej (# pokaz: spirala, powoli)",
              "zywica": "krople żywicy lśnią", "kora": "zwinięty kawałek kory u stóp sosny (znika przy # pokaz: kora)",
              "dzieci": "Hanka wskazuje sosnę, chłopcy przy niej", "jaromir": "Jaromir przykucnięty po korę (# pokaz: kora)",
              "przod": "pierwszy plan: trawa"}


# ======================= WSTAZKA: wichura na skraju boru =======================
W = {}
rnd = random.Random(206)
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M0 0H390V90C300 104 200 80 110 96C60 104 30 94 0 100Z" fill="url(#hatchDense)" stroke="none"/>',
     '<path d="M0 100C30 94 60 104 110 96C200 80 300 104 390 90V170H0Z" fill="url(#hatch)" stroke="none" opacity="0.7"/>']
t.append('<path d="M-10 330C80 322 200 326 400 318V440H-10Z" fill="#EDEBE6" stroke-width="3"/>')
t.append('<path d="M-10 388C90 380 200 378 400 386M-10 414C90 406 200 404 400 412" fill="none" stroke-width="2.4"/>')
W["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
# swierki skraju boru w trzech grupach — kazda gnie sie na wietrze z innym opoznieniem
for g, xs in enumerate([(130, 156, 182), (208, 234, 262), (330, 356, 384)]):
    W[f"swierki_{g}"] = (xs[0] - 34, 150, xs[-1] - xs[0] + 68, 186, group([spruce(x, 330 - (i % 2) * 6, 150 + (i % 3) * 24, 56) for i, x in enumerate(xs)]))
# mloda sosenka w glebi, na galezi czerwona wstazka
W["sosenka"] = (276, 236, 50, 96, group(['<path d="M300 330V244" fill="none" stroke="#FFFFFF" stroke-width="3"/>',
                                         '<path d="M300 270L318 258M300 290L282 278M300 304L320 296M300 254L286 246" fill="none" stroke="#FFFFFF" stroke-width="2"/>',
                                         '<path d="M318 258l6 -4M318 258l7 2M282 278l-6 -3M320 296l6 1" fill="none" stroke="#FFFFFF" stroke-width="1.4"/>']))
W["wstazka"] = (310, 248, 34, 30, group([f'<path d="M318 258C324 254 330 262 338 256C334 266 326 262 320 270" fill="{RED}" stroke="{RED}" stroke-width="1.6"/>']))
# smugi wiatru i liscie niesione z zachodu
W["wiatr"] = (0, 180, 390, 140, group(['<path d="M10 200C60 196 90 206 140 200M40 250C100 244 140 256 200 248M0 300C50 296 80 304 120 300" fill="none" stroke-width="1.4" opacity="0.6"/>']))
for i, (x, y) in enumerate([(20, 260), (0, 310), (40, 220)]):
    W[f"lisc_{i}"] = (x - 9, y - 9, 18, 18, group([leaf(x, y, 1.0, 30 * i)]))
# czworka dzieci na sciezce: Hanka z rozplecionym warkoczem
W["dzieci"] = (40, 326, 150, 82, group([postacie.child(60, 400, 1.3), postacie.child(92, 398, 1.45),
                                         postacie.girl(132, 400, 1.3), postacie.child(162, 402, 1.3)]))
p = ['<path d="M-10 432H400V844H-10Z" fill="#EDEBE6" stroke="none"/>']
for i in range(22):
    p.append(grass(rnd.uniform(0, 390), rnd.uniform(440, 840), rnd.uniform(0.9, 1.3)))
W["przod"] = (0, 422, 390, 422, group(p))

WSTAZKA = ["tlo", "swierki_0", "swierki_1", "swierki_2", "sosenka", "wstazka", "wiatr", "lisc_0", "lisc_1", "lisc_2", "dzieci", "przod"]
W_ANIM = {f"swierki_{g}": {"type": "sway", "amplitude": 2.2, "duration": 2600, "anchorX": 0.5, "anchorY": 1, "phase": round(g * 0.15, 2)} for g in range(3)}
W_ANIM.update({"sosenka": {"type": "sway", "amplitude": 3, "duration": 1800, "anchorX": 0.5, "anchorY": 1},
               "wstazka": {"type": "sway", "amplitude": 14, "duration": 500, "anchorX": 0.1, "anchorY": 0.4},
               "wiatr": {"type": "drift", "amplitude": 24, "duration": 3000}})
W_ANIM.update({f"lisc_{i}": {"type": "float", "amplitude": 8, "dx": 380, "dy": -40 + 30 * i, "duration": 4000 + 700 * i, "phase": round(i * 0.3, 2)} for i in range(3)})
W_EXTRA = {"wstazka": {"noInvert": True}, "przod": {"depth": 1.0}, "dzieci": {"depth": 0.7}}
W_COMMENTS = {"tlo": "pochmurne popołudnie, ścieżka wzdłuż skraju boru", "sosenka": "młoda sosna (gnie się na wietrze)",
              "wstazka": "czerwona wstążka Hanki trzepocze na gałęzi", "wiatr": "smugi wiatru", "dzieci": "czwórka dzieci na ścieżce",
              "przod": "pierwszy plan: trawa"}
W_COMMENTS.update({f"swierki_{g}": f"świerki, grupa {g + 1} (gną się na wietrze)" for g in range(3)})
W_COMMENTS.update({f"lisc_{i}": "liść niesiony wiatrem" for i in range(3)})

# ======================= BOR: w glebi lasu, starzec w kozuchu (Leszy w ludzkiej postaci) =======================
B = {}
rnd = random.Random(207)
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<rect width="390" height="440" fill="url(#hatch)" stroke="none" opacity="0.5"/>']
# pnie — wszystkie takie same, w trzech planach
for row, (k, base, n) in enumerate([(0.5, 300, 12), (0.75, 340, 8), (1.1, 400, 5)]):
    for i in range(n):
        x = (i + 0.5) * 390 / n + (row * 11) % 20 - 10
        w = 10 * k
        t.append(f'<path d="M{x - w:.0f} 0V{base}H{x + w:.0f}V0Z" fill="{"url(#hatchDense)" if row < 2 else "#000000"}" stroke-width="{1.4 + row}"/>')
        t.append(f'<path d="M{x - w - 3:.0f} {base}h{2 * w + 6:.0f}" fill="none" stroke-width="2"/>')
B["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
B["mgla"] = (-30, 200, 450, 190, group([f'<path d="{ribbon(-20, 240, 230, 22, 5)}" fill="#EDEBE6" stroke-width="1.6" opacity="0.85"/>',
                                        f'<path d="{ribbon(120, 410, 300, 26, 6)}" fill="#EDEBE6" stroke-width="1.6" opacity="0.85"/>',
                                        f'<path d="{ribbon(-30, 200, 360, 18, 4)}" fill="#EDEBE6" stroke-width="1.6" opacity="0.8"/>']))
# wstazka daleko przed nim (znika, gdy pojawia sie starzec) i tuz przed nim (po mrugnieciu)
B["wstazka_daleko"] = (176, 206, 22, 18, group([f'<path d="M180 212C184 209 188 214 194 210C191 217 186 214 182 220" fill="{RED}" stroke="{RED}" stroke-width="1.2"/>',
                                                 '<path d="M168 214h14" fill="none" stroke-width="1.6"/>']))
B["wstazka_blisko"] = (60, 250, 70, 60, group(['<path d="M40 262L96 270" fill="none" stroke-width="3.4"/>',
                                               f'<path d="M92 270C100 262 112 274 124 264C118 282 106 276 96 290" fill="{RED}" stroke="{RED}" stroke-width="2"/>']))
RIG_B_STARZEC = art.rig("leszy_czlowiek", art.parse_transform("translate(196 182) scale(0.42)"), [
    ("postac", ["cien", "nogi", "kozuch"], {"type": "sway", "amplitude": 0.6, "duration": 4200}, "kozuch"),
    ("reka", ["reka_z_laska"], {"type": "sway", "amplitude": 1.5, "duration": 3400}, "reka_z_laska"),
    ("glowa", ["glowa", "kapelusz"], {"type": "sway", "amplitude": 2, "duration": 5200}, "glowa"),
    ("oczy", ["oczy"], {"type": "blink", "duration": 5200}, None)], "starzec")
art.install_rig(B, RIG_B_STARZEC)
# czerwona wstazka trzepocze w jego dlugich palcach
B["starzec_wstazka"] = (268, 250, 30, 26, group([f'<path d="M272 258C278 254 284 262 292 256C288 266 280 262 274 270" fill="{RED}" stroke="{RED}" stroke-width="1.4"/>']))
p = ['<path d="M-10 420H400V844H-10Z" fill="url(#hatch)" stroke="none" opacity="0.5"/>']
for i in range(18):
    p.append(grass(rnd.uniform(0, 390), rnd.uniform(436, 840), rnd.uniform(0.9, 1.3)))
B["przod"] = (0, 410, 390, 434, group(p))

STARZEC = art.rig_names(RIG_B_STARZEC) + ["starzec_wstazka"]
BOR = ["tlo", "wstazka_daleko"] + STARZEC + ["mgla", "wstazka_blisko", "przod"]
B_REVEAL = {n: "starzec" for n in STARZEC}
B_REVEAL["wstazka_blisko"] = "zniknal"
B_ANIM = {"mgla": {"type": "drift", "amplitude": 12, "duration": 15000},
          "wstazka_daleko": {"type": "sway", "amplitude": 10, "duration": 700, "anchorX": 0.1, "anchorY": 0.3},
          "wstazka_blisko": {"type": "sway", "amplitude": 8, "duration": 700, "anchorX": 0.6, "anchorY": 0.3},
          "starzec_wstazka": {"type": "sway", "amplitude": 12, "duration": 600, "anchorX": 0.1, "anchorY": 0.3}}
B_ANIM.update(art.rig_anims(RIG_B_STARZEC))
B_EXTRA = {n: {"hideOn": "zniknal", "fadeDuration": 1600} for n in STARZEC}
B_EXTRA.update({"wstazka_daleko": {"hideOn": "starzec", "noInvert": True}, "wstazka_blisko": {"noInvert": True},
                "starzec_wstazka": {"hideOn": "zniknal", "fadeDuration": 1600, "noInvert": True}, "mgla": {"depth": 0.7}, "przod": {"depth": 1.0}})
B_COMMENTS = {"tlo": "w głębi boru: pnie, wszystkie takie same", "mgla": "szara mgła między pniami (dryfuje)",
              "wstazka_daleko": "wstążka wciąż tak samo daleko (znika przy # pokaz: starzec)",
              "wstazka_blisko": "wstążka na gałęzi na wyciągnięcie ręki (# pokaz: zniknal)",
              "starzec_wstazka": "czerwona wstążka w palcach starca", "przod": "pierwszy plan: ściółka"}
B_COMMENTS.update({n: f"starzec w kożuchu i kapeluszu z mchu — {n[8:]} (rysunek autora; # pokaz: starzec, znika przy # pokaz: zniknal)" for n in art.rig_names(RIG_B_STARZEC)})

# ----- nastepny ranek: wstazka zawiazana na plocie przed chata (tlo jesieni z plotem na pierwszym planie)
fence = ['<path d="M-10 372H400M-10 396H400" fill="none" stroke-width="3"/>']
for x in range(6, 390, 26):
    fence.append(f'<path d="M{x - 5} 420V356L{x} 348L{x + 5} 356V420Z" fill="#FFFFFF" stroke-width="2"/>')
J["plot"] = (0, 344, 390, 80, group(fence))
J["kokarda"] = (146, 360, 40, 44, group([f'<path d="M164 372C156 362 146 366 150 374C146 382 156 384 164 374C172 384 182 382 178 374C182 366 172 362 164 372Z" fill="{RED}" stroke="{RED}" stroke-width="1.4"/>',
                                          f'<path d="M163 374L156 398M165 374L174 396" fill="none" stroke="{RED}" stroke-width="2.4"/>']))
PLOT = ["tlo", "dym", "zar", "korona"] + [f"lisc_{i}" for i in range(len(LEAVES))] + ["przod", "szron", "plot", "kokarda"]
PL_ANIM = {k: v for k, v in J_ANIM.items() if k in PLOT}
PL_ANIM["kokarda"] = {"type": "sway", "amplitude": 3, "duration": 2200, "anchorX": 0.5, "anchorY": 0.2}
PL_EXTRA = {"kokarda": {"noInvert": True, "fadeDuration": 2500}, "przod": {"depth": 1.0}, "plot": {"depth": 0.8}, "szron": {"depth": 1.0}}
PL_COMMENTS = dict(J_COMMENTS)
PL_COMMENTS.update({"plot": "płot przed chatą", "kokarda": "wstążka Hanki zawiązana na kokardę (# pokaz: kokarda)"})


# ----- po lekcjach: puste lawki, pan Ignacy za biurkiem, Jaromir przy biurku; ksiega, kora, wyjscie na prog
def empty_bench(y):
    return [f'<path d="M10 {y}H120V{y + 8}H10ZM270 {y}H380V{y + 8}H270Z" fill="url(#hatchDense)" stroke-width="2"/>',
            f'<path d="M16 {y + 8}V{y + 30}M114 {y + 8}V{y + 30}M276 {y + 8}V{y + 30}M374 {y + 8}V{y + 30}" fill="none" stroke-width="2.4"/>']


S["lawki_puste"] = (0, 340, 390, 100, group(empty_bench(352) + empty_bench(404)))
S["ignacy_za_biurkiem"] = (150, 236, 70, 80, group([postacie.man(186, 330, 1.25, hat=False),
                                                     '<g stroke-width="1.2"><circle cx="182" cy="245" r="2.4" fill="#FFFFFF"/><circle cx="190" cy="245" r="2.4" fill="#FFFFFF"/></g>']))
S["biurko"] = (106, 296, 148, 68, group(['<path d="M110 300H250V312H110ZM118 312V360M242 312V360M200 312H242V332H200Z" fill="#FFFFFF" stroke-width="2.4"/><path d="M218 322h6" fill="none" stroke-width="2"/>']))
S["jaromir_biurko"] = (92, 300, 40, 72, group([postacie.child(112, 368, 1.5)]))
S["kora_biurko"] = (150, 290, 26, 12, group(['<path d="M154 298C152 294 158 292 162 294L170 296C173 298 171 301 167 300L157 300Z" fill="url(#hatchDense)" stroke-width="1.4"/>']))
book = lambda x, y: (f'<path d="M{x} {y}L{x + 30} {y - 4}L{x + 34} {y + 2}L{x + 4} {y + 6}Z" fill="#000000" stroke-width="1.6"/>'
                     f'<path d="M{x + 4} {y + 6}L{x + 34} {y + 2}V{y + 5}L{x + 4} {y + 9}Z" fill="#FFFFFF" stroke-width="1.2"/>')
S["ksiega_biurko"] = (186, 290, 42, 16, group([book(190, 298)]))
S["ksiega_jaromir"] = (118, 290, 42, 16, group([book(122, 298)]))
S["jaromir_prog"] = (24, 196, 40, 70, group([postacie.child(44, 262, 1.5)]))
KSIEGA = ["tlo", "widok", "ogien", "ignacy_za_biurkiem", "biurko", "kora_biurko", "ksiega_biurko", "ksiega_jaromir", "lawki_puste",
          "jaromir_biurko", "jaromir_prog", "przod"]
KS_REVEAL = {"kora_biurko": "kora", "ksiega_biurko": "ksiega", "ksiega_jaromir": "pozyczka", "jaromir_prog": "prog"}
KS_ANIM = {"ogien": S_ANIM["ogien"]}
KS_EXTRA = {"ksiega_biurko": {"hideOn": "pozyczka", "fadeDuration": 700}, "ksiega_jaromir": {"fadeDuration": 700},
            "jaromir_biurko": {"hideOn": "prog", "fadeDuration": 800}, "jaromir_prog": {"fadeDuration": 800},
            "lawki_puste": {"depth": 0.5}, "przod": {"depth": 1.0}}
KS_COMMENTS = dict(S_COMMENTS)
KS_COMMENTS.update({"widok": "za oknami Bukowy Grzbiet i ściana boru", "lawki_puste": "puste ławki po lekcjach",
                    "ignacy_za_biurkiem": "pan Ignacy za biurkiem", "biurko": "front biurka (przed nauczycielem)",
                    "jaromir_biurko": "Jaromir przy biurku (znika przy # pokaz: prog)", "kora_biurko": "kora ze znakami na biurku (# pokaz: kora)",
                    "ksiega_biurko": "księga w skórzanej oprawie (# pokaz: ksiega, znika przy # pokaz: pozyczka)",
                    "ksiega_jaromir": "księga przesunięta do Jaromira (# pokaz: pozyczka)", "jaromir_prog": "Jaromir na progu (# pokaz: prog)"})

# ======================= PIERWSZY SNIEG: podworze za oknem =======================
N = {}
rnd = random.Random(208)
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M0 0H390V150H0Z" fill="url(#hatchDense)" stroke="none"/>']
t.append('<path d="M-10 200C80 190 200 196 400 188V440H-10Z" fill="url(#hatchNight)" stroke-width="3"/>')
for i in range(20):
    t.append(spruce(-4 + i * 21, 196 - (i % 2) * 4, 60 + (i % 3) * 16, 26))
# stodola, plot i jablon pod oknem
t.append('<path d="M250 300V230H384V300Z" fill="#FFFFFF" stroke-width="2.6"/><path d="M240 234L270 196H366L392 234Z" fill="url(#hatch)" stroke-width="2.6"/>')
t.append('<path d="M290 300V256H330V300Z" fill="#000000" stroke-width="2"/>')
t.append('<path d="M-10 318H236M-10 334H236" fill="none" stroke-width="2.4"/>')
for x in range(4, 236, 22):
    t.append(f'<path d="M{x - 4} 344V310L{x} 304L{x + 4} 310V344Z" fill="#FFFFFF" stroke-width="1.8"/>')
t.append('<path d="M84 380C86 340 80 310 70 290M84 340C96 320 112 304 120 290M76 312C62 300 50 296 40 292M70 290L60 270M70 290L80 268M120 290L130 272" fill="none" stroke-width="3"/>')
N["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
# snieg okrywa wszystko (pojawia sie powoli przy pierwszym sniegu)
sn = ['<path d="M-10 196C80 186 200 192 400 184V440H-10Z" fill="#FFFFFF" stroke-width="3"/>',
      '<path d="M238 236L270 198H366L394 236L370 228H262Z" fill="#FFFFFF" stroke-width="2"/>',
      '<path d="M-10 316H236" fill="none" stroke="#FFFFFF" stroke-width="5"/>']
for i in range(20):
    x = -4 + i * 21
    sn.append(f'<path d="M{x - 9} {190 - (i % 2) * 4}l9 -6l9 6" fill="#FFFFFF" stroke-width="1.4"/>')
for x in range(4, 236, 22):
    sn.append(f'<path d="M{x - 5} 308L{x} 301L{x + 5} 308Z" fill="#FFFFFF" stroke-width="1"/>')
sn.append('<path d="M66 292c4 -3 8 -3 10 0M112 294c4 -3 8 -2 10 1M50 296c4 -2 8 -2 10 0" fill="none" stroke="#FFFFFF" stroke-width="3"/>')
sn.append('<path d="M250 300V230H384V300Z" fill="#FFFFFF" stroke-width="2.6"/><path d="M290 300V256H330V300Z" fill="#000000" stroke-width="2"/>')
sn.append('<path d="M84 380C86 340 80 310 70 290M84 340C96 320 112 304 120 290M76 312C62 300 50 296 40 292M70 290L60 270M70 290L80 268M120 290L130 272" fill="none" stroke-width="3"/>')
for x in range(4, 236, 22):
    sn.append(f'<path d="M{x - 4} 344V310L{x} 304L{x + 4} 310V344Z" fill="#FFFFFF" stroke-width="1.8"/>')
sn.append('<path d="M-10 318H236M-10 334H236" fill="none" stroke-width="2.4"/>')
N["snieg"] = (0, 180, 390, 260, group(sn))
# platki sniegu w nocy
for k in range(3):
    fl = []
    for i in range(14):
        x, y = rnd.uniform(0, 390), rnd.uniform(0 + k * 40, 200 + k * 40)
        fl.append(f'<circle cx="{x:.0f}" cy="{y:.0f}" r="{rnd.uniform(1.2, 2.2):.1f}" fill="#FFFFFF" stroke-width="0.8"/>')
    N[f"platki_{k}"] = (0, k * 40 - 4, 390, 208, group(fl))
# slady od boru pod okno usuniete (autor nie chce motywu sladow) — STEPS zostaje puste
STEPS = []
for i in range(0):
    f = i / 8
    x = 200 + (150 - 200) * f + (6 if i % 2 else -6) * (0.6 + f)
    y = 206 + (414 - 206) * f
    k = 0.5 + 1.1 * f
    STEPS.append((x, y, k))
for i, (x, y, k) in enumerate(STEPS):
    N[f"slad_{i}"] = (int(x - 8 * k), int(y - 14 * k), int(16 * k) + 2, int(26 * k) + 2, group([
        f'<path d="M{x:.1f} {y - 12 * k:.1f}C{x + 4 * k:.1f} {y - 12 * k:.1f} {x + 4 * k:.1f} {y + 10 * k:.1f} {x:.1f} {y + 10 * k:.1f}C{x - 4 * k:.1f} {y + 10 * k:.1f} {x - 4 * k:.1f} {y - 12 * k:.1f} {x:.1f} {y - 12 * k:.1f}Z" fill="url(#hatchDense)" stroke-width="{1.2 * k:.1f}"/>']))
# rama okna, przez ktore patrzy Jaromir (szron w rogach)
fr = ['<path d="M0 0H390V440H0ZM22 20V420H368V20Z" fill="#000000" fill-rule="evenodd" stroke="none"/>',
      '<path d="M195 20V420M22 210H368" fill="none" stroke-width="10"/>',
      '<path d="M22 410H368V440H22Z" fill="#FFFFFF" stroke-width="3"/>']
for (cx, cy, sx, sy) in [(26, 24, 1, 1), (364, 24, -1, 1), (26, 404, 1, -1), (364, 404, -1, -1), (199, 214, 1, 1), (191, 206, -1, -1)]:
    for j in range(5):
        fr.append(f'<path d="M{cx} {cy}l{sx * (14 + j * 7)} {sy * (4 + j * 6)}" fill="none" stroke="#FFFFFF" stroke-width="1.2"/>')
N["okno"] = (0, 0, 390, 440, group(fr))
p = ['<path d="M-10 432H400V844H-10Z" fill="#EDEBE6" stroke="none"/>']
N["przod"] = (0, 430, 390, 414, group(p))

SNIEG = ["tlo", "snieg"] + [f"slad_{i}" for i in range(len(STEPS))] + [f"platki_{k}" for k in range(3)] + ["okno", "przod"]
N_REVEAL = {"snieg": "snieg"}
N_REVEAL.update({f"platki_{k}": "snieg" for k in range(3)})
N_REVEAL.update({f"slad_{i}": "slady" for i in range(len(STEPS))})
N_ANIM = {f"platki_{k}": {"type": "rise", "amplitude": -120, "duration": 7000 + k * 1500, "phase": round(k * 0.33, 2)} for k in range(3)}
N_EXTRA = {"snieg": {"fadeDuration": 5000}}
N_EXTRA.update({f"platki_{k}": {"fadeDuration": 2000, "hideAfter": 14000} for k in range(3)})
N_EXTRA.update({f"slad_{i}": {"appearAfter": 300 + i * 450, "fadeDuration": 500} for i in range(len(STEPS))})
N_EXTRA.update({"okno": {"depth": 1.0}})
N_COMMENTS = {"tlo": "listopadowa noc: podwórze, stodoła, płot i jabłoń, bór w głębi", "snieg": "pierwszy śnieg okrywa podwórze (# pokaz: snieg, powoli)",
              "okno": "rama okna izby, szron w rogach", "przod": "pierwszy plan"}
N_COMMENTS.update({f"platki_{k}": "płatki śniegu (# pokaz: snieg, przestają padać)" for k in range(3)})
N_COMMENTS.update({f"slad_{i}": f"ślad {i + 1} z {len(STEPS)}: długi, wąski, od boru pod okno (# pokaz: slady, po kolei)" for i in range(len(STEPS))})


# ======================= ozywienie tel (wspolne efekty) =======================
import efekty
from efekty import add as _add

# droga pod borem: wrony nad swierkami, krople rosy kapia z galezi
_add(D, DROGA, D_ANIM, D_COMMENTS, "wrony", efekty.wrony(276, 112, n=3, seed=21), before="mgla")
_add(D, DROGA, D_ANIM, D_COMMENTS, "rosa", efekty.platki(300, 200, 80, 120, n=10, seed=22, fall=30, duration=2600, r=(0.9, 1.4)), before="mgla")
D_COMMENTS["rosa"] = "krople rosy kapią ze świerków"

# izba szkolna (trzy sceny): smugi swiatla z okien, pylki kurzu, obloczki za szybami
def _izba(order, anim, comments, extras, prefix):
    _add(S, order, anim, comments, f"{prefix}smuga_0", efekty.smuga([(122, 160), (184, 160), (236, 300), (150, 300)]), before=order[2])
    _add(S, order, anim, comments, f"{prefix}smuga_1", efekty.smuga([(214, 160), (276, 160), (326, 300), (240, 300)]), before=order[3])
    _add(S, order, anim, comments, f"{prefix}pylki_0", efekty.pylki(150, 170, 90, 120, n=9, seed=23), before=order[4])
    _add(S, order, anim, comments, f"{prefix}pylki_1", efekty.pylki(240, 170, 90, 120, n=9, seed=24, phase=0.4), before=order[5])


_add(S, IZBA, S_ANIM, S_COMMENTS, "chmurki_okna", efekty.chmurki(124, 72, 150, 36), before="ogien")
_izba(IZBA, S_ANIM, S_COMMENTS, S_EXTRA, "")
for n in ["smuga_0", "smuga_1", "pylki_0", "pylki_1"]:
    if n not in PODANIA:
        PODANIA.insert(PODANIA.index("ogien"), n)
        P_ANIM[n] = S_ANIM[n]
        P_COMMENTS[n] = S_COMMENTS[n]
    if n not in KSIEGA:
        KSIEGA.insert(KSIEGA.index("ogien"), n)
        KS_ANIM[n] = S_ANIM[n]
        KS_COMMENTS[n] = S_COMMENTS[n]
P_ANIM["lawki"] = {"type": "bob", "amplitude": 0.5, "duration": 2400}
P_ANIM["ignacy_biurko"] = {"type": "sway", "amplitude": 1.2, "duration": 3200, "anchorX": 0.5, "anchorY": 1}
KS_ANIM["ignacy_za_biurkiem"] = {"type": "bob", "amplitude": 0.6, "duration": 2800}
KS_ANIM["jaromir_biurko"] = {"type": "bob", "amplitude": 0.5, "duration": 2000}
KSIEGA.insert(KSIEGA.index("ogien"), "chmurki_okna")
KS_ANIM["chmurki_okna"] = S_ANIM["chmurki_okna"]
KS_COMMENTS["chmurki_okna"] = S_COMMENTS["chmurki_okna"]

# sosna ze spirala: wrony krazace nad borem, kropla zywicy splywa, mgla u stop lasu
_add(K, SOSNA, K_ANIM, K_COMMENTS, "wrony", efekty.wrony(60, 150, n=4, seed=25, amplitude=50), before="zywica")
_add(K, SOSNA, K_ANIM, K_COMMENTS, "kropla", ((258, 228, 10, 14, group(['<path d="M263 230c-2 4 -3 7 0 9c3 -2 2 -5 0 -9z" fill="#FFFFFF" stroke-width="1.2"/>'])),
                                              {"type": "rise", "amplitude": -60, "duration": 5200}, "kropla żywicy spływa po pniu"), before="kora")
_add(K, SOSNA, K_ANIM, K_COMMENTS, "mgla", ((-30, 270, 300, 40, group([f'<path d="{ribbon(-20, 250, 284, 14, 4)}" fill="#EDEBE6" stroke-width="1.4" opacity="0.85"/>'])),
                                            {"type": "drift", "amplitude": 12, "duration": 14000}, "mgła u stóp boru (dryfuje)"), before="kora")

# pierwszy snieg: gwiazdy w nocy (gasna przy sniegu), sowa na jabloni, iskierki na swiezym sniegu
_add(N, SNIEG, N_ANIM, N_COMMENTS, "gwiazdy", efekty.iskry(26, 22, 340, 120, n=16, seed=26, duration=3400), before="snieg",
     extra={"hideOn": "snieg", "fadeDuration": 3000}, extras=N_EXTRA)
N_COMMENTS["gwiazdy"] = "gwiazdy nad borem (migoczą, gasną przy # pokaz: snieg)"
_add(N, SNIEG, N_ANIM, N_COMMENTS, "iskry", efekty.iskry(30, 300, 330, 100, n=14, seed=27), before="okno",
     extra={"fadeDuration": 4000}, extras=N_EXTRA)
N_REVEAL["iskry"] = "snieg"
N_COMMENTS["iskry"] = "iskierki na świeżym śniegu (# pokaz: snieg)"
_sowa, _sowa_oczy = efekty.sowa(124, 290, 1.1)
_add(N, SNIEG, N_ANIM, N_COMMENTS, "sowa", _sowa, before="okno")
_add(N, SNIEG, N_ANIM, N_COMMENTS, "sowa_oczy", _sowa_oczy, before="okno")

BACKGROUNDS = {"jesien": ("bg_jesien", J, JESIEN, J_ANIM, J_REVEAL, J_EXTRA, J_COMMENTS, "Zapadlina jesienią"),
               "droga_bor": ("bg_drogabor", D, DROGA, D_ANIM, D_REVEAL, D_EXTRA, D_COMMENTS, "droga pod borem"),
               "szkola_izba": ("bg_szkola", S, IZBA, S_ANIM, S_REVEAL, S_EXTRA, S_COMMENTS, "izba szkolna"),
               "szkola_podania": ("bg_szkola", S, PODANIA, P_ANIM, P_REVEAL, P_EXTRA, P_COMMENTS, "izba szkolna"),
               "sosna_spirala": ("bg_sosna", K, SOSNA, K_ANIM, K_REVEAL, K_EXTRA, K_COMMENTS, "sosna ze spiralą"),
               "wstazka_wiatr": ("bg_wstazka", W, WSTAZKA, W_ANIM, {}, W_EXTRA, W_COMMENTS, "wichura na skraju boru"),
               "bor_starzec": ("bg_bor", B, BOR, B_ANIM, B_REVEAL, B_EXTRA, B_COMMENTS, "w głębi boru"),
               "jesien_plot": ("bg_jesien", J, PLOT, PL_ANIM, {"kokarda": "kokarda"}, PL_EXTRA, PL_COMMENTS, "Zapadlina jesienią"),
               "szkola_ksiega": ("bg_szkola", S, KSIEGA, KS_ANIM, KS_REVEAL, KS_EXTRA, KS_COMMENTS, "izba szkolna"),
               "pierwszy_snieg": ("bg_snieg", N, SNIEG, N_ANIM, N_REVEAL, N_EXTRA, N_COMMENTS, "pierwszy śnieg")}

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
