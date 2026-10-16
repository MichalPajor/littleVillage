# Generator tel rozdzialu trzeciego (Wigilia):
#   roraty — grudzien przed switem: sciezka pod borem na Bukowy Grzbiet, snieg, gwiazdy; dzieci z lampionami
#            (plomyki migocza), Antek wlecze sie z tylu (# pokaz: antek)
#   przerwa_sniezki — Bukowiec: koscolek i szkola, dzieci rzucaja sniezkami, Antek z Jaromirem pod plotem, Hanka (# pokaz: hanka)
#   izba_noc — izba Jaromira noca: zar w piecu; Jaromir czyta ksiege (# pokaz: ksiega), ojciec przy stole (# pokaz: ojciec)
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/zima.py src/LittleVillage/Resources/Images     -> pliki bg_roraty_*.svg
#   python3 tools/Backgrounds/zima.py --master roraty|przerwa_sniezki|izba_noc [wszystko] > podglad.svg
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


# ======================= PRZERWA: snieg pod kosciolkiem w Bukowcu =======================
P = {}
rnd = random.Random(302)
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M0 0H390V90C300 104 200 80 110 96C60 104 30 94 0 100Z" fill="url(#hatch)" stroke="none" opacity="0.6"/>']
t.append('<path d="M-10 286C80 280 200 284 400 278V440H-10Z" fill="#FFFFFF" stroke-width="3"/>')
# drewniany kosciolek z wiezyczka (z lewej), sciany z desek, gontowy dach w sniegu
t.append('<path d="M30 286V170H170V286Z" fill="#FFFFFF" stroke-width="3"/>')
for x in range(38, 170, 10):
    t.append(f'<path d="M{x} 172V286" fill="none" stroke-width="0.8"/>')
t.append('<path d="M20 174L100 110L180 174Z" fill="url(#hatch)" stroke-width="3"/><path d="M28 168L100 112L172 168" fill="none" stroke="#FFFFFF" stroke-width="4"/>')
t.append('<path d="M84 110V70H116V110Z" fill="#FFFFFF" stroke-width="2.6"/><path d="M78 72L100 40L122 72Z" fill="url(#hatchDense)" stroke-width="2.6"/>')
t.append('<path d="M100 40V22M93 29H107" fill="none" stroke-width="2.4"/><path d="M94 96h12v12h-12z" fill="#000000" stroke-width="1.6"/>')
t.append('<path d="M86 286V226Q100 210 114 226V286Z" fill="#000000" stroke-width="2.4"/>')
t.append('<path d="M46 212h18v26h-18zM136 212h18v26h-18z" fill="#000000" stroke-width="2"/>')
# szkola obok (z prawej), nizsza, z kominem
t.append('<path d="M212 286V206H372V286Z" fill="#FFFFFF" stroke-width="3"/><path d="M200 210L230 168H356L384 210Z" fill="url(#hatch)" stroke-width="3"/>')
t.append('<path d="M206 206L232 172H354L378 206" fill="none" stroke="#FFFFFF" stroke-width="4"/><path d="M330 172V150H344V172" fill="#FFFFFF" stroke-width="2.4"/>')
t.append('<path d="M232 230h22v22h-22zM330 230h22v22h-22z" fill="#000000" stroke-width="2"/><path d="M243 230v22M232 241h22M341 230v22M330 241h22" fill="none" stroke="#FFFFFF" stroke-width="1.2"/>')
t.append('<path d="M280 286V236H304V286Z" fill="#000000" stroke-width="2"/>')
# plot przed szkola
t.append('<path d="M190 318H400M190 332H400" fill="none" stroke-width="2.2"/>')
for x in range(196, 400, 20):
    t.append(f'<path d="M{x - 4} 342V310L{x} 304L{x + 4} 310V342Z" fill="#FFFFFF" stroke-width="1.6"/>')
P["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
P["dym"] = (324, 96, 40, 56, group(['<path d="M337 148C330 136 342 128 336 116C332 108 340 102 336 98" fill="none" stroke-width="4" stroke-linecap="round" opacity="0.6"/>']))
# dzieci obrzucaja sie sniezkami na placu
P["dzieci"] = (60, 300, 190, 90, group([postacie.child(80, 380, 1.2, arm="l10 -14"), postacie.child(124, 384, 1.25),
                                         postacie.child(196, 378, 1.2, arm="l-10 -14"), postacie.girl(232, 382, 1.2)]))
for i, (x, y) in enumerate([(92, 326), (186, 324), (140, 318)]):
    P[f"sniezka_{i}"] = (x - 5, y - 5, 10, 10, group([f'<circle cx="{x}" cy="{y}" r="3.6" fill="#FFFFFF" stroke-width="1.4"/>']))
# Antek i Jaromir na uboczu, pod plotem (pierwszy plan)
P["chlopcy"] = (270, 330, 110, 104, group([postacie.child(300, 430, 1.85), postacie.child(350, 432, 1.75)]))
P["hanka"] = (226, 344, 50, 90, group([postacie.girl(250, 432, 1.75)]))
p = ['<path d="M-10 432H400V844H-10Z" fill="#FFFFFF" stroke="none"/>']
for i in range(14):
    x, y = rnd.uniform(0, 390), rnd.uniform(444, 840)
    p.append(f'<path d="M{x:.0f} {y:.0f}q8 -5 16 0" fill="none" stroke-width="1.1"/>')
P["przod"] = (0, 422, 390, 422, group(p))

PRZERWA = ["tlo", "dym", "dzieci", "sniezka_0", "sniezka_1", "sniezka_2", "hanka", "chlopcy", "przod"]
P_REVEAL = {"hanka": "hanka"}
P_ANIM = {"dym": {"type": "sway", "amplitude": 3, "duration": 5000, "anchorX": 0.5, "anchorY": 1},
          "dzieci": {"type": "bob", "amplitude": 1.2, "duration": 700},
          "sniezka_0": {"type": "arc", "amplitude": 34, "dx": 96, "dy": 6, "duration": 2400},
          "sniezka_1": {"type": "arc", "amplitude": 30, "dx": -96, "dy": 8, "duration": 2800, "phase": 0.4},
          "sniezka_2": {"type": "arc", "amplitude": 40, "dx": 60, "dy": 4, "duration": 3300, "phase": 0.7}}
P_EXTRA = {"hanka": {"fadeDuration": 1500}, "chlopcy": {"depth": 0.8}, "hanka": {"depth": 0.8, "fadeDuration": 1500}, "przod": {"depth": 1.0}}
P_COMMENTS = {"tlo": "Bukowiec: drewniany kościółek z wieżyczką i szkoła obok, śnieg, płot", "dym": "dym z komina szkoły",
              "dzieci": "dzieci obrzucają się śnieżkami", "chlopcy": "Antek i Jaromir na uboczu pod płotem",
              "hanka": "Hanka (# pokaz: hanka)", "przod": "pierwszy plan: śnieg"}
P_COMMENTS.update({f"sniezka_{i}": "lecąca śnieżka" for i in range(3)})

# ======================= IZBA NOCA: chalupa Jaromira, zar w piecu =======================
I = {}
w = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<rect width="390" height="440" fill="url(#hatchDense)" stroke="none" opacity="0.55"/>']
for i in range(10):
    y = 6 + i * 28
    w.append(f'<path d="M0 {y}C130 {y + 4} 260 {y - 3} 390 {y + 2}" fill="none" stroke-width="1.6"/>')
w.append('<path d="M-10 300H400V440H-10Z" fill="url(#hatchNight)" stroke="none"/><path d="M-10 300H400" fill="none" stroke-width="3"/>')
# okno: ksiezyc i snieg za szyba
w.append('<path d="M150 70H246V170H150Z" fill="#FFFFFF" stroke-width="3"/><circle cx="222" cy="96" r="12" fill="#FFFFFF" stroke-width="1.6"/>')
w.append('<path d="M150 146C180 140 210 144 246 138V170H150Z" fill="#FFFFFF" stroke-width="1.2"/><path d="M198 70V170M150 120H246" fill="none" stroke-width="3"/>')
w.append('<path d="M144 174H252" fill="none" stroke-width="3"/>')
# piec z prawej, otwarte palenisko
w.append('<path d="M290 300V120H390V300Z" fill="#FFFFFF" stroke-width="3"/><path d="M284 124H396" fill="none" stroke-width="3"/>')
w.append('<path d="M312 300V246Q336 226 360 246V300Z" fill="#000000" stroke-width="2.4"/>')
# siennik pod oknem, stol z lawa z lewej
w.append('<path d="M120 300C120 286 130 280 150 280H260C276 280 282 288 282 300Z" fill="#FFFFFF" stroke-width="2.4"/>')
w.append('<path d="M10 236H110V246H10ZM18 246V300M102 246V300" fill="#FFFFFF" stroke-width="2.4"/>')
I["tlo"] = (0, 0, 390, 440, w[0] + "\n" + group(w[1:]))
I["zar"] = (316, 270, 42, 30, group([f'<path d="M320 298q4 -10 8 -2q4 -12 8 0q4 -9 8 0q3 -7 6 2" fill="none" stroke="{RED}" stroke-width="2.4"/>',
                                     f'<circle cx="330" cy="294" r="2" fill="{RED}" stroke="none"/><circle cx="346" cy="292" r="1.6" fill="{RED}" stroke="none"/>']))
# Jaromir lezy na sienniku z ksiega przy blasku wegli
book = ('<path d="M248 270L270 266L292 270L292 282L270 278L248 282Z" fill="#FFFFFF" stroke-width="1.6"/><path d="M270 266V278" fill="none" stroke-width="1.2"/>'
        '<path d="M254 272h12M254 275h10M276 272h12M276 275h9" fill="none" stroke-width="0.7"/>')
I["ksiega"] = (150, 248, 150, 40, group(['<path d="M168 282C170 270 196 266 226 270L246 274" fill="#000000" stroke-width="2"/><circle cx="244" cy="262" r="9" fill="#000000"/>', book]))
I["spi"] = (150, 262, 120, 22, group(['<path d="M160 282C164 272 196 268 236 272C252 274 258 280 256 284Z" fill="#000000" stroke-width="2"/><circle cx="160" cy="276" r="8" fill="#000000"/>']))
# ojciec przy stole
I["ojciec"] = (30, 176, 70, 124, group([postacie.man(60, 300, 1.5, hat=False)]))
p = ['<path d="M-10 432H400V844H-10Z" fill="url(#hatchNight)" stroke="none"/>']
I["przod"] = (0, 422, 390, 422, group(p))

IZBA_NOC = ["tlo", "zar", "spi", "ksiega", "ojciec", "przod"]
I_REVEAL = {"ksiega": "ksiega", "ojciec": "ojciec"}
I_ANIM = {"zar": {"type": "flicker", "amplitude": 0.3, "duration": 1500}}
I_EXTRA = {"zar": {"noInvert": True}, "spi": {"hideOn": "ksiega"}, "przod": {"depth": 1.0}}
I_COMMENTS = {"tlo": "izba Jaromira nocą: okno z księżycem, piec, siennik, stół", "zar": "żar w piecu (migocze, czerwony)",
              "spi": "Jaromir śpi na sienniku (znika przy # pokaz: ksiega)", "ksiega": "Jaromir czyta księgę przy węglach (# pokaz: ksiega)",
              "ojciec": "ojciec przy stole (# pokaz: ojciec)", "przod": "pierwszy plan"}

BACKGROUNDS = {"roraty": ("bg_roraty", R, RORATY, R_ANIM, R_REVEAL, R_EXTRA, R_COMMENTS, "roraty"),
               "przerwa_sniezki": ("bg_przerwa", P, PRZERWA, P_ANIM, P_REVEAL, P_EXTRA, P_COMMENTS, "przerwa pod kościółkiem"),
               "izba_noc": ("bg_izbanoc", I, IZBA_NOC, I_ANIM, I_REVEAL, I_EXTRA, I_COMMENTS, "izba nocą")}

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
