# Rysunki dostarczone przez autora (katalog assets/):
#   wilczek.svg  — pies siedzi, wilczek2.svg — pies szczeka z profilu, topielec.svg — stwor z mokradel.
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
    body = "\n".join(p for (c, p) in parts if not any(c.startswith(k) for k in skip))
    return f'<g transform="{transform}">\n{opening}\n{body}\n</g>\n</g>'


def sitting(transform, skip=()):
    return drawing("wilczek.svg", transform, skip)


def barking(transform, skip=()):
    return drawing("wilczek2.svg", transform, skip)


def topielec(transform, skip=()):
    """Stwor z mokradel. Uklad rysunku: oko (96,164), paszcza (92,212), stopy na y=582."""
    return drawing("topielec.svg", transform, skip)
