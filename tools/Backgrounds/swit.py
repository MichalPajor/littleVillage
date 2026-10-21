# Generator tel rozdzialu dziewietnastego (Swit):
#   laka_swit        — swit na lace pod mlodnikiem, pokosy, chalupa; pies biegnie (# pokaz: pies), wilk przy swierkach (# pokaz: wilk),
#                      Hanka obejmuje Jaromira z Marysia (# pokaz: uscisk), Antek z kapota (# pokaz: antek), Hanka kolysze dziecko (# pokaz: kolysze),
#                      Jagna przy wozie (# pokaz: jagna), stary Stas z kijem (# pokaz: stas)
#   calun_noc        — noc nad jeziorem, pomost, trzciny; mamuny autora pioraja na kamieniach (# pokaz: mamuny), bialy calun na kamieniu (# pokaz: calun),
#                      Jaromir w wodzie z calunem (# pokaz: wyrwany), Antek z calunem (# pokaz: antek), wilk miedzy mamunami (# pokaz: wilk),
#                      calun rozplywa sie jak piana o swicie (# pokaz: piana)
#   pogrzeb          — cmentarz w Bukowcu pod brzoza, kosciolek; trumienka z bzu (# pokaz: trumienka), wianki z chabrow i rumianku (# pokaz: wianki)
#   jesien_zaduszki  — jesienny zmierzch, wies, mgla od boru; mgla pod plotami (# pokaz: mgla), ludzie z gromnicami — zgasly (# pokaz: zgasly),
#                      gromnica Hanki pali sie dalej (# pokaz: gromnica_hanki)
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/swit.py src/LittleVillage/Resources/Images
#   python3 tools/Backgrounds/swit.py --master <tlo> [wszystko] > podglad.svg
import sys
from common import *
import art, postacie, efekty
from efekty import add as _add
from licho import PRZOD
from czuwanie import plomyk
from wesele import chalupa, dym, kosciolek
from figurka import jagna
from oblawa import wilk_stoi
from narodziny import mamuna_rig
from kupala import zyto, RED
from rozmowa import pies_siedzi
from wybor import dziewczynka

NOC = '<rect width="390" height="440" fill="url(#hatchNight)" stroke="none" opacity="0.8"/>'


def pokos(x0, x1, y):
    d = f"M{x0} {y}" + "".join(f"q8 -6 15 0" for _ in range(int((x1 - x0) / 15)))
    return f'<path d="{d}" fill="none" stroke-width="2"/>'


def kobieta_z_dzieckiem(x, y, k):
    return postacie.woman(x, y, k) + dziewczynka(x + 4 * k, y - 20 * k, 0.07 * k)


def siedzi_z_dzieckiem(x, y, k):
    """Hanka siedzi w trawie i kolysze dziecko."""
    return (f'<path d="M{x - 14 * k:.1f} {y}C{x - 14 * k:.1f} {y - 16 * k:.1f} {x + 14 * k:.1f} {y - 16 * k:.1f} {x + 16 * k:.1f} {y}Z" fill="#000000" stroke-width="1.2"/>'
            f'<path d="M{x - 6 * k:.1f} {y - 12 * k:.1f}C{x - 8 * k:.1f} {y - 28 * k:.1f} {x + 6 * k:.1f} {y - 32 * k:.1f} {x + 6 * k:.1f} {y - 12 * k:.1f}Z" fill="#000000" stroke-width="1.2"/>'
            f'<circle cx="{x:.1f}" cy="{y - 34 * k:.1f}" r="{5 * k:.1f}" fill="#000000" stroke-width="1"/>'
            f'<path d="M{x - 4 * k:.1f} {y - 14 * k:.1f}h{16 * k:.1f}" fill="none" stroke="#FFFFFF" stroke-width="{4 * k:.1f}"/>')


def gromnica(x, y, k=1.0, lit=True):
    s = f'<path d="M{x} {y}v{-14 * k:.1f}" fill="none" stroke="#FFFFFF" stroke-width="{2.4 * k:.1f}"/><path d="M{x} {y}v{-14 * k:.1f}" fill="none" stroke-width="0.6"/>'
    return s + (plomyk(x, y - 15 * k, 0.4 * k) if lit else "")


