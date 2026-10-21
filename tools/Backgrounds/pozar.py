# Generator tel rozdzialu czternastego (Kapliczki płoną):
#   paliki_pedy    — upalne lato: paliki pod droge od tartaku pod bor; pedy na palikach (# pokaz: pedy), rzad mlodych swierkow na miedzy (# pokaz: swierki)
#   karczma_zeszyt — zebranie pod karczma: bryczka Urbaniaka, majster, gajowy, chlopi; zeszyt (# pokaz: zeszyt), krowa wyprowadzana z obory
#                    (# pokaz: krowa), swierk przewraca sie na przesiece (# pokaz: swierk), noc i paliki wrzucane do bagna (# pokaz: noc)
#   noc_ognia      — noc, blyskawice bez grzmotu; plona kapliczki pod borem (# pokaz: ogien), plonie tartak (# pokaz: tartak);
#                    gaszenie kapliczki (# pokaz: kapliczka), Szymon wywleczony ze stróżówki (# pokaz: szymon), ludzie z wiadrami (# pokaz: wiadra)
#   pogorzelisko   — szary ranek: zgliszcza tartaku, ludzie, Urbaniak z zeszytem; las pod samymi plotami (# pokaz: las),
#                    plonace kartki zeszytu (# pokaz: zeszyt_plonie), komornik z wozem (# pokaz: komornik)
#   zima_mlodnik   — pierwszy snieg przy mlodniku pod borem, osmalony slup kapliczki; nowy swiatek (# pokaz: swiatek), brzozowy krzyzyk (# pokaz: krzyzyk),
#                    luczywo w oknie (# pokaz: luczywo), chmura iskier nad mlodnikiem w Wigilie (# pokaz: iskry)
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/pozar.py src/LittleVillage/Resources/Images
#   python3 tools/Backgrounds/pozar.py --master <tlo> [wszystko] > podglad.svg
import sys, random
from common import *
import postacie, efekty
from efekty import add as _add
from licho import bor, okno, PRZOD
from wesele import chalupa, dym, staruszek
from czuwanie import kon, plomyk, krzyz, z_siekiera

RED = "#A8101A"
SNIEG = ['<path d="M-10 432H400V844H-10Z" fill="#FFFFFF" stroke="none"/>']
NOC = '<rect width="390" height="440" fill="url(#hatchNight)" stroke="none" opacity="0.8"/>'


def tlusty(x, y, k=1.0):
    """Pan Urbaniak: tegi, w kapeluszu i plaszczu."""
    P = lambda dx, dy: f"{x + dx * k:.1f} {y + dy * k:.1f}"
    return (f'<g stroke-width="2"><path d="M{P(-6, 0)}V{y - 26 * k:.1f}H{x - 1 * k:.1f}V{y:.1f}ZM{P(6, 0)}V{y - 26 * k:.1f}H{x + 1 * k:.1f}V{y:.1f}Z" fill="#000000"/>'
            f'<path d="M{P(-16, -22)}C{P(-20, -48)} {P(-12, -62)} {P(0, -62)}C{P(12, -62)} {P(20, -48)} {P(16, -22)}Z" fill="#000000"/>'
            f'<path d="M{P(-6, -44)}C{P(-2, -40)} {P(4, -40)} {P(8, -44)}" fill="none" stroke="#FFFFFF" stroke-width="1.4"/>'
            f'<circle cx="{x}" cy="{y - 69 * k:.1f}" r="{7 * k:.1f}" fill="#000000"/>'
            f'<path d="M{P(-12, -74)}H{x + 12 * k:.1f}L{P(7, -84)}H{x - 7 * k:.1f}Z" fill="#000000"/></g>')


def kapliczka(x, base, k=1.0, burnt=False):
    if burnt:
        return (f'<path d="M{x - 2.5 * k:.1f} {base}V{base - 30 * k:.1f}L{x} {base - 36 * k:.1f}L{x + 2.5 * k:.1f} {base - 28 * k:.1f}V{base}Z" fill="#000000"/>'
                f'<path d="M{x - 8 * k:.1f} {base}l3 -8M{x + 7 * k:.1f} {base}l-2 -6" fill="none" stroke-width="{2 * k:.1f}"/>')
    return (f'<path d="M{x - 2.5 * k:.1f} {base}V{base - 34 * k:.1f}H{x + 2.5 * k:.1f}V{base}Z" fill="#000000"/>'
            f'<path d="M{x - 11 * k:.1f} {base - 34 * k:.1f}H{x + 11 * k:.1f}V{base - 56 * k:.1f}H{x - 11 * k:.1f}Z" fill="#FFFFFF" stroke-width="{2 * k:.1f}"/>'
            f'<path d="M{x - 14 * k:.1f} {base - 56 * k:.1f}L{x} {base - 68 * k:.1f}L{x + 14 * k:.1f} {base - 56 * k:.1f}Z" fill="url(#hatchDense)" stroke-width="{1.8 * k:.1f}"/>'
            f'<circle cx="{x}" cy="{base - 46 * k:.1f}" r="{3.2 * k:.1f}" fill="#000000"/>')


