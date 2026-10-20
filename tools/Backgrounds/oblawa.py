# Generator tel rozdzialu jedenastego (Obława):
#   mroz_izba      — mrozna noc w izbie: piec, kolyska, oszronione okno; wycie zza okna (# pokaz: wycie)
#   owczarnia_noc  — ksiezycowa noc, obora, szare wilki krazace i bialy wilk autora na skraju pola (# pokaz: wilki),
#                    rozkaz — wataha odchodzi (# pokaz: rozkaz), swit — krew na sniegu (# pokaz: swit), martwy pies (# pokaz: pies)
#   gajowy_karczma — mrozny dzien przed karczma: sanie, ludzie; gajowy z dubeltowka (# pokaz: gajowy), zmierzch i Antek (# pokaz: antek)
#   oblawa_mlodnik — swit w mlodniku: kotlinka pod przewroconym pniem, rzad naganiaczy (# pokaz: naganka), bialy wilk (# pokaz: wilk),
#                    gajowy (# pokaz: gajowy), strzal i krew (# pokaz: strzal), zmylka (# pokaz: zmylka), kamien (# pokaz: kamien)
#   po_oblawie     — podworze o swicie: pniak przy plocie, mlodnik; noc i bolesne wycie (# pokaz: wycie), zajac i biel w mlodniku (# pokaz: zajac)
#   odwilz         — marcowa odwilz: strumienie, ptaki; rude szczenie na progu (# pokaz: szczenie), bialy wilk wyje na wzgorzu (# pokaz: wilk)
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/oblawa.py src/LittleVillage/Resources/Images
#   python3 tools/Backgrounds/oblawa.py --master <tlo> [wszystko] > podglad.svg
import sys, random, math
from common import *
import art, postacie, efekty
from efekty import add as _add
from licho import izba_tlo, okno, piec, stol, bor, pniak, PRZOD, PRZOD_IZBA
from rusalki import sitting
from wesele import chalupa, dym, sanie, staruszek

RED = "#A8101A"
SNIEG = ['<path d="M-10 432H400V844H-10Z" fill="#FFFFFF" stroke="none"/>']


def wilk_stoi(cx, feet, k, prefix):
    tr = art.parse_transform(f"translate({cx - 180 * k:.1f} {feet - 510 * k:.1f}) scale({k})")
    return art.rig("bialy_wilk_stoi", tr, [
        ("cialo", ["cien", "lapy_tylne", "tulow", "lapy_przednie_i_piers"], {"type": "bob", "amplitude": 0.4, "duration": 4000}, None),
        ("ogon", ["ogon"], {"type": "sway", "amplitude": 5, "duration": 4000}, "ogon"),
        ("grzywa", ["grzywa"], {"type": "sway", "amplitude": 1.5, "duration": 500}, "grzywa"),
        ("glowa", ["glowa"], {"type": "sway", "amplitude": 2, "duration": 4000}, "glowa"),
        ("oczy", ["oczy"], {"type": "blink", "duration": 6000}, None)], prefix)


def wilk_wyje(cx, feet, k, prefix):
    tr = art.parse_transform(f"translate({cx - 190 * k:.1f} {feet - 510 * k:.1f}) scale({k})")
    return art.rig("bialy_wilk_wycie", tr, [
        ("cialo", ["cien", "lapy_dalsze", "tulow", "lapy_blizsze"], {"type": "bob", "amplitude": 0.4, "duration": 3000}, None),
        ("ogon", ["ogon"], {"type": "sway", "amplitude": 4, "duration": 3000}, "ogon"),
        ("grzywa", ["grzywa"], {"type": "sway", "amplitude": 2, "duration": 400}, "grzywa"),
        ("glowa", ["glowa", "oczy"], {"type": "sway", "amplitude": 6, "duration": 3000}, "glowa")], prefix)


def szary_wilk(x, y, k=1.0, facing=1):
    """Szary wilk z profilu (kreskowany grzbiet, opuszczony leb)."""
    f = facing
    P = lambda dx, dy: f"{x + dx * f * k:.1f} {y + dy * k:.1f}"
    return (f'<path d="M{P(-22, -14)}C{P(-14, -22)} {P(10, -22)} {P(16, -16)}L{P(26, -14)}L{P(32, -8)}L{P(26, -6)}L{P(18, -8)}C{P(14, -4)} {P(-10, -4)} {P(-20, -6)}'
            f'L{P(-30, -2)}L{P(-26, -10)}Z" fill="url(#hatchDense)" stroke-width="1.4"/>'
            f'<path d="M{P(-16, -6)}L{P(-18, 0)}M{P(-10, -6)}L{P(-9, 0)}M{P(10, -6)}L{P(8, 0)}M{P(15, -7)}L{P(17, 0)}" fill="none" stroke-width="1.8"/>'
            f'<path d="M{P(22, -16)}l2 -5l2 4" fill="none" stroke-width="1.2"/><circle cx="{x + 27 * f * k:.1f}" cy="{y - 11 * k:.1f}" r="0.9" fill="#FFFFFF" stroke="none"/>')


