# Generator tla "izba_andrzeja": wnetrze chalupy Andrzeja — sciany z bali, okno z widokiem na jezioro,
# bielony piec, polka z garnkami, stol; Stas strugajacy patyk na podlokietniku krzesla i Andrzej (Macka nie ma - patrzymy jego oczami).
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/izba.py src/LittleVillage/Resources/Images   -> pliki bg_izba_*.svg
#   python3 tools/Backgrounds/izba.py --master > podglad.svg
import sys, random
from common import *

L = {}
rnd = random.Random(21)

# ---------- SCIANY I PODLOGA
w = ['<rect width="390" height="844" fill="#EDEBE6" stroke="none"/>']
for i in range(14):
    y = 4 + i * 26
    w.append(f'<rect x="-10" y="{y}" width="410" height="24" rx="12" fill="#EDEBE6" stroke-width="2.4"/>')
    w.append(f'<path d="M{rnd.randint(10, 60)} {y + 13}H{rnd.randint(150, 220)}M{rnd.randint(240, 280)} {y + 11}H{rnd.randint(330, 380)}" fill="none" stroke-width="0.9"/>')
w.append('<path d="M-10 0H400V60H-10Z" fill="url(#hatch)" stroke="none" opacity="0.6"/>')
w.append('<rect x="-10" y="22" width="410" height="16" fill="#FFFFFF" stroke-width="3"/>')            # belka stropowa
w.append('<path d="M-10 368H400V844H-10Z" fill="#EDEBE6" stroke-width="3"/>')                          # podloga
for k in range(9):
    x = -60 + k * 64
    w.append(f'<path d="M{195 + (x - 195) * 0.45:.0f} 368L{x} 844" fill="none" stroke-width="1.6"/>')
for y in (402, 448, 510, 590):
    w.append(f'<line x1="-10" y1="{y}" x2="400" y2="{y}" stroke-width="1" stroke-dasharray="14 10"/>')
w.append('<path d="M-10 368H400V392C300 386 100 386 -10 392Z" fill="url(#hatch)" stroke="none" opacity="0.6"/>')
L["sciany"] = (0, 0, 390, 844, w[0] + "\n" + group(w[1:]))

# ---------- OKNO z widokiem na jezioro i trzciny (Andrzej patrzy przez nie w strone jeziora)
o = ['<rect x="30" y="110" width="96" height="92" fill="#FFFFFF" stroke-width="4"/>',
     '<path d="M34 170C60 164 90 166 122 162V198H34Z" fill="url(#water)" stroke="none"/>',
     '<path d="M34 170C60 164 90 166 122 162" fill="none" stroke-width="1.8"/>',
     '<path d="M34 150C52 140 70 146 84 138C98 132 112 140 122 136V162C92 166 60 164 34 170Z" fill="url(#hatchDense)" stroke="none"/>']
for x in range(38, 122, 9):
    o.append(reeds(x, 200, 0.8))
o.append('<path d="M78 110V202M30 156H126" fill="none" stroke-width="3.4"/>')
o.append('<rect x="22" y="202" width="112" height="9" fill="#FFFFFF" stroke-width="2.6"/>')
L["okno"] = (18, 104, 120, 112, group(o))

# ---------- PIEC bielony z okapem, polka z garnkami
p = ['<path d="M300 368V216C300 204 310 198 322 198H390V368Z" fill="#FFFFFF" stroke-width="3.4"/>',
     '<path d="M318 368V300H372V368" fill="none" stroke-width="2.4"/>',
     '<path d="M326 330C326 318 364 318 364 330V350H326Z" fill="#000000" stroke-width="2.2"/>',            # zamknieta czelusc
     '<path d="M300 236H390M300 280H390" fill="none" stroke-width="1.6"/>',
     '<path d="M290 198L322 150H390V198Z" fill="url(#hatch)" stroke-width="3"/>',                         # okap
     '<rect x="206" y="128" width="84" height="7" fill="#FFFFFF" stroke-width="2.4"/>',                   # polka
     '<path d="M212 135l-6 12M284 135l6 12" fill="none" stroke-width="2.2"/>']
for (x, h) in [(218, 22), (240, 16), (262, 26)]:
    p.append(f'<path d="M{x - 7} 128C{x - 9} {128 - h * 0.6:.0f} {x - 5} {128 - h} {x} {128 - h}C{x + 5} {128 - h} {x + 9} {128 - h * 0.6:.0f} {x + 7} 128Z" fill="#FFFFFF" stroke-width="2.2"/>')
    p.append(f'<path d="M{x - 5} {128 - h * 0.5:.0f}h10" fill="none" stroke-width="1.2"/>')
L["piec"] = (196, 100, 194, 272, group(p))

