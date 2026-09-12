from __future__ import annotations
import hashlib, json, re, time
from datetime import datetime, timezone
from pathlib import Path
ROOT = Path(__file__).resolve().parent
WORKTREE = ROOT.parents[6]
RUN = Path("research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc")
PREFIX = "research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.C2FourIntervals."
NAMESPACE = "Math.B699.C2FourIntervals."

def digest(p):
    b = p.read_bytes()
    return {"sha256": hashlib.sha256(b).hexdigest(), "bytes": len(b)}
def output(name, data):
    with (ROOT / name).open("x", encoding="utf-8") as f:
        json.dump(data, f, ensure_ascii=False, indent=2)
        f.write("\n")

def declarations(text):
    result = []
    for mat in re.finditer(r"^(?:noncomputable )?(def|theorem)\s+(\w+)\b", text, re.M):
        kind, name = mat.groups()
        sig = text[mat.end():text.index(":=", mat.end())].strip()
        depth = 0
        sep = None
        for i, c in enumerate(sig):
            if c in "([{": depth += 1
            elif c in ")]}": depth -= 1
            elif c == ":" and depth == 0:
                sep = i
                break
        assert sep is not None, name
        args, conclusion = sig[:sep].strip(), sig[sep+1:].strip()
        result.append({"name": NAMESPACE + name, "kind": kind, "type": ("∀ " + args + ",\n  " + conclusion) if args else conclusion})
    return result

def audit(import_name, rows):
    lines = ["import " + import_name, "", "/-! UNCOMPILED. Explicit types, definition bodies and transitive axioms. -/", "set_option autoImplicit false", "set_option relaxedAutoImplicit false", "open scoped BigOperators", "open Math.B699 Math.B699.C2FourIntervals", ""]
    for r in rows:
        lines += [f"#check (@{r['name']} : {r['type']})", f"#print axioms {r['name']}"]
        if r["kind"] == "def": lines += [f"#print {r['name']}"]
        lines += [""]
    return "\n".join(lines)

modules = []
all_roots = []
for source, audit_name in (("Intervals.lean", "AIntervals.lean"), ("Product.lean", "AProduct.lean"), ("LogBridge.lean", "ALog.lean")):
    rows = declarations((ROOT / source).read_text(encoding="utf-8-sig"))
    for r in rows: r.update(source=source, audit=audit_name)
    (ROOT / audit_name).write_text(audit(PREFIX + Path(source).stem, rows), encoding="utf-8")
    modules.append({"source": source, "audit": audit_name, "target": (RUN / "lean/C2FourIntervals" / source).as_posix(), "audit_target": (RUN / "lean/C2FourIntervals" / audit_name).as_posix(), "module": PREFIX + Path(source).stem, "public_roots": [r["name"] for r in rows]})
    all_roots += rows
assert len(all_roots) == 26
(ROOT / "Audit.lean").write_text(audit(PREFIX + "LogBridge", all_roots), encoding="utf-8")
output("AUDIT_ROOTS.json", {"status": "UNCOMPILED", "allowed_axioms": ["propext", "Classical.choice", "Quot.sound"], "public_roots": all_roots, "module_map": modules, "aggregate": "Audit.lean", "aggregate_target": (RUN / "lean/C2FourIntervals/Audit.lean").as_posix()})

