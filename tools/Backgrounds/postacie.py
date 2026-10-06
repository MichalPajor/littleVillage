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
