# Wspolne elementy rysunkow tel (styl makiety: kreska atramentu, kreskowanie, papier + czern).
import os

DEFS = '''<filter id="ink" x="-5%" y="-5%" width="110%" height="110%">
<feTurbulence type="fractalNoise" baseFrequency="0.035" numOctaves="2" seed="7" result="n"/>
<feDisplacementMap in="SourceGraphic" in2="n" scale="3.2" xChannelSelector="R" yChannelSelector="G"/>
</filter>
<pattern id="hatch" width="7" height="7" patternUnits="userSpaceOnUse" patternTransform="rotate(-35)">
<line x1="0" y1="0" x2="0" y2="7" stroke="#000000" stroke-width="1.5"/>
</pattern>
<pattern id="hatchDense" width="4" height="4" patternUnits="userSpaceOnUse" patternTransform="rotate(-35)">
<line x1="0" y1="0" x2="0" y2="4" stroke="#000000" stroke-width="1.7"/>
</pattern>
<pattern id="hatchNight" width="3" height="3" patternUnits="userSpaceOnUse" patternTransform="rotate(-35)">
<line x1="0" y1="0" x2="0" y2="3" stroke="#000000" stroke-width="1.9"/>
</pattern>
<pattern id="water" width="9" height="5" patternUnits="userSpaceOnUse">
<line x1="0" y1="2.5" x2="5" y2="2.5" stroke="#000000" stroke-width="1.3"/>
</pattern>'''

PAPER = "#EDEBE6"
G_OPEN = '<g filter="url(#ink)" stroke="#000000" stroke-linecap="round" stroke-linejoin="round">'


def group(items):
    return G_OPEN + "\n" + "\n".join(items) + "\n</g>"


def sky(height=140):
    """Kreskowane niebo w dwoch pasmach (gestsze u gory)."""
    return [
        f'<path d="M0 0H390V60C300 80 210 50 130 72C80 86 40 68 0 82Z" fill="url(#hatchDense)" stroke="none"/>',
        f'<path d="M0 82C40 68 80 86 130 72C210 50 300 80 390 60V{height - 28}C310 {height - 8} 220 {height - 36} 140 {height - 16}C80 {height} 40 {height - 22} 0 {height - 6}Z" fill="url(#hatch)" stroke="none"/>',
    ]


def spruce(cx, base, h, w, fill="#000000"):
    tiers = 5
    pts = []
    for i in range(tiers):
        t0 = base - h * i / tiers
        t1 = base - h * (i + 1) / tiers - h * 0.08
        ww = w * (1 - i / tiers)
        pts.append(f'M{cx - ww / 2:.1f} {t0:.1f}L{cx:.1f} {t1:.1f}L{cx + ww / 2:.1f} {t0:.1f}Z')
    trunk = f'<line x1="{cx}" y1="{base + 8}" x2="{cx}" y2="{base - 4}" stroke-width="4"/>'
    return trunk + f'<path d="{" ".join(pts)}" fill="{fill}" stroke-width="2.4"/>'


def reeds(x, y, k=1.0):
    return f'<path d="M{x} {y}l{-2 * k:.1f} {-9 * k:.1f}M{x} {y}l{1 * k:.1f} {-11 * k:.1f}M{x} {y}l{4 * k:.1f} {-8 * k:.1f}" fill="none" stroke-width="1.6"/>'


def cattail(x, y, k=1.0):
    return (f'<line x1="{x}" y1="{y}" x2="{x + 1}" y2="{y - 16 * k:.1f}" stroke-width="1.4"/>'
            f'<rect x="{x - 1.3:.1f}" y="{y - 14 * k:.1f}" width="2.6" height="{6 * k:.1f}" rx="1.3" fill="#000000" stroke-width="0.8"/>')


def grass(x, y, k=1.0):
    return f'<path d="M{x} {y}l{-3 * k:.1f} {-12 * k:.1f}M{x} {y}l{2 * k:.1f} {-14 * k:.1f}M{x} {y}l{6 * k:.1f} {-10 * k:.1f}" fill="none" stroke-width="2.2"/>'


def crow(x, y, s=1.0):
    return (f'<path d="M{x} {y}q{6 * s:.1f} {-7 * s:.1f} {12 * s:.1f} 0q{6 * s:.1f} {-7 * s:.1f} {12 * s:.1f} 0'
            f'q{-6 * s:.1f} {-3 * s:.1f} {-12 * s:.1f} {5 * s:.1f}q{-6 * s:.1f} {-8 * s:.1f} {-12 * s:.1f} {-5 * s:.1f}z" fill="#000000" stroke-width="1"/>')


def ribbon(x0, x1, y, thick, wav):
    """Wstega mgly w stylu chmur z makiety (zamkniety ksztalt do wypelnienia papierem)."""
    n = 5
    step = (x1 - x0) / n
    top = f"M{x0} {y}"
    for i in range(n):
        xa = x0 + step * i + step / 2
        top += f" Q{xa:.0f} {y - wav if i % 2 == 0 else y + wav} {x0 + step * (i + 1):.0f} {y}"
    bot = f" C{x1 + 12} {y + thick * 0.5:.0f} {x1 + 4} {y + thick} {x1 - 10} {y + thick}"
    for i in range(n, 0, -1):
        xa = x0 + step * i - step / 2
        bot += f" Q{xa:.0f} {y + thick + (wav if i % 2 == 0 else -wav)} {x0 + step * (i - 1):.0f} {y + thick}"
    return top + bot + f" C{x0 - 12} {y + thick} {x0 - 12} {y} {x0} {y}Z"


def write_layers(out_dir, prefix, scene, layers, order, comments):
    """Zapisuje kazda warstwe jako osobne SVG z viewBox = polozenie warstwy na plotnie 390x844."""
    for name in order:
        x, y, w, h, body = layers[name]
        doc = (f'<?xml version="1.0" encoding="UTF-8"?>\n<!-- LittleVillage — tło „{scene}”: {comments[name]}\n'
               f'     Współrzędne płótna 390×844, viewBox = położenie warstwy. Animacje: Resources/Raw/backgrounds.json. -->\n'
               f'<svg xmlns="http://www.w3.org/2000/svg" width="{w}" height="{h}" viewBox="{x} {y} {w} {h}">\n<defs>\n{DEFS}\n</defs>\n{body}\n</svg>\n')
        with open(os.path.join(out_dir, f"{prefix}_{name}.svg"), "w", encoding="utf-8") as f:
            f.write(doc)
        print(f"{prefix}_{name}", (x, y, w, h))


def master(layers, order, background=PAPER):
    """Caly obraz (wszystkie warstwy) do podgladu."""
    return (f'<svg xmlns="http://www.w3.org/2000/svg" width="390" height="844" viewBox="0 0 390 844"><defs>{DEFS}</defs>'
            f'<rect width="390" height="844" fill="{background}"/>' + "\n".join(layers[n][4] for n in order) + '</svg>')
