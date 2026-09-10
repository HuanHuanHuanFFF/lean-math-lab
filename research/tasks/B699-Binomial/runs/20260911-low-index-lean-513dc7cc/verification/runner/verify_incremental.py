#!/usr/bin/env python3
"""Compile new B699 roots, reusing only hash-validated objects from this run.

No old research output directory is on LEAN_PATH. Reuse is explicit evidence,
not a claim that an imported source was freshly compiled in this invocation.
"""
from __future__ import annotations
import argparse
import importlib.util
import json
import os
import shutil
import subprocess
import sys
from datetime import datetime, timezone
from pathlib import Path

RUN = Path("research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc")
OLD = Path("research/tasks/B699-Binomial/runs/20260909-low-index-structure-b41a5a63")


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--repo", type=Path, default=Path("."))
    p.add_argument("--root", action="append", required=True)
    p.add_argument("--reuse", action="append", type=Path, default=[])
    p.add_argument("--memory-mb", type=int, default=3072)
    p.add_argument("--timeout", type=int, default=900,
                   help="One compile diagnostic bound; never a task deadline")
    args = p.parse_args()
    repo = args.repo.resolve()
    spec = importlib.util.spec_from_file_location(
        "b699_incremental_adapter", repo / OLD / "verification/runner/verify_repo_relative.py")
    assert spec and spec.loader
    adapter = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(adapter)
    v = adapter.load_verifier()
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
        manifest_sha256=v.sha256_path(repo / "lake-manifest.json"),
        source_commit=subprocess.check_output(["git", "rev-parse", "HEAD"], cwd=repo, text=True).strip(),
        runner_sha256=v.sha256_path(Path(__file__)),
        reuse_evidence=[], reuse_records=[], compile_records=[], commands=commands,
        all_new_project_closure_compiled=False, failure=None)
    try:
        lean_name = shutil.which("lean")
        if not lean_name:
            raise RuntimeError("Lean is unavailable")
        if shutil.which("elan"):
            found = subprocess.run(["elan", "which", "lean"], cwd=repo, text=True, capture_output=True)
            if found.returncode == 0:
                lean_name = found.stdout.strip()
        lean = Path(lean_name).resolve()
        package_root = (repo / ".lake/packages").resolve()
        env = dict(os.environ)
        for name in ["TEMP", "TMP", "TMPDIR"]:
            env[name] = str(raw / "tmp")
        env["MATHLIB_CACHE_DIR"] = str(raw / "mathlib-cache")
        manifest = v.load_manifest(repo)
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
            snapshot = {"cpu_count": os.cpu_count(), "disk": list(shutil.disk_usage(repo))}
            meminfo = Path("/proc/meminfo")
            if meminfo.is_file():
                snapshot["meminfo"] = [line for line in meminfo.read_text().splitlines()
                                       if line.startswith(("MemTotal:", "MemAvailable:"))]
            for item in ["memory.max", "memory.current", "cpu.max"]:
                path = Path("/sys/fs/cgroup") / item
                snapshot[item] = path.read_text().strip() if path.exists() else None
            processes = subprocess.run(["ps", "-eo", "pid,ppid,rss,comm", "--sort=-rss"],
                                       capture_output=True, text=True)
            snapshot["processes"] = processes.stdout[:1800] if processes.returncode == 0 else processes.stderr[:300]
            return snapshot
        report["compile_resources"] = []
        for ordinal, ref in enumerate(closure, 1):
            saved = reusable.get(ref.module)
            if saved:
                rec, evidence = saved
                dest = objects.joinpath(*ref.module.split(".")).with_suffix(".olean")
                dest.parent.mkdir(parents=True, exist_ok=True)
                shutil.copyfile(repo / rec["output"], dest)
                new_rec = dict(rec, output=v.relpath(dest, repo),
                    reused_from_output=rec["output"], reused_from_evidence=v.relpath(evidence, repo))
                if v.sha256_path(dest) != rec["output_sha256"]:
                    raise RuntimeError("Copied object hash mismatch")
                report["reuse_records"].append(new_rec)
            else:
                snapshot = resource_snapshot()
                report["compile_resources"].append({"source": v.relpath(ref.path, repo), **snapshot})
                print("RESOURCE", json.dumps({"source": v.relpath(ref.path, repo),
                    **{k: v for k, v in snapshot.items() if k != "processes"}}), flush=True)
                # Reserve the Lean allocation bound plus wrapper/process-tree headroom.
                for line in snapshot.get("meminfo", []):
                    if line.startswith("MemAvailable:") and int(line.split()[1]) < (args.memory_mb + 512) * 1024:
                        raise RuntimeError("Insufficient available memory for the bounded serial compile")
                if snapshot["disk"][2] < 512 * 1024 * 1024:
                    raise RuntimeError("Insufficient disk headroom before compile")
                rec, _ = v.compile_source(ref, raw_olean=objects, memory_mb=args.memory_mb,
                    imports=imports.get(ref.path, []), ordinal=ordinal, **common)
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
