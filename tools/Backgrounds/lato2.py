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
# burza: ciemny wal chmur, deszcz (dwie warstwy w roznej fazie) i blyskawica
L["b_chmura"] = (-10, 0, 410, 110, group(['<path d="M-10 0H400V70C360 96 320 78 290 92C250 108 210 86 170 100C130 112 90 90 50 102C20 110 0 96 -10 100Z" fill="url(#hatchNight)" stroke-width="2.6"/>']))
rain = lambda off: group([f'<path d="M{x} {y}l-4 12" fill="none" stroke-width="1.2"/>' for x in range(8 + off, 392, 22) for y in range(110 + off % 11 * 3, 330, 46)])
L["b_deszcz_a"] = (0, 100, 390, 240, rain(0))
L["b_deszcz_b"] = (0, 100, 390, 240, rain(11))
L["b_blyskawica"] = (300, 60, 50, 90, group(['<path d="M330 66L314 104H328L310 146L344 96H330L346 66Z" fill="#FFFFFF" stroke-width="2"/>']))


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
L["j_wazki"] = (150, 140, 120, 40, group([f'<path d="M{x} {y}h14M{x + 4} {y}l-3 -5M{x + 4} {y}l-3 5M{x + 8} {y}l3 -5M{x + 8} {y}l3 5" fill="none" stroke-width="1.4"/>'
                                         for (x, y) in [(160, 160), (240, 150)]]))
# dzieci w wodzie: Franek skacze na glowe z pnia, Antek na plyciznie, Jaromir i Hanka chlapia sie
dive = f'<g transform="rotate(-120 300 250)">{postacie.child(300, 262, 1.1)}</g>'
heads = ''.join(f'<circle cx="{x}" cy="{y}" r="7" fill="#000000" stroke-width="1.6"/><path d="M{x - 14} {y + 6}q7 -6 14 0q7 -6 14 0" fill="none" stroke-width="1.6"/>'
                for (x, y) in [(170, 292), (206, 300)])
braid = '<path d="M210 296c6 2 10 8 12 14" fill="none" stroke-width="2.2"/>'
splash = ''.join(f'<path d="M{x} {y}l-4 -10M{x + 6} {y - 2}l2 -12M{x + 12} {y}l5 -9" fill="none" stroke-width="1.6"/>' for (x, y) in [(150, 290), (220, 296), (276, 300)])
L["j_kapiel"] = (120, 200, 210, 140, group([dive, heads, braid, splash, postacie.crouching_child(250, 330, 0.9)]))


# ======================= LETNI WIECZOR =======================
w = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M0 0H390V80C300 92 200 70 110 84C60 92 30 84 0 88Z" fill="url(#hatchDense)" stroke="none"/>',
     '<path d="M0 88C30 84 60 92 110 84C200 70 300 92 390 80V150C300 160 200 146 110 156C60 160 30 152 0 158Z" fill="url(#hatch)" stroke="none"/>',
     '<path d="M290 192A34 34 0 0 1 358 192Z" fill="#FFFFFF" stroke-width="3"/>']
w.append('<path d="M-10 194C80 186 200 192 280 188C330 186 370 190 400 188V440H-10Z" fill="#EDEBE6" stroke-width="3"/>')
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
L["w_tlo"] = (0, 0, 390, 440, w[0] + "\n" + group(w[1:]))
L["w_dym"] = (54, 130, 30, 50, group(['<path d="M66 178c-6-8 4-12-1-20c-3-5 2-10 0-14" fill="none" stroke-width="2.6" opacity="0.6"/>']))
fly = lambda pts: group([f'<circle cx="{x}" cy="{y}" r="1.8" fill="#FFFFFF" stroke="#000000" stroke-width="0.6"/>'
                         f'<path d="M{x - 4} {y}h-2M{x + 4} {y}h2M{x} {y - 4}v-2M{x} {y + 4}v2" fill="none" stroke-width="0.8"/>' for (x, y) in pts])
