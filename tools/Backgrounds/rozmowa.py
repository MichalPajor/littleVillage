# Generator tel rozdzialu siedemnastego (Rozmowa w borze):
#   wies_sianokosy — swit nad lakami pod wsia: pokosy siana, chlopi z grabiami, chalupa Jaromira; luczywo w oknie (# pokaz: luczywo),
#                    woz Jagny pod plotem (# pokaz: jagna)
#   pod_debem      — szare swiatlo w sercu boru: dab ze szczelina, Pan Lasu autora siedzi z twarza na wysokosci strzechy, Jaromir na korzeniu;
#                    woda miedzy korzeniami (# pokaz: woda), pies spi miedzy korzeniami (# pokaz: pies_spi), pies przy Jaromirze (# pokaz: pies),
#                    cien Jaromira (# pokaz: cien), suche igly z palcow (# pokaz: igly), zwiniete liscie (# pokaz: liscie), bialy wilk z drewniakiem
#                    (# pokaz: wilk), wilk przy Panu Lasu (# pokaz: wilk_przy_lesym), wilk u stop Jaromira i drewniak w dloni (# pokaz: drewniak),
#                    siekiera w korzeniu (# pokaz: siekiera), krzesiwo w wykrocie (# pokaz: krzesiwo), Jaromir bez cienia (# pokaz: bez_cienia)
#   noc_pod_debem  — noc pod debem, Jaromir spi na korzeniach; spiew ze szczeliny (# pokaz: spiew), wilk przy boku (# pokaz: wilk),
#                    cien wsuwa sie pod korzenie (# pokaz: cien), swit i Pan Lasu czeka (# pokaz: swit)
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/rozmowa.py src/LittleVillage/Resources/Images
#   python3 tools/Backgrounds/rozmowa.py --master <tlo> [wszystko] > podglad.svg
import sys, random
from common import *
import art, postacie, efekty
from efekty import add as _add
from licho import PRZOD
from czuwanie import plomyk
from wesele import chalupa, dym
from figurka import jagna, kosz
from oblawa import wilk_stoi
from kupala import drewniak, RED
from wglab import pien, korona, leszy_rig, fala_glosu, NOC, SWIT, DAB

LAKA = "#EDEBE6"


def pokos(x0, x1, y, seed):
    """Rzad przewracanego siana na lace."""
    rnd = random.Random(seed)
    d = f"M{x0} {y}" + "".join(f"q{rnd.uniform(6, 10):.0f} {-rnd.uniform(4, 8):.0f} {rnd.uniform(12, 18):.0f} 0" for _ in range(int((x1 - x0) / 15)))
    return f'<path d="{d}" fill="none" stroke-width="2.2"/><path d="{d}" fill="none" stroke="url(#hatch)" stroke-width="5" opacity="0.6"/>'


def grabiarz(x, y, k, woman=False, flip=1):
    figura = postacie.woman(x, y, k) if woman else postacie.man(x, y, k, hat=True)
    return figura + f'<path d="M{x + 4 * k * flip:.1f} {y - 22 * k:.1f}l{18 * k * flip:.1f} {20 * k:.1f}M{x + 18 * k * flip:.1f} {y - 1 * k:.1f}h{8 * k * flip:.1f}" fill="none" stroke-width="{1.4 * k:.1f}"/>'


def siedzacy(x, y, k=1.0):
    """Jaromir siedzacy na korzeniu, bokiem, z lokciami na kolanach."""
    return (f'<path d="M{x - 6 * k:.1f} {y - 30 * k:.1f}C{x - 8 * k:.1f} {y - 20 * k:.1f} {x - 6 * k:.1f} {y - 10 * k:.1f} {x} {y - 6 * k:.1f}L{x + 14 * k:.1f} {y - 6 * k:.1f}L{x + 16 * k:.1f} {y + 6 * k:.1f}" fill="none" stroke-width="{5 * k:.1f}"/>'
            f'<circle cx="{x - 4 * k:.1f}" cy="{y - 36 * k:.1f}" r="{5 * k:.1f}" fill="#000000" stroke-width="1"/>'
            f'<path d="M{x - 5 * k:.1f} {y - 26 * k:.1f}L{x + 8 * k:.1f} {y - 12 * k:.1f}" fill="none" stroke-width="{3 * k:.1f}"/>')