def gwiazdy(x, y, w, h, seed):
    return efekty.iskry(x, y, w, h, n=14, seed=seed, duration=3600)


def zaspa_tlo(night=False, horizon=220):
    t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>']
    if night:
        t.append(f'<path d="M0 0H390V{horizon}H0Z" fill="url(#hatchNight)" stroke="none" opacity="0.85"/>')
    else:
        t.append(f'<path d="M0 0H390V{horizon - 60}H0Z" fill="url(#hatch)" stroke="none" opacity="0.3"/>')
    t.append(f'<path d="M-10 {horizon}C80 {horizon - 8} 200 {horizon - 4} 400 {horizon - 10}V440H-10Z" fill="#FFFFFF" stroke-width="2.4"/>')
    return t


# ======================= MROZ — IZBA =======================
Z = {}
t = izba_tlo(dark=True)
t.append(okno(250, 110, 80, 80, fill="#EDEBE6"))
t.append(piec(20, 330, 1.1))
Z["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
Z["szron"] = (250, 110, 80, 80, group(['<path d="M252 112l14 10M252 130l18 6M328 112l-14 12M328 134l-16 4M252 188l16 -12M328 188l-14 -10" fill="none" stroke="#FFFFFF" stroke-width="1.4"/>'] +
                                       [f'<path d="M{x} {y}l4 -4M{x} {y}l-4 -4M{x} {y}l0 5" fill="none" stroke="#FFFFFF" stroke-width="1"/>' for x, y in [(262, 120), (318, 124), (264, 180), (316, 178)]]))
Z["kolyska"] = (150, 290, 70, 44, group(['<path d="M160 300H210L206 322H164Z" fill="#FFFFFF" stroke-width="2"/><path d="M156 330Q185 318 214 330" fill="none" stroke-width="2.4"/><circle cx="174" cy="300" r="4" fill="#FFFFFF" stroke-width="1.2"/>']))
Z["hanka"] = (196, 230, 60, 100, group([sitting(220, 330, 1.5, -1)]))
Z["jaromir"] = (90, 230, 50, 100, group([sitting(110, 330, 1.5, 1)]))
Z["plomien"] = (50, 300, 20, 24, group([f'<path d="M60 322c-6 -5 -4 -14 0 -20c4 6 6 15 0 20z" fill="{RED}" stroke="none"/>']))
Z["blask"] = (0, 220, 180, 140, group(['<ellipse cx="60" cy="300" rx="80" ry="50" fill="#FFFFFF" stroke="none" opacity="0.3"/>']))
Z["wycie"] = (252, 140, 76, 50, group(['<path d="M260 160q8 -10 16 0q8 -10 16 0q8 -10 16 0" fill="none" stroke="#FFFFFF" stroke-width="1.4" stroke-dasharray="3 3"/>',
                                        '<circle cx="296" cy="176" r="1.4" fill="#FFFFFF" stroke="none"/><circle cx="302" cy="176" r="1.4" fill="#FFFFFF" stroke="none"/>']))
Z["przod"] = (0, 422, 390, 422, group(PRZOD_IZBA))
ZIMA = ["tlo", "szron", "wycie", "blask", "plomien", "jaromir", "kolyska", "hanka", "przod"]
Z_REVEAL = {"wycie": "wycie"}
Z_ANIM = {"plomien": {"type": "flame", "amplitude": 0.15, "duration": 800, "anchorX": 0.5, "anchorY": 1}, "blask": {"type": "flicker", "amplitude": 0.6, "duration": 1500},
          "kolyska": {"type": "sway", "amplitude": 2, "duration": 2400, "anchorX": 0.5, "anchorY": 1}, "hanka": {"type": "sway", "amplitude": 1.5, "duration": 2400, "anchorX": 0.5, "anchorY": 1},
          "jaromir": {"type": "bob", "amplitude": 0.3, "duration": 3200}, "szron": {"type": "flicker", "amplitude": 0.5, "duration": 3000}, "wycie": {"type": "flicker", "amplitude": 0.1, "duration": 2400}}
Z_EXTRA = {"plomien": {"noInvert": True}, "blask": {"noInvert": True}, "wycie": {"fadeDuration": 2500}, "przod": {"depth": 1.0}}
Z_COMMENTS = {"tlo": "mroźna noc w izbie: piec, okno", "szron": "szron na szybie (skrzy się)", "kolyska": "kołyska Marysi (kołysze się)", "hanka": "Hanka kołysze kołyskę",
              "jaromir": "Jaromir przy piecu", "plomien": "ogień w piecu", "blask": "blask z pieca", "wycie": "wycie zza okna, ślepia w polu (# pokaz: wycie)", "przod": "pierwszy plan"}
_add(Z, ZIMA, Z_ANIM, Z_COMMENTS, "platki", efekty.platki(252, 112, 76, 76, n=8, seed=1101, fall=60, duration=4000), before="wycie")
_add(Z, ZIMA, Z_ANIM, Z_COMMENTS, "dym", ((30, 150, 30, 60, group([dym(44, 200, 50, 0.4)])), {"type": "sway", "amplitude": 3, "duration": 4600, "anchorX": 0.5, "anchorY": 1}, "dym znad pieca"), before="plomien")
_add(Z, ZIMA, Z_ANIM, Z_COMMENTS, "zar", ((30, 314, 50, 10, group([f'<circle cx="{x}" cy="320" r="1.8" fill="{RED}" stroke="none"/>' for x in (38, 48, 58, 68)])),
                                         {"type": "flicker", "amplitude": 0.3, "duration": 1600}, "żar"), before="plomien")
Z_EXTRA["zar"] = {"noInvert": True}
_add(Z, ZIMA, Z_ANIM, Z_COMMENTS, "pylki", efekty.pylki(60, 200, 140, 120, n=6, seed=1102, duration=8000), before="przod")

# ======================= OWCZARNIA NOCA =======================
O = {}
t = zaspa_tlo(night=True)
t += bor(222, 220, 400, 11, seed=1103)
t.append('<path d="M40 340V270H180V340Z" fill="#FFFFFF" stroke-width="2.4"/><path d="M30 272L110 224L190 272Z" fill="#FFFFFF" stroke-width="2.4"/><path d="M90 340V296H120V340Z" fill="#000000"/>')
t.append('<path d="M36 272L110 228L184 272" fill="none" stroke-width="1" stroke-dasharray="6 4"/>')
t.append('<path d="M-10 370H230M-10 384H230" fill="none" stroke-width="2"/>')
for x in range(-4, 230, 22):
    t.append(f'<path d="M{x - 3} 394V362L{x} 356L{x + 3} 362V394Z" fill="#FFFFFF" stroke-width="1.4"/>')
O["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
O["ksiezyc"] = (300, 40, 40, 40, group(['<circle cx="320" cy="60" r="16" fill="#FFFFFF" stroke-width="2"/>']))
O["wilki"] = (150, 300, 200, 60, group([szary_wilk(180, 340, 1.2, -1), szary_wilk(240, 330, 1.1, 1), szary_wilk(300, 346, 1.2, -1), szary_wilk(210, 356, 1.0, 1)]))
RIG_O = wilk_stoi(330, 250, 0.16, "wo")
art.install_rig(O, RIG_O)
WO = art.rig_names(RIG_O)
O["rozkaz"] = (290, 160, 90, 60, group(['<path d="M300 200q8 -12 16 0q8 -12 16 0q8 -12 16 0" fill="none" stroke="#FFFFFF" stroke-width="1.6" stroke-dasharray="3 3"/>']))
O["swit"] = (0, 0, 390, 440, group(['<path d="M0 0H390V220H0Z" fill="#EDEBE6" stroke="none" opacity="0.85"/>',
                                    f'<path d="M150 350c10 -6 30 -4 40 2c-10 6 -30 6 -40 -2zM210 370c10 -4 20 0 26 4c-8 4 -20 2 -26 -4z" fill="{RED}" stroke="none"/>',
                                    '<path d="M240 360C250 350 270 350 278 360C270 368 250 368 240 360Z" fill="#FFFFFF" stroke-width="1.4"/><path d="M180 380C190 372 206 372 212 380C206 386 190 386 180 380Z" fill="#FFFFFF" stroke-width="1.4"/>']))
O["pies"] = (120, 330, 60, 30, group(['<path d="M126 350C130 340 160 338 170 346L176 344L172 352C160 356 134 356 126 350Z" fill="url(#hatchDense)" stroke-width="1.4"/>']))
O["przod"] = (0, 422, 390, 422, group(SNIEG))
OWC = ["tlo", "ksiezyc"] + WO + ["wilki", "rozkaz", "swit", "pies", "przod"]
O_REVEAL = {**{n: "wilki" for n in WO}, "wilki": "wilki", "rozkaz": "rozkaz", "swit": "swit", "pies": "pies"}
O_ANIM = {"wilki": {"type": "drift", "amplitude": 12, "duration": 3000}, "rozkaz": {"type": "flicker", "amplitude": 0, "duration": 600}}
O_ANIM.update(art.rig_anims(RIG_O))
O_EXTRA = {**{n: {"fadeDuration": 2000, "hideOn": "rozkaz,swit"} for n in WO}, "wilki": {"fadeDuration": 1500, "hideOn": "rozkaz,swit"},
           "rozkaz": {"hideAfter": 3000, "fadeDuration": 600}, "swit": {"fadeDuration": 4000}, "pies": {"fadeDuration": 3000}, "przod": {"depth": 1.0}}
O_COMMENTS = {"tlo": "księżycowa noc: obora, płot, bór, śnieg", "ksiezyc": "księżyc", "wilki": "szare wilki krążą wokół obory (# pokaz: wilki)",
              "rozkaz": "krótkie wycie białego wilka — rozkaz (# pokaz: rozkaz)", "swit": "świt: krew na śniegu, zagryzione owce (# pokaz: swit)",
              "pies": "martwy pies przy oborze (# pokaz: pies)", "przod": "pierwszy plan",
              **{n: f"biały wilk na skraju pola — {n[3:]} (rysunek autora; # pokaz: wilki)" for n in WO}}
_add(O, OWC, O_ANIM, O_COMMENTS, "gwiazdy", gwiazdy(0, 10, 290, 150, 1104), before="ksiezyc")
_add(O, OWC, O_ANIM, O_COMMENTS, "zamiec", ((-30, 220, 450, 30, group([f'<path d="{ribbon(-20, 410, 232, 10, 4)}" fill="#FFFFFF" stroke-width="1" opacity="0.7"/>'])),
                                            {"type": "drift", "amplitude": 30, "duration": 6000}, "zamieć nad polem"), before="wilki")
_add(O, OWC, O_ANIM, O_COMMENTS, "platki", efekty.platki(0, 0, 390, 300, n=20, seed=1105, fall=140, duration=6000), before="przod")
_add(O, OWC, O_ANIM, O_COMMENTS, "szpara", ((88, 296, 34, 44, group(['<path d="M104 298V338" fill="none" stroke="#FFFFFF" stroke-width="1.6"/>'])),
                                            {"type": "flicker", "amplitude": 0.4, "duration": 1800}, "światło w szparze obory"), before="wilki")

# ======================= GAJOWY PRZED KARCZMA =======================
G = {}
t = zaspa_tlo(horizon=230)
t += bor(232, 260, 400, 11, seed=1106)
t.append(chalupa(30, 330, 200, 80, 60, snow=True))
t.append('<path d="M40 280H220" fill="none" stroke-width="0"/><path d="M60 270h50v-10h-50z" fill="#FFFFFF" stroke-width="1.4"/><path d="M68 266h34" fill="none" stroke-width="1"/>')
G["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
G["sanie"] = (230, 300, 120, 50, group([sanie(240, 340, 1.0)]))
G["ludzie"] = (20, 320, 210, 80, group([postacie.man(x, 400, 0.9, hat=True) for x in (40, 70, 160, 190)] + [postacie.woman(100, 400, 0.85), postacie.woman(130, 400, 0.85)]))
G["gajowy"] = (200, 290, 60, 110, group([postacie.man(226, 398, 1.25, hat=True), '<path d="M212 330L244 286" fill="none" stroke-width="2.6"/>']))
G["antek"] = (0, 0, 390, 440, group(['<rect width="390" height="440" fill="url(#hatchNight)" stroke="none" opacity="0.6"/>', '<path d="M86 302H118V318H86Z" fill="#FFFFFF" stroke="none"/>', postacie.man(330, 400, 1.1, hat=False)]))
G["przod"] = (0, 422, 390, 422, group(SNIEG))
GAJ = ["tlo", "sanie", "ludzie", "gajowy", "antek", "przod"]
G_REVEAL = {"gajowy": "gajowy", "antek": "antek"}
G_ANIM = {"ludzie": {"type": "bob", "amplitude": 0.5, "duration": 1800}, "gajowy": {"type": "bob", "amplitude": 0.4, "duration": 2400}, "sanie": {"type": "bob", "amplitude": 0.4, "duration": 900}}
G_EXTRA = {"gajowy": {"fadeDuration": 1500, "hideOn": "antek"}, "ludzie": {"hideOn": "antek", "fadeDuration": 2000}, "sanie": {"hideOn": "antek", "fadeDuration": 2000},
           "antek": {"fadeDuration": 3000}, "przod": {"depth": 1.0}}
G_COMMENTS = {"tlo": "mroźny dzień: karczma pod śniegiem, bór", "sanie": "sanie gajowego", "ludzie": "ludzie przed karczmą", "gajowy": "gajowy Pawlik z dubeltówką (# pokaz: gajowy)",
              "antek": "zmierzch, Antek idzie do chałupy Jaromira (# pokaz: antek)", "przod": "pierwszy plan"}
_add(G, GAJ, G_ANIM, G_COMMENTS, "dym", ((180, 160, 30, 60, group([dym(194, 210, 50)])), {"type": "sway", "amplitude": 3, "duration": 4600, "anchorX": 0.5, "anchorY": 1}, "dym z komina karczmy"), before="sanie")
_add(G, GAJ, G_ANIM, G_COMMENTS, "para", ((30, 300, 200, 30, group([f'<path d="M{x} 318c-2 -4 2 -6 0 -10" fill="none" stroke-width="1" opacity="0.6"/>' for x in (46, 76, 106, 136, 166, 196)])),
                                          {"type": "rise", "amplitude": 10, "duration": 2000}, "para z oddechów na mrozie"), before="gajowy")
_add(G, GAJ, G_ANIM, G_COMMENTS, "wrony", efekty.wrony(120, 110, n=4, k=0.4, seed=1107, amplitude=50), before="sanie")
_add(G, GAJ, G_ANIM, G_COMMENTS, "iskry", efekty.iskry(0, 230, 390, 190, n=16, seed=1108, duration=2600), before="sanie")
G_COMMENTS["iskry"] = "śnieg skrzy się w słońcu"
_add(G, GAJ, G_ANIM, G_COMMENTS, "kon", ((316, 300, 30, 40, group(['<path d="M330 320c4 6 6 12 4 18" fill="none" stroke-width="2"/>'])),
                                        {"type": "sway", "amplitude": 10, "duration": 1400, "anchorX": 0.4, "anchorY": 0.4}, "ogon konia"), before="gajowy")

# ======================= OBLAWA W MLODNIKU =======================
M = {}
t = zaspa_tlo(horizon=170)
t += bor(172, -6, 400, 10, seed=1109)
for (x, h) in [(20, 160), (70, 120), (330, 150), (380, 170), (120, 90), (280, 100)]:
    t.append(spruce(x, 360, h, h * 0.4))
t.append('<path d="M150 340L300 316L304 326L154 350Z" fill="#000000" stroke-width="1.4"/><path d="M296 316l10 -8M300 322l12 2" fill="none" stroke-width="2"/>')
M["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
M["naganka"] = (0, 180, 390, 40, group([postacie.man(x, 214, 0.32, hat=True) for x in range(20, 390, 30)]))
RIG_M = wilk_stoi(220, 352, 0.3, "wm")
art.install_rig(M, RIG_M)
WM = art.rig_names(RIG_M)
M["gajowy"] = (100, 290, 120, 140, group([postacie.man(130, 426, 1.5, hat=True), '<path d="M142 340L196 318" fill="none" stroke-width="3.4"/>']))
M["strzal"] = (150, 220, 200, 140, group(['<ellipse cx="290" cy="300" rx="20" ry="12" fill="#FFFFFF" stroke="none" opacity="0.9"/>',
                                          f'<path d="M160 360C190 356 220 362 250 356C270 352 290 356 300 350" fill="none" stroke="{RED}" stroke-width="3"/>']))
M["zmylka"] = (0, 180, 390, 40, group([postacie.man(x, 214, 0.32, hat=True) for x in range(20, 200, 30)]))
M["kamien"] = (220, 270, 100, 80, group(['<circle cx="230" cy="330" r="3" fill="#000000"/>', '<path d="M290 296c10 -10 20 -6 26 2" fill="none" stroke-width="1.4"/>',
                                         '<path d="M260 352c6 -10 20 -10 26 0" fill="#FFFFFF" stroke-width="1" opacity="0.8"/>']))
M["przod"] = (0, 422, 390, 422, group(SNIEG))
OBL = ["tlo", "naganka", "zmylka"] + WM + ["strzal", "kamien", "gajowy", "przod"]
M_REVEAL = {"naganka": "naganka", **{n: "wilk" for n in WM}, "gajowy": "gajowy", "strzal": "strzal", "zmylka": "zmylka", "kamien": "kamien"}
M_ANIM = {"naganka": {"type": "slide", "dx": 0, "dy": 30, "duration": 20000, "once": True}, "zmylka": {"type": "slide", "dx": -60, "dy": 40, "duration": 6000, "once": True},
          "gajowy": {"type": "bob", "amplitude": 0.6, "duration": 900}, "strzal": {"type": "flash", "amplitude": 1, "duration": 1600},
          "kamien": {"type": "arc", "amplitude": 30, "dx": 60, "dy": -30, "spin": 0, "duration": 900, "anchorX": 0.1, "anchorY": 0.75, "once": True}}
M_ANIM.update(art.rig_anims(RIG_M))
M_EXTRA = {"naganka": {"fadeDuration": 1500, "hideOn": "zmylka"}, **{n: {"fadeDuration": 2000, "hideOn": "strzal,zmylka,kamien"} for n in WM},
           "gajowy": {"fadeDuration": 800}, "strzal": {"noInvert": True, "fadeDuration": 200}, "zmylka": {"fadeDuration": 400},
           "kamien": {"fadeDuration": 200, "hideAfter": 2500}, "przod": {"depth": 1.0}}
M_COMMENTS = {"tlo": "świt w młodniku: kotlinka pod przewróconym pniem, świerki, bór", "naganka": "rząd naganiaczy idzie przez pole (# pokaz: naganka)",
              "zmylka": "naganiacze biegną w stronę mokradeł (# pokaz: zmylka)", "gajowy": "gajowy Pawlik z dubeltówką (# pokaz: gajowy)",
              "strzal": "błysk strzału i krwawa smuga (# pokaz: strzal)", "kamien": "kamień trafia w lufę, strzał w zaspę (# pokaz: kamien)", "przod": "pierwszy plan",
              **{n: f"biały wilk w kotlince — {n[3:]} (rysunek autora; # pokaz: wilk)" for n in WM}}
_add(M, OBL, M_ANIM, M_COMMENTS, "para", ((150, 240, 140, 40, group(['<path d="M196 266c-4 -6 4 -10 0 -16" fill="none" stroke="#FFFFFF" stroke-width="1.4"/>'])),
                                          {"type": "rise", "amplitude": 10, "duration": 2400}, "para z pyska wilka"), before="strzal")
M_REVEAL["para"] = "wilk"
M_EXTRA["para"] = {"hideOn": "strzal,zmylka,kamien", "fadeDuration": 1000}
_add(M, OBL, M_ANIM, M_COMMENTS, "platki", efekty.platki(0, 160, 390, 260, n=16, seed=1110, fall=80, duration=7000, r=(1, 1.8)), before="przod")
M_COMMENTS["platki"] = "śnieg sypie się z gałęzi"
_add(M, OBL, M_ANIM, M_COMMENTS, "galezie", ((0, 200, 390, 160, group([f'<path d="M{x} {y}l-26 10M{x} {y}l26 10" fill="none" stroke-width="2.4"/>' for x, y in [(20, 260), (70, 290), (330, 270), (380, 250)]])),
                                             {"type": "sway", "amplitude": 1.5, "duration": 3000, "anchorX": 0.5, "anchorY": 0.5}, "gałęzie świerków"), before="naganka")
_add(M, OBL, M_ANIM, M_COMMENTS, "wrony", efekty.wrony(80, 100, n=5, k=0.4, seed=1111, amplitude=70, duration=5000), before="naganka")
M_COMMENTS["wrony"] = "wrony spłoszone strzałami"
_add(M, OBL, M_ANIM, M_COMMENTS, "mgla", ((-30, 166, 450, 30, group([f'<path d="{ribbon(-20, 410, 180, 12, 4)}" fill="#EDEBE6" stroke-width="1.2" opacity="0.7"/>'])),
                                          {"type": "drift", "amplitude": 14, "duration": 12000}, "mroźna mgła pod borem"), before="naganka")

# ======================= PO OBLAWIE =======================
P = {}
t = zaspa_tlo(horizon=220)
t += bor(222, -6, 400, 11, seed=1112)
t += [spruce(x, 250, 40, 16) for x in range(200, 400, 18)]
t.append(chalupa(20, 360, 150, 70, 56, snow=True))
t.append(pniak(240, 376, 1.6))
t.append('<path d="M180 384H390M180 398H390" fill="none" stroke-width="2"/>')
P["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
P["noc"] = (0, 0, 390, 440, group(['<rect width="390" height="440" fill="url(#hatchNight)" stroke="none" opacity="0.75"/>']))
P["wycie"] = (240, 220, 150, 50, group(['<path d="M250 240q10 -12 20 0q10 -12 20 0q10 -12 20 0q10 -12 20 0" fill="none" stroke="#FFFFFF" stroke-width="1.6" stroke-dasharray="4 3"/>',
                                        f'<circle cx="330" cy="256" r="1.6" fill="{RED}" stroke="none"/><circle cx="336" cy="256" r="1.6" fill="{RED}" stroke="none"/>']))
P["zajac"] = (220, 344, 40, 20, group(['<path d="M226 358C230 350 246 348 254 354L258 350L256 358C248 362 232 362 226 358Z" fill="#FFFFFF" stroke-width="1.4"/>', f'<circle cx="250" cy="358" r="1.4" fill="{RED}" stroke="none"/>']))
RIG_P = wilk_stoi(330, 254, 0.1, "wp")
art.install_rig(P, RIG_P)
WP = art.rig_names(RIG_P)
P["przod"] = (0, 422, 390, 422, group(SNIEG))
POOB = ["tlo"] + WP + ["zajac", "noc", "wycie", "przod"]
P_REVEAL = {"noc": "wycie", "wycie": "wycie", "zajac": "zajac", **{n: "zajac" for n in WP}}
P_ANIM = {"wycie": {"type": "flicker", "amplitude": 0.1, "duration": 2200}}
P_ANIM.update(art.rig_anims(RIG_P))
P_EXTRA = {"noc": {"fadeDuration": 2500}, "wycie": {"fadeDuration": 2500}, "zajac": {"fadeDuration": 1500}, **{n: {"fadeDuration": 2500, "hideAfter": 9000} for n in WP}, "przod": {"depth": 1.0}}
P_COMMENTS = {"tlo": "podwórze po obławie: chałupa, pniak przy płocie, młodnik pod borem", "noc": "noc (# pokaz: wycie)",
              "wycie": "bolesne wycie od boru, czerwone ślepia (# pokaz: wycie)", "zajac": "zając na pniaku (# pokaz: zajac)", "przod": "pierwszy plan",
              **{n: f"biały wilk na skraju młodnika — {n[3:]} (rysunek autora; # pokaz: zajac, znika)" for n in WP}}
_add(P, POOB, P_ANIM, P_COMMENTS, "dym", ((130, 180, 30, 60, group([dym(144, 230, 50)])), {"type": "sway", "amplitude": 3, "duration": 4600, "anchorX": 0.5, "anchorY": 1}, "dym z komina"), before="zajac")
_add(P, POOB, P_ANIM, P_COMMENTS, "iskry", efekty.iskry(0, 230, 390, 190, n=14, seed=1113, duration=2600), before="zajac")
P_COMMENTS["iskry"] = "szron skrzy się"
_add(P, POOB, P_ANIM, P_COMMENTS, "wrony", efekty.wrony(160, 110, n=3, k=0.4, seed=1114, amplitude=50), before="zajac")
_add(P, POOB, P_ANIM, P_COMMENTS, "sikorka", efekty.wrona_siedzi(300, 382, 0.6), before="zajac")
P_COMMENTS["sikorka"] = "ptak na płocie"
_add(P, POOB, P_ANIM, P_COMMENTS, "mgla", ((-30, 216, 450, 30, group([f'<path d="{ribbon(-20, 410, 230, 12, 4)}" fill="#EDEBE6" stroke-width="1.2" opacity="0.7"/>'])),
                                          {"type": "drift", "amplitude": 12, "duration": 14000}, "mgła pod borem"), before="zajac")

# ======================= ODWILZ =======================
W = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V140H0Z" fill="url(#hatch)" stroke="none" opacity="0.3"/>',
     '<path d="M-10 220C80 212 200 216 400 210V440H-10Z" fill="#EDEBE6" stroke-width="2.6"/>']
t += bor(222, -6, 400, 11, seed=1115)
t.append('<path d="M240 214C260 190 300 180 340 186C370 190 390 200 400 206V214Z" fill="#EDEBE6" stroke-width="2"/>')
rnd = random.Random(1116)
for i in range(10):
    x, y = rnd.uniform(0, 380), rnd.uniform(240, 420)
    t.append(f'<path d="M{x:.0f} {y:.0f}c10 -4 30 -4 40 0c-10 4 -30 4 -40 0z" fill="#FFFFFF" stroke-width="1"/>')
t.append(chalupa(20, 360, 160, 70, 56))
W["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
W["strumienie"] = (0, 280, 390, 150, group([f'<path d="M{x} 290C{x + 10} 330 {x - 10} 370 {x + 6} 430" fill="none" stroke-width="1.4" stroke-dasharray="6 4"/>' for x in (210, 260, 330)]))
W["szczenie"] = (120, 350, 40, 24, group(['<path d="M126 370C126 360 136 356 144 358L150 352L152 360C154 366 146 372 136 372Z" fill="url(#hatch)" stroke-width="1.4"/><circle cx="148" cy="360" r="0.9" fill="#000000"/>',
                                           '<path d="M134 366h6" fill="none" stroke="#FFFFFF" stroke-width="2"/>']))
RIG_W = wilk_wyje(326, 194, 0.12, "ww")
art.install_rig(W, RIG_W)
WW = art.rig_names(RIG_W)
W["przod"] = (0, 422, 390, 422, group(PRZOD))
ODW = ["tlo", "strumienie"] + WW + ["szczenie", "przod"]
W_REVEAL = {"szczenie": "szczenie", **{n: "wilk" for n in WW}}
W_ANIM = {"strumienie": {"type": "drift", "amplitude": 2, "duration": 1200}, "szczenie": {"type": "sway", "amplitude": 6, "duration": 700, "anchorX": 0.5, "anchorY": 1}}
W_ANIM.update(art.rig_anims(RIG_W))
W_EXTRA = {"szczenie": {"fadeDuration": 1500}, **{n: {"fadeDuration": 4000} for n in WW}, "przod": {"depth": 1.0}}
W_COMMENTS = {"tlo": "marcowa odwilż: łaty śniegu, chałupa, wzgórze pod borem", "strumienie": "strumienie topniejącego śniegu", "szczenie": "rude szczenię na progu (# pokaz: szczenie)",
              "przod": "pierwszy plan", **{n: f"biały wilk wyje na wzgórzu — {n[3:]} (rysunek autora; # pokaz: wilk)" for n in WW}}
_add(W, ODW, W_ANIM, W_COMMENTS, "chmury", ((40, 50, 300, 40, group(['<path d="M60 82c8 -14 28 -14 34 0c8 -8 24 -2 22 8h-56z" fill="#FFFFFF" stroke-width="1.6"/>', '<path d="M220 70c8 -14 28 -14 34 0c8 -8 24 -2 22 8h-56z" fill="#FFFFFF" stroke-width="1.6"/>'])),
                                             {"type": "drift", "amplitude": 14, "duration": 16000}, "chmury"), before="strumienie")
_add(W, ODW, W_ANIM, W_COMMENTS, "skowronki", efekty.wrony(120, 110, n=3, k=0.35, seed=1117, amplitude=50), before="strumienie")
W_COMMENTS["skowronki"] = "pierwsze ptaki"
_add(W, ODW, W_ANIM, W_COMMENTS, "krople", ((20, 290, 160, 16, group([f'<path d="M{x} 294c-1 2-1.4 3.4 0 4c1.4-.6 1-2 0-4z" fill="#FFFFFF" stroke-width="0.8"/>' for x in range(30, 180, 18)])),
                                            {"type": "rise", "amplitude": -20, "duration": 1200}, "krople kapią z dachu"), before="szczenie")
_add(W, ODW, W_ANIM, W_COMMENTS, "dym", ((140, 180, 30, 60, group([dym(154, 230, 50)])), {"type": "sway", "amplitude": 3, "duration": 4600, "anchorX": 0.5, "anchorY": 1}, "dym z komina"), before="strumienie")
_add(W, ODW, W_ANIM, W_COMMENTS, "trawa", ((0, 380, 390, 50, group([grass(x, 430, 1.3) for x in range(6, 390, 22)])),
                                           {"type": "sway", "amplitude": 2, "duration": 2800, "anchorX": 0.5, "anchorY": 1}, "pierwsza trawa spod śniegu"), before="przod")

BACKGROUNDS = {"mroz_izba": ("bg_mrozizba", Z, ZIMA, Z_ANIM, Z_REVEAL, Z_EXTRA, Z_COMMENTS, "mróz w izbie"),
               "owczarnia_noc": ("bg_owczarnia", O, OWC, O_ANIM, O_REVEAL, O_EXTRA, O_COMMENTS, "owczarnia nocą"),
               "gajowy_karczma": ("bg_gajowy", G, GAJ, G_ANIM, G_REVEAL, G_EXTRA, G_COMMENTS, "gajowy przed karczmą"),
               "oblawa_mlodnik": ("bg_oblawa", M, OBL, M_ANIM, M_REVEAL, M_EXTRA, M_COMMENTS, "obława w młodniku"),
               "po_oblawie": ("bg_pooblawie", P, POOB, P_ANIM, P_REVEAL, P_EXTRA, P_COMMENTS, "po obławie"),
               "odwilz": ("bg_odwilz", W, ODW, W_ANIM, W_REVEAL, W_EXTRA, W_COMMENTS, "odwilż")}

if __name__ == "__main__":
    if sys.argv[1] == "--master":
        prefix, L, order, anim, reveal, extra, comments, scene = BACKGROUNDS[sys.argv[2]]
        hide = set() if len(sys.argv) > 3 and sys.argv[3] == "wszystko" else set(reveal) | {n for n, e in extra.items() if e.get("appearAfter")}
        print(master(L, [n for n in order if n not in hide]))
    else:
        import bgjson
        for key, (prefix, L, order, anim, reveal, extra, comments, scene) in BACKGROUNDS.items():
            write_layers(sys.argv[1], prefix, scene, L, [n for n in L if n in comments], comments)
            bgjson.upsert(key, bgjson.entry(prefix, order, L, anim, reveal, extra))
