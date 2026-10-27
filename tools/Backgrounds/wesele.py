# Generator tel rozdzialu dziewiatego (Wesele):
#   glodna_zima    — zima po chudym lecie: zasniezona wies, zamarzniete jezioro; sanie odjezdzaja do miasta (# pokaz: sanie),
#                    Jaromir przy przerebli (# pokaz: przerebel), odwilz — snieg schodzi z pol (# pokaz: odwilz)
#   piec_lat       — wies po latach: pola, szalas Franka nad jeziorem, bór; nowy rzad swierkow (# pokaz: swierki),
#                    Franek o zmierzchu ze swiecacymi oczami (# pokaz: franek), ojciec na przyzbie (# pokaz: przyzba)
#   swaty          — wieczor przed chalupa i kuznia kowala, Stas z butelka; w izbie (# pokaz: w_izbie), wstazka (# pokaz: wstazka),
#                    kuznia otwarta (# pokaz: kuznia), Hanka w progu (# pokaz: hanka)
#   antek_wiesc    — jesien przy chalupie Jaromira; Antek przy furtce (# pokaz: antek), odchodzi (# pokaz: odchodzi)
#   skraj_kapota   — skraj boru: kapota na galezi (# pokaz: kapota), wilcze tropy i biale wlosy (# pokaz: tropy)
#   izba_babki     — izba babki Hanki: ziola pod powala, okno na bór; pyl ziol (# pokaz: babka), oczy w borze (# pokaz: okno)
#   kuznia_wieczor — wnetrze kuzni: palenisko, kowadlo; podkowa i krzyzyk (# pokaz: kowadlo), wybor (# pokaz: podkowa / krzyzyk)
#   slub_droga     — droga do Bukowca pod borem, kosciolek na wzgorzu; wozy weselne (# pokaz: wozy)
#   wesele_noc     — noc, rozswietlona chalupa, skraj lasu we mgle; oczepiny w oknie (# pokaz: oczepiny), starzec autora (# pokaz: starzec),
#                    kolacz (# pokaz: kolacz), skinienie (# pokaz: skinienie), mgla (# pokaz: mgla), pusty skraj w szronie (# pokaz: odszedl), rygiel (# pokaz: rygiel)
#   pierwszy_ranek — swit, szron; wilcze tropy wokol chalupy (# pokaz: tropy), biale wlosy na plocie (# pokaz: wlosy)
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/wesele.py src/LittleVillage/Resources/Images
#   python3 tools/Backgrounds/wesele.py --master <tlo> [wszystko] > podglad.svg
import sys, random, math
from common import *
import art, postacie, efekty
from efekty import add as _add
from kapliczki import hut
from licho import izba_tlo, okno, piec, stol, bor, pniak, muchy, PRZOD, PRZOD_IZBA
from rusalki import sitting

RED = "#A8101A"


def chalupa(x, base, w=110, h=50, roof=44, snow=False, lit=False):
    g = [f'<path d="M{x} {base}V{base - h}H{x + w}V{base}Z" fill="#FFFFFF" stroke-width="2.4"/>']
    for i in range(1, 4):
        g.append(f'<path d="M{x} {base - i * h / 4:.0f}H{x + w}" fill="none" stroke-width="0.9"/>')
    g.append(f'<path d="M{x - 10} {base - h + 2}L{x + w / 2} {base - h - roof}L{x + w + 10} {base - h + 2}Z" fill="{"#FFFFFF" if snow else "url(#hatchDense)"}" stroke-width="2.4"/>')
    if snow:
        g.append(f'<path d="M{x - 6} {base - h}L{x + w / 2} {base - h - roof + 6}L{x + w + 6} {base - h}" fill="none" stroke-width="1" stroke-dasharray="6 4"/>')
    g.append(f'<path d="M{x + w * 0.66:.0f} {base}V{base - h * 0.7:.0f}H{x + w * 0.82:.0f}V{base}Z" fill="#000000"/>')
    g.append(okno(x + w * 0.16, base - h * 0.72, w * 0.22, h * 0.36, fill="#FFFFFF" if lit else "#000000"))
    g.append(f'<path d="M{x + w * 0.74:.0f} {base - h - roof * 0.6:.0f}V{base - h - roof - 8:.0f}H{x + w * 0.86:.0f}V{base - h - roof * 0.36:.0f}" fill="#FFFFFF" stroke-width="2"/>')
    return "".join(g)


def dym(x, y, h=50, op=0.6):
    return f'<path d="M{x} {y}c-6 -8 4 -12 -1 -{h * 0.4:.0f}c-3 -5 2 -10 0 -{h * 0.3:.0f}c-2 -6 4 -10 2 -{h * 0.3:.0f}" fill="none" stroke-width="2.4" opacity="{op}"/>'


def sanie(x, y, k=1.0):
    P = lambda dx, dy: f"{x + dx * k:.1f} {y + dy * k:.1f}"
    return (f'<path d="M{P(0, 0)}H{x + 60 * k:.1f}Q{P(70, 0)} {P(72, -8)}" fill="none" stroke-width="2.4"/>'
            f'<path d="M{P(4, -2)}V{y - 14 * k:.1f}H{x + 56 * k:.1f}V{y - 2 * k:.1f}Z" fill="url(#hatchDense)" stroke-width="1.6"/>'
            f'<path d="M{P(10, -14)}C{P(14, -30)} {P(40, -32)} {P(46, -14)}Z" fill="#FFFFFF" stroke-width="1.6"/>'
            + postacie.woman(x + 24 * k, y - 14 * k, 0.45 * k) + postacie.child(x + 36 * k, y - 14 * k, 0.6 * k)
            + f'<path d="M{P(60, -4)}L{P(72, -6)}L{P(76, -18)}L{P(88, -22)}L{P(94, -30)}L{P(98, -22)}L{P(92, -18)}L{P(90, -4)}M{P(76, -6)}v{10 * k:.1f}M{P(88, -6)}v{10 * k:.1f}" fill="#000000" stroke-width="1.6"/>')


def staruszek(x, y, k=1.0):
    """Stary Stas: zgiety wpol, o lasce."""
    P = lambda dx, dy: f"{x + dx * k:.1f} {y + dy * k:.1f}"
    return (f'<g stroke-width="2"><path d="M{P(-6, 0)}L{P(-3, -24)}L{P(3, -24)}L{P(4, 0)}Z" fill="#000000"/>'
            f'<path d="M{P(-8, -22)}C{P(-10, -40)} {P(4, -52)} {P(18, -50)}L{P(20, -42)}C{P(8, -40)} {P(6, -30)} {P(8, -22)}Z" fill="#000000"/>'
            f'<circle cx="{x + 22 * k:.1f}" cy="{y - 50 * k:.1f}" r="{6 * k:.1f}" fill="#000000"/>'
            f'<path d="M{P(18, -40)}L{P(26, 0)}" fill="none" stroke-width="{2 * k:.1f}"/></g>')


def butelka(x, y, k=1.0, ribbon=True):
    s = f'<path d="M{x - 3 * k:.1f} {y}V{y - 12 * k:.1f}L{x - 1.5 * k:.1f} {y - 16 * k:.1f}V{y - 20 * k:.1f}H{x + 1.5 * k:.1f}V{y - 16 * k:.1f}L{x + 3 * k:.1f} {y - 12 * k:.1f}V{y}Z" fill="#FFFFFF" stroke-width="1.2"/>'
    if ribbon:
        s += f'<path d="M{x - 2 * k:.1f} {y - 15 * k:.1f}l-5 -3l1 6zM{x + 2 * k:.1f} {y - 15 * k:.1f}l5 -3l-1 6z" fill="{RED}" stroke="{RED}" stroke-width="0.8"/>'
    return s


def tropy(points, k=1.0):
    out = []
    for x, y in points:
        out.append(f'<ellipse cx="{x}" cy="{y}" rx="{3.4 * k:.1f}" ry="{2.6 * k:.1f}" fill="#000000" stroke="none"/>')
        for dx, dy in [(-3.4, -3.6), (-1.2, -4.6), (1.2, -4.6), (3.4, -3.6)]:
            out.append(f'<circle cx="{x + dx * k:.1f}" cy="{y + dy * k:.1f}" r="{1.1 * k:.1f}" fill="#000000" stroke="none"/>')
    return "".join(out)


