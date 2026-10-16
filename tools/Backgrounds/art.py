# Rysunki dostarczone przez autora (katalog assets/):
#   wilczek.svg  — pies siedzi, wilczek2.svg — pies szczeka z profilu, topielec.svg — stwor z mokradel,
#   wiedzma.svg  — starucha w kapturze z kosturem (patrzy w lewo).
# Wycina tresc rysunku (bez <defs>, korzysta z wspolnych DEFS: filtr "ink", wzory "hatch", "hatchDense")
# i pozwala ja umiescic na plotnie tla dowolnym przeksztalceniem.
import os, re

_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "assets")


def _sections(name):
    """Zwraca (otwarcie glownej grupy, [(komentarz, tresc)]) z pliku rysunku."""
    s = open(os.path.join(_DIR, name), encoding="utf-8").read()
    m = re.search(r'(<g filter="url\(#ink\)"[^>]*>)(.*)</g>\s*</svg>', s, re.S)
    opening, body = m.group(1), m.group(2)
    parts = []
    for sm in re.finditer(r'<!-- (.*?) -->\n(.*?)(?=\n<!--|\Z)', body, re.S):
        parts.append((sm.group(1).strip(), sm.group(2).strip()))
    return opening, parts


def drawing(name, transform, skip=()):
    """Rysunek jako grupa SVG z podanym przeksztalceniem; skip = poczatki komentarzy sekcji do pominiecia."""
    opening, parts = _sections(name)
    # z pominietej sekcji zostaja tylko znaczniki grup — grupa moze sie otwierac w jednej sekcji, a zamykac w innej
    body = "\n".join(p if not any(c.startswith(k) for k in skip) else "\n".join(re.findall(r"<g\b[^>]*>|</g>", p))
                     for (c, p) in parts)
    return f'<g transform="{transform}">\n{opening}\n{body}\n</g>\n</g>'


def sitting(transform, skip=()):
    return drawing("wilczek.svg", transform, skip)


def barking(transform, skip=()):
    return drawing("wilczek2.svg", transform, skip)


def topielec(transform, skip=()):
    """Stwor z mokradel. Uklad rysunku: oko (96,164), paszcza (92,212), stopy na y=582."""
    return drawing("topielec.svg", transform, skip)


def wiedzma(transform, skip=()):
    """Starucha w kapturze. Uklad rysunku: twarz z lewej (~x 80, y 150), stopy/cien na y~496."""
    return drawing("wiedzma.svg", transform, skip)


# ---------- postacie z warstw (assets/postacie/<nazwa>/NN_czesc.svg + _kolejnosc_i_animacje.txt)
# Kazda warstwa ma pelny viewBox postaci; czesc ruchoma ma data-origin (punkt obrotu w ukladzie rysunku).
import math as _math

_POSTACIE = os.path.join(_DIR, "postacie")


def parse_transform(text):
    """Zapis SVG translate/scale/rotate (jak w dotychczasowych generatorach) -> Affine."""
    m = Affine()
    for op, args in re.findall(r"(translate|scale|rotate)\(([^)]*)\)", text):
        v = [float(x) for x in re.split(r"[ ,]+", args.strip())]
        if op == "translate":
            m = m * Affine.translate(v[0], v[1] if len(v) > 1 else 0)
        elif op == "scale":
            m = m * Affine.scale(v[0], v[1] if len(v) > 1 else None)
        else:
            m = m * (Affine.translate(v[1], v[2]) * Affine.rotate(v[0]) * Affine.translate(-v[1], -v[2]) if len(v) == 3 else Affine.rotate(v[0]))
    return m


