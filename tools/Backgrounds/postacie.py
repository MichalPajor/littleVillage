# Sylwetki postaci do tel (czarne, kreska atramentu jak Maciek na innych tlach).
# Wspolrzedne x,y = punkt miedzy stopami; k = skala (1 = doroslu ~76 jednostek plotna wzrostu).


def _P(x, y, k):
    return lambda dx, dy: f"{x + dx * k:.1f} {y + dy * k:.1f}"


def man(x, y, k=1.0, hat=True, arm=None, bundle=False):
    """Mezczyzna przodem. arm = sciezka SVG (wzgledna) prawej reki od barku."""
    P = _P(x, y, k)
    g = [f'<path d="M{P(-7, 0)}L{P(-4, -30)}L{P(1, -30)}L{P(0, 0)}ZM{P(7, 0)}L{P(2, -30)}L{P(-3, -30)}L{P(0, 0)}Z" fill="#000000"/>',
         f'<path d="M{P(-13, -28)}C{P(-15, -44)} {P(-12, -58)} {P(-6, -62)}H{x + 6 * k:.1f}C{P(12, -58)} {P(15, -44)} {P(13, -28)}Z" fill="#000000"/>',
         f'<circle cx="{x}" cy="{y - 69 * k:.1f}" r="{7.5 * k:.1f}" fill="#000000"/>']
    if hat:
        g.append(f'<path d="M{P(-12, -72)}L{P(12, -72)}L{P(7, -78)}L{P(-7, -78)}Z" fill="#000000"/>')
    if arm:
        g.append(f'<path d="M{P(10, -52)}{arm}" fill="none" stroke-width="{4 * k:.1f}"/>')
    if bundle:
        g.append(f'<path d="M{P(-12, -56)}L{P(-26, -30)}" fill="none" stroke-width="{2.6 * k:.1f}"/>'
                 f'<path d="M{P(-30, -34)}C{P(-36, -30)} {P(-34, -20)} {P(-26, -18)}C{P(-18, -18)} {P(-16, -28)} {P(-22, -34)}Z" fill="url(#hatch)" stroke-width="2"/>')
    return f'<g stroke-width="2.2">{"".join(g)}</g>'


def woman(x, y, k=1.0, bundle=False):
    """Kobieta przodem: biala chusta, fartuch na dlugiej spodnicy."""
    P = _P(x, y, k)
    g = [f'<path d="M{P(-8, -40)}L{P(-20, -2)}Q{P(0, 3)} {P(20, -2)}L{P(8, -40)}Z" fill="#000000"/>',
         f'<path d="M{P(-6, -38)}L{P(-10, -9)}Q{P(0, -6)} {P(10, -9)}L{P(6, -38)}Z" fill="#FFFFFF" stroke-width="{1.4 * k:.1f}"/>',
         f'<path d="M{P(-10, -38)}C{P(-11, -50)} {P(-8, -58)} {P(-4, -60)}H{x + 4 * k:.1f}C{P(8, -58)} {P(11, -50)} {P(10, -38)}Z" fill="#000000"/>',
         f'<circle cx="{x}" cy="{y - 66 * k:.1f}" r="{6.5 * k:.1f}" fill="#000000"/>',
         f'<path d="M{P(-8.5, -64)}Q{P(0, -84)} {P(8.5, -64)}L{P(4, -60)}Q{P(0, -63)} {P(-4, -60)}Z" fill="#FFFFFF" stroke-width="{1.8 * k:.1f}"/>',
         f'<path d="M{P(-5, -59)}l{-3 * k:.1f} {6 * k:.1f}M{P(-3, -59)}l{1 * k:.1f} {6 * k:.1f}" fill="none" stroke-width="{1.6 * k:.1f}"/>']
    if bundle:
        g.append(f'<path d="M{P(8, -46)}C{P(18, -48)} {P(24, -38)} {P(20, -28)}C{P(14, -22)} {P(6, -26)} {P(6, -34)}Z" fill="url(#hatch)" stroke-width="2"/>')
    return f'<g stroke-width="2.2">{"".join(g)}</g>'


