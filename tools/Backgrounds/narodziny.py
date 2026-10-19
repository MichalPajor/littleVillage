# Generator tel rozdzialu dziesiatego (Narodziny):
#   izba_zimowa   — zimowy wieczor w izbie: Hanka przy kolowrotku, ojciec z uprzeza, okno na sniezne pole; oczy w polu (# pokaz: skowyt), gromnica (# pokaz: gromnica)
#   przestrogi    — letnia noc nad jeziorem: plaskie kamienie, mgla; korale lecą w wode (# pokaz: korale), klaskanie kijanek (# pokaz: kijanki)
#   przyzba_swit  — swit po porodzie: przyzba, ojciec i Jaromir, snopy; slonce (# pokaz: swit), babka w progu (# pokaz: babka)
#   izba_kolyska  — izba w dzien: lozko, kolyska z jesionu; wstazka (# pokaz: wstazka), siekiera pod kolyska (# pokaz: siekiera), gromnica (# pokaz: gromnica)
#   noc_mamun     — ta sama izba noca w ksiezycu; mamuny autora (# pokaz: mamuny), Hanka siada (# pokaz: hanka), Jaromir zaslania (# pokaz: zaslonil),
#                   Hanka sie budzi (# pokaz: obudzona), otwarte okno (# pokaz: okno)
#   chrzest       — kosciolek w Bukowcu: chrzcielnica, ksiadz, chrzestni; woda (# pokaz: woda), brzozowa kloda z twarza (# pokaz: kloda)
#   odmieniec     — izba w dzien, odmieniec w kolysce; ciemne oczy (# pokaz: oczy), skorupki na piecu (# pokaz: skorupki), wiatr z okna (# pokaz: wiatr)
#   rozstaje      — rozstaje pod borem o zmierzchu; rozga (# pokaz: rozga), mamuna z mgly (# pokaz: mamuna)
#   jezioro_mamun — jezioro po polnocy: mamuny pierzace na kamieniach; najstarsza z zawiniatkiem (# pokaz: najstarsza), skarb w wodzie (# pokaz: skarb),
#                   chleb i wianek (# pokaz: dar), siwizna (# pokaz: lata), Marysia oddana (# pokaz: oddana)
#   baza_wrzesien — stary bez z ruina bazy pod koniec lata; skrzynka (# pokaz: skrzynka), pusta (# pokaz: pusta), rzemyk ze skarbem (# pokaz: rzemyk)
#   jesien_okno   — jesienny wieczor: okno z Hanka przy kolysce, astry; kolysanka (# pokaz: kolysanka), wilki pod borem (# pokaz: wycie)
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/narodziny.py src/LittleVillage/Resources/Images
#   python3 tools/Backgrounds/narodziny.py --master <tlo> [wszystko] > podglad.svg
import sys, random, math
from common import *
import art, postacie, efekty
from efekty import add as _add
from licho import izba_tlo, okno, piec, stol, bor, pniak, PRZOD, PRZOD_IZBA
from rusalki import sitting
from wesele import chalupa, dym, kosciolek, sanie

RED = "#A8101A"


def kolowrotek(cx, cy, r):
    spokes = "".join(f'<path d="M{cx} {cy}L{cx + r * math.cos(a):.1f} {cy + r * math.sin(a):.1f}" fill="none" stroke-width="1.6"/>' for a in [i * math.pi / 4 for i in range(8)])
    return f'<circle cx="{cx}" cy="{cy}" r="{r}" fill="none" stroke-width="2.4"/>{spokes}'


def lozko(x, base, w=140):
    return (f'<path d="M{x} {base - 34}H{x + w}V{base - 26}H{x}Z" fill="#FFFFFF" stroke-width="2"/><path d="M{x + 4} {base - 26}V{base}M{x + w - 4} {base - 26}V{base}M{x} {base - 34}V{base - 70}M{x + w} {base - 34}V{base - 56}" fill="none" stroke-width="3"/>'
            f'<path d="M{x + 4} {base - 34}C{x + 30} {base - 54} {x + w - 30} {base - 52} {x + w - 4} {base - 34}Z" fill="#FFFFFF" stroke-width="1.6"/><ellipse cx="{x + 22}" cy="{base - 42}" rx="16" ry="7" fill="#FFFFFF" stroke-width="1.4"/>')


def kolyska_svg(x, base):
    return (f'<path d="M{x - 26} {base - 30}H{x + 26}L{x + 22} {base - 8}H{x - 22}Z" fill="#FFFFFF" stroke-width="2"/>'
            f'<path d="M{x - 30} {base}Q{x} {base - 12} {x + 30} {base}" fill="none" stroke-width="2.4"/><path d="M{x - 20} {base - 8}V{base - 4}M{x + 20} {base - 8}V{base - 4}" fill="none" stroke-width="2"/>'
            f'<path d="M{x - 22} {base - 30}C{x - 10} {base - 38} {x + 10} {base - 38} {x + 22} {base - 30}" fill="#FFFFFF" stroke-width="1.4"/>')


def niemowle(x, y):
    return f'<circle cx="{x - 10}" cy="{y}" r="4.4" fill="#FFFFFF" stroke-width="1.4"/><path d="M{x - 6} {y - 2}C{x + 4} {y - 6} {x + 12} {y - 4} {x + 14} {y + 2}" fill="none" stroke-width="1.2"/>'


def mamuna_rig(name, cx, feet, k, prefix, reach=True):
    tr = art.parse_transform(f"translate({cx - 150 * k:.1f} {feet - 512 * k:.1f}) scale({k})")
    if name == "mamuna_1":
        groups = [("cialo", ["cien", "noga_dalsza", "tulow", "noga_blizsza", "lachmany"], {"type": "bob", "amplitude": 0.8, "duration": 1600}, None),
                  ("reka", ["reka_dalsza"], {"type": "sway", "amplitude": 5, "duration": 1600}, "reka_dalsza"),
                  ("chusta", ["chusta_z_zawiniatkiem", "reka_blizsza"], {"type": "sway", "amplitude": 3, "duration": 1600, "phase": 0.3}, "chusta_z_zawiniatkiem"),
                  ("glowa", ["glowa_z_wlosami"], {"type": "sway", "amplitude": 4, "duration": 1600}, "glowa_z_wlosami")]
    else:
        groups = [("cialo", ["cien", "noga_dalsza", "tulow", "noga_blizsza", "lachmany"], {"type": "bob", "amplitude": 0.8, "duration": 1600}, None),
                  ("reka", ["reka_siegajaca"], {"type": "sway", "amplitude": 6, "duration": 2400}, "reka_siegajaca"),
                  ("glowa", ["glowa_z_wlosami"], {"type": "sway", "amplitude": 3, "duration": 600}, "glowa_z_wlosami"),
                  ("zaslania", ["reka_zaslaniajaca"], {"type": "sway", "amplitude": 3, "duration": 500}, "reka_zaslaniajaca")]
    return art.rig(name, tr, groups, prefix)


def izba_dom(night=False):
    t = izba_tlo(dark=night)
    t.append(okno(40, 110, 70, 70, fill="#000000" if night else "#FFFFFF"))
    t.append(lozko(150, 330, 150))
    t.append(piec(320, 330, 0.9))
    return t


def gwiazdy(x, y, w, h, seed):
    return efekty.iskry(x, y, w, h, n=12, seed=seed, duration=3600)


