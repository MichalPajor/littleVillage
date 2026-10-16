# Generator tel rozdzialu czwartego (Marzanna):
#   stodola_marzanna — stodola u Stasiowych, przedwiosnie: smuga swiatla z wrot, pylki slomy, sopel kapie, kury, golebie;
#                      dzieci przy slomianej kukle (# pokaz: kukla — strój i twarz; # pokaz: wstazka — czerwona kokarda)
#   rozlewisko       — rozlewisko przy kladce: kry, trzciny, mgla; Franek z kukla (znika przy # pokaz: rzut), kukla leci lukiem
#                      (# pokaz: rzut), tonie — kregi i babelki (# pokaz: tonie), dzieci uciekaja (# pokaz: ucieczka),
#                      szara reka i slepia (# pokaz: reka), ogniki nad bagnem (# pokaz: chichot)
#   babka_lozko      — izba: babka Marianna na lozku za piecem, Jaromir na stolku; siekiera (# pokaz: siekiera),
#                      krzesiwo (# pokaz: krzesiwo), gromnica (# pokaz: swieca)
#   prog_noc         — noc na progu chalupy: ojciec z synem, gwiazdy, ksiezyc, sowa na plocie, mgla nad mokradlami
#   izba_wieczor     — wieczor w izbie: kaganek, ojciec z kubkiem, matka przy kolowrotku (kolo sie kreci), cmy
#   kapliczka_przewrocona — skraj boru wiosna: kaczence, cytrynek, przewrocona kapliczka (znika przy # pokaz: podniesiona
#                      albo latarnia), spirala (# pokaz: spirala), szczeniak autora szczeka (# pokaz: pies), kapliczka
#                      postawiona (# pokaz: podniesiona), podmuch (# pokaz: wiatr), noc z latarnia (# pokaz: latarnia)
#   urbaniak         — maj: kuznia z bocianami, bryczka, ludzie Urbaniaka znacza deby (# pokaz: znaki), bryczka odjezdza
#                      (# pokaz: odjazd), noc i wycie (# pokaz: noc)
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/wiosna.py src/LittleVillage/Resources/Images
#   python3 tools/Backgrounds/wiosna.py --master <tlo> [wszystko] > podglad.svg
import sys, random, math
from common import *
import art, postacie, efekty
from efekty import add as _add

RED = "#A8101A"


def kura(x, y, k=1.0, facing=1):
    f = facing
    P = lambda dx, dy: f"{x + dx * f * k:.1f} {y + dy * k:.1f}"
    return (f'<path d="M{P(-8, 0)}C{P(-10, -8)} {P(-4, -12)} {P(2, -10)}L{P(6, -14)}C{P(9, -15)} {P(10, -12)} {P(8, -10)}L{P(10, -9)}L{P(7, -8)}'
            f'C{P(8, -3)} {P(4, 0)} {P(-8, 0)}Z" fill="#FFFFFF" stroke-width="1.4"/>'
            f'<path d="M{P(6, -15)}l1 -3l2 2" fill="{RED}" stroke="{RED}" stroke-width="1"/>'
            f'<path d="M{P(-1, 0)}v4M{P(2, 0)}v4" fill="none" stroke-width="1.1"/><circle cx="{x + 6 * f * k:.1f}" cy="{y - 12 * k:.1f}" r="0.8" fill="#000000"/>')


def sciana_deski(w, h, step=15, fill="#EDEBE6"):
    out = [f'<rect width="{w}" height="{h}" fill="{fill}" stroke="none"/>']
    for x in range(0, w, step):
        out.append(f'<path d="M{x} 0V{h}" fill="none" stroke-width="0.8"/>')
    return out


def oak(x, base, h, k=1.0):
    """Dab: gruby pien, rozlozysta korona z kreskowaniem."""
    return (f'<path d="M{x - 7 * k} {base}C{x - 6 * k} {base - h * 0.4} {x - 9 * k} {base - h * 0.55} {x - 4 * k} {base - h * 0.62}'
            f'H{x + 4 * k}C{x + 9 * k} {base - h * 0.55} {x + 6 * k} {base - h * 0.4} {x + 7 * k} {base}Z" fill="#000000" stroke-width="2"/>'
            f'<path d="M{x - 34 * k} {base - h * 0.6}C{x - 46 * k} {base - h * 0.8} {x - 24 * k} {base - h} {x} {base - h}C{x + 26 * k} {base - h} {x + 46 * k} {base - h * 0.8} {x + 34 * k} {base - h * 0.6}'
            f'C{x + 20 * k} {base - h * 0.5} {x - 20 * k} {base - h * 0.5} {x - 34 * k} {base - h * 0.6}Z" fill="url(#hatchDense)" stroke-width="2.2"/>')


def kapliczka(x, base, k=1.0, inverted=False):
    """Slupowa kapliczka z daszkiem i figurka."""
    g = (f'<path d="M{x - 3 * k} {base}V{base - 60 * k}H{x + 3 * k}V{base}Z" fill="#FFFFFF" stroke-width="{1.8 * k:.1f}"/>'
         f'<path d="M{x - 10 * k} {base - 60 * k}H{x + 10 * k}V{base - 78 * k}H{x - 10 * k}Z" fill="#FFFFFF" stroke-width="{1.8 * k:.1f}"/>'
         f'<path d="M{x - 3 * k} {base - 64 * k}h{6 * k}v{10 * k}h{-6 * k}z" fill="#000000" stroke-width="1"/>'
         f'<path d="M{x - 14 * k} {base - 76 * k}L{x} {base - 90 * k}L{x + 14 * k} {base - 76 * k}Z" fill="url(#hatch)" stroke-width="{1.8 * k:.1f}"/>'
         f'<path d="M{x} {base - 90 * k}v{-8 * k}M{x - 3 * k} {base - 95 * k}h{6 * k}" fill="none" stroke-width="1.4"/>')
    if inverted:
        return f'<g transform="rotate(180 {x} {base - 45 * k})">{g}</g>'
    return g


# ======================= STODOLA: robienie Marzanny =======================
S = {}
rnd = random.Random(401)
t = sciana_deski(390, 440, 18)
t.append('<path d="M0 0H390V40H0Z" fill="url(#hatchDense)" stroke="none"/><path d="M0 40H390M0 120H390" fill="none" stroke-width="6"/>')   # belki
t.append('<path d="M-10 300H400V440H-10Z" fill="url(#hatch)" stroke="none" opacity="0.6"/><path d="M-10 300H400" fill="none" stroke-width="3"/>')
# otwarte wrota z prawej: jasne podworze, topniejacy snieg, sople u okapu
t.append('<path d="M286 300V86H372V300Z" fill="#FFFFFF" stroke-width="3"/><path d="M286 250C310 244 340 248 372 242V300H286Z" fill="#EDEBE6" stroke-width="1.2"/>')
t.append('<path d="M298 250L304 236M330 248L336 234M356 246L360 232" fill="none" stroke-width="1.2"/>')
t.append('<path d="M372 300V86L392 80V306Z" fill="url(#hatch)" stroke-width="2.4"/>')
for x in (292, 306, 322, 340, 358):
    t.append(f'<path d="M{x} 86l3 {12 + (x % 7)}l3 {-12 - (x % 7)}" fill="#FFFFFF" stroke-width="1.2"/>')