def kosciolek(x, base, k=1.0):
    return (f'<path d="M{x} {base}V{base - 20 * k}H{x + 30 * k}V{base}Z" fill="#FFFFFF" stroke-width="1.6"/>'
            f'<path d="M{x - 3 * k} {base - 20 * k}L{x + 15 * k} {base - 32 * k}L{x + 33 * k} {base - 20 * k}Z" fill="url(#hatchDense)" stroke-width="1.6"/>'
            f'<path d="M{x + 30 * k} {base}V{base - 34 * k}H{x + 40 * k}V{base}Z" fill="#FFFFFF" stroke-width="1.6"/>'
            f'<path d="M{x + 29 * k} {base - 34 * k}L{x + 35 * k} {base - 46 * k}L{x + 41 * k} {base - 34 * k}Z" fill="#000000" stroke-width="1.2"/>'
            f'<path d="M{x + 35 * k} {base - 46 * k}v{-6 * k}M{x + 32 * k} {base - 50 * k}h{6 * k}" fill="none" stroke-width="1.2"/>')


def woz_weselny(x, y, k=1.0, music=False):
    P = lambda dx, dy: f"{x + dx * k:.1f} {y + dy * k:.1f}"
    g = [f'<path d="M{P(0, 0)}H{x + 60 * k:.1f}" fill="none" stroke-width="2.6"/>',
         f'<circle cx="{x + 10 * k:.1f}" cy="{y + 6 * k:.1f}" r="{7 * k:.1f}" fill="#FFFFFF" stroke-width="1.6"/><circle cx="{x + 50 * k:.1f}" cy="{y + 6 * k:.1f}" r="{7 * k:.1f}" fill="#FFFFFF" stroke-width="1.6"/>',
         f'<path d="M{P(2, -2)}H{x + 58 * k:.1f}V{y - 8 * k:.1f}H{x + 2 * k:.1f}Z" fill="#FFFFFF" stroke-width="1.4"/>',
         f'<path d="M{P(6, -8)}l-4 -12M{P(56, -8)}l4 -12" fill="none" stroke-width="1.4"/>',
         f'<path d="M{P(2, -20)}l3 -3l3 3l-3 3zM{P(60, -20)}l3 -3l3 3l-3 3z" fill="url(#hatch)" stroke-width="1"/>',
         f'<path d="M{P(20, -8)}l-3 10M{P(40, -8)}l3 10" fill="none" stroke="{RED}" stroke-width="1.6"/>',
         postacie.man(x + 22 * k, y - 8 * k, 0.4 * k, hat=True), postacie.woman(x + 38 * k, y - 8 * k, 0.4 * k),
         f'<path d="M{P(60, -2)}L{P(72, -4)}L{P(76, -16)}L{P(88, -20)}L{P(94, -28)}L{P(98, -20)}L{P(92, -16)}L{P(90, -2)}M{P(76, -4)}v{10 * k:.1f}M{P(88, -4)}v{10 * k:.1f}" fill="#000000" stroke-width="1.6"/>']
    if music:
        g.append(f'<path d="M{P(26, -30)}l10 -4" fill="none" stroke-width="1.4"/>')
    return "".join(g)


def ziola(x, y, n=5, seed=1):
    rnd = random.Random(seed)
    out = []
    for i in range(n):
        cx = x + i * 16
        out.append(f'<path d="M{cx} {y}v12" fill="none" stroke-width="1"/>')
        for j in range(5):
            out.append(f'<path d="M{cx} {y + 12}l{rnd.uniform(-6, 6):.0f} {rnd.uniform(8, 20):.0f}" fill="none" stroke-width="1.2"/>')
    return "".join(out)


def starzec_rig(cx, feet, k, prefix):
    tr = art.parse_transform(f"translate({cx - 150 * k:.1f} {feet - 514 * k:.1f}) scale({k})")
    return art.rig("leszy_czlowiek", tr, [
        ("postac", ["cien", "nogi", "kozuch"], {"type": "sway", "amplitude": 0.6, "duration": 4200}, "kozuch"),
        ("reka", ["reka_z_laska"], {"type": "sway", "amplitude": 1.5, "duration": 3400}, "reka_z_laska"),
        ("glowa", ["glowa", "kapelusz"], {"type": "sway", "amplitude": 2, "duration": 5200}, "glowa"),
        ("oczy", ["oczy"], {"type": "blink", "duration": 5200}, None)], prefix)


def gwiazdy(x, y, w, h, seed):
    return efekty.iskry(x, y, w, h, n=12, seed=seed, duration=3600)


# ======================= GLODNA ZIMA =======================
G = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M0 0H390V150H0Z" fill="url(#hatch)" stroke="none" opacity="0.3"/>',
     '<path d="M-10 210C80 202 200 206 400 200V440H-10Z" fill="url(#hatch)" stroke-width="2.6" opacity="0.5"/>']
