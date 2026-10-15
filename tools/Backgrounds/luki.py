# Generator tla "luki" (rozdzial pierwszy, strona 4): miedza przy zbozu, snop slomy z kolem z sadzy, leszczyna na skraju
# lasu, strzaly wbite w ziemie, strzala w locie. Odslaniane tekstem: Hanka mierzy z luku, chlopcy patrza (# pokaz: hanka);
# strzala Jaromira w samym srodku kola (# pokaz: trafienie).
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/luki.py src/LittleVillage/Resources/Images   -> pliki bg_luki_*.svg
#   python3 tools/Backgrounds/luki.py --master [wszystko] > podglad.svg
import sys, random
from common import *
import postacie

L = {}
rnd = random.Random(131)
TX, TY = 300, 330      # srodek kola na snopie

t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M0 0H390V34C300 44 200 28 110 38C60 44 30 36 0 42Z" fill="url(#hatch)" stroke="none"/>',
     '<path d="M-10 196C80 184 200 190 280 186C330 184 370 188 400 186V440H-10Z" fill="#EDEBE6" stroke-width="3"/>']
for i in range(16):
    t.append(spruce(-6 + i * 13, 196 - (i % 3) * 4, 30 + (i % 4) * 6, 14))
# leszczyna: krzak na skraju lasu, z ktorego wystaja proste prety
for k in range(9):
    x = 214 + k * 7
    s_ = (k - 4) * 2
    t.append(f'<path d="M{x} 200C{x - 1} 180 {x + s_ * 0.5:.0f} 160 {x + s_} 138" fill="none" stroke-width="1.8"/>')
t.append('<path d="M202 200C192 186 202 166 220 170C228 156 256 158 262 172C278 170 286 188 276 200Z" fill="url(#hatch)" stroke-width="2.2"/>')
# zboze za miedza (pas kreskowania) i miedza
t.append('<path d="M-10 262C100 254 260 258 400 252V300C260 306 100 302 -10 308Z" fill="url(#hatch)" stroke-width="2"/>')
for x in range(0, 392, 9):
    t.append(f'<path d="M{x} {262 - (x % 4)}l-1 -10" fill="none" stroke-width="1.2"/>')
t.append('<path d="M-10 312C100 306 260 310 400 304" fill="none" stroke-width="1.6" stroke-dasharray="8 6"/>')
# snop slomy z kolem namalowanym sadza
t.append(f'<path d="M{TX - 26} 376L{TX - 18} 300C{TX - 10} 290 {TX + 10} 290 {TX + 18} 300L{TX + 26} 376Z" fill="#FFFFFF" stroke-width="2.6"/>')
for dx in range(-20, 21, 6):
    t.append(f'<path d="M{TX + dx} 372L{TX + dx * 0.7:.0f} 300" fill="none" stroke-width="0.9"/>')
t.append(f'<path d="M{TX - 22} 344H{TX + 22}" fill="none" stroke-width="3"/>')                      # powrozlo
t.append(f'<circle cx="{TX}" cy="{TY}" r="12" fill="none" stroke-width="3.4"/><circle cx="{TX}" cy="{TY}" r="4" fill="#000000" stroke-width="1"/>')
# strzaly chybione: wbite w snop obok kola i w ziemie
def arrow_stuck(x, y, ang, ln=26):
    import math
    ex, ey = x - ln * math.cos(math.radians(ang)), y - ln * math.sin(math.radians(ang))
    return (f'<path d="M{x} {y}L{ex:.1f} {ey:.1f}" fill="none" stroke-width="1.8"/>'
            f'<path d="M{ex:.1f} {ey:.1f}l-4 -4M{ex:.1f} {ey:.1f}l-5 1" fill="none" stroke-width="1.6"/>')
t.append(arrow_stuck(TX - 14, 312, 20))
t.append(arrow_stuck(TX + 16, 352, 10))
t.append(arrow_stuck(240, 378, 60, 22))
t.append(arrow_stuck(350, 384, 70, 22))
for i in range(24):
    t.append(grass(rnd.uniform(0, 390), rnd.uniform(318, 432), rnd.uniform(0.6, 1.0)))
