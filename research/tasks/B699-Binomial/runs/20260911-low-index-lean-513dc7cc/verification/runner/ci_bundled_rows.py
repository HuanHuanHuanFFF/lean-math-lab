#!/usr/bin/env python3
"""Run two Linux CI shards of the B699 phase-A bundled-row verifier.

The row list is read as JSON from an environment variable.  The driver leaves
target-status.json unchanged and performs no repository mutation commands.  Each row is
generated, bundled with the frozen 64-source transformation, and checked by
the unchanged strict verify_incremental.py runner.  A row is accepted here
only when its bundled root contains the complete original statement and its
fresh axiom audit is exactly within the repository's std3 set.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import os
import re
import shutil
import subprocess
import sys
import time
from datetime import datetime, timezone
from pathlib import Path
from typing import Any, Iterable


RUN = Path("research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc")
RUNNER = RUN / "verification/runner"
TOOLCHAIN = "leanprover/lean4:v4.33.1"
ALLOWED_AXIOMS = {"propext", "Classical.choice", "Quot.sound"}
FORBIDDEN = re.compile(r"\b(?:axiom|native_decide|sorry\w*|admit)\b|Lean\.ofReduceBool|ofReduceBool")
EXPECTED_SHARED_SOURCES = 26
DEFAULT_ARTIFACT_LIMIT = 512 * 1024 * 1024
DEFAULT_FILE_LIMIT = 64 * 1024 * 1024


def utc_now() -> str:
    return datetime.now(timezone.utc).isoformat().replace("+00:00", "Z")


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def write_json(path: Path, value: Any) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    temporary = path.with_name(path.name + ".tmp")
    temporary.write_text(
        json.dumps(value, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
        newline="\n",
    )
    os.replace(temporary, path)


def normal_path(value: str | Path) -> Path:
    return Path(str(value).replace("\\", "/"))


def repo_path(repo: Path, value: str | Path) -> Path:
    relative = normal_path(value)
    if relative.is_absolute() or ".." in relative.parts:
        raise RuntimeError(f"path is not a repository-relative path: {value}")
    result = (repo / relative).resolve()
    if not result.is_relative_to(repo.resolve()):
        raise RuntimeError(f"path escapes repository root: {value}")
    return result


def run_id() -> str:
    value = os.environ.get("GITHUB_RUN_ID", "local")
    value = re.sub(r"[^A-Za-z0-9_.-]+", "_", value)
    return value or "local"


def resource_snapshot(repo: Path) -> dict[str, Any]:
    snapshot: dict[str, Any] = {"cpu_count": os.cpu_count()}
    usage = shutil.disk_usage(repo)
    snapshot["disk"] = {"total": usage.total, "used": usage.used, "free": usage.free}
    for name in ("memory.max", "memory.current", "cpu.max"):
        path = Path("/sys/fs/cgroup") / name
        snapshot[name] = path.read_text(encoding="utf-8").strip() if path.is_file() else None
    meminfo = Path("/proc/meminfo")
    if meminfo.is_file():
        snapshot["meminfo"] = [
            line
            for line in meminfo.read_text(encoding="utf-8").splitlines()
            if line.startswith(("MemTotal:", "MemAvailable:"))
        ]
    try:
        process = subprocess.run(
            ["ps", "-eo", "pid,ppid,rss,comm", "--sort=-rss"],
            capture_output=True,
            text=True,
            check=False,
        )
        snapshot["processes"] = process.stdout[:1800] if process.returncode == 0 else process.stderr[:300]
    except OSError as exc:
        snapshot["processes_error"] = str(exc)
    return snapshot


def _linux_process_tree(root_pid: int) -> dict[str, int] | None:
    proc_root = Path("/proc")
    if not proc_root.is_dir():
        return None
    parents: dict[int, int] = {}
    rss_bytes: dict[int, int] = {}
    for status_path in proc_root.glob("[0-9]*/status"):
        try:
            pid = int(status_path.parent.name)
            values: dict[str, int] = {}
            for line in status_path.read_text(encoding="utf-8", errors="replace").splitlines():
                if line.startswith(("Pid:", "PPid:", "VmRSS:")):
                    parts = line.split()
                    if len(parts) >= 2:
                        values[parts[0][:-1]] = int(parts[1]) * (1024 if parts[0] == "VmRSS:" else 1)
            if "PPid" in values:
                parents[pid] = values["PPid"]
                rss_bytes[pid] = values.get("VmRSS", 0)
        except (OSError, ValueError):
            continue
    descendants = {root_pid}
    changed = True
    while changed:
        changed = False
        for pid, parent in parents.items():
            if parent in descendants and pid not in descendants:
                descendants.add(pid)
                changed = True
    return {
        "root_pid": root_pid,
        "process_count": len(descendants),
        "rss_bytes": sum(rss_bytes.get(pid, 0) for pid in descendants),
    }


def _sample_process_tree(process: subprocess.Popen[str]) -> dict[str, Any]:
    result: dict[str, Any] = {
        "platform": "linux_proc" if Path("/proc").is_dir() else "unavailable",
        "root_pid": process.pid,
        "samples": 0,
        "peak_tree_rss_bytes": None,
        "peak_tree_process_count": None,
    }
    while process.poll() is None:
        sample = _linux_process_tree(process.pid)
        if sample is not None:
            result["samples"] += 1
            if result["peak_tree_rss_bytes"] is None or sample["rss_bytes"] > result["peak_tree_rss_bytes"]:
                result["peak_tree_rss_bytes"] = sample["rss_bytes"]
                result["peak_tree_process_count"] = sample["process_count"]
        time.sleep(0.2)
    process.wait()
    sample = _linux_process_tree(process.pid)
    if sample is not None:
        result["samples"] += 1
        if result["peak_tree_rss_bytes"] is None or sample["rss_bytes"] > result["peak_tree_rss_bytes"]:
            result["peak_tree_rss_bytes"] = sample["rss_bytes"]
            result["peak_tree_process_count"] = sample["process_count"]
    return result

def parse_rows(raw: str) -> list[int]:
    try:
        values = json.loads(raw)
    except json.JSONDecodeError as exc:
        raise RuntimeError(f"row JSON is invalid: {exc.msg}") from exc
    if not isinstance(values, list) or not values:
        raise RuntimeError("row JSON must be a non-empty array")
    if any(isinstance(value, bool) or not isinstance(value, int) for value in values):
        raise RuntimeError("row JSON must contain only integer indices")
    rows = [int(value) for value in values]
    if len(set(rows)) != len(rows):
        raise RuntimeError("row JSON contains duplicate indices")
    return rows


def expected_statement(i: int) -> str:
    return (
        f"theorem common_i{i:03d} :\n"
        f"    ∀ n j : ℕ, 1 ≤ {i} ∧ {i} < j ∧ j ≤ n / 2 →\n"
        f"      ∃ p : ℕ, p.Prime ∧ {i} ≤ p ∧ p ∣ Nat.choose n {i} ∧ p ∣ Nat.choose n j := by"
    )


def current_commit(repo: Path) -> str:
    result = subprocess.run(
        ["git", "rev-parse", "HEAD"],
        cwd=repo,
        capture_output=True,
        text=True,
        check=True,
    )
    return result.stdout.strip()


def validate_requested_rows(repo: Path, rows: list[int]) -> dict[str, Any]:
    status_path = repo / RUN / "target-status.json"
    state = json.loads(status_path.read_text(encoding="utf-8"))
    targets = {int(item["i"]): item for item in state.get("targets", []) if item.get("phase") == "A"}
    if not targets.get(29, {}).get("full_original_statement_accepted"):
        raise RuntimeError("complete phase-A Row029 acceptance is required")
    for i in rows:
        if not 46 <= i <= 184:
            raise RuntimeError(f"index {i} is outside the authorized 46..184 phase-A range")
        target = targets.get(i)
        if target is None:
            raise RuntimeError(f"index {i} is missing from phase-A target-status")
        if target.get("full_original_statement_accepted"):
            raise RuntimeError(f"index {i} is already fully accepted in target-status")
    accepted = sorted(
        i for i, target in targets.items() if 46 <= i <= 184 and target.get("full_original_statement_accepted")
    )
    return {
        "target_status": str(status_path).replace("\\", "/"),
        "requested_indices": rows,
        "accepted_46_184_at_start": accepted,
        "pending_requested_indices": rows,
    }


def load_fixed_inputs(repo: Path) -> dict[str, Any]:
    path = repo / RUN / "verification/runner/finitecover-inputs.json"
    data = json.loads(path.read_text(encoding="utf-8"))
    manifest = repo / "lake-manifest.json"
    if data.get("toolchain") != TOOLCHAIN:
        raise RuntimeError("finitecover input toolchain pin differs from Lean CI pin")
    if sha256(manifest) != data.get("manifest_sha256"):
        raise RuntimeError("lake-manifest.json differs from the fixed finitecover input")
    support = {}
    for item in data.get("support_files", []):
        source = repo_path(repo, item["source"])
        observed = sha256(source)
        if observed != item.get("expected_sha256"):
            raise RuntimeError(f"fixed verifier hash mismatch: {item['source']}")
        support[item["source"]] = observed
    return {"manifest_sha256": sha256(manifest), "toolchain": TOOLCHAIN, "support_files": support}


def validate_shared_evidence(repo: Path, evidence_path: Path, head: str, fixed: dict[str, Any]) -> dict[str, Any]:
    evidence_path = evidence_path.resolve()
    verification_root = (repo / RUN / "verification").resolve()
    if not evidence_path.is_relative_to(verification_root):
        raise RuntimeError("shared evidence must be inside this run's verification directory")
    evidence = json.loads(evidence_path.read_text(encoding="utf-8"))
    shared_root = str(RUN / "lean/SharedEnvironment.lean").replace("\\", "/")
    if not evidence.get("success") or evidence.get("exit_code") != 0:
        raise RuntimeError("shared evidence is not successful")
    if evidence.get("source_commit") != head:
        raise RuntimeError("shared evidence source commit differs from checkout HEAD")
    if evidence.get("manifest_sha256") != fixed["manifest_sha256"]:
        raise RuntimeError("shared evidence manifest hash differs from fixed inputs")
    if evidence.get("toolchain", {}).get("declared") != fixed["toolchain"]:
        raise RuntimeError("shared evidence toolchain differs from fixed inputs")
    if evidence.get("root_sources") != [shared_root]:
        raise RuntimeError("shared evidence root is not SharedEnvironment.lean")
    pins = evidence.get("pins", [])
    if len(pins) != 9 or any(not item.get("head_matches") or not item.get("clean") for item in pins):
        raise RuntimeError("shared evidence has incomplete or dirty package pin checks")
    closure = evidence.get("source_closure", [])
    records = [*evidence.get("compile_records", []), *evidence.get("reuse_records", [])]
    if len(closure) != EXPECTED_SHARED_SOURCES or len(records) != len(closure):
        raise RuntimeError("shared evidence does not contain the complete 26-source closure")
    allowed_roots = [verification_root, (repo / ".tools" / RUN.name).resolve()]
    by_source = {str(item.get("source", "")).replace("\\", "/"): item for item in records}
    if len(by_source) != len(records):
        raise RuntimeError("shared evidence contains duplicate source records")
    for item in closure:
        source_name = str(item["source"]).replace("\\", "/")
        record = by_source.get(source_name)
        if record is None:
            raise RuntimeError(f"shared evidence is missing source record: {source_name}")
        source = repo_path(repo, source_name)
        if sha256(source) != record.get("source_sha256_before") or sha256(source) != record.get("source_sha256_after"):
            raise RuntimeError(f"shared source hash mismatch: {source_name}")
        if record.get("failure") or record.get("exit_code") != 0 or record.get("timed_out"):
            raise RuntimeError(f"shared source record is not successful: {source_name}")
        for key, digest_key in (("output", "output_sha256"), ("log", "log_sha256")):
            path = repo_path(repo, record[key])
            if not any(path.is_relative_to(root) for root in allowed_roots):
                raise RuntimeError(f"shared {key} is outside the run cache/evidence roots: {path}")
            if not path.is_file() or sha256(path) != record.get(digest_key):
                raise RuntimeError(f"shared {key} hash mismatch: {source_name}")
        audit = record.get("axiom_audit", {})
        if audit.get("error") or audit.get("unexpected_axioms"):
            raise RuntimeError(f"shared axiom audit failed: {source_name}")
    return {
        "path": str(evidence_path.relative_to(repo)).replace("\\", "/"),
        "sha256": sha256(evidence_path),
        "source_count": len(closure),
        "pin_count": len(pins),
        "manifest_sha256": evidence["manifest_sha256"],
        "toolchain": evidence["toolchain"].get("observed"),
    }


def invoke_python(
    repo: Path,
    script: Path,
    arguments: Iterable[str | Path],
    log_path: Path,
    env: dict[str, str],
    resource_out: dict[str, Any] | None = None,
) -> int:
    log_path.parent.mkdir(parents=True, exist_ok=True)
    command = [sys.executable, "-B", str(script), *[str(value) for value in arguments]]
    try:
        with log_path.open("w", encoding="utf-8", newline="\n") as stream:
            process = subprocess.Popen(
                command,
                cwd=repo,
                env=env,
                stdout=stream,
                stderr=subprocess.STDOUT,
                text=False,
            )
            peak = _sample_process_tree(process)
        if resource_out is not None:
            resource_out.update(peak)
        return int(process.returncode)
    except (OSError, subprocess.SubprocessError) as exc:
        if resource_out is not None:
            resource_out.update({"platform": "unavailable", "error": f"{type(exc).__name__}: {exc}"})
        log_path.write_text(
            f"DRIVER_COMMAND_ERROR {type(exc).__name__}: {exc}\n",
            encoding="utf-8",
            newline="\n",
        )
        return 125

def load_plan(repo: Path, plan_path: Path, i: int) -> dict[str, Any]:
    plan = json.loads(plan_path.read_text(encoding="utf-8"))
    if plan.get("i") != i or not isinstance(plan.get("outputs"), list) or not plan["outputs"]:
        raise RuntimeError(f"row {i} plan is malformed")
    for item in plan["outputs"]:
        source = repo_path(repo, item["path"])
        if not source.is_file() or sha256(source) != item.get("sha256"):
            raise RuntimeError(f"row {i} generated source hash mismatch: {item.get('path')}")
    frozen = repo_path(repo, plan["frozen_source"])
    if sha256(frozen) != plan.get("frozen_source_sha256"):
        raise RuntimeError(f"row {i} frozen source hash mismatch")
    root = repo_path(repo, plan["root"])
    if root.name != "Original.lean" or not root.is_file():
        raise RuntimeError(f"row {i} plan root is missing")
    if expected_statement(i) not in root.read_text(encoding="utf-8"):
        raise RuntimeError(f"row {i} plan root lost the complete original statement")
    return plan


def load_bundle(repo: Path, output_dir: Path, i: int, block_size: int) -> dict[str, Any]:
    manifest_path = output_dir / "bundle-manifest.json"
    if not manifest_path.is_file():
        raise RuntimeError(f"row {i} bundle manifest is missing")
    manifest = json.loads(manifest_path.read_text(encoding="utf-8"))
    if manifest.get("i") != i or manifest.get("block_size") != block_size:
        raise RuntimeError(f"row {i} bundle manifest has the wrong index or block size")
    if manifest.get("mathematical_target") != f"common_i{i:03d}":
        raise RuntimeError(f"row {i} bundle target mismatch")
    root = repo_path(repo, manifest["root"])
    if not root.is_file() or root.name != "Original.lean":
        raise RuntimeError(f"row {i} bundled root is missing")
    if expected_statement(i) not in root.read_text(encoding="utf-8"):
        raise RuntimeError(f"row {i} bundled root lost the complete original statement")
    blocks = manifest.get("blocks", [])
    if not blocks or len(blocks) >= manifest.get("source_module_count", len(blocks) + 1):
        raise RuntimeError(f"row {i} bundling did not reduce the source module count")
    for block in blocks:
        path = repo_path(repo, block["path"])
        if not path.is_file() or sha256(path) != block.get("sha256"):
            raise RuntimeError(f"row {i} bundled source hash mismatch: {block.get('path')}")
        if FORBIDDEN.search(path.read_text(encoding="utf-8")):
            raise RuntimeError(f"row {i} bundled source contains a forbidden token: {path}")
    return manifest


def fresh_evidence(repo: Path, before: set[Path], root: str) -> Path | None:
    verification = repo / RUN / "verification"
    candidates: list[Path] = []
    for path in verification.glob("20*/evidence.json"):
        if path in before:
            continue
        try:
            data = json.loads(path.read_text(encoding="utf-8"))
        except (OSError, json.JSONDecodeError):
            continue
        if data.get("root_sources") == [root]:
            candidates.append(path)
    if len(candidates) != 1:
        return None
    return candidates[0]


def record_success(record: dict[str, Any], repo: Path) -> None:
    source = repo_path(repo, record["source"])
    if record.get("failure") or record.get("exit_code") != 0 or record.get("timed_out"):
        raise RuntimeError(f"compile record is not successful: {record.get('source')}")
    if sha256(source) != record.get("source_sha256_before") or sha256(source) != record.get("source_sha256_after"):
        raise RuntimeError(f"compile source changed: {record.get('source')}")
    output = repo_path(repo, record["output"])
    log = repo_path(repo, record["log"])
    if not output.is_file() or sha256(output) != record.get("output_sha256"):
        raise RuntimeError(f"compile object hash mismatch: {record.get('source')}")
    if not log.is_file() or sha256(log) != record.get("log_sha256"):
        raise RuntimeError(f"compile log hash mismatch: {record.get('source')}")
    audit = record.get("axiom_audit", {})
    if audit.get("error") or audit.get("unexpected_axioms"):
        raise RuntimeError(f"compile axiom audit failed: {record.get('source')}")


def accept_evidence(repo: Path, i: int, root: str, plan: dict[str, Any], manifest: dict[str, Any], evidence_path: Path) -> dict[str, Any]:
    evidence = json.loads(evidence_path.read_text(encoding="utf-8"))
    if not evidence.get("success") or evidence.get("exit_code") != 0:
        raise RuntimeError(evidence.get("failure") or "strict verifier did not succeed")
    if evidence.get("root_sources") != [root]:
        raise RuntimeError("strict verifier root differs from the requested bundled root")
    records = [*evidence.get("compile_records", []), *evidence.get("reuse_records", [])]
    by_source = {str(item.get("source", "")).replace("\\", "/"): item for item in records}
    if len(by_source) != len(records):
        raise RuntimeError("row evidence contains duplicate source records")
    bundled_sources = [str(item["path"]).replace("\\", "/") for item in manifest["blocks"]]
    for source in bundled_sources:
        record = by_source.get(source)
        if record is None:
            raise RuntimeError(f"row evidence omitted bundled source: {source}")
        if source in {str(item["source"]).replace("\\", "/") for item in evidence.get("reuse_records", [])}:
            raise RuntimeError(f"bundled candidate was reused instead of freshly compiled: {source}")
        record_success(record, repo)
    root_record = by_source.get(root)
    if root_record is None:
        raise RuntimeError("row evidence omitted the bundled original root")
    record_success(root_record, repo)
    declared_name = f"B699LowIndex.LowIndexLean513dc7cc.common_i{i:03d}"
    printed = [item for item in root_record.get("axiom_audit", {}).get("printed", []) if item.get("declared_name") == declared_name]
    if len(printed) != 1 or not set(printed[0].get("axioms", [])) <= ALLOWED_AXIOMS:
        raise RuntimeError("bundled original root does not have a std3 axiom audit")
    root_path = repo_path(repo, root)
    if expected_statement(i) not in root_path.read_text(encoding="utf-8"):
        raise RuntimeError("bundled root does not contain the complete original statement")
    return {
        "i": i,
        "status": "full_original_statement_lean_accepted_by_raw_evidence",
        "full_original_statement": True,
        "accepted_declaration": declared_name,
        "evidence": str(evidence_path.relative_to(repo)).replace("\\", "/"),
        "evidence_sha256": sha256(evidence_path),
        "root": root,
        "source_sha256": root_record["source_sha256_after"],
        "output_sha256": root_record["output_sha256"],
        "axioms": printed[0]["axioms"],
        "goods": plan.get("goods"),
        "layers": plan.get("layers"),
        "compiled_modules": len(evidence.get("compile_records", [])),
        "reused_modules": len(evidence.get("reuse_records", [])),
        "verification_seconds": round(sum(item.get("seconds", 0) for item in records), 3),
        "novelty_claimed": False,
        "publication_status": "ci_readonly_not_pushed",
    }


class ArtifactBudget:
    def __init__(self, root: Path, max_bytes: int, max_file_bytes: int = DEFAULT_FILE_LIMIT) -> None:
        self.root = root
        self.max_bytes = max_bytes
        self.max_file_bytes = max_file_bytes
        self.total = 0
        self.files: list[dict[str, Any]] = []
        self.seen: set[Path] = set()

    def copy(self, source: Path, destination: Path) -> None:
        source = source.resolve()
        if source in self.seen:
            return
        if not source.is_file():
            raise RuntimeError(f"artifact source is missing: {source}")
        size = source.stat().st_size
        if size > self.max_file_bytes:
            raise RuntimeError(f"artifact file exceeds per-file budget ({size}): {source}")
        if self.total + size > self.max_bytes:
            raise RuntimeError(f"artifact shard exceeds byte budget ({self.max_bytes})")
        destination.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(source, destination)
        self.seen.add(source)
        self.total += size
        self.files.append({"source": str(source), "path": str(destination.relative_to(self.root)).replace("\\", "/"), "size": size, "sha256": sha256(source)})


def stage_repo_file(repo: Path, budget: ArtifactBudget, source: Path, destination_root: Path) -> None:
    source = source.resolve()
    relative = source.relative_to(repo.resolve())
    budget.copy(source, destination_root / "repo" / relative)


def stage_row(
    repo: Path,
    budget: ArtifactBudget,
    destination_root: Path,
    i: int,
    plan: dict[str, Any],
    plan_path: Path,
    manifest: dict[str, Any],
    evidence_path: Path | None,
    evidence: dict[str, Any] | None,
    driver_logs_root: Path | None,
    shared_pointer: Path,
) -> dict[str, Any]:
    row_root = destination_root / "rows" / f"row{i:03d}"
    row_root.mkdir(parents=True, exist_ok=True)
    staged: dict[str, Any] = {"files_before": len(budget.files), "bytes_before": budget.total, "missing": []}

    def add(source: Path) -> None:
        try:
            stage_repo_file(repo, budget, source, row_root)
        except (OSError, ValueError, RuntimeError) as exc:
            staged["missing"].append({"path": str(source), "error": str(exc)})

    add(plan_path)
    for item in plan.get("outputs", []):
        add(repo_path(repo, item["path"]))
    for item in manifest.get("blocks", []):
        add(repo_path(repo, item["path"]))
    if manifest.get("root"):
        bundle_dir = repo_path(repo, manifest["root"]).parent
        for name in ("bundle-manifest.json", "source-to-bundle.tsv", "bundle-imports.tsv"):
            add(bundle_dir / name)
    if evidence_path is not None:
        add(evidence_path)
    if evidence:
        records = [*evidence.get("compile_records", [])]
        for record in records:
            for key in ("output", "log", "diagnostic_log"):
                value = record.get(key)
                if value:
                    add(repo_path(repo, value))
        for command in evidence.get("commands", []):
            if command.get("log"):
                add(repo_path(repo, command["log"]))
        policy = evidence.get("policy") or {}
        if policy.get("log"):
            add(repo_path(repo, policy["log"]))
    if driver_logs_root and driver_logs_root.is_dir():
        for log_path in sorted(driver_logs_root.glob("*.log")):
            add(log_path)
    if shared_pointer.is_file():
        add(shared_pointer)
    staged["files_after"] = len(budget.files)
    staged["bytes_after"] = budget.total
    staged["files"] = budget.files[staged["files_before"] : staged["files_after"]]
    return staged


def write_artifact_checkpoint(
    artifact_root: Path,
    state: dict[str, Any],
    budget: ArtifactBudget,
    shared_summary: dict[str, Any],
) -> None:
    write_json(artifact_root / "state.json", state)
    write_json(
        artifact_root / "artifact-manifest.json",
        {
            "schema_version": 1,
            "shard": state["shard"],
            "source_commit": state["source_commit"],
            "files": budget.files,
            "total_bytes": budget.total,
            "max_bytes": budget.max_bytes,
            "shared_evidence": shared_summary,
            "checkpoint_status": state["status"],
        },
    )

def self_test() -> None:
    assert parse_rows("[65, 66, 184]") == [65, 66, 184]
    for raw in ("{}", "[65, 65]", "[true]", "not-json"):
        try:
            parse_rows(raw)
        except RuntimeError:
            pass
        else:
            raise AssertionError(raw)
    assert "∀ n j : ℕ" in expected_statement(65)
    print("CI_BUNDLED_SELF_TEST_OK json parsing, duplicate rejection, and source statement gate")


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--repo", type=Path, default=Path("."))
    parser.add_argument("--rows-env", default="B699_ROW_INDICES_JSON")
    parser.add_argument("--shard", default=os.environ.get("B699_SHARD", "unknown"))
    parser.add_argument("--shared-evidence", type=Path)
    parser.add_argument("--memory-mb", type=int, default=3072)
    parser.add_argument("--timeout", type=int, default=900)
    parser.add_argument("--block-size", type=int, choices=(64,), default=64)
    parser.add_argument("--artifact-max-bytes", type=int, default=DEFAULT_ARTIFACT_LIMIT)
    parser.add_argument("--validate-only", action="store_true")
    parser.add_argument("--self-test", action="store_true")
    args = parser.parse_args(argv)
    if args.self_test:
        self_test()
        return 0
    if args.memory_mb <= 0 or args.timeout <= 0 or args.artifact_max_bytes <= 0:
        parser.error("memory, timeout, and artifact limits must be positive")
    repo = args.repo.resolve()
    raw_rows = os.environ.get(args.rows_env)
    if raw_rows is None:
        raise RuntimeError(f"required environment variable is missing: {args.rows_env}")
    rows = parse_rows(raw_rows)
    target_summary = validate_requested_rows(repo, rows)
    if args.validate_only:
        print(json.dumps(target_summary, ensure_ascii=False, sort_keys=True))
        return 0
    head = current_commit(repo)
    fixed = load_fixed_inputs(repo)
    pointer = (repo / ".tools" / RUN.name / "shared-evidence.txt").resolve()
    if args.shared_evidence:
        shared_path = repo_path(repo, args.shared_evidence)
    elif pointer.is_file():
        shared_path = repo_path(repo, pointer.read_text(encoding="utf-8").strip())
    else:
        raise RuntimeError("cache_bundle import did not provide shared-evidence.txt")
    shared_summary = validate_shared_evidence(repo, shared_path, head, fixed)

    shard = re.sub(r"[^A-Za-z0-9_.-]+", "_", args.shard) or "unknown"
    work_root = repo / ".tools" / RUN.name / "ci-bundled-work" / f"{shard}-{run_id()}"
    artifact_root = repo / ".tools" / RUN.name / "ci-bundled-artifacts" / f"{shard}-{run_id()}"
    work_root.mkdir(parents=True, exist_ok=False)
    artifact_root.mkdir(parents=True, exist_ok=False)
    budget = ArtifactBudget(artifact_root, args.artifact_max_bytes)
    env = dict(os.environ, PYTHONUTF8="1", PYTHONDONTWRITEBYTECODE="1", GIT_OPTIONAL_LOCKS="0")
    state: dict[str, Any] = {
        "schema_version": 1,
        "status": "running",
        "shard": shard,
        "source_commit": head,
        "requested_indices": rows,
        "memory_mb": args.memory_mb,
        "timeout_seconds": args.timeout,
        "block_size": args.block_size,
        "started_utc": utc_now(),
        "target_status": target_summary,
        "fixed_inputs": fixed,
        "shared_evidence": shared_summary,
        "resource_start": resource_snapshot(repo),
        "rows": [],
        "artifact_budget": {"max_bytes": args.artifact_max_bytes, "max_file_bytes": budget.max_file_bytes},
    }
    write_json(work_root / "state.json", state)
    print("RESOURCE " + json.dumps({"shard": shard, "resource_start": state["resource_start"]}, sort_keys=True), flush=True)

    generator = repo / RUNNER / "generate_huan_row.py"
    bundler = repo / RUNNER / "bundle_huan_row.py"
    verifier = repo / RUNNER / "verify_incremental.py"
    any_failure = False
    for i in rows:
        started = time.monotonic()
        row_record: dict[str, Any] = {
            "i": i,
            "status": "preparing",
            "started_utc": utc_now(),
            "resource_before": resource_snapshot(repo),
        }
        state["rows"].append(row_record)
        write_json(work_root / "state.json", state)
        print("ROW_START " + json.dumps({"i": i, "shard": shard, "memory_mb": args.memory_mb, "block_size": args.block_size}), flush=True)
        plan_path = repo / RUN / "verification/huan-plans" / f"row{i:03d}.json"
        output_dir = repo / RUN / "lean/rows" / f"Row{i:03d}B{args.block_size}"
        row_work = work_root / "rows" / f"row{i:03d}"
        row_work.mkdir(parents=True, exist_ok=True)
        try:
            if not plan_path.is_file():
                generation_resources: dict[str, Any] = {}
                code = invoke_python(repo, generator, ["--i", i, "--plan", plan_path], row_work / "generate.log", env, generation_resources)
                row_record.setdefault("process_tree_peaks", {})["generate"] = generation_resources
                row_record["generation_exit_code"] = code
                if code != 0:
                    raise RuntimeError("row generation failed")
            plan = load_plan(repo, plan_path, i)
            manifest_path = output_dir / "bundle-manifest.json"
            if not manifest_path.is_file():
                code = invoke_python(
                    repo,
                    bundler,
                    ["--repo-root", repo, "--plan", plan_path, "--output", output_dir, "--block-size", args.block_size],
                    row_work / "bundle.log",
                    env,
                    (bundle_resources := {}),
                )
                row_record.setdefault("process_tree_peaks", {})["bundle"] = bundle_resources
                row_record["bundle_exit_code"] = code
                if code != 0:
                    raise RuntimeError("row bundling failed")
            manifest = load_bundle(repo, output_dir, i, args.block_size)
            root = str(manifest["root"]).replace("\\", "/")
            before = {path for path in (repo / RUN / "verification").glob("20*/evidence.json") if path.is_file()}
            verify_log = row_work / "verify_incremental.log"
            code = invoke_python(
                repo,
                verifier,
                [
                    "--repo",
                    repo,
                    "--root",
                    root,
                    "--reuse",
                    shared_path,
                    "--memory-mb",
                    args.memory_mb,
                    "--timeout",
                    args.timeout,
                ],
                verify_log,
                env,
                (verify_resources := {}),
            )
            row_record.setdefault("process_tree_peaks", {})["verify_incremental"] = verify_resources
            row_record["verify_exit_code"] = code
            evidence_path = fresh_evidence(repo, before, root)
            row_record["evidence"] = str(evidence_path.relative_to(repo)).replace("\\", "/") if evidence_path else None
            evidence = json.loads(evidence_path.read_text(encoding="utf-8")) if evidence_path else None
            if evidence_path is None:
                raise RuntimeError("strict verifier produced no unique fresh evidence")
            if code != 0 or not evidence.get("success"):
                raise RuntimeError(evidence.get("failure") or f"strict verifier exited {code}")
            accepted = accept_evidence(repo, i, root, plan, manifest, evidence_path)
            row_record.update(accepted)
            row_record["status"] = "accepted"
            row_record["failure"] = None
        except (OSError, RuntimeError, ValueError, json.JSONDecodeError) as exc:
            any_failure = True
            row_record["status"] = "not_accepted"
            row_record["failure"] = str(exc)
        finally:
            try:
                plan = load_plan(repo, plan_path, i) if plan_path.is_file() else {"i": i, "outputs": []}
            except (OSError, RuntimeError, ValueError, json.JSONDecodeError) as exc:
                row_record.setdefault("artifact_errors", []).append(str(exc))
                plan = {"i": i, "outputs": []}
            try:
                manifest = load_bundle(repo, output_dir, i, args.block_size) if (output_dir / "bundle-manifest.json").is_file() else {"blocks": []}
            except (OSError, RuntimeError, ValueError, json.JSONDecodeError) as exc:
                row_record.setdefault("artifact_errors", []).append(str(exc))
                manifest = {"blocks": []}
            evidence_path = repo_path(repo, row_record["evidence"]) if row_record.get("evidence") else None
            evidence = None
            if evidence_path and evidence_path.is_file():
                try:
                    evidence = json.loads(evidence_path.read_text(encoding="utf-8"))
                except (OSError, ValueError) as exc:
                    row_record.setdefault("artifact_errors", []).append(str(exc))
            try:
                staged = stage_row(repo, budget, artifact_root, i, plan, plan_path, manifest, evidence_path, evidence, row_work, pointer)
                row_record["artifact"] = {"files": staged["files_after"] - staged["files_before"], "bytes": staged["bytes_after"] - staged["bytes_before"], "missing": staged["missing"]}
                if staged["missing"]:
                    any_failure = True
            except (OSError, RuntimeError, ValueError) as exc:
                any_failure = True
                row_record["artifact"] = {"files": 0, "bytes": budget.total, "missing": [str(exc)]}
            row_record["finished_utc"] = utc_now()
            row_record["elapsed_seconds"] = round(time.monotonic() - started, 3)
            row_record["resource_after"] = resource_snapshot(repo)
            write_json(work_root / "state.json", state)
            write_json(artifact_root / "rows" / f"row{i:03d}" / "row-state.json", row_record)
            write_artifact_checkpoint(artifact_root, state, budget, shared_summary)
            print("ROW_RESULT " + json.dumps({"i": i, "status": row_record["status"], "failure": row_record.get("failure"), "artifact": row_record.get("artifact")}, sort_keys=True), flush=True)

    state["status"] = "completed_with_failures" if any_failure else "all_requested_rows_accepted"
    state["finished_utc"] = utc_now()
    state["artifact_bytes"] = budget.total
    state["artifact_files"] = len(budget.files)
    state["accepted_indices"] = [item["i"] for item in state["rows"] if item.get("status") == "accepted"]
    state["failed_indices"] = [item["i"] for item in state["rows"] if item.get("status") != "accepted"]
    write_json(work_root / "state.json", state)
    write_artifact_checkpoint(artifact_root, state, budget, shared_summary)
    print("BATCH_FINISHED " + json.dumps({"shard": shard, "accepted": state["accepted_indices"], "failed": state["failed_indices"], "artifact_bytes": budget.total}, sort_keys=True), flush=True)
    return 1 if any_failure else 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, RuntimeError, ValueError, json.JSONDecodeError) as exc:
        print(f"CI_BUNDLED_ERROR {type(exc).__name__}: {exc}", file=sys.stderr)
        raise SystemExit(2)