t += bor(208, 230, 400, 12, seed=901)
t.append(chalupa(120, 240, 80, 34, 30, snow=True) + chalupa(240, 250, 70, 30, 26, snow=True))
# zamarzniete jezioro z lewej
t.append('<path d="M-10 270C40 256 130 258 170 276C160 300 60 310 -10 304Z" fill="#FFFFFF" stroke-width="2"/>')
t.append('<path d="M20 282l30 6l20 -4M90 278l20 10l30 -2M60 296l20 -6" fill="none" stroke-width="1"/>')
G["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
G["snieg"] = (-10, 196, 410, 246, group(['<path d="M-10 210C80 202 200 206 400 200V440H-10Z" fill="#FFFFFF" stroke="none"/>',
                                         '<path d="M-10 270C40 256 130 258 170 276C160 300 60 310 -10 304Z" fill="#FFFFFF" stroke-width="2"/>',
                                         '<path d="M20 282l30 6l20 -4M90 278l20 10l30 -2M60 296l20 -6" fill="none" stroke-width="1"/>',
                                         '<path d="M-10 360C100 354 260 358 400 352" fill="none" stroke-width="1" stroke-dasharray="8 6"/>']))
G["dachy"] = (100, 196, 220, 60, group([chalupa(120, 240, 80, 34, 30, snow=True) + chalupa(240, 250, 70, 30, 26, snow=True)]))
G["dym_0"] = (170, 150, 30, 60, group([dym(184, 200, 50)]))
G["dym_1"] = (290, 170, 30, 50, group([dym(304, 214, 40)]))
G["sanie"] = (220, 300, 120, 50, group([sanie(230, 340, 1.0)]))
G["przerebel"] = (60, 260, 90, 50, group(['<ellipse cx="96" cy="292" rx="10" ry="3" fill="#000000"/>', sitting(80, 296, 1.0, 1),
                                           '<path d="M86 270L104 260L102 292" fill="none" stroke-width="1.2"/>']))
G["wiosna"] = (-10, 300, 410, 140, group([grass(x, 300 + (x * 37) % 120, 1.0) for x in range(0, 400, 18)] +
                                          [f'<path d="M{x} {320 + (x * 13) % 100}c6 -4 18 -4 26 0" fill="none" stroke-width="1.2"/>' for x in range(10, 380, 46)]))
G["przod"] = (0, 422, 390, 422, group(PRZOD))
ZIMA = ["tlo", "wiosna", "snieg", "dachy", "dym_0", "dym_1", "przerebel", "sanie", "przod"]
G_REVEAL = {"sanie": "sanie", "przerebel": "przerebel", "wiosna": "odwilz"}
G_ANIM = {"dym_0": {"type": "sway", "amplitude": 3, "duration": 5000, "anchorX": 0.5, "anchorY": 1},
          "dym_1": {"type": "sway", "amplitude": 3, "duration": 5600, "anchorX": 0.5, "anchorY": 1, "phase": 0.3},
          "sanie": {"type": "slide", "dx": 180, "dy": -10, "duration": 16000, "once": True},
          "przerebel": {"type": "bob", "amplitude": 0.5, "duration": 2600},
          "wiosna": {"type": "sway", "amplitude": 2, "duration": 3000, "anchorX": 0.5, "anchorY": 1}}
G_EXTRA = {"snieg": {"hideOn": "odwilz", "fadeDuration": 6000}, "sanie": {"fadeDuration": 1500, "hideAfter": 15000},
           "przerebel": {"fadeDuration": 1500, "hideOn": "odwilz"}, "wiosna": {"fadeDuration": 5000}, "przod": {"depth": 1.0}}
G_COMMENTS = {"tlo": "zima po chudym lecie: pola, bór, dwie chałupy, zamarznięte jezioro (pod śniegiem grunt na wiosnę)",
              "snieg": "śnieg na polach (schodzi przy # pokaz: odwilz)", "dachy": "zaśnieżone dachy chałup", "dym_0": "dym z komina",
              "dym_1": "dym z komina", "sanie": "sanie z rodziną odjeżdżają do miasta (# pokaz: sanie)",
              "przerebel": "Jaromir łowi ryby w przerębli (# pokaz: przerebel)", "wiosna": "trawa spod śniegu (# pokaz: odwilz)", "przod": "pierwszy plan"}
_add(G, ZIMA, G_ANIM, G_COMMENTS, "platki", efekty.platki(0, 0, 390, 300, n=26, seed=902, fall=160, duration=7000), before="przod")
G_EXTRA["platki"] = {"hideOn": "odwilz", "fadeDuration": 3000}
_add(G, ZIMA, G_ANIM, G_COMMENTS, "platki_2", efekty.platki(0, 0, 390, 300, n=20, seed=903, fall=160, duration=7000, phase=0.5), before="przod")
G_EXTRA["platki_2"] = {"hideOn": "odwilz", "fadeDuration": 3000}
_add(G, ZIMA, G_ANIM, G_COMMENTS, "wrony", efekty.wrony(80, 110, n=4, k=0.4, seed=904, amplitude=50), before="snieg")
_add(G, ZIMA, G_ANIM, G_COMMENTS, "zamiec", ((-30, 220, 450, 30, group([f'<path d="{ribbon(-20, 410, 232, 10, 4)}" fill="#FFFFFF" stroke-width="1" opacity="0.7"/>'])),
                                             {"type": "drift", "amplitude": 30, "duration": 6000}, "zamieć nad polami"), before="dachy")
G_EXTRA["zamiec"] = {"hideOn": "odwilz", "fadeDuration": 3000}
_add(G, ZIMA, G_ANIM, G_COMMENTS, "skowronki", efekty.wrony(200, 120, n=2, k=0.3, seed=905, amplitude=40), before="przod")
G_REVEAL["skowronki"] = "odwilz"
G_COMMENTS["skowronki"] = "pierwsze skowronki (# pokaz: odwilz)"

# ======================= PIEC LAT =======================
P = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M0 0H390V40C300 52 200 34 110 46C60 52 30 44 0 50Z" fill="url(#hatch)" stroke="none" opacity="0.5"/>',
     '<path d="M-10 200C80 192 200 196 400 190V440H-10Z" fill="#EDEBE6" stroke-width="2.6"/>']
t += bor(200, 160, 400, 11, seed=906)
t.append('<path d="M-10 236C30 226 100 228 130 240C120 256 40 262 -10 258Z" fill="url(#water)" stroke-width="2"/>')
t.append('<path d="M110 232L124 214L138 232Z" fill="url(#hatch)" stroke-width="1.6"/>')
for i in range(5):
    t.append(f'<path d="M150 {268 + i * 12}C220 {264 + i * 12} 300 {266 + i * 12} 400 {262 + i * 12}" fill="none" stroke-width="1"/>')
t.append(chalupa(250, 380, 120, 56, 46))
t.append('<path d="M240 380H380V388H240Z" fill="#FFFFFF" stroke-width="1.6"/>')
P["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
P["swierki"] = (150, 196, 250, 40, group([spruce(x, 226, 22, 10) for x in range(156, 396, 16)]))
P["franek"] = (130, 190, 30, 50, group([postacie.man(144, 236, 0.55, hat=False), '<circle cx="142" cy="197" r="1.2" fill="#FFFFFF" stroke="none"/><circle cx="146" cy="197" r="1.2" fill="#FFFFFF" stroke="none"/>']))
P["przyzba"] = (230, 300, 80, 90, group([sitting(250, 386, 1.2, 1), '<path d="M262 386l8 -40" fill="none" stroke-width="2"/>', postacie.man(292, 386, 1.1, hat=False)]))
P["dym"] = (330, 220, 30, 60, group([dym(343, 274, 50)]))
P["przod"] = (0, 422, 390, 422, group(PRZOD))
PIEC = ["tlo", "swierki", "franek", "dym", "przyzba", "przod"]
P_REVEAL = {"swierki": "swierki", "franek": "franek", "przyzba": "przyzba"}
P_ANIM = {"swierki": {"type": "sway", "amplitude": 2, "duration": 2800, "anchorX": 0.5, "anchorY": 1},
          "franek": {"type": "bob", "amplitude": 0.3, "duration": 3000}, "dym": {"type": "sway", "amplitude": 3, "duration": 5000, "anchorX": 0.5, "anchorY": 1},
          "przyzba": {"type": "bob", "amplitude": 0.3, "duration": 3200}}
P_EXTRA = {"swierki": {"fadeDuration": 4000}, "franek": {"fadeDuration": 3000, "hideOn": "przyzba"}, "przyzba": {"fadeDuration": 1500}, "przod": {"depth": 1.0}}
P_COMMENTS = {"tlo": "Zapadlina po latach: jezioro z szałasem Franka, pola, bór, chałupa z przyzbą",
              "swierki": "nowy rząd świerków bliżej wsi (# pokaz: swierki)", "franek": "Franek o zmierzchu na skraju lasu, oczy świecą (# pokaz: franek)",
              "przyzba": "ojciec na przyzbie woła Jaromira (# pokaz: przyzba)", "dym": "dym z komina", "przod": "pierwszy plan"}
_add(P, PIEC, P_ANIM, P_COMMENTS, "chmury", ((40, 60, 300, 40, group(['<path d="M60 92c6 -10 20 -10 24 0c6 -6 18 -2 16 6h-40z" fill="#FFFFFF" stroke-width="1.6"/>',
                                                                       '<path d="M240 80c6 -10 20 -10 24 0c6 -6 18 -2 16 6h-40z" fill="#FFFFFF" stroke-width="1.6"/>'])),
                                             {"type": "drift", "amplitude": 14, "duration": 16000}, "obłoki"), before="swierki")
_add(P, PIEC, P_ANIM, P_COMMENTS, "jaskolki", efekty.wrony(100, 120, n=3, k=0.35, seed=907, amplitude=50, duration=5200), before="swierki")
P_COMMENTS["jaskolki"] = "ptaki nad polami"
_add(P, PIEC, P_ANIM, P_COMMENTS, "zboze", ((150, 270, 240, 50, group([f'<path d="M{x} 316v-14" fill="none" stroke-width="1"/><ellipse cx="{x}" cy="300" rx="1.6" ry="4" fill="url(#hatchDense)" stroke-width="0.8"/>' for x in range(156, 240, 8)])),
                                            {"type": "sway", "amplitude": 3, "duration": 3000, "anchorX": 0.5, "anchorY": 1}, "zboże faluje"), before="przyzba")
_add(P, PIEC, P_ANIM, P_COMMENTS, "blyski", ((0, 230, 130, 30, group(['<path d="M20 244h8M60 248h10M96 242h8" fill="none" stroke="#FFFFFF" stroke-width="1.6"/>'])),
                                             {"type": "flicker", "amplitude": 0.25, "duration": 1500}, "błyski na jeziorze"), before="swierki")
_add(P, PIEC, P_ANIM, P_COMMENTS, "motyl", ((60, 330, 28, 22, group([postacie.butterfly(74, 340, 0.9)])),
                                            {"type": "wander", "amplitude": 30, "flap": 0.65, "duration": 6400}, "motyl"), before="przod")

# ======================= SWATY =======================
W = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V230H0Z" fill="url(#hatch)" stroke="none" opacity="0.6"/>',
     '<path d="M-10 236C80 228 200 232 400 226V440H-10Z" fill="#EDEBE6" stroke-width="2.6"/>']
t += bor(236, -6, 400, 13, seed=908)
t.append(chalupa(20, 340, 150, 70, 54))
# kuznia z prawej: kamienna, z szerokimi wrotami
t.append('<path d="M230 340V270H380V340Z" fill="#FFFFFF" stroke-width="2.4"/><path d="M222 272L305 232L388 272Z" fill="url(#hatchDense)" stroke-width="2.4"/>')
t.append('<path d="M262 340V290H322V340Z" fill="#000000" stroke-width="2"/><path d="M350 250V222H366V262" fill="#FFFFFF" stroke-width="2"/>')
t.append('<path d="M-10 370H200M-10 384H200" fill="none" stroke-width="2"/>')
for x in range(-4, 200, 22):
    t.append(f'<path d="M{x - 3} 394V362L{x} 356L{x + 3} 362V394Z" fill="#FFFFFF" stroke-width="1.4"/>')
W["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
W["okno"] = (40, 280, 40, 30, group(['<path d="M44 290H78V306H44Z" fill="#FFFFFF" stroke="none" opacity="0.9"/>']))
W["w_izbie"] = (40, 282, 40, 26, group(['<circle cx="52" cy="296" r="3" fill="#000000"/><circle cx="62" cy="294" r="3" fill="#000000"/><circle cx="72" cy="297" r="2.6" fill="#000000"/>']))
W["wstazka"] = (56, 284, 14, 14, group([butelka(62, 304, 0.8)]))
W["stas"] = (130, 330, 90, 70, group([staruszek(146, 392, 1.0), butelka(170, 372, 1.0), postacie.man(196, 392, 1.0, hat=False)]))
W["kuznia"] = (250, 280, 80, 64, group([f'<path d="M262 340V290H322V340Z" fill="{RED}" stroke="none" opacity="0.5"/>', postacie.man(292, 340, 0.8, hat=False, arm="l10 -8"),
                                        f'<path d="M278 336c-4 -4 -3 -10 0 -14c3 4 4 10 0 14z" fill="{RED}" stroke="none"/>']))
W["hanka"] = (310, 280, 30, 64, group([postacie.girl(322, 340, 1.3)]))
W["przod"] = (0, 422, 390, 422, group(PRZOD))
SWATY = ["tlo", "okno", "w_izbie", "wstazka", "kuznia", "hanka", "stas", "przod"]
W_REVEAL = {"w_izbie": "w_izbie", "wstazka": "wstazka", "kuznia": "kuznia", "hanka": "hanka"}
W_ANIM = {"okno": {"type": "flicker", "amplitude": 0.6, "duration": 2400}, "w_izbie": {"type": "bob", "amplitude": 0.4, "duration": 2000},
          "wstazka": {"type": "flicker", "amplitude": 0.6, "duration": 1800}, "kuznia": {"type": "flicker", "amplitude": 0.6, "duration": 900},
          "stas": {"type": "bob", "amplitude": 0.4, "duration": 2600}, "hanka": {"type": "bob", "amplitude": 0.3, "duration": 3000}}
W_EXTRA = {"okno": {"noInvert": True}, "w_izbie": {"fadeDuration": 1500}, "wstazka": {"noInvert": True, "fadeDuration": 1500},
           "kuznia": {"noInvert": True, "fadeDuration": 1200}, "hanka": {"fadeDuration": 1500}, "stas": {"hideOn": "w_izbie,kuznia", "fadeDuration": 1200}, "przod": {"depth": 1.0}}
W_COMMENTS = {"tlo": "wieczór przed chałupą kowala i kuźnią, bór w tle", "okno": "oświetlone okno chałupy kowala",
              "w_izbie": "w izbie: kowal, matka Hanki i Hanka (# pokaz: w_izbie)", "wstazka": "butelka przewiązana wstążką Hanki (# pokaz: wstazka)",
              "kuznia": "otwarta kuźnia, kowal przy palenisku (# pokaz: kuznia)", "hanka": "Hanka w progu kuźni (# pokaz: hanka)",
              "stas": "stary Staś z butelką i Jaromir przy płocie", "przod": "pierwszy plan"}
_add(W, SWATY, W_ANIM, W_COMMENTS, "dym", ((344, 180, 30, 60, group([dym(358, 228, 50)])), {"type": "sway", "amplitude": 3, "duration": 4600, "anchorX": 0.5, "anchorY": 1}, "dym z kuźni"), before="okno")
_add(W, SWATY, W_ANIM, W_COMMENTS, "iskry", ((340, 180, 40, 50, group([f'<circle cx="{x}" cy="{y}" r="1.4" fill="#FFFFFF" stroke="{RED}" stroke-width="0.6"/>' for x, y in [(356, 214), (362, 204), (352, 196)]])),
                                             {"type": "rise", "amplitude": 30, "duration": 1600}, "iskry z komina kuźni"), before="okno")
_add(W, SWATY, W_ANIM, W_COMMENTS, "gwiazdy", gwiazdy(0, 10, 390, 140, 909), before="okno")
_add(W, SWATY, W_ANIM, W_COMMENTS, "nietoperz", ((180, 120, 40, 24, group([postacie.bat(200, 132, 1.0)])), {"type": "wander", "amplitude": 60, "flap": 0.6, "duration": 5600}, "nietoperz"), before="okno")
_add(W, SWATY, W_ANIM, W_COMMENTS, "swietliki", ((20, 380, 340, 40, group([f'<circle cx="{x}" cy="{y}" r="1.6" fill="#FFFFFF" stroke-width="0.6"/>' for x, y in [(40, 400), (220, 404), (330, 396)]])),
                                                 {"type": "wander", "amplitude": 12, "duration": 5000}, "świetliki"), before="przod")

# ======================= ANTEK Z WIESCIA =======================
A = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V80C300 92 200 74 110 86C60 92 30 84 0 90Z" fill="url(#hatch)" stroke="none" opacity="0.4"/>',
     '<path d="M-10 220C80 212 200 216 400 210V440H-10Z" fill="#EDEBE6" stroke-width="2.6"/>']
t += bor(220, -6, 400, 12, seed=910)
t.append(chalupa(200, 340, 160, 70, 56))
t.append('<path d="M-10 360H190M-10 374H190" fill="none" stroke-width="2"/>')
for x in range(-4, 150, 22):
    t.append(f'<path d="M{x - 3} 384V352L{x} 346L{x + 3} 352V384Z" fill="#FFFFFF" stroke-width="1.4"/>')
t.append('<path d="M150 384V346H186V384" fill="none" stroke-width="2"/><path d="M150 352L186 380M150 380L186 352" fill="none" stroke-width="1.4"/>')
A["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
A["brzoza"] = (40, 200, 60, 160, group(['<path d="M68 360C66 300 70 260 66 220" fill="none" stroke-width="5"/><path d="M68 360C66 300 70 260 66 220" fill="none" stroke="#FFFFFF" stroke-width="2.4"/>',
                                         '<path d="M46 250C40 220 70 200 90 224C100 250 70 270 46 250Z" fill="url(#hatch)" stroke-width="1.6"/>']))
A["antek"] = (150, 300, 40, 90, group([postacie.man(168, 388, 1.15, hat=False)]))
A["odchodzi"] = (150, 300, 40, 90, group([postacie.man(168, 388, 1.15, hat=False)]))
A["przod"] = (0, 422, 390, 422, group(PRZOD))
ANTEK = ["tlo", "brzoza", "antek", "odchodzi", "przod"]
A_REVEAL = {"antek": "antek", "odchodzi": "odchodzi"}
A_ANIM = {"brzoza": {"type": "sway", "amplitude": 2, "duration": 3200, "anchorX": 0.5, "anchorY": 1},
          "antek": {"type": "bob", "amplitude": 0.6, "duration": 1200}, "odchodzi": {"type": "slide", "dx": -200, "dy": -40, "duration": 9000, "once": True}}
A_EXTRA = {"antek": {"fadeDuration": 1200, "hideOn": "odchodzi"}, "odchodzi": {"fadeDuration": 200, "hideAfter": 8500}, "przod": {"depth": 1.0}}
A_COMMENTS = {"tlo": "jesień przy chałupie Jaromira: furtka, płot, bór", "brzoza": "brzoza (kołysze się)",
              "antek": "Antek przy furtce, blady (# pokaz: antek)", "odchodzi": "Antek odchodzi bez słowa (# pokaz: odchodzi)", "przod": "pierwszy plan"}
_add(A, ANTEK, A_ANIM, A_COMMENTS, "liscie", ((30, 200, 300, 160, group([f'<path d="M{x} {y}c-3 -3 -1 -7 3 -6c3 -3 7 -1 6 3c2 3 -1 6 -4 5z" fill="#FFFFFF" stroke-width="1"/>' for x, y in [(50, 230), (80, 250), (60, 270), (90, 290)]])),
                                              {"type": "float", "amplitude": 10, "dx": 160, "dy": 120, "duration": 8000}, "liście brzozy spadają"), before="antek")
_add(A, ANTEK, A_ANIM, A_COMMENTS, "wrony", efekty.wrony(160, 100, n=4, k=0.4, seed=911, amplitude=60), before="brzoza")
_add(A, ANTEK, A_ANIM, A_COMMENTS, "dym", ((324, 180, 30, 60, group([dym(338, 228, 50)])), {"type": "sway", "amplitude": 3, "duration": 4600, "anchorX": 0.5, "anchorY": 1}, "dym z komina"), before="brzoza")
_add(A, ANTEK, A_ANIM, A_COMMENTS, "mgla", ((-30, 220, 450, 30, group([f'<path d="{ribbon(-20, 410, 232, 12, 4)}" fill="#EDEBE6" stroke-width="1.2" opacity="0.7"/>'])),
                                            {"type": "drift", "amplitude": 12, "duration": 14000}, "mgła u stóp boru"), before="brzoza")
_add(A, ANTEK, A_ANIM, A_COMMENTS, "chmury", ((60, 30, 280, 50, group(['<path d="M80 66c8 -14 28 -14 34 0c8 -8 24 -2 22 8h-56z" fill="#FFFFFF" stroke-width="1.6"/>', '<path d="M240 56c8 -14 28 -14 34 0c8 -8 24 -2 22 8h-56z" fill="#FFFFFF" stroke-width="1.6"/>'])),
                                              {"type": "drift", "amplitude": 14, "duration": 18000}, "chmury"), before="wrony")

# ======================= SKRAJ BORU — KAPOTA =======================
K = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V440H0Z" fill="url(#hatch)" stroke="none" opacity="0.2"/>']
for (x, h, w) in [(20, 420, 80), (110, 380, 70), (200, 430, 90), (300, 400, 80), (370, 420, 70)]:
    t.append(spruce(x, 330, h, w))
t.append('<path d="M-10 330C80 324 200 328 400 322V440H-10Z" fill="#EDEBE6" stroke-width="2.4"/>')
t.append('<path d="M150 210L240 230" fill="none" stroke-width="4"/>')
rnd = random.Random(912)
for i in range(30):
    t.append(grass(rnd.uniform(0, 390), rnd.uniform(340, 432), 1.0))
t.append('<path d="M290 360C280 330 330 320 340 350C350 330 380 340 372 366Z" fill="url(#hatchDense)" stroke-width="1.6"/>')
K["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
K["kapota"] = (180, 220, 50, 80, group(['<path d="M204 226L188 236L184 290H226L222 236Z" fill="#FFFFFF" stroke-width="2"/><path d="M188 240L184 290H196L198 250Z" fill="url(#hatch)" stroke-width="1"/>'
                                        '<path d="M204 240L200 288" fill="none" stroke-width="2.4"/><path d="M206 244L212 286" fill="none" stroke-width="1"/>']))
K["chlopcy"] = (10, 300, 90, 130, group([postacie.man(40, 430, 1.4, hat=False), postacie.man(80, 430, 1.5, hat=False)]))
K["przod"] = (0, 422, 390, 422, group(PRZOD))
KAPOTA = ["tlo", "kapota", "chlopcy", "przod"]
K_REVEAL = {"kapota": "kapota"}
K_ANIM = {"kapota": {"type": "sway", "amplitude": 4, "duration": 3600, "anchorX": 0.5, "anchorY": 0},
          "chlopcy": {"type": "bob", "amplitude": 0.4, "duration": 2400}}
K_EXTRA = {"kapota": {"fadeDuration": 2000}, "przod": {"depth": 1.0}}
K_COMMENTS = {"tlo": "skraj boru: wielkie świerki, niska gałąź, ciernisty krzak", "kapota": "kapota Franka wywrócona na lewą stronę, powieszona na gałęzi (# pokaz: kapota)",
              "chlopcy": "Jaromir i Antek", "przod": "pierwszy plan"}
_add(K, KAPOTA, K_ANIM, K_COMMENTS, "mgla", ((-30, 300, 450, 40, group([f'<path d="{ribbon(-20, 410, 318, 14, 5)}" fill="#EDEBE6" stroke-width="1.2" opacity="0.7"/>'])),
                                             {"type": "drift", "amplitude": 14, "duration": 12000}, "mgła między pniami"), before="kapota")
_add(K, KAPOTA, K_ANIM, K_COMMENTS, "galezie", ((0, 0, 390, 120, group([f'<path d="M{x} 0l-20 {60 + (x % 3) * 20}M{x} 30l26 30" fill="none" stroke-width="3"/>' for x in (60, 180, 300)])),
                                                {"type": "sway", "amplitude": 1.5, "duration": 4000, "anchorX": 0.5, "anchorY": 0}, "gałęzie nad głową"), before="kapota")
_add(K, KAPOTA, K_ANIM, K_COMMENTS, "liscie", ((40, 200, 300, 140, group([f'<path d="M{x} {y}c-3 -3 -1 -7 3 -6c3 -3 7 -1 6 3c2 3 -1 6 -4 5z" fill="url(#hatch)" stroke-width="1"/>' for x, y in [(60, 220), (180, 200), (280, 240)]])),
                                              {"type": "float", "amplitude": 10, "dx": 80, "dy": 120, "duration": 9000}, "spadające liście"), before="chlopcy")
_s, _so = efekty.sowa(330, 120, 1.0)
_add(K, KAPOTA, K_ANIM, K_COMMENTS, "oczy", _so, before="kapota")
K_COMMENTS["oczy"] = "oczy w głębi boru (mrugają)"
_add(K, KAPOTA, K_ANIM, K_COMMENTS, "wrona", efekty.wrona_siedzi(150, 210, 1.0), before="kapota")

# ======================= IZBA BABKI =======================
B = {}
t = izba_tlo()
t.append(okno(250, 120, 80, 80, fill="#EDEBE6"))
t.append(piec(20, 330, 1.1))
t.append(stol(130, 330, 110))
t.append('<path d="M-10 60H400" fill="none" stroke-width="4"/>')
B["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
B["za_oknem"] = (250, 120, 80, 80, group(bor(196, 252, 332, 9, seed=913)))
B["ziola_0"] = (90, 60, 90, 50, group([ziola(96, 60, 5, 914)]))
B["ziola_1"] = (200, 60, 90, 50, group([ziola(206, 60, 5, 915)]))
B["babka"] = (150, 220, 60, 110, group([sitting(170, 330, 1.6, 1), '<path d="M164 266c-6 -10 4 -16 8 -10" fill="#FFFFFF" stroke-width="1.4"/>']))
B["pyl"] = (170, 250, 60, 50, group([f'<circle cx="{x}" cy="{y}" r="1.2" fill="#FFFFFF" stroke="#000000" stroke-width="0.5"/>' for x, y in [(182, 270), (194, 262), (204, 276), (190, 284), (212, 266)]]))
_s2, _so2 = efekty.sowa(300, 176, 1.0)
B["oczy"] = _so2[0]
B["plomien"] = (50, 300, 20, 24, group([f'<path d="M60 322c-6 -5 -4 -14 0 -20c4 6 6 15 0 20z" fill="{RED}" stroke="none"/>']))
B["przod"] = (0, 422, 390, 422, group(PRZOD_IZBA))
BABKA = ["tlo", "za_oknem", "oczy", "ziola_0", "ziola_1", "plomien", "babka", "pyl", "przod"]
B_REVEAL = {"pyl": "babka", "oczy": "okno"}
B_ANIM = {"ziola_0": {"type": "sway", "amplitude": 2, "duration": 3600, "anchorX": 0.5, "anchorY": 0},
          "ziola_1": {"type": "sway", "amplitude": 2, "duration": 4000, "anchorX": 0.5, "anchorY": 0, "phase": 0.4},
          "babka": {"type": "bob", "amplitude": 0.3, "duration": 3000}, "pyl": {"type": "wander", "amplitude": 8, "duration": 5000},
          "oczy": {"type": "blink", "duration": 4600}, "plomien": {"type": "flame", "amplitude": 0.15, "duration": 800, "anchorX": 0.5, "anchorY": 1}}
B_EXTRA = {"pyl": {"fadeDuration": 2000}, "oczy": {"fadeDuration": 2500}, "plomien": {"noInvert": True}, "przod": {"depth": 1.0}}
B_COMMENTS = {"tlo": "izba babki Hanki: piec, stół, belka pod powałą, okno na bór", "za_oknem": "bór za oknem",
              "ziola_0": "pęki ziół pod powałą (kołyszą się)", "ziola_1": "pęki ziół pod powałą (kołyszą się)", "babka": "babka Hanki przy stole",
              "pyl": "pył zeschłego ziela w palcach (# pokaz: babka)", "oczy": "oczy w borze za oknem (# pokaz: okno)", "plomien": "ogień w piecu",
              "przod": "pierwszy plan"}
_add(B, BABKA, B_ANIM, B_COMMENTS, "smuga", efekty.smuga([(250, 120), (330, 120), (300, 330), (190, 330)], opacity=0.3), before="babka")
_add(B, BABKA, B_ANIM, B_COMMENTS, "dym", ((150, 230, 30, 50, group([dym(164, 276, 40, 0.5)])), {"type": "sway", "amplitude": 3, "duration": 4000, "anchorX": 0.5, "anchorY": 1}, "dym z tlących się ziół"), before="babka")
_add(B, BABKA, B_ANIM, B_COMMENTS, "pylki", efekty.pylki(220, 160, 100, 140, n=8, seed=916), before="babka")

# ======================= KUZNIA WIECZOREM =======================
Z = {}
t = izba_tlo(dark=True)
t.append('<path d="M20 330V230H120V330Z" fill="#FFFFFF" stroke-width="2.6"/><path d="M30 260H110V300H30Z" fill="#000000" stroke-width="2"/>')
t.append('<path d="M40 230V120H100V230" fill="#FFFFFF" stroke-width="2.2"/>')
t.append('<path d="M190 330V300H230V330ZM170 300H250L262 290H158Z" fill="#000000" stroke-width="2"/>')
for i, x in enumerate(range(270, 380, 20)):
    t.append(f'<path d="M{x} 120V{170 + (i % 2) * 14}" fill="none" stroke-width="2.4"/><path d="M{x - 6} {170 + (i % 2) * 14}h12" fill="none" stroke-width="3"/>')
Z["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
Z["ogien"] = (40, 260, 60, 40, group([f'<path d="M70 298c-14 -8 -10 -26 0 -36c10 10 14 28 0 36z" fill="{RED}" stroke="none"/>', f'<path d="M52 298c-6 -4 -4 -12 0 -16c4 4 6 12 0 16z M88 298c-6 -4 -4 -12 0 -16c4 4 6 12 0 16z" fill="{RED}" stroke="none"/>']))
Z["blask"] = (0, 180, 200, 180, group(['<ellipse cx="70" cy="280" rx="90" ry="70" fill="#FFFFFF" stroke="none" opacity="0.3"/>']))
Z["kowal"] = (110, 210, 60, 120, group([postacie.man(140, 330, 1.45, hat=False, arm="l14 -20")]))
Z["jaromir"] = (280, 210, 50, 120, group([postacie.man(304, 330, 1.45, hat=False)]))
Z["kowadlo"] = (180, 280, 70, 24, group(['<path d="M192 296c4 -12 18 -12 22 0" fill="none" stroke="#FFFFFF" stroke-width="3"/>', '<path d="M224 292v-10M219 287h10" fill="none" stroke="#FFFFFF" stroke-width="2.4"/>']))
Z["podkowa"] = (180, 270, 130, 40, group(['<path d="M224 292v-10M219 287h10" fill="none" stroke="#FFFFFF" stroke-width="2.4"/>', '<path d="M290 280c4 -10 16 -10 20 0" fill="none" stroke="#FFFFFF" stroke-width="3"/>']))
Z["krzyzyk"] = (180, 270, 130, 40, group(['<path d="M192 296c4 -12 18 -12 22 0" fill="none" stroke="#FFFFFF" stroke-width="3"/>', '<path d="M296 284v-10M291 279h10" fill="none" stroke="#FFFFFF" stroke-width="2.4"/>']))
Z["przod"] = (0, 422, 390, 422, group(PRZOD_IZBA))
KUZNIA = ["tlo", "blask", "ogien", "kowal", "jaromir", "kowadlo", "podkowa", "krzyzyk", "przod"]
Z_REVEAL = {"kowadlo": "kowadlo", "podkowa": "podkowa", "krzyzyk": "krzyzyk"}
Z_ANIM = {"ogien": {"type": "flame", "amplitude": 0.2, "duration": 700, "anchorX": 0.5, "anchorY": 1}, "blask": {"type": "flicker", "amplitude": 0.5, "duration": 1300},
          "kowal": {"type": "bob", "amplitude": 0.5, "duration": 2600}, "jaromir": {"type": "bob", "amplitude": 0.4, "duration": 3000},
          "kowadlo": {"type": "flicker", "amplitude": 0.5, "duration": 1600}, "podkowa": {"type": "flicker", "amplitude": 0.6, "duration": 1800},
          "krzyzyk": {"type": "flicker", "amplitude": 0.6, "duration": 1800}}
Z_EXTRA = {"ogien": {"noInvert": True}, "blask": {"noInvert": True}, "kowadlo": {"fadeDuration": 1500, "hideOn": "podkowa,krzyzyk"},
           "podkowa": {"fadeDuration": 800}, "krzyzyk": {"fadeDuration": 800}, "przod": {"depth": 1.0}}
Z_COMMENTS = {"tlo": "kuźnia wieczorem: palenisko z okapem, kowadło, narzędzia na ścianie", "ogien": "ogień w palenisku (czerwony)", "blask": "blask paleniska",
              "kowal": "kowal, ojciec Hanki", "jaromir": "Jaromir", "kowadlo": "podkowa i krzyżyk na kowadle (# pokaz: kowadlo)",
              "podkowa": "podkowa w ręku Jaromira, krzyżyk zostaje (# pokaz: podkowa)", "krzyzyk": "krzyżyk w ręku Jaromira, podkowa zostaje (# pokaz: krzyzyk)",
              "przod": "pierwszy plan"}
_add(Z, KUZNIA, Z_ANIM, Z_COMMENTS, "iskry", ((40, 200, 70, 70, group([f'<circle cx="{x}" cy="{y}" r="1.6" fill="#FFFFFF" stroke="{RED}" stroke-width="0.6"/>' for x, y in [(60, 250), (74, 240), (82, 254), (66, 230)]])),
                                             {"type": "rise", "amplitude": 50, "duration": 1400}, "iskry z paleniska"), before="kowal")
Z_EXTRA["iskry"] = {"noInvert": True}
_add(Z, KUZNIA, Z_ANIM, Z_COMMENTS, "dym", ((50, 80, 40, 60, group([dym(70, 130, 50, 0.5)])), {"type": "sway", "amplitude": 3, "duration": 4000, "anchorX": 0.5, "anchorY": 1}, "dym pod okapem"), before="ogien")
_add(Z, KUZNIA, Z_ANIM, Z_COMMENTS, "narzedzia", ((260, 116, 120, 80, group([f'<path d="M{x - 6} {170 + (i % 2) * 14}h12" fill="none" stroke-width="3"/>' for i, x in enumerate(range(270, 380, 20))])),
                                                 {"type": "sway", "amplitude": 1.5, "duration": 3000, "anchorX": 0.5, "anchorY": 0}, "narzędzia kołyszą się na hakach"), before="kowal")
_add(Z, KUZNIA, Z_ANIM, Z_COMMENTS, "zar", ((28, 300, 84, 10, group([f'<circle cx="{x}" cy="304" r="2" fill="{RED}" stroke="none"/>' for x in range(36, 106, 10)])),
                                           {"type": "flicker", "amplitude": 0.3, "duration": 1500}, "żar w palenisku"), before="ogien")
Z_EXTRA["zar"] = {"noInvert": True}

# ======================= DROGA DO SLUBU =======================
S = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V60C300 70 200 54 110 64C60 70 30 62 0 68Z" fill="url(#hatch)" stroke="none" opacity="0.4"/>',
     '<path d="M-10 230C80 222 200 226 400 220V440H-10Z" fill="#EDEBE6" stroke-width="2.6"/>']
t += bor(232, -6, 230, 11, seed=917)
t.append('<path d="M240 222C280 196 330 190 400 196V222Z" fill="#EDEBE6" stroke-width="2"/>')
t.append(kosciolek(310, 202, 1.0))
t.append('<path d="M-10 340C80 330 200 300 280 270C320 254 360 240 400 236V252C360 258 330 270 290 286C210 316 100 350 -10 362Z" fill="#FFFFFF" stroke-width="2"/>')
S["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
# wozy ustawione tak, by po przejezdzie (dx 300, dy -60) staly kolami na drodze, ktora wznosi sie ku koscielowi
S["wozy"] = (-160, 284, 220, 92, group([woz_weselny(-150, 360, 0.8, music=True), woz_weselny(-80, 340, 0.75), woz_weselny(-14, 319, 0.7)]))
S["przod"] = (0, 422, 390, 422, group(PRZOD))
SLUB = ["tlo", "wozy", "przod"]
S_REVEAL = {"wozy": "wozy"}
S_ANIM = {"wozy": {"type": "slide", "dx": 300, "dy": -60, "duration": 20000, "once": True}}
S_EXTRA = {"wozy": {"fadeDuration": 1500}, "przod": {"depth": 1.0}}
S_COMMENTS = {"tlo": "jesienny poranek: droga pod borem do Bukowca, kościółek na wzgórzu", "wozy": "trzy wozy weselne jadą do kościoła (# pokaz: wozy)", "przod": "pierwszy plan"}
_add(S, SLUB, S_ANIM, S_COMMENTS, "chmury", ((40, 50, 300, 40, group(['<path d="M60 82c8 -14 28 -14 34 0c8 -8 24 -2 22 8h-56z" fill="#FFFFFF" stroke-width="1.6"/>', '<path d="M220 70c8 -14 28 -14 34 0c8 -8 24 -2 22 8h-56z" fill="#FFFFFF" stroke-width="1.6"/>'])),
                                             {"type": "drift", "amplitude": 14, "duration": 18000}, "chmury"), before="wozy")
_add(S, SLUB, S_ANIM, S_COMMENTS, "wrony", efekty.wrony(120, 120, n=4, k=0.4, seed=918, amplitude=60), before="wozy")
_add(S, SLUB, S_ANIM, S_COMMENTS, "mgla", ((-30, 226, 300, 30, group([f'<path d="{ribbon(-20, 260, 240, 12, 4)}" fill="#EDEBE6" stroke-width="1.2" opacity="0.7"/>'])),
                                           {"type": "drift", "amplitude": 12, "duration": 12000}, "mgła pod borem"), before="wozy")
_add(S, SLUB, S_ANIM, S_COMMENTS, "liscie", ((60, 260, 300, 120, group([f'<path d="M{x} {y}c-3 -3 -1 -7 3 -6c3 -3 7 -1 6 3c2 3 -1 6 -4 5z" fill="#FFFFFF" stroke-width="1"/>' for x, y in [(80, 280), (200, 300), (300, 270)]])),
                                             {"type": "float", "amplitude": 10, "dx": 120, "dy": 60, "duration": 8000}, "jesienne liście"), before="przod")
_add(S, SLUB, S_ANIM, S_COMMENTS, "dzwon", ((340, 150, 20, 20, group(['<path d="M346 160q4 -6 8 0" fill="none" stroke-width="1.2"/>'])),
                                            {"type": "flicker", "amplitude": 0, "duration": 1200}, "dzwonek w kościółku"), before="wozy")
_add(S, SLUB, S_ANIM, S_COMMENTS, "trawa", ((0, 380, 390, 50, group([grass(x, 430, 1.4) for x in range(6, 390, 18)])),
                                            {"type": "sway", "amplitude": 2, "duration": 2800, "anchorX": 0.5, "anchorY": 1}, "trawa przy drodze"), before="przod")

# ======================= NOC WESELA =======================
N = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V250H0Z" fill="url(#hatchNight)" stroke="none" opacity="0.85"/>',
     '<path d="M-10 250C80 242 200 246 400 240V440H-10Z" fill="url(#hatch)" stroke-width="2.4" opacity="0.6"/>']
t += bor(250, 230, 400, 11, seed=919)
t.append(chalupa(20, 360, 170, 76, 60, lit=True))
t.append(pniak(250, 268, 0.9))
N["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
N["okna"] = (40, 290, 40, 30, group(['<path d="M47 309H84V334H47Z" fill="#FFFFFF" stroke="none"/>']))
N["tance"] = (44, 304, 44, 30, group(['<circle cx="54" cy="318" r="3" fill="#000000"/><circle cx="64" cy="320" r="3" fill="#000000"/><circle cx="76" cy="317" r="3" fill="#000000"/>']))
N["oczepiny"] = (44, 304, 44, 30, group(['<circle cx="64" cy="320" r="3.4" fill="#000000"/><path d="M60 316q4 -6 8 0z" fill="#FFFFFF" stroke-width="0.8"/>']))
N["drzwi"] = (130, 300, 40, 60, group(['<path d="M132 360V307H160V360Z" fill="#FFFFFF" stroke="none" opacity="0.8"/>']))
RIG_N = starzec_rig(300, 272, 0.13, "st")
art.install_rig(N, RIG_N)
STAR = art.rig_names(RIG_N)
N["kolacz"] = (240, 254, 24, 12, group(['<ellipse cx="250" cy="260" rx="7" ry="3" fill="#FFFFFF" stroke-width="1.2"/><path d="M258 258v-4" fill="none" stroke-width="1"/>']))
N["skinienie"] = (280, 200, 50, 70, group([f'<path d="{ribbon(282, 326, 236, 22, 6)}" fill="#EDEBE6" stroke-width="1" opacity="0.7"/>']))
N["mgla_gesta"] = (180, 200, 220, 90, group([f'<path d="{ribbon(180, 400, 222 + i * 22, 16, 5)}" fill="#EDEBE6" stroke-width="1" opacity="0.8"/>' for i in range(3)]))
N["szron_skraj"] = (260, 262, 70, 30, group([f'<path d="M{x - 3} {y}h6M{x} {y - 3}v6" fill="none" stroke="#FFFFFF" stroke-width="1.2"/>' for x, y in [(268, 284), (284, 278), (298, 272), (312, 268)]]))
N["rygiel"] = (130, 300, 40, 60, group(['<path d="M132 360V307H160V360Z" fill="#000000" stroke="none"/>']))
N["przod"] = (0, 422, 390, 422, group(PRZOD))
NOC = ["tlo", "okna", "tance", "oczepiny", "drzwi", "rygiel"] + STAR + ["kolacz", "skinienie", "mgla_gesta", "szron_skraj", "przod"]
N_REVEAL = {"oczepiny": "oczepiny", **{n: "starzec" for n in STAR}, "kolacz": "kolacz", "skinienie": "skinienie", "mgla_gesta": "mgla", "szron_skraj": "odszedl", "rygiel": "rygiel"}
N_ANIM = {"okna": {"type": "flicker", "amplitude": 0.6, "duration": 900}, "tance": {"type": "bob", "amplitude": 1.2, "duration": 500},
          "oczepiny": {"type": "bob", "amplitude": 0.6, "duration": 800}, "drzwi": {"type": "flicker", "amplitude": 0.6, "duration": 1100},
          "skinienie": {"type": "rise", "amplitude": 20, "duration": 4000}, "mgla_gesta": {"type": "drift", "amplitude": 10, "duration": 6000},
          "kolacz": {"type": "flicker", "amplitude": 0.7, "duration": 2000}}
N_ANIM.update(art.rig_anims(RIG_N))
N_EXTRA = {"okna": {"noInvert": True}, "drzwi": {"noInvert": True}, "tance": {"hideOn": "oczepiny", "fadeDuration": 600}, "oczepiny": {"fadeDuration": 800},
           **{n: {"fadeDuration": 3000, "hideOn": "skinienie,odszedl"} for n in STAR}, "kolacz": {"fadeDuration": 1500, "hideOn": "skinienie"},
           "skinienie": {"hideAfter": 4000, "fadeDuration": 1500}, "mgla_gesta": {"fadeDuration": 3000, "hideOn": "odszedl"},
           "szron_skraj": {"fadeDuration": 2500}, "rygiel": {"fadeDuration": 600}, "przod": {"depth": 1.0}}
N_COMMENTS = {"tlo": "noc wesela: rozświetlona chałupa, pniak i bór we mgle", "okna": "rozświetlone okno izby", "tance": "tańczący w oknie",
              "oczepiny": "oczepiny w oknie — Hanka w czepcu (# pokaz: oczepiny)", "drzwi": "uchylone drzwi, światło z sieni",
              "kolacz": "kołacz na pniaku (# pokaz: kolacz)", "skinienie": "starzec znika we mgle (# pokaz: skinienie)",
              "mgla_gesta": "mgła gęstnieje (# pokaz: mgla)", "szron_skraj": "pusty skraj lasu, szron w miejscu, gdzie stał starzec (# pokaz: odszedl)",
              "rygiel": "drzwi zaryglowane — sień ciemnieje (# pokaz: rygiel)", "przod": "pierwszy plan",
              **{n: f"starzec w kapeluszu z mchu — {n[3:]} (rysunek autora; # pokaz: starzec)" for n in STAR}}
_add(N, NOC, N_ANIM, N_COMMENTS, "gwiazdy", gwiazdy(0, 10, 390, 150, 920), before="okna")
_add(N, NOC, N_ANIM, N_COMMENTS, "mgla", ((-30, 246, 450, 36, group([f'<path d="{ribbon(-20, 410, 262, 14, 4)}" fill="#EDEBE6" stroke-width="1.2" opacity="0.6"/>'])),
                                          {"type": "drift", "amplitude": 14, "duration": 14000}, "mgła nad polem"), before="okna")
_add(N, NOC, N_ANIM, N_COMMENTS, "dym", ((134, 180, 30, 60, group([dym(148, 230, 50, 0.5)])), {"type": "sway", "amplitude": 3, "duration": 4600, "anchorX": 0.5, "anchorY": 1}, "dym z komina"), before="okna")
_add(N, NOC, N_ANIM, N_COMMENTS, "iskry", ((134, 196, 30, 40, group([f'<circle cx="{x}" cy="{y}" r="1.2" fill="#FFFFFF" stroke="{RED}" stroke-width="0.5"/>' for x, y in [(146, 220), (152, 210)]])),
                                           {"type": "rise", "amplitude": 30, "duration": 1800}, "iskry z komina"), before="okna")
_add(N, NOC, N_ANIM, N_COMMENTS, "swiatlo", ((20, 360, 200, 60, group(['<path d="M47 360L20 420H120L84 360Z" fill="#FFFFFF" stroke="none" opacity="0.35"/>'])),
                                             {"type": "flicker", "amplitude": 0.6, "duration": 900}, "światło z okna na szronie"), before="przod")
N_EXTRA["swiatlo"] = {"noInvert": True}

# ======================= PIERWSZY RANEK =======================
R = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V120H0Z" fill="url(#hatch)" stroke="none" opacity="0.3"/>',
     '<path d="M-10 230C80 222 200 226 400 220V440H-10Z" fill="#FFFFFF" stroke-width="2.6"/>']
t += bor(230, -6, 400, 11, seed=921)
t.append(chalupa(120, 350, 200, 80, 60))
t.append('<path d="M-10 380H110M-10 394H110" fill="none" stroke-width="2"/>')
for x in range(-4, 110, 22):
    t.append(f'<path d="M{x - 3} 404V372L{x} 366L{x + 3} 372V404Z" fill="#FFFFFF" stroke-width="1.4"/>')
R["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
R["slonce"] = (40, 200, 60, 40, group(['<path d="M46 232A24 24 0 0 1 94 232Z" fill="#FFFFFF" stroke-width="2"/>']))
R["plama"] = (166, 350, 70, 24, group(['<ellipse cx="200" cy="362" rx="32" ry="8" fill="url(#hatchDense)" stroke-width="1.2" opacity="0.75"/>']))
R["przod"] = (0, 422, 390, 422, group(PRZOD))
RANEK = ["tlo", "slonce", "plama", "przod"]
R_REVEAL = {"plama": "tropy"}
R_ANIM = {"slonce": {"type": "slide", "dx": 0, "dy": -30, "duration": 40000, "once": True}}
R_EXTRA = {"plama": {"fadeDuration": 4000}, "przod": {"depth": 1.0}}
R_COMMENTS = {"tlo": "świt po weselu: szron, nowa izba dobudowana do chałupy, płot, bór", "slonce": "słońce wschodzi",
              "plama": "stopiony szron pod oknem (# pokaz: tropy)", "przod": "pierwszy plan"}
_add(R, RANEK, R_ANIM, R_COMMENTS, "szron", efekty.iskry(0, 240, 390, 180, n=20, seed=922, duration=2600), before="plama")
R_COMMENTS["szron"] = "szron skrzy się w słońcu"
_add(R, RANEK, R_ANIM, R_COMMENTS, "dym", ((260, 180, 30, 60, group([dym(274, 230, 50)])), {"type": "sway", "amplitude": 3, "duration": 4600, "anchorX": 0.5, "anchorY": 1}, "dym z komina"), before="plama")
_add(R, RANEK, R_ANIM, R_COMMENTS, "wrony", efekty.wrony(160, 120, n=3, k=0.4, seed=923, amplitude=50), before="plama")
_add(R, RANEK, R_ANIM, R_COMMENTS, "mgla", ((-30, 226, 450, 30, group([f'<path d="{ribbon(-20, 410, 240, 12, 4)}" fill="#EDEBE6" stroke-width="1.2" opacity="0.7"/>'])),
                                            {"type": "drift", "amplitude": 12, "duration": 14000}, "poranna mgła pod borem"), before="plama")
_add(R, RANEK, R_ANIM, R_COMMENTS, "wrona", efekty.wrona_siedzi(70, 366, 1.0), before="przod")

BACKGROUNDS = {"glodna_zima": ("bg_glodnazima", G, ZIMA, G_ANIM, G_REVEAL, G_EXTRA, G_COMMENTS, "głodna zima"),
               "piec_lat": ("bg_pieclat", P, PIEC, P_ANIM, P_REVEAL, P_EXTRA, P_COMMENTS, "pięć lat"),
               "swaty": ("bg_swaty", W, SWATY, W_ANIM, W_REVEAL, W_EXTRA, W_COMMENTS, "swaty"),
               "antek_wiesc": ("bg_antek", A, ANTEK, A_ANIM, A_REVEAL, A_EXTRA, A_COMMENTS, "Antek z wieścią"),
               "skraj_kapota": ("bg_kapota", K, KAPOTA, K_ANIM, K_REVEAL, K_EXTRA, K_COMMENTS, "skraj boru — kapota"),
               "izba_babki": ("bg_izbababki", B, BABKA, B_ANIM, B_REVEAL, B_EXTRA, B_COMMENTS, "izba babki Hanki"),
               "kuznia_wieczor": ("bg_kuznia", Z, KUZNIA, Z_ANIM, Z_REVEAL, Z_EXTRA, Z_COMMENTS, "kuźnia"),
               "slub_droga": ("bg_slubdroga", S, SLUB, S_ANIM, S_REVEAL, S_EXTRA, S_COMMENTS, "droga do ślubu"),
               "wesele_noc": ("bg_weselenoc", N, NOC, N_ANIM, N_REVEAL, N_EXTRA, N_COMMENTS, "noc wesela"),
               "pierwszy_ranek": ("bg_ranek", R, RANEK, R_ANIM, R_REVEAL, R_EXTRA, R_COMMENTS, "pierwszy ranek")}

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
