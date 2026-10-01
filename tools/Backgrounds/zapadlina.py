# Generator tla "zapadlina" (prolog). Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/zapadlina.py src/LittleVillage/Resources/Images      -> pliki warstw bg_zapadlina_*.svg
#   python3 tools/Backgrounds/zapadlina.py --master > podglad.svg                 -> caly obraz do podgladu
# Polozenie i animacje warstw: src/LittleVillage/Resources/Raw/backgrounds.json
# Generator tla "zapadlina": jedno SVG-master z grupami warstw + podzial na pliki warstw.
import sys, os, re
OUT = sys.argv[1] if len(sys.argv) > 1 else "."

DEFS = '''<filter id="ink" x="-5%" y="-5%" width="110%" height="110%">
<feTurbulence type="fractalNoise" baseFrequency="0.035" numOctaves="2" seed="7" result="n"/>
<feDisplacementMap in="SourceGraphic" in2="n" scale="3.2" xChannelSelector="R" yChannelSelector="G"/>
</filter>
<pattern id="hatch" width="7" height="7" patternUnits="userSpaceOnUse" patternTransform="rotate(-35)">
<line x1="0" y1="0" x2="0" y2="7" stroke="#000000" stroke-width="1.5"/>
</pattern>
<pattern id="hatchDense" width="4" height="4" patternUnits="userSpaceOnUse" patternTransform="rotate(-35)">
<line x1="0" y1="0" x2="0" y2="4" stroke="#000000" stroke-width="1.7"/>
</pattern>
<pattern id="water" width="9" height="5" patternUnits="userSpaceOnUse">
<line x1="0" y1="2.5" x2="5" y2="2.5" stroke="#000000" stroke-width="1.3"/>
</pattern>'''

G_OPEN = '<g filter="url(#ink)" stroke="#000000" stroke-linecap="round" stroke-linejoin="round">'

def hut(x, y, s=1.0, door_left=False):
    w, h, r = 26*s, 15*s, 12*s
    d = []
    d.append(f'<rect x="{x}" y="{y}" width="{w}" height="{h}" fill="#FFFFFF" stroke-width="{2.4*s:.1f}"/>')
    for i in (1, 2):
        yy = y + h*i/3
        d.append(f'<line x1="{x}" y1="{yy:.1f}" x2="{x+w}" y2="{yy:.1f}" stroke-width="{1*s:.1f}"/>')
    d.append(f'<path d="M{x-4*s:.1f} {y+1:.1f}L{x+w/2:.1f} {y-r:.1f}L{x+w+4*s:.1f} {y+1:.1f}Z" fill="url(#hatch)" stroke-width="{2.4*s:.1f}"/>')
    dx = x + (4*s if door_left else w - 9*s)
    d.append(f'<rect x="{dx:.1f}" y="{y+h-9*s:.1f}" width="{5*s:.1f}" height="{9*s:.1f}" fill="#000000" stroke-width="1"/>')
    wx = x + (w - 10*s if door_left else 5*s)
    d.append(f'<rect x="{wx:.1f}" y="{y+4*s:.1f}" width="{5*s:.1f}" height="{4*s:.1f}" fill="#000000" stroke-width="1"/>')
    return "\n".join(d)

def furrows(x, y, w, h, n, skew=0):
    out = [f'<path d="M{x} {y}L{x+w} {y+skew}L{x+w} {y+h+skew}L{x} {y+h}Z" fill="none" stroke-width="1.6"/>']
    for i in range(1, n):
        yy = y + h*i/n
        out.append(f'<line x1="{x+2}" y1="{yy:.1f}" x2="{x+w-2}" y2="{yy+skew:.1f}" stroke-width="1"/>')
    return "\n".join(out)

def reeds(x, y, k=1.0):
    return f'<path d="M{x} {y}l{-2*k:.1f} {-9*k:.1f}M{x} {y}l{1*k:.1f} {-11*k:.1f}M{x} {y}l{4*k:.1f} {-8*k:.1f}" fill="none" stroke-width="1.6"/>'

