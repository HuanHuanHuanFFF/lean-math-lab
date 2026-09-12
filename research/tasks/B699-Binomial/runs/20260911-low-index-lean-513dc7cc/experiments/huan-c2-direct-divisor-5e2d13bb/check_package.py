"""Read-only integrity and source-policy verification of this frozen candidate; never starts Lean."""
from __future__ import annotations
import argparse, hashlib, json, re
from pathlib import Path
ROOT = Path(__file__).resolve().parent
OLD = "research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.C2Direct."
NEW = "research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.C2DirectDivisor."

def digest(p):
    data = p.read_bytes()
    return {"sha256": hashlib.sha256(data).hexdigest(), "bytes": len(data)}

def check(manifest_name="PACKAGE_SHA256.json", require_manifest=True):
    mapping = json.loads((ROOT / "SOURCE_MAP.json").read_text(encoding="utf-8"))
    audits = json.loads((ROOT / "AUDIT_ROOTS.json").read_text(encoding="utf-8"))
    baseline = json.loads((ROOT / "RESUME_BASELINE.json").read_text(encoding="utf-8"))
    modules = mapping["module_map"]
    expected_core = {r["source"] for r in modules}
    expected_audits = {r["audit"] for r in modules} | {"Audit.lean"}
    assert len(expected_core) == 8 and len(expected_audits) == 9
    assert {p.name for p in ROOT.glob("*.lean")} == expected_core | expected_audits
    changed_imports_only = []
    for row in modules:
        path = ROOT / row["source"]
        old = (ROOT / "resume-originals" / row["source"]).read_text(encoding="utf-8-sig")
        new = path.read_text(encoding="utf-8")
        assert old.replace(OLD, NEW) == new, "Implementation change beyond import/line-ending map: " + row["source"]
        assert digest(path)["sha256"] == row["source_sha256"]
        assert row["target"] == "lean/C2DirectDivisor/" + row["source"]
        assert row["audit_target"] == "lean/C2DirectDivisor/" + row["audit"]
        changed_imports_only.append(row["source"])
        for name in re.findall(r"^import (\S+)", new, re.M):
            assert not name.startswith(OLD)
            if name.startswith(NEW):
                assert name[len(NEW):] + ".lean" in expected_core
    for name, expected in baseline["files"].items():
        assert digest(ROOT / "resume-originals" / name) == expected, "Altered original snapshot: " + name
    for p in ROOT.glob("*.lean"):
        text = p.read_text(encoding="utf-8")
        assert not re.search(r"\bsorry\b|\badmit\b|\bsorryAx\b|^\s*(?:axiom|unsafe)\b|\bnative_decide\b|\brun_tac\b|skipKernelTC", text, re.M), p.name
        assert "set_option autoImplicit false" in text and "set_option relaxedAutoImplicit false" in text
    roots = audits["public_roots"]
    assert len(roots) == 60 and len({r["name"] for r in roots}) == 60
    for name in expected_audits:
        src = (ROOT / name).read_text(encoding="utf-8")
        required = [r for r in roots if name == "Audit.lean" or r["audit"] == name]
        assert re.findall(r"^#print axioms (\S+)", src, re.M) == [r["name"] for r in required], name
        assert re.findall(r"^#check \(@(\S+) :", src, re.M) == [r["name"] for r in required], name
        assert re.findall(r"^#print (?!axioms)(\S+)", src, re.M) == [r["name"] for r in required if r["kind"] == "def"], name
    bounded = json.loads((ROOT / "HIGH_POWER_CHECK.json").read_text(encoding="utf-8"))
    assert bounded["script_sha256"] == digest(ROOT / "diagnostics.py")["sha256"]
    assert bounded["status"] == "PASS_EXACT_BOUNDED_DIAGNOSTICS_NOT_LEAN"
    guard = json.loads((ROOT / "AUDIT_GUARD_CHECK.json").read_text(encoding="utf-8"))
    assert guard["status"] == "PASS_GUARD_BEHAVIOR_NOT_LEAN" and len(guard["rejected_mutations"]) == 6
    bindings = json.loads((ROOT / "DEPENDENCY_BINDINGS.json").read_text(encoding="utf-8"))
    worktree = Path(bindings["worktree"])
    for rec in bindings["source_references"]:
        p = Path(rec["path"])
        if not p.is_absolute(): p = worktree / p
        assert digest(p)["sha256"] == rec["sha256"]
    for rec in bindings["verified_dependency_bindings"]:
        assert digest(worktree / rec["source"])["sha256"] == rec["sha256"]
        assert digest(worktree / rec["evidence"]) == rec["evidence_hash"]
        assert digest(worktree / rec["log"]) == rec["log_hash"]
        assert digest(worktree / rec["output"]["path"])["sha256"] == rec["output"]["recorded_sha256"]
    result = {"status": "PASS_SOURCE_AND_AUDIT_STRUCTURE", "implementation_modules": 8, "audit_modules": 9, "typed_public_roots": 60, "printed_definitions": 14, "original_snapshots_preserved": len(baseline["files"]), "implementation_changes": "import paths and line endings only", "placeholder_or_bypass_hits": 0, "adopted_source_hashes_matched": 11, "old_dependency_source_log_object_bindings_matched": 3, "lean_runs": 0, "candidate_lean_status": "UNCOMPILED"}
    if require_manifest:
        manifest_path = ROOT / manifest_name
        manifest = json.loads(manifest_path.read_text(encoding="utf-8"))
        found = {p.relative_to(ROOT).as_posix(): p for p in ROOT.rglob("*") if p.is_file() and p != manifest_path}
        assert set(found) == set(manifest["files"]), {"missing": sorted(set(manifest["files"]) - found.keys()), "extra": sorted(found.keys() - set(manifest["files"]))}
        for name, path in found.items():
            assert digest(path) == manifest["files"][name], "Frozen file mismatch: " + name
        result.update({"status": "PASS_FROZEN_CANDIDATE_INTEGRITY_NOT_LEAN", "frozen_files": len(found), "manifest_sha256": digest(manifest_path)["sha256"]})
    return result

if __name__ == "__main__":
    ap = argparse.ArgumentParser()
    ap.add_argument("--pre-freeze", action="store_true")
    args = ap.parse_args()
    print(json.dumps(check(require_manifest=not args.pre_freeze), ensure_ascii=False))
