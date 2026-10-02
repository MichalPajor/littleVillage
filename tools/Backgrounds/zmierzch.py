# Generator tel wieczornych prologu:
#   zmierzch         — zmierzch przy prawie gotowej chacie, mgla, oczy w krzakach (zanim pojawi sie stwor)
#   zmierzch_zdobycz — topielec z cialem psa w paszczy, krew, Maciek z siekiera
#   zmierzch_obrona  — topielec w krzakach z jarzacym sie okiem, pies ujada w obronie Macka
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/zmierzch.py src/LittleVillage/Resources/Images   -> pliki bg_zmierzch_*.svg
#   python3 tools/Backgrounds/zmierzch.py --master zdobycz > podglad.svg      -> podglad (baza|zdobycz|obrona)
import sys, random, math
from common import *
import art

L = {}
rnd = random.Random(9)

# ---------- NIEBO O ZMIERZCHU + grzbiet + ziemia + chata + szalas (statyczne)
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M0 0H390V150C300 168 200 140 120 160C70 172 30 160 0 166Z" fill="url(#hatchNight)" stroke="none"/>',
     '<path d="M0 166C30 160 70 172 120 160C200 140 300 168 390 150V236H0Z" fill="url(#hatchDense)" stroke="none"/>',
     # sierp ksiezyca
     '<path d="M84 64C64 72 60 104 82 116C66 120 48 104 50 86C52 68 68 58 84 64Z" fill="#FFFFFF" stroke-width="3"/>']
# Bukowy Grzbiet — czarna sylwetka z okraglymi koronami
ridge = "M-10 262"
for i, x in enumerate(range(0, 404, 22)):
    r = 12 + (i % 3) * 3
    ridge += f" Q{x + 11} {226 - r - (i % 2) * 6} {x + 22} {244 + (i % 2) * 4}"
ridge += " L400 270 L-10 270 Z"
t.append(f'<path d="{ridge}" fill="#000000" stroke-width="2.6"/>')
# ziemia w polmroku
t.append('<path d="M-10 268C80 262 170 270 250 264C320 260 360 266 400 262V440H-10Z" fill="#EDEBE6" stroke-width="3"/>')
t.append('<path d="M-10 268C80 262 170 270 250 264C320 260 360 266 400 262V440H-10Z" fill="url(#hatch)" stroke="none"/>')
# chata: zrab z bali i strzecha prawie skonczona (brakuje pasa przy kalenicy)
x0, x1, yb, lh = 96, 214, 372, 11
for i in range(6):
    y = yb - lh * (i + 1)
    b = []
    t.append(f'<rect x="{x0 - 5}" y="{y}" width="{x1 - x0 + 10}" height="{lh}" rx="5.5" fill="#FFFFFF" stroke-width="2.2"/>')
t.append(f'<rect x="146" y="{yb - lh * 4}" width="22" height="{lh * 4}" fill="#000000" stroke-width="2"/>')
t.append('<path d="M84 308L155 254L226 308Z" fill="url(#hatch)" stroke-width="3"/>')
for k in range(9):
    xa = 92 + k * 15
    t.append(f'<path d="M{xa} 306L{155 + (xa - 155) * 0.55:.0f} {279 + abs(xa - 155) * 0.05:.0f}" fill="none" stroke-width="1.4"/>')
t.append('<path d="M126 276L155 254L184 276Z" fill="#EDEBE6" stroke-width="2"/>')        # brakujacy pas
t.append('<path d="M155 254L132 272M155 254L178 272M155 254V276" fill="none" stroke-width="2.6"/>')  # krokwie widoczne
t.append('<path d="M84 308C110 312 130 306 155 310C180 306 200 312 226 308" fill="none" stroke-width="3"/>')
# snopy trzciny oparte o sciane
for (sx, sy) in [(222, 370), (232, 372), (242, 370)]:
    t.append(f'<path d="M{sx - 5} {sy}L{sx - 2} {sy - 40}L{sx + 2} {sy - 40}L{sx + 5} {sy}Z" fill="url(#hatchDense)" stroke-width="1.8"/>')
    t.append(f'<path d="M{sx - 4} {sy - 22}h8" fill="none" stroke-width="2"/>')