def cattail(x, y, k=1.0):
    return (f'<line x1="{x}" y1="{y}" x2="{x+1}" y2="{y-16*k:.1f}" stroke-width="1.4"/>'
            f'<rect x="{x-1.3:.1f}" y="{y-14*k:.1f}" width="2.6" height="{6*k:.1f}" rx="1.3" fill="#000000" stroke-width="0.8"/>')

def spruce(cx, base, h, w):
    # wysoka sosna/swierk z "pietrami"
    tiers = 5
    pts = []
    for i in range(tiers):
        t0 = base - h*i/tiers
        t1 = base - h*(i+1)/tiers - h*0.08
        ww = w*(1 - i/tiers)
        pts.append(f'M{cx-ww/2:.1f} {t0:.1f}L{cx:.1f} {t1:.1f}L{cx+ww/2:.1f} {t0:.1f}Z')
    trunk = f'<line x1="{cx}" y1="{base+8}" x2="{cx}" y2="{base-4}" stroke-width="4"/>'
    return trunk + f'<path d="{" ".join(pts)}" fill="#000000" stroke-width="2.4"/>'

layers = {}
import random
rnd = random.Random(11)

# ---------------- TLO
t = []
t.append('<rect width="390" height="430" fill="#EDEBE6" stroke="none"/>')
t.append('<path d="M0 0H390V60C300 80 210 50 130 72C80 86 40 68 0 82Z" fill="url(#hatchDense)" stroke="none"/>')
t.append('<path d="M0 82C40 68 80 86 130 72C210 50 300 80 390 60V112C310 132 220 104 140 124C80 140 40 118 0 134Z" fill="url(#hatch)" stroke="none"/>')
# blade wiosenne slonce
t.append('<circle cx="300" cy="78" r="26" fill="#FFFFFF" stroke-width="4"/>')
t.append('<path d="M262 78h-11M338 78h11M300 40v-11M273 51l-8-8M327 51l8-8" fill="none" stroke-width="2.5"/>')
# krawedz niecki + Bukowy Grzbiet (lewo) z koronami bukow
t.append('<path d="M-10 150C20 128 60 120 100 126C140 132 170 150 210 152C260 154 320 146 400 142V430H-10Z" fill="#EDEBE6" stroke-width="3.4"/>')
for (bx, by, br) in [(6,136,9),(24,128,11),(44,123,10),(64,121,12),(86,122,10),(106,126,9),(124,132,8)]:
    t.append(f'<circle cx="{bx}" cy="{by-br+3}" r="{br}" fill="#FFFFFF" stroke-width="2.4"/>')
    t.append(f'<path d="M{bx-br*0.45:.1f} {by-br+1:.1f}c3 3 6 3 9 0" fill="none" stroke-width="1.2"/>')
t.append('<path d="M12 150C40 142 80 140 118 144" fill="none" stroke-width="1.5" stroke-dasharray="5 6"/>')
# wewnetrzne zbocza: kreskowany cien zachodniego zbocza i luki warstwic
t.append('<path d="M-10 150C10 190 18 240 10 300C4 340 0 380 -10 410Z" fill="url(#hatch)" stroke="none"/>')
t.append('<path d="M-10 160C14 200 26 250 18 300C12 345 10 380 4 412" fill="none" stroke-width="2.2"/>')
t.append('<path d="M120 152C140 168 170 176 200 176" fill="none" stroke-width="1.6" stroke-dasharray="8 8"/>')
t.append('<path d="M40 330C80 362 140 384 210 388C250 390 290 384 320 376" fill="none" stroke-width="1.8" stroke-dasharray="9 9"/>')
# MOKRADLA na polnocy
for (px, py, rx, ry) in [(128,186,20,4.5),(170,180,14,3.6),(212,190,22,4.8),(150,202,12,3.2),(196,206,10,2.8),(232,204,9,2.6),(104,200,10,2.8)]:
    t.append(f'<ellipse cx="{px}" cy="{py}" rx="{rx}" ry="{ry}" fill="#000000" stroke-width="1.5"/>')
    t.append(f'<line x1="{px-rx*0.5:.1f}" y1="{py-ry*0.3:.1f}" x2="{px-rx*0.1:.1f}" y2="{py-ry*0.3:.1f}" stroke="#FFFFFF" stroke-width="1.2"/>')
