#!/usr/bin/env python3
"""Compile arbitrary research roots against pinned packages in fresh objects.

This is a small adapter around ``scripts/verify-research-runs.py``.  It keeps
that verifier's source-closure, policy, package-pin, toolchain and compilation
helpers intact while accepting roots from a new research run.  A single-run
invocation defaults to that run's ``verification/<UTC>`` directory; roots from
multiple runs default to this shared directory.  An explicit topic-owned
baseline audit may use ``verification/baseline/<UTC>``.  Every invocation gets
a separate Lean object directory below ``.lake/formalization-environment``.

Example::

    python3 research/shared/20260909-formalization-environment/fresh-root.py \
      --root research/tasks/B677-Lcm/runs/20260908-formalization-92c221/lean/Foo.lean

Use one ``--guards N`` for each ``--root`` when the root has N guarded
``#print axioms`` commands.  Without ``--guards``, roots are still policy
checked and compiled, but no guard-count expectation is imposed.
"""

from __future__ import annotations

import argparse
import hashlib
import importlib.util
import json
import os
import subprocess
import sys
from datetime import datetime, timezone
from pathlib import Path
from typing import Any, Mapping, Sequence


REPO = Path(__file__).resolve().parents[3]
SHARED = REPO / "research" / "shared" / "20260909-formalization-environment"
VERIFIER_PATH = REPO / "scripts" / "verify-research-runs.py"
# New run directories are the only topic-owned locations to which this
# adapter may write verification evidence.  Adopted historical runs remain
# readable inputs and may be imported, but never receive new evidence here.
BATCH_RUNS = frozenset(
    {
        "research/tasks/B677-Lcm/runs/20260908-formalization-92c221",
        "research/tasks/B699-Binomial/runs/20260908-formalization-92c221",
        "research/tasks/B686-Four/runs/20260908-formalization-92c221",
    }
)
# Explicitly accepted run directories for this formalization handoff.  The
# three new per-problem runs may consume the two already adopted B686 runs;
# imports into any other research run are rejected by the adapter.
ALLOWED_RUNS = frozenset(
    set(BATCH_RUNS)
    | {
        "research/tasks/B686-Four/runs/20260908-lcm-distance-7cab35e",
        "research/tasks/B686-Four/runs/20260908-reflected-sum-9bad0b9",
    }
)


def load_verifier() -> Any:
    spec = importlib.util.spec_from_file_location(
        "lean_math_lab_verify_research_runs", VERIFIER_PATH
    )
    if spec is None or spec.loader is None:
        raise RuntimeError(f"cannot load verifier module: {VERIFIER_PATH}")
    module = importlib.util.module_from_spec(spec)
    # ``verify-research-runs.py`` declares dataclasses.  Registering the
    # dynamically loaded module first is required by dataclasses' postponed
    # annotation handling.
    sys.modules[spec.name] = module
    spec.loader.exec_module(module)
    return module


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def relpath(path: Path) -> str:
    try:
        return path.resolve().relative_to(REPO.resolve()).as_posix()
    except ValueError:
        return path.as_posix()


def inside(path: Path, parent: Path) -> bool:
    try:
        path.resolve().relative_to(parent.resolve())
    except ValueError:
        return False
    return True


def allowed_evidence_location(path: Path) -> bool:
    """Allow shared evidence or approved evidence children of new runs.

    The direct ``verification/<UTC>`` form is used by ordinary focused
    checks.  Per-topic sampling and baseline audits may use the explicitly
    owned ``verification/sampling/<UTC>`` and ``verification/baseline/<UTC>``
    subtrees.
    """

    if inside(path, SHARED):
        return True
    for run in BATCH_RUNS:
        verification = REPO / run / "verification"
        if path.parent in {
            verification,
            verification / "sampling",
            verification / "baseline",
        }:
            return True
    return False


