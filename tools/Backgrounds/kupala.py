# Generator tel rozdzialu pietnastego (Noc Kupały):
#   wiosna_okruszki — wiosenne podworze, zyto za stodola; Marysia sypie okruszki pod zyto (# pokaz: okruszki)
#   sobotka         — zmierzch, pagorek przy polach; ogien i glownie na miedzach (# pokaz: ogien), rodzina przy ogniu (# pokaz: rodzina),
#                     puste miejsce przy Hance (# pokaz: pusto)
#   izba_kupala     — zaryglowana izba noca, czerwony blask w szparach okiennic; uchylone drzwi i rozdeptana bylica (# pokaz: drzwi)
#   zyto_noc        — zyto w ksiezycu pod mlodnikiem; slad spiewu (# pokaz: spiew), biala koszulka w zbozu (# pokaz: koszulka),
#                     zytnia baba autora (# pokaz: baba), pogon (# pokaz: gonitwa), swit i wstazka na ostach (# pokaz: swit),
#                     skraj mlodnika z wstazka na jalowcu (# pokaz: mlodnik), lawa ludzi z glowniami (# pokaz: pochodnie), stratowane pole (# pokaz: stratowane)
#   rano_kupala     — ranek, dymiace sobotki; ludzie szukaja (# pokaz: szukaja), Staś z drewniakiem na pienku (# pokaz: stas)
#   targ_jagna      — targ przy kosciele w Bukowcu, kosze z ziolami; Jagna (# pokaz: jagna)
#   planetnik_burza — wieczor przed burza; plantenik autora z powrozem do chmury (# pokaz: planetnik), grad (# pokaz: grad)
#   torba_noc       — izba noca przy luczywie, drewniak na stole; welniak Marysi (# pokaz: welniak), swit w drzwiach (# pokaz: swit)
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/kupala.py src/LittleVillage/Resources/Images
#   python3 tools/Backgrounds/kupala.py --master <tlo> [wszystko] > podglad.svg
import sys, random
from common import *
import art, postacie, efekty
from efekty import add as _add
from licho import izba_tlo, okno, piec, stol, bor, PRZOD, PRZOD_IZBA
from wesele import chalupa, dym, staruszek, kosciolek
from czuwanie import plomyk, siedzi_na_lawie
from figurka import jagna, kosz
from start import mak

RED = "#A8101A"
NOC = '<rect width="390" height="440" fill="url(#hatchNight)" stroke="none" opacity="0.8"/>'


def zyto(x0, x1, base, top, seed, n=60, ink="#000000"):
    rnd = random.Random(seed)
    out = []
    for _ in range(n):
        x = rnd.uniform(x0, x1)
        h = rnd.uniform(top - 6, top + 6)
        out.append(f'<path d="M{x:.0f} {base}C{x + 1:.0f} {base - h * 0.5:.0f} {x - 1:.0f} {base - h * 0.8:.0f} {x + 2:.0f} {base - h:.0f}" fill="none" stroke="{ink}" stroke-width="1"/>'
                   f'<ellipse cx="{x + 2:.0f}" cy="{base - h - 4:.0f}" rx="1.6" ry="5" fill="url(#hatchDense)" stroke="{ink}" stroke-width="0.8"/>')
    return out


def drewniak(x, y, k=1.0):
    return (f'<path d="M{x - 6 * k:.1f} {y}C{x - 7 * k:.1f} {y - 6 * k:.1f} {x - 2 * k:.1f} {y - 8 * k:.1f} {x + 2 * k:.1f} {y - 6 * k:.1f}L{x + 8 * k:.1f} {y - 3 * k:.1f}C{x + 9 * k:.1f} {y} {x + 6 * k:.1f} {y + 1 * k:.1f} {x} {y + 1 * k:.1f}Z" fill="{RED}" stroke-width="{1.2 * k:.1f}"/>')


def glownia(x, y, k=1.0):
    return f'<path d="M{x} {y}l{6 * k:.1f} {-14 * k:.1f}" fill="none" stroke-width="{2 * k:.1f}"/>' + plomyk(x + 6 * k, y - 14 * k, 0.6 * k)


def wstazka_svg(x, y, k=1.0):
    return f'<path d="M{x} {y}c4 -3 8 -3 10 0c-3 1 -3 6 -1 10M{x + 4} {y}c-1 4 -4 8 -6 9" fill="none" stroke="{RED}" stroke-width="{1.8 * k:.1f}"/>'


def jalowiec(x, base, k=1.0):
    return f'<path d="M{x} {base}C{x - 14 * k:.1f} {base - 20 * k:.1f} {x - 8 * k:.1f} {base - 46 * k:.1f} {x} {base - 56 * k:.1f}C{x + 8 * k:.1f} {base - 46 * k:.1f} {x + 14 * k:.1f} {base - 20 * k:.1f} {x} {base}Z" fill="#000000" stroke-width="1.4"/>'


def marysia_rig(x, base, k, prefix, walk=True):
    tr = art.parse_transform(f"translate({x - 150 * k:.1f} {base - 512 * k:.1f}) scale({k})")
    return art.rig("marysia", tr, [
        ("cialo", ["cien", "nogi", "koszulka"], {"type": "bob", "amplitude": 0.8 if walk else 0.3, "duration": 700}, None),
        ("rece", ["rece"], {"type": "sway", "amplitude": 6, "duration": 900}, (150, 270)),
        ("glowa", ["glowa", "wlosy", "wstazka"], {"type": "sway", "amplitude": 4, "duration": 1600}, (150, 206))], prefix)


