# Generator tel drogi do miasta: kreta sciezka miedzy mokradlami pod gore na Bukowy Grzbiet, swit, mgla.
#   sciezka         — Maciek z tobolkiem idzie sciezka; pies przy boku (# pokaz: pies), swiatelko w bagnie (# pokaz: swiatelko)
#   sciezka_po      — po ratunku: swiatelko zgaslo; Maciek lezy w blocie, pies warczy w strone bagna (# pokaz: upadek)
#   sciezka_smierc  — Maciek wciagniety w bagno: swiatelko tuz nad woda, oczy-wegielki (# pokaz: oczy), kregi na wodzie (# pokaz: bagno)
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/sciezka.py src/LittleVillage/Resources/Images     -> pliki bg_sciezka_*.svg
#   python3 tools/Backgrounds/sciezka.py --master sciezka|sciezka_po|sciezka_smierc [wszystko] > podglad.svg
import sys, random
from common import *
import art

L = {}
rnd = random.Random(51)

# ---------- SWIT: jasniejsze niebo, blade slonce nisko nad grzbietem, Bukowy Grzbiet
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M0 0H390V70C300 86 210 60 130 78C80 90 40 74 0 86Z" fill="url(#hatch)" stroke="none"/>',
     '<circle cx="292" cy="150" r="22" fill="#FFFFFF" stroke-width="3.2"/>',
     '<path d="M258 150h-9M326 150h9M292 116v-9M268 126l-6-6M316 126l6-6" fill="none" stroke-width="2.2"/>']
t.append('<path d="M-10 186C40 162 100 150 160 154C220 158 280 150 340 156C370 158 390 162 400 166V230H-10Z" fill="#EDEBE6" stroke-width="3"/>')
for i, (bx, br) in enumerate([(14, 11), (36, 13), (60, 12), (84, 13), (108, 11), (132, 12), (156, 10), (200, 11), (224, 13), (248, 12), (318, 11), (342, 12), (366, 10)]):
    by = 182 - (12 if 30 < bx < 160 else 6 if bx < 260 else 2)
    t.append(f'<circle cx="{bx}" cy="{by - br + 4}" r="{br}" fill="#FFFFFF" stroke-width="2.2"/>')
    t.append(f'<path d="M{bx - br * 0.45:.1f} {by - br + 2:.1f}c3 3 6 3 9 0" fill="none" stroke-width="1.1"/>')
# podmokla ziemia
t.append('<path d="M-10 196C80 190 170 194 260 190C320 188 370 192 400 190V440H-10Z" fill="#EDEBE6" stroke-width="3"/>')
# czarne oczka wody po obu stronach sciezki
for (px, py, rx, ry) in [(60, 236, 46, 8), (310, 232, 52, 8), (40, 296, 52, 10), (330, 300, 58, 11), (70, 372, 64, 13), (320, 384, 70, 14), (160, 214, 22, 4), (236, 220, 20, 4)]:
    t.append(f'<ellipse cx="{px}" cy="{py}" rx="{rx}" ry="{ry}" fill="#000000" stroke-width="1.6"/>')
    t.append(f'<line x1="{px - rx * 0.5:.1f}" y1="{py - ry * 0.3:.1f}" x2="{px - rx * 0.1:.1f}" y2="{py - ry * 0.3:.1f}" stroke="#FFFFFF" stroke-width="1.4"/>')
for i in range(34):
    x, y = rnd.uniform(0, 390), rnd.uniform(206, 420)
    if abs(x - (196 + (y - 300) * -0.05)) > 46:
        t.append(reeds(x, y, rnd.uniform(0.9, 1.4)))
for i in range(14):
    x, y = rnd.uniform(4, 386), rnd.uniform(220, 420)
    if abs(x - 196) > 60:
        t.append(cattail(x, y, rnd.uniform(1.1, 1.5)))
# kreta sciezka od dolu pod gore az na grzbiet (zweza sie w perspektywie)
t.append('<path d="M150 440C170 410 230 392 214 360C198 330 160 318 182 286C200 262 236 254 216 230C204 214 186 206 196 190" fill="none" stroke-width="3"/>')
t.append('<path d="M250 440C262 410 280 384 252 356C226 330 210 316 226 288C238 266 256 254 232 228C220 214 204 206 204 190" fill="none" stroke-width="3"/>')
for (x, y) in [(200, 420), (226, 396), (214, 340), (196, 310), (214, 270), (210, 236)]:
    t.append(f'<ellipse cx="{x}" cy="{y}" rx="7" ry="3" fill="#FFFFFF" stroke-width="1.4"/>')             # kepy do przeskakiwania
