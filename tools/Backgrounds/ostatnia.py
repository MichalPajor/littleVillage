# Generator tel rozdzialu dwudziestego (Ostatnia noc) i epilogow:
#   dziady          — Zaduszki we mgle: chalupy, plot z siwym porostem, miski na parapetach; ksiadz z kropidlem i koniem (# pokaz: ksiadz),
#                     gromnica Hanki w oknie (# pokaz: gromnica_hanki), Jaromir na progu z siekiera (# pokaz: prog)
#   swita           — noc, droga od boru miedzy chalupami: swita (# pokaz: swita), umarli z Maćkiem (# pokaz: umarli), Franek (# pokaz: franek),
#                     wilk przy progu (# pokaz: wilk), wilk przed Panem Lasu (# pokaz: wilk_pan), Pan Lasu (# pokaz: leszy), Jagna (# pokaz: jagna),
#                     zmarla Marysia (# pokaz: marysia), dzieci spod debu (# pokaz: dzieci)
#   granica         — pniak Starego Debu na skraju boru: wies z gromnicami (# pokaz: ludzie), Pan Lasu (# pokaz: leszy), siekiera w pniaku (# pokaz: siekiera),
#                     kielek z zoledzia (# pokaz: kielek), wstazka na trzonku (# pokaz: wstazka), drewniak przy pniaku (# pokaz: drewniak),
#                     Marysia macha matce (# pokaz: marysia), szary swit (# pokaz: swit)
#   miejsce         — noc przy pniaku: Hanka w drzwiach (# pokaz: hanka), czapka na parapecie (# pokaz: czapka), starzec w kapeluszu z mchu (# pokaz: starzec),
#                     Jaromir w kapeluszu (# pokaz: kapelusz), pagorek z porostem (# pokaz: pagorek), wilk odchodzi (# pokaz: wilk),
#                     Franek odchodzi (# pokaz: franek), Marysia za reke (# pokaz: marysia)
#   pozar_boru      — plonacy bor: ogien (# pokaz: ogien), Pan Lasu w plomieniach (# pokaz: leszy), runal (# pokaz: runal), wilk (# pokaz: wilk),
#                     stodola sie wali (# pokaz: stodola), gaszenie workiem (# pokaz: gaszenie), przesieka plugiem (# pokaz: przesieka), czarny swit (# pokaz: popiol)
#   epilog_dab      — pol wieku pozniej: lawka pod krzyzem, kapliczki; mlody dab z ostrzem (# pokaz: dab), zoledzie i dzieci (# pokaz: zoledzie)
#   epilog_bor      — grob bez ciala z krzyzem z jalowca; czapka na krzyzu (# pokaz: czapka), miski (# pokaz: miski), starzec na skraju (# pokaz: starzec),
#                     dziewczynka na skraju boru (# pokaz: prawnuczka)
#   epilog_wrzosy   — nagie wzgorza z wrzosem, trzy chalupy, kopce z pokrzywa; wnuczka z kielkiem swierka (# pokaz: kielek)
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/ostatnia.py src/LittleVillage/Resources/Images
#   python3 tools/Backgrounds/ostatnia.py --master <tlo> [wszystko] > podglad.svg
import sys, random
from common import *
import art, postacie, efekty
from efekty import add as _add
from licho import PRZOD, studnia, pniak as pniaczek
from czuwanie import plomyk, krzyz, kon, plug, ksiadz
from wesele import chalupa, dym, staruszek, starzec_rig
from figurka import jagna
from oblawa import wilk_stoi
from narodziny import mamuna_rig
from kupala import drewniak, jalowiec, baba_rig, RED
from licho import licho_rig
from zima import polnocnica
from wglab import leszy_rig, blednice_rig, NOC
from wiosna import kapliczka
from pozar import ogien
from rozmowa import siedzacy
from wybor import dziewczynka


def duch(svg, op=0.5):
    return f'<g opacity="{op}">{svg}</g>'


def plot(x0, x1, y, step=14, h=16, porost=False, seed=1):
    rnd = random.Random(seed)
    s = f'<path d="M{x0} {y - h * 0.6:.0f}H{x1}" fill="none" stroke-width="1.6"/>' + "".join(f'<path d="M{x} {y}v{-h}" fill="none" stroke-width="1.6"/>' for x in range(x0, x1, step))
    if porost:
        s += "".join(f'<path d="M{x + rnd.uniform(-2, 2):.0f} {y - rnd.uniform(4, h - 2):.0f}c-2 -3 1 -5 3 -3c1 -3 5 -2 4 1c2 1 1 4 -2 3z" fill="#FFFFFF" stroke-width="0.7"/>'
                     for x in range(x0, x1, step) for _ in range(2))
    return s


def miska(x, y, k=1.0):
    return (f'<path d="M{x - 6 * k:.1f} {y}c1 {5 * k:.1f} {11 * k:.1f} {5 * k:.1f} {12 * k:.1f} 0z" fill="#FFFFFF" stroke-width="1"/>'
            f'<path d="M{x + 9 * k:.1f} {y + 3 * k:.1f}v{-7 * k:.1f}h{4 * k:.1f}v{7 * k:.1f}z" fill="#FFFFFF" stroke-width="0.9"/>')


def gromnica(x, y, k=1.0, lit=True):
    s = f'<path d="M{x} {y}v{-14 * k:.1f}" fill="none" stroke="#FFFFFF" stroke-width="{2.4 * k:.1f}"/><path d="M{x} {y}v{-14 * k:.1f}" fill="none" stroke-width="0.6"/>'
    return s + (plomyk(x, y - 15 * k, 0.4 * k) if lit else "")


def stary_pniak(x, base, k=1.0):
    """Pniak po Starym Debie: szeroki, czarny, z hubami i korzeniami."""
    P = lambda dx, dy: f"{x + dx * k:.1f} {base + dy * k:.1f}"
    return (f'<path d="M{P(-46, 0)}C{P(-40, -10)} {P(-38, -30)} {P(-40, -44)}L{P(40, -44)}C{P(38, -30)} {P(40, -10)} {P(46, 0)}Z" fill="#000000" stroke-width="2"/>'
            f'<ellipse cx="{x}" cy="{base - 44 * k:.1f}" rx="{40 * k:.1f}" ry="{8 * k:.1f}" fill="#EDEBE6" stroke-width="2"/>'
            + "".join(f'<ellipse cx="{x}" cy="{base - 44 * k:.1f}" rx="{r * k:.1f}" ry="{r * 0.2 * k:.1f}" fill="none" stroke-width="0.7"/>' for r in (30, 20, 11))
            + f'<path d="M{P(-46, 0)}C{P(-60, 4)} {P(-74, 4)} {P(-90, 10)}M{P(44, 0)}C{P(60, 2)} {P(76, 8)} {P(96, 8)}M{P(-20, 0)}C{P(-26, 8)} {P(-34, 14)} {P(-44, 18)}" fill="none" stroke-width="{6 * k:.1f}"/>'
            + "".join(f'<path d="M{P(dx, dy)}c{6 * k:.1f} {-4 * k:.1f} {14 * k:.1f} {-3 * k:.1f} {16 * k:.1f} 0z" fill="#FFFFFF" stroke-width="1.2"/>' for dx, dy in [(-44, -20), (-46, -10), (36, -28)]))


def siekiera_w_pniu(x, y, k=1.0):
    return (f'<path d="M{x} {y}L{x - 30 * k:.1f} {y - 34 * k:.1f}" fill="none" stroke-width="{4 * k:.1f}"/>'
            f'<path d="M{x - 6 * k:.1f} {y + 2 * k:.1f}L{x + 8 * k:.1f} {y - 8 * k:.1f}L{x + 12 * k:.1f} {y + 4 * k:.1f}Z" fill="#000000" stroke-width="1.4"/>')


