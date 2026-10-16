# Generator tel rozdzialu szostego (Poludnica):
#   zniwa            — zniwa w upale: zeńcy z kosami, kobiety wiaza snopy, grusza na miedzy; Hanka przy snopach (# pokaz: hanka),
#                      Jaromir sam na koncu zagonu, reszta pod grusza (# pokaz: sam)
#   poludnica        — samo poludnie: biale niebo, drgajacy zar, cisza; Poludnica autora (# pokaz: poludnica), ciecie sierpem
#                      (# pokaz: ciecie), uklon (# pokaz: uklon), zamach (# pokaz: zamach), Hanka z dzbanem (# pokaz: dzban),
#                      Poludnica znika (# pokaz: znika), wianek na ściernisku (# pokaz: wianek), woda z dzbana (# pokaz: woda)
#   goraczka         — izba noca: Jaromir w goraczce, matka przy lozku, kaganek; majaki — biale oczy (# pokaz: majaki), Hanka z ziolami (# pokaz: hanka)
#   czerwony_ksiezyc — wieczor na plocie: ściernisko, snopy, wielki czerwony ksiezyc, swietliki; mak na dloni (# pokaz: mak)
#   kapliczki_noc    — noc, kapliczki przy drodze, bor; ojciec z latarnia (# pokaz: ojciec) albo Jaromir przy kapliczce (# pokaz: jaromir)
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/poludnica.py src/LittleVillage/Resources/Images
#   python3 tools/Backgrounds/poludnica.py --master <tlo> [wszystko] > podglad.svg
import sys, random
from common import *
import art, postacie, efekty
from efekty import add as _add
from wiosna import kapliczka, sciana_deski

RED = "#A8101A"


def snop(x, y, k=1.0):
    return (f'<path d="M{x - 8 * k:.0f} {y}L{x - 3 * k:.0f} {y - 26 * k:.0f}L{x + 3 * k:.0f} {y - 26 * k:.0f}L{x + 8 * k:.0f} {y}Z" fill="url(#hatchDense)" stroke-width="1.4"/>'
            f'<path d="M{x - 5 * k:.0f} {y - 12 * k:.0f}h{10 * k:.0f}" fill="none" stroke="#FFFFFF" stroke-width="1.6"/>'
            f'<path d="M{x - 4 * k:.0f} {y - 26 * k:.0f}l-3 -6M{x} {y - 26 * k:.0f}v-7M{x + 4 * k:.0f} {y - 26 * k:.0f}l3 -6" fill="none" stroke-width="1.2"/>')


def zniec(x, y, k=1.0, swing=0):
    """Zeniec z kosa (profil w lewo)."""
    blade = [f'<path d="M{x - 2 * k:.0f} {y - 50 * k:.0f}L{x - 22 * k:.0f} {y - 4 * k:.0f}" fill="none" stroke-width="2.4"/>',
             f'<path d="M{x - 22 * k:.0f} {y - 4 * k:.0f}C{x - 34 * k:.0f} {y - 2 * k:.0f} {x - 46 * k:.0f} {y - 6 * k:.0f} {x - 52 * k:.0f} {y - 12 * k:.0f}" fill="none" stroke-width="2.4"/>']
    return postacie.man(x, y, k, hat=True) + "".join(blade)


def grusza(x, base, k=1.0):
    return (f'<path d="M{x - 5 * k} {base}C{x - 4 * k} {base - 40 * k} {x - 6 * k} {base - 50 * k} {x} {base - 60 * k}C{x + 6 * k} {base - 50 * k} {x + 4 * k} {base - 40 * k} {x + 5 * k} {base}Z" fill="#000000" stroke-width="2"/>'
            f'<path d="M{x - 40 * k} {base - 60 * k}C{x - 50 * k} {base - 90 * k} {x - 20 * k} {base - 110 * k} {x} {base - 106 * k}C{x + 26 * k} {base - 112 * k} {x + 50 * k} {base - 90 * k} {x + 40 * k} {base - 60 * k}C{x + 20 * k} {base - 50 * k} {x - 20 * k} {base - 50 * k} {x - 40 * k} {base - 60 * k}Z" fill="url(#hatchDense)" stroke-width="2.2"/>')


