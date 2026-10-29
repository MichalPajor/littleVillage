#!/usr/bin/env python3
"""Odchudza czcionkę TrueType (glyf) do wybranych znaków — bez zewnętrznych bibliotek.

Użycie: subset_font.py <wejście.ttf> <wyjście.ttf> [plik_z_tekstem ...]

Zostają: znaki z JIS X 0208 poziomu 1 (kana i 2965 najczęstszych kanji), interpunkcja japońska,
łacina z polskimi i czeskimi literami oraz wszystkie znaki z podanych plików tekstowych
(np. z przetłumaczonej fabuły — wtedy żadne użyte kanji nie wypadnie).
Tabele układu pionowego i zaawansowanej typografii (GSUB, GPOS, vmtx…) są pomijane:
gra składa tekst poziomo i bez nich.
"""
import struct
import sys

KEEP_TABLES = [b"OS/2", b"cmap", b"cvt ", b"fpgm", b"gasp", b"glyf", b"head", b"hhea", b"hmtx", b"loca", b"maxp", b"name", b"post", b"prep"]


def charset(extra_files):
    chars = set(range(0x20, 0x7F)) | set(range(0xA0, 0x180))           # łacina z polskimi i czeskimi literami
    chars |= set(range(0x2010, 0x2027)) | {0x2030, 0x2032, 0x2033, 0x203B, 0x2116, 0x2190, 0x2192}
    chars |= set(range(0x3000, 0x3040))                                   # interpunkcja CJK
    chars |= set(range(0x3040, 0x3100)) | set(range(0x31F0, 0x3200))      # hiragana, katakana
    chars |= set(range(0xFF01, 0xFF5F)) | set(range(0xFF61, 0xFFA0))      # pełna i połowiczna szerokość
    # JIS X 0208: wiersze 1–47 (symbole, kana, kanji poziomu 1) — przez kodowanie EUC-JP.
    for row in range(0xA1, 0xD0):
        for cell in range(0xA1, 0xFF):
            try:
                chars.add(ord(bytes([row, cell]).decode("euc_jp")))
            except UnicodeDecodeError:
                pass
    for path in extra_files:
        chars |= {ord(c) for c in open(path, encoding="utf-8").read()}
    return chars


def read_tables(data):
    num_tables = struct.unpack(">H", data[4:6])[0]
    tables = {}
    for i in range(num_tables):
        tag, _, offset, length = struct.unpack(">4sIII", data[12 + 16 * i: 28 + 16 * i])
        tables[tag] = data[offset: offset + length]
    return tables


