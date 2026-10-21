# Generator tel rozdzialu osiemnastego (Wybor):
#   izba_swit    — izba o szarym swicie, zgaszone luczywo w oknie, Hanka spi z glowa na stole; Antek wpada z sieni (# pokaz: antek),
#                  nowe luczywo (# pokaz: luczywo)
#   dzieci_debu  — szare swiatlo pod debem, Pan Lasu autora stoi przy szczelinie, Jaromir; dziewczynki w kregu (# pokaz: dzieci),
#                  pies przy Jaromirze (# pokaz: pies), pies pod korzeniami (# pokaz: pies_spi), wilk przy Jaromirze (# pokaz: wilk),
#                  wilk przy Panu Lasu (# pokaz: wilk_lesy), wielki cien przy jednej dziewczynce (# pokaz: cien_duzy), spiew (# pokaz: spiew),
#                  drewniak na porostach (# pokaz: drewniak), blady cien pod jedna (# pokaz: cien_maly), suche liscie po dzieciach (# pokaz: rozsypane),
#                  Jaromir z dzieckiem na rekach (# pokaz: na_rekach)
#   skraj_powrot — skraj mlodnika rano, pola, Jaromir wychodzi z dzieckiem na rekach; dziecko stygnie (# pokaz: zimne)
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/wybor.py src/LittleVillage/Resources/Images
#   python3 tools/Backgrounds/wybor.py --master <tlo> [wszystko] > podglad.svg
import sys
from common import *
import art, postacie, efekty
from efekty import add as _add
from licho import izba_tlo, okno, stol, piec, PRZOD, PRZOD_IZBA
from czuwanie import plomyk, siedzi_na_lawie
from oblawa import wilk_stoi
from kupala import drewniak, zyto, RED
from wglab import korona, leszy_rig, fala_glosu, SWIT
from rozmowa import dab_scena, pies_siedzi


def dziewczynka(x, feet, k):
    """Marysia z rysunku autora, statycznie (bez skarbu — tlo nie zna wyborow gracza)."""
    parts, _ = art.figure_parts("marysia")
    body = "\n".join(parts[n][0] for n in ["cien", "nogi", "koszulka", "rece", "glowa", "wlosy", "wstazka"])
    return f'<g transform="translate({x - 150 * k:.1f} {feet - 512 * k:.1f}) scale({k})"><g stroke="#000000" stroke-linecap="round" stroke-linejoin="round">{body}</g></g>'


def z_dzieckiem(x, y, k=1.0):
    """Jaromir niosacy dziecko na rekach."""
    return (postacie.man(x, y, k, hat=False) + dziewczynka(x + 6 * k, y - 22 * k, 0.07 * k)
            + f'<path d="M{x - 8 * k:.1f} {y - 34 * k:.1f}C{x - 2 * k:.1f} {y - 26 * k:.1f} {x + 10 * k:.1f} {y - 26 * k:.1f} {x + 16 * k:.1f} {y - 34 * k:.1f}" fill="none" stroke-width="{3 * k:.1f}"/>')


