# Generator tel rozdzialu dwunastego (Czuwanie przy zmarłym):
#   wiosna_orka       — wiosenna orka: kon z plugiem, wrony na skibach, jezioro w dali; rude szczenie (# pokaz: szczenie),
#                       noc swietojanska — ogniska nad jeziorem (# pokaz: noc)
#   lato_podworze     — lipcowe podworze: Hanka na progu, Jaromir z kosa; Marysia idzie (# pokaz: kroki),
#                       wieczor — Wojcik na pomoscie (# pokaz: wieczor)
#   czuwanie_izba     — izba Wojcikow noca: zmarly na desce, swiece, zasloniete lustro, kobiety spiewaja; wargi (# pokaz: wargi),
#                       zeby (# pokaz: zeby), bialka spod powiek (# pokaz: powieki)
#   polnoc_strzyga    — ta sama izba o polnocy: blade swiece; palce drgaja (# pokaz: palce), strzyga autora wstaje (# pokaz: wstaje),
#                       twarza do deski (# pokaz: twarz), sierp i czarna krew (# pokaz: sierp), gromnica w dloniach (# pokaz: gromnica)
#   cmentarz_bukowiec — zimowy cmentarz w Bukowcu z murem i rozstajami; ksiadz (# pokaz: ksiadz), grob za murem (# pokaz: za_murem),
#                       pochowek w poswieconej ziemi (# pokaz: poswiecona), mak (# pokaz: mak), wdowa na kamieniu (# pokaz: wdowa),
#                       swieczka na grobie (# pokaz: swieczka), rozkopywanie noca (# pokaz: rozkop)
#   strzyga_okno      — izba przed switem: kolyska pod oknem, Jaromir z siekiera; oddech na szybie (# pokaz: oddech),
#                       strzyga za szyba (# pokaz: strzyga), odchodzi o swicie (# pokaz: odszedl)
#   wigilia_stol      — wigilijny stol z talerzem dla wedrowca, podlaznicka, okno na zimowa wies; swieca u Wojcikowej (# pokaz: swieca),
#                       szczenie pod kolyska (# pokaz: szczenie), mech na talerzu rano (# pokaz: mech)
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/czuwanie.py src/LittleVillage/Resources/Images
#   python3 tools/Backgrounds/czuwanie.py --master <tlo> [wszystko] > podglad.svg
import sys, random, math
from common import *
import art, postacie, efekty
from efekty import add as _add
from licho import izba_tlo, okno, piec, stol, bor, PRZOD, PRZOD_IZBA
from rusalki import sitting
from wesele import chalupa, dym, kosciolek, staruszek
from narodziny import kolyska_svg

RED = "#A8101A"
SNIEG = ['<path d="M-10 432H400V844H-10Z" fill="#FFFFFF" stroke="none"/>']


def kon(x, y, k=1.0, facing=-1):
    """Kon pociagowy z profilu (x,y = miedzy kopytami), lbem w strone facing."""
    f = facing
    P = lambda dx, dy: f"{x + dx * f * k:.1f} {y + dy * k:.1f}"
    return (f'<g stroke-width="2"><path d="M{P(-26, -22)}C{P(-28, -36)} {P(-14, -40)} {P(4, -38)}C{P(14, -38)} {P(20, -40)} {P(24, -46)}L{P(34, -58)}L{P(42, -56)}L{P(40, -48)}'
            f'L{P(32, -42)}C{P(30, -32)} {P(26, -24)} {P(18, -22)}Z" fill="#000000"/>'
            f'<path d="M{P(-22, -24)}L{P(-24, 0)}M{P(-14, -24)}L{P(-12, 0)}M{P(12, -24)}L{P(10, 0)}M{P(18, -24)}L{P(20, 0)}" fill="none" stroke-width="{3.4 * k:.1f}"/>'
            f'<path d="M{P(-26, -32)}C{P(-34, -28)} {P(-34, -18)} {P(-32, -12)}" fill="none" stroke-width="{2.4 * k:.1f}"/>'
            f'<path d="M{P(26, -48)}l{-2 * f * k:.1f} {-8 * k:.1f}" fill="none" stroke-width="1.6"/><circle cx="{x + 36 * f * k:.1f}" cy="{y - 53 * k:.1f}" r="{1 * k:.1f}" fill="#FFFFFF" stroke="none"/></g>')


def plug(x, y, k=1.0):
    """Drewniany plug z odkladnica, ciagniety w lewo."""
    P = lambda dx, dy: f"{x + dx * k:.1f} {y + dy * k:.1f}"
    return (f'<path d="M{P(-30, -18)}L{P(0, -6)}L{P(22, -28)}M{P(0, -6)}L{P(-6, 2)}L{P(10, 2)}Z" fill="none" stroke-width="{2.6 * k:.1f}"/>'
            f'<path d="M{P(18, -30)}l8 -4" fill="none" stroke-width="{2.4 * k:.1f}"/>')


def kosiarz(x, y, k=1.0):
    """Mezczyzna z kosa w zamachu."""
    return postacie.man(x, y, k, hat=True) + (f'<path d="M{x + 8 * k:.1f} {y - 50 * k:.1f}L{x + 40 * k:.1f} {y - 6 * k:.1f}" fill="none" stroke-width="{2.6 * k:.1f}"/>'
                                               f'<path d="M{x + 40 * k:.1f} {y - 6 * k:.1f}C{x + 26 * k:.1f} {y - 2 * k:.1f} {x + 10 * k:.1f} {y + 0 * k:.1f} {x - 8 * k:.1f} {y - 4 * k:.1f}" fill="#FFFFFF" stroke-width="{1.8 * k:.1f}"/>')


def topor(hx, hy, k=1.0, angle=0):
    """Glowica siekiery (czarny klin z jasnym ostrzem) w punkcie hx,hy, obrocona o angle."""
    return (f'<g transform="rotate({angle} {hx:.1f} {hy:.1f})"><path d="M{hx - 2 * k:.1f} {hy - 4 * k:.1f}H{hx + 6 * k:.1f}L{hx + 14 * k:.1f} {hy - 10 * k:.1f}V{hy + 10 * k:.1f}L{hx + 6 * k:.1f} {hy + 4 * k:.1f}H{hx - 2 * k:.1f}Z" fill="#000000" stroke-width="{1.4 * k:.1f}"/>'
            f'<path d="M{hx + 13 * k:.1f} {hy - 9 * k:.1f}V{hy + 9 * k:.1f}" fill="none" stroke="#FFFFFF" stroke-width="{1.4 * k:.1f}"/></g>')


def z_siekiera(x, y, k=1.0, raised=False):
    """Mezczyzna z siekiera: opuszczona przy boku albo uniesiona nad glowe."""
    if raised:
        extra = (f'<path d="M{x + 10 * k:.1f} {y - 52 * k:.1f}L{x + 18 * k:.1f} {y - 98 * k:.1f}" fill="none" stroke-width="{3.4 * k:.1f}"/>' + topor(x + 18 * k, y - 98 * k, k, -80))
    else:
        extra = (f'<path d="M{x + 12 * k:.1f} {y - 40 * k:.1f}L{x + 18 * k:.1f} {y - 6 * k:.1f}" fill="none" stroke-width="{3.4 * k:.1f}"/>' + topor(x + 18 * k, y - 6 * k, k, 90))
    return postacie.man(x, y, k, hat=False) + extra


def siedzi_na_lawie(x, y, k=1.0, facing=1, white_scarf=False):
    """Postac siedzaca na lawie (profil): x,y = siedzisko."""
    f = facing
    P = lambda dx, dy: f"{x + dx * f * k:.1f} {y + dy * k:.1f}"
    g = (f'<g stroke-width="2"><path d="M{P(-8, 0)}C{P(-10, -14)} {P(-6, -28)} {P(0, -30)}C{P(6, -28)} {P(10, -16)} {P(8, 0)}Z" fill="#000000"/>'
         f'<path d="M{P(-2, 0)}L{P(12, 0)}L{P(14, 22)}" fill="none" stroke-width="{4 * k:.1f}"/>'
         f'<circle cx="{x + 1 * f * k:.1f}" cy="{y - 36 * k:.1f}" r="{6 * k:.1f}" fill="#000000"/>')
    if white_scarf:
        g += f'<path d="M{P(-7, -36)}Q{P(1, -52)} {P(8, -36)}L{P(5, -32)}Q{P(1, -35)} {P(-4, -32)}Z" fill="#FFFFFF" stroke-width="{1.6 * k:.1f}"/>'
    return g + '</g>'