def read_cmap(cmap):
    """Mapowanie znak -> glif z podtabel formatu 4 i 12 (Windows / Unicode)."""
    mapping = {}
    count = struct.unpack(">H", cmap[2:4])[0]
    for i in range(count):
        platform, encoding, offset = struct.unpack(">HHI", cmap[4 + 8 * i: 12 + 8 * i])
        fmt = struct.unpack(">H", cmap[offset: offset + 2])[0]
        if fmt == 4:
            seg_x2 = struct.unpack(">H", cmap[offset + 6: offset + 8])[0]
            ends = offset + 14
            starts = ends + seg_x2 + 2
            deltas = starts + seg_x2
            ranges = deltas + seg_x2
            for s in range(seg_x2 // 2):
                end, = struct.unpack(">H", cmap[ends + 2 * s: ends + 2 * s + 2])
                start, = struct.unpack(">H", cmap[starts + 2 * s: starts + 2 * s + 2])
                delta, = struct.unpack(">h", cmap[deltas + 2 * s: deltas + 2 * s + 2])
                range_offset, = struct.unpack(">H", cmap[ranges + 2 * s: ranges + 2 * s + 2])
                for c in range(start, end + 1):
                    if c == 0xFFFF:
                        continue
                    if range_offset == 0:
                        glyph = (c + delta) & 0xFFFF
                    else:
                        at = ranges + 2 * s + range_offset + 2 * (c - start)
                        glyph, = struct.unpack(">H", cmap[at: at + 2])
                        glyph = (glyph + delta) & 0xFFFF if glyph else 0
                    if glyph:
                        mapping.setdefault(c, glyph)
        elif fmt == 12:
            groups, = struct.unpack(">I", cmap[offset + 12: offset + 16])
            for g in range(groups):
                start, end, first = struct.unpack(">III", cmap[offset + 16 + 12 * g: offset + 28 + 12 * g])
                for c in range(start, end + 1):
                    mapping.setdefault(c, first + c - start)
    return mapping


def glyph_offsets(tables, num_glyphs):
    long_format = struct.unpack(">h", tables[b"head"][50:52])[0] == 1
    loca = tables[b"loca"]
    if long_format:
        return list(struct.unpack(f">{num_glyphs + 1}I", loca[: 4 * (num_glyphs + 1)]))
    return [2 * o for o in struct.unpack(f">{num_glyphs + 1}H", loca[: 2 * (num_glyphs + 1)])]


def components(glyph):
    """Indeksy glifów składowych (glif złożony) i miejsca, w których są zapisane."""
    if len(glyph) < 10 or struct.unpack(">h", glyph[:2])[0] >= 0:
        return []
    found, pos = [], 10
    while True:
        flags, index = struct.unpack(">HH", glyph[pos: pos + 4])
        found.append((pos + 2, index))
        pos += 4 + (4 if flags & 0x0001 else 2)
        pos += 2 if flags & 0x0008 else 4 if flags & 0x0040 else 8 if flags & 0x0080 else 0
        if not flags & 0x0020:
            return found


def build_cmap(mapping):
    """Podtabela formatu 4 (wszystkie zostawione znaki mieszczą się w BMP)."""
    codes = sorted(c for c in mapping if c < 0xFFFF)
    segments = []
    for c in codes:
        if segments and c == segments[-1][1] + 1 and mapping[c] == mapping[segments[-1][1]] + 1:
            segments[-1][1] = c
        else:
            segments.append([c, c])
    segments.append([0xFFFF, 0xFFFF])
    n = len(segments)
    ends = b"".join(struct.pack(">H", e) for _, e in segments)
    starts = b"".join(struct.pack(">H", s) for s, _ in segments)
    deltas = b"".join(struct.pack(">H", ((mapping[s] - s) & 0xFFFF) if s != 0xFFFF else 1) for s, _ in segments)
    range_offsets = b"\0\0" * n
    search = 2 ** (n.bit_length() - 1)
    body = struct.pack(">HHHH", 2 * n, 2 * search, search.bit_length() - 1, 2 * n - 2 * search) + ends + b"\0\0" + starts + deltas + range_offsets
    sub = struct.pack(">HHH", 4, 6 + len(body), 0) + body
    header = struct.pack(">HH", 0, 2) + struct.pack(">HHI", 0, 3, 20) + struct.pack(">HHI", 3, 1, 20)
    return header + sub


def checksum(data):
    data += b"\0" * (-len(data) % 4)
    return sum(struct.unpack(f">{len(data) // 4}I", data)) & 0xFFFFFFFF


def write_font(tables):
    tags = sorted(tables)
    n = len(tags)
    search = 2 ** (n.bit_length() - 1)
    header = struct.pack(">IHHHH", 0x00010000, n, 16 * search, search.bit_length() - 1, 16 * n - 16 * search)
    offset = 12 + 16 * n
    records, body = b"", b""
    for tag in tags:
        data = tables[tag]
        records += struct.pack(">4sIII", tag, checksum(data), offset + len(body), len(data))
        body += data + b"\0" * (-len(data) % 4)
    font = bytearray(header + records + body)
    head_at = 12 + 16 * n + sum(len(tables[t]) + (-len(tables[t]) % 4) for t in tags[: tags.index(b"head")])
    struct.pack_into(">I", font, head_at + 8, (0xB1B0AFBA - checksum(bytes(font))) & 0xFFFFFFFF)
    return bytes(font)


def subset(source, chars):
    tables = read_tables(source)
    num_glyphs = struct.unpack(">H", tables[b"maxp"][4:6])[0]
    offsets = glyph_offsets(tables, num_glyphs)
    glyf = tables[b"glyf"]
    mapping = {c: g for c, g in read_cmap(tables[b"cmap"]).items() if c in chars}

    # Glify do zostawienia: .notdef, glify znaków i — rekurencyjnie — składowe glifów złożonych.
    keep, todo = {0}, list(set(mapping.values()))
    while todo:
        g = todo.pop()
        if g in keep:
            continue
        keep.add(g)
        todo += [index for _, index in components(glyf[offsets[g]: offsets[g + 1]])]
    order = sorted(keep)
    new_id = {old: new for new, old in enumerate(order)}

    new_glyf, new_offsets = bytearray(), []
    for old in order:
        glyph = bytearray(glyf[offsets[old]: offsets[old + 1]])
        for at, index in components(bytes(glyph)):
            struct.pack_into(">H", glyph, at, new_id[index])
        new_offsets.append(len(new_glyf))
        new_glyf += glyph + b"\0" * (-len(glyph) % 4)
    new_offsets.append(len(new_glyf))

    hhea = bytearray(tables[b"hhea"])
    metrics_count = struct.unpack(">H", hhea[34:36])[0]
    hmtx = tables[b"hmtx"]

    def metric(g):
        if g < metrics_count:
            return hmtx[4 * g: 4 * g + 4]
        advance = hmtx[4 * (metrics_count - 1): 4 * (metrics_count - 1) + 2]
        at = 4 * metrics_count + 2 * (g - metrics_count)
        return advance + hmtx[at: at + 2]

    struct.pack_into(">H", hhea, 34, len(order))
    head = bytearray(tables[b"head"])
    struct.pack_into(">h", head, 50, 1)
    struct.pack_into(">I", head, 8, 0)
    maxp = bytearray(tables[b"maxp"])
    struct.pack_into(">H", maxp, 4, len(order))
    post = bytearray(tables[b"post"][:32])
    struct.pack_into(">I", post, 0, 0x00030000)

    result = {tag: tables[tag] for tag in KEEP_TABLES if tag in tables}
    result.update({
        b"glyf": bytes(new_glyf),
        b"loca": struct.pack(f">{len(new_offsets)}I", *new_offsets),
        b"hmtx": b"".join(metric(g) for g in order),
        b"hhea": bytes(hhea),
        b"head": bytes(head),
        b"maxp": bytes(maxp),
        b"post": bytes(post),
        b"cmap": build_cmap({c: new_id[g] for c, g in mapping.items()}),
    })
    return write_font(result), len(mapping), len(order)


if __name__ == "__main__":
    if len(sys.argv) < 3:
        sys.exit(__doc__)
    font, chars, glyphs = subset(open(sys.argv[1], "rb").read(), charset(sys.argv[3:]))
    open(sys.argv[2], "wb").write(font)
    print(f"{sys.argv[2]}: {chars} znaków, {glyphs} glifów, {len(font) / 1024 / 1024:.1f} MB")
