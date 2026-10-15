# Generator tla "poranek" (rozdzial pierwszy, strona 2): letni swit — dom Jaromira z otwartymi drzwiami, kury na podwórzu,
# laka w rosie z pasmami mgly, slonce nad borem, skowronki. Odslaniane tekstem: Jaromir biegnie przez podworze
# (# pokaz: jaromir), u Stasiowych czekaja Franek i Antek kopiacy rowek miedzy kaluzami, nadbiega Hanka (# pokaz: dzieci).
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/poranek.py src/LittleVillage/Resources/Images   -> pliki bg_poranek_*.svg
#   python3 tools/Backgrounds/poranek.py --master [wszystko] > podglad.svg
import sys, random, math
from common import *
import postacie

L = {}
rnd = random.Random(111)

t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M0 0H390V36C300 46 200 30 110 40C60 46 30 38 0 44Z" fill="url(#hatch)" stroke="none"/>']
# slonce wschodzi nad borem (prawa strona)
t.append('<path d="M296 166A30 30 0 0 1 356 166Z" fill="#FFFFFF" stroke-width="3"/>')
for a in range(-75, 76, 25):
    rx, ry = math.sin(math.radians(a)), -math.cos(math.radians(a))
    t.append(f'<path d="M{326 + rx * 38:.0f} {166 + ry * 38:.0f}L{326 + rx * 54:.0f} {166 + ry * 54:.0f}" fill="none" stroke-width="2"/>')
t.append('<path d="M-10 172C80 160 200 168 280 164C330 162 370 166 400 164V440H-10Z" fill="#EDEBE6" stroke-width="3"/>')
for i in range(10):
    t.append(spruce(232 + i * 16, 172 - (i % 3) * 3, 24 + (i % 4) * 5, 12))
# dom Jaromira (z lewej, blisko): sciana, strzecha, otwarte drzwi, okno z uchylona okiennica
t.append('<path d="M-10 330V228H120V330Z" fill="#FFFFFF" stroke-width="3"/>')
t.append('<path d="M-20 232L50 176L140 232Z" fill="url(#hatch)" stroke-width="3.2"/>')
t.append('<path d="M70 330V266H100V330Z" fill="#000000" stroke-width="2.4"/>')
t.append('<path d="M100 266L118 274V334L100 330Z" fill="#FFFFFF" stroke-width="2"/>')                 # skrzydlo drzwi
t.append('<rect x="14" y="252" width="26" height="22" fill="#000000" stroke-width="2"/>')
t.append('<path d="M40 252l12 4v22l-12-4z" fill="#FFFFFF" stroke-width="1.8"/>')                      # okiennica
t.append('<path d="M60 186V160H72V196" fill="#FFFFFF" stroke-width="2.4"/>')                         # komin
# zagroda Stasiowych (z prawej, dalej): chalupa, plot, kaluze
t.append('<path d="M250 268V222H346V268Z" fill="#FFFFFF" stroke-width="2.6"/>')
t.append('<path d="M242 224L298 190L354 224Z" fill="url(#hatch)" stroke-width="2.6"/>')
t.append('<rect x="314" y="240" width="16" height="28" fill="#000000" stroke-width="1.8"/><rect x="266" y="236" width="14" height="12" fill="#000000" stroke-width="1.6"/>')
for x in range(226, 392, 14):
    t.append(f'<path d="M{x} 300V274" fill="none" stroke-width="2.2"/>')
t.append('<path d="M222 282H392M222 294H392" fill="none" stroke-width="1.8"/>')
for (px, py, rx) in [(252, 330, 18), (308, 338, 22)]:
    t.append(f'<ellipse cx="{px}" cy="{py}" rx="{rx}" ry="5" fill="url(#water)" stroke-width="1.8"/>')
# sciezka od drzwi do zagrody
t.append('<path d="M96 334C150 340 190 330 236 316" fill="none" stroke-width="1.6" stroke-dasharray="7 6"/>')
for i in range(26):
    x, y = rnd.uniform(0, 390), rnd.uniform(342, 432)
    t.append(grass(x, y, rnd.uniform(0.7, 1.1)))
L["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))

L["mgla"] = (130, 164, 290, 30, group([f'<path d="{ribbon(146, 280, 174, 6, 2)}" fill="#EDEBE6" stroke-width="1.6"/>',
                                       f'<path d="{ribbon(296, 410, 178, 6, 2)}" fill="#EDEBE6" stroke-width="1.6"/>']))
L["skowronki"] = (90, 60, 160, 50, group([crow(100, 84, 0.35), crow(150, 72, 0.3), crow(220, 90, 0.32)]))
L["dym"] = (54, 116, 30, 46, group(['<path d="M66 158c-6-8 4-12-1-20c-3-5 2-10 0-14" fill="none" stroke-width="2.6" opacity="0.6"/>']))
# kury na podworzu
def hen(x, y, f=1):
    return (f'<path d="M{x} {y}c{-8 * f} 0 {-10 * f} -10 {-4 * f} -14c{4 * f} -3 {10 * f} -2 {12 * f} 2l{4 * f} -6l{2 * f} 2l{-2 * f} 6c{2 * f} 6 {-2 * f} 10 {-10 * f} 10z" fill="#FFFFFF" stroke-width="1.6"/>'
            f'<path d="M{x + 4 * f} {y - 16}l{2 * f} -3l{2 * f} 3" fill="#A8101A" stroke="none"/>'
            f'<path d="M{x - 3 * f} {y}v4M{x + 1 * f} {y}v4" fill="none" stroke-width="1.2"/>')
def hen_peck(x, y, f=1):
    """Kura z lbem przy ziemi (druga klatka dziobania)."""
    return (f'<path d="M{x} {y}c{-8 * f} 0 {-10 * f} -10 {-4 * f} -14c{4 * f} -3 {10 * f} -2 {12 * f} 2l{4 * f} 8l{2 * f} 3l{-3 * f} 1c{-2 * f} 1 {-6 * f} 0 {-11 * f} 0z" fill="#FFFFFF" stroke-width="1.6"/>'
            f'<path d="M{x + 9 * f} {y - 5}l{2 * f} -2l{1 * f} 3" fill="#A8101A" stroke="none"/>'
            f'<path d="M{x - 3 * f} {y}v4M{x + 1 * f} {y}v4M{x + 13 * f} {y}l{1 * f} 2" fill="none" stroke-width="1.2"/>')


# kury dziobia ziarno: dwie klatki, w kazdej inna kura ma leb przy ziemi
L["kury_a"] = (120, 330, 120, 40, group([hen(132, 362, 1), hen_peck(170, 356, -1), hen(206, 364, 1)]))
L["kury_b"] = (120, 330, 120, 40, group([hen_peck(132, 362, 1), hen(170, 356, -1), hen_peck(206, 364, 1)]))
# skowronek wzlatuje coraz wyzej
L["skowronek"] = (108, 160, 30, 20, group([crow(112, 172, 0.42)]))
# rosa: iskierki w kroplach na trawie (migocza)
L["rosa"] = (10, 350, 370, 80, group([f'<path d="M{x} {y}m-3 0h6m-3 -3v6" fill="none" stroke="#FFFFFF" stroke-width="1.6"/>'
                                      f'<circle cx="{x}" cy="{y}" r="1.2" fill="#FFFFFF" stroke="none"/>'
                                      for (x, y) in [(30, 372), (78, 404), (128, 380), (186, 412), (240, 376), (296, 400), (350, 384), (360, 420), (60, 422)]]))
L["jaromir_a"] = (126, 360, 60, 64, group([postacie.running_child(150, 418, 1.3, facing=1, pose=0)]))
L["jaromir_b"] = (126, 360, 60, 64, group([postacie.running_child(150, 418, 1.3, facing=1, pose=1)]))
L["dzieci"] = (200, 252, 190, 110, group([postacie.child(342, 336, 1.25),                                  # Franek, rosly
                                          postacie.crouching_child(268, 340, 0.9),                         # Antek kopie rowek
                                          postacie.girl(214, 306, 0.8, running=True, facing=1)]))          # Hanka nadbiega

p = ['<path d="M-10 420H400V844H-10Z" fill="#EDEBE6" stroke="none"/>']
for i in range(20):
    p.append(grass(rnd.uniform(0, 390), rnd.uniform(436, 840), rnd.uniform(0.9, 1.3)))
L["przod"] = (0, 410, 390, 434, group(p))

ORDER = ["tlo", "mgla", "skowronki", "skowronek", "dym", "kury", "rosa", "dzieci", "jaromir", "przod"]
REVEAL = {"jaromir": "jaromir", "dzieci": "dzieci"}
ANIM = {"mgla": {"type": "drift", "amplitude": 10, "duration": 15000},
        "skowronki": {"type": "bob", "amplitude": 6, "duration": 2200},
        "skowronek": {"type": "arc", "amplitude": 6, "dx": 34, "dy": -120, "duration": 7000},
        "dym": {"type": "sway", "amplitude": 3, "duration": 5000, "anchorX": 0.5, "anchorY": 1},
        "kury": {"type": "frames", "duration": 1300},
        "rosa": {"type": "flicker", "amplitude": 0.2, "duration": 1600},
        "jaromir": {"type": "frames", "duration": 380}}
# mgla rozwiewa sie w trakcie czytania; klatki kur i biegu
EXTRA = {"mgla": {"hideAfter": 18000, "fadeDuration": 6000},
         "kury": {"frames": ["kury_a", "kury_b"]},
         "jaromir": {"frames": ["jaromir_a", "jaromir_b"]}}
COMMENTS = {"tlo": "letni świt: dom Jaromira z otwartymi drzwiami, zagroda Stasiowych z płotem i kałużami, bór, wschodzące słońce",
            "mgla": "strzępy mgły nad łąką (dryfują)", "skowronki": "skowronki", "dym": "dym z komina (kołysze się)",
            "kury_a": "kury na podwórzu (klatka 1 dziobania)", "kury_b": "kury na podwórzu (klatka 2 dziobania)",
            "skowronek": "skowronek wzlatujący coraz wyżej", "rosa": "iskierki rosy na trawie (migoczą)",
            "jaromir_a": "Jaromir biegnie przez podwórze, klatka 1 (# pokaz: jaromir)", "jaromir_b": "Jaromir biegnie, klatka 2 (# pokaz: jaromir)", "dzieci": "Franek, Antek przy rowku, nadbiegająca Hanka (# pokaz: dzieci)",
            "przod": "pierwszy plan: trawa"}

if __name__ == "__main__":
    if sys.argv[1] == "--master":
        hide = set() if len(sys.argv) > 2 and sys.argv[2] == "wszystko" else set(REVEAL)
        names = [EXTRA.get(n, {}).get("frames", [n])[0] for n in ORDER if n not in hide]
        print(master(L, names))
    else:
        write_layers(sys.argv[1], "bg_poranek", "poranek", L, list(L.keys()), COMMENTS)
        import bgjson
        bgjson.upsert("poranek", bgjson.entry("bg_poranek", ORDER, L, ANIM, REVEAL, EXTRA))
