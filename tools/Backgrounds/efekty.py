# Wspolne drobne efekty animowane do tel (rozdzialy 2+): kazda funkcja zwraca (warstwa, animacja, komentarz),
# gdzie warstwa = (x, y, w, h, svg) w ukladzie plotna 390x844. Uzycie:
#   add(L, ORDER, ANIM, COMMENTS, "nazwa", efekty.platki(...), before="okno")
import random
from common import group, crow

RED = "#A8101A"


def add(L, order, anim, comments, name, effect, before=None, extra=None, extras=None):
    layer, a, comment = effect
    L[name] = layer
    if before is not None and before in order:
        order.insert(order.index(before), name)
    else:
        order.append(name)
    if a:
        anim[name] = a
    comments[name] = comment
    if extra is not None and extras is not None:
        extras[name] = extra


def pylki(x, y, w, h, n=10, seed=1, duration=7000, phase=0.0):
    """Pylki kurzu wirujace w smudze swiatla."""
    rnd = random.Random(seed)
    dots = [f'<circle cx="{rnd.uniform(x + 4, x + w - 4):.0f}" cy="{rnd.uniform(y + 4, y + h - 4):.0f}" r="{rnd.uniform(0.9, 1.6):.1f}" fill="#FFFFFF" stroke-width="0.6"/>'
            for _ in range(n)]
    return (x, y, w, h, group(dots)), {"type": "wander", "amplitude": 6, "duration": duration, "phase": phase}, "pyłki kurzu w świetle (krążą)"


def smuga(points, opacity=0.35):
    """Smuga swiatla padajaca z okna (polprzezroczysta, lekko pulsuje)."""
    xs = [p[0] for p in points]
    ys = [p[1] for p in points]
    x, y = min(xs), min(ys)
    d = "M" + "L".join(f"{px} {py}" for px, py in points) + "Z"
    return ((x, y, max(xs) - x, max(ys) - y, group([f'<path d="{d}" fill="#FFFFFF" stroke="none" opacity="{opacity}"/>'])),
            {"type": "flicker", "amplitude": 0.75, "duration": 6500}, "smuga światła z okna (pulsuje)")


def platki(x, y, w, h, n=14, seed=2, fall=120, duration=7000, phase=0.0, r=(1.2, 2.2)):
    """Platki sniegu opadajace w prostokacie (rise z ujemna amplituda)."""
    rnd = random.Random(seed)
    dots = [f'<circle cx="{rnd.uniform(x, x + w):.0f}" cy="{rnd.uniform(y, y + h):.0f}" r="{rnd.uniform(*r):.1f}" fill="#FFFFFF" stroke-width="0.8"/>'
            for _ in range(n)]
    return (x, y, w, h, group(dots)), {"type": "rise", "amplitude": -fall, "duration": duration, "phase": phase}, "płatki śniegu (opadają)"


def iskry(x, y, w, h, n=12, seed=3, duration=2600):
    """Iskierki szronu/sniegu migoczace w swietle."""
    rnd = random.Random(seed)
    s = []
    for _ in range(n):
        cx, cy = rnd.uniform(x + 3, x + w - 3), rnd.uniform(y + 3, y + h - 3)
        s.append(f'<path d="M{cx - 3:.0f} {cy:.0f}h6M{cx:.0f} {cy - 3:.0f}v6" fill="none" stroke-width="1.1"/>')
    return (x, y, w, h, group(s)), {"type": "flicker", "amplitude": 0.15, "duration": duration}, "iskierki na śniegu (migoczą)"


def wrony(x, y, n=3, k=0.45, seed=4, amplitude=40, duration=6200, phase=0.0):
    """Stadko wron krazace z trzepotem skrzydel."""
    rnd = random.Random(seed)
    birds = [crow(x + i * 18 + rnd.uniform(-4, 4), y + rnd.uniform(-8, 8), k) for i in range(n)]
    w = n * 18 + 30
    return (x - 6, y - 16, w, 32, group(birds)), {"type": "wander", "amplitude": amplitude, "flap": 0.55, "duration": duration, "phase": phase}, "wrony krążą nad lasem"