for (rx_, ry_) in [(106,188),(118,180),(146,190),(160,184),(186,186),(200,180),(226,198),(140,210),(176,212),(96,210),(214,214),(240,190),(124,214)]:
    t.append(reeds(rx_, ry_, 0.9))
for (cx_, cy_) in [(114,194),(152,180),(184,198),(222,184),(166,214),(206,212),(236,212)]:
    t.append(cattail(cx_, cy_, 0.9))
for (sx, sy) in [(92,186),(246,210),(132,222)]:
    t.append(f'<path d="M{sx} {sy}c-6-2-7-9-2-11c1-5 8-6 10-1c5 0 6 7 1 9c0 4-6 5-9 3z" fill="#FFFFFF" stroke-width="1.6"/>')
    t.append(f'<line x1="{sx+3}" y1="{sy}" x2="{sx+3}" y2="{sy+5}" stroke-width="1.6"/>')
# JEZIORO na zachodzie
t.append('<ellipse cx="86" cy="276" rx="80" ry="33" fill="#FFFFFF" stroke-width="3.8"/>')
t.append('<ellipse cx="86" cy="276" rx="72" ry="27" fill="url(#water)" stroke="none"/>')
t.append('<path d="M40 266c14-3 28-3 42 0M94 284c12-3 24-3 36 0M60 296c10-2 20-2 28 0" fill="none" stroke="#FFFFFF" stroke-width="3.2"/>')
for (rx_, ry_) in [(14,268),(10,284),(20,300),(150,262),(162,274),(160,290),(142,304),(40,310),(120,310),(70,312)]:
    t.append(reeds(rx_, ry_, 1.1))
for (cx_, cy_) in [(18,276),(156,268),(150,300),(30,306),(96,314)]:
    t.append(cattail(cx_, cy_, 1.1))
# zweglone bale po dawnej chalupie (polnocno-zachodni brzeg)
t.append('<g stroke-width="1.8">'
         '<rect x="30" y="236" width="24" height="4.5" rx="2" fill="#000000" transform="rotate(-10 42 238)"/>'
         '<rect x="36" y="242" width="20" height="4.5" rx="2" fill="#000000" transform="rotate(12 46 244)"/>'
         '<rect x="26" y="246" width="16" height="4" rx="2" fill="#000000" transform="rotate(-22 34 248)"/>'
         '<path d="M58 238l3-8l2 9" fill="none" stroke-width="1.8"/>'
         '</g>')
# pola i sciezki
t.append(furrows(170, 318, 36, 14, 4, -2))
t.append(furrows(214, 286, 30, 12, 4, 1))
t.append(furrows(100, 350, 34, 13, 3, -1))
t.append(furrows(222, 366, 32, 12, 3, 2))
t.append('<path d="M140 346C160 336 182 336 198 326C214 316 224 306 236 300M198 326C206 340 214 350 228 360M198 326C192 346 186 360 178 378" fill="none" stroke-width="1.6" stroke-dasharray="4 6"/>')
# sciezka schodzaca od Macka z grzbietu w dol niecki
t.append('<path d="M86 418C104 404 110 392 128 386C146 380 150 368 164 360" fill="none" stroke-width="1.8" stroke-dasharray="5 6"/>')
# piec chalup daleko od siebie
t.append(hut(182, 294, 1.0))
t.append(hut(220, 262, 0.82, True))
t.append(hut(112, 326, 1.05, True))
t.append(hut(250, 336, 1.0))
t.append(hut(160, 356, 1.2))
# BOR na wschodzie: ciemne poszycie + pojedyncze swierki schodzace zboczem
t.append('<path d="M262 400C258 340 250 280 252 220C254 190 258 168 262 150L400 140V400Z" fill="url(#hatchDense)" stroke-width="2"/>')
rows = [(156, 22, 13), (176, 26, 14), (200, 32, 16), (228, 38, 18), (262, 46, 21), (300, 54, 24), (344, 62, 27), (392, 70, 30)]
for (base, h, w) in rows:
    left = 262 - (base - 150) * 0.05
    xx = left + rnd.uniform(0, 6)
    while xx < 404:
        hh = h * rnd.uniform(0.85, 1.15)
        t.append(spruce(round(xx, 1), base + rnd.uniform(-3, 3), hh, w * rnd.uniform(0.9, 1.1)))
        xx += w * rnd.uniform(0.85, 1.05)
