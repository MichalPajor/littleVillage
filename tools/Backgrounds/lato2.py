# Generator tel rozdzialu pierwszego, strony 5-7:
#   baza          — stary bez na skraju laki z baza w koronie (deski, daszek, drabinka na pniu), biale baldachy kwiatow;
#                   burza zza lasu z deszczem i blyskawica (# pokaz: burza)
#   jezioro_lato  — poludnie nad jeziorem: piaszczysty brzeg, przewrocony pien, koszule na trawie, trzciny z kikutami
#                   zweglonych bali; kapiace sie dzieci (# pokaz: kapiel), wazki, blyski na wodzie
#   wieczor_lato  — zachod slonca: dom z oswietlonym oknem, slupek na granicy pola, dlugie cienie, swietliki;
#                   matka wola z progu (# pokaz: matka), Jaromir biegnie do domu (# pokaz: jaromir)
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/lato2.py src/LittleVillage/Resources/Images   -> pliki bg_lato2_*.svg
#   python3 tools/Backgrounds/lato2.py --master baza|jezioro_lato|wieczor_lato [wszystko] > podglad.svg
import sys, random, math
from common import *
import postacie

L = {}
rnd = random.Random(141)
RED = "#A8101A"


# ======================= BAZA NA BZIE =======================
b = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M0 0H390V40C300 50 200 34 110 44C60 50 30 42 0 48Z" fill="url(#hatch)" stroke="none"/>',
     '<path d="M-10 330C100 322 280 326 400 320V440H-10Z" fill="#EDEBE6" stroke-width="3"/>']
for i in range(9):
    b.append(spruce(-4 + i * 12, 330 - (i % 3) * 4, 40 + (i % 4) * 6, 16))
# pnie bzu: kilka grubych, krzywych pedow z jednego miejsca
for (dx, top) in [(-10, 250), (0, 236), (10, 246), (-20, 270), (18, 262)]:
    b.append(f'<path d="M{206 + dx * 0.3:.0f} 410C{204 + dx * 0.6:.0f} 360 {200 + dx:.0f} 320 {206 + dx * 1.6:.0f} {top}" fill="none" stroke-width="5"/>')
# korona: szeroka, kreskowana, z bialymi baldachami kwiatow
b.append('<path d="M84 250C60 220 80 168 120 166C126 124 176 104 210 120C238 96 296 110 304 150C346 156 354 214 324 244C300 270 120 276 84 250Z" fill="url(#hatchDense)" stroke-width="3"/>')
for i in range(26):
    x, y = rnd.uniform(96, 320), rnd.uniform(132, 252)
    if not (150 < x < 262 and 168 < y < 242):
        b.append(f'<ellipse cx="{x:.0f}" cy="{y:.0f}" rx="7" ry="3" fill="#FFFFFF" stroke-width="1.2"/>')
# baza: podloga z desek, sciany, daszek, okienko z glowami dzieci, drabinka na pniu
b.append('<path d="M150 242H264V234H150Z" fill="#FFFFFF" stroke-width="2.4"/>')
for x in range(156, 262, 13):
    b.append(f'<path d="M{x} 234V196" fill="none" stroke-width="1.2"/>')
b.append('<path d="M156 234V196H258V234Z" fill="none" stroke-width="2.6"/>')
b.append('<path d="M146 198L208 172L268 196L262 200L208 178L152 202Z" fill="url(#hatch)" stroke-width="2.4"/>')
b.append('<path d="M178 204H226V222H178Z" fill="#FFFFFF" stroke-width="2"/>')
for (x, r) in [(188, 5), (202, 5.5), (216, 4.6)]:
    b.append(f'<circle cx="{x}" cy="{222 - r}" r="{r}" fill="#000000" stroke-width="1.2"/>')
for y in range(256, 404, 18):
    b.append(f'<path d="M196 {y}H218" fill="none" stroke-width="2.6"/>')
