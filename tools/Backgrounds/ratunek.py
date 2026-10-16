# Generator tla "sciezka_ratunek" (prolog): Maciek poszedl za glosem bez psa i tonie w bagnie, ale przezywa.
# Bierze tlo, mgle i swiatelko ze sciezki (sciezka.py) i dodaje: Macka zanurzonego po piersi (znika przy # pokaz: ratunek),
# iskry z krzesiwa (# pokaz: iskry), Andrzeja z zerdzia na grobli (# pokaz: andrzej), Macka lezacego w blocie (# pokaz: ratunek),
# tonaca figurke, kregi i babelki (# pokaz: figurka), trzciny i wrony.
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/ratunek.py src/LittleVillage/Resources/Images   -> pliki bg_ratunek_*.svg + wpis w backgrounds.json
#   python3 tools/Backgrounds/ratunek.py --master [wszystko] > podglad.svg
import sys
from common import *
import sciezka, postacie, efekty, bgjson

RED = "#A8101A"
L = {}

# Maciek zanurzony po piersi przy swiatelku, rece wyrzucone w gore
L["w_wodzie"] = (88, 330, 60, 52, group(['<path d="M104 378C104 362 110 354 118 352C126 354 132 362 132 378Z" fill="#000000" stroke-width="2"/>',
                                         '<circle cx="118" cy="344" r="7" fill="#000000"/>',
                                         '<path d="M108 362L96 338M128 362L140 340" fill="none" stroke-width="3.4"/>',
                                         '<path d="M96 380c8 -4 36 -4 44 0" fill="none" stroke="#FFFFFF" stroke-width="1.6"/>']))
# iskry z krzesiwa nad woda (czerwone i biale)
sparks = []
for i, (dx, dy) in enumerate([(-10, -6), (-4, -14), (6, -10), (12, -2), (0, -20), (-14, 4)]):
    col = RED if i % 2 else "#FFFFFF"
    sparks.append(f'<path d="M{126 + dx} {350 + dy}l{3 if dx > 0 else -3} -4" fill="none" stroke="{col}" stroke-width="2"/>')
sparks.append(f'<circle cx="126" cy="350" r="3" fill="{RED}" stroke="none"/>')
L["iskry"] = (104, 326, 44, 34, group(sparks))
# Andrzej na grobli z dluga zerdzia siegajaca wody
andrzej = postacie.man(262, 400, 1.35, hat=True, arm="l-18 6")
andrzej += '<path d="M244 352L128 368" fill="none" stroke-width="3"/>'
andrzej += '<path d="M272 344C284 344 290 352 288 362C284 370 272 370 270 362Z" fill="url(#hatch)" stroke-width="1.6"/>'     # kosz
L["andrzej"] = (120, 296, 176, 108, group([andrzej]))
# figurka powoli opada w czarna wode
L["figurka"] = (150, 352, 16, 30, group(['<path d="M158 354C154 354 154 360 156 362L154 380H162L160 362C162 360 162 354 158 354Z" fill="#000000" stroke="#FFFFFF" stroke-width="1"/>',
                                         '<path d="M156 364l-4 12M160 364l4 12" fill="none" stroke="#FFFFFF" stroke-width="0.9"/>']))
RINGS = [(158, 380, 12), (158, 380, 22), (158, 380, 34)]
for i, (x, y, r) in enumerate(RINGS):
    L[f"krag_{i}"] = (x - r - 2, y - r * 0.3 - 2, 2 * r + 4, r * 0.6 + 4, group([f'<ellipse cx="{x}" cy="{y}" rx="{r}" ry="{r * 0.25:.0f}" fill="none" stroke="#FFFFFF" stroke-width="1.5"/>']))
L["babelki"] = (150, 352, 20, 26, group([f'<circle cx="{152 + i * 5}" cy="{374 - (i % 2) * 6}" r="{1.4 + (i % 3) * 0.5:.1f}" fill="none" stroke="#FFFFFF" stroke-width="1.1"/>' for i in range(3)]))
L["trzciny"] = (20, 390, 120, 40, group([reeds(x, 428, 1.4) for x in range(26, 136, 9)]))