def baba_rig(cx, feet, k, prefix):
    tr = art.parse_transform(f"translate({cx - 150 * k:.1f} {feet - 512 * k:.1f}) scale({k})")
    return art.rig("zytnia_baba", tr, [
        ("cialo", ["cien", "cialo"], {"type": "sway", "amplitude": 1.2, "duration": 4000}, (150, 512)),
        ("ramie", ["ramie_siegajace"], {"type": "sway", "amplitude": 5, "duration": 3000}, "ramie_siegajace"),
        ("bucik", ["ramie_z_bucikiem"], {"type": "sway", "amplitude": 4, "duration": 2000}, "ramie_z_bucikiem"),
        ("glowa", ["glowa", "wlosy_z_klosow"], {"type": "sway", "amplitude": 3, "duration": 4000, "phase": 0.3}, "glowa")], prefix)


def planetnik_rig(cx, feet, k, prefix):
    tr = art.parse_transform(f"translate({cx - 155 * k:.1f} {feet - 512 * k:.1f}) scale({k})")
    return art.rig("planetnik", tr, [
        ("plaszcz", ["cien", "plaszcz"], {"type": "sway", "amplitude": 4, "duration": 800}, "plaszcz"),
        ("cialo", ["worek", "nogi", "tulow", "kostur"], {"type": "bob", "amplitude": 0.8, "duration": 1400}, None),
        ("reka", ["reka_z_powrozem"], {"type": "sway", "amplitude": 4, "duration": 2400}, "reka_z_powrozem"),
        ("glowa", ["glowa_z_broda"], {"type": "sway", "amplitude": 2, "duration": 1400}, "glowa_z_broda")], prefix)


def pole_tlo(night=False, horizon=212):
    t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>']
    t.append(f'<path d="M0 0H390V{horizon}H0Z" fill="url(#hatchNight)" stroke="none" opacity="{0.8 if night else 0.18}"/>')
    t.append(f'<path d="M-10 {horizon}C80 {horizon - 6} 200 {horizon - 2} 400 {horizon - 8}V440H-10Z" fill="#EDEBE6" stroke-width="2.6"/>')
    if night:
        t.append(f'<path d="M-10 {horizon}C80 {horizon - 6} 200 {horizon - 2} 400 {horizon - 8}V440H-10Z" fill="url(#hatchNight)" stroke="none" opacity="0.5"/>')
    return t


