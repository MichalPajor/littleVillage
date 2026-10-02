# Generator tla "zarosla_noc": noc przy szalasie, mlody dziki pies o wilczym pysku wyglada spod krzaka.
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/zarosla.py src/LittleVillage/Resources/Images    -> pliki bg_zarosla_*.svg
#   python3 tools/Backgrounds/zarosla.py --master > podglad.svg
import sys, random, math
from common import *
import art

L = {}
rnd = random.Random(3)

# ---------- NIEBO NOCNE: gesto kreskowane, ksiezyc
n = ['<rect width="390" height="320" fill="#EDEBE6" stroke="none"/>',
     '<path d="M0 0H390V320H0Z" fill="url(#hatchNight)" stroke="none"/>',
     '<circle cx="282" cy="104" r="40" fill="#FFFFFF" stroke-width="4.4"/>',
     '<circle cx="268" cy="94" r="7" fill="none" stroke-width="2.2"/>',
     '<circle cx="294" cy="120" r="5" fill="none" stroke-width="2"/>',
     '<path d="M306 80C316 94 316 116 304 132" fill="none" stroke-width="1.8"/>']
for i in range(14):
    x, y = rnd.uniform(10, 380), rnd.uniform(14, 200)
    if math.hypot(x - 282, y - 104) > 56:
        n.append(f'<path d="M{x:.0f} {y - 3:.0f}v6M{x - 3:.0f} {y:.0f}h6" fill="none" stroke="#FFFFFF" stroke-width="1.6"/>')
L["niebo"] = (0, 0, 390, 320, n[0] + "\n" + group(n[1:]))

L["chmury"] = (180, 120, 200, 44, group([
    '<path d="M196 152C192 140 206 132 218 138C224 128 244 128 250 138C262 132 278 136 280 148H200C196 148 194 154 196 152Z" fill="#EDEBE6" stroke-width="2.6"/>',
    '<path d="M300 160C296 150 308 144 318 148C322 140 338 140 342 148C352 144 364 148 364 158H304Z" fill="#EDEBE6" stroke-width="2.4"/>']))

# ---------- SCIANA LASU w oddali (czarna sylwetka) i polana w poswiacie
f = ['<path d="M-10 320V250L2 234L8 246L18 214L28 242L38 224L48 250L60 206L72 244L84 220L96 248L110 210L122 246L134 228L146 252L160 200L174 244L186 222L198 250L212 212L226 246L238 226L250 254L266 214L280 248L292 228L306 256L320 210L334 246L346 226L358 252L372 216L386 246L400 230V320Z" fill="#000000" stroke-width="3"/>',
     '<path d="M-10 300C80 290 160 300 240 294C300 290 350 296 400 292V470H-10Z" fill="#EDEBE6" stroke-width="3.4"/>',
     '<path d="M-10 300C80 290 160 300 240 294C300 290 350 296 400 292V470H-10Z" fill="url(#hatch)" stroke="none"/>']
L["las"] = (0, 150, 390, 290, group(['<g transform="translate(0 -44)">'] + f + ['</g>']))
L["oczy_las"] = (126, 222, 30, 14, group([
    '<ellipse cx="134" cy="229" rx="3.6" ry="2" fill="#FFFFFF" stroke="none"/>',
    '<ellipse cx="146" cy="229" rx="3.6" ry="2" fill="#FFFFFF" stroke="none"/>']))

# ---------- KRZAKI: duze, czarne, o postrzepionych brzegach
def bush(cx, cy, rx, ry, seed):
    r = random.Random(seed)
    pts = []
    steps = 22
    for i in range(steps + 1):
        a = math.pi + math.pi * i / steps          # gorna polowa elipsy
        rr = 1 + r.uniform(-0.08, 0.12)
        x = cx + rx * rr * math.cos(a)
        y = cy + ry * rr * math.sin(a)
        pts.append((x, y))
    d = f"M{cx - rx:.0f} {cy + 6:.0f}"
    for i in range(1, len(pts)):
        (xa, ya), (xb, yb) = pts[i - 1], pts[i]
        mx, my = (xa + xb) / 2, (ya + yb) / 2
        dx, dy = mx - cx, my - cy
        k = 1.18
        d += f" Q{cx + dx * k:.0f} {cy + dy * k:.0f} {xb:.0f} {yb:.0f}"
    d += f" L{cx + rx:.0f} {cy + 6:.0f} Z"
    return d

k = []
k.append(f'<path d="{bush(92, 404, 132, 126, 1)}" fill="#000000" stroke-width="3"/>')
k.append(f'<path d="{bush(384, 414, 66, 84, 2)}" fill="#000000" stroke-width="3"/>')
# liscie-blyski na krzakach w swietle ksiezyca
for i in range(30):
    x, y = rnd.uniform(-10, 210), rnd.uniform(290, 400)
    if ((x - 92) / 132) ** 2 + ((y - 404) / 126) ** 2 < 0.8:
        k.append(f'<path d="M{x:.0f} {y:.0f}q4 -3 8 0" fill="none" stroke="#FFFFFF" stroke-width="1.6"/>')
for i in range(16):
    x, y = rnd.uniform(320, 400), rnd.uniform(336, 408)
    if ((x - 384) / 66) ** 2 + ((y - 414) / 84) ** 2 < 0.8:
        k.append(f'<path d="M{x:.0f} {y:.0f}q4 -3 8 0" fill="none" stroke="#FFFFFF" stroke-width="1.6"/>')