def pole_tlo(sky_hatch=True, white=False):
    t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>']
    if sky_hatch:
        t.append('<path d="M0 0H390V100C300 114 200 90 110 106C60 114 30 104 0 110Z" fill="url(#hatch)" stroke="none" opacity="0.35"/>')
    t.append('<path d="M-10 210C80 200 200 206 400 198V440H-10Z" fill="#EDEBE6" stroke-width="3"/>')
    for i in range(16):
        t.append(spruce(230 + i * 11, 206 - (i % 2) * 3, 40 + (i % 3) * 10, 17))
    # sciernisko (krotkie kreski) z lewej, stojace zboze z prawej
    rnd = random.Random(601)
    for i in range(60):
        x, y = rnd.uniform(0, 200), rnd.uniform(240, 420)
        t.append(f'<path d="M{x:.0f} {y:.0f}v-5" fill="none" stroke-width="1"/>')
    t.append('<path d="M200 230C260 226 330 228 400 224V440H220C214 360 206 290 200 230Z" fill="url(#hatch)" stroke-width="1.6"/>')
    for (x, y) in [(40, 300), (80, 320), (120, 296), (60, 360), (150, 350)]:
        t.append(snop(x, y, 1.1))
    return t


# ======================= ZNIWA =======================
Z = {}
t = pole_tlo()
t.append('<circle cx="70" cy="60" r="22" fill="#FFFFFF" stroke-width="2.4"/><path d="M70 28v-8M70 92v8M38 60h-8M102 60h8M48 38l-6 -6M92 38l6 -6" fill="none" stroke-width="2"/>')
t.append(grusza(330, 300, 1.2))
Z["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
Z["zency"] = (200, 270, 190, 90, group([zniec(250, 350, 1.0), zniec(310, 352, 1.0), zniec(370, 354, 1.0)]))
Z["kobiety"] = (60, 300, 140, 80, group([postacie.woman(110, 372, 0.95), postacie.woman(170, 374, 0.95)]))
Z["jaromir"] = (210, 330, 70, 100, group([zniec(250, 426, 1.3)]))
Z["hanka"] = (20, 340, 50, 90, group([postacie.girl(40, 428, 1.7)]))
Z["sam"] = (270, 260, 120, 50, group([postacie.child(300, 302, 0.7), postacie.man(320, 304, 0.55), postacie.woman(340, 304, 0.55), postacie.child(358, 302, 0.7)]))
p = ['<path d="M-10 432H400V844H-10Z" fill="#EDEBE6" stroke="none"/>']
Z["przod"] = (0, 422, 390, 422, group(p))
ZNIWA = ["tlo", "zency", "kobiety", "sam", "jaromir", "hanka", "przod"]
Z_REVEAL = {"hanka": "hanka", "sam": "sam"}
Z_ANIM = {"zency": {"type": "sway", "amplitude": 6, "duration": 1300, "anchorX": 0.5, "anchorY": 1},
          "kobiety": {"type": "bob", "amplitude": 2, "duration": 1600},
          "jaromir": {"type": "sway", "amplitude": 7, "duration": 1300, "anchorX": 0.6, "anchorY": 1, "phase": 0.3},
          "hanka": {"type": "bob", "amplitude": 1, "duration": 1800}}
Z_EXTRA = {"zency": {"hideOn": "sam", "fadeDuration": 1500}, "kobiety": {"hideOn": "sam", "fadeDuration": 1500},
           "hanka": {"hideOn": "sam", "fadeDuration": 1500}, "sam": {"fadeDuration": 1500}, "przod": {"depth": 1.0}}
Z_COMMENTS = {"tlo": "żniwa w upale: ściernisko ze snopami, stojące żyto, grusza na miedzy, słońce", "zency": "żeńcy koszą (zamach kosą)",
              "kobiety": "kobiety wiążą snopy", "jaromir": "Jaromir kosi", "hanka": "Hanka przy snopach (# pokaz: hanka)",
              "sam": "reszta odpoczywa pod gruszą (# pokaz: sam)", "przod": "pierwszy plan"}
STRIPS = 4
for k in range(STRIPS):
    Z[f"zyto_{k}"] = (200 + k * 48, 220, 52, 60, group([f'<path d="M{204 + k * 48 + i * 6} 270C{202 + k * 48 + i * 6} 254 {206 + k * 48 + i * 6} 240 {204 + k * 48 + i * 6} 230" fill="none" stroke-width="1.1"/>'
                                                     f'<ellipse cx="{204 + k * 48 + i * 6}" cy="226" rx="1.8" ry="5" fill="url(#hatchDense)" stroke-width="0.9"/>' for i in range(8)]))
    ZNIWA.insert(1, f"zyto_{k}")
    Z_ANIM[f"zyto_{k}"] = {"type": "sway", "amplitude": 3, "duration": 3000, "anchorX": 0.5, "anchorY": 1, "phase": round(k * 0.1, 2)}
    Z_COMMENTS[f"zyto_{k}"] = "żyto faluje"
_add(Z, ZNIWA, Z_ANIM, Z_COMMENTS, "skowronki", efekty.wrony(140, 100, n=3, k=0.35, seed=61, amplitude=40), before="zency")
Z_COMMENTS["skowronki"] = "skowronki"
_add(Z, ZNIWA, Z_ANIM, Z_COMMENTS, "zar", efekty.smuga([(0, 200), (390, 190), (390, 230), (0, 236)], opacity=0.25), before="zency")
Z_COMMENTS["zar"] = "drgające powietrze nad polem"
_add(Z, ZNIWA, Z_ANIM, Z_COMMENTS, "motyl", ((150, 380, 28, 22, group([postacie.butterfly(164, 390, 1.0)])),
                                            {"type": "wander", "amplitude": 26, "flap": 0.65, "duration": 6200}, "motyl nad ścierniskiem"), before="przod")

# ======================= POLUDNICA (samo poludnie) =======================
P = {}
t = pole_tlo(sky_hatch=False)
t.append('<circle cx="195" cy="40" r="26" fill="#FFFFFF" stroke-width="2.6"/>')
P["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
P["zar"] = (0, 190, 390, 60, group([f'<path d="M0 {205 + i * 12}C60 {200 + i * 12} 120 {210 + i * 12} 195 {205 + i * 12}S330 {200 + i * 12} 390 {205 + i * 12}" fill="none" stroke-width="1" opacity="0.5"/>' for i in range(4)]))
P["jaromir"] = (40, 320, 80, 110, group([postacie.child(80, 428, 2.0, arm="l14 -6"), '<path d="M94 380L120 350M120 350C110 346 98 352 92 360" fill="none" stroke-width="2.2"/>']))
TR = art.parse_transform("translate(180 150) scale(0.52)")
RIG_P = art.rig("poludnica", TR, [
    ("cien", ["cien", "zar"], {"type": "drift", "amplitude": 3, "duration": 1800}, None),
    ("koszula", ["koszula"], {"type": "bob", "amplitude": 3, "duration": 4000}, None),
    ("wlosy", ["wlosy"], {"type": "sway", "amplitude": 3, "duration": 2000}, "wlosy"),
    ("twarz", ["twarz", "wianek"], {"type": "sway", "amplitude": 2, "duration": 4000}, "twarz"),
    ("reka", ["reka_wyciagnieta"], {"type": "sway", "amplitude": 5, "duration": 3000}, "reka_wyciagnieta"),
    ("sierp", ["reka_z_sierpem"], {"type": "sway", "amplitude": 8, "duration": 2600}, "reka_z_sierpem")], "pol")
art.install_rig(P, RIG_P)
# ciecie: czerwony rozblysk wzdluz toru sierpa
P["ciecie"] = (120, 280, 120, 80, group([f'<path d="M130 300C160 340 200 350 230 330" fill="none" stroke="{RED}" stroke-width="4"/>',
                                          f'<path d="M136 312C164 344 198 350 222 336" fill="none" stroke="#FFFFFF" stroke-width="1.6"/>']))
P["uklon"] = (190, 210, 60, 30, group(['<path d="M196 230c10 -10 30 -10 40 0" fill="none" stroke="#FFFFFF" stroke-width="1.4" stroke-dasharray="3 3"/>']))
P["hanka"] = (310, 330, 70, 100, group([postacie.girl(340, 428, 1.9, running=True, facing=-1),
                                         '<path d="M318 380c-6 0 -8 10 -2 14h8c4 -4 2 -14 -6 -14z" fill="#FFFFFF" stroke-width="1.6"/>']))
P["woda"] = (70, 330, 70, 50, group([f'<path d="M{80 + i * 9} {340 + (i % 2) * 6}c-2 4 -3 7 0 9c3 -2 2 -5 0 -9z" fill="#FFFFFF" stroke-width="1"/>' for i in range(6)]))
P["wianek"] = (160, 400, 60, 24, group([f'<ellipse cx="190" cy="412" rx="22" ry="7" fill="none" stroke-width="2.4"/>',
                                        f'<circle cx="174" cy="410" r="3" fill="{RED}" stroke="none"/><circle cx="196" cy="406" r="3" fill="{RED}" stroke="none"/><circle cx="206" cy="414" r="3" fill="{RED}" stroke="none"/>']))
p = ['<path d="M-10 432H400V844H-10Z" fill="#EDEBE6" stroke="none"/>']
P["przod"] = (0, 422, 390, 422, group(p))
POL = art.rig_names(RIG_P)
POLUDNICA = ["tlo", "zar"] + POL + ["ciecie", "uklon", "wianek", "jaromir", "woda", "hanka", "przod"]
P_REVEAL = {n: "poludnica" for n in POL}
P_REVEAL.update({"ciecie": "ciecie", "uklon": "uklon", "hanka": "dzban", "woda": "woda", "wianek": "wianek"})
P_ANIM = {"zar": {"type": "drift", "amplitude": 6, "duration": 1600}, "ciecie": {"type": "flash", "amplitude": 1, "duration": 1200},
          "jaromir": {"type": "bob", "amplitude": 0.6, "duration": 1200}, "hanka": {"type": "bob", "amplitude": 1.4, "duration": 600},
          "woda": {"type": "rise", "amplitude": -30, "duration": 1000}, "uklon": {"type": "flicker", "amplitude": 0.2, "duration": 1600}}
P_ANIM.update(art.rig_anims(RIG_P))
P_ANIM["pol_sierp"] = {"type": "sway", "amplitude": 8, "duration": 2600}
P_EXTRA = {n: {"fadeDuration": 2500, "hideOn": "znika"} for n in POL}
P_EXTRA["pol_sierp"] = {"fadeDuration": 2500, "hideOn": "znika"}
P_EXTRA.update({"ciecie": {"noInvert": True, "hideAfter": 1400, "fadeDuration": 100}, "uklon": {"hideAfter": 3000},
                "woda": {"hideAfter": 2500}, "wianek": {"noInvert": True, "fadeDuration": 1500}, "hanka": {"fadeDuration": 600}, "przod": {"depth": 1.0}})
P_COMMENTS = {"tlo": "samo południe: białe niebo, słońce w zenicie, ściernisko i żyto", "zar": "drgający żar nad polem",
              "jaromir": "Jaromir z kosą", "ciecie": "błysk cięcia sierpem (# pokaz: ciecie)", "uklon": "ukłon Południcy (# pokaz: uklon)",
              "hanka": "Hanka biegnie z dzbanem (# pokaz: dzban)", "woda": "woda chlusta z dzbana (# pokaz: woda)",
              "wianek": "wianek z kłosów i maków na ściernisku (# pokaz: wianek)", "przod": "pierwszy plan"}
P_COMMENTS.update({n: f"Południca — {n[4:]} (rysunek autora; # pokaz: poludnica, znika przy # pokaz: znika)" for n in POL})
# zamach: sierp szeroko w gore (osobna warstwa wieksza sway)
P["zamach"] = (150, 140, 130, 90, group([f'<path d="M190 220C200 180 230 160 260 160" fill="none" stroke="#FFFFFF" stroke-width="5"/>',
                                         f'<path d="M190 220C200 180 230 160 260 160" fill="none" stroke-width="2"/><circle cx="260" cy="160" r="3" fill="{RED}" stroke="none"/>']))
POLUDNICA.insert(POLUDNICA.index("ciecie"), "zamach")
P_REVEAL["zamach"] = "zamach"
P_ANIM["zamach"] = {"type": "sway", "amplitude": 10, "duration": 700, "anchorX": 0.3, "anchorY": 1}
P_EXTRA["zamach"] = {"hideOn": "znika", "fadeDuration": 300}
P_COMMENTS["zamach"] = "sierp uniesiony do ciosu (# pokaz: zamach)"
# podmuch goracego powietrza, gdy Poludnica sie rozwiewa
P["rozwiewa"] = (150, 140, 120, 280, group([f'<path d="{ribbon(160, 260, 200 + i * 60, 16, 4)}" fill="#EDEBE6" stroke-width="1.2" opacity="0.7"/>' for i in range(4)]))
POLUDNICA.insert(POLUDNICA.index("ciecie"), "rozwiewa")
P_REVEAL["rozwiewa"] = "znika"
P_ANIM["rozwiewa"] = {"type": "rise", "amplitude": 60, "duration": 2200}
P_EXTRA["rozwiewa"] = {"hideAfter": 2200, "fadeDuration": 400}
P_COMMENTS["rozwiewa"] = "Południca rozwiewa się jak para (# pokaz: znika)"
_add(P, POLUDNICA, P_ANIM, P_COMMENTS, "iskry", efekty.iskry(0, 230, 200, 180, n=10, seed=62, duration=1800), before="jaromir")
P_COMMENTS["iskry"] = "żar migocze nad ścierniskiem"

# ======================= GORACZKA =======================
G = {}
w = sciana_deski(390, 440, 16)
w.append('<rect width="390" height="440" fill="url(#hatchNight)" stroke="none" opacity="0.6"/>')
w.append('<path d="M-10 300H400V440H-10Z" fill="url(#hatchDense)" stroke="none" opacity="0.8"/><path d="M-10 300H400" fill="none" stroke-width="3"/>')
w.append('<path d="M150 70H220V140H150Z" fill="url(#hatchNight)" stroke-width="3"/><path d="M185 70V140M150 105H220" fill="none" stroke-width="3"/>')
w.append('<path d="M60 300V250H260V300M60 260H260" fill="#FFFFFF" stroke-width="2.6"/><path d="M60 236V300M260 240V300" fill="none" stroke-width="3"/>')
w.append('<path d="M64 260C80 240 150 236 200 240C230 242 250 248 256 260Z" fill="#FFFFFF" stroke-width="1.8"/>')
w.append('<path d="M290 260H340V270H290ZM296 270V300M334 270V300" fill="#FFFFFF" stroke-width="2"/><path d="M310 260V250h8v10z" fill="#FFFFFF" stroke-width="1.4"/>')
G["tlo"] = (0, 0, 390, 440, w[0] + "\n" + group(w[1:]))
G["chory"] = (64, 226, 60, 30, group(['<circle cx="82" cy="244" r="9" fill="#000000"/><path d="M90 236h14v8h-14z" fill="#FFFFFF" stroke-width="1.2"/>']))
G["matka"] = (130, 180, 60, 122, group([postacie.woman(160, 300, 1.45)]))
G["plomien"] = (308, 236, 12, 16, group([f'<path d="M314 250c-3 -3 -2 -9 0 -12c2 4 3 9 0 12z" fill="{RED}" stroke="none"/>']))
G["blask"] = (260, 200, 110, 90, group(['<ellipse cx="314" cy="250" rx="50" ry="36" fill="#FFFFFF" stroke="none" opacity="0.25"/>']))
G["majaki"] = (40, 30, 300, 180, group(['<ellipse cx="160" cy="110" rx="18" ry="9" fill="#FFFFFF" stroke-width="1.4"/><ellipse cx="220" cy="110" rx="18" ry="9" fill="#FFFFFF" stroke-width="1.4"/>',
                                       f'<path d="M80 60C120 120 260 140 300 70" fill="none" stroke="{RED}" stroke-width="2" opacity="0.7"/>']))
G["hanka"] = (220, 200, 60, 102, group([postacie.girl(250, 300, 1.55), '<path d="M262 260c6 -6 12 -2 10 4" fill="none" stroke-width="1.6"/><path d="M264 256l4 -6M268 258l6 -4" fill="none" stroke-width="1"/>']))
p = ['<path d="M-10 432H400V844H-10Z" fill="url(#hatchDense)" stroke="none" opacity="0.8"/>']
G["przod"] = (0, 422, 390, 422, group(p))
GORACZKA = ["tlo", "blask", "plomien", "chory", "matka", "majaki", "hanka", "przod"]
G_REVEAL = {"majaki": "majaki", "hanka": "hanka"}
G_ANIM = {"plomien": {"type": "flame", "amplitude": 0.15, "duration": 800, "anchorX": 0.5, "anchorY": 1},
          "blask": {"type": "flicker", "amplitude": 0.6, "duration": 1500}, "chory": {"type": "bob", "amplitude": 0.8, "duration": 900},
          "matka": {"type": "sway", "amplitude": 1.5, "duration": 3000, "anchorX": 0.5, "anchorY": 1},
          "majaki": {"type": "flicker", "amplitude": 0, "duration": 2400}, "hanka": {"type": "bob", "amplitude": 0.5, "duration": 2200}}
G_EXTRA = {"plomien": {"noInvert": True}, "majaki": {"fadeDuration": 2000, "hideAfter": 6000}, "przod": {"depth": 1.0}}
G_COMMENTS = {"tlo": "izba nocą: łóżko, okno, stół z kagankiem", "chory": "Jaromir w gorączce (drży)", "matka": "matka czuwa przy łóżku",
              "plomien": "płomień kaganka (czerwony)", "blask": "blask kaganka", "majaki": "majaki: białe oczy bez źrenic (# pokaz: majaki)",
              "hanka": "Hanka z ziołami (# pokaz: hanka)", "przod": "pierwszy plan"}
_add(G, GORACZKA, G_ANIM, G_COMMENTS, "cmy", ((290, 220, 50, 30, group(['<path d="M300 232l4 -3l4 3l-4 2z" fill="#FFFFFF" stroke-width="1"/><path d="M322 226l4 -3l4 3l-4 2z" fill="#FFFFFF" stroke-width="1"/>'])),
                                              {"type": "wander", "amplitude": 14, "flap": 0.5, "duration": 3400}, "ćmy przy kaganku"), before="chory")
_add(G, GORACZKA, G_ANIM, G_COMMENTS, "gwiazdy", efekty.iskry(154, 74, 62, 62, n=5, seed=63), before="blask")

# ======================= CZERWONY KSIEZYC =======================
K = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V230H0Z" fill="url(#hatchNight)" stroke="none" opacity="0.8"/>']
t.append('<path d="M-10 230C80 222 200 226 400 220V440H-10Z" fill="url(#hatch)" stroke-width="2.4"/>')
for (x, y) in [(40, 300), (90, 290), (150, 306), (220, 296), (290, 304), (350, 292)]:
    t.append(snop(x, y, 1.2))
t.append('<path d="M-10 360H400M-10 376H400" fill="none" stroke-width="2.4"/>')
for x in range(-4, 400, 22):
    t.append(f'<path d="M{x - 4} 390V352L{x} 346L{x + 4} 352V390Z" fill="#FFFFFF" stroke-width="1.6"/>')
K["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
K["ksiezyc"] = (240, 180, 80, 50, group([f'<path d="M244 228A36 36 0 0 1 316 228Z" fill="{RED}" stroke="{RED}" stroke-width="2"/>']))
K["para"] = (140, 300, 110, 70, group(['<path d="M158 352C158 328 164 318 174 316C184 318 188 328 188 352Z" fill="#000000" stroke-width="2"/><circle cx="174" cy="306" r="8" fill="#000000"/>',
                                       '<path d="M196 352C196 332 200 324 208 322C216 324 220 332 220 352Z" fill="#000000" stroke-width="2"/><circle cx="208" cy="314" r="7" fill="#000000"/>',
                                       '<path d="M201 312C196 318 196 326 192 330" fill="none" stroke-width="2"/>']))
K["mak"] = (186, 326, 14, 14, group([f'<circle cx="193" cy="333" r="3.6" fill="{RED}" stroke="#FFFFFF" stroke-width="1"/>']))
p = ['<path d="M-10 432H400V844H-10Z" fill="url(#hatch)" stroke="none"/>']
K["przod"] = (0, 422, 390, 422, group(p))
KSIEZYC = ["tlo", "ksiezyc", "para", "mak", "przod"]
K_REVEAL = {"mak": "mak"}
K_ANIM = {"ksiezyc": {"type": "slide", "dx": 0, "dy": -24, "duration": 30000, "once": True},
          "para": {"type": "bob", "amplitude": 0.5, "duration": 3000}, "mak": {"type": "flicker", "amplitude": 0.6, "duration": 2000}}
K_EXTRA = {"ksiezyc": {"noInvert": True}, "mak": {"noInvert": True, "fadeDuration": 1500}, "przod": {"depth": 1.0}}
K_COMMENTS = {"tlo": "wieczór po żniwach: snopy na ściernisku, płot", "ksiezyc": "wielki czerwony księżyc wschodzi (powoli)",
              "para": "Jaromir i Hanka na płocie", "mak": "zasuszony mak na dłoni Hanki (# pokaz: mak)", "przod": "pierwszy plan"}
FLIES = [(40, 320), (110, 270), (260, 280), (330, 330), (180, 260)]
for i, (x, y) in enumerate(FLIES):
    K[f"swietlik_{i}"] = (x - 4, y - 4, 8, 8, group([f'<circle cx="{x}" cy="{y}" r="2" fill="#FFFFFF" stroke="none"/>']))
    KSIEZYC.insert(2, f"swietlik_{i}")
    K_ANIM[f"swietlik_{i}"] = {"type": "wander", "amplitude": 10 + i * 2, "duration": 4200 + i * 700, "phase": round(i * 0.2, 2)}
    K_COMMENTS[f"swietlik_{i}"] = "świetlik"
_add(K, KSIEZYC, K_ANIM, K_COMMENTS, "gwiazdy", efekty.iskry(0, 10, 390, 150, n=18, seed=64, duration=3600), before="ksiezyc")

# ======================= KAPLICZKI NOCA =======================
N = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V250H0Z" fill="url(#hatchNight)" stroke="none"/>',
     '<circle cx="320" cy="60" r="16" fill="#FFFFFF" stroke-width="1.6"/>']
t.append('<path d="M-10 250C80 242 200 246 400 238V440H-10Z" fill="url(#hatch)" stroke-width="2.4"/>')
for i in range(20):
    t.append(spruce(-4 + i * 21, 248 - (i % 2) * 4, 70 + (i % 3) * 14, 28))
t.append('<path d="M120 440C140 400 170 360 200 330C220 310 250 290 290 270" fill="none" stroke-width="2"/>')
t.append(kapliczka(110, 330, 0.9) + kapliczka(250, 290, 0.6))
N["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
N["ojciec"] = (130, 300, 80, 130, group([postacie.man(160, 428, 1.6, arm="l12 22"), '<path d="M174 384h10v14h-10z" fill="#FFFFFF" stroke-width="1.4"/>']))
N["blask"] = (150, 350, 60, 60, group(['<circle cx="179" cy="391" r="24" fill="#FFFFFF" stroke="none" opacity="0.4"/>', f'<path d="M179 395c-2 -2 -1 -6 0 -8c1 2 2 6 0 8z" fill="{RED}" stroke="none"/>']))
N["jaromir"] = (70, 330, 60, 100, group([postacie.crouching_child(90, 428, 1.9)]))
p = ['<path d="M-10 432H400V844H-10Z" fill="url(#hatch)" stroke="none"/>']
N["przod"] = (0, 422, 390, 422, group(p))
KAPL = ["tlo", "ojciec", "blask", "jaromir", "przod"]
N_REVEAL = {"ojciec": "ojciec", "blask": "ojciec", "jaromir": "jaromir"}
N_ANIM = {"ojciec": {"type": "bob", "amplitude": 0.8, "duration": 1100}, "blask": {"type": "flicker", "amplitude": 0.5, "duration": 1200},
          "jaromir": {"type": "sway", "amplitude": 2, "duration": 1600, "anchorX": 0.5, "anchorY": 1}}
N_EXTRA = {"blask": {"noInvert": True}, "przod": {"depth": 1.0}}
N_COMMENTS = {"tlo": "noc: droga z kapliczkami pod borem, księżyc", "ojciec": "ojciec z latarnią (# pokaz: ojciec)", "blask": "blask latarni",
              "jaromir": "Jaromir poprawia kapliczkę (# pokaz: jaromir)", "przod": "pierwszy plan"}
_add(N, KAPL, N_ANIM, N_COMMENTS, "gwiazdy", efekty.iskry(0, 10, 300, 140, n=16, seed=65, duration=3600), before="ojciec")
_s, _so = efekty.sowa(30, 216, 1.0)
_add(N, KAPL, N_ANIM, N_COMMENTS, "oczy_boru", _so, before="ojciec")
N_COMMENTS["oczy_boru"] = "oczy w borze (mrugają) — ktoś patrzy"
_add(N, KAPL, N_ANIM, N_COMMENTS, "mgla", ((-30, 250, 450, 40, group([f'<path d="{ribbon(-20, 410, 262, 14, 4)}" fill="#EDEBE6" stroke-width="1.4" opacity="0.7"/>'])),
                                           {"type": "drift", "amplitude": 12, "duration": 14000}, "mgła u stóp boru"), before="ojciec")

BACKGROUNDS = {"zniwa": ("bg_zniwapole", Z, ZNIWA, Z_ANIM, Z_REVEAL, Z_EXTRA, Z_COMMENTS, "żniwa"),
               "poludnica": ("bg_poludnica", P, POLUDNICA, P_ANIM, P_REVEAL, P_EXTRA, P_COMMENTS, "Południca"),
               "goraczka": ("bg_goraczka", G, GORACZKA, G_ANIM, G_REVEAL, G_EXTRA, G_COMMENTS, "gorączka"),
               "czerwony_ksiezyc": ("bg_ksiezyc", K, KSIEZYC, K_ANIM, K_REVEAL, K_EXTRA, K_COMMENTS, "czerwony księżyc"),
               "kapliczki_noc": ("bg_kaplnoc", N, KAPL, N_ANIM, N_REVEAL, N_EXTRA, N_COMMENTS, "kapliczki nocą")}

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