# ======================= IZBA ZIMOWA =======================
Z = {}
t = izba_tlo()
t.append(okno(240, 110, 80, 80, fill="#FFFFFF"))
t.append(piec(20, 330, 1.0))
t.append(stol(110, 330, 90))
Z["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
Z["pole"] = (240, 110, 80, 80, group(['<path d="M242 160C270 156 300 158 318 154" fill="none" stroke-width="1"/>'] + bor(160, 244, 318, 9, seed=1001)))
Z["oczy"] = (270, 150, 20, 10, group(['<circle cx="276" cy="155" r="1.4" fill="#FFFFFF" stroke="#000000" stroke-width="0.6"/><circle cx="282" cy="155" r="1.4" fill="#FFFFFF" stroke="#000000" stroke-width="0.6"/>']))
Z["hanka"] = (200, 240, 100, 92, group([sitting(222, 330, 1.4, 1), kolowrotek(270, 300, 18), '<path d="M270 318V330M254 330H290" fill="none" stroke-width="2"/>']))
Z["kolo"] = (250, 280, 40, 40, group([kolowrotek(270, 300, 18)]))
Z["ojciec"] = (110, 230, 60, 100, group([sitting(130, 300, 1.4, 1), '<path d="M140 270c10 4 20 2 24 -6" fill="none" stroke-width="2"/>']))
Z["plomien"] = (40, 300, 20, 24, group([f'<path d="M50 322c-6 -5 -4 -14 0 -20c4 6 6 15 0 20z" fill="{RED}" stroke="none"/>']))
Z["gromnica"] = (150, 270, 20, 36, group([f'<path d="M156 300V284H164V300Z" fill="#FFFFFF" stroke-width="1.4"/><path d="M160 282c-3 -3 -2 -8 0 -10c2 2 3 7 0 10z" fill="{RED}" stroke="none"/>']))
Z["przod"] = (0, 422, 390, 422, group(PRZOD_IZBA))
ZIMA = ["tlo", "pole", "oczy", "plomien", "ojciec", "hanka", "kolo", "gromnica", "przod"]
Z_REVEAL = {"oczy": "skowyt", "gromnica": "gromnica"}
Z_ANIM = {"kolo": {"type": "spin", "amplitude": 360, "duration": 2000, "anchorX": 0.5, "anchorY": 0.5}, "plomien": {"type": "flame", "amplitude": 0.15, "duration": 800, "anchorX": 0.5, "anchorY": 1},
          "hanka": {"type": "bob", "amplitude": 0.4, "duration": 2400}, "ojciec": {"type": "bob", "amplitude": 0.3, "duration": 3000},
          "oczy": {"type": "blink", "duration": 3600}, "gromnica": {"type": "flame", "amplitude": 0.1, "duration": 900, "anchorX": 0.5, "anchorY": 1}}
Z_EXTRA = {"plomien": {"noInvert": True}, "oczy": {"fadeDuration": 2000, "hideAfter": 8000}, "gromnica": {"noInvert": True, "fadeDuration": 1500}, "przod": {"depth": 1.0}}
Z_COMMENTS = {"tlo": "zimowy wieczór w izbie: piec, stół, okno na śnieżne pole", "pole": "śnieżne pole i bór za oknem", "oczy": "dwa jasne punkty w polu (# pokaz: skowyt)",
              "hanka": "Hanka przędzie przy kołowrotku", "kolo": "koło kołowrotka (kręci się)", "ojciec": "ojciec łata uprząż", "plomien": "ogień w piecu",
              "gromnica": "gromnica na stole (# pokaz: gromnica)", "przod": "pierwszy plan"}
_add(Z, ZIMA, Z_ANIM, Z_COMMENTS, "platki", efekty.platki(242, 112, 76, 76, n=8, seed=1002, fall=60, duration=5000), before="oczy")
_add(Z, ZIMA, Z_ANIM, Z_COMMENTS, "blask", ((0, 220, 160, 140, group(['<ellipse cx="50" cy="300" rx="70" ry="50" fill="#FFFFFF" stroke="none" opacity="0.3"/>'])),
                                            {"type": "flicker", "amplitude": 0.6, "duration": 1500}, "blask z pieca"), before="plomien")
_add(Z, ZIMA, Z_ANIM, Z_COMMENTS, "dym", ((30, 150, 30, 60, group([dym(44, 200, 50, 0.4)])), {"type": "sway", "amplitude": 3, "duration": 4600, "anchorX": 0.5, "anchorY": 1}, "dym znad pieca"), before="plomien")
_add(Z, ZIMA, Z_ANIM, Z_COMMENTS, "wiorki", efekty.pylki(110, 240, 80, 60, n=6, seed=1003, duration=6000), before="przod")
Z_COMMENTS["wiorki"] = "wióry z łyżek i pyłki"

# ======================= PRZESTROGI (letnia noc nad jeziorem) =======================
P = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V200H0Z" fill="url(#hatchNight)" stroke="none" opacity="0.8"/>',
     '<path d="M-10 196C80 188 200 192 400 186V206H-10Z" fill="#000000" stroke-width="2"/>']
t += bor(196, -6, 400, 13, seed=1004)
t.append('<path d="M-10 204H400V440H-10Z" fill="url(#water)" stroke="none"/><path d="M-10 330C80 320 200 324 400 316V440H-10Z" fill="#EDEBE6" stroke-width="2.4"/>')
for (x, y, w) in [(60, 318, 50), (150, 314, 40), (240, 312, 56), (330, 316, 36)]:
    t.append(f'<path d="M{x - w / 2} {y}C{x - w / 2} {y - 10} {x + w / 2} {y - 10} {x + w / 2} {y}Z" fill="#FFFFFF" stroke-width="1.8"/>')
for x in range(0, 400, 10):
    t.append(reeds(x, 334 + (x % 3) * 3, 1.4))
P["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
P["ksiezyc"] = (290, 40, 40, 40, group(['<path d="M318 44A20 20 0 1 0 318 80A15 15 0 1 1 318 44Z" fill="#FFFFFF" stroke-width="2"/>']))
P["kijanki"] = (40, 270, 260, 50, group([f'<path d="M{x} 300l10 -16" fill="none" stroke-width="2"/><path d="M{x + 10} 284l4 -6" fill="none" stroke-width="4"/>' for x in (56, 236)] +
                                        [f'<path d="M{x - 8} 280q4 -6 8 0M{x + 8} 280q4 -6 8 0" fill="none" stroke="#FFFFFF" stroke-width="1.2"/>' for x in (66, 246)]))
P["korale"] = (120, 220, 120, 60, group([f'<circle cx="{150 + i * 4}" cy="{240 - i * 2 + i * i * 0.3:.0f}" r="2.2" fill="{RED}" stroke="#000000" stroke-width="0.6"/>' for i in range(8)]))
P["krag"] = (170, 236, 60, 16, group(['<ellipse cx="200" cy="244" rx="26" ry="5" fill="none" stroke="#FFFFFF" stroke-width="1.4"/>']))
P["przod"] = (0, 422, 390, 422, group(PRZOD))
PRZESTR = ["tlo", "ksiezyc", "krag", "korale", "kijanki", "przod"]
P_REVEAL = {"kijanki": "kijanki", "korale": "korale", "krag": "korale"}
P_ANIM = {"kijanki": {"type": "sway", "amplitude": 8, "duration": 700, "anchorX": 0.5, "anchorY": 1},
          "korale": {"type": "arc", "amplitude": 40, "dx": 60, "dy": 20, "spin": 120, "duration": 1600, "anchorX": 0.5, "anchorY": 0.5, "once": True},
          "krag": {"type": "ripple", "amplitude": 1.4, "duration": 2400, "anchorX": 0.5, "anchorY": 0.5}}
P_EXTRA = {"kijanki": {"fadeDuration": 3000}, "korale": {"noInvert": True, "hideAfter": 1600, "fadeDuration": 200}, "krag": {"appearAfter": 1500, "hideAfter": 8000}, "przod": {"depth": 1.0}}
P_COMMENTS = {"tlo": "letnia noc nad jeziorem: płaskie kamienie przy brzegu, trzciny, bór", "ksiezyc": "sierp księżyca",
              "kijanki": "niewidzialne kijanki tłuką o kamienie — błyski wody (# pokaz: kijanki)", "korale": "korale Kaśki lecą do jeziora (# pokaz: korale)",
              "krag": "kręgi po koralach (# pokaz: korale)", "przod": "pierwszy plan"}
_add(P, PRZESTR, P_ANIM, P_COMMENTS, "gwiazdy", gwiazdy(0, 10, 390, 150, 1005), before="ksiezyc")
_add(P, PRZESTR, P_ANIM, P_COMMENTS, "mgla", ((-30, 200, 450, 40, group([f'<path d="{ribbon(-20, 410, 216, 14, 4)}" fill="#EDEBE6" stroke-width="1.2" opacity="0.6"/>'])),
                                              {"type": "drift", "amplitude": 14, "duration": 14000}, "mgła nad wodą"), before="krag")
_add(P, PRZESTR, P_ANIM, P_COMMENTS, "trzciny", ((0, 300, 390, 50, group([cattail(x, 340, 1.6) for x in range(4, 390, 22)])),
                                                 {"type": "sway", "amplitude": 2.5, "duration": 3200, "anchorX": 0.5, "anchorY": 1}, "pałki na brzegu"), before="przod")
_add(P, PRZESTR, P_ANIM, P_COMMENTS, "swietliki", ((20, 220, 340, 90, group([f'<circle cx="{x}" cy="{y}" r="1.8" fill="#FFFFFF" stroke-width="0.6"/>' for x, y in [(40, 260), (170, 280), (300, 250)]])),
                                                   {"type": "wander", "amplitude": 14, "duration": 5200}, "świetliki nad wodą"), before="kijanki")
_add(P, PRZESTR, P_ANIM, P_COMMENTS, "krag_2", ((50, 300, 50, 14, group(['<ellipse cx="74" cy="306" rx="20" ry="4" fill="none" stroke="#FFFFFF" stroke-width="1.2"/>'])),
                                                {"type": "ripple", "amplitude": 1.3, "duration": 1400, "anchorX": 0.5, "anchorY": 0.5}, "kręgi przy kamieniach"), before="kijanki")
P_REVEAL["krag_2"] = "kijanki"

# ======================= PRZYZBA O SWICIE =======================
S = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V200H0Z" fill="url(#hatch)" stroke="none" opacity="0.35"/>',
     '<path d="M-10 210C80 202 200 206 400 200V440H-10Z" fill="#EDEBE6" stroke-width="2.6"/>']
t += bor(210, -6, 400, 12, seed=1006)
for (x, y) in [(40, 260), (90, 250), (140, 262), (60, 290)]:
    t.append(f'<path d="M{x - 8} {y}L{x - 3} {y - 24}L{x + 3} {y - 24}L{x + 8} {y}Z" fill="url(#hatchDense)" stroke-width="1.4"/>')
t.append(chalupa(170, 380, 200, 90, 70))
t.append('<path d="M160 380H380V390H160Z" fill="#FFFFFF" stroke-width="1.6"/>')
S["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
S["slonce"] = (60, 190, 70, 40, group(['<path d="M66 214A28 28 0 0 1 122 214Z" fill="#FFFFFF" stroke-width="2.4"/>']))
S["promienie"] = (40, 150, 110, 70, group([f'<path d="M{94 + math.cos(a) * 34:.0f} {214 - math.sin(a) * 34:.0f}L{94 + math.cos(a) * 46:.0f} {214 - math.sin(a) * 46:.0f}" fill="none" stroke-width="2"/>' for a in [i * math.pi / 8 for i in range(1, 8)]]))
S["ojcowie"] = (180, 300, 90, 90, group([sitting(200, 386, 1.4, 1), sitting(240, 386, 1.4, 1), '<path d="M212 386l6 -36" fill="none" stroke-width="2"/>']))
S["babka"] = (296, 300, 40, 84, group([postacie.woman(316, 380, 1.1)]))
S["przod"] = (0, 422, 390, 422, group(PRZOD))
SWIT = ["tlo", "slonce", "promienie", "ojcowie", "babka", "przod"]
S_REVEAL = {"slonce": "swit", "promienie": "swit", "babka": "babka"}
S_ANIM = {"slonce": {"type": "slide", "dx": 0, "dy": -24, "duration": 30000, "once": True}, "promienie": {"type": "flicker", "amplitude": 0.4, "duration": 2400},
          "ojcowie": {"type": "bob", "amplitude": 0.3, "duration": 3000}, "babka": {"type": "bob", "amplitude": 0.3, "duration": 2600}}
S_EXTRA = {"slonce": {"fadeDuration": 4000}, "promienie": {"fadeDuration": 4000}, "babka": {"fadeDuration": 1500}, "przod": {"depth": 1.0}}
S_COMMENTS = {"tlo": "świt pod koniec sierpnia: snopy na polu, chałupa z przyzbą", "slonce": "słońce wschodzi nad borem (# pokaz: swit)",
              "promienie": "promienie świtu (# pokaz: swit)", "ojcowie": "ojciec i Jaromir na przyzbie", "babka": "babka Hanki w progu (# pokaz: babka)", "przod": "pierwszy plan"}
_add(S, SWIT, S_ANIM, S_COMMENTS, "mgla", ((-30, 206, 450, 30, group([f'<path d="{ribbon(-20, 410, 220, 12, 4)}" fill="#EDEBE6" stroke-width="1.2" opacity="0.7"/>'])),
                                           {"type": "drift", "amplitude": 12, "duration": 14000}, "poranna mgła"), before="ojcowie")
_add(S, SWIT, S_ANIM, S_COMMENTS, "skowronki", efekty.wrony(120, 110, n=3, k=0.35, seed=1007, amplitude=50), before="slonce")
S_COMMENTS["skowronki"] = "ptaki o świcie"
_add(S, SWIT, S_ANIM, S_COMMENTS, "dym", ((320, 180, 30, 60, group([dym(334, 228, 50)])), {"type": "sway", "amplitude": 3, "duration": 4600, "anchorX": 0.5, "anchorY": 1}, "dym z komina"), before="ojcowie")
_add(S, SWIT, S_ANIM, S_COMMENTS, "rosa", efekty.iskry(0, 300, 160, 120, n=10, seed=1008, duration=2400), before="przod")
S_COMMENTS["rosa"] = "rosa skrzy się na trawie"

# ======================= IZBA Z KOLYSKA (dzien) =======================
K = {}
t = izba_dom()
K["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
K["kolyska"] = (90, 290, 70, 44, group([kolyska_svg(124, 330), niemowle(126, 304)]))
K["wstazka"] = (100, 296, 20, 14, group([f'<path d="M108 302l-5 -4l1 7zM112 302l5 -4l-1 7z" fill="{RED}" stroke="{RED}" stroke-width="0.8"/>']))
K["siekiera"] = (96, 324, 64, 14, group(['<path d="M100 332H150" fill="none" stroke-width="3"/><path d="M146 326l12 2l-2 8l-10 -2z" fill="#FFFFFF" stroke-width="1.4"/>']))
K["gromnica"] = (170, 270, 30, 60, group(['<path d="M172 330V310H196V330M184 310V296" fill="none" stroke-width="2"/>', f'<path d="M180 298V282H188V298Z" fill="#FFFFFF" stroke-width="1.4"/><path d="M184 280c-3 -3 -2 -8 0 -10c2 2 3 7 0 10z" fill="{RED}" stroke="none"/>']))
K["babka"] = (290, 230, 40, 100, group([postacie.woman(310, 330, 1.3)]))
K["sol"] = (330, 324, 60, 10, group([f'<circle cx="{x}" cy="330" r="0.9" fill="#FFFFFF" stroke="#000000" stroke-width="0.4"/>' for x in range(336, 388, 6)]))
K["przod"] = (0, 422, 390, 422, group(PRZOD_IZBA))
KOLYSKA = ["tlo", "sol", "kolyska", "wstazka", "siekiera", "gromnica", "babka", "przod"]
K_REVEAL = {"wstazka": "wstazka", "siekiera": "siekiera", "gromnica": "gromnica"}
K_ANIM = {"kolyska": {"type": "sway", "amplitude": 3, "duration": 2400, "anchorX": 0.5, "anchorY": 1}, "wstazka": {"type": "flicker", "amplitude": 0.6, "duration": 1800},
          "siekiera": {"type": "flicker", "amplitude": 0.7, "duration": 2400}, "gromnica": {"type": "flame", "amplitude": 0.08, "duration": 900, "anchorX": 0.5, "anchorY": 1},
          "babka": {"type": "sway", "amplitude": 1.5, "duration": 3000, "anchorX": 0.5, "anchorY": 1}}
K_EXTRA = {"wstazka": {"noInvert": True, "fadeDuration": 1500}, "siekiera": {"fadeDuration": 1500}, "gromnica": {"noInvert": True, "fadeDuration": 1500}, "przod": {"depth": 1.0}}
K_COMMENTS = {"tlo": "izba w dzień: okno, łóżko, piec", "kolyska": "jesionowa kołyska z Marysią (kołysze się)", "wstazka": "czerwona wstążka na rączce (# pokaz: wstazka)",
              "siekiera": "siekiera dziadka pod kołyską (# pokaz: siekiera)", "gromnica": "zapalona gromnica na zydlu (# pokaz: gromnica)",
              "babka": "babka Hanki", "sol": "sól na progu", "przod": "pierwszy plan"}
_add(K, KOLYSKA, K_ANIM, K_COMMENTS, "smuga", efekty.smuga([(40, 110), (110, 110), (200, 330), (90, 330)], opacity=0.3), before="kolyska")
_add(K, KOLYSKA, K_ANIM, K_COMMENTS, "pylki", efekty.pylki(60, 140, 120, 160, n=10, seed=1009), before="kolyska")
_add(K, KOLYSKA, K_ANIM, K_COMMENTS, "plomien", ((342, 300, 20, 24, group([f'<path d="M352 322c-6 -5 -4 -14 0 -20c4 6 6 15 0 20z" fill="{RED}" stroke="none"/>'])),
                                                {"type": "flame", "amplitude": 0.15, "duration": 800, "anchorX": 0.5, "anchorY": 1}, "ogień w piecu"), before="babka")
K_EXTRA["plomien"] = {"noInvert": True}
_add(K, KOLYSKA, K_ANIM, K_COMMENTS, "muchy", ((140, 200, 80, 60, group(['<circle cx="160" cy="220" r="1.2" fill="#000000"/><circle cx="190" cy="240" r="1.2" fill="#000000"/>'])),
                                              {"type": "wander", "amplitude": 10, "flap": 0.6, "duration": 2600}, "muchy"), before="przod")

# ======================= NOC MAMUN =======================
N = {}
t = izba_dom(night=True)
N["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
N["ksiezyc"] = (40, 110, 70, 230, group(['<path d="M40 110H110L200 330H90Z" fill="#FFFFFF" stroke="none" opacity="0.35"/>']))
N["kolyska"] = (90, 290, 70, 44, group([kolyska_svg(124, 330), niemowle(126, 304)]))
N["hanka_spi"] = (150, 270, 60, 30, group(['<circle cx="168" cy="288" r="7" fill="#000000"/>']))
N["hanka"] = (140, 240, 60, 70, group([sitting(166, 300, 1.2, -1), '<path d="M154 266L140 290" fill="none" stroke-width="2.4"/>']))
RIG_1 = mamuna_rig("mamuna_1", 300, 330, 0.25, "m1")
RIG_2 = mamuna_rig("mamuna_2", 222, 330, 0.25, "m2")
art.install_rig(N, RIG_1)
art.install_rig(N, RIG_2)
M1, M2 = art.rig_names(RIG_1), art.rig_names(RIG_2)
N["zaslonil"] = (90, 230, 70, 100, group([postacie.man(124, 330, 1.25, hat=False, arm="l18 -14")]))
N["obudzona"] = (140, 240, 60, 70, group([sitting(166, 300, 1.2, -1), '<path d="M166 262l-4 8" fill="none" stroke="#FFFFFF" stroke-width="1.6"/>', '<path d="M180 252l8 -6M182 260l10 -2" fill="none" stroke-width="1.4"/>']))
N["okno"] = (30, 100, 90, 90, group(['<path d="M40 110L20 100V190L40 180Z" fill="#EDEBE6" stroke-width="2"/><path d="M40 110H110V180H40Z" fill="url(#hatchNight)" stroke-width="2"/>']))
N["przod"] = (0, 422, 390, 422, group(PRZOD_IZBA))
NOC = ["tlo", "ksiezyc", "okno", "kolyska", "hanka_spi", "hanka", "obudzona"] + M2 + M1 + ["zaslonil", "przod"]
N_REVEAL = {**{n: "mamuny" for n in M1 + M2}, "hanka": "hanka", "zaslonil": "zaslonil", "obudzona": "obudzona", "okno": "okno"}
N_ANIM = {"ksiezyc": {"type": "flicker", "amplitude": 0.6, "duration": 4000}, "kolyska": {"type": "sway", "amplitude": 1.5, "duration": 3000, "anchorX": 0.5, "anchorY": 1},
          "hanka": {"type": "bob", "amplitude": 0.3, "duration": 4000}, "zaslonil": {"type": "bob", "amplitude": 0.6, "duration": 900},
          "obudzona": {"type": "bob", "amplitude": 0.8, "duration": 300}}
N_ANIM.update(art.rig_anims(RIG_1))
N_ANIM.update(art.rig_anims(RIG_2))
N_EXTRA = {**{n: {"fadeDuration": 2500, "hideOn": "zaslonil,obudzona,okno"} for n in M1 + M2}, "hanka_spi": {"hideOn": "hanka"},
           "hanka": {"fadeDuration": 1500, "hideOn": "obudzona,zaslonil"}, "zaslonil": {"fadeDuration": 300}, "obudzona": {"fadeDuration": 300},
           "okno": {"fadeDuration": 600}, "ksiezyc": {"noInvert": True}, "przod": {"depth": 1.0}}
N_COMMENTS = {"tlo": "izba nocą: okno, łóżko, piec", "ksiezyc": "smuga księżyca z okna", "kolyska": "kołyska z Marysią", "hanka_spi": "Hanka śpi",
              "hanka": "Hanka siada we śnie i sięga do kołyski (# pokaz: hanka)", "zaslonil": "Jaromir zasłania kołyskę (# pokaz: zaslonil)",
              "obudzona": "Hanka budzi się z krzykiem (# pokaz: obudzona)", "okno": "otwarte okno (# pokaz: okno)", "przod": "pierwszy plan",
              **{n: f"mamuna z zawiniątkiem — {n[3:]} (rysunek autora; # pokaz: mamuny)" for n in M1},
              **{n: f"mamuna sięgająca po dziecko — {n[3:]} (rysunek autora; # pokaz: mamuny)" for n in M2}}
_add(N, NOC, N_ANIM, N_COMMENTS, "smugi", ((180, 320, 140, 16, group(['<path d="M186 328c20 -4 40 4 60 0s40 4 64 0" fill="none" stroke="#FFFFFF" stroke-width="2" opacity="0.7"/>'])),
                                           {"type": "flicker", "amplitude": 0.4, "duration": 2000}, "mokre smugi na podłodze"), before="kolyska")
N_REVEAL["smugi"] = "mamuny"
N_EXTRA["smugi"] = {"fadeDuration": 3000}
_add(N, NOC, N_ANIM, N_COMMENTS, "zar", ((334, 314, 40, 10, group([f'<circle cx="{x}" cy="320" r="1.8" fill="{RED}" stroke="none"/>' for x in (340, 350, 360)])),
                                         {"type": "flicker", "amplitude": 0.3, "duration": 1800}, "żar w piecu"), before="kolyska")
N_EXTRA["zar"] = {"noInvert": True}
_add(N, NOC, N_ANIM, N_COMMENTS, "gwiazdy", gwiazdy(42, 112, 66, 66, 1010), before="ksiezyc")
_add(N, NOC, N_ANIM, N_COMMENTS, "pylki", efekty.pylki(60, 140, 120, 160, n=8, seed=1011, duration=8000), before="kolyska")

# ======================= CHRZEST (kosciolek) =======================
C = {}
t = sciana = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>']
for x in range(0, 390, 18):
    t.append(f'<path d="M{x} 0V330" fill="none" stroke-width="0.8"/>')
t.append('<path d="M150 40C150 10 240 10 240 40V200H150Z" fill="#FFFFFF" stroke-width="2.6"/><path d="M195 20V200M150 90H240" fill="none" stroke-width="1.6"/>')
t.append('<path d="M-10 330H400V440H-10Z" fill="url(#hatch)" stroke="none" opacity="0.5"/><path d="M-10 330H400" fill="none" stroke-width="3"/>')
t.append('<path d="M180 330V290H210V330ZM170 290H220L214 278H176Z" fill="#FFFFFF" stroke-width="2"/>')
t.append('<path d="M30 300V250M30 250L22 230H38Z M360 300V250M360 250L352 230H368Z" fill="#FFFFFF" stroke-width="1.6"/>')
C["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
C["ksiadz"] = (210, 220, 50, 112, group([postacie.man(232, 330, 1.4, hat=False), '<path d="M220 262H246V320H220Z" fill="#FFFFFF" stroke-width="1.4"/><path d="M233 272v20M226 280h14" fill="none" stroke-width="1.2"/>']))
C["chrzestni"] = (100, 220, 80, 112, group([postacie.man(120, 330, 1.35, hat=False), postacie.woman(160, 330, 1.3), '<ellipse cx="172" cy="268" rx="10" ry="5" fill="#FFFFFF" stroke-width="1.2"/>']))
C["woda"] = (176, 250, 40, 30, group([f'<path d="M{x} {y}c-1 2-1.4 3.4 0 4c1.4-.6 1-2 0-4z" fill="#FFFFFF" stroke-width="0.8"/>' for x, y in [(186, 258), (194, 264), (200, 256)]]))
C["kloda"] = (212, 270, 40, 30, group(['<path d="M216 276H246V292H216Z" fill="#FFFFFF" stroke-width="1.4"/><circle cx="226" cy="282" r="1.6" fill="#000000"/><circle cx="234" cy="282" r="1.6" fill="#000000"/><path d="M226 288h8" fill="none" stroke-width="1"/>']))
C["przod"] = (0, 422, 390, 422, group(PRZOD))
CHRZEST = ["tlo", "chrzestni", "ksiadz", "woda", "kloda", "przod"]
C_REVEAL = {"woda": "woda", "kloda": "kloda"}
C_ANIM = {"woda": {"type": "rise", "amplitude": -14, "duration": 1200}, "kloda": {"type": "bob", "amplitude": 0.4, "duration": 2000},
          "ksiadz": {"type": "bob", "amplitude": 0.3, "duration": 3000}, "chrzestni": {"type": "bob", "amplitude": 0.3, "duration": 3200}}
C_EXTRA = {"woda": {"fadeDuration": 800}, "kloda": {"fadeDuration": 1500}, "chrzestni": {"hideOn": "kloda", "fadeDuration": 600}, "przod": {"depth": 1.0}}
C_COMMENTS = {"tlo": "drewniany kościółek w Bukowcu: okno, chrzcielnica, świece", "ksiadz": "ksiądz", "chrzestni": "Antek i Wójcikowa z Marysią",
              "woda": "woda chrzcielna (# pokaz: woda)", "kloda": "brzozowa kłoda z wystruganą twarzą w ramionach księdza (# pokaz: kloda)", "przod": "pierwszy plan"}
_add(C, CHRZEST, C_ANIM, C_COMMENTS, "smuga", efekty.smuga([(150, 40), (240, 40), (300, 330), (110, 330)], opacity=0.3), before="chrzestni")
_add(C, CHRZEST, C_ANIM, C_COMMENTS, "swiece", ((20, 220, 360, 20, group([f'<path d="M{x} 230c-3 -3 -2 -8 0 -10c2 2 3 7 0 10z" fill="{RED}" stroke="none"/>' for x in (30, 360)])),
                                               {"type": "flicker", "amplitude": 0.5, "duration": 900}, "płomyki świec"), before="chrzestni")
C_EXTRA["swiece"] = {"noInvert": True}
_add(C, CHRZEST, C_ANIM, C_COMMENTS, "pylki", efekty.pylki(150, 60, 120, 200, n=10, seed=1012), before="chrzestni")
_add(C, CHRZEST, C_ANIM, C_COMMENTS, "dym", ((180, 160, 30, 60, group([dym(195, 210, 50, 0.4)])), {"type": "sway", "amplitude": 3, "duration": 5000, "anchorX": 0.5, "anchorY": 1}, "dym kadzidła"), before="chrzestni")

# ======================= ODMIENIEC (izba w dzien) =======================
O = {}
t = izba_dom()
O["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
O["kolyska"] = (90, 290, 70, 44, group([kolyska_svg(124, 330), '<circle cx="116" cy="304" r="5" fill="url(#hatchDense)" stroke-width="1.4"/><path d="M120 302C130 298 138 300 140 306" fill="none" stroke-width="1.2"/>']))
O["oczy"] = (108, 298, 16, 10, group(['<circle cx="114" cy="303" r="1.2" fill="#000000"/><circle cx="118" cy="303" r="1.2" fill="#000000"/>']))
O["hanka"] = (150, 230, 50, 100, group([postacie.woman(172, 330, 1.3)]))
O["babka"] = (290, 230, 40, 100, group([postacie.woman(310, 330, 1.3)]))
O["skorupki"] = (326, 250, 60, 14, group([f'<path d="M{x} 260c0 -6 8 -6 8 0z" fill="#FFFFFF" stroke-width="1"/>' for x in range(330, 380, 12)]))
O["para"] = (326, 220, 60, 40, group([f'<path d="M{x} 256c-3 -6 3 -8 0 -14" fill="none" stroke-width="1" opacity="0.6"/>' for x in range(334, 384, 12)]))
O["wiatr"] = (30, 100, 200, 120, group([f'<path d="M{50 + i * 6} {130 + i * 20}C{100 + i * 6} {120 + i * 20} {140 + i * 6} {140 + i * 20} {200} {126 + i * 20}" fill="none" stroke-width="1.4" stroke-dasharray="6 5"/>' for i in range(4)]))
O["przod"] = (0, 422, 390, 422, group(PRZOD_IZBA))
ODM = ["tlo", "kolyska", "oczy", "hanka", "babka", "skorupki", "para", "wiatr", "przod"]
O_REVEAL = {"oczy": "oczy", "skorupki": "skorupki", "para": "skorupki", "wiatr": "wiatr"}
O_ANIM = {"oczy": {"type": "blink", "duration": 3000}, "hanka": {"type": "bob", "amplitude": 0.6, "duration": 1200}, "babka": {"type": "sway", "amplitude": 1.5, "duration": 3000, "anchorX": 0.5, "anchorY": 1},
          "para": {"type": "rise", "amplitude": 16, "duration": 2000}, "wiatr": {"type": "drift", "amplitude": 20, "duration": 900}, "skorupki": {"type": "bob", "amplitude": 0.4, "duration": 600}}
O_EXTRA = {"oczy": {"fadeDuration": 2000}, "skorupki": {"fadeDuration": 1200}, "para": {"fadeDuration": 1200}, "wiatr": {"hideAfter": 3500, "fadeDuration": 800}, "przod": {"depth": 1.0}}
O_COMMENTS = {"tlo": "izba w dzień: okno, łóżko, piec", "kolyska": "kołyska z odmieńcem (skóra jak kora)", "oczy": "ciemne oczy odmieńca (# pokaz: oczy)",
              "hanka": "Hanka (płacze)", "babka": "babka Hanki", "skorupki": "skorupki jajek z wodą na blasze (# pokaz: skorupki)", "para": "para nad skorupkami (# pokaz: skorupki)",
              "wiatr": "wiatr znad jeziora wpada przez okno (# pokaz: wiatr)", "przod": "pierwszy plan"}
_add(O, ODM, O_ANIM, O_COMMENTS, "smuga", efekty.smuga([(40, 110), (110, 110), (200, 330), (90, 330)], opacity=0.25), before="kolyska")
_add(O, ODM, O_ANIM, O_COMMENTS, "plomien", ((342, 300, 20, 24, group([f'<path d="M352 322c-6 -5 -4 -14 0 -20c4 6 6 15 0 20z" fill="{RED}" stroke="none"/>'])),
                                            {"type": "flame", "amplitude": 0.15, "duration": 800, "anchorX": 0.5, "anchorY": 1}, "ogień w piecu"), before="hanka")
O_EXTRA["plomien"] = {"noInvert": True}
_add(O, ODM, O_ANIM, O_COMMENTS, "muchy", ((90, 260, 70, 40, group(['<circle cx="100" cy="280" r="1.2" fill="#000000"/><circle cx="140" cy="270" r="1.2" fill="#000000"/>'])),
                                          {"type": "wander", "amplitude": 10, "flap": 0.6, "duration": 2200}, "muchy nad kołyską"), before="przod")
_add(O, ODM, O_ANIM, O_COMMENTS, "pylki", efekty.pylki(60, 140, 120, 160, n=8, seed=1013), before="kolyska")

# ======================= ROZSTAJE =======================
R = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V220H0Z" fill="url(#hatch)" stroke="none" opacity="0.6"/>',
     '<path d="M-10 230C80 222 200 226 400 220V440H-10Z" fill="#EDEBE6" stroke-width="2.6"/>']
t += bor(230, -6, 400, 11, seed=1014)
t.append('<path d="M150 440L190 300L230 440Z M190 300L-10 280V296L176 314Z M190 300L400 268V284L204 314Z" fill="#FFFFFF" stroke-width="2"/>')
t.append('<path d="M196 296V250M184 262H208" fill="none" stroke-width="3"/>')
R["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
R["odmieniec"] = (170, 340, 40, 20, group(['<ellipse cx="190" cy="350" rx="12" ry="6" fill="#FFFFFF" stroke-width="1.4"/><circle cx="182" cy="348" r="3.4" fill="url(#hatchDense)" stroke-width="1"/>']))
R["jaromir"] = (210, 290, 60, 100, group([postacie.man(232, 390, 1.3, hat=False)]))
R["rozga"] = (220, 300, 50, 60, group(['<path d="M244 330L222 352" fill="none" stroke-width="2"/><path d="M222 352l-4 4M226 348l-6 2M230 344l-5 6" fill="none" stroke-width="1"/>']))
RIG_R = mamuna_rig("mamuna_1", 300, 330, 0.2, "mr")
art.install_rig(R, RIG_R)
MR = art.rig_names(RIG_R)
R["przod"] = (0, 422, 390, 422, group(PRZOD))
ROZ = ["tlo", "odmieniec", "jaromir", "rozga"] + MR + ["przod"]
R_REVEAL = {"rozga": "rozga", **{n: "mamuna" for n in MR}}
R_ANIM = {"rozga": {"type": "sway", "amplitude": 30, "duration": 600, "anchorX": 1, "anchorY": 0}, "jaromir": {"type": "bob", "amplitude": 0.5, "duration": 900},
          "odmieniec": {"type": "bob", "amplitude": 0.6, "duration": 400}}
R_ANIM.update(art.rig_anims(RIG_R))
R_EXTRA = {"rozga": {"fadeDuration": 400, "hideOn": "mamuna"}, **{n: {"fadeDuration": 2000} for n in MR}, "odmieniec": {"hideOn": "mamuna", "fadeDuration": 800}, "przod": {"depth": 1.0}}
R_COMMENTS = {"tlo": "rozstaje dróg pod borem o zmierzchu, krzyż przydrożny", "odmieniec": "odmieniec na ziemi", "jaromir": "Jaromir",
              "rozga": "brzozowa rózga świszcze w powietrzu (# pokaz: rozga)", "przod": "pierwszy plan",
              **{n: f"mamuna wybiega z mgły — {n[3:]} (rysunek autora; # pokaz: mamuna)" for n in MR}}
_add(R, ROZ, R_ANIM, R_COMMENTS, "mgla", ((-30, 220, 450, 60, group([f'<path d="{ribbon(-20, 410, 236 + i * 20, 14, 4)}" fill="#EDEBE6" stroke-width="1.2" opacity="0.7"/>' for i in range(2)])),
                                          {"type": "drift", "amplitude": 16, "duration": 12000}, "mgła nad łąką"), before="odmieniec")
_add(R, ROZ, R_ANIM, R_COMMENTS, "wrony", efekty.wrony(80, 120, n=4, k=0.4, seed=1015, amplitude=60), before="odmieniec")
_add(R, ROZ, R_ANIM, R_COMMENTS, "nietoperz", ((200, 120, 40, 24, group([postacie.bat(220, 132, 1.0)])), {"type": "wander", "amplitude": 60, "flap": 0.6, "duration": 5600}, "nietoperz"), before="odmieniec")
_add(R, ROZ, R_ANIM, R_COMMENTS, "trawa", ((0, 380, 390, 50, group([grass(x, 430, 1.4) for x in range(6, 390, 18)])),
                                           {"type": "sway", "amplitude": 2, "duration": 2800, "anchorX": 0.5, "anchorY": 1}, "trawa"), before="przod")

# ======================= JEZIORO MAMUN =======================
J = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V200H0Z" fill="url(#hatchNight)" stroke="none" opacity="0.85"/>',
     '<path d="M-10 196C80 188 200 192 400 186V206H-10Z" fill="#000000" stroke-width="2"/>']
t += bor(196, -6, 400, 13, seed=1016)
t.append('<path d="M-10 204H400V440H-10Z" fill="url(#water)" stroke="none"/><path d="M-10 350C80 340 200 344 400 336V440H-10Z" fill="#EDEBE6" stroke-width="2.4"/>')
for (x, y, w) in [(60, 344, 60), (160, 338, 50), (300, 336, 60)]:
    t.append(f'<path d="M{x - w / 2} {y}C{x - w / 2} {y - 12} {x + w / 2} {y - 12} {x + w / 2} {y}Z" fill="#FFFFFF" stroke-width="1.8"/>')
J["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
J["ksiezyc"] = (40, 40, 40, 40, group(['<circle cx="60" cy="60" r="16" fill="#FFFFFF" stroke-width="2"/>']))
J["praczki"] = (20, 300, 360, 50, group([f'<path d="M{x - 10} 340C{x - 14} 324 {x - 4} 312 {x + 4} 314C{x + 10} 318 {x + 10} 330 {x + 8} 340Z" fill="url(#hatchDense)" stroke-width="1.4"/><circle cx="{x + 6}" cy="310" r="5" fill="#000000"/>'
                                         f'<path d="M{x + 2} 306l-4 -6M{x + 8} 306l2 -7" fill="none" stroke-width="1"/>' for x in (40, 90, 150, 330)]))
J["kijanki"] = (20, 300, 360, 40, group([f'<path d="M{x + 10} 330l12 -10" fill="none" stroke-width="2"/>' for x in (40, 90, 150, 330)]))
RIG_J = mamuna_rig("mamuna_1", 240, 344, 0.22, "mj")
art.install_rig(J, RIG_J)
MJ = art.rig_names(RIG_J)
J["jaromir"] = (300, 300, 60, 110, group([postacie.man(330, 410, 1.4, hat=False)]))
J["skarb"] = (240, 240, 80, 60, group(['<circle cx="250" cy="260" r="2.4" fill="#FFFFFF" stroke-width="1"/>']))
J["krag"] = (190, 250, 70, 16, group(['<ellipse cx="224" cy="258" rx="30" ry="6" fill="none" stroke="#FFFFFF" stroke-width="1.4"/>']))
J["dar"] = (136, 318, 50, 20, group(['<ellipse cx="152" cy="328" rx="10" ry="5" fill="#FFFFFF" stroke-width="1.4"/><ellipse cx="172" cy="330" rx="8" ry="3" fill="none" stroke-width="2"/>']))
J["lata"] = (300, 290, 60, 40, group(['<path d="M318 302c4 -6 10 -6 14 0M316 312c6 -4 12 -4 18 0" fill="none" stroke="#FFFFFF" stroke-width="1.6"/>']))
J["oddana"] = (300, 330, 50, 20, group(['<ellipse cx="320" cy="340" rx="10" ry="5" fill="#FFFFFF" stroke-width="1.4"/><circle cx="314" cy="338" r="3" fill="#FFFFFF" stroke-width="1"/>']))
J["przod"] = (0, 422, 390, 422, group(PRZOD))
JEZ = ["tlo", "ksiezyc", "krag", "skarb", "praczki", "kijanki"] + MJ + ["dar", "jaromir", "lata", "oddana", "przod"]
J_REVEAL = {**{n: "najstarsza" for n in MJ}, "skarb": "skarb", "krag": "skarb", "dar": "dar", "lata": "lata", "oddana": "oddana"}
J_ANIM = {"kijanki": {"type": "sway", "amplitude": 10, "duration": 700, "anchorX": 0.5, "anchorY": 1}, "praczki": {"type": "bob", "amplitude": 1, "duration": 700},
          "skarb": {"type": "arc", "amplitude": 40, "dx": -30, "dy": 0, "spin": 200, "duration": 1400, "anchorX": 0.5, "anchorY": 0.5, "once": True},
          "krag": {"type": "ripple", "amplitude": 1.4, "duration": 2400, "anchorX": 0.5, "anchorY": 0.5}, "lata": {"type": "flicker", "amplitude": 0.4, "duration": 1600},
          "jaromir": {"type": "bob", "amplitude": 0.4, "duration": 2400}, "oddana": {"type": "bob", "amplitude": 0.4, "duration": 2000}}
J_ANIM.update(art.rig_anims(RIG_J))
J_EXTRA = {**{n: {"fadeDuration": 2000, "hideOn": "oddana"} for n in MJ}, "skarb": {"hideAfter": 1400, "fadeDuration": 200}, "krag": {"appearAfter": 1300, "hideAfter": 8000},
           "dar": {"fadeDuration": 1500}, "lata": {"fadeDuration": 2500}, "oddana": {"fadeDuration": 1500}, "praczki": {"hideOn": "oddana", "fadeDuration": 3000},
           "kijanki": {"hideOn": "najstarsza", "fadeDuration": 1000}, "przod": {"depth": 1.0}}
J_COMMENTS = {"tlo": "jezioro po północy: płaskie kamienie przy brzegu, bór", "ksiezyc": "księżyc", "praczki": "mamuny klęczą na kamieniach i piorą",
              "kijanki": "kijanki tłuką szmaty (przestają, gdy najstarsza wstaje)", "jaromir": "Jaromir", "skarb": "skarb leci w jezioro (# pokaz: skarb)",
              "krag": "woda zamyka się nad skarbem (# pokaz: skarb)", "dar": "chleb i wianek na kamieniu (# pokaz: dar)", "lata": "siwizna na skroniach (# pokaz: lata)",
              "oddana": "Marysia w chuście w ramionach Jaromira (# pokaz: oddana)", "przod": "pierwszy plan",
              **{n: f"najstarsza mamuna z zawiniątkiem — {n[3:]} (rysunek autora; # pokaz: najstarsza)" for n in MJ}}
_add(J, JEZ, J_ANIM, J_COMMENTS, "gwiazdy", gwiazdy(100, 10, 290, 150, 1017), before="ksiezyc")
_add(J, JEZ, J_ANIM, J_COMMENTS, "mgla", ((-30, 200, 450, 40, group([f'<path d="{ribbon(-20, 410, 216, 14, 4)}" fill="#EDEBE6" stroke-width="1.2" opacity="0.6"/>'])),
                                          {"type": "drift", "amplitude": 14, "duration": 14000}, "mgła nad wodą"), before="krag")
_add(J, JEZ, J_ANIM, J_COMMENTS, "rozbryzgi", ((20, 300, 360, 30, group([f'<path d="M{x} 316l-3 -6M{x + 6} 314l2 -7" fill="none" stroke="#FFFFFF" stroke-width="1.2"/>' for x in (50, 100, 160, 340)])),
                                               {"type": "flicker", "amplitude": 0, "duration": 700}, "rozbryzgi przy praniu"), before="praczki")
J_EXTRA["rozbryzgi"] = {"hideOn": "najstarsza", "fadeDuration": 1000}
_add(J, JEZ, J_ANIM, J_COMMENTS, "trzciny", ((0, 330, 390, 30, group([reeds(x, 356, 1.6) for x in range(4, 390, 14)])),
                                             {"type": "sway", "amplitude": 2.5, "duration": 3200, "anchorX": 0.5, "anchorY": 1}, "trzciny"), before="przod")

# ======================= BAZA POD KONIEC LATA =======================
B = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V150H0Z" fill="url(#hatch)" stroke="none" opacity="0.3"/>',
     '<path d="M-10 280C60 274 120 278 170 276C260 272 330 278 400 272V440H-10Z" fill="#EDEBE6" stroke-width="2.6"/>']
t += bor(280, 260, 400, 11, seed=1018)
rnd = random.Random(1019)
for (dx, top) in [(-10, 250), (0, 236), (10, 246), (-20, 270), (18, 262)]:
    t.append(f'<path d="M{226 + dx * 0.3:.0f} 410C{224 + dx * 0.6:.0f} 360 {220 + dx:.0f} 320 {226 + dx * 1.6:.0f} {top}" fill="none" stroke-width="5"/>')
t.append('<path d="M104 250C80 220 100 168 140 166C146 124 196 104 230 120C258 96 316 110 324 150C366 156 374 214 344 244C320 270 140 276 104 250Z" fill="url(#hatchDense)" stroke-width="3"/>')
for i in range(30):
    x, y = rnd.uniform(110, 350), rnd.uniform(130, 256)
    if not (166 < x < 286 and 166 < y < 244):
        t.append(f'<circle cx="{x:.0f}" cy="{y:.0f}" r="2.2" fill="#000000" stroke="none"/>')
t.append('<path d="M170 242H284V234H170Z" fill="#FFFFFF" stroke-width="2.4"/><path d="M176 234V206M196 234V212M232 234V214M262 234V208" fill="none" stroke-width="1.2"/>')
t.append('<path d="M166 210L218 186L232 192M246 196L288 208" fill="none" stroke-width="2.4"/>')
for y in range(256, 404, 18):
    if y not in (292, 346, 364):
        t.append(f'<path d="M216 {y}H238" fill="none" stroke-width="2.6"/>')
for i in range(24):
    t.append(grass(rnd.uniform(0, 390), rnd.uniform(320, 432), rnd.uniform(0.7, 1.1)))
B["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
B["jaromir"] = (150, 300, 60, 110, group([postacie.man(180, 410, 1.35, hat=False, arm="l12 -6")]))
B["skrzynka"] = (190, 330, 40, 24, group(['<path d="M196 350V338H222V350Z" fill="#FFFFFF" stroke-width="1.6"/><path d="M196 338L200 330H226L222 338" fill="#FFFFFF" stroke-width="1.4"/>', '<circle cx="209" cy="344" r="1.6" fill="#000000"/>']))
B["pusta"] = (190, 330, 40, 24, group(['<path d="M196 350V338H222V350Z" fill="#FFFFFF" stroke-width="1.6"/><path d="M196 338L200 330H226L222 338" fill="#FFFFFF" stroke-width="1.4"/>', '<path d="M200 342h18" fill="none" stroke-width="0.8" stroke-dasharray="2 2"/>']))
B["rzemyk"] = (196, 320, 24, 34, group(['<path d="M204 324C200 336 214 340 210 350" fill="none" stroke-width="1.2"/><circle cx="210" cy="350" r="2.4" fill="#FFFFFF" stroke-width="1"/>']))
B["przod"] = (0, 422, 390, 422, group(PRZOD))
BAZA = ["tlo", "jaromir", "skrzynka", "pusta", "rzemyk", "przod"]
B_REVEAL = {"skrzynka": "skrzynka", "pusta": "pusta", "rzemyk": "rzemyk"}
B_ANIM = {"skrzynka": {"type": "flicker", "amplitude": 0.6, "duration": 2000}, "rzemyk": {"type": "sway", "amplitude": 8, "duration": 1800, "anchorX": 0.4, "anchorY": 0},
          "jaromir": {"type": "bob", "amplitude": 0.3, "duration": 3000}}
B_EXTRA = {"skrzynka": {"fadeDuration": 1500}, "pusta": {"fadeDuration": 1500}, "rzemyk": {"fadeDuration": 1500}, "przod": {"depth": 1.0}}
B_COMMENTS = {"tlo": "stary bez pod koniec lata (czarne owoce) z ruiną bazy, drabinka bez szczebli", "jaromir": "Jaromir pod bzem",
              "skrzynka": "skrzynka na skarby w rękach (# pokaz: skrzynka)", "pusta": "pusta skrzynka (# pokaz: pusta)", "rzemyk": "skarb na rzemyku (# pokaz: rzemyk)", "przod": "pierwszy plan"}
_add(B, BAZA, B_ANIM, B_COMMENTS, "liscie", ((90, 120, 280, 150, group([f'<path d="M{x} {y}c-6 -6 -2 -14 6 -12c6 -6 14 -2 12 6c4 6 -2 12 -8 10c-4 4 -10 2 -10 -4z" fill="url(#hatch)" stroke-width="1.6"/>' for x, y in [(110, 230), (130, 170), (330, 200), (350, 236), (300, 140)]])),
                                             {"type": "sway", "amplitude": 2, "duration": 2800, "anchorX": 0.5, "anchorY": 0.6}, "liście bzu (kołyszą się)"), before="jaromir")
_add(B, BAZA, B_ANIM, B_COMMENTS, "szpaki", efekty.wrony(120, 90, n=5, k=0.3, seed=1020, amplitude=50, duration=5200), before="liscie")
B_COMMENTS["szpaki"] = "szpaki nad bzem"
_add(B, BAZA, B_ANIM, B_COMMENTS, "chmury", ((40, 40, 300, 50, group(['<path d="M60 76c8 -14 28 -14 34 0c8 -8 24 -2 22 8h-56z" fill="#FFFFFF" stroke-width="1.6"/>', '<path d="M240 60c8 -14 28 -14 34 0c8 -8 24 -2 22 8h-56z" fill="#FFFFFF" stroke-width="1.6"/>'])),
                                             {"type": "drift", "amplitude": 14, "duration": 18000}, "obłoki"), before="szpaki")
_add(B, BAZA, B_ANIM, B_COMMENTS, "pajeczyny", ((20, 280, 120, 60, group(['<path d="M30 300l40 20M30 320l40 -20M50 290v40" fill="none" stroke-width="0.6"/><path d="M40 300q10 10 20 0q-10 -10 -20 0" fill="none" stroke-width="0.6"/>'])),
                                                {"type": "flicker", "amplitude": 0.3, "duration": 2400}, "babie lato na trawie"), before="jaromir")
_add(B, BAZA, B_ANIM, B_COMMENTS, "trawa", ((0, 380, 390, 50, group([grass(x, 430, 1.4) for x in range(6, 390, 18)])),
                                            {"type": "sway", "amplitude": 2, "duration": 2800, "anchorX": 0.5, "anchorY": 1}, "trawa"), before="przod")

# ======================= JESIEN — OKNO =======================
E = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V200H0Z" fill="url(#hatch)" stroke="none" opacity="0.6"/>',
     '<path d="M-10 220C80 212 200 216 400 210V440H-10Z" fill="#EDEBE6" stroke-width="2.6"/>']
t += bor(220, 230, 400, 11, seed=1021)
t.append(chalupa(20, 370, 200, 90, 70, lit=True))
for x in range(30, 230, 14):
    t.append(f'<path d="M{x} 390v-14" fill="none" stroke-width="1"/><circle cx="{x}" cy="374" r="3" fill="#FFFFFF" stroke-width="1"/><circle cx="{x}" cy="374" r="1" fill="#000000"/>')
E["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
E["okno"] = (48, 305, 50, 36, group(['<path d="M52 306H96V338H52Z" fill="#FFFFFF" stroke="none" opacity="0.9"/>']))
E["kolysanka"] = (52, 310, 44, 28, group(['<circle cx="64" cy="320" r="4" fill="#000000"/><path d="M60 324C60 336 70 336 70 324Z" fill="#000000"/><path d="M76 332q8 -6 14 0" fill="none" stroke-width="1.4"/>']))
E["nuty"] = (90, 280, 50, 30, group([f'<path d="M{96 + i * 12} {300 - i * 4}q3 -6 6 0" fill="none" stroke-width="1.2"/>' for i in range(3)]))
E["wycie"] = (240, 200, 150, 30, group([f'<circle cx="{x}" cy="{216 + (x % 3)}" r="1.4" fill="#FFFFFF" stroke="#000000" stroke-width="0.6"/><circle cx="{x + 5}" cy="{216 + (x % 3)}" r="1.4" fill="#FFFFFF" stroke="#000000" stroke-width="0.6"/>' for x in (250, 290, 330, 366)]))
E["przod"] = (0, 422, 390, 422, group(PRZOD))
JES = ["tlo", "okno", "kolysanka", "nuty", "wycie", "przod"]
E_REVEAL = {"kolysanka": "kolysanka", "nuty": "kolysanka", "wycie": "wycie"}
E_ANIM = {"okno": {"type": "flicker", "amplitude": 0.6, "duration": 2400}, "kolysanka": {"type": "sway", "amplitude": 2, "duration": 2400, "anchorX": 0.5, "anchorY": 1},
          "nuty": {"type": "rise", "amplitude": 20, "duration": 2400}, "wycie": {"type": "blink", "duration": 3000}}
E_EXTRA = {"okno": {"noInvert": True}, "kolysanka": {"fadeDuration": 1500}, "nuty": {"fadeDuration": 1500}, "wycie": {"fadeDuration": 3000, "appearAfter": 1000}, "przod": {"depth": 1.0}}
E_COMMENTS = {"tlo": "jesienny wieczór: chałupa z oświetlonym oknem, astry, bór", "okno": "światło w oknie", "kolysanka": "Hanka kołysze Marysię (# pokaz: kolysanka)",
              "nuty": "kołysanka (# pokaz: kolysanka)", "wycie": "ślepia wilków pod borem (# pokaz: wycie)", "przod": "pierwszy plan"}
_add(E, JES, E_ANIM, E_COMMENTS, "liscie", ((60, 200, 300, 160, group([f'<path d="M{x} {y}c-3 -3 -1 -7 3 -6c3 -3 7 -1 6 3c2 3 -1 6 -4 5z" fill="#FFFFFF" stroke-width="1"/>' for x, y in [(80, 230), (200, 210), (300, 250)]])),
                                            {"type": "float", "amplitude": 10, "dx": 100, "dy": 120, "duration": 9000}, "jesienne liście"), before="okno")
_add(E, JES, E_ANIM, E_COMMENTS, "dym", ((150, 180, 30, 60, group([dym(164, 230, 50)])), {"type": "sway", "amplitude": 3, "duration": 4600, "anchorX": 0.5, "anchorY": 1}, "dym z komina"), before="okno")
_add(E, JES, E_ANIM, E_COMMENTS, "astry", ((20, 360, 220, 34, group([f'<circle cx="{x}" cy="374" r="3" fill="#FFFFFF" stroke-width="1"/>' for x in range(37, 230, 28)])),
                                           {"type": "sway", "amplitude": 2, "duration": 2600, "anchorX": 0.5, "anchorY": 1}, "astry pod oknem"), before="przod")
_add(E, JES, E_ANIM, E_COMMENTS, "zurawie", efekty.wrony(200, 100, n=5, k=0.4, seed=1022, amplitude=70, duration=8000), before="okno")
E_COMMENTS["zurawie"] = "klucz żurawi odlatuje"
_add(E, JES, E_ANIM, E_COMMENTS, "mgla", ((-30, 216, 450, 30, group([f'<path d="{ribbon(-20, 410, 230, 12, 4)}" fill="#EDEBE6" stroke-width="1.2" opacity="0.7"/>'])),
                                          {"type": "drift", "amplitude": 12, "duration": 14000}, "mgła pod borem"), before="okno")

BACKGROUNDS = {"izba_zimowa": ("bg_izbazima", Z, ZIMA, Z_ANIM, Z_REVEAL, Z_EXTRA, Z_COMMENTS, "izba zimą"),
               "przestrogi": ("bg_przestrogi", P, PRZESTR, P_ANIM, P_REVEAL, P_EXTRA, P_COMMENTS, "letnia noc nad jeziorem"),
               "przyzba_swit": ("bg_przyzbaswit", S, SWIT, S_ANIM, S_REVEAL, S_EXTRA, S_COMMENTS, "przyzba o świcie"),
               "izba_kolyska": ("bg_izbakol", K, KOLYSKA, K_ANIM, K_REVEAL, K_EXTRA, K_COMMENTS, "izba z kołyską"),
               "noc_mamun": ("bg_nocmamun", N, NOC, N_ANIM, N_REVEAL, N_EXTRA, N_COMMENTS, "noc mamun"),
               "chrzest": ("bg_chrzest", C, CHRZEST, C_ANIM, C_REVEAL, C_EXTRA, C_COMMENTS, "chrzest"),
               "odmieniec": ("bg_odmieniec", O, ODM, O_ANIM, O_REVEAL, O_EXTRA, O_COMMENTS, "odmieniec"),
               "rozstaje": ("bg_rozstaje", R, ROZ, R_ANIM, R_REVEAL, R_EXTRA, R_COMMENTS, "rozstaje"),
               "jezioro_mamun": ("bg_jezmamun", J, JEZ, J_ANIM, J_REVEAL, J_EXTRA, J_COMMENTS, "jezioro mamun"),
               "baza_wrzesien": ("bg_bazawrz", B, BAZA, B_ANIM, B_REVEAL, B_EXTRA, B_COMMENTS, "baza pod koniec lata"),
               "jesien_okno": ("bg_jesokno", E, JES, E_ANIM, E_REVEAL, E_EXTRA, E_COMMENTS, "jesienne okno")}

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
