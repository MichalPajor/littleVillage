# Generator tla "zapadlina_lato" (rozdzial pierwszy): Zapadlina latem, pol wieku po prologu — dziewiec domow
# rozsianych po niecce, kladka z debowych bali przez mokradla, wszedzie kapliczki z kwiatami, stara lipa na skraju laki,
# jezioro z lewej, bor z prawej. Animacje: chmury, skowronki, dym z kominow, kolyszace sie zboze i kwiaty.
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/lato.py src/LittleVillage/Resources/Images   -> pliki bg_lato_*.svg
#   python3 tools/Backgrounds/lato.py --master > podglad.svg
import sys, random
from common import *
from kapliczki import hut, shrine

L = {}
rnd = random.Random(101)

t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M0 0H390V40C300 52 200 34 110 46C60 52 30 44 0 50Z" fill="url(#hatch)" stroke="none"/>',
     '<circle cx="70" cy="64" r="20" fill="#FFFFFF" stroke-width="3"/>',
     '<path d="M70 34v-8M70 94v8M40 64h-8M100 64h8M49 43l-6-6M91 43l6-6M49 85l-6 6M91 85l6 6" fill="none" stroke-width="2"/>']
# zbocza niecki
t.append('<path d="M-10 156C70 134 130 150 196 168C262 150 330 132 400 142V440H-10Z" fill="#EDEBE6" stroke-width="3"/>')
# bor po prawej (wschod)
for i in range(14):
    t.append(spruce(286 + i * 8, 168 - (i % 3) * 5, 32 + (i % 4) * 6, 15))
# jezioro po lewej (zachod) z trzcinami
t.append('<path d="M6 232C36 216 112 216 140 232C146 248 84 256 28 252C10 250 2 242 6 232Z" fill="url(#water)" stroke-width="2.4"/>')
t.append('<path d="M40 228h18M84 236h22" fill="none" stroke="#FFFFFF" stroke-width="1.6"/>')
for x in range(12, 136, 9):
    t.append(reeds(x, 252, 0.8))
# mokradla w glebi (polnoc) i kladka z debowych bali
for (px, py, rx) in [(176, 192, 24), (222, 200, 20), (150, 204, 14), (250, 190, 12)]:
    t.append(f'<ellipse cx="{px}" cy="{py}" rx="{rx}" ry="4" fill="#000000" stroke-width="1.4"/>')
for k in range(9):
    x = 166 + k * 9
    t.append(f'<rect x="{x}" y="{205 - k * 0.8:.1f}" width="7" height="4" fill="#FFFFFF" stroke-width="1.2"/>')
for x in range(140, 262, 14):
    t.append(cattail(x, 210, 0.7))
# pola: zagony z zbozem i bruzdami
for i in range(8):
    y0 = 268 + i * 20
    t.append(f'<path d="M150 {y0}C220 {y0 - 6} 300 {y0 + 4} 400 {y0 - 2}" fill="none" stroke-width="1.1"/>')
t.append('<path d="M260 300C300 296 350 300 400 296V340C350 344 300 340 262 344Z" fill="url(#hatch)" stroke="none" opacity="0.7"/>')
# drogi
t.append('<path d="M120 440C132 380 160 330 176 290C190 252 196 222 200 210" fill="none" stroke-width="2.6"/>')
t.append('<path d="M196 440C186 380 196 330 204 290C210 252 210 224 208 210" fill="none" stroke-width="2.6"/>')
t.append('<path d="M190 300C150 296 110 290 60 286" fill="none" stroke-width="1.8"/>')
# dziewiec domow
HOUSES = [(150, 236, 1.2), (226, 228, 1.0), (84, 286, 1.4), (300, 248, 1.1), (34, 194, 0.9),
          (110, 196, 0.8), (262, 270, 1.3), (330, 214, 0.9), (20, 322, 1.5)]
for (x, y, s) in HOUSES:
    t.append(hut(x, y, s))