# ======================= WIOSNA — OKRUSZKI =======================
A = {}
t = pole_tlo()
t += bor(210, 200, 400, 12, seed=1601)
t.append(chalupa(10, 330, 140, 70, 56))
t.append('<path d="M180 330V270H260V330Z" fill="#FFFFFF" stroke-width="2.4"/><path d="M172 274L220 240L268 274Z" fill="url(#hatchDense)" stroke-width="2.2"/>')
t += zyto(250, 400, 360, 70, 1602, 40)
A["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
RIG_A = marysia_rig(240, 380, 0.16, "am")
art.install_rig(A, RIG_A)
AM = art.rig_names(RIG_A)
A["okruszki"] = (250, 360, 50, 30, group([f'<circle cx="{x}" cy="{y}" r="1.4" fill="#FFFFFF" stroke-width="0.6"/>' for x, y in [(256, 372), (264, 378), (272, 370), (280, 380), (290, 374)]]))
A["przod"] = (0, 422, 390, 422, group(PRZOD))
WIO = ["tlo"] + AM + ["okruszki", "przod"]
A_REVEAL = {"okruszki": "okruszki"}
A_ANIM = {"okruszki": {"type": "rise", "amplitude": -14, "duration": 1800}}
A_ANIM.update(art.rig_anims(RIG_A))
A_EXTRA = {"okruszki": {"fadeDuration": 1200}, "przod": {"depth": 1.0}}
A_COMMENTS = {"tlo": "wiosenne podwórze, stodoła, żyto za stodołą", "okruszki": "okruszki sypane pod żyto (# pokaz: okruszki)", "przod": "pierwszy plan",
              **{n: f"Marysia przy życie — {n[3:]} (rysunek autora)" for n in AM}}
_add(A, WIO, A_ANIM, A_COMMENTS, "zboze", ((240, 270, 160, 100, group(zyto(250, 400, 360, 70, 1603, 20))), {"type": "sway", "amplitude": 2, "duration": 2600, "anchorX": 0.5, "anchorY": 1}, "żyto faluje"), before="okruszki")
_add(A, WIO, A_ANIM, A_COMMENTS, "jaskolki", efekty.wrony(150, 110, n=3, k=0.32, seed=1604, amplitude=60, duration=4000), before="okruszki")
A_COMMENTS["jaskolki"] = "jaskółki"
_add(A, WIO, A_ANIM, A_COMMENTS, "dym", ((100, 170, 30, 60, group([dym(114, 220, 50)])), {"type": "sway", "amplitude": 3, "duration": 4600, "anchorX": 0.5, "anchorY": 1}, "dym z komina"), before="okruszki")
_add(A, WIO, A_ANIM, A_COMMENTS, "motyle", ((120, 330, 120, 60, group([postacie.butterfly(140, 356, 0.7), postacie.butterfly(200, 344, 0.6)])),
                                            {"type": "wander", "amplitude": 12, "flap": 0.4, "duration": 4000}, "motyle"), before="przod")
_add(A, WIO, A_ANIM, A_COMMENTS, "chmury", ((40, 40, 300, 40, group(['<path d="M80 72c8 -14 28 -14 34 0c8 -8 24 -2 22 8h-56z" fill="#FFFFFF" stroke-width="1.6"/>'])),
                                            {"type": "drift", "amplitude": 16, "duration": 16000}, "chmury"), before="okruszki")

# ======================= SOBOTKA =======================
S = {}
t = pole_tlo(night=True)
t += bor(210, -6, 400, 12, seed=1605)
t.append('<path d="M120 300C170 270 240 270 290 300Z" fill="#EDEBE6" stroke-width="2"/>')
t += zyto(-10, 400, 400, 60, 1606, 90)
S["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
S["ogien"] = (180, 230, 60, 70, group([plomyk(198, 296, 2.4), plomyk(214, 292, 3), plomyk(206, 286, 3.6)]))
S["glownie"] = (0, 300, 390, 60, group([glownia(x, y, 1.0) for x, y in [(30, 340), (110, 330), (300, 336), (360, 346)]]))
S["rodzina"] = (120, 250, 160, 60, group([postacie.man(150, 300, 0.8, hat=False), postacie.woman(170, 300, 0.75), postacie.man(240, 300, 0.75, hat=True), postacie.woman(262, 300, 0.7)]))
S["pusto"] = (160, 270, 30, 30, group(['<path d="M168 296h14" fill="none" stroke="#FFFFFF" stroke-width="1.4" stroke-dasharray="2 2"/>']))
S["przod"] = (0, 422, 390, 422, group(['<path d="M-10 432H400V844H-10Z" fill="#000000" stroke="none"/>']))
SOB = ["tlo", "ogien", "glownie", "rodzina", "pusto", "przod"]
S_REVEAL = {"ogien": "ogien", "glownie": "ogien", "rodzina": "rodzina", "pusto": "pusto"}
S_ANIM = {"ogien": {"type": "flame", "amplitude": 0.22, "duration": 700, "anchorX": 0.5, "anchorY": 1}, "glownie": {"type": "wander", "amplitude": 30, "duration": 6000},
          "rodzina": {"type": "bob", "amplitude": 0.4, "duration": 2400}, "pusto": {"type": "flicker", "amplitude": 0.3, "duration": 1200}}
S_EXTRA = {"ogien": {"noInvert": True, "fadeDuration": 1500}, "glownie": {"noInvert": True, "fadeDuration": 2000}, "rodzina": {"fadeDuration": 1500}, "pusto": {"fadeDuration": 1500}, "przod": {"depth": 1.0}}
S_COMMENTS = {"tlo": "zmierzch: pagórek przy polach żyta, bór", "ogien": "sobótka na pagórku (# pokaz: ogien)", "glownie": "chłopcy z głowniami obiegają miedze (# pokaz: ogien)",
              "rodzina": "rodzina i sąsiedzi przy ogniu (# pokaz: rodzina)", "pusto": "puste miejsce przy Hance (# pokaz: pusto)", "przod": "pierwszy plan"}
_add(S, SOB, S_ANIM, S_COMMENTS, "iskry", ((170, 160, 80, 90, group([f'<circle cx="{x}" cy="{y}" r="1.4" fill="{RED}" stroke="none"/>' for x, y in [(190, 230), (210, 210), (226, 226), (200, 190), (220, 180)]])),
                                           {"type": "rise", "amplitude": 40, "duration": 2400}, "iskry z sobótki (# pokaz: ogien)"), before="rodzina")
S_REVEAL["iskry"] = "ogien"
S_EXTRA["iskry"] = {"noInvert": True, "fadeDuration": 1500}
_add(S, SOB, S_ANIM, S_COMMENTS, "gwiazdy", efekty.iskry(0, 10, 390, 140, n=14, seed=1607, duration=3600), before="ogien")
S_COMMENTS["gwiazdy"] = "gwiazdy"
_add(S, SOB, S_ANIM, S_COMMENTS, "ksiezyc", ((40, 30, 40, 40, group(['<circle cx="60" cy="50" r="14" fill="#FFFFFF" stroke-width="2"/>'])), None, "księżyc"), before="ogien")
_add(S, SOB, S_ANIM, S_COMMENTS, "zboze", ((-10, 330, 410, 80, group(zyto(-10, 400, 404, 50, 1608, 40))), {"type": "sway", "amplitude": 2, "duration": 2600, "anchorX": 0.5, "anchorY": 1}, "żyto faluje"), before="przod")

# ======================= IZBA W NOC KUPALY =======================
I = {}
t = izba_tlo(dark=True)
t.append(okno(40, 110, 70, 70, fill="#000000"))
t.append('<path d="M40 110H110V180H40Z" fill="url(#hatchDense)" stroke-width="2"/>')
t.append(stol(140, 330, 110, 1.0))
t.append('<path d="M280 330V170H330V330Z" fill="#000000" stroke-width="2.4"/>')
t.append('<path d="M20 330V316H120V330M24 316V330M116 316V330" fill="none" stroke-width="3"/><path d="M16 312H124V318H16Z" fill="#FFFFFF" stroke-width="2"/>')
I["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
I["szpary"] = (40, 110, 70, 70, group([f'<path d="M{x} 112V178" fill="none" stroke="{RED}" stroke-width="1.4"/>' for x in (56, 74, 92)]))
I["jaromir"] = (150, 230, 60, 100, group([siedzi_na_lawie(176, 300, 1.4, -1)]))
I["drzwi"] = (240, 160, 150, 180, group(['<path d="M280 330V170H330V330Z" fill="#EDEBE6" stroke-width="2.4"/><path d="M280 330V170L262 178V322Z" fill="#000000" stroke-width="2"/>',
                                         '<path d="M290 330l8 -6l6 4l-4 6z" fill="url(#hatchDense)" stroke-width="1"/><path d="M296 328l4 -10M302 328l-2 -9" fill="none" stroke-width="1"/>']))
I["przod"] = (0, 422, 390, 422, group(PRZOD_IZBA))
IZB = ["tlo", "szpary", "jaromir", "drzwi", "przod"]
I_REVEAL = {"drzwi": "drzwi"}
I_ANIM = {"szpary": {"type": "flicker", "amplitude": 0.4, "duration": 1300}, "jaromir": {"type": "bob", "amplitude": 0.3, "duration": 3600}}
I_EXTRA = {"szpary": {"noInvert": True}, "drzwi": {"fadeDuration": 2500}, "przod": {"depth": 1.0}}
I_COMMENTS = {"tlo": "zaryglowana izba nocą: okiennice, stół, ława, drzwi", "szpary": "czerwony blask głowni w szparach okiennic",
              "jaromir": "Jaromir drzemie przy stole", "drzwi": "uchylone drzwi, rozdeptana bylica (# pokaz: drzwi)", "przod": "pierwszy plan"}
_add(I, IZB, I_ANIM, I_COMMENTS, "zar", ((330, 300, 40, 14, group([f'<circle cx="{x}" cy="308" r="1.6" fill="{RED}" stroke="none"/>' for x in (338, 346, 354)])),
                                         {"type": "flicker", "amplitude": 0.3, "duration": 1600}, "żar"), before="jaromir")
I_EXTRA["zar"] = {"noInvert": True}
_add(I, IZB, I_ANIM, I_COMMENTS, "pylki", efekty.pylki(40, 180, 260, 120, n=6, seed=1609, duration=8000), before="przod")
_add(I, IZB, I_ANIM, I_COMMENTS, "bylica", ((282, 150, 46, 22, group(['<path d="M286 166c10 -10 24 -10 38 0M296 160l-4 -8M306 158v-9M316 160l4 -8" fill="none" stroke-width="1.2"/>'])),
                                            {"type": "sway", "amplitude": 3, "duration": 3000, "anchorX": 0.5, "anchorY": 0}, "pęk bylicy nad drzwiami"), before="drzwi")
I_EXTRA["bylica"] = {"hideOn": "drzwi", "fadeDuration": 1500}

# ======================= ZYTO NOCA =======================
Z = {}
t = pole_tlo(night=True)
t += bor(210, -6, 400, 12, seed=1610)
t += [spruce(x, 250, 40, 16) for x in range(150, 400, 18)]
t += zyto(-10, 400, 330, 60, 1611, 120)
Z["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
Z["ksiezyc"] = (300, 30, 40, 40, group(['<circle cx="320" cy="50" r="14" fill="#FFFFFF" stroke-width="2"/>']))
Z["spiew"] = (150, 230, 120, 40, group(['<path d="M160 250q8 -8 16 0q8 -8 16 0q8 -8 16 0q8 -8 16 0" fill="none" stroke="#FFFFFF" stroke-width="1.2" stroke-dasharray="3 3"/>']))
Z["koszulka"] = (220, 236, 40, 40, group(['<path d="M232 270V250H246V270Z" fill="#FFFFFF" stroke-width="1"/>', wstazka_svg(236, 246, 1.0)]))
RIG_Z = baba_rig(120, 420, 0.5, "zb")
art.install_rig(Z, RIG_Z)
ZB = art.rig_names(RIG_Z)
Z["zboze_przod"] = (-10, 300, 410, 140, group(['<path d="M-10 336C100 330 280 334 400 330V440H-10Z" fill="#EDEBE6" stroke="none"/>', '<path d="M-10 336C100 330 280 334 400 330V440H-10Z" fill="url(#hatchNight)" stroke="none" opacity="0.5"/>'] + zyto(-10, 400, 436, 110, 1622, 140)))
Z["gonitwa"] = (230, 280, 120, 130, group([postacie.man(290, 404, 1.3, hat=False, arm="l20 -24"), '<path d="M244 330l-16 -6M248 350l-20 2M250 372l-18 6" fill="none" stroke="#FFFFFF" stroke-width="1.4"/>']))
Z["swit"] = (0, 0, 390, 440, group(['<path d="M0 0H390V220H0Z" fill="#EDEBE6" stroke="none" opacity="0.85"/>', '<path d="M60 360l6 -18l6 18M54 350h24" fill="none" stroke-width="1.6"/>', wstazka_svg(62, 342, 1.2)]))
Z["mlodnik"] = (0, 0, 390, 440, group([NOC, jalowiec(200, 330, 1.4), wstazka_svg(196, 290, 1.2), postacie.man(120, 400, 1.3, hat=False), postacie.woman(90, 402, 1.2)] + [spruce(x, 330, 110, 40) for x in (250, 300, 350, 30)]))
Z["pochodnie"] = (0, 270, 390, 80, group([postacie.man(x, 340, 0.7, hat=(x % 2 == 0)) + glownia(x + 8, 300, 1.0) for x in range(20, 390, 40)]))
Z["stratowane"] = (0, 0, 390, 440, group(['<path d="M0 0H390V220H0Z" fill="#EDEBE6" stroke="none" opacity="0.85"/>', '<path d="M-10 300H400V440H-10Z" fill="#EDEBE6" stroke="none"/>'] +
                                         [f'<path d="M{x} {y}l{rnd_dx} 4" fill="none" stroke-width="1.2"/>' for x, y, rnd_dx in [(20 + i * 18, 320 + (i % 5) * 22, 14 if i % 2 else -14) for i in range(21)]] +
                                         [jalowiec(200, 300, 1.2), wstazka_svg(196, 264, 1.1)]))
Z["przod"] = (0, 422, 390, 422, group(['<path d="M-10 432H400V844H-10Z" fill="#000000" stroke="none"/>']))
ZYT = ["tlo", "ksiezyc", "spiew", "koszulka"] + ZB + ["zboze_przod", "gonitwa", "pochodnie", "swit", "mlodnik", "stratowane", "przod"]
HIDE_ZB = "gonitwa,mlodnik,pochodnie"
Z_REVEAL = {"spiew": "spiew", "koszulka": "koszulka", **{n: "baba" for n in ZB}, "gonitwa": "gonitwa", "swit": "swit", "mlodnik": "mlodnik", "pochodnie": "pochodnie", "stratowane": "stratowane"}
Z_ANIM = {"zboze_przod": {"type": "sway", "amplitude": 1.5, "duration": 2800, "anchorX": 0.5, "anchorY": 1}, "spiew": {"type": "drift", "amplitude": 10, "duration": 3000}, "koszulka": {"type": "slide", "dx": 60, "dy": -20, "duration": 9000, "once": True},
          "gonitwa": {"type": "bob", "amplitude": 1.2, "duration": 500}, "pochodnie": {"type": "slide", "dx": 0, "dy": -30, "duration": 12000, "once": True}}
Z_ANIM.update(art.rig_anims(RIG_Z))
Z_EXTRA = {"spiew": {"fadeDuration": 1500, "hideOn": HIDE_ZB}, "koszulka": {"fadeDuration": 1500, "hideOn": "baba"}, **{n: {"fadeDuration": 2500, "hideOn": HIDE_ZB} for n in ZB},
           "gonitwa": {"fadeDuration": 800, "hideOn": "swit"}, "swit": {"fadeDuration": 4000}, "mlodnik": {"fadeDuration": 2500},
           "pochodnie": {"fadeDuration": 1500, "noInvert": True, "hideOn": "stratowane"}, "stratowane": {"fadeDuration": 4000}, "przod": {"depth": 1.0}}
Z_COMMENTS = {"tlo": "żyto w księżycu pod młodnikiem i borem", "ksiezyc": "księżyc", "zboze_przod": "żyto na pierwszym planie (zasłania żytnią babę do pasa)", "spiew": "śpiew niesie się znad żyta (# pokaz: spiew)",
              "koszulka": "mała biała koszulka i czerwona wstążka płyną przez zboże (# pokaz: koszulka)", "gonitwa": "Jaromir goni w zbożu (# pokaz: gonitwa)",
              "swit": "świt, wstążka na ostach (# pokaz: swit)", "mlodnik": "skraj młodnika, wstążka na jałowcu, Hanka trzyma Jaromira (# pokaz: mlodnik)",
              "pochodnie": "ława ludzi z głowniami (# pokaz: pochodnie)", "stratowane": "świt: stratowane żyto, wstążka na jałowcu (# pokaz: stratowane)", "przod": "pierwszy plan",
              **{n: f"żytnia baba z drewniakiem — {n[3:]} (rysunek autora; # pokaz: baba)" for n in ZB}}
_add(Z, ZYT, Z_ANIM, Z_COMMENTS, "zboze", ((-10, 270, 410, 70, group(zyto(-10, 400, 334, 40, 1612, 60))), {"type": "sway", "amplitude": 2, "duration": 2600, "anchorX": 0.5, "anchorY": 1}, "żyto faluje w nocy"), before="spiew")
_add(Z, ZYT, Z_ANIM, Z_COMMENTS, "gwiazdy", efekty.iskry(0, 10, 300, 140, n=12, seed=1613, duration=3600), before="ksiezyc")
Z_COMMENTS["gwiazdy"] = "gwiazdy"
_add(Z, ZYT, Z_ANIM, Z_COMMENTS, "rosa", efekty.iskry(0, 280, 390, 60, n=12, seed=1614, duration=2400), before="spiew")
Z_COMMENTS["rosa"] = "rosa na kłosach skrzy się"

# ======================= RANO PO KUPALE =======================
R = {}
t = pole_tlo()
t += bor(210, -6, 400, 12, seed=1615)
t.append('<path d="M240 214C270 196 330 196 360 214Z" fill="#EDEBE6" stroke-width="1.6"/>')
t.append(chalupa(10, 340, 130, 70, 56))
t.append('<path d="M180 340V280H250V340Z" fill="#FFFFFF" stroke-width="2.4"/><path d="M172 284L215 252L258 284Z" fill="url(#hatchDense)" stroke-width="2.2"/>')
t.append('<path d="M262 380c0 -10 30 -10 30 0z" fill="#000000" stroke-width="1.6"/>')
R["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
R["szukaja"] = (150, 200, 240, 100, group([postacie.man(x, 290, 0.6, hat=True) for x in (170, 230, 300, 350)] + [postacie.woman(200, 292, 0.55)]))
R["stas"] = (250, 320, 60, 70, group([staruszek(276, 378, 1.2), drewniak(296, 336, 1.2)]))
R["przod"] = (0, 422, 390, 422, group(PRZOD))
RAN = ["tlo", "szukaja", "stas", "przod"]
R_REVEAL = {"szukaja": "szukaja", "stas": "stas"}
R_ANIM = {"szukaja": {"type": "drift", "amplitude": 10, "duration": 7000}, "stas": {"type": "bob", "amplitude": 0.3, "duration": 3000}}
R_EXTRA = {"szukaja": {"fadeDuration": 2000}, "stas": {"fadeDuration": 2000}, "przod": {"depth": 1.0}}
R_COMMENTS = {"tlo": "ranek: chałupa, stodoła, pieniek, bór", "szukaja": "ludzie szukają na polach (# pokaz: szukaja)",
              "stas": "stary Staś z drewniakiem na pieńku (# pokaz: stas)", "przod": "pierwszy plan"}
_add(R, RAN, R_ANIM, R_COMMENTS, "dymy", ((230, 140, 140, 70, group(['<path d="M270 206c-6 -16 6 -30 -2 -54M310 206c6 -18 -6 -34 2 -58" fill="none" stroke-width="1.4" opacity="0.6"/>'])),
                                          {"type": "rise", "amplitude": 12, "duration": 3400}, "dymy z wygasłych sobótek"), before="szukaja")
_add(R, RAN, R_ANIM, R_COMMENTS, "bylica", ((40, 300, 50, 30, group(['<path d="M44 312c10 -8 24 -8 38 0M54 308l-4 -6M64 306v-7M74 308l4 -6" fill="none" stroke-width="1.2"/>'])),
                                            {"type": "sway", "amplitude": 4, "duration": 3600, "anchorX": 0.5, "anchorY": 0}, "więdnąca bylica za oknem"), before="szukaja")
_add(R, RAN, R_ANIM, R_COMMENTS, "wrony", efekty.wrony(150, 100, n=4, k=0.4, seed=1616, amplitude=60), before="szukaja")
_add(R, RAN, R_ANIM, R_COMMENTS, "trawa", ((0, 384, 390, 46, group([grass(x, 430, 1.3) for x in range(6, 390, 20)])),
                                           {"type": "sway", "amplitude": 2, "duration": 2800, "anchorX": 0.5, "anchorY": 1}, "trawa"), before="przod")

# ======================= TARG W BUKOWCU =======================
T = {}
t = pole_tlo(horizon=230)
t.append(kosciolek(150, 250, 3.0))
t.append('<path d="M-10 250H400" fill="none" stroke-width="2"/>')
for x in (20, 300):
    t.append(f'<path d="M{x} 330V290H{x + 80}V330" fill="none" stroke-width="3"/><path d="M{x - 6} 290H{x + 86}V298H{x - 6}Z" fill="#FFFFFF" stroke-width="2"/>')
T["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
T["ludzie"] = (0, 330, 390, 100, group([postacie.woman(x, 420, 0.9) for x in (40, 330)] + [postacie.man(x, 420, 0.95, hat=True) for x in (80, 290, 360)]))
T["jagna"] = (130, 300, 130, 110, group([jagna(170, 404, 1.3), kosz(220, 404, 1.4), kosz(250, 404, 1.2)]))
T["przod"] = (0, 422, 390, 422, group(PRZOD))
TAR = ["tlo", "ludzie", "jagna", "przod"]
T_REVEAL = {"jagna": "jagna"}
T_ANIM = {"ludzie": {"type": "bob", "amplitude": 0.5, "duration": 1800}, "jagna": {"type": "bob", "amplitude": 0.3, "duration": 3000}}
T_EXTRA = {"jagna": {"fadeDuration": 1800}, "przod": {"depth": 1.0}}
T_COMMENTS = {"tlo": "targ przy kościele w Bukowcu, kramy", "ludzie": "ludzie na targu", "jagna": "Jagna za koszami z ziołami (# pokaz: jagna)", "przod": "pierwszy plan"}
_add(T, TAR, T_ANIM, T_COMMENTS, "golebie", efekty.wrony(150, 100, n=4, k=0.35, seed=1617, amplitude=60, duration=4500), before="ludzie")
T_COMMENTS["golebie"] = "gołębie nad kościołem"
_add(T, TAR, T_ANIM, T_COMMENTS, "dzwon", ((246, 128, 16, 16, group(['<path d="M249 142c0 -8 2 -12 5 -12c3 0 5 4 5 12z" fill="#000000" stroke-width="1"/>'])),
                                           {"type": "sway", "amplitude": 12, "duration": 1600, "anchorX": 0.5, "anchorY": 0}, "dzwon na wieży"), before="ludzie")
_add(T, TAR, T_ANIM, T_COMMENTS, "ziola", ((200, 370, 70, 30, group(['<path d="M210 392l-3 -12M218 390l1 -14M226 392l4 -12M244 394l-2 -10M252 392l3 -10" fill="none" stroke-width="1.2"/>'])),
                                           {"type": "sway", "amplitude": 4, "duration": 2600, "anchorX": 0.5, "anchorY": 1}, "zioła w koszach"), before="przod")
_add(T, TAR, T_ANIM, T_COMMENTS, "chmury", ((40, 40, 300, 40, group(['<path d="M60 72c8 -14 28 -14 34 0c8 -8 24 -2 22 8h-56z" fill="#FFFFFF" stroke-width="1.6"/>'])),
                                            {"type": "drift", "amplitude": 16, "duration": 16000}, "chmury"), before="ludzie")

# ======================= PLANETNIK =======================
P = {}
t = pole_tlo(horizon=230)
t.append('<path d="M0 0H390V230H0Z" fill="url(#hatchDense)" stroke="none" opacity="0.55"/>')
t += bor(228, 220, 400, 12, seed=1618)
t.append(chalupa(10, 340, 130, 70, 56))
P["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
P["chmura"] = (150, 20, 240, 110, group(['<path d="M160 110c-10 -30 30 -50 50 -30c10 -30 60 -30 70 0c20 -20 60 -10 60 20c30 0 40 30 20 40H170c-20 0 -24 -20 -10 -30z" fill="#000000" stroke-width="2"/>']))
RIG_P = planetnik_rig(240, 410, 0.42, "pl")
art.install_rig(P, RIG_P)
PL = art.rig_names(RIG_P)
P["powroz"] = (250, 100, 60, 130, group(['<path d="M266 226C276 180 290 140 300 110" fill="none" stroke-width="1.8"/>']))
P["grad"] = (0, 0, 390, 440, group(['<rect width="390" height="440" fill="url(#hatchNight)" stroke="none" opacity="0.7"/>'] +
                                   [f'<circle cx="{x}" cy="{y}" r="2" fill="#FFFFFF" stroke-width="0.6"/>' for x, y in [(30 + (i * 37) % 360, 40 + (i * 53) % 360) for i in range(40)]]))
P["przod"] = (0, 422, 390, 422, group(PRZOD))
PLA = ["tlo", "chmura"] + PL + ["powroz", "grad", "przod"]
P_REVEAL = {**{n: "planetnik" for n in PL}, "powroz": "planetnik", "chmura": "planetnik", "grad": "grad"}
P_ANIM = {"chmura": {"type": "drift", "amplitude": 14, "duration": 6000}, "powroz": {"type": "sway", "amplitude": 3, "duration": 2400, "anchorX": 0, "anchorY": 1},
          "grad": {"type": "rise", "amplitude": -60, "duration": 900}}
P_ANIM.update(art.rig_anims(RIG_P))
P_EXTRA = {**{n: {"fadeDuration": 2000, "hideOn": "grad"} for n in PL}, "powroz": {"fadeDuration": 2000, "hideOn": "grad"}, "chmura": {"fadeDuration": 2500}, "grad": {"fadeDuration": 1500}, "przod": {"depth": 1.0}}
P_COMMENTS = {"tlo": "wieczór przed burzą: ciemne niebo, chałupa, bór", "chmura": "czarna chmura (# pokaz: planetnik)", "powroz": "powróz do chmury (# pokaz: planetnik)",
              "grad": "grad nad polem (# pokaz: grad)", "przod": "pierwszy plan", **{n: f"płanetnik — {n[3:]} (rysunek autora; # pokaz: planetnik)" for n in PL}}
_add(P, PLA, P_ANIM, P_COMMENTS, "blysk", ((0, 0, 390, 230, group(['<path d="M0 0H390V230H0Z" fill="#FFFFFF" stroke="none" opacity="0.5"/>'])), {"type": "flash", "amplitude": 1, "duration": 6000}, "błyskawica (# pokaz: grad)"), before="chmura")
P_REVEAL["blysk"] = "grad"
P_EXTRA["blysk"] = {"noInvert": True, "fadeDuration": 1000}
_add(P, PLA, P_ANIM, P_COMMENTS, "zboze", ((140, 330, 260, 90, group(zyto(150, 400, 420, 60, 1619, 40))), {"type": "sway", "amplitude": 4, "duration": 1200, "anchorX": 0.5, "anchorY": 1}, "zboże kładzie się na wietrze"), before="grad")
_add(P, PLA, P_ANIM, P_COMMENTS, "wrony", efekty.wrony(80, 120, n=4, k=0.4, seed=1620, amplitude=80, duration=3000), before="chmura")
COMMENTS_DUMMY = None

# ======================= TORBA — NOC =======================
N = {}
t = izba_tlo(dark=True)
t.append(okno(40, 110, 70, 70, fill="#000000"))
t.append(stol(130, 330, 130, 1.0))
t.append(piec(300, 330, 1.0))
t.append('<path d="M280 330V170H290" fill="none" stroke-width="0"/>')
N["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
N["luczywo"] = (60, 120, 30, 50, group([f'<path d="M70 168l10 -30" fill="none" stroke-width="2"/>', plomyk(80, 140, 0.9)]))
N["blask"] = (0, 80, 260, 260, group(['<ellipse cx="90" cy="180" rx="120" ry="100" fill="#FFFFFF" stroke="none" opacity="0.25"/>']))
N["hanka"] = (110, 230, 60, 80, group([siedzi_na_lawie(136, 300, 1.3, 1), '<path d="M150 284l14 -4" fill="none" stroke="#FFFFFF" stroke-width="1"/>']))
N["drewniak"] = (196, 288, 20, 14, group([drewniak(206, 298, 1.2)]))
N["welniak"] = (220, 284, 40, 16, group(['<path d="M222 298H256V290C250 286 228 286 222 290Z" fill="url(#hatch)" stroke-width="1.4"/>']))
N["swit"] = (0, 0, 390, 440, group(['<path d="M40 110H110V180H40Z" fill="#FFFFFF" stroke="none" opacity="0.6"/>', postacie.man(330, 330, 1.3, hat=False),
                                    '<path d="M342 300L356 270" fill="none" stroke-width="3"/>']))
N["przod"] = (0, 422, 390, 422, group(PRZOD_IZBA))
TOR = ["tlo", "blask", "luczywo", "hanka", "drewniak", "welniak", "swit", "przod"]
N_REVEAL = {"welniak": "welniak", "swit": "swit"}
N_ANIM = {"luczywo": {"type": "flame", "amplitude": 0.2, "duration": 800, "anchorX": 0.5, "anchorY": 1}, "blask": {"type": "flicker", "amplitude": 0.6, "duration": 1400},
          "hanka": {"type": "sway", "amplitude": 1.2, "duration": 2600, "anchorX": 0.5, "anchorY": 1}}
N_EXTRA = {"luczywo": {"noInvert": True}, "blask": {"noInvert": True}, "welniak": {"fadeDuration": 1500}, "swit": {"fadeDuration": 3000}, "przod": {"depth": 1.0}}
N_COMMENTS = {"tlo": "izba nocą: okno, stół, piec", "luczywo": "łuczywo w oknie", "blask": "blask łuczywa", "hanka": "Hanka szyje torbę",
              "drewniak": "czerwony drewniak Marysi na stole", "welniak": "wełniak Marysi na torbie (# pokaz: welniak)", "swit": "świt, Jaromir z siekierą w drzwiach (# pokaz: swit)", "przod": "pierwszy plan"}
_add(N, TOR, N_ANIM, N_COMMENTS, "pylki", efekty.pylki(80, 160, 200, 140, n=6, seed=1621, duration=8000), before="przod")
_add(N, TOR, N_ANIM, N_COMMENTS, "zar", ((316, 300, 40, 14, group([f'<circle cx="{x}" cy="306" r="1.6" fill="{RED}" stroke="none"/>' for x in (324, 332, 340)])),
                                         {"type": "flicker", "amplitude": 0.3, "duration": 1600}, "żar w piecu"), before="hanka")
N_EXTRA["zar"] = {"noInvert": True}

BACKGROUNDS = {"wiosna_okruszki": ("bg_okruszki", A, WIO, A_ANIM, A_REVEAL, A_EXTRA, A_COMMENTS, "wiosna z okruszkami"),
               "sobotka": ("bg_sobotka", S, SOB, S_ANIM, S_REVEAL, S_EXTRA, S_COMMENTS, "sobótka"),
               "izba_kupala": ("bg_izbakupala", I, IZB, I_ANIM, I_REVEAL, I_EXTRA, I_COMMENTS, "izba w noc Kupały"),
               "zyto_noc": ("bg_zytonoc", Z, ZYT, Z_ANIM, Z_REVEAL, Z_EXTRA, Z_COMMENTS, "żyto nocą"),
               "rano_kupala": ("bg_ranokupala", R, RAN, R_ANIM, R_REVEAL, R_EXTRA, R_COMMENTS, "rano po Kupale"),
               "targ_jagna": ("bg_targjagna", T, TAR, T_ANIM, T_REVEAL, T_EXTRA, T_COMMENTS, "targ w Bukowcu"),
               "planetnik_burza": ("bg_planetnik", P, PLA, P_ANIM, P_REVEAL, P_EXTRA, P_COMMENTS, "płanetnik"),
               "torba_noc": ("bg_torba", N, TOR, N_ANIM, N_REVEAL, N_EXTRA, N_COMMENTS, "noc przed wyprawą")}

if __name__ == "__main__":
    if sys.argv[1] == "--master":
        prefix, Ls, order, anim, reveal, extra, comments, scene = BACKGROUNDS[sys.argv[2]]
        hide = set() if len(sys.argv) > 3 and sys.argv[3] == "wszystko" else set(reveal) | {n for n, e in extra.items() if e.get("appearAfter")}
        print(master(Ls, [n for n in order if n not in hide]))
    else:
        import bgjson
        for key, (prefix, Ls, order, anim, reveal, extra, comments, scene) in BACKGROUNDS.items():
            write_layers(sys.argv[1], prefix, scene, Ls, [n for n in Ls if n in comments], comments)
            bgjson.upsert(key, bgjson.entry(prefix, order, Ls, anim, reveal, extra))
