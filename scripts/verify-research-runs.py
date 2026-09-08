#!/usr/bin/env python3
"""Rebuild the accepted B686 research-run import closures in fresh objects.

This verifier deliberately has a small, explicit acceptance surface.  It does
not scan every Lean file below ``research/``: each requested run has a fixed
root list, and the only project sources that are checked or compiled are the
transitive project imports of those roots.  Mathlib and the other pinned Lake
packages are supplied by the caller's existing environment and are never
updated by this script.

Typical use from the repository root::

    python3 scripts/verify-research-runs.py --run all

``--output`` names a new, empty evidence directory.  Without it, a fresh
timestamped directory is created below
``research/shared/20260908-layout-integration/verification``.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import os
import re
import runpy
import shlex
import shutil
import subprocess
import sys
import time
from dataclasses import dataclass
from datetime import datetime, timezone
from pathlib import Path
from typing import Any, Iterable, Mapping, Sequence


TOOLCHAIN = "leanprover/lean4:v4.33.1"
MATHLIB_REV = "0df444a360eaa60ab8c11dca51a86af692955474"
DEFAULT_OUTPUT_PARENT = Path(
    "research/shared/20260908-layout-integration/verification"
)
RUN_DIRS: Mapping[str, Path] = {
    "lcm-distance": Path(
        "research/tasks/B686-Four/runs/20260908-lcm-distance-7cab35e"
    ),
    "reflected-sum": Path(
        "research/tasks/B686-Four/runs/20260908-reflected-sum-9bad0b9"
    ),
}

# These are the accepted results of the two source branches.  A candidate is
# accepted by this verifier only when it is one of these paths and its source
# contains the expected number of real #guard_msgs/#print axioms pairs.
LCM_ROOTS: tuple[tuple[str, int], ...] = (
    ("uniform/Consumer.lean", 3),
    ("main/MatchingLcm.lean", 3),
    ("main/RankProduct.lean", 1),
    ("uniform/Algebraic.lean", 4),
    ("uniform/Choose.lean", 2),
)

# The first group is the fixed smooth-sampling/geometry verifier from the old
# environment/verify-round9.sh.  The second group is the final integration
# group.  The final review is retained as an explicit, guarded entry point so
# that its stated domain conditions are checked again after migration.
REFLECTED_ROOTS: tuple[tuple[str, int], ...] = (
    ("main/HitSemantics.lean", 3),
    ("main/PrimeSynchronization.lean", 5),
    ("main/CounterexampleChecks.lean", 8),
    ("main/PhaseInterface.lean", 3),
    ("main/StripePrimitive.lean", 2),
    ("main/StripeIntegral.lean", 4),
    ("main/WindowIntegral.lean", 3),
    ("main/QuarterGeometry.lean", 2),
    ("main/GridGeometry.lean", 3),
    ("main/PhaseGeometry.lean", 3),
    ("main/WeightedGeometry.lean", 5),
    ("main/PeriodicSmooth.lean", 1),
    ("main/SmoothTestFunction.lean", 6),
    ("main/OriginalDiscrepancy.lean", 3),
    ("a/ReflectedPrimePower.lean", 5),
    ("main/SumPrimePowerExclusion.lean", 5),
    ("b/SumTwoPositionGap.lean", 11),
    ("main/SumCofactorBounds.lean", 4),
    ("b/FullPrimePowerChainReview.lean", 6),
)

ALL_RUNS = tuple(RUN_DIRS)

# Imports from these namespaces are provided by Lean/the Lake packages.  Any
# other import that is not found in the project source index is rejected.  In
# particular, an imported external research tree cannot silently be satisfied
# by a stale object from an earlier project build.
PACKAGE_PREFIXES = (
    "Aesop",
    "Batteries",
    "Cli",
    "ImportGraph",
    "Init",
    "Lake",
    "Lean",
    "Mathlib",
    "Plausible",
    "ProofWidgets",
    "Qq",
    "Std",
)

PRINT_AXIOMS_RE = re.compile(r"^\s*#print\s+axioms\s+\S+", re.MULTILINE)
GUARD_MSGS_RE = re.compile(r"^\s*#guard_msgs\b", re.MULTILINE)
IMPORT_RE = re.compile(r"^\s*import\s+([^\s]+)", re.MULTILINE)
GUARDED_AXIOM_EXPECTATION_RE = re.compile(
    r"/--\s*info:\s*'[^']+'\s+"
    r"(?:(does\s+not\s+depend\s+on\s+any\s+axioms)|"
    r"depends\s+on\s+axioms:\s*\[(.*?)\])\s*-/",
    re.DOTALL,
)
MISSING_OBJECT_RE = re.compile(
    r"object file .*? of module ([A-Za-z0-9_\.«»]+) does not exist"
)
ALLOWED_GUARD_AXIOMS = {
    ("propext",),
    ("propext", "Quot.sound"),
    ("propext", "Classical.choice", "Quot.sound"),
    (),
}


class VerificationError(RuntimeError):
    """A deterministic verification failure with a user-facing message."""


@dataclass(frozen=True)
class RootSpec:
    relative: str
    expected_guards: int


@dataclass(frozen=True)
class SourceRef:
    path: Path
    module_name: str


def utc_now() -> str:
    return datetime.now(timezone.utc).isoformat().replace("+00:00", "Z")


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def relpath(path: Path, repo: Path) -> str:
    try:
        return path.resolve().relative_to(repo.resolve()).as_posix()
    except ValueError:
        return path.as_posix()


def normalize_module_name(name: str) -> str:
    """Normalize Lean's quoted identifier segments for source lookup."""

    return name.strip().rstrip(";,\r").replace("«", "").replace("»", "")


