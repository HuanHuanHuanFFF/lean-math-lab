#!/usr/bin/env python3
"""Compile new B699 roots, reusing only hash-validated objects from this run.

No old research output directory is on LEAN_PATH. Reuse is explicit evidence,
not a claim that an imported source was freshly compiled in this invocation.
Windows adaptation: external pinned package root and sampled process-tree memory;
fixed compiler, source policy, closure checks, and axiom audit remain unchanged.
"""
from __future__ import annotations
import argparse
import importlib.util
import json
import os
import shutil
import subprocess
import sys
import time
try:
    from huan_resources import snapshot as huan_snapshot, instrument as huan_instrument
except ModuleNotFoundError:
    huan_snapshot = None
    huan_instrument = None
from datetime import datetime, timezone
from pathlib import Path

RUN = Path("research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc")
OLD = Path("research/tasks/B699-Binomial/runs/20260909-low-index-structure-b41a5a63")
BASE_VERIFY_HUAN_SHA256 = "41FE5175A3FDC7DD3013B280B79B0915B5A3B92723D0169B2CCAB9770491E3B8"
PROFILE_RESERVE_MB = 512
PROFILE_MAX_WAIT_SECONDS = 30


def _sha256_bytes(data: bytes) -> str:
    import hashlib
    return hashlib.sha256(data).hexdigest()


def _mem_available_kb(snapshot: dict) -> int | None:
    for line in snapshot.get("meminfo", []):
        if line.startswith("MemAvailable:"):
            return int(line.split()[1])
    return None


def _compact_memory_snapshot(snapshot: dict) -> dict:
    return {
        "meminfo": list(snapshot.get("meminfo", [])),
        "available_physical_bytes": snapshot.get("available_physical_bytes"),
        "memory_load_percent": snapshot.get("memory_load_percent"),
        "memory.max": snapshot.get("memory.max"),
        "memory.current": snapshot.get("memory.current"),
        "cpu.max": snapshot.get("cpu.max"),
    }


def wait_for_memory(
    snapshot_fn,
    memory_mb: int,
    reserve_mb: int = PROFILE_RESERVE_MB,
    wait_seconds: int = 0,
    *,
    clock=time.monotonic,
    sleep=time.sleep,
    poll_seconds: float = 1.0,
):
    """Purely parameterized memory gate; tests can provide clock/sleep."""
    required_kb = (memory_mb + reserve_mb) * 1024
    started = clock()
    waits = []
    while True:
        snapshot = snapshot_fn()
        available_kb = _mem_available_kb(snapshot)
        elapsed = round(clock() - started, 3)
        enough = available_kb is not None and available_kb >= required_kb
        waits.append(
            {
                "elapsed_seconds": elapsed,
                "available_kb": available_kb,
                "required_kb": required_kb,
                "enough": enough,
                "snapshot": _compact_memory_snapshot(snapshot),
            }
        )
        if enough:
            return snapshot, waits
        if elapsed >= wait_seconds:
            raise RuntimeError(
                "Insufficient available memory after profile wait: "
                f"need {required_kb} kB, observed {available_kb} kB"
            )
        sleep(min(poll_seconds, max(0.0, wait_seconds - elapsed)))