refs = [
    ROOT.parent / "huan-i13-c2-growth-route-audit-5e2d13bb/LEAN_INTERFACE.md",
    ROOT.parent / "huan-i13-c2-growth-route-audit-5e2d13bb/REPORT.md",
    ROOT.parent / "huan-c2-direct-divisor-5e2d13bb/Finite.lean",
    ROOT.parent / "huan-c2-direct-divisor-5e2d13bb/PACKAGE_SHA256.json",
    Path("D:/CodingProject/Math/.tools/elan/toolchains/leanprover--lean4---v4.33.1/src/lean/Init/Data/Nat/Div/Basic.lean"),
    Path("D:/CodingProject/Math/.tools/pi5e2d/mathlib/Mathlib/Data/Nat/Log.lean"),
    Path("D:/CodingProject/Math/.tools/pi5e2d/mathlib/Mathlib/Data/Finset/Union.lean"),
    Path("D:/CodingProject/Math/.tools/pi5e2d/mathlib/Mathlib/Algebra/BigOperators/Group/Finset/Basic.lean"),
    Path("D:/CodingProject/Math/.tools/pi5e2d/mathlib/Mathlib/Algebra/BigOperators/Group/Finset/Defs.lean"),
    Path("D:/CodingProject/Math/.tools/pi5e2d/mathlib/Mathlib/Algebra/Order/BigOperators/Group/Finset.lean"),
    Path("D:/CodingProject/Math/.tools/pi5e2d/mathlib/Mathlib/Analysis/SpecialFunctions/Log/Basic.lean"),
    Path("D:/CodingProject/Math/.tools/pi5e2d/mathlib/Mathlib/Data/Nat/Cast/Order/Basic.lean"),
    Path("D:/CodingProject/Math/.tools/pi5e2d/mathlib/Mathlib/Data/Nat/Cast/Order/Ring.lean")
]
assert digest(refs[2])["sha256"] == "a2ec9f3b4bd3f44128723fadd07bc7dd7a748780307f12bd96a8f77540854bd9"
assert digest(refs[3])["sha256"] == "9323b7470f2bc985f76dcb807ac5afc37625088c538da1c28b7854aea3bdd957"
output("SOURCE_MAP.json", {"owner": "/root/c2_divisor_resume", "captured_utc": datetime.now(timezone.utc).isoformat(), "lean_toolchain": "leanprover/lean4:v4.33.1", "mathlib_pin": "0df444a360eaa60ab8c11dca51a86af692955474", "source_references": [{"path": str(p), **digest(p)} for p in refs], "actual_N": "Math.B699.C2Direct.c2 (4*m) (4*m) m", "upstream_module": "research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.C2DirectDivisor.Finite", "upstream_status_at_start": "Frozen C2 candidate not compiled by this worker; parent owns integration/acceptance", "module_map": modules, "new_N_definition": False, "chebyshev_import": False, "prime_supply_hypothesis": False, "lean_runs": 0})

# Bounded arithmetic transcription only. No primes are enumerated and no numerical supply table is made.
t0 = time.monotonic()
checked = valid = 0
for m in range(3, 129):
    for q in range(1, 9*m + 1):
        indices = []
        for j in range(1, 5):
            checked += 1
            if not (4*m < j*q and 2*j*q <= 9*m - 2): continue
            indices.append(j)
            valid += 1
            assert m < q
            assert (j-1)*q <= 4*m < j*q
            assert (4*m)//q == j-1
            assert 2*q+1 <= 2*((4*m)%q) + m%q
            assert 2*((4*m)%q) + m%q + 2*(j-1)*q == 9*m
            assert q <= 9*m
            # For every valid q, the same finite power cutoff already includes h=1.
            h, power = 0, 1
            while power*q <= 9*m:
                h += 1
                power *= q
            assert h >= 1
        assert len(indices) <= 1
assert 4*4 < 1*17 and 2*1*17 == 9*4-2
assert 2*(16 % 17) + 4 % 17 == 2*17+2
assert not 4*4 < 1*16
assert 4*4 < 1*18 and 2*1*18 <= 9*4 and not 2*18+1 <= 2*(16 % 18)+4 % 18
output("ARITHMETIC_DIAGNOSTIC.json", {"status": "PASS_BOUNDED_ARITHMETIC_NOT_LEAN", "entrypoint": "C:/Python314/python.exe -B prepare_bridge.py", "script_sha256": digest(Path(__file__))["sha256"], "m_range": [3,128], "q_range_per_m": "1..9m", "j_range": [1,4], "checked_triples": checked, "valid_interval_triples": valid, "checks": ["m<q", "quotient and remainder", "required mask", "unique interval index", "finite logarithmic cutoff includes h=1"], "endpoint_controls": {"included_right_endpoint": [4,17,1], "excluded_left_endpoint": [4,16,1], "unsafe_removal_of_minus_two_counterexample": [4,18,1]}, "primes_enumerated": False, "numerical_supply_table_generated": False, "seconds": round(time.monotonic()-t0,6), "boundary": "Arithmetic source-transcription diagnostics only; no Lean proof, logarithmic estimate or prime-supply result."})
print(json.dumps({"status": "CANDIDATE_AUDITS_AND_ARITHMETIC_READY_NOT_LEAN", "core_modules": 3, "audit_modules": 4, "typed_roots": len(all_roots), "printed_definitions": sum(r["kind"] == "def" for r in all_roots), "arithmetic_triples": checked, "valid_interval_triples": valid, "source_references": len(refs)}))