def child(x, y, k=1.0, arm=None):
    """Kilkuletni chlopiec przodem (ok. 0,55 wzrostu doroslego przy tym samym k)."""
    P = _P(x, y, k)
    g = [f'<path d="M{P(-5, 0)}L{P(-3, -16)}L{P(0, -16)}L{P(0, 0)}ZM{P(5, 0)}L{P(2, -16)}L{P(-1, -16)}L{P(0, 0)}Z" fill="#000000"/>',
         f'<path d="M{P(-8, -15)}C{P(-9, -24)} {P(-7, -31)} {P(-3, -33)}H{x + 3 * k:.1f}C{P(7, -31)} {P(9, -24)} {P(8, -15)}Z" fill="#000000"/>',
         f'<circle cx="{x}" cy="{y - 39 * k:.1f}" r="{6 * k:.1f}" fill="#000000"/>',
         f'<path d="M{P(-6, -42)}c{2 * k:.1f} {-6 * k:.1f} {10 * k:.1f} {-6 * k:.1f} {12 * k:.1f} 0" fill="#000000"/>']
    if arm:
        g.append(f'<path d="M{P(6, -28)}{arm}" fill="none" stroke-width="{3 * k:.1f}"/>')
    return f'<g stroke-width="2">{"".join(g)}</g>'


def crouching_child(x, y, k=1.0):
    """Chlopiec w kucki, kresli patykiem w piachu (zwrocony w prawo)."""
    P = _P(x, y, k)
    return (f'<g stroke-width="2">'
            f'<path d="M{P(-10, 0)}C{P(-14, -10)} {P(-12, -22)} {P(-4, -26)}C{P(4, -26)} {P(8, -16)} {P(6, 0)}Z" fill="#000000"/>'
            f'<circle cx="{x + 1 * k:.1f}" cy="{y - 31 * k:.1f}" r="{6 * k:.1f}" fill="#000000"/>'
            f'<path d="M{P(-5, -34)}c{2 * k:.1f} {-6 * k:.1f} {10 * k:.1f} {-6 * k:.1f} {12 * k:.1f} 0" fill="#000000"/>'
            f'<path d="M{P(4, -16)}L{P(14, -10)}" fill="none" stroke-width="{3 * k:.1f}"/>'
            f'<path d="M{P(12, -12)}L{P(24, 0)}" fill="none" stroke-width="{1.8 * k:.1f}"/>'
            f'<path d="M{P(18, 3)}c{4 * k:.1f} {-2 * k:.1f} {8 * k:.1f} {2 * k:.1f} {12 * k:.1f} 0M{P(20, 6)}l{8 * k:.1f} {-1 * k:.1f}" fill="none" stroke-width="1.2"/>'
            f'</g>')


def man_with_child(x, y, k=1.0):
    """Mezczyzna przodem z dzieckiem na barana i tobolkiem w rece."""
    P = _P(x, y, k)
    kid = child(x, y - 58 * k, k * 0.8)
    legs = (f'<path d="M{P(-4, -60)}L{P(-12, -48)}M{P(4, -60)}L{P(12, -48)}" fill="none" stroke-width="{3.4 * k:.1f}"/>')
    return man(x, y, k, hat=True, arm=f"l{8 * k:.1f} {20 * k:.1f}") + f'<g stroke-width="2">{legs}</g>' + kid + (
        f'<g stroke-width="2"><path d="M{P(20, -28)}C{P(14, -26)} {P(14, -14)} {P(20, -12)}C{P(28, -12)} {P(30, -24)} {P(24, -28)}Z" fill="url(#hatch)"/></g>')


def axe_arms(sx, sy, k=1.0):
    """Rece z uniesiona siekiera; (sx,sy) = bark — punkt obrotu animacji zamachu."""
    def Q(dx, dy): return f"{sx + dx * k:.1f} {sy + dy * k:.1f}"
    return (f'<g stroke-width="2.2">'
            f'<path d="M{Q(0, 0)}L{Q(10, -18)}L{Q(16, -30)}" fill="none" stroke-width="{4.4 * k:.1f}"/>'
            f'<path d="M{Q(-14, 2)}L{Q(4, -16)}L{Q(14, -28)}" fill="none" stroke-width="{4.4 * k:.1f}"/>'
            f'<path d="M{Q(12, -22)}L{Q(30, -56)}" fill="none" stroke-width="{3.2 * k:.1f}"/>'
            f'<path d="M{Q(24, -50)}L{Q(40, -62)}C{Q(44, -56)} {Q(42, -46)} {Q(36, -42)}L{Q(30, -46)}Z" fill="#FFFFFF" stroke-width="{2.2 * k:.1f}"/>'
            f'</g>')


