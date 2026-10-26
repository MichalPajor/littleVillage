# Zapis wpisow tel do src/LittleVillage/Resources/Raw/backgrounds.json (jedna warstwa w linii, naglowek z komentarzami zostaje).
#   entry(prefix, order, L, anim, reveal, extra)  -> lista warstw (slowniki)
#   upsert(key, layers)                            -> podmienia wpis tla albo dopisuje go na koncu (z dolnym planem z dolny_plan.py)
# extra[nazwa] moze zawierac: frames (lista nazw warstw L — klatki), appearAfter, hideAfter, hideOn, fadeDuration, noInvert, depth.
import json, os
import ramki

JSON_PATH = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "src", "LittleVillage", "Resources", "Raw", "backgrounds.json")
# Postacie, ktorych stopy chowaly sie pod okno z tekstem (gorna ramka okna zaslania juz od ~424): warstwa -> o ile ja podniesc.
PODNIES = json.load(open(os.path.join(os.path.dirname(os.path.abspath(__file__)), "podnies.json"), encoding="utf-8"))


def podnies(image):
    return next((dy for prefix, dy in PODNIES.items() if image.startswith(prefix)), 0)


def entry(prefix, order, L, anim=None, reveal=None, extra=None):
    anim, reveal, extra = anim or {}, reveal or {}, extra or {}
    layers = []
    for name in order:
        ex = dict(extra.get(name, {}))
        frames = ex.pop("frames", None)
        first = frames[0] if frames else name
        x, y, w, h, _ = L[first]
        fit = ramki.box(f"{prefix}_{first}", x, y, w, h) if not frames else (x, y, w, h)
        d = {"image": f"{prefix}_{first}.png", "x": fit[0], "y": fit[1] - podnies(f"{prefix}_{first}"), "width": fit[2], "height": fit[3]}
        if name in anim:
            d["animation"] = ramki.anim_for(anim[name], (x, y, w, h), fit)
        if name in reveal:
            d["revealOn"] = reveal[name]
        if frames:
            d["frames"] = [f"{prefix}_{f}.png" for f in frames]
        d.update(ex)
        layers.append(d)
    return layers


def _fmt(key, layers, width=390, height=844, color="#EDEBE6"):
    rows = ",\n".join("        " + json.dumps(l, ensure_ascii=False, separators=(", ", ": ")) for l in layers)
    return (f'    "{key}": {{\n      "width": {width},\n      "height": {height},\n      "backgroundColor": "{color}",\n'
            f'      "layers": [\n{rows}\n      ]\n    }}')


def upsert(key, layers):
    # dolny plan (to, co widac po schowaniu okna z tekstem) doklejany zawsze na koncu — patrz dolny_plan.py
    import dolny_plan
    layers = [l for l in layers if not l["image"].startswith("bg_dol_")]
    dol = dolny_plan.layers_for(key, layers)
    # dolny plan zaraz za pierwszym planem (*_przod), zeby postacie i klosy dalej byly na wierzchu; bez przodu — za tlem
    import ciaglosc
    pi = ciaglosc.przod_index(layers)
    at = pi + 1 if pi is not None else 1
    layers = layers[:at] + dol + layers[at:]
    s = open(JSON_PATH, encoding="utf-8").read()
    lines = s.split("\n")
    start = next((i for i, l in enumerate(lines) if l.startswith(f'    "{key}": {{')), None)
    block = _fmt(key, layers)
    if start is not None:
        end = next(i for i in range(start + 1, len(lines)) if lines[i] in ("    }", "    },"))
        comma = "," if lines[end].endswith(",") else ""
        lines[start:end + 1] = (block + comma).split("\n")
        s = "\n".join(lines)
    else:
        end = s.rstrip().rfind("}")
        end2 = s.rstrip()[:end].rstrip().rfind("}")
        s = s[:end2].rstrip() + ",\n" + block + "\n  }\n}\n"
    json.loads("\n".join(l for l in s.split("\n") if not l.lstrip().startswith("//")))
    open(JSON_PATH, "w", encoding="utf-8").write(s)
