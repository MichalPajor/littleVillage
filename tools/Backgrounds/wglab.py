# Generator tel rozdzialu szesnastego (W glab boru):
#   skraj_bor      — ranek na skraju mlodnika: mokra laka, stratowane zyto, jalowiec, wielkie sosny boru; Jaromir z siekiera,
#                    pies biegnie przodem (# pokaz: pies), igly spadaja pionowo w ciszy (# pokaz: igly)
#   bor_suchy      — suchy bor w srodku: pnie sosen, smugi swiatla, szary mech; pies ucieka sam (# pokaz: pies_ucieka),
#                    naciecia na pniach zarastaja (# pokaz: naciecia), pies na tropie (# pokaz: pies_trop),
#                    zwalona sosna z nitka welny i poziomkami (# pokaz: poziomki), dziura czystego nieba w chmurach (# pokaz: niebo)
#   glosy_noc      — zmierzch w gestym borze, mgla, glosy z obu stron; ktos liczy nad glowa (# pokaz: liczy), swit (# pokaz: swit),
#                    bialy wilk autora na zwalonym pniu (# pokaz: wilk), rana po kuli (# pokaz: rana)
#   bagno_blednice — bagno miedzy zgnilymi olchami, brunatna woda z kozuchem; garnki pod woda (# pokaz: garnki), blednice autora (# pokaz: blednice),
#                    welniak na turzycy o swicie (# pokaz: welniak), krag z soli (# pokaz: krag), grobla o swicie (# pokaz: grobla),
#                    wilk prowadzi przez kepy (# pokaz: wilk), krew na porostach (# pokaz: krew), ciemnosc po modlitwie (# pokaz: ciemnosc),
#                    iskry z krzesiwa (# pokaz: iskry), ogien w porostach (# pokaz: ogien)
#   serce_boru     — polana w sercu boru: ogromny dab ze szczelina, korzenie jak grzbiety ryb, szary porost; spiew zza debu (# pokaz: spiew),
#                    starzec autora (# pokaz: starzec), liscie na lasce czernieja (# pokaz: liscie), Pan Lasu autora rosnie ponad korony (# pokaz: pan_lasu)
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/wglab.py src/LittleVillage/Resources/Images
#   python3 tools/Backgrounds/wglab.py --master <tlo> [wszystko] > podglad.svg
import sys, random
from common import *
import art, postacie, efekty
from efekty import add as _add
from licho import sosna, kloda, PRZOD
from czuwanie import plomyk
from wesele import starzec_rig
from oblawa import wilk_stoi
from kupala import zyto, jalowiec, drewniak, RED

NOC = '<rect width="390" height="440" fill="url(#hatchNight)" stroke="none" opacity="0.8"/>'
SWIT = '<path d="M0 0H390V440H0Z" fill="#EDEBE6" stroke="none" opacity="0.55"/>'


def pien(x, base, top, w, seed):
    """Prosty pien starej sosny od dolu do gory kadru, z kreskami kory."""
    rnd = random.Random(seed)
    out = [f'<path d="M{x - w / 2:.1f} {base}C{x - w / 2 - 2:.1f} {base - 80} {x - w / 2 + 2:.1f} {top + 60} {x - w / 2 + 1:.1f} {top}H{x + w / 2 - 1:.1f}'
           f'C{x + w / 2 - 2:.1f} {top + 60} {x + w / 2 + 2:.1f} {base - 80} {x + w / 2:.1f} {base}Z" fill="#EDEBE6" stroke-width="2.2"/>',
           f'<path d="M{x - w / 2:.1f} {base}C{x - w / 2 - 2:.1f} {base - 80} {x - w / 2 + 2:.1f} {top + 60} {x - w / 2 + 1:.1f} {top}H{x + w / 2 - 1:.1f}'
           f'C{x + w / 2 - 2:.1f} {top + 60} {x + w / 2 + 2:.1f} {base - 80} {x + w / 2:.1f} {base}Z" fill="url(#hatch)" stroke="none" opacity="0.6"/>']
    for _ in range(int((base - top) / 22)):
        yy = rnd.uniform(top + 10, base - 10)
        xx = rnd.uniform(x - w / 2 + 3, x + w / 2 - 6)
        out.append(f'<path d="M{xx:.0f} {yy:.0f}l{rnd.uniform(3, 6):.0f} {rnd.uniform(-2, 2):.0f}" fill="none" stroke-width="1"/>')
    return "".join(out)


def korona(cx, cy, rx, ry, fill="url(#hatchDense)"):
    return (f'<path d="M{cx - rx} {cy}C{cx - rx} {cy - ry} {cx - rx * 0.3:.0f} {cy - ry * 1.2:.0f} {cx} {cy - ry}C{cx + rx * 0.4:.0f} {cy - ry * 1.3:.0f} {cx + rx} {cy - ry * 0.8:.0f} {cx + rx} {cy}'
            f'C{cx + rx * 0.6:.0f} {cy + ry * 0.5:.0f} {cx - rx * 0.5:.0f} {cy + ry * 0.4:.0f} {cx - rx} {cy}Z" fill="{fill}" stroke-width="2"/>')


def kepa(x, y, k=1.0):
    return (f'<path d="M{x - 10 * k:.1f} {y}C{x - 8 * k:.1f} {y - 6 * k:.1f} {x + 8 * k:.1f} {y - 6 * k:.1f} {x + 10 * k:.1f} {y}Z" fill="url(#hatchDense)" stroke-width="1.4"/>'
            f'<path d="M{x - 6 * k:.1f} {y - 3 * k:.1f}l{-3 * k:.1f} {-12 * k:.1f}M{x - 1 * k:.1f} {y - 4 * k:.1f}l{1 * k:.1f} {-15 * k:.1f}M{x + 4 * k:.1f} {y - 4 * k:.1f}l{4 * k:.1f} {-12 * k:.1f}" fill="none" stroke-width="1.2"/>')


