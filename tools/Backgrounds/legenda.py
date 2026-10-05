# Generator tla "legenda": noc nad jeziorem, chata zielarki (wiedzmy) z peczkami ziol pod okapem.
# Warstwy odslaniane w trakcie opowiesci Andrzeja:
#   chlopi   — sylwetki chlopow z widlami i pochodnia, deski na drzwiach   (# pokaz: chlopi)
#   ogien    — plomienie na strzesze i scianach, dym, iskry (osobne warstwy)  (# pokaz: ogien)
#   wegielki — zarzace sie oczy nad bagnem                                  (# pokaz: wegielki)
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/legenda.py src/LittleVillage/Resources/Images   -> pliki bg_legenda_*.svg
#   python3 tools/Backgrounds/legenda.py --master [baza|wszystko] > podglad.svg
import sys, random
from common import *

L = {}
rnd = random.Random(13)

# ---------- NIEBO NOCNE, sierp ksiezyca, dalekie wzgorza z borem
n = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M0 0H390V250H0Z" fill="url(#hatchNight)" stroke="none"/>',
     '<path d="M316 52C298 58 294 86 312 98C298 100 284 88 286 72C288 58 302 48 316 52Z" fill="#FFFFFF" stroke-width="3"/>']
for i in range(10):
    x, y = rnd.uniform(10, 380), rnd.uniform(12, 150)
    if abs(x - 304) > 30 or abs(y - 74) > 34:
        n.append(f'<path d="M{x:.0f} {y - 3:.0f}v6M{x - 3:.0f} {y:.0f}h6" fill="none" stroke="#FFFFFF" stroke-width="1.5"/>')
ridge = "M-10 250"
for i, x in enumerate(range(0, 404, 13)):
    ridge += f" L{x + 6} {214 - (i % 3) * 6 - (8 if i % 4 == 1 else 0)} L{x + 13} {232 + (i % 2) * 4}"
n.append(ridge + ' L400 250 Z"'.join(['<path d="', ''])[0:0] if False else f'<path d="{ridge} L400 252 L-10 252 Z" fill="#000000" stroke-width="2.6"/>')
# brzeg i ziemia w poswiacie
n.append('<path d="M-10 250C80 244 180 250 270 246C330 244 370 248 400 246V440H-10Z" fill="#EDEBE6" stroke-width="3"/>')
n.append('<path d="M-10 250C80 244 180 250 270 246C330 244 370 248 400 246V440H-10Z" fill="url(#hatch)" stroke="none"/>')
# jezioro na pierwszym planie z lewej
n.append('<ellipse cx="96" cy="350" rx="118" ry="40" fill="#FFFFFF" stroke-width="3.6"/>')
n.append('<ellipse cx="96" cy="350" rx="108" ry="33" fill="url(#water)" stroke="none"/>')
for x in list(range(-6, 40, 9)) + list(range(170, 220, 9)):
    n.append(reeds(x, 372 - abs(x - 96) * 0.08, 1.1))
# mokradla w glebi z prawej: czarne oczka wody, palki
for (px, py, rx, ry) in [(300, 270, 26, 5), (350, 282, 22, 4.5), (322, 296, 14, 3.5), (372, 266, 12, 3)]:
    n.append(f'<ellipse cx="{px}" cy="{py}" rx="{rx}" ry="{ry}" fill="#000000" stroke-width="1.5"/>')
for (cx, cy) in [(286, 276), (312, 266), (338, 290), (364, 274), (384, 290)]:
    n.append(cattail(cx, cy, 1.0))
L["tlo"] = (0, 0, 390, 440, n[0] + "\n" + group(n[1:]))

# ---------- CHATA ZIELARKI: niska, z bali, strzecha, okienko, peczki ziol pod okapem, drzwi
HX0, HX1, HY = 196, 300, 360
c = []
for i in range(5):
    y = HY - 12 * (i + 1)
    c.append(f'<rect x="{HX0 - 5}" y="{y}" width="{HX1 - HX0 + 10}" height="12" rx="6" fill="#FFFFFF" stroke-width="2.2"/>')
c.append(f'<rect x="232" y="{HY - 40}" width="22" height="40" fill="#000000" stroke-width="2"/>')        # drzwi
c.append(f'<rect x="268" y="{HY - 44}" width="16" height="12" fill="#000000" stroke-width="2"/>')        # okienko
ROOF = "M184 302L248 262L312 302C292 308 270 302 248 308C226 302 204 308 184 302Z"
c.append(f'<path d="{ROOF}" fill="#EDEBE6" stroke="none"/>')      # papier pod kreskowaniem - inaczej przeswituje czarny bor
c.append(f'<path d="{ROOF}" fill="url(#hatch)" stroke-width="3"/>')
for k in range(5):                                                                                  # peczki ziol
    x = 204 + k * 22
    c.append(f'<path d="M{x} 304v6M{x - 3} 310l3 10l3-10Z" fill="#000000" stroke-width="1.4"/>')
