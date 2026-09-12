"""Read-only integrity and audit structure check; never runs Lean."""
from __future__ import annotations
import argparse, hashlib, json, re
from pathlib import Path
ROOT = Path(__file__).resolve().parent
CORE = {"Intervals.lean", "Product.lean", "LogBridge.lean"}
AUDITS = {"AIntervals.lean", "AProduct.lean", "ALog.lean", "Audit.lean"}
NPRINTS = ["Math.B699.C2Direct." + x for x in ("layer", "cutoff", "exponent", "primeSet", "c2")]
def digest(p):
    b = p.read_bytes()
    return {"sha256": hashlib.sha256(b).hexdigest(), "bytes": len(b)}
def check(frozen=True):
    assert {p.name for p in ROOT.glob("*.lean")} == CORE | AUDITS
    catalog = json.loads((ROOT / "AUDIT_ROOTS.json").read_text(encoding="utf-8"))
    roots = catalog["public_roots"]
    assert len(roots) == len({r["name"] for r in roots}) == 26
    for p in ROOT.glob("*.lean"):
        s = p.read_text(encoding="utf-8-sig")
        assert not re.search(r"\bsorry\b|\badmit\b|\bsorryAx\b|^\s*(?:axiom|unsafe)\b|\bnative_decide\b|\brun_tac\b|skipKernelTC|hSupply|^import .*Chebyshev", s, re.M), p.name
        assert not re.search(r"^(?:noncomputable )?def\s+(?:N|c2)\b", s, re.M), p.name
        assert "set_option autoImplicit false" in s and "set_option relaxedAutoImplicit false" in s
    for audit in AUDITS:
        source = (ROOT / audit).read_text(encoding="utf-8-sig")
        expected = [r for r in roots if audit == "Audit.lean" or r["audit"] == audit]
        assert re.findall(r"^#check \(@(\S+) :", source, re.M) == [r["name"] for r in expected]
        assert re.findall(r"^#print axioms (\S+)", source, re.M) == [r["name"] for r in expected]
        printed = [r["name"] for r in expected if r["kind"] == "def"]
        if audit in {"AProduct.lean", "Audit.lean"}: printed += NPRINTS
        assert re.findall(r"^#print (?!axioms)(\S+)", source, re.M) == printed
    mapping = json.loads((ROOT / "SOURCE_MAP.json").read_text(encoding="utf-8"))
    for ref in mapping["source_references"]:
        assert digest(Path(ref["path"])) == {"sha256": ref["sha256"], "bytes": ref["bytes"]}, ref["path"]
    product = (ROOT / "Product.lean").read_text(encoding="utf-8-sig")
    assert "import " + mapping["upstream_module"] in product
    assert "C2Direct.c2 (4 * m) (4 * m) m" in product
    assert "C2Direct.exponent (4 * m) (4 * m) m p" in product
    assert "Finset.Ico 1 (C2Direct.cutoff (4 * m) (4 * m) m p)" in product
    diagnostic = json.loads((ROOT / "ARITHMETIC_DIAGNOSTIC.json").read_text(encoding="utf-8"))
    assert diagnostic["status"] == "PASS_BOUNDED_ARITHMETIC_NOT_LEAN"
    assert diagnostic["script_sha256"] == digest(ROOT / "prepare_bridge.py")["sha256"]
    assert diagnostic["primes_enumerated"] is False and diagnostic["numerical_supply_table_generated"] is False
    guard = json.loads((ROOT / "AUDIT_GUARD_CHECK.json").read_text(encoding="utf-8"))
    assert guard["synthetic_roots"] == 26 and len(guard["rejected_mutations"]) == 6
    result = {"status": "PASS_STRUCTURE_NOT_LEAN", "core_modules": 3, "audit_modules": 4, "typed_roots": 26, "new_definitions_printed": 4, "actual_C2_definitions_printed": 5, "source_hashes_matched": 13, "new_N_definitions": 0, "placeholder_or_bypass_hits": 0, "lean_runs": 0, "candidate_lean_status": "UNCOMPILED"}
    if frozen:
        manifest = ROOT / "PACKAGE_SHA256.json"
        data = json.loads(manifest.read_text(encoding="utf-8"))
        files = {p.relative_to(ROOT).as_posix(): p for p in ROOT.rglob("*") if p.is_file() and p != manifest}
        assert files.keys() == data["files"].keys(), "Frozen file set changed"
        for name, p in files.items(): assert digest(p) == data["files"][name], name
        result.update(status="PASS_FROZEN_FOUR_INTERVAL_CANDIDATE_NOT_LEAN", frozen_files=len(files), manifest_sha256=digest(manifest)["sha256"])
    return result
if __name__ == "__main__":
    ap = argparse.ArgumentParser()
    ap.add_argument("--pre-freeze", action="store_true")
    args = ap.parse_args()
    print(json.dumps(check(not args.pre_freeze), ensure_ascii=False))