def module_name_for_path(path: Path, repo: Path) -> str:
    relative = path.resolve().relative_to(repo.resolve()).with_suffix("")
    return ".".join(relative.parts)


def safe_label(value: str) -> str:
    return re.sub(r"[^A-Za-z0-9_.-]+", "_", value).strip("._") or "item"


def choose_output(repo: Path, requested: str | None) -> tuple[Path, str]:
    """Create a non-overwriting evidence directory and return its timestamp."""

    if requested:
        output = Path(requested).expanduser()
        if not output.is_absolute():
            output = Path.cwd() / output
        output = output.resolve()
        if output.exists():
            if not output.is_dir():
                raise VerificationError(f"--output is not a directory: {output}")
            if any(output.iterdir()):
                raise VerificationError(
                    f"refusing to overwrite non-empty --output directory: {output}"
                )
            timestamp = output.name
            output.mkdir(parents=True, exist_ok=True)
            return output, timestamp
        output.mkdir(parents=True, exist_ok=False)
        return output, output.name

    parent = (repo / DEFAULT_OUTPUT_PARENT).resolve()
    parent.mkdir(parents=True, exist_ok=True)
    base = datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%SZ")
    for suffix in ("", *[f"-{i:02d}" for i in range(1, 1000)]):
        timestamp = base + suffix
        candidate = parent / timestamp
        try:
            candidate.mkdir()
        except FileExistsError:
            continue
        return candidate, timestamp
    raise VerificationError(f"could not allocate a fresh output directory below {parent}")


def allocate_build(repo: Path, timestamp: str) -> tuple[Path, Path, str]:
    parent = (repo / ".lake" / "research-runs").resolve()
    parent.mkdir(parents=True, exist_ok=True)
    for suffix in ("", *[f"-{i:02d}" for i in range(1, 1000)]):
        build_stamp = timestamp + suffix
        build_root = parent / build_stamp
        try:
            build_root.mkdir()
        except FileExistsError:
            continue
        olean = build_root / "olean"
        olean.mkdir()
        return build_root, olean, build_stamp
    raise VerificationError(f"could not allocate a fresh build directory below {parent}")


def run_command(
    command: Sequence[str],
    *,
    repo: Path,
    env: Mapping[str, str],
) -> subprocess.CompletedProcess[str]:
    return subprocess.run(
        list(command),
        cwd=repo,
        env=dict(env),
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
        text=True,
        encoding="utf-8",
        errors="replace",
        check=False,
    )


def write_log(path: Path, text: str) -> None:
    path.write_text(text, encoding="utf-8")


def command_record(
    command: Sequence[str],
    process: subprocess.CompletedProcess[str],
    *,
    started: str,
    finished: str,
    log: Path,
    repo: Path,
) -> dict[str, Any]:
    return {
        "command": [str(item) for item in command],
        "command_shell": shlex.join([str(item) for item in command]),
        "started_utc": started,
        "finished_utc": finished,
        "exit_code": process.returncode,
        "log": relpath(log, repo),
        "log_sha256": sha256(log),
    }


def read_utf8(path: Path) -> str:
    return path.read_text(encoding="utf-8-sig")


def load_policy(repo: Path) -> Mapping[str, Any]:
    policy_path = repo / "scripts" / "check-lean-policy.py"
    if not policy_path.is_file():
        raise VerificationError(f"missing source policy checker: {policy_path}")
    return runpy.run_path(str(policy_path))


