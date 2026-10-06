# Generator tel zakonczenia A prologu (figurka u staruchy):
#   czary        — izba staruchy przy swiecy: figurka zanurzona w misce z czarna woda, babelki, krople krwi;
#                  ogromny cien staruchy na scianie faluje w blasku swiecy
#   noc_atak     — chata nocą we mgle, przy drzwiach ślepia stwora (# pokaz: slepia)
#   walka        — wnetrze chaty: stwor pod nadprożem wyrwanych drzwi (# pokaz: stwor), pies skacze mu do ramienia
#                  (# pokaz: pies), Maciek z siekiera zaslania Marianne (# pokaz: maciek), kaluza krwi (# pokaz: kaluza)
#   pod_podloga  — widok z piwniczki: szpary miedzy deskami, przez ktore pada swiatlo ksiezyca; skulony Dobroslaw;
#                  cien przesuwa sie po szparach (# pokaz: cien), przez szpary kapie krew (# pokaz: krew)
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/klatwa.py src/LittleVillage/Resources/Images       -> pliki bg_klatwa_*.svg
#   python3 tools/Backgrounds/klatwa.py --master czary|noc_atak|walka|pod_podloga [wszystko] > podglad.svg
import sys, re, os, random
from common import *
import art, postacie

L = {}
rnd = random.Random(81)
RED = "#A8101A"


def red(items):
    return f'<g fill="{RED}" stroke="none" filter="url(#ink)">' + "".join(items) + '</g>'


# kontur plaszcza staruchy z jej rysunku — na cien na scianie
_w = open(os.path.join(os.path.dirname(os.path.abspath(__file__)), "assets", "wiedzma.svg"), encoding="utf-8").read()
CLOAK = re.search(r'<!-- płaszcz -->\n<path d="([^"]+)"', _w).group(1)


# ======================= CZARY =======================
c = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<rect width="390" height="440" fill="url(#hatchNight)" stroke="none"/>',
     '<ellipse cx="150" cy="270" rx="190" ry="170" fill="#EDEBE6" stroke="none"/>',
     '<ellipse cx="150" cy="270" rx="190" ry="170" fill="url(#hatchDense)" stroke="none"/>',
     '<ellipse cx="150" cy="270" rx="130" ry="118" fill="#EDEBE6" stroke="none"/>',
     '<ellipse cx="150" cy="270" rx="130" ry="118" fill="url(#hatch)" stroke="none"/>',
     '<ellipse cx="150" cy="276" rx="74" ry="68" fill="#EDEBE6" stroke="none"/>']
# belka i polka z suszonymi ziolami
c.append('<path d="M-10 40H400V56H-10Z" fill="#000000" stroke-width="2"/>')
for x in range(30, 380, 46):
    c.append(f'<path d="M{x} 56v14M{x - 6} 70c2 14 10 14 12 0z" fill="#000000" stroke-width="1.6"/>')
# stol
c.append('<path d="M20 318H372V332H20Z" fill="#FFFFFF" stroke-width="3"/>')
c.append('<path d="M40 332L34 440M352 332L358 440M90 332L88 430M300 332L304 430" fill="none" stroke-width="3.6"/>')
# swieca w lichtarzu (plomien osobno)
c.append('<path d="M112 318h28l-4 -6h-20z" fill="#000000" stroke-width="2"/>')
c.append('<rect x="120" y="282" width="12" height="30" fill="#FFFFFF" stroke-width="2.2"/>')
c.append('<path d="M126 282v-6" fill="none" stroke-width="1.6"/>')
c.append('<path d="M120 290c-3 4-2 10 0 12" fill="none" stroke-width="1.4"/>')
# miska z czarna woda i zanurzona figurka (wystaje glowa i dlugie rece)
c.append('<path d="M168 300C170 322 236 322 238 300Z" fill="#FFFFFF" stroke-width="2.6"/>')
c.append('<ellipse cx="203" cy="300" rx="35" ry="7" fill="#000000" stroke-width="2.4"/>')
c.append('<path d="M196 300C196 288 198 280 203 278C208 280 210 288 210 300" fill="#000000" stroke-width="1.8"/>')
c.append('<circle cx="203" cy="272" r="6" fill="#000000" stroke-width="1.6"/>')
c.append('<path d="M197 286l-10 14M209 286l10 14" fill="none" stroke-width="2.6"/>')
c.append('<path d="M199 290c3-2 6-2 8 0" fill="none" stroke="#FFFFFF" stroke-width="1"/>')       # nadpalenie
# igla na stole
c.append('<path d="M250 314l26 -4" fill="none" stroke-width="1.4"/>')
L["c_tlo"] = (0, 0, 390, 440, c[0] + "\n" + group(c[1:]) + "\n" + red([
    '<ellipse cx="186" cy="314" rx="2.6" ry="1.4"/>', '<ellipse cx="193" cy="316" rx="1.8" ry="1"/>', '<ellipse cx="262" cy="312" rx="1.6" ry="1"/>']))