L["w_swietliki_a"] = (120, 280, 260, 150, fly([(140, 330), (196, 300), (262, 342), (318, 312), (352, 360), (170, 388), (288, 400)]))
L["w_swietliki_b"] = (120, 280, 260, 150, fly([(160, 352), (228, 322), (300, 372), (340, 330), (210, 404), (130, 300)]))
# matka w progu wola (reka przy ustach), Jaromir biegnie przez lake do domu
L["w_matka"] = (66, 270, 44, 74, group([postacie.woman(86, 340, 0.85),
                                        '<path d="M92 290l8 -4" fill="none" stroke-width="3"/>',
                                        '<path d="M104 282q6 2 6 8M108 278q9 4 9 14" fill="none" stroke-width="1.4"/>']))
L["w_jaromir"] = (176, 352, 60, 70, group([postacie.running_child(200, 414, 1.35, facing=-1)]))


VARIANTS = {
    "baza": ["b_tlo", "b_liscie", "b_chmura", "b_deszcz_a", "b_deszcz_b", "b_blyskawica"],
    "jezioro_lato": ["j_tlo", "j_blyski", "j_wazki", "j_kapiel"],
    "wieczor_lato": ["w_tlo", "w_dym", "w_matka", "w_jaromir", "w_swietliki_a", "w_swietliki_b"],
}
REVEAL = {"b_chmura": "burza", "b_deszcz_a": "burza", "b_deszcz_b": "burza", "b_blyskawica": "burza",
          "j_kapiel": "kapiel", "w_matka": "matka", "w_jaromir": "jaromir"}
ANIM = {"b_liscie": {"type": "sway", "amplitude": 2.4, "duration": 2600, "anchorX": 0.5, "anchorY": 0.5},
        "b_deszcz_a": {"type": "rise", "amplitude": -40, "duration": 700},
        "b_deszcz_b": {"type": "rise", "amplitude": -40, "duration": 700, "phase": 0.5},
        "b_blyskawica": {"type": "flicker", "amplitude": 0, "duration": 2300},
        "j_blyski": {"type": "flicker", "amplitude": 0.25, "duration": 1500},
        "j_wazki": {"type": "bob", "amplitude": 5, "duration": 900},
        "j_kapiel": {"type": "bob", "amplitude": 1.4, "duration": 800},
        "w_dym": {"type": "sway", "amplitude": 3, "duration": 5000, "anchorX": 0.5, "anchorY": 1},
        "w_swietliki_a": {"type": "flicker", "amplitude": 0.1, "duration": 1900},
        "w_swietliki_b": {"type": "flicker", "amplitude": 0.1, "duration": 1900, "phase": 0.5},
        "w_jaromir": {"type": "bob", "amplitude": 1.6, "duration": 360}}
COMMENTS = {"b_tlo": "stary bez z bazą w koronie, drabinka na pniu, biały baldach kwiatów, łąka i las",
            "b_liscie": "liście na brzegu korony (kołyszą się)", "b_chmura": "wał burzowych chmur (# pokaz: burza)",
            "b_deszcz_a": "deszcz (# pokaz: burza, spada)", "b_deszcz_b": "deszcz (# pokaz: burza, spada)",
            "b_blyskawica": "błyskawica (# pokaz: burza, błyska)",
            "j_tlo": "jezioro w południe: piaszczysty brzeg, przewrócony pień, koszule, szuwary z kikutami zwęglonych bali",
            "j_blyski": "błyski słońca na wodzie (migoczą)", "j_wazki": "ważki", "j_kapiel": "kąpiące się dzieci (# pokaz: kapiel)",
            "w_tlo": "zachód słońca: dom z oświetlonym oknem, słupek na granicy pola, długie cienie", "w_dym": "dym z komina",
            "w_swietliki_a": "świetliki (migoczą)", "w_swietliki_b": "świetliki (migoczą)",
            "w_matka": "matka woła z progu (# pokaz: matka)", "w_jaromir": "Jaromir biegnie do domu (# pokaz: jaromir)"}

if __name__ == "__main__":
    if sys.argv[1] == "--master":
        v = sys.argv[2]
        hide = set() if len(sys.argv) > 3 and sys.argv[3] == "wszystko" else set(REVEAL)
        print(master(L, [n for n in VARIANTS[v] if n not in hide]))
    else:
        write_layers(sys.argv[1], "bg_lato2", "lato", L, list(L.keys()), COMMENTS)
