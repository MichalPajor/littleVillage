# Dolny plan tel (y 446–844) — to, co widac po schowaniu okna z tekstem. Wspolne warstwy dla rodzajow scen
# (laka, las, woda, bagno, pole, droga, jesien, snieg, izba, miasto, popiol, piwnica), kazdy w wersji dziennej i nocnej.
# bgjson.upsert dokleja te warstwy automatycznie do kazdego tla wymienionego w RODZAJE (na samym koncu, nad pierwszym planem).
# Uzycie z katalogu glownego repozytorium:
#   python3 tools/Backgrounds/dolny_plan.py src/LittleVillage/Resources/Images     -> pliki bg_dol_*.svg + doklejenie do wszystkich tel
#   python3 tools/Backgrounds/dolny_plan.py --master <rodzaj> [noc] > podglad.svg
import sys, os, random, math
from common import *

RED = "#A8101A"
PAPER = "#EDEBE6"
TOP = 446

# klucz tla -> (rodzaj, noc)
RODZAJE = {
    "wies_noc": ("laka", True), "zapadlina": ("laka", False), "budowa_las": ("las", False), "budowa_mokradla": ("bagno", False),
    "budowa_jezioro": ("woda", False), "chata_las": ("las", False), "chata_mokradla": ("bagno", False), "chata_jezioro": ("woda", False),
    "zarosla_noc": ("las", True), "zmierzch": ("laka", True), "zmierzch_zdobycz": ("laka", True), "zmierzch_obrona": ("laka", True),
    "izba_andrzeja": ("izba", False), "legenda": ("laka", True), "zgliszcza": ("popiol", False), "wieczor_las": ("las", True),
    "wieczor_mokradla": ("bagno", True), "wieczor_jezioro": ("woda", True), "sciezka": ("bagno", False), "sciezka_po": ("bagno", False),
    "sciezka_smierc": ("bagno", False), "sciezka_ratunek": ("bagno", False), "sciezka_rodzina": ("bagno", False), "gosciniec": ("droga", False),
    "rynek": ("miasto", False), "zaulek": ("miasto", False), "czworaki": ("laka", False), "czary": ("izba", True), "noc_atak": ("laka", True),
    "walka": ("izba", True), "pod_podloga": ("piwnica", True), "kapliczki": ("laka", False), "zapadlina_lato": ("laka", False),
    "poranek": ("laka", False), "laka_bitwa": ("laka", False), "luki": ("pole", False), "baza": ("laka", False), "jezioro_lato": ("woda", False),
    "wieczor_lato": ("laka", True), "jesien": ("jesien", False), "jesien_plot": ("jesien", False), "droga_bor": ("droga", False),
    "szkola_izba": ("izba", False), "szkola_podania": ("izba", False), "szkola_ksiega": ("izba", False), "sosna_spirala": ("las", False),
    "wstazka_wiatr": ("jesien", False), "bor_starzec": ("las", True), "pierwszy_snieg": ("izba", True), "roraty": ("snieg", True),
    "przerwa_sniezki": ("snieg", False), "izba_noc": ("izba", True), "wigilia": ("izba", False), "wigilia_szczeniak": ("izba", False),
    "noc_snieg": ("snieg", True), "kolyska": ("izba", True), "koledy": ("snieg", False), "stodola_marzanna": ("izba", False),
    "rozlewisko": ("bagno", False), "babka_lozko": ("izba", False), "prog_noc": ("laka", True), "izba_wieczor": ("izba", True),
    "kapliczka_przewrocona": ("laka", False), "urbaniak": ("laka", False), "tartak": ("droga", False), "ognisko_tartak": ("laka", True),
    "pole_orka": ("pole", False), "stary_dab": ("laka", False), "sciecie_debu": ("laka", False), "uboze_piec": ("izba", True),
    "przed_zniwami": ("pole", False), "zniwa": ("pole", False), "poludnica": ("pole", False), "goraczka": ("izba", True),
    "czerwony_ksiezyc": ("pole", True), "kapliczki_noc": ("laka", True), "budowa_tartaku": ("droga", False), "wykopki": ("jesien", False),
    "zaduszki": ("laka", True), "zima_przedzenie": ("izba", False), "wielkanoc": ("laka", False),
}


def col(noc):
    """(kolor kreski, wypelnienie ksztaltow, kolor jasnych akcentow)"""
    return ("#FFFFFF", "#000000", PAPER) if noc else ("#000000", PAPER, "#FFFFFF")


# ---------------- elementy ----------------
def kepa(x, y, k, ink):
    return (f'<path d="M{x} {y}l{-4 * k:.1f} {-14 * k:.1f}M{x} {y}l{-1 * k:.1f} {-18 * k:.1f}M{x} {y}l{3 * k:.1f} {-16 * k:.1f}'
            f'M{x} {y}l{7 * k:.1f} {-12 * k:.1f}M{x} {y}l{-8 * k:.1f} {-9 * k:.1f}" fill="none" stroke="{ink}" stroke-width="{1.4 + 0.3 * k:.1f}"/>')


def wysoka_trawa(x, y, h, lean, ink, w=2.6):
    return (f'<path d="M{x} {y}C{x + lean * 0.3:.0f} {y - h * 0.4:.0f} {x + lean * 0.7:.0f} {y - h * 0.8:.0f} {x + lean} {y - h}" fill="none" stroke="{ink}" stroke-width="{w}"/>')


def kamien(x, y, w, h, ink, fill):
    return (f'<path d="M{x - w} {y}C{x - w} {y - h} {x - w * 0.3:.0f} {y - h * 1.2:.0f} {x + w * 0.2:.0f} {y - h * 1.1:.0f}C{x + w} {y - h} {x + w * 1.1:.0f} {y - h * 0.3:.0f} {x + w} {y}Z" fill="{fill}" stroke="{ink}" stroke-width="2"/>'
            f'<path d="M{x - w * 0.5:.0f} {y - h * 0.7:.0f}c{w * 0.3:.0f} {-h * 0.2:.0f} {w * 0.6:.0f} {-h * 0.2:.0f} {w * 0.8:.0f} 0" fill="none" stroke="{ink}" stroke-width="1"/>')


def kwiat(x, y, k, ink, kind):
    stem = f'<path d="M{x} {y}C{x - 1} {y - 8 * k:.0f} {x + 2} {y - 14 * k:.0f} {x} {y - 20 * k:.0f}" fill="none" stroke="{ink}" stroke-width="1.3"/>'
    cy = y - 20 * k
    if kind == "mak":
        head = f'<circle cx="{x}" cy="{cy:.0f}" r="{4.2 * k:.1f}" fill="{RED}" stroke="{ink}" stroke-width="1"/><circle cx="{x}" cy="{cy:.0f}" r="1.2" fill="{ink}"/>'
    elif kind == "rumianek":
        head = "".join(f'<ellipse cx="{x + math.cos(a) * 3.6 * k:.1f}" cy="{cy + math.sin(a) * 3.6 * k:.1f}" rx="{2.2 * k:.1f}" ry="{1.2 * k:.1f}" transform="rotate({math.degrees(a):.0f} {x + math.cos(a) * 3.6 * k:.1f} {cy + math.sin(a) * 3.6 * k:.1f})" fill="#FFFFFF" stroke="{ink}" stroke-width="0.8"/>'
                       for a in [i * math.pi / 4 for i in range(8)]) + f'<circle cx="{x}" cy="{cy:.0f}" r="{1.8 * k:.1f}" fill="{ink}"/>'
    else:  # dzwonek / kaczeniec
        head = f'<path d="M{x - 4 * k:.1f} {cy:.0f}C{x - 4 * k:.1f} {cy - 7 * k:.0f} {x + 4 * k:.1f} {cy - 7 * k:.0f} {x + 4 * k:.1f} {cy:.0f}l{-2 * k:.1f} {-1.5 * k:.1f}l{-2 * k:.1f} {1.5 * k:.1f}l{-2 * k:.1f} {-1.5 * k:.1f}z" fill="#FFFFFF" stroke="{ink}" stroke-width="1"/>'
    return stem + head


