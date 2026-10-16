# Generator tel rozdzialu trzeciego (Wigilia):
#   roraty — grudzien przed switem: sciezka pod borem na Bukowy Grzbiet, snieg, gwiazdy; dzieci z lampionami
#            (plomyki migocza), Antek wlecze sie z tylu (# pokaz: antek)
#   przerwa_sniezki — Bukowiec: koscolek i szkola, dzieci rzucaja sniezkami, Antek z Jaromirem pod plotem, Hanka (# pokaz: hanka)
#   izba_noc — izba Jaromira noca: zar w piecu; Jaromir czyta ksiege (# pokaz: ksiega), ojciec przy stole (# pokaz: ojciec)
#   wigilia — izba przy wieczerzy: gwiazdka (# pokaz: gwiazdka), dziad w drzwiach (# pokaz: dziad), dziad z lira przy stole
#             (# pokaz: lira), drzwi na rygiel (# pokaz: rygiel); wigilia_szczeniak — Stas i szczeniak autora (# pokaz: pies)
#   noc_snieg — noc, ksiezyc, sciezka skrajem boru: oczy (# pokaz: oczy), wielkie slady (# pokaz: kroki), bieg (# pokaz: bieg)
#   kolyska — izba Stasiowych po polnocy: polnocnica autora nad kolyska (# pokaz: polnocnica, znika przy # pokaz: odlot),
#             pod powala (# pokaz: noz), nisko nad makiem (# pokaz: mak), luczywo (# pokaz: krzyk), swit (# pokaz: kogut)
#   koledy — swieta: kolednicy z gwiazda i turoniem, kulig po jeziorze (# pokaz: kulig), Hanka z Jaromirem (# pokaz: hanka)
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/zima.py src/LittleVillage/Resources/Images     -> pliki bg_roraty_*.svg
#   python3 tools/Backgrounds/zima.py --master roraty|przerwa_sniezki|izba_noc|wigilia|wigilia_szczeniak|noc_snieg|kolyska|koledy [wszystko] > podglad.svg
import sys, random
from common import *
import postacie, art

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


# ======================= WIGILIA: izba przy wieczerzy =======================
V = {}
w = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<rect width="390" height="440" fill="url(#hatch)" stroke="none" opacity="0.45"/>']
for i in range(10):
    y = 6 + i * 28
    w.append(f'<path d="M0 {y}C130 {y + 4} 260 {y - 3} 390 {y + 2}" fill="none" stroke-width="1.4"/>')
w.append('<path d="M-10 300H400V440H-10Z" fill="url(#hatchDense)" stroke="none" opacity="0.6"/><path d="M-10 300H400" fill="none" stroke-width="3"/>')
# drzwi z lewej (otwarte na noc: czern i snieg)
w.append('<path d="M14 300V140H82V300Z" fill="#000000" stroke-width="2.6"/><path d="M14 268C36 262 60 266 82 262V300H14Z" fill="#FFFFFF" stroke-width="1.2"/>')
w.append('<path d="M82 300V140L102 132V306Z" fill="#FFFFFF" stroke-width="2.4"/><path d="M94 214h4" fill="none" stroke-width="2"/>')
# okno z gwiazdka nad borem
w.append('<path d="M196 70H276V150H196Z" fill="url(#hatchNight)" stroke-width="3"/><path d="M196 130C220 122 250 126 276 120V150H196Z" fill="#000000" stroke="none"/>')
w.append('<path d="M236 70V150M196 110H276" fill="none" stroke-width="3"/><path d="M190 154H282" fill="none" stroke-width="3"/>')
# snopek zyta w kacie
w.append('<path d="M344 300L352 214M350 300L356 210M356 300L360 212M362 300L362 214M368 300L366 210M374 300L370 214" fill="none" stroke-width="1.6"/>')
w.append('<path d="M346 252H376" fill="none" stroke-width="3"/><path d="M344 214l8 -10l8 8l8 -10l8 10" fill="none" stroke-width="1.4"/>')
# stol nakryty bialym obrusem, spod ktorego wystaje siano; oplatek, swieca, puste nakrycie
w.append('<path d="M120 252H330V264H120Z" fill="#FFFFFF" stroke-width="2.6"/><path d="M128 264L124 300M322 264L326 300" fill="none" stroke-width="3"/>')
w.append('<path d="M126 264l-4 10M140 264l2 9M300 264l-3 9M318 264l4 10" fill="none" stroke-width="1.2"/>')
w.append('<path d="M168 248h18v4h-18z" fill="#FFFFFF" stroke-width="1.2"/><path d="M286 246c0 -4 18 -4 18 0z" fill="#FFFFFF" stroke-width="1.4"/><path d="M290 252h12" fill="none" stroke-width="1"/>')
w.append('<path d="M224 252V232h6v20z" fill="#FFFFFF" stroke-width="1.6"/>')
V["tlo"] = (0, 0, 390, 440, w[0] + "\n" + group(w[1:]))
V["swieca"] = (220, 216, 14, 18, group([f'<path d="M227 232c-3 -3 -2 -8 0 -12c2 4 3 9 0 12z" fill="{RED}" stroke="none"/>']))
V["gwiazdka"] = (240, 76, 26, 26, group(['<path d="M253 80l2 7l7 2l-7 2l-2 7l-2 -7l-7 -2l7 -2z" fill="#FFFFFF" stroke-width="1"/>']))
# rodzina przy stole: ojciec, matka, Jaromir (puste miejsce z prawej)
V["rodzina"] = (140, 160, 140, 96, group([postacie.man(160, 300, 1.4, hat=False), postacie.woman(206, 300, 1.25), postacie.child(252, 280, 1.2)]))
# dziad w drzwiach: zgarbiony, z lira na plecach i torba
diad = postacie.man(48, 296, 1.5, hat=False, bundle=True)
diad += '<g stroke-width="2"><path d="M64 214C78 206 84 222 74 230C70 236 62 232 64 224Z" fill="#FFFFFF"/><path d="M66 212l10 -8" fill="none"/></g>'
diad += '<path d="M41 202c4 6 10 6 14 0l-2 10c-3 3 -7 3 -10 0z" fill="#FFFFFF" stroke-width="1.4"/>'
V["dziad"] = (10, 176, 80, 124, group([diad]))
# dziad przy pustym nakryciu gra na lirze
grajek = postacie.man(298, 300, 1.35, hat=False)
grajek += '<g stroke-width="2"><path d="M284 236C294 226 312 230 312 242C312 252 296 256 288 248Z" fill="#FFFFFF"/><path d="M300 238l12 -10" fill="none"/></g>'
grajek += '<path d="M292 210c4 5 9 5 12 0l-2 9c-3 3 -6 3 -8 0z" fill="#FFFFFF" stroke-width="1.3"/>'
V["dziad_lira"] = (270, 190, 56, 112, group([grajek]))
V["nuty"] = (300, 180, 60, 50, group(['<path d="M320 214v-14l8 -2v14M320 214a3 2 0 1 1 -1 -1M328 212a3 2 0 1 1 -1 -1" fill="none" stroke-width="1.4"/>',
                                      '<path d="M344 196v-12M344 196a3 2 0 1 1 -1 -1" fill="none" stroke-width="1.4"/>']))
