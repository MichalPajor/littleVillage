# Ramki warstw dopasowane do rysunku. Gra rasteryzuje kazda warstwe w jej ramce (x, y, w, h), wiec wszystko, co wystaje
# (glowa nad ramka, druga swieca obok), jest ucinane. ramki_pomiar.py mierzy w przegladarce, co naprawde rysuje kazda warstwa,
# i zapisuje do ramki.json powiekszone ramki; common.write_layers i bgjson.entry biora je stad, a apply_json() poprawia
# takze wpisy tel pisane recznie (stare generatory). Punkt obrotu animacji (anchorX/anchorY) zostaje w tym samym miejscu plotna.
#   python3 tools/Backgrounds/ramki.py      -> poprawia pliki warstw i src/LittleVillage/Resources/Raw/backgrounds.json wg ramki.json
import json, os

_DIR = os.path.dirname(os.path.abspath(__file__))
PATH = os.path.join(_DIR, "ramki.json")
RAMKI = json.load(open(PATH, encoding="utf-8")) if os.path.exists(PATH) else {}


def box(image, x, y, w, h):
    """Ramka warstwy `image` (nazwa pliku bez rozszerzenia) — dopasowana, jesli zmierzono, ze rysunek wystaje."""
    if image not in RAMKI:
        return (x, y, w, h)
    fx, fy, fw, fh = RAMKI[image]
    x0, y0 = min(x, fx), min(y, fy)
    return (x0, y0, max(x + w, fx + fw) - x0, max(y + h, fy + fh) - y0)


def anim_for(anim, old, new):
    """Animacja z kotwica przeliczona ze starej ramki na nowa (domyslna kotwica: 0.5, 1)."""
    if not anim or tuple(old) == tuple(new):
        return anim
    (ox, oy, ow, oh), (nx, ny, nw, nh) = old, new
    a = dict(anim)
    ax, ay = ox + a.get("anchorX", 0.5) * ow, oy + a.get("anchorY", 1) * oh
    a["anchorX"], a["anchorY"] = round((ax - nx) / nw, 3), round((ay - ny) / nh, 3)
    return a


def apply_json(json_path=os.path.join(_DIR, "..", "..", "src", "LittleVillage", "Resources", "Raw", "backgrounds.json")):
    """Podmienia ramki (i kotwice) warstw w backgrounds.json, ktore maja dopasowana ramke. Linie bez zmian zostaja nietkniete."""
    lines = open(json_path, encoding="utf-8").read().split("\n")
    changed = 0
    for i, line in enumerate(lines):
        s = line.strip()
        if not s.startswith('{"image": '):
            continue
        comma = s.endswith(",")
        layer = json.loads(s.rstrip(","))
        name = layer["image"].rsplit(".", 1)[0]
        if name not in RAMKI or "frames" in layer:
            continue
        old = (layer["x"], layer["y"], layer["width"], layer["height"])
        new = box(name, *old)
        if old == new:
            continue
        layer["x"], layer["y"], layer["width"], layer["height"] = new
        if "animation" in layer:
            layer["animation"] = anim_for(layer["animation"], old, new)
        indent = line[:len(line) - len(line.lstrip())]
        lines[i] = indent + json.dumps(layer, ensure_ascii=False, separators=(", ", ": ")) + ("," if comma else "")
        changed += 1
    open(json_path, "w", encoding="utf-8").write("\n".join(lines))
    return changed


def apply_svg(img_dir=os.path.join(_DIR, "..", "..", "src", "LittleVillage", "Resources", "Images")):
    """Rozszerza viewBox plikow warstw, ktore maja dopasowana ramke (tez tych bez generatora albo z wlasnym zapisem)."""
    import re
    changed = 0
    for name in RAMKI:
        path = os.path.join(img_dir, name + ".svg")
        if not os.path.exists(path):
            continue
        s = open(path, encoding="utf-8").read()
        m = re.search(r'<svg xmlns="http://www.w3.org/2000/svg" width="[^"]*" height="[^"]*" viewBox="([^"]+)"', s)
        old = tuple(int(float(v)) for v in m.group(1).split())
        new = box(name, *old)
        if new == old:
            continue
        s = s[:m.start()] + f'<svg xmlns="http://www.w3.org/2000/svg" width="{new[2]}" height="{new[3]}" viewBox="{new[0]} {new[1]} {new[2]} {new[3]}"' + s[m.end():]
        open(path, "w", encoding="utf-8").write(s)
        changed += 1
    return changed


if __name__ == "__main__":
    print("poprawione pliki warstw:", apply_svg())
    print("poprawione warstwy w backgrounds.json:", apply_json())
