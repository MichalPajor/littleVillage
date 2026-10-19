# Ciaglosc tla pod oknem z tekstem: czyta warstwy SVG tla (ksztalty w ukladzie plotna 390x844), znajduje te, ktore
# dochodza do dolnej krawedzi rysunku (drogi, sciezki, brzegi, grunt, podloga, kreskowanie), i przedluza je w dol
# tymi samymi liniami i wypelnieniem — od krawedzi sceny (gora pierwszego planu) az do dolu ekranu, bez przerwy.
#   seam_y(layers)                  -> y krawedzi (gora warstwy *_przod albo 440)
#   continuation(layers, img_dir)   -> (lista elementow SVG, Probe) — Probe mowi, co lezy w danym punkcie dolnej czesci
import os, re, math, xml.etree.ElementTree as ET

BOTTOM = 844
PAPER = "#EDEBE6"
NS = "{http://www.w3.org/2000/svg}"


# ---------------- przeksztalcenia ----------------
def mat_mul(a, b):
    return (a[0] * b[0] + a[2] * b[1], a[1] * b[0] + a[3] * b[1], a[0] * b[2] + a[2] * b[3], a[1] * b[2] + a[3] * b[3],
            a[0] * b[4] + a[2] * b[5] + a[4], a[1] * b[4] + a[3] * b[5] + a[5])


def parse_tf(text):
    m = (1, 0, 0, 1, 0, 0)
    for op, args in re.findall(r"(translate|scale|rotate|matrix)\(([^)]*)\)", text or ""):
        v = [float(x) for x in re.split(r"[ ,]+", args.strip()) if x]
        if op == "translate":
            t = (1, 0, 0, 1, v[0], v[1] if len(v) > 1 else 0)
        elif op == "scale":
            t = (v[0], 0, 0, v[1] if len(v) > 1 else v[0], 0, 0)
        elif op == "matrix":
            t = tuple(v)
        else:
            r = math.radians(v[0]); c, s = math.cos(r), math.sin(r)
            t = (c, s, -s, c, 0, 0)
            if len(v) == 3:
                t = mat_mul(mat_mul((1, 0, 0, 1, v[1], v[2]), t), (1, 0, 0, 1, -v[1], -v[2]))
        m = mat_mul(m, t)
    return m


def apply(m, p):
    return (m[0] * p[0] + m[2] * p[1] + m[4], m[1] * p[0] + m[3] * p[1] + m[5])


# ---------------- sciezki SVG -> polilinie ----------------
TOK = re.compile(r"[MmLlHhVvCcSsQqTtAaZz]|-?(?:\d+\.?\d*|\.\d+)(?:e-?\d+)?")