L["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))

# strzala w locie, wysoko nad zbozem (dryfuje w prawo i z powrotem)
L["strzala"] = (120, 120, 80, 30, group(['<path d="M130 140L184 128" fill="none" stroke-width="2"/>',
                                         '<path d="M184 128l-6 -4M184 128l-5 4" fill="none" stroke-width="1.8"/>',
                                         '<path d="M130 140l-6 -5M130 140l-6 3M134 139l-6 -5M134 139l-6 3" fill="none" stroke-width="1.4"/>']))
L["klosy"] = (0, 230, 390, 40, group([f'<ellipse cx="{x + 1}" cy="{252 - (x % 3) * 3}" rx="2.2" ry="6" fill="url(#hatchDense)" stroke-width="1.2"/>'
                                      for x in range(4, 392, 13)]))

# Hanka mierzy z luku (profil w prawo), chlopcy patrza z boku
HX, HY, HK = 120, 416, 1.5
bow = (f'<path d="M{HX + 22 * HK:.0f} {HY - 52 * HK:.0f}C{HX + 34 * HK:.0f} {HY - 40 * HK:.0f} {HX + 34 * HK:.0f} {HY - 20 * HK:.0f} {HX + 22 * HK:.0f} {HY - 8 * HK:.0f}" fill="none" stroke-width="{2.6 * HK:.1f}"/>'
       f'<path d="M{HX + 22 * HK:.0f} {HY - 52 * HK:.0f}L{HX + 2 * HK:.0f} {HY - 30 * HK:.0f}L{HX + 22 * HK:.0f} {HY - 8 * HK:.0f}" fill="none" stroke-width="1"/>')
kids = [postacie.girl(HX, HY, HK), bow,
        postacie.child(44, 410, 1.3), postacie.child(76, 414, 1.15, arm="l8 -10")]
L["hanka"] = (16, 310, 196, 112, group(kids))
# strzala Hanki: wylatuje z luku i wbija sie w snop (lot po luku, grotem do przodu)
AX0, AX1, AY = HX + 2 * HK, HX + 44 * HK, HY - 30 * HK
L["strzala_hanki"] = (round(AX0) - 8, round(AY) - 8, round(AX1 - AX0) + 16, 16, group([
    f'<path d="M{AX0:.0f} {AY:.0f}L{AX1:.0f} {AY:.0f}" fill="none" stroke-width="{1.6 * HK:.1f}"/>',
    f'<path d="M{AX1:.0f} {AY:.0f}l-6 -4M{AX1:.0f} {AY:.0f}l-6 4" fill="none" stroke-width="1.6"/>',
    f'<path d="M{AX0 + 2:.0f} {AY:.0f}l-6 -4M{AX0 + 2:.0f} {AY:.0f}l-6 4M{AX0 + 6:.0f} {AY:.0f}l-6 -4M{AX0 + 6:.0f} {AY:.0f}l-6 4" fill="none" stroke-width="1.3"/>']))
# strzala Jaromira w samym srodku kola
L["trafienie"] = (TX - 38, TY - 16, 46, 24, group(['<path d="M300 330L264 320" fill="none" stroke-width="2.4"/>',
                                                   '<path d="M264 320l-6 -6M264 320l-7 2M269 321l-6 -6M269 321l-7 2" fill="none" stroke-width="1.6"/>']))

p = ['<path d="M-10 420H400V844H-10Z" fill="#EDEBE6" stroke="none"/>']
for i in range(20):
    p.append(grass(rnd.uniform(0, 390), rnd.uniform(436, 840), rnd.uniform(0.9, 1.3)))
L["przod"] = (0, 410, 390, 434, group(p))

ORDER = ["tlo", "klosy", "strzala", "trafienie", "hanka", "strzala_hanki", "przod"]
REVEAL = {"hanka": "hanka", "strzala_hanki": "hanka", "trafienie": "trafienie"}
ANIM = {"strzala": {"type": "arc", "amplitude": 50, "dx": 170, "dy": 34, "tangent": True, "duration": 4600, "anchorX": 0.5, "anchorY": 0.5},
        "klosy": {"type": "sway", "amplitude": 1.4, "duration": 3000, "anchorX": 0.5, "anchorY": 1},
        "strzala_hanki": {"type": "arc", "amplitude": 14, "dx": round(TX - 14 - AX1), "dy": round(TY - AY), "tangent": True, "duration": 2800,
                          "anchorX": 0.5, "anchorY": 0.5},
        # trafienie: wlatuje z lewej i drga, grot w kole jest osia obrotu
        "trafienie": {"type": "strike", "amplitude": 7, "dx": 110, "duration": 2600, "once": True, "anchorX": 0.83, "anchorY": 0.67}}
COMMENTS = {"tlo": "miedza przy zbożu, snop słomy z kołem z sadzy, leszczyna pod lasem, chybione strzały",
            "klosy": "kłosy za miedzą (kołyszą się)", "strzala": "strzała szybująca wysoko (lot po łuku)", "strzala_hanki": "strzała Hanki lecąca do snopa (# pokaz: hanka)",
            "trafienie": "strzała Jaromira w środku koła (# pokaz: trafienie)", "hanka": "Hanka mierzy z łuku, chłopcy patrzą (# pokaz: hanka)",
            "przod": "pierwszy plan: trawa"}

if __name__ == "__main__":
    if sys.argv[1] == "--master":
        hide = set() if len(sys.argv) > 2 and sys.argv[2] == "wszystko" else set(REVEAL)
        print(master(L, [n for n in ORDER if n not in hide]))
    else:
        write_layers(sys.argv[1], "bg_luki", "łuki", L, ORDER, COMMENTS)
        import bgjson
        bgjson.upsert("luki", bgjson.entry("bg_luki", ORDER, L, ANIM, REVEAL))
