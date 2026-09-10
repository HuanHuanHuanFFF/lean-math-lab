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



def exact_intervals(i, M, lo, upper):
    out = []
    for p in range(2, i):
        if any(p % d == 0 for d in range(2, __import__("math").isqrt(p) + 1)):
            continue
        residue, alpha = i, 0
        while residue % p == 0:
            residue //= p
            alpha += 1
        h, Q = 0, 1
        while Q <= upper:
            if alpha < h:
                amin = max(1, max(0, lo - i) // Q)
                amax = min(M // p**alpha, max(0, upper - 1) // Q)
                for A in range(amin, amax + 1):
                    a, b = max(lo, A * Q), min(max(0, upper - 1), A * Q + i - 1)
                    if a <= b:
                        out.append((p, a, b))
            h += 1
            Q *= p
    return out


def interval_text(values):
    return "[" + ", ".join("(%d, %d, %d)" % v for v in values) + "]"


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
    geometry = None
    if i != 29:
        bounds = []
        for good in goods:
            a, b = map(int, re.findall(r"\d+", good)[:2])
            bounds.append("(%d, %d)" % (a, b))
        geometry = add(folder / "Geometry.lean", [data, RUN / "lean/LayerParts.lean"],
            "def " + tag + "_bounds : List NatInterval :=\n  [" + ", ".join(bounds) + "]\n\n" +
            "theorem " + tag + "_bounds_eq : " + tag + ".goods.map goodSegmentBounds = " +
            tag + "_bounds := by\n  rfl\n", [tag + "_bounds_eq"])

    def add_independent_layer(k, layer):
        lo, upper, M = map(int, re.findall(r"\d+", layer))
        values = exact_intervals(i, M, lo, upper)
        prefix = tag + "_layer%03d" % k
        ivs, chunks = prefix + "_intervals", prefix + "_chunks"
        arith, enum, pairs, final = [prefix + suffix for suffix in
                                   ["_arithmetic", "_enumeration", "_pairs", "_checked"]]
        size = max(1, min(16, 2048 // max(1, len(values))))
        groups = [values[a:a+size] for a in range(0, len(values), size)] if len(values) > 64 else []
        block_names = [prefix + "_block%03d" % a for a in range(len(groups))]
        body = "def " + ivs + " : List ColouredInterval :=\n  " + interval_text(values) + "\n\n"
        for block_name, group in zip(block_names, groups):
            body += "def " + block_name + " : List ColouredInterval :=\n  " + interval_text(group) + "\n\n"
        if groups:
            body += "def " + chunks + " : List (List ColouredInterval) :=\n  [" + ", ".join(block_names) + "]\n\n"
        datum = add(folder / ("Layer%03dData.lean" % k), [geometry], body, [ivs])
        arithmetic = add(folder / ("Layer%03dArithmetic.lean" % k), [geometry],
            "theorem " + arith + " : LayerArithmeticValid " + tag + ".height " + layer +
            " := by\n  decide +kernel\n", [arith])
        enumeration = add(folder / ("Layer%03dEnumeration.lean" % k), [datum],
            "theorem " + enum + " :\n    activePowerIntervalList %d %d %d %d = " % (i, M, lo, upper) +
            ivs + " := by\n  decide +kernel\n", [enum])
        bounds = tag + "_bounds"
        row_function = ("(fun I => " + ivs + ".all (fun J =>\n      if I.1 = J.1 then true else " +
            "coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) " + bounds + "))")
        if not groups:
            pair_proof = add(folder / ("Layer%03dPairs.lean" % k), [datum],
                "theorem " + pairs + " : pairCoverCheck " + ivs + " " + bounds +
                " = true := by\n  decide +kernel\n", [pairs])
        else:
            checked_blocks, block_roots = [], []
            for a, block in enumerate(block_names):
                name = prefix + "_pairs%03d" % a
                checked_blocks.append(name)
                block_roots.append(add(folder / ("Layer%03dPairBlock%03d.lean" % (k, a)), [datum],
                    "theorem " + name + " :\n    " + block + ".all " + row_function +
                    " = true := by\n  decide +kernel\n", [name]))
            eq_name = prefix + "_chunks_eq"
            body = ("theorem " + eq_name + " : " + chunks + ".flatten = " + ivs +
                " := by\n  rfl\n\n" +
                "theorem " + pairs + " : pairCoverCheck " + ivs + " " + bounds +
                " = true := by\n  apply pairCoverCheck_of_chunks " + eq_name +
                "\n  intro block hblock\n  simp only [" + chunks +
                ", List.mem_cons, List.mem_nil_iff, or_false] at hblock\n" +
                "  rcases hblock with " + " | ".join(["rfl"] * len(groups)) + "\n" +
                "".join("  · exact " + name + "\n" for name in checked_blocks))
            pair_proof = add(folder / ("Layer%03dPairs.lean" % k),
                [*block_roots, RUN / "lean/PairChunks.lean"], body, [eq_name, pairs])
        checked = add(folder / ("Layer%03dChecked.lean" % k),
            [arithmetic, enumeration, pair_proof],
            "theorem " + final + " :\n    coverLayerCheck " + tag + ".height " +
            tag + ".goods " + layer + " = true := by\n  exact coverLayerCheck_of_parts " +
            arith + " " + enum + " " + tag + "_bounds_eq " + pairs + "\n", [final])
        return checked, final

    parts, names = [], []
    for start in range(0, len(layers), 4):
        if i != 29:
            layer_roots, layer_names = [], []
            for k in range(start, min(start + 4, len(layers))):
                root, name = add_independent_layer(k, layers[k])
                layer_roots.append(root)
                layer_names.append(name)
                names.append(name)
            parts.append(add(folder / ("Layers%03d.lean" % start),
                layer_roots, "", layer_names))
            continue
        imports, body, local_names = [data], "", []
        for k in range(start, min(start + 4, len(layers))):
            name = tag + "_layer%03d_checked" % k
            names.append(name)
            if k in [0, 113]:
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