for i in range(22):
    b.append(grass(rnd.uniform(0, 390), rnd.uniform(338, 432), rnd.uniform(0.7, 1.1)))
L["b_tlo"] = (0, 0, 390, 440, b[0] + "\n" + group(b[1:]))
# brzeg korony z liscmi szumiacymi na wietrze (kolysze sie)
L["b_liscie"] = (60, 150, 290, 110, group([f'<path d="M{x} {y}c-6-6 -2-14 6-12c6-6 14-2 12 6c4 6-2 12-8 10c-4 4-10 2-10-4z" fill="url(#hatch)" stroke-width="1.6"/>'
                                          for (x, y) in [(76, 214), (92, 176), (316, 200), (330, 232), (290, 166), (110, 248)]]))
# burza: ciemny wal chmur, gesty ukosny deszcz (trzy warstwy w roznej fazie), blyskawica i rozblysk calego nieba;
# po kilkunastu sekundach burza ustepuje (hideAfter), a na niebie wylania sie tecza (appearAfter)
L["b_chmura"] = (-10, 0, 410, 110, group(['<path d="M-10 0H400V70C360 96 320 78 290 92C250 108 210 86 170 100C130 112 90 90 50 102C20 110 0 96 -10 100Z" fill="url(#hatchNight)" stroke-width="2.6"/>']))
rain = lambda off: group([f'<path d="M{x} {y}l-6 14" fill="none" stroke-width="1.2"/>' for x in range(6 + off, 396, 15) for y in range(104 + off % 11 * 3, 336, 34)])
for k, off in enumerate((0, 5, 10)):
    L[f"b_deszcz_{k}"] = (0, 96, 396, 250, rain(off))
L["b_blyskawica"] = (300, 60, 50, 90, group(['<path d="M330 66L314 104H328L310 146L344 96H330L346 66Z" fill="#FFFFFF" stroke-width="2"/>']))
L["b_rozblysk"] = (0, 0, 390, 440, '<rect width="390" height="440" fill="#FFFFFF" stroke="none"/>')
# kaluze na lace i kregi od kropli
PUDDLES = [(70, 372, 34), (300, 380, 40), (176, 420, 30)]
L["b_kaluze"] = (30, 360, 310, 70, group([f'<ellipse cx="{x}" cy="{y}" rx="{r}" ry="{r * 0.22:.0f}" fill="url(#water)" stroke-width="1.8"/>' for (x, y, r) in PUDDLES]))
RINGS = [(60, 372), (84, 374), (290, 380), (314, 382), (170, 420)]
for k, (x, y) in enumerate(RINGS):
    L[f"b_krag_{k}"] = (x - 12, y - 4, 24, 8, group([f'<ellipse cx="{x}" cy="{y}" rx="10" ry="2.6" fill="none" stroke-width="1.4"/>']))
# krople kapiace z okapu bazy
L["b_krople"] = (146, 200, 124, 16, group([f'<path d="M{x} 202c-1.6 3-2 5 0 6c2-1 1.6-3 0-6z" fill="#FFFFFF" stroke-width="1"/>' for x in range(150, 268, 14)]))
# tecza po burzy (zewnetrzny luk czerwony), lewa czesc nieba
rb = []
for k, (r, col, sw) in enumerate([(126, RED, 4), (118, "#000000", 2), (110, "#000000", 1.4), (102, "#000000", 2)]):
    rb.append(f'<path d="M{70 - r} 220A{r} {r} 0 0 1 {70 + r * 0.25:.0f} {220 - r * 0.97:.0f}" fill="none" stroke="{col}" stroke-width="{sw}"/>')
L["b_tecza"] = (-60, 90, 160, 140, group(rb))


# ======================= POLUDNIE NAD JEZIOREM =======================
j = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M0 0H390V34C300 44 200 28 110 38C60 44 30 36 0 42Z" fill="url(#hatch)" stroke="none"/>',
     '<circle cx="196" cy="62" r="22" fill="#FFFFFF" stroke-width="3"/>']
