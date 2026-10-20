# Generator tla ekranu startowego (klucz „wies_noc” — domyslne tlo katalogu, menu glowne):
#   noc nad Zapadlina: ksiezyc w chmurach, gwiazdy, nietoperze; bor na horyzoncie z para slepi; w dolinie mokradla
#   z blednymi ognikami i mgla, trzy chalupy z oswietlonymi oknami i dymem, kapliczka z lampka na pagorku; droga
#   wije sie od pierwszego planu do wsi; na pierwszym planie grzbiet laki z trawa i makami (kolysza sie spokojnie),
#   swierki po bokach. Najwazniejsze w gornych ~400 j. (srodek ekranu zaslania panel menu), dol to laka i droga.
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/start.py src/LittleVillage/Resources/Images
#   python3 tools/Backgrounds/start.py --master wies_noc > podglad.svg
import sys, random
from common import *
import postacie, efekty
from efekty import add as _add
from licho import bor, okno
from wesele import dym

RED = "#A8101A"


def chata(x, base, w, h, roof, lit=True):
    """Chalupa nocą: biale sciany w polmroku, strzecha, okno (swiatlo osobna warstwa)."""
    g = [f'<path d="M{x} {base}V{base - h}H{x + w}V{base}Z" fill="#FFFFFF" stroke-width="2.2"/>']
    for i in range(1, 3):
        g.append(f'<path d="M{x} {base - i * h / 3:.0f}H{x + w}" fill="none" stroke-width="0.8"/>')
    g.append(f'<path d="M{x - 8} {base - h + 2}L{x + w / 2:.0f} {base - h - roof}L{x + w + 8} {base - h + 2}Z" fill="url(#hatchDense)" stroke-width="2.2"/>')
    g.append(f'<path d="M{x + w * 0.62:.0f} {base}V{base - h * 0.66:.0f}H{x + w * 0.8:.0f}V{base}Z" fill="#000000"/>')
    g.append(f'<path d="M{x + w * 0.72:.0f} {base - h - roof * 0.55:.0f}V{base - h - roof - 6:.0f}H{x + w * 0.84:.0f}V{base - h - roof * 0.3:.0f}" fill="#FFFFFF" stroke-width="1.6"/>')
    g.append(okno(x + w * 0.16, base - h * 0.7, w * 0.24, h * 0.36, fill="#000000"))
    return "".join(g)


def swiatlo_okna(x, base, w, h):
    ox, oy, ow, oh = x + w * 0.16, base - h * 0.7, w * 0.24, h * 0.36
    return (f'<path d="M{ox + 1.5:.1f} {oy + 1.5:.1f}H{ox + ow - 1.5:.1f}V{oy + oh - 1.5:.1f}H{ox + 1.5:.1f}Z" fill="#FFFFFF" stroke="none"/>'
            f'<path d="M{ox + ow / 2:.1f} {oy}V{oy + oh}M{ox} {oy + oh / 2:.1f}H{ox + ow}" fill="none" stroke-width="1.6"/>')


def kapliczka(x, base, k=1.0):
    return (f'<path d="M{x - 2.5 * k:.1f} {base}V{base - 34 * k:.1f}H{x + 2.5 * k:.1f}V{base}Z" fill="#000000"/>'
            f'<path d="M{x - 11 * k:.1f} {base - 34 * k:.1f}H{x + 11 * k:.1f}V{base - 56 * k:.1f}H{x - 11 * k:.1f}Z" fill="#FFFFFF" stroke-width="{2 * k:.1f}"/>'
            f'<path d="M{x - 14 * k:.1f} {base - 56 * k:.1f}L{x} {base - 68 * k:.1f}L{x + 14 * k:.1f} {base - 56 * k:.1f}Z" fill="url(#hatchDense)" stroke-width="{1.8 * k:.1f}"/>'
            f'<path d="M{x} {base - 68 * k:.1f}v{-8 * k:.1f}M{x - 3 * k:.1f} {base - 73 * k:.1f}h{6 * k:.1f}" fill="none" stroke-width="1.4"/>'
            f'<circle cx="{x}" cy="{base - 46 * k:.1f}" r="{3.2 * k:.1f}" fill="#000000"/>')