def validate_memory_profile_data(data: dict) -> dict:
    allowed = {
        "kind",
        "schema_version",
        "status",
        "target_root",
        "default_memory_mb",
        "available_memory_guard_reserve_mb",
        "memory_guard_must_remain",
        "temporary_memory_wait_seconds_max",
        "override_keys_are_repo_relative_source_paths",
        "overrides",
        "closure_policy",
        "observed_success_attempt",
        "previous_m2048_failures",
        "compile_command_template",
        "required_compile_record_fields",
        "overall_success_rule",
        "retry_rule",
        "no_execution_in_this_plan",
    }
    unknown = sorted(set(data) - allowed)
    if unknown:
        raise RuntimeError("Unknown memory profile keys: " + ", ".join(unknown))
    default = data.get("default_memory_mb")
    reserve = data.get("available_memory_guard_reserve_mb")
    wait_seconds = data.get("temporary_memory_wait_seconds_max")
    if not isinstance(default, int) or default <= 0:
        raise RuntimeError("memory profile default_memory_mb must be positive")
    if reserve != PROFILE_RESERVE_MB:
        raise RuntimeError("memory profile reserve must remain exactly 512 MiB")
    if not isinstance(wait_seconds, int) or not 0 <= wait_seconds <= PROFILE_MAX_WAIT_SECONDS:
        raise RuntimeError("memory profile wait must be an integer in [0, 30]")
    if data.get("override_keys_are_repo_relative_source_paths") is not True:
        raise RuntimeError("memory profile override keys must be repo-relative source paths")
    overrides = data.get("overrides")
    if not isinstance(overrides, list):
        raise RuntimeError("memory profile overrides must be a list")
    seen = set()
    parsed = {}
    allowed_override_keys = {
        "source",
        "module",
        "memory_mb",
        "declared_high_cost_theorems",
        "also_contains",
        "reason",
        "source_sha256",
    }
    for item in overrides:
        if not isinstance(item, dict):
            raise RuntimeError("memory profile override must be an object")
        extra = sorted(set(item) - allowed_override_keys)
        if extra:
            raise RuntimeError("Unknown memory profile override keys: " + ", ".join(extra))
        source = item.get("source")
        value = item.get("memory_mb")
        if not isinstance(source, str) or not source or Path(source).is_absolute():
            raise RuntimeError("memory profile override source must be relative")
        if source in seen:
            raise RuntimeError("Duplicate memory profile override source: " + source)
        seen.add(source)
        if not isinstance(value, int) or value <= 0:
            raise RuntimeError("memory profile override memory_mb must be positive")
        source_sha = item.get("source_sha256")
        if not isinstance(source_sha, str) or len(source_sha) != 64:
            raise RuntimeError("memory profile override needs a SHA-256 source_sha256")
        parsed[source] = dict(item)
    return {
        "default_memory_mb": default,
        "reserve_mb": reserve,
        "wait_seconds": wait_seconds,
        "overrides": parsed,
    }


def load_memory_profile(path: Path) -> dict:
    raw = path.read_bytes()
    data = json.loads(raw.decode("utf-8"))
    parsed = validate_memory_profile_data(data)
    parsed.update(
        {
            "path": path,
            "raw_bytes": len(raw),
            "raw_sha256": _sha256_bytes(raw),
            "target_root": data.get("target_root"),
            "raw_data": data,
        }
    )
    return parsed


def validate_memory_profile_for_closure(
    profile: dict,
    *,
    repo: Path,
    roots,
    closure,
    verifier,
) -> dict:
    target = profile.get("target_root")
    if not isinstance(target, str):
        raise RuntimeError("memory profile target_root is required")
    target_path = (repo / target).resolve()
    root_paths = {path.resolve() for path in roots}
    if target_path not in root_paths:
        raise RuntimeError("memory profile target_root is not one of --root inputs")
    closure_sources = {verifier.relpath(ref.path, repo) for ref in closure}
    for source, item in profile["overrides"].items():
        if source not in closure_sources:
            raise RuntimeError("Unknown memory profile closure source: " + source)
        path = repo / source
        observed = verifier.sha256_path(path)
        if observed != item["source_sha256"]:
            raise RuntimeError("Memory profile source SHA mismatch: " + source)
    return {
        "path": "MEMORY_PROFILE",
        "raw_bytes": profile["raw_bytes"],
        "raw_sha256": profile["raw_sha256"],
        "target_root": verifier.relpath(target_path, repo),
        "default_memory_mb": profile["default_memory_mb"],
        "reserve_mb": profile["reserve_mb"],
        "wait_seconds": profile["wait_seconds"],
        "override_sources": sorted(profile["overrides"]),
        "adoptions": [],
    }


def selected_memory_for_source(profile: dict | None, source: str) -> dict:
    if profile is None:
        return {
            "selected_memory_mb": None,
            "profile_source": None,
            "source_sha256": None,
        }
    override = profile["overrides"].get(source)
    if override is None:
        return {
            "selected_memory_mb": profile["default_memory_mb"],
            "profile_source": "PROFILE_DEFAULT",
            "source_sha256": None,
        }
    return {
        "selected_memory_mb": override["memory_mb"],
        "profile_source": source,
        "source_sha256": override["source_sha256"],
    }