def allocate_dirs(
    requested: str | None,
    *,
    default_run_dirs: Sequence[str],
) -> tuple[Path, Path, str]:
    """Allocate empty evidence and object directories with one shared stamp."""

    if requested:
        evidence = Path(requested).expanduser()
        if not evidence.is_absolute():
            evidence = REPO / evidence
        evidence = evidence.resolve()
        if not allowed_evidence_location(evidence):
            allowed = ", ".join(
                [str(SHARED)]
                + [
                    str(REPO / run / "verification")
                    for run in sorted(BATCH_RUNS)
                ]
                + [
                    str(REPO / run / "verification" / "baseline")
                    for run in sorted(BATCH_RUNS)
                ]
            )
            raise RuntimeError(f"--output must be below an allowed evidence directory: {allowed}")
        if evidence.exists() and any(evidence.iterdir()):
            raise RuntimeError(f"refusing to overwrite non-empty output: {evidence}")
        stamp = evidence.name
        object_root = (REPO / ".lake" / "formalization-environment" / stamp).resolve()
        if object_root.exists():
            raise RuntimeError(f"fresh object directory already exists: {object_root}")
        evidence.mkdir(parents=True, exist_ok=False)
        (object_root / "olean").mkdir(parents=True, exist_ok=False)
        return evidence, object_root, stamp

    if len(default_run_dirs) == 1 and default_run_dirs[0] in BATCH_RUNS:
        parent = REPO / default_run_dirs[0] / "verification"
    else:
        parent = SHARED / "runs"
    parent.mkdir(parents=True, exist_ok=True)
    object_parent = REPO / ".lake" / "formalization-environment"
    object_parent.mkdir(parents=True, exist_ok=True)
    base = datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%SZ")
    for suffix in ("", *[f"-{index:02d}" for index in range(1, 1000)]):
        stamp = base + suffix
        evidence = parent / stamp
        object_root = object_parent / stamp
        try:
            evidence.mkdir()
            (object_root / "olean").mkdir(parents=True)
        except FileExistsError:
            if evidence.exists() and not any(evidence.iterdir()):
                evidence.rmdir()
            if object_root.exists():
                # The object directory may have been created by a race after
                # the evidence directory.  Do not touch or reuse it.
                continue
            continue
        return evidence, object_root, stamp
    raise RuntimeError("could not allocate a fresh timestamped output")


def resolve_root(value: str, verifier: Any) -> Path:
    path = Path(value).expanduser()
    if not path.is_absolute():
        path = REPO / path
    path = path.resolve()
    if not inside(path, REPO):
        raise RuntimeError(f"root is outside repository: {path}")
    if any(part in {".lake", ".tools", ".git"} for part in path.relative_to(REPO).parts):
        raise RuntimeError(f"root is inside generated/tool metadata: {relpath(path)}")
    if not path.is_file() or path.suffix != ".lean":
        raise RuntimeError(f"root is not a Lean source file: {path}")
    return path


def run_relative_path(path: Path) -> str | None:
    relative = path.relative_to(REPO)
    parts = relative.parts
    if "runs" not in parts:
        return None
    index = parts.index("runs")
    if index + 1 >= len(parts):
        raise RuntimeError(f"source has an incomplete runs path: {relative}")
    return Path(*parts[: index + 2]).as_posix()


def validate_allowed_runs(paths: Sequence[Path]) -> list[str]:
    runs = sorted(
        {
            run
            for path in paths
            if (run := run_relative_path(path)) is not None
        }
    )
    unknown = [run for run in runs if run not in ALLOWED_RUNS]
    if unknown:
        raise RuntimeError(
            "root belongs to an unapproved research run: " + ", ".join(unknown)
        )
    return runs


def install_allowed_run_guard(verifier: Any) -> None:
    """Adapt the historical one-run guard to this handoff's explicit allowlist."""

    def reject(path: Path, repo: Path, _run_id: str) -> None:
        relative = path.resolve().relative_to(repo.resolve())
        parts = relative.parts
        if "external" in parts:
            raise verifier.VerificationError(
                f"accepted closure imports external material: {relative.as_posix()}"
            )
        if "B686-Four" in parts and "round9" in parts:
            raise verifier.VerificationError(
                f"accepted closure still imports historical round9 path: {relative.as_posix()}"
            )
        run = run_relative_path(path)
        if run is not None and run not in ALLOWED_RUNS:
            raise verifier.VerificationError(
                f"accepted closure crosses outside explicit run allowlist: {relative.as_posix()}"
            )

    verifier.reject_unaccepted_project_source = reject


