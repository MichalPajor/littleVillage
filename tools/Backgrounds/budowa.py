# Generator tla "budowa chaty" w trzech wariantach (las / mokradla / jezioro).
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/budowa.py src/LittleVillage/Resources/Images     -> pliki bg_budowa_*.svg
#   python3 tools/Backgrounds/budowa.py --master las > podglad.svg             -> podglad wariantu (las|mokradla|jezioro)
# Polozenie i animacje warstw: src/LittleVillage/Resources/Raw/backgrounds.json (budowa_las, budowa_mokradla, budowa_jezioro).
import sys, random
from common import *

L = {}

# ---------- NIEBO (wspolne)
t = ['<rect width="390" height="270" fill="#EDEBE6" stroke="none"/>']
t += sky(140)
t.append('<circle cx="86" cy="74" r="22" fill="#FFFFFF" stroke-width="3.6"/>')
t.append('<path d="M54 74h-9M118 74h9M86 42v-9M63 51l-7-7M109 51l7-7" fill="none" stroke-width="2.4"/>')
L["niebo"] = (0, 0, 390, 270, t[0] + "\n" + group(t[1:]))

L["chmura"] = (190, 92, 150, 40, group([
    '<path d="M204 124C198 110 214 98 228 104C234 92 256 90 264 102C274 94 296 96 300 110C316 108 328 118 322 128H210C202 128 200 126 204 124Z" fill="#EDEBE6" stroke-width="3"/>']))

L["wrony"] = (196, 40, 110, 44, group([crow(206, 56), crow(250, 70, 0.8), crow(282, 50, 0.7)]))

# ---------- TLO ZALEZNE OD MIEJSCA
rnd = random.Random(5)
# las: sciana boru tuz za polana
f = ['<path d="M-10 270V176C60 170 140 166 220 168C300 170 360 166 400 170V270Z" fill="url(#hatchDense)" stroke-width="2"/>']
for (base, h, w) in [(196, 60, 24), (222, 76, 30), (250, 92, 36), (276, 104, 40)]:
    xx = -14 + rnd.uniform(0, 10)
    while xx < 404:
        f.append(spruce(round(xx, 1), base + rnd.uniform(-3, 3), h * rnd.uniform(0.85, 1.12), w * rnd.uniform(0.9, 1.1)))
        xx += w * rnd.uniform(0.8, 1.0)
L["tlo_las"] = (0, 100, 390, 190, group(f))
L["las_swierki"] = (300, 120, 90, 170, group([spruce(318, 284, 150, 40), spruce(364, 278, 132, 36)]))

# mokradla: plaska podmokla laka z oczkami wody, palki, karlowate krzaki
m = ['<path d="M-10 270V186C40 176 90 172 140 176C200 180 260 172 320 174C350 175 380 172 400 174V270Z" fill="#EDEBE6" stroke-width="3"/>']
for (bx, by, br) in [(300, 176, 8), (318, 170, 10), (338, 167, 9), (358, 168, 10), (378, 172, 8)]:
    m.append(f'<circle cx="{bx}" cy="{by - br + 2}" r="{br}" fill="#FFFFFF" stroke-width="2.2"/>')
for (px, py, rx, ry) in [(60, 210, 34, 6), (150, 200, 26, 5), (232, 214, 38, 7), (320, 204, 30, 5.5), (110, 238, 22, 4.5), (290, 240, 26, 5), (24, 236, 18, 4)]:
    m.append(f'<ellipse cx="{px}" cy="{py}" rx="{rx}" ry="{ry}" fill="#000000" stroke-width="1.6"/>')
    m.append(f'<line x1="{px - rx * 0.5:.1f}" y1="{py - ry * 0.3:.1f}" x2="{px - rx * 0.1:.1f}" y2="{py - ry * 0.3:.1f}" stroke="#FFFFFF" stroke-width="1.4"/>')
for i in range(26):
    m.append(reeds(rnd.uniform(0, 390), rnd.uniform(196, 262), rnd.uniform(0.9, 1.3)))
