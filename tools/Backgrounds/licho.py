# Generator tel rozdzialu osmego (Chude lato):
#   susza           — wyschniete jezioro: popekany mul, pomost-szkielet, zolta trawa, bezchmurne niebo; wrony siadaja na pomoscie (# pokaz: pomost)
#   studnia         — srodek wsi w poludnie: studnia z zurawiem, chalupy; licho autora na cembrowinie (# pokaz: zebraczka),
#                     dlugi cien w strone chalupy (# pokaz: cien); odchodzi z chlebem (# pokaz: odchodzi), chichocze przy plocie
#                     (# pokaz: chichot) albo znika i zostaje mokry slad (# pokaz: slad)
#   izba_sierpien   — izba w dzien: ojciec przy stole z klosem, matka przy piecu (drzy — # pokaz: matka), monety na stole (# pokaz: monety)
#   wyreb           — zreb pod borem: pniaki, okorowane klody, tracze; licho na pniaku (# pokaz: licho), podmuch (# pokaz: podmuch),
#                     sosna pada (# pokaz: upadek), drag (# pokaz: drag) albo Jaromir biegnie po pomoc (# pokaz: pomoc)
#   droga_wyreb     — droga pod borem, Jaromir z wiadrami; licho idzie za swoim cieniem (# pokaz: zebraczka), woz z rannym ojcem (# pokaz: woz)
#   izba_ranny      — izba wieczorem: ojciec na lawie w lubkach, babka Hanki z ziolami, kaganek; oczy w borze za oknem (# pokaz: babka),
#                     Hanka w progu (# pokaz: hanka)
#   drzwi_noc       — izba noca od strony drzwi: ksiezyc w szparach, bochenek pod sciereczka, matka spi; cien pod drzwiami (# pokaz: cien),
#                     reka z chlebem w okiennicy (# pokaz: pajda), glownia (# pokaz: glownia), glos zza drzwi (# pokaz: glos), rysy (# pokaz: rysy)
#   kapliczki_wykop — droga pod borem: kapliczki, wóz z figurkami, Urbaniak w bryczce; kopacze (# pokaz: kopacze), obrona kapliczki
#                     (# pokaz: obrona), noc i swiatek (# pokaz: noc), wozy odjezdzaja (# pokaz: wozy)
#   bor_blizej      — droga pod borem rano: sucha burza noca (# pokaz: burza), swierki w dolach (# pokaz: swierki), ocalona kapliczka
#                     (# pokaz: kapliczka), licho wchodzi do boru (# pokaz: zebraczka), przed nim Franek (# pokaz: franek)
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/licho.py src/LittleVillage/Resources/Images
#   python3 tools/Backgrounds/licho.py --master <tlo> [wszystko] > podglad.svg
import sys, random, math
from common import *
import art, postacie, efekty
from efekty import add as _add
from wiosna import kapliczka, sciana_deski
from tartak import woz, tlusty, pnie
from kapliczki import hut

RED = "#A8101A"
PRZOD = ['<path d="M-10 432H400V844H-10Z" fill="#EDEBE6" stroke="none"/>']
PRZOD_IZBA = ['<path d="M-10 432H400V844H-10Z" fill="url(#hatchDense)" stroke="none" opacity="0.8"/>']


def licho_rig(cx, feet, k, prefix, blink=5600):
    """Licho autora (przodem): rece kolysza sie w przeciwfazie, glowa kiwa, jedno oko mruga."""
    tr = art.parse_transform(f"translate({cx - 150 * k:.1f} {feet - 514 * k:.1f}) scale({k})")
    return art.rig("licho", tr, [
        ("cialo", ["cien", "nogi", "tulow", "lachmany"], {"type": "bob", "amplitude": 0.5, "duration": 5000}, None),
        ("reka_l", ["reka_lewa"], {"type": "sway", "amplitude": 4, "duration": 4000}, "reka_lewa"),
        ("reka_p", ["reka_prawa"], {"type": "sway", "amplitude": 4, "duration": 4000, "phase": 0.5}, "reka_prawa"),
        ("glowa", ["glowa_z_kapturem", "wlosy"], {"type": "sway", "amplitude": 3, "duration": 5000}, "glowa_z_kapturem"),
        ("oko", ["oko"], {"type": "blink", "duration": blink}, None)], prefix)


def sylwetka_licha(x, y, k=1.0, facing=1):
    """Licho z daleka: niska, przygarbiona postac w lachmanach z kosturem (profil)."""
    f = facing
    P = lambda dx, dy: f"{x + dx * f * k:.1f} {y + dy * k:.1f}"
    return (f'<g stroke-width="1.6"><path d="M{P(-7, 0)}C{P(-9, -10)} {P(-6, -20)} {P(0, -24)}C{P(6, -26)} {P(10, -22)} {P(9, -16)}'
            f'C{P(12, -10)} {P(10, -4)} {P(8, 0)}L{P(4, -2)}L{P(1, 1)}L{P(-3, -2)}Z" fill="#000000"/>'
            f'<circle cx="{x + 7 * f * k:.1f}" cy="{y - 18 * k:.1f}" r="{1.6 * k:.1f}" fill="#FFFFFF" stroke="{RED}" stroke-width="0.8"/>'
            f'<path d="M{P(10, -12)}L{P(14, 1)}" fill="none" stroke-width="{1.8 * k:.1f}"/></g>')


def cien_dlugi(x0, y0, x1, y1, w=8):
    """Dlugi, chudy cien od stop postaci do punktu (x1, y1)."""
    ang = math.atan2(y1 - y0, x1 - x0)
    nx, ny = -math.sin(ang) * w / 2, math.cos(ang) * w / 2
    return (f'<path d="M{x0 - nx:.0f} {y0 - ny:.0f}L{x1 - nx * 0.3:.0f} {y1 - ny * 0.3:.0f}Q{x1 + math.cos(ang) * 6:.0f} {y1 + math.sin(ang) * 6:.0f} '
            f'{x1 + nx * 0.3:.0f} {y1 + ny * 0.3:.0f}L{x0 + nx:.0f} {y0 + ny:.0f}Z" fill="#000000" stroke="none" opacity="0.75"/>')


def muchy(x, y, w, h, seed, n=3):
    rnd = random.Random(seed)
    dots = [f'<path d="M{px:.0f} {py:.0f}l-2 -2M{px:.0f} {py:.0f}l2 -2" fill="none" stroke-width="0.8"/><circle cx="{px:.0f}" cy="{py:.0f}" r="1.2" fill="#000000" stroke="none"/>'
            for px, py in [(rnd.uniform(x + 4, x + w - 4), rnd.uniform(y + 4, y + h - 4)) for _ in range(n)]]
    return (x, y, w, h, group(dots)), {"type": "wander", "amplitude": 10, "flap": 0.6, "duration": 2600}, "muchy krążą"


def zar(y, opacity=0.25):
    return ((0, y - 14, 390, 40, group([f'<path d="M0 {y + i * 10}C60 {y - 4 + i * 10} 120 {y + 6 + i * 10} 195 {y + i * 10}S330 {y - 4 + i * 10} 390 {y + i * 10}" fill="none" stroke-width="1" opacity="{opacity * 2}"/>' for i in range(3)])),
            {"type": "drift", "amplitude": 6, "duration": 1600}, "drgający żar nad ziemią")


def slonce_zar(cx, cy, r=20):
    rays = "".join(f'<path d="M{cx + math.cos(a) * (r + 8):.0f} {cy + math.sin(a) * (r + 8):.0f}L{cx + math.cos(a) * (r + 18):.0f} {cy + math.sin(a) * (r + 18):.0f}" fill="none" stroke-width="2"/>'
                   for a in [i * math.pi / 6 for i in range(12)])
    return (cx - r - 20, cy - r - 20, 2 * r + 40, 2 * r + 40, group([rays])), {"type": "spin", "amplitude": 30, "duration": 40000, "anchorX": 0.5, "anchorY": 0.5}, "promienie słońca (obracają się powoli)"


def sucha_trawa(x, y, k=1.0):
    return f'<path d="M{x} {y}l{-2 * k:.1f} {-8 * k:.1f}M{x} {y}l{3 * k:.1f} {-7 * k:.1f}M{x} {y}l{1 * k:.1f} {-5 * k:.1f}" fill="none" stroke-width="1.2"/>'


def pniak(x, y, k=1.0):
    return (f'<path d="M{x - 10 * k:.0f} {y}V{y - 10 * k:.0f}H{x + 10 * k:.0f}V{y}Z" fill="#FFFFFF" stroke-width="1.8"/>'
            f'<ellipse cx="{x}" cy="{y - 10 * k:.0f}" rx="{10 * k:.0f}" ry="{3 * k:.0f}" fill="#FFFFFF" stroke-width="1.6"/>'
            f'<ellipse cx="{x}" cy="{y - 10 * k:.0f}" rx="{5 * k:.0f}" ry="{1.4 * k:.0f}" fill="none" stroke-width="0.8"/>'
            f'<path d="M{x - 10 * k:.0f} {y}l-5 3M{x + 10 * k:.0f} {y}l5 3" fill="none" stroke-width="1.6"/>')


