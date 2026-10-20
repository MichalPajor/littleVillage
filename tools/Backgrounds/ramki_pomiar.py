# Pomiar ramek warstw: dla kazdego pliku bg_*.svg przegladarka (Chrome headless) mierzy getBBox rysunku i porownuje z viewBox.
# Warstwy, ktorych rysunek wystaje poza ramke (w obrebie plotna 390x844), dostaja w ramki.json ramke powiekszona o margines
# na grubosc kreski i drganie filtra "ink". Potem trzeba przegenerowac tla (common.write_layers bierze ramki stad)
# i uruchomic ramki.py (poprawia reczne wpisy w backgrounds.json). Patrz ramki.py.
#   python3 tools/Backgrounds/ramki_pomiar.py src/LittleVillage/Resources/Images [--sprawdz]
import sys, os, re, json, math, subprocess, tempfile, html

MARGIN = 3
d = sys.argv[1]
check_only = "--sprawdz" in sys.argv
bgjson = json.loads("\n".join(l for l in open(os.path.join(d, "..", "Raw", "backgrounds.json"), encoding="utf-8").read().split("\n") if not l.lstrip().startswith("//")))
frames = {f.rsplit(".", 1)[0] for bg in bgjson["backgrounds"].values() if isinstance(bg, dict) for l in bg.get("layers", []) for f in l.get("frames", [])} \
    if "backgrounds" in bgjson else {f.rsplit(".", 1)[0] for bg in bgjson.values() if isinstance(bg, dict) for l in bg.get("layers", []) for f in l.get("frames", [])}

parts = []
for fn in sorted(os.listdir(d)):
    name = fn[:-4]
    if not (fn.startswith("bg_") and fn.endswith(".svg")) or fn.startswith("bg_dol_") or name in frames:
        continue
    s = open(os.path.join(d, fn), encoding="utf-8").read()
    vb = re.search(r'viewBox="([^"]+)"', s).group(1)
    body = s[s.index("</defs>") + 7:s.rindex("</svg>")] if "</defs>" in s else s[s.index(">", s.index("<svg")) + 1:s.rindex("</svg>")]
    parts.append(f'<svg data-f="{name}" data-vb="{vb}" width="10" height="10"><g>{body}</g></svg>')
js = """const r=[];for(const s of document.querySelectorAll('svg[data-f]')){let b;try{b=s.querySelector('g').getBBox()}catch(e){continue}
if(!b.width&&!b.height)continue;r.push([s.dataset.f,s.dataset.vb,b.x,b.y,b.width,b.height].join(' '));}
document.body.innerHTML='<pre>'+r.join('\\n')+'</pre>';"""
with tempfile.NamedTemporaryFile("w", suffix=".html", delete=False, encoding="utf-8") as f:
    f.write("<html><body>" + "".join(parts) + f"<script>{js}</script></body></html>")
dom = subprocess.run(["google-chrome", "--headless=new", "--no-sandbox", "--disable-gpu", "--dump-dom", "file://" + f.name],
                     capture_output=True, text=True, timeout=600).stdout
os.unlink(f.name)
rows = html.unescape(re.search(r"<pre>(.*)</pre>", dom, re.S).group(1)).strip().split("\n")

path = os.path.join(os.path.dirname(os.path.abspath(__file__)), "ramki.json")
ramki = json.load(open(path, encoding="utf-8")) if os.path.exists(path) else {}
bad = []
for row in rows:
    name, x, y, w, h, bx, by, bw, bh = row.split()
    x, y, w, h, bx, by, bw, bh = map(float, (x, y, w, h, bx, by, bw, bh))
    # liczy sie tylko to, co lezy na plotnie
    cx0, cy0 = max(bx - MARGIN, 0), max(by - MARGIN, 0)
    cx1, cy1 = min(bx + bw + MARGIN, 390), min(by + bh + MARGIN, 844)
    if cx0 >= x - 0.5 and cy0 >= y - 0.5 and cx1 <= x + w + 0.5 and cy1 <= y + h + 0.5:
        continue
    nx0, ny0 = math.floor(min(x, cx0)), math.floor(min(y, cy0))
    nx1, ny1 = math.ceil(max(x + w, cx1)), math.ceil(max(y + h, cy1))
    bad.append(name)
    ramki[name] = [nx0, ny0, nx1 - nx0, ny1 - ny0]
if check_only:
    print("\n".join(bad))
    sys.exit(1 if bad else 0)
json.dump(dict(sorted(ramki.items())), open(path, "w", encoding="utf-8"), indent=0, ensure_ascii=False)
print(f"dopasowane ramki: {len(bad)} (w ramki.json razem {len(ramki)})")