layers["tlo"] = (0, 0, 390, 430, t)

# ---------------- OCZY w borze
o = ['<ellipse cx="318" cy="246" rx="4.2" ry="2.2" fill="#FFFFFF" stroke="none"/>',
     '<ellipse cx="330" cy="246" rx="4.2" ry="2.2" fill="#FFFFFF" stroke="none"/>',
     '<line x1="318" y1="244.6" x2="318" y2="247.4" stroke-width="1.4"/>',
     '<line x1="330" y1="244.6" x2="330" y2="247.4" stroke-width="1.4"/>']
layers["oczy"] = (308, 238, 32, 16, o)

# ---------------- WRONY
w = ['<path d="M190 44q6-7 12 0q6-7 12 0q-6-3-12 5q-6-8-12-5z" fill="#000000" stroke-width="1"/>',
     '<path d="M226 66q5-6 10 0q5-6 10 0q-5-2-10 4q-5-6-10-4z" fill="#000000" stroke-width="1"/>',
     '<path d="M162 72q4-4 8 0q4-4 8 0q-4-2-8 3q-4-5-8-3z" fill="#000000" stroke-width="1"/>']
layers["wrony"] = (156, 34, 96, 46, w)

# ---------------- SWIERKI na skraju boru (kolysza sie)
layers["swierk_a"] = (228, 236, 44, 176, [spruce(250, 396, 150, 40)])
layers["swierk_b"] = (254, 188, 40, 150, [spruce(274, 324, 124, 34)])

# ---------------- DYM
d = ['<path d="M200 292c-4-6 4-10 0-16c-4-6 4-10 0-16c-4-6 3-9 0-14" fill="none" stroke-width="2"/>',
     '<path d="M122 324c-4-6 4-10 0-16c-4-6 4-10 0-16c-3-5 3-8 0-12" fill="none" stroke-width="2"/>',
     '<path d="M180 354c-4-6 4-10 0-16c-4-6 4-10 0-16c-3-5 3-8 0-12" fill="none" stroke-width="1.8"/>']
layers["dym"] = (108, 236, 104, 120, d)

# ---------------- BLEDNE OGNIE nad mokradlami
f = []
for (fx, fy) in [(128, 170), (172, 164), (214, 174), (150, 188)]:
    f.append(f'<circle cx="{fx}" cy="{fy}" r="5" fill="#FFFFFF" stroke-width="1.4"/>')
    f.append(f'<circle cx="{fx}" cy="{fy}" r="1.7" fill="#000000" stroke="none"/>')
    f.append(f'<path d="M{fx-8} {fy}h-3M{fx+8} {fy}h3M{fx} {fy-8}v-3" fill="none" stroke-width="1.2"/>')
layers["ognie"] = (110, 148, 122, 50, f)

# ---------------- MGLA: wstegi w stylu chmur z makiety (nieprzezroczyste, z kontura)
def ribbon(x0, x1, y, thick, wav):
    n = 5
    step = (x1 - x0) / n
    top = f"M{x0} {y}"
    for i in range(n):
        xa = x0 + step * i + step / 2
        top += f" Q{xa:.0f} {y - wav if i % 2 == 0 else y + wav} {x0 + step * (i + 1):.0f} {y}"
    bot = f" C{x1 + 12} {y + thick * 0.5:.0f} {x1 + 4} {y + thick} {x1 - 10} {y + thick}"
    for i in range(n, 0, -1):
        xa = x0 + step * i - step / 2
        bot += f" Q{xa:.0f} {y + thick + (wav if i % 2 == 0 else -wav)} {x0 + step * (i - 1):.0f} {y + thick}"
    return top + bot + f" C{x0 - 12} {y + thick} {x0 - 12} {y} {x0} {y}Z"