def audit_root_source(
    path: Path,
    expected_guards: int,
    *,
    policy_mask: Any,
) -> dict[str, Any]:
    source = read_utf8(path)
    masked = policy_mask(source)
    print_count = len(PRINT_AXIOMS_RE.findall(masked))
    guard_count = len(GUARD_MSGS_RE.findall(masked))
    if print_count != expected_guards or guard_count != expected_guards:
        raise VerificationError(
            f"{path}: expected {expected_guards} #print axioms/#guard_msgs pairs, "
            f"observed {print_count}/{guard_count}"
        )

    # Keep the expected messages in the source meaningful.  Lean will perform
    # the final exact check while compiling; this rejects a changed source that
    # quietly replaces a known axiom expectation with an unrelated one.
    expected_axioms: list[list[str]] = []
    for match in GUARDED_AXIOM_EXPECTATION_RE.finditer(source):
        if match.group(1) is not None:
            values = ()
        else:
            body = match.group(2) or ""
            values = tuple(item.strip() for item in body.split(",") if item.strip())
            if any(
                not re.fullmatch(r"[A-Za-z_][A-Za-z0-9_.]*", item)
                for item in values
            ):
                raise VerificationError(
                    f"{path}: malformed guarded axiom expectation: [{body.strip()}]"
                )
        if values not in ALLOWED_GUARD_AXIOMS:
            rendered = (
                "does not depend on any axioms"
                if not values
                else ", ".join(values)
            )
            raise VerificationError(f"{path}: unexpected guarded axiom expectation: {rendered}")
        expected_axioms.append(list(values))
    if len(expected_axioms) != print_count:
        raise VerificationError(
            f"{path}: each #print axioms root must retain its existing guarded "
            f"expected message (found {len(expected_axioms)} comments for {print_count} prints)"
        )
    return {
        "print_axioms": print_count,
        "guard_msgs": guard_count,
        "expected_axioms": expected_axioms,
        "source_sha256": sha256(path),
    }


def build_source_index(repo: Path) -> tuple[dict[str, list[Path]], dict[str, list[Path]]]:
    exact: dict[str, list[Path]] = {}
    basename: dict[str, list[Path]] = {}
    for root, directories, filenames in os.walk(repo):
        directories[:] = [
            directory
            for directory in directories
            if directory not in {".lake", ".git", ".tools"}
        ]
        for filename in filenames:
            if not filename.endswith(".lean"):
                continue
            path = Path(root) / filename
            try:
                relative = path.relative_to(repo)
            except ValueError:
                continue
            if any(part in relative.parts for part in (".lake", ".git", ".tools")):
                continue
            key = module_name_for_path(path, repo)
            exact.setdefault(key, []).append(path.resolve())
            basename.setdefault(path.stem, []).append(path.resolve())
    return exact, basename


def is_package_import(module: str) -> bool:
    return any(module == prefix or module.startswith(prefix + ".") for prefix in PACKAGE_PREFIXES)


def reject_unaccepted_project_source(path: Path, repo: Path, run_id: str) -> None:
    relative = path.resolve().relative_to(repo.resolve())
    parts = relative.parts
    if "external" in parts:
        raise VerificationError(
            f"accepted closure imports external material: {relative.as_posix()}"
        )
    if "B686-Four" in parts and "round9" in parts:
        raise VerificationError(
            f"accepted closure still imports historical round9 path: {relative.as_posix()}"
        )
    if "runs" in parts:
        runs_index = parts.index("runs")
        if runs_index + 1 >= len(parts) or parts[runs_index + 1] != Path(RUN_DIRS[run_id]).name:
            raise VerificationError(
                f"accepted closure crosses into another research run: {relative.as_posix()}"
            )


def resolve_project_import(
    module: str,
    *,
    exact: Mapping[str, list[Path]],
    basename: Mapping[str, list[Path]],
    repo: Path,
    run_id: str,
) -> SourceRef | None:
    normalized = normalize_module_name(module)
    if is_package_import(normalized):
        return None
    exact_candidates = list(exact.get(normalized, ()))
    if exact_candidates:
        if len(exact_candidates) != 1:
            names = ", ".join(relpath(item, repo) for item in exact_candidates)
            raise VerificationError(f"ambiguous project import {module}: {names}")
        path = exact_candidates[0]
        reject_unaccepted_project_source(path, repo, run_id)
        return SourceRef(path, normalized)

    short_name = normalized.rsplit(".", 1)[-1]
    short_candidates = list(basename.get(short_name, ()))
    if short_candidates:
        if len(short_candidates) != 1:
            names = ", ".join(relpath(item, repo) for item in short_candidates)
            raise VerificationError(f"ambiguous bare project import {module}: {names}")
        path = short_candidates[0]
        reject_unaccepted_project_source(path, repo, run_id)
        # A bare import is compiled with its containing directory as Lean's
        # root, matching the existing PrimeCounting consumer workflow.
        return SourceRef(path, short_name)

    raise VerificationError(
        f"project import source not found (and not a pinned package): {normalized}"
    )


def imports_in(path: Path) -> list[str]:
    return [normalize_module_name(item) for item in IMPORT_RE.findall(read_utf8(path))]