# ogromny cien staruchy na scianie (faluje razem z plomieniem)
L["c_cien"] = (150, 20, 250, 320, f'<g filter="url(#ink)"><path d="{CLOAK}" fill="#000000" opacity="0.82" '
              f'transform="translate(160 20) scale(0.74) translate(-80 -30)"/></g>')
# starucha przy stole (rysunek autora), patrzy w lewo — na miske
L["c_starucha"] = (232, 150, 156, 290, art.wiedzma("translate(238 142) scale(0.58) translate(-40 -24)", skip=("cień", "kostur")))
L["c_plomien"] = (114, 252, 24, 32, group([
    '<path d="M126 278C118 272 120 262 126 254C132 262 134 272 126 278Z" fill="#FFFFFF" stroke-width="2"/>',
    '<path d="M126 276C123 272 124 266 126 263C128 266 129 272 126 276Z" fill="#000000" stroke="none"/>']))
L["c_babelki"] = (186, 262, 34, 36, group([
    '<circle cx="194" cy="292" r="2.6" fill="#FFFFFF" stroke-width="1.2"/>', '<circle cx="212" cy="288" r="2" fill="#FFFFFF" stroke-width="1.2"/>',
    '<circle cx="204" cy="282" r="1.6" fill="#FFFFFF" stroke-width="1"/>']))


# ======================= NOC ATAKU =======================
n = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M0 0H390V230H0Z" fill="url(#hatchNight)" stroke="none"/>',
     '<circle cx="306" cy="70" r="24" fill="#FFFFFF" stroke-width="3"/>',
     '<circle cx="298" cy="64" r="4" fill="none" stroke-width="1.4"/><circle cx="314" cy="80" r="3" fill="none" stroke-width="1.4"/>']
for i in range(18):
    n.append(f'<path d="M{rnd.uniform(10, 380):.0f} {rnd.uniform(10, 200):.0f}m-3 0h6m-3 -3v6" fill="none" stroke="#FFFFFF" stroke-width="1.2"/>')
n.append('<path d="M-10 228C100 220 290 226 400 222V440H-10Z" fill="url(#hatch)" stroke-width="3"/>')
# chata (zrab, strzecha, drzwi, okienko) — wieksza, blizej widza
X0, X1, YB = 96, 294, 386
for i in range(8):
    y = YB - 13 * (i + 1)
    n.append(f'<rect x="{X0 - (8 if i % 2 == 0 else 3)}" y="{y}" width="{X1 - X0 + (16 if i % 2 == 0 else 6)}" height="13" rx="6" fill="#FFFFFF" stroke-width="2.4"/>')
n.append(f'<path d="M78 284L195 196L312 284C280 292 240 284 200 292C160 284 110 292 78 284Z" fill="url(#hatchDense)" stroke-width="3.4"/>')
n.append('<rect x="178" y="330" width="34" height="56" fill="#000000" stroke-width="2.4"/>')
n.append('<path d="M184 336l6 44M206 334l-4 46" fill="none" stroke="#FFFFFF" stroke-width="1"/>')               # szpary w drzwiach
n.append('<rect x="238" y="320" width="22" height="16" fill="#000000" stroke-width="2"/>')
L["n_tlo"] = (0, 0, 390, 440, n[0] + "\n" + group(n[1:]))
L["n_mgla"] = (-40, 330, 470, 90, group([
    f'<path d="{ribbon(-30, 160, 352, 14, 4)}" fill="#EDEBE6" stroke-width="2"/>',
    f'<path d="{ribbon(230, 420, 364, 13, 4)}" fill="#EDEBE6" stroke-width="2"/>',
    f'<path d="{ribbon(40, 330, 396, 16, 5)}" fill="#EDEBE6" stroke-width="2"/>']))