def package_status(verifier: Any, package: Mapping[str, Any], package_path: Path) -> dict[str, Any]:
    def git(*args: str) -> tuple[int, str]:
        process = subprocess.run(
            ["git", "-C", str(package_path), *args],
            cwd=REPO,
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
            text=True,
            encoding="utf-8",
            errors="replace",
            check=False,
        )
        return process.returncode, process.stdout.strip()

    head_exit, head = git("rev-parse", "HEAD")
    status_exit, status = git("status", "--porcelain=v1", "--branch")
    origin_exit, origin = git("config", "--get", "remote.origin.url")
    status_changes = [line for line in status.splitlines() if line and not line.startswith("##")]
    expected = str(package.get("rev", ""))
    return {
        "name": str(package.get("name", "")),
        "path": relpath(package_path),
        "manifestRev": expected,
        "observedHead": head,
        "headMatches": head_exit == 0 and head == expected,
        "origin": origin,
        "originMatchesManifest": origin_exit == 0 and origin == str(package.get("url", "")),
        "clean": status_exit == 0 and not status_changes,
        "statusChanges": status_changes,
    }


def root_audit(verifier: Any, path: Path, expected: int | None, policy_mask: Any) -> dict[str, Any]:
    source = verifier.read_utf8(path)
    masked = policy_mask(source)
    prints = len(verifier.PRINT_AXIOMS_RE.findall(masked))
    guards = len(verifier.GUARD_MSGS_RE.findall(masked))
    record: dict[str, Any] = {
        "path": relpath(path),
        "source_sha256": sha256(path),
        "print_axioms": prints,
        "guard_msgs": guards,
        "expected_guards": expected,
    }
    if expected is not None:
        record["audit"] = verifier.audit_root_source(
            path, expected, policy_mask=policy_mask
        )
    return record


def parse_args(argv: Sequence[str]) -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--root", action="append", required=True, help="Lean root source; repeatable")
    parser.add_argument(
        "--guards",
        action="append",
        type=int,
        help="expected guarded #print axioms count, one per --root",
    )
    parser.add_argument(
        "--output",
        help="empty evidence directory below shared env or a new run verification directory",
    )
    return parser.parse_args(argv)


