from __future__ import annotations
import hashlib, json
from datetime import datetime, timezone
from pathlib import Path
ROOT = Path(__file__).resolve().parent
WORKTREE = ROOT.parents[6]
RUN = Path("research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc")
def digest(p):
    b = p.read_bytes()
    return {"sha256": hashlib.sha256(b).hexdigest(), "bytes": len(b)}
def records(obj):
    if isinstance(obj, dict):
        if "source" in obj and "source_sha256_before" in obj and "exit_code" in obj:
            yield obj
        for value in obj.values(): yield from records(value)
    elif isinstance(obj, list):
        for value in obj: yield from records(value)
source_map = json.loads((ROOT / "SOURCE_MAP.json").read_text(encoding="utf-8"))
references = []
for section in ("sources", "pinned_mathlib_apis"):
    for name, expected in source_map[section].items():
        p = Path(name) if Path(name).is_absolute() else WORKTREE / name
        actual = digest(p)
        assert actual == expected, (name, actual, expected)
        references.append({"path": name, "section": section, **actual, "matches_adopted": True})
expected_sources = [
    (RUN / "lean/PadeInteger.lean", RUN / "verification/20260911T035339927527Z/evidence.json"),
    (RUN / "lean/Pade/Content.lean", RUN / "verification/20260911T071912344266Z/evidence.json"),
    (Path("research/tasks/B699-Binomial/runs/20260909-large-prime-structure-cb4764f0/lean/PrimePowerTransfer.lean"), RUN / "verification/20260911T004440769454Z/evidence.json")
]
bindings = []
for source, evidence_path in expected_sources:
    evidence = json.loads((WORKTREE / evidence_path).read_text(encoding="utf-8-sig"))
    assert evidence["success"] is True and evidence["exit_code"] == 0
    found = [r for r in records(evidence) if r["source"] == source.as_posix()]
    assert found, source
    rec = found[0]
    current_source = digest(WORKTREE / source)
    assert rec["source_sha256_before"] == rec["source_sha256_after"] == current_source["sha256"]
    assert rec["exit_code"] == 0 and not rec["timed_out"]
    log = WORKTREE / rec["log"]
    log_hash = digest(log)
    assert log_hash["sha256"] == rec["log_sha256"]
    output = WORKTREE / rec["output"]
    output_check = {"path": rec["output"], "recorded_sha256": rec["output_sha256"], "exists_now": output.is_file()}
    if output.is_file():
        output_check.update(digest(output))
        assert output_check["sha256"] == rec["output_sha256"]
        output_check["matches_recorded"] = True
    audits = rec.get("axiom_audit", {}).get("printed", [])
    assert audits
    allowed = {"propext", "Classical.choice", "Quot.sound"}
    assert all(set(r["axioms"]) <= allowed for r in audits)
    bindings.append({
        "source": source.as_posix(), **current_source,
        "evidence": evidence_path.as_posix(), "evidence_hash": digest(WORKTREE / evidence_path),
        "source_commit_recorded": evidence.get("source_commit"),
        "log": rec["log"], "log_hash": log_hash,
        "output": output_check, "existing_audited_declarations": audits,
        "historical_compile_seconds": rec.get("seconds"),
        "reuse_boundary": "Existing module source/log/output binding rechecked; current C2 candidates still need their own compilation and transitive audit."
    })
manifest = json.loads((WORKTREE / "lake-manifest.json").read_text(encoding="utf-8-sig"))
report = {
    "checked_utc": datetime.now(timezone.utc).isoformat(),
    "status": "ADOPTED_SOURCE_HASHES_AND_PRIOR_BINDINGS_MATCH",
    "worktree": str(WORKTREE),
    "lean_toolchain": (WORKTREE / "lean-toolchain").read_text(encoding="utf-8").strip(),
    "mathlib_pin": next(p["rev"] for p in manifest["packages"] if p["name"] == "mathlib"),
    "manifest_hash": digest(WORKTREE / "lake-manifest.json"),
    "source_references": references,
    "verified_dependency_bindings": bindings,
    "new_c2_lean_runs": 0,
    "new_public_roots_require_fresh_audit": 60,
    "exact_G_symmetry_used": False
}
output = ROOT / "DEPENDENCY_BINDINGS.json"
with output.open("x", encoding="utf-8") as f:
    json.dump(report, f, ensure_ascii=False, indent=2)
    f.write("\n")
print(json.dumps({"status": report["status"], "source_references": len(references), "dependency_bindings": [{"source": x["source"], "object_hash_matches": x["output"].get("matches_recorded", False), "log": x["log"]} for x in bindings]}, ensure_ascii=False))