# slepia wysoko przy drzwiach (nad nadprożem) i ledwie widoczny zarys glowy i barkow stwora
L["n_slepia"] = (204, 226, 86, 166, group([
    # wysoki, wychudly stwor tuz przy drzwiach: maly leb, wysokie barki, rece do kolan zakonczone pazurami
    '<path d="M236 388l2-56h5l-1 56zM256 388l-2-56h-5l1 56z" fill="#000000" stroke-width="2"/>',
    '<path d="M226 270C230 262 262 262 266 270C268 296 260 318 254 336H238C232 318 224 296 226 270Z" fill="#000000" stroke-width="2"/>',
    '<path d="M240 264l2-6h8l2 6z" fill="#000000" stroke-width="2"/>',
    '<ellipse cx="246" cy="246" rx="10" ry="12" fill="#000000" stroke-width="2"/>',
    '<path d="M228 272C220 300 216 340 214 376M264 272C272 300 276 340 278 376" fill="none" stroke-width="5"/>',
    '<path d="M214 376l-4 10M214 376l0 11M214 376l4 10M278 376l-4 10M278 376l0 11M278 376l4 10" fill="none" stroke-width="2"/>',
    '<path d="M236 236c4-6 16-6 20 0" fill="none" stroke-width="2"/>',
    '<circle cx="241" cy="246" r="3.4" fill="#FFFFFF" stroke="#FFFFFF" stroke-width="0.8"/>', '<circle cx="252" cy="246" r="3.4" fill="#FFFFFF" stroke="#FFFFFF" stroke-width="0.8"/>',
    '<circle cx="241" cy="246" r="1.3" fill="#000000" stroke="none"/>', '<circle cx="252" cy="246" r="1.3" fill="#000000" stroke="none"/>']))
L["n_przod"] = (0, 410, 390, 434, group(['<path d="M-10 420H400V844H-10Z" fill="url(#hatch)" stroke="none"/>'] +
                                         [grass(rnd.uniform(0, 390), rnd.uniform(436, 840)) for _ in range(16)]))


# ======================= WALKA w izbie =======================
w = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>']
for i in range(13):
    y = 10 + i * 24
    w.append(f'<rect x="-10" y="{y}" width="410" height="22" rx="11" fill="#EDEBE6" stroke-width="2.2"/>')
w.append('<path d="M-10 0H400V330H-10Z" fill="url(#hatchDense)" stroke="none" opacity="0.55"/>')
# wyrwany otwor drzwi z lewej: swiatlo ksiezyca i mgla
w.append('<path d="M14 330V120H112V330Z" fill="#FFFFFF" stroke-width="3"/>')
w.append(f'<path d="M14 300C40 292 70 300 112 294V330H14Z" fill="#EDEBE6" stroke-width="1.6"/>')
w.append('<path d="M4 120H124" fill="none" stroke-width="7"/>')                                                    # nadproże
w.append('<path d="M120 330L150 316L156 328L128 340Z" fill="url(#hatch)" stroke-width="2"/>')                      # deska z drzwi
w.append('<path d="M70 352L118 338L122 346L76 360Z" fill="url(#hatch)" stroke-width="2"/>')
# klepisko, przewrocona lawa, deski piwniczki w kacie
w.append('<path d="M-10 330H400V440H-10Z" fill="#EDEBE6" stroke-width="3"/>')
for k in range(7):
    w.append(f'<path d="M{195 + (k * 70 - 210) * 0.4:.0f} 330L{k * 70 - 15} 440" fill="none" stroke-width="1"/>')
w.append('<path d="M150 380L190 404L186 412L146 388Z" fill="#FFFFFF" stroke-width="2.4"/><path d="M156 392l-8 14M182 404l-6 14" fill="none" stroke-width="3"/>')
w.append('<path d="M330 360H388M326 370H388M322 380H388" fill="none" stroke-width="2.6"/>')
L["w_tlo"] = (0, 0, 390, 440, w[0] + "\n" + group(w[1:]))

# stwor (rysunek autora, odwrocony w prawo), przygarbiony pod nadprożem
K = 0.56
L["w_stwor"] = (20, 92, 168, 336, art.topielec(f"translate({30 + 300 * K:.0f} {420 - 582 * K:.0f}) scale({-K} {K})", skip=("kałuża",)))
# pies skacze stworowi do przedramienia
L["w_pies"] = (96, 262, 130, 104, art.barking("translate(104 300) rotate(-28) scale(0.2)", skip=("cień", "szczekanie")))
# Maciek (tylem do Marianny) i Marianna za nim; rece z siekiera osobno (zamach)
MX, MY, MK = 266, 418, 1.45
L["maciek"] = (220, 262, 160, 160, group([postacie.woman(338, 412, 1.2), postacie.man(MX, MY, MK, hat=False)]))
SHX, SHY = MX - 8 * MK, MY - 54 * MK
L["siekiera"] = (round(SHX - 70), round(SHY - 100), 100, 110, group([
    f'<g transform="translate({SHX:.1f} {SHY:.1f}) scale(-1 1) translate({-SHX:.1f} {-SHY:.1f})">{postacie.axe_arms(SHX, SHY, 1.4)}</g>']))