# sterty slomy i siana
t.append('<path d="M-10 300C10 250 60 236 110 246C140 252 150 280 150 300Z" fill="url(#hatchDense)" stroke-width="2.4"/>')
for i in range(14):
    x = rnd.uniform(0, 140)
    t.append(f'<path d="M{x:.0f} {rnd.uniform(256, 296):.0f}l{rnd.uniform(-8, 8):.0f} -6" fill="none" stroke="#FFFFFF" stroke-width="1"/>')
t.append('<path d="M196 300L204 270H236L244 300Z" fill="#FFFFFF" stroke-width="2"/>')      # skrzynia / ceber
S["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
# slomiana kukla na kiju (srodek)
S["kukla"] = (154, 150, 60, 150, group(['<path d="M184 300V184" fill="none" stroke-width="3"/>',
                                        '<path d="M184 166C170 168 168 190 178 196C170 230 166 256 162 278H206C202 256 198 230 190 196C200 190 198 168 184 166Z" fill="url(#hatchDense)" stroke-width="2"/>',
                                        '<path d="M170 210L156 226M198 210L212 226" fill="none" stroke-width="2.4"/>']))
# stroj: spodnica, chusta, twarz z wegielkow, korale ze skorupek
S["stroj"] = (150, 150, 70, 136, group(['<path d="M172 222C166 246 160 266 156 282H212C208 266 202 246 196 222Z" fill="#FFFFFF" stroke-width="2"/>',
                                        '<path d="M160 252h48M158 268h52" fill="none" stroke-width="1"/>',
                                        '<path d="M170 176C172 160 196 160 198 176L202 190H166Z" fill="#FFFFFF" stroke-width="1.8"/>',
                                        '<circle cx="179" cy="182" r="2.2" fill="#000000"/><circle cx="189" cy="182" r="2.2" fill="#000000"/>',
                                        '<path d="M178 190q6 4 12 0" fill="none" stroke-width="1.6"/>',
                                        ''.join(f'<circle cx="{172 + i * 4}" cy="{204 + abs(i - 3) * 1.2:.1f}" r="1.8" fill="#FFFFFF" stroke-width="0.8"/>' for i in range(7))]))
S["wstazka"] = (172, 194, 26, 20, group([f'<path d="M184 200C176 192 172 200 178 204C172 210 180 214 184 204C188 214 196 210 190 204C196 200 192 192 184 200Z" fill="{RED}" stroke="{RED}" stroke-width="1.2"/>',
                                          f'<path d="M183 205l-4 9M185 205l4 9" fill="none" stroke="{RED}" stroke-width="1.6"/>']))
# dzieci: Franek trzyma kij, Antek z lachami, Jaromir, Hanka
S["dzieci"] = (90, 220, 210, 90, group([postacie.child(132, 304, 1.6), postacie.child(230, 304, 1.4), postacie.child(108, 306, 1.35),
                                         postacie.girl(258, 306, 1.35)]))
S["kury_0"] = (40, 314, 34, 26, group([kura(56, 336, 1.3)]))
S["kury_1"] = (300, 318, 34, 26, group([kura(316, 340, 1.2, facing=-1)]))
p = ['<path d="M-10 432H400V844H-10Z" fill="url(#hatch)" stroke="none" opacity="0.6"/>']
S["przod"] = (0, 422, 390, 422, group(p))
STODOLA = ["tlo", "kukla", "stroj", "wstazka", "dzieci", "kury_0", "kury_1", "przod"]
S_REVEAL = {"stroj": "kukla", "wstazka": "wstazka"}
S_ANIM = {"kukla": {"type": "sway", "amplitude": 1.5, "duration": 3000, "anchorX": 0.5, "anchorY": 1},
          "stroj": {"type": "sway", "amplitude": 1.5, "duration": 3000, "anchorX": 0.5, "anchorY": 1},
          "wstazka": {"type": "sway", "amplitude": 6, "duration": 900, "anchorX": 0.5, "anchorY": 0.3},
          "dzieci": {"type": "bob", "amplitude": 0.8, "duration": 1500},
          "kury_0": {"type": "sway", "amplitude": 14, "duration": 1300, "anchorX": 0.3, "anchorY": 1},
          "kury_1": {"type": "sway", "amplitude": 12, "duration": 1700, "anchorX": 0.7, "anchorY": 1, "phase": 0.3}}
S_EXTRA = {"wstazka": {"noInvert": True, "fadeDuration": 1500}, "stroj": {"fadeDuration": 2000}, "przod": {"depth": 1.0}, "dzieci": {"depth": 0.6}}
S_COMMENTS = {"tlo": "stodoła u Stasiowych: belki, otwarte wrota na podwórze z topniejącym śniegiem, sople, sterty słomy",
              "kukla": "słomiana kukła na kiju (kołysze się)", "stroj": "spódnica, chusta, węgielki i korale ze skorupek (# pokaz: kukla)",
              "wstazka": "czerwona kokarda Hanki na szyi kukły (# pokaz: wstazka)", "dzieci": "Franek, Antek, Jaromir i Hanka",
              "kury_0": "kura dziobie", "kury_1": "kura dziobie", "przod": "pierwszy plan: klepisko"}
_add(S, STODOLA, S_ANIM, S_COMMENTS, "smuga", efekty.smuga([(286, 90), (372, 90), (240, 300), (150, 300)], opacity=0.3), before="kukla")
_add(S, STODOLA, S_ANIM, S_COMMENTS, "pylki_0", efekty.pylki(170, 110, 110, 150, n=12, seed=41), before="kukla")
_add(S, STODOLA, S_ANIM, S_COMMENTS, "pylki_1", efekty.pylki(200, 130, 90, 140, n=10, seed=42, phase=0.5), before="kukla")
S_COMMENTS["pylki_0"] = S_COMMENTS["pylki_1"] = "pyłki słomy wirują w świetle"
_add(S, STODOLA, S_ANIM, S_COMMENTS, "krople", efekty.platki(290, 100, 76, 30, n=6, seed=43, fall=150, duration=1800, r=(1.0, 1.6)), before="kukla")
S_COMMENTS["krople"] = "krople kapią z sopli u okapu"
_add(S, STODOLA, S_ANIM, S_COMMENTS, "golab_0", efekty.wrona_siedzi(60, 118, 0.9), before="kukla")
_add(S, STODOLA, S_ANIM, S_COMMENTS, "golab_1", efekty.wrona_siedzi(230, 118, 0.85), before="kukla")
S_ANIM["golab_1"] = dict(S_ANIM["golab_1"], phase=0.5)
S_COMMENTS["golab_0"] = S_COMMENTS["golab_1"] = "gołąb na belce (kiwa się)"

# ======================= ROZLEWISKO: topienie Marzanny =======================
R = {}
rnd = random.Random(402)
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M0 0H390V120C300 134 200 110 110 126C60 134 30 124 0 130Z" fill="url(#hatch)" stroke="none" opacity="0.8"/>']
t.append('<path d="M-10 196C80 186 200 192 400 184V440H-10Z" fill="#EDEBE6" stroke-width="3"/>')
for i in range(20):
    t.append(spruce(-4 + i * 21, 192 - (i % 2) * 4, 46 + (i % 3) * 12, 20))
# czarna woda rozlewiska z bialymi plamami lodu przy brzegach
t.append('<path d="M120 268C160 246 330 244 380 262C396 290 350 330 250 334C160 336 100 312 120 268Z" fill="#000000" stroke-width="2.4"/>')
t.append('<path d="M124 270C140 262 160 260 176 262L170 272C150 274 136 276 124 270ZM344 256C360 258 374 262 378 270L360 274C352 268 346 262 344 256Z" fill="#FFFFFF" stroke-width="1.4"/>')
# kladka z bali i kapliczka przy niej
for k in range(7):
    t.append(f'<rect x="{316 + k * 10}" y="{300 - k * 6}" width="9" height="5" fill="#FFFFFF" stroke-width="1.2"/>')
t.append(kapliczka(306, 312, 0.7))
for x in range(100, 140, 6):
    t.append(cattail(x, 300, 0.9))
R["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
R["trzciny"] = (90, 260, 60, 50, group([reeds(x, 306, 1.2) for x in range(92, 146, 7)]))
R["kry"] = (180, 290, 120, 40, group(['<path d="M190 300l18 -4l10 6l-14 6z" fill="#FFFFFF" stroke-width="1.2"/><path d="M262 316l16 -3l8 5l-12 5z" fill="#FFFFFF" stroke-width="1.2"/>']))
R["mgla"] = (-30, 210, 450, 60, group([f'<path d="{ribbon(-20, 240, 230, 16, 4)}" fill="#EDEBE6" stroke-width="1.4" opacity="0.85"/>',
                                       f'<path d="{ribbon(160, 410, 244, 14, 3)}" fill="#EDEBE6" stroke-width="1.4" opacity="0.8"/>']))
# dzieci i baby na brzegu; Franek z kukla na kiju
crowd = [postacie.child(40, 404, 1.35), postacie.child(70, 400, 1.25), postacie.girl(98, 406, 1.3), postacie.child(150, 410, 1.4),
         postacie.woman(16, 410, 0.9)]
R["dzieci"] = (0, 330, 180, 90, group(crowd))
franek = postacie.child(116, 408, 1.6, arm="l10 -50")
franek += '<path d="M132 352L138 296" fill="none" stroke-width="3"/>'
franek += '<path d="M138 296C130 298 130 310 136 312C130 326 128 338 126 348H150C148 338 146 326 140 312C146 310 146 298 138 296Z" fill="url(#hatchDense)" stroke-width="1.6"/>'
R["franek"] = (90, 290, 70, 120, group([franek]))
R["franek_rzuca"] = (90, 330, 50, 80, group([postacie.child(116, 408, 1.6, arm="l22 -10")]))
# kukla w locie (luk do wody) — jednorazowo
R["lot"] = (126, 290, 26, 54, group(['<path d="M138 292C130 294 130 306 136 308C130 322 128 334 126 344H150C148 334 146 322 140 308C146 306 146 294 138 292Z" fill="url(#hatchDense)" stroke-width="1.6"/>',
                                     '<circle cx="134" cy="300" r="1.6" fill="#000000"/><circle cx="141" cy="300" r="1.6" fill="#000000"/>']))
RINGS = [(250, 292, 18), (250, 292, 30), (250, 292, 44)]
for i, (x, y, r) in enumerate(RINGS):
    R[f"krag_{i}"] = (x - r - 2, y - r * 0.35 - 2, 2 * r + 4, r * 0.7 + 4, group([f'<ellipse cx="{x}" cy="{y}" rx="{r}" ry="{r * 0.3:.0f}" fill="none" stroke="#FFFFFF" stroke-width="1.6"/>']))
R["babelki"] = (236, 270, 30, 26, group([f'<circle cx="{240 + i * 6}" cy="{288 - (i % 2) * 6}" r="{1.6 + (i % 3) * 0.6:.1f}" fill="none" stroke="#FFFFFF" stroke-width="1.2"/>' for i in range(4)]))
# dzieci uciekaja (dwie klatki biegu)
for f in range(2):
    R[f"bieg_{f}"] = (0, 330, 200, 90, group([postacie.running_child(30 + i * 34, 404 + (i % 2) * 4, 1.3, facing=-1, pose=(f + i) % 2) for i in range(5)]))
# szara reka z wody i slepia
R["reka"] = (226, 230, 60, 80, group(['<path d="M246 300C244 280 240 262 246 248C250 240 256 238 260 244L262 300Z" fill="url(#hatchDense)" stroke-width="2"/>',
                                      '<path d="M244 250l-6 -12M250 244l-2 -14M256 242l2 -14M261 246l6 -10" fill="none" stroke-width="2"/>',
                                      '<path d="M246 268c6 2 10 6 14 4" fill="none" stroke-width="1.4"/>',
                                      '<circle cx="262" cy="276" r="5" fill="#FFFFFF" stroke-width="1.2"/>']))
R["slepia"] = (270, 236, 30, 12, group([f'<ellipse cx="278" cy="242" rx="3.4" ry="2.2" fill="{RED}" stroke="none"/><ellipse cx="292" cy="241" rx="3.6" ry="2.3" fill="{RED}" stroke="none"/>']))
R["ogniki"] = (140, 214, 220, 30, group(['<circle cx="150" cy="226" r="2.4" fill="#FFFFFF" stroke-width="1"/><circle cx="230" cy="220" r="2" fill="#FFFFFF" stroke-width="1"/><circle cx="340" cy="232" r="2.6" fill="#FFFFFF" stroke-width="1"/>']))
p = ['<path d="M-10 432H400V844H-10Z" fill="#EDEBE6" stroke="none"/>']
for i in range(18):
    p.append(grass(rnd.uniform(0, 390), rnd.uniform(440, 840), rnd.uniform(0.9, 1.3)))
R["przod"] = (0, 422, 390, 422, group(p))
ROZLEWISKO = ["tlo", "mgla", "kry", "ogniki", "slepia", "reka", "lot", "krag_0", "krag_1", "krag_2", "babelki", "trzciny",
              "dzieci", "franek", "franek_rzuca", "bieg_0", "przod"]
R_REVEAL = {"lot": "rzut", "franek_rzuca": "rzut", "krag_0": "tonie", "krag_1": "tonie", "krag_2": "tonie", "babelki": "tonie",
            "bieg_0": "ucieczka", "reka": "reka", "slepia": "reka", "ogniki": "chichot"}
R_ANIM = {"mgla": {"type": "drift", "amplitude": 12, "duration": 14000},
          "kry": {"type": "drift", "amplitude": 8, "duration": 9000},
          "trzciny": {"type": "sway", "amplitude": 4, "duration": 2600, "anchorX": 0.5, "anchorY": 1},
          "dzieci": {"type": "bob", "amplitude": 0.8, "duration": 1100},
          "franek": {"type": "sway", "amplitude": 3, "duration": 1400, "anchorX": 0.4, "anchorY": 1},
          "lot": {"type": "arc", "amplitude": 60, "dx": 112, "dy": -18, "spin": 300, "duration": 1600, "once": True},
          "babelki": {"type": "rise", "amplitude": 24, "duration": 1500},
          "bieg_0": {"type": "frames", "duration": 320},
          "reka": {"type": "slide", "dy": -14, "dx": 0, "duration": 1800, "once": True},
          "slepia": {"type": "blink", "duration": 3800},
          "ogniki": {"type": "flicker", "amplitude": 0.1, "duration": 1900}}
R_ANIM.update({f"krag_{i}": {"type": "ripple", "amplitude": 1.2, "duration": 1600 + i * 300, "anchorX": 0.5, "anchorY": 0.5, "phase": round(i * 0.3, 2)} for i in range(3)})
R_EXTRA = {"franek": {"hideOn": "rzut", "fadeDuration": 200}, "franek_rzuca": {"fadeDuration": 200, "hideOn": "ucieczka"},
           "lot": {"fadeDuration": 100, "hideOn": "tonie"}, "dzieci": {"hideOn": "ucieczka", "fadeDuration": 400},
           "bieg_0": {"frames": ["bieg_0", "bieg_1"], "fadeDuration": 400}, "slepia": {"noInvert": True, "fadeDuration": 1200, "hideAfter": 5200},
           "reka": {"fadeDuration": 800, "hideAfter": 5200}, "przod": {"depth": 1.0}, "trzciny": {"depth": 0.7}}
R_COMMENTS = {"tlo": "rozlewisko przy kładce: czarna woda, lód przy brzegach, kładka z bali, kapliczka, bór w tle",
              "mgla": "mgła nad wodą (dryfuje)", "kry": "kry lodu dryfują", "trzciny": "trzciny (kołyszą się)",
              "dzieci": "dzieci i baby na brzegu (znikają przy # pokaz: ucieczka)", "franek": "Franek z Marzanną na kiju (znika przy # pokaz: rzut)",
              "franek_rzuca": "Franek po rzucie (# pokaz: rzut)", "lot": "Marzanna leci łukiem do wody (# pokaz: rzut, raz; znika przy # pokaz: tonie)",
              "babelki": "bąble wypływają (# pokaz: tonie)", "bieg_0": "dzieci uciekają, klatka 1 (# pokaz: ucieczka)", "bieg_1": "dzieci uciekają, klatka 2",
              "reka": "szara ręka z wodorostami trzyma Marzannę (# pokaz: reka)", "slepia": "czerwone ślepia nad wodą (# pokaz: reka)",
              "ogniki": "ogniki nad bagnem migoczą (# pokaz: chichot)", "przod": "pierwszy plan: trawa"}
R_COMMENTS.update({f"krag_{i}": "kręgi na wodzie (# pokaz: tonie)" for i in range(3)})
_add(R, ROZLEWISKO, R_ANIM, R_COMMENTS, "wrony", efekty.wrony(60, 140, n=4, seed=44), before="mgla")

# ======================= BABKA NA LOZKU =======================
B = {}
w = sciana_deski(390, 440, 16)
w.append('<rect width="390" height="440" fill="url(#hatch)" stroke="none" opacity="0.4"/>')
w.append('<path d="M-10 300H400V440H-10Z" fill="url(#hatchDense)" stroke="none" opacity="0.6"/><path d="M-10 300H400" fill="none" stroke-width="3"/>')
w.append('<path d="M240 70H310V140H240Z" fill="#FFFFFF" stroke-width="3"/><path d="M275 70V140M240 105H310" fill="none" stroke-width="3"/>')
w.append('<path d="M0 300V130H90V300Z" fill="#FFFFFF" stroke-width="3"/><path d="M-4 134H94" fill="none" stroke-width="3"/>')      # piec
w.append('<path d="M96 300V246H260V300M96 256H260" fill="#FFFFFF" stroke-width="2.6"/><path d="M96 230V300M260 236V300" fill="none" stroke-width="3"/>')  # lozko
w.append('<path d="M100 256C110 234 150 232 200 236C230 238 250 244 256 256Z" fill="#FFFFFF" stroke-width="1.8"/>')   # pierzyna
w.append('<path d="M98 248C98 236 112 230 124 234L128 252Z" fill="#FFFFFF" stroke-width="1.6"/>')                     # poduszka
w.append('<path d="M330 300V250H352V300M326 250H356" fill="none" stroke-width="2.4"/>')                              # zydel
B["tlo"] = (0, 0, 390, 440, w[0] + "\n" + group(w[1:]))
B["babka"] = (100, 220, 60, 40, group(['<circle cx="118" cy="236" r="9" fill="#000000"/><path d="M110 232Q118 220 126 232L124 240Q118 236 112 240Z" fill="#FFFFFF" stroke-width="1.4"/>',
                                       '<path d="M126 246c8 -2 16 0 22 4" fill="none" stroke-width="2.4"/>']))
B["jaromir"] = (300, 220, 50, 84, group([postacie.child(340, 300, 1.4)]))
B["swieczka"] = (212, 226, 14, 26, group(['<path d="M216 252V238h6v14z" fill="#FFFFFF" stroke-width="1.4"/>']))
B["plomyk"] = (214, 224, 10, 16, group([f'<path d="M219 238c-3 -3 -2 -8 0 -12c2 4 3 9 0 12z" fill="{RED}" stroke="none"/>']))
B["siekiera"] = (262, 236, 60, 64, group(['<path d="M270 300L300 246" fill="none" stroke-width="4"/>',
                                          '<path d="M294 254L304 236C314 240 318 252 314 262L304 258Z" fill="#FFFFFF" stroke-width="2"/>',
                                          f'<path d="M306 244l4 8M302 250l3 6" fill="none" stroke="{RED}" stroke-width="1.4"/>']))
B["blysk"] = (300, 232, 20, 20, group(['<path d="M310 236l2 5l5 2l-5 2l-2 5l-2 -5l-5 -2l5 -2z" fill="#FFFFFF" stroke-width="0.8"/>']))
B["krzesiwo"] = (140, 236, 30, 22, group(['<path d="M146 248h14l4 4h-22z" fill="#000000" stroke-width="1.2"/>',
                                          '<path d="M154 244l2 -4M158 245l4 -3M150 245l-2 -4" fill="none" stroke="#FFFFFF" stroke-width="1"/>']))
B["gromnica"] = (180, 190, 20, 62, group(['<path d="M186 252V202h8v50z" fill="#FFFFFF" stroke-width="1.6"/><path d="M184 214h12M184 220h12" fill="none" stroke-width="1"/>']))
B["gromnica_plomien"] = (184, 186, 12, 18, group([f'<path d="M190 202c-4 -4 -3 -10 0 -14c3 5 4 10 0 14z" fill="{RED}" stroke="none"/>']))
B["dymek"] = (184, 150, 16, 40, group(['<path d="M190 186C186 176 194 170 190 160C188 154 192 150 190 148" fill="none" stroke-width="2" opacity="0.5"/>']))
p = ['<path d="M-10 432H400V844H-10Z" fill="url(#hatchDense)" stroke="none" opacity="0.6"/>']
B["przod"] = (0, 422, 390, 422, group(p))
BABKA = ["tlo", "babka", "swieczka", "plomyk", "siekiera", "blysk", "krzesiwo", "gromnica", "gromnica_plomien", "dymek", "jaromir", "przod"]
B_REVEAL = {"siekiera": "siekiera", "blysk": "siekiera", "krzesiwo": "krzesiwo", "gromnica": "swieca", "gromnica_plomien": "swieca", "dymek": "swieca"}
B_ANIM = {"babka": {"type": "bob", "amplitude": 0.4, "duration": 4200}, "jaromir": {"type": "bob", "amplitude": 0.5, "duration": 2400},
          "plomyk": {"type": "flame", "amplitude": 0.15, "duration": 800, "anchorX": 0.5, "anchorY": 1},
          "blysk": {"type": "flicker", "amplitude": 0.1, "duration": 2200},
          "krzesiwo": {"type": "flicker", "amplitude": 0.6, "duration": 2600},
          "gromnica_plomien": {"type": "flame", "amplitude": 0.15, "duration": 900, "anchorX": 0.5, "anchorY": 1},
          "dymek": {"type": "rise", "amplitude": 20, "duration": 3200}}
B_EXTRA = {"plomyk": {"noInvert": True, "hideOn": "swieca"}, "gromnica_plomien": {"noInvert": True}, "siekiera": {"fadeDuration": 2000},
           "babka": {"hideOn": "swieca", "fadeDuration": 3000}, "przod": {"depth": 1.0}}
B_COMMENTS = {"tlo": "izba: piec, łóżko z pierzyną, okno, zydel", "babka": "babka Marianna na łóżku (oddycha; znika przy # pokaz: swieca)",
              "jaromir": "Jaromir przy łóżku", "swieczka": "świeczka na łóżku", "plomyk": "płomyk świeczki (czerwony)",
              "siekiera": "siekiera dziadka z rdzawymi zaciekami (# pokaz: siekiera)", "blysk": "błysk na ostrzu (# pokaz: siekiera)",
              "krzesiwo": "krzesiwo dziadka na pierzynie (# pokaz: krzesiwo)", "gromnica": "gromnica (# pokaz: swieca)",
              "gromnica_plomien": "płomień gromnicy (czerwony)", "dymek": "dymek z gromnicy (unosi się)", "przod": "pierwszy plan"}
_add(B, BABKA, B_ANIM, B_COMMENTS, "smuga", efekty.smuga([(240, 140), (310, 140), (260, 300), (170, 300)], opacity=0.25), before="babka")
_add(B, BABKA, B_ANIM, B_COMMENTS, "pylki", efekty.pylki(190, 150, 100, 140, n=10, seed=45), before="babka")
_add(B, BABKA, B_ANIM, B_COMMENTS, "chmurki", efekty.chmurki(242, 72, 66, 30, seed=46), before="babka")

# ======================= PROG NOCA: ojciec z synem =======================
N = {}
rnd = random.Random(403)
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V260H0Z" fill="url(#hatchNight)" stroke="none"/>',
     '<circle cx="310" cy="70" r="20" fill="#FFFFFF" stroke-width="2"/>']
t.append('<path d="M-10 250C80 242 200 246 400 238V440H-10Z" fill="url(#hatch)" stroke-width="2.4"/>')
for i in range(16):
    t.append(spruce(190 + i * 13, 246 - (i % 2) * 3, 34 + (i % 3) * 8, 15))
# sciana chalupy z drzwiami i progiem (z lewej)
t.append('<path d="M-10 330V150H170V330Z" fill="#FFFFFF" stroke-width="3"/><path d="M-20 156L80 90L190 156Z" fill="url(#hatch)" stroke-width="3"/>')
t.append('<path d="M60 330V214H112V330Z" fill="#000000" stroke-width="2.4"/><path d="M50 330H122V340H50Z" fill="#FFFFFF" stroke-width="2"/>')
t.append('<path d="M20 200h24v24h-24z" fill="#000000" stroke-width="2"/>')
t.append('<path d="M200 300H400M200 316H400" fill="none" stroke-width="2"/>')
for x in range(206, 400, 22):
    t.append(f'<path d="M{x - 4} 326V294L{x} 288L{x + 4} 294V326Z" fill="#FFFFFF" stroke-width="1.6"/>')
N["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
N["postacie"] = (114, 262, 70, 76, group(['<path d="M112 330H176V336H112Z" fill="#FFFFFF" stroke-width="1.6"/>',
                                         '<path d="M120 330C120 300 128 288 140 286C152 288 156 300 156 330Z" fill="#000000" stroke-width="2"/><circle cx="140" cy="276" r="9" fill="#000000"/>',
                                         '<path d="M156 330C156 310 160 302 168 300C176 302 180 312 180 330Z" fill="#000000" stroke-width="2"/><circle cx="168" cy="292" r="7" fill="#000000"/>']))
N["mgla"] = (180, 236, 230, 30, group([f'<path d="{ribbon(190, 400, 244, 12, 3)}" fill="#EDEBE6" stroke-width="1.2" opacity="0.8"/>']))
N["dym"] = (130, 50, 30, 50, group(['<path d="M146 98C140 86 150 78 144 66C140 58 146 54 144 50" fill="none" stroke="#FFFFFF" stroke-width="3" opacity="0.6"/>']))
p = ['<path d="M-10 432H400V844H-10Z" fill="url(#hatch)" stroke="none"/>']
N["przod"] = (0, 422, 390, 422, group(p))
PROG = ["tlo", "dym", "mgla", "postacie", "przod"]
N_ANIM = {"mgla": {"type": "drift", "amplitude": 10, "duration": 13000}, "dym": {"type": "sway", "amplitude": 3, "duration": 5000, "anchorX": 0.5, "anchorY": 1},
          "postacie": {"type": "bob", "amplitude": 0.4, "duration": 3600}}
N_EXTRA = {"przod": {"depth": 1.0}}
N_COMMENTS = {"tlo": "noc: chałupa z progiem, płot, bór, księżyc", "postacie": "ojciec i Jaromir na progu", "mgla": "mgła nad mokradłami",
              "dym": "dym z komina", "przod": "pierwszy plan"}
_add(N, PROG, N_ANIM, N_COMMENTS, "gwiazdy", efekty.iskry(180, 10, 200, 150, n=18, seed=47, duration=3600), before="dym")
N_COMMENTS["gwiazdy"] = "gwiazdy migoczą"
_s, _so = efekty.sowa(300, 290, 1.1)
_add(N, PROG, N_ANIM, N_COMMENTS, "sowa", _s, before="postacie")
_add(N, PROG, N_ANIM, N_COMMENTS, "sowa_oczy", _so, before="postacie")
_add(N, PROG, N_ANIM, N_COMMENTS, "nietoperz", ((200, 120, 40, 20, group([postacie.bat(220, 130, 0.8)])),
                                                {"type": "wander", "amplitude": 60, "flap": 0.6, "duration": 5600}, "nietoperz krąży"), before="postacie")

# ======================= IZBA WIECZOREM =======================
E = {}
w = sciana_deski(390, 440, 16)
w.append('<rect width="390" height="440" fill="url(#hatchDense)" stroke="none" opacity="0.5"/>')
w.append('<path d="M-10 300H400V440H-10Z" fill="url(#hatchNight)" stroke="none" opacity="0.7"/><path d="M-10 300H400" fill="none" stroke-width="3"/>')
w.append('<path d="M40 80H110V150H40Z" fill="url(#hatchNight)" stroke-width="3"/><path d="M75 80V150M40 115H110" fill="none" stroke-width="3"/>')
w.append('<path d="M140 256H300V266H140ZM148 266V300M292 266V300" fill="#FFFFFF" stroke-width="2.4"/>')
w.append('<path d="M214 256V246h12v10z" fill="#FFFFFF" stroke-width="1.4"/>')          # kaganek
E["tlo"] = (0, 0, 390, 440, w[0] + "\n" + group(w[1:]))
E["plomien"] = (214, 230, 12, 18, group([f'<path d="M220 246c-3 -3 -2 -9 0 -13c2 4 3 9 0 13z" fill="{RED}" stroke="none"/>']))
E["blask"] = (150, 180, 140, 100, group(['<ellipse cx="220" cy="240" rx="66" ry="44" fill="#FFFFFF" stroke="none" opacity="0.25"/>']))
E["ojciec"] = (150, 176, 70, 124, group([postacie.man(176, 300, 1.45, hat=False, arm="l14 6"), '<path d="M200 230h8v10h-8z" fill="#FFFFFF" stroke-width="1.4"/>']))
E["jaromir"] = (250, 214, 50, 90, group([postacie.child(270, 300, 1.4)]))
E["matka"] = (300, 186, 60, 116, group([postacie.woman(330, 300, 1.4)]))
E["kolo"] = (314, 214, 44, 44, group(['<circle cx="336" cy="236" r="18" fill="none" stroke-width="2"/>',
                                      '<path d="M336 218V254M318 236H354M323 223L349 249M349 223L323 249" fill="none" stroke-width="1.2"/>']))
E["cmy"] = (196, 210, 50, 30, group(['<path d="M206 222l4 -3l4 3l-4 2z" fill="#FFFFFF" stroke-width="1"/><path d="M230 216l4 -3l4 3l-4 2z" fill="#FFFFFF" stroke-width="1"/>']))
p = ['<path d="M-10 432H400V844H-10Z" fill="url(#hatchNight)" stroke="none" opacity="0.7"/>']
E["przod"] = (0, 422, 390, 422, group(p))
WIECZOR = ["tlo", "blask", "plomien", "ojciec", "jaromir", "matka", "kolo", "cmy", "przod"]
E_ANIM = {"plomien": {"type": "flame", "amplitude": 0.15, "duration": 800, "anchorX": 0.5, "anchorY": 1},
          "blask": {"type": "flicker", "amplitude": 0.6, "duration": 1600},
          "ojciec": {"type": "bob", "amplitude": 0.5, "duration": 3000}, "jaromir": {"type": "bob", "amplitude": 0.5, "duration": 2400},
          "matka": {"type": "sway", "amplitude": 1.5, "duration": 1500, "anchorX": 0.5, "anchorY": 1},
          "kolo": {"type": "arc", "amplitude": 0, "dx": 0, "dy": 0, "spin": 360, "duration": 1200},
          "cmy": {"type": "wander", "amplitude": 14, "flap": 0.5, "duration": 3400}}
E_EXTRA = {"plomien": {"noInvert": True}, "przod": {"depth": 1.0}}
E_COMMENTS = {"tlo": "izba wieczorem: okno w nocy, stół z kagankiem", "plomien": "płomień kaganka (czerwony)", "blask": "blask kaganka (migocze)",
              "ojciec": "ojciec z kubkiem", "jaromir": "Jaromir", "matka": "matka przy kołowrotku (przędzie)", "kolo": "koło kołowrotka (kręci się)",
              "cmy": "ćmy krążą przy kaganku", "przod": "pierwszy plan"}
_add(E, WIECZOR, E_ANIM, E_COMMENTS, "gwiazdy", efekty.iskry(44, 84, 62, 62, n=5, seed=48), before="blask")
E_COMMENTS["gwiazdy"] = "gwiazdy za oknem"

# ======================= KAPLICZKA PRZEWROCONA =======================
K = {}
rnd = random.Random(404)
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M0 0H390V110C300 124 200 100 110 116C60 124 30 114 0 120Z" fill="url(#hatch)" stroke="none" opacity="0.5"/>']
t.append('<path d="M-10 300C80 292 200 296 400 290V440H-10Z" fill="#EDEBE6" stroke-width="3"/>')
t.append('<path d="M-10 396C90 388 200 386 400 394M-10 420C90 412 200 410 400 418" fill="none" stroke-width="2.2"/>')
t.append('<path d="M150 340C170 330 200 332 220 342C214 352 170 354 150 340Z" fill="url(#hatchDense)" stroke-width="1.4"/>')      # zryta ziemia
K["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
for g, xs in enumerate([(-6, 22, 50, 78), (110, 140, 170), (250, 282, 316, 350, 384)]):
    K[f"swierki_{g}"] = (xs[0] - 50, 120, xs[-1] - xs[0] + 100, 184, group([spruce(x, 300 - (i % 2) * 6, 150 + (i % 3) * 22, 60) for i, x in enumerate(xs)]))
# lezaca kapliczka (slup w trawie, daszek obok, figurka twarza w blocie)
K["lezy"] = (130, 320, 150, 40, group(['<path d="M150 344L246 330L248 336L152 350Z" fill="#FFFFFF" stroke-width="1.8"/>',
                                       '<path d="M246 324L264 322L266 340L248 342Z" fill="#FFFFFF" stroke-width="1.8"/>',
                                       '<path d="M200 352L222 346L230 356Z" fill="url(#hatch)" stroke-width="1.6"/>',
                                       '<path d="M170 350c4 -4 10 -4 12 0" fill="#000000" stroke-width="1.2"/>']))
K["spirala"] = (148, 336, 30, 18, group(['<path d="M152 346c4 -6 10 -4 10 0s-6 6 -8 2s4 -6 8 -4" fill="none" stroke="#FFFFFF" stroke-width="1.2"/>']))
K["stoi"] = (186, 220, 36, 124, group([kapliczka(204, 344, 1.25)]))
K["chlopcy"] = (40, 330, 90, 100, group([postacie.child(64, 426, 1.7), postacie.child(104, 428, 1.6)]))
K["kaczence"] = (0, 360, 390, 40, group([f'<path d="M{x} 396v-10" fill="none" stroke-width="1.2"/><circle cx="{x}" cy="{384}" r="3" fill="#FFFFFF" stroke-width="1.2"/>' for x in range(8, 390, 26)]))
K["motyl"] = (280, 330, 28, 22, group([postacie.butterfly(294, 340, 1.0)]))
K["podmuch"] = (0, 160, 390, 160, group(['<path d="M380 190C320 186 290 196 240 190M390 240C330 236 290 246 230 240M380 290C330 286 300 294 250 290" fill="none" stroke-width="1.4" opacity="0.6"/>']))
K["igly"] = (330, 180, 40, 40, group([f'<path d="M{334 + i * 6} {190 + (i % 3) * 8}l5 -2" fill="none" stroke-width="1.2"/>' for i in range(6)]))
# noc z latarnia: ojciec i Stas, kapliczka do gory nogami miedzy swierkami
K["noc"] = (0, 0, 390, 440, group(['<rect width="390" height="440" fill="url(#hatchNight)" stroke="none" opacity="0.85"/>']))
K["latarnia"] = (60, 280, 110, 150, group([postacie.man(90, 426, 1.5), postacie.man(140, 426, 1.5, arm="l8 20"),
                                           '<path d="M152 360h10v14h-10z" fill="#FFFFFF" stroke-width="1.4"/>']))
K["latarnia_blask"] = (134, 340, 46, 46, group(['<circle cx="157" cy="367" r="20" fill="#FFFFFF" stroke="none" opacity="0.45"/>',
                                                f'<path d="M157 371c-2 -2 -1 -6 0 -8c1 2 2 6 0 8z" fill="{RED}" stroke="none"/>']))
K["odwrocona"] = (290, 190, 40, 130, group([kapliczka(310, 310, 1.1, inverted=True)]))
RIG_K_PIES = art.dog_barking(art.parse_transform("translate(110 366) scale(0.13)"), "pies", shadow=False)
art.install_rig(K, RIG_K_PIES)
p = ['<path d="M-10 432H400V844H-10Z" fill="#EDEBE6" stroke="none"/>']
for i in range(18):
    p.append(grass(rnd.uniform(0, 390), rnd.uniform(440, 840), rnd.uniform(0.9, 1.3)))
K["przod"] = (0, 422, 390, 422, group(p))
PIES = art.rig_names(RIG_K_PIES)
KAPLICZKA = (["tlo", "swierki_0", "swierki_1", "swierki_2", "odwrocona", "podmuch", "igly", "lezy", "spirala", "stoi", "kaczence", "motyl", "chlopcy"]
             + PIES + ["noc", "latarnia", "latarnia_blask", "przod"])
K_REVEAL = {"spirala": "spirala", "stoi": "podniesiona", "podmuch": "wiatr", "igly": "wiatr", "noc": "latarnia", "latarnia": "latarnia",
            "latarnia_blask": "latarnia", "odwrocona": "latarnia"}
K_REVEAL.update({n: "pies" for n in PIES})
K_ANIM = {f"swierki_{g}": {"type": "sway", "amplitude": 1.2, "duration": 3200, "anchorX": 0.5, "anchorY": 1, "phase": round(g * 0.2, 2)} for g in range(3)}
K_ANIM.update({"kaczence": {"type": "sway", "amplitude": 3, "duration": 2400, "anchorX": 0.5, "anchorY": 1},
               "motyl": {"type": "wander", "amplitude": 30, "flap": 0.65, "duration": 6400},
               "podmuch": {"type": "drift", "amplitude": 40, "duration": 1800},
               "igly": {"type": "float", "amplitude": 6, "dx": -260, "dy": 60, "duration": 2400},
               "chlopcy": {"type": "bob", "amplitude": 0.6, "duration": 1600},
               "latarnia_blask": {"type": "flicker", "amplitude": 0.5, "duration": 1200},
               "stoi": {"type": "sway", "amplitude": 3, "duration": 900, "anchorX": 0.5, "anchorY": 1, "once": True}})
K_ANIM.update(art.rig_anims(RIG_K_PIES))
K_EXTRA = {"lezy": {"hideOn": "podniesiona, latarnia", "fadeDuration": 800}, "spirala": {"hideOn": "podniesiona, latarnia"},
           "stoi": {"fadeDuration": 800}, "podmuch": {"hideAfter": 3500, "fadeDuration": 500}, "igly": {"hideAfter": 3500, "fadeDuration": 500},
           "noc": {"fadeDuration": 3000}, "latarnia_blask": {"noInvert": True}, "chlopcy": {"hideOn": "latarnia", "depth": 0.8},
           "przod": {"depth": 1.0}}
K_EXTRA.update({n: {"hideOn": "latarnia"} for n in PIES})
K_COMMENTS = {"tlo": "skraj boru wiosną: ścieżka, zryta ziemia", "lezy": "przewrócona kapliczka w trawie (znika przy # pokaz: podniesiona albo latarnia)",
              "spirala": "spirala wydrapana u podstawy (# pokaz: spirala)", "stoi": "kapliczka postawiona (# pokaz: podniesiona)",
              "chlopcy": "Jaromir i Antek", "kaczence": "kaczeńce (kołyszą się)", "motyl": "cytrynek krąży",
              "podmuch": "podmuch od boru (# pokaz: wiatr)", "igly": "igły niesione wiatrem (# pokaz: wiatr)",
              "noc": "noc (# pokaz: latarnia)", "latarnia": "ojciec i Staś z latarnią i łopatą (# pokaz: latarnia)",
              "latarnia_blask": "blask latarni (migocze)", "odwrocona": "kapliczka wbita do góry nogami między świerkami (# pokaz: latarnia)",
              "przod": "pierwszy plan: trawa"}
K_COMMENTS.update({f"swierki_{g}": "świerki (kołyszą się)" for g in range(3)})
K_COMMENTS.update({n: f"szczeniak szczeka w stronę boru — {n[5:]} (rysunek autora; # pokaz: pies)" for n in PIES})
_add(K, KAPLICZKA, K_ANIM, K_COMMENTS, "wrony", efekty.wrony(150, 80, n=3, seed=49), before="lezy")

# ======================= URBANIAK: ludzie z miasta znacza deby =======================
U = {}
rnd = random.Random(405)
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M0 0H390V100C300 114 200 90 110 106C60 114 30 104 0 110Z" fill="url(#hatch)" stroke="none" opacity="0.4"/>']
t.append('<path d="M-10 280C80 272 200 276 400 270V440H-10Z" fill="#EDEBE6" stroke-width="3"/>')
OAKS = [(210, 282, 140), (290, 286, 160), (370, 284, 150)]
for (x, b, h) in OAKS:
    t.append(oak(x, b, h, 1.1))
# kuznia z gniazdem bocianow (z lewej)
t.append('<path d="M10 300V220H130V300Z" fill="#FFFFFF" stroke-width="3"/><path d="M0 224L40 180H110L140 224Z" fill="url(#hatch)" stroke-width="3"/>')
t.append('<path d="M54 300V250H86V300Z" fill="#000000" stroke-width="2"/><path d="M60 174C66 166 86 166 92 174L90 180H62Z" fill="url(#hatchDense)" stroke-width="1.6"/>')
# plot, za ktorym stoi Jaromir
t.append('<path d="M-10 380H200M-10 396H200" fill="none" stroke-width="2.2"/>')
for x in range(-4, 200, 20):
    t.append(f'<path d="M{x - 4} 406V372L{x} 366L{x + 4} 372V406Z" fill="#FFFFFF" stroke-width="1.6"/>')
U["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
U["bocian"] = (62, 148, 30, 28, group(['<path d="M72 172C70 162 74 156 80 156L84 150L86 152L82 158C86 162 86 170 84 172Z" fill="#FFFFFF" stroke-width="1.4"/>',
                                       f'<path d="M84 151l6 -2" fill="none" stroke="{RED}" stroke-width="1.6"/>']))
U["bocian_lot"] = (-62, 86, 74, 42, group([postacie.stork(-26, 106, 1.1)]))
U["jaromir"] = (40, 334, 40, 60, group([postacie.child(60, 392, 1.3)]))
# bryczka z koniem
bryczka = ('<path d="M150 330H210L216 312H156Z" fill="#000000" stroke-width="1.8"/><circle cx="162" cy="336" r="10" fill="#FFFFFF" stroke-width="2"/>'
           '<circle cx="204" cy="336" r="10" fill="#FFFFFF" stroke-width="2"/><path d="M162 326v20M152 336h20M204 326v20M194 336h20" fill="none" stroke-width="1"/>'
           '<path d="M216 322L226 322L230 306L246 302L256 290L262 300L254 304L250 322M234 322v18M246 322v18" fill="#000000" stroke-width="1.8"/>')
U["bryczka"] = (146, 284, 120, 64, group([bryczka]))
U["odjazd"] = (146, 284, 120, 64, group([bryczka]))
# pan Urbaniak i dwoch drwali z siekierami przy debach
U["ludzie"] = (180, 210, 200, 90, group([postacie.man(196, 298, 1.3), postacie.man(268, 300, 1.2, arm="l14 -16"), postacie.man(340, 300, 1.2, arm="l-14 -16")]))
for i, (x, b, h) in enumerate(OAKS):
    U[f"znak_{i}"] = (x - 6, b - 46, 12, 16, group([f'<path d="M{x - 3} {b - 44}h6v12h-6z" fill="#FFFFFF" stroke-width="1"/>']))
U["noc"] = (0, 0, 390, 440, group(['<rect width="390" height="440" fill="url(#hatchNight)" stroke="none" opacity="0.85"/>',
                                   '<circle cx="320" cy="60" r="18" fill="#FFFFFF" stroke-width="1.6"/>']))
U["wycie"] = (190, 140, 120, 50, group(['<path d="M200 170c20 -10 40 -10 60 0M210 160c16 -8 32 -8 48 0M220 150c10 -5 20 -5 30 0" fill="none" stroke="#FFFFFF" stroke-width="1.4"/>']))
p = ['<path d="M-10 432H400V844H-10Z" fill="#EDEBE6" stroke="none"/>']
for i in range(16):
    p.append(grass(rnd.uniform(0, 390), rnd.uniform(440, 840), rnd.uniform(0.9, 1.3)))
U["przod"] = (0, 422, 390, 422, group(p))
URB = ["tlo", "bocian", "bocian_lot", "znak_0", "znak_1", "znak_2", "ludzie", "bryczka", "odjazd", "jaromir", "noc", "wycie", "przod"]
U_REVEAL = {"znak_0": "znaki", "znak_1": "znaki", "znak_2": "znaki", "odjazd": "odjazd", "noc": "noc", "wycie": "noc"}
U_ANIM = {"bocian": {"type": "sway", "amplitude": 5, "duration": 2200, "anchorX": 0.4, "anchorY": 1},
          "bocian_lot": {"type": "arc", "amplitude": 26, "dx": 140, "dy": 60, "duration": 9000},
          "ludzie": {"type": "bob", "amplitude": 0.8, "duration": 1000},
          "odjazd": {"type": "slide", "dx": -300, "dy": 0, "duration": 4000, "once": True},
          "jaromir": {"type": "bob", "amplitude": 0.5, "duration": 2200},
          "wycie": {"type": "ripple", "amplitude": 1.3, "duration": 2400, "anchorX": 0.5, "anchorY": 0.7}}
U_EXTRA = {"bryczka": {"hideOn": "odjazd", "fadeDuration": 100}, "odjazd": {"fadeDuration": 100}, "ludzie": {"hideOn": "odjazd", "fadeDuration": 1500},
           "noc": {"fadeDuration": 4000}, "wycie": {"appearAfter": 2500, "fadeDuration": 1200}, "przod": {"depth": 1.0}}
U_EXTRA.update({f"znak_{i}": {"appearAfter": 600 + i * 1100, "fadeDuration": 300} for i in range(len(OAKS))})
U_COMMENTS = {"tlo": "maj: kuźnia z gniazdem bocianów, dęby na skraju boru, płot", "bocian": "bocian w gnieździe (kiwa się)",
              "bocian_lot": "bocian przylatuje łukiem", "ludzie": "pan Urbaniak i drwale z siekierami (znikają przy # pokaz: odjazd)",
              "bryczka": "bryczka z koniem (znika przy # pokaz: odjazd)", "odjazd": "bryczka odjeżdża (# pokaz: odjazd)",
              "jaromir": "Jaromir za płotem", "noc": "noc (# pokaz: noc)", "wycie": "wycie niesie się z boru (# pokaz: noc)",
              "przod": "pierwszy plan: trawa"}
U_COMMENTS.update({f"znak_{i}": f"biały znak wycięty na dębie {i + 1} (# pokaz: znaki, po kolei)" for i in range(len(OAKS))})
_add(U, URB, U_ANIM, U_COMMENTS, "wrony", efekty.wrony(240, 70, n=3, seed=50), before="znak_0")

BACKGROUNDS = {"stodola_marzanna": ("bg_stodola", S, STODOLA, S_ANIM, S_REVEAL, S_EXTRA, S_COMMENTS, "stodoła"),
               "rozlewisko": ("bg_rozlewisko", R, ROZLEWISKO, R_ANIM, R_REVEAL, R_EXTRA, R_COMMENTS, "rozlewisko"),
               "babka_lozko": ("bg_babka", B, BABKA, B_ANIM, B_REVEAL, B_EXTRA, B_COMMENTS, "babka na łóżku"),
               "prog_noc": ("bg_prog", N, PROG, N_ANIM, {}, N_EXTRA, N_COMMENTS, "próg nocą"),
               "izba_wieczor": ("bg_wieczor", E, WIECZOR, E_ANIM, {}, E_EXTRA, E_COMMENTS, "izba wieczorem"),
               "kapliczka_przewrocona": ("bg_kapliczka", K, KAPLICZKA, K_ANIM, K_REVEAL, K_EXTRA, K_COMMENTS, "przewrócona kapliczka"),
               "urbaniak": ("bg_urbaniak", U, URB, U_ANIM, U_REVEAL, U_EXTRA, U_COMMENTS, "ludzie z miasta")}

if __name__ == "__main__":
    if sys.argv[1] == "--master":
        prefix, L, order, anim, reveal, extra, comments, scene = BACKGROUNDS[sys.argv[2]]
        hide = set() if len(sys.argv) > 3 and sys.argv[3] == "wszystko" else set(reveal) | {n for n, e in extra.items() if e.get("appearAfter")}
        print(master(L, [n for n in order if n not in hide]))
    else:
        import bgjson
        for key, (prefix, L, order, anim, reveal, extra, comments, scene) in BACKGROUNDS.items():
            write_layers(sys.argv[1], prefix, scene, L, [n for n in L if n in comments], comments)
            bgjson.upsert(key, bgjson.entry(prefix, order, L, anim, reveal, extra))
