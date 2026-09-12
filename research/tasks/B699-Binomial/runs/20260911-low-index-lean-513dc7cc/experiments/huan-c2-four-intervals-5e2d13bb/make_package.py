"""Freeze the new owned four-interval directory only; never starts Lean."""
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
def save(name, value):
    with (ROOT / name).open("x", encoding="utf-8") as f:
        json.dump(value, f, ensure_ascii=False, indent=2)
        f.write("\n")
assert not (ROOT / "PACKAGE_SHA256.json").exists(), "Refuse to overwrite an existing freeze"
checked = check(frozen=False)
now = datetime.now(timezone.utc).isoformat()
cat = json.loads((ROOT / "AUDIT_ROOTS.json").read_text(encoding="utf-8"))
files, stages = [], []
for order, row in enumerate(cat["module_map"], 1):
    for name, target in ((row["source"], row["target"]), (row["audit"], row["audit_target"])):
        files.append({"source": (ROOT / name).relative_to(WORKTREE).as_posix(), "source_in_package": name, "target": target, **digest(ROOT / name), "copy_mode": "exact_bytes_imports_already_targeted"})
    stages.append({"order": order, "audit_root": row["audit_target"], "core": row["target"], "expected_axiom_roots": len(row["public_roots"]), "public_roots": row["public_roots"], "serial_only": True})
files.append({"source": (ROOT / "Audit.lean").relative_to(WORKTREE).as_posix(), "source_in_package": "Audit.lean", "target": cat["aggregate_target"], **digest(ROOT / "Audit.lean"), "copy_mode": "exact_bytes_imports_already_targeted"})
stages.append({"order": 4, "audit_root": cat["aggregate_target"], "expected_axiom_roots": 26, "serial_only": True})
save("INTEGRATION_PLAN.json", {"status": "FROZEN_NOT_INTEGRATED_NOT_COMPILED", "frozen_utc": now, "owner": "/root/c2_divisor_resume", "integration_owner": "/root", "files": files, "serial_stages": stages, "actual_N": "Math.B699.C2Direct.c2 (4*m) (4*m) m", "upstream_candidate": "../huan-c2-direct-divisor-5e2d13bb/Finite.lean", "upstream_sha256": "a2ec9f3b4bd3f44128723fadd07bc7dd7a748780307f12bd96a8f77540854bd9", "upstream_target": (RUN / "lean/C2DirectDivisor/Finite.lean").as_posix(), "runner": (RUN / "verification/runner/verify_huan.py").as_posix(), "resource_policy": "Use the parent's current validated package cache, serial runner and unchanged resource guards; this subtask starts no Lean", "required_checks": ["Exact target source hashes", "AIntervals may compile before C2; AProduct and ALog require the actual C2 Finite module", "Fresh explicit-type and complete transitive-axiom audits", "Allowed axioms only propext/Classical.choice/Quot.sound or none", "Actual source/log/olean/command/toolchain bindings in new run evidence"], "log_guard": "C:/Python314/python.exe -B check_audit_log.py --audit Audit.lean --log <actual new log> --lean-exit-code <actual exit code>", "repair_rule": "Keep this package frozen; integrated repairs require new hashes/evidence", "frontier": "No original B699 reduction; effective prime supply and the final height graph remain missing"})
save("STATIC_REVIEW.json", {"checked_utc": now, "actual_entrypoint": "C:/Python314/python.exe -B make_package.py", "check": "check_package.check(frozen=False)", "result": checked, "boundary": "Static structure and byte binding only; no Lean acceptance"})
with (ROOT / "CHECKPOINT.md").open("a", encoding="utf-8") as f:
    f.write("\n## Frozen handoff — " + now + "\n\n")
    f.write("Three complete core candidates and four audit files cover 26 public roots. Intervals proves the requested uniform Nat mask, quotient and unique index. Product uses the actual C2 primeSet/cutoff/exponent, proves no missing interval primes, disjointness, p4 divisibility and positivity. LogBridge proves exact finite sums and log p4 <= log actual C2. There is no new N, Chebyshev import, prime-supply hypothesis or prime table.\n\n")
    f.write("Bounded arithmetic diagnostic: 297108 triples, 8190 valid, no primes enumerated. Typed and axiom audit source is complete, including four new definition prints and five adopted actual C2 definition prints. Six synthetic audit-log mutations are rejected. Thirteen source/API hashes match. Prior frozen C2 package was read-only rechecked intact. No Lean was started.\n\n")
    f.write("Expected structural dependency is fully supplied in candidate code; actual new Lean coverage and original B699 coverage remain unchanged. Next step is parent serial AIntervals -> AProduct -> ALog -> aggregate Audit, preserving current cache/resource policy and recording fresh exact-source evidence. Effective prime supply remains the separate mathematical obstacle. Freeze verification output and manifest SHA are delivered to parent.\n")
manifest = {p.relative_to(ROOT).as_posix(): digest(p) for p in sorted(ROOT.rglob("*")) if p.is_file() and p.name != "PACKAGE_SHA256.json"}
save("PACKAGE_SHA256.json", {"frozen_utc": now, "status": "UNCOMPILED_CANDIDATE", "scope": "All files recursively, excluding only this manifest itself", "files": manifest})
print(json.dumps({"status": "FROZEN_FOUR_INTERVAL_CANDIDATE_CREATED_NOT_LEAN", "frozen_utc": now, "files": len(manifest), "manifest_sha256": digest(ROOT / "PACKAGE_SHA256.json")["sha256"], "lean_runs": 0}))