def build_closure(
    roots: Sequence[Path],
    *,
    repo: Path,
    run_id: str,
    exact: Mapping[str, list[Path]],
    basename: Mapping[str, list[Path]],
) -> tuple[list[SourceRef], dict[Path, list[str]]]:
    ordered: list[SourceRef] = []
    seen: dict[Path, str] = {}
    imports: dict[Path, list[str]] = {}

    def visit(reference: SourceRef) -> None:
        path = reference.path.resolve()
        previous = seen.get(path)
        if previous is not None:
            if previous != reference.module_name:
                raise VerificationError(
                    f"source is reached under two module names: {relpath(path, repo)} "
                    f"({previous!r}, {reference.module_name!r})"
                )
            return
        seen[path] = reference.module_name
        reject_unaccepted_project_source(path, repo, run_id)
        module_imports = imports_in(path)
        imports[path] = module_imports
        for module in module_imports:
            dependency = resolve_project_import(
                module,
                exact=exact,
                basename=basename,
                repo=repo,
                run_id=run_id,
            )
            if dependency is not None:
                visit(dependency)
        ordered.append(SourceRef(path, reference.module_name))

    for root in roots:
        visit(SourceRef(root.resolve(), module_name_for_path(root, repo)))
    return ordered, imports


def package_pin_records(repo: Path, manifest: Mapping[str, Any]) -> list[dict[str, Any]]:
    package_dir = repo / str(manifest.get("packagesDir", ".lake/packages"))
    records: list[dict[str, Any]] = []
    packages = manifest.get("packages")
    if not isinstance(packages, list):
        raise VerificationError("lake-manifest.json has no package list")
    for package in packages:
        if not isinstance(package, dict):
            raise VerificationError("lake-manifest.json contains a malformed package entry")
        name = str(package.get("name", ""))
        expected = str(package.get("rev", ""))
        path = package_dir / name
        record: dict[str, Any] = {
            "name": name,
            "path": relpath(path, repo),
            "expected_head": expected,
            "url": package.get("url"),
            "input_rev": package.get("inputRev"),
        }
        if not name or not expected or not path.is_dir():
            record.update({"exit_code": 1, "actual_head": None, "error": "missing package"})
            records.append(record)
            continue
        process = subprocess.run(
            ["git", "-C", str(path), "rev-parse", "--verify", "HEAD"],
            cwd=repo,
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
            text=True,
            encoding="utf-8",
            errors="replace",
            check=False,
        )
        actual = process.stdout.strip().splitlines()[-1] if process.stdout.strip() else None
        record.update(
            {
                "exit_code": process.returncode,
                "actual_head": actual,
                "command_output": process.stdout,
                "matches_pin": process.returncode == 0 and actual == expected,
            }
        )
        records.append(record)
    return records


def package_library_paths(repo: Path) -> list[Path]:
    paths: list[Path] = []
    packages_dir = repo / ".lake" / "packages"
    if not packages_dir.is_dir():
        return paths
    for package in sorted(packages_dir.iterdir()):
        candidate = package / ".lake" / "build" / "lib" / "lean"
        if candidate.is_dir():
            paths.append(candidate.resolve())
    return paths


def overlay_package_objects(repo: Path, olean_root: Path) -> int:
    """Expose cached package objects below the fresh search root.

    Lean chooses one search root for a namespace prefix and does not fall back
    to a later root when a child object is absent.  Linking the cached package
    artifacts into the fresh root lets freshly rebuilt objects override only
    the missing package artifacts without ever exposing the old project build.
    """

    linked = 0
    for library in package_library_paths(repo):
        for source in library.rglob("*"):
            if not source.is_file():
                continue
            destination = olean_root / source.relative_to(library)
            if destination.exists() or destination.is_symlink():
                continue
            destination.parent.mkdir(parents=True, exist_ok=True)
            destination.symlink_to(source.resolve())
            linked += 1
    return linked


def package_source_for_module(repo: Path, module: str) -> tuple[Path, Path] | None:
    relative = Path(*normalize_module_name(module).split("."))
    for package in sorted((repo / ".lake" / "packages").iterdir()):
        source = package / relative.with_suffix(".lean")
        if source.is_file():
            return package, source
    return None


