# Generator tla "laka_bitwa" (rozdzial pierwszy, strona 3): laka i miedza pelne chwastow — gorysze z bialymi baldachami,
# osty, pokrzywy; chmury (jedna jak kon, druga jak okret), trzmiel, rumianki. Odslaniane tekstem (# pokaz: bitwa):
# dzieci z kijami-mieczami szturmuja chwasty, odlatujace kolczaste lby, sploszone wroble.
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/laka.py src/LittleVillage/Resources/Images   -> pliki bg_laka_*.svg
#   python3 tools/Backgrounds/laka.py --master [wszystko] > podglad.svg
import sys, random
from common import *
from kapliczki import hut
import postacie

L = {}
rnd = random.Random(121)

t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M0 0H390V30C300 40 200 26 110 34C60 40 30 32 0 38Z" fill="url(#hatch)" stroke="none"/>',
     '<path d="M-10 200C80 184 160 192 230 200C300 190 350 186 400 190V440H-10Z" fill="#EDEBE6" stroke-width="3"/>']
for (x, y, s) in [(40, 180, 0.8), (300, 176, 0.9)]:
    t.append(hut(x, y, s))
t.append('<path d="M210 200C214 186 210 176 214 170M220 200C218 188 222 176 218 170" fill="none" stroke-width="2"/>')
t.append('<path d="M196 172C186 160 192 140 206 136C212 124 232 124 236 136C250 140 254 160 242 172C232 180 206 180 196 172Z" fill="url(#hatchDense)" stroke-width="2"/>')
# miedza i rowy
t.append('<path d="M-10 268C100 258 260 262 400 254" fill="none" stroke-width="1.6" stroke-dasharray="8 6"/>')
for i in range(40):
    x, y = rnd.uniform(0, 390), rnd.uniform(210, 432)
    t.append(grass(x, y, rnd.uniform(0.6, 1.0)))