def paproc(x, y, h, lean, ink, fill):
    out = [f'<path d="M{x} {y}C{x + lean * 0.3:.0f} {y - h * 0.5:.0f} {x + lean * 0.7:.0f} {y - h * 0.8:.0f} {x + lean} {y - h}" fill="none" stroke="{ink}" stroke-width="2"/>']
    for i in range(1, 9):
        t = i / 9
        px, py = x + lean * t ** 1.3, y - h * t
        L = (1 - t) * h * 0.32 + 4
        out.append(f'<path d="M{px:.0f} {py:.0f}q{-L * 0.5:.0f} {-L * 0.1:.0f} {-L:.0f} {L * 0.25:.0f}q{L * 0.55:.0f} {-L * 0.05:.0f} {L:.0f} {-L * 0.25:.0f}Z" fill="{fill}" stroke="{ink}" stroke-width="1"/>')
        out.append(f'<path d="M{px:.0f} {py:.0f}q{L * 0.5:.0f} {-L * 0.1:.0f} {L:.0f} {L * 0.25:.0f}q{-L * 0.55:.0f} {-L * 0.05:.0f} {-L:.0f} {-L * 0.25:.0f}Z" fill="{fill}" stroke="{ink}" stroke-width="1"/>')
    return "".join(out)


def grzyb(x, y, k, ink, fill, red=False):
    cap = RED if red else fill
    dots = "".join(f'<circle cx="{x + dx * k:.1f}" cy="{y - 16 * k + dy * k:.1f}" r="{1.2 * k:.1f}" fill="#FFFFFF" stroke="none"/>' for dx, dy in [(-4, 0), (2, -2), (5, 1)]) if red else ""
    return (f'<path d="M{x - 2.5 * k:.1f} {y}V{y - 12 * k:.1f}H{x + 2.5 * k:.1f}V{y}Z" fill="#FFFFFF" stroke="{ink}" stroke-width="1.2"/>'
            f'<path d="M{x - 9 * k:.1f} {y - 12 * k:.1f}C{x - 9 * k:.1f} {y - 22 * k:.1f} {x + 9 * k:.1f} {y - 22 * k:.1f} {x + 9 * k:.1f} {y - 12 * k:.1f}Z" fill="{cap}" stroke="{ink}" stroke-width="1.4"/>' + dots)


def pniak(x, y, k, ink, fill):
    return (f'<path d="M{x - 18 * k:.0f} {y}C{x - 16 * k:.0f} {y - 14 * k:.0f} {x - 16 * k:.0f} {y - 22 * k:.0f} {x - 14 * k:.0f} {y - 26 * k:.0f}H{x + 14 * k:.0f}C{x + 16 * k:.0f} {y - 22 * k:.0f} {x + 16 * k:.0f} {y - 14 * k:.0f} {x + 18 * k:.0f} {y}Z" fill="{fill}" stroke="{ink}" stroke-width="2"/>'
            f'<ellipse cx="{x}" cy="{y - 26 * k:.0f}" rx="{14 * k:.0f}" ry="{4 * k:.0f}" fill="#FFFFFF" stroke="{ink}" stroke-width="1.6"/>'
            f'<ellipse cx="{x}" cy="{y - 26 * k:.0f}" rx="{7 * k:.0f}" ry="{2 * k:.0f}" fill="none" stroke="{ink}" stroke-width="0.8"/>'
            f'<path d="M{x - 10 * k:.0f} {y - 18 * k:.0f}v10M{x + 6 * k:.0f} {y - 20 * k:.0f}v12" fill="none" stroke="{ink}" stroke-width="1"/>')


def szuwar(x, y, h, lean, ink):
    return (wysoka_trawa(x, y, h, lean, ink, 2) +
            f'<rect x="{x + lean * 0.8 - 2:.0f}" y="{y - h * 0.86:.0f}" width="4" height="{h * 0.22:.0f}" rx="2" fill="{ink}" stroke="none"/>')


def kolo_wozu(cx, cy, r, ink, fill):
    spokes = "".join(f'<path d="M{cx} {cy}L{cx + r * math.cos(a):.0f} {cy + r * math.sin(a):.0f}" fill="none" stroke="{ink}" stroke-width="2.4"/>' for a in [i * math.pi / 5 for i in range(10)])
    return (f'<circle cx="{cx}" cy="{cy}" r="{r}" fill="none" stroke="{ink}" stroke-width="5"/>{spokes}<circle cx="{cx}" cy="{cy}" r="7" fill="{fill}" stroke="{ink}" stroke-width="2"/>')


def deski_podlogi(noc, ink):
    out = []
    for i in range(9):
        x0 = -260 + i * 110
        out.append(f'<path d="M{195 + (x0 - 195) * 0.25:.0f} {TOP}L{x0} 844" fill="none" stroke="{ink}" stroke-width="1.2"/>')
    for j, y in enumerate([480, 540, 620, 720, 830]):
        out.append(f'<path d="M-10 {y}H400" fill="none" stroke="{ink}" stroke-width="0.7" opacity="0.6"/>')
    rnd = random.Random(9)
    for _ in range(14):
        x, y = rnd.uniform(10, 380), rnd.uniform(470, 830)
        out.append(f'<path d="M{x:.0f} {y:.0f}c4 -2 8 -2 12 0" fill="none" stroke="{ink}" stroke-width="0.8"/>')   # sloje
    return out


def pk(y):
    """Skala perspektywy: male przy horyzoncie dolnego planu, duze przy dolnej krawedzi."""
    return 0.9 + (y - TOP) / 110


def faktura(rnd, ink, n=140, y0=TOP + 10):
    """Drobne kreski ziemi, gestsze i wieksze ku dolowi."""
    out = []
    for _ in range(n):
        y = rnd.uniform(y0, 840)
        x = rnd.uniform(-5, 395)
        k = pk(y)
        out.append(f'<path d="M{x:.0f} {y:.0f}l{3 * k:.1f} {-1.5 * k:.1f}" fill="none" stroke="{ink}" stroke-width="{0.6 + 0.15 * k:.1f}"/>')
    return out


def gaszcz(ink, fill, y_top=760, seed=1):
    """Gesty pas trawy przy dolnej krawedzi — postrzepiona gora, kreskowanie."""
    rnd = random.Random(seed)
    pts = [f"M-10 844V{y_top + 20}"]
    x = -10
    while x < 400:
        h = rnd.uniform(20, 70)
        pts.append(f"L{x + 6:.0f} {y_top + 30 - h:.0f}L{x + 12:.0f} {y_top + 26:.0f}")
        x += 12
    pts.append("V844Z")
    out = [f'<path d="{"".join(pts)}" fill="url(#hatchDense)" stroke="{ink}" stroke-width="1.6"/>']
    for _ in range(26):
        xx = rnd.uniform(0, 390)
        out.append(wysoka_trawa(round(xx), 850, rnd.uniform(70, 130), rnd.uniform(-25, 25), ink, 2.4))
    return out