def running_child(x, y, k=1.0, facing=1, pose=0):
    """Biegnacy chlopiec z profilu (facing=1 w prawo, -1 w lewo); pose 0 = wykrok, pose 1 = nogi mijaja sie (klatki biegu)."""
    f = facing
    P = lambda dx, dy: f"{x + dx * f * k:.1f} {y + dy * k:.1f}"
    legs = (f'M{P(-2, -16)}L{P(-12, -2)}L{P(-16, 0)}M{P(2, -16)}L{P(8, -6)}L{P(14, -2)}' if pose == 0 else
            f'M{P(-1, -16)}L{P(-6, -7)}L{P(-1, 0)}M{P(1, -16)}L{P(5, -8)}L{P(2, -1)}')
    arms = (f'M{P(-2, -28)}L{P(-10, -20)}M{P(3, -28)}L{P(12, -32)}' if pose == 0 else
            f'M{P(-2, -28)}L{P(4, -20)}M{P(3, -28)}L{P(-6, -24)}')
    return (f'<g stroke-width="2">'
            f'<path d="{legs}" fill="none" stroke-width="{3.4 * k:.1f}"/>'
            f'<path d="M{P(-6, -15)}C{P(-8, -24)} {P(-4, -32)} {P(1, -33)}C{P(6, -32)} {P(8, -24)} {P(5, -15)}Z" fill="#000000"/>'
            f'<circle cx="{x + 3 * f * k:.1f}" cy="{y - 39 * k:.1f}" r="{6 * k:.1f}" fill="#000000"/>'
            f'<path d="M{P(-3, -42)}c{2 * f * k:.1f} {-6 * k:.1f} {10 * f * k:.1f} {-6 * k:.1f} {12 * f * k:.1f} 0" fill="#000000"/>'
            f'<path d="{arms}" fill="none" stroke-width="{2.8 * k:.1f}"/>'
            f'</g>')


def girl(x, y, k=1.0, running=False, facing=1):
    """Dziewczynka w sukience z warkoczem (przodem albo w biegu z profilu)."""
    f = facing
    P = lambda dx, dy: f"{x + dx * f * k:.1f} {y + dy * k:.1f}"
    legs = (f'<path d="M{P(-3, -10)}L{P(-10, 0)}M{P(2, -10)}L{P(9, -2)}" fill="none" stroke-width="{3 * k:.1f}"/>' if running else
            f'<path d="M{P(-3, -10)}V{y:.1f}M{P(3, -10)}V{y:.1f}" fill="none" stroke-width="{3 * k:.1f}"/>')
    return (f'<g stroke-width="2">{legs}'
            f'<path d="M{P(-4, -30)}L{P(-11, -9)}Q{P(0, -6)} {P(11, -9)}L{P(4, -30)}Z" fill="#000000"/>'
            f'<path d="M{P(-6, -29)}C{P(-7, -34)} {P(-4, -36)} {P(0, -36)}C{P(4, -36)} {P(7, -34)} {P(6, -29)}Z" fill="#000000"/>'
            f'<circle cx="{x}" cy="{y - 42 * k:.1f}" r="{5.6 * k:.1f}" fill="#000000"/>'
            f'<path d="M{P(-4, -44)}C{P(-10, -40)} {P(-12, -32)} {P(-16, -26)}" fill="none" stroke-width="{2.6 * k:.1f}"/>'   # warkocz
            f'<circle cx="{x - 16 * f * k:.1f}" cy="{y - 25 * k:.1f}" r="{1.8 * k:.1f}" fill="#FFFFFF" stroke-width="1"/>'      # kokardka
            f'<path d="M{P(-3, -30)}L{P(-9, -22)}M{P(3, -30)}L{P(10, -24)}" fill="none" stroke-width="{2.4 * k:.1f}"/>'
            f'</g>')


# ---------- zwierzeta i drobiazgi do animacji

