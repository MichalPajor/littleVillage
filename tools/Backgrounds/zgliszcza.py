# Generator tla "zgliszcza": dzien, brzeg jeziora, w wysokich trzcinach zweglone bale i popiol po chacie wiedzmy.
# Warstwa odslaniana: maciek — Maciek kleczy przy belach i grzebie w popiele (# pokaz: maciek).
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/zgliszcza.py src/LittleVillage/Resources/Images   -> pliki bg_zgliszcza_*.svg
#   python3 tools/Backgrounds/zgliszcza.py --master [baza|wszystko] > podglad.svg
import sys, random
from common import *

L = {}
rnd = random.Random(31)

# ---------- NIEBO, daleki brzeg z bukami, tafla jeziora
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>'] + sky(150)
t.append('<path d="M-10 196C60 186 130 184 200 188C270 192 330 186 400 188V214H-10Z" fill="#EDEBE6" stroke-width="3"/>')
for (bx, by, br) in [(10, 196, 10), (32, 190, 12), (56, 186, 11), (80, 186, 12), (104, 188, 10), (250, 190, 9), (272, 186, 11), (296, 186, 10), (318, 190, 9)]:
    t.append(f'<circle cx="{bx}" cy="{by - br + 3}" r="{br}" fill="#FFFFFF" stroke-width="2.2"/>')