def ksiadz(x, y, k=1.0):
    """Ksiadz w czarnej sutannie i bialej komzy."""
    P = lambda dx, dy: f"{x + dx * k:.1f} {y + dy * k:.1f}"
    return (f'<g stroke-width="2"><path d="M{P(-12, 0)}L{P(-9, -56)}H{x + 9 * k:.1f}L{P(12, 0)}Z" fill="#000000"/>'
            f'<path d="M{P(-12, -56)}L{P(-15, -28)}H{x + 15 * k:.1f}L{P(12, -56)}Z" fill="#FFFFFF" stroke-width="{1.8 * k:.1f}"/>'
            f'<circle cx="{x}" cy="{y - 64 * k:.1f}" r="{7 * k:.1f}" fill="#000000"/>'
            f'<path d="M{P(-4, -58)}h{8 * k:.1f}" fill="none" stroke="#FFFFFF" stroke-width="{2 * k:.1f}"/></g>')


def krzyz(x, base, h=30, k=1.0):
    return (f'<path d="M{x} {base}V{base - h * k}M{x - h * 0.3 * k:.1f} {base - h * 0.7 * k:.1f}H{x + h * 0.3 * k:.1f}" fill="none" stroke-width="{2.6 * k:.1f}"/>')


def kopiec(x, base, w=50, h=12):
    return f'<path d="M{x - w / 2} {base}C{x - w / 4} {base - h} {x + w / 4} {base - h} {x + w / 2} {base}Z" fill="#FFFFFF" stroke-width="2"/>'


def swieca(x, base, h=24):
    return f'<path d="M{x - 3} {base}V{base - h}H{x + 3}V{base}Z" fill="#FFFFFF" stroke-width="1.6"/><path d="M{x} {base - h}v-3" fill="none" stroke-width="1"/>'


def plomyk(x, y, s=1.0, color=RED):
    return f'<path d="M{x} {y}c{-4 * s:.1f} {-4 * s:.1f} {-3 * s:.1f} {-10 * s:.1f} 0 {-14 * s:.1f}c{3 * s:.1f} {4 * s:.1f} {4 * s:.1f} {10 * s:.1f} 0 {14 * s:.1f}z" fill="{color}" stroke="none"/>'


def strzyga_rig(cx, feet, k, prefix, head_only=False):
    """Strzyga z warstw autora (viewBox 32 70 260 460, stopy na y~510, srodek x~160)."""
    tr = art.parse_transform(f"translate({cx - 160 * k:.1f} {feet - 510 * k:.1f}) scale({k})")
    head = [("wlosy_tyl", ["wlosy_tyl"], {"type": "sway", "amplitude": 3, "duration": 2000}, "wlosy_tyl"),
            ("glowa", ["glowa"], {"type": "sway", "amplitude": 3, "duration": 2200}, "glowa"),
            ("szczeka", ["szczeka"], {"type": "sway", "amplitude": 5, "duration": 1100}, "szczeka"),
            ("oczy", ["oczy"], {"type": "blink", "duration": 4200}, None),
            ("wlosy", ["wlosy_przod"], {"type": "sway", "amplitude": 4, "duration": 1800, "phase": 0.2}, "wlosy_przod")]
    if head_only:
        return art.rig("strzyga", tr, head, prefix)
    body = [("cien", ["cien"], {"type": "flicker", "amplitude": 0.8, "duration": 2200}, None),
            ("reka_dalsza", ["noga_dalsza", "reka_dalsza"], {"type": "sway", "amplitude": 4, "duration": 2200}, "reka_dalsza"),
            ("tulow", ["tulow", "calun", "noga_blizsza"], {"type": "bob", "amplitude": 0.6, "duration": 2200}, None),
            ("reka", ["reka_blizsza"], {"type": "sway", "amplitude": 4, "duration": 2200, "phase": 0.5}, "reka_blizsza")]
    return art.rig("strzyga", tr, body + head, prefix)


def zmarly(x, y, k=1.0, prone=False, floor=330):
    """Zmarly na desce na kozlach, w bialej koszuli (glowa z lewej); prone — twarza do deski."""
    P = lambda dx, dy: f"{x + dx * k:.1f} {y + dy * k:.1f}"
    hx, hy = x - 46 * k, y - 4 * k
    g = [f'<path d="M{x - 44 * k:.1f} {y + 10 * k:.1f}L{x - 52 * k:.1f} {floor}M{x - 44 * k:.1f} {y + 10 * k:.1f}L{x - 36 * k:.1f} {floor}'
         f'M{x + 52 * k:.1f} {y + 10 * k:.1f}L{x + 44 * k:.1f} {floor}M{x + 52 * k:.1f} {y + 10 * k:.1f}L{x + 60 * k:.1f} {floor}" fill="none" stroke-width="{2.4 * k:.1f}"/>',
         f'<path d="M{P(-56, 4)}H{x + 64 * k:.1f}V{y + 10 * k:.1f}H{x - 56 * k:.1f}Z" fill="#000000"/>',
         f'<path d="M{P(-40, 4)}C{P(-38, -8)} {P(-20, -12)} {P(0, -11)}C{P(24, -10)} {P(46, -8)} {P(58, -2)}L{P(58, 4)}Z" fill="#FFFFFF" stroke-width="{2 * k:.1f}"/>',
         f'<path d="M{P(-30, 0)}C{P(-10, -2)} {P(20, -2)} {P(50, 0)}" fill="none" stroke-width="{0.9 * k:.1f}"/>']
    if prone:
        g.append(f'<ellipse cx="{hx:.1f}" cy="{hy + 2 * k:.1f}" rx="{8 * k:.1f}" ry="{6 * k:.1f}" fill="#000000"/>')
    else:
        g.append(f'<circle cx="{hx:.1f}" cy="{hy:.1f}" r="{7 * k:.1f}" fill="#FFFFFF" stroke-width="{2 * k:.1f}"/>'
                 f'<path d="M{hx - 4 * k:.1f} {hy - 3 * k:.1f}h{2.4 * k:.1f}M{hx + 1 * k:.1f} {hy - 4 * k:.1f}h{2.4 * k:.1f}" fill="none" stroke-width="{1.2 * k:.1f}"/>'
                 f'<path d="M{hx - 8 * k:.1f} {hy - 6 * k:.1f}C{hx - 6 * k:.1f} {hy - 10 * k:.1f} {hx + 4 * k:.1f} {hy - 11 * k:.1f} {hx + 7 * k:.1f} {hy - 6 * k:.1f}" fill="none" stroke-width="{1.6 * k:.1f}"/>'
                 f'<path d="M{P(-12, -12)}C{P(-6, -18)} {P(4, -18)} {P(8, -12)}" fill="#FFFFFF" stroke-width="{1.6 * k:.1f}"/>')
    return group(g)


ZX, ZY, ZK = 226, 290, 1.7
HX, HY = ZX - 46 * ZK, ZY - 4 * ZK


def deska_izba(night=True, extra=()):
    """Izba Wojcikow: zasloniete lustro, zatrzymany zegar, uchylone okno, lawa pod sciana."""
    t = izba_tlo(dark=night)
    t.append(okno(300, 100, 64, 70, fill="#000000"))
    t.append('<path d="M300 100L284 108V178L300 170Z" fill="#FFFFFF" stroke-width="2"/>')
    t.append('<path d="M40 110H96V170H40Z" fill="#FFFFFF" stroke-width="2.4"/><path d="M36 108C50 120 86 120 100 108L98 180C80 174 56 174 38 180Z" fill="#FFFFFF" stroke-width="1.8"/>'
             '<path d="M50 130v40M68 126v46M86 130v40" fill="none" stroke-width="0.8"/>')
    t.append('<path d="M206 100H236V140H206Z" fill="#FFFFFF" stroke-width="2"/><circle cx="221" cy="116" r="10" fill="#FFFFFF" stroke-width="1.6"/>'
             '<path d="M221 116V108M221 116L226 112" fill="none" stroke-width="1.4"/><path d="M221 140V168" fill="none" stroke-width="1.4"/><circle cx="221" cy="170" r="4" fill="#000000"/>')
    t.append('<path d="M14 330V316H104V330M18 316V330M100 316V330" fill="none" stroke-width="3"/><path d="M10 312H108V318H10Z" fill="#FFFFFF" stroke-width="2"/>')
    t += list(extra)
    return t


# ======================= WIOSENNA ORKA =======================
W = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V140H0Z" fill="url(#hatch)" stroke="none" opacity="0.25"/>',
     '<path d="M-10 200C80 194 200 198 400 192V440H-10Z" fill="#EDEBE6" stroke-width="2.6"/>']