# ---------- PIES: mlody, chudy, dlugi waski pysk, sterczace uszy; wychyla sie spod krzaka (w prawo)
dog = []
# tulow czesciowo schowany w krzaku, widoczne zebra
dog.append('<path d="M150 432C150 412 166 400 190 398C204 398 214 404 220 414L222 436Z" fill="#EDEBE6" stroke-width="2.8"/>')
dog.append('<path d="M168 412c4 6 4 14 2 20M180 408c4 7 4 16 2 24M192 406c4 8 4 18 2 26" fill="none" stroke-width="1.6"/>')
# przednie lapy za duze do reszty ciala
dog.append('<path d="M204 432l-2 -18M216 432l2 -18" fill="none" stroke-width="6"/>')
dog.append('<path d="M196 434c2 -4 10 -4 12 0M210 434c2 -4 10 -4 12 0" fill="#EDEBE6" stroke-width="2.4"/>')
# szyja i glowa z dlugim pyskiem
dog.append('<path d="M206 410C212 392 222 380 236 376L246 380C256 378 270 380 284 386C288 388 288 392 284 394C272 396 258 398 248 402C240 408 232 414 222 418Z" fill="#EDEBE6" stroke-width="2.8"/>')
dog.append('<path d="M232 386C240 384 250 386 262 388" fill="none" stroke-width="1.4"/>')
dog.append('<path d="M228 404l8-3M226 410l7-2" fill="none" stroke-width="1.2"/>')
# cien dolnej szczeki i policzka
dog.append('<path d="M248 402C258 398 272 396 284 394C276 400 262 404 250 406Z" fill="url(#hatchDense)" stroke-width="1.4"/>')
dog.append('<path d="M226 398c6-6 14-8 22-6" fill="none" stroke-width="1.4"/>')
# czarne, migdalowe oko (blysk w warstwie 'slepia')
dog.append('<path d="M246 387C249 383 256 383 259 387C256 390 249 390 246 387Z" fill="#000000" stroke-width="1.2"/>')
# nos i uchylony pysk (warczy)
dog.append('<path d="M281 384c4 0 6 3 4 6c-2 2-5 1-6-1z" fill="#000000" stroke-width="1.6"/>')
dog.append('<path d="M262 395l4 3l3-3l3 3l3-3" fill="none" stroke-width="1.4"/>')
# sterczace uszy
dog.append('<path d="M232 380L230 356L244 374Z" fill="#EDEBE6" stroke-width="2.6"/>')
dog.append('<path d="M242 378L246 354L256 376Z" fill="#EDEBE6" stroke-width="2.6"/>')
dog.append('<path d="M234 374L233 362M246 372L248 362" fill="none" stroke-width="1.4"/>')
# kreskowany cien na grzbiecie
dog.append('<path d="M150 432C150 412 166 400 190 398C178 404 170 414 168 432Z" fill="url(#hatchDense)" stroke="none"/>')
# galazki krzaka zachodzace na psa (jest "w krzakach")
dog.append('<path d="M150 400c10 8 16 18 18 34M160 392c8 4 18 6 26 4M140 420c10-2 18 0 24 6" fill="none" stroke-width="2.6"/>')
for (lx, ly, rot) in [(160, 398, 20), (182, 394, -10), (168, 422, 40), (150, 410, -30)]:
    dog.append(f'<path d="M{lx} {ly}c4-6 12-6 14 0c-4 4-10 4-14 0z" fill="#000000" stroke-width="1.4" transform="rotate({rot} {lx} {ly})"/>')
L["krzaki"] = (0, 260, 400, 200, group(k))

# pies — rysunek autora (assets/wilczek.svg), siedzi w przerwie miedzy krzakami
L["pies"] = (200, 292, 140, 144, art.sitting("translate(208 300) scale(0.3)", skip=("cień",)))

# blyszczace slepia psa (migocza w swietle ksiezyca)
# ---------- PIERWSZY PLAN: mokra trawa w poswiacie, slady prowadzace do krzaka
p = ['<path d="M-10 436C80 428 180 436 260 430C320 426 360 432 400 430V844H-10Z" fill="#EDEBE6" stroke-width="3"/>',
     '<path d="M-10 436C80 428 180 436 260 430C320 426 360 432 400 430V844H-10Z" fill="url(#hatch)" stroke="none" opacity="0.55"/>']
for i in range(26):
    p.append(grass(rnd.uniform(0, 390), rnd.uniform(450, 840), rnd.uniform(0.9, 1.4)))
for i, (x, y) in enumerate([(210, 470), (222, 500), (206, 534), (224, 568), (208, 604), (226, 640), (210, 678)]):
    p.append(f'<ellipse cx="{x}" cy="{y}" rx="4" ry="5.5" fill="#000000" stroke="none"/>')
    for (dx, dy) in [(-4, -7), (0, -9), (4, -7)]:
        p.append(f'<circle cx="{x + dx}" cy="{y + dy}" r="1.8" fill="#000000" stroke="none"/>')
p.append('<path d="M0 690C40 740 60 800 70 844H0Z" fill="url(#hatchNight)" stroke="none"/>')
p.append('<path d="M390 680C350 740 340 800 336 844H390Z" fill="url(#hatchNight)" stroke="none"/>')
L["przod"] = (0, 420, 390, 424, group(p))

ORDER = ["niebo", "chmury", "las", "oczy_las", "krzaki", "pies", "przod"]
COMMENTS = {
    "niebo": "nocne niebo z księżycem i gwiazdami", "chmury": "chmury przed księżycem (dryfują)",
    "las": "ściana lasu i polana w poświacie", "oczy_las": "oczy w lesie (mrugają)",
    "krzaki": "krzaki", "pies": "młody pies między krzakami (rysunek autora: assets/wilczek.svg)", "przod": "pierwszy plan: mokra trawa, ślady łap",
}

if __name__ == "__main__":
    if sys.argv[1] == "--master":
        print(master(L, ORDER))
    else:
        write_layers(sys.argv[1], "bg_zarosla", "zarośla nocą", L, ORDER, COMMENTS)