# drzwi zamkniete na rygiel
V["drzwi"] = (10, 136, 96, 168, group(['<path d="M14 300V140H82V300Z" fill="#FFFFFF" stroke-width="2.6"/>',
                                       '<path d="M28 148V292M48 148V292M68 148V292M14 200H82" fill="none" stroke-width="1.2"/><path d="M60 208h18v6h-18z" fill="#000000" stroke-width="1.4"/>']))
p = ['<path d="M-10 432H400V844H-10Z" fill="url(#hatchDense)" stroke="none" opacity="0.6"/>']
V["przod"] = (0, 422, 390, 422, group(p))

# zawieja w otwartych drzwiach, kiedy dziad znika za progiem
V["zawieja"] = (10, 150, 120, 140, group([f'<circle cx="{14 + (i * 37) % 100}" cy="{160 + (i * 53) % 120}" r="{1.4 + (i % 3) * 0.5:.1f}" fill="#FFFFFF" stroke-width="0.8"/>' for i in range(16)]))
WIGILIA = ["tlo", "swieca", "gwiazdka", "rodzina", "dziad", "dziad_lira", "nuty", "zawieja", "drzwi", "przod"]
V_REVEAL = {"gwiazdka": "gwiazdka", "dziad": "dziad", "dziad_lira": "lira", "nuty": "lira", "zawieja": "odszedl", "drzwi": "rygiel"}
V_ANIM = {"swieca": {"type": "flame", "amplitude": 0.15, "duration": 800, "anchorX": 0.5, "anchorY": 1},
          "gwiazdka": {"type": "flicker", "amplitude": 0.5, "duration": 2200},
          "nuty": {"type": "rise", "amplitude": 30, "duration": 3000},
          "zawieja": {"type": "float", "amplitude": 6, "dx": 90, "dy": 30, "duration": 2600}}
V_EXTRA = {"swieca": {"noInvert": True}, "gwiazdka": {"fadeDuration": 3000}, "dziad": {"hideOn": "lira", "fadeDuration": 1000},
           "dziad_lira": {"hideOn": "odszedl", "fadeDuration": 1500}, "nuty": {"hideOn": "odszedl"}, "drzwi": {"fadeDuration": 800},
           "zawieja": {"hideAfter": 5200, "fadeDuration": 600}, "przod": {"depth": 1.0}}