for a in range(0, 360, 30):
    rx, ry = math.cos(math.radians(a)), math.sin(math.radians(a))
    j.append(f'<path d="M{196 + rx * 30:.0f} {62 + ry * 30:.0f}L{196 + rx * 40:.0f} {62 + ry * 40:.0f}" fill="none" stroke-width="2"/>')
j.append('<path d="M-10 180C80 170 200 176 300 172C340 170 370 174 400 172V440H-10Z" fill="#EDEBE6" stroke-width="3"/>')
for i in range(20):
    j.append(spruce(150 + i * 13, 180 - (i % 3) * 3, 22 + (i % 4) * 4, 10))
# tafla jeziora
j.append('<path d="M-10 196C80 190 300 192 400 196V330C300 340 160 336 60 342C30 344 0 340 -10 338Z" fill="url(#water)" stroke-width="2.4"/>')
# zachodni brzeg: szuwary i czarne kikuty zweglonych bali
for x in range(0, 110, 8):
    j.append(reeds(x, 248 + (x % 3) * 4, 1.1))
for (x, h) in [(40, 16), (56, 22), (72, 12)]:
    j.append(f'<path d="M{x - 3} 254V{254 - h}H{x + 3}V254Z" fill="#000000" stroke-width="1.4"/>')
# przewrocony pien wchodzacy w wode (z prawej) i piaszczysty brzeg
j.append('<path d="M392 300L300 270L296 280L388 314Z" fill="#FFFFFF" stroke-width="2.6"/><path d="M306 272l-6 -10M340 286l4 -10" fill="none" stroke-width="2"/>')
j.append('<path d="M-10 338C60 342 160 336 300 340C340 342 370 340 400 338V440H-10Z" fill="#EDEBE6" stroke-width="2.6"/>')
for i in range(70):
    j.append(f'<circle cx="{rnd.uniform(0, 390):.0f}" cy="{rnd.uniform(346, 432):.0f}" r="0.9" fill="#000000" stroke="none"/>')
# koszule rzucone na trawe
for (x, y, r) in [(40, 396, -12), (78, 404, 8), (330, 392, -6)]:
    j.append(f'<path d="M{x - 12} {y}l6 -10h12l6 10l-6 2v10h-12v-10z" fill="#FFFFFF" stroke-width="1.8" transform="rotate({r} {x} {y})"/>')
L["j_tlo"] = (0, 0, 390, 440, j[0] + "\n" + group(j[1:]))
L["j_blyski"] = (60, 210, 300, 110, group([f'<path d="M{x} {y}h10" fill="none" stroke="#FFFFFF" stroke-width="2"/>'
                                          for (x, y) in [(90, 228), (150, 252), (226, 236), (280, 262), (120, 296), (200, 310), (310, 300)]]))
dragonfly = lambda x, y: f'<path d="M{x} {y}h14M{x + 4} {y}l-3 -5M{x + 4} {y}l-3 5M{x + 8} {y}l3 -5M{x + 8} {y}l3 5" fill="none" stroke-width="1.4"/>'
L["j_wazka_0"] = (156, 152, 22, 16, group([dragonfly(160, 160)]))
L["j_wazka_1"] = (236, 142, 22, 16, group([dragonfly(240, 150)]))
# Jaromir i Hanka w wodzie (glowy i rozbryzgi)
heads = ''.join(f'<circle cx="{x}" cy="{y}" r="7" fill="#000000" stroke-width="1.6"/><path d="M{x - 14} {y + 6}q7 -6 14 0q7 -6 14 0" fill="none" stroke-width="1.6"/>'
                for (x, y) in [(170, 292), (206, 300)])