def main(argv: Sequence[str] | None = None) -> int:
    args = parse_args(sys.argv[1:] if argv is None else argv)
    verifier = load_verifier()
    evidence: Path | None = None
    report: dict[str, Any] = {
        "schema_version": 1,
        "success": False,
        "exit_code": 1,
        "argv": [str(item) for item in sys.argv],
        "repository": str(REPO),
        "roots": [],
        "source_closure": [],
        "compile_records": [],
        "package_compiles": [],
        "failure": None,
    }
    try:
        roots = [resolve_root(value, verifier) for value in args.root]
        if args.guards is not None and len(args.guards) != len(roots):
            raise RuntimeError("--guards must be repeated once for every --root")
        guard_values = args.guards if args.guards is not None else [None] * len(roots)
        allowed_runs = validate_allowed_runs(roots)
        evidence, build_root, stamp = allocate_dirs(
            args.output, default_run_dirs=allowed_runs
        )
        olean_root = build_root / "olean"
        report.update(
            {
                "started_utc": datetime.now(timezone.utc).isoformat().replace("+00:00", "Z"),
                "output_directory": relpath(evidence),
                "build": {
                    "root": relpath(build_root),
                    "olean": relpath(olean_root),
                    "fresh": True,
                    "lean_path": [str(olean_root)],
                },
            }
        )
        install_allowed_run_guard(verifier)
        report["allowed_run_directories"] = sorted(ALLOWED_RUNS)
        report["root_run_directories"] = allowed_runs
        env = dict(os.environ)
        env["ELAN_HOME"] = str(REPO / ".tools" / "elan")
        env["PATH"] = str(REPO / ".tools" / "elan" / "bin") + os.pathsep + env.get("PATH", "")
        env["MATHLIB_CACHE_DIR"] = str(REPO / ".lake" / "mathlib-cache")
        env["LEAN_PATH"] = str(olean_root)

        manifest = verifier.load_manifest(REPO)
        if str(manifest.get("packagesDir", ".lake/packages")) != ".lake/packages":
            raise RuntimeError("expected pinned package directory .lake/packages")
        records = verifier.package_pin_records(REPO, manifest)
        detailed = []
        package_dir = REPO / ".lake" / "packages"
        for package in manifest.get("packages", []):
            path = package_dir / str(package.get("name", ""))
            detailed.append(package_status(verifier, package, path))
        report["pins"] = detailed
        (evidence / "package-pins.log").write_text(
            json.dumps(detailed, ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
        )
        bad = [row for row in detailed if not row["headMatches"] or not row["clean"]]
        if bad:
            raise RuntimeError("package HEAD mismatch or dirty checkout: " + ", ".join(row["name"] for row in bad))
        # Keep the original verifier's existence/HEAD check in the evidence.
        report["manifest_pin_records"] = records

        report["toolchain"] = verifier.ensure_toolchain(REPO, evidence, env)
        policy_globals = verifier.load_policy(REPO)
        policy_mask = policy_globals.get("mask_comments_and_strings")
        if not callable(policy_mask):
            raise RuntimeError("source policy checker has no masking function")
        exact, basename = verifier.build_source_index(REPO)
        closure, imports = verifier.build_closure(
            roots,
            repo=REPO,
            run_id="fresh-root",
            exact=exact,
            basename=basename,
        )
        root_records = [root_audit(verifier, path, expected, policy_mask) for path, expected in zip(roots, guard_values)]
        report["roots"] = root_records
        policy = verifier.policy_check(
            [reference.path for reference in closure],
            repo=REPO,
            output=evidence / "policy",
            policy_mask=policy_mask,
        )
        report["policy"] = policy
        if policy["exit_code"]:
            raise RuntimeError(f"source policy failed; see {policy['log']}")
        report["source_closure"] = [
            {
                "source": relpath(reference.path),
                "module": reference.module_name,
                "source_sha256": sha256(reference.path),
                "imports": imports.get(reference.path, []),
            }
            for reference in closure
        ]
        package_imports = sorted(
            {
                module
                for imported in imports.values()
                for module in imported
                if verifier.is_package_import(module)
            }
        )
        report["package_imports"] = package_imports
        linked = verifier.overlay_package_objects(REPO, olean_root)
        report["build"]["linked_package_objects"] = linked
        report["package_compiles"] = verifier.rebuild_missing_package_objects(
            package_imports,
            repo=REPO,
            olean_root=olean_root,
            output=evidence,
            env=env,
        )
        compiled: set[Path] = set()
        for ordinal, reference in enumerate(closure, start=1):
            if reference.path in compiled:
                continue
            record = verifier.compile_source(
                reference,
                ordinal=ordinal,
                repo=REPO,
                olean_root=olean_root,
                output=evidence,
                env=env,
                imports=imports.get(reference.path, []),
            )
            report["compile_records"].append(record)
            compiled.add(reference.path)
        report["compiled_count"] = len(compiled)
        report["success"] = True
        report["exit_code"] = 0
    except (RuntimeError, verifier.VerificationError, OSError, subprocess.SubprocessError) as exc:
        report["failure"] = str(exc)
    finally:
        report["finished_utc"] = datetime.now(timezone.utc).isoformat().replace("+00:00", "Z")
        if evidence is not None:
            (evidence / "evidence.json").write_text(
                json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
            )
    if evidence is None:
        print(f"fresh-root failed before output allocation: {report['failure']}", file=sys.stderr)
    else:
        print(f"fresh-root output: {relpath(evidence)}")
        print(f"fresh-root success: {report['success']} (exit {report['exit_code']})")
        if report["failure"]:
            print(f"failure: {report['failure']}", file=sys.stderr)
    return int(report["exit_code"])


if __name__ == "__main__":
    raise SystemExit(main())
