from __future__ import annotations
import hashlib, itertools, json, re, time
from datetime import datetime, timezone
from pathlib import Path
ROOT = Path(__file__).resolve().parent
WORKTREE = ROOT.parents[6]
RUN = Path("research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc")
PREFIX = "research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMono."
NAMESPACE = "Math.B699.I11TerminalMono."
def digest(p):
    b = p.read_bytes()
    return {"sha256": hashlib.sha256(b).hexdigest(), "bytes": len(b)}
def save(name, value):
    with (ROOT / name).open("x", encoding="utf-8") as f:
        json.dump(value, f, ensure_ascii=False, indent=2)
        f.write("\n")
def declarations(text):
    out = []
    for mat in re.finditer(r"^(?:noncomputable )?(def|theorem)\s+(\w+)\b", text, re.M):
        kind, name = mat.groups()
        sig = text[mat.end():text.index(":=", mat.end())].strip()
        depth = 0
        for pos, char in enumerate(sig):
            if char in "([{": depth += 1
            elif char in ")]}": depth -= 1
            elif char == ":" and depth == 0: break
        else: raise ValueError(name)
        args, conclusion = sig[:pos].strip(), sig[pos+1:].strip()
        out.append({"name": NAMESPACE + name, "kind": kind, "type": ("∀ " + args + ",\n  " + conclusion) if args else conclusion})
    return out

def audit(module, rows, row_cell, aggregate=False):
    lines = ["import " + PREFIX + module, "", "/-! UNCOMPILED exact-type and transitive-axiom audit. -/", "set_option autoImplicit false", "set_option relaxedAutoImplicit false", "open B699LowIndex Math.B699.I11TerminalMono"]
    if row_cell: lines += ["open Math.B699.CRTPairMax Math.B699.CRTGrid Math.B699.I11TerminalCRT"]
    lines += [""]
    for r in rows: lines += [f"#check (@{r['name']} : {r['type']})", f"#print axioms {r['name']}", ""]
    prints = ["B699LowIndex.coverCheck"] if not row_cell else ["Math.B699.I11TerminalCRT.rowCoverCheck", "Math.B699.I11TerminalCRT.cellCoverCheck"]
    if aggregate: prints = ["B699LowIndex.coverCheck"] + prints
    for name in prints: lines += ["#print " + name]
    return "\n".join(lines) + "\n"

mods, roots = [], []
for source, aud in (("Cover.lean", "ACover.lean"), ("RowCell.lean", "ARowCell.lean")):
    rows = declarations((ROOT / source).read_text(encoding="utf-8-sig"))
    for r in rows: r.update(source=source, audit=aud)
    (ROOT / aud).write_text(audit(Path(source).stem, rows, source == "RowCell.lean"), encoding="utf-8")
    mods.append({"source": source, "audit": aud, "target": (RUN / "lean/I11TerminalMono" / source).as_posix(), "audit_target": (RUN / "lean/I11TerminalMono" / aud).as_posix(), "public_roots": [r["name"] for r in rows]})
    roots += rows
assert len(roots) == 12
(ROOT / "Audit.lean").write_text(audit("RowCell", roots, True, True), encoding="utf-8")
save("AUDIT_ROOTS.json", {"status": "UNCOMPILED", "allowed_axioms": ["propext", "Classical.choice", "Quot.sound"], "public_roots": roots, "module_map": mods, "aggregate_target": (RUN / "lean/I11TerminalMono/Audit.lean").as_posix()})