braid = '<path d="M210 296c6 2 10 8 12 14" fill="none" stroke-width="2.2"/>'
splash = ''.join(f'<path d="M{x} {y}l-4 -10M{x + 6} {y - 2}l2 -12M{x + 12} {y}l5 -9" fill="none" stroke-width="1.6"/>' for (x, y) in [(150, 290), (220, 296)])
L["j_kapiel"] = (130, 270, 110, 50, group([heads, braid, splash]))
# Franek skacze na glowe z pnia do wody (lot po luku z obrotem) — plusk i kregi w miejscu wpadniecia
L["j_franek"] = (284, 222, 32, 46, group([postacie.child(300, 264, 1.0, arm="l6 -16")]))
SPLASH_AT = (246, 304)
L["j_plusk"] = (SPLASH_AT[0] - 30, SPLASH_AT[1] - 16, 60, 26, group([
    f'<ellipse cx="{SPLASH_AT[0]}" cy="{SPLASH_AT[1]}" rx="26" ry="6" fill="none" stroke-width="1.6"/>',
    f'<ellipse cx="{SPLASH_AT[0]}" cy="{SPLASH_AT[1]}" rx="14" ry="3.4" fill="none" stroke-width="1.4"/>',
    f'<path d="M{SPLASH_AT[0] - 8} {SPLASH_AT[1] - 3}l-4 -10M{SPLASH_AT[0]} {SPLASH_AT[1] - 4}v-11M{SPLASH_AT[0] + 8} {SPLASH_AT[1] - 3}l4 -10" fill="none" stroke-width="1.4"/>']))
# Antek na plyciznie chlapie: dwie klatki z rozbryzgami w roznych miejscach
def antek(drops):
    return group([postacie.crouching_child(250, 330, 0.9)] + [f'<path d="M{x} {y}l{dx} -8" fill="none" stroke-width="1.4"/>' for (x, y, dx) in drops])
L["j_antek_a"] = (224, 290, 66, 44, antek([(268, 318, 3), (274, 322, 6), (262, 316, -2)]))
L["j_antek_b"] = (224, 290, 66, 44, antek([(270, 312, 5), (280, 318, 7), (258, 314, -4), (266, 308, 1)]))


# ======================= LETNI WIECZOR =======================
# niebo osobno, slonce osobno (powoli zachodzi za las), reszta krajobrazu przeslania zachodzace slonce
L["w_niebo"] = (0, 0, 390, 440, '<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>\n' + group([
    '<path d="M0 0H390V80C300 92 200 70 110 84C60 92 30 84 0 88Z" fill="url(#hatchDense)" stroke="none"/>',
    '<path d="M0 88C30 84 60 92 110 84C200 70 300 92 390 80V150C300 160 200 146 110 156C60 160 30 152 0 158Z" fill="url(#hatch)" stroke="none"/>']))
L["w_slonce"] = (288, 154, 72, 72, group(['<circle cx="324" cy="190" r="34" fill="#FFFFFF" stroke-width="3"/>']))
w = ['<path d="M-10 194C80 186 200 192 280 188C330 186 370 190 400 188V440H-10Z" fill="#EDEBE6" stroke-width="3"/>']
for i in range(12):
    w.append(spruce(240 + i * 14, 196 - (i % 3) * 3, 26 + (i % 4) * 5, 13, fill="#000000"))
# dlugie cienie na lace (od prawej do lewej)
for (y, x0) in [(232, 120), (268, 60), (306, 140)]:
    w.append(f'<path d="M{x0} {y}L400 {y - 10}V{y - 2}L{x0} {y + 6}Z" fill="url(#hatch)" stroke="none" opacity="0.8"/>')