def garnek(x, y, k=1.0):
    """Gliniany garnek dnem do gory, pod przejrzysta woda."""
    return (f'<path d="M{x - 9 * k:.1f} {y}C{x - 10 * k:.1f} {y - 8 * k:.1f} {x - 6 * k:.1f} {y - 12 * k:.1f} {x} {y - 12 * k:.1f}C{x + 6 * k:.1f} {y - 12 * k:.1f} {x + 10 * k:.1f} {y - 8 * k:.1f} {x + 9 * k:.1f} {y}Z" fill="url(#hatch)" stroke-width="1.2" opacity="0.8"/>'
            f'<path d="M{x - 4 * k:.1f} {y - 12 * k:.1f}h{8 * k:.1f}" fill="none" stroke-width="1.6" opacity="0.8"/>')


def olcha(x, base, h, k=1.0, lean=0):
    """Zgnila olcha: krzywy pien, polamane konary."""
    return (f'<path d="M{x - 6 * k:.1f} {base}C{x - 5 * k:.1f} {base - h * 0.5:.1f} {x + lean - 4 * k:.1f} {base - h * 0.8:.1f} {x + lean - 2 * k:.1f} {base - h}'
            f'L{x + lean + 3 * k:.1f} {base - h}C{x + lean + 2 * k:.1f} {base - h * 0.8:.1f} {x + 6 * k:.1f} {base - h * 0.5:.1f} {x + 7 * k:.1f} {base}Z" fill="#000000" stroke-width="1.6"/>'
            f'<path d="M{x + lean * 0.6:.1f} {base - h * 0.7:.1f}l{-18 * k:.1f} {-14 * k:.1f}l{-4 * k:.1f} {-10 * k:.1f}M{x + lean * 0.8:.1f} {base - h * 0.85:.1f}l{16 * k:.1f} {-10 * k:.1f}" fill="none" stroke-width="{2.4 * k:.1f}"/>')


def fala_glosu(x, y, n=4, flip=False):
    d = "".join(f"q4 {-6 if (i % 2 == 0) != flip else 6} 8 0" for i in range(n))
    return f'<path d="M{x} {y}{d}" fill="none" stroke="#FFFFFF" stroke-width="1.3" stroke-dasharray="3 3"/>'


def pies_rig(x, feet, k, prefix, facing=1):
    sx = k if facing < 0 else -k
    ox = x - 200 * sx
    tr = art.parse_transform(f"translate({ox:.1f} {feet - 404 * k:.1f}) scale({sx:.3f} {k:.3f})")
    return art.dog_barking(tr, prefix, shadow=True, bark=False, shiver=False, quiet=True)


def blednice_rig(cx, cy, k, prefix):
    tr = art.parse_transform(f"translate({cx - 150 * k:.1f} {cy - 260 * k:.1f}) scale({k})")
    return art.rig("blednice", tr, [
        ("poswiata", ["poswiata"], {"type": "flicker", "amplitude": 0.4, "duration": 3000}, None),
        ("kule", ["kula_2", "kula_3", "kula_4", "kula_5", "kula_1", "postac_w_kuli", "oczy"], {"type": "wander", "amplitude": 4, "duration": 4000}, None)], prefix)


def leszy_rig(cx, feet, k, prefix):
    """Pan Lasu z rysunku autora: poroze i mech na nim kolysza sie razem z glowa."""
    tr = art.parse_transform(f"translate({cx - 150 * k:.1f} {feet - 514 * k:.1f}) scale({k})")
    return art.rig("leszy", tr, [
        ("cialo", ["cien", "korzenie", "nogi", "tulow"], {"type": "sway", "amplitude": 0.4, "duration": 6000}, (150, 470)),
        ("ramie_l", ["ramie_lewe"], {"type": "sway", "amplitude": 3, "duration": 5000}, "ramie_lewe"),
        ("ramie_p", ["ramie_prawe"], {"type": "sway", "amplitude": 4, "duration": 4400, "phase": 0.3}, "ramie_prawe"),
        ("glowa", ["glowa", "poroze", "mech_na_porozu", "broda"], {"type": "sway", "amplitude": 2, "duration": 6000, "phase": 0.2}, "glowa"),
        ("oczy", ["oczy"], {"type": "blink", "duration": 7000}, None)], prefix)