def path_polys(d):
    """Lista (punkty, zamknieta) dla atrybutu d (krzywe probkowane)."""
    toks = TOK.findall(d)
    polys, cur, start = [], [], (0, 0)
    x = y = 0.0
    last_c = None
    cmd = None
    i = 0

    def num():
        nonlocal i
        v = float(toks[i]); i += 1
        return v

    def flush(closed=False):
        nonlocal cur
        if len(cur) > 1:
            polys.append((cur, closed))
        cur = []

    while i < len(toks):
        t = toks[i]
        if re.match(r"[A-Za-z]", t):
            cmd = t; i += 1
            if cmd in "Zz":
                if cur:
                    cur.append(start)
                flush(True)
                x, y = start
                last_c = None
                continue
        if cmd is None:
            i += 1; continue
        rel = cmd.islower(); C = cmd.upper()
        try:
            if C == "M":
                flush(False)
                nx, ny = num(), num()
                if rel: nx += x; ny += y
                x, y = nx, ny; start = (x, y); cur = [(x, y)]
                cmd = "l" if rel else "L"
                last_c = None
            elif C == "L":
                nx, ny = num(), num()
                if rel: nx += x; ny += y
                x, y = nx, ny; cur.append((x, y)); last_c = None
            elif C == "H":
                nx = num(); x = nx + (x if rel else 0); cur.append((x, y)); last_c = None
            elif C == "V":
                ny = num(); y = ny + (y if rel else 0); cur.append((x, y)); last_c = None
            elif C in "CS":
                if C == "C":
                    x1, y1 = num(), num()
                    if rel: x1 += x; y1 += y
                else:
                    x1, y1 = (2 * x - last_c[0], 2 * y - last_c[1]) if last_c else (x, y)
                x2, y2, ex, ey = num(), num(), num(), num()
                if rel: x2 += x; y2 += y; ex += x; ey += y
                for k in range(1, 13):
                    tt = k / 12; u = 1 - tt
                    cur.append((u ** 3 * x + 3 * u * u * tt * x1 + 3 * u * tt * tt * x2 + tt ** 3 * ex,
                                u ** 3 * y + 3 * u * u * tt * y1 + 3 * u * tt * tt * y2 + tt ** 3 * ey))
                last_c = (x2, y2); x, y = ex, ey
            elif C in "QT":
                if C == "Q":
                    x1, y1 = num(), num()
                    if rel: x1 += x; y1 += y
                else:
                    x1, y1 = (2 * x - last_c[0], 2 * y - last_c[1]) if last_c else (x, y)
                ex, ey = num(), num()
                if rel: ex += x; ey += y
                for k in range(1, 9):
                    tt = k / 8; u = 1 - tt
                    cur.append((u * u * x + 2 * u * tt * x1 + tt * tt * ex, u * u * y + 2 * u * tt * y1 + tt * tt * ey))
                last_c = (x1, y1); x, y = ex, ey
            elif C == "A":
                num(); num(); num(); num(); num()
                ex, ey = num(), num()
                if rel: ex += x; ey += y
                x, y = ex, ey; cur.append((x, y)); last_c = None
            else:
                i += 1
        except (IndexError, ValueError):
            break
    flush(False)
    return polys


def ellipse_poly(cx, cy, rx, ry):
    return [(cx + rx * math.cos(a * math.pi / 18), cy + ry * math.sin(a * math.pi / 18)) for a in range(37)]


# ---------------- ksztalty warstwy ----------------
class Shape:
    def __init__(self, pts, closed, fill, stroke, width, opacity):
        self.pts, self.closed, self.fill, self.stroke, self.width, self.opacity = pts, closed, fill, stroke, width, opacity
        self.maxy = max(p[1] for p in pts)


def shapes_of(svg_path):
    try:
        root = ET.parse(svg_path).getroot()
    except Exception:
        return []
    out = []

    def walk(el, m, inh):
        tag = el.tag.replace(NS, "")
        if tag in ("defs", "pattern", "filter", "title"):
            return
        st = dict(inh)
        for k in ("fill", "stroke", "stroke-width", "opacity"):
            if el.get(k) is not None:
                st[k] = el.get(k)
        if el.get("opacity") is not None:
            st["opacity"] = str(float(inh.get("opacity", 1)) * float(el.get("opacity")))
        m2 = mat_mul(m, parse_tf(el.get("transform"))) if el.get("transform") else m
        polys = []
        if tag == "path":
            polys = path_polys(el.get("d", ""))
        elif tag == "rect":
            x, y, w, h = (float(el.get(k, 0)) for k in ("x", "y", "width", "height"))
            polys = [([(x, y), (x + w, y), (x + w, y + h), (x, y + h), (x, y)], True)]
        elif tag in ("circle", "ellipse"):
            cx, cy = float(el.get("cx", 0)), float(el.get("cy", 0))
            rx = float(el.get("r", el.get("rx", 0))); ry = float(el.get("r", el.get("ry", 0)))
            polys = [(ellipse_poly(cx, cy, rx, ry), True)]
        elif tag == "line":
            polys = [([(float(el.get("x1", 0)), float(el.get("y1", 0))), (float(el.get("x2", 0)), float(el.get("y2", 0)))], False)]
        for pts, closed in polys:
            pts = [apply(m2, p) for p in pts]
            fill = st.get("fill", "#000000")
            if not closed and tag == "path" and fill not in ("none",):
                closed = True               # SVG wypelnia tez niedomkniete sciezki
            sw = float(st.get("stroke-width", 1)) * math.sqrt(abs(m2[0] * m2[3] - m2[1] * m2[2]))
            out.append(Shape(pts, closed, fill, st.get("stroke", "none"), sw, float(st.get("opacity", 1))))
        for ch in el:
            walk(ch, m2, st)

    walk(root, (1, 0, 0, 1, 0, 0), {"fill": "#000000"})
    return out