t += bor(200, -6, 220, 12, seed=1201)
t.append('<path d="M230 202C270 196 330 196 400 200V214C340 210 280 210 230 210Z" fill="#FFFFFF" stroke-width="1.8"/>')
t += [reeds(x, 212, 0.6) for x in (236, 252, 372, 388)]
for i in range(9):
    y0 = 236 + i * 22
    t.append(f'<path d="M-10 {y0}C100 {y0 - 6} 250 {y0 + 4} 400 {y0 - 2}" fill="none" stroke-width="{1.2 + i * 0.15:.1f}"/>')
t.append('<path d="M-10 300H140V440H-10Z" fill="url(#hatchDense)" stroke="none" opacity="0.35"/>')
W["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
W["oracz"] = (150, 260, 200, 90, group([kon(196, 340, 1.1, -1), plug(266, 340, 1.1), postacie.man(304, 340, 1.0, hat=True, arm="l-18 8")]))
W["szczenie"] = (0, 0, 0, 0, "")
RIG_S = art.dog_barking(art.parse_transform("translate(76 318) scale(0.13)"), "sz", shadow=True, bark=True, shiver=False)
art.install_rig(W, RIG_S)
SZ = art.rig_names(RIG_S)
del W["szczenie"]
W["noc"] = (0, 0, 390, 440, group(['<rect width="390" height="440" fill="url(#hatchNight)" stroke="none" opacity="0.8"/>']))
W["ognie"] = (230, 176, 160, 30, group([plomyk(x, 204, 1.0) for x in (250, 300, 360)]))
W["ksiezyc"] = (60, 40, 40, 40, group(['<circle cx="80" cy="60" r="14" fill="#FFFFFF" stroke-width="2"/>']))
W["przod"] = (0, 422, 390, 422, group(PRZOD))
ORKA = ["tlo", "oracz"] + SZ + ["noc", "ksiezyc", "ognie", "przod"]
W_REVEAL = {**{n: "szczenie" for n in SZ}, "noc": "noc", "ognie": "noc", "ksiezyc": "noc"}
W_ANIM = {"oracz": {"type": "slide", "dx": -40, "dy": 0, "duration": 30000, "once": True}, "ognie": {"type": "flame", "amplitude": 0.2, "duration": 700, "anchorX": 0.5, "anchorY": 1}}
W_ANIM.update(art.rig_anims(RIG_S))
W_EXTRA = {**{n: {"fadeDuration": 1500, "hideOn": "noc"} for n in SZ}, "oracz": {"hideOn": "noc", "fadeDuration": 2500}, "noc": {"fadeDuration": 3000},
           "ognie": {"noInvert": True, "fadeDuration": 3000}, "ksiezyc": {"fadeDuration": 3000}, "przod": {"depth": 1.0}}
W_COMMENTS = {"tlo": "wiosenne pole: skiby, bór, jezioro w dali", "oracz": "Jaromir orze koniem (sunie po polu)", "noc": "noc świętojańska (# pokaz: noc)",
              "ognie": "ogniska nad jeziorem (# pokaz: noc)", "ksiezyc": "księżyc (# pokaz: noc)", "przod": "pierwszy plan",
              **{n: f"rude szczenię ujada na wrony — {n[3:]} (# pokaz: szczenie)" for n in SZ}}
_add(W, ORKA, W_ANIM, W_COMMENTS, "chmury", ((40, 50, 300, 40, group(['<path d="M60 82c8 -14 28 -14 34 0c8 -8 24 -2 22 8h-56z" fill="#FFFFFF" stroke-width="1.6"/>',
                                                                      '<path d="M230 70c8 -14 28 -14 34 0c8 -8 24 -2 22 8h-56z" fill="#FFFFFF" stroke-width="1.6"/>'])),
                                              {"type": "drift", "amplitude": 14, "duration": 16000}, "chmury"), before="oracz")
_add(W, ORKA, W_ANIM, W_COMMENTS, "wrony", efekty.wrony(120, 130, n=4, k=0.45, seed=1202, amplitude=60), before="oracz")
W_EXTRA["wrony"] = {"hideOn": "noc", "fadeDuration": 2000}
_add(W, ORKA, W_ANIM, W_COMMENTS, "wrona", efekty.wrona_siedzi(120, 300, 0.8), before="oracz")
W_COMMENTS["wrona"] = "wrona na skibie"
W_EXTRA["wrona"] = {"hideOn": "noc", "fadeDuration": 2000}
_add(W, ORKA, W_ANIM, W_COMMENTS, "wrona2", efekty.wrona_siedzi(40, 270, 0.7), before="oracz")
W_COMMENTS["wrona2"] = "druga wrona na skibie"
W_EXTRA["wrona2"] = {"hideOn": "noc", "fadeDuration": 2000}
_add(W, ORKA, W_ANIM, W_COMMENTS, "trawa", ((0, 390, 390, 40, group([grass(x, 430, 1.2) for x in range(6, 390, 20)])),
                                            {"type": "sway", "amplitude": 2, "duration": 2800, "anchorX": 0.5, "anchorY": 1}, "trawa na miedzy"), before="noc")
_add(W, ORKA, W_ANIM, W_COMMENTS, "swietliki", ((0, 220, 390, 160, group([f'<circle cx="{x}" cy="{y}" r="1.6" fill="#FFFFFF" stroke="none"/>' for x, y in
                                                                        [(40, 260), (90, 300), (150, 240), (200, 320), (260, 280), (330, 250), (360, 330)]])),
                                                {"type": "wander", "amplitude": 8, "duration": 5000}, "świetliki w noc świętojańską (# pokaz: noc)"), before="przod")
W_REVEAL["swietliki"] = "noc"
W_EXTRA["swietliki"] = {"fadeDuration": 3000, "noInvert": True}
_add(W, ORKA, W_ANIM, W_COMMENTS, "odblask", ((230, 204, 160, 12, group([f'<path d="M{x - 6} 210h12" fill="none" stroke="{RED}" stroke-width="1.4"/>' for x in (250, 300, 360)])),
                                              {"type": "flicker", "amplitude": 0.3, "duration": 900}, "odblask ognisk w wodzie (# pokaz: noc)"), before="przod")
W_REVEAL["odblask"] = "noc"
W_EXTRA["odblask"] = {"fadeDuration": 3000, "noInvert": True}

# ======================= LATO — PODWORZE =======================
L = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V150H0Z" fill="url(#hatch)" stroke="none" opacity="0.2"/>',
     '<path d="M-10 214C80 208 200 212 400 206V440H-10Z" fill="#EDEBE6" stroke-width="2.6"/>']
t += bor(212, 180, 400, 12, seed=1203)
t.append('<path d="M150 214C190 208 250 208 290 214V226C250 222 190 222 150 226Z" fill="#FFFFFF" stroke-width="1.8"/>')
t.append('<path d="M196 218H232M202 218V228M226 218V228" fill="none" stroke-width="2"/>')
t += [reeds(x, 224, 0.5) for x in (156, 172, 276)]
t.append(chalupa(10, 352, 140, 70, 56))
t.append('<path d="M300 340V284H384V340Z" fill="#FFFFFF" stroke-width="2.4"/><path d="M292 288L342 250L392 288Z" fill="url(#hatchDense)" stroke-width="2.4"/><path d="M326 340V302H356V340Z" fill="#000000"/>')
t.append('<path d="M84 352h40v6h-40z" fill="#FFFFFF" stroke-width="1.6"/>')
for i in range(6):
    t.append(f'<path d="M{170 + i * 34} 396c6 -6 14 -6 20 0" fill="none" stroke-width="1.2"/>')
L["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
L["hanka"] = (60, 320, 50, 60, group([sitting(76, 372, 1.3, 1)]))
L["jaromir"] = (230, 300, 80, 110, group([kosiarz(256, 410, 1.25)]))
RIG_M = art.rig("marysia", art.parse_transform("translate(132 330) scale(0.15)"), [
    ("cialo", ["cien", "nogi", "koszulka"], {"type": "bob", "amplitude": 1.2, "duration": 500}, None),
    ("rece", ["rece"], {"type": "sway", "amplitude": 8, "duration": 500}, (150, 270)),
    ("glowa", ["glowa", "wlosy", "wstazka"], {"type": "sway", "amplitude": 6, "duration": 1000}, (150, 206))], "my")
art.install_rig(L, RIG_M)
MY = art.rig_names(RIG_M)
L["wieczor"] = (0, 0, 390, 440, group(['<rect width="390" height="440" fill="url(#hatchNight)" stroke="none" opacity="0.55"/>',
                                       f'<circle cx="330" cy="200" r="14" fill="{RED}" stroke="none"/>']))
L["wojcik"] = (200, 188, 30, 32, group([postacie.man(214, 218, 0.36, hat=True)]))
L["przod"] = (0, 422, 390, 422, group(PRZOD))
LATO = ["tlo", "hanka"] + MY + ["jaromir", "wieczor", "wojcik", "przod"]
L_REVEAL = {**{n: "kroki" for n in MY}, "wieczor": "wieczor", "wojcik": "wieczor"}
L_ANIM = {"hanka": {"type": "bob", "amplitude": 0.6, "duration": 900}, "jaromir": {"type": "sway", "amplitude": 3, "duration": 1800, "anchorX": 0.4, "anchorY": 1},
          "wojcik": {"type": "bob", "amplitude": 0.3, "duration": 4000}}
L_ANIM.update(art.rig_anims(RIG_M))
for n in MY:
    L_ANIM[n + "_droga"] = None
L_ANIM = {k: v for k, v in L_ANIM.items() if v}
L_EXTRA = {**{n: {"fadeDuration": 1200, "hideOn": "wieczor"} for n in MY}, "wieczor": {"fadeDuration": 4000}, "wojcik": {"fadeDuration": 4000},
           "jaromir": {"hideOn": "wieczor", "fadeDuration": 3000}, "przod": {"depth": 1.0}}
L_COMMENTS = {"tlo": "lipcowe podwórze: chałupa, stodoła, jezioro z pomostem w dali", "hanka": "Hanka na progu (śmieje się)", "jaromir": "Jaromir kosi łąkę",
              "wieczor": "zmierzch nad jeziorem (# pokaz: wieczor)", "wojcik": "stary Wójcik na pomoście (# pokaz: wieczor)", "przod": "pierwszy plan",
              **{n: f"Marysia stawia pierwsze kroki — {n[3:]} (rysunek autora; # pokaz: kroki)" for n in MY}}
_add(L, LATO, L_ANIM, L_COMMENTS, "chmury", ((40, 40, 300, 40, group(['<path d="M80 72c8 -14 28 -14 34 0c8 -8 24 -2 22 8h-56z" fill="#FFFFFF" stroke-width="1.6"/>'])),
                                              {"type": "drift", "amplitude": 16, "duration": 18000}, "chmury"), before="hanka")
_add(L, LATO, L_ANIM, L_COMMENTS, "bocian", ((326, 228, 40, 30, group([postacie.stork(342, 254, 0.6)])), {"type": "bob", "amplitude": 1, "duration": 2200}, "bocian na dachu stodoły"), before="hanka")
_add(L, LATO, L_ANIM, L_COMMENTS, "motyle", ((160, 300, 140, 80, group([postacie.butterfly(180, 340, 0.8), postacie.butterfly(250, 320, 0.7)])),
                                             {"type": "wander", "amplitude": 14, "flap": 0.4, "duration": 4000}, "motyle nad skoszoną trawą"), before="jaromir")
L_EXTRA["motyle"] = {"hideOn": "wieczor", "fadeDuration": 2000}
_add(L, LATO, L_ANIM, L_COMMENTS, "dym", ((100, 200, 30, 60, group([dym(114, 250, 50)])), {"type": "sway", "amplitude": 3, "duration": 4600, "anchorX": 0.5, "anchorY": 1}, "dym z komina"), before="hanka")
_add(L, LATO, L_ANIM, L_COMMENTS, "trawa", ((0, 384, 390, 46, group([grass(x, 430, 1.4) for x in range(6, 390, 18)])),
                                            {"type": "sway", "amplitude": 3, "duration": 2600, "anchorX": 0.5, "anchorY": 1}, "wysoka trawa"), before="wieczor")
_add(L, LATO, L_ANIM, L_COMMENTS, "jaskolki", efekty.wrony(160, 120, n=3, k=0.32, seed=1204, amplitude=70, duration=4000), before="hanka")
L_COMMENTS["jaskolki"] = "jaskółki nad podwórzem"
_add(L, LATO, L_ANIM, L_COMMENTS, "zmarszczki", ((150, 214, 140, 10, group(['<path d="M166 220h20M240 222h16M260 219h12" fill="none" stroke-width="1"/>'])),
                                                 {"type": "drift", "amplitude": 4, "duration": 3000}, "zmarszczki na jeziorze"), before="wieczor")

# ======================= CZUWANIE — IZBA =======================
C = {}
t = deska_izba(night=True)
C["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
C["zmarly"] = (120, 250, 230, 82, zmarly(ZX, ZY, ZK))
C["swiece"] = (100, 240, 20, 60, group([swieca(118, 300, 30), swieca(128, 300, 24)]))
C["plomienie"] = (110, 256, 26, 24, group([plomyk(118, 268, 0.8), plomyk(128, 274, 0.7)]))
C["blask"] = (20, 180, 200, 160, group(['<ellipse cx="130" cy="270" rx="90" ry="70" fill="#FFFFFF" stroke="none" opacity="0.28"/>']))
C["kobiety"] = (10, 260, 120, 80, group([siedzi_na_lawie(30, 312, 1.1, 1, True), siedzi_na_lawie(58, 312, 1.1, 1, True), siedzi_na_lawie(86, 312, 1.0, 1, True)]))
C["mezczyzni"] = (300, 330, 90, 100, group([postacie.man(320, 410, 1.1, hat=False), postacie.man(352, 412, 1.15, hat=False), staruszek(286, 410, 1.1)]))
C["wargi"] = (int(HX) - 6, int(HY), 14, 10, group([f'<ellipse cx="{HX:.1f}" cy="{HY + 4:.1f}" rx="4" ry="2" fill="#000000" stroke="none"/>']))
C["zeby"] = (int(HX) - 10, int(HY) - 2, 20, 16, group([f'<ellipse cx="{HX:.1f}" cy="{HY + 5:.1f}" rx="6" ry="4" fill="#000000" stroke="none"/>',
                                                      f'<path d="M{HX - 5:.1f} {HY + 3:.1f}l2 2l2 -2l2 2l2 -2l2 2M{HX - 4:.1f} {HY + 7:.1f}l2 -2l2 2l2 -2l2 2" fill="none" stroke="#FFFFFF" stroke-width="1"/>']))
C["powieki"] = (int(HX) - 10, int(HY) - 10, 20, 10, group([f'<path d="M{HX - 7:.1f} {HY - 5:.1f}h4M{HX + 2:.1f} {HY - 6:.1f}h4" fill="none" stroke="#000000" stroke-width="2.6"/>',
                                                         f'<path d="M{HX - 6:.1f} {HY - 5:.1f}h2M{HX + 3:.1f} {HY - 6:.1f}h2" fill="none" stroke="#FFFFFF" stroke-width="1.2"/>']))
C["przod"] = (0, 422, 390, 422, group(PRZOD_IZBA))
CZUW = ["tlo", "blask", "kobiety", "zmarly", "swiece", "plomienie", "wargi", "zeby", "powieki", "mezczyzni", "przod"]
C_REVEAL = {"wargi": "wargi", "zeby": "zeby", "powieki": "powieki"}
C_ANIM = {"plomienie": {"type": "flame", "amplitude": 0.18, "duration": 700, "anchorX": 0.5, "anchorY": 1}, "blask": {"type": "flicker", "amplitude": 0.6, "duration": 1300},
          "kobiety": {"type": "sway", "amplitude": 1.5, "duration": 2600, "anchorX": 0.5, "anchorY": 1}, "mezczyzni": {"type": "bob", "amplitude": 0.3, "duration": 3600},
          "wargi": {"type": "flicker", "amplitude": 0.3, "duration": 2400}, "zeby": {"type": "flicker", "amplitude": 0.5, "duration": 1600}, "powieki": {"type": "blink", "duration": 3800}}
C_EXTRA = {"plomienie": {"noInvert": True}, "blask": {"noInvert": True}, "wargi": {"fadeDuration": 2500, "hideOn": "zeby"}, "zeby": {"fadeDuration": 1200},
           "powieki": {"fadeDuration": 2500}, "przod": {"depth": 1.0}}
C_COMMENTS = {"tlo": "izba Wójcików nocą: zasłonięte lustro, zatrzymany zegar, uchylone okno", "zmarly": "stary Wójcik na desce w lnianej koszuli",
              "swiece": "świece u wezgłowia", "plomienie": "płomienie świec", "blask": "blask świec", "kobiety": "kobiety śpiewają na ławie (kołyszą się)",
              "mezczyzni": "Jaromir, Antek i stary Staś pod ścianą", "wargi": "rozchylone wargi (# pokaz: wargi)", "zeby": "dwa rzędy zębów (# pokaz: zeby)",
              "powieki": "białka spod niedomkniętych powiek (# pokaz: powieki)", "przod": "pierwszy plan"}
_add(C, CZUW, C_ANIM, C_COMMENTS, "dym", ((96, 200, 30, 60, group(['<path d="M104 254c-4 -10 4 -18 0 -28c-4 -8 2 -14 0 -20M114 258c4 -10 -4 -18 0 -28" fill="none" stroke="#FFFFFF" stroke-width="1" opacity="0.7"/>'])),
                                          {"type": "rise", "amplitude": 14, "duration": 3000}, "dym ze świec"), before="plomienie")
_add(C, CZUW, C_ANIM, C_COMMENTS, "platki", efekty.platki(302, 102, 60, 66, n=7, seed=1205, fall=50, duration=4000), before="zmarly")
C_COMMENTS["platki"] = "pierwszy śnieg za oknem"
_add(C, CZUW, C_ANIM, C_COMMENTS, "okiennica", ((282, 104, 20, 76, group(['<path d="M300 100L284 108V178L300 170Z" fill="#FFFFFF" stroke-width="2"/>'])),
                                                {"type": "sway", "amplitude": 2, "duration": 3400, "anchorX": 1, "anchorY": 0.5}, "uchylone skrzydło okna (skrzypi)"), before="zmarly")
_add(C, CZUW, C_ANIM, C_COMMENTS, "pylki", efekty.pylki(80, 200, 120, 100, n=6, seed=1206, duration=8000), before="mezczyzni")
_add(C, CZUW, C_ANIM, C_COMMENTS, "rozaniec", ((270, 340, 20, 30, group(['<path d="M276 344c-4 8 0 16 6 18c6 -2 8 -10 4 -18" fill="none" stroke-width="1" stroke-dasharray="1.5 1.5"/><path d="M282 362v6M279 366h6" fill="none" stroke-width="1.2"/>'])),
                                               {"type": "sway", "amplitude": 6, "duration": 2200, "anchorX": 0.5, "anchorY": 0}, "różaniec w dłoni Stasia"), before="mezczyzni")
_add(C, CZUW, C_ANIM, C_COMMENTS, "spiew", ((40, 236, 80, 24, group(['<path d="M48 250q6 -6 12 0q6 -6 12 0q6 -6 12 0q6 -6 12 0" fill="none" stroke="#FFFFFF" stroke-width="1" stroke-dasharray="2 3"/>'])),
                                            {"type": "drift", "amplitude": 6, "duration": 3000}, "pieśń żałobna"), before="zmarly")
C_EXTRA["spiew"] = {"hideOn": "zeby", "fadeDuration": 800}

# ======================= POLNOC — STRZYGA =======================
N = {}
t = deska_izba(night=True, extra=['<rect width="390" height="440" fill="url(#hatchNight)" stroke="none" opacity="0.45"/>'])
N["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
N["zmarly"] = (120, 250, 230, 82, zmarly(ZX, ZY, ZK))
N["swiece"] = (100, 240, 20, 60, group([swieca(118, 300, 30), swieca(128, 300, 24)]))
N["plomienie"] = (110, 256, 26, 24, group([plomyk(118, 268, 0.8, "#FFFFFF"), plomyk(128, 274, 0.7, "#FFFFFF")]))
N["palce"] = (210, 236, 34, 26, group(['<path d="M216 258l-4 -10M224 256l-1 -12M232 257l2 -10M238 259l4 -8" fill="none" stroke="#000000" stroke-width="2"/>']))
RIG_N = strzyga_rig(226, 322, 0.44, "sn")
art.install_rig(N, RIG_N)
SN = art.rig_names(RIG_N)
N["uciekajaca"] = (20, 250, 60, 90, group([postacie.woman(40, 330, 1.0)]))
N["kobiety"] = (10, 260, 120, 80, group([siedzi_na_lawie(58, 312, 1.1, 1, True), siedzi_na_lawie(86, 312, 1.0, 1, True)]))
N["mezczyzni"] = (300, 330, 90, 100, group([postacie.man(320, 410, 1.1, hat=False), postacie.man(352, 412, 1.15, hat=False), staruszek(286, 410, 1.1)]))
N["twarz"] = (100, 210, 260, 120, group([postacie.man(176, 336, 1.05, hat=False, arm="l12 26"), postacie.man(262, 336, 1.05, hat=False, arm="l-26 24"), zmarly(ZX, ZY, ZK, prone=True)]))
N["sierp"] = (110, 230, 240, 100, group([zmarly(ZX, ZY, ZK), f'<path d="M{HX + 4:.0f} {HY + 10:.0f}C{HX + 30:.0f} {HY + 8:.0f} {HX + 36:.0f} {HY - 20:.0f} {HX + 16:.0f} {HY - 34:.0f}C{HX + 24:.0f} {HY - 18:.0f} {HX + 20:.0f} {HY:.0f} {HX + 6:.0f} {HY + 6:.0f}Z" fill="#FFFFFF" stroke-width="1.6"/>',
                                        f'<path d="M{HX + 16:.0f} {HY - 34:.0f}l14 -16" fill="none" stroke-width="3.4"/>', f'<path d="M{HX + 2:.0f} {HY + 8:.0f}v14c0 4 4 4 4 0v-14z" fill="#000000" stroke="none"/>']))
N["gromnica"] = (110, 200, 240, 130, group([zmarly(ZX, ZY, ZK), '<ellipse cx="214" cy="250" rx="60" ry="46" fill="#FFFFFF" stroke="none" opacity="0.45"/>',
                                           swieca(214, 276, 30), plomyk(214, 244, 1.1)]))
N["przod"] = (0, 422, 390, 422, group(PRZOD_IZBA))
POLN = ["tlo", "kobiety", "uciekajaca", "zmarly", "palce"] + SN + ["twarz", "sierp", "gromnica", "swiece", "plomienie", "mezczyzni", "przod"]
HIDE_SN = "twarz,sierp,gromnica"
N_REVEAL = {"palce": "palce", **{n: "wstaje" for n in SN}, "uciekajaca": "wstaje", "twarz": "twarz", "sierp": "sierp", "gromnica": "gromnica"}
N_ANIM = {"plomienie": {"type": "sway", "amplitude": 18, "duration": 1600, "anchorX": 0.5, "anchorY": 1}, "palce": {"type": "flicker", "amplitude": 0, "duration": 500},
          "uciekajaca": {"type": "slide", "dx": -60, "dy": 0, "duration": 1600, "once": True}, "kobiety": {"type": "bob", "amplitude": 0.6, "duration": 400},
          "mezczyzni": {"type": "bob", "amplitude": 0.4, "duration": 600}, "twarz": {"type": "bob", "amplitude": 1.2, "duration": 300},
          "gromnica": {"type": "flicker", "amplitude": 0.8, "duration": 1600}}
N_ANIM.update(art.rig_anims(RIG_N))
N_EXTRA = {"palce": {"fadeDuration": 600, "hideOn": "wstaje"}, "zmarly": {"hideOn": "wstaje", "fadeDuration": 1500}, **{n: {"fadeDuration": 1800, "hideOn": HIDE_SN} for n in SN},
           "uciekajaca": {"fadeDuration": 300, "hideAfter": 1600}, "twarz": {"fadeDuration": 800}, "sierp": {"fadeDuration": 800}, "gromnica": {"fadeDuration": 1500, "noInvert": True},
           "plomienie": {"noInvert": True, "hideOn": "gromnica"}, "przod": {"depth": 1.0}}
N_COMMENTS = {"tlo": "ta sama izba o północy, ciemniej", "zmarly": "zmarły na desce (znika, gdy wstaje)", "swiece": "świece u wezgłowia",
              "plomienie": "blade płomienie kładą się na bok", "palce": "palce drgają (# pokaz: palce)", "uciekajaca": "kobieta rzuca się do drzwi (# pokaz: wstaje)",
              "kobiety": "kobiety na ławie drżą", "mezczyzni": "mężczyźni pod ścianą", "twarz": "Jaromir i Antek przyciskają zmarłego twarzą do deski (# pokaz: twarz)",
              "sierp": "sierp przy szyi, czarna krew (# pokaz: sierp)", "gromnica": "gromnica płonie w dłoniach zmarłego (# pokaz: gromnica)", "przod": "pierwszy plan",
              **{n: f"strzyga wstaje z deski — {n[3:]} (rysunek autora; # pokaz: wstaje)" for n in SN}}
_add(N, POLN, N_ANIM, N_COMMENTS, "dym", ((96, 200, 30, 60, group(['<path d="M104 254c-8 -10 4 -18 -4 -28M114 258c-6 -10 2 -18 -6 -28" fill="none" stroke="#FFFFFF" stroke-width="1.2" opacity="0.8"/>'])),
                                          {"type": "rise", "amplitude": 16, "duration": 2400}, "gęsty dym ze świec"), before="plomienie")
_add(N, POLN, N_ANIM, N_COMMENTS, "platki", efekty.platki(302, 102, 60, 66, n=7, seed=1207, fall=50, duration=4000), before="zmarly")
_add(N, POLN, N_ANIM, N_COMMENTS, "okiennica", ((282, 104, 20, 76, group(['<path d="M300 100L284 108V178L300 170Z" fill="#FFFFFF" stroke-width="2"/>'])),
                                                {"type": "sway", "amplitude": 4, "duration": 1400, "anchorX": 1, "anchorY": 0.5}, "skrzydło okna trzaska"), before="zmarly")
_add(N, POLN, N_ANIM, N_COMMENTS, "westchnienie", ((200, 160, 90, 40, group(['<path d="M210 190c10 -8 20 -8 30 0c10 -8 20 -8 30 0" fill="none" stroke="#FFFFFF" stroke-width="1.2" stroke-dasharray="3 3"/>'])),
                                                   {"type": "rise", "amplitude": 12, "duration": 2000}, "świszczące westchnienie (# pokaz: wstaje)"), before="twarz")
N_REVEAL["westchnienie"] = "wstaje"
N_EXTRA["westchnienie"] = {"fadeDuration": 1200, "hideOn": HIDE_SN}
_add(N, POLN, N_ANIM, N_COMMENTS, "kur", ((300, 100, 64, 70, group(['<rect x="302" y="102" width="60" height="66" fill="#FFFFFF" stroke="none" opacity="0.5"/>'])),
                                          {"type": "flicker", "amplitude": 0.7, "duration": 5000}, "szarzeje za oknem (# pokaz: twarz, sierp, gromnica)"), before="zmarly")
N_REVEAL["kur"] = "twarz"
N_EXTRA["kur"] = {"fadeDuration": 6000}
for alt in ("sierp", "gromnica"):
    nm = "kur_" + alt
    N[nm] = N["kur"]
    POLN.insert(POLN.index("kur"), nm)
    N_ANIM[nm] = N_ANIM["kur"]
    N_REVEAL[nm] = alt
    N_EXTRA[nm] = N_EXTRA["kur"]
    N_COMMENTS[nm] = N_COMMENTS["kur"]

# ======================= CMENTARZ W BUKOWCU =======================
K = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>', '<path d="M0 0H390V130H0Z" fill="url(#hatch)" stroke="none" opacity="0.3"/>',
     '<path d="M-10 230C80 224 200 228 400 222V440H-10Z" fill="#FFFFFF" stroke-width="2.6"/>']
t += bor(226, 260, 400, 12, seed=1208)
t.append(kosciolek(60, 226, 2.2))
t += [krzyz(x, b, 24) for x, b in [(30, 300), (70, 290), (110, 304), (150, 292), (190, 306), (40, 340), (120, 344)]]
t += [kopiec(x, b + 2, 30, 6) for x, b in [(30, 300), (70, 290), (110, 304), (150, 292), (190, 306), (40, 340), (120, 344)]]
t.append('<path d="M228 250V380" fill="none" stroke-width="0"/><path d="M226 256H236V400H226Z" fill="#FFFFFF" stroke-width="2"/>')
t += [f'<path d="M226 {y}H236" fill="none" stroke-width="0.9"/>' for y in range(270, 400, 16)]
t.append('<path d="M-10 254H226M-10 262H226" fill="none" stroke-width="2"/>')
t.append('<path d="M300 236L330 440M390 300L240 440" fill="none" stroke-width="1.4" stroke-dasharray="8 6"/>')
t.append(krzyz(330, 300, 60, 1.2))
K["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
K["ksiadz"] = (130, 300, 40, 90, group([ksiadz(150, 380, 1.1)]))
K["za_murem"] = (240, 310, 150, 110, group([kopiec(300, 400, 60, 14), '<path d="M300 386l-12 -18" fill="none" stroke-width="2.4"/><path d="M288 368c-10 -4 -14 6 -8 12" fill="#FFFFFF" stroke-width="1.4"/>',
                                            postacie.man(262, 410, 0.95, hat=False), staruszek(350, 408, 1.0), postacie.man(380, 412, 0.95, hat=False)]))
K["poswiecona"] = (40, 330, 180, 90, group([kopiec(130, 400, 60, 14), krzyz(130, 392, 40), postacie.man(70, 414, 0.9, hat=False), postacie.woman(96, 414, 0.9),
                                            postacie.woman(170, 414, 0.9), postacie.man(200, 414, 0.9, hat=False)]))
K["mak"] = (110, 370, 40, 30, group([f'<circle cx="{x}" cy="{y}" r="1.6" fill="{RED}" stroke="none"/>' for x, y in [(118, 390), (126, 386), (134, 392), (142, 388), (130, 396)]]))
K["wdowa"] = (270, 330, 80, 80, group(['<path d="M300 404c0 -10 24 -10 24 0z" fill="#FFFFFF" stroke-width="1.6"/>', sitting(312, 400, 1.2, -1),
                                       f'<path d="M280 410c6 -10 14 -10 20 0" fill="none" stroke-width="1.2"/>']))
K["swieczka"] = (110, 360, 50, 50, group([swieca(130, 398, 14), plomyk(130, 383, 0.6), '<ellipse cx="146" cy="398" rx="10" ry="4" fill="none" stroke-width="2" stroke-dasharray="2 1"/>']))
K["rozkop"] = (0, 0, 390, 440, group(['<rect width="390" height="440" fill="url(#hatchNight)" stroke="none" opacity="0.8"/>',
                                      '<path d="M90 400C100 380 150 380 160 400Z" fill="#000000" stroke-width="2"/>', postacie.man(80, 404, 1.0, hat=True, arm="l14 20"),
                                      postacie.man(176, 404, 1.0, hat=True, arm="l-30 16"), '<path d="M200 380l-36 30" fill="none" stroke-width="2"/>']))
K["latarnia"] = (110, 330, 50, 60, group(['<ellipse cx="134" cy="370" rx="24" ry="20" fill="#FFFFFF" stroke="none" opacity="0.4"/>', '<path d="M128 380V364H140V380Z" fill="#000000" stroke-width="1.4"/>',
                                          f'<path d="M134 377c-2 -2 -2 -6 0 -9c2 3 2 7 0 9z" fill="{RED}" stroke="none"/>']))
K["przod"] = (0, 422, 390, 422, group(SNIEG))
CMEN = ["tlo", "ksiadz", "poswiecona", "mak", "swieczka", "za_murem", "wdowa", "rozkop", "latarnia", "przod"]
K_REVEAL = {"ksiadz": "ksiadz", "za_murem": "za_murem", "poswiecona": "poswiecona", "mak": "mak", "wdowa": "wdowa", "swieczka": "swieczka", "rozkop": "rozkop", "latarnia": "rozkop"}
K_ANIM = {"ksiadz": {"type": "bob", "amplitude": 0.4, "duration": 2400}, "za_murem": {"type": "bob", "amplitude": 0.4, "duration": 2000},
          "poswiecona": {"type": "bob", "amplitude": 0.3, "duration": 2800}, "mak": {"type": "flicker", "amplitude": 0.4, "duration": 2400},
          "swieczka": {"type": "flicker", "amplitude": 0.4, "duration": 900}, "wdowa": {"type": "bob", "amplitude": 0.3, "duration": 3600},
          "rozkop": {"type": "bob", "amplitude": 1, "duration": 900}, "latarnia": {"type": "flicker", "amplitude": 0.5, "duration": 1100}}
K_EXTRA = {"ksiadz": {"fadeDuration": 1500, "hideOn": "za_murem,wdowa,swieczka"}, "za_murem": {"fadeDuration": 2000, "hideOn": "wdowa"},
           "poswiecona": {"fadeDuration": 2000, "hideOn": "swieczka"}, "mak": {"fadeDuration": 1500, "noInvert": True}, "wdowa": {"fadeDuration": 3000},
           "swieczka": {"fadeDuration": 3000, "noInvert": True}, "rozkop": {"fadeDuration": 3000}, "latarnia": {"fadeDuration": 3000, "noInvert": True}, "przod": {"depth": 1.0}}
K_COMMENTS = {"tlo": "zimowy cmentarz w Bukowcu: kościółek, krzyże, mur, rozstaje z krzyżem", "ksiadz": "ksiądz z Bukowca (# pokaz: ksiadz)",
              "za_murem": "grób za murem przy rozstajach: sierp, trzech mężczyzn (# pokaz: za_murem)", "poswiecona": "pogrzeb w poświęconej ziemi (# pokaz: poswiecona)",
              "mak": "mak Hanki (# pokaz: mak)", "wdowa": "Wójcikowa na kamieniu przy rozstajach (# pokaz: wdowa)", "swieczka": "świeczka i wianek na grobie (# pokaz: swieczka)",
              "rozkop": "noc: Jaromir i Antek rozkopują grób (# pokaz: rozkop)", "latarnia": "latarnia przy grobie (# pokaz: rozkop)", "przod": "pierwszy plan"}
_add(K, CMEN, K_ANIM, K_COMMENTS, "wrony", efekty.wrony(170, 100, n=5, k=0.42, seed=1209, amplitude=60), before="ksiadz")
_add(K, CMEN, K_ANIM, K_COMMENTS, "wrona", efekty.wrona_siedzi(334, 238, 0.7), before="ksiadz")
K_COMMENTS["wrona"] = "wrona na przydrożnym krzyżu"
_add(K, CMEN, K_ANIM, K_COMMENTS, "platki", efekty.platki(0, 0, 390, 400, n=18, seed=1210, fall=120, duration=7000), before="przod")
_add(K, CMEN, K_ANIM, K_COMMENTS, "dzwon", ((132, 120, 14, 16, group(['<path d="M134 134c0 -8 2 -12 5 -12c3 0 5 4 5 12z" fill="#000000" stroke-width="1"/>'])),
                                            {"type": "sway", "amplitude": 14, "duration": 1600, "anchorX": 0.5, "anchorY": 0}, "dzwon na wieży kościółka"), before="ksiadz")
_add(K, CMEN, K_ANIM, K_COMMENTS, "zamiec", ((-30, 226, 450, 30, group([f'<path d="{ribbon(-20, 410, 238, 10, 4)}" fill="#FFFFFF" stroke-width="1" opacity="0.7"/>'])),
                                             {"type": "drift", "amplitude": 26, "duration": 7000}, "zamieć nad polem"), before="ksiadz")
_add(K, CMEN, K_ANIM, K_COMMENTS, "iskry", efekty.iskry(0, 300, 390, 120, n=12, seed=1211, duration=2600), before="ksiadz")
K_COMMENTS["iskry"] = "śnieg skrzy się"

# ======================= STRZYGA ZA OKNEM =======================
O = {}
t = izba_tlo(dark=True)
t.append('<path d="M130 70H260V226H130Z" fill="#EDEBE6" stroke="none"/><path d="M130 70H260V226H130Z" fill="url(#hatchNight)" stroke="none" opacity="0.5"/>')
t.append(piec(320, 330, 0.9))
O["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
RIG_O = strzyga_rig(150, 336, 0.62, "so", head_only=True)
art.install_rig(O, RIG_O)
SO = art.rig_names(RIG_O)
O["rama"] = (120, 60, 150, 180, group(['<path d="M130 70H260V226H130Z" fill="none" stroke-width="4"/><path d="M195 70V226M130 148H260" fill="none" stroke-width="3"/>',
                                       '<path d="M120 226H270V236H120Z" fill="#FFFFFF" stroke-width="2.4"/>',
                                       '<path d="M126 240V330M264 240V330" fill="none" stroke-width="0"/><path d="M120 236H270V330H120Z" fill="url(#hatchDense)" stroke="none" opacity="0.4"/>']))
O["oddech"] = (196, 150, 64, 60, group(['<ellipse cx="226" cy="180" rx="26" ry="22" fill="#FFFFFF" stroke="none" opacity="0.6"/>']))
O["kolyska"] = (180, 280, 70, 54, group([kolyska_svg(214, 330)]))
O["jaromir"] = (30, 220, 110, 112, group([siedzi_na_lawie(70, 296, 1.7, 1), '<path d="M30 296H120V303H30ZM36 303V330M114 303V330" fill="#FFFFFF" stroke-width="2"/>',
                                         '<path d="M84 286L118 270" fill="none" stroke-width="3.4"/>', topor(118, 270, 1.3, -25)]))
O["wstal"] = (100, 180, 100, 160, group([z_siekiera(140, 334, 1.45, raised=True)]))
O["swit"] = (130, 70, 130, 156, group(['<path d="M132 72H258V224H132Z" fill="#FFFFFF" stroke="none" opacity="0.7"/>']))
O["przod"] = (0, 422, 390, 422, group(PRZOD_IZBA))
OKNO = ["tlo", "swit"] + SO + ["rama", "oddech", "kolyska", "jaromir", "wstal", "przod"]
O_REVEAL = {"oddech": "oddech", **{n: "strzyga" for n in SO}, "wstal": "odszedl", "swit": "odszedl"}
O_ANIM = {"oddech": {"type": "flicker", "amplitude": 0.2, "duration": 2400}, "kolyska": {"type": "sway", "amplitude": 2, "duration": 2600, "anchorX": 0.5, "anchorY": 1},
          "jaromir": {"type": "bob", "amplitude": 0.4, "duration": 3000}, "wstal": {"type": "bob", "amplitude": 0.5, "duration": 1600}}
O_ANIM.update(art.rig_anims(RIG_O))
O_EXTRA = {"oddech": {"fadeDuration": 3000, "hideOn": "odszedl"}, **{n: {"fadeDuration": 2500, "hideOn": "odszedl"} for n in SO},
           "jaromir": {"hideOn": "odszedl", "fadeDuration": 800}, "wstal": {"fadeDuration": 800}, "swit": {"fadeDuration": 5000}, "przod": {"depth": 1.0}}
O_COMMENTS = {"tlo": "izba przed świtem: okno, piec", "rama": "rama okna i parapet", "oddech": "mglista plama oddechu na szybie (# pokaz: oddech)",
              "kolyska": "kołyska Marysi pod oknem", "jaromir": "Jaromir czuwa z siekierą na kolanach", "wstal": "Jaromir staje z siekierą (# pokaz: odszedl)",
              "swit": "świt za oknem (# pokaz: odszedl)", "przod": "pierwszy plan", **{n: f"strzyga za szybą — {n[3:]} (rysunek autora; # pokaz: strzyga)" for n in SO}}
_add(O, OKNO, O_ANIM, O_COMMENTS, "platki", efekty.platki(134, 74, 122, 148, n=10, seed=1212, fall=70, duration=5000), before="swit")
_add(O, OKNO, O_ANIM, O_COMMENTS, "gwiazdy", efekty.iskry(134, 74, 122, 60, n=6, seed=1213, duration=3600), before="swit")
O_COMMENTS["gwiazdy"] = "gwiazdy za oknem"
O_EXTRA["gwiazdy"] = {"hideOn": "odszedl", "fadeDuration": 3000}
_add(O, OKNO, O_ANIM, O_COMMENTS, "krew", ((200, 196, 20, 30, group(['<path d="M206 200v14c0 4 5 4 5 0v-14z" fill="#000000" stroke="none"/>'])),
                                           {"type": "rise", "amplitude": -6, "duration": 2400}, "ciemna strużka po brodzie (# pokaz: strzyga)"), before="rama")
O_REVEAL["krew"] = "strzyga"
O_EXTRA["krew"] = {"fadeDuration": 2500, "hideOn": "odszedl"}
_add(O, OKNO, O_ANIM, O_COMMENTS, "pylki", efekty.pylki(40, 240, 300, 80, n=6, seed=1214, duration=9000), before="przod")
_add(O, OKNO, O_ANIM, O_COMMENTS, "zar", ((330, 300, 40, 14, group([f'<circle cx="{x}" cy="308" r="1.6" fill="{RED}" stroke="none"/>' for x in (342, 350, 358)])),
                                          {"type": "flicker", "amplitude": 0.3, "duration": 1600}, "żar w piecu"), before="kolyska")
O_EXTRA["zar"] = {"noInvert": True}

# ======================= WIGILIA =======================
V = {}
t = izba_tlo(dark=True)
t.append(okno(260, 90, 90, 90, fill="#EDEBE6"))
t.append('<path d="M262 160C290 150 320 152 348 158V178H262Z" fill="#FFFFFF" stroke-width="1"/>')
t.append(chalupa(296, 160, 34, 14, 12, snow=True))
t.append(stol(70, 330, 170, 1.0))
t.append('<path d="M66 300H244V310L236 318H74L66 310Z" fill="#FFFFFF" stroke-width="2"/><path d="M70 304c10 -4 20 4 30 0M190 304c10 -4 20 4 30 0" fill="none" stroke-width="0.8"/>')
t += [f'<ellipse cx="{x}" cy="298" rx="14" ry="4" fill="#FFFFFF" stroke-width="1.6"/>' for x in (96, 136, 176)]
t.append('<path d="M20 330L30 250H50L60 330Z" fill="url(#hatch)" stroke-width="1.8"/><path d="M28 250C30 236 50 236 52 250" fill="none" stroke-width="1.6"/>')
V["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
V["talerz"] = (196, 290, 40, 14, group(['<ellipse cx="216" cy="298" rx="14" ry="4" fill="#FFFFFF" stroke-width="1.6"/>']))
V["oplatek"] = (206, 290, 20, 10, group(['<path d="M208 297h16v-4h-16z" fill="#FFFFFF" stroke-width="1"/>']))
V["mech"] = (200, 284, 34, 16, group(['<path d="M206 297c0 -6 4 -8 6 -6c2 -4 6 -4 8 0c2 -3 6 -2 7 2c3 0 4 3 2 4z" fill="url(#hatchDense)" stroke-width="1.2"/>',
                                      '<path d="M210 292l-1 -3M216 290v-3M222 291l2 -3" fill="none" stroke-width="0.8"/>']))
V["swieca"] = (150, 260, 14, 40, group([swieca(156, 296, 22)]))
V["plomien"] = (148, 258, 16, 18, group([plomyk(156, 274, 0.8)]))
V["blask"] = (60, 200, 200, 140, group(['<ellipse cx="156" cy="270" rx="90" ry="60" fill="#FFFFFF" stroke="none" opacity="0.25"/>']))
V["podlaznicka"] = (120, 0, 80, 110, group(['<path d="M160 0V20" fill="none" stroke-width="1.4"/><path d="M160 20L130 90H190Z" fill="#000000" stroke-width="1.4"/>',
                                            '<path d="M140 50h40M134 70h52" fill="none" stroke="#FFFFFF" stroke-width="1" stroke-dasharray="3 3"/>']))
V["jablka"] = (124, 80, 72, 30, group([f'<circle cx="{x}" cy="{y}" r="4" fill="{RED}" stroke="none"/>' for x, y in [(136, 96), (160, 102), (184, 96)]] +
                                      [f'<path d="M{x} {y - 4}v-6" fill="none" stroke-width="0.8"/>' for x, y in [(136, 96), (160, 102), (184, 96)]]))
V["swieca_okno"] = (304, 146, 10, 10, group([f'<path d="M306 148h6v6h-6z" fill="{RED}" stroke="none"/>']))
V["kolyska"] = (290, 280, 70, 54, group([kolyska_svg(324, 330)]))
V["szczenie"] = (0, 0, 0, 0, "")
RIG_V = art.dog_sitting(art.parse_transform("translate(300 286) scale(0.09)"), "vs")
art.install_rig(V, RIG_V)
VS = art.rig_names(RIG_V)
del V["szczenie"]
V["rano"] = (0, 0, 390, 440, group(['<path d="M260 90L350 90L260 330L120 330Z" fill="#FFFFFF" stroke="none" opacity="0.35"/>']))
V["przod"] = (0, 422, 390, 422, group(PRZOD_IZBA))
WIG = ["tlo", "swieca_okno", "blask", "podlaznicka", "jablka", "kolyska"] + VS + ["talerz", "oplatek", "mech", "swieca", "plomien", "rano", "przod"]
V_REVEAL = {"swieca_okno": "swieca", **{n: "szczenie" for n in VS}, "mech": "mech", "rano": "mech"}
V_ANIM = {"plomien": {"type": "flame", "amplitude": 0.15, "duration": 800, "anchorX": 0.5, "anchorY": 1}, "blask": {"type": "flicker", "amplitude": 0.6, "duration": 1500},
          "podlaznicka": {"type": "sway", "amplitude": 2, "duration": 5000, "anchorX": 0.5, "anchorY": 0}, "jablka": {"type": "sway", "amplitude": 3, "duration": 5000, "anchorX": 0.5, "anchorY": 0},
          "swieca_okno": {"type": "flicker", "amplitude": 0.3, "duration": 1300}, "kolyska": {"type": "sway", "amplitude": 2, "duration": 2600, "anchorX": 0.5, "anchorY": 1},
          "rano": {"type": "flicker", "amplitude": 0.75, "duration": 6500}, "mech": {"type": "bob", "amplitude": 0.3, "duration": 3000}}
V_ANIM.update(art.rig_anims(RIG_V))
V_EXTRA = {"plomien": {"noInvert": True, "hideOn": "mech"}, "blask": {"noInvert": True, "hideOn": "mech"}, "swieca_okno": {"noInvert": True, "fadeDuration": 2000},
           **{n: {"fadeDuration": 1500} for n in VS}, "oplatek": {"hideOn": "mech", "fadeDuration": 2500}, "mech": {"fadeDuration": 3000}, "rano": {"fadeDuration": 4000},
           "przod": {"depth": 1.0}}
V_COMMENTS = {"tlo": "wigilijny wieczór: stół z obrusem i sianem, snop w kącie, okno na zimową wieś", "talerz": "talerz dla wędrowca", "oplatek": "opłatek na talerzu (znika rano)",
              "mech": "garść zielonego mchu na talerzu (# pokaz: mech)", "swieca": "świeca na stole", "plomien": "płomień świecy", "blask": "blask świecy",
              "podlaznicka": "podłaźniczka pod powałą (kołysze się)", "jablka": "jabłka na podłaźniczce", "swieca_okno": "świeca w oknie Wójcikowej (# pokaz: swieca)",
              "kolyska": "kołyska Marysi", "rano": "poranne światło z okna (# pokaz: mech)", "przod": "pierwszy plan",
              **{n: f"rude szczenię pod kołyską — {n[3:]} (# pokaz: szczenie)" for n in VS}}
_add(V, WIG, V_ANIM, V_COMMENTS, "platki", efekty.platki(262, 92, 86, 86, n=8, seed=1215, fall=60, duration=4500), before="swieca_okno")
_add(V, WIG, V_ANIM, V_COMMENTS, "gwiazda", ((276, 96, 16, 16, group(['<path d="M284 98v12M278 104h12M280 100l8 8M288 100l-8 8" fill="none" stroke-width="1.2"/>'])),
                                             {"type": "flicker", "amplitude": 0.2, "duration": 2200}, "pierwsza gwiazda"), before="swieca_okno")
_add(V, WIG, V_ANIM, V_COMMENTS, "dym", ((150, 200, 20, 60, group(['<path d="M156 254c-4 -10 4 -18 0 -28c-4 -8 2 -14 0 -20" fill="none" stroke="#FFFFFF" stroke-width="1" opacity="0.6"/>'])),
                                         {"type": "rise", "amplitude": 12, "duration": 3200}, "dym ze świecy"), before="plomien")
V_EXTRA["dym"] = {"hideOn": "mech"}
_add(V, WIG, V_ANIM, V_COMMENTS, "pylki", efekty.pylki(80, 180, 200, 120, n=6, seed=1216, duration=8000), before="przod")

BACKGROUNDS = {"wiosna_orka": ("bg_wiosnaorka", W, ORKA, W_ANIM, W_REVEAL, W_EXTRA, W_COMMENTS, "wiosenna orka"),
               "lato_podworze": ("bg_latopodworze", L, LATO, L_ANIM, L_REVEAL, L_EXTRA, L_COMMENTS, "lato na podwórzu"),
               "czuwanie_izba": ("bg_czuwanie", C, CZUW, C_ANIM, C_REVEAL, C_EXTRA, C_COMMENTS, "czuwanie przy zmarłym"),
               "polnoc_strzyga": ("bg_polnoc", N, POLN, N_ANIM, N_REVEAL, N_EXTRA, N_COMMENTS, "o północy"),
               "cmentarz_bukowiec": ("bg_cmentarz", K, CMEN, K_ANIM, K_REVEAL, K_EXTRA, K_COMMENTS, "cmentarz w Bukowcu"),
               "strzyga_okno": ("bg_strzygaokno", O, OKNO, O_ANIM, O_REVEAL, O_EXTRA, O_COMMENTS, "strzyga za oknem"),
               "wigilia_stol": ("bg_wigiliastol", V, WIG, V_ANIM, V_REVEAL, V_EXTRA, V_COMMENTS, "Wigilia")}

if __name__ == "__main__":
    if sys.argv[1] == "--master":
        prefix, Ls, order, anim, reveal, extra, comments, scene = BACKGROUNDS[sys.argv[2]]
        if len(sys.argv) > 3 and sys.argv[3] == "wszystko":
            hide = set()
        elif len(sys.argv) > 3:
            shown = set(sys.argv[3].split(","))
            hide = {n for n in reveal if reveal[n] not in shown} | {n for n, e in extra.items() if any(h in shown for h in e.get("hideOn", "").split(",") if h)}
        else:
            hide = set(reveal) | {n for n, e in extra.items() if e.get("appearAfter")}
        print(master(Ls, [n for n in order if n not in hide]))
    else:
        import bgjson
        for key, (prefix, Ls, order, anim, reveal, extra, comments, scene) in BACKGROUNDS.items():
            write_layers(sys.argv[1], prefix, scene, Ls, [n for n in Ls if n in comments], comments)
            bgjson.upsert(key, bgjson.entry(prefix, order, Ls, anim, reveal, extra))