# dom z oswietlonym oknem i otwartymi drzwiami (z lewej)
w.append('<path d="M-10 340V246H120V340Z" fill="#FFFFFF" stroke-width="3"/>')
w.append('<path d="M-20 250L50 196L140 250Z" fill="url(#hatch)" stroke-width="3.2"/>')
w.append('<path d="M70 340V280H100V340Z" fill="#000000" stroke-width="2.4"/>')
w.append('<rect x="16" y="268" width="28" height="24" fill="#FFFFFF" stroke-width="2.4"/><path d="M30 268v24M16 280h28" fill="none" stroke-width="1.6"/>')
w.append('<path d="M60 206V180H72V214" fill="#FFFFFF" stroke-width="2.4"/>')
# slupek na granicy pola ojca
w.append('<path d="M232 368V318H240V368Z" fill="#FFFFFF" stroke-width="2.4"/><path d="M230 318h12" fill="none" stroke-width="2.4"/>')
w.append('<path d="M236 368L330 368" fill="none" stroke-width="1.2" stroke-dasharray="6 6"/>')
for i in range(24):
    w.append(grass(rnd.uniform(0, 390), rnd.uniform(346, 432), rnd.uniform(0.7, 1.1)))
L["w_tlo"] = (-10, 170, 410, 270, group(w))
L["w_dym"] = (54, 130, 30, 50, group(['<path d="M66 178c-6-8 4-12-1-20c-3-5 2-10 0-14" fill="none" stroke-width="2.6" opacity="0.6"/>']))
fly = lambda pts: group([f'<circle cx="{x}" cy="{y}" r="1.8" fill="#FFFFFF" stroke="#000000" stroke-width="0.6"/>'
                         f'<path d="M{x - 4} {y}h-2M{x + 4} {y}h2M{x} {y - 4}v-2M{x} {y + 4}v2" fill="none" stroke-width="0.8"/>' for (x, y) in pts])
FLIES = [[(140, 330), (262, 342), (170, 388)], [(196, 300), (318, 312), (288, 400)], [(160, 352), (300, 372), (210, 404)], [(228, 322), (340, 330), (130, 300)]]
for k, pts in enumerate(FLIES):
    xs, ys = [x for x, _ in pts], [y for _, y in pts]
    L[f"w_swietliki_{k}"] = (min(xs) - 8, min(ys) - 8, max(xs) - min(xs) + 16, max(ys) - min(ys) + 16, fly(pts))
L["w_nietoperz"] = (180, 96, 40, 24, group([postacie.bat(200, 108, 1.0)]))
STARS = [(40, 40), (120, 24), (196, 54), (262, 30), (350, 60), (90, 96)]
for k, (x, y) in enumerate(STARS):
    L[f"w_gwiazda_{k}"] = (x - 6, y - 6, 12, 12, group([f'<path d="M{x - 4} {y}h8M{x} {y - 4}v8" fill="none" stroke="#FFFFFF" stroke-width="1.6"/>'
                                                        f'<circle cx="{x}" cy="{y}" r="1.2" fill="#FFFFFF" stroke="none"/>']))
# matka w progu wola (reka przy ustach), Jaromir biegnie przez lake do domu (klatki biegu)
L["w_matka"] = (66, 270, 44, 74, group([postacie.woman(86, 340, 0.85),
                                        '<path d="M92 290l8 -4" fill="none" stroke-width="3"/>',
                                        '<path d="M104 282q6 2 6 8M108 278q9 4 9 14" fill="none" stroke-width="1.4"/>']))
L["w_jaromir_a"] = (176, 352, 60, 70, group([postacie.running_child(200, 414, 1.35, facing=-1, pose=0)]))
L["w_jaromir_b"] = (176, 352, 60, 70, group([postacie.running_child(200, 414, 1.35, facing=-1, pose=1)]))