# szalas z galezi
t.append('<path d="M2 380L38 316L78 380Z" fill="url(#hatchDense)" stroke-width="2.8"/>')
t.append('<path d="M38 316L8 380M38 316L22 380M38 316L56 380M38 316L72 380M32 322l-10-7M44 322l10-8" fill="none" stroke-width="1.8"/>')
t.append('<path d="M28 380L38 352L50 380Z" fill="#000000" stroke-width="2"/>')
L["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))

# ---------- KRZAKI po prawej (tu czai sie stwor)
def bush(cx, cy, rx, ry, seed):
    r = random.Random(seed)
    pts = []
    steps = 22
    for i in range(steps + 1):
        a = math.pi + math.pi * i / steps
        rr = 1 + r.uniform(-0.08, 0.12)
        pts.append((cx + rx * rr * math.cos(a), cy + ry * rr * math.sin(a)))
    d = f"M{cx - rx:.0f} {cy + 6:.0f}"
    for i in range(1, len(pts)):
        (xa, ya), (xb, yb_) = pts[i - 1], pts[i]
        mx, my = (xa + xb) / 2, (ya + yb_) / 2
        d += f" Q{cx + (mx - cx) * 1.18:.0f} {cy + (my - cy) * 1.18:.0f} {xb:.0f} {yb_:.0f}"
    return d + f" L{cx + rx:.0f} {cy + 6:.0f} Z"

k = [f'<path d="{bush(352, 420, 96, 100, 4)}" fill="#000000" stroke-width="3"/>',
     f'<path d="{bush(268, 424, 52, 60, 5)}" fill="#000000" stroke-width="3"/>']
for i in range(34):
    x, y = rnd.uniform(220, 400), rnd.uniform(276, 416)
    inside = ((x - 352) / 96) ** 2 + ((y - 420) / 100) ** 2 < 0.8 or ((x - 268) / 52) ** 2 + ((y - 424) / 60) ** 2 < 0.8
    if inside:
        k.append(f'<path d="M{x:.0f} {y:.0f}q4 -3 8 0" fill="none" stroke="#FFFFFF" stroke-width="1.5"/>')
L["krzaki"] = (210, 300, 190, 136, group(k))

# oczy w krzakach (baza — cos patrzy, zanim sie pokaze)
L["oczy"] = (330, 344, 30, 14, group([
    '<ellipse cx="338" cy="351" rx="3.8" ry="2" fill="#FFFFFF" stroke="none"/>',
    '<ellipse cx="351" cy="351" rx="3.8" ry="2" fill="#FFFFFF" stroke="none"/>']))

# ---------- MGLA (dryfuje) — nisko, do kolan
L["mgla_gora"] = (-30, 352, 330, 36, group([
    f'<path d="{ribbon(-14, 180, 360, 9, 3)}" fill="#EDEBE6" stroke-width="1.9"/>',
    f'<path d="{ribbon(110, 290, 372, 7, 2)}" fill="#EDEBE6" stroke-width="1.7"/>']))
L["mgla_dol"] = (60, 396, 340, 38, group([
    f'<path d="{ribbon(80, 260, 404, 9, 3)}" fill="#EDEBE6" stroke-width="1.9"/>',
    f'<path d="{ribbon(200, 380, 418, 7, 2)}" fill="#EDEBE6" stroke-width="1.7"/>']))

# ---------- MACIEK z siekiera w rekach, zwrocony w strone krzakow
def maciek(mx, my):
    return (f'<g stroke-width="2.4">'
            f'<path d="M{mx - 7} {my}l3-26h5l-1 26zM{mx + 7} {my}l-5-26h-5l3 26z" fill="#000000"/>'
            f'<path d="M{mx - 12} {my - 24}C{mx - 14} {my - 38} {mx - 11} {my - 50} {mx - 5} {my - 54}H{mx + 6}C{mx + 11} {my - 48} {mx + 13} {my - 36} {mx + 11} {my - 24}Z" fill="#000000"/>'
            f'<circle cx="{mx + 1}" cy="{my - 60}" r="6.5" fill="#000000"/>'
            f'<path d="M{mx - 10} {my - 63}h22l-5-5h-12z" fill="#000000"/>'
            # siekiera trzymana oburacz, ostrze w gorze
            f'<line x1="{mx + 4}" y1="{my - 30}" x2="{mx + 22}" y2="{my - 66}" stroke-width="3.4"/>'
            f'<path d="M{mx + 18} {my - 64}C{mx + 20} {my - 80} {mx + 38} {my - 80} {mx + 40} {my - 66}C{mx + 34} {my - 70} {mx + 26} {my - 68} {mx + 22} {my - 60}Z" fill="#FFFFFF" stroke-width="2.4"/>'
            f'<path d="M{mx + 8} {my - 46}l8 -4M{mx - 2} {my - 40}l14 -6" fill="none" stroke-width="3"/>'
            f'</g>')
L["maciek"] = (160, 316, 80, 92, group([maciek(190, 404)]))

# ---------- STWOR: topielec — rysunek autora (assets/topielec.svg)
# Opis: "wyzsza od czlowieka o dobre trzy glowy". Maciek ma ~68 jednostek wzrostu, glowa ~13,
# wiec topielec ~107 jednostek (rysunek: ~495) -> skala 0,22; stopy na y=420, z prawej strony.
K = 0.22
TOP = f"translate(251 292) scale({K})"
MOUTH = (271, 339)     # paszcza po przeksztalceniu (92,212 w rysunku)
EYE = (272, 328)       # oko po przeksztalceniu (96,164 w rysunku)

# zdobycz: topielec wyszedl z krzakow; w paszczy bezwladne cialo psa, kapie krew
L["stwor_zdobycz"] = (246, 300, 80, 130, art.topielec(TOP))
L["pies_martwy"] = (240, 320, 50, 66, art.barking(
    f"translate({MOUTH[0] - 4} {MOUTH[1] + 14}) rotate(-84) scale(0.085) translate(-330 -150)", skip=("cień", "szczekanie", "drżenie")))
L["krew"] = (MOUTH[0] - 14, MOUTH[1] - 4, 24, 90, '<g fill="#A8101A" filter="url(#ink)">'
            f'<path d="M{MOUTH[0] - 1} {MOUTH[1] + 1}c1 4-1 7 0 11c1-3 2-7 1-11z"/>'
            f'<ellipse cx="{MOUTH[0] - 2}" cy="{MOUTH[1] + 40}" rx="1.4" ry="2.2"/>'
            f'<ellipse cx="{MOUTH[0] + 2}" cy="{MOUTH[1] + 58}" rx="1.2" ry="1.8"/>'
            f'<ellipse cx="{MOUTH[0] - 5}" cy="{MOUTH[1] + 78}" rx="2" ry="1.3"/>'
            '</g>')
L["oczy_stwora"] = (EYE[0] - 5, EYE[1] - 5, 10, 10, group([
    f'<circle cx="{EYE[0]}" cy="{EYE[1]}" r="2.2" fill="#FFFFFF" stroke-width="0.8"/>',
    f'<circle cx="{EYE[0] - 0.4}" cy="{EYE[1]}" r="1" fill="#000000" stroke="none"/>']))

# obrona: topielec w krzakach (krzaki_przod zaslaniaja mu nogi), oko jarzy sie w mroku
L["stwor_cien"] = (246, 300, 80, 130, art.topielec(TOP, skip=("kałuża",)))
L["krzaki_przod"] = (226, 330, 174, 100, group([
    f'<path d="{bush(300, 434, 84, 48, 7)}" fill="#000000" stroke-width="3"/>',
    *[f'<path d="M{x:.0f} {y:.0f}q4 -3 8 0" fill="none" stroke="#FFFFFF" stroke-width="1.5"/>'
      for x, y in [(240, 418), (262, 404), (286, 398), (310, 400), (334, 406), (356, 418), (298, 418)]]]))
L["slepia"] = (EYE[0] - 6, EYE[1] - 6, 12, 12, group([
    f'<circle cx="{EYE[0]}" cy="{EYE[1]}" r="3" fill="#FFFFFF" stroke-width="1"/>',
    f'<circle cx="{EYE[0] - 0.4}" cy="{EYE[1]}" r="1.3" fill="#000000" stroke="none"/>']))

# pies w postawie obronnej — rysunek autora (assets/wilczek2.svg), odbity, by szczekal w strone stwora
L["pies_obrona"] = (196, 350, 112, 76, art.barking("translate(300 357) scale(-0.17 0.17)"))

# ---------- PIERWSZY PLAN: ciemna trawa
f = ['<path d="M-10 430H400V844H-10Z" fill="#EDEBE6" stroke="none"/>',
     '<path d="M-10 430H400V844H-10Z" fill="url(#hatch)" stroke="none"/>']
for i in range(24):
    f.append(grass(rnd.uniform(0, 390), rnd.uniform(450, 840), rnd.uniform(0.9, 1.4)))
f.append('<path d="M0 690C40 740 60 800 70 844H0Z" fill="url(#hatchNight)" stroke="none"/>')
f.append('<path d="M390 680C350 740 340 800 336 844H390Z" fill="url(#hatchNight)" stroke="none"/>')
L["przod"] = (0, 430, 390, 414, group(f))

COMMENTS = {
    "tlo": "zmierzch: sierp księżyca, Bukowy Grzbiet, chata z prawie skończoną strzechą, szałas",
    "krzaki": "krzaki po prawej", "oczy": "oczy w krzakach (mrugają)",
    "mgla_gora": "mgła do kolan (dryfuje)", "mgla_dol": "mgła do kolan (dryfuje)",
    "maciek": "Maciek z siekierą w rękach",
    "stwor_zdobycz": "topielec wychodzący z krzaków (rysunek autora: assets/topielec.svg)", "pies_martwy": "martwy pies w paszczy stwora (rysunek autora)", "krew": "krew (jedyny kolor)", "oczy_stwora": "oko topielca (migocze)",
    "stwor_cien": "topielec w krzakach (rysunek autora)", "krzaki_przod": "krzaki zasłaniające stwora", "slepia": "jarzące się oko topielca (migocze)",
    "pies_obrona": "pies ujadający w obronie Maćka (rysunek autora, drży)", "przod": "pierwszy plan: ciemna trawa",
}
VARIANTS = {
    "baza": ["tlo", "krzaki", "oczy", "mgla_gora", "mgla_dol", "przod"],
    "zdobycz": ["tlo", "krzaki", "mgla_gora", "stwor_zdobycz", "pies_martwy", "krew", "oczy_stwora", "maciek", "mgla_dol", "przod"],
    "obrona": ["tlo", "krzaki", "stwor_cien", "krzaki_przod", "slepia", "mgla_gora", "maciek", "pies_obrona", "mgla_dol", "przod"],
}

if __name__ == "__main__":
    if sys.argv[1] == "--master":
        print(master(L, VARIANTS[sys.argv[2]]))
    else:
        write_layers(sys.argv[1], "bg_zmierzch", "zmierzch", L, list(L.keys()), COMMENTS)