for i in range(12):
    m.append(cattail(rnd.uniform(4, 386), rnd.uniform(200, 262), rnd.uniform(1.0, 1.4)))
for (sx, sy) in [(190, 230), (44, 222), (356, 226), (260, 196)]:
    m.append(f'<path d="M{sx} {sy}c-7-2-8-11-2-13c1-6 10-7 12-1c6 0 7 8 1 10c0 5-7 6-11 4z" fill="#FFFFFF" stroke-width="1.8"/>')
L["tlo_mokradla"] = (0, 150, 390, 130, group(m))
L["mokradla_mgla"] = (-30, 216, 330, 34, group([
    f'<path d="{ribbon(-14, 200, 224, 8, 3)}" fill="#EDEBE6" stroke-width="1.9"/>',
    f'<path d="{ribbon(120, 290, 238, 6, 2)}" fill="#EDEBE6" stroke-width="1.6"/>']))

# jezioro: szeroka tafla, daleki brzeg z bukami, trzciny przy brzegu
j = ['<path d="M-10 270V178C50 168 110 164 170 168C240 172 320 166 400 170V270Z" fill="#EDEBE6" stroke-width="3"/>']
for (bx, by, br) in [(14, 176, 9), (34, 170, 11), (56, 166, 10), (78, 166, 11), (100, 168, 9), (230, 172, 8), (250, 168, 9), (270, 168, 8)]:
    j.append(f'<circle cx="{bx}" cy="{by - br + 2}" r="{br}" fill="#FFFFFF" stroke-width="2.2"/>')
j.append('<path d="M-10 196C80 188 170 190 250 186C320 184 360 188 400 186V262H-10Z" fill="#FFFFFF" stroke-width="3.2"/>')
j.append('<path d="M-10 200H400V258H-10Z" fill="url(#water)" stroke="none"/>')
for i in range(30):
    j.append(reeds(rnd.uniform(0, 390), rnd.uniform(254, 268), rnd.uniform(1.0, 1.4)))
for i in range(10):
    j.append(cattail(rnd.uniform(4, 386), rnd.uniform(256, 268), rnd.uniform(1.1, 1.5)))
L["tlo_jezioro"] = (0, 140, 390, 140, group(j))
L["jezioro_blyski"] = (20, 204, 340, 44, group([
    '<path d="M40 214c14-3 28-3 42 0M150 226c12-3 24-3 36 0M250 212c14-3 26-3 38 0M90 240c10-2 20-2 30 0M300 236c10-2 20-2 30 0" fill="none" stroke="#FFFFFF" stroke-width="3.4"/>']))

# ---------- PLAC BUDOWY (wspolny): polana, zrab chaty z krokwiami, bale, pien do ciosania, szalas, Maciek
b = ['<path d="M-10 262C70 252 150 258 230 254C300 250 350 256 400 252V470H-10Z" fill="#EDEBE6" stroke-width="3.4"/>']
# zrab: 7 warstw bali, w dolnych czterech otwor na drzwi; konce bali wystaja na rogach
x0, x1, y_bot, lh = 120, 270, 392, 12
for i in range(7):
    y = y_bot - lh * (i + 1)
    ext = 9 if i % 2 == 0 else 4
    if i < 4:
        segs = [(x0 - ext, 182), (210, x1 + ext)]
    else:
        segs = [(x0 - ext, x1 + ext)]
    for (a, c) in segs:
        b.append(f'<rect x="{a}" y="{y}" width="{c - a}" height="{lh}" rx="6" fill="#FFFFFF" stroke-width="2.4"/>')
        b.append(f'<path d="M{a + 10} {y + lh * 0.55:.1f}H{c - 12}" fill="none" stroke-width="0.9"/>')
    if ext == 9:
        for cx in (x0 - 4, x1 + 4):
            b.append(f'<circle cx="{cx}" cy="{y + lh / 2}" r="{lh / 2 - 0.5}" fill="#FFFFFF" stroke-width="2"/>')
            b.append(f'<circle cx="{cx}" cy="{y + lh / 2}" r="2" fill="none" stroke-width="1"/>')