def stork(x, y, k=1.0):
    """Bocian w locie (w prawo): rozpostarte skrzydla z czarnymi lotkami, wyciagnieta szyja i nogi."""
    P = lambda dx, dy: f"{x + dx * k:.1f} {y + dy * k:.1f}"
    return (f'<g stroke-width="1.6">'
            f'<path d="M{P(-18, 0)}C{P(-8, -3)} {P(8, -3)} {P(16, -1)}L{P(28, -4)}L{P(30, -2)}L{P(16, 2)}C{P(6, 4)} {P(-8, 3)} {P(-18, 0)}Z" fill="#FFFFFF"/>'
            f'<path d="M{P(-4, -1)}C{P(-10, -14)} {P(-20, -18)} {P(-30, -16)}L{P(-22, -8)}C{P(-14, -6)} {P(-8, -3)} {P(-4, -1)}Z" fill="#FFFFFF"/>'
            f'<path d="M{P(-30, -16)}L{P(-22, -8)}L{P(-26, -14)}Z" fill="#000000"/>'
            f'<path d="M{P(2, 1)}C{P(-4, 12)} {P(-14, 16)} {P(-24, 16)}L{P(-16, 8)}C{P(-8, 6)} {P(-2, 3)} {P(2, 1)}Z" fill="#FFFFFF"/>'
            f'<path d="M{P(-24, 16)}L{P(-16, 8)}L{P(-20, 14)}Z" fill="#000000"/>'
            f'<path d="M{P(28, -4)}l7 1M{P(-18, 0)}l-12 2M{P(-18, 1)}l-12 4" fill="none" stroke="#A8101A" stroke-width="1.6"/>'
            f'</g>')


def bat(x, y, k=1.0):
    """Nietoperz z rozpostartymi skrzydlami."""
    P = lambda dx, dy: f"{x + dx * k:.1f} {y + dy * k:.1f}"
    return (f'<path d="M{P(0, 0)}C{P(-4, -4)} {P(-10, -6)} {P(-18, -4)}C{P(-15, -1)} {P(-14, 2)} {P(-14, 4)}C{P(-10, 1)} {P(-6, 2)} {P(-3, 4)}'
            f'L{P(0, 2)}L{P(3, 4)}C{P(6, 2)} {P(10, 1)} {P(14, 4)}C{P(14, 2)} {P(15, -1)} {P(18, -4)}C{P(10, -6)} {P(4, -4)} {P(0, 0)}Z" fill="#000000" stroke-width="1"/>'
            f'<path d="M{P(-2, -1)}l-1 -3M{P(2, -1)}l1 -3" fill="none" stroke-width="1"/>')


def butterfly(x, y, k=1.0):
    """Motyl: cztery skrzydla (biale z czarnymi plamkami), tulow, czulki."""
    P = lambda dx, dy: f"{x + dx * k:.1f} {y + dy * k:.1f}"
    return (f'<g stroke-width="1.2">'
            f'<path d="M{P(0, 0)}C{P(-6, -10)} {P(-14, -8)} {P(-12, -1)}C{P(-10, 2)} {P(-4, 2)} {P(0, 0)}ZM{P(0, 0)}C{P(6, -10)} {P(14, -8)} {P(12, -1)}C{P(10, 2)} {P(4, 2)} {P(0, 0)}Z" fill="#FFFFFF"/>'
            f'<path d="M{P(0, 1)}C{P(-5, 3)} {P(-9, 9)} {P(-4, 9)}C{P(-1, 8)} {P(0, 4)} {P(0, 1)}ZM{P(0, 1)}C{P(5, 3)} {P(9, 9)} {P(4, 9)}C{P(1, 8)} {P(0, 4)} {P(0, 1)}Z" fill="#FFFFFF"/>'
            f'<circle cx="{x - 8 * k:.1f}" cy="{y - 5 * k:.1f}" r="{1.6 * k:.1f}" fill="#000000" stroke="none"/><circle cx="{x + 8 * k:.1f}" cy="{y - 5 * k:.1f}" r="{1.6 * k:.1f}" fill="#000000" stroke="none"/>'
            f'<path d="M{P(0, -3)}V{y + 6 * k:.1f}M{P(0, -3)}l-3 -5M{P(0, -3)}l3 -5" fill="none" stroke-width="1.6"/>'
            f'</g>')


def fluff(x, y, k=1.0):
    """Nasionko dmuchawca: kropka i parasolka z wloskow."""
    rays = "".join(f'M{x:.1f} {y - 6 * k:.1f}l{dx * k:.1f} {-5 * k:.1f}' for dx in (-5, -2.5, 0, 2.5, 5))
    return (f'<path d="M{x:.1f} {y:.1f}V{y - 6 * k:.1f}{rays}" fill="none" stroke-width="0.9"/>'
            f'<circle cx="{x:.1f}" cy="{y:.1f}" r="{1.3 * k:.1f}" fill="#000000" stroke="none"/>')


