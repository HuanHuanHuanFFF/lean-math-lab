"""Freeze only the new owned terminal-prefix experiment directory."""
from __future__ import annotations
import hashlib, json
from datetime import datetime, timezone
from pathlib import Path
from check_package import check
ROOT = Path(__file__).resolve().parent
WORKTREE = ROOT.parents[6]
RUN = Path("research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc")
def digest(p):
    b = p.read_bytes()
    return {"sha256": hashlib.sha256(b).hexdigest(), "bytes": len(b)}
def save(name, data):
    with (ROOT / name).open("x", encoding="utf-8") as f:
        json.dump(data, f, ensure_ascii=False, indent=2)
        f.write("\n")
assert not (ROOT / "PACKAGE_SHA256.json").exists(), "Frozen package exists; refusing overwrite"
result = check(frozen=False)
now = datetime.now(timezone.utc).isoformat()
cat = json.loads((ROOT / "AUDIT_ROOTS.json").read_text(encoding="utf-8"))
files, stages = [], []
for i, row in enumerate(cat["module_map"], 1):
    for name, target in ((row["source"], row["target"]), (row["audit"], row["audit_target"])):
        files.append({"source": (ROOT / name).relative_to(WORKTREE).as_posix(), "source_in_package": name, "target": target, **digest(ROOT / name), "copy_mode": "exact_bytes_imports_already_targeted"})
    stages.append({"order": i, "audit_root": row["audit_target"], "core": row["target"], "public_roots": row["public_roots"], "expected_axiom_roots": len(row["public_roots"]), "serial_only": True})
files.append({"source": (ROOT / "Audit.lean").relative_to(WORKTREE).as_posix(), "source_in_package": "Audit.lean", "target": cat["aggregate_target"], **digest(ROOT / "Audit.lean"), "copy_mode": "exact_bytes_imports_already_targeted"})
stages.append({"order": 3, "audit_root": cat["aggregate_target"], "expected_axiom_roots": 12, "serial_only": True})
save("INTEGRATION_PLAN.json", {"status": "FROZEN_NOT_INTEGRATED_NOT_COMPILED", "frozen_utc": now, "files": files, "serial_stages": stages, "scope": "Prefix extension only; arbitrary Sublist implication is formally refuted in candidate", "primary_consumer": "apply Math.B699.I11TerminalMono.cellCoverCheck_take candidates k; decide +kernel", "consumer_effect": "Same original cellCoverCheck, P/Q/caps/data/21 shifts/global candidates; only the concrete premise uses candidates.take k", "unchanged_original_definitions": ["B699LowIndex.coverCheck", "Math.B699.I11TerminalCRT.rowCoverCheck", "Math.B699.I11TerminalCRT.cellCoverCheck"], "runner": (RUN / "verification/runner/verify_huan.py").as_posix(), "resource_policy": "Use parent's serial runner and unchanged guards; no Lean executed by this worker", "required_checks": ["Fresh exact-source compilation and all12 transitive-axiom roots", "Source/log/olean/toolchain/commands tied by the existing run verifier", "Then a separately chosen failed-cell short-prefix pilot at the parent's resource budget", "Do not claim global runtime repair or B699 acceptance from this helper alone"], "repair_rule": "Preserve this frozen package; integrated repairs receive new hashes and evidence"})
save("STATIC_REVIEW.json", {"checked_utc": now, "entrypoint": "C:/Python314/python.exe -B make_package.py", "call": "check_package.check(frozen=False)", "result": result})
with (ROOT / "CHECKPOINT.md").open("a", encoding="utf-8") as f:
    f.write("\n## Frozen prefix handoff — " + now + "\n\n")
    f.write("General Sublist monotonicity is false: inserting (2,2) before the successful [(1,1)] for lo=hi=1 triggers the original immediate gap failure. Parent was notified promptly. The unchanged checker is nevertheless monotone under appending a suffix; this preserves exactly the intended take k consumer without any sorting or interval-validity assumptions.\n\n")
    f.write("Complete candidate code provides append/IsPrefix/take through coverCheck, rowCoverCheck and cellCoverCheck, plus the concrete counterexample and negation of general Sublist monotonicity. Two implementation files and three audits contain12 public roots and print all3 original checker definitions. Candidate signature binds the same arithmetic guard, all parameters, all21 shifts and global candidate list.\n\n")
    f.write("Finite branch diagnostic passed641823 append implications and63968 take implications, including malformed/unsorted intervals and empty targets. Ten source/API/receipt hashes match; upstream RowCell source matches its accepted receipt. No new checker definition, axiom, placeholder or Lean run. Runtime memory benefit remains unmeasured; next check is parent serial compilation followed by its selected single failed-cell short-prefix pilot. Original B699 coverage unchanged.\n")
manifest = {p.relative_to(ROOT).as_posix(): digest(p) for p in sorted(ROOT.rglob("*")) if p.is_file() and p.name != "PACKAGE_SHA256.json"}
save("PACKAGE_SHA256.json", {"frozen_utc": now, "status": "UNCOMPILED_CANDIDATE", "scope": "Every file recursively except this manifest itself", "files": manifest})
print(json.dumps({"status": "PREFIX_CANDIDATE_FROZEN_NOT_LEAN", "frozen_utc": now, "files": len(manifest), "manifest_sha256": digest(ROOT / "PACKAGE_SHA256.json")["sha256"]}))