def rebuild_missing_package_objects(
    modules: Sequence[str],
    *,
    repo: Path,
    olean_root: Path,
    output: Path,
    env: Mapping[str, str],
) -> list[dict[str, Any]]:
    records: list[dict[str, Any]] = []
    active: set[str] = set()

    def rebuild(module: str) -> None:
        output_path = olean_root.joinpath(*module.split(".")).with_suffix(".olean")
        if output_path.exists():
            return
        if module in active:
            raise VerificationError(f"cyclic missing pinned package import: {module}")
        result = package_source_for_module(repo, module)
        if result is None:
            if module.split(".", 1)[0] in {"Init", "Lake", "Lean", "Std"}:
                return
            raise VerificationError(f"pinned package source not found for {module}")
        package_root, source = result
        output_path.parent.mkdir(parents=True, exist_ok=True)
        log = output / f"package-{safe_label(module)}.log"
        command = [
            "bash",
            str(repo / "scripts" / "lean-work.sh"),
            "lean",
            "-DautoImplicit=false",
            "-DrelaxedAutoImplicit=false",
            f"--root={package_root}",
            "-o",
            str(output_path),
            str(source),
        ]
        active.add(module)
        started = utc_now()
        attempts: list[str] = []
        process: subprocess.CompletedProcess[str] | None = None
        for attempt in range(1, 20):
            process = run_command(command, repo=repo, env=env)
            attempts.append(f"# attempt {attempt}\n{process.stdout}")
            if process.returncode == 0:
                break
            missing = sorted(set(MISSING_OBJECT_RE.findall(process.stdout)))
            missing = [item for item in missing if item != module]
            if not missing:
                break
            for dependency in missing:
                rebuild(dependency)
        active.remove(module)
        assert process is not None
        finished = utc_now()
        write_log(log, "\n".join(attempts))
        record = {
            "module": module,
            "source": str(source),
            "source_sha256": sha256(source),
            "output": str(output_path),
            "command": [str(item) for item in command],
            "command_shell": shlex.join(command),
            "started_utc": started,
            "finished_utc": finished,
            "exit_code": process.returncode,
            "log": relpath(log, repo),
            "log_sha256": sha256(log),
            "output_exists": output_path.is_file(),
            "output_sha256": sha256(output_path) if output_path.is_file() else None,
            "status": "rebuilt",
        }
        records.append(record)
        if process.returncode != 0 or not output_path.is_file():
            raise VerificationError(
                f"Lean failed rebuilding pinned package {module}; see {log}"
            )
    for module in modules:
        rebuild(module)
    return records


def expected_roots(run_id: str, repo: Path) -> tuple[list[Path], list[dict[str, Any]]]:
    run_dir = repo / RUN_DIRS[run_id]
    specs = LCM_ROOTS if run_id == "lcm-distance" else REFLECTED_ROOTS
    roots: list[Path] = []
    evidence: list[dict[str, Any]] = []
    for relative, expected in specs:
        path = (run_dir / relative).resolve()
        if not path.is_file():
            raise VerificationError(f"required accepted root is missing: {relpath(path, repo)}")
        roots.append(path)
        evidence.append(
            {
                "path": relpath(path, repo),
                "expected_guard_count": expected,
                "source_sha256": sha256(path),
            }
        )
    return roots, evidence


def policy_check(
    paths: Sequence[Path],
    *,
    repo: Path,
    output: Path,
    policy_mask: Any,
) -> dict[str, Any]:
    output.mkdir(parents=True, exist_ok=True)
    log = output / "source-policy.log"
    violations: list[str] = []
    lines = [f"exact closure files: {len(paths)}"]
    for path in paths:
        lines.append(relpath(path, repo))
        violations.extend(policy_scan(path, repo=repo, policy_mask=policy_mask))
    if violations:
        lines.extend(["", "policy violations:", *violations])
    else:
        lines.extend(["", "Source policy passed for exact closure."])
    write_log(log, "\n".join(lines) + "\n")
    return {
        "exit_code": 1 if violations else 0,
        "files": len(paths),
        "log": relpath(log, repo),
        "log_sha256": sha256(log),
        "violations": violations,
    }


def policy_scan(path: Path, *, repo: Path, policy_mask: Any) -> list[str]:
    source = read_utf8(path)
    # The repository checker has the authoritative token/declaration scanner;
    # calling its function keeps this verifier's policy exactly aligned while
    # still passing the exact closure rather than a broad directory.
    policy_globals = load_policy(repo)
    scan_text = policy_globals.get("scan_text")
    if not callable(scan_text):
        raise VerificationError("scripts/check-lean-policy.py has no scan_text function")
    return list(scan_text(source, relpath(path, repo)))