def kloda(x0, y0, x1, y1, r=6):
    return (f'<path d="M{x0} {y0 - r}L{x1} {y1 - r}L{x1} {y1 + r}L{x0} {y0 + r}Z" fill="#FFFFFF" stroke-width="1.8"/>'
            f'<ellipse cx="{x1}" cy="{y1}" rx="{r * 0.5:.1f}" ry="{r}" fill="#FFFFFF" stroke-width="1.4"/>'
            f'<path d="M{x0 + 10} {y0 - 1}L{x1 - 10} {y1 - 1}" fill="none" stroke-width="0.8"/>')


def sosna(x, base, h, k=1.0):
    return (f'<path d="M{x - 3 * k} {base}V{base - h * 0.75}H{x + 3 * k}V{base}Z" fill="#000000" stroke-width="1.4"/>'
            f'<path d="M{x - 26 * k} {base - h * 0.7}C{x - 30 * k} {base - h * 0.9} {x - 10 * k} {base - h} {x} {base - h}C{x + 12 * k} {base - h} {x + 30 * k} {base - h * 0.88} {x + 24 * k} {base - h * 0.7}'
            f'C{x + 10 * k} {base - h * 0.62} {x - 10 * k} {base - h * 0.62} {x - 26 * k} {base - h * 0.7}Z" fill="url(#hatchDense)" stroke-width="2"/>')


def bor(y, x0=-6, x1=400, step=13, seed=1):
    rnd = random.Random(seed)
    return [spruce(x, y - rnd.uniform(0, 5), rnd.uniform(40, 64), 20) for x in range(x0, x1, step)]


def studnia(x, base, k=1.0):
    """Studnia z cembrowina z bali i zurawiem (slup + belka osobno — belka sie kolysze)."""
    g = [f'<path d="M{x - 18 * k} {base}V{base - 22 * k}H{x + 18 * k}V{base}Z" fill="#FFFFFF" stroke-width="2.2"/>']
    for i in range(1, 4):
        g.append(f'<path d="M{x - 18 * k} {base - i * 5.5 * k:.0f}H{x + 18 * k}" fill="none" stroke-width="1"/>')
    g.append(f'<ellipse cx="{x}" cy="{base - 22 * k}" rx="{18 * k}" ry="{4 * k}" fill="#000000" stroke-width="1.6"/>')
    g.append(f'<path d="M{x + 40 * k} {base}V{base - 70 * k}" fill="none" stroke-width="3.4"/><path d="M{x + 36 * k} {base - 70 * k}l4 -6l4 6" fill="none" stroke-width="2"/>')
    return "".join(g)


def zuraw(x, base, k=1.0):
    """Belka zurawia z zerdzia i wiadrem (obraca sie wokol szczytu slupa)."""
    px, py = x + 40 * k, base - 72 * k
    return (f'<path d="M{px - 70 * k} {py + 34 * k}L{px + 44 * k} {py - 22 * k}" fill="none" stroke-width="2.6"/>'
            f'<path d="M{px + 44 * k} {py - 24 * k}l6 -2l2 8l-8 2z" fill="#000000" stroke-width="1"/>'
            f'<path d="M{px - 70 * k} {py + 34 * k}V{py + 60 * k}" fill="none" stroke-width="1.4"/>'
            f'<path d="M{px - 75 * k} {py + 60 * k}h{10 * k}l-2 {8 * k}h{-6 * k}z" fill="#FFFFFF" stroke-width="1.4"/>'), (px, py)


def lawa_ranny(x, y, k=1.0):
    """Lawa z lezacym ojcem, noga w lubkach (biale paski)."""
    P = lambda dx, dy: f"{x + dx * k:.1f} {y + dy * k:.1f}"
    return (f'<path d="M{P(-60, 0)}H{x + 60 * k:.1f}V{y + 6 * k:.1f}H{x - 60 * k:.1f}Z" fill="#FFFFFF" stroke-width="2"/>'
            f'<path d="M{P(-54, 6)}v{20 * k:.1f}M{P(54, 6)}v{20 * k:.1f}" fill="none" stroke-width="3"/>'
            f'<circle cx="{x - 48 * k:.1f}" cy="{y - 8 * k:.1f}" r="{7 * k:.1f}" fill="#000000"/>'
            f'<path d="M{P(-40, -14)}C{P(-20, -16)} {P(0, -14)} {P(10, -8)}L{P(10, 0)}H{x - 42 * k:.1f}Z" fill="#000000"/>'
            f'<path d="M{P(10, -8)}H{x + 52 * k:.1f}V{y:.1f}H{x + 10 * k:.1f}Z" fill="#000000"/>'
            f'<path d="M{P(18, -9)}v10M{P(30, -9)}v10M{P(42, -9)}v10M{P(14, -10)}H{x + 50 * k:.1f}" fill="none" stroke="#FFFFFF" stroke-width="{2 * k:.1f}"/>')


def piec(x, base, k=1.0):
    return (f'<path d="M{x} {base}V{base - 70 * k}H{x + 70 * k}V{base}Z" fill="#FFFFFF" stroke-width="2.4"/>'
            f'<path d="M{x + 18 * k} {base - 6 * k}V{base - 30 * k}Q{x + 35 * k} {base - 44 * k} {x + 52 * k} {base - 30 * k}V{base - 6 * k}Z" fill="#000000" stroke-width="1.8"/>'
            f'<path d="M{x + 10 * k} {base - 70 * k}V{base - 150 * k}H{x + 40 * k}V{base - 70 * k}" fill="#FFFFFF" stroke-width="2.2"/>')


def stol(x, base, w=90, k=1.0):
    return (f'<path d="M{x} {base - 30 * k}H{x + w}V{base - 24 * k}H{x}Z" fill="#FFFFFF" stroke-width="2"/>'
            f'<path d="M{x + 6} {base - 24 * k}V{base}M{x + w - 6} {base - 24 * k}V{base}" fill="none" stroke-width="3"/>')


def okno(x, y, w=60, h=60, fill="#FFFFFF"):
    return (f'<path d="M{x} {y}H{x + w}V{y + h}H{x}Z" fill="{fill}" stroke-width="3"/>'
            f'<path d="M{x + w / 2} {y}V{y + h}M{x} {y + h / 2}H{x + w}" fill="none" stroke-width="2.4"/>')


def izba_tlo(dark=False):
    w = sciana_deski(390, 440, 16)
    if dark:
        w.append('<rect width="390" height="440" fill="url(#hatchNight)" stroke="none" opacity="0.7"/>')
    w.append('<path d="M-10 330H400V440H-10Z" fill="url(#hatchDense)" stroke="none" opacity="0.6"/><path d="M-10 330H400" fill="none" stroke-width="3"/>')
    return w


# ======================= SUSZA =======================
S = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<circle cx="300" cy="64" r="20" fill="#FFFFFF" stroke-width="2.6"/>',
     '<path d="M-10 196C80 188 200 192 400 186V440H-10Z" fill="#EDEBE6" stroke-width="2.6"/>']
t += bor(194, 150, 400, 12, seed=81)
for i in range(4):
    t.append(hut(20 + i * 30, 176 - (i % 2) * 4, 0.7))
# dawna linia wody (ciemniejszy pas) i popekany mul
t.append('<path d="M-10 236C80 230 300 232 400 236" fill="none" stroke-width="1.4" stroke-dasharray="6 5"/>')
t.append('<path d="M-10 250C80 244 300 246 400 250V390C300 396 120 392 -10 398Z" fill="#FFFFFF" stroke-width="2"/>')
rnd = random.Random(801)
for gy in range(262, 392, 22):
    xs = [-10]
    while xs[-1] < 400:
        xs.append(xs[-1] + rnd.uniform(26, 44))
    for i in range(len(xs) - 1):
        t.append(f'<path d="M{xs[i]:.0f} {gy + rnd.uniform(-3, 3):.0f}L{xs[i + 1]:.0f} {gy + rnd.uniform(-3, 3):.0f}" fill="none" stroke-width="1.2"/>')
        t.append(f'<path d="M{xs[i]:.0f} {gy:.0f}L{xs[i] + rnd.uniform(-6, 6):.0f} {gy + 22:.0f}" fill="none" stroke-width="1.2"/>')
# kaluza resztek wody w srodku
t.append('<path d="M150 318C180 310 240 312 260 320C250 330 190 334 150 318Z" fill="url(#water)" stroke-width="1.6"/>')
# pomost-szkielet na suchym dnie
t.append('<path d="M240 270H360" fill="none" stroke-width="3"/>')
for x in range(246, 362, 14):
    t.append(f'<path d="M{x} 266v8" fill="none" stroke-width="2"/>')