b.append(f'<rect x="182" y="{y_bot - lh * 4}" width="28" height="{lh * 4}" fill="#000000" stroke-width="2"/>')
b.append(f'<rect x="176" y="{y_bot - lh * 4 - 3}" width="40" height="5" fill="#FFFFFF" stroke-width="2"/>')
# krokwie i kalenica (dach jeszcze odkryty)
b.append('<path d="M116 310L195 246L274 310M136 310L195 262L254 310M195 246V262" fill="none" stroke-width="3.4"/>')
b.append('<path d="M150 298l10 0M226 298l10 0" fill="none" stroke-width="2"/>')
# sterta bali (widac konce ze slojami)
for (cx, cy) in [(292, 388), (314, 388), (336, 388), (303, 370), (325, 370), (314, 352)]:
    b.append(f'<circle cx="{cx}" cy="{cy}" r="10" fill="#FFFFFF" stroke-width="2.4"/>')
    b.append(f'<circle cx="{cx}" cy="{cy}" r="5" fill="none" stroke-width="1.1"/>')
    b.append(f'<circle cx="{cx}" cy="{cy}" r="1.3" fill="#000000" stroke="none"/>')
# pien do ciosania i wiory
b.append('<path d="M236 424L239 404C242 398 264 398 268 404L270 424Z" fill="#FFFFFF" stroke-width="3"/>')
b.append('<ellipse cx="253" cy="403" rx="15" ry="4.5" fill="#EDEBE6" stroke-width="2.4"/>')
b.append('<ellipse cx="253" cy="403" rx="7" ry="2" fill="none" stroke-width="1.2"/>')
for (wx, wy, r) in [(214, 412, 20), (226, 420, -30), (282, 414, 50), (200, 424, 10), (290, 424, -15), (160, 410, 35)]:
    b.append(f'<path d="M{wx} {wy}l7-2l1 3z" fill="#FFFFFF" stroke-width="1.3" transform="rotate({r} {wx} {wy})"/>')
# szalas z galezi (zerdzie o pien, galezie, ciemne wejscie) + tobolek na kiju
b.append('<path d="M6 414L52 334L104 414Z" fill="url(#hatch)" stroke-width="3"/>')
b.append('<path d="M52 334L14 414M52 334L34 414M52 334L72 414M52 334L92 414M44 340l-14-8M60 340l12-9M52 334l-4-12M52 334l6-11" fill="none" stroke-width="2"/>')
b.append('<path d="M38 414L52 380L66 414Z" fill="#000000" stroke-width="2"/>')
b.append('<path d="M10 360q8 -4 16 0M78 372q8 -4 16 0M20 392q8-4 16 0" fill="none" stroke-width="1.6"/>')
b.append('<line x1="108" y1="414" x2="104" y2="352" stroke-width="3"/>')
b.append('<path d="M104 356C96 356 94 368 100 372C106 376 114 372 113 364C112 358 108 355 104 356Z" fill="url(#hatch)" stroke-width="2.2"/>')
# Maciek z profilu niesie bal na ramieniu
mx, my = 362, 424
b.append(f'<g stroke-width="2.4">'
         f'<path d="M{mx - 6} {my}l3-24h5l-1 24zM{mx + 6} {my}l-6-24h-4l4 24z" fill="#000000"/>'
         f'<path d="M{mx - 11} {my - 22}C{mx - 13} {my - 36} {mx - 10} {my - 48} {mx - 4} {my - 52}H{mx + 6}C{mx + 10} {my - 46} {mx + 12} {my - 34} {mx + 10} {my - 22}Z" fill="#000000"/>'
         f'<circle cx="{mx + 1}" cy="{my - 58}" r="6.5" fill="#000000"/>'
         f'<path d="M{mx - 10} {my - 61}h22l-5-5h-12z" fill="#000000"/>'
         f'<rect x="{mx - 48}" y="{my - 58}" width="64" height="11" rx="5.5" fill="#FFFFFF" stroke-width="2.4" transform="rotate(-12 {mx} {my - 52})"/>'
         f'<circle cx="{mx - 47}" cy="{my - 45}" r="5" fill="#FFFFFF" stroke-width="2" transform="rotate(-12 {mx} {my - 52})"/>'
         f'<path d="M{mx + 4} {my - 46}l-10 -8" fill="none" stroke-width="3"/>'
         f'</g>')
