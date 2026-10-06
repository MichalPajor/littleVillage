# Generator tla "kapliczki" (zakonczenie B prologu — lata spokoju): Zapadlina za dnia, pola, chalupy, jezioro i las;
# trzy kapliczki przystrojone kwiatami — przy drodze z Bukowego Grzbietu, na skraju lasu i przy kladce nad mokradlami
# (# pokaz: kapliczki). Ptaki, chmury, kolyszace sie kwiaty.
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/kapliczki.py src/LittleVillage/Resources/Images   -> pliki bg_kapliczki_*.svg
#   python3 tools/Backgrounds/kapliczki.py --master [wszystko] > podglad.svg
import sys, random
from common import *

L = {}
rnd = random.Random(91)


def hut(x, y, s=1.0):
    w, h, r = 26 * s, 15 * s, 12 * s
    return (f'<rect x="{x}" y="{y}" width="{w:.1f}" height="{h:.1f}" fill="#FFFFFF" stroke-width="{2.2 * s:.1f}"/>'
            f'<path d="M{x - 4 * s:.1f} {y + 1}L{x + w / 2:.1f} {y - r:.1f}L{x + w + 4 * s:.1f} {y + 1}Z" fill="url(#hatch)" stroke-width="{2.2 * s:.1f}"/>'
            f'<rect x="{x + w - 9 * s:.1f}" y="{y + h - 9 * s:.1f}" width="{5 * s:.1f}" height="{9 * s:.1f}" fill="#000000" stroke-width="1"/>'
            f'<rect x="{x + 5 * s:.1f}" y="{y + 4 * s:.1f}" width="{5 * s:.1f}" height="{4 * s:.1f}" fill="#000000" stroke-width="1"/>')


t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M0 0H390V44C300 56 200 38 110 50C60 56 30 48 0 54Z" fill="url(#hatch)" stroke="none"/>',
     '<circle cx="312" cy="70" r="22" fill="#FFFFFF" stroke-width="3"/>',
     '<path d="M312 38v-8M312 102v8M280 70h-8M344 70h8M290 48l-6-6M334 48l6-6M290 92l-6 6M334 92l6 6" fill="none" stroke-width="2"/>']
# niecka: zbocza Bukowego Grzbietu, las po prawej, jezioro po lewej
t.append('<path d="M-10 150C60 130 120 150 190 170C260 150 330 128 400 140V440H-10Z" fill="#EDEBE6" stroke-width="3"/>')
for i in range(12):
    t.append(spruce(300 + i * 9, 166 - (i % 3) * 4, 30 + (i % 4) * 6, 14))
t.append('<path d="M10 236C40 222 110 222 134 236C140 250 80 256 30 252C14 250 6 244 10 236Z" fill="url(#water)" stroke-width="2.4"/>')
for x in range(16, 130, 10):
    t.append(reeds(x, 252, 0.8))
# mokradla w glebi, kladka
for (px, py, rx) in [(190, 196, 26), (232, 204, 18), (160, 210, 14)]:
    t.append(f'<ellipse cx="{px}" cy="{py}" rx="{rx}" ry="4" fill="#000000" stroke-width="1.4"/>')
t.append('<path d="M196 214L250 206M196 218L250 210" fill="none" stroke-width="1.8"/>')
# pola uprawne i chalupy
for i in range(7):
    y0 = 270 + i * 22
    t.append(f'<path d="M150 {y0}C220 {y0 - 6} 300 {y0 + 4} 400 {y0 - 2}" fill="none" stroke-width="1.1"/>')
for (x, y, s) in [(160, 240, 1.2), (226, 226, 1.0), (86, 290, 1.4), (300, 250, 1.1), (40, 196, 0.9)]:
    t.append(hut(x, y, s))