class Affine:
    """Przeksztalcenie afiniczne a,b,c,d,e,f (jak SVG matrix): x' = a*x + c*y + e, y' = b*x + d*y + f."""

    def __init__(self, a=1, b=0, c=0, d=1, e=0, f=0):
        self.m = (a, b, c, d, e, f)

    def __mul__(self, o):
        a, b, c, d, e, f = self.m
        A, B, C, D, E, F = o.m
        return Affine(a * A + c * B, b * A + d * B, a * C + c * D, b * C + d * D, a * E + c * F + e, b * E + d * F + f)

    @staticmethod
    def translate(x, y=0):
        return Affine(1, 0, 0, 1, x, y)

    @staticmethod
    def scale(sx, sy=None):
        return Affine(sx, 0, 0, sx if sy is None else sy, 0, 0)

    @staticmethod
    def rotate(deg):
        r = _math.radians(deg)
        return Affine(_math.cos(r), _math.sin(r), -_math.sin(r), _math.cos(r), 0, 0)

    def apply(self, x, y):
        a, b, c, d, e, f = self.m
        return a * x + c * y + e, b * x + d * y + f

    def svg(self):
        return "matrix(" + " ".join(f"{v:.5f}" for v in self.m) + ")"


def figure_parts(name):
    """{czesc: (tresc SVG, origin albo None)} w kolejnosci plikow oraz viewBox postaci."""
    folder = os.path.join(_POSTACIE, name)
    parts, viewbox = {}, None
    for fn in sorted(f for f in os.listdir(folder) if f.endswith(".svg")):
        s = open(os.path.join(folder, fn), encoding="utf-8").read()
        viewbox = viewbox or tuple(float(v) for v in re.search(r'viewBox="([^"]+)"', s).group(1).split())
        body = s[s.index("</defs>") + len("</defs>"):s.rindex("</svg>")].strip() if "</defs>" in s else s[s.index(">") + 1:s.rindex("</svg>")]
        o = re.search(r'data-origin="([-\d.]+),([-\d.]+)"', s)
        parts[re.sub(r"^\d+_", "", fn[:-4])] = (body, (float(o.group(1)), float(o.group(2))) if o else None)
    return parts, viewbox


def rig(name, transform, groups, prefix):
    """Postac podzielona na warstwy-grupy. transform: Affine (uklad rysunku -> plotno).
    groups: lista (sufiks, [czesci], animacja albo None, czesc_z_punktem_obrotu albo (x, y)).
    Zwraca liste (nazwa_warstwy, (x, y, w, h, svg), animacja_z_kotwica) — wszystkie warstwy maja ramke calej postaci,
    wiec punkt obrotu z rysunku przelicza sie wprost na kotwice warstwy."""
    parts, (vx, vy, vw, vh) = figure_parts(name)
    corners = [transform.apply(x, y) for x in (vx, vx + vw) for y in (vy, vy + vh)]
    x0, y0 = min(p[0] for p in corners), min(p[1] for p in corners)
    x1, y1 = max(p[0] for p in corners), max(p[1] for p in corners)
    box = (_math.floor(x0), _math.floor(y0), _math.ceil(x1 - x0) + 1, _math.ceil(y1 - y0) + 1)
    out = []
    for suffix, names, anim, pivot in groups:
        body = "\n".join(parts[n][0] for n in names if n in parts)
        svg = (f'<g transform="{transform.svg()}"><g filter="url(#inkWide)" stroke="#000000" stroke-linecap="round" stroke-linejoin="round">\n'
               f'{body}\n</g></g>')
        if anim is not None:
            anim = dict(anim)
            point = parts[pivot][1] if isinstance(pivot, str) else pivot
            if point is not None:
                cx, cy = transform.apply(*point)
                anim["anchorX"] = round((cx - box[0]) / box[2], 3)
                anim["anchorY"] = round((cy - box[1]) / box[3], 3)
        out.append((f"{prefix}_{suffix}", (*box, svg), anim))
    return out