def palik(x, base, h=18, k=1.0):
    return f'<path d="M{x - 1.6 * k:.1f} {base}V{base - h * k:.1f}L{x} {base - (h + 3) * k:.1f}L{x + 1.6 * k:.1f} {base - h * k:.1f}V{base}Z" fill="#FFFFFF" stroke-width="{1.2 * k:.1f}"/>'


def pedy(x, base, h=18, k=1.0):
    t = base - h * k
    return (f'<path d="M{x} {t:.1f}c-2 -4 -6 -5 -8 -4c2 3 5 4 8 4zM{x} {t + 3 * k:.1f}c2 -4 6 -5 8 -4c-2 3 -5 4 -8 4z" fill="#FFFFFF" stroke-width="1"/>'
            f'<path d="M{x} {t:.1f}v-5" fill="none" stroke-width="1"/>')


def krowa(x, y, k=1.0, facing=1):
    f = facing
    P = lambda dx, dy: f"{x + dx * f * k:.1f} {y + dy * k:.1f}"
    return (f'<g stroke-width="1.8"><path d="M{P(-22, -14)}C{P(-24, -28)} {P(14, -30)} {P(18, -20)}L{P(28, -24)}L{P(32, -16)}L{P(24, -10)}C{P(18, -6)} {P(-16, -6)} {P(-22, -14)}Z" fill="#FFFFFF"/>'
            f'<path d="M{P(-8, -24)}c4 4 10 4 12 -2M{P(-18, -18)}c3 3 7 2 8 -2" fill="none" stroke-width="1"/>'
            f'<path d="M{P(-18, -10)}V{y:.1f}M{P(-12, -9)}V{y:.1f}M{P(10, -9)}V{y:.1f}M{P(16, -10)}V{y:.1f}" fill="none" stroke-width="{2.6 * k:.1f}"/>'
            f'<path d="M{P(27, -24)}l-2 -5M{P(30, -23)}l3 -4" fill="none" stroke-width="1.2"/><path d="M{P(-22, -16)}c-6 2 -6 10 -4 14" fill="none" stroke-width="1.2"/></g>')


def ogien(x, base, s=1.0):
    return (plomyk(x - 6 * s, base, 1.1 * s) + plomyk(x + 5 * s, base - 2 * s, 1.3 * s) + plomyk(x, base - 6 * s, 1.6 * s))


def iskry_svg(x, y, w, h, n, seed, color="#FFFFFF"):
    rnd = random.Random(seed)
    return group([f'<circle cx="{rnd.uniform(x, x + w):.0f}" cy="{rnd.uniform(y, y + h):.0f}" r="{rnd.uniform(1, 2):.1f}" fill="{color}" stroke="none"/>' for _ in range(n)])


def szopa(x, base, w=120, h=60, burnt=False):
    if burnt:
        g = [f'<path d="M{x} {base}H{x + w}" fill="none" stroke-width="2.4"/>']
        for i, (dx, hh, lean) in enumerate([(6, 44, -6), (30, 30, 4), (64, 52, -3), (92, 26, 8), (114, 38, -4)]):
            g.append(f'<path d="M{x + dx} {base}l{lean} {-hh}" fill="none" stroke-width="5"/>')
        g.append(f'<path d="M{x + 10} {base - 6}L{x + 70} {base - 18}L{x + 110} {base - 4}" fill="none" stroke-width="4"/>')
        return "".join(g)
    return (f'<path d="M{x} {base}V{base - h}H{x + w}V{base}Z" fill="#FFFFFF" stroke-width="2.4"/>'
            f'<path d="M{x - 10} {base - h + 2}L{x + w * 0.3:.0f} {base - h - 34}H{x + w * 0.85:.0f}L{x + w + 10} {base - h + 2}Z" fill="url(#hatch)" stroke-width="2.4"/>'
            f'<path d="M{x + w * 0.4:.0f} {base}V{base - h * 0.62:.0f}H{x + w * 0.7:.0f}V{base}Z" fill="#000000"/>')