# ---------- STOL, LAWA, KRZESLO z podlokietnikiem
t = ['<rect x="120" y="318" width="150" height="12" fill="#FFFFFF" stroke-width="3"/>',
     '<path d="M132 330L126 404M258 330L264 404M150 330L148 396M240 330L242 396" fill="none" stroke-width="3.6"/>',
     '<path d="M150 314c0-8 10-12 16-6c4-6 14-4 14 4z" fill="#FFFFFF" stroke-width="2"/>',                   # bochenek? miska
     '<ellipse cx="226" cy="314" rx="14" ry="4" fill="#FFFFFF" stroke-width="2"/>',
     # krzeslo po prawej stronie stolu, bokiem, z podlokietnikiem
     '<path d="M276 300V404M318 300V404" fill="none" stroke-width="3.4"/>',
     '<rect x="272" y="350" width="50" height="8" fill="#FFFFFF" stroke-width="2.4"/>',                    # siedzisko
     '<rect x="270" y="318" width="54" height="7" rx="3" fill="#FFFFFF" stroke-width="2.4"/>',             # podlokietnik
     '<path d="M318 300V250M326 300V250" fill="none" stroke-width="3"/>',
     '<path d="M318 266h8M318 284h8" fill="none" stroke-width="2"/>']
# meble i postaci w powiekszeniu 1,5x wzgledem podlogi (blizej widza)
NEAR = "translate(200 404) scale(1.5) translate(-200 -404)"


def near(items):
    return group([f'<g transform="{NEAR}">'] + items + ['</g>'])


L["sprzety"] = (64, 156, 326, 262, near(t))


# ---------- POSTACI (czarne sylwetki jak Maciek na innych tlach)
def stas(x, y):
    """Chlopiec siedzacy na podlokietniku (x,y = siedzenie), struga nozykiem patyk."""
    return (f'<g stroke-width="2.2">'
            f'<path d="M{x - 9} {y}C{x - 10} {y - 14} {x - 6} {y - 26} {x} {y - 28}C{x + 6} {y - 26} {x + 10} {y - 14} {x + 9} {y}Z" fill="#000000"/>'
            f'<circle cx="{x + 1}" cy="{y - 34}" r="6" fill="#000000"/>'
            f'<path d="M{x - 6} {y - 38}c3-6 11-6 14 0" fill="#000000"/>'                                      # czupryna
            f'<path d="M{x - 6} {y}l-8 18l-2 14M{x + 4} {y}l-4 18l0 14" fill="none" stroke-width="4"/>'          # nogi zwisaja
            f'<path d="M{x + 6} {y - 20}l10 6l8 -4" fill="none" stroke-width="3"/>'                              # reka z nozykiem
            f'<path d="M{x + 22} {y - 20}l14 -10" fill="none" stroke-width="2.4"/>'                              # patyk
            f'<path d="M{x + 24} {y - 16}l4 -5" fill="none" stroke="#FFFFFF" stroke-width="1.4"/>'               # ostrze
            f'<path d="M{x + 30} {y - 8}l3 4M{x + 34} {y - 10}l4 2" fill="none" stroke-width="1.4"/>'            # wiory
            f'</g>')


def man(x, y, hat=False, beard=False, arm=None):
    """Dorosly mezczyzna, x,y = stopy."""
    g = [f'<path d="M{x - 7} {y}l3-30h5l-1 30zM{x + 7} {y}l-5-30h-5l3 30z" fill="#000000"/>',
         f'<path d="M{x - 13} {y - 28}C{x - 15} {y - 44} {x - 12} {y - 58} {x - 6} {y - 62}H{x + 6}C{x + 12} {y - 58} {x + 15} {y - 44} {x + 13} {y - 28}Z" fill="#000000"/>',
         f'<circle cx="{x}" cy="{y - 69}" r="7.5" fill="#000000"/>']
    if hat:
        g.append(f'<path d="M{x - 12} {y - 72}h24l-5-6h-14z" fill="#000000"/>')
    if beard:
        g.append(f'<path d="M{x - 6} {y - 66}c0 10 12 10 12 0z" fill="#000000"/>')
    if arm:
        g.append(f'<path d="M{x + 10} {y - 52}{arm}" fill="none" stroke-width="4"/>')
    return f'<g stroke-width="2.2">{"".join(g)}</g>'


L["stas"] = (282, 194, 108, 140, near([stas(290, 318)]))
L["andrzej"] = (0, 216, 92, 172, near([man(90, 388, beard=True, arm="l12 18")]))

ORDER = ["sciany", "okno", "piec", "sprzety", "andrzej", "stas"]
COMMENTS = {
    "sciany": "ściany z bali, belka stropowa, podłoga z desek", "okno": "okno z widokiem na jezioro i trzciny",
    "piec": "bielony piec z okapem, półka z garnkami", "sprzety": "stół i krzesło z podłokietnikiem",
    "stas": "Staś na podłokietniku, struga patyk (rusza ręką)", "andrzej": "Andrzej przy stole",
}

if __name__ == "__main__":
    if sys.argv[1] == "--master":
        print(master(L, ORDER))
    else:
        write_layers(sys.argv[1], "bg_izba", "izba Andrzeja", L, ORDER, COMMENTS)