# ---------------- przeciecia z linia y ----------------
def crossings(pts, y):
    """[(x, nachylenie dx/dy krawedzi)] dla odcinkow przecinajacych y."""
    out = []
    for (x1, y1), (x2, y2) in zip(pts, pts[1:]):
        if (y1 - y) * (y2 - y) <= 0 and y1 != y2:
            t = (y - y1) / (y2 - y1)
            out.append((x1 + t * (x2 - x1), (x2 - x1) / (y2 - y1)))
    return out


def edge_slope(pts, x0, y0, y_from):
    """Nachylenie krawedzi ksztaltu w poblizu (x0,y0) liczone na odcinku od y_from do dolu rysunku."""
    best = None
    for (x1, y1), (x2, y2) in zip(pts, pts[1:]):
        lo, hi = min(y1, y2), max(y1, y2)
        if hi < y_from or lo > y0 + 30 or abs(y2 - y1) < 0.5:
            continue
        xm = x1 + (y0 - y1) * (x2 - x1) / (y2 - y1) if lo <= y0 <= hi else (x1 if abs(y1 - y0) < abs(y2 - y0) else x2)
        d = abs(xm - x0)
        if best is None or d < best[0]:
            best = (d, (x2 - x1) / (y2 - y1))
    return best[1] if best else 0.0


def point_in(pts, x, y):
    inside = False
    for (x1, y1), (x2, y2) in zip(pts, pts[1:] + pts[:1]):
        if (y1 > y) != (y2 > y):
            xc = x1 + (y - y1) * (x2 - x1) / (y2 - y1)
            if xc > x:
                inside = not inside
    return inside


MAX_SLOPE = 1.8


def ext_x(x0, slope, y, ys):
    return x0 + slope * (y - ys)


# ---------------- glowna funkcja ----------------
def przod_index(layers):
    """Indeks warstwy pierwszego planu (szeroka *_przod) albo None — czesci postaci (np. pies_przod) sie nie licza."""
    for i, l in enumerate(layers):
        if l["image"].endswith("_przod.png") and l["width"] >= 380 and "animation" not in l:
            return i
    return None


def seam_y(layers, img_dir):
    """Dolna krawedz widocznej sceny: najnizszy punkt gornej linii pierwszego planu (nie wyzej niz 440)."""
    i = przod_index(layers)
    if i is None:
        return 440.0
    l = layers[i]
    sh = shapes_of(os.path.join(img_dir, l["image"].replace(".png", ".svg")))
    for s in sh:
        if s.closed and s.fill not in ("none",) and s.maxy >= 800:
            top = [p[1] for p in s.pts if p[1] < 600]
            if top:
                return min(440.0, max(top))
    return min(440.0, float(l["y"]) + 10)


def static_layers(layers):
    return [l for l in layers if "animation" not in l and not l.get("revealOn") and not l.get("appearAfter")
            and not l["image"].startswith("bg_dol_") and not (l["image"].endswith("_przod.png") and l["width"] >= 380)]