S = "bg_sciezka"
ORDER = [(S, "tlo"), ("bg_ratunek", "wrony"), (S, "mgla"), (S, "swiatelko_blisko"), (S, "oczy"), ("bg_ratunek", "w_wodzie"),
         ("bg_ratunek", "iskry"), ("bg_ratunek", "figurka"), ("bg_ratunek", "krag_0"), ("bg_ratunek", "krag_1"), ("bg_ratunek", "krag_2"),
         ("bg_ratunek", "babelki"), (S, "maciek_lezy"), ("bg_ratunek", "andrzej"), ("bg_ratunek", "trzciny"), (S, "przod")]
REVEAL = {"oczy": "oczy", "iskry": "iskry", "andrzej": "andrzej", "maciek_lezy": "ratunek", "figurka": "figurka",
          "krag_0": "figurka", "krag_1": "figurka", "krag_2": "figurka", "babelki": "figurka"}
ANIM = {"mgla": dict(sciezka.ANIM["mgla"]), "swiatelko_blisko": dict(sciezka.ANIM["swiatelko_blisko"]), "oczy": dict(sciezka.ANIM["oczy"]),
        "w_wodzie": {"type": "bob", "amplitude": 1.6, "duration": 700},
        "iskry": {"type": "flash", "amplitude": 1, "duration": 900},
        "andrzej": {"type": "sway", "amplitude": 1.5, "duration": 900, "anchorX": 0.8, "anchorY": 1},
        "figurka": {"type": "slide", "dx": 0, "dy": 18, "duration": 3200, "once": True},
        "babelki": {"type": "rise", "amplitude": 22, "duration": 1500},
        "trzciny": {"type": "sway", "amplitude": 4, "duration": 2600, "anchorX": 0.5, "anchorY": 1}}
ANIM.update({f"krag_{i}": {"type": "ripple", "amplitude": 1.2, "duration": 1700 + i * 300, "anchorX": 0.5, "anchorY": 0.5, "phase": round(i * 0.3, 2)} for i in range(3)})
EXTRA = {"swiatelko_blisko": {"hideOn": "ratunek", "fadeDuration": 300}, "oczy": {"hideOn": "ratunek", "fadeDuration": 400},
         "w_wodzie": {"hideOn": "ratunek", "fadeDuration": 600}, "iskry": {"noInvert": True, "hideAfter": 2600, "fadeDuration": 200},
         "figurka": {"hideAfter": 3000, "fadeDuration": 1500}, "maciek_lezy": {"fadeDuration": 800}, "andrzej": {"fadeDuration": 800},
         "trzciny": {"depth": 0.9}, "przod": {"depth": 1.0}}
COMMENTS = {"w_wodzie": "Maciek zanurzony po piersi (znika przy # pokaz: ratunek)", "iskry": "iskry z krzesiwa nad wodą (# pokaz: iskry)",
            "andrzej": "Andrzej z żerdzią i koszem na grobli (# pokaz: andrzej)", "figurka": "figurka opada w czarną wodę (# pokaz: figurka)",
            "babelki": "bąble (# pokaz: figurka)", "trzciny": "trzciny (kołyszą się)"}
COMMENTS.update({f"krag_{i}": "kręgi na wodzie (# pokaz: figurka)" for i in range(3)})
efekty.add(L, [], ANIM, COMMENTS, "wrony", efekty.wrony(230, 120, n=3, seed=51))


def layers():
    out = []
    for prefix, name in ORDER:
        src = sciezka.L if prefix == S else L
        out += bgjson.entry(prefix, [name], src, ANIM, REVEAL, EXTRA)
    return out


if __name__ == "__main__":
    if sys.argv[1] == "--master":
        hide = set() if len(sys.argv) > 2 and sys.argv[2] == "wszystko" else set(REVEAL)
        allL = {f"{p}_{n}": (sciezka.L if p == S else L)[n] for p, n in ORDER}
        print(master(allL, [f"{p}_{n}" for p, n in ORDER if n not in hide]))
    else:
        write_layers(sys.argv[1], "bg_ratunek", "ratunek na mokradłach", L, list(L.keys()), COMMENTS)
        bgjson.upsert("sciezka_ratunek", layers())
