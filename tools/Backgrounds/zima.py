# Generator tel rozdzialu trzeciego (Wigilia):
#   roraty — grudzien przed switem: sciezka pod borem na Bukowy Grzbiet, snieg, gwiazdy; dzieci z lampionami
#            (plomyki migocza), Antek wlecze sie z tylu (# pokaz: antek)
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/zima.py src/LittleVillage/Resources/Images     -> pliki bg_roraty_*.svg
#   python3 tools/Backgrounds/zima.py --master roraty [wszystko] > podglad.svg
import sys, random
from common import *
import postacie

RED = "#A8101A"


def lantern(x, y, k=1.0):
    """Lampion na kiju: rama z listewek, papier (bialy), w srodku plomyk; (x, y) = dlon niosacego."""
    P = lambda dx, dy: f"{x + dx * k:.1f} {y + dy * k:.1f}"
    return (f'<path d="M{P(0, 0)}L{P(6, -4)}" fill="none" stroke-width="{1.6 * k:.1f}"/>'
            f'<path d="M{P(3, -2)}h{8 * k:.1f}v{11 * k:.1f}h{-8 * k:.1f}z" fill="#FFFFFF" stroke-width="{1.2 * k:.1f}"/>'
            f'<path d="M{P(2, -3)}h{10 * k:.1f}M{P(2, 10)}h{10 * k:.1f}" fill="none" stroke-width="{1.4 * k:.1f}"/>')


def flame(x, y, k=1.0):
    return f'<path d="M{x + 7 * k:.1f} {y + 7 * k:.1f}c{-2 * k:.1f} {-2 * k:.1f} {-1 * k:.1f} {-5 * k:.1f} 0 {-6 * k:.1f}c{1 * k:.1f} {2 * k:.1f} {2 * k:.1f} {4 * k:.1f} 0 {6 * k:.1f}z" fill="{RED}" stroke="none"/>'


# ======================= RORATY: przed switem pod borem =======================
R = {}
rnd = random.Random(301)
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M0 0H390V260H0Z" fill="url(#hatchNight)" stroke="none"/>']
# snieg na zboczu (bialy), sciezka pnie sie pod gore w prawo
t.append('<path d="M-10 240C70 222 150 200 220 186C280 176 340 172 400 172V440H-10Z" fill="#FFFFFF" stroke-width="3"/>')
t.append('<path d="M60 440C90 400 130 370 170 340C210 312 250 286 300 250C330 228 350 210 372 192" fill="none" stroke-width="2"/>')
t.append('<path d="M130 440C150 404 180 376 214 350C250 322 286 296 326 262C350 240 368 222 386 204" fill="none" stroke-width="2"/>')
# kopki sniegu na polach z lewej
for i in range(10):
    x, y = rnd.uniform(0, 160), rnd.uniform(260, 420)
    t.append(f'<path d="M{x:.0f} {y:.0f}q8 -5 16 0" fill="none" stroke-width="1.1"/>')
# sciana swierkow z prawej (czarna na tle nocy), czapy sniegu
for i, (x, base, h) in enumerate([(232, 196, 70), (254, 192, 84), (278, 196, 96), (302, 204, 110), (326, 214, 124), (352, 228, 140), (380, 246, 156)]):
    t.append(spruce(x, base, h, h * 0.42))
    t.append(f'<path d="M{x - h * 0.16:.0f} {base - h * 0.62:.0f}l{h * 0.16:.0f} {-h * 0.1:.0f}l{h * 0.16:.0f} {h * 0.1:.0f}" fill="#FFFFFF" stroke-width="1.2"/>')
R["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
# gwiazdy migocza
stars = []
for i in range(26):
    x, y = rnd.uniform(6, 384), rnd.uniform(8, 170)
    r = rnd.uniform(0.9, 1.8)
    stars.append(f'<circle cx="{x:.0f}" cy="{y:.0f}" r="{r:.1f}" fill="#FFFFFF" stroke="none"/>')
R["gwiazdy"] = (0, 0, 390, 180, group(stars))
# troje dzieci z lampionami idzie sciezka pod gore (Franek przodem, Hanka przy Jaromirze)
kids = [postacie.child(296, 256, 1.0), postacie.girl(240, 304, 1.05), postacie.child(262, 300, 1.1)]
LAMPS = [(302, 230, 1.3), (246, 278, 1.35), (269, 271, 1.4)]
kids += [lantern(x, y, k) for (x, y, k) in LAMPS]
R["dzieci"] = (220, 200, 120, 112, group(kids))
R["plomyki"] = (230, 216, 100, 74, group([flame(x + 2 * k, y - 2 * k, k) for (x, y, k) in LAMPS]))
# Antek daleko w tyle, z wlasnym lampionem
R["antek"] = (148, 316, 50, 64, group([postacie.child(166, 372, 1.15), lantern(172, 342, 1.45)]))
R["antek_plomyk"] = (176, 330, 24, 24, group([flame(175, 339, 1.45)]))
p = ['<path d="M-10 432H400V844H-10Z" fill="#FFFFFF" stroke="none"/>']
for i in range(16):
    x, y = rnd.uniform(0, 390), rnd.uniform(444, 840)
    p.append(f'<path d="M{x:.0f} {y:.0f}q8 -5 16 0" fill="none" stroke-width="1.1"/>')
R["przod"] = (0, 422, 390, 422, group(p))

RORATY = ["tlo", "gwiazdy", "dzieci", "plomyki", "antek", "antek_plomyk", "przod"]
R_REVEAL = {"antek": "antek", "antek_plomyk": "antek"}
R_ANIM = {"gwiazdy": {"type": "flicker", "amplitude": 0.4, "duration": 3800},
          "dzieci": {"type": "bob", "amplitude": 0.6, "duration": 900},
          "plomyki": {"type": "flicker", "amplitude": 0.35, "duration": 700},
          "antek": {"type": "bob", "amplitude": 0.5, "duration": 1300},
          "antek_plomyk": {"type": "flicker", "amplitude": 0.35, "duration": 800}}
R_EXTRA = {"plomyki": {"noInvert": True}, "antek_plomyk": {"noInvert": True, "fadeDuration": 2000}, "antek": {"fadeDuration": 2000},
           "przod": {"depth": 1.0}, "dzieci": {"depth": 0.6}}
R_COMMENTS = {"tlo": "grudzień przed świtem: ścieżka pod borem, śnieg, ściana świerków", "gwiazdy": "gwiazdy (migoczą)",
              "dzieci": "Franek, Hanka i Jaromir z lampionami", "plomyki": "płomyki w lampionach (migoczą, czerwone)",
              "antek": "Antek wlecze się z tyłu z lampionem (# pokaz: antek)", "antek_plomyk": "płomyk w lampionie Antka",
              "przod": "pierwszy plan: śnieg"}

BACKGROUNDS = {"roraty": ("bg_roraty", R, RORATY, R_ANIM, R_REVEAL, R_EXTRA, R_COMMENTS, "roraty")}

if __name__ == "__main__":
    if sys.argv[1] == "--master":
        prefix, L, order, anim, reveal, extra, comments, scene = BACKGROUNDS[sys.argv[2]]
        hide = set() if len(sys.argv) > 3 and sys.argv[3] == "wszystko" else set(reveal)
        print(master(L, [n for n in order if n not in hide]))
    else:
        import bgjson
        for key, (prefix, L, order, anim, reveal, extra, comments, scene) in BACKGROUNDS.items():
            write_layers(sys.argv[1], prefix, scene, L, order, comments)
            bgjson.upsert(key, bgjson.entry(prefix, order, L, anim, reveal, extra))