def mak(x, y, k=1.0):
    return (f'<path d="M{x} {y}C{x + 1} {y - 10 * k:.1f} {x - 1} {y - 18 * k:.1f} {x + 1} {y - 26 * k:.1f}" fill="none" stroke-width="{1.2 * k:.1f}"/>'
            f'<circle cx="{x + 1}" cy="{y - 28 * k:.1f}" r="{3.6 * k:.1f}" fill="{RED}" stroke-width="{0.9 * k:.1f}"/>'
            f'<circle cx="{x + 1}" cy="{y - 28 * k:.1f}" r="{1 * k:.1f}" fill="#000000" stroke="none"/>')


W = {}
rnd = random.Random(1401)
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M0 0H390V214H0Z" fill="url(#hatchNight)" stroke="none" opacity="0.75"/>']
t += bor(214, -6, 400, 12, seed=1402)
# dolina: lagodny stok w dol, mokradla w niecce, wzgorek z kapliczka po prawej
t.append('<path d="M-10 214C80 208 200 212 400 206V440H-10Z" fill="#EDEBE6" stroke-width="2.6"/>')
t.append('<path d="M-10 214C80 208 200 212 400 206V440H-10Z" fill="url(#hatchNight)" stroke="none" opacity="0.35"/>')
t.append('<path d="M20 252C70 240 170 240 214 250C220 262 170 270 110 270C60 270 14 264 20 252Z" fill="url(#hatchNight)" stroke-width="1.8"/>')
t += [reeds(x, y, 0.6) for x, y in [(28, 258), (46, 266), (196, 256), (208, 262)]]
t.append('<path d="M250 264C270 232 330 226 400 236V280C350 276 290 278 250 264Z" fill="#EDEBE6" stroke-width="2"/>')
# droga: od dolu ekranu, zakretem, do wsi
t.append('<path d="M190 440C200 400 150 370 160 336C168 312 220 300 236 284L246 286C232 304 182 318 176 340C168 372 216 404 214 440Z" fill="#FFFFFF" stroke-width="1.6"/>')
t.append(chata(108, 296, 64, 34, 30))
t.append(chata(232, 282, 46, 26, 22))
t.append(chata(58, 304, 40, 22, 18))
t.append(kapliczka(326, 238, 0.9))
W["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
W["ksiezyc"] = (262, 40, 76, 76, group(['<circle cx="300" cy="78" r="34" fill="#FFFFFF" stroke-width="2.6"/>',
                                        '<circle cx="288" cy="68" r="5" fill="none" stroke-width="1.6"/><circle cx="310" cy="92" r="4" fill="none" stroke-width="1.4"/><circle cx="314" cy="64" r="2.6" fill="none" stroke-width="1.2"/>']))
W["okna"] = (60, 270, 210, 30, group([swiatlo_okna(108, 296, 64, 34), swiatlo_okna(232, 282, 46, 26), swiatlo_okna(58, 304, 40, 22)]))
W["oczy"] = (176, 196, 24, 10, group(['<path d="M178 202c2 -3 6 -3 7 0c-2 2 -5 2 -7 0zM190 202c2 -3 6 -3 7 0c-2 2 -5 2 -7 0z" fill="#FFFFFF" stroke="none"/>']))
W["swierk_l"] = (-40, 120, 110, 300, group([spruce(14, 420, 290, 96)]))
W["swierk_p"] = (330, 160, 90, 260, group([spruce(378, 420, 250, 80)]))
W["grzbiet"] = (-10, 352, 410, 90, group(['<path d="M-10 380C60 360 130 356 200 368C270 380 330 366 400 360V442H-10Z" fill="#EDEBE6" stroke-width="2.2"/>',
                                          '<path d="M-10 380C60 360 130 356 200 368C270 380 330 366 400 360V442H-10Z" fill="url(#hatchDense)" stroke="none" opacity="0.55"/>',
                                          '<path d="M172 380C182 374 200 372 210 378L218 442H180Z" fill="#FFFFFF" stroke-width="1.4"/>']))
W["trawa"] = (-10, 330, 410, 70, group([f'<path d="M{x} {y}l{rnd.uniform(-6, 6):.0f} {-rnd.uniform(14, 30):.0f}" fill="none" stroke-width="2"/>'
                                         for x, y in [(rnd.uniform(-6, 396), rnd.uniform(370, 392)) for _ in range(60)] if not 168 < x < 218]))
W["maki"] = (0, 330, 390, 70, group([mak(x, y, 1.0) for x, y in [(30, 384), (62, 374), (104, 370), (262, 380), (300, 372), (352, 366)]]))
# pierwszy plan bez nazwy *_przod: dolny plan z dolny_plan.py trafia wtedy pod scene (zakryty), a laka jest rysowana tutaj
W["laka"] = (0, 422, 390, 422, group(['<path d="M-10 432H400V844H-10Z" fill="#EDEBE6" stroke="none"/>',
                                      '<path d="M-10 432H400V844H-10Z" fill="url(#hatchDense)" stroke="none" opacity="0.55"/>',
                                      '<path d="M180 432H218C226 560 250 700 272 844H118C140 700 168 560 180 432Z" fill="#FFFFFF" stroke="none"/>',
                                      '<path d="M180 432C168 560 140 700 118 844M218 432C226 560 250 700 272 844" fill="none" stroke-width="1.6" stroke-dasharray="10 6"/>']))
kepy = []
for _ in range(34):
    y = rnd.uniform(450, 840)
    k = 0.8 + (y - 450) / 390 * 1.6
    half = 22 + (y - 432) * 0.18
    x = rnd.choice([rnd.uniform(-10, 199 - half - 12 * k), rnd.uniform(199 + half + 12 * k, 400)])
    kepy.append(f'<path d="M{x:.0f} {y:.0f}l{-4 * k:.1f} {-14 * k:.1f}M{x:.0f} {y:.0f}l{-1 * k:.1f} {-18 * k:.1f}M{x:.0f} {y:.0f}l{3 * k:.1f} {-16 * k:.1f}M{x:.0f} {y:.0f}l{7 * k:.1f} {-12 * k:.1f}" fill="none" stroke-width="{1.2 + 0.4 * k:.1f}"/>')
W["laka_trawa"] = (-10, 420, 410, 424, group(kepy))
W["laka_maki"] = (0, 600, 390, 244, group([mak(x, y, k) for x, y, k in [(34, 700, 2.0), (70, 780, 2.4), (330, 690, 2.0), (362, 800, 2.6), (300, 760, 2.2)]]))
START = ["tlo", "ksiezyc", "okna", "oczy", "swierk_l", "swierk_p", "grzbiet", "trawa", "maki", "laka", "laka_trawa", "laka_maki"]
ANIM = {"okna": {"type": "flicker", "amplitude": 0.35, "duration": 2600}, "oczy": {"type": "blink", "duration": 6200},
        "swierk_l": {"type": "sway", "amplitude": 0.8, "duration": 5200, "anchorX": 0.5, "anchorY": 1},
        "swierk_p": {"type": "sway", "amplitude": 0.7, "duration": 5800, "anchorX": 0.5, "anchorY": 1, "phase": 0.4},
        "trawa": {"type": "sway", "amplitude": 0.9, "duration": 4200, "anchorX": 0.5, "anchorY": 1},
        "maki": {"type": "sway", "amplitude": 1.0, "duration": 4800, "anchorX": 0.5, "anchorY": 1, "phase": 0.3},
        "laka_trawa": {"type": "sway", "amplitude": 0.6, "duration": 4600, "anchorX": 0.5, "anchorY": 1},
        "laka_maki": {"type": "sway", "amplitude": 0.8, "duration": 5200, "anchorX": 0.5, "anchorY": 1, "phase": 0.5}}
EXTRA = {"okna": {"noInvert": True}, "laka": {"depth": 1.0}, "laka_trawa": {"depth": 1.0}, "laka_maki": {"depth": 1.0}}
COMMENTS = {"tlo": "noc nad Zapadliną: bór, dolina z mokradłami, chałupy, kapliczka na pagórku, droga do wsi", "ksiezyc": "księżyc",
            "okna": "światło w oknach chałup (migocze)", "oczy": "para ślepi w borze (mruga)", "swierk_l": "świerk z lewej (kołysze się)",
            "swierk_p": "świerk z prawej (kołysze się)", "grzbiet": "ciemny grzbiet łąki na pierwszym planie", "trawa": "trawa na grzbiecie (kołysze się spokojnie)",
            "maki": "maki na grzbiecie (kołyszą się spokojnie)", "laka": "pierwszy plan: łąka w świetle księżyca i droga w dół ekranu", "laka_trawa": "kępy trawy na łące (kołyszą się spokojnie)",
            "laka_maki": "maki przy drodze (kołyszą się spokojnie)"}
_add(W, START, ANIM, COMMENTS, "gwiazdy", efekty.iskry(0, 6, 250, 150, n=16, seed=1403, duration=3600), before="ksiezyc")
COMMENTS["gwiazdy"] = "gwiazdy (migoczą)"
_add(W, START, ANIM, COMMENTS, "chmury", ((150, 70, 240, 50, group(['<path d="M170 108c10 -18 34 -18 42 -2c10 -10 30 -4 28 10h-70z" fill="#FFFFFF" stroke-width="1.6"/>',
                                                                  '<path d="M300 104c8 -14 28 -14 34 0c8 -8 24 -2 22 8h-56z" fill="#FFFFFF" stroke-width="1.6"/>'])),
                                          {"type": "drift", "amplitude": 16, "duration": 16000}, "chmury płyną przed księżycem"), before="okna")
_add(W, START, ANIM, COMMENTS, "nietoperze", ((40, 40, 160, 60, group([postacie.bat(80, 70, 0.8), postacie.bat(140, 56, 0.6)])),
                                              {"type": "wander", "amplitude": 30, "flap": 0.5, "duration": 7000}, "nietoperze krążą nad doliną"), before="okna")
_add(W, START, ANIM, COMMENTS, "dym", ((120, 200, 150, 70, group([dym(156, 262, 50, 0.5), dym(268, 254, 40, 0.5)])),
                                       {"type": "sway", "amplitude": 3, "duration": 4600, "anchorX": 0.5, "anchorY": 1}, "dym z kominów"), before="okna")
_add(W, START, ANIM, COMMENTS, "lampka", ((320, 186, 12, 14, group([f'<path d="M326 196c-3 -3 -2 -7 0 -9c2 2 3 6 0 9z" fill="{RED}" stroke="none"/>'])),
                                          {"type": "flame", "amplitude": 0.2, "duration": 900, "anchorX": 0.5, "anchorY": 1}, "lampka w kapliczce"), before="okna")
EXTRA["lampka"] = {"noInvert": True}
_add(W, START, ANIM, COMMENTS, "ogniki", ((20, 226, 200, 40, group([f'<circle cx="{x}" cy="{y}" r="2.4" fill="#FFFFFF" stroke="#000000" stroke-width="0.6"/>' for x, y in [(44, 244), (92, 236), (150, 246), (192, 240)]])),
                                          {"type": "wander", "amplitude": 6, "duration": 5000}, "błędne ogniki nad mokradłami"), before="okna")
EXTRA["ogniki"] = {"noInvert": True}
_add(W, START, ANIM, COMMENTS, "mgla", ((-30, 254, 450, 30, group([f'<path d="{ribbon(-20, 410, 268, 10, 4)}" fill="#EDEBE6" stroke="none" opacity="0.6"/>'])),
                                        {"type": "drift", "amplitude": 14, "duration": 14000}, "mgła nad mokradłami"), before="okna")
_add(W, START, ANIM, COMMENTS, "swietliki", ((0, 330, 390, 90, group([f'<circle cx="{x}" cy="{y}" r="1.4" fill="#FFFFFF" stroke="none"/>' for x, y in [(30, 350), (90, 340), (140, 362), (250, 348), (310, 360), (360, 344)]])),
                                             {"type": "wander", "amplitude": 6, "duration": 6000}, "świetliki nad łąką"), before="laka")
EXTRA["swietliki"] = {"noInvert": True}

BACKGROUNDS = {"wies_noc": ("bg_start", W, START, ANIM, {}, EXTRA, COMMENTS, "ekran startowy")}

if __name__ == "__main__":
    if sys.argv[1] == "--master":
        prefix, Ls, order, anim, reveal, extra, comments, scene = BACKGROUNDS[sys.argv[2]]
        print(master(Ls, order))
    else:
        import bgjson
        for key, (prefix, Ls, order, anim, reveal, extra, comments, scene) in BACKGROUNDS.items():
            write_layers(sys.argv[1], prefix, scene, Ls, [n for n in Ls if n in comments], comments)
            bgjson.upsert(key, bgjson.entry(prefix, order, Ls, anim, reveal, extra))