L["kaluza"] = (226, 404, 110, 30, red(['<path d="M236 418C240 408 270 406 296 410C318 412 330 418 322 424C300 430 250 430 236 418Z"/>',
                                       '<ellipse cx="216" cy="420" rx="4" ry="2"/>']))


# ======================= POD PODLOGA =======================
p = ['<rect width="390" height="440" fill="#000000" stroke="none"/>']
# deski nad glowa: czarne pasy z jasnymi szparami (swiatlo ksiezyca)
SLITS = [70, 112, 150, 186, 218, 246]
for i, y in enumerate(SLITS):
    p.append(f'<path d="M-10 {y}C100 {y - 2} 250 {y + 2} 400 {y - 1}" fill="none" stroke="#EDEBE6" stroke-width="{3.4 - i * 0.35:.1f}"/>')
for x in (70, 200, 330):
    p.append(f'<path d="M{x} 40V262" fill="none" stroke="#EDEBE6" stroke-width="0.8" opacity="0.5"/>')            # legary
# swiatlo wpadajace przez szpary — smugi w dol
for y in SLITS[:4]:
    p.append(f'<path d="M60 {y}L40 {y + 160}M150 {y}L144 {y + 150}M260 {y}L270 {y + 150}" fill="none" stroke="#EDEBE6" stroke-width="0.7" opacity="0.35"/>')
# sciany dolu z ziemi
p.append('<path d="M-10 262C40 300 30 380 0 440H-10ZM400 262C350 300 360 380 390 440H400Z" fill="url(#hatch)" stroke="#EDEBE6" stroke-width="1.6"/>')
p.append('<path d="M20 430C120 420 270 420 370 430" fill="none" stroke="#EDEBE6" stroke-width="1.6"/>')
L["p_tlo"] = (0, 0, 390, 440, p[0] + "\n" + G_OPEN.replace('stroke="#000000"', 'stroke="#EDEBE6"') + "\n" + "\n".join(p[1:]) + "\n</g>")

# skulony Dobroslaw, obejmuje kolana, oczy szeroko otwarte (jasny kontur na czerni)
L["p_dziecko"] = (140, 310, 110, 124, G_OPEN.replace('stroke="#000000"', 'stroke="#EDEBE6"') + """
<path d="M160 428C150 396 160 360 178 346C188 340 204 340 214 346C232 360 240 396 230 428Z" fill="#000000" stroke-width="2.2"/>
<path d="M170 380C176 368 214 368 220 380" fill="none" stroke-width="2"/>
<circle cx="196" cy="332" r="16" fill="#000000" stroke-width="2.2"/>
<path d="M182 324c4-10 24-12 30 0" fill="none" stroke-width="2"/>
<circle cx="190" cy="334" r="3" fill="#EDEBE6" stroke="none"/><circle cx="203" cy="334" r="3" fill="#EDEBE6" stroke="none"/>
<circle cx="190" cy="334" r="1.2" fill="#000000" stroke="none"/><circle cx="203" cy="334" r="1.2" fill="#000000" stroke="none"/>
<path d="M180 390h30" fill="none" stroke-width="1.4"/>
</g>""")
# cien przesuwa sie nad deskami: zaslania szpary (stopa z dlugimi palcami/pazurami)
L["p_cien"] = (60, 40, 220, 230, '<g filter="url(#ink)"><path d="M90 60C120 44 200 46 236 66C262 82 268 120 256 160C248 196 260 224 244 250'
              'L230 236L224 258L208 240L198 262L186 242L172 262L166 238C150 210 128 180 110 150C94 124 74 84 90 60Z" fill="#000000"/></g>')
# krople krwi kapia przez szpary (dwie warstwy w przesunietej fazie, animacja rise z ujemna amplituda = spadanie)
drop = lambda x, y, s=1.0: f'<path d="M{x} {y}c{-2.4 * s:.1f} {4 * s:.1f} {-3 * s:.1f} {7 * s:.1f} 0 {8 * s:.1f}c{3 * s:.1f} {-1 * s:.1f} {2.4 * s:.1f} {-4 * s:.1f} 0 {-8 * s:.1f}z"/>'
L["p_krew_a"] = (120, 140, 160, 30, red([drop(140, 152, 1.3), drop(214, 148, 1.1), drop(262, 154, 1.2)]))
L["p_krew_b"] = (150, 180, 120, 30, red([drop(170, 190, 1.2), drop(236, 186, 1.4)]))
L["p_plamy"] = (120, 140, 160, 70, red(['<path d="M130 150h24l-4 3h-16z"/>', '<path d="M204 147h22l-3 3h-15z"/>', '<path d="M252 152h20l-3 3h-14z"/>',
                                        '<path d="M160 187h22l-3 3h-15z"/>', '<path d="M226 184h24l-4 3h-16z"/>']))


