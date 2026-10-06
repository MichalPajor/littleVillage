# Generator tel z rodzina Macka (prolog, czesc druga):
#   czworaki         — czworak na folwarku o zachodzie slonca: krzywy komin z dymem, jaskolki; Maciek wraca z tobolkiem,
#                      Dobroslaw kresli patykiem w piachu (# pokaz: dziecko), Marianna w drzwiach (# pokaz: marianna),
#                      pies (# pokaz: pies)
#   sciezka_rodzina  — powrot przez mokradla (tlo, mgla i pierwszy plan z tla "sciezka"): Maciek z synem na barana,
#                      za nim Marianna z wezelkiem; pies (# pokaz: pies)
# Rodzina przed chata (tla chata_*) jest w chata.py (warstwa "rodzina").
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/rodzina.py src/LittleVillage/Resources/Images       -> pliki bg_rodzina_*.svg
#   python3 tools/Backgrounds/rodzina.py --master czworaki|sciezka_rodzina [wszystko] > podglad.svg
import sys, random
from common import *
import art, postacie
import sciezka

L = {}
rnd = random.Random(71)

# ======================= CZWORAKI o zachodzie =======================
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M0 0H390V90C300 104 200 80 110 96C60 104 30 96 0 100Z" fill="url(#hatchDense)" stroke="none"/>',
     '<path d="M0 100C30 96 60 104 110 96C200 80 300 104 390 90V170C300 180 200 166 110 176C60 180 30 172 0 178Z" fill="url(#hatch)" stroke="none"/>']
# slonce zachodzi za pola (polowa tarczy nad horyzontem)
t.append('<path d="M300 206A34 34 0 0 1 368 206Z" fill="#FFFFFF" stroke-width="3"/>')
for a in range(-60, 61, 30):
    import math
    rx, ry = math.sin(math.radians(a)), -math.cos(math.radians(a))
    t.append(f'<path d="M{334 + rx * 42:.0f} {206 + ry * 42:.0f}L{334 + rx * 54:.0f} {206 + ry * 54:.0f}" fill="none" stroke-width="2"/>')
t.append('<path d="M-10 208C80 200 200 210 260 204C310 200 360 206 400 204V440H-10Z" fill="#EDEBE6" stroke-width="3"/>')
# dlugi, niski czworak: sciany bielone, dach kryty gontem, cztery pary drzwi i okien
t.append('<path d="M24 330V246H366V330Z" fill="#FFFFFF" stroke-width="3"/>')
t.append('<path d="M10 250L48 196H342L380 250Z" fill="url(#hatch)" stroke-width="3"/>')
for k in range(1, 6):
    t.append(f'<path d="M{10 + k * 6} {250 - k * 9}H{380 - k * 6}" fill="none" stroke-width="0.9"/>')
for i, x in enumerate((44, 126, 208, 290)):
    if i != 2:
        t.append(f'<path d="M{x} 330V288H{x + 22}V330Z" fill="#000000" stroke-width="2"/>')
    else:
        t.append(f'<path d="M{x} 330V288H{x + 22}V330Z" fill="#000000" stroke-width="2"/>')       # drzwi Marianny (tu stoi)
    t.append(f'<path d="M{x + 38} 270h18v18h-18z" fill="#000000" stroke-width="1.8"/><path d="M{x + 47} 270v18M{x + 38} 279h18" fill="none" stroke="#FFFFFF" stroke-width="1.2"/>')
# krzywe kominy
t.append('<path d="M118 214L114 182L130 180L132 212Z" fill="#FFFFFF" stroke-width="2.4"/>')
t.append('<path d="M262 212L266 176L282 178L278 212Z" fill="#FFFFFF" stroke-width="2.4"/>')
# plot i piach przed progiem
t.append('<path d="M-10 352H24M366 352H400M0 340V364M12 340V364M372 340V364M386 340V364" fill="none" stroke-width="2"/>')
for i in range(18):
    x, y = rnd.uniform(0, 390), rnd.uniform(342, 430)
    t.append(f'<path d="M{x:.0f} {y:.0f}h{rnd.uniform(4, 10):.0f}" fill="none" stroke-width="1"/>')
