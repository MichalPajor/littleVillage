# Generator tla "chata" (prolog, strony po nocy z topielcem) w trzech wariantach miejsca: las / mokradla / jezioro.
# Niebo i otoczenie wspolne z tlem budowy (budowa.py); tu chata ze strzecha, szalas i warstwy odslaniane tekstem:
#   strzecha_szczyt — ostatni pas strzechy przy kalenicy ("# pokaz: dach")
#   slady           — dlugie slady topielca i krew w trawie ("# pokaz: slady")
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/chata.py src/LittleVillage/Resources/Images   -> pliki bg_chata_*.svg
#   python3 tools/Backgrounds/chata.py --master las > podglad.svg          -> podglad (las|mokradla|jezioro)
import sys, os, importlib.util
from common import *

_spec = importlib.util.spec_from_file_location("budowa", os.path.join(os.path.dirname(os.path.abspath(__file__)), "budowa.py"))
budowa = importlib.util.module_from_spec(_spec)
_spec.loader.exec_module(budowa)

L = {}
X0, X1, Y_BOT, LH = 120, 270, 392, 12      # zrab chaty — te same wymiary co na placu budowy
APEX = (195, 238)

# ---------- CHATA: zrab z bali, drzwi, okienko, strzecha bez ostatniego pasa przy kalenicy
c = ['<path d="M-10 262C70 252 150 258 230 254C300 250 350 256 400 252V470H-10Z" fill="#EDEBE6" stroke-width="3.4"/>']
for i in range(7):
    y = Y_BOT - LH * (i + 1)
    ext = 9 if i % 2 == 0 else 4
    segs = [(X0 - ext, 182), (210, X1 + ext)] if i < 4 else [(X0 - ext, X1 + ext)]
    for (a, b) in segs:
        c.append(f'<rect x="{a}" y="{y}" width="{b - a}" height="{LH}" rx="6" fill="#FFFFFF" stroke-width="2.4"/>')
        c.append(f'<path d="M{a + 10} {y + LH * 0.55:.1f}H{b - 12}" fill="none" stroke-width="0.9"/>')
    if ext == 9:
        for cx in (X0 - 4, X1 + 4):
            c.append(f'<circle cx="{cx}" cy="{y + LH / 2}" r="{LH / 2 - 0.5}" fill="#FFFFFF" stroke-width="2"/>')
            c.append(f'<circle cx="{cx}" cy="{y + LH / 2}" r="2" fill="none" stroke-width="1"/>')
c.append(f'<rect x="182" y="{Y_BOT - LH * 4}" width="28" height="{LH * 4}" fill="#000000" stroke-width="2"/>')
c.append(f'<rect x="176" y="{Y_BOT - LH * 4 - 3}" width="40" height="5" fill="#FFFFFF" stroke-width="2"/>')
c.append('<rect x="232" y="352" width="20" height="14" fill="#000000" stroke-width="2"/>')
c.append('<path d="M242 352V366M232 359H252" fill="none" stroke="#FFFFFF" stroke-width="1.6"/>')
# strzecha: gruby, kreskowany trojkat z okapem; pod kalenica odkryte krokwie (brakujacy pas)
c.append(f'<path d="M104 314L{APEX[0]} {APEX[1]}L286 314C266 320 246 314 226 320C206 314 186 320 166 314C146 320 124 314 104 314Z" fill="url(#hatch)" stroke-width="3.4"/>')
for k in range(11):
    xa = 112 + k * 16
    c.append(f'<path d="M{xa} 315L{APEX[0] + (xa - APEX[0]) * 0.62:.0f} {APEX[1] + 48 - abs(xa - APEX[0]) * 0.1:.0f}" fill="none" stroke-width="1.3"/>')
c.append(f'<path d="M156 271L{APEX[0]} {APEX[1]}L234 271Z" fill="#EDEBE6" stroke-width="2.4"/>')
c.append(f'<path d="M{APEX[0]} {APEX[1]}L166 263M{APEX[0]} {APEX[1]}L224 263M{APEX[0]} {APEX[1]}V271M168 271h54" fill="none" stroke-width="2.6"/>')
# drabina oparta o dach
c.append('<path d="M286 392L262 300M300 390L276 298" fill="none" stroke-width="2.6"/>')
for k in range(6):
    t = k / 5
    c.append(f'<line x1="{286 - 24 * t:.0f}" y1="{392 - 92 * t:.0f}" x2="{300 - 24 * t:.0f}" y2="{390 - 92 * t:.0f}" stroke-width="2.2"/>')
# szalas z galezi
c.append('<path d="M6 414L52 334L104 414Z" fill="url(#hatch)" stroke-width="3"/>')
c.append('<path d="M52 334L14 414M52 334L34 414M52 334L72 414M52 334L92 414M44 340l-14-8M60 340l12-9M52 334l-4-12M52 334l6-11" fill="none" stroke-width="2"/>')
c.append('<path d="M38 414L52 380L66 414Z" fill="#000000" stroke-width="2"/>')
# sterta trzciny pod sciana (resztka po kryciu dachu)
for (sx, sy) in [(306, 392), (318, 394), (330, 392), (342, 394)]:
    c.append(f'<path d="M{sx - 6} {sy}L{sx - 2} {sy - 44}L{sx + 2} {sy - 44}L{sx + 6} {sy}Z" fill="url(#hatchDense)" stroke-width="1.8"/>')
    c.append(f'<path d="M{sx - 5} {sy - 24}h10" fill="none" stroke-width="2"/>')