reference_paths = [
    WORKTREE / "research/tasks/B699-Binomial/runs/20260909-low-index-structure-b41a5a63/lean/IntervalCover.lean",
    WORKTREE / RUN / "lean/I11TerminalCover/Cover.lean",
    WORKTREE / RUN / "lean/I11TerminalCover/Witness.lean",
    WORKTREE / RUN / "lean/I11TerminalCrt/RowCell.lean",
    WORKTREE / RUN / "lean/CrtGrid/Cell.lean",
    WORKTREE / RUN / "lean/CrtPair/Consumer.lean",
    WORKTREE / RUN / "verification/huan-prerequisites/i11-terminal-crt-row-cell.json",
    Path("D:/CodingProject/Math/.tools/elan/toolchains/leanprover--lean4---v4.33.1/src/lean/Init/Data/List/Basic.lean"),
    Path("D:/CodingProject/Math/.tools/elan/toolchains/leanprover--lean4---v4.33.1/src/lean/Init/Data/List/Sublist.lean"),
    Path("D:/CodingProject/Math/.tools/elan/toolchains/leanprover--lean4---v4.33.1/src/lean/Init/Data/List/TakeDrop.lean")
]
row_receipt = json.loads(reference_paths[6].read_text(encoding="utf-8-sig"))
row_hash = digest(reference_paths[3])
assert row_receipt["source_sha256"] == row_hash["sha256"]
save("SOURCE_MAP.json", {"owner": "/root/c2_divisor_resume", "checked_utc": datetime.now(timezone.utc).isoformat(), "source_references": [{"path": str(p), **digest(p)} for p in reference_paths], "module_map": mods, "original_checker": "B699LowIndex.coverCheck", "original_row_checker": "Math.B699.I11TerminalCRT.rowCoverCheck", "original_cell_checker": "Math.B699.I11TerminalCRT.cellCoverCheck", "existing_semantic_API": "Math.B699.I11TerminalCRT.candidateMem_mono is membership monotonicity, not Bool checker monotonicity", "existing_prefix_API_search": "No dedicated coverCheck append/prefix/take/sublist theorem found in task run Lean sources excluding generated rows and experiments", "upstream_row_receipt": str(reference_paths[6]), "upstream_row_source_matches_receipt": True, "upstream_evidence": row_receipt.get("evidence"), "lean_toolchain": "leanprover/lean4:v4.33.1", "new_checker_definitions": 0, "new_sorting_assumptions": 0, "lean_runs": 0})

# Faithful branch order of the unchanged checker, including malformed intervals and empty goals.
def cover(lo, hi, cs):
    for a, b in cs:
        if hi < lo: return True
        if b < lo: continue
        if lo < a: return False
        if hi <= b: return True
        lo = b + 1
    return hi < lo

small, large = ((1,1),), ((2,2),(1,1))
assert cover(1,1,small) and not cover(1,1,large)
intervals = list(itertools.product(range(3), repeat=2))
all_lists = [()] + [xs for n in range(1,4) for xs in itertools.product(intervals, repeat=n)]
suffixes = [()] + [xs for n in range(1,3) for xs in itertools.product(intervals, repeat=n)]
checks, successful_prefixes, take_checks = 0, 0, 0
t0 = time.monotonic()
for cs in all_lists:
    for lo, hi in itertools.product(range(4), repeat=2):
        if cover(lo, hi, cs):
            successful_prefixes += 1
            for suffix in suffixes:
                checks += 1
                assert cover(lo, hi, cs + suffix)
        for k in range(len(cs) + 2):
            take_checks += 1
            if cover(lo, hi, cs[:k]): assert cover(lo, hi, cs)
save("DIAGNOSTIC.json", {"status": "PASS_BOUNDED_PREFIX_DIAGNOSTIC_AND_SUBLIST_COUNTEREXAMPLE_NOT_LEAN", "script_sha256": digest(Path(__file__))["sha256"], "entrypoint": "C:/Python314/python.exe -B prepare_package.py", "algorithm": "Original branch order reproduced exactly, including immediate false at lo<a", "sublist_counterexample": {"lo": 1, "hi": 1, "small": small, "large": large, "small_result": True, "large_result": False, "small_is_sublist": True}, "test_scope": {"interval_endpoints": [0,2], "prefix_lengths": [0,3], "suffix_lengths": [0,2], "lo_hi": [0,3], "malformed_intervals_included": True, "empty_targets_included": True}, "successful_prefixes": successful_prefixes, "append_implication_checks": checks, "take_implication_checks": take_checks, "seconds": round(time.monotonic()-t0,6), "boundary": "Finite branch transcription check only; generic Lean candidate not compiled and runtime resource benefit not measured."})
print(json.dumps({"status": "PREFIX_CANDIDATE_READY_NOT_LEAN", "roots": len(roots), "source_references": len(reference_paths), "append_checks": checks, "take_checks": take_checks, "general_sublist_monotonicity": False}))
