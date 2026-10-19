# Dolny plan tel — to, co widac po schowaniu okna z tekstem. Dla kazdego tla osobno:
#   1. ciaglosc.py przedluza w dol ksztalty sceny, ktore dochodza do krawedzi (drogi, brzegi, grunt, podloga) — bez przerwy;
#   2. na tym ozdoby wg rodzaju sceny (laka, las, woda, bagno, pole, droga, jesien, snieg, izba, miasto, popiol, piwnica),
#      stawiane tylko tam, gdzie pod spodem jest pusty grunt (nigdy na drogach i liniach), dzien albo noc.
# W izbach zadnych zwierzat ani sprzetow (fabula ich nie zna). bgjson.upsert dokleja warstwy zaraz za pierwszym planem.
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
    "swiatki": ("laka", False), "jezioro_swiatki": ("woda", True), "rusalki": ("woda", True), "brzeg_noc": ("woda", True),
    "pomost_rano": ("woda", False), "bez_zachod": ("laka", False),
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

IMG_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "src", "LittleVillage", "Resources", "Images")
OUTDOOR = {"laka", "pole", "jesien", "droga", "las", "woda", "bagno", "snieg", "popiol"}


def build_for(key, layers):
    """(L, order, anim, extra, comments) — warstwy dolnego planu konkretnego tla."""
    import ciaglosc
    rodzaj, noc = RODZAJE[key]
    ys, base_items, probe = ciaglosc.continuation(layers, IMG_DIR, interior=rodzaj in ("izba", "piwnica"))
    rnd = random.Random(sum(map(ord, key)))
    L, order, anim, extra, com = {}, [], {}, {}, {}

    def add(name, x, y, w, h, items, a=None, comment="", ex=None):
        if not items:
            return
        L[name] = (x, y, w, h, group(items))
        order.append(name)
        if a:
            anim[name] = a
        ex = dict(ex or {})
        ex.setdefault("depth", 1.0)
        extra[name] = ex
        com[name] = comment

    y0 = int(ys) - 9
    add("ciag", -10, y0, 410, 844 - y0 + 4, base_items, None, "przedłużenie sceny w dół (drogi, grunt, podłoga) — bez przerwy")

    def spots(n, y_lo, y_hi, kinds, margin=0, tries=12):
        out = []
        for _ in range(n):
            for _ in range(tries):
                x, y = rnd.uniform(4 + margin, 386 - margin), rnd.uniform(max(y_lo, ys + 14), y_hi)
                k = probe.kind(x, y)
                if k in kinds:
                    out.append((round(x), round(y), k))
                    break
        return out

    def ink_for(k):
        return "#FFFFFF" if k == "dark" else "#000000"

    def fill_for(k):
        return "#000000" if k == "dark" else PAPER

    if rodzaj in OUTDOOR and rodzaj != "snieg":
        ground = {"light", "hatch", "dark"}
        # faktura gruntu tylko na pustym gruncie
        tx = [f'<path d="M{x} {y}l{3 * pk(y):.1f} {-1.5 * pk(y):.1f}" fill="none" stroke="{ink_for(k)}" stroke-width="{0.6 + 0.15 * pk(y):.1f}"/>'
              for x, y, k in spots(150, ys, 840, {"light", "dark"})]
        add("faktura", -10, y0, 410, 844 - y0, tx, None, "drobne kreski ziemi")
        st = [kamien(x, y, 8 * pk(y), 5 * pk(y), ink_for(k), fill_for(k)) for x, y, k in spots(5, ys + 30, 760, ground, 20)]
        add("kamienie", -10, y0, 410, 844 - y0, st, None, "kamienie")
        if rodzaj in ("woda", "bagno"):
            pools = [f'<ellipse cx="{x}" cy="{y}" rx="{18 * pk(y):.0f}" ry="{3.2 * pk(y):.0f}" fill="#000000" stroke="{ink_for(k)}" stroke-width="1.4"/><path d="M{x - 8 * pk(y):.0f} {y - 1}h{6 * pk(y):.0f}" fill="none" stroke="#FFFFFF" stroke-width="1.2"/>'
                     for x, y, k in spots(4 if rodzaj == "bagno" else 0, ys + 30, 720, {"light"}, 40)]
            add("oczka", -10, y0, 410, 844 - y0, pools, None, "czarne oczka wody")
        for s in range(3):
            lo = ys + 10 + s * (840 - ys) / 3
            hi = lo + (840 - ys) / 3
            tufts = [kepa(x, y, pk(y) * rnd.uniform(0.8, 1.2), ink_for(k)) for x, y, k in spots(14 if rodzaj != "pole" else 9, lo, hi, ground)]
            add(f"trawa_{s}", -30, int(lo) - 50, 450, int(hi - lo) + 60, tufts,
                {"type": "sway", "amplitude": 2.5, "duration": 3000 + s * 400, "anchorX": 0.5, "anchorY": 1, "phase": round(s * 0.2, 2)}, "kępy trawy kołyszą się")
        if rodzaj in ("laka", "droga", "popiol"):
            fl = [kwiat(x, y, pk(y) * 0.8, ink_for(k), rnd.choice(["rumianek", "rumianek", "mak", "dzwonek"])) for x, y, k in spots(12, ys + 20, 800, {"light"})]
            add("kwiaty", -20, y0, 430, 844 - y0, fl, {"type": "sway", "amplitude": 3, "duration": 2600, "anchorX": 0.5, "anchorY": 1}, "polne kwiaty")
        if rodzaj in ("woda", "bagno"):
            rd = [reeds(x, y, pk(y) * 0.9) for x, y, k in spots(12, ys + 20, 800, {"light", "hatch", "water"})]
            add("trzciny", -20, y0, 430, 844 - y0, rd, {"type": "sway", "amplitude": 3, "duration": 2800, "anchorX": 0.5, "anchorY": 1}, "trzciny")
        if rodzaj == "las":
            fn = [paproc(x, y, 50 * pk(y), rnd.uniform(-20, 20), ink_for(k), fill_for(k)) for x, y, k in spots(4, ys + 60, 820, {"light", "dark", "hatch"}, 30)]
            add("paprocie", -30, y0 - 120, 450, 844 - y0 + 120, fn, {"type": "sway", "amplitude": 2, "duration": 3800, "anchorX": 0.5, "anchorY": 1}, "paprocie")
            mu = [grzyb(x, y, pk(y) * 0.7, ink_for(k), fill_for(k), red=(i % 2 == 0)) for i, (x, y, k) in enumerate(spots(3, ys + 40, 780, {"light", "dark"}, 30))]
            add("grzyby", -10, y0, 410, 844 - y0, mu, None, "grzyby")
        if rodzaj == "jesien":
            lv = [f'<g transform="rotate({rnd.uniform(0, 360):.0f} {x} {y})"><path d="M{x - 6} {y}C{x - 3} {y - 4} {x + 3} {y - 4} {x + 7} {y}C{x + 3} {y + 4} {x - 3} {y + 4} {x - 6} {y}Z" fill="#FFFFFF" stroke="#000000" stroke-width="1.2"/></g>'
                  for x, y, k in spots(14, ys + 10, 830, {"light", "hatch"})]
            add("liscie_lezace", -10, y0, 410, 844 - y0, lv, None, "opadłe liście")
        # wysokie zdzbla w rogach, tylko gdy rog jest pustym gruntem
        for side, xs, nm in (("l", (4, 16, 26, -6), "rog_l"), ("p", (386, 374, 394, 362), "rog_p")):
            k = probe.kind(xs[0], 820)
            if k in ("light", "dark", "hatch"):
                lean = 1 if side == "l" else -1
                corner = [wysoka_trawa(x, 850, h, lean * l, ink_for(k), 3.0) for x, h, l in zip(xs, (240, 200, 170, 280), (30, 50, 10, 60))]
                add(nm, -20 if side == "l" else 270, 560, 140, 290, corner,
                    {"type": "sway", "amplitude": 2, "duration": 3800 if side == "l" else 4200, "anchorX": 0.2 if side == "l" else 0.8, "anchorY": 1}, "wysokie źdźbła w rogu")
        if noc:
            fl = [f'<circle cx="{x}" cy="{y}" r="2" fill="#FFFFFF" stroke="none"/>' for x, y, k in spots(7, ys + 20, 760, {"light", "dark", "hatch", "water"})]
            add("swietliki", 0, y0, 390, 844 - y0, fl, {"type": "wander", "amplitude": 14, "duration": 5200}, "świetliki", {"noInvert": True})
        elif rodzaj in ("laka", "droga", "pole"):
            from postacie import butterfly
            pt = spots(1, ys + 60, 640, {"light"})
            if pt:
                x, y, _ = pt[0]
                add("motyl", x - 14, y - 12, 30, 24, [butterfly(x, y, 1.1)], {"type": "wander", "amplitude": 40, "flap": 0.65, "duration": 7400}, "motyl")
        elif rodzaj in ("woda", "bagno"):
            pt = spots(1, ys + 60, 640, {"light", "water", "hatch"})
            if pt:
                x, y, _ = pt[0]
                dragon = (f'<path d="M{x - 10} {y}h22" fill="none" stroke="#000000" stroke-width="1.6"/><ellipse cx="{x - 4}" cy="{y - 4}" rx="6" ry="2" fill="#FFFFFF" stroke="#000000" stroke-width="0.8"/>'
                          f'<ellipse cx="{x - 4}" cy="{y + 4}" rx="6" ry="2" fill="#FFFFFF" stroke="#000000" stroke-width="0.8"/>')
                add("wazka", x - 14, y - 10, 40, 20, [dragon], {"type": "wander", "amplitude": 50, "flap": 0.5, "duration": 6400}, "ważka")

    elif rodzaj == "snieg":
        sp = [f'<path d="M{x - 3} {y}h6M{x} {y - 3}v6" fill="none" stroke="{ink_for(k)}" stroke-width="1"/>' for x, y, k in spots(18, ys + 10, 830, {"light", "dark", "hatch"})]
        add("iskry", 0, y0, 390, 844 - y0, sp, {"type": "flicker", "amplitude": 0.15, "duration": 2400}, "śnieg skrzy się")
        weeds = []
        for x, y, k in spots(8, ys + 30, 830, {"light", "hatch"}):
            h = 26 * pk(y)
            weeds.append(f'<path d="M{x} {y}L{x + 2} {y - h:.0f}M{x + 1} {y - h * 0.6:.0f}l-7 -8M{x + 1} {y - h * 0.8:.0f}l6 -6" fill="none" stroke="#000000" stroke-width="{1.2 + 0.2 * pk(y):.1f}"/>')
        add("osty", -10, y0, 410, 844 - y0, weeds, {"type": "sway", "amplitude": 1.5, "duration": 4400, "anchorX": 0.5, "anchorY": 1}, "suche osty spod śniegu")
        add("platki", 0, y0, 390, 844 - y0, [f'<circle cx="{rnd.uniform(0, 390):.0f}" cy="{rnd.uniform(ys, ys + 200):.0f}" r="{rnd.uniform(1.4, 2.6):.1f}" fill="#FFFFFF" stroke="#000000" stroke-width="0.8"/>' for _ in range(18)],
            {"type": "rise", "amplitude": -(844 - ys - 160), "duration": 8000}, "płatki śniegu")

    elif rodzaj == "miasto":
        tx = [f'<path d="M{x} {y}l{3 * pk(y):.1f} {-1.5 * pk(y):.1f}" fill="none" stroke="{ink_for(k)}" stroke-width="{0.6 + 0.15 * pk(y):.1f}"/>'
              for x, y, k in spots(130, ys, 840, {"light", "dark"})]
        add("faktura", -10, y0, 410, 844 - y0, tx, None, "błoto i grudy ziemi")
        cob = [f'<path d="M{x - 5 * pk(y):.0f} {y}c0 {-3 * pk(y):.1f} {10 * pk(y):.0f} {-3 * pk(y):.1f} {10 * pk(y):.0f} 0z" fill="{fill_for(k)}" stroke="{ink_for(k)}" stroke-width="1"/>'
               for x, y, k in spots(26, ys + 10, 830, {"light", "dark"})]
        add("kocie_lby", -10, y0, 410, 844 - y0, cob, None, "wystające z błota kocie łby")
        pud = [f'<ellipse cx="{x}" cy="{y}" rx="{16 * pk(y):.0f}" ry="{3 * pk(y):.0f}" fill="url(#water)" stroke="#000000" stroke-width="1.2"/>' for x, y, k in spots(3, ys + 40, 760, {"light"}, 40)]
        add("kaluze", -10, y0, 410, 844 - y0, pud, None, "kałuże")
        straw = [f'<path d="M{x} {y}l{rnd.uniform(-8, 8) * pk(y) / 2:.1f} {-3 * pk(y) / 2:.1f}" fill="none" stroke="#000000" stroke-width="1"/>' for x, y, k in spots(20, ys + 10, 830, {"light"})]
        add("sloma", -10, y0, 410, 844 - y0, straw, None, "rozrzucona słoma")

    else:   # izba, piwnica — tylko spokojne szczegoly na podlodze, zadnych zwierzat ani sprzetow
        bits = []
        for x, y, k in spots(16, ys + 10, 830, {"light", "hatch", "dark", "line"}):
            if k == "line":     # deski podlogi to tylko faktura — kolor wg wypelnienia pod spodem
                f_, o_ = probe.fill_at(x, y)
                k = "dark" if f_ in ("#000000", "url(#hatchNight)") else "light"
            bits.append(f'<path d="M{x} {y}l{rnd.uniform(-6, 6) * pk(y) / 2:.1f} {-2 * pk(y) / 2:.1f}" fill="none" stroke="{ink_for(k)}" stroke-width="1.2"/>')   # zdzbla slomy / drzazgi
        add("drobiazgi", -10, y0, 410, 844 - y0, bits, None, "źdźbła słomy, drzazgi na podłodze")
        if not noc and rodzaj == "izba":
            add("pylki", 60, y0, 280, 300, [f'<circle cx="{rnd.uniform(70, 330):.0f}" cy="{rnd.uniform(ys + 10, ys + 280):.0f}" r="1.2" fill="#FFFFFF" stroke="#000000" stroke-width="0.5"/>' for _ in range(10)],
                {"type": "wander", "amplitude": 8, "duration": 7000}, "pyłki w świetle")
    return L, order, anim, extra, com


def prefix_for(key):
    return f"bg_dol_{key}"


def layers_for(key, layers=None):
    """Warstwy dolnego planu dla tla (slowniki jak w backgrounds.json) albo [] gdy tla nie ma w RODZAJE."""
    if key not in RODZAJE or layers is None:
        return []
    import bgjson
    L, order, anim, extra, com = build_for(key, layers)
    write_layers(IMG_DIR, prefix_for(key), f"dolny plan: {key}", L, order, com, quiet=True)
    return bgjson.entry(prefix_for(key), order, L, anim, None, extra)


if __name__ == "__main__":
    # ponowne zapisanie wszystkich tel z RODZAJE (upsert sam przelicza dolny plan)
    import json, bgjson, glob
    for f in glob.glob(os.path.join(IMG_DIR, "bg_dol_*.svg")):
        os.remove(f)
    s = open(bgjson.JSON_PATH, encoding="utf-8").read()
    d = json.loads("\n".join(l for l in s.split("\n") if not l.lstrip().startswith("//")))
    bgs = d.get("backgrounds", d)
    for key in RODZAJE:
        if key in bgs:
            bgjson.upsert(key, [l for l in bgs[key]["layers"] if not l["image"].startswith("bg_dol_")])