V["dziad"] = V["dziad"]
V_COMMENTS = {"tlo": "izba w Wigilię: stół z obrusem i sianem, opłatek, puste nakrycie, snopek, okno nad borem, otwarte drzwi",
              "swieca": "płomień świecy (czerwony)", "gwiazdka": "pierwsza gwiazdka (# pokaz: gwiazdka)", "rodzina": "ojciec, matka i Jaromir przy stole",
              "dziad": "dziad z lirą w drzwiach (# pokaz: dziad, znika przy # pokaz: lira)",
              "dziad_lira": "dziad gra na lirze przy pustym nakryciu (# pokaz: lira, znika przy # pokaz: odszedl)", "nuty": "nuty pieśni (unoszą się)",
              "drzwi": "drzwi zamknięte na rygiel (# pokaz: rygiel)", "zawieja": "zawieja w drzwiach, gdy dziad odchodzi (# pokaz: odszedl)", "przod": "pierwszy plan"}
# dziad w drzwiach znika tez, gdy drzwi sie zamykaja
V_EXTRA["dziad"] = {"hideOn": "lira", "fadeDuration": 1000}

# ----- po wieczerzy: stary Stas z szczeniakiem (ta sama izba, bez dziada)
V["stas"] = (270, 176, 70, 126, group([postacie.man(302, 300, 1.55, hat=False),
                                      '<path d="M290 240c4 -6 20 -6 24 0" fill="none" stroke="#FFFFFF" stroke-width="1.4"/>']))
RIG_V_PIES = art.dog_sitting(art.parse_transform("translate(236 212) scale(0.12)"), "pies", shadow=False)
art.install_rig(V, RIG_V_PIES)
SZCZENIAK = ["tlo", "swieca", "gwiazdka", "rodzina", "stas"] + art.rig_names(RIG_V_PIES) + ["drzwi", "przod"]
VS_REVEAL = {n: "pies" for n in art.rig_names(RIG_V_PIES)}
VS_ANIM = {k: v for k, v in V_ANIM.items() if k in ("swieca", "gwiazdka")}
VS_ANIM.update(art.rig_anims(RIG_V_PIES))
VS_EXTRA = {"swieca": {"noInvert": True}, "przod": {"depth": 1.0}}
VS_EXTRA.update({n: {"fadeDuration": 1500} for n in art.rig_names(RIG_V_PIES)})
VS_COMMENTS = dict(V_COMMENTS)
VS_COMMENTS.update({"stas": "stary Staś na ławie"})
VS_COMMENTS.update({n: f"szczeniak na kolanach Jaromira — {n[5:]} (rysunek autora; # pokaz: pies)" for n in art.rig_names(RIG_V_PIES)})

# ======================= NOC W SNIEGU: ksiezyc, sciezka skrajem boru =======================
N = {}
rnd = random.Random(303)
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M0 0H390V240H0Z" fill="url(#hatchNight)" stroke="none"/>',
     '<circle cx="80" cy="70" r="24" fill="#FFFFFF" stroke-width="2"/>']
t.append('<path d="M-10 250C80 240 200 246 400 236V440H-10Z" fill="#FFFFFF" stroke-width="3"/>')
# bor po prawej stronie sciezki
for i in range(12):
    x = 200 + i * 18
    h = 90 + (i % 3) * 24 + i * 6
    t.append(spruce(x, 250 + i * 6, h, h * 0.42))
# sciezka od widza w strone chalup Stasiowych (w glebi z lewej)
t.append('<path d="M120 440C140 390 150 340 130 300C116 274 90 260 60 252" fill="none" stroke-width="2"/>')
t.append('<path d="M190 440C200 392 204 344 182 302C166 274 132 258 90 250" fill="none" stroke-width="2"/>')
t.append('<path d="M20 252V226L38 212L56 226V252Z" fill="#FFFFFF" stroke-width="2"/><path d="M32 240h8v12h-8z" fill="#000000" stroke-width="1.2"/>')
for i in range(8):
    x = 40 + i * 20
    t.append(f'<path d="M{x} {rnd.uniform(380, 430):.0f}l10 0" fill="none" stroke-width="2.4"/>')     # czarne cienie galazek