class Probe:
    """Co lezy w punkcie dolnej czesci: wypelnienie najwyzszego przedluzonego ksztaltu i odleglosc do przedluzonych linii."""

    def __init__(self):
        self.regions = []   # (polygon, fill, opacity)
        self.lines = []     # [(x0,y0),(x1,y1)]

    def fill_at(self, x, y):
        f, op = PAPER, 1.0
        for poly, fill, o in self.regions:
            if point_in(poly, x, y):
                if fill.startswith("url(") and o < 0.5:
                    continue                # rzadkie kreskowanie na wierzchu nie zmienia charakteru gruntu
                f, op = fill, o
        return f, op

    def dist_line(self, x, y):
        d = 1e9
        for (x0, y0), (x1, y1) in self.lines:
            dx, dy = x1 - x0, y1 - y0
            L = dx * dx + dy * dy
            t = max(0, min(1, ((x - x0) * dx + (y - y0) * dy) / L)) if L else 0
            d = min(d, math.hypot(x - (x0 + t * dx), y - (y0 + t * dy)))
        return d

    def kind(self, x, y):
        """'light' (pusty grunt), 'dark' (ciemny grunt), 'water', 'hatch' albo 'line' (za blisko linii)."""
        if self.dist_line(x, y) < 10 + (y - 440) * 0.03:
            return "line"
        f, op = self.fill_at(x, y)
        if f == "url(#water)":
            return "water"
        if f in ("#000000", "url(#hatchNight)") or (f == "url(#hatchDense)" and op >= 0.5):
            return "dark"
        if f.startswith("url(#hatch") and op >= 0.5:
            return "hatch"
        return "light"