for x in (250, 290, 330, 356):
    t.append(f'<path d="M{x} 272V312" fill="none" stroke-width="3"/>')
# brzeg z zolta trawa i zeschlymi szuwarami
t.append('<path d="M-10 398C120 392 300 396 400 390V440H-10Z" fill="#EDEBE6" stroke-width="2.2"/>')
for i in range(40):
    t.append(sucha_trawa(rnd.uniform(0, 390), rnd.uniform(404, 434), rnd.uniform(0.9, 1.4)))
for x in range(4, 120, 9):
    t.append(f'<path d="M{x} 250l-3 -14M{x + 2} 250l4 -12" fill="none" stroke-width="1.2"/>')
S["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
S["kurz"] = (40, 360, 50, 50, group(['<path d="M64 404c-14 -2 -18 -10 -6 -14c14 -4 22 -12 8 -16c-10 -3 -10 -10 0 -12" fill="none" stroke-width="1.2" opacity="0.7"/>']))
S["trawa_0"] = (0, 396, 200, 40, group([sucha_trawa(x, 434, 1.6) for x in range(6, 200, 16)]))
S["trawa_1"] = (200, 396, 190, 40, group([sucha_trawa(x, 434, 1.6) for x in range(206, 390, 16)]))
S["wrony_siedza"] = (240, 240, 130, 40, group([efekty.wrona_siedzi(256, 268, 1.0)[0][4], efekty.wrona_siedzi(320, 268, 1.0)[0][4]]))
S["przod"] = (0, 422, 390, 422, group(PRZOD))
SUSZA = ["tlo", "kurz", "wrony_siedza", "trawa_0", "trawa_1", "przod"]
S_REVEAL = {"wrony_siedza": "pomost"}
S_ANIM = {"kurz": {"type": "drift", "amplitude": 60, "duration": 9000},
          "trawa_0": {"type": "sway", "amplitude": 2, "duration": 2600, "anchorX": 0.5, "anchorY": 1},
          "trawa_1": {"type": "sway", "amplitude": 2, "duration": 3000, "anchorX": 0.5, "anchorY": 1, "phase": 0.4},
          "wrony_siedza": {"type": "sway", "amplitude": 3, "duration": 2600, "anchorX": 0.5, "anchorY": 1}}
S_EXTRA = {"wrony_siedza": {"fadeDuration": 1500}, "przod": {"depth": 1.0}}
S_COMMENTS = {"tlo": "susza: jezioro cofnięte, popękany muł, pomost-szkielet na suchym dnie, żółta trawa", "kurz": "wir kurzu wędruje po dnie",
              "trawa_0": "zeschła trawa (kołysze się)", "trawa_1": "zeschła trawa (kołysze się)",
              "wrony_siedza": "wrony siadają na pomoście (# pokaz: pomost)", "przod": "pierwszy plan"}
_add(S, SUSZA, S_ANIM, S_COMMENTS, "promienie", slonce_zar(300, 64), before="kurz")
_add(S, SUSZA, S_ANIM, S_COMMENTS, "zar", zar(214), before="kurz")
_add(S, SUSZA, S_ANIM, S_COMMENTS, "wrony", efekty.wrony(120, 110, n=4, k=0.4, seed=82, amplitude=50), before="kurz")
_add(S, SUSZA, S_ANIM, S_COMMENTS, "muchy", muchy(150, 300, 120, 40, 83), before="trawa_0")
_add(S, SUSZA, S_ANIM, S_COMMENTS, "blysk", ((150, 308, 110, 24, group(['<path d="M170 318h10M210 316h12M236 322h8" fill="none" stroke="#FFFFFF" stroke-width="1.8"/>'])),
                                            {"type": "flicker", "amplitude": 0.2, "duration": 1400}, "błyski na resztce wody"), before="trawa_0")

# ======================= STUDNIA =======================
W = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M-10 220C80 214 200 218 400 212V440H-10Z" fill="#EDEBE6" stroke-width="2.6"/>']
t += bor(214, -6, 120, 13, seed=84)
t.append('<circle cx="196" cy="44" r="16" fill="#FFFFFF" stroke-width="2.4"/>')
t.append(hut(140, 186, 1.6) + hut(250, 190, 1.4))
# chalupa Jaromira z prawej, blizej
t.append('<path d="M300 300V250H390V300Z" fill="#FFFFFF" stroke-width="2.4"/><path d="M290 252L345 214L400 252Z" fill="url(#hatchDense)" stroke-width="2.4"/>'
         '<path d="M320 300V270H336V300Z" fill="#000000"/><path d="M350 262H372V280H350Z" fill="#FFFFFF" stroke-width="1.8"/>')
t.append('<path d="M-10 316H290M-10 330H290" fill="none" stroke-width="2"/>')
for x in range(-4, 290, 20):
    t.append(f'<path d="M{x - 3} 340V308L{x} 303L{x + 3} 308V340Z" fill="#FFFFFF" stroke-width="1.4"/>')
t.append(studnia(140, 400, 1.6))
rnd = random.Random(805)
for i in range(30):
    t.append(sucha_trawa(rnd.uniform(0, 390), rnd.uniform(350, 434), 1.2))
W["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
zur, (zpx, zpy) = zuraw(140, 400, 1.6)
W["zuraw"] = (0, 230, 260, 180, group([zur]))
W["jaromir"] = (230, 330, 50, 100, group([postacie.man(250, 426, 1.15, hat=False, arm="l6 22"),
                                           '<path d="M252 400h12l-2 12h-8z" fill="#FFFFFF" stroke-width="1.4"/>']))
RIG_W = licho_rig(124, 366, 0.2, "lw")
art.install_rig(W, RIG_W)
LW = art.rig_names(RIG_W)
W["cien"] = (110, 290, 220, 86, group([cien_dlugi(124, 366, 322, 302, 9)]))
W["odchodzi"] = (60, 340, 40, 40, group([sylwetka_licha(80, 372, 1.3, -1), cien_dlugi(80, 372, 120, 380, 4)]))
W["chichot"] = (30, 300, 70, 50, group([sylwetka_licha(50, 342, 1.3, 1)]))
W["chichot_dzwiek"] = (56, 300, 40, 26, group([f'<path d="M{60 + i * 10} {320 - i * 4}q3 -6 6 0" fill="none" stroke-width="1.2"/>' for i in range(3)]))
W["slad"] = (100, 350, 70, 20, group(['<path d="M110 362c10 -4 34 -6 46 -1c-6 6 -38 6 -46 1z" fill="url(#hatchDense)" stroke-width="1" opacity="0.8"/>']))
W["przod"] = (0, 422, 390, 422, group(PRZOD))
STUDNIA = ["tlo", "zuraw", "cien"] + LW + ["slad", "odchodzi", "chichot", "chichot_dzwiek", "jaromir", "przod"]
W_REVEAL = {**{n: "zebraczka" for n in LW}, "cien": "cien", "odchodzi": "odchodzi", "chichot": "chichot", "chichot_dzwiek": "chichot", "slad": "slad"}
W_ANIM = {"zuraw": {"type": "sway", "amplitude": 2, "duration": 4200, "anchorX": round((zpx - 0) / 260, 3), "anchorY": round((zpy - 230) / 180, 3)},
          "odchodzi": {"type": "slide", "dx": -110, "dy": -10, "duration": 9000, "once": True},
          "chichot_dzwiek": {"type": "flicker", "amplitude": 0, "duration": 600},
          "jaromir": {"type": "bob", "amplitude": 0.4, "duration": 3000}, "cien": {"type": "drift", "amplitude": 2, "duration": 3000}}
W_ANIM.update(art.rig_anims(RIG_W))
GONE = "odchodzi,chichot,slad"
W_EXTRA = {**{n: {"fadeDuration": 1800, "hideOn": GONE} for n in LW}, "cien": {"fadeDuration": 2500, "hideOn": GONE},
           "odchodzi": {"fadeDuration": 600, "hideAfter": 8500}, "chichot": {"fadeDuration": 800}, "chichot_dzwiek": {"hideAfter": 3000},
           "slad": {"fadeDuration": 1500}, "przod": {"depth": 1.0}}
W_COMMENTS = {"tlo": "środek wsi w południe: studnia z cembrowiną, chałupy, płot, chałupa Jaromira z prawej",
              "zuraw": "żuraw studzienny z wiadrem (kołysze się)", "jaromir": "Jaromir z wiadrem",
              "cien": "długi cień żebraczki wskazuje na chałupę Jaromira (# pokaz: cien)",
              "odchodzi": "żebraczka odchodzi z chlebem (# pokaz: odchodzi)", "chichot": "żebraczka przy płocie (# pokaz: chichot)",
              "chichot_dzwiek": "chichot (# pokaz: chichot)", "slad": "mokry ślad na cembrowinie (# pokaz: slad)", "przod": "pierwszy plan",
              **{n: f"licho — {n[3:]} (rysunek autora; # pokaz: zebraczka, znika przy odejściu)" for n in LW}}
_add(W, STUDNIA, W_ANIM, W_COMMENTS, "promienie", slonce_zar(196, 44, 16), before="zuraw")
_add(W, STUDNIA, W_ANIM, W_COMMENTS, "zar", zar(232), before="zuraw")
_add(W, STUDNIA, W_ANIM, W_COMMENTS, "wrony", efekty.wrony(40, 120, n=3, k=0.35, seed=85, amplitude=40), before="zuraw")
_add(W, STUDNIA, W_ANIM, W_COMMENTS, "muchy", muchy(250, 380, 60, 40, 86), before="przod")
_add(W, STUDNIA, W_ANIM, W_COMMENTS, "wrona", efekty.wrona_siedzi(356, 214, 1.0), before="zuraw")

# ======================= IZBA W SIERPNIU =======================
I = {}
t = izba_tlo()
t.append(okno(40, 130, 70, 70))
t.append(piec(290, 330, 1.2))
I["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
I["ojciec"] = (150, 230, 70, 100, group([postacie.man(180, 336, 1.35, hat=False, arm="l14 -2"),
                                          '<path d="M200 290l12 -10M206 284l4 -6M210 282l5 -5" fill="none" stroke-width="1.4"/>']))
I["stol"] = (120, 290, 130, 44, group(['<path d="M130 300H240V306H130Z" fill="#FFFFFF" stroke-width="2"/><path d="M136 306H234V330H136Z" fill="#FFFFFF" stroke-width="1.8"/>'
                                         '<path d="M140 300h20v-4h-20zM210 300h22v-6h-22z" fill="#FFFFFF" stroke-width="1.2"/>']))
I["matka"] = (250, 230, 50, 100, group([postacie.woman(276, 330, 1.3)]))
I["matka_drzy"] = (250, 230, 50, 100, group([postacie.woman(276, 330, 1.3), '<path d="M262 252l-4 -2M292 252l4 -2" fill="none" stroke-width="1"/>']))
I["plomien"] = (318, 300, 20, 24, group([f'<path d="M328 322c-6 -5 -4 -14 0 -20c4 6 6 15 0 20z" fill="{RED}" stroke="none"/>']))
I["para"] = (214, 270, 20, 30, group(['<path d="M222 294c-4 -6 4 -8 0 -14c-2 -4 2 -6 0 -10" fill="none" stroke-width="1.2" opacity="0.6"/>']))
I["monety"] = (130, 288, 40, 14, group([f'<ellipse cx="{x}" cy="{y}" rx="4" ry="1.8" fill="#FFFFFF" stroke-width="1"/>' for x, y in [(140, 298), (148, 297), (156, 299), (146, 294), (162, 296)]]))
I["przod"] = (0, 422, 390, 422, group(PRZOD_IZBA))
IZBA = ["tlo", "plomien", "ojciec", "stol", "para", "monety", "matka", "matka_drzy", "przod"]
I_REVEAL = {"matka_drzy": "matka", "monety": "monety"}
I_ANIM = {"plomien": {"type": "flame", "amplitude": 0.15, "duration": 800, "anchorX": 0.5, "anchorY": 1},
          "ojciec": {"type": "bob", "amplitude": 0.4, "duration": 3600}, "para": {"type": "sway", "amplitude": 4, "duration": 3000, "anchorX": 0.5, "anchorY": 1},
          "monety": {"type": "flicker", "amplitude": 0.6, "duration": 1800}, "matka_drzy": {"type": "bob", "amplitude": 0.8, "duration": 260}}
I_EXTRA = {"plomien": {"noInvert": True}, "matka": {"hideOn": "matka", "fadeDuration": 200}, "matka_drzy": {"fadeDuration": 200},
           "monety": {"fadeDuration": 1200}, "przod": {"depth": 1.0}}
I_COMMENTS = {"stol": "stół z miskami", "tlo": "izba w dzień: okno, piec", "plomien": "ogień w piecu (czerwony)", "ojciec": "ojciec przy stole obraca kłos",
              "para": "para znad miski z kaszą", "monety": "srebrne monety na stole (# pokaz: monety)", "matka": "matka przy piecu",
              "matka_drzy": "matka odwrócona do pieca, drżą jej ramiona (# pokaz: matka)", "przod": "pierwszy plan"}
_add(I, IZBA, I_ANIM, I_COMMENTS, "smuga", efekty.smuga([(40, 130), (110, 130), (210, 330), (100, 330)], opacity=0.35), before="ojciec")
_add(I, IZBA, I_ANIM, I_COMMENTS, "pylki", efekty.pylki(70, 170, 120, 140, n=10, seed=87), before="ojciec")
_add(I, IZBA, I_ANIM, I_COMMENTS, "muchy", muchy(120, 180, 140, 90, 88, n=4), before="przod")
_add(I, IZBA, I_ANIM, I_COMMENTS, "zar_za_oknem", ((44, 134, 62, 62, group(['<path d="M48 176c10 -3 20 3 30 0s20 3 26 0" fill="none" stroke-width="1" opacity="0.5"/>'])),
                                                  {"type": "drift", "amplitude": 3, "duration": 1500}, "żar drga za oknem"), before="smuga")

# ======================= WYREB =======================
Y = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M-10 200C80 192 200 196 400 190V440H-10Z" fill="#EDEBE6" stroke-width="2.6"/>']
t += bor(200, -6, 400, 12, seed=89)
t.append('<circle cx="70" cy="60" r="16" fill="#FFFFFF" stroke-width="2.4"/>')
rnd = random.Random(809)
for (x, y) in [(40, 300), (90, 280), (150, 310), (220, 290), (300, 320), (70, 360), (180, 380), (260, 370)]:
    t.append(pniak(x, y, 1.0))
t.append(kloda(20, 410, 150, 392, 7) + kloda(200, 420, 330, 404, 7) + kloda(110, 340, 210, 336, 5))
for i in range(30):
    t.append(sucha_trawa(rnd.uniform(0, 390), rnd.uniform(240, 434), 1.0))
Y["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
Y["sosna"] = (210, 160, 60, 160, group([sosna(240, 316, 150, 1.0)]))
Y["lezaca"] = (120, 260, 240, 80, group(['<path d="M130 318L340 300L342 308L132 326Z" fill="#000000" stroke-width="1.4"/>',
                                         '<path d="M120 300C130 280 170 278 190 300C180 330 130 336 120 300Z" fill="url(#hatchDense)" stroke-width="2"/>']))
Y["pyl"] = (100, 280, 160, 60, group([f'<path d="{ribbon(110, 250, 310, 18, 5)}" fill="#EDEBE6" stroke-width="1.2" opacity="0.7"/>']))
Y["tracze"] = (256, 250, 70, 80, group([postacie.man(270, 326, 1.0, hat=True, arm="l-14 6"), postacie.man(302, 326, 1.0, hat=True, arm="l-14 4")]))
Y["ojciec"] = (210, 250, 40, 80, group([postacie.man(226, 326, 1.0, hat=False, arm="l12 8")]))
Y["ojciec_pod"] = (180, 300, 90, 30, group(['<circle cx="190" cy="318" r="6" fill="#000000"/><path d="M196 312L230 314V322H196Z" fill="#000000" stroke-width="1"/>']))
Y["jaromir"] = (80, 270, 40, 80, group([postacie.man(100, 346, 0.95, hat=False, arm="l10 -14"), '<path d="M118 324l8 -16" fill="none" stroke-width="2"/>']))
Y["drag"] = (150, 260, 120, 70, group(['<path d="M160 330L250 300" fill="none" stroke-width="3.4"/>', postacie.man(158, 330, 1.0, hat=False, arm="l14 -10"),
                                        postacie.man(256, 326, 1.0, hat=True, arm="l-10 -6")]))
Y["biegnie"] = (60, 290, 50, 60, group([postacie.running_child(80, 346, 1.4, facing=-1, pose=0)]))
RIG_Y = licho_rig(366, 290, 0.12, "ly")
art.install_rig(Y, RIG_Y)
LY = art.rig_names(RIG_Y)
Y["pniak_licha"] = (346, 280, 40, 20, group([pniak(366, 294, 1.2)]))
Y["podmuch"] = (180, 140, 210, 120, group([f'<path d="M{390 - i * 10} {160 + i * 24}C{320 - i * 10} {150 + i * 24} {260 - i * 10} {170 + i * 24} {190} {156 + i * 24}" fill="none" stroke-width="1.6" stroke-dasharray="8 6"/>' for i in range(4)]))
Y["przod"] = (0, 422, 390, 422, group(PRZOD))
WYREB = ["tlo", "pniak_licha"] + LY + ["sosna", "lezaca", "ojciec", "ojciec_pod", "tracze", "jaromir", "drag", "biegnie", "pyl", "podmuch", "przod"]
Y_REVEAL = {**{n: "licho" for n in LY}, "podmuch": "podmuch", "lezaca": "upadek", "ojciec_pod": "upadek", "pyl": "upadek", "drag": "drag", "biegnie": "pomoc"}
Y_ANIM = {"tracze": {"type": "sway", "amplitude": 3, "duration": 900, "anchorX": 0.5, "anchorY": 1},
          "ojciec": {"type": "sway", "amplitude": 3, "duration": 900, "anchorX": 0.5, "anchorY": 1, "phase": 0.3},
          "jaromir": {"type": "sway", "amplitude": 5, "duration": 1100, "anchorX": 0.5, "anchorY": 1},
          "sosna": {"type": "sway", "amplitude": 1, "duration": 3000, "anchorX": 0.5, "anchorY": 1},
          "podmuch": {"type": "drift", "amplitude": 14, "duration": 700}, "pyl": {"type": "rise", "amplitude": 30, "duration": 3000},
          "drag": {"type": "bob", "amplitude": 1, "duration": 700}, "biegnie": {"type": "slide", "dx": -120, "dy": 0, "duration": 2400, "once": True},
          "ojciec_pod": {"type": "bob", "amplitude": 0.4, "duration": 900}}
Y_ANIM.update(art.rig_anims(RIG_Y))
Y_EXTRA = {**{n: {"fadeDuration": 2000, "hideOn": "upadek"} for n in LY}, "sosna": {"hideOn": "upadek", "fadeDuration": 300},
           "ojciec": {"hideOn": "upadek", "fadeDuration": 300}, "jaromir": {"hideOn": "drag,pomoc", "fadeDuration": 300},
           "lezaca": {"fadeDuration": 300}, "ojciec_pod": {"fadeDuration": 300}, "pyl": {"hideAfter": 6000, "fadeDuration": 2000},
           "podmuch": {"hideAfter": 3000, "fadeDuration": 600}, "biegnie": {"hideAfter": 2400, "fadeDuration": 300},
           "tracze": {"hideOn": "drag", "fadeDuration": 300}, "przod": {"depth": 1.0}}
Y_COMMENTS = {"tlo": "wyrąb pod borem: pniaki, okorowane kłody, sucha trawa", "pniak_licha": "pniak na skraju zrębu",
              "sosna": "wysoka sosna do ścięcia (znika przy # pokaz: upadek)", "lezaca": "sosna leży na ziemi (# pokaz: upadek)",
              "pyl": "kurz po upadku sosny (# pokaz: upadek)", "tracze": "dwaj tracze z piłą", "ojciec": "ojciec podcina sosnę",
              "ojciec_pod": "ojciec przygnieciony pniem (# pokaz: upadek)", "jaromir": "Jaromir okrzesuje gałęzie",
              "drag": "Jaromir z traczami podważa pień drągiem (# pokaz: drag)", "biegnie": "Jaromir biegnie po pomoc (# pokaz: pomoc)",
              "podmuch": "nagły podmuch od boru (# pokaz: podmuch)", "przod": "pierwszy plan",
              **{n: f"licho na pniaku — {n[3:]} (rysunek autora; # pokaz: licho, znika przy # pokaz: upadek)" for n in LY}}
_add(Y, WYREB, Y_ANIM, Y_COMMENTS, "zar", zar(206), before="pniak_licha")
_add(Y, WYREB, Y_ANIM, Y_COMMENTS, "wrony", efekty.wrony(60, 110, n=3, k=0.4, seed=90, amplitude=50), before="pniak_licha")
_add(Y, WYREB, Y_ANIM, Y_COMMENTS, "pylki", efekty.pylki(40, 240, 300, 120, n=12, seed=91, duration=6000), before="przod")
Y_COMMENTS["pylki"] = "pył i trociny w powietrzu"
_add(Y, WYREB, Y_ANIM, Y_COMMENTS, "promienie", slonce_zar(70, 60, 16), before="zar")

# ======================= DROGA DO WYREBU =======================
D = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M-10 210C80 202 200 206 400 200V440H-10Z" fill="#EDEBE6" stroke-width="2.6"/>']
t += bor(210, 120, 400, 12, seed=92)
t.append('<circle cx="320" cy="60" r="16" fill="#FFFFFF" stroke-width="2.4"/>')
t.append('<path d="M400 240C300 250 200 262 150 290C110 312 90 360 80 440H150C150 380 170 330 200 304C240 280 320 262 400 256Z" fill="#FFFFFF" stroke-width="2"/>')
# ogrod: grzedy z ziemniakami
for i in range(5):
    t.append(f'<path d="M{-10} {320 + i * 18}C40 {316 + i * 18} 50 {318 + i * 18} 70 {320 + i * 18}" fill="none" stroke-width="1.4"/>')
    for x in range(0, 66, 12):
        t.append(sucha_trawa(x, 318 + i * 18, 1.1))
D["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
D["jaromir"] = (10, 250, 70, 90, group([postacie.man(40, 330, 1.05, hat=False),
                                         '<path d="M16 270H64" fill="none" stroke-width="2.4"/><path d="M14 270v16M66 270v16" fill="none" stroke-width="1.2"/>'
                                         '<path d="M8 286h12l-2 10h-8zM60 286h12l-2 10h-8z" fill="#FFFFFF" stroke-width="1.2"/>']))
D["zebraczka"] = (200, 230, 160, 40, group([sylwetka_licha(340, 252, 0.9, -1), cien_dlugi(340, 252, 210, 262, 3)]))
D["woz"] = (220, 220, 140, 60, group([woz(250, 250, 1.1), '<path d="M262 236h40v4h-40z" fill="#000000"/><circle cx="258" cy="236" r="4" fill="#000000"/>',
                                       postacie.man(236, 262, 0.55), postacie.man(226, 262, 0.55)]))
D["przod"] = (0, 422, 390, 422, group(PRZOD))
DROGA = ["tlo", "zebraczka", "woz", "jaromir", "przod"]
D_REVEAL = {"zebraczka": "zebraczka", "woz": "woz"}
D_ANIM = {"zebraczka": {"type": "slide", "dx": 130, "dy": -10, "duration": 14000, "once": True},
          "woz": {"type": "slide", "dx": -110, "dy": 50, "duration": 12000, "once": True},
          "jaromir": {"type": "bob", "amplitude": 0.8, "duration": 900}}
D_EXTRA = {"zebraczka": {"fadeDuration": 1500, "hideAfter": 13000}, "woz": {"fadeDuration": 1500}, "przod": {"depth": 1.0}}
D_COMMENTS = {"tlo": "droga pod borem do wyrębu, ogród z uschniętymi kartoflami", "jaromir": "Jaromir nosi wodę na nosidłach",
              "zebraczka": "żebraczka idzie w stronę wyrębu, cień prowadzi ją przed nią (# pokaz: zebraczka)",
              "woz": "wóz Urbaniaka wiezie rannego ojca, za nim biegną tracze (# pokaz: woz)", "przod": "pierwszy plan"}
_add(D, DROGA, D_ANIM, D_COMMENTS, "zar", zar(220), before="zebraczka")
_add(D, DROGA, D_ANIM, D_COMMENTS, "jaskolki", efekty.wrony(150, 100, n=3, k=0.35, seed=93, amplitude=50, duration=5000), before="zebraczka")
D_COMMENTS["jaskolki"] = "jaskółki nisko nad drogą"
_add(D, DROGA, D_ANIM, D_COMMENTS, "promienie", slonce_zar(320, 60, 16), before="zar")
_add(D, DROGA, D_ANIM, D_COMMENTS, "kurz", ((180, 280, 60, 30, group(['<path d="M190 300c10 -10 30 -10 40 0" fill="none" stroke-width="1.2" opacity="0.6"/>'])),
                                           {"type": "drift", "amplitude": 30, "duration": 7000}, "kurz na drodze"), before="woz")
_add(D, DROGA, D_ANIM, D_COMMENTS, "muchy", muchy(20, 260, 60, 40, 94), before="przod")
_add(D, DROGA, D_ANIM, D_COMMENTS, "trawa", ((160, 380, 230, 50, group([sucha_trawa(x, 430, 1.6) for x in range(166, 390, 14)])),
                                            {"type": "sway", "amplitude": 2, "duration": 2800, "anchorX": 0.5, "anchorY": 1}, "zeschła trawa przy drodze"), before="przod")

# ======================= IZBA Z RANNYM =======================
R = {}
t = izba_tlo(dark=True)
t.append(okno(250, 110, 70, 70, fill="#EDEBE6"))
t.append(piec(10, 330, 1.1))
t.append(stol(200, 330, 80))
R["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
R["za_oknem"] = (250, 110, 70, 70, group(bor(176, 252, 322, 10, seed=95)))
R["ojciec"] = (60, 280, 140, 50, group([lawa_ranny(130, 316, 1.0)]))
R["babka"] = (170, 220, 50, 100, group([postacie.woman(194, 318, 1.3, bundle=True)]))
R["matka"] = (100, 230, 40, 90, group([postacie.woman(118, 300, 1.0)]))
R["kaganek"] = (226, 284, 16, 20, group([f'<path d="M234 302c-4 -4 -3 -10 0 -14c3 4 4 10 0 14z" fill="{RED}" stroke="none"/>', '<path d="M228 302h12v4h-12z" fill="#FFFFFF" stroke-width="1"/>']))
R["blask"] = (180, 250, 110, 80, group(['<ellipse cx="234" cy="296" rx="50" ry="34" fill="#FFFFFF" stroke="none" opacity="0.25"/>']))
_s, _so = efekty.sowa(286, 166, 1.0)
R["oczy"] = _so[0]
R["hanka"] = (330, 230, 50, 100, group([postacie.girl(350, 330, 1.8), '<path d="M330 330V220H384" fill="none" stroke-width="3"/>']))
R["przod"] = (0, 422, 390, 422, group(PRZOD_IZBA))
RANNY = ["tlo", "za_oknem", "oczy", "blask", "kaganek", "ojciec", "matka", "babka", "hanka", "przod"]
R_REVEAL = {"oczy": "babka", "hanka": "hanka"}
R_ANIM = {"kaganek": {"type": "flame", "amplitude": 0.15, "duration": 800, "anchorX": 0.5, "anchorY": 1},
          "blask": {"type": "flicker", "amplitude": 0.6, "duration": 1500}, "ojciec": {"type": "bob", "amplitude": 0.6, "duration": 1000},
          "babka": {"type": "sway", "amplitude": 1.5, "duration": 3000, "anchorX": 0.5, "anchorY": 1},
          "matka": {"type": "bob", "amplitude": 0.4, "duration": 2400}, "oczy": {"type": "blink", "duration": 4200},
          "hanka": {"type": "bob", "amplitude": 0.4, "duration": 2600}}
R_EXTRA = {"kaganek": {"noInvert": True}, "oczy": {"fadeDuration": 2500}, "hanka": {"fadeDuration": 1000}, "przod": {"depth": 1.0}}
R_COMMENTS = {"tlo": "izba wieczorem: piec, stół, okno na bór", "za_oknem": "bór za oknem", "ojciec": "ojciec na ławie, noga w łubkach (drży)",
              "babka": "babka Hanki z koszem ziół", "matka": "matka przy ławie", "kaganek": "płomień kaganka (czerwony)", "blask": "blask kaganka",
              "oczy": "oczy w borze za oknem — ktoś je przysłał (# pokaz: babka)", "hanka": "Hanka w progu (# pokaz: hanka)", "przod": "pierwszy plan"}
_add(R, RANNY, R_ANIM, R_COMMENTS, "cmy", ((210, 260, 50, 30, group(['<path d="M220 272l4 -3l4 3l-4 2z" fill="#FFFFFF" stroke-width="1"/><path d="M242 266l4 -3l4 3l-4 2z" fill="#FFFFFF" stroke-width="1"/>'])),
                                           {"type": "wander", "amplitude": 12, "flap": 0.5, "duration": 3400}, "ćmy przy kaganku"), before="ojciec")
_add(R, RANNY, R_ANIM, R_COMMENTS, "ziola", ((180, 240, 30, 50, group(['<path d="M196 286c-5 -8 4 -12 -1 -20c-3 -5 2 -10 0 -14" fill="none" stroke-width="1.6" opacity="0.6"/>'])),
                                             {"type": "sway", "amplitude": 3, "duration": 4000, "anchorX": 0.5, "anchorY": 1}, "dym z tlących się ziół"), before="ojciec")
_add(R, RANNY, R_ANIM, R_COMMENTS, "zar_w_piecu", ((26, 300, 40, 20, group([f'<circle cx="{x}" cy="{y}" r="2" fill="{RED}" stroke="none"/>' for x, y in [(34, 316), (42, 314), (50, 317), (58, 315)]])),
                                                   {"type": "flicker", "amplitude": 0.3, "duration": 1800}, "żar w piecu"), before="ojciec")
R_EXTRA["zar_w_piecu"] = {"noInvert": True}
_add(R, RANNY, R_ANIM, R_COMMENTS, "gwiazdy", efekty.iskry(252, 112, 66, 40, n=4, seed=96), before="za_oknem")

# ======================= DRZWI NOCA =======================
N = {}
t = izba_tlo(dark=True)
# drzwi z desek na srodku, okiennica z lewej, lawa z ojcem i matka na zydlu z prawej, stol z bochenkiem
t.append('<path d="M150 330V120H250V330Z" fill="#EDEBE6" stroke-width="3"/>')
for x in range(166, 250, 16):
    t.append(f'<path d="M{x} 122V328" fill="none" stroke-width="1.4"/>')
t.append('<path d="M156 160H244M156 290H244M156 290L244 160" fill="none" stroke-width="3"/>')
t.append('<path d="M30 140H110V220H30Z" fill="#000000" stroke-width="3"/><path d="M70 140V220" fill="none" stroke-width="2.4"/>')
t.append(stol(20, 330, 100))
t.append('<path d="M40 300C40 288 80 286 90 300Z" fill="#FFFFFF" stroke-width="1.6"/><path d="M36 300C50 292 80 292 96 300L92 304H40Z" fill="url(#hatch)" stroke-width="1.2"/>')
t.append(lawa_ranny(320, 300, 0.8))
N["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
N["szpary"] = (150, 120, 100, 214, group([f'<path d="M{x} 124V326" fill="none" stroke="#FFFFFF" stroke-width="1.6"/>' for x in range(166, 250, 16)]))
N["szpara_okna"] = (66, 140, 8, 80, group(['<path d="M70 142V218" fill="none" stroke="#FFFFFF" stroke-width="2"/>']))
N["matka"] = (250, 250, 50, 90, group([postacie.woman(272, 330, 1.1)]))
N["zar"] = (330, 316, 40, 16, group([f'<circle cx="{x}" cy="{y}" r="1.8" fill="{RED}" stroke="none"/>' for x, y in [(336, 324), (344, 322), (352, 325)]]))
N["pukanie"] = (170, 300, 60, 30, group(['<path d="M178 318l-6 -4M178 324l-8 0M222 318l6 -4M222 324l8 0" fill="none" stroke="#FFFFFF" stroke-width="1.4"/>']))
N["cien"] = (190, 324, 30, 80, group(['<path d="M196 328L202 400L210 400L216 328Z" fill="#000000" stroke="none" opacity="0.85"/>']))
N["pajda"] = (20, 130, 110, 100, group(['<path d="M30 140H110V220H30Z" fill="#FFFFFF" stroke-width="2" opacity="0.8"/>',
                                        '<path d="M68 194h28l-3 12h-24z" fill="#FFFFFF" stroke-width="1.4"/><path d="M68 198h27" fill="none" stroke="#A8101A" stroke-width="1"/><path d="M58 200h12" fill="none" stroke-width="4"/>']))
N["glownia"] = (140, 110, 120, 230, group([f'<path d="M150 330V120H250V330Z" fill="{RED}" stroke="none" opacity="0.35"/>',
                                            f'<path d="M196 260l12 -30" fill="none" stroke-width="4"/><path d="M208 232c-4 -6 0 -14 4 -16c2 6 2 12 -4 16z" fill="{RED}" stroke="none"/>']))
N["iskry"] = (180, 190, 60, 50, group([f'<circle cx="{x}" cy="{y}" r="1.4" fill="#FFFFFF" stroke="{RED}" stroke-width="0.6"/>' for x, y in [(200, 220), (212, 208), (220, 224), (206, 200)]]))
N["glos"] = (150, 160, 100, 100, group([f'<path d="M{160 + i * 12} {200 + i * 10}c8 -8 16 8 24 0s16 8 24 0" fill="none" stroke="#FFFFFF" stroke-width="1.4" stroke-dasharray="3 3"/>' for i in range(3)]))
N["rysy"] = (160, 300, 80, 30, group(['<path d="M164 304H236V326H164Z" fill="url(#hatchDense)" stroke="none" opacity="0.9"/>'] + [f'<circle cx="{x}" cy="{y}" r="1.6" fill="#FFFFFF" stroke="none"/>' for x, y in [(176, 312), (190, 318), (204, 310), (220, 320)]]))
N["przod"] = (0, 422, 390, 422, group(PRZOD_IZBA))
DRZWI = ["tlo", "szpary", "szpara_okna", "zar", "matka", "pukanie", "cien", "pajda", "glownia", "iskry", "glos", "rysy", "przod"]
N_REVEAL = {"cien": "cien", "pajda": "pajda", "glownia": "glownia", "iskry": "glownia", "glos": "glos", "rysy": "rysy"}
N_ANIM = {"szpary": {"type": "flicker", "amplitude": 0.5, "duration": 4000}, "szpara_okna": {"type": "flicker", "amplitude": 0.4, "duration": 3400},
          "zar": {"type": "flicker", "amplitude": 0.3, "duration": 1800}, "matka": {"type": "bob", "amplitude": 0.5, "duration": 3600},
          "pukanie": {"type": "flash", "amplitude": 1, "duration": 2200}, "cien": {"type": "slide", "dx": 0, "dy": 18, "duration": 6000, "once": True},
          "glownia": {"type": "flicker", "amplitude": 0.5, "duration": 700}, "iskry": {"type": "rise", "amplitude": 40, "duration": 1200},
          "glos": {"type": "drift", "amplitude": 8, "duration": 3000}, "pajda": {"type": "flicker", "amplitude": 0.7, "duration": 3000}}
N_EXTRA = {"zar": {"noInvert": True}, "pukanie": {"hideOn": "pajda,glownia,glos"}, "cien": {"fadeDuration": 3000, "hideOn": "pajda,glownia"},
           "pajda": {"fadeDuration": 800, "hideAfter": 5000}, "glownia": {"noInvert": True, "fadeDuration": 300, "hideAfter": 4000},
           "iskry": {"hideAfter": 4000}, "glos": {"fadeDuration": 2000, "hideOn": "rysy"}, "rysy": {"fadeDuration": 2000}, "przod": {"depth": 1.0}}
N_COMMENTS = {"tlo": "izba nocą od strony drzwi: drzwi z desek, okiennica, stół z bochenkiem pod ściereczką, ojciec na ławie",
              "szpary": "księżyc w szparach drzwi (migocze)", "szpara_okna": "księżyc w szparze okiennicy", "zar": "żar w piecu (czerwony)",
              "matka": "matka śpi na zydlu", "pukanie": "pukanie w dolną deskę drzwi", "cien": "chudy cień wsuwa się pod drzwiami (# pokaz: cien)",
              "pajda": "okiennica uchylona, ręka ze słoniną (# pokaz: pajda)", "glownia": "drzwi otwarte, głownia — czerwony blask (# pokaz: glownia)",
              "iskry": "iskry z głowni (# pokaz: glownia)", "glos": "głos zza drzwi (# pokaz: glos)", "rysy": "zbutwiała, czarna deska drzwi (# pokaz: rysy)",
              "przod": "pierwszy plan"}
_add(N, DRZWI, N_ANIM, N_COMMENTS, "cmy", ((40, 260, 60, 30, group(['<path d="M50 272l4 -3l4 3l-4 2z" fill="#FFFFFF" stroke-width="1"/>'])),
                                           {"type": "wander", "amplitude": 16, "flap": 0.5, "duration": 4400}, "ćma"), before="matka")
_add(N, DRZWI, N_ANIM, N_COMMENTS, "pylki", efekty.pylki(150, 130, 100, 190, n=8, seed=97, duration=8000), before="matka")
N_COMMENTS["pylki"] = "pyłki w księżycowym świetle"

# ======================= KAPLICZKI WYKOPYWANE =======================
K = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M-10 196C80 188 200 192 400 186V440H-10Z" fill="#EDEBE6" stroke-width="2.6"/>']
t += bor(196, -6, 400, 11, seed=98)
t.append('<circle cx="300" cy="56" r="16" fill="#FFFFFF" stroke-width="2.4"/>')
t.append('<path d="M-10 300C80 290 200 270 260 250C300 236 360 226 400 224V244C360 246 310 256 270 270C210 292 100 312 -10 326Z" fill="#FFFFFF" stroke-width="2"/>')
t.append(kapliczka(330, 228, 0.6))
for (x, y) in [(120, 300), (230, 268)]:
    t.append(f'<ellipse cx="{x}" cy="{y}" rx="12" ry="4" fill="#000000" stroke-width="1"/>')
t.append('<path d="M-10 350H200M-10 364H200" fill="none" stroke-width="2"/>')
for x in range(-4, 200, 22):
    t.append(f'<path d="M{x - 3} 374V342L{x} 336L{x + 3} 342V374Z" fill="#FFFFFF" stroke-width="1.4"/>')
K["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
K["kapliczka"] = (160, 200, 40, 90, group([kapliczka(176, 286, 0.85)]))
K["woz_figurek"] = (240, 300, 140, 60, group([woz(250, 336, 1.2),
                                              '<path d="M262 316l6 -18h6l-2 18z" fill="#FFFFFF" stroke-width="1.2" transform="rotate(-20 266 310)"/>'
                                              '<path d="M286 318l4 -16h6l-2 16z" fill="#FFFFFF" stroke-width="1.2" transform="rotate(14 290 310)"/>']))
K["urbaniak"] = (330, 250, 50, 90, group([tlusty(350, 336, 0.95)]))
K["kobiety"] = (20, 290, 90, 60, group([postacie.woman(40, 350, 0.75), postacie.woman(70, 350, 0.75)]))
K["kopacze"] = (90, 240, 170, 80, group([postacie.man(110, 310, 0.9, hat=True, arm="l12 14"), '<path d="M122 314l10 6h6" fill="none" stroke-width="2"/>',
                                          postacie.man(214, 282, 0.85, hat=True, arm="l12 14"), '<path d="M226 286l10 6h6" fill="none" stroke-width="2"/>']))
K["obrona"] = (150, 220, 70, 90, group([postacie.man(170, 302, 0.95, hat=False, arm="l14 -10"), postacie.man(196, 302, 0.9, hat=False)]))
K["noc"] = (0, 0, 390, 440, group(['<rect width="390" height="440" fill="url(#hatchNight)" stroke="none" opacity="0.8"/>',
                                   '<circle cx="80" cy="60" r="14" fill="#FFFFFF" stroke-width="1.6"/>']))
K["swiatek"] = (240, 290, 40, 50, group([postacie.child(260, 340, 1.0, arm="l6 -6"), '<path d="M268 306h6v12h-6z" fill="#FFFFFF" stroke-width="1.2"/>']))
K["przod"] = (0, 422, 390, 422, group(PRZOD))
KAPL = ["tlo", "kapliczka", "kopacze", "obrona", "woz_figurek", "urbaniak", "kobiety", "noc", "swiatek", "przod"]
K_REVEAL = {"kopacze": "kopacze", "obrona": "obrona", "noc": "noc", "swiatek": "noc", "woz_figurek": "kopacze"}
K_ANIM = {"kopacze": {"type": "sway", "amplitude": 4, "duration": 1300, "anchorX": 0.5, "anchorY": 1},
          "kobiety": {"type": "bob", "amplitude": 0.5, "duration": 2000}, "obrona": {"type": "bob", "amplitude": 0.4, "duration": 1600},
          "swiatek": {"type": "slide", "dx": -160, "dy": 30, "duration": 12000, "once": True},
          "urbaniak": {"type": "bob", "amplitude": 0.4, "duration": 2400},
          "woz_figurek": {"type": "bob", "amplitude": 0.3, "duration": 1200}}
K_EXTRA = {"kopacze": {"fadeDuration": 1200}, "obrona": {"fadeDuration": 1200}, "noc": {"fadeDuration": 3000}, "swiatek": {"fadeDuration": 2000},
           "woz_figurek": {"fadeDuration": 1200}, "przod": {"depth": 1.0}}
K_COMMENTS = {"tlo": "droga pod borem z kapliczkami na zakrętach, płot, jamy po wykopanych słupach", "kapliczka": "kapliczka na skraju boru",
              "kopacze": "ludzie Urbaniaka wykopują kapliczki (# pokaz: kopacze)", "woz_figurek": "wóz z wrzuconymi figurkami (# pokaz: kopacze)",
              "urbaniak": "Urbaniak przygląda się z bryczki", "kobiety": "kobiety przy płocie",
              "obrona": "Jaromir i Antek przed kapliczką (# pokaz: obrona)", "noc": "noc (# pokaz: noc)",
              "swiatek": "Jaromir niesie świątka do bazy (# pokaz: noc)", "przod": "pierwszy plan"}
_add(K, KAPL, K_ANIM, K_COMMENTS, "kurz", ((80, 280, 200, 40, group([f'<path d="{ribbon(90, 270, 300, 10, 4)}" fill="#EDEBE6" stroke-width="1" opacity="0.6"/>'])),
                                           {"type": "drift", "amplitude": 16, "duration": 5000}, "kurz spod łopat"), before="kopacze")
K_REVEAL["kurz"] = "kopacze"
_add(K, KAPL, K_ANIM, K_COMMENTS, "wrony", efekty.wrony(150, 110, n=4, k=0.4, seed=99, amplitude=60), before="kapliczka")
_add(K, KAPL, K_ANIM, K_COMMENTS, "zar", zar(206), before="kapliczka")
_add(K, KAPL, K_ANIM, K_COMMENTS, "promienie", slonce_zar(300, 56, 16), before="zar")
_add(K, KAPL, K_ANIM, K_COMMENTS, "gwiazdy", efekty.iskry(120, 10, 260, 120, n=12, seed=100, duration=3600), before="swiatek")
K_REVEAL["gwiazdy"] = "noc"
_add(K, KAPL, K_ANIM, K_COMMENTS, "konik", ((326, 300, 30, 40, group(['<path d="M340 320c4 6 6 12 4 18" fill="none" stroke-width="2"/>'])),
                                            {"type": "sway", "amplitude": 10, "duration": 1400, "anchorX": 0.4, "anchorY": 0.4}, "ogon konia przy bryczce"), before="urbaniak")
# woz z figurkami odjezdza (III)
K["wozy"] = K["woz_figurek"]
KAPL.insert(KAPL.index("urbaniak"), "wozy")
K_REVEAL["wozy"] = "wozy"
K_ANIM["wozy"] = {"type": "slide", "dx": 200, "dy": -60, "duration": 14000, "once": True}
K_EXTRA["wozy"] = {"fadeDuration": 800, "hideAfter": 13000}
K_EXTRA["woz_figurek"]["hideOn"] = "wozy"
K_COMMENTS["wozy"] = "wóz z figurkami odjeżdża (# pokaz: wozy)"

# ======================= BOR BLIZEJ =======================
B = {}
t = ['<rect width="390" height="440" fill="#EDEBE6" stroke="none"/>',
     '<path d="M-10 236C80 228 200 232 400 226V440H-10Z" fill="#EDEBE6" stroke-width="2.6"/>']
t += bor(236, -6, 400, 10, seed=101)
t += [spruce(x, 250, 70, 26) for x in range(-4, 400, 34)]
t.append('<path d="M-10 330C80 320 200 300 260 286C300 276 360 268 400 266V286C360 288 310 296 270 306C210 322 100 340 -10 352Z" fill="#FFFFFF" stroke-width="2"/>')
PITS = [(60, 334), (150, 314), (240, 296), (320, 280)]
for (x, y) in PITS:
    t.append(f'<ellipse cx="{x}" cy="{y}" rx="13" ry="4" fill="#000000" stroke-width="1"/>')
B["tlo"] = (0, 0, 390, 440, t[0] + "\n" + group(t[1:]))
B["swierki"] = (30, 270, 320, 70, group([spruce(x + dx, y, 22, 10) for (x, y) in PITS for dx in (-6, 0, 6)]))
B["kapliczka"] = (360, 190, 30, 90, group([kapliczka(372, 270, 0.75)]))
B["noc"] = (0, 0, 390, 440, group(['<rect width="390" height="440" fill="url(#hatchNight)" stroke="none" opacity="0.85"/>']))
B["blyskawica"] = (0, 0, 390, 440, '<rect width="390" height="440" fill="#FFFFFF" stroke="none"/>')
B["zebraczka"] = (200, 236, 120, 30, group([sylwetka_licha(300, 258, 0.8, -1)]))
B["franek"] = (180, 220, 30, 44, group([postacie.man(194, 260, 0.5, hat=False)]))
B["przod"] = (0, 422, 390, 422, group(PRZOD))
BOR = ["tlo", "swierki", "kapliczka", "franek", "zebraczka", "noc", "blyskawica", "przod"]
B_REVEAL = {"swierki": "swierki", "kapliczka": "kapliczka", "noc": "burza", "blyskawica": "burza", "zebraczka": "zebraczka", "franek": "franek"}
B_ANIM = {"swierki": {"type": "sway", "amplitude": 2, "duration": 2600, "anchorX": 0.5, "anchorY": 1},
          "blyskawica": {"type": "flash", "amplitude": 0.7, "duration": 3800},
          "zebraczka": {"type": "slide", "dx": -40, "dy": -14, "duration": 10000, "once": True},
          "franek": {"type": "slide", "dx": -30, "dy": -10, "duration": 10000, "once": True}}
B_EXTRA = {"swierki": {"fadeDuration": 3000}, "kapliczka": {"fadeDuration": 2000}, "noc": {"fadeDuration": 1500, "hideOn": "swierki"},
           "blyskawica": {"noInvert": True, "hideOn": "swierki", "depth": 0}, "zebraczka": {"fadeDuration": 2500, "hideAfter": 9000},
           "franek": {"fadeDuration": 2500, "hideAfter": 9500}, "przod": {"depth": 1.0}}
B_COMMENTS = {"tlo": "droga pod borem po wykopaniu kapliczek: jamy po słupach, bór gęsty i bliski",
              "swierki": "młode świerki w dołach po kapliczkach (# pokaz: swierki)", "kapliczka": "ocalona kapliczka (# pokaz: kapliczka)",
              "noc": "noc suchej burzy (# pokaz: burza, znika rano)", "blyskawica": "błyski bez grzmotów (# pokaz: burza)",
              "zebraczka": "licho wchodzi do boru (# pokaz: zebraczka)", "franek": "Franek idzie do boru przed nim (# pokaz: franek)",
              "przod": "pierwszy plan"}
_add(B, BOR, B_ANIM, B_COMMENTS, "mgla", ((-30, 240, 450, 40, group([f'<path d="{ribbon(-20, 410, 256, 14, 4)}" fill="#EDEBE6" stroke-width="1.2" opacity="0.7"/>'])),
                                          {"type": "drift", "amplitude": 14, "duration": 14000}, "mgła u stóp boru"), before="swierki")
_add(B, BOR, B_ANIM, B_COMMENTS, "wrony", efekty.wrony(160, 120, n=4, k=0.4, seed=102, amplitude=60), before="mgla")
_add(B, BOR, B_ANIM, B_COMMENTS, "korony", ((0, 160, 390, 90, group([f'<path d="M{x} 200l-6 14h12z" fill="#000000" stroke-width="1"/>' for x in range(10, 390, 34)])),
                                            {"type": "sway", "amplitude": 1.5, "duration": 2400, "anchorX": 0.5, "anchorY": 1}, "korony boru szumią"), before="mgla")
_add(B, BOR, B_ANIM, B_COMMENTS, "liscie", ((40, 300, 300, 100, group([f'<path d="M{x} {y}c-3 -3 -1 -7 3 -6c3 -3 7 -1 6 3c2 3 -1 6 -4 5z" fill="url(#hatch)" stroke-width="1"/>' for x, y in [(60, 320), (140, 350), (230, 330), (300, 370)]])),
                                            {"type": "float", "amplitude": 10, "dx": 120, "dy": -40, "duration": 7000}, "suche liście niesione wiatrem od boru"), before="przod")
_add(B, BOR, B_ANIM, B_COMMENTS, "chmury", ((20, 40, 300, 60, group(['<path d="M40 76c8 -14 28 -14 34 0c8 -8 24 -2 22 8h-56z" fill="#FFFFFF" stroke-width="1.6"/>',
                                                                     '<path d="M220 62c8 -14 28 -14 34 0c8 -8 24 -2 22 8h-56z" fill="#FFFFFF" stroke-width="1.6"/>'])),
                                            {"type": "drift", "amplitude": 16, "duration": 18000}, "chmury po burzy"), before="wrony")

BACKGROUNDS = {"susza": ("bg_susza", S, SUSZA, S_ANIM, S_REVEAL, S_EXTRA, S_COMMENTS, "susza"),
               "studnia": ("bg_studnia", W, STUDNIA, W_ANIM, W_REVEAL, W_EXTRA, W_COMMENTS, "studnia"),
               "izba_sierpien": ("bg_izbasierp", I, IZBA, I_ANIM, I_REVEAL, I_EXTRA, I_COMMENTS, "izba w sierpniu"),
               "wyreb": ("bg_wyreb", Y, WYREB, Y_ANIM, Y_REVEAL, Y_EXTRA, Y_COMMENTS, "wyrąb"),
               "droga_wyreb": ("bg_drogawyreb", D, DROGA, D_ANIM, D_REVEAL, D_EXTRA, D_COMMENTS, "droga do wyrębu"),
               "izba_ranny": ("bg_izbaranny", R, RANNY, R_ANIM, R_REVEAL, R_EXTRA, R_COMMENTS, "izba z rannym"),
               "drzwi_noc": ("bg_drzwinoc", N, DRZWI, N_ANIM, N_REVEAL, N_EXTRA, N_COMMENTS, "drzwi nocą"),
               "kapliczki_wykop": ("bg_kaplwykop", K, KAPL, K_ANIM, K_REVEAL, K_EXTRA, K_COMMENTS, "wykopywanie kapliczek"),
               "bor_blizej": ("bg_borblizej", B, BOR, B_ANIM, B_REVEAL, B_EXTRA, B_COMMENTS, "bór bliżej")}

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