def dog_sitting(transform, prefix, shadow=True):
    """Szczeniak siedzacy: merda ogonem, przechyla glowe."""
    return rig("szczeniak", transform, [
        ("ogon", ["ogon"], {"type": "sway", "amplitude": 15, "duration": 600}, "ogon"),
        ("cialo", (["cien"] if shadow else []) + ["tulow", "lapy_tylne", "lapy_przednie", "futro_na_piersi"], None, None),
        ("glowa", ["uszy", "glowa", "oczy", "pyszczek"], {"type": "sway", "amplitude": 5, "duration": 2500}, "glowa"),
    ], prefix)


def dog_barking(transform, prefix, shadow=True, bark=True, shiver=True, quiet=False):
    """Szczeniak szczekajacy (profil w lewo): ogon drga, glowa szczeka, kreski dzwieku i drzenie migaja.
    quiet=True — pies idzie albo lezy spokojnie: ogon merda wolno, glowa nieruchoma."""
    tail = {"type": "sway", "amplitude": 6, "duration": 900} if quiet else {"type": "sway", "amplitude": 4, "duration": 300}
    head = None if quiet else {"type": "sway", "amplitude": 3, "duration": 300}
    groups = [("ogon", ["ogon"], tail, "ogon"),
              ("tyl", (["cien"] if shadow else []) + ["nogi_dalsze", "tulow"], None, None),
              ("glowa", ["glowa"], head, "glowa"),
              ("przod", ["nogi_blizsze"], None, None)]
    if bark:
        groups.append(("szczekanie", ["szczekanie"], {"type": "flicker", "amplitude": 0, "duration": 300}, None))
    if shiver:
        groups.append(("drzenie", ["drzenie"], {"type": "flicker", "amplitude": 0, "duration": 200}, None))
    return rig("szczeniak_szczeka", transform, groups, prefix)


def topielec_rig(transform, prefix, head=True, shadow=True, scar=False, drops_fall=30):
    """Topielec: ramiona kolysza sie bezwladnie, glowa kiwa (gdy head), krople spadaja."""
    groups = [("tyl", (["cien"] if shadow else []) + ["noga_dalsza"], None, None),
              ("ramie_dalsze", ["ramie_dalsze"], {"type": "sway", "amplitude": 4, "duration": 4000}, "ramie_dalsze"),
              ("tulow", ["tulow", "noga_blizsza"], None, None),
              ("glowa", ["szyja", "wlosy_tyl", "glowa", "wlosy_przod"], {"type": "sway", "amplitude": 4, "duration": 4000, "phase": 0.2} if head else None, "glowa"),
              ("ramie", ["ramie_blizsze"] + (["blizna"] if scar else []), {"type": "sway", "amplitude": 5, "duration": 4000, "phase": 0.5}, "ramie_blizsze"),
              ("wodorosty", ["wodorosty"], None, None),
              ("krople", ["krople"], {"type": "rise", "amplitude": -drops_fall, "duration": 1200}, None)]
    return rig("topielec", transform, groups, prefix)


def wiedzma_rig(transform, prefix, staff=True, shadow=True):
    """Starucha: bystre oko mruga, kostur z dlonia kolysze sie u dolnego konca."""
    groups = [("postac", (["cien"] if shadow else []) + ["plaszcz", "twarz"], None, None),
              ("oczy", ["oczy"], {"type": "blink", "duration": 5600}, None)]
    if staff:
        groups.append(("kostur", ["kostur", "reka"], {"type": "sway", "amplitude": 2, "duration": 3000}, "kostur"))
    return rig("wiedzma", transform, groups, prefix)


def rig_names(rig):
    return [n for n, _, _ in rig]


def expand(seq, old, rig, prefix=None):
    """Zastepuje w liscie warstw nazwe `old` (albo krotke (prefix, old)) warstwami-czesciami postaci."""
    names = rig_names(rig)
    out = []
    for item in seq:
        if item == old:
            out += names
        elif prefix is not None and item == (prefix, old):
            out += [(prefix, n) for n in names]
        else:
            out.append(item)
    return out


def install_rig(L, rig):
    for name, layer, _ in rig:
        L[name] = layer


def rig_anims(rig):
    return {n: a for n, _, a in rig if a}