def kielek(x, y, k=1.0):
    return (f'<path d="M{x} {y}c0 {-6 * k:.1f} {1 * k:.1f} {-10 * k:.1f} {-1 * k:.1f} {-14 * k:.1f}" fill="none" stroke-width="{1.4 * k:.1f}"/>'
            f'<path d="M{x - 1 * k:.1f} {y - 12 * k:.1f}c{-6 * k:.1f} {-2 * k:.1f} {-8 * k:.1f} {-6 * k:.1f} {-6 * k:.1f} {-8 * k:.1f}c{3 * k:.1f} 0 {6 * k:.1f} {3 * k:.1f} {6 * k:.1f} {8 * k:.1f}z'
            f'M{x - 1 * k:.1f} {y - 13 * k:.1f}c{5 * k:.1f} {-3 * k:.1f} {7 * k:.1f} {-7 * k:.1f} {5 * k:.1f} {-9 * k:.1f}c{-3 * k:.1f} 0 {-5 * k:.1f} {4 * k:.1f} {-5 * k:.1f} {9 * k:.1f}z" fill="#FFFFFF" stroke-width="1"/>')


def kapelusz_z_mchu(x, y, k=1.0):
    return (postacie.man(x, y, k, hat=False)
            + f'<path d="M{x - 15 * k:.1f} {y - 74 * k:.1f}C{x - 12 * k:.1f} {y - 92 * k:.1f} {x + 12 * k:.1f} {y - 92 * k:.1f} {x + 15 * k:.1f} {y - 74 * k:.1f}Z" fill="url(#hatchDense)" stroke-width="1.6"/>'
            + "".join(f'<path d="M{x + dx * k:.1f} {y - 74 * k:.1f}v{4 * k:.1f}" fill="none" stroke-width="1"/>' for dx in (-12, -6, 0, 6, 12)))


def pagorek(x, base, w=70, h=20):
    return (f'<path d="M{x - w / 2} {base}C{x - w / 3} {base - h} {x + w / 3} {base - h} {x + w / 2} {base}Z" fill="url(#hatchDense)" stroke-width="1.8"/>'
            + "".join(f'<path d="M{x + dx} {base - h * 0.6 + abs(dx) * 0.2:.0f}c-2 -3 1 -5 3 -3c1 -3 5 -2 4 1c2 1 1 4 -2 3z" fill="#FFFFFF" stroke-width="0.7"/>' for dx in (-24, -12, 0, 12, 22)))


def sarna(x, y, k=1.0, f=-1):
    P = lambda dx, dy: f"{x + dx * f * k:.1f} {y + dy * k:.1f}"
    return (f'<path d="M{P(-14, -16)}C{P(-10, -22)} {P(6, -22)} {P(12, -18)}L{P(18, -30)}L{P(22, -28)}L{P(16, -14)}C{P(10, -10)} {P(-8, -10)} {P(-14, -12)}Z" fill="#000000" stroke-width="1"/>'
            f'<path d="M{P(-12, -12)}L{P(-20, -2)}M{P(-8, -12)}L{P(-4, 0)}M{P(8, -12)}L{P(16, -2)}M{P(12, -13)}L{P(6, 0)}" fill="none" stroke-width="{1.6 * k:.1f}"/>')


def dzik(x, y, k=1.0, f=-1):
    P = lambda dx, dy: f"{x + dx * f * k:.1f} {y + dy * k:.1f}"
    return (f'<path d="M{P(-14, -4)}C{P(-16, -16)} {P(4, -20)} {P(14, -12)}L{P(22, -8)}L{P(14, -4)}Z" fill="#000000" stroke-width="1"/>'
            f'<path d="M{P(-10, -4)}v4M{P(-4, -4)}v4M{P(6, -4)}v4M{P(10, -4)}v4" fill="none" stroke-width="{1.8 * k:.1f}"/>')


def stodola(x, base, w=70, h=40, fallen=False):
    if fallen:
        return (f'<path d="M{x} {base}L{x + w} {base - 8}M{x + 10} {base}L{x + w - 6} {base - 20}M{x + 4} {base - 4}L{x + w * 0.6} {base - 26}" fill="none" stroke-width="4"/>')
    return (f'<path d="M{x} {base}V{base - h}H{x + w}V{base}Z" fill="url(#hatch)" stroke-width="2"/>'
            f'<path d="M{x - 6} {base - h}L{x + w / 2} {base - h - 26}L{x + w + 6} {base - h}Z" fill="#000000" stroke-width="2"/>')


def rig_set(L, rig, anim):
    art.install_rig(L, rig)
    anim.update(art.rig_anims(rig))
    return art.rig_names(rig)


def mgla(x, y, w, h, op=0.5, seed=0):
    return (x, y, w, h, group([f'<path d="M{x} {y + h * 0.4:.0f}C{x + w * 0.2:.0f} {y:.0f} {x + w * 0.4:.0f} {y + h * 0.6:.0f} {x + w * 0.6:.0f} {y + h * 0.3:.0f}C{x + w * 0.75:.0f} {y + h * 0.1:.0f} {x + w * 0.9:.0f} {y + h * 0.5:.0f} {x + w} {y + h * 0.2:.0f}V{y + h}H{x}Z" fill="#FFFFFF" stroke="none" opacity="{op}"/>']))


def trawa(y=424, amp=3):
    return ((0, y - 24, 390, 26, group([f'<path d="M{x} {y}l{(-3, 2, 4, -1)[x % 4]} {-(8, 13, 10, 16)[x % 4]}" fill="none" stroke-width="1.2"/>' for x in range(4, 390, 8)])),
            {"type": "sway", "amplitude": amp, "duration": 2400, "anchorX": 0.5, "anchorY": 1})