# ---------------- rodzaje ----------------
def build(rodzaj, noc):
    """Zwraca (L, order, anim, extra, comments) — warstwy w ukladzie plotna 390x844."""
    ink, fill, light = col(noc)
    rnd = random.Random(hash((rodzaj, noc)) & 0xFFFF)
    L, order, anim, extra, com = {}, [], {}, {}, {}

    def add(name, x, y, w, h, items, a=None, comment="", ex=None):
        L[name] = (x, y, w, h, group(items))
        order.append(name)
        if a:
            anim[name] = a
        ex = dict(ex or {})
        ex.setdefault("depth", 1.0)
        extra[name] = ex
        com[name] = comment

    if noc and rodzaj != "snieg":
        add("noc_podklad", -10, TOP - 6, 410, 844 - TOP + 6, [f'<path d="M-10 {TOP + 4}C80 {TOP - 4} 200 {TOP + 6} 400 {TOP - 2}V844H-10Z" fill="{PAPER}" stroke="none"/>',
                                                              f'<path d="M-10 {TOP + 4}C80 {TOP - 4} 200 {TOP + 6} 400 {TOP - 2}V844H-10Z" fill="url(#hatchNight)" stroke="none"/>'],
            None, "ciemne podłoże nocą")

    if rodzaj in ("laka", "pole", "jesien", "droga"):
        base = []
        if rodzaj == "droga":
            base.append(f'<path d="M120 844C140 720 170 600 186 {TOP}" fill="none" stroke="{ink}" stroke-width="2.4"/><path d="M270 844C250 720 222 600 206 {TOP}" fill="none" stroke="{ink}" stroke-width="2.4"/>')
            base.append(f'<path d="M160 844C170 720 186 600 192 {TOP}M232 844C222 720 206 600 200 {TOP}" fill="none" stroke="{ink}" stroke-width="1" stroke-dasharray="8 8"/>')
            for _ in range(10):
                x, y = rnd.uniform(160, 240), rnd.uniform(480, 830)
                base.append(f'<ellipse cx="{x:.0f}" cy="{y:.0f}" rx="{rnd.uniform(2, 4):.1f}" ry="1.6" fill="{fill}" stroke="{ink}" stroke-width="0.8"/>')
        if rodzaj in ("pole",):
            for i in range(9):
                y0 = 470 + i * 42
                base.append(f'<path d="M-10 {y0}C100 {y0 - 8} 260 {y0 + 6} 400 {y0 - 6}" fill="none" stroke="{ink}" stroke-width="1.2"/>')
                for j in range(14):
                    x = 10 + j * 28 + (i % 2) * 12
                    base.append(f'<path d="M{x} {y0 + 2}v-6M{x + 4} {y0 + 3}v-5" fill="none" stroke="{ink}" stroke-width="1"/>')
        for _ in range(5):
            yy = rnd.uniform(500, 740)
            base.append(kamien(rnd.uniform(20, 370), yy, 9 * pk(yy), 6 * pk(yy), ink, fill))
        if rodzaj == "laka":
            base.append(pniak(310, 690, 2.2, ink, fill))
        base = faktura(rnd, ink) + base
        add("baza", -10, TOP - 30, 410, 844 - TOP + 30, base, comment="podłoże: faktura ziemi, kamienie, koleiny, bruzdy")
        for s in range(3):
            tufts = []
            for _ in range(22 if rodzaj != "pole" else 12):
                x, y = rnd.uniform(-5, 395), rnd.uniform(470 + s * 100, 580 + s * 100)
                tufts.append(kepa(round(x), round(y), pk(y) * rnd.uniform(0.9, 1.3), ink))
            add(f"trawa_{s}", -30, 400 + s * 100, 450, 220, tufts,
                {"type": "sway", "amplitude": 2.5, "duration": 3000 + s * 400, "anchorX": 0.5, "anchorY": 1, "phase": round(s * 0.2, 2)}, "kępy trawy kołyszą się")
        if rodzaj in ("laka", "droga"):
            fl = []
            for _ in range(18):
                yy = rnd.uniform(500, 760)
                fl.append(kwiat(round(rnd.uniform(10, 380)), round(yy), pk(yy) * 0.9, ink, rnd.choice(["rumianek", "rumianek", "mak", "dzwonek"])))
            add("kwiaty", -10, 470, 410, 380, fl, {"type": "sway", "amplitude": 3, "duration": 2600, "anchorX": 0.5, "anchorY": 1}, "polne kwiaty")
        if rodzaj == "pole":
            sn = [f'<path d="M{x - 14} 820L{x - 5} 760L{x + 5} 760L{x + 14} 820Z" fill="url(#hatchDense)" stroke="{ink}" stroke-width="1.6"/><path d="M{x - 9} 790h18" fill="none" stroke="{light}" stroke-width="2"/>'
                  f'<path d="M{x - 6} 760l-5 -12M{x} 760v-14M{x + 6} 760l5 -12" fill="none" stroke="{ink}" stroke-width="1.4"/>' for x in (40, 350)]
            add("snopy", 0, 740, 390, 90, sn, None, "snopy na pierwszym planie")
        add("gaszcz", -10, 700, 410, 144, gaszcz(ink, fill, 760, seed=len(rodzaj)), {"type": "sway", "amplitude": 1, "duration": 4200, "anchorX": 0.5, "anchorY": 1}, "gęsta trawa przy dolnej krawędzi")
        # wielkie zdzbla w rogach (rama)
        corner = [wysoka_trawa(x, 850, h, lean, ink, 3.2) for x, h, lean in [(4, 260, 30), (16, 220, 50), (26, 180, 10), (-6, 300, 60)]]
        add("rog_l", -20, 540, 140, 310, corner, {"type": "sway", "amplitude": 2, "duration": 3800, "anchorX": 0.2, "anchorY": 1}, "wysokie źdźbła w lewym rogu")
        corner = [wysoka_trawa(x, 850, h, lean, ink, 3.2) for x, h, lean in [(386, 240, -40), (374, 200, -20), (394, 290, -70), (362, 160, -8)]]
        add("rog_p", 270, 540, 140, 310, corner, {"type": "sway", "amplitude": 2, "duration": 4200, "anchorX": 0.8, "anchorY": 1, "phase": 0.3}, "wysokie źdźbła w prawym rogu")
        if rodzaj == "jesien":
            lv = [f'<g transform="rotate({rnd.uniform(0, 360):.0f} {x:.0f} {y:.0f})"><path d="M{x - 6:.0f} {y:.0f}C{x - 3:.0f} {y - 4:.0f} {x + 3:.0f} {y - 4:.0f} {x + 7:.0f} {y:.0f}C{x + 3:.0f} {y + 4:.0f} {x - 3:.0f} {y + 4:.0f} {x - 6:.0f} {y:.0f}Z" fill="#FFFFFF" stroke="{ink}" stroke-width="1.2"/></g>'
                  for x, y in [(rnd.uniform(0, 390), rnd.uniform(460, 820)) for _ in range(16)]]
            add("liscie_lezace", -10, 440, 410, 400, lv, None, "opadłe liście")
            add("liscie", 0, 440, 390, 120, [f'<path d="M{x - 5:.0f} {y:.0f}C{x - 2:.0f} {y - 3:.0f} {x + 2:.0f} {y - 3:.0f} {x + 6:.0f} {y:.0f}C{x + 2:.0f} {y + 3:.0f} {x - 2:.0f} {y + 3:.0f} {x - 5:.0f} {y:.0f}Z" fill="#FFFFFF" stroke="{ink}" stroke-width="1"/>'
                                            for x, y in [(rnd.uniform(0, 390), rnd.uniform(450, 550)) for _ in range(6)]],
                {"type": "float", "amplitude": 8, "dx": -80, "dy": 260, "duration": 7000}, "liście opadają")
        if noc:
            add("swietliki", 0, 470, 390, 300, [f'<circle cx="{rnd.uniform(10, 380):.0f}" cy="{rnd.uniform(480, 760):.0f}" r="2" fill="#FFFFFF" stroke="none"/>' for _ in range(8)],
                {"type": "wander", "amplitude": 14, "duration": 5200}, "świetliki", {"noInvert": True})
            add("mgla_dol", -40, 470, 470, 60, [f'<path d="{ribbon(-30, 420, 490, 18, 5)}" fill="{PAPER}" stroke="{ink}" stroke-width="1.2" opacity="0.35"/>'],
                {"type": "drift", "amplitude": 14, "duration": 16000}, "mgła nisko nad ziemią")
        elif rodzaj in ("laka", "droga"):
            from postacie import butterfly
            add("motyl", 200, 560, 30, 24, [butterfly(214, 572, 1.1)], {"type": "wander", "amplitude": 40, "flap": 0.65, "duration": 7400}, "motyl")
            add("trzmiel", 80, 680, 20, 16, [f'<ellipse cx="90" cy="688" rx="5" ry="3.6" fill="{ink}" stroke="none"/><path d="M88 684c-2 -4 2 -6 4 -2M92 684c2 -4 6 -2 2 1" fill="#FFFFFF" stroke="{ink}" stroke-width="0.8"/><path d="M89 688h3" fill="none" stroke="#FFFFFF" stroke-width="1"/>'],
                {"type": "wander", "amplitude": 24, "flap": 0.4, "duration": 5200, "phase": 0.4}, "trzmiel")
        else:
            from common import crow
            add("wrona", 260, 600, 40, 30, [f'<path d="M270 620C268 612 272 606 278 606C282 606 284 610 284 614L290 622L282 620C280 622 274 622 270 620Z" fill="{ink}" stroke="none"/><path d="M276 622v5M279 622v5" fill="none" stroke="{ink}" stroke-width="1"/>'],
                {"type": "sway", "amplitude": 8, "duration": 1400, "anchorX": 0.5, "anchorY": 1}, "wrona dziobie")

    elif rodzaj == "las":
        base = [f'<path d="M-10 {TOP + 6}C80 {TOP} 200 {TOP + 8} 400 {TOP + 2}" fill="none" stroke="{ink}" stroke-width="1"/>']
        for _ in range(26):
            x, y = rnd.uniform(0, 390), rnd.uniform(470, 830)
            base.append(f'<path d="M{x:.0f} {y:.0f}l5 -3M{x + 3:.0f} {y + 2:.0f}l5 -2" fill="none" stroke="{ink}" stroke-width="1"/>')   # igliwie
        base.append(f'<path d="M60 844C80 780 140 760 200 770C240 776 270 760 300 720" fill="none" stroke="{ink}" stroke-width="5"/>')  # korzen
        for _ in range(3):
            base.append(kamien(rnd.uniform(40, 350), rnd.uniform(560, 800), rnd.uniform(10, 18), rnd.uniform(7, 11), ink, "url(#hatch)" if not noc else fill))
        for (x, y) in [(110, 600), (300, 660), (200, 760)]:
            base.append(f'<path d="M{x - 5} {y}c2 -8 8 -8 10 0z" fill="url(#hatchDense)" stroke="{ink}" stroke-width="1"/>')   # szyszki
        base.append(pniak(80, 660, 1.6, ink, fill))
        base = faktura(rnd, ink, 120) + base
        add("baza", -10, TOP - 10, 410, 844 - TOP + 10, base, comment="ściółka: igliwie, korzeń, kamienie, szyszki, pniak")
        add("mech", -10, 740, 410, 104, [f'<path d="M-10 844V780C40 760 90 790 140 770C200 750 260 790 320 766C350 756 380 770 400 764V844Z" fill="url(#hatchDense)" stroke="{ink}" stroke-width="1.6"/>'] +
            [paproc(round(x), 850, h, lean, ink, fill) for x, h, lean in [(120, 110, 20), (200, 90, -16), (270, 120, 24)]],
            {"type": "sway", "amplitude": 1, "duration": 4400, "anchorX": 0.5, "anchorY": 1}, "mech i niskie paprocie przy dolnej krawędzi")
        add("klod", -10, 560, 410, 90, [f'<path d="M-10 600C80 590 220 586 330 600L336 626C220 618 80 620 -10 630Z" fill="url(#hatch)" stroke="{ink}" stroke-width="2.4"/>',
                                        f'<ellipse cx="333" cy="613" rx="8" ry="13" fill="#FFFFFF" stroke="{ink}" stroke-width="2"/><ellipse cx="333" cy="613" rx="4" ry="6" fill="none" stroke="{ink}" stroke-width="1"/>',
                                        f'<path d="M80 594c4 -10 12 -14 16 -6M200 590c2 -8 10 -10 12 -2" fill="none" stroke="{ink}" stroke-width="1.6"/>'], None, "zwalona kłoda porośnięta mchem")
        add("grzyby", 120, 620, 220, 140, [grzyb(150, 700, 1.4, ink, fill, red=True), grzyb(176, 708, 1.0, ink, fill), grzyb(300, 740, 1.6, ink, fill), grzyb(320, 748, 1.1, ink, fill, red=True)],
            None, "grzyby (muchomory)")
        ferns = [paproc(x, 850, h, lean, ink, fill) for x, h, lean in [(10, 230, 50), (40, 180, 70)]]
        add("paproc_l", -20, 600, 170, 250, ferns, {"type": "sway", "amplitude": 2.5, "duration": 3600, "anchorX": 0.2, "anchorY": 1}, "paprocie w lewym rogu")
        ferns = [paproc(x, 850, h, lean, ink, fill) for x, h, lean in [(380, 240, -60), (350, 170, -30)]]
        add("paproc_p", 240, 590, 170, 260, ferns, {"type": "sway", "amplitude": 2.5, "duration": 4000, "anchorX": 0.8, "anchorY": 1, "phase": 0.4}, "paprocie w prawym rogu")
        for s in range(2):
            add(f"trawa_{s}", -20, 470 + s * 160, 430, 170, [kepa(round(rnd.uniform(0, 390)), round(rnd.uniform(500 + s * 160, 620 + s * 160)), rnd.uniform(1.0, 1.6), ink) for _ in range(10)],
                {"type": "sway", "amplitude": 2, "duration": 3200 + s * 500, "anchorX": 0.5, "anchorY": 1}, "trawa w ściółce")
        if noc:
            add("oczy", 230, 520, 40, 14, [f'<ellipse cx="240" cy="527" rx="3" ry="2" fill="#FFFFFF" stroke="none"/><ellipse cx="254" cy="526" rx="3" ry="2" fill="#FFFFFF" stroke="none"/>'],
                {"type": "blink", "duration": 5200}, "oczy w ciemności (mrugają)", {"noInvert": True})
            add("mgla_dol", -40, 480, 470, 60, [f'<path d="{ribbon(-30, 420, 500, 18, 5)}" fill="{PAPER}" stroke="{ink}" stroke-width="1.2" opacity="0.35"/>'],
                {"type": "drift", "amplitude": 14, "duration": 16000}, "mgła nad ściółką")
        else:
            add("igly", 0, 440, 390, 120, [f'<path d="M{rnd.uniform(0, 390):.0f} {rnd.uniform(450, 540):.0f}l5 -3" fill="none" stroke="{ink}" stroke-width="1.2"/>' for _ in range(10)],
                {"type": "float", "amplitude": 6, "dx": 40, "dy": 300, "duration": 8000}, "igły spadają")
            add("zuk", 200, 780, 20, 14, [f'<ellipse cx="210" cy="788" rx="6" ry="4" fill="{ink}" stroke="none"/><path d="M204 786l-3 -2M216 786l3 -2M206 791l-2 3M214 791l2 3" fill="none" stroke="{ink}" stroke-width="1"/>'],
                {"type": "drift", "amplitude": 40, "duration": 9000}, "żuk wędruje po ściółce")

    elif rodzaj in ("woda", "bagno"):
        base = []
        if rodzaj == "woda":
            # piaszczysty brzeg (jezioro jest w scenie powyzej): drobny piasek, wydmuszki, slady fal
            for _ in range(70):
                x, y = rnd.uniform(0, 390), rnd.uniform(TOP + 10, 830)
                base.append(f'<circle cx="{x:.0f}" cy="{y:.0f}" r="{0.6 + pk(y) * 0.3:.1f}" fill="{ink}"/>')
            for y0 in (TOP + 20, TOP + 44):
                base.append(f'<path d="M-10 {y0}C60 {y0 - 6} 140 {y0 + 6} 220 {y0 - 2}S340 {y0 - 8} 400 {y0}" fill="none" stroke="{ink}" stroke-width="1" stroke-dasharray="14 6"/>')
        else:
            for (px, py, rx) in [(80, 520, 70), (300, 580, 80), (160, 700, 90), (340, 760, 50)]:
                base.append(f'<ellipse cx="{px}" cy="{py}" rx="{rx}" ry="{rx * 0.16:.0f}" fill="{ink if not noc else "#000000"}" stroke="{ink}" stroke-width="1.6"/>')
                base.append(f'<path d="M{px - rx * 0.5:.0f} {py - 2}h{rx * 0.3:.0f}" fill="none" stroke="#FFFFFF" stroke-width="1.4"/>')
            for _ in range(10):
                x, y = rnd.uniform(0, 390), rnd.uniform(480, 830)
                base.append(f'<path d="M{x - 10:.0f} {y:.0f}c4 -6 16 -6 20 0" fill="url(#hatchDense)" stroke="{ink}" stroke-width="1"/>')   # kepy
        base = faktura(rnd, ink, 80, 570 if rodzaj == "woda" else TOP + 10) + base
        add("baza", -10, TOP - 10, 410, 844 - TOP + 10, base, comment="woda, piasek / czarne oczka bagna, kępy")
        add("gaszcz", -10, 700, 410, 144, gaszcz(ink, fill, 770, seed=7), {"type": "sway", "amplitude": 1, "duration": 4200, "anchorX": 0.5, "anchorY": 1}, "trawa przy dolnej krawędzi")
        if rodzaj == "woda":
            peb = []
            for _ in range(24):
                yy = rnd.uniform(580, 760)
                k = pk(yy)
                peb.append(f'<ellipse cx="{rnd.uniform(10, 380):.0f}" cy="{yy:.0f}" rx="{3 * k:.1f}" ry="{2 * k:.1f}" fill="{fill}" stroke="{ink}" stroke-width="1"/>')
            peb.append(f'<path d="M60 640c4 -8 14 -8 18 0z" fill="#FFFFFF" stroke="{ink}" stroke-width="1"/><path d="M64 640l5 -6M69 640v-7M74 640l-3 -6" fill="none" stroke="{ink}" stroke-width="0.7"/>')
            peb.append(f'<path d="M150 700L290 660L296 676L156 716Z" fill="url(#hatch)" stroke="{ink}" stroke-width="2"/>')        # wyrzucony konar
            add("kamyki", -10, 560, 410, 220, peb, None, "kamyki, muszla i wyrzucony konar na piasku")
        else:
            kp = []
            for _ in range(16):
                yy = rnd.uniform(480, 740)
                k = pk(yy)
                x = rnd.uniform(0, 390)
                kp.append(f'<path d="M{x - 12 * k:.0f} {yy:.0f}c{4 * k:.0f} {-8 * k:.0f} {20 * k:.0f} {-8 * k:.0f} {24 * k:.0f} 0" fill="url(#hatchDense)" stroke="{ink}" stroke-width="1"/>')
                kp.append(reeds(round(x), round(yy - 2), k))
            kp.append(f'<path d="M100 640L300 610L304 624L104 656Z" fill="#FFFFFF" stroke="{ink}" stroke-width="2"/>'
                      + "".join(f'<path d="M{130 + i * 30} {652 - i * 4}h10" fill="none" stroke="{ink}" stroke-width="2"/>' for i in range(6)))   # zbutwiala brzoza
            add("kepy", -10, 460, 410, 300, kp, None, "kępy turzycy i zbutwiała brzoza w bagnie")
        rings = [f'<ellipse cx="80" cy="520" rx="{r}" ry="{r * 0.3:.0f}" fill="none" stroke="#FFFFFF" stroke-width="1.3"/>' for r in (8, 16)]
        if rodzaj == "bagno":
            add("kregi", 60, 510, 40, 20, rings, {"type": "ripple", "amplitude": 1.4, "duration": 2600, "anchorX": 0.5, "anchorY": 0.5}, "kręgi na wodzie")
        else:
            add("mewa", 260, 470, 30, 20, [f'<path d="M262 482q7 -8 14 0q7 -8 14 0" fill="none" stroke="{ink}" stroke-width="1.6"/>'],
                {"type": "wander", "amplitude": 50, "flap": 0.4, "duration": 8000}, "rybitwa nad brzegiem")
        add("szuwar_l", -20, 560, 150, 290, [szuwar(x, 850, h, lean, ink) for x, h, lean in [(4, 260, 20), (20, 220, 40), (34, 180, 8), (-4, 280, 50)]],
            {"type": "sway", "amplitude": 2.5, "duration": 3400, "anchorX": 0.2, "anchorY": 1}, "pałki i trzciny w lewym rogu")
        add("szuwar_p", 260, 560, 150, 290, [szuwar(x, 850, h, lean, ink) for x, h, lean in [(386, 250, -30), (370, 200, -10), (392, 290, -50)]],
            {"type": "sway", "amplitude": 2.5, "duration": 3800, "anchorX": 0.8, "anchorY": 1, "phase": 0.3}, "pałki i trzciny w prawym rogu")
        add("trzciny_mid", 60, 600, 270, 230, [reeds(round(rnd.uniform(70, 320)), round(rnd.uniform(640, 820)), 1.6) for _ in range(12)],
            {"type": "sway", "amplitude": 3, "duration": 2800, "anchorX": 0.5, "anchorY": 1}, "trzciny")
        dragon = (f'<path d="M180 640h22" fill="none" stroke="{ink}" stroke-width="1.6"/><ellipse cx="186" cy="636" rx="6" ry="2" fill="#FFFFFF" stroke="{ink}" stroke-width="0.8"/>'
                  f'<ellipse cx="186" cy="644" rx="6" ry="2" fill="#FFFFFF" stroke="{ink}" stroke-width="0.8"/><ellipse cx="194" cy="637" rx="5" ry="1.6" fill="#FFFFFF" stroke="{ink}" stroke-width="0.8"/>')
        if noc:
            add("ogniki", 40, 520, 310, 200, [f'<circle cx="{x}" cy="{y}" r="2.6" fill="#FFFFFF" stroke="none"/>' for x, y in [(70, 560), (220, 600), (320, 680)]],
                {"type": "flicker", "amplitude": 0.1, "duration": 2200}, "błędne ogniki nad bagnem", {"noInvert": True})
            add("mgla_dol", -40, 480, 470, 60, [f'<path d="{ribbon(-30, 420, 500, 18, 5)}" fill="{PAPER}" stroke="{ink}" stroke-width="1.2" opacity="0.4"/>'],
                {"type": "drift", "amplitude": 14, "duration": 15000}, "mgła nad wodą")
        else:
            add("wazka", 170, 626, 40, 24, [dragon], {"type": "wander", "amplitude": 50, "flap": 0.5, "duration": 6400}, "ważka")
            add("zaba", 100, 700, 30, 20, [f'<path d="M104 716c0 -8 6 -12 12 -12c6 0 10 4 10 12z" fill="{ink if not noc else fill}" stroke="{ink}" stroke-width="1"/><circle cx="110" cy="706" r="2" fill="#FFFFFF" stroke="{ink}" stroke-width="0.6"/><circle cx="120" cy="706" r="2" fill="#FFFFFF" stroke="{ink}" stroke-width="0.6"/>'],
                {"type": "bob", "amplitude": 2, "duration": 1600}, "żaba na kępie")

    elif rodzaj == "snieg":
        base = []
        for i in range(5):
            y0 = 470 + i * 80
            base.append(f'<path d="M-10 {y0}C80 {y0 - 14} 160 {y0 + 10} 240 {y0 - 6}S360 {y0 - 12} 400 {y0}" fill="none" stroke="{"#000000" if not noc else "#000000"}" stroke-width="1.4"/>')
        for x in range(30, 380, 46):
            base.append(f'<path d="M{x} 600l-3 -14M{x + 4} 600l2 -16M{x + 8} 600l5 -10" fill="none" stroke="#000000" stroke-width="1.4"/>')   # suche zdzbla spod sniegu
        for i in range(8):
            x, y = 120 + i * 18 + (i % 2) * 8, 840 - i * 46
            base.append(f'<ellipse cx="{x}" cy="{y}" rx="4" ry="8" fill="url(#hatchDense)" stroke="#000000" stroke-width="1"/>')   # slady
        base.append(f'<path d="M300 760l-6 -6M300 760l0 -8M300 760l6 -6M320 730l-6 -6M320 730l0 -8M320 730l6 -6" fill="none" stroke="#000000" stroke-width="1"/>')  # ptasie slady
        add("baza", -10, TOP - 10, 410, 844 - TOP + 10, [f'<path d="M-10 {TOP}H400V844H-10Z" fill="#FFFFFF" stroke="none"/>'] + base, comment="śnieżne zaspy, suche źdźbła, ślady")
        fence = ['<path d="M-10 560H400M-10 584H400" fill="none" stroke="#000000" stroke-width="3"/>']
        for x in range(0, 400, 34):
            fence.append(f'<path d="M{x - 6} 610V540L{x} 530L{x + 6} 540V610Z" fill="{PAPER}" stroke="#000000" stroke-width="2"/><path d="M{x - 8} 536C{x - 6} 524 {x + 6} 524 {x + 8} 536Z" fill="#FFFFFF" stroke="#000000" stroke-width="1.2"/>')
        fence.append('<path d="M-10 556H400" fill="none" stroke="#FFFFFF" stroke-width="4"/>')
        add("plot", -10, 520, 410, 100, fence, None, "płot w czapach śniegu")
        sled = ('<path d="M230 720H330M226 712C226 724 236 728 246 728H330C338 728 340 720 336 716" fill="none" stroke="#000000" stroke-width="2.6"/>'
                '<path d="M240 712H320V700H240Z" fill="url(#hatch)" stroke="#000000" stroke-width="1.6"/><path d="M250 712v16M310 712v16" fill="none" stroke="#000000" stroke-width="2"/>')
        add("sanki", 220, 690, 130, 44, [sled, pniak(110, 700, 2.0, "#000000", PAPER), '<path d="M80 646C90 638 130 638 140 646Z" fill="#FFFFFF" stroke="#000000" stroke-width="1.4"/>'], None, "sanki i pniak w śniegu")
        weeds = []
        for x, h in [(40, 150), (80, 120), (300, 160), (350, 130), (180, 100)]:
            weeds.append(f'<path d="M{x} 850L{x + 4} {850 - h}M{x + 2} {850 - h * 0.6:.0f}l-14 -16M{x + 3} {850 - h * 0.8:.0f}l12 -12" fill="none" stroke="#000000" stroke-width="2.4"/>'
                         f'<circle cx="{x + 4}" cy="{850 - h}" r="6" fill="url(#hatchDense)" stroke="#000000" stroke-width="1.4"/><path d="M{x - 3} {846 - h}c4 -4 10 -4 14 0" fill="none" stroke="#FFFFFF" stroke-width="3"/>')
        weeds.append('<path d="M-10 844V800C60 784 120 806 200 790C270 778 330 800 400 788V844Z" fill="#FFFFFF" stroke="#000000" stroke-width="1.6"/>')
        add("osty", -10, 660, 410, 184, weeds, {"type": "sway", "amplitude": 1.5, "duration": 4400, "anchorX": 0.5, "anchorY": 1}, "suche osty i zaspa przy dolnej krawędzi")
        add("iskry", 0, 470, 390, 360, [f'<path d="M{x - 3:.0f} {y:.0f}h6M{x:.0f} {y - 3:.0f}v6" fill="none" stroke="#000000" stroke-width="1"/>' for x, y in [(rnd.uniform(5, 385), rnd.uniform(480, 820)) for _ in range(16)]],
            {"type": "flicker", "amplitude": 0.15, "duration": 2400}, "śnieg skrzy się")
        add("platki", 0, 440, 390, 400, [f'<circle cx="{rnd.uniform(0, 390):.0f}" cy="{rnd.uniform(440, 640):.0f}" r="{rnd.uniform(1.4, 2.6):.1f}" fill="#FFFFFF" stroke="#000000" stroke-width="0.8"/>' for _ in range(20)],
            {"type": "rise", "amplitude": -200, "duration": 8000}, "płatki śniegu")
        add("krzak_l", -20, 600, 140, 250, [f'<path d="M20 850C24 790 10 740 -10 700M20 850C30 780 60 750 90 730M20 850C36 800 50 760 40 700" fill="none" stroke="#000000" stroke-width="3"/>',
                                           f'<path d="M-10 700c6 -4 12 -4 16 0M90 730c6 -4 12 -2 14 2M40 700c4 -4 10 -4 12 0" fill="none" stroke="#FFFFFF" stroke-width="4"/>'],
            {"type": "sway", "amplitude": 1.5, "duration": 4400, "anchorX": 0.2, "anchorY": 1}, "nagi krzak w czapie śniegu")
        if noc:
            add("cien_nocy", 0, TOP, 390, 844 - TOP, ['<rect x="0" y="446" width="390" height="398" fill="url(#hatch)" stroke="none" opacity="0.35"/>'], None, "nocny cień na śniegu")

    elif rodzaj in ("izba", "piwnica"):
        floor = deski_podlogi(noc, ink) if rodzaj == "izba" else [f'<path d="M-10 {TOP}H400V844H-10Z" fill="url(#hatchDense)" stroke="none"/>']
        add("podloga", -10, TOP, 410, 844 - TOP, floor, comment="podłoga z desek" if rodzaj == "izba" else "klepisko piwniczki")
        if rodzaj == "izba":
            rug = [f'<path d="M70 600L320 600L360 780L30 780Z" fill="{fill}" stroke="{ink}" stroke-width="2"/>']
            for i, yy in enumerate(range(620, 780, 22)):
                c = RED if i % 3 == 1 else ink
                x0 = 70 - (yy - 600) * 40 / 180
                x1 = 320 + (yy - 600) * 40 / 180
                rug.append(f'<path d="M{x0:.0f} {yy}H{x1:.0f}" fill="none" stroke="{c}" stroke-width="{3 if c == RED else 1.6}"/>')
            add("chodnik", 20, 590, 350, 200, rug, None, "pasiasty chodnik na podłodze")
            things = [f'<path d="M14 520h70v12h-70zM20 532v70M78 532v70M20 580h58" fill="{fill}" stroke="{ink}" stroke-width="2.4"/>',            # zydel
                      f'<path d="M-10 640h60v14h-60zM40 654v90" fill="{fill}" stroke="{ink}" stroke-width="2.4"/>',                                  # lawa przy scianie
                      f'<path d="M280 770c0 -26 70 -26 70 0v40c0 10 -70 10 -70 0z" fill="url(#hatch)" stroke="{ink}" stroke-width="2"/><path d="M276 770h78M276 800h78" fill="none" stroke="{ink}" stroke-width="2.4"/>',  # wiadro
                      f'<path d="M20 520h44v8h-44zM24 528v40M60 528v40" fill="none" stroke="none"/>',
                      f'<path d="M300 520c0 -16 40 -16 40 0v20c0 8 -40 8 -40 0z" fill="url(#hatch)" stroke="{ink}" stroke-width="1.8"/>',            # ceber
                      f'<path d="M296 520h48" fill="none" stroke="{ink}" stroke-width="2"/>',
                      f'<path d="M352 470L372 600M360 600c-6 10 0 20 14 22c10 -4 10 -16 4 -22z" fill="url(#hatchDense)" stroke="{ink}" stroke-width="1.6"/>',  # miotla
                      f'<path d="M90 820c0 -14 50 -14 50 0z" fill="url(#hatch)" stroke="{ink}" stroke-width="1.6"/><path d="M92 812c6 -20 40 -20 46 0" fill="none" stroke="{ink}" stroke-width="1.6"/>',
                      f'<circle cx="106" cy="808" r="5" fill="{RED}" stroke="{ink}" stroke-width="1"/><circle cx="120" cy="806" r="5" fill="{RED}" stroke="{ink}" stroke-width="1"/>']
            add("sprzety", 10, 460, 380, 380, things, None, "stołek, ceber, miotła, kosz z jabłkami")
            cat = (f'<path d="M180 560C172 534 200 520 230 524C256 528 268 546 262 562Z" fill="{ink if not noc else "#000000"}" stroke="{ink}" stroke-width="1.4"/>'
                   f'<path d="M262 552l10 -14l4 16M252 542l6 -15l7 13" fill="{ink if not noc else "#000000"}" stroke="{ink}" stroke-width="1.2"/>')
            add("kot", 170, 516, 110, 50, [cat], {"type": "bob", "amplitude": 0.8, "duration": 2800}, "kot śpi zwinięty")
            add("ogon", 150, 536, 36, 30, [f'<path d="M182 560C164 562 156 548 162 540" fill="none" stroke="{ink}" stroke-width="5"/>'],
                {"type": "sway", "amplitude": 14, "duration": 1800, "anchorX": 1, "anchorY": 1}, "kot rusza ogonem")
            if noc:
                add("oczy_kota", 240, 536, 24, 10, [f'<ellipse cx="246" cy="541" rx="3" ry="2" fill="#FFFFFF" stroke="none"/><ellipse cx="258" cy="541" rx="3" ry="2" fill="#FFFFFF" stroke="none"/>'],
                    {"type": "blink", "duration": 4600}, "oczy kota w ciemności", {"noInvert": True})
            else:
                add("pylki", 60, 460, 280, 300, [f'<circle cx="{rnd.uniform(70, 330):.0f}" cy="{rnd.uniform(470, 750):.0f}" r="1.2" fill="#FFFFFF" stroke="{ink}" stroke-width="0.5"/>' for _ in range(10)],
                    {"type": "wander", "amplitude": 8, "duration": 7000}, "pyłki w świetle")
        else:
            jars = [f'<path d="M60 600c0 -20 30 -20 30 0v30h-30z" fill="{fill}" stroke="{ink}" stroke-width="1.6"/><path d="M300 640c0 -14 24 -14 24 0v24h-24z" fill="{fill}" stroke="{ink}" stroke-width="1.6"/>',
                    "".join(f'<ellipse cx="{150 + i * 16}" cy="{700 + (i % 2) * 6}" rx="7" ry="5" fill="{fill}" stroke="{ink}" stroke-width="1.2"/>' for i in range(6)),
                    f'<path d="M0 470L60 520M0 500L40 530M20 460L50 520" fill="none" stroke="{ink}" stroke-width="0.8"/>']
            jars += [f'<path d="M-10 560H160M-10 566H160" fill="none" stroke="{ink}" stroke-width="3"/>',
                     "".join(f'<path d="M{10 + i * 34} 560c0 -24 26 -24 26 0z" fill="{fill}" stroke="{ink}" stroke-width="1.6"/>' for i in range(4)),
                     "".join(f'<ellipse cx="{rnd.uniform(40, 360):.0f}" cy="{rnd.uniform(740, 830):.0f}" rx="12" ry="8" fill="{fill}" stroke="{ink}" stroke-width="1.4"/>' for _ in range(10)),
                     f'<path d="M250 600L390 560M260 640L390 610" fill="none" stroke="{ink}" stroke-width="4"/>',
                     f'<path d="M320 470C330 520 300 560 320 610C340 660 310 700 330 760" fill="none" stroke="{ink}" stroke-width="2.4"/>']
            add("zapasy", -10, 460, 410, 380, jars, None, "półka z garnkami, kartofle, deski i korzeń w piwniczce, pajęczyna")
        add("mysz", 100, 790, 40, 16, [f'<path d="M110 800c2 -6 10 -6 12 0zM110 800l-8 3" fill="{ink if not noc else "#000000"}" stroke="{ink}" stroke-width="1"/>'],
            {"type": "drift", "amplitude": 60, "duration": 9000}, "mysz przemyka po podłodze")
        if noc:
            add("blask", 80, TOP, 230, 300, [f'<path d="M140 {TOP}L240 {TOP}L300 740L80 740Z" fill="#FFFFFF" stroke="none" opacity="0.12"/>'],
                {"type": "flicker", "amplitude": 0.6, "duration": 6000}, "blask księżyca na podłodze")

    elif rodzaj == "miasto":
        base = []
        for r in range(10):
            y = 470 + r * 38
            for c in range(12):
                x = c * 36 + (r % 2) * 18 - 10
                base.append(f'<path d="M{x} {y}h30c4 0 6 4 6 8v18c0 4 -2 8 -6 8h-30c-4 0 -6 -4 -6 -8v-18c0 -4 2 -8 6 -8z" fill="{fill}" stroke="{ink}" stroke-width="1.2"/>')
        base.append(f'<ellipse cx="260" cy="700" rx="60" ry="12" fill="url(#water)" stroke="{ink}" stroke-width="1.6"/>')
        base.append(f'<path d="M80 600c10 -6 22 -6 30 0c-6 6 -22 8 -30 0z" fill="#FFFFFF" stroke="{ink}" stroke-width="1"/>')
        add("bruk", -10, TOP, 410, 844 - TOP, base, comment="bruk z kocich łbów, kałuża, liść kapusty")
        add("rzeczy", -10, 480, 410, 360, [kolo_wozu(40, 560, 46, ink, fill),
                                          f'<path d="M300 520C296 560 296 600 300 640H370C374 600 374 560 370 520Z" fill="{fill}" stroke="{ink}" stroke-width="2.4"/><path d="M298 548H372M296 612H374" fill="none" stroke="{ink}" stroke-width="3"/>',
                                          f'<path d="M120 800c10 -16 40 -16 50 0c-10 10 -40 10 -50 0z" fill="#FFFFFF" stroke="{ink}" stroke-width="1.4"/><path d="M145 800v-12" fill="none" stroke="{ink}" stroke-width="1"/>'],
            None, "koło od wozu, beczka, liście kapusty")
        add("kaluza", 200, 690, 120, 24, [f'<path d="M220 700h20M270 704h24" fill="none" stroke="#FFFFFF" stroke-width="1.4"/>'],
            {"type": "drift", "amplitude": 4, "duration": 3000}, "zmarszczki na kałuży")
        pig = (f'<path d="M150 760C148 750 154 744 162 744C168 744 172 748 172 754L180 760L170 760C166 764 156 764 150 760Z" fill="{fill}" stroke="{ink}" stroke-width="1.2"/>'
               f'<path d="M160 762v6M164 762v6" fill="none" stroke="{ink}" stroke-width="1"/><circle cx="168" cy="750" r="0.9" fill="{ink}"/>')
        add("golab_0", 140, 740, 44, 32, [pig], {"type": "sway", "amplitude": 10, "duration": 1200, "anchorX": 0.5, "anchorY": 1}, "gołąb dziobie")
        add("golab_1", 240, 790, 44, 32, [pig.replace("150 760", "250 810").replace("M150", "M250").replace("C148 750 154 744 162 744C168 744 172 748 172 754L180 760L170 760C166 764 156 764 150 760Z", "C248 800 254 794 262 794C268 794 272 798 272 804L280 810L270 810C266 814 256 814 250 810Z").replace("M160 762v6M164 762v6", "M260 812v6M264 812v6").replace('cx="168" cy="750"', 'cx="268" cy="800"')],
            {"type": "sway", "amplitude": 10, "duration": 1500, "anchorX": 0.5, "anchorY": 1, "phase": 0.4}, "gołąb dziobie")
        add("slomki", 0, 460, 390, 380, [f'<path d="M{rnd.uniform(0, 390):.0f} {rnd.uniform(470, 830):.0f}l{rnd.uniform(-8, 8):.0f} -4" fill="none" stroke="{ink}" stroke-width="1"/>' for _ in range(20)],
            None, "rozrzucona słoma")

    elif rodzaj == "popiol":
        base = [f'<path d="M-10 {TOP}H400V844H-10Z" fill="url(#hatch)" stroke="none" opacity="0.4"/>']
        base += [f'<path d="M{x} {y}L{x + 120} {y - 20}L{x + 124} {y - 10}L{x + 4} {y + 10}Z" fill="#000000" stroke="{ink}" stroke-width="1.6"/>' for x, y in [(30, 560), (200, 640), (90, 760)]]
        add("baza", -10, TOP, 410, 844 - TOP, base, comment="popiół i zwęglone belki")
        add("trawa_0", -20, 470, 430, 370, [kepa(round(rnd.uniform(0, 390)), round(rnd.uniform(500, 820)), rnd.uniform(1.0, 1.6), ink) for _ in range(14)],
            {"type": "sway", "amplitude": 2, "duration": 3400, "anchorX": 0.5, "anchorY": 1}, "młoda trawa na pogorzelisku")
        junk = [kamien(300, 700, 26, 16, ink, fill), kamien(60, 640, 18, 12, ink, fill),
                f'<path d="M200 760c0 -24 50 -24 50 0v16h-50z" fill="#000000" stroke="{ink}" stroke-width="2"/><path d="M196 760h58" fill="none" stroke="{ink}" stroke-width="2.4"/>',   # osmalony garnek
                f'<path d="M-10 844V790C60 770 120 800 200 780C270 764 330 790 400 776V844Z" fill="url(#hatchDense)" stroke="{ink}" stroke-width="1.6"/>']
        junk += [wysoka_trawa(round(rnd.uniform(0, 390)), 850, rnd.uniform(60, 120), rnd.uniform(-20, 20), ink, 2.2) for _ in range(20)]
        junk += [kwiat(round(rnd.uniform(20, 370)), round(rnd.uniform(600, 760)), 1.6, ink, "dzwonek") for _ in range(5)]
        add("gruz", -10, 560, 410, 284, junk, {"type": "sway", "amplitude": 1, "duration": 4000, "anchorX": 0.5, "anchorY": 1}, "kamienie, osmalony garnek, chwasty")
        add("dymek", 120, 520, 40, 120, [f'<path d="M140 640C134 620 146 610 138 590C134 580 142 570 138 560" fill="none" stroke="{ink}" stroke-width="3" opacity="0.4"/>'],
            {"type": "sway", "amplitude": 4, "duration": 4800, "anchorX": 0.5, "anchorY": 1}, "dymek z tlącego się drewna")
    return L, order, anim, extra, com