STORM = 15000          # tyle trwa burza od odsloniecia, potem deszcz ustepuje teczy
VARIANTS = {
    "baza": ["b_tlo", "b_tecza", "b_liscie", "b_kaluze"] + [f"b_krag_{k}" for k in range(len(RINGS))]
            + ["b_chmura", "b_deszcz_0", "b_deszcz_1", "b_deszcz_2", "b_krople", "b_blyskawica", "b_rozblysk"],
    "jezioro_lato": ["j_tlo", "j_blyski", "j_wazka_0", "j_wazka_1", "j_plusk", "j_kapiel", "j_antek", "j_franek"],
    "wieczor_lato": ["w_niebo"] + [f"w_gwiazda_{k}" for k in range(len(STARS))] + ["w_slonce", "w_nietoperz", "w_tlo", "w_dym", "w_matka", "w_jaromir"]
                    + [f"w_swietliki_{k}" for k in range(len(FLIES))],
}
REVEAL = {**{n: "burza" for n in ["b_tecza", "b_kaluze", "b_chmura", "b_deszcz_0", "b_deszcz_1", "b_deszcz_2", "b_krople", "b_blyskawica", "b_rozblysk"]},
          **{f"b_krag_{k}": "burza" for k in range(len(RINGS))},
          "j_kapiel": "kapiel", "j_franek": "kapiel", "j_plusk": "kapiel", "j_antek": "kapiel", "w_matka": "matka", "w_jaromir": "jaromir"}
ANIM = {"b_liscie": {"type": "sway", "amplitude": 2.4, "duration": 2600, "anchorX": 0.5, "anchorY": 0.5},
        **{f"b_deszcz_{k}": {"type": "rise", "amplitude": -46, "duration": 620, "phase": round(k / 3, 2)} for k in range(3)},
        **{f"b_krag_{k}": {"type": "ripple", "amplitude": 1.3, "duration": 900 + k * 130, "anchorX": 0.5, "anchorY": 0.5, "phase": round(k * 0.21, 2)} for k in range(len(RINGS))},
        "b_krople": {"type": "rise", "amplitude": -26, "duration": 800},
        "b_blyskawica": {"type": "flash", "amplitude": 1, "duration": 5200},
        "b_rozblysk": {"type": "flash", "amplitude": 0.75, "duration": 5200},
        "j_blyski": {"type": "flicker", "amplitude": 0.25, "duration": 1500},
        "j_wazka_0": {"type": "wander", "amplitude": 22, "flap": 0.5, "duration": 5200},
        "j_wazka_1": {"type": "wander", "amplitude": 30, "flap": 0.5, "duration": 6600, "phase": 0.4},
        "j_kapiel": {"type": "bob", "amplitude": 1.4, "duration": 800},
        "j_antek": {"type": "frames", "duration": 500},
        # skok: 70% cyklu lot z pnia do wody, plusk zaczyna sie dokladnie w chwili wpadniecia (faza 0,3)
        "j_franek": {"type": "arc", "amplitude": 34, "dx": SPLASH_AT[0] - 300, "dy": SPLASH_AT[1] - 250, "spin": -170, "duration": 3400, "anchorX": 0.5, "anchorY": 0.5},
        "j_plusk": {"type": "ripple", "amplitude": 1.2, "duration": 3400, "phase": 0.3, "anchorX": 0.5, "anchorY": 0.6},
        "w_slonce": {"type": "slide", "dy": 70, "duration": 70000, "once": True},
        "w_nietoperz": {"type": "wander", "amplitude": 60, "flap": 0.6, "duration": 5600},
        "w_dym": {"type": "sway", "amplitude": 3, "duration": 5000, "anchorX": 0.5, "anchorY": 1},
        **{f"w_swietliki_{k}": {"type": "wander", "amplitude": 10 + k * 3, "duration": 4200 + k * 900, "phase": round(k * 0.27, 2)} for k in range(len(FLIES))},
        "w_jaromir": {"type": "frames", "duration": 380}}