def lezacy(x, y, k=1.0):
    """Jaromir spiacy na korzeniach, zwiniety na boku."""
    return (f'<path d="M{x} {y}C{x + 10 * k:.1f} {y - 10 * k:.1f} {x + 30 * k:.1f} {y - 10 * k:.1f} {x + 40 * k:.1f} {y - 2 * k:.1f}L{x + 48 * k:.1f} {y + 2 * k:.1f}" fill="none" stroke-width="{6 * k:.1f}"/>'
            f'<circle cx="{x - 6 * k:.1f}" cy="{y - 4 * k:.1f}" r="{5 * k:.1f}" fill="#000000" stroke-width="1"/>')


def pies_siedzi(x, feet, k, prefix):
    tr = art.parse_transform(f"translate({x - 200 * k:.1f} {feet - 404 * k:.1f}) scale({k})")
    return art.dog_sitting(tr, prefix)


def dab_scena(night=False):
    t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V440H0Z" fill="url(#hatch)" stroke="none" opacity="0.3"/>']
    t += [pien(x, 330, -4, w, 1800 + i) for i, (x, w) in enumerate([(14, 36), (376, 40)])]
    t.append('<path d="M-10 330C100 324 280 328 400 322V440H-10Z" fill="#EDEBE6" stroke-width="2.4"/><path d="M-10 330C100 324 280 328 400 322V440H-10Z" fill="url(#hatch)" stroke="none" opacity="0.5"/>')
    t.append(f'<g transform="translate(-60 0)"><path d="{DAB}" fill="#EDEBE6" stroke-width="3"/><path d="{DAB}" fill="url(#hatch)" stroke="none" opacity="0.75"/>'
             '<path d="M194 336C190 300 192 260 198 230C204 260 208 300 206 336Z" fill="#000000" stroke-width="1.6"/></g>')
    t.append('<path d="M90 336C60 340 30 350 0 352M100 338C90 356 70 370 50 380M180 338C210 342 240 352 280 352" fill="none" stroke-width="9"/>'
             '<path d="M90 336C60 340 30 350 0 352M100 338C90 356 70 370 50 380M180 338C210 342 240 352 280 352" fill="none" stroke="#EDEBE6" stroke-width="5"/>')
    if night:
        t.append(NOC)
    return t


# ======================= SIANOKOSY =======================
S = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V210H0Z" fill="url(#hatchNight)" stroke="none" opacity="0.2"/>']
t += [spruce(x, 206, 30 + (x % 4) * 5, 14) for x in range(-6, 400, 15)]
t.append('<path d="M-10 210C100 204 280 208 400 202V440H-10Z" fill="#EDEBE6" stroke-width="2.4"/>')
t.append(chalupa(250, 300, 120, 60, 50))
t += [pokos(-10, 230, y, 1810 + y) for y in (300, 340, 380, 414)]
S["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
S["ludzie"] = (0, 250, 240, 160, group([grabiarz(40, 372, 1.0), grabiarz(110, 336, 0.85, flip=-1), grabiarz(170, 300, 0.7), grabiarz(80, 410, 1.1, woman=True, flip=-1), grabiarz(200, 332, 0.8, woman=True)]))
S["hanka"] = (276, 254, 30, 30, group(['<circle cx="290" cy="266" r="4" fill="#000000" stroke-width="0.8"/><path d="M284 278c2 -6 10 -6 12 0" fill="#000000" stroke-width="0.8"/>']))
S["luczywo"] = (276, 252, 30, 30, group([plomyk(296, 274, 0.7)]))
S["jagna"] = (300, 330, 90, 80, group(['<path d="M310 390H380M318 390V372H372V390" fill="none" stroke-width="2"/><circle cx="322" cy="396" r="8" fill="none" stroke-width="2"/><circle cx="366" cy="396" r="8" fill="none" stroke-width="2"/>',
                                       jagna(344, 372, 0.9, sitting=True), kosz(366, 372, 0.8)]))
S["przod"] = (0, 422, 390, 422, group(PRZOD))
SIA = ["tlo", "ludzie", "hanka", "luczywo", "jagna", "przod"]
S_REVEAL = {"luczywo": "luczywo", "jagna": "jagna"}
S_ANIM = {"ludzie": {"type": "bob", "amplitude": 1.2, "duration": 1600}, "luczywo": {"type": "flame", "amplitude": 0.2, "duration": 800, "anchorX": 0.5, "anchorY": 1},
          "jagna": {"type": "bob", "amplitude": 0.3, "duration": 3200}}
S_EXTRA = {"luczywo": {"fadeDuration": 1500, "noInvert": True}, "jagna": {"fadeDuration": 2000}, "przod": {"depth": 1.0}}
S_COMMENTS = {"tlo": "świt nad łąkami pod wsią: pokosy siana, chałupa Jaromira, bór w dali", "ludzie": "chłopi i kobiety przewracają siano grabiami", "hanka": "Hanka w oknie",
              "luczywo": "łuczywo w oknie (# pokaz: luczywo)", "jagna": "wóz Jagny pod płotem, Jagna przebiera zioła (# pokaz: jagna)", "przod": "pierwszy plan"}
_add(S, SIA, S_ANIM, S_COMMENTS, "mgla", ((-20, 190, 430, 40, group(['<path d="M-20 214C60 200 140 216 220 204C290 196 350 212 410 202V226H-20Z" fill="#FFFFFF" stroke="none" opacity="0.6"/>'])),
                                           {"type": "drift", "amplitude": 16, "duration": 12000}, "poranna mgła nad łąkami"), before="ludzie")
_add(S, SIA, S_ANIM, S_COMMENTS, "rosa", efekty.iskry(0, 290, 240, 130, n=14, seed=1811, duration=2400), before="ludzie")
S_COMMENTS["rosa"] = "rosa na pokosach skrzy się"
_add(S, SIA, S_ANIM, S_COMMENTS, "dym", ((300, 170, 30, 70, group([dym(312, 236, 50)])), {"type": "sway", "amplitude": 3, "duration": 4600, "anchorX": 0.5, "anchorY": 1}, "dym z komina"), before="ludzie")
_add(S, SIA, S_ANIM, S_COMMENTS, "derkacz", ((150, 384, 30, 20, group(['<path d="M156 398c4 -8 14 -8 18 -2l4 -2l-2 4c-2 4 -12 6 -20 0z" fill="url(#hatchDense)" stroke-width="1"/>'])),
                                              {"type": "bob", "amplitude": 2, "duration": 900}, "derkacz w mokrej trawie"), before="przod")
_add(S, SIA, S_ANIM, S_COMMENTS, "jaskolki", efekty.wrony(160, 90, n=3, k=0.3, seed=1812, amplitude=70, duration=3600), before="ludzie")
S_COMMENTS["jaskolki"] = "jaskółki nad łąką"
_add(S, SIA, S_ANIM, S_COMMENTS, "trawa", ((0, 400, 390, 26, group([f'<path d="M{x} 424l{(-3, 2, 4, -1)[x % 4]} {-(8, 13, 10, 16)[x % 4]}" fill="none" stroke-width="1.2"/>' for x in range(4, 390, 8)])),
                                            {"type": "sway", "amplitude": 3, "duration": 2600, "anchorX": 0.5, "anchorY": 1}, "trawa przy miedzy"), before="przod")

# ======================= POD DEBEM =======================
D = {}
t = dab_scena()
D["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
D["korona"] = (-60, 0, 390, 170, group([korona(x - 60, y, rx, ry) for x, y, rx, ry in [(90, 120, 80, 60), (310, 120, 80, 60), (200, 90, 130, 72), (150, 140, 60, 34), (250, 140, 60, 34)]]))
RIG_DL = leszy_rig(280, 450, 0.74, "dl")
art.install_rig(D, RIG_DL)
DL = art.rig_names(RIG_DL)
KOPIEC = "M150 430C150 360 170 300 210 290C240 282 270 300 300 292C330 284 360 296 400 290V440H150Z"
D["kopiec"] = (140, 270, 260, 172, group([f'<path d="{KOPIEC}" fill="#EDEBE6" stroke-width="2.6"/><path d="{KOPIEC}" fill="url(#hatch)" stroke="none" opacity="0.55"/>',
                                          '<path d="M180 330C200 316 230 318 250 330M260 316C290 306 330 310 360 322M200 380C240 364 300 366 340 384" fill="none" stroke-width="7"/>'
                                          '<path d="M180 330C200 316 230 318 250 330M260 316C290 306 330 310 360 322M200 380C240 364 300 366 340 384" fill="none" stroke="#EDEBE6" stroke-width="3"/>']))
D["jaromir"] = (40, 300, 50, 50, group([siedzacy(62, 340, 1.0)]))
D["cien"] = (50, 336, 60, 16, group(['<ellipse cx="80" cy="344" rx="24" ry="5" fill="url(#hatchDense)" stroke="none"/>']))
D["bez_cienia"] = (30, 280, 80, 80, group(['<ellipse cx="64" cy="318" rx="34" ry="38" fill="#FFFFFF" stroke="none" opacity="0.45"/>']))
D["woda"] = (100, 340, 80, 30, group(['<path d="M110 350c10 4 20 -4 30 2s20 6 30 0" fill="none" stroke="#FFFFFF" stroke-width="1.4"/><path d="M114 358c10 4 22 -2 34 2" fill="none" stroke="#FFFFFF" stroke-width="1"/>']))
D["igly"] = (150, 120, 60, 120, group([f'<path d="M{x} {y}v5" fill="none" stroke-width="1"/>' for x, y in [(160, 130), (172, 150), (182, 136), (168, 176), (190, 168), (178, 200), (196, 210)]]))
D["liscie"] = (-20, 40, 330, 120, group([f'<path d="M{x} {y}c3 -6 8 -6 10 0c-3 3 -7 3 -10 0z" fill="#000000" stroke-width="1"/>' for x, y in [(20, 100), (60, 80), (110, 60), (150, 110), (200, 70), (240, 100), (90, 130)]]))
RIG_DS = pies_siedzi(140, 360, 0.08, "ds")
art.install_rig(D, RIG_DS)
DS = art.rig_names(RIG_DS)
RIG_DP = pies_siedzi(26, 352, 0.09, "dp")
art.install_rig(D, RIG_DP)
DP = art.rig_names(RIG_DP)
RIG_DW = wilk_stoi(140, 390, 0.24, "dw")
art.install_rig(D, RIG_DW)
DW = art.rig_names(RIG_DW)
D["drewniak_pysk"] = (128, 300, 30, 20, group([drewniak(142, 314, 1.2)]))
RIG_DWL = wilk_stoi(200, 380, 0.2, "dwl")
art.install_rig(D, RIG_DWL)
DWL = art.rig_names(RIG_DWL)
D["drewniak_lesy"] = (170, 360, 30, 20, group([drewniak(184, 374, 1.2)]))
RIG_DWJ = wilk_stoi(110, 396, 0.2, "dwj")
art.install_rig(D, RIG_DWJ)
DWJ = art.rig_names(RIG_DWJ)
D["drewniak_dlon"] = (60, 310, 30, 20, group([drewniak(74, 324, 1.2)]))
D["siekiera"] = (110, 320, 50, 30, group(['<path d="M118 340l26 -10" fill="none" stroke-width="3"/><path d="M140 326l8 -4l2 10z" fill="#000000" stroke-width="1"/>',
                                          '<path d="M114 344c10 -10 20 2 30 -8c6 -6 10 -2 12 4" fill="none" stroke-width="4"/><path d="M114 344c10 -10 20 2 30 -8c6 -6 10 -2 12 4" fill="none" stroke="#EDEBE6" stroke-width="1.6"/>']))
D["krzesiwo"] = (40, 360, 40, 20, group([f'<circle cx="{x}" cy="{y}" r="1.4" fill="{RED}" stroke="none"/>' for x, y in [(52, 370), (58, 366), (64, 372)]] + ['<path d="M44 376c6 -6 22 -6 30 0" fill="none" stroke-width="2"/>']))
D["przod"] = (0, 422, 390, 422, group(PRZOD))
POD = ["tlo", "korona", "liscie"] + DL + ["kopiec", "igly", "woda", "siekiera", "krzesiwo"] + DS + DWL + ["drewniak_lesy"] + DW + ["drewniak_pysk"] + DWJ + ["cien", "jaromir", "drewniak_dlon"] + DP + ["bez_cienia", "przod"]
HIDE_DW = "wilk_przy_lesym,drewniak"
D_REVEAL = {"woda": "woda", **{n: "pies_spi" for n in DS}, **{n: "pies" for n in DP}, "cien": "cien", "igly": "igly", "liscie": "liscie",
            **{n: "wilk" for n in DW}, "drewniak_pysk": "wilk", **{n: "wilk_przy_lesym" for n in DWL}, "drewniak_lesy": "wilk_przy_lesym",
            **{n: "drewniak" for n in DWJ}, "drewniak_dlon": "drewniak", "siekiera": "siekiera", "krzesiwo": "krzesiwo", "bez_cienia": "bez_cienia"}
D_ANIM = {"korona": {"type": "sway", "amplitude": 1.2, "duration": 7000, "anchorX": 0.5, "anchorY": 1}, "jaromir": {"type": "bob", "amplitude": 0.4, "duration": 3200},
          "woda": {"type": "flicker", "amplitude": 0.4, "duration": 1800}, "igly": {"type": "rise", "amplitude": -60, "duration": 4000},
          "liscie": {"type": "sway", "amplitude": 2, "duration": 3000, "anchorX": 0.5, "anchorY": 0}, "krzesiwo": {"type": "flicker", "amplitude": 0.1, "duration": 700},
          "bez_cienia": {"type": "flicker", "amplitude": 0.5, "duration": 3000}, "drewniak_pysk": {"type": "bob", "amplitude": 0.4, "duration": 4000}}
for rig in (RIG_DL, RIG_DS, RIG_DP, RIG_DW, RIG_DWL, RIG_DWJ):
    D_ANIM.update(art.rig_anims(rig))
D_EXTRA = {"woda": {"fadeDuration": 1500}, **{n: {"fadeDuration": 2000} for n in DS + DP}, "cien": {"fadeDuration": 2000, "hideOn": "bez_cienia"}, "igly": {"fadeDuration": 1500},
           "liscie": {"fadeDuration": 2500}, **{n: {"fadeDuration": 2500, "hideOn": HIDE_DW} for n in DW}, "drewniak_pysk": {"fadeDuration": 2500, "hideOn": HIDE_DW, "noInvert": True},
           **{n: {"fadeDuration": 2500} for n in DWL + DWJ}, "drewniak_lesy": {"fadeDuration": 2500, "noInvert": True}, "drewniak_dlon": {"fadeDuration": 2500, "noInvert": True},
           "siekiera": {"fadeDuration": 3000}, "krzesiwo": {"fadeDuration": 1500, "noInvert": True}, "bez_cienia": {"fadeDuration": 3000}, "przod": {"depth": 1.0}}
D_COMMENTS = {"tlo": "szare światło w sercu boru: dąb ze szczeliną, korzenie, szary porost", "kopiec": "kopiec korzeni zasłania nogi siedzącego Pana Lasu", "korona": "korona dębu", "jaromir": "Jaromir siedzi na korzeniu",
              "woda": "woda sączy się między korzeniami (# pokaz: woda)", "cien": "blady cień Jaromira (# pokaz: cien)", "bez_cienia": "Jaromir bez cienia, światło przez niego przechodzi (# pokaz: bez_cienia)",
              "igly": "suche igły sypią się z palców Pana Lasu (# pokaz: igly)", "liscie": "liście dębu zwijają się jak od ognia (# pokaz: liscie)",
              "drewniak_pysk": "czerwony drewniak w pysku wilka (# pokaz: wilk)", "drewniak_lesy": "drewniak u stóp Pana Lasu (# pokaz: wilk_przy_lesym)",
              "drewniak_dlon": "drewniak w dłoni Jaromira (# pokaz: drewniak)", "siekiera": "siekiera oplątana korzeniem (# pokaz: siekiera)", "krzesiwo": "krzesiwo w wykrocie (# pokaz: krzesiwo)",
              "przod": "pierwszy plan",
              **{n: f"Pan Lasu siedzi, twarz na wysokości strzechy — {n[3:]} (rysunek autora)" for n in DL},
              **{n: f"pies śpi między korzeniami — {n[3:]} (rysunek autora; # pokaz: pies_spi)" for n in DS},
              **{n: f"pies przy Jaromirze — {n[3:]} (rysunek autora; # pokaz: pies)" for n in DP},
              **{n: f"biały wilk wychodzi spomiędzy korzeni — {n[3:]} (rysunek autora; # pokaz: wilk)" for n in DW},
              **{n: f"wilk przy Panu Lasu — {n[4:]} (rysunek autora; # pokaz: wilk_przy_lesym)" for n in DWL},
              **{n: f"wilk u nóg Jaromira — {n[4:]} (rysunek autora; # pokaz: drewniak)" for n in DWJ}}
_add(D, POD, D_ANIM, D_COMMENTS, "pylki", efekty.pylki(20, 160, 220, 160, n=12, seed=1820, duration=9000), before="igly")
D_COMMENTS["pylki"] = "pył wisi w nieruchomym powietrzu"
_add(D, POD, D_ANIM, D_COMMENTS, "chlod", ((126, 240, 30, 100, group(['<path d="M136 330c-4 -20 4 -40 0 -60M144 330c4 -20 -4 -40 0 -60" fill="none" stroke="#FFFFFF" stroke-width="0.8" stroke-dasharray="2 3"/>'])),
                                           {"type": "rise", "amplitude": 16, "duration": 4000}, "wilgoć ciągnie ze szczeliny"), before="igly")
_add(D, POD, D_ANIM, D_COMMENTS, "porosty", ((0, 80, 390, 90, group(['<path d="M10 90v30M16 92v22M380 96v34M386 92v26" fill="none" stroke-width="1.2" stroke-dasharray="2 2"/>'])),
                                              {"type": "sway", "amplitude": 2, "duration": 5000, "anchorX": 0.5, "anchorY": 0}, "siwe porosty zwisają z gałęzi"), before="korona")
_add(D, POD, D_ANIM, D_COMMENTS, "swiatlo", ((20, 0, 220, 330, group(['<path d="M100 0H130L180 330H140Z" fill="#FFFFFF" stroke="none" opacity="0.22"/>'])), {"type": "flicker", "amplitude": 0.6, "duration": 7000}, "szare światło z góry"), before="korona")

# ======================= NOC POD DEBEM =======================
N = {}
t = dab_scena(night=True)
N["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
N["korona"] = (-60, 0, 390, 170, group([korona(x - 60, y, rx, ry, fill="#000000") for x, y, rx, ry in [(90, 120, 80, 60), (310, 120, 80, 60), (200, 90, 130, 72)]]))
N["jaromir"] = (50, 330, 70, 30, group(['<g stroke="#FFFFFF">' + lezacy(64, 350, 1.0) + '</g>']))
N["spiew"] = (150, 250, 100, 40, group([fala_glosu(156, 270, 6)]))
RIG_NW = wilk_stoi(150, 392, 0.2, "nw")
art.install_rig(N, RIG_NW)
NW = art.rig_names(RIG_NW)
N["cien"] = (60, 340, 90, 20, group(['<path d="M64 352c10 -6 30 -6 40 0c-10 4 -30 4 -40 0z" fill="#000000" stroke="#FFFFFF" stroke-width="0.6"/>']))
N["swit"] = (0, 0, 390, 440, group([SWIT]))
RIG_NL = leszy_rig(280, 440, 0.62, "nl")
art.install_rig(N, RIG_NL)
NL = art.rig_names(RIG_NL)
N["przod"] = (0, 422, 390, 422, group(['<path d="M-10 432H400V844H-10Z" fill="#000000" stroke="none"/>']))
NOCD = ["tlo", "korona", "spiew"] + NW + ["cien", "jaromir", "swit"] + NL + ["przod"]
N_REVEAL = {"spiew": "spiew", **{n: "wilk" for n in NW}, "cien": "cien", "swit": "swit", **{n: "swit" for n in NL}}
N_ANIM = {"korona": {"type": "sway", "amplitude": 1, "duration": 8000, "anchorX": 0.5, "anchorY": 1}, "spiew": {"type": "drift", "amplitude": 10, "duration": 3000},
          "jaromir": {"type": "bob", "amplitude": 0.6, "duration": 4200}, "cien": {"type": "slide", "dx": 70, "dy": -8, "duration": 6000, "once": True}}
N_ANIM.update(art.rig_anims(RIG_NW))
N_ANIM.update(art.rig_anims(RIG_NL))
N_EXTRA = {"spiew": {"fadeDuration": 1500, "hideOn": "swit"}, **{n: {"fadeDuration": 2500} for n in NW}, "cien": {"fadeDuration": 1500, "hideAfter": 6000},
           "swit": {"fadeDuration": 4000}, **{n: {"fadeDuration": 4000} for n in NL}, "przod": {"depth": 1.0}}
N_COMMENTS = {"tlo": "noc pod dębem w sercu boru", "korona": "czarna korona dębu", "jaromir": "Jaromir śpi na korzeniach", "spiew": "śpiew ze szczeliny w pniu (# pokaz: spiew)",
              "cien": "cień w kształcie Jaromira wsuwa się pod korzenie (# pokaz: cien)", "swit": "szary świt nad koronami (# pokaz: swit)", "przod": "pierwszy plan",
              **{n: f"biały wilk leży przy Jaromirze — {n[3:]} (rysunek autora; # pokaz: wilk)" for n in NW},
              **{n: f"Pan Lasu czeka o świcie — {n[3:]} (rysunek autora; # pokaz: swit)" for n in NL}}
_add(N, NOCD, N_ANIM, N_COMMENTS, "gwiazdy", efekty.iskry(120, 0, 160, 50, n=6, seed=1830, duration=3600), before="korona")
N_COMMENTS["gwiazdy"] = "gwiazdy w prześwicie koron"
_add(N, NOCD, N_ANIM, N_COMMENTS, "swietliki", ((20, 220, 300, 140, group([f'<circle cx="{x}" cy="{y}" r="1.6" fill="#FFFFFF" stroke="none"/>' for x, y in [(40, 300), (90, 260), (200, 240), (260, 300), (300, 260)]])),
                                                {"type": "wander", "amplitude": 10, "duration": 5000}, "świetliki między korzeniami"), before="spiew")
N_EXTRA["swietliki"] = {"noInvert": True, "hideOn": "swit"}
_add(N, NOCD, N_ANIM, N_COMMENTS, "chlod", ((126, 240, 30, 100, group(['<path d="M136 330c-4 -20 4 -40 0 -60M144 330c4 -20 -4 -40 0 -60" fill="none" stroke="#FFFFFF" stroke-width="0.8" stroke-dasharray="2 3"/>'])),
                                           {"type": "rise", "amplitude": 16, "duration": 4000}, "wilgoć ciągnie ze szczeliny"), before="spiew")
_add(N, NOCD, N_ANIM, N_COMMENTS, "mgla", ((-20, 300, 430, 50, group(['<path d="M-20 330C40 316 100 334 160 322C220 312 300 330 410 318V350H-20Z" fill="#000000" stroke="none" opacity="0.18"/>'])),
                                           {"type": "drift", "amplitude": 14, "duration": 12000}, "mgła przy ziemi"), before="spiew")
_add(N, NOCD, N_ANIM, N_COMMENTS, "cmy", efekty.pylki(160, 160, 140, 100, n=5, seed=1831, duration=6000), before="spiew")
N_COMMENTS["cmy"] = "ćmy nad korzeniami"

BACKGROUNDS = {"wies_sianokosy": ("bg_sianokosy", S, SIA, S_ANIM, S_REVEAL, S_EXTRA, S_COMMENTS, "sianokosy"),
               "pod_debem": ("bg_poddebem", D, POD, D_ANIM, D_REVEAL, D_EXTRA, D_COMMENTS, "rozmowa pod dębem"),
               "noc_pod_debem": ("bg_nocdeb", N, NOCD, N_ANIM, N_REVEAL, N_EXTRA, N_COMMENTS, "noc pod dębem")}

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