t.append('<path d="M-10 212C80 206 170 210 260 206C320 204 370 208 400 206V300H-10Z" fill="#FFFFFF" stroke-width="3.2"/>')
t.append('<path d="M-10 216H400V298H-10Z" fill="url(#water)" stroke="none"/>')
t.append('<path d="M40 236c16-3 30-3 46 0M170 252c14-3 28-3 40 0M280 232c16-3 30-3 44 0M110 276c12-2 24-2 34 0" fill="none" stroke="#FFFFFF" stroke-width="3.4"/>')
# brzeg i ziemia
t.append('<path d="M-10 296C80 288 170 294 260 290C320 288 370 292 400 290V440H-10Z" fill="#EDEBE6" stroke-width="3"/>')
L["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))

# ---------- ZGLISZCZA: zweglone bale (czarne, z bialymi pekniciami), popiol, sterczace slupy
z = ['<ellipse cx="200" cy="372" rx="120" ry="26" fill="url(#hatchDense)" stroke-width="2"/>']        # plama popiolu
beams = [(110, 360, 150, 12, -6), (150, 378, 130, 11, 9), (200, 352, 120, 11, -14), (96, 384, 90, 10, 22), (238, 386, 100, 10, -4)]
for (x, y, w, h, rot) in beams:
    z.append(f'<rect x="{x}" y="{y}" width="{w}" height="{h}" rx="{h / 2}" fill="#000000" stroke-width="2" transform="rotate({rot} {x + w / 2} {y + h / 2})"/>')
    for k in range(3):
        cx = x + w * (0.25 + 0.25 * k)
        z.append(f'<path d="M{cx:.0f} {y + 2}l3 {h - 4}" fill="none" stroke="#FFFFFF" stroke-width="1.2" transform="rotate({rot} {x + w / 2} {y + h / 2})"/>')
# sterczace slupy narozne, zweglone na szczytach — "jak zebra"
for (x, h) in [(126, 70), (168, 54), (262, 64), (296, 46)]:
    z.append(f'<path d="M{x - 5} 372L{x - 4} {372 - h}L{x + 1} {368 - h}L{x + 5} {374 - h}L{x + 6} 372Z" fill="#000000" stroke-width="2"/>')
    z.append(f'<path d="M{x - 1} {372 - h + 10}l2 14M{x + 2} {372 - h + 30}l-2 10" fill="none" stroke="#FFFFFF" stroke-width="1.2"/>')
NEAR = "translate(200 412) scale(1.4) translate(-200 -412)"   # zgliszcza i Maciek blizej widza


def near(items):
    return group([f'<g transform="{NEAR}">'] + items + ['</g>'])


L["zgliszcza"] = (34, 248, 352, 168, near(z))

# ---------- TRZCINY: wysokie, gesto po bokach i z przodu (zgliszcza w trzcinach)
r = []
for x in list(range(-6, 112, 7)) + list(range(298, 400, 7)):
    h = rnd.uniform(70, 120)
    base = 410 + rnd.uniform(-6, 6)
    r.append(f'<path d="M{x} {base:.0f}C{x + 2} {base - h * 0.5:.0f} {x - 2} {base - h * 0.8:.0f} {x + rnd.uniform(-6, 6):.0f} {base - h:.0f}" fill="none" stroke-width="1.8"/>')
    if rnd.random() < 0.35:
        r.append(cattail(x, base - h * 0.55, 1.4))
for x in range(60, 340, 9):
    h = rnd.uniform(20, 40)
    r.append(f'<path d="M{x} 422l-3 -{h * 0.7:.0f}M{x} 422l2 -{h:.0f}M{x} 422l6 -{h * 0.6:.0f}" fill="none" stroke-width="1.8"/>')
L["trzciny"] = (-12, 280, 414, 146, group(r))

# ---------- MACIEK kleczy przy belach, siekiera obok, grzebie w popiele (odslaniany)
mx, my = 214, 372
m = [f'<g stroke-width="2.4">'
     f'<path d="M{mx - 18} {my}L{mx - 4} {my - 4}L{mx + 2} {my}Z" fill="#000000"/>'                                # podudzia na ziemi
     f'<path d="M{mx - 2} {my - 2}C{mx - 6} {my - 18} {mx - 2} {my - 34} {mx + 6} {my - 40}L{mx + 16} {my - 36}C{mx + 14} {my - 24} {mx + 10} {my - 12} {mx + 8} {my}Z" fill="#000000"/>'
     f'<circle cx="{mx + 16}" cy="{my - 44}" r="6.5" fill="#000000"/>'
     f'<path d="M{mx + 6} {my - 48}h20l-5-5h-11z" fill="#000000"/>'
     f'<path d="M{mx + 12} {my - 30}l14 22M{mx + 8} {my - 26}l10 24" fill="none" stroke-width="3.4"/>'              # rece w popiele
     f'<path d="M{mx - 40} {my + 2}L{mx - 22} {my - 20}" fill="none" stroke-width="3"/>'                           # siekiera obok
     f'<path d="M{mx - 26} {my - 22}C{mx - 24} {my - 32} {mx - 12} {my - 30} {mx - 12} {my - 22}C{mx - 16} {my - 24} {mx - 20} {my - 22} {mx - 22} {my - 18}Z" fill="#FFFFFF" stroke-width="2"/>'
     f'</g>']
# jasny obrys, zeby czarna sylwetka nie zlewala sie z czarnymi belami
halo = [x.replace('<g stroke-width="2.4">', '<g stroke-width="6" stroke="#EDEBE6">') for x in m]
L["maciek"] = (146, 272, 108, 90, near(halo + m))

# ---------- PIERWSZY PLAN: trawa
p = ['<path d="M-10 420H400V844H-10Z" fill="#EDEBE6" stroke="none"/>']
for i in range(22):
    p.append(grass(rnd.uniform(0, 390), rnd.uniform(436, 840), rnd.uniform(0.9, 1.4)))
p.append('<path d="M0 700C40 740 60 800 70 844H0Z" fill="url(#hatchDense)" stroke="none"/>')
p.append('<path d="M390 690C350 740 340 800 336 844H390Z" fill="url(#hatchDense)" stroke="none"/>')
L["przod"] = (0, 410, 390, 434, group(p))

L["chmura"] = (60, 92, 150, 40, group([
    '<path d="M74 124C68 110 84 98 98 104C104 92 126 90 134 102C144 94 166 96 170 110C186 108 198 118 192 128H80C72 128 70 126 74 124Z" fill="#EDEBE6" stroke-width="3"/>']))

ORDER = ["tlo", "chmura", "zgliszcza", "maciek", "trzciny", "przod"]
REVEAL = {"maciek": "maciek"}
ANIM = {"chmura": {"type": "drift", "amplitude": 14, "duration": 18000},
        "trzciny": {"type": "sway", "amplitude": 0.6, "duration": 4200, "anchorX": 0.5, "anchorY": 1}}
COMMENTS = {
    "tlo": "dzień, jezioro, buki na drugim brzegu", "chmura": "chmura (dryfuje)",
    "zgliszcza": "zwęglone bale i popiół po chacie wiedźmy", "maciek": "Maciek klęczy i grzebie w popiele (# pokaz: maciek)",
    "trzciny": "wysokie trzciny wokół zgliszcz (kołyszą się)", "przod": "pierwszy plan: trawa",
}

if __name__ == "__main__":
    if sys.argv[1] == "--master":
        hide = set() if len(sys.argv) > 2 and sys.argv[2] == "wszystko" else set(REVEAL)
        print(master(L, [n for n in ORDER if n not in hide]))
    else:
        write_layers(sys.argv[1], "bg_zgliszcza", "zgliszcza", L, ORDER, COMMENTS)
