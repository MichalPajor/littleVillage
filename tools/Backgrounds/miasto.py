# Generator tel wyprawy do miasta (prolog, czesc druga):
#   gosciniec — droga przez pola, wóz, na horyzoncie wieza kosciola i dachy miasta; Maciek idzie gościńcem
#   rynek     — rynek z ratuszem, kamienicami, straganami, studnia i tlumem
#   zaulek    — biedniejsza czesc rynku: plachty z cebula i lachmanami; starucha (rysunek autora, # pokaz: starucha),
#               pies warczy na nia (# pokaz: pies)
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/miasto.py src/LittleVillage/Resources/Images       -> pliki bg_miasto_*.svg
#   python3 tools/Backgrounds/miasto.py --master gosciniec|rynek|zaulek [wszystko] > podglad.svg
import sys, random
from common import *
import art, postacie
from sciezka import walker

L = {}
rnd = random.Random(61)


# ======================= GOSCINIEC =======================
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>'] + sky(150)
t.append('<circle cx="86" cy="58" r="20" fill="#FFFFFF" stroke-width="3"/>')
t.append('<path d="M86 28v-8M86 88v8M56 58h-8M116 58h8M65 37l-6-6M107 37l6-6M65 79l-6 6M107 79l6 6" fill="none" stroke-width="2"/>')
# miasto na horyzoncie: wieza kosciola i dachy
town = [(232, 194, 18, 14), (250, 192, 16, 18), (268, 194, 20, 12), (300, 193, 18, 16), (318, 195, 16, 12), (336, 194, 14, 14)]
for (x, y, w, h) in town:
    t.append(f'<path d="M{x} {y}V{y - h * 0.5:.0f}L{x + w / 2:.0f} {y - h}L{x + w} {y - h * 0.5:.0f}V{y}Z" fill="#FFFFFF" stroke-width="2"/>')
    t.append(f'<path d="M{x} {y - h * 0.5:.0f}L{x + w / 2:.0f} {y - h}L{x + w} {y - h * 0.5:.0f}Z" fill="url(#hatchDense)" stroke-width="2"/>')
t.append('<path d="M284 196V150H296V196Z" fill="#FFFFFF" stroke-width="2.4"/>')
t.append('<path d="M282 150L290 118L298 150Z" fill="#000000" stroke-width="2"/>')
t.append('<path d="M290 118V106M286 110H294" fill="none" stroke-width="1.8"/>')
t.append('<rect x="287" y="160" width="6" height="8" fill="#000000" stroke-width="1"/>')
# pagorki i pola
t.append('<path d="M-10 200C60 182 140 186 210 196C270 204 330 190 400 196V440H-10Z" fill="#EDEBE6" stroke-width="3"/>')
for i in range(9):
    y0 = 214 + i * 22
    t.append(f'<path d="M-10 {y0}C80 {y0 - 6} 120 {y0 + 4} {150 - i * 4} {y0 + 2}" fill="none" stroke-width="1.2"/>')
    t.append(f'<path d="M{262 + i * 6} {y0 + 2}C300 {y0 - 4} 350 {y0 + 6} 400 {y0}" fill="none" stroke-width="1.2"/>')
# zagajniki
for (cx, cy, n) in [(34, 196, 4), (360, 200, 3), (150, 194, 2)]:
    for j in range(n):
        x = cx + j * 12 - n * 5
        t.append(f'<circle cx="{x}" cy="{cy - 10 - (j % 2) * 4}" r="{9 + (j % 2) * 2}" fill="url(#hatchDense)" stroke-width="2"/>')