def compile_source(
    reference: SourceRef,
    *,
    ordinal: int,
    repo: Path,
    olean_root: Path,
    output: Path,
    env: Mapping[str, str],
    imports: Sequence[str],
) -> dict[str, Any]:
    source = reference.path
    source_before = sha256(source)
    output_path = olean_root.joinpath(*reference.module_name.split(".")).with_suffix(".olean")
    output_path.parent.mkdir(parents=True, exist_ok=True)
    if output_path.exists():
        raise VerificationError(f"fresh output unexpectedly exists: {output_path}")

    # Full research module names are rooted at the repository.  A bare
    # import, currently LinearPrimeCounting, is rooted at the source's folder
    # so its olean is discoverable by the same bare module name.
    source_module = module_name_for_path(source, repo)
    root_arg = repo if reference.module_name == source_module else source.parent
    source_arg = source
    command = [
        "bash",
        str(repo / "scripts" / "lean-work.sh"),
        "lean",
        "-DautoImplicit=false",
        "-DrelaxedAutoImplicit=false",
        f"--root={root_arg}",
        "-o",
        str(output_path),
        str(source_arg),
    ]
    label = f"compile-{ordinal:04d}-{safe_label(relpath(source, repo))}.log"
    log = output / label
    header = [
        f"# source: {relpath(source, repo)}",
        f"# module: {reference.module_name}",
        f"# source_sha256_before: {source_before}",
        f"# output: {relpath(output_path, repo)}",
        f"# imports: {', '.join(imports)}",
        f"# command: {shlex.join(command)}",
        "",
    ]
    started_at = utc_now()
    started_monotonic = time.monotonic()
    process = run_command(command, repo=repo, env=env)
    finished_at = utc_now()
    elapsed = time.monotonic() - started_monotonic
    write_log(log, "\n".join(header) + process.stdout)
    source_after = sha256(source)
    record: dict[str, Any] = {
        "source": relpath(source, repo),
        "module": reference.module_name,
        "imports": list(imports),
        "source_sha256_before": source_before,
        "source_sha256_after": source_after,
        "output": relpath(output_path, repo),
        "command": [str(item) for item in command],
        "command_shell": shlex.join(command),
        "started_utc": started_at,
        "finished_utc": finished_at,
        "seconds": round(elapsed, 3),
        "exit_code": process.returncode,
        "log": relpath(log, repo),
        "log_sha256": sha256(log),
        "output_exists": output_path.is_file(),
        "output_sha256": sha256(output_path) if output_path.is_file() else None,
    }
    if source_before != source_after:
        raise VerificationError(f"source changed while compiling: {relpath(source, repo)}")
    if process.returncode != 0:
        raise VerificationError(
            f"Lean failed for {relpath(source, repo)} (exit {process.returncode}); see {log}"
        )
    if not output_path.is_file():
        raise VerificationError(
            f"Lean returned success without creating {relpath(output_path, repo)}"
        )
    return record


def quote_module_segment(segment: str) -> str:
    if re.fullmatch(r"[A-Za-z_][A-Za-z0-9_]*", segment):
        return segment
    return f"«{segment}»"


def compile_joint_consumer(
    root_paths: Sequence[Path],
    *,
    repo: Path,
    olean_root: Path,
    output: Path,
    env: Mapping[str, str],
) -> dict[str, Any]:
    """Import both accepted root sets in one fresh Lean module."""

    modules = [
        ".".join(quote_module_segment(part) for part in module_name_for_path(path, repo).split("."))
        for path in root_paths
    ]
    source = output / "joint-consumer.lean"
    source.write_text(
        "-- Generated by verify-research-runs.py; imports only accepted roots.\n"
        + "\n".join(f"import {module}" for module in modules)
        + "\n",
        encoding="utf-8",
    )
    output_path = olean_root / "joint-consumer.olean"
    log = output / "joint-consumer.log"
    command = [
        "bash",
        str(repo / "scripts" / "lean-work.sh"),
        "lean",
        "-DautoImplicit=false",
        "-DrelaxedAutoImplicit=false",
        f"--root={output}",
        "-o",
        str(output_path),
        str(source),
    ]
    started_at = utc_now()
    started_monotonic = time.monotonic()
    process = run_command(command, repo=repo, env=env)
    finished_at = utc_now()
    write_log(
        log,
        "\n".join(
            [
                "# imports: " + ", ".join(modules),
                f"# source_sha256: {sha256(source)}",
                f"# output: {output_path}",
                f"# command: {shlex.join(command)}",
                "",
            ]
        )
        + process.stdout,
    )
    record = {
        "kind": "joint-consumer",
        "source": str(source),
        "source_sha256": sha256(source),
        "imports": modules,
        "output": str(output_path),
        "started_utc": started_at,
        "finished_utc": finished_at,
        "seconds": round(time.monotonic() - started_monotonic, 3),
        "exit_code": process.returncode,
        "log": str(log),
        "log_sha256": sha256(log),
        "output_exists": output_path.is_file(),
        "output_sha256": sha256(output_path) if output_path.is_file() else None,
        "command": [str(item) for item in command],
        "command_shell": shlex.join(command),
    }
    if process.returncode != 0:
        raise VerificationError(f"joint accepted-root consumer failed; see {log}")
    if not output_path.is_file():
        raise VerificationError("joint accepted-root consumer produced no olean")
    return record