L["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))

# ---------- MGLA nisko nad woda (dryfuje)
L["mgla"] = (-30, 250, 450, 150, group([
    f'<path d="{ribbon(-20, 150, 262, 9, 3)}" fill="#EDEBE6" stroke-width="1.9"/>',
    f'<path d="{ribbon(250, 410, 276, 8, 2)}" fill="#EDEBE6" stroke-width="1.8"/>',
    f'<path d="{ribbon(-10, 130, 344, 10, 3)}" fill="#EDEBE6" stroke-width="1.9"/>',
    f'<path d="{ribbon(270, 420, 382, 9, 3)}" fill="#EDEBE6" stroke-width="1.9"/>']))

# ---------- SWIATELKO w glebi mokradel (z lewej)
def light(x, y, r):
    return (f'<circle cx="{x}" cy="{y}" r="{r}" fill="#FFFFFF" stroke-width="1.6"/>'
            f'<circle cx="{x}" cy="{y}" r="{r * 0.35:.1f}" fill="#000000" stroke="none"/>'
            f'<path d="M{x - r - 4} {y}h-4M{x + r + 4} {y}h4M{x} {y - r - 4}v-4M{x - r} {y - r}l-3 -3M{x + r} {y - r}l3 -3" fill="none" stroke-width="1.3"/>')
L["swiatelko"] = (34, 262, 44, 44, group([light(56, 284, 6)]))

# ---------- MACIEK idzie sciezka pod gore, od tylu, z tobolkiem na kiju
def walker(mx, my, k=1.0):
    def P(x, y): return f"{mx + x * k:.1f} {my + y * k:.1f}"
    return (f'<g stroke-width="2.2">'
            f'<path d="M{P(-6,0)}L{P(-4,-20)}L{P(0,-20)}L{P(1,0)}Z M{P(7,0)}L{P(4,-20)}L{P(1,-20)}L{P(2,0)}Z" fill="#000000"/>'
            f'<path d="M{P(-11,-18)}C{P(-13,-31)} {P(-10,-42)} {P(-7,-46)}L{P(7,-46)}C{P(10,-42)} {P(13,-31)} {P(11,-18)}Z" fill="#000000"/>'
            f'<circle cx="{mx}" cy="{my - 51 * k:.1f}" r="{5.5 * k:.1f}" fill="#000000"/>'
            f'<path d="M{P(-11,-54)}L{P(11,-54)}L{P(6,-58)}L{P(-6,-58)}Z" fill="#000000"/>'
            f'<line x1="{mx + 6 * k:.1f}" y1="{my - 42 * k:.1f}" x2="{mx + 22 * k:.1f}" y2="{my - 64 * k:.1f}" stroke-width="2.6"/>'
            f'<path d="M{P(18,-64)}C{P(12,-65)} {P(11,-56)} {P(15,-52)}C{P(19,-49)} {P(26,-50)} {P(26,-56)}C{P(26,-61)} {P(22,-65)} {P(18,-64)}Z" fill="url(#hatch)" stroke-width="2"/>'
            f'</g>')
L["maciek"] = (184, 252, 50, 92, group([walker(206, 340, 1.25)]))

# ---------- PIES przy boku (rysunek autora wilczek2 bez kresek szczekania i drzenia)
L["pies"] = (226, 314, 64, 36, art.barking("translate(288 318) scale(-0.075 0.075)", skip=("cień", "szczekanie", "drżenie")))

# ---------- PO RATUNKU: Maciek lezy w blocie na sciezce, pies warczy w strone bagna (z lewej)
lez = (f'<g stroke-width="2.2">'
       f'<path d="M196 392C204 384 226 382 246 386L250 396C228 398 208 400 196 398Z" fill="#000000"/>'               # tulow
       f'<path d="M246 388l28 -4l2 6l-28 6zM246 394l26 6l-2 6l-26 -6z" fill="#000000"/>'                          # nogi
       f'<circle cx="190" cy="390" r="7" fill="#000000"/>'
       f'<path d="M184 380h14l-3 -4h-8z" fill="#000000"/>'
       f'<path d="M206 386l-8 -14M214 386l4 -16" fill="none" stroke-width="3.4"/>'                                # rece unoszace sie
       f'<path d="M262 398c4 4 10 6 16 4M150 402c10-4 22-4 32 0" fill="none" stroke-width="1.6"/>'               # bloto
       f'</g>')
L["maciek_lezy"] = (140, 364, 144, 46, group([
    lez.replace('<g stroke-width="2.2">', '<g stroke-width="6" stroke="#EDEBE6">'), lez]))
L["pies_warczy"] = (100, 330, 104, 64, art.barking("translate(102 334) scale(0.17)", skip=("drżenie",)))

# ---------- SMIERC: swiatelko tuz nad woda przy sciezce, zarzace sie oczy, kregi na wodzie
L["swiatelko_blisko"] = (110, 312, 52, 48, group([light(136, 336, 8)]))
eyes = []
for dx in (0, 16):
    eyes.append(f'<circle cx="{98 + dx * 1.2}" cy="{370}" r="6.5" fill="#FFFFFF" stroke="#000000" stroke-width="1.4"/>')
    eyes.append(f'<circle cx="{98 + dx * 1.2}" cy="{370}" r="2.4" fill="#000000" stroke="none"/>')
eyes.append('<path d="M86 370h-5M128 370h5M96 362l-3 -4M116 362l3 -4" fill="none" stroke="#FFFFFF" stroke-width="1.6"/>')
L["oczy"] = (76, 350, 64, 34, group(eyes))
rings = ['<ellipse cx="108" cy="378" rx="18" ry="4" fill="none" stroke="#FFFFFF" stroke-width="2"/>',
         '<ellipse cx="108" cy="378" rx="32" ry="7" fill="none" stroke="#FFFFFF" stroke-width="1.6"/>',
         '<ellipse cx="108" cy="378" rx="46" ry="10" fill="none" stroke="#FFFFFF" stroke-width="1.2" stroke-dasharray="6 5"/>',
         '<path d="M100 372c2-6 6-6 8 0M112 370c1-4 4-4 5 0" fill="none" stroke="#FFFFFF" stroke-width="1.4"/>']   # babelki
L["kregi"] = (58, 364, 102, 28, group(rings))

# ---------- PIERWSZY PLAN: trawa i trzciny
p = ['<path d="M-10 420H400V844H-10Z" fill="#EDEBE6" stroke="none"/>']
for i in range(22):
    p.append(grass(rnd.uniform(0, 390), rnd.uniform(436, 840), rnd.uniform(0.9, 1.4)))
p.append('<path d="M0 700C40 740 60 800 70 844H0Z" fill="url(#hatchDense)" stroke="none"/>')
p.append('<path d="M390 690C350 740 340 800 336 844H390Z" fill="url(#hatchDense)" stroke="none"/>')
L["przod"] = (0, 410, 390, 434, group(p))

VARIANTS = {
    "sciezka": ["tlo", "swiatelko", "mgla", "maciek", "pies", "przod"],
    "sciezka_po": ["tlo", "mgla", "pies_warczy", "maciek_lezy", "przod"],
    "sciezka_smierc": ["tlo", "mgla", "swiatelko_blisko", "kregi", "oczy", "przod"],
}
REVEAL = {"sciezka": {"swiatelko": "swiatelko", "pies": "pies"},
          "sciezka_po": {"pies_warczy": "upadek", "maciek_lezy": "upadek"},
          "sciezka_smierc": {"oczy": "oczy", "kregi": "bagno"}}
ANIM = {"mgla": {"type": "drift", "amplitude": 10, "duration": 14000},
        "swiatelko": {"type": "flicker", "amplitude": 0.3, "duration": 2800},
        "swiatelko_blisko": {"type": "flicker", "amplitude": 0.3, "duration": 2200},
        "oczy": {"type": "flicker", "amplitude": 0.45, "duration": 1800},
        "pies_warczy": {"type": "bob", "amplitude": 0.6, "duration": 400},
        "maciek": {"type": "bob", "amplitude": 0.8, "duration": 900}}
COMMENTS = {"tlo": "świt, Bukowy Grzbiet, mokradła, kręta ścieżka pod górę", "mgla": "mgła nad wodą (dryfuje)",
            "swiatelko": "światełko w głębi bagna", "maciek": "Maciek z tobołkiem idzie ścieżką", "pies": "pies przy boku (rysunek autora)",
            "maciek_lezy": "Maciek leży w błocie", "pies_warczy": "pies warczy w stronę bagna (rysunek autora)",
            "swiatelko_blisko": "światełko tuż nad wodą", "oczy": "żarzące się oczy w bagnie", "kregi": "kręgi na wodzie po utonięciu",
            "przod": "pierwszy plan: trawa"}

if __name__ == "__main__":
    if sys.argv[1] == "--master":
        v = sys.argv[2]
        hide = set() if len(sys.argv) > 3 and sys.argv[3] == "wszystko" else set(REVEAL[v])
        print(master(L, [n for n in VARIANTS[v] if n not in hide]))
    else:
        write_layers(sys.argv[1], "bg_sciezka", "droga do miasta", L, list(L.keys()), COMMENTS)