def stroz(x, base):
    return (f'<path d="M{x} {base}V{base - 34}H{x + 30}V{base}Z" fill="#FFFFFF" stroke-width="2"/><path d="M{x - 4} {base - 32}L{x + 15} {base - 46}L{x + 34} {base - 32}Z" fill="url(#hatchDense)" stroke-width="1.8"/>'
            f'<path d="M{x + 18} {base}V{base - 22}H{x + 27}V{base}Z" fill="#000000"/><path d="M{x + 4} {base - 24}h8v8h-8z" fill="#000000" stroke-width="1.2"/>')


def lato_tlo(horizon=210):
    t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', f'<path d="M0 0H390V{horizon - 60}H0Z" fill="url(#hatch)" stroke="none" opacity="0.18"/>',
         f'<path d="M-10 {horizon}C80 {horizon - 6} 200 {horizon - 2} 400 {horizon - 8}V440H-10Z" fill="#EDEBE6" stroke-width="2.6"/>']
    return t


# ======================= PALIKI Z PEDAMI =======================
A = {}
t = lato_tlo()
t += bor(208, 150, 400, 12, seed=1501)
t.append('<circle cx="80" cy="64" r="22" fill="#FFFFFF" stroke-width="2.6"/>')
t.append(chalupa(10, 330, 120, 66, 52))
t.append('<path d="M20 214V186H70V214Z" fill="#FFFFFF" stroke-width="1.6"/><path d="M14 188L45 170L76 188Z" fill="url(#hatch)" stroke-width="1.6"/>')
for i in range(5):
    t.append(f'<path d="M{150 + i * 50} {300 - i * 18}c10 -3 30 -3 40 0" fill="none" stroke-width="1"/>')