N["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
stars = [f'<circle cx="{rnd.uniform(130, 384):.0f}" cy="{rnd.uniform(8, 200):.0f}" r="{rnd.uniform(0.9, 1.6):.1f}" fill="#FFFFFF" stroke="none"/>' for _ in range(22)]
N["gwiazdy"] = (120, 0, 270, 210, group(stars))
N["jaromir"] = (136, 316, 36, 64, group([postacie.child(152, 376, 1.3)]))
N["bieg_0"] = (100, 290, 50, 60, group([postacie.running_child(124, 344, 1.2, facing=-1, pose=0)]))
N["bieg_1"] = (100, 290, 50, 60, group([postacie.running_child(124, 344, 1.2, facing=-1, pose=1)]))
N["oczy"] = (290, 186, 40, 16, group(['<ellipse cx="300" cy="194" rx="3.6" ry="2.2" fill="#FFFFFF" stroke="none"/><ellipse cx="316" cy="193" rx="3.8" ry="2.3" fill="#FFFFFF" stroke="none"/>']))
# dlugie, wielkie slady pojawiaja sie w sniegu jeden po drugim tuz obok sciezki
STEPS = [(236, 434), (214, 400), (232, 366), (206, 332), (220, 300)]
for i, (x, y) in enumerate(STEPS):
    k = 1.4 - i * 0.16
    N[f"krok_{i}"] = (int(x - 8 * k), int(y - 18 * k), int(16 * k) + 2, int(36 * k) + 2, group([
        f'<path d="M{x} {y - 16 * k:.1f}C{x + 6 * k:.1f} {y - 16 * k:.1f} {x + 6 * k:.1f} {y + 16 * k:.1f} {x} {y + 16 * k:.1f}C{x - 6 * k:.1f} {y + 16 * k:.1f} {x - 6 * k:.1f} {y - 16 * k:.1f} {x} {y - 16 * k:.1f}Z" fill="url(#hatchDense)" stroke-width="{1.4 * k:.1f}"/>']))
p = ['<path d="M-10 432H400V844H-10Z" fill="#FFFFFF" stroke="none"/>']
N["przod"] = (0, 422, 390, 422, group(p))

NOC = ["tlo", "gwiazdy", "oczy"] + [f"krok_{i}" for i in range(len(STEPS))] + ["jaromir", "bieg_0", "przod"]
N_REVEAL = {"oczy": "oczy", "bieg_0": "bieg"}
N_REVEAL.update({f"krok_{i}": "kroki" for i in range(len(STEPS))})
N_ANIM = {"gwiazdy": {"type": "flicker", "amplitude": 0.4, "duration": 3600}, "oczy": {"type": "blink", "duration": 4000},
          "bieg_0": {"type": "frames", "duration": 360}}
N_EXTRA = {"bieg_0": {"frames": ["bieg_0", "bieg_1"], "fadeDuration": 300}, "jaromir": {"hideOn": "bieg", "fadeDuration": 300},
           "oczy": {"fadeDuration": 2000}, "przod": {"depth": 1.0}}
N_EXTRA.update({f"krok_{i}": {"appearAfter": 400 + i * 700, "fadeDuration": 400} for i in range(len(STEPS))})
N_COMMENTS = {"tlo": "noc w śniegu: księżyc, ścieżka skrajem boru, w głębi chałupa Stasiowych", "gwiazdy": "gwiazdy (migoczą)",
              "oczy": "oczy między drzewami (# pokaz: oczy)", "jaromir": "Jaromir na ścieżce (znika przy # pokaz: bieg)",
              "bieg_0": "Jaromir biegnie, klatka 1 (# pokaz: bieg)", "bieg_1": "Jaromir biegnie, klatka 2", "przod": "pierwszy plan: śnieg"}
N_COMMENTS.update({f"krok_{i}": f"wielki ślad {i + 1} — ktoś bardzo wysoki przechodzi obok (# pokaz: kroki, po kolei)" for i in range(len(STEPS))})


# ======================= KOLYSKA: izba Stasiowych po polnocy, polnocnica autora =======================
K = {}
w = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<rect width="390" height="440" fill="url(#hatchNight)" stroke="none" opacity="0.7"/>']
for i in range(10):
    y = 6 + i * 28
    w.append(f'<path d="M0 {y}C130 {y + 4} 260 {y - 3} 390 {y + 2}" fill="none" stroke-width="1.6"/>')
w.append('<path d="M-10 300H400V440H-10Z" fill="url(#hatchNight)" stroke="none"/><path d="M-10 300H400" fill="none" stroke-width="3"/>')
w.append('<path d="M-10 26H400" fill="none" stroke-width="8"/>')                                        # belka pod powala
# okno z ksiezycem (z lewej)
w.append('<path d="M30 80H96V150H30Z" fill="#FFFFFF" stroke-width="3"/><path d="M63 80V150M30 115H96" fill="none" stroke-width="3"/><circle cx="80" cy="96" r="8" fill="#FFFFFF" stroke-width="1.4"/>')
# piec z prawej, na nim spiacy ojciec Antka
w.append('<path d="M300 300V170H390V300Z" fill="#FFFFFF" stroke-width="3"/><path d="M296 174H394" fill="none" stroke-width="3"/>')
w.append('<path d="M306 172C310 160 340 156 372 160C384 162 388 168 388 172Z" fill="#000000" stroke-width="2"/><circle cx="312" cy="160" r="8" fill="#000000"/>')
# Franek spi w kacie (z lewej, pod oknem)
w.append('<path d="M10 300C12 288 30 282 60 284C80 286 90 292 90 300Z" fill="#000000" stroke-width="2"/>')
# kolyska na biegunach na srodku, matka spi na krzesle z glowa na kolysce
w.append('<path d="M160 300C170 306 230 306 240 300M150 296C170 304 230 304 250 296" fill="none" stroke-width="2.6"/>')
w.append('<path d="M164 296L158 262H242L236 296Z" fill="#FFFFFF" stroke-width="2.6"/><path d="M170 262C186 254 214 254 230 262" fill="#FFFFFF" stroke-width="1.6"/>')
w.append('<circle cx="188" cy="262" r="5" fill="#FFFFFF" stroke-width="1.4"/>')
w.append('<path d="M262 300V262H290V300M262 262V230" fill="none" stroke-width="3"/>')
w.append('<path d="M262 276C262 254 270 244 278 242L284 266Z" fill="#000000" stroke-width="2"/><circle cx="252" cy="258" r="9" fill="#000000"/>'
         '<path d="M243 254Q252 240 261 254" fill="#FFFFFF" stroke-width="1.4"/>')
K["tlo"] = (0, 0, 390, 440, w[0] + "\n" + group(w[1:]))
# pas ksiezycowego swiatla (gasnie, gdy pojawia sie polnocnica)
K["ksiezyc"] = (60, 150, 230, 290, group(['<path d="M96 150L120 150L290 440L190 440Z" fill="#FFFFFF" stroke="none" opacity="0.55"/>']))
# chlopcy pod sciana (pierwszy plan)
K["chlopcy"] = (8, 330, 120, 104, group([postacie.crouching_child(40, 430, 1.8), postacie.crouching_child(96, 430, 1.7)]))
# swit w oknie i luczywo
K["swit"] = (30, 80, 66, 70, group(['<path d="M30 80H96V150H30Z" fill="#FFFFFF" stroke-width="3"/><path d="M30 130C50 122 74 126 96 118V150H30Z" fill="url(#hatch)" stroke="none"/><path d="M63 80V150M30 115H96" fill="none" stroke-width="3"/>']))
K["luczywo"] = (270, 190, 30, 50, group([f'<path d="M286 236L282 210" fill="none" stroke-width="3"/><path d="M282 210c-5 -6 -3 -14 0 -18c3 4 6 12 0 18z" fill="{RED}" stroke="none"/>']))
# mak rozsypany wokol kolyski
seeds = [f'<circle cx="{150 + (i * 23) % 110}" cy="{304 + (i * 7) % 14}" r="1.4" fill="#FFFFFF" stroke="none"/>' for i in range(30)]
K["mak"] = (146, 300, 118, 22, group(seeds))


def polnocnica(prefix, tx, ty, k):
    return art.rig("polnocnica", art.parse_transform(f"translate({tx} {ty}) scale({k})"), [
        ("mgla", ["cien", "mgla"], {"type": "drift", "amplitude": 6, "duration": 6000}, None),
        ("calun", ["calun"], None, None),
        ("wlosy_l", ["wlosy_lewe"], {"type": "sway", "amplitude": 3, "duration": 5000}, "wlosy_lewe"),
        ("wlosy_p", ["wlosy_prawe"], {"type": "sway", "amplitude": 3, "duration": 5000, "phase": 0.5}, "wlosy_prawe"),
        ("reka_l", ["reka_lewa"], {"type": "sway", "amplitude": 6, "duration": 3500}, "reka_lewa"),
        ("reka_p", ["reka_prawa"], {"type": "sway", "amplitude": 6, "duration": 3500, "phase": 0.5}, "reka_prawa"),
        ("twarz", ["twarz"], {"type": "sway", "amplitude": 2, "duration": 4000}, "twarz")], prefix)


RIG_K_NAD = polnocnica("nad", 136, 76, 0.43)          # nad kolyska
RIG_K_POWALA = polnocnica("powala", 136, 12, 0.36)     # zawieszona pod powala (po nozyku)
RIG_K_NISKO = polnocnica("nisko", 180, 170, 0.36)      # nisko nad podloga, liczy ziarenka
for r in (RIG_K_NAD, RIG_K_POWALA, RIG_K_NISKO):
    art.install_rig(K, r)
K["wir"] = (150, 200, 100, 100, group([f'<path d="{ribbon(160, 240, 250, 14, 4)}" fill="#EDEBE6" stroke-width="1.4" opacity="0.8"/>',
                                       f'<path d="{ribbon(170, 230, 272, 10, 3)}" fill="#EDEBE6" stroke-width="1.2" opacity="0.7"/>']))
p = ['<path d="M-10 432H400V844H-10Z" fill="url(#hatchNight)" stroke="none"/>']
K["przod"] = (0, 422, 390, 422, group(p))

NAD, POWALA, NISKO = art.rig_names(RIG_K_NAD), art.rig_names(RIG_K_POWALA), art.rig_names(RIG_K_NISKO)
KOLYSKA = ["tlo", "swit", "ksiezyc", "mak", "luczywo"] + NAD + POWALA + NISKO + ["wir", "chlopcy", "przod"]
K_REVEAL = {"swit": "kogut", "mak": "mak", "luczywo": "krzyk", "wir": "odlot"}
K_REVEAL.update({n: "polnocnica" for n in NAD})
K_REVEAL.update({n: "noz" for n in POWALA})
K_REVEAL.update({n: "mak" for n in NISKO})
K_ANIM = {"luczywo": {"type": "flame", "amplitude": 0.15, "duration": 700, "anchorX": 0.5, "anchorY": 1},
          "wir": {"type": "drift", "amplitude": 14, "duration": 1600}}
for r in (RIG_K_NAD, RIG_K_POWALA, RIG_K_NISKO):
    K_ANIM.update(art.rig_anims(r))
K_EXTRA = {"ksiezyc": {"hideOn": "polnocnica", "fadeDuration": 2500}, "swit": {"fadeDuration": 4000}, "mak": {"fadeDuration": 600},
           "luczywo": {"noInvert": True}, "wir": {"hideAfter": 2200, "fadeDuration": 700}, "chlopcy": {"depth": 0.8}, "przod": {"depth": 1.0}}
# nad kolyska: pojawia sie z mgly, znika przy nozyku (wzlatuje pod powale), maku (opada) albo krzyku (rozplywa sie)
K_EXTRA.update({n: {"fadeDuration": 3000, "hideOn": "odlot"} for n in NAD})
K_EXTRA.update({n: {"fadeDuration": 1200, "hideOn": "kogut"} for n in POWALA + NISKO})
K_COMMENTS = {"tlo": "izba Stasiowych po północy: okno z księżycem, piec ze śpiącym ojcem, kołyska, matka śpi na krześle",
              "swit": "świt w oknie (# pokaz: kogut)", "ksiezyc": "pas księżycowego światła (gaśnie przy # pokaz: polnocnica)",
              "mak": "mak rozsypany wokół kołyski (# pokaz: mak)", "luczywo": "zapalone łuczywo (# pokaz: krzyk)",
              "chlopcy": "Antek i Jaromir pod ścianą", "wir": "wir mgły, gdy północnica odlatuje (# pokaz: odlot)", "przod": "pierwszy plan"}
K_COMMENTS.update({n: f"północnica nad kołyską — {n[4:]} (rysunek autora; # pokaz: polnocnica, znika przy # pokaz: odlot)" for n in NAD})
K_COMMENTS.update({n: f"północnica pod powałą — {n[7:]} (rysunek autora; # pokaz: noz, znika przy # pokaz: kogut)" for n in POWALA})
K_COMMENTS.update({n: f"północnica liczy mak przy podłodze — {n[6:]} (rysunek autora; # pokaz: mak, znika przy # pokaz: kogut)" for n in NISKO})


# ======================= KOLEDY: swieta w Zapadlinie, kulig po jeziorze =======================
C = {}
rnd = random.Random(304)
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M0 0H390V170H0Z" fill="url(#hatch)" stroke="none" opacity="0.7"/>']
t.append('<path d="M-10 200C80 190 200 196 400 188V440H-10Z" fill="#FFFFFF" stroke-width="3"/>')
# zamarzniete jezioro (gladkie, z kreskami lodu), bor na horyzoncie
t.append('<path d="M20 236C80 222 300 222 370 236C380 256 300 268 190 268C80 268 10 256 20 236Z" fill="#EDEBE6" stroke-width="2.4"/>')
t.append('<path d="M70 244h40M180 250h56M290 242h30" fill="none" stroke-width="1.2"/>')
for i in range(18):
    t.append(spruce(4 + i * 22, 192 - (i % 2) * 4, 50 + (i % 3) * 12, 22))
    t.append(f'<path d="M{4 + i * 22 - 7} {192 - (i % 2) * 4 - 30 - (i % 3) * 7}l7 -5l7 5" fill="#FFFFFF" stroke-width="1"/>')
# chalupy w sniegu z dymem
from kapliczki import hut
for (x, y, k) in [(40, 300, 1.2), (330, 296, 1.1)]:
    t.append(hut(x, y, k))
C["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
# kolednicy: chlopak z gwiazda na kiju, turon (kudlaty, z rogami), trzeci z workiem
C["kolednicy"] = (120, 290, 170, 110, group([postacie.child(150, 390, 1.5, arm="l8 -40"), postacie.child(260, 392, 1.5),
    '<path d="M196 392C190 370 196 350 214 346C226 344 236 352 238 364L236 392Z" fill="url(#hatchDense)" stroke-width="2"/>'
    '<path d="M214 346C212 334 220 326 230 328C238 330 240 340 236 348Z" fill="#000000" stroke-width="2"/>'
    '<path d="M222 330c-4 -8 -2 -14 2 -16M232 330c4 -8 2 -14 -2 -16" fill="none" stroke-width="2"/>'
    '<path d="M236 340l8 4l-8 2" fill="#FFFFFF" stroke-width="1.4"/>']))
C["gwiazda"] = (138, 290, 44, 44, group([f'<path d="M160 296l5 10l11 1l-8 8l2 11l-10 -5l-10 5l2 -11l-8 -8l11 -1z" fill="#FFFFFF" stroke-width="1.6"/>',
                                         f'<circle cx="160" cy="312" r="3" fill="{RED}" stroke="none"/>']))
# kulig: sanie z konikiem suna po jeziorze
C["kulig"] = (30, 226, 120, 34, group(['<path d="M40 254H90L96 246H44Z" fill="#000000" stroke-width="1.6"/><path d="M36 256H98" fill="none" stroke-width="2"/>',
                                       '<circle cx="56" cy="240" r="4" fill="#000000"/><circle cx="72" cy="240" r="4" fill="#000000"/>',
                                       '<path d="M104 254L108 240L130 236L136 228L140 236L134 240L128 254M112 254v6M126 254v6" fill="#000000" stroke-width="1.6"/>']))
C["hanka"] = (300, 330, 90, 104, group([postacie.girl(320, 432, 1.75), postacie.child(366, 432, 1.75)]))
p = ['<path d="M-10 432H400V844H-10Z" fill="#FFFFFF" stroke="none"/>']
for i in range(14):
    x, y = rnd.uniform(0, 390), rnd.uniform(444, 840)
    p.append(f'<path d="M{x:.0f} {y:.0f}q8 -5 16 0" fill="none" stroke-width="1.1"/>')
C["przod"] = (0, 422, 390, 422, group(p))

KOLEDY = ["tlo", "kulig", "kolednicy", "gwiazda", "hanka", "przod"]
C_REVEAL = {"kulig": "kulig", "hanka": "hanka"}
C_ANIM = {"gwiazda": {"type": "sway", "amplitude": 30, "duration": 3000, "anchorX": 0.5, "anchorY": 0.5},
          "kolednicy": {"type": "bob", "amplitude": 1, "duration": 800},
          "kulig": {"type": "drift", "amplitude": 70, "duration": 9000}}
C_EXTRA = {"gwiazda": {"noInvert": True}, "kulig": {"fadeDuration": 1500}, "hanka": {"fadeDuration": 1500, "depth": 0.8}, "przod": {"depth": 1.0}}
C_COMMENTS = {"tlo": "święta: Zapadlina w śniegu, zamarznięte jezioro, bór, chałupy", "kolednicy": "kolędnicy z turoniem",
              "gwiazda": "gwiazda kolędników (obraca się)", "kulig": "kulig — sanie z konikiem na jeziorze (# pokaz: kulig)",
              "hanka": "Hanka i Jaromir (# pokaz: hanka)", "przod": "pierwszy plan: śnieg"}


# ======================= ozywienie tel (wspolne efekty) =======================
import efekty
from efekty import add as _add

# roraty: sowa na czubku swierka, iskierki szronu na sniegu
_s, _so = efekty.sowa(232, 128, 1.0)
_add(R, RORATY, R_ANIM, R_COMMENTS, "sowa", _s, before="dzieci")
_add(R, RORATY, R_ANIM, R_COMMENTS, "sowa_oczy", _so, before="dzieci")
_add(R, RORATY, R_ANIM, R_COMMENTS, "iskry", efekty.iskry(10, 300, 200, 120, n=14, seed=31), before="dzieci")

# przerwa: dzwon kolysze sie w wiezyczce, wrony na kalenicy szkoly
_add(P, PRZERWA, P_ANIM, P_COMMENTS, "dzwon", ((92, 92, 16, 20, group(['<path d="M100 94v3M95 108c0 -8 2 -11 5 -11s5 3 5 11z" fill="#FFFFFF" stroke-width="1.4"/>'])),
                                              {"type": "sway", "amplitude": 14, "duration": 1800, "anchorX": 0.5, "anchorY": 0.1}, "dzwon w wieżyczce (kołysze się)"), before="dym")
_add(P, PRZERWA, P_ANIM, P_COMMENTS, "wrona_0", efekty.wrona_siedzi(256, 170, 0.9), before="dym")
_add(P, PRZERWA, P_ANIM, P_COMMENTS, "wrona_1", efekty.wrona_siedzi(296, 168, 0.85), before="dym")
P_ANIM["wrona_1"] = dict(P_ANIM["wrona_1"], phase=0.4)
_add(P, PRZERWA, P_ANIM, P_COMMENTS, "wrony", efekty.wrony(150, 60, n=3, seed=32), before="dym")

# izba noca: snieg za szyba, blask ksiezyca na podlodze, oddech spiacych
_add(I, IZBA_NOC, I_ANIM, I_COMMENTS, "platki", efekty.platki(152, 72, 92, 70, n=10, seed=33, fall=50, duration=5200, r=(0.9, 1.6)), before="zar")
_add(I, IZBA_NOC, I_ANIM, I_COMMENTS, "blask", efekty.smuga([(150, 170), (246, 170), (300, 300), (170, 300)], opacity=0.22), before="zar")
I_COMMENTS["blask"] = "blask księżyca na podłodze (pulsuje)"
I_ANIM["spi"] = {"type": "bob", "amplitude": 0.6, "duration": 3200}
I_ANIM["ksiega"] = {"type": "bob", "amplitude": 0.4, "duration": 2600}
I_ANIM["ojciec"] = {"type": "bob", "amplitude": 0.5, "duration": 3000}

# Wigilia: snieg za oknem, rodzina przy stole oddycha, cienie od swiecy
for order, anim, comments in [(WIGILIA, V_ANIM, V_COMMENTS), (SZCZENIAK, VS_ANIM, VS_COMMENTS)]:
    _add(V, order, anim, comments, "platki", efekty.platki(198, 72, 76, 56, n=9, seed=34, fall=40, duration=5600, r=(0.9, 1.5)), before="rodzina")
    anim["rodzina"] = {"type": "bob", "amplitude": 0.5, "duration": 3000}
VS_ANIM["stas"] = {"type": "bob", "amplitude": 0.5, "duration": 2700}

# noc w sniegu: oczy sowy w czarnym borze, iskierki na polu, zamiec niesiona wiatrem, Jaromir idzie
_s, _so = efekty.sowa(214, 232, 1.0)
_add(N, NOC, N_ANIM, N_COMMENTS, "sowa_oczy", _so, before="oczy")
_add(N, NOC, N_ANIM, N_COMMENTS, "iskry", efekty.iskry(10, 300, 180, 120, n=14, seed=35), before="jaromir")
_add(N, NOC, N_ANIM, N_COMMENTS, "zamiec", efekty.platki(0, 270, 200, 120, n=16, seed=36, fall=10, r=(0.8, 1.4)), before="jaromir")
N_ANIM["zamiec"] = {"type": "float", "amplitude": 4, "dx": 160, "dy": 14, "duration": 6500}
N_COMMENTS["zamiec"] = "śnieżny pył niesiony wiatrem po polu"
N_ANIM["jaromir"] = {"type": "bob", "amplitude": 0.8, "duration": 900}

# koledy: padajacy snieg w dwoch warstwach
_add(C, KOLEDY, C_ANIM, C_COMMENTS, "platki_0", efekty.platki(0, 0, 390, 220, n=22, seed=37, fall=160, duration=9000), before="kulig")
_add(C, KOLEDY, C_ANIM, C_COMMENTS, "platki_1", efekty.platki(0, 40, 390, 260, n=18, seed=38, fall=140, duration=7000, phase=0.5, r=(1.6, 2.6)), before="przod")

BACKGROUNDS = {"roraty": ("bg_roraty", R, RORATY, R_ANIM, R_REVEAL, R_EXTRA, R_COMMENTS, "roraty"),
               "przerwa_sniezki": ("bg_przerwa", P, PRZERWA, P_ANIM, P_REVEAL, P_EXTRA, P_COMMENTS, "przerwa pod kościółkiem"),
               "izba_noc": ("bg_izbanoc", I, IZBA_NOC, I_ANIM, I_REVEAL, I_EXTRA, I_COMMENTS, "izba nocą"),
               "wigilia": ("bg_wigilia", V, WIGILIA, V_ANIM, V_REVEAL, V_EXTRA, V_COMMENTS, "Wigilia"),
               "wigilia_szczeniak": ("bg_wigilia", V, SZCZENIAK, VS_ANIM, VS_REVEAL, VS_EXTRA, VS_COMMENTS, "Wigilia"),
               "noc_snieg": ("bg_nocsnieg", N, NOC, N_ANIM, N_REVEAL, N_EXTRA, N_COMMENTS, "noc w śniegu"),
               "kolyska": ("bg_kolyska", K, KOLYSKA, K_ANIM, K_REVEAL, K_EXTRA, K_COMMENTS, "kołyska Zosi"),
               "koledy": ("bg_koledy", C, KOLEDY, C_ANIM, C_REVEAL, C_EXTRA, C_COMMENTS, "święta")}

if __name__ == "__main__":
    if sys.argv[1] == "--master":
        prefix, L, order, anim, reveal, extra, comments, scene = BACKGROUNDS[sys.argv[2]]
        hide = set() if len(sys.argv) > 3 and sys.argv[3] == "wszystko" else set(reveal)
        print(master(L, [n for n in order if n not in hide]))
    else:
        import bgjson
        for key, (prefix, L, order, anim, reveal, extra, comments, scene) in BACKGROUNDS.items():
            # wszystkie warstwy slownika (takze klatki animacji, ktorych nie ma w kolejnosci)
            write_layers(sys.argv[1], prefix, scene, L, [n for n in L if n in comments], comments)
            bgjson.upsert(key, bgjson.entry(prefix, order, L, anim, reveal, extra))
