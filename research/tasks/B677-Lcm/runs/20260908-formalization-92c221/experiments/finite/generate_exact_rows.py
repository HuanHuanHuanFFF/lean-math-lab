#!/usr/bin/env python3
"""Generate linear-size group/rank data for the generic Lean row checker.

Generation is untrusted. Acceptance requires compiling generated Check.lean,
whose ordinary `decide` proof evaluates the checker against actual Lean LCMs.
"""
import argparse
from datetime import datetime, timezone
import hashlib
import json
from math import lcm
from pathlib import Path
import time


def quoted_module(path, repo):
    return ".".join(p if p.replace("_", "").isalnum() and not p[0].isdigit()
                    else "«" + p + "»" for p in path.relative_to(repo).with_suffix("").parts)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=2000)
    parser.add_argument("--lengths", type=int, default=33)
    parser.add_argument("--packed", action="store_true")
    parser.add_argument("--tree", action="store_true")
    args = parser.parse_args()
    repo = next(p for p in Path(__file__).resolve().parents if (p / "lake-manifest.json").is_file())
    stamp = datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%S%fZ")
    out = Path(__file__).resolve().parent / f"exact-{args.limit}-{args.lengths}-{stamp}"
    out.mkdir(exist_ok=False)
    start = time.monotonic()
    row = [n + 1 for n in range(args.limit)]
    blocks = []
    stats = []
    for k in range(1, args.lengths + 1):
        first_by_value = {}
        for n, value in enumerate(row):
            if value in first_by_value:
                assert n < first_by_value[value] + k, (first_by_value[value], n, k, value)
            else:
                first_by_value[value] = n
        first = [first_by_value[v] for v in sorted(first_by_value)]
        ranks = {row[n]: r for r, n in enumerate(first)}
        rank = [ranks[v] for v in row]
        assert all(row[first[i]] < row[first[i + 1]] for i in range(len(first) - 1))
        assert all(row[first[rank[n]]] == row[n] and first[rank[n]] <= n < first[rank[n]] + k
                   for n in range(args.limit))
        def render(indices):
            if not args.packed:
                return "#[" + ",".join(map(str, indices)) + "]"
            width = max(1, (args.limit - 1).bit_length())
            codes = [sum(value << (width * i) for i, value in enumerate(indices[j:j + 64]))
                     for j in range(0, len(indices), 64)]
            return f"B677Finite.decodeIndices {width} {len(indices)} #[" + ",".join(map(str, codes)) + "]"
        if args.tree:
            width = max(1, (args.limit - 1).bit_length())
            def render_tree(xs):
                if len(xs) <= 64:
                    return ".block " + str(sum(value << (width * i) for i, value in enumerate(xs)))
                cut = len(xs) // 2
                return f".node {cut} (" + render_tree(xs[:cut]) + ") (" + render_tree(xs[cut:]) + ")"
            blocks.append(f"  {{ width := {width}, groups := {len(first)}, first := " + render_tree(first) + ",\n"
                          "    rank := " + render_tree(rank) + " }")
        else:
            blocks.append("  { first := " + render(first) + ",\n"
                          "    rank := " + render(rank) + " }")
        stats.append({"k": k, "groups": len(first), "starts": args.limit})
        row = [lcm(v, n + k + 1) for n, v in enumerate(row)]
    data = out / "Data.lean"
    core = "TreeRows" if args.tree else "ExactRows"
    cert_type = "TreeRowCertificate" if args.tree else "RowCertificate"
    data.write_text(
        f"import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.{core}\n"
        "set_option maxHeartbeats 0\nset_option maxRecDepth 1000000\n"
        "namespace B677FiniteGenerated\n"
        f"def certificates : List B677Finite.{cert_type} := [\n" + ",\n".join(blocks) + "\n]\n"
        "end B677FiniteGenerated\n")
    check = out / "Check.lean"
    depth = max(0, (args.limit - 1).bit_length())
    checked_expr = (f"B677Finite.treeCheckRows {depth} {args.limit} 1 (B677Finite.initialTree {depth} 0)"
                    if args.tree else f"B677Finite.checkRows 1 (B677Finite.firstRow {args.limit})")
    consumer = ("B677Finite.checked_tree_rows_noncollision (by decide +kernel) certificate_checked"
                if args.tree else "B677Finite.checked_rows_noncollision certificate_checked")
    check.write_text(
        f"import {quoted_module(data, repo)}\n"
        "set_option maxHeartbeats 0\nset_option maxRecDepth 1000000\n"
        "namespace B677FiniteGenerated\n"
        f"theorem certificate_checked : {checked_expr} certificates = true := by decide +kernel\n"
        f"theorem certified_finite_range : ∀ n m k : ℕ, 0 < k → k ≤ {args.lengths} → n + k ≤ m → m < {args.limit} → B677.intervalLcm n k ≠ B677.intervalLcm m k := by\n"
        f"  have h := {consumer}\n"
        f"  have hlen : certificates.length = {args.lengths} := by decide +kernel\n"
        "  simpa only [hlen] using h\n"
        "/-- info: 'B677FiniteGenerated.certified_finite_range' depends on axioms: [propext, Classical.choice, Quot.sound] -/\n"
        "#guard_msgs in\n#print axioms certified_finite_range\n"
        "end B677FiniteGenerated\n")
    report = {"evidence": "untrusted input generation; requires Lean compilation",
              "limit": args.limit, "lengths": args.lengths, "packed": args.packed, "tree": args.tree, "rows": stats,
              "seconds": time.monotonic() - start, "data_bytes": data.stat().st_size,
              "data_sha256": hashlib.sha256(data.read_bytes()).hexdigest(),
              "check_sha256": hashlib.sha256(check.read_bytes()).hexdigest(),
              "generator_sha256": hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
    (out / "generation.json").write_text(json.dumps(report, indent=2) + "\n")
    print(json.dumps({k: v for k, v in report.items() if k != "rows"}, indent=2))
    print(out)


if __name__ == "__main__":
    main()