def wrona_siedzi(x, y, k=1.0):
    """Wrona siedzaca (profil w lewo) — kiwa sie."""
    P = lambda dx, dy: f"{x + dx * k:.1f} {y + dy * k:.1f}"
    svg = (f'<path d="M{P(0, 0)}C{P(-2, -8)} {P(2, -14)} {P(8, -14)}C{P(12, -14)} {P(14, -10)} {P(14, -6)}L{P(20, 2)}L{P(12, 0)}C{P(10, 2)} {P(4, 2)} {P(0, 0)}Z" fill="#000000" stroke-width="1"/>'
           f'<path d="M{P(2, -12)}l-5 1l5 2z" fill="#000000" stroke-width="0.8"/><circle cx="{x + 4 * k:.1f}" cy="{y - 11 * k:.1f}" r="0.9" fill="#FFFFFF" stroke="none"/>'
           f'<path d="M{P(6, 1)}v4M{P(9, 1)}v4" fill="none" stroke-width="1"/>')
    return (int(x - 6 * k), int(y - 16 * k), int(28 * k) + 2, int(24 * k) + 2, group([svg])), \
           {"type": "sway", "amplitude": 6, "duration": 2600, "anchorX": 0.4, "anchorY": 0.9}, "wrona siedzi i kiwa się"


def sowa(x, y, k=1.0):
    """Sowa na galezi: jasne, okragle oczy mrugaja."""
    P = lambda dx, dy: f"{x + dx * k:.1f} {y + dy * k:.1f}"
    body = (f'<path d="M{P(-7, 0)}C{P(-9, -10)} {P(-8, -18)} {P(-6, -20)}L{P(-4, -24)}L{P(0, -20)}L{P(4, -24)}L{P(6, -20)}C{P(8, -18)} {P(9, -10)} {P(7, 0)}Z" fill="#000000" stroke-width="1.2"/>'
            f'<path d="M{P(-12, 1)}L{P(12, 1)}" fill="none" stroke-width="2"/>')
    eyes = (f'<circle cx="{x - 3 * k:.1f}" cy="{y - 15 * k:.1f}" r="{2.4 * k:.1f}" fill="#FFFFFF" stroke="none"/>'
            f'<circle cx="{x + 3 * k:.1f}" cy="{y - 15 * k:.1f}" r="{2.4 * k:.1f}" fill="#FFFFFF" stroke="none"/>'
            f'<circle cx="{x - 3 * k:.1f}" cy="{y - 15 * k:.1f}" r="{0.9 * k:.1f}" fill="#000000" stroke="none"/>'
            f'<circle cx="{x + 3 * k:.1f}" cy="{y - 15 * k:.1f}" r="{0.9 * k:.1f}" fill="#000000" stroke="none"/>')
    box = (int(x - 13 * k), int(y - 26 * k), int(26 * k) + 2, int(30 * k) + 2)
    return ((*box, group([body])), None, "sowa na gałęzi"), ((*box, group([eyes])), {"type": "blink", "duration": 4200}, "oczy sowy (mrugają)")


def chmurki(x, y, w, h, seed=5):
    """Drobne obloczki w szybie okna (dryfuja)."""
    rnd = random.Random(seed)
    s = []
    for _ in range(2):
        cx, cy = rnd.uniform(x + 8, x + w - 20), rnd.uniform(y + 6, y + h - 6)
        s.append(f'<path d="M{cx:.0f} {cy:.0f}c3 -4 8 -4 10 0c3 -3 8 -1 7 2h-17z" fill="#FFFFFF" stroke-width="1"/>')
    return (x, y, w, h, group(s)), {"type": "drift", "amplitude": 4, "duration": 12000}, "obłoczki za szybą (dryfują)"