def continuation(layers, img_dir, interior=False):
    ys = seam_y(layers, img_dir)
    top = ys - 7          # zakladka: przykrywa dolna kreske konturu sceny (V440H-10Z) i drgania filtra
    y_from = ys - 26
    shapes = []
    for l in static_layers(layers):
        shapes += shapes_of(os.path.join(img_dir, l["image"].replace(".png", ".svg")))
    # nieprzezroczysty podklad: przykrywa wszystko pod krawedzia, zeby polprzezroczyste kreskowanie sie nie dublowalo
    items, probe = [f'<path d="M-10 {top:.1f}H400V{BOTTOM + 4}H-10Z" fill="{PAPER}" stroke="none"/>'], Probe()
    # wiele pionowych kresek przez krawedz (deski scian/podlogi) = faktura, ktora ciagnie sie dalej; kilka = nogi mebli
    n_vertical = sum(1 for sh in shapes if not sh.closed and sh.maxy >= 436 and len(sh.pts) == 2 and abs(sh.pts[0][0] - sh.pts[1][0]) < 0.5
                     and min(sh.pts[0][1], sh.pts[1][1]) < ys - 40)
    for sh in shapes:
        if sh.maxy < 436 or not any(p[1] <= ys - 1 for p in sh.pts):
            continue        # nie dochodzi do dolu rysunku albo lezy cale ponizej krawedzi
        xs = crossings(sh.pts + ([sh.pts[0]] if sh.closed else []), top - 0.5)
        if not xs:
            continue
        stroke = sh.stroke if sh.stroke not in (None, "none") else None
        miny = min(p[1] for p in sh.pts)
        if sh.closed and sh.fill not in ("none",):
            if miny > ys - 40:
                continue            # waski pasek przy samej krawedzi (parapet, chodnik) — konczy sie razem ze scena
            xs.sort()
            for (xa, _), (xb, _) in zip(xs[0::2], xs[1::2]):
                if xb - xa < 1.5:
                    continue
                sa = max(-MAX_SLOPE, min(MAX_SLOPE, edge_slope(sh.pts, xa, ys, y_from)))
                sb = max(-MAX_SLOPE, min(MAX_SLOPE, edge_slope(sh.pts, xb, ys, y_from)))
                width = xb - xa
                dark = sh.fill in ("#000000", "url(#hatchNight)", "url(#hatchDense)") and sh.opacity >= 0.5
                y_end = BOTTOM + 4
                xa2, xb2 = ext_x(xa, sa, y_end, top), ext_x(xb, sb, y_end, top)
                converging = (xb2 - xa2) < width * 0.6
                if width < 300 and (dark or converging):
                    # zarosla, krzaki, kepy: ciagna sie jeszcze kawalek i koncza zaokragleniem (zamiast klina do dolu ekranu)
                    y_end = top + min(70, max(24, width * 0.35))
                    xa2, xb2 = ext_x(xa, sa * 0.5, y_end, top), ext_x(xb, sb * 0.5, y_end, top)
                    xm = (xa2 + xb2) / 2
                    d = (f"M{xa:.1f} {top:.1f}L{xb:.1f} {top:.1f}L{xb2:.1f} {y_end - (xb2 - xa2) * 0.25:.1f}"
                         f"Q{xb2:.1f} {y_end:.1f} {xm:.1f} {y_end:.1f}Q{xa2:.1f} {y_end:.1f} {xa2:.1f} {y_end - (xb2 - xa2) * 0.25:.1f}Z")
                    poly = [(xa, top), (xb, top), (xb2, y_end), (xa2, y_end)]
                    op = f' opacity="{sh.opacity:.2f}"' if sh.opacity < 1 else ""
                    st_ = f' stroke="{stroke}" stroke-width="{sh.width * 1.2:.1f}"' if stroke and sh.width >= 0.8 else ' stroke="none"'
                    items.append(f'<path d="{d}" fill="{sh.fill}"{st_}{op}/>')
                    if stroke:      # gorna krawedz nie moze miec kreski — przykrywamy ja waskim pasem bez obrysu
                        items.append(f'<path d="M{xa + 1:.1f} {top - 1:.1f}L{xb - 1:.1f} {top - 1:.1f}L{xb - 1:.1f} {top + 2:.1f}L{xa + 1:.1f} {top + 2:.1f}Z" fill="{sh.fill}" stroke="none"{op}/>')
                    probe.regions.append((poly, sh.fill, sh.opacity))
                    continue
                if xb2 < xa2:
                    xm = (xa + xb) / 2; xa2 = xb2 = xm
                poly = [(xa, top), (xb, top), (xb2, BOTTOM + 4), (xa2, BOTTOM + 4)]
                op = f' opacity="{sh.opacity:.2f}"' if sh.opacity < 1 else ""
                items.append(f'<path d="M{xa:.1f} {top:.1f}L{xb:.1f} {top:.1f}L{xb2:.1f} {BOTTOM + 4}L{xa2:.1f} {BOTTOM + 4}Z" fill="{sh.fill}" stroke="none"{op}/>')
                probe.regions.append((poly, sh.fill, sh.opacity))
                if stroke and sh.width >= 0.8:
                    for x0, s0, x2 in ((xa, sa, xa2), (xb, sb, xb2)):
                        if -5 < x0 < 395:
                            items.append(f'<path d="M{x0:.1f} {top - 1:.1f}L{x2:.1f} {BOTTOM + 4}" fill="none" stroke="{stroke}" stroke-width="{sh.width * 1.4:.1f}"/>')
                            probe.lines.append(((x0, ys), (x2, BOTTOM)))
        elif stroke and sh.width >= 0.8:
            for x0, _ in xs:
                s0 = max(-MAX_SLOPE, min(MAX_SLOPE, edge_slope(sh.pts, x0, ys, y_from)))
                y_end = BOTTOM + 4
                if interior and n_vertical < 6 and (abs(s0) < 0.004 or (abs(s0) < 0.15 and sh.maxy - min(p[1] for p in sh.pts) < 140)):
                    y_end = top + 40       # pionowe kreski we wnetrzu (nogi stolu, sciany) koncza sie tuz pod krawedzia
                x2 = ext_x(x0, s0, y_end, top)
                items.append(f'<path d="M{x0:.1f} {top - 1:.1f}L{x2:.1f} {y_end:.1f}" fill="none" stroke="{stroke}" stroke-width="{sh.width * 1.4:.1f}"/>')
                probe.lines.append(((x0, top), (x2, y_end)))
    return ys, items, probe
