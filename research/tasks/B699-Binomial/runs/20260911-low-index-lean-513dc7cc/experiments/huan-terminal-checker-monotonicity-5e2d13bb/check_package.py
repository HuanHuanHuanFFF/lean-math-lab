"""Read-only frozen prefix-candidate validation; never starts Lean."""
from __future__ import annotations
import argparse, hashlib, json, re
from pathlib import Path
ROOT = Path(__file__).resolve().parent
CORE = {"Cover.lean", "RowCell.lean"}
AUDITS = {"ACover.lean", "ARowCell.lean", "Audit.lean"}
PRINTS = {"ACover.lean": ["B699LowIndex.coverCheck"], "ARowCell.lean": ["Math.B699.I11TerminalCRT.rowCoverCheck", "Math.B699.I11TerminalCRT.cellCoverCheck"], "Audit.lean": ["B699LowIndex.coverCheck", "Math.B699.I11TerminalCRT.rowCoverCheck", "Math.B699.I11TerminalCRT.cellCoverCheck"]}
def digest(p):
    b = p.read_bytes()
    return {"sha256": hashlib.sha256(b).hexdigest(), "bytes": len(b)}
def check(frozen=True):
    assert {p.name for p in ROOT.glob("*.lean")} == CORE | AUDITS
    catalog = json.loads((ROOT / "AUDIT_ROOTS.json").read_text(encoding="utf-8"))
    roots = catalog["public_roots"]
    assert len(roots) == len({r["name"] for r in roots}) == 12
    assert all(r["kind"] == "theorem" for r in roots)
    for p in ROOT.glob("*.lean"):
        text = p.read_text(encoding="utf-8-sig")
        assert "set_option autoImplicit false" in text and "set_option relaxedAutoImplicit false" in text
        assert not re.search(r"\bsorry\b|\badmit\b|\bsorryAx\b|^\s*(?:axiom|unsafe)\b|\bnative_decide\b|\brun_tac\b|skipKernelTC", text, re.M), p.name
        assert not re.search(r"^(?:noncomputable )?def\b", text, re.M), "A new checker was introduced"
    for audit in AUDITS:
        src = (ROOT / audit).read_text(encoding="utf-8-sig")
        expected = [r for r in roots if audit == "Audit.lean" or r["audit"] == audit]
        assert re.findall(r"^#check \(@(\S+) :", src, re.M) == [r["name"] for r in expected]
        assert re.findall(r"^#print axioms (\S+)", src, re.M) == [r["name"] for r in expected]
        assert re.findall(r"^#print (?!axioms)(\S+)", src, re.M) == PRINTS[audit]
    references = json.loads((ROOT / "SOURCE_MAP.json").read_text(encoding="utf-8"))
    for ref in references["source_references"]:
        assert digest(Path(ref["path"])) == {"sha256": ref["sha256"], "bytes": ref["bytes"]}, ref["path"]
    diagnostic = json.loads((ROOT / "DIAGNOSTIC.json").read_text(encoding="utf-8"))
    assert diagnostic["script_sha256"] == digest(ROOT / "prepare_package.py")["sha256"]
    assert diagnostic["sublist_counterexample"]["small_result"] is True and diagnostic["sublist_counterexample"]["large_result"] is False
    guard = json.loads((ROOT / "AUDIT_GUARD_CHECK.json").read_text(encoding="utf-8"))
    assert guard["synthetic_roots"] == 12 and len(guard["rejected_mutations"]) == 6
    result = {"status": "PASS_PREFIX_STRUCTURE_NOT_LEAN", "core_modules": 2, "audit_modules": 3, "typed_roots": 12, "original_checker_definitions_printed": 3, "source_hashes_matched": 10, "new_checker_definitions": 0, "placeholder_or_bypass_hits": 0, "general_sublist_monotonicity": False, "proved_candidate_scope": "append, IsPrefix and take transfer through original cover/row/cell checkers", "lean_runs": 0, "candidate_lean_status": "UNCOMPILED", "performance_measured": False}
    if frozen:
        manifest = ROOT / "PACKAGE_SHA256.json"
        recorded = json.loads(manifest.read_text(encoding="utf-8"))
        files = {p.relative_to(ROOT).as_posix(): p for p in ROOT.rglob("*") if p.is_file() and p != manifest}
        assert files.keys() == recorded["files"].keys()
        for name, p in files.items(): assert digest(p) == recorded["files"][name], name
        result.update(status="PASS_FROZEN_PREFIX_CANDIDATE_NOT_LEAN", frozen_files=len(files), manifest_sha256=digest(manifest)["sha256"])
    return result
if __name__ == "__main__":
    ap = argparse.ArgumentParser()
    ap.add_argument("--pre-freeze", action="store_true")
    args = ap.parse_args()
    print(json.dumps(check(not args.pre_freeze), ensure_ascii=False))