# ---------- Krowa (bok, czarno-biala lacia) ----------
# Ksztalty w lokalnym ukladzie: przod (glowa) w strone +x, 0 = ziemia pod kopytami; ~95 jednostek dlugosci i ~72 do kłębu przy k=1.
# Tylko polecenia bezwzgledne (M L C Z) — _krowa_d przelicza pary liczb na plotno (z odbiciem dla facing=-1).
_KROWA = {
    "nogi_dalsze": "M8 -40 L17 -40 L16 -22 L15.5 -16 L15 -6 L16 0 L8.5 0 L9.5 -6 L9 -16 L8.5 -22 Z"
                   "M-22 -46 C-21 -38 -24 -32 -28 -27 L-29 -18 L-29 -6 L-28 0 L-35 0 L-35 -6 L-35 -16 C-37 -20 -38 -26 -39 -32 Z",
    "ogon": "M-44 -66 C-49 -62 -50 -46 -48 -20",
    "kita": "M-48 -22 C-51 -19 -51 -12 -48 -9 C-46 -12 -45 -18 -48 -22 Z",
    "tulow": "M-44 -66 C-30 -70 -12 -65 2 -67 C12 -68 20 -73 28 -71 C36 -69 42 -64 47 -58 L47 -48 C44 -42 38 -38 34 -34 "
             "C30 -29 26 -30 22 -34 C14 -30 -4 -27 -20 -32 C-24 -34 -27 -38 -28 -41 C-36 -42 -45 -46 -47 -54 C-48 -60 -47 -64 -44 -66 Z",
    "laty": "M18 -69 C24 -70 30 -68 31 -62 C33 -58 29 -55 30 -51 C28 -46 22 -48 19 -45 C14 -43 10 -48 12 -53 C9 -56 12 -60 11 -64 C13 -67 15 -68 18 -69 Z"
            "M-22 -64 C-16 -65 -8 -65 -4 -62 C-1 -58 -6 -55 -3 -50 C-4 -44 -11 -46 -14 -41 C-19 -38 -24 -43 -23 -48 C-28 -51 -27 -57 -25 -60 C-26 -62 -24 -64 -22 -64 Z"
            "M-43 -63 C-39 -65 -34 -63 -35 -59 C-31 -56 -35 -51 -38 -52 C-41 -48 -46 -51 -46 -55 C-47 -58 -46 -61 -43 -63 Z",
    "cien": "M22 -34 C14 -30 -4 -27 -20 -32 C-23 -35 -21 -38 -16 -37 C-4 -33 12 -35 21 -38 Z",
    "kosc": "M-34 -68 C-32 -71 -27 -71 -25 -68M-6 -56 C-3 -50 -3 -43 -5 -38M2 -57 C5 -51 5 -44 3 -38M28 -62 C31 -54 32 -46 30 -40",
    "wymie": "M-30 -34 C-30 -25 -22 -22 -17 -28 C-21 -31 -26 -32 -30 -34 Z",
    "strzyki": "M-27 -26 L-27 -22M-21 -26 L-21 -22",
    "nogi_blizsze": "M15 -40 L26 -40 L25 -22 C25 -20 24 -18 23.5 -16 L23 -6 L24.5 0 L16 0 L17.5 -6 L17 -16 C16.5 -18 16 -20 16 -22 Z"
                    "M-28 -46 C-27 -38 -30 -32 -34 -27 C-35 -24 -35 -21 -35 -18 L-35 -6 L-34 0 L-42 0 L-41 -6 L-41 -16 C-42 -19 -44 -22 -45 -26 C-47 -32 -48 -40 -46 -48 Z",
    "kopyta": "M17 -4 L23.5 -4 L24.5 0 L16 0 Z M-41 -4 L-35 -4 L-34 0 L-42 0 Z",
    "ucho": "M46 -63 C42 -69 35 -69 33 -65 C37 -63 42 -62 46 -62 Z",
    "glowa": "M44 -66 C48 -69 54 -68 56 -64 L66 -44 C68 -40 66 -35 61 -35 C57 -35 54 -37 52 -39 C48 -44 44 -50 42 -56 C41 -60 42 -64 44 -66 Z",
    "lata_glowa": "M48 -65 C53 -66 56 -61 55 -56 C52 -53 48 -56 47 -60 C47 -62 47 -64 48 -65 Z",
    "rog": "M47 -66 C45 -72 49 -77 55 -77 C52 -74 50 -70 51 -66 Z",
    "grzywka": "M48 -68 L47 -71M50 -68 L50 -71M52 -67 L53 -70",
    "nozdrza": "M63 -40 C64 -41 65 -40 64 -39 C63 -38 62 -39 63 -40 Z",
    "pysk": "M57 -36 L61 -37",
    "chrapy": "M61 -43 C65 -44 68 -40 66 -36 C64 -34 60 -35 59 -38 C59 -40 60 -42 61 -43 Z",
    "kantar": "M50 -65 L57 -42M56 -44 C60 -46 64 -46 67 -43",
}