# kreta droga od dolu do miasta
t.append('<path d="M120 440C150 400 210 380 196 340C184 304 220 280 250 262C272 248 270 222 276 198" fill="none" stroke-width="3"/>')
t.append('<path d="M262 440C258 404 252 378 236 344C224 316 250 292 268 270C286 250 284 222 284 198" fill="none" stroke-width="3"/>')
t.append('<path d="M200 430C206 404 214 380 210 352M240 318C248 296 262 280 272 262" fill="none" stroke-width="1" stroke-dasharray="6 8"/>')
L["g_tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))

L["g_chmury"] = (110, 96, 230, 44, group([
    f'<path d="{ribbon(120, 210, 108, 12, 4)}" fill="#FFFFFF" stroke-width="2"/>',
    f'<path d="{ribbon(250, 330, 122, 10, 3)}" fill="#FFFFFF" stroke-width="2"/>']))

# woz z koniem jedzie na targ (wyzej na drodze, maly)
w = ['<path d="M246 262h30l-3 -10h-24z" fill="url(#hatch)" stroke-width="2"/>',
     '<path d="M248 252l4 -10h18l4 10" fill="#FFFFFF" stroke-width="1.8"/>',
     '<circle cx="252" cy="264" r="5" fill="#FFFFFF" stroke-width="1.8"/>', '<circle cx="270" cy="264" r="5" fill="#FFFFFF" stroke-width="1.8"/>',
     '<path d="M276 256h10" fill="none" stroke-width="1.6"/>',
     '<path d="M284 254c2-6 10-6 14-2l6-4l2 3l-4 4v6h-3v-5h-10v5h-3z" fill="#000000" stroke-width="1.4"/>',
     '<circle cx="262" cy="238" r="3" fill="#000000" stroke-width="1"/>']
L["g_woz"] = (240, 228, 70, 44, group(w))

L["g_maciek"] = (176, 316, 60, 104, group([walker(204, 410, 1.45)]))

z = ['<path d="M-10 420H400V844H-10Z" fill="#EDEBE6" stroke="none"/>']
for i in range(26):
    x, y = rnd.uniform(0, 390), rnd.uniform(436, 840)
    z.append(grass(x, y, rnd.uniform(0.9, 1.4)))
L["g_przod"] = (0, 410, 390, 434, group(z))
# klosy zboza przy drodze (kolysza sie)
kl = []
for i in range(16):
    x = 8 + i * 9 if i < 8 else 300 + (i - 8) * 11
    y = 432 - (i % 3) * 4
    kl.append(f'<path d="M{x} {y}C{x - 1} {y - 20} {x + 2} {y - 34} {x + 1} {y - 42}" fill="none" stroke-width="1.6"/>')
    kl.append(f'<ellipse cx="{x + 1}" cy="{y - 48}" rx="2.4" ry="7" fill="url(#hatchDense)" stroke-width="1.4"/>')
L["g_zboze"] = (0, 376, 390, 60, group(kl))


# ======================= RYNEK =======================
r = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M0 0H390V40C300 52 200 34 100 46C60 50 30 44 0 50Z" fill="url(#hatch)" stroke="none"/>']
# kamienice szczytami do rynku
houses = [(-10, 74, 62), (52, 92, 56), (108, 84, 50), (238, 88, 52), (290, 76, 58), (348, 94, 52)]
for (x, top, w) in houses:
    r.append(f'<path d="M{x} 272V{top + 40}L{x + w / 2:.0f} {top}L{x + w} {top + 40}V272Z" fill="#FFFFFF" stroke-width="2.6"/>')
    r.append(f'<path d="M{x} {top + 40}L{x + w / 2:.0f} {top}L{x + w} {top + 40}Z" fill="url(#hatch)" stroke-width="2.6"/>')
    for row in range(2):
        for col in range(2):
            wx = x + 10 + col * (w - 30)
            wy = top + 56 + row * 50
            r.append(f'<rect x="{wx:.0f}" y="{wy}" width="10" height="16" fill="#000000" stroke-width="1.6"/>')
    r.append(f'<path d="M{x + w / 2 - 8:.0f} 272V{252}Q{x + w / 2:.0f} 242 {x + w / 2 + 8:.0f} 252V272" fill="#000000" stroke-width="1.8"/>')
# ratusz z wieza i zegarem
r.append('<path d="M160 272V140H230V272Z" fill="#FFFFFF" stroke-width="3"/>')
r.append('<path d="M180 140V70H210V140Z" fill="#FFFFFF" stroke-width="2.8"/>')
r.append('<path d="M176 70L195 30L214 70Z" fill="url(#hatchDense)" stroke-width="2.6"/>')
r.append('<path d="M195 30V18M190 22h10" fill="none" stroke-width="1.8"/>')
r.append('<circle cx="195" cy="100" r="9" fill="#FFFFFF" stroke-width="2"/><path d="M195 100V94M195 100h5" fill="none" stroke-width="1.6"/>')
r.append('<path d="M176 272V230Q195 212 214 230V272Z" fill="#000000" stroke-width="2"/>')
for wx in (168, 212):
    r.append(f'<rect x="{wx}" y="160" width="10" height="18" fill="#000000" stroke-width="1.6"/>')
# bruk
r.append('<path d="M-10 272H400V440H-10Z" fill="#EDEBE6" stroke-width="3"/>')
for i in range(70):
    x, y = rnd.uniform(0, 390), rnd.uniform(282, 436)
    r.append(f'<ellipse cx="{x:.0f}" cy="{y:.0f}" rx="{rnd.uniform(3, 5):.1f}" ry="1.8" fill="none" stroke-width="1"/>')
# studnia z zurawiem
r.append('<path d="M318 352V328H354V352Z" fill="#FFFFFF" stroke-width="2.6"/>')
r.append('<path d="M318 336H354M326 328V352M346 328V352" fill="none" stroke-width="1.2"/>')
r.append('<path d="M336 328V250M300 268L380 238" fill="none" stroke-width="2.6"/>')
r.append('<path d="M304 266V300" fill="none" stroke-width="1.4"/><rect x="300" y="298" width="8" height="8" fill="#000000" stroke-width="1"/>')
L["r_tlo"] = (0, 0, 390, 440, r[0] + "\n" + group(r[1:]))

# stragany: stoly z towarem pod daszkami (daszki kolysza sie osobno)
s = []
stalls = [(24, 318, 84), (128, 328, 76), (226, 320, 80)]
for (x, y, w) in stalls:
    s.append(f'<path d="M{x + 4} {y}V{y + 46}M{x + w - 4} {y}V{y + 46}" fill="none" stroke-width="2.4"/>')
    s.append(f'<rect x="{x}" y="{y + 18}" width="{w}" height="10" fill="#FFFFFF" stroke-width="2.4"/>')
    for k in range(5):
        s.append(f'<ellipse cx="{x + 10 + k * (w - 20) / 4:.0f}" cy="{y + 14}" rx="5" ry="4" fill="{"#FFFFFF" if k % 2 else "#000000"}" stroke-width="1.4"/>')
L["r_stragany"] = (20, 310, 290, 70, group(s))
d = []
for (x, y, w) in stalls:
    d.append(f'<path d="M{x - 6} {y - 2}L{x + 6} {y - 22}H{x + w - 6}L{x + w + 6} {y - 2}Z" fill="#FFFFFF" stroke-width="2.4"/>')
    for k in range(0, int(w), 14):
        d.append(f'<path d="M{x + k:.0f} {y - 2}L{x + 8 + k:.0f} {y - 22}H{x + 15 + k:.0f}L{x + 7 + k:.0f} {y - 2}Z" fill="url(#hatchDense)" stroke="none"/>')
    d.append(f'<path d="M{x - 6} {y - 2}q{w / 8:.0f} 8 {w / 4 + 3:.0f} 0q{w / 8:.0f} 8 {w / 4 + 3:.0f} 0q{w / 8:.0f} 8 {w / 4 + 3:.0f} 0q{w / 8:.0f} 8 {w / 4 + 3:.0f} 0" fill="#FFFFFF" stroke-width="1.8"/>')
L["r_daszki"] = (12, 292, 310, 38, group(d))

# tlum: chlopi w sukmanach, przekupki
crowd = [postacie.man(70, 404, 0.9), postacie.woman(108, 410, 0.85, bundle=True), postacie.man(176, 412, 1.0, arm="l14 10"),
         postacie.woman(214, 404, 0.8), postacie.man(276, 408, 0.95), postacie.woman(372, 414, 0.9)]
L["r_tlum"] = (40, 330, 350, 90, group(crowd))
L["r_golebie"] = (120, 362, 160, 30, group([crow(130, 384, 0.5), crow(150, 388, 0.45), crow(250, 380, 0.5)]))


# ======================= ZAULEK =======================
z = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M0 0H390V30C300 40 200 26 100 36C60 40 30 34 0 38Z" fill="url(#hatchDense)" stroke="none"/>']
# krzywe, odrapane chalupy po obu stronach waskiego przejscia
z.append('<path d="M-10 300V70L40 40L120 60L132 300Z" fill="#FFFFFF" stroke-width="3"/>')
z.append('<path d="M-10 70L40 40L120 60L118 96L-10 104Z" fill="url(#hatchDense)" stroke-width="2.6"/>')
z.append('<path d="M262 300L272 70L340 44L400 64V300Z" fill="#FFFFFF" stroke-width="3"/>')
z.append('<path d="M272 70L340 44L400 64V100L270 104Z" fill="url(#hatchDense)" stroke-width="2.6"/>')
for (x, y) in [(20, 140), (78, 150), (300, 140), (352, 136)]:
    z.append(f'<path d="M{x} {y}h22v30h-22z" fill="#000000" stroke-width="1.8"/><path d="M{x + 11} {y}v30" fill="none" stroke="#FFFFFF" stroke-width="1.2"/>')
z.append('<path d="M40 300V236Q58 222 76 236V300Z" fill="#000000" stroke-width="2"/>')
z.append('<path d="M302 300V232Q322 216 342 232V300Z" fill="#000000" stroke-width="2"/>')
for (x0, y0) in [(10, 200), (96, 110), (288, 190), (360, 230)]:
    z.append(f'<path d="M{x0} {y0}l8 10l-4 10l9 12" fill="none" stroke-width="1.2"/>')            # pekniecia tynku
z.append('<path d="M0 220H120M276 214H400" fill="none" stroke-width="1" stroke-dasharray="3 6"/>')
# w przeswicie miedzy chalupami: odlegly rynek — dachy kamienic i wieza ratusza
z.append('<path d="M128 240V196L146 180L164 196V240ZM226 240V200L242 184L258 200V240Z" fill="url(#hatch)" stroke-width="2"/>')
z.append('<path d="M180 240V140H210V240Z" fill="#FFFFFF" stroke-width="2.4"/>')
z.append('<path d="M176 140L195 104L214 140Z" fill="url(#hatchDense)" stroke-width="2.2"/>')
z.append('<path d="M195 104V94M191 98h8" fill="none" stroke-width="1.6"/><circle cx="195" cy="160" r="6" fill="#FFFFFF" stroke-width="1.6"/>')
z.append('<path d="M164 240V214H180M210 222H226" fill="none" stroke-width="2"/>')
# blotnista ziemia
z.append('<path d="M-10 296C100 288 290 292 400 296V440H-10Z" fill="#EDEBE6" stroke-width="3"/>')
for i in range(26):
    x, y = rnd.uniform(0, 390), rnd.uniform(306, 432)
    z.append(f'<path d="M{x:.0f} {y:.0f}c4-2 8-2 12 0" fill="none" stroke-width="1"/>')
# plachty z cebula, lachmanami i zardzewialym zelastwem
z.append('<path d="M10 330L96 322L104 350L4 356Z" fill="#FFFFFF" stroke-width="2.2"/>')
for (x, y) in [(26, 338), (40, 342), (54, 336), (68, 342), (82, 336), (34, 348), (62, 350)]:
    z.append(f'<path d="M{x} {y}c-5 0-6-7 0-9c6 2 5 9 0 9zM{x} {y - 9}l1-4" fill="#FFFFFF" stroke-width="1.4"/>')
z.append('<path d="M290 336L376 330L386 360L284 364Z" fill="url(#hatch)" stroke-width="2.2"/>')
z.append('<path d="M300 346l20-6l10 10M332 340c8 6 18 6 26 0M344 354l22-4" fill="none" stroke-width="2.4"/>')
z.append('<path d="M302 354a7 7 0 1 0 14 0a7 7 0 1 0-14 0" fill="none" stroke-width="2"/>')
L["z_tlo"] = (0, 0, 390, 440, z[0] + "\n" + group(z[1:]))

L["z_maciek"] = (40, 300, 60, 126, group([postacie.man(70, 420, 1.45, arm="l12 22")]))
# starucha (rysunek autora, patrzy w lewo — na Macka); stopy na y~420
L["z_starucha"] = (150, 236, 132, 188, art.wiedzma("translate(150 228) scale(0.39) translate(-40 -24)"))
# pies warczy na staruche (rysunek autora wilczek2, zwrocony w prawo)
L["z_pies"] = (70, 360, 96, 66, art.barking("translate(164 364) scale(-0.15 0.15)", skip=("drżenie",)))

z2 = ['<path d="M-10 420H400V844H-10Z" fill="#EDEBE6" stroke="none"/>']
for i in range(14):
    z2.append(f'<path d="M{rnd.uniform(0, 390):.0f} {rnd.uniform(440, 840):.0f}c4-2 8-2 12 0" fill="none" stroke-width="1"/>')
L["z_przod"] = (0, 410, 390, 434, group(z2))


VARIANTS = {
    "gosciniec": ["g_tlo", "g_chmury", "g_woz", "g_maciek", "g_przod", "g_zboze"],
    "rynek": ["r_tlo", "r_stragany", "r_daszki", "r_tlum", "r_golebie"],
    "zaulek": ["z_tlo", "z_maciek", "z_starucha", "z_pies", "z_przod"],
}
REVEAL = {"gosciniec": {}, "rynek": {}, "zaulek": {"z_starucha": "starucha", "z_pies": "pies"}}
ANIM = {"g_chmury": {"type": "drift", "amplitude": 12, "duration": 16000},
        "g_woz": {"type": "bob", "amplitude": 0.8, "duration": 700},
        "g_maciek": {"type": "bob", "amplitude": 0.8, "duration": 900},
        "g_zboze": {"type": "sway", "amplitude": 1.6, "duration": 3800, "anchorX": 0.5, "anchorY": 1},
        "r_daszki": {"type": "sway", "amplitude": 0.8, "duration": 3000, "anchorX": 0.5, "anchorY": 0},
        "r_tlum": {"type": "bob", "amplitude": 0.6, "duration": 1600},
        "r_golebie": {"type": "bob", "amplitude": 1.6, "duration": 700},
        "z_starucha": {"type": "sway", "amplitude": 1.2, "duration": 4200, "anchorX": 0.5, "anchorY": 1},
        "z_pies": {"type": "bob", "amplitude": 0.6, "duration": 400}}
COMMENTS = {"g_tlo": "gościniec przez pola, na horyzoncie wieża kościoła i dachy miasta", "g_chmury": "chmury (dryfują)",
            "g_woz": "wóz z koniem jedzie na targ", "g_maciek": "Maciek idzie gościńcem", "g_przod": "pierwszy plan: trawa",
            "g_zboze": "kłosy przy drodze (kołyszą się)",
            "r_tlo": "rynek: kamienice, ratusz z wieżą, bruk, studnia z żurawiem", "r_stragany": "stragany z towarem",
            "r_daszki": "daszki straganów (kołyszą się)", "r_tlum": "tłum: chłopi i przekupki", "r_golebie": "gołębie na bruku",
            "z_tlo": "biedniejsza część rynku: krzywe chałupy, płachty z cebulą i żelastwem", "z_maciek": "Maciek",
            "z_starucha": "starucha w kapturze (rysunek autora; # pokaz: starucha)", "z_pies": "pies warczy na staruchę (rysunek autora; # pokaz: pies)",
            "z_przod": "pierwszy plan: błoto"}

if __name__ == "__main__":
    if sys.argv[1] == "--master":
        v = sys.argv[2]
        hide = set() if len(sys.argv) > 3 and sys.argv[3] == "wszystko" else set(REVEAL[v])
        print(master(L, [n for n in VARIANTS[v] if n not in hide]))
    else:
        write_layers(sys.argv[1], "bg_miasto", "miasto", L, list(L.keys()), COMMENTS)