# ======================= IZBA O SWICIE =======================
I = {}
t = izba_tlo()
t.append('<rect width="390" height="440" fill="url(#hatchNight)" stroke="none" opacity="0.35"/>')
t.append(okno(40, 110, 80, 80))
t.append(stol(150, 330, 130, 1.0))
t.append(piec(310, 330, 1.0))
t.append('<path d="M84 186l10 -26" fill="none" stroke-width="2"/><path d="M92 162l3 -4" fill="none" stroke-width="2.4"/>')
I["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
I["mgla"] = (44, 130, 72, 50, group(['<path d="M44 160c12 -6 24 4 36 -2s24 6 36 0V180H44Z" fill="#FFFFFF" stroke="none" opacity="0.7"/>']))
I["hanka"] = (150, 250, 80, 80, group([siedzi_na_lawie(176, 320, 1.3, 1), '<path d="M190 292c8 -6 22 -6 30 0" fill="#000000" stroke-width="1"/>']))
I["antek"] = (290, 220, 60, 120, group([postacie.man(320, 330, 1.5, hat=False)]))
I["luczywo"] = (80, 140, 30, 50, group([plomyk(95, 162, 0.9)]))
I["blask"] = (0, 60, 240, 240, group(['<ellipse cx="96" cy="170" rx="110" ry="90" fill="#FFFFFF" stroke="none" opacity="0.25"/>']))
I["przod"] = (0, 422, 390, 422, group(PRZOD_IZBA))
IZB = ["tlo", "mgla", "hanka", "antek", "blask", "luczywo", "przod"]
I_REVEAL = {"antek": "antek", "luczywo": "luczywo", "blask": "luczywo"}
I_ANIM = {"mgla": {"type": "drift", "amplitude": 6, "duration": 8000}, "hanka": {"type": "bob", "amplitude": 0.4, "duration": 3600},
          "antek": {"type": "bob", "amplitude": 0.6, "duration": 1400}, "luczywo": {"type": "flame", "amplitude": 0.2, "duration": 800, "anchorX": 0.5, "anchorY": 1},
          "blask": {"type": "flicker", "amplitude": 0.6, "duration": 1400}}
I_EXTRA = {"antek": {"fadeDuration": 1200}, "luczywo": {"fadeDuration": 2000, "noInvert": True}, "blask": {"fadeDuration": 2500, "noInvert": True}, "przod": {"depth": 1.0}}
I_COMMENTS = {"tlo": "izba o szarym świcie, zgaszone łuczywo w oknie, stół, piec", "mgla": "mgła na pokosach za oknem", "hanka": "Hanka śpi z głową na stole",
              "antek": "Antek wpada z sieni (# pokaz: antek)", "luczywo": "nowe łuczywo w oknie (# pokaz: luczywo)", "blask": "blask nowego łuczywa (# pokaz: luczywo)", "przod": "pierwszy plan"}
_add(I, IZB, I_ANIM, I_COMMENTS, "dym", ((86, 100, 20, 50, group(['<path d="M94 150c-4 -10 4 -18 0 -28s4 -14 0 -20" fill="none" stroke-width="1" stroke-dasharray="2 3"/>'])),
                                         {"type": "rise", "amplitude": 14, "duration": 3000}, "dymek z zgaszonego łuczywa"), before="hanka")
_add(I, IZB, I_ANIM, I_COMMENTS, "pylki", efekty.pylki(50, 120, 140, 160, n=7, seed=1901, duration=8000), before="hanka")
_add(I, IZB, I_ANIM, I_COMMENTS, "smuga", efekty.smuga([(44, 112), (122, 112), (230, 330), (120, 330)], opacity=0.25), before="hanka")
_add(I, IZB, I_ANIM, I_COMMENTS, "zar", ((326, 300, 40, 14, group([f'<circle cx="{x}" cy="306" r="1.6" fill="{RED}" stroke="none"/>' for x in (334, 342, 350)])),
                                         {"type": "flicker", "amplitude": 0.3, "duration": 1600}, "resztka żaru w piecu"), before="hanka")
I_EXTRA["zar"] = {"noInvert": True}
_add(I, IZB, I_ANIM, I_COMMENTS, "ptaki", efekty.wrony(70, 128, n=2, k=0.18, seed=1902, amplitude=20, duration=3000), before="hanka")
I_COMMENTS["ptaki"] = "ptaki za oknem"

# ======================= DZIECI SPOD DEBU =======================
D = {}
t = dab_scena()
D["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
D["korona"] = (-60, 0, 390, 170, group([korona(x - 60, y, rx, ry) for x, y, rx, ry in [(90, 120, 80, 60), (310, 120, 80, 60), (200, 90, 130, 72), (150, 140, 60, 34), (250, 140, 60, 34)]]))
RIG_DL = leszy_rig(300, 400, 0.6, "dl")
art.install_rig(D, RIG_DL)
DL = art.rig_names(RIG_DL)
D["jaromir"] = (20, 300, 60, 110, group([postacie.man(46, 404, 1.5, hat=False), f'<path d="M34 366h5" fill="none" stroke="{RED}" stroke-width="2"/>']))
D["na_rekach"] = (16, 296, 70, 112, group([z_dzieckiem(46, 404, 1.5)]))
TYL = [(112, 368), (148, 360), (184, 358), (220, 362)]
PRZ = [(96, 408), (134, 402), (172, 400), (210, 402), (248, 408)]
D["dzieci_tyl"] = (84, 290, 170, 82, group([dziewczynka(x, y, 0.14) for x, y in TYL]))
D["dzieci_przod"] = (64, 316, 216, 98, group([dziewczynka(x, y, 0.17) for x, y in PRZ]))
D["cien_duzy"] = (170, 398, 80, 20, group(['<path d="M180 406c10 -4 44 -6 62 -2c-4 6 -44 8 -62 2z" fill="#000000" stroke="none"/>']))
D["cien_maly"] = (196, 398, 30, 10, group(['<ellipse cx="211" cy="403" rx="12" ry="2.6" fill="url(#hatchDense)" stroke="none"/>']))
D["drewniak"] = (150, 396, 30, 16, group([drewniak(164, 408, 1.2)]))
D["spiew"] = (100, 290, 160, 40, group([fala_glosu(110, 306, 9)]))
D["rozsypane"] = (80, 340, 190, 70, group([f'<path d="M{x} {y}c3 -5 8 -5 10 0c-3 3 -7 3 -10 0z" fill="url(#hatchDense)" stroke-width="0.8"/>' for x, y in TYL + PRZ]
                                           + [f'<path d="M{x - 6} {y + 2}h14" fill="none" stroke-width="1.4"/>' for x, y in TYL + PRZ]))
RIG_DP = pies_siedzi(84, 404, 0.08, "dp")
art.install_rig(D, RIG_DP)
DP = art.rig_names(RIG_DP)
RIG_DS = pies_siedzi(270, 370, 0.07, "ds")
art.install_rig(D, RIG_DS)
DS = art.rig_names(RIG_DS)
RIG_DW = wilk_stoi(84, 410, 0.18, "dw")
art.install_rig(D, RIG_DW)
DW = art.rig_names(RIG_DW)
RIG_DWL = wilk_stoi(262, 404, 0.17, "dwl")
art.install_rig(D, RIG_DWL)
DWL = art.rig_names(RIG_DWL)
D["przod"] = (0, 422, 390, 422, group(PRZOD))
DZI = ["tlo", "korona"] + DL + DS + DWL + ["dzieci_tyl", "cien_duzy", "cien_maly", "dzieci_przod", "drewniak", "spiew", "rozsypane"] + DW + DP + ["jaromir", "na_rekach", "przod"]
D_REVEAL = {"dzieci_tyl": "dzieci", "dzieci_przod": "dzieci", **{n: "pies" for n in DP}, **{n: "pies_spi" for n in DS}, **{n: "wilk" for n in DW}, **{n: "wilk_lesy" for n in DWL},
            "cien_duzy": "cien_duzy", "cien_maly": "cien_maly", "drewniak": "drewniak", "spiew": "spiew", "rozsypane": "rozsypane", "na_rekach": "na_rekach"}
D_ANIM = {"korona": {"type": "sway", "amplitude": 1.2, "duration": 7000, "anchorX": 0.5, "anchorY": 1}, "jaromir": {"type": "bob", "amplitude": 0.4, "duration": 3000},
          "na_rekach": {"type": "bob", "amplitude": 0.8, "duration": 1200}, "dzieci_tyl": {"type": "bob", "amplitude": 0.4, "duration": 3000},
          "dzieci_przod": {"type": "bob", "amplitude": 0.4, "duration": 3000, "phase": 0.5}, "spiew": {"type": "drift", "amplitude": 10, "duration": 3000},
          "cien_maly": {"type": "flicker", "amplitude": 0.4, "duration": 2400}, "rozsypane": {"type": "drift", "amplitude": 6, "duration": 5000}}
for rig in (RIG_DL, RIG_DP, RIG_DS, RIG_DW, RIG_DWL):
    D_ANIM.update(art.rig_anims(rig))
D_EXTRA = {"dzieci_tyl": {"fadeDuration": 3000, "hideOn": "rozsypane"}, "dzieci_przod": {"fadeDuration": 3000, "hideOn": "rozsypane"},
           **{n: {"fadeDuration": 2000} for n in DP + DS + DW + DWL}, "cien_duzy": {"fadeDuration": 2000, "hideOn": "rozsypane"}, "cien_maly": {"fadeDuration": 2000, "hideOn": "rozsypane"},
           "drewniak": {"fadeDuration": 1500, "noInvert": True, "hideOn": "rozsypane"}, "spiew": {"fadeDuration": 1500, "hideOn": "rozsypane"}, "rozsypane": {"fadeDuration": 2500},
           "jaromir": {"hideOn": "na_rekach"}, "na_rekach": {"fadeDuration": 2000}, "przod": {"depth": 1.0}}
D_COMMENTS = {"tlo": "szare światło pod dębem w sercu boru", "korona": "korona dębu", "jaromir": "Jaromir, wstążka Marysi na nadgarstku",
              "na_rekach": "Jaromir z dzieckiem na rękach (# pokaz: na_rekach)", "dzieci_tyl": "dziewczynki w kręgu, tylny rząd (rysunek autora; # pokaz: dzieci)",
              "dzieci_przod": "dziewczynki w kręgu, przedni rząd (rysunek autora; # pokaz: dzieci)", "cien_duzy": "wielki, męski cień przy jednej dziewczynce (# pokaz: cien_duzy)",
              "cien_maly": "blady cień pod jedną dziewczynką (# pokaz: cien_maly)", "drewniak": "czerwony drewniak na porostach (# pokaz: drewniak)",
              "spiew": "melodia śpiewana kilkunastoma głosami (# pokaz: spiew)", "rozsypane": "suche liście i kora w miejscu dziewczynek (# pokaz: rozsypane)", "przod": "pierwszy plan",
              **{n: f"Pan Lasu przy szczelinie — {n[3:]} (rysunek autora)" for n in DL},
              **{n: f"pies przy Jaromirze — {n[3:]} (rysunek autora; # pokaz: pies)" for n in DP},
              **{n: f"pies pod korzeniami — {n[3:]} (rysunek autora; # pokaz: pies_spi)" for n in DS},
              **{n: f"wilk przy Jaromirze — {n[3:]} (rysunek autora; # pokaz: wilk)" for n in DW},
              **{n: f"wilk przy Panu Lasu — {n[4:]} (rysunek autora; # pokaz: wilk_lesy)" for n in DWL}}
_add(D, DZI, D_ANIM, D_COMMENTS, "pylki", efekty.pylki(20, 160, 260, 160, n=12, seed=1910, duration=9000), before="dzieci_tyl")
D_COMMENTS["pylki"] = "pył w szarym świetle"
_add(D, DZI, D_ANIM, D_COMMENTS, "chlod", ((126, 240, 30, 100, group(['<path d="M136 330c-4 -20 4 -40 0 -60M144 330c4 -20 -4 -40 0 -60" fill="none" stroke="#FFFFFF" stroke-width="0.8" stroke-dasharray="2 3"/>'])),
                                           {"type": "rise", "amplitude": 16, "duration": 4000}, "chłód ze szczeliny"), before="dzieci_tyl")
_add(D, DZI, D_ANIM, D_COMMENTS, "porosty", ((0, 80, 390, 90, group(['<path d="M10 90v30M16 92v22M380 96v34M386 92v26" fill="none" stroke-width="1.2" stroke-dasharray="2 2"/>'])),
                                              {"type": "sway", "amplitude": 2, "duration": 5000, "anchorX": 0.5, "anchorY": 0}, "siwe porosty"), before="korona")
_add(D, DZI, D_ANIM, D_COMMENTS, "swiatlo", ((20, 0, 220, 330, group(['<path d="M100 0H130L180 330H140Z" fill="#FFFFFF" stroke="none" opacity="0.22"/>'])), {"type": "flicker", "amplitude": 0.6, "duration": 7000}, "szare światło"), before="korona")
_add(D, DZI, D_ANIM, D_COMMENTS, "liscie_lecace", ((80, 160, 200, 200, group([f'<path d="M{x} {y}c3 -5 8 -5 10 0c-3 3 -7 3 -10 0z" fill="#000000" stroke-width="0.6"/>' for x, y in [(100, 170), (160, 190), (220, 176)]])),
                                                    {"type": "rise", "amplitude": -120, "duration": 6000}, "suche liście opadają z dębu"), before="dzieci_tyl")

# ======================= SKRAJ — POWROT =======================
P = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V220H0Z" fill="url(#hatchNight)" stroke="none" opacity="0.12"/>']
t.append('<path d="M-10 224C100 218 280 222 400 216V440H-10Z" fill="#EDEBE6" stroke-width="2.4"/>')
t += [spruce(x, 330, h, 50) for x, h in [(10, 150), (60, 170), (330, 160), (380, 140)]]
t += [spruce(x, 300, h, 34) for x, h in [(110, 110), (290, 120)]]
P["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
P["zboze"] = (130, 220, 160, 80, group(zyto(140, 280, 300, 40, 1920, 26)))
P["jaromir"] = (160, 300, 80, 120, group([z_dzieckiem(196, 410, 1.7)]))
P["zimne"] = (176, 320, 50, 40, group(['<ellipse cx="204" cy="340" rx="18" ry="12" fill="#FFFFFF" stroke="none" opacity="0.6"/>']))
P["trumienka"] = (40, 380, 90, 30, group(['<path d="M50 404L56 390H116L122 404Z" fill="url(#hatchDense)" stroke-width="1.6"/><path d="M86 386v-24" fill="none" stroke-width="2"/>', f'<path d="M86 366c4 -3 8 -3 10 0c-3 1 -3 6 -1 10" fill="none" stroke="{RED}" stroke-width="1.6"/>']))
P["wianki"] = (56, 382, 64, 14, group([f'<ellipse cx="{x}" cy="390" rx="7" ry="2.6" fill="none" stroke-width="1.4"/>' for x in (70, 88, 106)]))
P["przod"] = (0, 422, 390, 422, group(PRZOD))
POW = ["tlo", "zboze", "trumienka", "wianki", "jaromir", "zimne", "przod"]
P_REVEAL = {"zimne": "zimne", "trumienka": "trumienka", "wianki": "wianki"}
P_ANIM = {"zboze": {"type": "sway", "amplitude": 2.5, "duration": 2200, "anchorX": 0.5, "anchorY": 1}, "jaromir": {"type": "bob", "amplitude": 1.0, "duration": 1300},
          "zimne": {"type": "flicker", "amplitude": 0.4, "duration": 4000}}
P_EXTRA = {"zimne": {"fadeDuration": 4000}, "trumienka": {"fadeDuration": 2500}, "wianki": {"fadeDuration": 2500}, "przod": {"depth": 1.0}}
P_COMMENTS = {"tlo": "skraj młodnika rano, pola za nim", "zboze": "żyto faluje na wietrze znad pól", "jaromir": "Jaromir wychodzi z boru z dzieckiem na rękach",
              "zimne": "dziecko blednie i stygnie (# pokaz: zimne)", "trumienka": "trumienka z bzu w grobie pod młodnikiem, kij z czerwoną wstążką (# pokaz: trumienka)",
              "wianki": "wianki z chabrów i rumianku (# pokaz: wianki)", "przod": "pierwszy plan"}
_add(P, POW, P_ANIM, P_COMMENTS, "wiatr", ((0, 230, 390, 80, group(['<path d="M20 250c20 -6 40 6 60 0M160 270c20 -6 40 6 60 0M280 246c20 -6 40 6 60 0" fill="none" stroke-width="1" stroke-dasharray="3 4"/>'])),
                                           {"type": "drift", "amplitude": 30, "duration": 3000}, "wiatr znad pól"), before="jaromir")
_add(P, POW, P_ANIM, P_COMMENTS, "chmury", ((30, 30, 330, 50, group(['<path d="M60 62c8 -14 28 -14 34 0c8 -8 24 -2 22 8h-56z" fill="#FFFFFF" stroke-width="1.6"/>', '<path d="M250 48c6 -10 22 -10 26 0c6 -6 18 -2 16 6h-42z" fill="#FFFFFF" stroke-width="1.4"/>'])),
                                             {"type": "drift", "amplitude": 16, "duration": 16000}, "chmury"), before="zboze")
_add(P, POW, P_ANIM, P_COMMENTS, "skowronek", efekty.wrony(200, 110, n=1, k=0.25, seed=1921, amplitude=20, duration=2600), before="zboze")
P_COMMENTS["skowronek"] = "skowronek nad polem"
_add(P, POW, P_ANIM, P_COMMENTS, "igly", ((0, 140, 390, 200, group([f'<path d="M{x} {y}v5" fill="none" stroke-width="1"/>' for x, y in [(30, 160), (70, 200), (340, 170), (370, 230), (50, 260)]])),
                                          {"type": "rise", "amplitude": -60, "duration": 5000}, "igły sypią się ze świerków"), before="jaromir")
_add(P, POW, P_ANIM, P_COMMENTS, "trawa", ((0, 400, 390, 26, group([f'<path d="M{x} 424l{(-3, 2, 4, -1)[x % 4]} {-(8, 13, 10, 16)[x % 4]}" fill="none" stroke-width="1.2"/>' for x in range(4, 390, 8)])),
                                           {"type": "sway", "amplitude": 3, "duration": 2400, "anchorX": 0.5, "anchorY": 1}, "trawa na miedzy"), before="przod")

BACKGROUNDS = {"izba_swit": ("bg_izbaswit", I, IZB, I_ANIM, I_REVEAL, I_EXTRA, I_COMMENTS, "izba o świcie"),
               "dzieci_debu": ("bg_dziecidebu", D, DZI, D_ANIM, D_REVEAL, D_EXTRA, D_COMMENTS, "dzieci spod dębu"),
               "skraj_powrot": ("bg_skrajpowrot", P, POW, P_ANIM, P_REVEAL, P_EXTRA, P_COMMENTS, "powrót na skraj młodnika")}

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