VARIANTS = {
    "czary": ["c_tlo", "c_cien", "c_starucha", "c_babelki", "c_plomien"],
    "noc_atak": ["n_tlo", "n_slepia", "n_mgla", "n_przod"],
    "walka": ["w_tlo", "w_stwor", "w_pies", "kaluza", "maciek", "siekiera"],
    "pod_podloga": ["p_tlo", "p_cien", "p_plamy", "p_krew_a", "p_krew_b", "p_dziecko"],
}
REVEAL = {"n_slepia": "slepia", "w_stwor": "stwor", "w_pies": "pies", "maciek": "maciek", "siekiera": "maciek", "kaluza": "kaluza",
          "p_cien": "cien", "p_plamy": "krew", "p_krew_a": "krew", "p_krew_b": "krew"}
ANIM = {"c_cien": {"type": "sway", "amplitude": 2.2, "duration": 1900, "anchorX": 0.4, "anchorY": 1},
        "c_plomien": {"type": "flame", "amplitude": 0.16, "duration": 1300, "anchorX": 0.5, "anchorY": 0.9},
        "c_babelki": {"type": "rise", "amplitude": 16, "duration": 2400},
        "c_starucha": {"type": "sway", "amplitude": 0.8, "duration": 3600, "anchorX": 0.5, "anchorY": 1},
        "n_mgla": {"type": "drift", "amplitude": 12, "duration": 13000},
        "n_slepia": {"type": "blink", "duration": 4200},
        "w_stwor": {"type": "sway", "amplitude": 1.6, "duration": 2600, "anchorX": 0.5, "anchorY": 1},
        "w_pies": {"type": "bob", "amplitude": 2, "duration": 360},
        "siekiera": {"type": "sway", "amplitude": 22, "duration": 1200, "anchorX": 0.7, "anchorY": 0.91},
        "p_cien": {"type": "drift", "amplitude": 40, "duration": 7000},
        "p_krew_a": {"type": "rise", "amplitude": -120, "duration": 1900},
        "p_krew_b": {"type": "rise", "amplitude": -110, "duration": 1900, "phase": 0.5}}
COMMENTS = {"c_tlo": "izba staruchy przy świecy: stół, miska z czarną wodą, zanurzona figurka, igła, krople krwi",
            "c_cien": "ogromny cień staruchy na ścianie (faluje)", "c_starucha": "starucha przy stole (rysunek autora)",
            "c_plomien": "płomień świecy (liże od podstawy)", "c_babelki": "bąbelki w misce (unoszą się)",
            "n_tlo": "chata nocą, księżyc", "n_mgla": "mgła (dryfuje)", "n_slepia": "ślepia stwora przy drzwiach (# pokaz: slepia, mrugają)",
            "n_przod": "pierwszy plan: trawa nocą",
            "w_tlo": "izba: wyrwane drzwi, światło księżyca, klepisko, przewrócona ława, deski piwniczki",
            "w_stwor": "stwór pod nadprożem (rysunek autora; # pokaz: stwor)", "w_pies": "pies skacze stworowi do ramienia (# pokaz: pies)",
            "maciek": "Maciek zasłania Mariannę (# pokaz: maciek)", "siekiera": "ręce z siekierą — zamach (# pokaz: maciek)",
            "kaluza": "kałuża krwi (# pokaz: kaluza)",
            "p_tlo": "widok z piwniczki: szpary między deskami, światło księżyca", "p_dziecko": "skulony Dobrosław",
            "p_cien": "cień przesuwa się nad deskami (# pokaz: cien)", "p_plamy": "krew na szparach (# pokaz: krew)",
            "p_krew_a": "krople krwi spadają przez szpary (# pokaz: krew)", "p_krew_b": "krople krwi spadają przez szpary (# pokaz: krew)"}

if __name__ == "__main__":
    if sys.argv[1] == "--master":
        v = sys.argv[2]
        hide = set() if len(sys.argv) > 3 and sys.argv[3] == "wszystko" else set(REVEAL)
        print(master(L, [n for n in VARIANTS[v] if n not in hide]))
    else:
        write_layers(sys.argv[1], "bg_klatwa", "klątwa", L, list(L.keys()), COMMENTS)