L["plac"] = (0, 240, 390, 236, group(b))

# ---------- PIERWSZY PLAN: pnie po scietych drzewach, trawa, lezacy pien
p = ['<path d="M-10 430H400V844H-10Z" fill="#EDEBE6" stroke="none"/>']
for (cx, cy, r) in [(60, 520, 22), (300, 600, 26), (120, 720, 20)]:
    p.append(f'<path d="M{cx - r} {cy + 18}L{cx - r + 3} {cy}C{cx - r + 6} {cy - 8} {cx + r - 6} {cy - 8} {cx + r - 3} {cy}L{cx + r} {cy + 18}Z" fill="#FFFFFF" stroke-width="3"/>')
    p.append(f'<ellipse cx="{cx}" cy="{cy - 1}" rx="{r - 3}" ry="{r * 0.28:.1f}" fill="#EDEBE6" stroke-width="2.4"/>')
    p.append(f'<ellipse cx="{cx}" cy="{cy - 1}" rx="{r * 0.5:.1f}" ry="{r * 0.14:.1f}" fill="none" stroke-width="1.2"/>')
p.append('<path d="M170 500L360 470L366 488L176 520Z" fill="#FFFFFF" stroke-width="3"/>')
p.append('<path d="M190 506l40-6M250 494l50-8M210 512l60-9" fill="none" stroke-width="1.2"/>')
p.append('<ellipse cx="173" cy="510" rx="6" ry="10" fill="#FFFFFF" stroke-width="2.4" transform="rotate(-9 173 510)"/>')
for (gx, gy) in [(30, 470), (220, 560), (340, 520), (40, 640), (260, 680), (200, 780), (340, 760), (90, 600), (160, 640)]:
    p.append(grass(gx, gy))
p.append('<path d="M0 700C40 740 60 800 70 844H0Z" fill="url(#hatchDense)" stroke="none"/>')
p.append('<path d="M390 690C350 740 340 800 336 844H390Z" fill="url(#hatchDense)" stroke="none"/>')
L["przod"] = (0, 430, 390, 414, group(p))

COMMENTS = {
    "niebo": "niebo ze słońcem", "chmura": "chmura (dryfuje)", "wrony": "wrony (unoszą się)",
    "tlo_las": "wariant las: ściana boru za polaną", "las_swierki": "wariant las: świerki (kołyszą się)",
    "tlo_mokradla": "wariant mokradła: podmokła łąka, oczka wody, pałki", "mokradla_mgla": "wariant mokradła: mgła (dryfuje)",
    "tlo_jezioro": "wariant jezioro: tafla wody, trzciny, buki na drugim brzegu", "jezioro_blyski": "wariant jezioro: błyski na wodzie (dryfują)",
    "plac": "plac budowy: zrąb chaty, krokwie, bale, pień do ciosania, szałas z gałęzi, Maciek z balem",
    "przod": "pierwszy plan: pnie po ściętych drzewach, leżący pień, trawa",
}
VARIANTS = {
    "las": ["niebo", "chmura", "wrony", "tlo_las", "las_swierki", "plac", "przod"],
    "mokradla": ["niebo", "chmura", "wrony", "tlo_mokradla", "mokradla_mgla", "plac", "przod"],
    "jezioro": ["niebo", "chmura", "wrony", "tlo_jezioro", "jezioro_blyski", "plac", "przod"],
}

if __name__ == "__main__":
    if sys.argv[1] == "--master":
        print(master(L, VARIANTS[sys.argv[2]]))
    else:
        write_layers(sys.argv[1], "bg_budowa", "budowa chaty", L, list(L.keys()), COMMENTS)