# ======================= LAKA O SWICIE =======================
L = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V200H0Z" fill="url(#hatchNight)" stroke="none" opacity="0.1"/>']
t += [spruce(x, 210 + (x % 3) * 4, 40 + (x % 5) * 8, 20) for x in range(-6, 140, 16)]
t.append('<path d="M-10 214C100 208 280 212 400 206V440H-10Z" fill="#EDEBE6" stroke-width="2.4"/>')
t.append(chalupa(260, 280, 110, 56, 46))
t += [pokos(-10, 250, y) for y in (300, 340, 384)]
L["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
L["slonce"] = (130, 150, 60, 60, group(['<path d="M136 204a24 24 0 0 1 48 0" fill="#FFFFFF" stroke-width="2.2"/>']))
L["promienie"] = (110, 130, 100, 80, group(['<path d="M160 176v-30M136 184l-16 -18M184 184l16 -18M126 200h-14M194 200h14" fill="none" stroke-width="1.2"/>']))
L["ludzie"] = (150, 240, 110, 70, group([postacie.man(x, 300, 0.7, hat=True) + f'<path d="M{x + 3} 284l12 14" fill="none" stroke-width="1"/>' for x in (170, 200, 236)]))
L["uscisk"] = (60, 310, 90, 100, group([postacie.man(84, 404, 1.3, hat=False), kobieta_z_dzieckiem(118, 404, 1.3)]))
L["kolysze"] = (90, 350, 60, 60, group([siedzi_z_dzieckiem(118, 404, 1.4)]))
L["jaromir_sam"] = (60, 310, 50, 100, group([postacie.man(84, 404, 1.3, hat=False)]))
L["antek"] = (140, 320, 50, 90, group([postacie.man(160, 404, 1.2, hat=True)]))
L["jagna"] = (300, 330, 70, 80, group([jagna(330, 400, 1.0)]))
L["stas"] = (300, 330, 60, 80, group([postacie.man(324, 404, 1.1, hat=True), '<path d="M336 374l8 30" fill="none" stroke-width="2"/>']))
RIG_LP = pies_siedzi(40, 404, 0.08, "lp")
art.install_rig(L, RIG_LP)
LP = art.rig_names(RIG_LP)
RIG_LW = wilk_stoi(110, 236, 0.13, "lw")
art.install_rig(L, RIG_LW)
LW = art.rig_names(RIG_LW)
L["przod"] = (0, 422, 390, 422, group(PRZOD))
LAK = ["tlo", "promienie", "slonce"] + LW + ["ludzie", "jagna", "stas", "antek", "jaromir_sam", "uscisk", "kolysze"] + LP + ["przod"]
L_REVEAL = {**{n: "pies" for n in LP}, **{n: "wilk" for n in LW}, "uscisk": "uscisk", "antek": "antek", "kolysze": "kolysze", "jagna": "jagna", "stas": "stas"}
L_ANIM = {"slonce": {"type": "slide", "dx": 0, "dy": -16, "duration": 12000, "once": True}, "promienie": {"type": "flicker", "amplitude": 0.4, "duration": 3000},
          "ludzie": {"type": "bob", "amplitude": 0.4, "duration": 2600}, "uscisk": {"type": "bob", "amplitude": 0.5, "duration": 1800},
          "kolysze": {"type": "sway", "amplitude": 3, "duration": 2200, "anchorX": 0.5, "anchorY": 1}, "jaromir_sam": {"type": "bob", "amplitude": 0.4, "duration": 3000}}
L_ANIM.update(art.rig_anims(RIG_LP))
L_ANIM.update(art.rig_anims(RIG_LW))
L_EXTRA = {**{n: {"fadeDuration": 1500} for n in LP + LW}, "uscisk": {"fadeDuration": 2000}, "antek": {"fadeDuration": 1500}, "kolysze": {"fadeDuration": 2500},
           "jagna": {"fadeDuration": 1500}, "stas": {"fadeDuration": 1500}, "jaromir_sam": {"hideOn": "uscisk"}, "przod": {"depth": 1.0}}
L_COMMENTS = {"tlo": "świt na łące pod młodnikiem, pokosy, chałupa", "slonce": "słońce wschodzi zza boru", "promienie": "promienie słońca", "ludzie": "ludzie z grabiami na pokosach",
              "uscisk": "Hanka obejmuje Jaromira i Marysię (# pokaz: uscisk)", "kolysze": "Hanka siedzi w trawie i kołysze dziecko (# pokaz: kolysze)",
              "jaromir_sam": "Jaromir na łące", "antek": "Antek (# pokaz: antek)", "jagna": "Jagna przy płocie (# pokaz: jagna)", "stas": "stary Staś z kijem (# pokaz: stas)",
              "przod": "pierwszy plan", **{n: f"rudy pies — {n[3:]} (rysunek autora; # pokaz: pies)" for n in LP},
              **{n: f"biały wilk przy ostatnich świerkach — {n[3:]} (rysunek autora; # pokaz: wilk)" for n in LW}}
_add(L, LAK, L_ANIM, L_COMMENTS, "rosa", efekty.iskry(0, 290, 260, 120, n=16, seed=2001, duration=2200), before="ludzie")
L_COMMENTS["rosa"] = "rosa szkli się na pokosach"
_add(L, LAK, L_ANIM, L_COMMENTS, "skowronek", efekty.wrony(220, 100, n=1, k=0.25, seed=2002, amplitude=20, duration=2600), before="ludzie")
L_COMMENTS["skowronek"] = "skowronek nad zbożem"
_add(L, LAK, L_ANIM, L_COMMENTS, "mgla", ((-20, 196, 430, 40, group(['<path d="M-20 218C60 204 140 220 220 208C290 200 350 216 410 206V230H-20Z" fill="#FFFFFF" stroke="none" opacity="0.55"/>'])),
                                           {"type": "drift", "amplitude": 16, "duration": 12000}, "poranna mgła"), before="ludzie")
_add(L, LAK, L_ANIM, L_COMMENTS, "dym", ((290, 160, 30, 70, group([dym(302, 226, 50)])), {"type": "sway", "amplitude": 3, "duration": 4600, "anchorX": 0.5, "anchorY": 1}, "dym z komina"), before="ludzie")
_add(L, LAK, L_ANIM, L_COMMENTS, "trawa", ((0, 400, 390, 26, group([f'<path d="M{x} 424l{(-3, 2, 4, -1)[x % 4]} {-(8, 13, 10, 16)[x % 4]}" fill="none" stroke-width="1.2"/>' for x in range(4, 390, 8)])),
                                           {"type": "sway", "amplitude": 3, "duration": 2400, "anchorX": 0.5, "anchorY": 1}, "mokra trawa"), before="przod")

# ======================= CALUN NOCA =======================
C = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', NOC]
t.append('<path d="M-10 230C100 226 280 228 400 224V440H-10Z" fill="url(#hatchDense)" stroke-width="2"/>')
t += [spruce(x, 226, 30 + (x % 4) * 6, 14) for x in range(-6, 400, 18)]
t.append('<path d="M200 300H390V310H200Z" fill="#EDEBE6" stroke-width="2"/>' + "".join(f'<path d="M{x} 310v40" fill="none" stroke-width="3"/>' for x in (220, 270, 320, 370)))
t += [f'<path d="M{x - 18} {y}C{x - 16} {y - 10} {x + 16} {y - 10} {x + 18} {y}Z" fill="#EDEBE6" stroke-width="1.6"/>' for x, y in [(90, 344), (140, 352), (170, 380)]]
C["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
C["ksiezyc"] = (300, 30, 40, 40, group(['<circle cx="320" cy="50" r="13" fill="#FFFFFF" stroke-width="2"/>']))
RIG_C1 = mamuna_rig("mamuna_1", 74, 352, 0.24, "c1")
art.install_rig(C, RIG_C1)
C1 = art.rig_names(RIG_C1)
RIG_C2 = mamuna_rig("mamuna_2", 156, 360, 0.24, "c2")
art.install_rig(C, RIG_C2)
C2 = art.rig_names(RIG_C2)
C["calun"] = (114, 334, 52, 20, group(['<path d="M118 346c8 -6 36 -6 44 0c-4 6 -38 8 -44 0z" fill="#FFFFFF" stroke-width="1.2"/>']))
C["wyrwany"] = (150, 330, 70, 90, group([postacie.man(186, 410, 1.2, hat=False), '<path d="M196 368c6 4 14 4 20 0" fill="#FFFFFF" stroke-width="1"/>', '<path d="M150 400H230" fill="none" stroke="#FFFFFF" stroke-width="1" stroke-dasharray="3 3"/>']))
C["antek"] = (176, 330, 70, 90, group([postacie.man(206, 410, 1.2, hat=True), '<path d="M190 376c6 4 14 4 20 0" fill="#FFFFFF" stroke-width="1"/>']))
RIG_CW = wilk_stoi(126, 376, 0.15, "cw")
art.install_rig(C, RIG_CW)
CW = art.rig_names(RIG_CW)
C["piana"] = (110, 330, 60, 24, group([f'<circle cx="{x}" cy="{y}" r="2" fill="#FFFFFF" stroke-width="0.6"/>' for x, y in [(120, 346), (130, 342), (142, 348), (154, 343), (162, 347)]]))
C["przod"] = (0, 422, 390, 422, group(['<path d="M-10 432H400V844H-10Z" fill="#000000" stroke="none"/>']))
CAL = ["tlo", "ksiezyc"] + C1 + C2 + ["calun"] + CW + ["wyrwany", "antek", "piana", "przod"]
HIDE_C = "wyrwany,antek,wilk,piana"
C_REVEAL = {**{n: "mamuny" for n in C1 + C2}, "calun": "calun", "wyrwany": "wyrwany", "antek": "antek", **{n: "wilk" for n in CW}, "piana": "piana"}
C_ANIM = {"calun": {"type": "flicker", "amplitude": 0.7, "duration": 3000}, "wyrwany": {"type": "bob", "amplitude": 1.2, "duration": 900},
          "antek": {"type": "bob", "amplitude": 1.0, "duration": 1100}, "piana": {"type": "rise", "amplitude": 8, "duration": 3000}}
for rig in (RIG_C1, RIG_C2, RIG_CW):
    C_ANIM.update(art.rig_anims(rig))
C_EXTRA = {**{n: {"fadeDuration": 2500, "hideOn": "piana"} for n in C1 + C2}, "calun": {"fadeDuration": 2000, "noInvert": True, "hideOn": HIDE_C},
           "wyrwany": {"fadeDuration": 1500}, "antek": {"fadeDuration": 1500}, **{n: {"fadeDuration": 1500} for n in CW}, "piana": {"fadeDuration": 3000, "noInvert": True}, "przod": {"depth": 1.0}}
C_COMMENTS = {"tlo": "noc nad jeziorem: pomost, płaskie kamienie, trzciny, bór w dali", "ksiezyc": "księżyc", "calun": "mały biały całun na kamieniu (# pokaz: calun)",
              "wyrwany": "Jaromir w wodzie z mokrym całunem (# pokaz: wyrwany)", "antek": "Antek wyrywa całun (# pokaz: antek)", "piana": "całun rozpływa się jak piana (# pokaz: piana)",
              "przod": "pierwszy plan", **{n: f"mamuna pierze — {n[3:]} (rysunek autora; # pokaz: mamuny)" for n in C1 + C2},
              **{n: f"biały wilk między mamunami — {n[3:]} (rysunek autora; # pokaz: wilk)" for n in CW}}
_add(C, CAL, C_ANIM, C_COMMENTS, "kregi", ((40, 360, 160, 60, group(['<ellipse cx="90" cy="380" rx="20" ry="4" fill="none" stroke="#FFFFFF" stroke-width="0.8"/>', '<ellipse cx="160" cy="396" rx="16" ry="3" fill="none" stroke="#FFFFFF" stroke-width="0.8"/>'])),
                                            {"type": "ripple", "amplitude": 1.6, "duration": 2400}, "kręgi na wodzie od kijanek"), before="calun")
C_EXTRA["kregi"] = {"noInvert": True}
_add(C, CAL, C_ANIM, C_COMMENTS, "trzciny", ((0, 260, 130, 110, group([f'<path d="M{x} 360l{(x % 3) - 1} -{60 + x % 20}" fill="none" stroke-width="1.4"/>' for x in range(4, 120, 9)])),
                                              {"type": "sway", "amplitude": 3, "duration": 2800, "anchorX": 0.5, "anchorY": 1}, "trzciny przy brzegu"), before="calun")
_add(C, CAL, C_ANIM, C_COMMENTS, "mgla", ((-20, 280, 430, 50, group(['<path d="M-20 300C40 286 100 304 160 292C220 282 300 300 410 288V320H-20Z" fill="#FFFFFF" stroke="none" opacity="0.25"/>'])),
                                           {"type": "drift", "amplitude": 16, "duration": 12000}, "mgła nad wodą"), before="calun")
_add(C, CAL, C_ANIM, C_COMMENTS, "gwiazdy", efekty.iskry(0, 10, 290, 120, n=10, seed=2010, duration=3600), before="ksiezyc")
C_COMMENTS["gwiazdy"] = "gwiazdy"
_add(C, CAL, C_ANIM, C_COMMENTS, "odbicie", ((290, 300, 60, 60, group(['<path d="M310 320h20M314 330h12M312 340h16" fill="none" stroke="#FFFFFF" stroke-width="1"/>'])),
                                              {"type": "flicker", "amplitude": 0.3, "duration": 2000}, "odbicie księżyca w wodzie"), before="calun")
C_EXTRA["odbicie"] = {"noInvert": True}

# ======================= POGRZEB =======================
P = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V220H0Z" fill="url(#hatch)" stroke="none" opacity="0.25"/>']
t.append('<path d="M-10 230C100 224 280 228 400 222V440H-10Z" fill="#EDEBE6" stroke-width="2.4"/>')
t.append(kosciolek(250, 236, 1.0))
t += [f'<path d="M{x} {y}v-24M{x - 8} {y - 16}h16" fill="none" stroke-width="2"/>' for x, y in [(40, 300), (90, 290), (330, 300), (370, 296)]]
t.append('<path d="M140 340C142 280 146 220 148 150H160C160 220 162 280 166 340Z" fill="#FFFFFF" stroke-width="2.2"/>'
         + "".join(f'<path d="M{142 + (i % 2) * 6} {180 + i * 18}h{8 + (i % 3) * 2}" fill="none" stroke-width="2.4"/>' for i in range(9))
         + '<path d="M154 210l-40 40M154 240l36 26M154 180l30 -22M150 170l-26 -24" fill="none" stroke-width="2"/>')
t.append('<path d="M120 380H230L222 394H128Z" fill="#000000" stroke-width="1.6"/>')
P["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
P["brzoza"] = (70, 60, 170, 230, group([f'<path d="M{x} {y}v{h}" fill="none" stroke-width="1" stroke-dasharray="2 3"/>' for x, y, h in [(90, 110, 120), (104, 90, 150), (120, 80, 170), (190, 84, 160), (206, 96, 140), (222, 112, 110)]]
                                          + ['<path d="M90 110C110 70 200 64 222 112" fill="none" stroke-width="1.6"/>']))
P["ludzie"] = (0, 300, 390, 110, group([postacie.woman(x, 404, 1.0) for x in (40, 270)] + [postacie.man(x, 404, 1.05, hat=False) for x in (70, 300, 350)] + [postacie.woman(320, 404, 0.9)]))
P["trumienka"] = (134, 360, 84, 30, group(['<path d="M140 380L146 366H206L212 380Z" fill="url(#hatchDense)" stroke-width="1.6"/><path d="M176 360v-8M172 356h8" fill="none" stroke-width="1.2"/>']))
P["wianki"] = (140, 352, 74, 20, group([f'<ellipse cx="{x}" cy="364" rx="8" ry="3" fill="none" stroke-width="1.6"/><circle cx="{x - 4}" cy="363" r="1.2" fill="{RED}" stroke="none"/>' for x in (156, 176, 196)]))
P["przod"] = (0, 422, 390, 422, group(PRZOD))
POG = ["tlo", "brzoza", "trumienka", "wianki", "ludzie", "przod"]
P_REVEAL = {"trumienka": "trumienka", "wianki": "wianki"}
P_ANIM = {"brzoza": {"type": "sway", "amplitude": 1.5, "duration": 4000, "anchorX": 0.5, "anchorY": 1}, "ludzie": {"type": "bob", "amplitude": 0.3, "duration": 3200}}
P_EXTRA = {"trumienka": {"fadeDuration": 2500}, "wianki": {"fadeDuration": 2500}, "przod": {"depth": 1.0}}
P_COMMENTS = {"tlo": "cmentarz w Bukowcu, brzoza, kościółek, krzyże", "brzoza": "korona brzozy", "ludzie": "ludzie ze wsi przy grobie",
              "trumienka": "trumienka z drewna starego bzu (# pokaz: trumienka)", "wianki": "wianki z chabrów i rumianku na wieku (# pokaz: wianki)", "przod": "pierwszy plan"}
_add(P, POG, P_ANIM, P_COMMENTS, "liscie", ((80, 160, 160, 200, group([f'<path d="M{x} {y}c3 -5 8 -5 10 0c-3 3 -7 3 -10 0z" fill="none" stroke-width="0.8"/>' for x, y in [(110, 180), (170, 200), (130, 230)]])),
                                             {"type": "rise", "amplitude": -120, "duration": 7000}, "liście brzozy spadają"), before="ludzie")
_add(P, POG, P_ANIM, P_COMMENTS, "wrony", efekty.wrony(260, 80, n=3, k=0.35, seed=2020, amplitude=50, duration=5000), before="brzoza")
_add(P, POG, P_ANIM, P_COMMENTS, "dzwon", ((246, 128, 16, 16, group(['<path d="M249 142c0 -8 2 -12 5 -12c3 0 5 4 5 12z" fill="#000000" stroke-width="1"/>'])),
                                           {"type": "sway", "amplitude": 10, "duration": 2000, "anchorX": 0.5, "anchorY": 0}, "dzwon"), before="ludzie")
_add(P, POG, P_ANIM, P_COMMENTS, "chmury", ((30, 30, 330, 50, group(['<path d="M60 62c8 -14 28 -14 34 0c8 -8 24 -2 22 8h-56z" fill="url(#hatch)" stroke-width="1.4"/>'])),
                                            {"type": "drift", "amplitude": 14, "duration": 16000}, "chmury"), before="brzoza")
_add(P, POG, P_ANIM, P_COMMENTS, "trawa", ((0, 400, 390, 26, group([f'<path d="M{x} 424l{(-3, 2, 4, -1)[x % 4]} {-(8, 13, 10, 16)[x % 4]}" fill="none" stroke-width="1.2"/>' for x in range(4, 390, 8)])),
                                           {"type": "sway", "amplitude": 2, "duration": 2600, "anchorX": 0.5, "anchorY": 1}, "trawa na cmentarzu"), before="przod")

# ======================= JESIEN PRZED ZADUSZKAMI =======================
J = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V440H0Z" fill="url(#hatchNight)" stroke="none" opacity="0.55"/>']
t += [spruce(x, 200, 40 + (x % 5) * 8, 20) for x in range(-6, 400, 15)]
t.append('<path d="M-10 206C100 200 280 204 400 198V440H-10Z" fill="#EDEBE6" stroke-width="2.4"/>')
t.append(chalupa(20, 300, 110, 56, 46))
t.append(chalupa(260, 296, 110, 56, 46))
t.append('<path d="M-10 330H400" fill="none" stroke-width="1.6"/>' + "".join(f'<path d="M{x} 330v-16" fill="none" stroke-width="1.6"/>' for x in range(0, 400, 14)))
J["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
J["mgla"] = (-20, 200, 430, 140, group(['<path d="M-20 240C60 226 140 244 220 232C290 222 350 240 410 228V340H-20Z" fill="#FFFFFF" stroke="none" opacity="0.5"/>']))
J["ludzie"] = (70, 330, 240, 90, group([postacie.man(x, 410, 1.0, hat=True) for x in (100, 180, 260)] + [postacie.woman(x, 410, 0.95) for x in (140, 220, 300)]))
J["gromnice"] = (100, 330, 230, 60, group([gromnica(x + 12, 380, 1.4) for x in (100, 140, 180, 220, 260, 300)]))
J["zgasly"] = (100, 330, 230, 60, group([gromnica(x + 12, 380, 1.4, lit=False) + f'<path d="M{x + 12} 358c-3 -6 3 -10 0 -16" fill="none" stroke="#FFFFFF" stroke-width="0.8" stroke-dasharray="2 2"/>' for x in (100, 140, 180, 220, 260, 300)]))
J["gromnica_hanki"] = (140, 330, 24, 40, group([plomyk(152, 359, 0.6)]))
J["przod"] = (0, 422, 390, 422, group(PRZOD))
JES = ["tlo", "mgla", "ludzie", "gromnice", "zgasly", "gromnica_hanki", "przod"]
J_REVEAL = {"mgla": "mgla", "zgasly": "zgasly", "gromnica_hanki": "gromnica_hanki"}
J_ANIM = {"mgla": {"type": "drift", "amplitude": 20, "duration": 10000}, "ludzie": {"type": "bob", "amplitude": 0.6, "duration": 1600},
          "gromnice": {"type": "flame", "amplitude": 0.25, "duration": 700, "anchorX": 0.5, "anchorY": 1}, "gromnica_hanki": {"type": "flame", "amplitude": 0.1, "duration": 1600, "anchorX": 0.5, "anchorY": 1}}
J_EXTRA = {"mgla": {"fadeDuration": 4000}, "gromnice": {"noInvert": True, "hideOn": "zgasly"}, "zgasly": {"fadeDuration": 300}, "gromnica_hanki": {"fadeDuration": 300, "noInvert": True}, "przod": {"depth": 1.0}}
J_COMMENTS = {"tlo": "jesienny zmierzch, chałupy, płot, bór", "mgla": "mgła od boru podchodzi pod płoty (# pokaz: mgla)", "ludzie": "ludzie wracają z cmentarza",
              "gromnice": "gromnice w rękach", "zgasly": "gromnice zgasły jednym tchem (# pokaz: zgasly)", "gromnica_hanki": "gromnica Hanki pali się dalej (# pokaz: gromnica_hanki)",
              "przod": "pierwszy plan"}
_add(J, JES, J_ANIM, J_COMMENTS, "liscie", ((0, 100, 390, 300, group([f'<path d="M{x} {y}c3 -5 8 -5 10 0c-3 3 -7 3 -10 0z" fill="url(#hatchDense)" stroke-width="0.8"/>' for x, y in [(40, 120), (120, 160), (220, 130), (300, 170), (360, 140)]])),
                                             {"type": "rise", "amplitude": -200, "duration": 8000}, "liście lecą na wietrze"), before="ludzie")
_add(J, JES, J_ANIM, J_COMMENTS, "wrony", efekty.wrony(120, 60, n=4, k=0.4, seed=2030, amplitude=60, duration=5000), before="mgla")
_add(J, JES, J_ANIM, J_COMMENTS, "dym", ((50, 200, 40, 70, group([dym(60, 260, 50)])), {"type": "sway", "amplitude": 3, "duration": 4600, "anchorX": 0.5, "anchorY": 1}, "dym z komina"), before="mgla")
_add(J, JES, J_ANIM, J_COMMENTS, "okna", ((40, 270, 330, 30, group([f'<path d="M{x} 280h10v10h-10z" fill="#FFFFFF" stroke-width="0.8"/>' for x in (66, 306)])),
                                          {"type": "flicker", "amplitude": 0.5, "duration": 2400}, "światło w oknach"), before="mgla")
J_EXTRA["okna"] = {"noInvert": True}

BACKGROUNDS = {"laka_swit": ("bg_lakaswit", L, LAK, L_ANIM, L_REVEAL, L_EXTRA, L_COMMENTS, "świt na łące"),
               "calun_noc": ("bg_calun", C, CAL, C_ANIM, C_REVEAL, C_EXTRA, C_COMMENTS, "całun nad jeziorem"),
               "pogrzeb": ("bg_pogrzeb", P, POG, P_ANIM, P_REVEAL, P_EXTRA, P_COMMENTS, "pogrzeb w Bukowcu"),
               "jesien_zaduszki": ("bg_zaduszki", J, JES, J_ANIM, J_REVEAL, J_EXTRA, J_COMMENTS, "jesień przed Zaduszkami")}

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
