"""Freeze metadata and all bytes in this owned experiment directory; never starts Lean."""
from __future__ import annotations
import hashlib, json
from datetime import datetime, timezone
from pathlib import Path
from check_package import check
ROOT = Path(__file__).resolve().parent
WORKTREE = ROOT.parents[6]
RUN = Path("research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc")
def digest(p):
    data = p.read_bytes()
    return {"sha256": hashlib.sha256(data).hexdigest(), "bytes": len(data)}
def write_new(name, obj):
    with (ROOT / name).open("x", encoding="utf-8") as f:
        json.dump(obj, f, ensure_ascii=False, indent=2)
        f.write("\n")

assert not (ROOT / "PACKAGE_SHA256.json").exists(), "Frozen package already exists; never overwrite it"
precheck = check(require_manifest=False)
now = datetime.now(timezone.utc).isoformat()
source_map = json.loads((ROOT / "SOURCE_MAP.json").read_text(encoding="utf-8"))
rows = source_map["module_map"]
copy_files = []
stages = []
for i, row in enumerate(rows, 1):
    for source, target in ((row["source"], row["target"]), (row["audit"], row["audit_target"])):
        copy_files.append({"source": (ROOT / source).relative_to(WORKTREE).as_posix(), "source_in_package": source, "target": (RUN / target).as_posix(), **digest(ROOT / source), "copy_mode": "identical_bytes_imports_already_targeted"})
    stages.append({"order": i, "new_core": (RUN / row["target"]).as_posix(), "audit_root": (RUN / row["audit_target"]).as_posix(), "expected_new_public_roots": row["public_roots"], "expected_axiom_root_count": len(row["public_roots"]), "serial_only": True, "reuse": "the three checked old dependency evidence files plus all prior successful stage evidence"})
copy_files.append({"source": (ROOT / "Audit.lean").relative_to(WORKTREE).as_posix(), "source_in_package": "Audit.lean", "target": (RUN / "lean/C2DirectDivisor/Audit.lean").as_posix(), **digest(ROOT / "Audit.lean"), "copy_mode": "identical_bytes_imports_already_targeted"})
stages.append({"order": 9, "audit_root": (RUN / "lean/C2DirectDivisor/Audit.lean").as_posix(), "expected_axiom_root_count": 60, "serial_only": True, "reuse": "all previous successful stages plus checked dependencies"})
write_new("INTEGRATION_PLAN.json", {
    "status": "FROZEN_CANDIDATE_NOT_INTEGRATED_NOT_COMPILED", "created_utc": now,
    "owner": "/root/c2_divisor_resume", "integration_owner": "/root",
    "current_worktree_head": "f0b0cc10fbab9db7133aae9914178caf0b4c587b",
    "files": copy_files, "stages": stages,
    "runner": (RUN / "verification/runner/verify_huan.py").as_posix(),
    "runner_parameters": {"--repo": "current isolated worktree", "--package-root": "parent's current validated package root", "--root": "one stage audit_root at a time", "--reuse": "each relevant source/log/olean-hash checked evidence path", "--memory-mb": "parent's existing resource policy", "--timeout": "parent's existing per-module diagnostic policy"},
    "dependency_evidence": [r["evidence"] for r in json.loads((ROOT / "DEPENDENCY_BINDINGS.json").read_text(encoding="utf-8"))["verified_dependency_bindings"]],
    "required_final_validation": ["Exact migrated source hashes match this package", "Each new core and explicit-type modular audit succeeds", "Aggregate Audit.lean prints all 60 roots with only propext/Classical.choice/Quot.sound or empty dependency sets", "Source and object hashes, toolchain, actual commands and exit status recorded in fresh run evidence", "No original B index added by this prerequisite alone"],
    "audit_log_check_example": "C:/Python314/python.exe -B check_audit_log.py --audit Audit.lean --log <new aggregate audit log> --lean-exit-code <actual exit code>",
    "repair_rule": "Preserve this frozen experiment package. Any later Lean fix belongs to the integrated copy and requires new source hashes and verification evidence; do not relabel the old package as having passed."
})
write_new("SOURCE_FREEZE.json", {"frozen_utc": now, "lean_status": "UNCOMPILED", "files": {p.name: digest(p) for p in sorted(ROOT.glob("*.lean"))}, "public_roots": 60, "implementation_modules": 8, "audit_modules": 9})
write_new("STATIC_REVIEW.json", {"checked_utc": now, "actual_entrypoint": "C:/Python314/python.exe -B make_package.py", "called_check": "check_package.check(require_manifest=False)", "result": precheck, "interpretation": "Current source, audit structure, preserved originals and old dependency bindings checked. No new Lean compilation or new transitive axiom acceptance."})
with (ROOT / "CHECKPOINT.md").open("a", encoding="utf-8") as f:
    f.write("\n\n## Frozen-candidate handoff — " + now + "\n\n")
    f.write("Completed in this resumption: repeatable exact bounded diagnostics (432 small delta rows plus 68 high-power/family rows), complete explicit-type/definition/axiom audit candidates (60 public roots, 14 printed definitions), six audit-guard rejection tests, 11 live source/API hash checks, and rechecked source/log/olean hashes for all three reused project modules. Implementation proof bodies remain unchanged; only final C2DirectDivisor import paths and line endings were adjusted. Previous candidate bytes are preserved in resume-originals/.\n\n")
    f.write("The pre-freeze checker passed with zero placeholder/bypass hits. INTEGRATION_PLAN.json names 17 byte-identical future source copies and nine serial audit stages. PACKAGE_SHA256.json is generated last and excludes only itself; the final read-only integrity command and manifest SHA are returned to the parent. No Lean process was started, and no edits occurred outside this experiment directory.\n\n")
    f.write("Last actual accepted mathematical inputs remain PadeInteger, Pade.Content's unrestricted multichoose convolution, and PrimePowerTransfer's distinct-prime-power assembly (see DEPENDENCY_BINDINGS.json). The generic C2 proof itself remains uncompiled. Next concrete step: primary task compiles AFinite after exact copy to lean/C2DirectDivisor, then follows the eight-module dependency order and the complete audit. Effective growth log N > g*m and full i13 graph are still separate; original B coverage unchanged.\n")
files = {p.relative_to(ROOT).as_posix(): digest(p) for p in sorted(ROOT.rglob("*")) if p.is_file() and p.name != "PACKAGE_SHA256.json"}
write_new("PACKAGE_SHA256.json", {"frozen_utc": now, "scope": "Every file in this experiment directory recursively, excluding only PACKAGE_SHA256.json itself", "candidate_lean_status": "UNCOMPILED", "files": files})
print(json.dumps({"status": "FROZEN_CANDIDATE_CREATED_NOT_LEAN", "frozen_utc": now, "files": len(files), "manifest_sha256": digest(ROOT / "PACKAGE_SHA256.json")["sha256"], "copy_sources": len(copy_files), "serial_stages": len(stages)}))