# chata, ogien i chlopi blizej widza: powiekszenie 1,35x wzgledem gruntu przed chata
NEAR = "translate(250 396) scale(1.35) translate(-250 -396)"


def near(items):
    return group([f'<g transform="{NEAR}">'] + items + ['</g>'])


L["chata"] = (150, 206, 194, 148, near(c))

# ---------- CHLOPI: deski na drzwiach, cztery sylwetki z widlami, cepem i pochodnia (odslaniane)
def chlop(x, y, tool):
    g = (f'<path d="M{x - 5} {y}l2-20h4l-1 20zM{x + 5} {y}l-4-20h-4l2 20z" fill="#000000"/>'
         f'<path d="M{x - 9} {y - 18}C{x - 10} {y - 30} {x - 8} {y - 40} {x - 4} {y - 43}H{x + 4}C{x + 8} {y - 40} {x + 10} {y - 30} {x + 9} {y - 18}Z" fill="#000000"/>'
         f'<circle cx="{x}" cy="{y - 48}" r="5" fill="#000000"/>'
         f'<path d="M{x - 8} {y - 51}h16l-4-4h-8z" fill="#000000"/>')
    if tool == "widly":
        g += f'<path d="M{x + 7} {y - 36}L{x + 16} {y - 72}M{x + 12} {y - 70}l2-10M{x + 16} {y - 72}l1-10M{x + 20} {y - 70}l0-10" fill="none" stroke-width="2.4"/>'
    elif tool == "pochodnia":
        g += (f'<path d="M{x + 7} {y - 36}L{x + 14} {y - 64}" fill="none" stroke-width="3"/>'
              f'<path d="M{x + 14} {y - 64}c-8-6-4-16 0-22c2 6 8 8 4 14c4-2 6-6 4-10c6 6 4 16-8 18z" fill="#FFFFFF" stroke-width="1.8"/>')
    elif tool == "mlot":
        g += f'<path d="M{x - 7} {y - 34}L{x - 18} {y - 52}M{x - 22} {y - 50}l8-5" fill="none" stroke-width="3"/>'
    return f'<g stroke-width="2.2">{g}</g>'

ch = ['<path d="M230 326l26 20M230 346l26-20M228 336h30" fill="none" stroke="#FFFFFF" stroke-width="4"/>',  # deski
      '<path d="M230 326l26 20M230 346l26-20M228 336h30" fill="none" stroke-width="1.4"/>',
      chlop(160, 392, "widly"), chlop(186, 400, "pochodnia"), chlop(314, 398, "mlot"), chlop(338, 390, "widly")]
L["chlopi"] = (100, 264, 290, 146, near(ch))

# ---------- OGIEN: biale plomienie z czarnym konturem na strzesze i scianach, dym w niebo (odslaniane, migocze)
def flame(x, y, h, w):
    return (f'<path d="M{x - w} {y}C{x - w} {y - h * 0.4:.0f} {x - w * 0.3:.0f} {y - h * 0.6:.0f} {x - w * 0.2:.0f} {y - h}'
            f'C{x + w * 0.1:.0f} {y - h * 0.7:.0f} {x + w * 0.5:.0f} {y - h * 0.8:.0f} {x + w * 0.4:.0f} {y - h * 1.15:.0f}'
            f'C{x + w * 1.1:.0f} {y - h * 0.6:.0f} {x + w} {y - h * 0.3:.0f} {x + w} {y}Z" fill="#FFFFFF" stroke-width="2.2"/>'
            f'<path d="M{x - w * 0.4:.0f} {y}C{x - w * 0.4:.0f} {y - h * 0.3:.0f} {x} {y - h * 0.4:.0f} {x} {y - h * 0.6:.0f}C{x + w * 0.3:.0f} {y - h * 0.4:.0f} {x + w * 0.4:.0f} {y - h * 0.2:.0f} {x + w * 0.4:.0f} {y}Z" fill="#000000" stroke="none"/>')

ROOF_FLAMES = [(206, 302, 30, 12), (230, 296, 40, 14), (252, 286, 52, 16), (276, 296, 40, 14), (298, 302, 28, 11)]
WALL_FLAMES = [(200, 352, 22, 9), (290, 350, 24, 9), (262, 354, 18, 8)]
# plomienie na strzesze i przy scianach — osobno, kazde "liza" od swojej podstawy (animacja flame)
L["plomienie_dach"] = (164, 154, 190, 124, near([flame(*f) for f in ROOF_FLAMES]))
L["plomienie_sciany"] = (160, 286, 166, 60, near([flame(*f) for f in WALL_FLAMES]))
# dym — dwie smugi nad strzecha, kolysza sie od podstawy
L["dym"] = (200, 6, 108, 230, near([
    '<path d="M236 262C226 230 250 210 236 180C226 160 246 140 240 116M262 270C276 240 256 216 270 190C280 170 262 150 270 130" fill="none" stroke="#000000" stroke-width="7" stroke-linecap="round" opacity="0.8"/>']))


