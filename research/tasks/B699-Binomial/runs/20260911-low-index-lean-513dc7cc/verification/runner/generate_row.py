#!/usr/bin/env python3
"""Generate candidate proofs for one specified phase-A index from its frozen row.

The original checker is unchanged. The generated Original root is the only
possible whole-index acceptance point; generation itself proves nothing.
"""
from __future__ import annotations
import argparse
import hashlib
import json
import re
from pathlib import Path

RUN = Path("research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc")
OLD = Path("research/tasks/B699-Binomial/runs/20260909-low-index-structure-b41a5a63")
NS = "B699LowIndex.LowIndexLean513dc7cc"


def module(path):
    return ".".join(x if re.fullmatch(r"[A-Za-z_][A-Za-z0-9_]*", x) else "«" + x + "»"
                    for x in path.with_suffix("").parts)


def source(imports, body, names):
    return ("".join("import " + module(p) + "\n" for p in dict.fromkeys(imports)) +
        "\nset_option maxRecDepth 4096\nset_option exponentiation.threshold 1000000\n\nnamespace " +
        NS + "\n\n" + body + "\nend " + NS + "\n\n" +
        "".join("#print axioms " + NS + "." + n + "\n" for n in names))


def save(path, text):
    path.parent.mkdir(parents=True, exist_ok=True)
    if path.exists() and path.read_text() != text:
        raise RuntimeError("Existing differing source is preserved: " + str(path))
    if not path.exists():
        path.write_text(text)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--i", type=int, required=True)
    parser.add_argument("--plan", type=Path, required=True)
    args = parser.parse_args()
    i = args.i
    if i != 29 and not 35 <= i <= 184:
        parser.error("Only the 151 specified phase-A indices are permitted")
    tag = "row%03d" % i
    old = OLD / "lean/coverage/rows" / ("Row%03d.lean" % i)
    text = old.read_text()
    prefix = text.split("theorem " + tag + "_registered")[0]
    match = re.search(r"i := (\d+), r := (\d+), s := (\d+), n0Power10 := (\d+)", prefix)
    if not match or int(match[1]) != i:
        raise RuntimeError("Wrong frozen height datum")
    _, r, s, power = map(int, match.groups())
    goods = re.findall(r"\{ lower := \d+, upper := \d+, witness := RowWitness\.(?:topPrime|largeDivisor) \d+ \}", prefix)
    layers = re.findall(r"\{ lower := \d+, upper := \d+, M := \d+ \}", prefix)
    if not goods or not layers or (i == 29 and (len(goods), len(layers)) != (228, 114)):
        raise RuntimeError("Frozen row completeness check failed")
    folder = RUN / "lean/rows" / ("Row%03d" % i)
    data = RUN / "lean" / ("Row%03dData.lean" % i)
    data_text = prefix.replace("set_option maxRecDepth 65536", "set_option maxRecDepth 4096")
    data_text = data_text.replace("set_option maxHeartbeats 0\n", "")
    data_text = data_text.replace("namespace B699LowIndex", "namespace " + NS)
    data_text += "\nend " + NS + "\n\n#print axioms " + NS + "." + tag + "\n"
    save(data, data_text)
    outputs = [data]
    roots = []

    def add(path, imports, body, names):
        save(path, source(imports, body, names))
        outputs.append(path)
        roots.append(path)
        return path

    names, parts = [], []
    for start in range(0, len(goods), 16):
        imports = [data, RUN / "lean/WitnessBridge.lean"]
        local_names, body = [], ""
        for k in range(start, min(start + 16, len(goods))):
            name = tag + "_good%03d_checked" % k
            names.append(name)
            local_names.append(name)
            if i == 29 and k in [0, 56, 227]:
                imports.append(RUN / "lean" / ("Witness%03d.lean" % k))
                proof = "exact " + tag + "_witness%03d_checked" % k
            elif ".topPrime" in goods[k]:
                proof = ("exact good_top_prime_checked (i := %d) (r := %d) (s := %d) " % (i, r, s) +
                         "(by decide) (by decide +kernel) (by decide) (by decide)")
            else:
                proof = "decide +kernel"
            body += ("theorem " + name + " :\n    goodSegmentCheck %d %d %d\n      " % (i, r, s) +
                     goods[k] + " = true := by\n  " + proof + "\n\n")
        parts.append(add(folder / ("Goods%03d.lean" % start), imports, body, local_names))
    goods_checked = add(folder / "GoodsChecked.lean", parts,
        "theorem " + tag + "_goods_checked :\n    " + tag +
        ".goods.all (goodSegmentCheck " + tag + ".height.i " + tag + ".height.r " +
        tag + ".height.s) = true := by\n  change " + tag +
        "_goods.all (goodSegmentCheck %d %d %d) = true\n  simp only [" % (i, r, s) +
        tag + "_goods, List.all_cons, List.all_nil,\n    " +
        ",\n    ".join(names) + ", Bool.true_and]\n", [tag + "_goods_checked"])
    a = text.index("theorem " + tag + "_registered")
    b = text.index("theorem " + tag + "_goods_checked")
    c = text.index("theorem " + tag + "_small_checked")
    d = text.index("theorem " + tag + "_layer000_checked")
    metadata = add(folder / "Metadata.lean", [data], text[a:b] + text[c:d],
        [tag + suffix for suffix in ["_registered", "_small_checked", "_layerCover_checked"]])
    parts, names = [], []
    for start in range(0, len(layers), 4):
        imports, body, local_names = [data], "", []
        for k in range(start, min(start + 4, len(layers))):
            name = tag + "_layer%03d_checked" % k
            names.append(name)
            if i == 29 and k in [0, 113]:
                imports.append(RUN / "lean" / ("Layer%03d.lean" % k))
                continue
            local_names.append(name)
            body += ("theorem " + name + " :\n    coverLayerCheck " + tag + ".height " +
                     tag + ".goods " + layers[k] + " = true := by\n  decide +kernel\n\n")
        parts.append(add(folder / ("Layers%03d.lean" % start), imports, body, local_names))
    layers_checked = add(folder / "LayersChecked.lean", parts,
        "theorem " + tag + "_layers_checked :\n    " + tag +
        ".layers.all (coverLayerCheck " + tag + ".height " + tag +
        ".goods) = true := by\n  change " + tag +
        "_layers.all (coverLayerCheck " + tag + ".height " + tag +
        ".goods) = true\n  simp only [" + tag + "_layers, List.all_cons, List.all_nil,\n    " +
        ",\n    ".join(names) + ", Bool.true_and]\n", [tag + "_layers_checked"])
    checked = add(folder / "Checked.lean", [metadata, goods_checked, layers_checked],
        "theorem " + tag + "_checked : finiteCoverRowCheck " + tag + " = true := by\n  " +
        "simp only [finiteCoverRowCheck, " + tag + "_registered, " + tag +
        "_goods_checked,\n    " + tag + "_small_checked, " + tag +
        "_layerCover_checked, " + tag + "_layers_checked, Bool.true_and]\n", [tag + "_checked"])
    original = add(folder / "Original.lean", [checked],
        "theorem common_i%03d :\n    ∀ n j : ℕ, 1 ≤ %d ∧ %d < j ∧ j ≤ n / 2 →\n" % (i, i, i) +
        "      ∃ p : ℕ, p.Prime ∧ %d ≤ p ∧ p ∣ Nat.choose n %d ∧ p ∣ Nat.choose n j := by\n" % (i, i) +
        "  intro n j h\n  obtain ⟨p, hp, hpi, hgcd⟩ :=\n    common_of_finite_cover_row_checked " +
        tag + "_checked h.2.1 h.2.2\n  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),\n" +
        "    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩\n", ["common_i%03d" % i])
    plan = {"kind": "uncompiled_candidates", "i": i, "frozen_source": str(old),
            "frozen_source_sha256": hashlib.sha256(old.read_bytes()).hexdigest(),
            "height": [i, r, s, power], "goods": len(goods), "layers": len(layers),
            "root": str(original), "roots": list(map(str, roots)),
            "outputs": [{"path": str(p), "sha256": hashlib.sha256(p.read_bytes()).hexdigest()} for p in outputs]}
    args.plan.parent.mkdir(parents=True, exist_ok=True)
    args.plan.write_text(json.dumps(plan, indent=2) + "\n")
    print("B699_PLAN " + json.dumps({k: v for k, v in plan.items() if k not in ["outputs", "roots"]}))


if __name__ == "__main__":
    main()