# droga z Bukowego Grzbietu
t.append('<path d="M126 440C132 380 160 330 176 290C190 252 196 220 200 180" fill="none" stroke-width="2.6"/>')
t.append('<path d="M196 440C186 380 196 330 204 290C210 252 210 220 206 180" fill="none" stroke-width="2.6"/>')
L["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))

L["chmury"] = (60, 70, 230, 40, group([f'<path d="{ribbon(70, 160, 84, 12, 4)}" fill="#FFFFFF" stroke-width="2"/>',
                                       f'<path d="{ribbon(200, 280, 96, 10, 3)}" fill="#FFFFFF" stroke-width="2"/>']))
L["ptaki"] = (120, 110, 150, 40, group([crow(130, 130, 0.45), crow(160, 122, 0.4), crow(240, 136, 0.45)]))


def shrine(x, y, s=1.0):
    """Kapliczka slupowa: bialy slup, daszek, wneka ze swietym, krzyzyk; u stop kwiaty."""
    g = [f'<path d="M{x - 6 * s:.1f} {y}V{y - 46 * s:.1f}H{x + 6 * s:.1f}V{y}Z" fill="#FFFFFF" stroke-width="{2.4 * s:.1f}"/>',
         f'<path d="M{x - 10 * s:.1f} {y - 46 * s:.1f}V{y - 72 * s:.1f}H{x + 10 * s:.1f}V{y - 46 * s:.1f}Z" fill="#FFFFFF" stroke-width="{2.4 * s:.1f}"/>',
         f'<path d="M{x - 6 * s:.1f} {y - 50 * s:.1f}V{y - 66 * s:.1f}Q{x} {y - 72 * s:.1f} {x + 6 * s:.1f} {y - 66 * s:.1f}V{y - 50 * s:.1f}Z" fill="#000000" stroke-width="1.4"/>',
         f'<circle cx="{x}" cy="{y - 62 * s:.1f}" r="{1.8 * s:.1f}" fill="#FFFFFF" stroke="none"/>',
         f'<path d="M{x - 16 * s:.1f} {y - 70 * s:.1f}L{x} {y - 86 * s:.1f}L{x + 16 * s:.1f} {y - 70 * s:.1f}Z" fill="url(#hatchDense)" stroke-width="{2.2 * s:.1f}"/>',
         f'<path d="M{x} {y - 86 * s:.1f}V{y - 98 * s:.1f}M{x - 4 * s:.1f} {y - 94 * s:.1f}H{x + 4 * s:.1f}" fill="none" stroke-width="{1.8 * s:.1f}"/>',
         f'<path d="M{x - 12 * s:.1f} {y - 44 * s:.1f}q{12 * s:.1f} {8 * s:.1f} {24 * s:.1f} 0" fill="none" stroke-width="1.4"/>']   # wianek
    for k in range(-3, 4):
        fx, fy = x + k * 5 * s, y + 2 + (k % 2) * 2
        g.append(f'<path d="M{fx:.1f} {fy:.1f}l0 {-8 * s:.1f}" fill="none" stroke-width="1.2"/>')
        g.append(f'<circle cx="{fx:.1f}" cy="{fy - 9 * s:.1f}" r="{2.4 * s:.1f}" fill="{"#FFFFFF" if k % 2 else "#000000"}" stroke-width="1"/>')
    return "".join(g)


L["kapliczki"] = (40, 150, 320, 280, group([shrine(84, 418, 1.3), shrine(282, 252, 0.8), shrine(214, 226, 0.55)]))

p = ['<path d="M-10 420H400V844H-10Z" fill="#EDEBE6" stroke="none"/>']
for i in range(20):
    p.append(grass(rnd.uniform(0, 390), rnd.uniform(436, 840), rnd.uniform(0.9, 1.3)))
L["przod"] = (0, 410, 390, 434, group(p))
kw = []
for i in range(14):
    x = 230 + i * 11
    y = 432 - (i % 3) * 5
    kw.append(f'<path d="M{x} {y}C{x - 1} {y - 10} {x + 2} {y - 18} {x + 1} {y - 24}" fill="none" stroke-width="1.4"/>')
    kw.append(f'<circle cx="{x + 1}" cy="{y - 27}" r="3" fill="{"#FFFFFF" if i % 2 else "#000000"}" stroke-width="1.2"/>')
L["kwiaty"] = (222, 396, 168, 40, group(kw))

ORDER = ["tlo", "chmury", "ptaki", "kapliczki", "przod", "kwiaty"]
REVEAL = {"kapliczki": "kapliczki"}
ANIM = {"chmury": {"type": "drift", "amplitude": 12, "duration": 17000},
        "ptaki": {"type": "bob", "amplitude": 5, "duration": 2400},
        "kwiaty": {"type": "sway", "amplitude": 2, "duration": 3400, "anchorX": 0.5, "anchorY": 1}}
COMMENTS = {"tlo": "Zapadlina za dnia: pola, chałupy, jezioro, las, droga z Bukowego Grzbietu", "chmury": "chmury (dryfują)",
            "ptaki": "ptaki", "kapliczki": "trzy kapliczki z kwiatami (# pokaz: kapliczki)", "przod": "pierwszy plan: trawa",
            "kwiaty": "polne kwiaty (kołyszą się)"}

if __name__ == "__main__":
    if sys.argv[1] == "--master":
        hide = set() if len(sys.argv) > 2 and sys.argv[2] == "wszystko" else set(REVEAL)
        print(master(L, [n for n in ORDER if n not in hide]))
    else:
        write_layers(sys.argv[1], "bg_kapliczki", "lata spokoju", L, ORDER, COMMENTS)