def sparks(points, r=2.2):
    """Iskry: biale rombiki z czarnym obrysem."""
    return [f'<path d="M{x} {y - r * 1.6:.1f}L{x + r:.1f} {y}L{x} {y + r * 1.6:.1f}L{x - r:.1f} {y}Z" fill="#FFFFFF" stroke-width="1"/>' for x, y in points]


# iskry nad ogniem — dwie warstwy w przesunietej fazie (animacja rise)
L["iskry_a"] = (210, 120, 110, 80, group(sparks([(228, 190), (262, 168), (296, 184), (246, 140), (284, 132)])))
L["iskry_b"] = (210, 120, 110, 80, group(sparks([(238, 176), (274, 194), (306, 160), (222, 150), (260, 128)], 1.8)))

# ---------- WEGIELKI: zarzace sie oczy nad bagnem (odslaniane, migocza)
e = []
# z prawej, nad mokradlami, poza zasiegiem plomieni (te siegaja do x~330)
for (x, y) in [(340, 238), (362, 254), (344, 266)]:
    for dx in (0, 10):
        e.append(f'<circle cx="{x + dx}" cy="{y}" r="3.6" fill="#FFFFFF" stroke="#000000" stroke-width="1"/>')
        e.append(f'<circle cx="{x + dx}" cy="{y}" r="1.2" fill="#000000" stroke="none"/>')
    e.append(f'<path d="M{x - 7} {y}h-3M{x + 17} {y}h3" fill="none" stroke="#FFFFFF" stroke-width="1.4"/>')
L["wegielki"] = (326, 228, 64, 46, group(e))

# ---------- PIERWSZY PLAN: ciemna trawa
p = ['<path d="M-10 420H400V844H-10Z" fill="#EDEBE6" stroke="none"/>',
     '<path d="M-10 420H400V844H-10Z" fill="url(#hatch)" stroke="none"/>']
for i in range(22):
    p.append(grass(rnd.uniform(0, 390), rnd.uniform(436, 840), rnd.uniform(0.9, 1.4)))
p.append('<path d="M0 690C40 740 60 800 70 844H0Z" fill="url(#hatchNight)" stroke="none"/>')
p.append('<path d="M390 680C350 740 340 800 336 844H390Z" fill="url(#hatchNight)" stroke="none"/>')
L["przod"] = (0, 410, 390, 434, group(p))

ORDER = ["tlo", "wegielki", "chata", "dym", "plomienie_dach", "plomienie_sciany", "iskry_a", "iskry_b", "chlopi", "przod"]
REVEAL = {"chlopi": "chlopi", "dym": "ogien", "plomienie_dach": "ogien", "plomienie_sciany": "ogien", "iskry_a": "ogien", "iskry_b": "ogien", "wegielki": "wegielki"}
ANIM = {"plomienie_dach": {"type": "flame", "amplitude": 0.12, "duration": 1700, "anchorX": 0.5, "anchorY": 0.93},
        "plomienie_sciany": {"type": "flame", "amplitude": 0.16, "duration": 1300, "anchorX": 0.5, "anchorY": 0.89, "phase": 0.4},
        "dym": {"type": "sway", "amplitude": 2.2, "duration": 6000, "anchorX": 0.5, "anchorY": 0.97},
        "iskry_a": {"type": "rise", "amplitude": 34, "duration": 2400},
        "iskry_b": {"type": "rise", "amplitude": 30, "duration": 2400, "phase": 0.5},
        "wegielki": {"type": "flicker", "amplitude": 0.35, "duration": 2600}}
COMMENTS = {
    "tlo": "noc, sierp księżyca, bór, jezioro, mokradła", "chata": "chata zielarki z pęczkami ziół",
    "chlopi": "chłopi z widłami, młotem i pochodnią, deski na drzwiach (# pokaz: chlopi)",
    "plomienie_dach": "płomienie na strzesze (# pokaz: ogien, liżą od podstawy)",
    "plomienie_sciany": "płomienie przy ścianach (# pokaz: ogien, liżą od podstawy)",
    "dym": "dym nad chatą (# pokaz: ogien, kołysze się)",
    "iskry_a": "iskry (# pokaz: ogien, unoszą się)", "iskry_b": "iskry (# pokaz: ogien, unoszą się)", "wegielki": "żarzące się oczy nad bagnem (# pokaz: wegielki, migoczą)",
    "przod": "pierwszy plan: ciemna trawa",
}

if __name__ == "__main__":
    if sys.argv[1] == "--master":
        hide = set() if len(sys.argv) > 2 and sys.argv[2] == "wszystko" else set(REVEAL)
        print(master(L, [n for n in ORDER if n not in hide]))
    else:
        write_layers(sys.argv[1], "bg_legenda", "legenda", L, ORDER, COMMENTS)