def prefix(rodzaj, noc):
    return f"bg_dol_{rodzaj}{'_noc' if noc else ''}"


# warstwy pominiete w wybranych tlach (np. spiacy kot nie pasuje do izby staruchy ani do walki)
POMIN = {"czary": {"kot", "ogon", "oczy_kota", "chodnik", "sprzety"}, "walka": {"kot", "ogon", "oczy_kota", "chodnik"},
         "szkola_izba": {"kot", "ogon", "chodnik"}, "szkola_podania": {"kot", "ogon", "chodnik"}, "szkola_ksiega": {"kot", "ogon", "chodnik"},
         "stodola_marzanna": {"chodnik", "kot", "ogon"}}


def layers_for(key):
    """Warstwy dolnego planu dla tla (lista slownikow jak w backgrounds.json) albo [] gdy tla nie ma w RODZAJE."""
    if key not in RODZAJE:
        return []
    import bgjson
    rodzaj, noc = RODZAJE[key]
    L, order, anim, extra, com = build(rodzaj, noc)
    order = [n for n in order if n not in POMIN.get(key, set())]
    return bgjson.entry(prefix(rodzaj, noc), order, L, anim, None, extra)


if __name__ == "__main__":
    if sys.argv[1] == "--master":
        noc = len(sys.argv) > 3 and sys.argv[3] == "noc"
        L, order, *_ = build(sys.argv[2], noc)
        bgL = {"tlo": (0, 0, 390, 844, f'<rect width="390" height="844" fill="{PAPER}"/>' + (f'<rect y="440" width="390" height="404" fill="url(#hatchNight)"/>' if noc else ""))}
        bgL.update(L)
        print(master(bgL, ["tlo"] + order))
    else:
        done = set()
        for key, (rodzaj, noc) in RODZAJE.items():
            if (rodzaj, noc) in done:
                continue
            done.add((rodzaj, noc))
            L, order, anim, extra, com = build(rodzaj, noc)
            write_layers(sys.argv[1], prefix(rodzaj, noc), f"dolny plan: {rodzaj}{' nocą' if noc else ''}", L, order, com)
        # doklejenie do wszystkich tel (upsert sam dodaje dolny plan)
        import json, bgjson
        s = open(bgjson.JSON_PATH, encoding="utf-8").read()
        d = json.loads("\n".join(l for l in s.split("\n") if not l.lstrip().startswith("//")))
        bgs = d.get("backgrounds", d)
        for key in RODZAJE:
            if key in bgs:
                bgjson.upsert(key, [l for l in bgs[key]["layers"] if not l["image"].startswith("bg_dol_")])