def main():
    global huan_snapshot, huan_instrument
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--repo", type=Path, default=Path("."))
    p.add_argument("--package-root", type=Path, required=True)
    p.add_argument("--root", action="append", required=True)
    p.add_argument("--reuse", action="append", type=Path, default=[])
    p.add_argument("--memory-mb", type=int, default=3072)
    p.add_argument("--memory-profile", type=Path,
                   help="Optional JSON profile; changes per-source memory only when supplied")
    p.add_argument("--timeout", type=int, default=900,
                   help="One compile diagnostic bound; never a task deadline")
    args = p.parse_args()
    repo = args.repo.resolve()
    if huan_instrument is None:
        resource_source = repo / RUN / "verification/runner/huan_resources.py"
        resource_spec = importlib.util.spec_from_file_location(
            "b699_profile_candidate_resources", resource_source
        )
        if resource_spec is None or resource_spec.loader is None:
            raise RuntimeError("Cannot load fixed huan_resources.py")
        resource_module = importlib.util.module_from_spec(resource_spec)
        resource_spec.loader.exec_module(resource_module)
        huan_snapshot = resource_module.snapshot
        huan_instrument = resource_module.instrument
    spec = importlib.util.spec_from_file_location(
        "b699_incremental_adapter", repo / OLD / "verification/runner/verify_repo_relative.py")
    assert spec and spec.loader
    adapter = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(adapter)
    v = adapter.load_verifier()
    huan_instrument(v)
    v.FORBIDDEN_TOKENS += ("Lean.ofReduceBool", "ofReduceBool")
    fixed = json.loads((repo / RUN / "verification/runner/finitecover-inputs.json").read_text())
    for row in fixed["support_files"]:
        if v.sha256_path(repo / row["source"]) != row["expected_sha256"]:
            raise RuntimeError("Fixed verifier changed: " + row["source"])
    if v.sha256_path(repo / "lake-manifest.json") != fixed["manifest_sha256"]:
        raise RuntimeError("Manifest changed")
    if (repo / "lean-toolchain").read_text().strip() != fixed["toolchain"]:
        raise RuntimeError("Toolchain pin changed")
    stamp = datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%S%fZ")
    public = repo / RUN / "verification" / stamp
    raw = repo / ".tools" / RUN.name / stamp
    for base in [public, raw]:
        (base / "logs").mkdir(parents=True, exist_ok=False)
    objects = raw / "olean"
    objects.mkdir()
    (raw / "tmp").mkdir()
    commands, diagnostics = [], []
    report = dict(schema_version=2, kind="hash_checked_incremental",
        success=False, exit_code=1, started_utc=v.utc_now(),
        evidence_directory=v.relpath(public, repo),
        diagnostic_directory=v.relpath(raw, repo), root_sources=args.root,
        memory_mb=args.memory_mb, timeout_seconds=args.timeout,
        base_verify_huan_sha256=BASE_VERIFY_HUAN_SHA256,
        memory_profile=None,
        manifest_sha256=v.sha256_path(repo / "lake-manifest.json"),
        source_commit=subprocess.check_output(["git", "rev-parse", "HEAD"], cwd=repo, text=True).strip(),
        runner_sha256=v.sha256_path(Path(__file__)),
        reuse_evidence=[], reuse_records=[], compile_records=[], commands=commands,
        all_new_project_closure_compiled=False, failure=None)
    shutil.copyfile(Path(__file__), public / "runner-source.py")
    resource_source = Path(__file__).with_name("huan_resources.py")
    shutil.copyfile(resource_source, public / "huan_resources.py")
    report["runner_support_sha256"] = v.sha256_path(resource_source)
    report["source_commit_role"] = "base Git commit; actual source closure bound by per-file SHA256"
    try:
        lean_name = shutil.which("lean")
        if not lean_name:
            raise RuntimeError("Lean is unavailable")
        if shutil.which("elan"):
            found = subprocess.run(["elan", "which", "lean"], cwd=repo, text=True, capture_output=True)
            if found.returncode == 0:
                lean_name = found.stdout.strip()
        lean = Path(lean_name).resolve()
        package_root = args.package_root.resolve()
        env = dict(os.environ)
        for name in ["TEMP", "TMP", "TMPDIR"]:
            env[name] = str(raw / "tmp")
        env["MATHLIB_CACHE_DIR"] = str(raw / "mathlib-cache")
        manifest = v.load_manifest(repo)
        loaded_profile = load_memory_profile(args.memory_profile.resolve()) if args.memory_profile else None
        if loaded_profile is not None:
            report["schema_version"] = 3
            report["kind"] = "hash_checked_incremental_memory_profile_candidate"
            shutil.copyfile(loaded_profile["path"], public / "memory-profile.json")
            report["memory_profile"] = {
                "path": "memory-profile.json",
                "raw_bytes": loaded_profile["raw_bytes"],
                "raw_sha256": loaded_profile["raw_sha256"],
                "raw_artifact_sha256": v.sha256_path(public / "memory-profile.json"),
            }
        common = dict(repo=repo, lean=lean, package_root=package_root,
                      raw_root=raw, public_root=public, env=env,
                      timeout_seconds=args.timeout, command_records=commands,
                      diagnostic_records=diagnostics)
        pins = v.check_packages(manifest, **common)
        report["pins"] = pins
        if any(not x.get("head_matches") or not x.get("clean") for x in pins):
            raise RuntimeError("Fixed package checkout is dirty or at the wrong pin")
        version, output = v.run_logged([str(lean), "--version"], ["LEAN", "--version"],
                                       label="lean-version", **common)
        report["toolchain"] = dict(declared=fixed["toolchain"], observed=output.strip(),
                                   exit_code=version["exit_code"])
        if version["exit_code"] or "Lean (version 4.33.1" not in output:
            raise RuntimeError("Wrong Lean version")
        prefixes = v.package_prefixes(manifest)
        roots = [v.resolve_root(x, repo) for x in args.root]
        closure, imports = v.build_closure(roots, repo=repo,
            index=adapter.repo_relative_source_index(v, repo), package_prefixes=prefixes)
        if loaded_profile is not None:
            report["memory_profile"] = validate_memory_profile_for_closure(
                loaded_profile, repo=repo, roots=roots, closure=closure, verifier=v
            ) | report["memory_profile"]
        policy = v.policy_check(closure, repo=repo, raw_root=raw, public_root=public)
        report["policy"] = policy
        if policy["exit_code"]:
            raise RuntimeError("Source policy failed")
        report["source_closure"] = [dict(source=v.relpath(x.path, repo), module=x.module,
            imports=imports.get(x.path, []), source_sha256_before=v.sha256_path(x.path))
            for x in closure]
        package_modules = sorted({m for values in imports.values() for m in values
                                  if v.fixed_kind(m, prefixes) == "package"})
        report["package_imports"] = package_modules
        report["fixed_cache_imports"] = v.package_cache_records(pins, package_modules,
                                                                package_root=package_root)
        caches = [package_root / row["name"] / ".lake/build/lib/lean"
                  for row in pins if row.get("cache_exists")]
        env["LEAN_PATH"] = os.pathsep.join(map(str, [objects, *caches]))
        report["lean_path_public"] = [v.relpath(objects, repo), "PINNED_PACKAGE_CACHE_ROOTS"]
        reusable = {}
        for requested in args.reuse:
            evidence = (repo / requested).resolve()
            if not evidence.is_relative_to(repo / RUN / "verification"):
                raise RuntimeError("Reuse evidence must belong to this task run")
            data = json.loads(evidence.read_text())
            if not data.get("success") or data.get("manifest_sha256") != report["manifest_sha256"]:
                raise RuntimeError("Reuse needs successful evidence at the same pins")
            if data.get("toolchain", {}).get("declared") != fixed["toolchain"]:
                raise RuntimeError("Reused toolchain mismatch")
            if any(not row.get("head_matches") or not row.get("clean")
                   for row in data.get("pins", [])) or len(data.get("pins", [])) != len(pins):
                raise RuntimeError("Incomplete reused package audit")
            rows = [*data.get("reuse_records", []), *data.get("compile_records", [])]
            by_source = {r["source"]: r for r in rows}
            if len(by_source) != len(data["source_closure"]):
                raise RuntimeError("Incomplete reused closure")
            for src in data["source_closure"]:
                rec = by_source[src["source"]]
                src_hash = v.sha256_path(repo / src["source"])
                if src_hash != rec["source_sha256_before"] or src_hash != rec["source_sha256_after"]:
                    raise RuntimeError("Reused source changed: " + src["source"])
                obj = (repo / rec["output"]).resolve()
                if not obj.is_relative_to(repo / ".tools" / RUN.name):
                    raise RuntimeError("Reused object is outside this run")
                if not obj.is_file() or v.sha256_path(obj) != rec["output_sha256"]:
                    raise RuntimeError("Reused output changed: " + src["source"])
                if rec.get("failure") or rec.get("exit_code") != 0 or rec.get("timed_out"):
                    raise RuntimeError("Reused compile was not successful")
                log = repo / rec["log"]
                if not log.is_file() or v.sha256_path(log) != rec["log_sha256"]:
                    raise RuntimeError("Reused compile log changed")
                audit = v.audit_axioms(repo / src["source"], log.read_text())
                if audit.get("error") or audit.get("unexpected_axioms"):
                    raise RuntimeError("Reused axiom audit failed")
                if list(src.get("imports", [])) != v.imports_in(repo / src["source"]):
                    raise RuntimeError("Reused import list changed")
                # Both sources and all project dependencies in this complete
                # successful evidence were checked above before any import.
                reusable[rec["module"]] = (rec, evidence)
            report["reuse_evidence"].append(dict(path=v.relpath(evidence, repo),
                                                 sha256=v.sha256_path(evidence)))
        def resource_snapshot():
            return huan_snapshot(repo)
        report["compile_resources"] = []
        for ordinal, ref in enumerate(closure, 1):
            saved = reusable.get(ref.module)
            if saved:
                rec, evidence = saved
                dest = objects.joinpath(*ref.module.split(".")).with_suffix(".olean")
                dest.parent.mkdir(parents=True, exist_ok=True)
                try:
                    os.link(repo / rec["output"], dest)
                    materialization = "hardlink_to_hash_verified_immutable_object"
                except OSError:
                    shutil.copyfile(repo / rec["output"], dest)
                    materialization = "byte_copy"
                new_rec = dict(rec, output=v.relpath(dest, repo), object_materialization=materialization,
                    reused_from_output=rec["output"], reused_from_evidence=v.relpath(evidence, repo))
                if v.sha256_path(dest) != rec["output_sha256"]:
                    raise RuntimeError("Copied object hash mismatch")
                report["reuse_records"].append(new_rec)
            else:
                source_name = v.relpath(ref.path, repo)
                selection = selected_memory_for_source(loaded_profile, source_name)
                selected_memory_mb = selection["selected_memory_mb"] or args.memory_mb
                if loaded_profile is None:
                    snapshot = resource_snapshot()
                    wait_info = []
                    for line in snapshot.get("meminfo", []):
                        if line.startswith("MemAvailable:") and int(line.split()[1]) < (selected_memory_mb + 512) * 1024:
                            raise RuntimeError("Insufficient available memory for the bounded serial compile")
                else:
                    snapshot, wait_info = wait_for_memory(
                        resource_snapshot,
                        selected_memory_mb,
                        loaded_profile["reserve_mb"],
                        loaded_profile["wait_seconds"],
                    )
                resource_record = {
                    "source": source_name,
                    "selected_memory_mb": selected_memory_mb,
                    **snapshot,
                }
                if loaded_profile is not None:
                    resource_record["memory_profile_selection"] = selection
                    resource_record["memory_wait_snapshots"] = wait_info
                    loaded_profile["adoptions"].append(
                        {
                            "source": source_name,
                            **selection,
                            "wait_snapshot_count": len(wait_info),
                        }
                    )
                    report["memory_profile"]["adoptions"] = loaded_profile["adoptions"]
                report["compile_resources"].append(resource_record)
                print("RESOURCE", json.dumps({
                    "source": source_name,
                    "selected_memory_mb": selected_memory_mb,
                    "wait_snapshot_count": len(wait_info),
                    **{k: value for k, value in snapshot.items() if k != "processes"},
                }), flush=True)
                if snapshot["disk"][2] < 512 * 1024 * 1024:
                    raise RuntimeError("Insufficient disk headroom before compile")
                rec, _ = v.compile_source(ref, raw_olean=objects, memory_mb=selected_memory_mb,
                    imports=imports.get(ref.path, []), ordinal=ordinal, **common)
                rec["selected_memory_mb"] = selected_memory_mb
                if loaded_profile is not None:
                    rec["memory_profile_selection"] = selection
                    rec["memory_wait_snapshot_count"] = len(wait_info)
                report["compile_records"].append(rec)
                print("COMPILE", json.dumps({k: rec[k] for k in
                    ["source", "seconds", "exit_code", "failure", "axiom_audit"]}), flush=True)
                if rec["failure"]:
                    print((repo / rec["log"]).read_text()[-10000:], flush=True)
                    raise RuntimeError("Compile failed: " + ref.module)
        for row in report["source_closure"]:
            row["source_sha256_after"] = v.sha256_path(repo / row["source"])
            if row["source_sha256_before"] != row["source_sha256_after"]:
                raise RuntimeError("Source changed during verification")
        report.update(success=True, exit_code=0)
    except (RuntimeError, OSError, ValueError, subprocess.SubprocessError) as exc:
        report["failure"] = str(exc)
    finally:
        report["finished_utc"] = v.utc_now()
        report["compiled_count"] = len(report["compile_records"])
        report["reused_count"] = len(report["reuse_records"])
        report["all_new_project_closure_compiled"] = bool(report["success"] and not report["reuse_records"])
        v.write_json(public / "evidence.json", report)
        v.write_json(raw / "diagnostic.json", dict(commands=diagnostics))
        print("EVIDENCE", v.relpath(public / "evidence.json", repo), flush=True)
        print("RESULT", json.dumps({k: report[k] for k in
            ["success", "exit_code", "compiled_count", "reused_count", "failure"]}), flush=True)
    return report["exit_code"]


if __name__ == "__main__":
    raise SystemExit(main())