m1 = [f'<path d="{ribbon(104, 262, 334, 9, 3)}" fill="#EDEBE6" stroke-width="2"/>',
      f'<path d="{ribbon(150, 300, 354, 7, 2)}" fill="#EDEBE6" stroke-width="1.8"/>']
layers["mgla_dol"] = (88, 326, 236, 42, m1)
m2 = [f'<path d="{ribbon(-10, 170, 246, 8, 3)}" fill="#EDEBE6" stroke-width="1.9"/>',
      f'<path d="{ribbon(110, 240, 226, 6, 2)}" fill="#EDEBE6" stroke-width="1.6"/>']
layers["mgla_gora"] = (-26, 218, 284, 42, m2)

# ---------------- PRZOD
p = []
p.append('<path d="M-10 420C50 404 120 412 190 406C260 400 330 412 400 404V844H-10Z" fill="#EDEBE6" stroke-width="4"/>')
p.append('<path d="M120 844C140 770 96 720 132 660C170 600 110 548 140 500C158 466 100 440 74 418" fill="none" stroke-width="3.6"/>')
p.append('<path d="M190 844C200 776 160 724 188 668C220 606 164 550 186 506C200 474 130 446 100 417" fill="none" stroke-width="3.6"/>')
p.append('<path d="M156 830C164 770 130 724 160 666M170 600C150 560 160 530 164 506" fill="none" stroke-width="1.8" stroke-dasharray="10 12"/>')
for (gx, gy) in [(40,480),(250,462),(330,530),(60,620),(300,650),(230,730),(30,770),(350,790),(270,570)]:
    p.append(f'<path d="M{gx} {gy}l-3-12M{gx} {gy}l2-14M{gx} {gy}l6-10" fill="none" stroke-width="2.2"/>')
p.append('<path d="M262 482c2-12 22-16 32-6c8 2 8 12 0 14h-30c-4 0-4-4-2-8z" fill="#FFFFFF" stroke-width="3"/>')
p.append('<path d="M272 478c6 2 12 2 18 0" fill="none" stroke-width="1.5"/>')
p.append('<path d="M18 552c2-10 18-12 24-4c6 2 6 10 0 11h-22c-3 0-3-4-2-7z" fill="#FFFFFF" stroke-width="2.6"/>')
# brudny snieg w cieniu zbocza — kreskowany brzeg = brud
for (sx, sy, sw, sh) in [(300, 440, 56, 12), (290, 612, 70, 16), (32, 690, 58, 14), (252, 770, 76, 18)]:
    p.append(f'<ellipse cx="{sx}" cy="{sy}" rx="{sw/2}" ry="{sh/2}" fill="#FFFFFF" stroke-width="1.8"/>')
    p.append(f'<path d="M{sx-sw/2+4:.0f} {sy+2}c{sw/4:.0f} 5 {sw/2:.0f} 5 {sw-8:.0f} 0" fill="none" stroke-width="1.4" stroke-dasharray="2 3"/>')