L["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))

# chmury: kon i okret (dzieci wyczytuja z nich ksztalty)
horse = ('<path d="M60 96C58 84 70 78 82 82C92 74 112 74 120 82C130 78 142 84 140 94C150 92 158 98 154 106H64C56 106 54 98 60 96Z" fill="#FFFFFF" stroke-width="2"/>'
         '<path d="M140 94C146 84 156 78 162 82C166 86 162 92 156 96" fill="#FFFFFF" stroke-width="2"/>'
         '<path d="M74 106l-4 10M88 106l-2 10M126 106l2 10M140 106l4 10" fill="none" stroke-width="2"/>')
ship = ('<path d="M232 120H312L300 132H244Z" fill="#FFFFFF" stroke-width="2"/>'
        '<path d="M270 120V88M270 90C284 96 288 108 272 116M268 94C256 100 254 110 266 116" fill="#FFFFFF" stroke-width="2"/>')
L["chmury"] = (50, 70, 270, 70, group([horse, ship]))

# chwasty: gorysze (biale baldachy), osty, pokrzywy — kolysza sie
w = []
def gorysz(x, y, h):
    g = f'<path d="M{x} {y}C{x - 2} {y - h * 0.5:.0f} {x + 2} {y - h * 0.8:.0f} {x} {y - h}" fill="none" stroke-width="1.8"/>'
    for dx in (-14, -7, 0, 7, 14):
        g += f'<path d="M{x} {y - h}L{x + dx} {y - h - 10}" fill="none" stroke-width="1"/>'
    return g + f'<path d="M{x - 18} {y - h - 10}Q{x} {y - h - 22} {x + 18} {y - h - 10}Z" fill="#FFFFFF" stroke-width="1.6"/>'
def oset(x, y, h):
    return (f'<path d="M{x} {y}V{y - h}" fill="none" stroke-width="1.8"/>'
            f'<path d="M{x - 8} {y - h * 0.5:.0f}l8 -6l8 6M{x - 7} {y - h * 0.3:.0f}l7 -5l7 5" fill="none" stroke-width="1.4"/>'
            f'<ellipse cx="{x}" cy="{y - h - 4}" rx="6" ry="5" fill="url(#hatchDense)" stroke-width="1.6"/>'
            f'<path d="M{x - 5} {y - h - 8}l-3 -6M{x} {y - h - 9}v-7M{x + 5} {y - h - 8}l3 -6" fill="none" stroke-width="1.6"/>')
def pokrzywa(x, y, h):
    g = f'<path d="M{x} {y}V{y - h}" fill="none" stroke-width="1.8"/>'
    for k in range(4):
        yy = y - h * (0.25 + k * 0.2)
        g += f'<path d="M{x} {yy:.0f}l-10 -4l4 6zM{x} {yy - 6:.0f}l10 -4l-4 6z" fill="#000000" stroke-width="1"/>'
    return g
# w glebi: nizszy rzad na miedzy
for (x, kind, h) in [(18, oset, 34), (44, gorysz, 40), (70, pokrzywa, 44), (98, oset, 30), (126, gorysz, 42), (150, pokrzywa, 36)]:
    w.append(kind(x, 290, h))
# z przodu po prawej: gesta, wysoka kepa — pokrzywy wyzsze od dzieci
for (x, kind, h) in [(236, pokrzywa, 92), (256, gorysz, 96), (276, oset, 80), (296, pokrzywa, 108), (316, gorysz, 90),
                     (336, oset, 86), (356, pokrzywa, 100), (378, gorysz, 94)]:
    w.append(kind(x, 426, h))
L["chwasty"] = (0, 220, 390, 210, group(w))

# dzieci szturmuja chwasty z kijami (# pokaz: bitwa)
def with_stick(fig, x, y, k, sx, sy, ex, ey):
    return fig + f'<path d="M{x + sx * k:.1f} {y + sy * k:.1f}L{x + ex * k:.1f} {y + ey * k:.1f}" fill="none" stroke-width="{2.6 * k:.1f}"/>'
def kids(up):
    """Dzieci szturmuja chwasty; up=True — kije w gorze (zamach), False — kije w dol (ciecie)."""
    j = (34, -50) if up else (36, -24)
    f = (30, -72) if up else (40, -40)
    h = (28, -40) if up else (30, -18)
    a = (30, -42) if up else (32, -20)
    return group([with_stick(postacie.running_child(150, 412, 1.35, facing=1, pose=0 if up else 1), 150, 412, 1.35, 12, -32, *j),   # Jaromir
                  with_stick(postacie.child(212, 404, 1.5, arm="l12 -14" if up else "l14 4"), 212, 404, 1.5, 18, -42 if up else -38, *f),  # Franek
                  with_stick(postacie.girl(96, 408, 1.2, running=True, facing=1), 96, 408, 1.2, 10, -24, *h),                     # Hanka
                  with_stick(postacie.running_child(50, 416, 1.1, facing=1, pose=1 if up else 0), 50, 416, 1.1, 12, -32, *a)])    # Antek


L["dzieci_a"] = (20, 280, 240, 146, kids(True))
L["dzieci_b"] = (20, 280, 240, 146, kids(False))
# sciete kolczaste lby leca lukiem (kazdy osobno) i sploszone wroble
def burr(x, y):
    return (f'<ellipse cx="{x}" cy="{y}" rx="4" ry="3.4" fill="url(#hatchDense)" stroke-width="1.4"/>'
            f'<path d="M{x - 3} {y - 3}l-2 -4M{x + 3} {y - 3}l2 -4" fill="none" stroke-width="1.2"/>')
BURRS = [(276, 336), (336, 330), (296, 318)]
for k, (x, y) in enumerate(BURRS):
    L[f"lby_{k}"] = (x - 7, y - 9, 14, 14, group([burr(x, y)]))
L["wroble"] = (240, 130, 140, 60, group([crow(250, 160, 0.4), crow(290, 146, 0.35), crow(330, 166, 0.4), crow(350, 140, 0.3)]))
# motyl krazy nad chwastami
L["motyl"] = (288, 262, 28, 22, group([postacie.butterfly(302, 272, 1.1)]))

# pierwszy plan: trawa, rumianki, trzmiel
p = ['<path d="M-10 420H400V844H-10Z" fill="#EDEBE6" stroke="none"/>']
for i in range(20):
    p.append(grass(rnd.uniform(0, 390), rnd.uniform(436, 840), rnd.uniform(0.9, 1.3)))
L["przod"] = (0, 410, 390, 434, group(p))
r = []
for i in range(16):
    x, y = 10 + i * 24 + rnd.uniform(-4, 4), 430 - (i % 3) * 6
    r.append(f'<path d="M{x:.0f} {y}v-16" fill="none" stroke-width="1.3"/>')
    r.append(''.join(f'<ellipse cx="{x + 4.5 * __import__("math").cos(a):.1f}" cy="{y - 19 + 4.5 * __import__("math").sin(a):.1f}" rx="2.4" ry="1.3" fill="#FFFFFF" stroke-width="0.9" transform="rotate({a * 57.3:.0f} {x + 4.5 * __import__("math").cos(a):.1f} {y - 19 + 4.5 * __import__("math").sin(a):.1f})"/>' for a in [k * 0.785 for k in range(8)]))
    r.append(f'<circle cx="{x:.0f}" cy="{y - 19}" r="2.4" fill="url(#hatchDense)" stroke-width="1"/>')
L["rumianki"] = (0, 396, 390, 40, group(r))
L["trzmiel"] = (300, 360, 30, 24, group(['<ellipse cx="314" cy="372" rx="7" ry="5" fill="#000000" stroke-width="1.2"/>',
                                         '<path d="M311 368v8M316 367v10" fill="none" stroke="#FFFFFF" stroke-width="1.4"/>',
                                         '<ellipse cx="312" cy="365" rx="4" ry="2.5" fill="#FFFFFF" stroke-width="1"/><ellipse cx="318" cy="365" rx="4" ry="2.5" fill="#FFFFFF" stroke-width="1"/>']))

ORDER = ["tlo", "chmury", "wroble", "chwasty", "motyl"] + [f"lby_{k}" for k in range(len(BURRS))] + ["dzieci", "przod", "rumianki", "trzmiel"]
REVEAL = {"dzieci": "bitwa", "wroble": "bitwa"}
REVEAL.update({f"lby_{k}": "bitwa" for k in range(len(BURRS))})
ANIM = {"chmury": {"type": "drift", "amplitude": 14, "duration": 18000},
        "wroble": {"type": "bob", "amplitude": 6, "duration": 900},
        "chwasty": {"type": "sway", "amplitude": 1.6, "duration": 2600, "anchorX": 0.5, "anchorY": 1},
        "motyl": {"type": "wander", "amplitude": 26, "flap": 0.65, "duration": 7000},
        "dzieci": {"type": "frames", "duration": 760},
        "rumianki": {"type": "sway", "amplitude": 2, "duration": 3200, "anchorX": 0.5, "anchorY": 1},
        "trzmiel": {"type": "bob", "amplitude": 4, "duration": 800}}
ANIM.update({f"lby_{k}": {"type": "arc", "amplitude": 36 + k * 8, "dx": 34 + k * 14, "dy": 28, "spin": 240, "duration": 1900 + k * 300, "phase": round(k * 0.33, 2)}
             for k in range(len(BURRS))})
EXTRA = {"dzieci": {"frames": ["dzieci_a", "dzieci_b"]}}
COMMENTS = {**{f"lby_{k}": "ścięty kolczasty łeb lecący łukiem (# pokaz: bitwa)" for k in range(3)}, "tlo": "łąka i miedza, w oddali chałupy i lipa", "chmury": "chmury jak koń i okręt (dryfują)",
            "wroble": "spłoszone wróble (# pokaz: bitwa)", "chwasty": "gorysze, osty i pokrzywy (kołyszą się)",
            "dzieci_a": "dzieci z kijami w górze (# pokaz: bitwa, klatka 1)", "dzieci_b": "dzieci tną kijami (# pokaz: bitwa, klatka 2)",
            "motyl": "motyl krążący nad chwastami",
            "przod": "pierwszy plan: trawa", "rumianki": "rumianki (kołyszą się)", "trzmiel": "trzmiel"}

if __name__ == "__main__":
    if sys.argv[1] == "--master":
        hide = set() if len(sys.argv) > 2 and sys.argv[2] == "wszystko" else set(REVEAL)
        print(master(L, [EXTRA.get(n, {}).get("frames", [n])[0] for n in ORDER if n not in hide]))
    else:
        write_layers(sys.argv[1], "bg_laka", "wojna z chwastami", L, list(L.keys()), COMMENTS)
        import bgjson
        bgjson.upsert("laka_bitwa", bgjson.entry("bg_laka", ORDER, L, ANIM, REVEAL, EXTRA))