STAKES = [(90 + i * 22, 300 - i * 7.5, 0.6 + (12 - i) * 0.08) for i in range(13)]
t += [palik(x, y, 18, k) for x, y, k in STAKES]
t.append('<path d="M380 250C330 262 280 268 230 264" fill="none" stroke-width="1.2" stroke-dasharray="6 4"/>')
A["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
A["pedy"] = (60, 180, 340, 140, group([pedy(x, y, 18, k) for x, y, k in STAKES]))
A["swierki"] = (230, 240, 160, 40, group([spruce(240 + i * 14, 278 - i * 1.5, 26, 10) for i in range(11)]))
A["przod"] = (0, 422, 390, 422, group(PRZOD))
PAL = ["tlo", "pedy", "swierki", "przod"]
A_REVEAL = {"pedy": "pedy", "swierki": "swierki"}
A_ANIM = {"pedy": {"type": "sway", "amplitude": 3, "duration": 2400, "anchorX": 0.5, "anchorY": 1}, "swierki": {"type": "sway", "amplitude": 1, "duration": 4000, "anchorX": 0.5, "anchorY": 1}}
A_EXTRA = {"pedy": {"fadeDuration": 2500}, "swierki": {"fadeDuration": 3000}, "przod": {"depth": 1.0}}
A_COMMENTS = {"tlo": "upalne lato: chałupa, paliki pod drogę od tartaku pod bór", "pedy": "zielone pędy na palikach (# pokaz: pedy)",
              "swierki": "rząd młodych świerków na miedzy (# pokaz: swierki)", "przod": "pierwszy plan"}
_add(A, PAL, A_ANIM, A_COMMENTS, "zar", ((0, 150, 390, 50, group([f'<path d="{ribbon(-20, 410, 170, 8, 3)}" fill="#FFFFFF" stroke="none" opacity="0.35"/>'])),
                                         {"type": "drift", "amplitude": 10, "duration": 5000}, "drżące od upału powietrze"), before="pedy")
_add(A, PAL, A_ANIM, A_COMMENTS, "wrony", efekty.wrony(170, 110, n=3, k=0.4, seed=1502, amplitude=50), before="pedy")
_add(A, PAL, A_ANIM, A_COMMENTS, "dym", ((30, 140, 30, 50, group([dym(44, 186, 40, 0.4)])), {"type": "sway", "amplitude": 3, "duration": 4600, "anchorX": 0.5, "anchorY": 1}, "dym znad tartaku"), before="pedy")
_add(A, PAL, A_ANIM, A_COMMENTS, "motyle", ((150, 330, 160, 70, group([postacie.butterfly(180, 360, 0.8), postacie.butterfly(270, 350, 0.7)])),
                                            {"type": "wander", "amplitude": 14, "flap": 0.4, "duration": 4000}, "motyle"), before="przod")
_add(A, PAL, A_ANIM, A_COMMENTS, "trawa", ((0, 384, 390, 46, group([grass(x, 430, 1.3) for x in range(6, 390, 20)])),
                                           {"type": "sway", "amplitude": 1.5, "duration": 3000, "anchorX": 0.5, "anchorY": 1}, "wyschnięta trawa"), before="przod")

# ======================= ZEBRANIE POD KARCZMA =======================
K = {}
t = lato_tlo(220)
t += bor(218, 240, 400, 12, seed=1503)
t.append(chalupa(20, 300, 190, 90, 60))
t.append('<path d="M60 238h60v-12h-60z" fill="#FFFFFF" stroke-width="1.4"/><path d="M70 232h40" fill="none" stroke-width="1"/>')
K["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
K["bryczka"] = (220, 270, 170, 90, group([kon(352, 346, 1.0, 1), '<path d="M236 330H306L300 312H244Z" fill="#FFFFFF" stroke-width="2"/>',
                                          '<circle cx="252" cy="338" r="12" fill="none" stroke-width="2.2"/><circle cx="296" cy="338" r="12" fill="none" stroke-width="2.2"/>',
                                          '<path d="M306 320L330 326" fill="none" stroke-width="2"/>', tlusty(270, 318, 0.75), postacie.man(244, 316, 0.62, hat=True),
                                          postacie.man(292, 316, 0.62, hat=True), '<path d="M284 288L304 272" fill="none" stroke-width="2"/>']))
K["chlopi"] = (10, 320, 220, 100, group([staruszek(40, 420, 1.2), postacie.man(80, 420, 1.15, hat=False), postacie.man(120, 422, 1.1, hat=True, bundle=True),
                                         postacie.man(160, 420, 1.05, hat=True), postacie.woman(196, 420, 1.0)]))
K["zeszyt"] = (262, 294, 20, 14, group(['<path d="M264 304l6 -6l8 2l-6 6z" fill="#FFFFFF" stroke-width="1.2"/>']))
K["krowa"] = (0, 0, 390, 440, group(['<rect width="390" height="440" fill="#EDEBE6" stroke="none" opacity="0.7"/>', krowa(230, 404, 2.2, -1), postacie.man(140, 404, 1.4, hat=True, arm="l30 -2")]))
K["swierk"] = (0, 0, 390, 440, group(['<rect width="390" height="440" fill="#EDEBE6" stroke="none" opacity="0.7"/>',
                                      '<g transform="rotate(-38 200 410)">' + spruce(200, 410, 220, 70) + '</g>', postacie.man(110, 412, 1.2, hat=False)]))
K["noc"] = (0, 0, 390, 440, group([NOC, postacie.man(150, 404, 1.2, hat=False), postacie.man(200, 404, 1.2, hat=True),
                                   '<path d="M164 360l20 -40M216 360l16 -36" fill="none" stroke-width="2.4"/>', '<circle cx="330" cy="60" r="14" fill="#FFFFFF" stroke-width="2"/>']))
K["przod"] = (0, 422, 390, 422, group(PRZOD))
KAR = ["tlo", "bryczka", "zeszyt", "chlopi", "krowa", "swierk", "noc", "przod"]
K_REVEAL = {"zeszyt": "zeszyt", "krowa": "krowa", "swierk": "swierk", "noc": "noc"}
K_ANIM = {"bryczka": {"type": "bob", "amplitude": 0.4, "duration": 1200}, "chlopi": {"type": "bob", "amplitude": 0.5, "duration": 1800},
          "zeszyt": {"type": "flicker", "amplitude": 0.6, "duration": 1600}, "krowa": {"type": "slide", "dx": -40, "dy": 0, "duration": 8000, "once": True},
          "swierk": {"type": "sway", "amplitude": 2, "duration": 800, "anchorX": 0.5, "anchorY": 1}}
K_EXTRA = {"zeszyt": {"fadeDuration": 1200}, "krowa": {"fadeDuration": 2000}, "swierk": {"fadeDuration": 1500}, "noc": {"fadeDuration": 2500}, "przod": {"depth": 1.0}}
K_COMMENTS = {"tlo": "lato: karczma, bór", "bryczka": "bryczka: Urbaniak, majster, gajowy z dubeltówką", "chlopi": "chłopi: stary Staś, kowal, Antek z synkiem",
              "zeszyt": "zeszyt długów w ręku Urbaniaka (# pokaz: zeszyt)", "krowa": "majster wyprowadza krowę (# pokaz: krowa)",
              "swierk": "świerk przewraca się na przesiece (# pokaz: swierk)", "noc": "noc: Jaromir i Antek z palikami (# pokaz: noc)", "przod": "pierwszy plan"}
_add(K, KAR, K_ANIM, K_COMMENTS, "kurz", efekty.pylki(220, 330, 170, 40, n=8, seed=1504, duration=5000), before="chlopi")
K_COMMENTS["kurz"] = "kurz spod kół bryczki"
_add(K, KAR, K_ANIM, K_COMMENTS, "wrony", efekty.wrony(160, 100, n=3, k=0.4, seed=1505, amplitude=50), before="bryczka")
_add(K, KAR, K_ANIM, K_COMMENTS, "dym", ((150, 130, 30, 60, group([dym(164, 180, 50)])), {"type": "sway", "amplitude": 3, "duration": 4600, "anchorX": 0.5, "anchorY": 1}, "dym z karczmy"), before="bryczka")
_add(K, KAR, K_ANIM, K_COMMENTS, "ogon", ((372, 316, 20, 30, group(['<path d="M376 322c4 8 4 16 0 22" fill="none" stroke-width="2"/>'])),
                                          {"type": "sway", "amplitude": 10, "duration": 1400, "anchorX": 0.2, "anchorY": 0.1}, "ogon konia"), before="zeszyt")

# ======================= NOC OGNIA =======================
N = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', NOC]
t += bor(210, -6, 400, 12, seed=1506)
t.append('<path d="M-10 212C80 206 200 210 400 204V440H-10Z" fill="url(#hatchNight)" stroke-width="2.6" opacity="0.9"/>')
t.append('<path d="M250 300C290 296 340 300 400 296V310C340 314 290 312 250 312Z" fill="#000000" stroke="none"/>')
t += [kapliczka(x, b, k) for x, b, k in [(60, 238, 0.7), (150, 230, 0.6), (220, 232, 0.55)]]
t.append(szopa(250, 296, 110, 52))
t.append(stroz(222, 300))
N["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
N["blysk"] = (0, 0, 390, 210, group(['<path d="M0 0H390V210H0Z" fill="#FFFFFF" stroke="none" opacity="0.5"/>']))
N["ogien"] = (40, 170, 200, 70, group([ogien(x, b - 40 * k, k * 1.3) for x, b, k in [(60, 238, 0.7), (150, 230, 0.6), (220, 232, 0.55)]]))
N["tartak"] = (230, 160, 160, 140, group([ogien(275, 250, 2.6), ogien(315, 246, 3.0), ogien(345, 252, 2.4)]))
N["luna"] = (180, 120, 210, 190, group(['<ellipse cx="300" cy="240" rx="100" ry="80" fill="#FFFFFF" stroke="none" opacity="0.3"/>']))
N["kapliczka"] = (20, 160, 90, 120, group([postacie.man(84, 262, 1.0, hat=False, arm="l-12 -14"), '<path d="M62 220c-2 -10 6 -16 2 -26" fill="none" stroke="#FFFFFF" stroke-width="1.4"/>']))
N["szymon"] = (180, 250, 90, 80, group([postacie.man(200, 320, 1.1, hat=False, arm="l18 8"), '<path d="M216 314L252 320L256 312" fill="#000000" stroke-width="3"/>']))
N["wiadra"] = (20, 190, 230, 120, group([postacie.man(40, 268, 0.9, hat=True), postacie.man(100, 262, 0.85, hat=False),
                                         '<path d="M30 250h8v8h-8zM92 244h8v8h-8z" fill="#FFFFFF" stroke-width="1.2"/>', postacie.man(200, 320, 1.1, hat=False, arm="l18 8")]))
N["przod"] = (0, 422, 390, 422, group(['<path d="M-10 432H400V844H-10Z" fill="#000000" stroke="none"/>']))
NOG = ["tlo", "blysk", "luna", "ogien", "tartak", "kapliczka", "szymon", "wiadra", "przod"]
N_REVEAL = {"ogien": "ogien", "tartak": "tartak", "luna": "tartak", "kapliczka": "kapliczka", "szymon": "szymon", "wiadra": "wiadra"}
N_ANIM = {"blysk": {"type": "flash", "amplitude": 1, "duration": 5200}, "ogien": {"type": "flame", "amplitude": 0.25, "duration": 700, "anchorX": 0.5, "anchorY": 1},
          "tartak": {"type": "flame", "amplitude": 0.2, "duration": 600, "anchorX": 0.5, "anchorY": 1}, "luna": {"type": "flicker", "amplitude": 0.6, "duration": 900},
          "kapliczka": {"type": "bob", "amplitude": 1.2, "duration": 500}, "szymon": {"type": "slide", "dx": -30, "dy": 0, "duration": 3000, "once": True},
          "wiadra": {"type": "bob", "amplitude": 1, "duration": 600}}
N_EXTRA = {"blysk": {"noInvert": True}, "ogien": {"noInvert": True, "fadeDuration": 1500}, "tartak": {"noInvert": True, "fadeDuration": 1500}, "luna": {"noInvert": True, "fadeDuration": 2000},
           "kapliczka": {"fadeDuration": 800}, "szymon": {"fadeDuration": 800}, "wiadra": {"fadeDuration": 800}, "przod": {"depth": 1.0}}
N_COMMENTS = {"tlo": "noc: bór, trzy kapliczki pod borem, tartak nad strugą, stróżówka", "blysk": "błyskawica bez grzmotu nad borem",
              "ogien": "płonące kapliczki (# pokaz: ogien)", "tartak": "płonący tartak (# pokaz: tartak)", "luna": "łuna nad tartakiem (# pokaz: tartak)",
              "kapliczka": "Jaromir gasi kapliczkę (# pokaz: kapliczka)", "szymon": "Jaromir wywleka Szymona ze stróżówki (# pokaz: szymon)",
              "wiadra": "ludzie z wiadrami przy kapliczce, Jaromir przy stróżówce (# pokaz: wiadra)", "przod": "pierwszy plan"}
_add(N, NOG, N_ANIM, N_COMMENTS, "iskry", ((230, 60, 160, 160, iskry_svg(240, 70, 140, 140, 14, 1507, RED)), {"type": "rise", "amplitude": 50, "duration": 2400}, "iskry nad tartakiem (# pokaz: tartak)"), before="kapliczka")
N_REVEAL["iskry"] = "tartak"
N_EXTRA["iskry"] = {"noInvert": True, "fadeDuration": 1500}
_add(N, NOG, N_ANIM, N_COMMENTS, "dym", ((230, 40, 160, 160, group(['<path d="M280 200c-20 -40 20 -80 -10 -150M330 200c10 -50 -20 -90 10 -160" fill="none" stroke="#FFFFFF" stroke-width="3" opacity="0.5"/>'])),
                                         {"type": "rise", "amplitude": 20, "duration": 3000}, "dym z tartaku (# pokaz: tartak)"), before="kapliczka")
N_REVEAL["dym"] = "tartak"
N_EXTRA["dym"] = {"fadeDuration": 2000}
_add(N, NOG, N_ANIM, N_COMMENTS, "gwiazdy", efekty.iskry(0, 10, 230, 120, n=10, seed=1508, duration=3600), before="blysk")
N_COMMENTS["gwiazdy"] = "gwiazdy"

# ======================= POGORZELISKO =======================
P = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V200H0Z" fill="url(#hatch)" stroke="none" opacity="0.4"/>',
     '<path d="M-10 214C80 208 200 212 400 206V440H-10Z" fill="#EDEBE6" stroke-width="2.6"/>']
t += bor(212, -6, 400, 12, seed=1509)
t.append('<path d="M180 300C230 296 300 298 400 292V310C300 316 230 316 180 314Z" fill="url(#hatch)" stroke="none"/>')
P["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
P["las"] = (0, 170, 390, 120, group([spruce(x, 276 - (x % 3) * 4, 70 + (x % 4) * 12, 26) for x in range(150, 400, 22)] + [spruce(x, 266, 60, 22) for x in range(10, 150, 26)]))
P["zgliszcza"] = (0, 220, 390, 140, group([szopa(200, 300, 130, 52, burnt=True), chalupa(10, 350, 120, 60, 48)]))
P["ludzie"] = (130, 330, 200, 100, group([postacie.man(150, 420, 1.1, hat=True), postacie.woman(180, 422, 1.0), postacie.man(214, 420, 1.15, hat=False),
                                          staruszek(250, 418, 1.1), tlusty(310, 420, 1.2)]))
P["zeszyt_plonie"] = (270, 260, 90, 90, group([f'<path d="M{x} {y}l5 -2l3 4l-5 2z" fill="#000000" stroke="none"/>' for x, y in [(290, 330), (304, 310), (320, 296), (300, 280), (336, 286)]] + [plomyk(312, 344, 0.8)]))
P["komornik"] = (0, 0, 390, 440, group(['<rect width="390" height="440" fill="#EDEBE6" stroke="none" opacity="0.6"/>', '<path d="M120 400H280L270 370H130Z" fill="#FFFFFF" stroke-width="2"/>',
                                        '<circle cx="148" cy="404" r="14" fill="none" stroke-width="2.4"/><circle cx="254" cy="404" r="14" fill="none" stroke-width="2.4"/>',
                                        '<path d="M150 370c0 -14 20 -14 20 0M180 370c0 -14 20 -14 20 0M210 370c0 -14 20 -14 20 0" fill="url(#hatch)" stroke-width="1.6"/>',
                                        krowa(330, 410, 1.2, -1), postacie.man(80, 410, 1.2, hat=True)]))
P["przod"] = (0, 422, 390, 422, group(PRZOD))
POG = ["tlo", "las", "zgliszcza", "ludzie", "zeszyt_plonie", "komornik", "przod"]
P_REVEAL = {"las": "las", "zeszyt_plonie": "zeszyt_plonie", "komornik": "komornik"}
P_ANIM = {"las": {"type": "sway", "amplitude": 0.8, "duration": 5000, "anchorX": 0.5, "anchorY": 1}, "ludzie": {"type": "bob", "amplitude": 0.4, "duration": 2600},
          "zeszyt_plonie": {"type": "rise", "amplitude": 30, "duration": 2600}, "komornik": {"type": "slide", "dx": -30, "dy": 0, "duration": 9000, "once": True}}
P_EXTRA = {"las": {"fadeDuration": 4000}, "zeszyt_plonie": {"fadeDuration": 1200}, "komornik": {"fadeDuration": 2500}, "przod": {"depth": 1.0}}
P_COMMENTS = {"tlo": "szary ranek: zgliszcza tartaku, chałupa, bór", "las": "las podszedł pod same płoty (# pokaz: las)", "zgliszcza": "zgliszcza tartaku i chałupa", "ludzie": "ludzie na pogorzelisku, Urbaniak z zeszytem",
              "zeszyt_plonie": "kartki zeszytu płoną i lecą z wiatrem (# pokaz: zeszyt_plonie)", "komornik": "komornik z wozem zboża i krową (# pokaz: komornik)", "przod": "pierwszy plan"}
_add(P, POG, P_ANIM, P_COMMENTS, "dymy", ((190, 180, 160, 120, group(['<path d="M220 290c-6 -20 8 -40 -2 -70M270 290c8 -24 -6 -44 4 -80M316 290c-4 -18 6 -36 -2 -60" fill="none" stroke-width="1.6" opacity="0.6"/>'])),
                                          {"type": "rise", "amplitude": 14, "duration": 3200}, "dymy nad zgliszczami"), before="ludzie")
_add(P, POG, P_ANIM, P_COMMENTS, "wrony", efekty.wrony(150, 110, n=4, k=0.4, seed=1510, amplitude=60), before="las")
_add(P, POG, P_ANIM, P_COMMENTS, "popiol", ((190, 220, 170, 90, group([f'<circle cx="{x}" cy="{y}" r="1.3" fill="#000000" stroke="none"/>' for x, y in [(210, 280), (240, 260), (270, 284), (300, 262), (330, 278)]])),
                                            {"type": "wander", "amplitude": 8, "duration": 4000}, "popiół w powietrzu"), before="ludzie")

# ======================= ZIMA PRZY MLODNIKU =======================
Z = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V210H0Z" fill="url(#hatchNight)" stroke="none" opacity="0.45"/>',
     '<path d="M-10 214C80 208 200 212 400 206V440H-10Z" fill="#FFFFFF" stroke-width="2.6"/>']
t += bor(212, -6, 400, 12, seed=1511)
t += [spruce(x, 280 - (x % 3) * 3, 50 + (x % 4) * 8, 20) for x in range(140, 400, 20)]
t += [f'<path d="M{x - 8} {280 - (x % 3) * 3 - 30}l8 -6l8 6" fill="#FFFFFF" stroke="none"/>' for x in range(140, 400, 20)]
t.append(chalupa(10, 360, 130, 70, 56, snow=True))
t.append(kapliczka(250, 320, 0.9, burnt=True))
Z["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
Z["swiatek"] = (238, 268, 24, 32, group(['<path d="M244 294h12v-18h-12z" fill="#FFFFFF" stroke-width="1.4"/><circle cx="250" cy="272" r="4" fill="#FFFFFF" stroke-width="1.2"/>']))
Z["krzyzyk"] = (300, 290, 20, 40, group([krzyz(310, 326, 30, 1.0)]))
Z["luczywo"] = (30, 318, 30, 24, group([f'<path d="M33 320h24v20h-24z" fill="#FFFFFF" stroke="none"/><path d="M45 338c-3 -3 -2 -8 0 -10c2 2 3 7 0 10z" fill="{RED}" stroke="none"/>']))
Z["iskry"] = (150, 160, 240, 90, iskry_svg(160, 170, 220, 70, 22, 1512, RED))
Z["przod"] = (0, 422, 390, 422, group(SNIEG))
ZIM = ["tlo", "swiatek", "krzyzyk", "luczywo", "iskry", "przod"]
Z_REVEAL = {"swiatek": "swiatek", "krzyzyk": "krzyzyk", "luczywo": "luczywo", "iskry": "iskry"}
Z_ANIM = {"luczywo": {"type": "flicker", "amplitude": 0.4, "duration": 1200}, "iskry": {"type": "rise", "amplitude": 40, "duration": 2600}}
Z_EXTRA = {"swiatek": {"fadeDuration": 2000}, "krzyzyk": {"fadeDuration": 2000}, "luczywo": {"fadeDuration": 1500, "noInvert": True},
           "iskry": {"fadeDuration": 1500, "noInvert": True, "hideAfter": 6000}, "przod": {"depth": 1.0}}
Z_COMMENTS = {"tlo": "pierwszy śnieg: młodnik pod borem, osmalony słup kapliczki, chałupa", "swiatek": "nowy świątek z lipy na słupie (# pokaz: swiatek)",
              "krzyzyk": "brzozowy krzyżyk pod młodnikiem (# pokaz: krzyzyk)", "luczywo": "zapalona łuczywa w oknie (# pokaz: luczywo)",
              "iskry": "chmura iskier nad młodnikiem w Wigilię (# pokaz: iskry)", "przod": "pierwszy plan"}
_add(Z, ZIM, Z_ANIM, Z_COMMENTS, "platki", efekty.platki(0, 0, 390, 400, n=18, seed=1513, fall=120, duration=7000), before="przod")
_add(Z, ZIM, Z_ANIM, Z_COMMENTS, "dym", ((100, 190, 30, 60, group([dym(114, 240, 50)])), {"type": "sway", "amplitude": 3, "duration": 4600, "anchorX": 0.5, "anchorY": 1}, "dym z komina"), before="swiatek")
_add(Z, ZIM, Z_ANIM, Z_COMMENTS, "wrony", efekty.wrony(170, 100, n=3, k=0.4, seed=1514, amplitude=50), before="swiatek")
_add(Z, ZIM, Z_ANIM, Z_COMMENTS, "iskierki", efekty.iskry(0, 300, 390, 120, n=12, seed=1515, duration=2600), before="swiatek")
Z_COMMENTS["iskierki"] = "śnieg skrzy się"

BACKGROUNDS = {"paliki_pedy": ("bg_paliki", A, PAL, A_ANIM, A_REVEAL, A_EXTRA, A_COMMENTS, "paliki z pędami"),
               "karczma_zeszyt": ("bg_karczmazeszyt", K, KAR, K_ANIM, K_REVEAL, K_EXTRA, K_COMMENTS, "zeszyt Urbaniaka"),
               "noc_ognia": ("bg_nocognia", N, NOG, N_ANIM, N_REVEAL, N_EXTRA, N_COMMENTS, "noc ognia"),
               "pogorzelisko": ("bg_pogorzelisko", P, POG, P_ANIM, P_REVEAL, P_EXTRA, P_COMMENTS, "pogorzelisko"),
               "zima_mlodnik": ("bg_zimamlodnik", Z, ZIM, Z_ANIM, Z_REVEAL, Z_EXTRA, Z_COMMENTS, "zima przy młodniku")}

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