p.append('<path d="M0 700C40 740 60 800 70 844H0Z" fill="url(#hatchDense)" stroke="none"/>')
p.append('<path d="M390 690C350 740 340 800 336 844H390Z" fill="url(#hatchDense)" stroke="none"/>')
p.append('<path d="M330 412C360 432 380 462 390 482V404Z" fill="url(#hatch)" stroke="none"/>')
# MACIEK od tylu na grzbiecie
def maciek(mx, my, k):
    def P(x, y): return f"{mx + x * k:.1f} {my + y * k:.1f}"
    return (f'<g stroke-width="{2.4:.1f}">'
            f'<path d="M{P(-7,0)}L{P(-5,-22)}L{P(-1,-22)}L{P(0,0)}Z M{P(7,0)}L{P(5,-22)}L{P(1,-22)}L{P(0,0)}Z" fill="#000000"/>'
            f'<path d="M{P(-12,-20)}C{P(-14,-34)} {P(-11,-46)} {P(-8,-50)}L{P(8,-50)}C{P(11,-46)} {P(14,-34)} {P(12,-20)}Z" fill="#000000"/>'
            f'<path d="M{P(-12,-30)}L{P(12,-30)}" fill="none" stroke="#FFFFFF" stroke-width="2"/>'
            f'<circle cx="{mx}" cy="{my - 55 * k:.1f}" r="{6 * k:.1f}" fill="#000000"/>'
            f'<path d="M{P(-12,-58)}L{P(12,-58)}L{P(7,-63)}L{P(-7,-63)}Z" fill="#000000"/>'
            f'<path d="M{P(-6,-63)}C{P(-4,-69)} {P(4,-69)} {P(6,-63)}" fill="#000000"/>'
            f'<line x1="{mx + 6 * k:.1f}" y1="{my - 46 * k:.1f}" x2="{mx + 27 * k:.1f}" y2="{my - 72 * k:.1f}" stroke-width="2.8"/>'
            f'<path d="M{P(22,-70)}C{P(16,-71)} {P(15,-62)} {P(19,-58)}C{P(23,-55)} {P(30,-56)} {P(30,-62)}C{P(30,-67)} {P(26,-71)} {P(22,-70)}Z" fill="url(#hatch)" stroke-width="2.2"/>'
            f'<path d="M{P(21,-69)}L{P(25,-73)}L{P(26,-68)}" fill="none" stroke-width="1.6"/>'
            f'<line x1="{mx - 10 * k:.1f}" y1="{my - 28 * k:.1f}" x2="{mx - 18 * k:.1f}" y2="{my - 10 * k:.1f}" stroke-width="2.8"/>'
            f'<path d="M{P(-23,-15)}L{P(-16,-11)}L{P(-13,-17)}L{P(-19,-20)}Z" fill="#FFFFFF" stroke-width="1.8"/>'
            f'</g>')
p.append(maciek(66, 420, 1.35))
layers["przod"] = (0, 310, 390, 534, p)

ORDER = ["tlo", "oczy", "wrony", "swierk_a", "swierk_b", "dym", "ognie", "mgla_gora", "mgla_dol", "przod"]

def svg(vb, body, comment):
    x, y, w, h = vb
    return (f'<?xml version="1.0" encoding="UTF-8"?>\n<!-- LittleVillage — tło „zapadlina”: {comment}\n'
            f'     Współrzędne płótna 390×844, viewBox = położenie warstwy. Animacje: Resources/Raw/backgrounds.json. -->\n'
            f'<svg xmlns="http://www.w3.org/2000/svg" width="{w}" height="{h}" viewBox="{x} {y} {w} {h}">\n<defs>\n{DEFS}\n</defs>\n{body}\n</svg>\n')

COMMENTS = {"tlo": "niebo, słońce, Bukowy Grzbiet, mokradła, jezioro, chałupy, bór", "oczy": "oczy w borze (mrugają)",
            "wrony": "wrony (unoszą się)", "swierk_a": "świerk na skraju boru (kołysze się)", "swierk_b": "drugi świerk (kołysze się)",
            "dym": "dym z chałup (unosi się)", "ognie": "błędne ognie nad mokradłami (migoczą)",
            "mgla_gora": "pasmo mgły nad mokradłami (dryfuje)", "mgla_dol": "pasmo mgły w dnie niecki (dryfuje)",
            "przod": "pierwszy plan: zbocze, ścieżka, Maciek z tobołkiem, brudny śnieg"}

def body_of(name):
    x, y, w, h, items = layers[name]
    if name == "tlo":
        return items[0] + "\n" + G_OPEN + "\n" + "\n".join(items[1:]) + "\n</g>"
    return G_OPEN + "\n" + "\n".join(items) + "\n</g>"

if "--master" in sys.argv:
    print(f'<svg xmlns="http://www.w3.org/2000/svg" width="390" height="844" viewBox="0 0 390 844"><defs>{DEFS}</defs><rect width="390" height="844" fill="#EDEBE6"/>'
          + "\n".join(body_of(n) for n in ORDER) + '</svg>')
else:
    for n in ORDER:
        x, y, w, h, _ = layers[n]
        open(os.path.join(OUT, f"bg_zapadlina_{n}.svg"), "w", encoding="utf-8").write(svg((x, y, w, h), body_of(n), COMMENTS[n]))
        print(n, (x, y, w, h))