# stara lipa na skraju laki
LX, LY = 338, 400      # podstawa pnia lipy
t.append(f'<path d="M{LX - 7} {LY}C{LX - 5} {LY - 30} {LX - 9} {LY - 50} {LX - 3} {LY - 64}M{LX + 7} {LY}C{LX + 5} {LY - 28} {LX + 11} {LY - 50} {LX + 5} {LY - 64}" fill="none" stroke-width="3.4"/>')
t.append(f'<path d="M{LX - 50} {LY - 58}C{LX - 68} {LY - 78} {LX - 60} {LY - 110} {LX - 34} {LY - 118}C{LX - 26} {LY - 142} {LX + 12} {LY - 142} {LX + 22} {LY - 120}C{LX + 46} {LY - 114} {LX + 50} {LY - 78} {LX + 30} {LY - 58}C{LX + 14} {LY - 46} {LX - 34} {LY - 46} {LX - 50} {LY - 58}Z" fill="url(#hatchDense)" stroke-width="2.8"/>')
t.append(f'<path d="M{LX - 14} {LY}h28" fill="none" stroke-width="2.4"/>')
L["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))

L["chmury"] = (110, 74, 230, 40, group([f'<path d="{ribbon(120, 200, 88, 11, 4)}" fill="#FFFFFF" stroke-width="2"/>',
                                        f'<path d="{ribbon(240, 320, 100, 10, 3)}" fill="#FFFFFF" stroke-width="2"/>']))
L["ptaki"] = (100, 104, 170, 40, group([crow(110, 124, 0.4), crow(140, 116, 0.35), crow(230, 130, 0.4)]))
# dym z kominow (kolysze sie)
smoke = []
for (x, y, s) in [(150, 236, 1.2), (84, 286, 1.4), (262, 270, 1.3)]:
    cx, cy = x + 8 * s, y - 10 * s
    smoke.append(f'<path d="M{cx:.0f} {cy:.0f}c-5-8 4-12 -1-20c-3-5 2-9 0-12" fill="none" stroke-width="2.4" opacity="0.55"/>')
L["dym"] = (80, 220, 200, 60, group(smoke))
# kapliczki wszedzie: przy drogach, na rozstajach, przy kladce, pod lasem, nad jeziorem
SHRINES = [(72, 410, 1.1), (226, 398, 0.9), (196, 290, 0.5), (150, 214, 0.38), (280, 196, 0.4), (126, 262, 0.42),
           (276, 352, 0.62), (40, 268, 0.45)]
L["kapliczki"] = (14, 150, 376, 280, group([shrine(x, y, s) for (x, y, s) in SHRINES]))

p = ['<path d="M-10 420H400V844H-10Z" fill="#EDEBE6" stroke="none"/>']
for i in range(22):
    p.append(grass(rnd.uniform(0, 390), rnd.uniform(436, 840), rnd.uniform(0.9, 1.3)))
L["przod"] = (0, 410, 390, 434, group(p))
kw = []
for i in range(30):
    x = 6 + i * 13
    y = 434 - (i % 3) * 5
    kw.append(f'<path d="M{x} {y}C{x - 1} {y - 10} {x + 2} {y - 18} {x + 1} {y - 24}" fill="none" stroke-width="1.4"/>')
    if i % 3 == 0:
        kw.append(f'<ellipse cx="{x + 1}" cy="{y - 30}" rx="2.2" ry="6" fill="url(#hatchDense)" stroke-width="1.2"/>')     # klos
    else:
        kw.append(f'<circle cx="{x + 1}" cy="{y - 27}" r="3" fill="{"#FFFFFF" if i % 2 else "#000000"}" stroke-width="1.2"/>')
L["kwiaty"] = (0, 396, 390, 44, group(kw))

ORDER = ["tlo", "chmury", "ptaki", "dym", "kapliczki", "przod", "kwiaty"]
REVEAL = {}
ANIM = {"chmury": {"type": "drift", "amplitude": 12, "duration": 17000},
        "ptaki": {"type": "bob", "amplitude": 5, "duration": 2400},
        "dym": {"type": "sway", "amplitude": 2.5, "duration": 5200, "anchorX": 0.5, "anchorY": 1},
        "kwiaty": {"type": "sway", "amplitude": 2, "duration": 3400, "anchorX": 0.5, "anchorY": 1}}
COMMENTS = {"tlo": "Zapadlina latem: dziewięć domów, kładka przez mokradła, jezioro, bór, pola, stara lipa", "chmury": "chmury (dryfują)",
            "ptaki": "skowronki", "dym": "dym z kominów (kołysze się)", "kapliczki": "kapliczki z kwiatami przy drogach i na rozstajach",
            "przod": "pierwszy plan: trawa", "kwiaty": "kłosy i polne kwiaty (kołyszą się)"}

if __name__ == "__main__":
    if sys.argv[1] == "--master":
        print(master(L, ORDER))
    else:
        write_layers(sys.argv[1], "bg_lato", "Zapadlina latem", L, ORDER, COMMENTS)