EXTRA = {**{n: {"hideAfter": STORM, "fadeDuration": 3000} for n in ["b_chmura", "b_deszcz_0", "b_deszcz_1", "b_deszcz_2", "b_krople", "b_blyskawica"]},
         **{f"b_krag_{k}": {"hideAfter": STORM, "fadeDuration": 3000} for k in range(len(RINGS))},
         "b_rozblysk": {"hideAfter": STORM, "fadeDuration": 1000, "noInvert": True, "depth": 0},
         "b_tecza": {"appearAfter": STORM, "fadeDuration": 6000},
         "j_antek": {"frames": ["j_antek_a", "j_antek_b"]},
         "w_nietoperz": {"appearAfter": 5000, "fadeDuration": 2000},
         **{f"w_gwiazda_{k}": {"appearAfter": 6000 + k * 4000, "fadeDuration": 2500} for k in range(len(STARS))},
         "w_jaromir": {"frames": ["w_jaromir_a", "w_jaromir_b"]}}
COMMENTS = {"b_tlo": "stary bez z bazą w koronie, drabinka na pniu, biały baldach kwiatów, łąka i las",
            "b_liscie": "liście na brzegu korony (kołyszą się)", "b_chmura": "wał burzowych chmur (# pokaz: burza, potem ustępuje)",
            **{f"b_deszcz_{k}": "ukośny deszcz (# pokaz: burza, spada, potem ustępuje)" for k in range(3)},
            "b_blyskawica": "błyskawica (# pokaz: burza, błyska)", "b_rozblysk": "rozbłysk całego nieba (# pokaz: burza; bez odwracania kolorów)",
            "b_kaluze": "kałuże na łące (# pokaz: burza)", **{f"b_krag_{k}": "kręgi od kropli w kałuży (# pokaz: burza)" for k in range(len(RINGS))},
            "b_krople": "krople kapiące z okapu bazy (# pokaz: burza)", "b_tecza": "tęcza po burzy (# pokaz: burza, wyłania się po chwili)",
            "j_tlo": "jezioro w południe: piaszczysty brzeg, przewrócony pień, koszule, szuwary z kikutami zwęglonych bali",
            "j_blyski": "błyski słońca na wodzie (migoczą)", "j_wazka_0": "ważka (krąży)", "j_wazka_1": "ważka (krąży)",
            "j_kapiel": "Jaromir i Hanka w wodzie (# pokaz: kapiel)", "j_franek": "Franek skacze z pnia na głowę (# pokaz: kapiel)",
            "j_plusk": "plusk i kręgi, gdzie wpada Franek (# pokaz: kapiel)",
            "j_antek_a": "Antek chlapie na płyciźnie, klatka 1 (# pokaz: kapiel)", "j_antek_b": "Antek chlapie, klatka 2 (# pokaz: kapiel)",
            "w_niebo": "niebo o zachodzie", "w_slonce": "słońce (powoli zachodzi za las)",
            "w_tlo": "łąka, bór, dom z oświetlonym oknem, słupek na granicy pola, długie cienie", "w_dym": "dym z komina",
            **{f"w_swietliki_{k}": "świetliki (wędrują)" for k in range(len(FLIES))}, "w_nietoperz": "nietoperz (pojawia się po chwili)",
            **{f"w_gwiazda_{k}": "gwiazda (zapala się po kolei)" for k in range(len(STARS))},
            "w_matka": "matka woła z progu (# pokaz: matka)",
            "w_jaromir_a": "Jaromir biegnie do domu, klatka 1 (# pokaz: jaromir)", "w_jaromir_b": "Jaromir biegnie, klatka 2 (# pokaz: jaromir)"}

if __name__ == "__main__":
    if sys.argv[1] == "--master":
        v = sys.argv[2]
        hide = set() if len(sys.argv) > 3 and sys.argv[3] == "wszystko" else set(REVEAL)
        print(master(L, [EXTRA.get(n, {}).get("frames", [n])[0] for n in VARIANTS[v] if n not in hide and n != "b_rozblysk"]))
    else:
        write_layers(sys.argv[1], "bg_lato2", "lato", L, list(L.keys()), COMMENTS)
        import bgjson
        for key, names in VARIANTS.items():
            bgjson.upsert(key, bgjson.entry("bg_lato2", names, L, ANIM, REVEAL, EXTRA))