def load_manifest(repo: Path) -> dict[str, Any]:
    path = repo / "lake-manifest.json"
    try:
        manifest = json.loads(read_utf8(path))
    except (OSError, json.JSONDecodeError) as exc:
        raise VerificationError(f"cannot read lake-manifest.json: {exc}") from exc
    if not isinstance(manifest, dict):
        raise VerificationError("lake-manifest.json is not an object")
    return manifest


def ensure_toolchain(repo: Path, output: Path, env: Mapping[str, str]) -> dict[str, Any]:
    pin_path = repo / "lean-toolchain"
    if not pin_path.is_file():
        raise VerificationError(f"missing lean-toolchain: {pin_path}")
    declared = read_utf8(pin_path).strip()
    if declared != TOOLCHAIN:
        raise VerificationError(
            f"lean-toolchain is {declared!r}, expected fixed {TOOLCHAIN!r}"
        )
    bash = shutil.which("bash")
    if not bash:
        raise VerificationError("bash is required to run scripts/lean-work.sh")
    records: dict[str, Any] = {"declared_toolchain": declared, "commands": []}
    for label, args in (
        ("lean-version", ["lean", "--version"]),
        ("lake-version", ["lake", "--version"]),
    ):
        command = [bash, str(repo / "scripts" / "lean-work.sh"), *args]
        started = utc_now()
        process = run_command(command, repo=repo, env=env)
        finished = utc_now()
        log = output / f"{label}.log"
        write_log(log, process.stdout)
        record = command_record(
            command,
            process,
            started=started,
            finished=finished,
            log=log,
            repo=repo,
        )
        record["stdout"] = process.stdout
        records["commands"].append(record)
        if process.returncode != 0:
            raise VerificationError(f"{label} failed; see {log}")
        if label == "lean-version" and "Lean (version 4.33.1," not in process.stdout:
            raise VerificationError(f"fixed Lean 4.33.1 was not observed; see {log}")
    return records


def parse_args(argv: Sequence[str]) -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--run",
        choices=(*ALL_RUNS, "all"),
        default="all",
        help="accepted run to verify (default: all)",
    )
    parser.add_argument(
        "--output",
        help="new empty evidence directory; existing non-empty directories are refused",
    )
    return parser.parse_args(argv)