# pien do ciosania i wiory
c.append('<path d="M236 424L239 404C242 398 264 398 268 404L270 424Z" fill="#FFFFFF" stroke-width="3"/>')
c.append('<ellipse cx="253" cy="403" rx="15" ry="4.5" fill="#EDEBE6" stroke-width="2.4"/>')
c.append('<ellipse cx="253" cy="403" rx="7" ry="2" fill="none" stroke-width="1.2"/>')
for (wx, wy, r) in [(214, 412, 20), (226, 420, -30), (282, 414, 50), (200, 424, 10)]:
    c.append(f'<path d="M{wx} {wy}l7-2l1 3z" fill="#FFFFFF" stroke-width="1.3" transform="rotate({r} {wx} {wy})"/>')
L["chata"] = (0, 230, 390, 246, group(c))

# ostatni pas strzechy przy kalenicy — odslaniany zdaniem "Ostatnie snopy trzciny ulozyl..."
L["strzecha_szczyt"] = (150, 228, 90, 50, group([
    f'<path d="M154 272L{APEX[0]} {APEX[1] - 2}L236 272C222 276 208 272 195 276C182 272 168 276 154 272Z" fill="url(#hatch)" stroke-width="3"/>',
    *[f'<path d="M{xa} 273L{APEX[0] + (xa - APEX[0]) * 0.35:.0f} {APEX[1] + 10}" fill="none" stroke-width="1.2"/>' for xa in range(162, 232, 12)],
    f'<path d="M{APEX[0] - 10} {APEX[1] + 4}L{APEX[0]} {APEX[1] - 4}L{APEX[0] + 10} {APEX[1] + 4}" fill="none" stroke-width="3.4"/>']))

# dlugie, waskie slady (za dlugie jak na zwierze) i krew — pas trawy miedzy chata a oknem z tekstem
# (okno zaslania plotno ponizej y~430), od zarosli przy szalasie w strone mokradel (w prawo)
TRACK = 0.72
s = []
for k, (x, y) in enumerate([(26, 424), (58, 416), (90, 426), (122, 418), (154, 427), (186, 419), (290, 418), (322, 427), (354, 419), (384, 428)]):
    rot = -8 if k % 2 else 8
    t = f"rotate({rot} {x} {y}) translate({x} {y}) scale({TRACK}) translate({-x} {-y})"
    s.append(f'<path d="M{x} {y}c-2-8 0-20 4-22c4 2 6 14 4 22c-2 3-6 3-8 0z" fill="#000000" stroke="none" transform="{t}"/>')
    for dx in (-3, 1, 5):
        s.append(f'<path d="M{x + dx} {y - 22}l{dx * 0.3:.1f} -7" fill="none" stroke-width="2" transform="{t}"/>')
blood = '<g fill="#A8101A" filter="url(#ink)">' + "".join(
    f'<ellipse cx="{x}" cy="{y}" rx="{r}" ry="{r * 0.6:.1f}"/>' for (x, y, r) in
    [(42, 426, 2.8), (74, 420, 2.2), (106, 428, 3.2), (138, 421, 2.4), (170, 428, 2.8), (306, 421, 2.6), (338, 428, 3), (370, 422, 2.2)]) + '</g>'
L["slady"] = (0, 392, 390, 42, group(s) + "\n" + blood)

# rodzina przed progiem nowej chaty (prolog, powrot z miasta) — odslaniana: "# pokaz: rodzina"
import postacie
L["rodzina"] = (120, 330, 140, 80, group([postacie.man(154, 404, 0.66, hat=True), postacie.child(234, 402, 0.7, arm="l8 -8"),
                                          postacie.woman(198, 396, 0.62)]))

COMMENTS = {
    "rodzina": "Maciek, Marianna i Dobrosław przed progiem (odsłaniane: # pokaz: rodzina)",
    "chata": "chata z prawie gotową strzechą, drabina, szałas, sterta trzciny, pień",
    "strzecha_szczyt": "ostatni pas strzechy (odsłaniany: # pokaz: dach)",
    "slady": "długie ślady topielca i krew (odsłaniane: # pokaz: slady)",
}
COMMON_TOP = ["niebo", "chmura", "wrony"]
VARIANTS = {
    "las": COMMON_TOP + ["tlo_las", "las_swierki"],
    "mokradla": COMMON_TOP + ["tlo_mokradla", "mokradla_mgla"],
    "jezioro": COMMON_TOP + ["tlo_jezioro", "jezioro_blyski"],
}
OWN = ["chata", "strzecha_szczyt"]
FAMILY = "rodzina"   # nad pierwszym planem, jak slady
PRZOD = "przod"   # pierwszy plan z tla budowy (pnie, lezacy pien, trawa)


def layers(variant):
    """Kolejnosc warstw wariantu: (prefiks pliku, nazwa)."""
    # slady leza na trawie pierwszego planu, wiec sa nad nim
    return [("bg_budowa", n) for n in VARIANTS[variant]] + [("bg_chata", n) for n in OWN] + [("bg_budowa", PRZOD), ("bg_chata", "slady"), ("bg_chata", FAMILY)]


if __name__ == "__main__":
    if sys.argv[1] == "--master":
        both = dict(budowa.L)
        both.update(L)
        print(master(both, VARIANTS[sys.argv[2]] + OWN + [PRZOD, "slady", FAMILY]))
    else:
        write_layers(sys.argv[1], "bg_chata", "chata", L, OWN + ["slady", FAMILY], COMMENTS)