# ======================= SKRAJ BORU =======================
S = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V200H0Z" fill="url(#hatchNight)" stroke="none" opacity="0.12"/>']
t += [sosna(x, 236, h, 1.6) for x, h in [(40, 190), (96, 214), (150, 200), (250, 210), (306, 196), (360, 220)]]
t.append('<path d="M-10 236C100 230 280 232 400 228V440H-10Z" fill="#EDEBE6" stroke-width="2.6"/>')
t += [spruce(x, 262, h, 26) for x, h in [(20, 46), (64, 54), (118, 40), (280, 50), (330, 58), (376, 44)]]
t.append(jalowiec(200, 300, 1.2))
t += zyto(240, 400, 400, 40, 1701, 26)
t.append('<path d="M250 398l20 -6M290 400l18 -10M330 396l24 -4M360 404l20 -12" fill="none" stroke-width="1.4"/>')
S["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
S["jaromir"] = (90, 300, 50, 100, group([postacie.man(112, 396, 1.4, hat=False), '<path d="M126 360L140 330" fill="none" stroke-width="3"/><path d="M136 330l8 -2l-1 8z" fill="#000000" stroke-width="1"/>',
                                         f'<path d="M100 366h5" fill="none" stroke="{RED}" stroke-width="2"/>']))
RIG_SP = pies_rig(170, 400, 0.11, "sp", facing=1)
art.install_rig(S, RIG_SP)
SP = art.rig_names(RIG_SP)
S["igly"] = (0, 60, 390, 170, group([f'<path d="M{x} {y}v5" fill="none" stroke-width="1"/>' for x, y in [(20 + (i * 47) % 360, 70 + (i * 31) % 140) for i in range(22)]]))
S["przod"] = (0, 422, 390, 422, group(PRZOD))
SKR = ["tlo", "jaromir"] + SP + ["igly", "przod"]
S_REVEAL = {**{n: "pies" for n in SP}, "igly": "igly"}
S_ANIM = {"jaromir": {"type": "bob", "amplitude": 0.4, "duration": 3200}, "igly": {"type": "rise", "amplitude": -60, "duration": 6000}}
S_ANIM.update(art.rig_anims(RIG_SP))
S_EXTRA = {**{n: {"fadeDuration": 1500} for n in SP}, "igly": {"fadeDuration": 2500}, "przod": {"depth": 1.0}}
S_COMMENTS = {"tlo": "ranek na skraju młodnika: mokra łąka, stratowane żyto, jałowiec, wielkie sosny boru", "jaromir": "Jaromir z siekierą, wstążka Marysi na nadgarstku",
              "igly": "igły spadają pionowo w ciszy (# pokaz: igly)", "przod": "pierwszy plan", **{n: f"rudy pies biegnie przodem — {n[3:]} (rysunek autora; # pokaz: pies)" for n in SP}}
_add(S, SKR, S_ANIM, S_COMMENTS, "zboze", ((230, 340, 170, 70, group(zyto(240, 400, 404, 30, 1702, 18))), {"type": "sway", "amplitude": 2, "duration": 3000, "anchorX": 0.5, "anchorY": 1}, "stratowane żyto faluje"), before="jaromir")
_add(S, SKR, S_ANIM, S_COMMENTS, "rosa", efekty.iskry(0, 300, 240, 100, n=14, seed=1703, duration=2400), before="jaromir")
S_COMMENTS["rosa"] = "rosa na łące skrzy się"
_add(S, SKR, S_ANIM, S_COMMENTS, "mgla", ((-20, 220, 430, 50, group(['<path d="M-20 250C40 236 100 252 160 242C220 232 300 250 410 238V262H-20Z" fill="#FFFFFF" stroke="none" opacity="0.55"/>'])),
                                           {"type": "drift", "amplitude": 14, "duration": 12000}, "poranna mgła pod sosnami"), before="jaromir")
_add(S, SKR, S_ANIM, S_COMMENTS, "trawa", ((0, 380, 230, 44, group([f'<path d="M{x} 420l{(-3, 2, 4, -1)[x % 4]} {-(8, 13, 10, 16)[x % 4]}" fill="none" stroke-width="1.2"/>' for x in range(6, 230, 7)])),
                                            {"type": "sway", "amplitude": 3, "duration": 2600, "anchorX": 0.5, "anchorY": 1}, "mokra trawa przy ścieżce"), before="przod")
_add(S, SKR, S_ANIM, S_COMMENTS, "jalowiec", ((176, 236, 48, 70, group([jalowiec(200, 300, 1.2)])), {"type": "sway", "amplitude": 1, "duration": 4000, "anchorX": 0.5, "anchorY": 1}, "jałowiec na skraju młodnika"), before="jaromir")

# ======================= SUCHY BOR =======================
B = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V120H0Z" fill="url(#hatchDense)" stroke="none" opacity="0.7"/>']
t += [pien(x, 360 - (i % 3) * 8, -4, w, 1710 + i) for i, (x, w) in enumerate([(30, 30), (110, 22), (180, 34), (262, 26), (340, 38)])]
t.append('<path d="M-10 344C100 338 280 342 400 336V440H-10Z" fill="#EDEBE6" stroke-width="2.4"/><path d="M-10 344C100 338 280 342 400 336V440H-10Z" fill="url(#hatch)" stroke="none" opacity="0.35"/>')
t += [f'<path d="M{x} {y}c3 -3 6 -3 8 0" fill="none" stroke-width="1"/>' for x, y in [(20 + (i * 53) % 360, 356 + (i * 17) % 60) for i in range(18)]]
B["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
B["korony"] = (-20, -10, 430, 140, group([korona(x, 60, 70, 40) for x in (20, 140, 260, 380)]))
B["smugi"] = (60, 100, 300, 260, group(['<path d="M120 110L150 110L230 350L170 350Z" fill="#FFFFFF" stroke="none" opacity="0.4"/>', '<path d="M260 120L280 120L330 350L290 350Z" fill="#FFFFFF" stroke="none" opacity="0.3"/>']))
B["naciecia"] = (0, 170, 390, 60, group([f'<path d="M{x - 5} {y}l5 -6l5 6z" fill="#FFFFFF" stroke-width="1.2"/>' for x, y in [(30, 200), (110, 214), (180, 196), (262, 208), (340, 202)]]))
RIG_BU = pies_rig(320, 400, 0.1, "bu", facing=1)
art.install_rig(B, RIG_BU)
BU = art.rig_names(RIG_BU)
RIG_BT = pies_rig(150, 404, 0.12, "bt", facing=-1)
art.install_rig(B, RIG_BT)
BT = art.rig_names(RIG_BT)
B["poziomki"] = (180, 340, 190, 80, group([kloda(190, 380, 360, 372, 9), '<path d="M300 366l-4 -14" fill="none" stroke-width="2"/>', f'<path d="M296 352c-2 4 2 8 0 12" fill="none" stroke="{RED}" stroke-width="1.2"/>'] +
                                          [f'<circle cx="{x}" cy="{y}" r="2.6" fill="{RED}" stroke-width="0.8"/>' for x, y in [(282, 398), (290, 399), (298, 398), (306, 399), (314, 398)]]))
B["niebo"] = (110, 0, 180, 110, group(['<path d="M130 40c4 -12 16 -16 24 -10c6 -12 22 -14 30 -4c8 -10 26 -8 30 4c10 -6 24 0 22 12c12 4 12 20 0 24c4 12 -8 22 -20 18c-6 10 -24 12 -32 4c-8 8 -26 8 -32 -2c-12 4 -24 -6 -20 -18c-12 -6 -10 -24 -2 -28z" fill="#FFFFFF" stroke-width="2"/>',
                                        '<path d="M200 96v12M170 92l-6 12M230 92l6 12" fill="none" stroke="#FFFFFF" stroke-width="1.4"/>']))
B["przod"] = (0, 422, 390, 422, group(PRZOD))
BOR = ["tlo", "smugi", "korony", "niebo", "naciecia"] + BU + BT + ["poziomki", "przod"]
B_REVEAL = {**{n: "pies_ucieka" for n in BU}, "naciecia": "naciecia", **{n: "pies_trop" for n in BT}, "poziomki": "poziomki", "niebo": "niebo"}
B_ANIM = {"korony": {"type": "sway", "amplitude": 1, "duration": 6000, "anchorX": 0.5, "anchorY": 0}, "smugi": {"type": "flicker", "amplitude": 0.6, "duration": 6500},
          "naciecia": {"type": "flicker", "amplitude": 0.2, "duration": 5000}, "niebo": {"type": "flicker", "amplitude": 0.85, "duration": 4000},
          **{n: {"type": "slide", "dx": 70, "dy": -20, "duration": 5000, "once": True} for n in BU}}
B_ANIM.update({n: a for n, a in art.rig_anims(RIG_BT).items()})
B_EXTRA = {**{n: {"fadeDuration": 1200} for n in BU}, "naciecia": {"fadeDuration": 2500}, **{n: {"fadeDuration": 1500, "hideOn": "poziomki"} for n in BT},
           "poziomki": {"fadeDuration": 2000}, "niebo": {"fadeDuration": 3000}, "przod": {"depth": 1.0}}
B_COMMENTS = {"tlo": "suchy bór: pnie starych sosen, szary mech", "korony": "korony sosen", "smugi": "smugi światła między pniami",
              "naciecia": "nacięcia na pniach, kora zarasta je jak powieka (# pokaz: naciecia)", "poziomki": "zwalona sosna, nitka czerwonej wełny i poziomki na mchu (# pokaz: poziomki)",
              "niebo": "dziura czystego nieba nad borem, chmury się rozstępują (# pokaz: niebo)", "przod": "pierwszy plan",
              **{n: f"pies ucieka sam między pnie — {n[3:]} (rysunek autora; # pokaz: pies_ucieka)" for n in BU},
              **{n: f"pies z nosem przy ziemi — {n[3:]} (rysunek autora; # pokaz: pies_trop)" for n in BT}}
_add(B, BOR, B_ANIM, B_COMMENTS, "igly", ((0, 100, 390, 230, group([f'<path d="M{x} {y}v5" fill="none" stroke-width="1"/>' for x, y in [(14 + (i * 41) % 370, 110 + (i * 37) % 200) for i in range(18)]])),
                                           {"type": "rise", "amplitude": -70, "duration": 7000}, "igły spadają pionowo, bez wiatru"), before="naciecia")
_add(B, BOR, B_ANIM, B_COMMENTS, "pylki", efekty.pylki(130, 150, 120, 180, n=10, seed=1711, duration=8000), before="naciecia")
_add(B, BOR, B_ANIM, B_COMMENTS, "zywica", ((176, 210, 16, 30, group(['<path d="M184 214c0 8 -3 12 0 20" fill="none" stroke-width="2"/>'])), {"type": "rise", "amplitude": 6, "duration": 4000}, "kropla żywicy spływa po korze"), before="naciecia")
_add(B, BOR, B_ANIM, B_COMMENTS, "pajak", ((60, 230, 40, 50, group(['<path d="M64 236L96 276M96 236L64 276M80 232V280M62 256H98" fill="none" stroke-width="0.6"/><circle cx="80" cy="256" r="1.6" fill="#000000"/>'])),
                                            {"type": "sway", "amplitude": 3, "duration": 5000, "anchorX": 0.5, "anchorY": 0}, "pajęczyna między pniami"), before="naciecia")
_add(B, BOR, B_ANIM, B_COMMENTS, "chmury", ((40, 0, 320, 60, group(['<path d="M40 30c10 -20 40 -20 50 0c10 -10 30 -4 28 10h-78z" fill="url(#hatch)" stroke-width="1.4"/>', '<path d="M270 24c10 -16 34 -16 40 0c8 -8 24 -2 22 8h-62z" fill="url(#hatch)" stroke-width="1.4"/>'])),
                                             {"type": "drift", "amplitude": 12, "duration": 16000}, "szare chmury nad borem"), before="korony")

# ======================= GLOSY NOCA =======================
G = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V440H0Z" fill="url(#hatchNight)" stroke="none" opacity="0.85"/>']
t += [spruce(x, 330 - (x % 3) * 6, 200 + (x % 5) * 14, 70) for x in range(-10, 410, 46)]
t.append('<path d="M-10 336C100 330 280 334 400 328V440H-10Z" fill="#000000" stroke="none"/>')
t.append(kloda(150, 380, 300, 384, 10))
G["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
G["jaromir"] = (40, 300, 50, 100, group(['<g opacity="0.95">' + postacie.man(62, 396, 1.4, hat=False) + '</g>', '<path d="M50 394h30" fill="none" stroke="#FFFFFF" stroke-width="0.8"/>']))
G["glos_l"] = (0, 180, 100, 30, group([fala_glosu(10, 196, 5)]))
G["glos_p"] = (290, 200, 100, 30, group([fala_glosu(296, 214, 5, flip=True)]))
G["glos_dal"] = (170, 150, 70, 24, group([fala_glosu(176, 162, 3)]))
G["liczy"] = (130, 0, 140, 120, group([f'<circle cx="186" cy="60" r="2.6" fill="{RED}" stroke="none"/><circle cx="206" cy="60" r="2.6" fill="{RED}" stroke="none"/>',
                                       '<path d="M140 10C160 50 170 80 176 110M260 10C240 50 230 80 222 110" fill="none" stroke-width="4"/>']))
RIG_GW = wilk_stoi(230, 384, 0.26, "gw")
art.install_rig(G, RIG_GW)
GW = art.rig_names(RIG_GW)
G["rana"] = (236, 334, 30, 16, group(['<path d="M242 344c6 -4 14 -5 20 -2" fill="none" stroke-width="3.4"/><path d="M242 344c6 -4 14 -5 20 -2" fill="none" stroke="#EDEBE6" stroke-width="1.6"/>']))
G["swit"] = (0, 0, 390, 440, group([SWIT]))
G["przod"] = (0, 422, 390, 422, group(['<path d="M-10 432H400V844H-10Z" fill="#000000" stroke="none"/>']))
GLO = ["tlo", "glos_l", "glos_p", "glos_dal", "liczy"] + GW + ["rana", "swit", "przod"]
G_REVEAL = {"liczy": "liczy", **{n: "wilk" for n in GW}, "rana": "rana", "swit": "swit"}
G_ANIM = {"glos_l": {"type": "flicker", "amplitude": 0.1, "duration": 2200}, "glos_p": {"type": "flicker", "amplitude": 0.1, "duration": 2600, "phase": 0.4},
          "glos_dal": {"type": "flicker", "amplitude": 0.1, "duration": 3000, "phase": 0.7}, "liczy": {"type": "flicker", "amplitude": 0.4, "duration": 1800},
          "rana": {"type": "bob", "amplitude": 0.4, "duration": 4000}}
G_ANIM.update(art.rig_anims(RIG_GW))
G_EXTRA = {"liczy": {"fadeDuration": 2000, "noInvert": True}, **{n: {"fadeDuration": 2500} for n in GW}, "rana": {"fadeDuration": 2500}, "swit": {"fadeDuration": 5000},
           "glos_l": {"hideOn": "swit"}, "glos_p": {"hideOn": "swit"}, "glos_dal": {"hideOn": "swit"}, "przod": {"depth": 1.0}}
G_COMMENTS = {"tlo": "zmierzch w gęstym borze, zwalony pień", "glos_l": "głos Hanki z lewej", "glos_p": "głos matki z prawej", "glos_dal": "głos Franka z daleka",
              "liczy": "nad głową coś liczy: dwoje czerwonych oczu, gałęzie pochylone (# pokaz: liczy)", "rana": "stara rana po kuli na boku wilka (# pokaz: rana)",
              "swit": "szary świt (# pokaz: swit)", "przod": "pierwszy plan", **{n: f"biały wilk na zwalonym pniu — {n[3:]} (rysunek autora; # pokaz: wilk)" for n in GW}}
_add(G, GLO, G_ANIM, G_COMMENTS, "mgla", ((-20, 300, 430, 60, group(['<path d="M-20 330C40 316 100 334 160 322C220 312 300 330 410 318V350H-20Z" fill="#FFFFFF" stroke="none" opacity="0.25"/>'])),
                                           {"type": "drift", "amplitude": 18, "duration": 11000}, "mgła między pniami"), before="glos_l")
_add(G, GLO, G_ANIM, G_COMMENTS, "cmy", efekty.pylki(60, 160, 260, 140, n=6, seed=1720, duration=6000), before="liczy")
G_COMMENTS["cmy"] = "ćmy krążą w ciemności"
_add(G, GLO, G_ANIM, G_COMMENTS, "galezie", ((-10, 0, 410, 120, group(['<path d="M-10 40C40 50 70 70 100 100M400 30C350 46 320 70 290 96" fill="none" stroke-width="3"/>'])),
                                              {"type": "sway", "amplitude": 1.5, "duration": 7000, "anchorX": 0.5, "anchorY": 0}, "gałęzie nad ścieżką"), before="glos_l")
_add(G, GLO, G_ANIM, G_COMMENTS, "gwiazdy", efekty.iskry(150, 0, 100, 40, n=4, seed=1721, duration=3600), before="glos_l")
G_COMMENTS["gwiazdy"] = "gwiazdy w prześwicie koron"

# ======================= BAGNO Z BLEDNICAMI =======================
W = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V440H0Z" fill="url(#hatchNight)" stroke="none" opacity="0.6"/>']
t.append('<path d="M-10 200C80 196 200 198 400 192V214H-10Z" fill="#EDEBE6" stroke-width="2"/>')
t += [spruce(x, 200, 40 + (x % 4) * 6, 18) for x in range(-4, 400, 22)]
t.append('<path d="M-10 214H400V440H-10Z" fill="url(#hatchDense)" stroke="none" opacity="0.7"/>')
t += [f'<path d="M{x} {y}h{w}" fill="none" stroke="#EDEBE6" stroke-width="0.8" opacity="0.6"/>' for x, y, w in [(20 + (i * 67) % 340, 230 + (i * 29) % 170, 20 + (i % 3) * 10) for i in range(14)]]
t += [olcha(x, 300 + (x % 3) * 10, 160 + (x % 4) * 16, 1.2, lean=(x % 5) * 3 - 6) for x in (30, 120, 320, 370)]
t += [kepa(x, y, 1.0 + (i % 3) * 0.2) for i, (x, y) in enumerate([(60, 360), (100, 330), (160, 380), (200, 340), (250, 372), (290, 330), (330, 390), (80, 410), (230, 412)])]
W["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
W["kozuch"] = (20, 250, 360, 160, group([f'<path d="M{x} {y}c10 -3 20 3 30 0" fill="none" stroke="#FFFFFF" stroke-width="0.8" stroke-dasharray="2 3"/>' for x, y in [(40, 270), (180, 290), (290, 262), (120, 350), (260, 400)]]))
W["garnki"] = (0, 380, 230, 50, group([garnek(x, 418, 1.1) for x in (20, 52, 84, 116, 148, 180, 212)]))
RIG_WB = blednice_rig(210, 280, 0.72, "wb")
art.install_rig(W, RIG_WB)
WB = art.rig_names(RIG_WB)
W["welniak"] = (0, 0, 390, 440, group([SWIT, '<path d="M224 350C232 340 262 340 270 350L262 362H232Z" fill="url(#hatch)" stroke-width="1.4"/>', '<path d="M90 400C90 390 120 390 120 400Z" fill="#EDEBE6" stroke-width="1.2"/>']))
W["krag"] = (150, 330, 110, 70, group(['<ellipse cx="204" cy="374" rx="46" ry="14" fill="none" stroke="#FFFFFF" stroke-width="2.6" stroke-dasharray="1 3"/>', postacie.man(204, 376, 0.8, hat=False)]))
W["grobla"] = (0, 0, 390, 440, group([SWIT] + [f'<path d="M{x} {y}h30" fill="none" stroke-width="5"/><path d="M{x} {y}h30" fill="none" stroke="#EDEBE6" stroke-width="2"/>' for x, y in [(40, 400), (80, 380), (120, 360), (160, 340), (200, 320), (240, 300), (280, 280), (320, 260), (350, 240)]]))
RIG_WW = wilk_stoi(110, 370, 0.2, "ww")
art.install_rig(W, RIG_WW)
WW = art.rig_names(RIG_WW)
W["krew"] = (280, 200, 60, 30, group([f'<circle cx="{x}" cy="{y}" r="1.8" fill="{RED}" stroke="none"/>' for x, y in [(292, 210), (300, 214), (310, 208), (318, 216)]]))
W["ciemnosc"] = (0, 0, 390, 440, group(['<rect width="390" height="440" fill="#000000" stroke="none" opacity="0.88"/>']))
W["iskry"] = (150, 300, 110, 90, group([postacie.man(200, 386, 0.9, hat=False)] + [f'<path d="M{x} {y}l3 -3" fill="none" stroke="{RED}" stroke-width="1.6"/>' for x, y in [(214, 340), (222, 330), (230, 344), (208, 326), (236, 336)]]))
W["ogien"] = (260, 170, 100, 50, group([plomyk(x, 212, 1.2) for x in (280, 300, 322)]))
W["przod"] = (0, 422, 390, 422, group(['<path d="M-10 432H400V844H-10Z" fill="#000000" stroke="none"/>']))
BAG = ["tlo", "kozuch", "garnki"] + WW + ["krew", "ogien"] + WB + ["krag", "iskry", "welniak", "grobla", "ciemnosc", "przod"]
HIDE_WB = "welniak,grobla,ciemnosc"
W_REVEAL = {"garnki": "garnki", **{n: "blednice" for n in WB}, "welniak": "welniak", "krag": "krag", "grobla": "grobla", **{n: "wilk" for n in WW}, "krew": "krew",
            "ciemnosc": "ciemnosc", "iskry": "iskry", "ogien": "ogien"}
W_ANIM = {"kozuch": {"type": "drift", "amplitude": 6, "duration": 9000}, "garnki": {"type": "flicker", "amplitude": 0.5, "duration": 4000},
          "welniak": {"type": "slide", "dx": 0, "dy": 6, "duration": 6000, "once": True}, "krag": {"type": "flicker", "amplitude": 0.6, "duration": 3000},
          "krew": {"type": "flicker", "amplitude": 0.7, "duration": 3000}, "iskry": {"type": "flicker", "amplitude": 0, "duration": 300},
          "ogien": {"type": "flame", "amplitude": 0.25, "duration": 600, "anchorX": 0.5, "anchorY": 1}, "ciemnosc": {"type": "flicker", "amplitude": 0.9, "duration": 5000}}
W_ANIM.update(art.rig_anims(RIG_WB))
W_ANIM.update(art.rig_anims(RIG_WW))
W_EXTRA = {"garnki": {"fadeDuration": 2500}, **{n: {"fadeDuration": 3000, "noInvert": True, "hideOn": HIDE_WB} for n in WB}, "welniak": {"fadeDuration": 4000},
           "krag": {"fadeDuration": 2000, "hideOn": "grobla"}, "grobla": {"fadeDuration": 4000}, **{n: {"fadeDuration": 2500, "hideOn": "krew"} for n in WW}, "krew": {"fadeDuration": 2000, "noInvert": True},
           "ciemnosc": {"fadeDuration": 1200}, "iskry": {"fadeDuration": 800, "noInvert": True, "hideOn": "ogien"}, "ogien": {"fadeDuration": 1500, "noInvert": True}, "przod": {"depth": 1.0}}
W_COMMENTS = {"tlo": "bagno między zgniłymi olchami, kępy turzycy, suchy szary brzeg w dali", "kozuch": "tęczowy kożuch na brunatnej wodzie",
              "garnki": "gliniane garnki dnem do góry pod przejrzystą wodą (# pokaz: garnki)", "welniak": "świt: wełniak Marysi na turzycy, wydeptana kępa (# pokaz: welniak)",
              "krag": "krąg z soli, Jaromir siedzi w środku (# pokaz: krag)", "grobla": "świt: grobla z pni przez bagno (# pokaz: grobla)",
              "krew": "krew na szarym poroście (# pokaz: krew)", "ciemnosc": "ciemność po modlitwie (# pokaz: ciemnosc)", "iskry": "Jaromir krzesze iskry (# pokaz: iskry)",
              "ogien": "porost zajmuje się ogniem na drugim brzegu (# pokaz: ogien)", "przod": "pierwszy plan",
              **{n: f"błędnice nad bagnem — {n[3:]} (rysunek autora; # pokaz: blednice)" for n in WB},
              **{n: f"biały wilk prowadzi przez kępy — {n[3:]} (rysunek autora; # pokaz: wilk)" for n in WW}}
_add(W, BAG, W_ANIM, W_COMMENTS, "turzyca", ((40, 300, 320, 120, group([kepa(x, y, 1.1) for x, y in [(70, 384), (180, 356), (300, 376)]])), {"type": "sway", "amplitude": 2, "duration": 3000, "anchorX": 0.5, "anchorY": 1}, "turzyca kołysze się"), before="garnki")
_add(W, BAG, W_ANIM, W_COMMENTS, "bable", ((60, 320, 260, 100, group([f'<circle cx="{x}" cy="{y}" r="1.6" fill="none" stroke="#FFFFFF" stroke-width="0.8"/>' for x, y in [(80, 410), (150, 390), (240, 400), (300, 380)]])),
                                            {"type": "rise", "amplitude": 20, "duration": 3000}, "bąble z dna"), before="garnki")
_add(W, BAG, W_ANIM, W_COMMENTS, "mgla", ((-20, 200, 430, 50, group(['<path d="M-20 226C40 212 100 230 160 218C220 208 300 226 410 214V246H-20Z" fill="#000000" stroke="none" opacity="0.14"/>'])),
                                           {"type": "drift", "amplitude": 16, "duration": 12000}, "opary nad bagnem"), before="kozuch")
_add(W, BAG, W_ANIM, W_COMMENTS, "komary", efekty.pylki(220, 250, 120, 60, n=7, seed=1730, duration=2600), before="garnki")
W_COMMENTS["komary"] = "komary nad wodą"
_add(W, BAG, W_ANIM, W_COMMENTS, "konar", ((300, 100, 90, 70, group(['<path d="M390 110C360 120 340 140 320 160M350 130l-10 -14" fill="none" stroke-width="3"/>'])),
                                            {"type": "sway", "amplitude": 1.5, "duration": 6000, "anchorX": 1, "anchorY": 0}, "złamany konar olchy"), before="kozuch")

# ======================= SERCE BORU =======================
H = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V440H0Z" fill="url(#hatch)" stroke="none" opacity="0.25"/>']
t += [pien(x, 330, -4, w, 1740 + i) for i, (x, w) in enumerate([(20, 40), (370, 46), (80, 26), (320, 30)])]
t.append('<path d="M-10 330C100 324 280 328 400 322V440H-10Z" fill="#EDEBE6" stroke-width="2.4"/><path d="M-10 330C100 324 280 328 400 322V440H-10Z" fill="url(#hatch)" stroke="none" opacity="0.5"/>')
DAB = "M150 340C146 300 160 250 168 210C150 180 120 160 90 150L104 136C130 148 160 166 180 186C182 160 188 140 194 110H210C212 140 214 160 220 186C240 166 270 148 296 136L310 150C280 160 250 180 232 210C240 250 254 300 250 340Z"
t.append(f'<path d="{DAB}" fill="#EDEBE6" stroke-width="3"/><path d="{DAB}" fill="url(#hatch)" stroke="none" opacity="0.75"/>')
t.append('<path d="M164 300c4 -20 2 -40 8 -60M236 300c-4 -20 -2 -40 -8 -60M178 200c6 -10 14 -14 22 -12" fill="none" stroke-width="1.4"/>')
t.append('<path d="M194 336C190 300 192 260 198 230C204 260 208 300 206 336Z" fill="#000000" stroke-width="1.6"/>')
t.append('<path d="M150 336C120 340 90 350 50 352M160 338C150 356 130 370 110 380M240 338C270 342 300 352 340 352M232 338C246 356 268 370 290 380" fill="none" stroke-width="9"/>'
         '<path d="M150 336C120 340 90 350 50 352M160 338C150 356 130 370 110 380M240 338C270 342 300 352 340 352M232 338C246 356 268 370 290 380" fill="none" stroke="#EDEBE6" stroke-width="5"/>')
H["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
H["korona"] = (0, 0, 390, 170, group([korona(x, y, rx, ry) for x, y, rx, ry in [(90, 120, 80, 60), (310, 120, 80, 60), (200, 90, 130, 72), (150, 140, 60, 34), (250, 140, 60, 34)]]))
H["jaromir"] = (40, 330, 50, 100, group([postacie.man(64, 424, 1.4, hat=False)]))
H["spiew"] = (240, 200, 110, 40, group([fala_glosu(250, 220, 6)]))
RIG_HS = starzec_rig(296, 384, 0.3, "hs")
art.install_rig(H, RIG_HS)
HS = art.rig_names(RIG_HS)
H["liscie"] = (312, 262, 22, 22, group(['<path d="M318 272c3 -5 8 -5 10 0c-3 2 -7 2 -10 0zM320 280c3 -5 8 -5 10 0c-3 2 -7 2 -10 0z" fill="#000000" stroke-width="1"/>']))
RIG_HL = leszy_rig(200, 420, 0.82, "hl")
art.install_rig(H, RIG_HL)
HL = art.rig_names(RIG_HL)
H["szum"] = (-10, -10, 410, 140, group([korona(x, 50, 60, 36) for x in (30, 130, 270, 370)]))
H["przod"] = (0, 422, 390, 422, group(PRZOD))
SER = ["tlo", "korona", "spiew"] + HS + ["liscie"] + HL + ["szum", "jaromir", "przod"]
H_REVEAL = {"spiew": "spiew", **{n: "starzec" for n in HS}, "liscie": "liscie", **{n: "pan_lasu" for n in HL}, "szum": "pan_lasu"}
H_ANIM = {"korona": {"type": "sway", "amplitude": 1.2, "duration": 7000, "anchorX": 0.5, "anchorY": 1}, "spiew": {"type": "drift", "amplitude": 10, "duration": 3000},
          "jaromir": {"type": "bob", "amplitude": 0.3, "duration": 3000}, "liscie": {"type": "sway", "amplitude": 6, "duration": 2000, "anchorX": 0, "anchorY": 1},
          "szum": {"type": "sway", "amplitude": 3, "duration": 1600, "anchorX": 0.5, "anchorY": 0}}
H_ANIM.update(art.rig_anims(RIG_HS))
H_ANIM.update(art.rig_anims(RIG_HL))
H_EXTRA = {"spiew": {"fadeDuration": 1500, "hideOn": "starzec"}, **{n: {"fadeDuration": 2500, "hideOn": "pan_lasu"} for n in HS}, "liscie": {"fadeDuration": 1500, "hideOn": "pan_lasu"},
           **{n: {"fadeDuration": 5000} for n in HL}, "szum": {"fadeDuration": 3000}, "przod": {"depth": 1.0}}
H_COMMENTS = {"tlo": "polana w sercu boru: ogromny dąb ze szczeliną, korzenie jak grzbiety ryb, szary porost", "korona": "korona dębu", "jaromir": "Jaromir przed dębem",
              "spiew": "śpiew zza dębu, melodia Marysi dośpiewana do końca (# pokaz: spiew)", "liscie": "liście na lasce czernieją i zwijają się (# pokaz: liscie)",
              "szum": "korony szumią wokół głowy Pana Lasu (# pokaz: pan_lasu)", "przod": "pierwszy plan",
              **{n: f"starzec w kapeluszu z mchu — {n[3:]} (rysunek autora; # pokaz: starzec)" for n in HS},
              **{n: f"Pan Lasu ponad koronami — {n[3:]} (rysunek autora; # pokaz: pan_lasu)" for n in HL}}
_add(H, SER, H_ANIM, H_COMMENTS, "pylki", efekty.pylki(80, 160, 240, 160, n=12, seed=1750, duration=9000), before="spiew")
H_COMMENTS["pylki"] = "pył wisi w nieruchomym powietrzu"
_add(H, SER, H_ANIM, H_COMMENTS, "porosty", ((0, 80, 390, 90, group(['<path d="M20 90v30M26 92v22M372 96v34M378 92v26M80 100v20M320 104v24" fill="none" stroke-width="1.2" stroke-dasharray="2 2"/>'])),
                                              {"type": "sway", "amplitude": 2, "duration": 5000, "anchorX": 0.5, "anchorY": 0}, "siwe porosty zwisają z gałęzi"), before="korona")
_add(H, SER, H_ANIM, H_COMMENTS, "chlod", ((186, 240, 30, 100, group(['<path d="M196 330c-4 -20 4 -40 0 -60M204 330c4 -20 -4 -40 0 -60" fill="none" stroke="#FFFFFF" stroke-width="0.8" stroke-dasharray="2 3"/>'])),
                                           {"type": "rise", "amplitude": 16, "duration": 4000}, "chłód ciągnie ze szczeliny"), before="spiew")
_add(H, SER, H_ANIM, H_COMMENTS, "swiatlo", ((90, 0, 220, 330, group(['<path d="M170 0H200L250 330H210Z" fill="#FFFFFF" stroke="none" opacity="0.25"/>'])), {"type": "flicker", "amplitude": 0.6, "duration": 7000}, "blade światło z góry"), before="korona")

BACKGROUNDS = {"skraj_bor": ("bg_skrajbor", S, SKR, S_ANIM, S_REVEAL, S_EXTRA, S_COMMENTS, "skraj boru"),
               "bor_suchy": ("bg_borsuchy", B, BOR, B_ANIM, B_REVEAL, B_EXTRA, B_COMMENTS, "suchy bór"),
               "glosy_noc": ("bg_glosynoc", G, GLO, G_ANIM, G_REVEAL, G_EXTRA, G_COMMENTS, "głosy w borze"),
               "bagno_blednice": ("bg_blednice", W, BAG, W_ANIM, W_REVEAL, W_EXTRA, W_COMMENTS, "bagno z błędnicami"),
               "serce_boru": ("bg_sercebor", H, SER, H_ANIM, H_REVEAL, H_EXTRA, H_COMMENTS, "serce boru")}

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
