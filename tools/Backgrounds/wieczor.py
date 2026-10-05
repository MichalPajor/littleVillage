# Generator tla "wieczor przy chacie" w trzech wariantach (las / mokradla / jezioro): noc nad gotowa chata.
# Otoczenie z tla budowy, chata z chata.py (z pelna strzecha). Warstwy odslaniane tekstem:
#   ogien — ognisko w kregu kamieni z dymem i blaskiem   (# pokaz: ogien — tylko gdy Maciek ma krzesiwo)
#   pies  — pies lezacy po drugiej stronie ogniska        (# pokaz: pies  — tylko gdy pies jest oswojony)
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/wieczor.py src/LittleVillage/Resources/Images   -> pliki bg_wieczor_*.svg
#   python3 tools/Backgrounds/wieczor.py --master las [wszystko] > podglad.svg
import sys, os, random, importlib.util
from common import *
import art

_dir = os.path.dirname(os.path.abspath(__file__))
def _load(name):
    spec = importlib.util.spec_from_file_location(name, os.path.join(_dir, f"{name}.py"))
    m = importlib.util.module_from_spec(spec); spec.loader.exec_module(m); return m
budowa, chata = _load("budowa"), _load("chata")

L = {}
rnd = random.Random(41)

# ---------- NOCNE NIEBO z ksiezycem i gwiazdami
n = ['<rect width="390" height="270" fill="#EDEBE6" stroke="none"/>',
     '<path d="M0 0H390V270H0Z" fill="url(#hatchNight)" stroke="none"/>',
     '<circle cx="72" cy="78" r="26" fill="#FFFFFF" stroke-width="3.6"/>',
     '<circle cx="64" cy="70" r="5" fill="none" stroke-width="2"/>', '<circle cx="80" cy="88" r="3.5" fill="none" stroke-width="1.8"/>']
for i in range(14):
    x, y = rnd.uniform(10, 380), rnd.uniform(14, 150)
    if abs(x - 72) > 40 or abs(y - 78) > 40:
        n.append(f'<path d="M{x:.0f} {y - 3:.0f}v6M{x - 3:.0f} {y:.0f}h6" fill="none" stroke="#FFFFFF" stroke-width="1.5"/>')
L["niebo"] = (0, 0, 390, 270, n[0] + "\n" + group(n[1:]))

# ---------- OGNISKO przed chata (przed drzwiami): krag kamieni, plomienie, krotki dym, iskry, blask
FX, FY = 214, 410
f = [f'<ellipse cx="{FX}" cy="{FY + 4}" rx="58" ry="11" fill="#FFFFFF" stroke="none" opacity="0.9"/>']
for dx, dy in [(-26, 6), (-14, 10), (0, 11), (14, 10), (26, 6), (-32, 1), (32, 1)]:
    f.append(f'<ellipse cx="{FX + dx}" cy="{FY + dy}" rx="6" ry="4" fill="#FFFFFF" stroke-width="2"/>')
f.append(f'<path d="M{FX - 20} {FY + 4}l40-6M{FX - 16} {FY - 2}l34 6" fill="none" stroke-width="3"/>')
for (dx, h, w) in [(-10, 34, 9), (0, 50, 12), (11, 38, 9)]:
    x = FX + dx
    f.append(f'<path d="M{x - w} {FY}C{x - w} {FY - h * 0.4:.0f} {x - w * 0.3:.0f} {FY - h * 0.6:.0f} {x - w * 0.2:.0f} {FY - h}C{x + w * 0.2:.0f} {FY - h * 0.7:.0f} {x + w * 0.6:.0f} {FY - h * 0.8:.0f} {x + w * 0.4:.0f} {FY - h * 1.15:.0f}C{x + w * 1.1:.0f} {FY - h * 0.6:.0f} {x + w} {FY - h * 0.3:.0f} {x + w} {FY}Z" fill="#FFFFFF" stroke-width="2.2"/>')
    f.append(f'<path d="M{x - w * 0.4:.0f} {FY}C{x - w * 0.4:.0f} {FY - h * 0.3:.0f} {x} {FY - h * 0.4:.0f} {x} {FY - h * 0.6:.0f}C{x + w * 0.3:.0f} {FY - h * 0.4:.0f} {x + w * 0.4:.0f} {FY - h * 0.2:.0f} {x + w * 0.4:.0f} {FY}Z" fill="#000000" stroke="none"/>')
f.append(f'<path d="M{FX + 4} {FY - 62}C{FX + 12} {FY - 76} {FX + 2} {FY - 88} {FX + 14} {FY - 102}" fill="none" stroke="#FFFFFF" stroke-width="3" stroke-linecap="round" stroke-dasharray="2 5"/>')
for (dx, dy) in [(-22, -54), (20, -64), (-6, -78), (12, -86)]:
    f.append(f'<circle cx="{FX + dx}" cy="{FY + dy}" r="1.8" fill="#FFFFFF" stroke-width="0.8"/>')
L["ogien"] = (150, 300, 128, 126, group(f))

# ---------- PIES po drugiej stronie ogniska, patrzy w plomienie (rysunek autora wilczek2, bez kresek szczekania)
L["pies"] = (270, 368, 96, 50, art.barking("translate(274 372) scale(0.095)", skip=("cień", "szczekanie", "drżenie")))

COMMON = ["niebo"]
VARIANTS = {"las": ["tlo_las", "las_swierki"], "mokradla": ["tlo_mokradla", "mokradla_mgla"], "jezioro": ["tlo_jezioro", "jezioro_blyski"]}
REVEAL = {"ogien": "ogien", "pies": "pies"}
ANIM = {"ogien": {"type": "flicker", "amplitude": 0.75, "duration": 1300}}


def layers(variant):
    """(prefiks pliku, nazwa) w kolejnosci: niebo, otoczenie wariantu, chata ze strzecha, przod, ognisko, pies."""
    return ([("bg_wieczor", "niebo")] + [("bg_budowa", n) for n in VARIANTS[variant]]
            + [("bg_chata", "chata"), ("bg_chata", "strzecha_szczyt"), ("bg_budowa", "przod"), ("bg_wieczor", "ogien"), ("bg_wieczor", "pies")])


COMMENTS = {"niebo": "nocne niebo z księżycem", "ogien": "ognisko z dymem i blaskiem (# pokaz: ogien)",
            "pies": "pies przy ognisku (rysunek autora, # pokaz: pies)"}

if __name__ == "__main__":
    if sys.argv[1] == "--master":
        mods = {"bg_wieczor": L, "bg_budowa": budowa.L, "bg_chata": chata.L}
        hide = set() if len(sys.argv) > 3 and sys.argv[3] == "wszystko" else set(REVEAL)
        both = {}
        order = []
        for prefix, name in layers(sys.argv[2]):
            if prefix == "bg_wieczor" and name in hide:
                continue
            key = f"{prefix}_{name}"; both[key] = mods[prefix][name]; order.append(key)
        print(master(both, order))
    else:
        write_layers(sys.argv[1], "bg_wieczor", "wieczór przy chacie", L, ["niebo", "ogien", "pies"], COMMENTS)