def main(argv: Sequence[str] | None = None) -> int:
    args = parse_args(sys.argv[1:] if argv is None else argv)
    repo = Path(__file__).resolve().parents[1]
    output: Path | None = None
    report: dict[str, Any] = {
        "schema_version": 1,
        "success": False,
        "exit_code": 1,
        "argv": [str(item) for item in sys.argv],
        "cwd": str(Path.cwd()),
        "repository": str(repo),
        "requested_run": args.run,
        "started_utc": utc_now(),
        "finished_utc": None,
        "accepted_roots": {},
        "runs": [],
        "source_closure": [],
        "compile_records": [],
        "pins": [],
        "toolchain": None,
        "failure": None,
    }

    try:
        output, timestamp = choose_output(repo, args.output)
        build_root, olean_root, build_timestamp = allocate_build(repo, timestamp)
        linked_package_objects = overlay_package_objects(repo, olean_root)
        report["output_directory"] = relpath(output, repo)
        report["build"] = {
            "timestamp": build_timestamp,
            "root": relpath(build_root, repo),
            "olean": relpath(olean_root, repo),
            "fresh": True,
            "linked_package_objects": linked_package_objects,
        }

        env = dict(os.environ)
        # All cached package objects are overlaid below this fresh root.  No
        # repository project build path is added: every project import must be
        # resolved and rebuilt by this run.
        env["LEAN_PATH"] = str(olean_root)
        report["build"]["lean_path"] = [str(olean_root)]
        manifest = load_manifest(repo)
        if str(manifest.get("packagesDir", ".lake/packages")) != ".lake/packages":
            raise VerificationError(
                "this verifier expects the pinned project package directory .lake/packages"
            )
        report["manifest_sha256"] = sha256(repo / "lake-manifest.json")
        report["pins"] = package_pin_records(repo, manifest)
        pins_log = output / "package-pins.log"
        write_log(
            pins_log,
            json.dumps(report["pins"], ensure_ascii=False, indent=2) + "\n",
        )
        report["pins_log"] = relpath(pins_log, repo)
        bad_pins = [
            item
            for item in report["pins"]
            if not item.get("matches_pin", False)
        ]
        if bad_pins:
            names = ", ".join(str(item.get("name")) for item in bad_pins)
            raise VerificationError(f"pinned package HEAD mismatch or missing package: {names}")
        report["toolchain"] = ensure_toolchain(repo, output, env)

        policy_globals = load_policy(repo)
        policy_mask = policy_globals.get("mask_comments_and_strings")
        if not callable(policy_mask):
            raise VerificationError("scripts/check-lean-policy.py has no masking function")
        exact_index, basename_index = build_source_index(repo)
        requested = list(ALL_RUNS if args.run == "all" else (args.run,))
        all_closure: dict[Path, SourceRef] = {}
        all_imports: dict[Path, list[str]] = {}
        for run_id in requested:
            root_paths, root_evidence = expected_roots(run_id, repo)
            for root_path, root_record in zip(root_paths, root_evidence):
                root_record["audit"] = audit_root_source(
                    root_path,
                    int(root_record["expected_guard_count"]),
                    policy_mask=policy_mask,
                )
            report["accepted_roots"][run_id] = root_evidence
            closure, imports = build_closure(
                root_paths,
                repo=repo,
                run_id=run_id,
                exact=exact_index,
                basename=basename_index,
            )
            closure_paths = [item.path for item in closure]
            policy = policy_check(
                closure_paths,
                repo=repo,
                output=output / f"policy-{safe_label(run_id)}",
                policy_mask=policy_mask,
            )
            if policy["exit_code"]:
                raise VerificationError(f"source policy failed for {run_id}; see {policy['log']}")
            run_record: dict[str, Any] = {
                "run": run_id,
                "directory": relpath(repo / RUN_DIRS[run_id], repo),
                "accepted_roots": root_evidence,
                "source_closure": [relpath(item.path, repo) for item in closure],
                "closure_count": len(closure),
                "policy": policy,
            }
            report["runs"].append(run_record)
            for reference in closure:
                path = reference.path.resolve()
                prior = all_closure.get(path)
                if prior is not None and prior.module_name != reference.module_name:
                    raise VerificationError(
                        f"shared source has incompatible module names: {relpath(path, repo)}"
                    )
                all_closure[path] = reference
                all_imports[path] = imports[path]

        package_imports = sorted(
            {
                module
                for imported in all_imports.values()
                for module in imported
                if is_package_import(module)
            }
        )
        report["package_imports"] = package_imports
        report["package_compiles"] = rebuild_missing_package_objects(
            package_imports,
            repo=repo,
            olean_root=olean_root,
            output=output,
            env=env,
        )

        report["source_closure"] = [
            {
                "source": relpath(reference.path, repo),
                "module": reference.module_name,
                "source_sha256": sha256(reference.path),
                "imports": all_imports.get(reference.path, []),
            }
            for reference in all_closure.values()
        ]

        # Compile in dependency order from each run's closure and compile
        # shared stable dependencies only once.
        compiled_paths: set[Path] = set()
        compile_ordinal = 0
        for run_record in report["runs"]:
            run_sources = [
                all_closure[(repo / source_name).resolve()]
                for source_name in run_record["source_closure"]
            ]
            for reference in run_sources:
                if reference.path in compiled_paths:
                    continue
                compile_ordinal += 1
                record = compile_source(
                    reference,
                    ordinal=compile_ordinal,
                    repo=repo,
                    olean_root=olean_root,
                    output=output,
                    env=env,
                    imports=all_imports.get(reference.path, []),
                )
                compiled_paths.add(reference.path)
                report["compile_records"].append(record)

        if args.run == "all":
            joint_roots = [
                (repo / root["path"]).resolve()
                for run_roots in report["accepted_roots"].values()
                for root in run_roots
            ]
            report["joint_consumer"] = compile_joint_consumer(
                joint_roots,
                repo=repo,
                olean_root=olean_root,
                output=output,
                env=env,
            )
        else:
            report["joint_consumer"] = {
                "skipped": True,
                "reason": "requires --run all to import both accepted root sets",
            }

        report["compiled_count"] = len(report["compile_records"])
        report["success"] = True
        report["exit_code"] = 0
    except (VerificationError, OSError, subprocess.SubprocessError) as exc:
        report["failure"] = str(exc)
        report["success"] = False
        report["exit_code"] = 1
    finally:
        report["finished_utc"] = utc_now()
        if output is not None:
            evidence = output / "evidence.json"
            evidence.write_text(
                json.dumps(report, ensure_ascii=False, indent=2, sort_keys=False) + "\n",
                encoding="utf-8",
            )
            report["evidence"] = relpath(evidence, repo)
            # Write once more so the self-location is part of the evidence.
            evidence.write_text(
                json.dumps(report, ensure_ascii=False, indent=2, sort_keys=False) + "\n",
                encoding="utf-8",
            )

    if output is None:
        print(f"verification failed before an output directory was allocated: {report['failure']}", file=sys.stderr)
    else:
        print(f"verification output: {output}")
        print(f"verification success: {report['success']} (exit {report['exit_code']})")
        if report["failure"]:
            print(f"failure: {report['failure']}", file=sys.stderr)
    return int(report["exit_code"])


if __name__ == "__main__":
    raise SystemExit(main())