L["c_tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))

L["c_dym"] = (254, 110, 40, 72, group([
    '<path d="M272 176C262 160 280 150 270 134C264 124 274 116 270 112" fill="none" stroke-width="5" stroke-linecap="round" opacity="0.7"/>']))
L["c_jaskolki"] = (60, 120, 140, 40, group([crow(70, 140, 0.55), crow(100, 132, 0.45), crow(170, 146, 0.5)]))

L["c_maciek"] = (20, 316, 74, 112, group([postacie.man(62, 424, 1.35, bundle=True)]))
L["c_dziecko"] = (180, 362, 70, 50, group([postacie.crouching_child(198, 404, 1.15)]))
L["c_marianna"] = (210, 274, 44, 60, group([postacie.woman(219, 330, 0.6)]))
L["c_pies"] = (92, 380, 56, 46, art.sitting("translate(96 384) scale(0.085)", skip=("cień",)))

p = ['<path d="M-10 420H400V844H-10Z" fill="#EDEBE6" stroke="none"/>']
for i in range(20):
    p.append(grass(rnd.uniform(0, 390), rnd.uniform(436, 840), rnd.uniform(0.9, 1.3)))
L["c_przod"] = (0, 410, 390, 434, group(p))


# ======================= POWROT przez mokradla =======================
# schodza sciezka z Bukowego Grzbietu w strone widza: Maciek z przodu, Marianna krok w krok za nim
L["s_rodzina"] = (150, 236, 110, 190, group([
    postacie.woman(208, 316, 0.6, bundle=True),
    postacie.man_with_child(212, 414, 0.95)]))
L["s_pies"] = (238, 376, 70, 44, art.barking("translate(242 380) scale(0.1)", skip=("cień", "szczekanie", "drżenie")))


VARIANTS = {
    "czworaki": [("bg_rodzina", n) for n in ["c_tlo", "c_dym", "c_jaskolki", "c_maciek", "c_dziecko", "c_marianna", "c_pies", "c_przod"]],
    "sciezka_rodzina": [("bg_sciezka", "tlo"), ("bg_sciezka", "mgla"), ("bg_rodzina", "s_rodzina"), ("bg_rodzina", "s_pies"), ("bg_sciezka", "przod")],
}
REVEAL = {"c_dziecko": "dziecko", "c_marianna": "marianna", "c_pies": "pies", "s_pies": "pies"}
ANIM = {"c_dym": {"type": "sway", "amplitude": 3, "duration": 5200, "anchorX": 0.5, "anchorY": 1},
        "c_jaskolki": {"type": "bob", "amplitude": 5, "duration": 2600},
        "s_rodzina": {"type": "bob", "amplitude": 0.8, "duration": 1000},
        "s_pies": {"type": "bob", "amplitude": 0.8, "duration": 600},
        "mgla": {"type": "drift", "amplitude": 10, "duration": 14000}}
COMMENTS = {"c_tlo": "czworak na folwarku o zachodzie słońca", "c_dym": "dym z krzywego komina (kołysze się)",
            "c_jaskolki": "jaskółki", "c_maciek": "Maciek wraca z tobołkiem", "c_dziecko": "Dobrosław kreśli patykiem w piachu (# pokaz: dziecko)",
            "c_marianna": "Marianna w drzwiach (# pokaz: marianna)", "c_pies": "pies (rysunek autora; # pokaz: pies)", "c_przod": "pierwszy plan: trawa",
            "s_rodzina": "Maciek z synem na barana i Marianna z węzełkiem schodzą ścieżką", "s_pies": "pies (rysunek autora; # pokaz: pies)"}


def all_layers():
    both = {f"bg_rodzina_{n}": v for n, v in L.items()}
    both.update({f"bg_sciezka_{n}": v for n, v in sciezka.L.items()})
    return both


if __name__ == "__main__":
    if sys.argv[1] == "--master":
        v = sys.argv[2]
        hide = set() if len(sys.argv) > 3 and sys.argv[3] == "wszystko" else set(REVEAL)
        print(master(all_layers(), [f"{p}_{n}" for p, n in VARIANTS[v] if n not in hide]))
    else:
        write_layers(sys.argv[1], "bg_rodzina", "rodzina", L, list(L.keys()), COMMENTS)