# ======================= DZIADY =======================
D = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V440H0Z" fill="url(#hatchNight)" stroke="none" opacity="0.3"/>']
t += [spruce(x, 212, 34 + (x % 5) * 8, 18) for x in range(-6, 400, 14)]
t.append('<path d="M-10 214C100 208 280 212 400 206V440H-10Z" fill="#EDEBE6" stroke-width="2.4"/>')
t.append(studnia(200, 286, 0.9))
t.append(chalupa(-20, 316, 120, 60, 50))
t.append(chalupa(262, 312, 130, 60, 50))
t.append(plot(-10, 400, 340, porost=True, seed=2040))
D["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
D["mgla_dal"] = mgla(-30, 180, 450, 70, 0.75)
D["miski"] = (30, 270, 330, 20, group([miska(44, 280), miska(338, 276)]))
D["okna"] = (20, 260, 350, 30, group([f'<path d="M{x} 266h14v12h-14z" fill="#FFFFFF" stroke-width="0.9"/>' for x in (40, 334)]))
D["ksiadz"] = (120, 300, 110, 100, group([kon(140, 394, 1.0, facing=1), ksiadz(196, 394, 0.95), '<path d="M206 340l14 -12" fill="none" stroke-width="2"/><circle cx="222" cy="326" r="3" fill="#000000"/>']))
D["prog"] = (330, 300, 50, 60, group([siedzacy(352, 318, 0.9), '<path d="M372 316L376 282" fill="none" stroke-width="2.4"/><path d="M372 284l8 -3l0 8z" fill="#000000" stroke-width="1"/>']))
D["gromnica_hanki"] = (36, 254, 24, 30, group([plomyk(47, 277, 0.5)]))
D["mgla"] = mgla(-30, 300, 450, 60, 0.6)
D["przod"] = (0, 422, 390, 422, group(PRZOD))
DZI = ["tlo", "mgla_dal", "okna", "miski", "ksiadz", "prog", "gromnica_hanki", "mgla", "przod"]
D_REVEAL = {"ksiadz": "ksiadz", "prog": "prog", "gromnica_hanki": "gromnica_hanki"}
D_ANIM = {"mgla_dal": {"type": "drift", "amplitude": 10, "duration": 16000}, "mgla": {"type": "drift", "amplitude": 18, "duration": 12000, "phase": 0.5},
          "okna": {"type": "flicker", "amplitude": 0.4, "duration": 2600}, "ksiadz": {"type": "bob", "amplitude": 0.5, "duration": 2200},
          "prog": {"type": "bob", "amplitude": 0.3, "duration": 3600}, "gromnica_hanki": {"type": "flame", "amplitude": 0.1, "duration": 1600, "anchorX": 0.5, "anchorY": 1}}
D_EXTRA = {"okna": {"noInvert": True}, "ksiadz": {"fadeDuration": 1500}, "prog": {"fadeDuration": 2000}, "gromnica_hanki": {"fadeDuration": 800, "noInvert": True}, "przod": {"depth": 1.0}}
D_COMMENTS = {"tlo": "Zaduszki: chałupy, studnia we mgle, płot z siwym porostem od boru", "mgla_dal": "mgła nad borem", "miski": "miski kaszy i kubki wody na parapetach",
              "okna": "światło w oknach", "ksiadz": "ksiądz z kropidłem przy koniu (# pokaz: ksiadz)", "prog": "Jaromir na progu, siekiera o futrynę (# pokaz: prog)",
              "gromnica_hanki": "gromnica Hanki w oknie (# pokaz: gromnica_hanki)", "mgla": "mgła stoi pod opłotkami", "przod": "pierwszy plan"}
_add(D, DZI, D_ANIM, D_COMMENTS, "dym", ((330, 220, 30, 70, group([dym(340, 282, 56, 0.4)])), {"type": "sway", "amplitude": 3, "duration": 5000, "anchorX": 0.5, "anchorY": 1}, "dym z komina"), before="mgla_dal")
_add(D, DZI, D_ANIM, D_COMMENTS, "wrona", efekty.wrona_siedzi(250, 326, 0.9), before="ksiadz")
_add(D, DZI, D_ANIM, D_COMMENTS, "wrony", efekty.wrony(120, 90, n=3, k=0.35, seed=2041, amplitude=50, duration=6000), before="mgla_dal")
_add(D, DZI, D_ANIM, D_COMMENTS, "liscie", ((0, 120, 390, 260, group([f'<path d="M{x} {y}c3 -5 8 -5 10 0c-3 3 -7 3 -10 0z" fill="url(#hatchDense)" stroke-width="0.8"/>' for x, y in [(60, 140), (150, 170), (240, 150), (330, 180)]])),
                                           {"type": "rise", "amplitude": -180, "duration": 9000}, "liście lecą"), before="mgla")
_add(D, DZI, D_ANIM, D_COMMENTS, "zuraw", ((180, 230, 60, 60, group(['<path d="M200 286L232 236" fill="none" stroke-width="1.6" stroke-dasharray="3 3"/>'])),
                                           {"type": "sway", "amplitude": 2, "duration": 5200, "anchorX": 0.3, "anchorY": 1}, "żuraw studni skrzypi"), before="mgla")

# ======================= SWITA =======================
W = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', NOC]
t += [spruce(x, 208, 40 + (x % 5) * 9, 20) for x in range(-6, 400, 13)]
t.append('<path d="M-10 210C100 204 280 208 400 202V440H-10Z" fill="url(#hatch)" stroke-width="2.4"/>')
t.append('<path d="M180 210L210 210L300 440H90Z" fill="#EDEBE6" stroke-width="1.6"/>')
t.append(chalupa(-50, 330, 110, 60, 50))
t.append(chalupa(300, 336, 120, 60, 50))
t.append(plot(-10, 90, 360, porost=True, seed=2050) + plot(300, 400, 366, porost=True, seed=2051))
W["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
W["mgla"] = mgla(-30, 196, 450, 60, 0.45)
W_ANIM = {}
WB = rig_set(W, blednice_rig(196, 150, 0.36, "wb"), W_ANIM)
WL = rig_set(W, leszy_rig(196, 300, 0.48, "wl"), W_ANIM)
WP = rig_set(W, polnocnica("wp", 104, 186, 0.26), W_ANIM)
WM1 = rig_set(W, mamuna_rig("mamuna_1", 160, 330, 0.2, "wm1"), W_ANIM)
WM2 = rig_set(W, mamuna_rig("mamuna_2", 240, 334, 0.2, "wm2"), W_ANIM)
WZ = rig_set(W, baba_rig(270, 300, 0.17, "wz"), W_ANIM)
WC = rig_set(W, licho_rig(124, 302, 0.14, "wc"), W_ANIM)
WW = rig_set(W, wilk_stoi(290, 400, 0.17, "ww"), W_ANIM)
WWP = rig_set(W, wilk_stoi(216, 306, 0.1, "wwp"), W_ANIM)
W["umarli"] = (150, 330, 110, 70, group([duch(postacie.man(176, 392, 0.8, hat=False, bundle=True)), duch(postacie.man(206, 388, 0.72)), duch(postacie.woman(232, 386, 0.7))]))
W["franek"] = (270, 320, 40, 70, group([duch(postacie.man(286, 384, 0.85, hat=False), 0.45)]))
W["jagna"] = (40, 320, 40, 80, group([jagna(60, 394, 0.85)]))
W["marysia"] = (100, 350, 40, 60, group([duch(dziewczynka(118, 404, 0.1), 0.6)]))
W["dzieci"] = (150, 380, 110, 50, group([duch(dziewczynka(x, 424, 0.075), 0.7) for x in (170, 190, 210, 230)] + ['<path d="M174 400H228" fill="none" stroke-width="1.2" opacity="0.6"/>']))
W["jaromir"] = (322, 330, 30, 80, group([postacie.man(334, 406, 1.0, hat=False)]))
W["przod"] = (0, 422, 390, 422, group(PRZOD))
SWI = ["tlo", "mgla"] + WB + WL + WWP + WP + WZ + WC + WM1 + WM2 + ["umarli", "franek", "jagna", "marysia", "dzieci", "jaromir"] + WW + ["przod"]
W_REVEAL = {**{n: "swita" for n in WB + WP + WZ + WC + WM1 + WM2}, **{n: "leszy" for n in WL}, **{n: "wilk" for n in WW}, **{n: "wilk_pan" for n in WWP},
            "umarli": "umarli", "franek": "franek", "jagna": "jagna", "marysia": "marysia", "dzieci": "dzieci"}
W_ANIM.update({"mgla": {"type": "drift", "amplitude": 16, "duration": 12000}, "umarli": {"type": "bob", "amplitude": 0.6, "duration": 3000},
               "franek": {"type": "bob", "amplitude": 0.5, "duration": 2800}, "jagna": {"type": "bob", "amplitude": 0.3, "duration": 3200},
               "marysia": {"type": "bob", "amplitude": 0.6, "duration": 2400}, "dzieci": {"type": "bob", "amplitude": 0.8, "duration": 1400},
               "jaromir": {"type": "bob", "amplitude": 0.3, "duration": 3600}})
W_EXTRA = {**{n: {"fadeDuration": 2500} for n in WB + WP + WZ + WC + WM1 + WM2 + WWP + WW}, **{n: {"fadeDuration": 3500} for n in WL},
           "umarli": {"fadeDuration": 3000}, "franek": {"fadeDuration": 3000}, "jagna": {"fadeDuration": 2000}, "marysia": {"fadeDuration": 3000},
           "dzieci": {"fadeDuration": 3000}, "przod": {"depth": 1.0}}
W_COMMENTS = {"tlo": "noc, droga od boru między chałupami, płoty z porostem", "mgla": "mgła na drodze", "jaromir": "Jaromir w progu chałupy",
              "umarli": "umarli z Zapadliny, przodem dziadek Maciek z tobołkiem (# pokaz: umarli)", "franek": "duch Franka pod oknem (# pokaz: franek)",
              "jagna": "Jagna wychodzi z mgły (# pokaz: jagna)", "marysia": "zmarła Marysia, bosa, bez wstążki (# pokaz: marysia)",
              "dzieci": "dzieci spod dębu za ręce, bez cieni (# pokaz: dzieci)", "przod": "pierwszy plan",
              **{n: f"błędnice nad drogą — {n[3:]} (rysunek autora; # pokaz: swita)" for n in WB},
              **{n: f"Pan Lasu na końcu świty — {n[3:]} (rysunek autora; # pokaz: leszy)" for n in WL},
              **{n: f"północnica — {n[3:]} (rysunek autora; # pokaz: swita)" for n in WP},
              **{n: f"żytnia baba — {n[3:]} (rysunek autora; # pokaz: swita)" for n in WZ},
              **{n: f"licho — {n[3:]} (rysunek autora; # pokaz: swita)" for n in WC},
              **{n: f"mamuna — {n[4:]} (rysunek autora; # pokaz: swita)" for n in WM1 + WM2},
              **{n: f"biały wilk przy progu — {n[3:]} (rysunek autora; # pokaz: wilk)" for n in WW},
              **{n: f"biały wilk przed Panem Lasu — {n[4:]} (rysunek autora; # pokaz: wilk_pan)" for n in WWP}}
_add(W, SWI, W_ANIM, W_COMMENTS, "szron", efekty.iskry(120, 290, 160, 40, n=12, seed=2052, duration=3000), before="umarli")
W_COMMENTS["szron"] = "szron na mchu, który wyrasta za Panem Lasu"
_add(W, SWI, W_ANIM, W_COMMENTS, "okna", ((0, 290, 390, 30, group([f'<path d="M{x} 300h12v10h-12z" fill="#FFFFFF" stroke-width="0.8"/>' for x in (24, 356)])),
                                          {"type": "flicker", "amplitude": 0.6, "duration": 1800}, "światło w oknach, gdzie płaczą dzieci"), before="mgla")
W_EXTRA["okna"] = {"noInvert": True}
_add(W, SWI, W_ANIM, W_COMMENTS, "mgla_niska", (mgla(-30, 380, 450, 44, 0.35), {"type": "drift", "amplitude": 20, "duration": 10000, "phase": 0.4}, "mgła przy ziemi"), before="przod")

# ======================= GRANICA =======================
G = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V440H0Z" fill="url(#hatchNight)" stroke="none" opacity="0.55"/>']
t += [spruce(x, 250, 60 + (x % 5) * 12, 26) for x in range(-6, 400, 15)]
t.append('<path d="M-10 252C100 246 280 250 400 244V440H-10Z" fill="#EDEBE6" stroke-width="2.4"/>')
t.append(stary_pniak(200, 360, 1.0))
G["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
G_ANIM = {}
GL = rig_set(G, leszy_rig(300, 360, 0.44, "gl"), G_ANIM)
G["ludzie"] = (0, 300, 140, 110, group([postacie.man(x, 404 - (x % 3) * 6, 0.9 - (x % 2) * 0.1, hat=x % 2 == 0) for x in (20, 70, 110)]
                                         + [postacie.woman(x, 396, 0.85) for x in (44, 92)] + [gromnica(x + 8, 352, 1.0, lit=False) for x in (20, 44, 70, 92, 110)]))
G["jaromir"] = (130, 300, 40, 100, group([postacie.man(146, 400, 1.15, hat=False)]))
G["siekiera"] = (160, 300, 60, 50, group([siekiera_w_pniu(206, 318, 1.0)]))
G["wstazka"] = (172, 284, 16, 30, group([f'<path d="M178 290c-4 6 4 10 0 18M180 292c5 4 2 10 6 14" fill="none" stroke="{RED}" stroke-width="2"/>']))
G["drewniak"] = (246, 356, 22, 12, group([drewniak(256, 364, 1.2)]))
G["kielek"] = (224, 356, 30, 34, group([kielek(238, 388, 1.6)]))
G["marysia"] = (60, 230, 30, 50, group([duch(dziewczynka(76, 274, 0.08), 0.6)]))
G["swit"] = (0, 0, 390, 250, group(['<path d="M0 160C100 150 280 156 390 148V250H0Z" fill="#FFFFFF" stroke="none" opacity="0.6"/>', '<path d="M0 0H390V250H0Z" fill="#FFFFFF" stroke="none" opacity="0.25"/>']))
G["przod"] = (0, 422, 390, 422, group(PRZOD))
GRA = ["tlo", "swit"] + GL + ["ludzie", "jaromir", "kielek", "drewniak", "siekiera", "wstazka", "marysia", "przod"]
G_REVEAL = {**{n: "leszy" for n in GL}, "ludzie": "ludzie", "siekiera": "siekiera", "wstazka": "wstazka", "drewniak": "drewniak", "kielek": "kielek", "marysia": "marysia", "swit": "swit"}
G_ANIM.update({"ludzie": {"type": "bob", "amplitude": 0.5, "duration": 2400}, "jaromir": {"type": "bob", "amplitude": 0.4, "duration": 3000},
               "wstazka": {"type": "sway", "amplitude": 8, "duration": 2000, "anchorX": 0.4, "anchorY": 0}, "kielek": {"type": "sway", "amplitude": 4, "duration": 3000, "anchorX": 0.5, "anchorY": 1},
               "marysia": {"type": "sway", "amplitude": 3, "duration": 1600, "anchorX": 0.5, "anchorY": 1}, "swit": {"type": "flicker", "amplitude": 0.2, "duration": 6000}})
G_EXTRA = {**{n: {"fadeDuration": 3000, "hideOn": "swit"} for n in GL}, "ludzie": {"fadeDuration": 2500}, "siekiera": {"fadeDuration": 600}, "wstazka": {"fadeDuration": 1500, "noInvert": True},
           "drewniak": {"fadeDuration": 1500, "noInvert": True}, "kielek": {"fadeDuration": 3000}, "marysia": {"fadeDuration": 3000, "hideOn": "swit"}, "swit": {"fadeDuration": 6000},
           "przod": {"depth": 1.0}}
G_COMMENTS = {"tlo": "skraj boru, pniak po Starym Dębie z hubami", "ludzie": "wieś z gromnicami, które nie chcą się palić (# pokaz: ludzie)", "jaromir": "Jaromir przy pniaku",
              "siekiera": "siekiera dziadka wbita w pniak (# pokaz: siekiera)", "wstazka": "czerwona wstążka na trzonku (# pokaz: wstazka)",
              "drewniak": "czerwony drewniak przy pniaku (# pokaz: drewniak)", "kielek": "blady kiełek z żołędzia w szronie (# pokaz: kielek)",
              "marysia": "zmarła Marysia macha matce na skraju (# pokaz: marysia)", "swit": "zwyczajny, szary świt (# pokaz: swit)", "przod": "pierwszy plan",
              **{n: f"Pan Lasu za pniakiem — {n[3:]} (rysunek autora; # pokaz: leszy, znika o świcie)" for n in GL}}
_add(G, GRA, G_ANIM, G_COMMENTS, "mgla", (mgla(-30, 240, 450, 50, 0.5), {"type": "drift", "amplitude": 16, "duration": 12000}, "mgła na skraju boru"), before="ludzie")
_add(G, GRA, G_ANIM, G_COMMENTS, "gwiazdy", efekty.iskry(0, 10, 390, 110, n=12, seed=2060, duration=3600), before="swit")
G_COMMENTS["gwiazdy"] = "gasnące gwiazdy"
G_EXTRA["gwiazdy"] = {"hideOn": "swit"}
_add(G, GRA, G_ANIM, G_COMMENTS, "szron", efekty.iskry(150, 370, 120, 40, n=10, seed=2061, duration=2600), before="przod")
G_COMMENTS["szron"] = "szron na zmarzniętej ziemi"
_add(G, GRA, G_ANIM, G_COMMENTS, "para", ((150, 300, 30, 20, group(['<path d="M156 316c4 -4 8 -2 10 -6c3 -3 7 -2 9 -5" fill="none" stroke-width="1" stroke-dasharray="2 2"/>'])),
                                          {"type": "rise", "amplitude": 8, "duration": 2400}, "para z ust"), before="przod")

# ======================= MIEJSCE PANA LASU =======================
M = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', NOC]
t += [spruce(x, 246, 60 + (x % 5) * 12, 26) for x in range(130, 400, 15)]
t.append('<path d="M-10 250C100 244 280 248 400 242V440H-10Z" fill="#EDEBE6" stroke-width="2.4"/>')
t.append(chalupa(-10, 300, 120, 56, 46))
t.append('<path d="M70 300V272H86V300Z" fill="#000000" stroke-width="1.4"/><path d="M22 270h14v12h-14z" fill="#FFFFFF" stroke-width="0.9"/>')
t.append(plot(-10, 130, 316, step=12, h=14, porost=True, seed=2070))
t.append(stary_pniak(250, 370, 0.8))
M["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
M_ANIM = {}
M["hanka"] = (66, 262, 24, 40, group([postacie.woman(78, 300, 0.5)]))
M["czapka"] = (20, 264, 20, 10, group(['<path d="M22 270c2 -6 12 -6 14 0z" fill="#000000" stroke-width="1"/>']))
MS = rig_set(M, starzec_rig(300, 400, 0.26, "ms"), M_ANIM)
M["jaromir"] = (186, 300, 40, 100, group([postacie.man(204, 396, 1.15, hat=False)]))
M["kapelusz"] = (184, 280, 44, 120, group([kapelusz_z_mchu(204, 396, 1.15)]))
M["pagorek"] = (260, 370, 90, 30, group([pagorek(304, 398, 76, 22)]))
MW = rig_set(M, wilk_stoi(330, 270, 0.12, "mw"), M_ANIM)
M["franek"] = (110, 260, 30, 60, group([duch(postacie.man(124, 316, 0.6, hat=False), 0.45)]))
M["marysia"] = (214, 356, 30, 44, group([duch(dziewczynka(226, 398, 0.075), 0.65)]))
M["przod"] = (0, 422, 390, 422, group(PRZOD))
MIE = ["tlo", "hanka", "czapka"] + MW + ["franek"] + MS + ["pagorek", "jaromir", "kapelusz", "marysia", "przod"]
M_REVEAL = {"hanka": "hanka", "czapka": "czapka", **{n: "starzec" for n in MS}, "kapelusz": "kapelusz", "pagorek": "pagorek", **{n: "wilk" for n in MW},
            "franek": "franek", "marysia": "marysia"}
M_ANIM.update({"hanka": {"type": "bob", "amplitude": 0.3, "duration": 3000}, "jaromir": {"type": "bob", "amplitude": 0.4, "duration": 3200},
               "kapelusz": {"type": "bob", "amplitude": 0.3, "duration": 4200}, "franek": {"type": "slide", "dx": 140, "dy": -10, "duration": 9000, "once": True},
               "marysia": {"type": "bob", "amplitude": 0.5, "duration": 2000}})
M_EXTRA = {"hanka": {"fadeDuration": 1500}, "czapka": {"fadeDuration": 1500}, **{n: {"fadeDuration": 2500, "hideOn": "pagorek"} for n in MS},
           "jaromir": {"hideOn": "kapelusz"}, "kapelusz": {"fadeDuration": 2500}, "pagorek": {"fadeDuration": 4000}, **{n: {"fadeDuration": 2000} for n in MW},
           "franek": {"fadeDuration": 2000}, "marysia": {"fadeDuration": 3000}, "przod": {"depth": 1.0}}
M_COMMENTS = {"tlo": "noc, chałupa z oknem, płot, pniak Starego Dębu na skraju boru", "hanka": "Hanka w drzwiach (# pokaz: hanka)", "czapka": "czapka Jaromira na parapecie (# pokaz: czapka)",
              "jaromir": "Jaromir przy pniaku", "kapelusz": "Jaromir w kapeluszu z mchu (# pokaz: kapelusz)", "pagorek": "pagórek okryty siwym porostem (# pokaz: pagorek)",
              "franek": "duch Franka odchodzi we mgłę (# pokaz: franek)", "marysia": "Marysia trzyma ojca za rękę (# pokaz: marysia)", "przod": "pierwszy plan",
              **{n: f"starzec w kapeluszu z mchu — {n[3:]} (rysunek autora; # pokaz: starzec)" for n in MS},
              **{n: f"biały wilk na skraju boru — {n[3:]} (rysunek autora; # pokaz: wilk)" for n in MW}}
_add(M, MIE, M_ANIM, M_COMMENTS, "mgla", (mgla(-30, 236, 450, 50, 0.4), {"type": "drift", "amplitude": 16, "duration": 12000}, "mgła"), before="hanka")
_add(M, MIE, M_ANIM, M_COMMENTS, "gwiazdy", efekty.iskry(0, 10, 390, 120, n=14, seed=2071, duration=3400), before="mgla")
M_COMMENTS["gwiazdy"] = "gwiazdy"
_add(M, MIE, M_ANIM, M_COMMENTS, "liscie", ((200, 120, 190, 260, group([f'<path d="M{x} {y}c3 -5 8 -5 10 0c-3 3 -7 3 -10 0z" fill="url(#hatchDense)" stroke-width="0.8"/>' for x, y in [(230, 150), (300, 130), (350, 170)]])),
                                             {"type": "rise", "amplitude": -200, "duration": 8000}, "liście przykrywają starca"), before="pagorek")
_add(M, MIE, M_ANIM, M_COMMENTS, "okno", ((20, 268, 18, 16, group(['<path d="M22 270h14v12h-14z" fill="#FFFFFF" stroke="none" opacity="0.8"/>'])),
                                          {"type": "flicker", "amplitude": 0.5, "duration": 2200}, "światło w oknie"), before="czapka")
M_EXTRA["okno"] = {"noInvert": True}
_add(M, MIE, M_ANIM, M_COMMENTS, "mech", efekty.iskry(270, 380, 80, 20, n=8, seed=2072, duration=2800), before="przod")
M_COMMENTS["mech"] = "szron na mchu przy pniaku"

# ======================= POZAR BORU =======================
P = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', NOC]
t += [spruce(x, 250, 50 + (x % 5) * 14, 24) for x in range(-6, 400, 14)]
t.append('<path d="M-10 254C100 248 280 252 400 246V440H-10Z" fill="url(#hatch)" stroke-width="2.4"/>')
t.append(chalupa(290, 352, 110, 50, 44))
t.append(plot(-10, 400, 372, step=16, h=16))
P["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
P_ANIM = {}
P["luna"] = (0, 0, 390, 260, group(['<path d="M0 260V120C80 100 160 130 240 104C300 90 360 110 390 100V260Z" fill="#FFFFFF" stroke="none" opacity="0.35"/>']))
PL = rig_set(P, leszy_rig(196, 330, 0.42, "pl"), P_ANIM)
P["ogien_leszy"] = (130, 170, 140, 170, group([ogien(x, y, 1.6) for x, y in [(170, 330), (220, 320), (186, 260), (210, 230), (160, 210), (236, 200)]]))
P["ogien"] = (0, 150, 390, 110, group([ogien(x, 250 - (x % 3) * 10, 1.4 + (x % 4) * 0.3) for x in range(10, 390, 28)]))
P["ogien_blisko"] = (0, 220, 140, 80, group([ogien(x, 290 - (x % 5) * 4, 2.0) for x in (20, 60, 100)]))
P["zwierzeta"] = (60, 300, 260, 50, group([sarna(110, 336, 1.0), sarna(150, 330, 0.8), dzik(220, 340, 1.0), dzik(260, 336, 0.8)]))
P["runal"] = (130, 300, 140, 40, group(['<path d="M136 330L264 314L266 324L138 338Z" fill="#000000" stroke-width="2"/>', ogien(160, 330, 1.2), ogien(220, 322, 1.4)]))
PW = rig_set(P, wilk_stoi(80, 404, 0.17, "pw"), P_ANIM)
P["jaromir"] = (30, 300, 50, 100, group([postacie.man(50, 404, 1.15, hat=False), '<path d="M60 352l8 -6" fill="none" stroke-width="2.4"/>']))
P["stodola"] = (190, 300, 100, 80, group([stodola(200, 372, 70, 40), ogien(220, 330, 1.6), ogien(250, 324, 1.8), postacie.man(236, 372, 0.6, hat=True)]))
P["stodola_runela"] = (190, 330, 100, 50, group([stodola(200, 372, fallen=True)]))
P["gaszenie"] = (100, 330, 80, 70, group([postacie.man(130, 400, 0.95, hat=False, arm='l14 -20'), '<path d="M146 344c6 -2 10 2 10 8" fill="url(#hatch)" stroke-width="1.4"/>', ogien(166, 398, 1.0)]))
P["przesieka"] = (100, 330, 180, 70, group([kon(160, 398, 0.9, facing=-1), kon(196, 398, 0.9, facing=-1), plug(232, 398, 1.0), postacie.man(256, 398, 0.8, hat=True),
                                            '<path d="M100 404H280" fill="none" stroke-width="3"/>']))
P["popiol"] = (0, 0, 390, 300, group(['<path d="M0 0H390V256H0Z" fill="#EDEBE6" stroke="none" opacity="0.85"/>']
                                       + [f'<path d="M{x} 254V{254 - 20 - (x % 7) * 6}" fill="none" stroke-width="3"/>' for x in range(4, 390, 18)]
                                       + ['<path d="M150 254C170 236 220 236 240 254Z" fill="url(#hatch)" stroke-width="1.6"/>']))
P["przod"] = (0, 422, 390, 422, group(PRZOD))
POZ = ["tlo", "luna", "ogien"] + PL + ["ogien_leszy", "runal", "zwierzeta", "ogien_blisko", "popiol", "stodola", "stodola_runela", "gaszenie", "przesieka", "jaromir"] + PW + ["przod"]
FIRE_HIDE = "popiol"
P_REVEAL = {"luna": "ogien", "ogien": "ogien", "ogien_blisko": "ogien", "zwierzeta": "ogien", **{n: "leszy" for n in PL}, "ogien_leszy": "leszy", "runal": "runal",
            **{n: "wilk" for n in PW}, "stodola": "stodola", "stodola_runela": "stodola_runela", "gaszenie": "gaszenie", "przesieka": "przesieka", "popiol": "popiol"}
P_ANIM.update({"luna": {"type": "flicker", "amplitude": 0.4, "duration": 1400}, "ogien": {"type": "flame", "amplitude": 0.25, "duration": 700, "anchorX": 0.5, "anchorY": 1},
               "ogien_leszy": {"type": "flame", "amplitude": 0.3, "duration": 600, "anchorX": 0.5, "anchorY": 1},
               "ogien_blisko": {"type": "flame", "amplitude": 0.3, "duration": 500, "anchorX": 0.5, "anchorY": 1},
               "zwierzeta": {"type": "slide", "dx": -260, "dy": 30, "duration": 4000}, "runal": {"type": "flame", "amplitude": 0.1, "duration": 900, "anchorX": 0.5, "anchorY": 1},
               "stodola": {"type": "flame", "amplitude": 0.08, "duration": 700, "anchorX": 0.5, "anchorY": 1}, "gaszenie": {"type": "bob", "amplitude": 1.6, "duration": 600},
               "przesieka": {"type": "bob", "amplitude": 0.8, "duration": 900}, "jaromir": {"type": "bob", "amplitude": 0.4, "duration": 2000}})
P_EXTRA = {"luna": {"fadeDuration": 1500, "hideOn": FIRE_HIDE}, "ogien": {"fadeDuration": 1500, "noInvert": True, "hideOn": FIRE_HIDE},
           "ogien_blisko": {"fadeDuration": 2000, "noInvert": True, "hideOn": FIRE_HIDE}, "zwierzeta": {"fadeDuration": 800, "hideOn": FIRE_HIDE},
           **{n: {"fadeDuration": 2000, "hideOn": "runal"} for n in PL}, "ogien_leszy": {"fadeDuration": 1500, "noInvert": True, "hideOn": "runal"},
           "runal": {"fadeDuration": 800, "noInvert": True, "hideOn": FIRE_HIDE}, **{n: {"fadeDuration": 1500} for n in PW},
           "stodola": {"fadeDuration": 1500, "noInvert": True, "hideOn": "stodola_runela"}, "stodola_runela": {"fadeDuration": 600},
           "gaszenie": {"fadeDuration": 1500, "noInvert": True}, "przesieka": {"fadeDuration": 1500}, "popiol": {"fadeDuration": 5000}, "przod": {"depth": 1.0}}
P_COMMENTS = {"tlo": "noc, bór nad wsią, opłotki, chałupa", "luna": "łuna nad borem (# pokaz: ogien)", "ogien": "płonie bór (# pokaz: ogien)",
              "ogien_blisko": "płonie młodnik przy opłotkach (# pokaz: ogien)", "zwierzeta": "sarny i dziki uciekają z boru (# pokaz: ogien)",
              "ogien_leszy": "Pan Lasu w płomieniach (# pokaz: leszy)", "runal": "runął jak stary dąb (# pokaz: runal)", "jaromir": "Jaromir z krzesiwem",
              "stodola": "stodoła Stasiowych w ogniu, Antek rąbie ściany (# pokaz: stodola)", "stodola_runela": "stodoła runęła (# pokaz: stodola_runela)",
              "gaszenie": "Jaromir tłucze płomienie workiem (# pokaz: gaszenie)", "przesieka": "konie orzą przesiekę (# pokaz: przesieka)",
              "popiol": "czarny bór o świcie (# pokaz: popiol)", "przod": "pierwszy plan",
              **{n: f"Pan Lasu stoi w ogniu — {n[3:]} (rysunek autora; # pokaz: leszy)" for n in PL},
              **{n: f"biały wilk przy Jaromirze — {n[3:]} (rysunek autora; # pokaz: wilk)" for n in PW}}
_add(P, POZ, P_ANIM, P_COMMENTS, "iskry", ((0, 60, 390, 220, group([f'<circle cx="{x}" cy="{y}" r="1.6" fill="{RED}" stroke="none"/>' for x, y in [(30, 240), (80, 200), (130, 250), (190, 210), (250, 240), (300, 200), (350, 230), (60, 160), (220, 150), (330, 170)]])),
                                           {"type": "rise", "amplitude": 140, "duration": 3000}, "iskry lecą w górę"), before="ogien_blisko")
P_EXTRA["iskry"] = {"noInvert": True, "hideOn": FIRE_HIDE}
_add(P, POZ, P_ANIM, P_COMMENTS, "dym", ((0, 0, 390, 200, group(['<path d="M20 200C10 150 60 120 40 70C30 40 70 20 90 0M200 190C180 140 230 110 210 60C200 30 240 10 250 0M330 200C320 150 370 120 350 70" fill="none" stroke-width="10" opacity="0.35"/>'])),
                                         {"type": "drift", "amplitude": 20, "duration": 6000}, "dym nad borem"), before="ogien")
P_EXTRA["dym"] = {}
_add(P, POZ, P_ANIM, P_COMMENTS, "snieg", efekty.platki(0, 0, 390, 260, n=16, seed=2080, fall=120, duration=9000), before="popiol")
P_EXTRA["snieg"] = {"fadeDuration": 4000}
P_REVEAL["snieg"] = "popiol"
P_COMMENTS["snieg"] = "pierwszy śnieg na popiele (# pokaz: popiol)"

# ======================= EPILOG: DAB =======================
E1 = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V200H0Z" fill="url(#hatch)" stroke="none" opacity="0.15"/>']
t += [spruce(x, 226, 50 + (x % 5) * 10, 22) for x in range(-6, 400, 15)]
t.append('<path d="M-10 228C100 222 280 226 400 220V440H-10Z" fill="#EDEBE6" stroke-width="2.4"/>')
t += [kapliczka(x, 248, 0.6) for x in (30, 130, 330)]
t.append(krzyz(82, 360, 70, 1.0))
t.append('<path d="M40 372H130M50 372v12M120 372v12" fill="none" stroke-width="3"/>')
t.append(stary_pniak(268, 334, 0.45))
E1["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
E1["dab"] = (200, 170, 130, 170, group(['<path d="M258 330C258 300 260 270 262 246H272C274 270 276 300 278 330Z" fill="#000000" stroke-width="2"/>',
                                        '<path d="M264 258L244 238M270 252L292 232M266 246L262 226" fill="none" stroke-width="3"/>',
                                        '<path d="M266 244C226 246 208 220 222 200C232 182 252 178 266 184C280 176 302 182 310 200C322 222 304 246 266 244Z" fill="#EDEBE6" stroke-width="2.2"/>',
                                        '<path d="M266 244C226 246 208 220 222 200C232 182 252 178 266 184C280 176 302 182 310 200C322 222 304 246 266 244Z" fill="url(#hatch)" stroke="none" opacity="0.6"/>',
                                        '<path d="M262 316l14 -4l-2 8z" fill="#FFFFFF" stroke-width="1.2"/>']))
E1["korona"] = (210, 176, 110, 70, group(['<path d="M232 206c6 -8 16 -6 18 2M270 192c6 -6 14 -2 14 6M296 214c6 -4 12 0 10 8M240 230c4 -6 12 -6 14 0" fill="none" stroke-width="1.4"/>']))
E1["starzy"] = (40, 320, 90, 60, group([siedzacy(70, 372, 0.95), siedzacy(104, 372, 0.9)]))
E1["dzieci"] = (20, 350, 220, 70, group([postacie.child(x, 418 - (x % 3) * 4, 0.8) for x in (30, 150, 186)] + [postacie.girl(x, 418, 0.8) for x in (130, 210)]))
E1["zoledzie"] = (200, 330, 100, 20, group([f'<ellipse cx="{x}" cy="{y}" rx="2.4" ry="3" fill="#000000" stroke="none"/>' for x, y in [(214, 340), (236, 344), (282, 338), (296, 344), (246, 336)]]))
E1["przod"] = (0, 422, 390, 422, group(PRZOD))
EDA = ["tlo", "dab", "korona", "zoledzie", "starzy", "dzieci", "przod"]
E1_REVEAL = {"dab": "dab", "korona": "dab", "zoledzie": "zoledzie"}
E1_ANIM = {"korona": {"type": "sway", "amplitude": 2, "duration": 4000, "anchorX": 0.5, "anchorY": 1}, "starzy": {"type": "bob", "amplitude": 0.3, "duration": 3600},
           "dzieci": {"type": "bob", "amplitude": 1.0, "duration": 1200}}
E1_EXTRA = {"dab": {"fadeDuration": 3000}, "korona": {"fadeDuration": 3000}, "zoledzie": {"fadeDuration": 2000}, "przod": {"depth": 1.0}}
E1_COMMENTS = {"tlo": "pół wieku później: kapliczki wzdłuż boru, krzyż z ławką, pniak", "dab": "młody dąb z ostrzem siekiery w korze (# pokaz: dab)", "korona": "korona dębu kołysze się (# pokaz: dab)",
               "zoledzie": "żołędzie pod dębem (# pokaz: zoledzie)", "starzy": "stary Jaromir i Hanka na ławce", "dzieci": "wnuki wokół ławki", "przod": "pierwszy plan"}
_add(E1, EDA, E1_ANIM, E1_COMMENTS, "liscie", ((180, 120, 210, 260, group([f'<path d="M{x} {y}c3 -5 8 -5 10 0c-3 3 -7 3 -10 0z" fill="url(#hatchDense)" stroke-width="0.8"/>' for x, y in [(210, 160), (290, 140), (330, 190), (250, 200)]])),
                                              {"type": "rise", "amplitude": -180, "duration": 9000}, "dębowe liście spadają"), before="starzy")
_add(E1, EDA, E1_ANIM, E1_COMMENTS, "wrony", efekty.wrony(60, 80, n=3, k=0.35, seed=2090, amplitude=50, duration=6000), before="dab")
_add(E1, EDA, E1_ANIM, E1_COMMENTS, "chmury", ((30, 30, 330, 50, group(['<path d="M60 62c8 -14 28 -14 34 0c8 -8 24 -2 22 8h-56z" fill="url(#hatch)" stroke-width="1.4"/>',
                                                                          '<path d="M250 50c8 -12 24 -12 30 0c8 -6 20 -2 18 6h-48z" fill="url(#hatch)" stroke-width="1.4"/>'])),
                                              {"type": "drift", "amplitude": 14, "duration": 16000}, "chmury"), before="dab")
E1_ANIM["trawa"] = trawa()[1]
E1["trawa"] = trawa()[0]
EDA.insert(EDA.index("przod"), "trawa")
E1_COMMENTS["trawa"] = "trawa"
_add(E1, EDA, E1_ANIM, E1_COMMENTS, "jablko", ((96, 330, 14, 14, group([f'<circle cx="103" cy="337" r="3.6" fill="{RED}" stroke-width="0.8"/>'])),
                                              {"type": "sway", "amplitude": 10, "duration": 2400, "anchorX": 0.5, "anchorY": 0}, "Hanka obiera jabłko"), before="dzieci")
E1_EXTRA["jablko"] = {"noInvert": True}

# ======================= EPILOG: BOR =======================
E2 = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V200H0Z" fill="url(#hatch)" stroke="none" opacity="0.1"/>']
t += [spruce(x, 240, 70 + (x % 5) * 12, 28) for x in range(-6, 400, 16)]
t.append('<path d="M-10 242C100 236 280 240 400 234V440H-10Z" fill="#EDEBE6" stroke-width="2.4"/>')
t.append(kapliczka(70, 300, 0.9))
t.append('<path d="M150 360C160 344 230 344 240 360Z" fill="url(#hatch)" stroke-width="1.8"/>' + krzyz(196, 352, 50, 1.0))
E2["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
E2_ANIM = {}
ES = rig_set(E2, starzec_rig(320, 280, 0.2, "es"), E2_ANIM)
E2["czapka"] = (184, 300, 24, 14, group(['<path d="M186 312c2 -8 18 -8 20 0z" fill="#000000" stroke-width="1"/>']))
E2["miski"] = (164, 350, 64, 16, group([miska(176, 356, 1.0), miska(206, 358, 0.7), '<path d="M190 362c4 -6 10 -6 12 0c-4 2 -8 2 -12 0z" fill="#FFFFFF" stroke-width="0.8"/>']))
E2["dzieci"] = (20, 350, 120, 70, group([postacie.child(40, 418, 0.8, arm='l10 8'), postacie.girl(84, 416, 0.8), postacie.child(118, 418, 0.75)]
                                        + ['<path d="M48 396c0 8 14 8 14 0z" fill="url(#hatch)" stroke-width="1.2"/>']))
E2["prawnuczka"] = (270, 270, 30, 60, group([postacie.girl(282, 320, 0.7)]))
E2["przod"] = (0, 422, 390, 422, group(PRZOD))
EBO = ["tlo"] + ES + ["czapka", "miski", "prawnuczka", "dzieci", "przod"]
E2_REVEAL = {**{n: "starzec" for n in ES}, "czapka": "czapka", "miski": "miski", "prawnuczka": "prawnuczka"}
E2_ANIM.update({"dzieci": {"type": "bob", "amplitude": 1.0, "duration": 1300}, "prawnuczka": {"type": "bob", "amplitude": 0.4, "duration": 2400}})
E2_EXTRA = {**{n: {"fadeDuration": 3000} for n in ES}, "czapka": {"fadeDuration": 2000}, "miski": {"fadeDuration": 2000}, "prawnuczka": {"fadeDuration": 2000}, "przod": {"depth": 1.0}}
E2_COMMENTS = {"tlo": "pół wieku później: skraj boru w słońcu, kapliczka, grób bez ciała z krzyżem z jałowca", "czapka": "czapka Jaromira na krzyżu (# pokaz: czapka)",
               "miski": "miski na grobie i zielony liść dębu (# pokaz: miski)", "dzieci": "dzieci z koszami", "prawnuczka": "dziewczynka na skraju boru (# pokaz: prawnuczka)",
               "przod": "pierwszy plan", **{n: f"starzec w kapeluszu z mchu — {n[3:]} (rysunek autora; # pokaz: starzec)" for n in ES}}
_add(E2, EBO, E2_ANIM, E2_COMMENTS, "motyle", ((80, 280, 200, 80, group([postacie.butterfly(120, 320, 0.8), postacie.butterfly(220, 300, 0.7)])),
                                               {"type": "wander", "amplitude": 16, "flap": 0.5, "duration": 5000}, "motyle"), before="dzieci")
_add(E2, EBO, E2_ANIM, E2_COMMENTS, "chmury", ((30, 30, 330, 50, group(['<path d="M90 60c8 -14 28 -14 34 0c8 -8 24 -2 22 8h-56z" fill="#FFFFFF" stroke-width="1.4"/>'])),
                                               {"type": "drift", "amplitude": 14, "duration": 16000}, "chmury"), before=ES[0])
_add(E2, EBO, E2_ANIM, E2_COMMENTS, "ptaki", efekty.wrony(200, 70, n=2, k=0.3, seed=2100, amplitude=40, duration=5000), before=ES[0])
E2_COMMENTS["ptaki"] = "ptaki nad borem"
_add(E2, EBO, E2_ANIM, E2_COMMENTS, "trawa", (*trawa(), "trawa"), before="przod")
_add(E2, EBO, E2_ANIM, E2_COMMENTS, "korony", ((0, 120, 390, 120, group([f'<path d="M{x} 200l6 -30l6 30" fill="none" stroke-width="1"/>' for x in range(10, 390, 40)])),
                                               {"type": "sway", "amplitude": 1.5, "duration": 4400, "anchorX": 0.5, "anchorY": 1}, "wiatr w koronach"), before=ES[0])

# ======================= EPILOG: WRZOSY =======================
E3 = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V220H0Z" fill="url(#hatch)" stroke="none" opacity="0.2"/>']
t.append('<path d="M-10 230C60 190 120 196 180 214C240 186 320 180 400 210V440H-10Z" fill="#EDEBE6" stroke-width="2.4"/>')
t += [jalowiec(x, y, 0.5) for x, y in [(40, 220), (150, 214), (250, 204), (340, 210)]]
t += [pniaczek(x, y, 0.8) for x, y in [(80, 222), (200, 214), (300, 206), (370, 216)]]
t += [f'<path d="M{x - 20} {y}C{x - 10} {y - 12} {x + 10} {y - 12} {x + 20} {y}Z" fill="url(#hatch)" stroke-width="1.4"/>' + "".join(f'<path d="M{x + d} {y - 8}l-2 -8M{x + d} {y - 8}l3 -6" fill="none" stroke-width="1"/>' for d in (-10, 0, 10))
      for x, y in [(60, 300), (130, 290), (330, 296)]]
t.append(chalupa(170, 330, 100, 50, 40))
t.append(chalupa(20, 380, 90, 44, 36) + chalupa(290, 384, 90, 44, 36))
E3["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
E3["wrzos"] = (0, 230, 390, 70, group([f'<path d="M{x} {250 + (x % 5) * 8}l{(x % 3) - 1} -6" fill="none" stroke-width="1.2"/>' for x in range(4, 390, 7)]))
E3["staruszek"] = (218, 340, 52, 64, group([siedzacy(240, 392, 0.95), '<path d="M222 392H264M226 392v10M260 392v10" fill="none" stroke-width="2.4"/>']))
E3["wnuczka"] = (190, 340, 30, 60, group([postacie.girl(204, 396, 0.85)]))
E3["kielek"] = (202, 342, 18, 18, group([kielek(212, 356, 0.8)]))
E3["przod"] = (0, 422, 390, 422, group(PRZOD))
EWR = ["tlo", "wrzos", "staruszek", "wnuczka", "kielek", "przod"]
E3_REVEAL = {"kielek": "kielek", "wnuczka": "kielek"}
E3_ANIM = {"wrzos": {"type": "sway", "amplitude": 2, "duration": 2600, "anchorX": 0.5, "anchorY": 1}, "staruszek": {"type": "bob", "amplitude": 0.3, "duration": 3800},
           "wnuczka": {"type": "bob", "amplitude": 0.4, "duration": 2400}, "kielek": {"type": "sway", "amplitude": 4, "duration": 2400, "anchorX": 0.5, "anchorY": 1}}
E3_EXTRA = {"wnuczka": {"fadeDuration": 2000}, "kielek": {"fadeDuration": 2500}, "przod": {"depth": 1.0}}
E3_COMMENTS = {"tlo": "pół wieku później: nagie wzgórza, jałowce, kopce z pokrzywą, trzy chałupy", "wrzos": "wrzos na wietrze", "staruszek": "stary Jaromir na ławce",
               "wnuczka": "wnuczka przynosi kiełek (# pokaz: kielek)", "kielek": "kiełek świerka na dłoni (# pokaz: kielek)", "przod": "pierwszy plan"}
_add(E3, EWR, E3_ANIM, E3_COMMENTS, "chmury", ((20, 30, 350, 60, group(['<path d="M60 62c8 -14 28 -14 34 0c8 -8 24 -2 22 8h-56z" fill="url(#hatch)" stroke-width="1.4"/>',
                                                                          '<path d="M260 80c8 -12 24 -12 30 0c8 -6 20 -2 18 6h-48z" fill="url(#hatch)" stroke-width="1.4"/>'])),
                                               {"type": "drift", "amplitude": 20, "duration": 14000}, "chmury gnane wiatrem"), before="wrzos")
_add(E3, EWR, E3_ANIM, E3_COMMENTS, "wrony", efekty.wrony(150, 110, n=3, k=0.35, seed=2110, amplitude=60, duration=6000), before="wrzos")
_add(E3, EWR, E3_ANIM, E3_COMMENTS, "dym", ((236, 260, 30, 60, group([dym(246, 300, 46, 0.4)])), {"type": "sway", "amplitude": 4, "duration": 3000, "anchorX": 0.5, "anchorY": 1}, "dym z komina"), before="wrzos")
_add(E3, EWR, E3_ANIM, E3_COMMENTS, "pokrzywy", ((40, 270, 310, 40, group(["".join(f'<path d="M{x + d} 292l-2 -10M{x + d} 288l4 -4" fill="none" stroke-width="1"/>' for d in (-14, -4, 6, 14)) for x in (60, 130, 330)])),
                                                 {"type": "sway", "amplitude": 3, "duration": 2000, "anchorX": 0.5, "anchorY": 1}, "pokrzywy na kopcach"), before="staruszek")
_add(E3, EWR, E3_ANIM, E3_COMMENTS, "trawa", (*trawa(amp=4), "sucha trawa"), before="przod")

BACKGROUNDS = {"dziady": ("bg_dziady", D, DZI, D_ANIM, D_REVEAL, D_EXTRA, D_COMMENTS, "Zaduszki we mgle"),
               "swita": ("bg_swita", W, SWI, W_ANIM, W_REVEAL, W_EXTRA, W_COMMENTS, "świta Pana Lasu"),
               "granica": ("bg_granica", G, GRA, G_ANIM, G_REVEAL, G_EXTRA, G_COMMENTS, "granica przy pniaku"),
               "miejsce": ("bg_miejsce", M, MIE, M_ANIM, M_REVEAL, M_EXTRA, M_COMMENTS, "miejsce Pana Lasu"),
               "pozar_boru": ("bg_pozarboru", P, POZ, P_ANIM, P_REVEAL, P_EXTRA, P_COMMENTS, "pożar boru"),
               "epilog_dab": ("bg_epilogdab", E1, EDA, E1_ANIM, E1_REVEAL, E1_EXTRA, E1_COMMENTS, "młody dąb"),
               "epilog_bor": ("bg_epilogbor", E2, EBO, E2_ANIM, E2_REVEAL, E2_EXTRA, E2_COMMENTS, "skraj boru"),
               "epilog_wrzosy": ("bg_epilogwrzosy", E3, EWR, E3_ANIM, E3_REVEAL, E3_EXTRA, E3_COMMENTS, "wrzosowiska")}

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