def _krowa_d(d, x, y, k, f):
    import re
    nums = iter(re.findall(r"-?\d+(?:\.\d+)?", d))
    out = re.sub(r"-?\d+(?:\.\d+)?\s+-?\d+(?:\.\d+)?",
                 lambda m: (lambda dx, dy: f"{x + dx * f * k:.1f} {y + dy * k:.1f}")(*map(float, m.group(0).split())), d)
    return out


def krowa(x, y, k=1.0, facing=1, lead=None):
    """Krowa z boku, lacia. x,y = ziemia pod srodkiem tulowia; facing=-1 — glowa w lewo; lead = (x, y) konca postronka."""
    f, sw = facing, round(0.9 + 0.5 * k, 2)
    D = lambda name: _krowa_d(_KROWA[name], x, y, k, f)
    ex, ey = x + 52 * f * k, y - 58 * k
    g = [f'<g stroke-width="{sw}" stroke-linejoin="round">',
         # nogi pod tulowiem — brzuch zakrywa ich gorne krawedzie
         f'<path d="{D("nogi_dalsze")}" fill="#000000"/>',
         f'<path d="{D("nogi_blizsze")}" fill="#FFFFFF"/>',
         f'<path d="{D("kopyta")}" fill="#000000"/>',
         f'<path d="{D("ogon")}" fill="none" stroke-width="{sw * 1.1:.2f}"/>',
         f'<path d="{D("kita")}" fill="#000000"/>',
         f'<path d="{D("tulow")}" fill="#FFFFFF"/>',
         f'<path d="{D("laty")}" fill="#000000" stroke="none"/>',
         f'<path d="{D("cien")}" fill="url(#hatch)" stroke="none" opacity="0.7"/>',
         f'<path d="{D("kosc")}" fill="none" stroke-width="{sw * 0.55:.2f}"/>',
         f'<path d="{D("wymie")}" fill="#FFFFFF" stroke-width="{sw * 0.8:.2f}"/>',
         f'<path d="{D("strzyki")}" fill="none" stroke-width="{sw * 0.8:.2f}"/>',
         f'<path d="{D("ucho")}" fill="#FFFFFF"/>',
         f'<path d="{D("glowa")}" fill="#FFFFFF"/>',
         f'<path d="{D("lata_glowa")}" fill="#000000" stroke="none"/>',
         f'<path d="{D("rog")}" fill="#FFFFFF" stroke-width="{sw * 0.8:.2f}"/>',
         f'<path d="{D("grzywka")}" fill="none" stroke-width="{sw * 0.6:.2f}"/>',
         f'<circle cx="{ex:.1f}" cy="{ey:.1f}" r="{1.5 * k:.1f}" fill="#FFFFFF" stroke-width="{sw * 0.5:.2f}"/>',
         f'<circle cx="{ex + 0.4 * f * k:.1f}" cy="{ey:.1f}" r="{0.8 * k:.1f}" fill="#000000" stroke="none"/>',
         f'<path d="{D("chrapy")}" fill="#000000" stroke="none"/>',
         f'<path d="{D("nozdrza")}" fill="#FFFFFF" stroke="none"/>',
         f'<path d="{D("pysk")}" fill="none" stroke-width="{sw * 0.6:.2f}"/>']
    if lead is not None:
        g.append(f'<path d="{D("kantar")}" fill="none" stroke-width="{sw * 0.7:.2f}"/>')
        rx, ry = x + 64 * f * k, y - 44 * k
        tx, ty = lead
        g.append(f'<path d="M{rx:.1f} {ry:.1f}Q{(rx + tx) / 2:.1f} {max(ry, ty) + 10 * k:.1f} {tx:.1f} {ty:.1f}" fill="none" stroke-width="{sw * 0.7:.2f}"/>')
    g.append('</g>')
    return "".join(g)
