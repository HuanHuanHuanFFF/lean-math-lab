#!/usr/bin/env python3
"""Extend the accepted B677 finite fresh build to the analytic consumer.

The finite verifier owns one large fresh project-object allocation.  Once that
allocation has reached ``success=true``, this adapter validates every accepted
finite source/dependency/object hash, materializes only those accepted project
objects in a new Lean search root, and compiles the remaining transitive
closure of ``analytic/RegionConsumer.lean`` there.  The finite evidence and
object root are inputs only; this script never resumes or edits them.

``--preflight`` performs all checks that do not write an output directory.
The ordinary invocation allocates an empty ``verification/analytic/<UTC>``
directory and a new ``.lake/research-runs/b677-analytic-<UTC>/olean`` root
only after preflight has passed.  It does not put the finite object root on
``LEAN_PATH``: accepted project artifacts are linked into the new root and
all remaining project sources are compiled there.
"""

from __future__ import annotations

import argparse
import hashlib
import importlib.util
import json
import os
import shutil
import sys
from datetime import datetime, timezone
from pathlib import Path
from typing import Any, Mapping, Sequence


REPO = Path(__file__).resolve().parents[3]
SHARED = REPO / "research" / "shared" / "20260909-formalization-environment"
VERIFIER_PATH = REPO / "scripts" / "verify-research-runs.py"
FRESH_ROOT_PATH = SHARED / "fresh-root.py"

RUN_REL = "research/tasks/B677-Lcm/runs/20260908-formalization-92c221"
FINITE_EVIDENCE_REL = (
    RUN_REL + "/verification/finite/20260908T105847632428Z/evidence.json"
)
FINITE_ROOT_REL = RUN_REL + "/lean/finite/Consumer.lean"
TARGET_ROOT_REL = RUN_REL + "/lean/analytic/RegionConsumer.lean"
ANALYTIC_VERIFICATION_REL = RUN_REL + "/verification/analytic"
FINITE_OBJECTS_REL = ".lake/research-runs/b677-finite-20260908T105847632428Z/olean"

EXPECTED_GUARDS = 1
TOOLCHAIN = "leanprover/lean4:v4.33.1"


class ExtensionError(RuntimeError):
    """A deterministic preflight or extension failure."""


def load_module(name: str, path: Path) -> Any:
    spec = importlib.util.spec_from_file_location(name, path)
    if spec is None or spec.loader is None:
        raise ExtensionError(f"cannot load helper module: {path}")
    module = importlib.util.module_from_spec(spec)
    # The verifier defines dataclasses.  Register before execution so its
    # postponed annotations resolve when loaded outside a normal import.
    sys.modules[spec.name] = module
    spec.loader.exec_module(module)
    return module


def load_helpers() -> tuple[Any, Any]:
    verifier = load_module("b677_extend_finite_verifier", VERIFIER_PATH)
    fresh = load_module("b677_extend_finite_fresh_root", FRESH_ROOT_PATH)
    fresh.install_allowed_run_guard(verifier)
    return verifier, fresh


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


def repo_path(value: str | Path) -> Path:
    path = Path(value).expanduser()
    if not path.is_absolute():
        path = REPO / path
    return path.resolve()


def require_repo_file(path: Path, *, suffix: str | None = None) -> None:
    if not inside(path, REPO):
        raise ExtensionError(f"path is outside the repository: {path}")
    if not path.is_file():
        raise ExtensionError(f"required file is missing: {relpath(path)}")
    if suffix is not None and path.suffix != suffix:
        raise ExtensionError(f"required file has wrong suffix: {relpath(path)}")


def expected_path(relative: str) -> Path:
    return (REPO / relative).resolve()


def hash_field(record: Mapping[str, Any], before: bool) -> str | None:
    keys = (
        ("source_sha256_before", "source_sha256")
        if before
        else ("source_sha256_after",)
    )
    for key in keys:
        value = record.get(key)
        if isinstance(value, str):
            return value
    return None


def normalize_relative(value: Any, *, label: str) -> str:
    if not isinstance(value, str) or not value:
        raise ExtensionError(f"{label} is not a non-empty relative path")
    path = Path(value)
    if path.is_absolute() or ".." in path.parts:
        raise ExtensionError(f"{label} is not a safe relative path: {value!r}")
    return path.as_posix()


def object_path_from_record(
    record: Mapping[str, Any], *, base_objects: Path, source: Path
) -> Path:
    value = record.get("object")
    if not isinstance(value, str) or not value:
        raise ExtensionError(
            f"accepted chunk has no object path: {relpath(source)}"
        )
    path = repo_path(value)
    expected = base_objects / source.relative_to(REPO).with_suffix(".olean")
    if path != expected.resolve():
        raise ExtensionError(
            f"accepted object path does not match source: {relpath(source)} "
            f"({relpath(path)} != {relpath(expected)})"
        )
    if not inside(path, base_objects):
        raise ExtensionError(f"accepted object escapes base root: {path}")
    if path.is_symlink() or not path.is_file():
        raise ExtensionError(
            f"accepted project object is not a regular file: {relpath(path)}"
        )
    return path


def package_namespace(verifier: Any, relative_object: Path) -> bool:
    return bool(relative_object.parts) and any(
        relative_object.parts[0] == prefix
        for prefix in verifier.PACKAGE_PREFIXES
    )


def audit_base_objects(
    verifier: Any,
    *,
    base_objects: Path,
    expected_objects: Mapping[str, Path],
) -> dict[str, Any]:
    """Reject unaccepted regular project objects in the finite root.

    Package artifacts are allowed under the fixed verifier package
    namespaces.  Project artifacts must be exactly the object paths from the
    finite verifier's accepted chunks.  This is the object-side counterpart to
    the per-chunk hash checks.
    """

    expected = {path.resolve() for path in expected_objects.values()}
    package_libraries = verifier.package_library_paths(REPO)

    def is_cached_package_object(relative: Path) -> bool:
        if package_namespace(verifier, relative):
            return True
        # A few Lean package artifacts use the ``Cache`` namespace rather
        # than one of the package prefixes.  Match the exact relative object
        # path against the pinned package build libraries instead of allowing
        # an arbitrary non-project object.
        return any((library / relative).is_file() for library in package_libraries)

    unexpected: list[str] = []
    package_objects = 0
    accepted_objects = 0
    for path in base_objects.rglob("*.olean"):
        relative = path.relative_to(base_objects)
        is_package = is_cached_package_object(relative)
        if is_package:
            package_objects += 1
            continue
        if path.is_symlink():
            unexpected.append(relpath(path))
            continue
        if path.resolve() not in expected:
            unexpected.append(relpath(path))
        else:
            accepted_objects += 1
    if unexpected:
        rendered = ", ".join(unexpected[:12])
        suffix = "" if len(unexpected) <= 12 else f" (+{len(unexpected) - 12} more)"
        raise ExtensionError(
            "base object root contains non-accepted project objects: "
            + rendered
            + suffix
        )
    return {
        "regular_accepted_project_oleans": accepted_objects,
        "package_oleans": package_objects,
        "unexpected_project_objects": [],
    }


def current_package_status(verifier: Any, fresh: Any, manifest: Mapping[str, Any]) -> list[dict[str, Any]]:
    package_dir = REPO / str(manifest.get("packagesDir", ".lake/packages"))
    rows: list[dict[str, Any]] = []
    for package in manifest.get("packages", []):
        if not isinstance(package, dict):
            raise ExtensionError("lake-manifest.json has a malformed package entry")
        path = package_dir / str(package.get("name", ""))
        rows.append(fresh.package_status(verifier, package, path))
    bad = [
        row
        for row in rows
        if not row.get("headMatches") or not row.get("clean")
    ]
    if bad:
        names = ", ".join(str(row.get("name")) for row in bad)
        raise ExtensionError(f"pinned package HEAD mismatch or dirty checkout: {names}")
    return rows


def select_successful_base_attempt(
    verifier: Any, report: Mapping[str, Any], manifest_sha: str
) -> Mapping[str, Any]:
    attempts = report.get("attempts")
    if not isinstance(attempts, list):
        raise ExtensionError("finite evidence has no attempt list")
    candidates: list[Mapping[str, Any]] = []
    for attempt in attempts:
        if not isinstance(attempt, dict):
            continue
        if attempt.get("manifest_sha256") != manifest_sha:
            continue
        toolchain = attempt.get("toolchain")
        if not isinstance(toolchain, dict):
            continue
        if toolchain.get("declared_toolchain") != TOOLCHAIN:
            continue
        pins = attempt.get("pins")
        if not isinstance(pins, list) or not all(
            isinstance(pin, dict) and pin.get("matches_pin") is True for pin in pins
        ):
            continue
        candidates.append(attempt)
    if not candidates:
        raise ExtensionError(
            "finite evidence has no successful-pin attempt for the current manifest/toolchain"
        )
    return candidates[-1]


def source_dependency_map(
    verifier: Any,
    *,
    closure: Sequence[Any],
    imports: Mapping[Path, Sequence[str]],
    exact: Mapping[str, list[Path]],
    basename: Mapping[str, list[Path]],
) -> dict[Path, list[Path]]:
    dependencies: dict[Path, list[Path]] = {}
    for reference in closure:
        source = reference.path.resolve()
        rows: list[Path] = []
        for module in imports.get(source, []):
            if verifier.is_package_import(module):
                continue
            dependency = verifier.resolve_project_import(
                module,
                exact=exact,
                basename=basename,
                repo=REPO,
                run_id="fresh-root",
            )
            if dependency is not None:
                rows.append(dependency.path.resolve())
        dependencies[source] = rows
    return dependencies


def validate_base(
    verifier: Any,
    fresh: Any,
    *,
    finite_evidence: Path,
    target_root: Path,
) -> dict[str, Any]:
    require_repo_file(finite_evidence, suffix=".json")
    require_repo_file(target_root, suffix=".lean")
    expected_finite_evidence = expected_path(FINITE_EVIDENCE_REL)
    expected_finite_root = expected_path(FINITE_ROOT_REL)
    if finite_evidence != expected_finite_evidence:
        raise ExtensionError(
            f"finite evidence must be the fixed fresh allocation: {relpath(expected_finite_evidence)}"
        )
    if target_root != expected_path(TARGET_ROOT_REL):
        raise ExtensionError(
            f"analytic root must be the frozen RegionConsumer.lean: {relpath(expected_path(TARGET_ROOT_REL))}"
        )

    try:
        report = json.loads(finite_evidence.read_text(encoding="utf-8"))
    except (OSError, json.JSONDecodeError) as exc:
        raise ExtensionError(f"cannot read finite evidence: {exc}") from exc
    if not isinstance(report, dict):
        raise ExtensionError("finite evidence is not a JSON object")
    if report.get("success") is not True:
        raise ExtensionError(
            "finite evidence success is not true; refusing to allocate an analytic root"
        )
    if report.get("fresh_project_objects") is not True:
        raise ExtensionError("finite evidence is not marked fresh_project_objects=true")

    root_value = report.get("root")
    if not isinstance(root_value, str) or repo_path(root_value) != expected_finite_root:
        raise ExtensionError(
            f"finite evidence root is not the fixed Consumer.lean: {root_value!r}"
        )
    objects_value = report.get("objects")
    if not isinstance(objects_value, str):
        raise ExtensionError("finite evidence has no objects path")
    base_objects = repo_path(objects_value)
    expected_objects = expected_path(FINITE_OBJECTS_REL)
    if base_objects != expected_objects:
        raise ExtensionError(
            f"finite evidence objects are not the fixed fresh root: {relpath(base_objects)}"
        )
    if base_objects.is_symlink() or not base_objects.is_dir():
        raise ExtensionError(f"finite object root is missing or symlinked: {base_objects}")
    lean_path = report.get("lean_path")
    if not isinstance(lean_path, list) or len(lean_path) != 1:
        raise ExtensionError("finite evidence must have exactly one LEAN_PATH entry")
    if repo_path(str(lean_path[0])) != base_objects:
        raise ExtensionError("finite evidence LEAN_PATH does not point only to its fresh root")

    manifest = verifier.load_manifest(REPO)
    if str(manifest.get("packagesDir", ".lake/packages")) != ".lake/packages":
        raise ExtensionError("expected pinned package directory .lake/packages")
    manifest_sha = sha256(REPO / "lake-manifest.json")
    base_attempt = select_successful_base_attempt(verifier, report, manifest_sha)
    package_status = current_package_status(verifier, fresh, manifest)
    pin_records = verifier.package_pin_records(REPO, manifest)
    if not all(item.get("matches_pin") is True for item in pin_records):
        raise ExtensionError("current pinned package HEADs do not match lake-manifest.json")

    closure_names = report.get("project_closure")
    accepted = report.get("accepted_chunks")
    if not isinstance(closure_names, list) or not closure_names:
        raise ExtensionError("finite evidence has no project_closure")
    if not isinstance(accepted, dict):
        raise ExtensionError("finite evidence has no accepted_chunks map")
    closure_rel: list[str] = []
    for item in closure_names:
        rel = normalize_relative(item, label="project_closure entry")
        if rel in closure_rel:
            raise ExtensionError(f"duplicate project_closure entry: {rel}")
        source = (REPO / rel).resolve()
        require_repo_file(source, suffix=".lean")
        closure_rel.append(rel)
    closure_set = set(closure_rel)
    accepted_set = {normalize_relative(item, label="accepted chunk key") for item in accepted}
    if accepted_set != closure_set:
        missing = sorted(closure_set - accepted_set)
        extra = sorted(accepted_set - closure_set)
        raise ExtensionError(
            f"finite accepted_chunks do not equal project_closure (missing={missing[:3]}, extra={extra[:3]})"
        )

    exact, basename = verifier.build_source_index(REPO)
    base_closure, base_imports = verifier.build_closure(
        [expected_finite_root],
        repo=REPO,
        run_id="fresh-root",
        exact=exact,
        basename=basename,
    )
    built_base_set = {
        relpath(reference.path) for reference in base_closure
    }
    if built_base_set != closure_set:
        raise ExtensionError(
            "finite evidence project_closure differs from the current source closure "
            f"(evidence={len(closure_set)}, current={len(built_base_set)})"
        )
    base_dependencies = source_dependency_map(
        verifier,
        closure=base_closure,
        imports=base_imports,
        exact=exact,
        basename=basename,
    )

    source_before: dict[str, str] = {}
    source_after: dict[str, str] = {}
    object_records: dict[str, dict[str, Any]] = {}
    expected_objects_by_source: dict[str, Path] = {}
    current_source_hashes = {
        rel: sha256((REPO / rel).resolve()) for rel in closure_rel
    }
    attempt_before = base_attempt.get("source_sha256_before")
    attempt_after = base_attempt.get("source_sha256_after")
    if not isinstance(attempt_before, dict) or not isinstance(attempt_after, dict):
        raise ExtensionError("finite successful attempt has no complete source hash maps")
    if set(attempt_before) != closure_set or set(attempt_after) != closure_set:
        raise ExtensionError("finite successful attempt source hash maps do not cover the closure")
    for rel, current in current_source_hashes.items():
        if attempt_before.get(rel) != current or attempt_after.get(rel) != current:
            raise ExtensionError(f"finite attempt source hash mismatch: {rel}")

    for rel in closure_rel:
        source = (REPO / rel).resolve()
        record = accepted.get(rel)
        if not isinstance(record, dict):
            raise ExtensionError(f"accepted chunk is not an object: {rel}")
        if record.get("source") not in (None, rel):
            raise ExtensionError(f"accepted chunk source mismatch: {rel}")
        before = hash_field(record, True)
        after = hash_field(record, False)
        current = current_source_hashes[rel]
        if before is None or after is None or before != current or after != current:
            raise ExtensionError(f"source hash mismatch in accepted chunk: {rel}")
        source_before[rel] = before
        source_after[rel] = after
        object_path = object_path_from_record(
            record, base_objects=base_objects, source=source
        )
        object_hash = record.get("object_sha256")
        if not isinstance(object_hash, str) or sha256(object_path) != object_hash:
            raise ExtensionError(f"object hash mismatch in accepted chunk: {rel}")
        expected_objects_by_source[rel] = object_path
        deps = record.get("dependencies")
        if not isinstance(deps, dict):
            raise ExtensionError(f"accepted chunk has no dependency map: {rel}")
        expected_deps = {
            relpath(path): current_source_hashes[relpath(path)]
            for path in base_dependencies[source]
        }
        if {str(key) for key in deps} != set(expected_deps):
            raise ExtensionError(f"dependency set mismatch in accepted chunk: {rel}")
        for dependency, dependency_hash in deps.items():
            dep_rel = normalize_relative(dependency, label=f"dependency of {rel}")
            if dep_rel not in closure_set:
                raise ExtensionError(f"dependency escapes accepted closure: {rel} -> {dep_rel}")
            if not isinstance(dependency_hash, str) or dependency_hash != source_before[dep_rel]:
                raise ExtensionError(f"dependency source hash mismatch: {rel} -> {dep_rel}")
        object_records[rel] = {
            "source": rel,
            "source_sha256_before": before,
            "source_sha256_after": after,
            "base_object": relpath(object_path),
            "base_object_sha256": object_hash,
            "dependencies": dict(sorted((str(k), str(v)) for k, v in deps.items())),
        }

    object_audit = audit_base_objects(
        verifier,
        base_objects=base_objects,
        expected_objects=expected_objects_by_source,
    )

    policy_globals = verifier.load_policy(REPO)
    policy_mask = policy_globals.get("mask_comments_and_strings")
    if not callable(policy_mask):
        raise ExtensionError("source policy checker has no masking function")
    policy_scan = policy_globals.get("scan_text")
    if not callable(policy_scan):
        raise ExtensionError("source policy checker has no scan_text function")
    target_root_audit = fresh.root_audit(
        verifier, target_root, EXPECTED_GUARDS, policy_mask
    )
    closure, imports = verifier.build_closure(
        [target_root],
        repo=REPO,
        run_id="fresh-root",
        exact=exact,
        basename=basename,
    )
    target_dependencies = source_dependency_map(
        verifier,
        closure=closure,
        imports=imports,
        exact=exact,
        basename=basename,
    )
    policy_violations: list[str] = []
    for reference in closure:
        policy_violations.extend(
            list(
                policy_scan(
                    verifier.read_utf8(reference.path),
                    verifier.relpath(reference.path, REPO),
                )
            )
        )
    if policy_violations:
        raise ExtensionError(
            "RegionConsumer exact-closure source policy failed: "
            + "; ".join(policy_violations[:5])
        )

    target_rel = {relpath(reference.path) for reference in closure}
    reused_rel = sorted(target_rel & closure_set)
    new_rel = sorted(target_rel - closure_set)
    package_imports = sorted(
        {
            module
            for imported in imports.values()
            for module in imported
            if verifier.is_package_import(module)
        }
    )
    source_closure = [
        {
            "source": relpath(reference.path),
            "module": reference.module_name,
            "source_sha256_before": sha256(reference.path),
            "imports": list(imports.get(reference.path, [])),
            "base_reused": relpath(reference.path) in closure_set,
            "dependencies": [
                relpath(dep) for dep in target_dependencies[reference.path]
            ],
        }
        for reference in closure
    ]
    return {
        "finite_evidence": finite_evidence,
        "finite_report": report,
        "finite_evidence_sha256": sha256(finite_evidence),
        "finite_root": expected_finite_root,
        "base_objects": base_objects,
        "manifest": manifest,
        "manifest_sha256": manifest_sha,
        "base_attempt": base_attempt,
        "pin_records": pin_records,
        "package_status": package_status,
        "base_closure": base_closure,
        "base_imports": base_imports,
        "base_dependencies": base_dependencies,
        "base_source_hashes": source_before,
        "base_object_records": object_records,
        "base_object_audit": object_audit,
        "target_root": target_root,
        "target_root_audit": target_root_audit,
        "closure": closure,
        "imports": imports,
        "target_dependencies": target_dependencies,
        "policy_mask": policy_mask,
        "policy_preview": {
            "files": len(closure),
            "violations": policy_violations,
            "exit_code": 0,
        },
        "source_closure": source_closure,
        "package_imports": package_imports,
        "reused_rel": reused_rel,
        "new_rel": new_rel,
        "exact": exact,
        "basename": basename,
    }


def allocate_output(requested: str | None) -> tuple[Path, Path, str]:
    parent = expected_path(ANALYTIC_VERIFICATION_REL)
    parent.mkdir(parents=True, exist_ok=True)
    if requested:
        output = repo_path(requested)
        if output.parent != parent:
            raise ExtensionError(
                f"--output must be directly below {relpath(parent)}"
            )
        stamp = output.name
        if not stamp or stamp in {".", ".."}:
            raise ExtensionError("--output has no timestamp name")
        if output.exists():
            if not output.is_dir() or any(output.iterdir()):
                raise ExtensionError(f"refusing to overwrite non-empty output: {output}")
        else:
            output.mkdir(parents=False)
    else:
        parent.mkdir(parents=True, exist_ok=True)
        base = datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%SZ")
        output = None
        stamp = ""
        for suffix in ("", *[f"-{index:02d}" for index in range(1, 1000)]):
            candidate = parent / (base + suffix)
            try:
                candidate.mkdir()
            except FileExistsError:
                continue
            output = candidate
            stamp = candidate.name
            break
        if output is None:
            raise ExtensionError("could not allocate analytic evidence directory")

    build_root = (REPO / ".lake" / "research-runs" / f"b677-analytic-{stamp}").resolve()
    if build_root.exists():
        raise ExtensionError(f"fresh analytic object root already exists: {build_root}")
    build_root.mkdir(parents=True, exist_ok=False)
    olean_root = build_root / "olean"
    olean_root.mkdir(exist_ok=False)
    return output, olean_root, stamp


def materialize_accepted_objects(
    context: Mapping[str, Any], *, olean_root: Path
) -> list[dict[str, Any]]:
    records: list[dict[str, Any]] = []
    for rel in sorted(context["base_object_records"]):
        row = context["base_object_records"][rel]
        source = (REPO / rel).resolve()
        base_object = repo_path(row["base_object"])
        destination = olean_root / source.relative_to(REPO).with_suffix(".olean")
        destination.parent.mkdir(parents=True, exist_ok=True)
        if destination.exists() or destination.is_symlink():
            raise ExtensionError(f"unexpected object collision: {relpath(destination)}")
        mode = "hardlink"
        try:
            os.link(base_object, destination)
        except OSError:
            # A symlink is still an exact accepted artifact and avoids a
            # second large copy when a filesystem disallows hardlinks.
            destination.symlink_to(base_object)
            mode = "symlink-to-accepted-base"
        destination_hash = sha256(destination)
        if destination_hash != row["base_object_sha256"]:
            raise ExtensionError(f"materialized object hash mismatch: {rel}")
        records.append(
            {
                **row,
                "materialized_object": relpath(destination),
                "materialized_object_sha256": destination_hash,
                "materialization": mode,
            }
        )
    return records


def make_env(olean_root: Path) -> dict[str, str]:
    env = dict(os.environ)
    env["ELAN_HOME"] = str(REPO / ".tools" / "elan")
    env["PATH"] = str(REPO / ".tools" / "elan" / "bin") + os.pathsep + env.get("PATH", "")
    env["MATHLIB_CACHE_DIR"] = str(REPO / ".lake" / "mathlib-cache")
    # Crucially, the finite project root is absent.  It is represented only by
    # the individually hash-checked accepted objects linked above.
    env["LEAN_PATH"] = str(olean_root)
    return env


def finish_source_hashes(context: Mapping[str, Any]) -> dict[str, str]:
    return {item["source"]: sha256(REPO / item["source"]) for item in context["source_closure"]}


def preflight_summary(context: Mapping[str, Any]) -> dict[str, Any]:
    return {
        "finite_evidence": relpath(context["finite_evidence"]),
        "finite_evidence_sha256": context["finite_evidence_sha256"],
        "finite_objects": relpath(context["base_objects"]),
        "finite_project_objects": len(context["base_object_records"]),
        "finite_object_audit": context["base_object_audit"],
        "target_root": relpath(context["target_root"]),
        "target_root_audit": context["target_root_audit"],
        "target_closure_count": len(context["closure"]),
        "reused_project_sources": len(context["reused_rel"]),
        "new_project_sources": len(context["new_rel"]),
        "new_project_source_list": context["new_rel"],
        "package_import_count": len(context["package_imports"]),
        "manifest_sha256": context["manifest_sha256"],
        "policy": context["policy_preview"],
        "read_only": True,
    }


def extend(
    context: Mapping[str, Any],
    verifier: Any,
    *,
    output_arg: str | None,
) -> tuple[dict[str, Any], Path]:
    output, olean_root, stamp = allocate_output(output_arg)
    target_root: Path = context["target_root"]
    report: dict[str, Any] = {
        "schema_version": 1,
        "success": False,
        "exit_code": 1,
        "started_utc": datetime.now(timezone.utc).isoformat().replace("+00:00", "Z"),
        "finished_utc": None,
        "repository": str(REPO),
        "root": relpath(target_root),
        "root_expected": TARGET_ROOT_REL,
        "output_directory": relpath(output),
        "build": {
            "root": relpath(olean_root.parent),
            "olean": relpath(olean_root),
            "fresh": True,
            "lean_path": [str(olean_root)],
        },
        "base_evidence": {
            "path": relpath(context["finite_evidence"]),
            "sha256": context["finite_evidence_sha256"],
            "success_required": True,
            "fresh_project_objects_required": True,
            "objects": relpath(context["base_objects"]),
            "project_object_count": len(context["base_object_records"]),
            "object_audit": context["base_object_audit"],
        },
        "manifest_sha256": context["manifest_sha256"],
        "pins": [],
        "package_status": [],
        "toolchain": None,
        "target_root_audit": context["target_root_audit"],
        "source_policy_preflight": context["policy_preview"],
        "source_closure": context["source_closure"],
        "package_imports": context["package_imports"],
        "package_compiles": [],
        "reused_project_objects": [],
        "compile_records": [],
        "guard_result": None,
        "failure": None,
    }
    try:
        env = make_env(olean_root)
        manifest = context["manifest"]
        report["pins"] = context["pin_records"]
        report["package_status"] = context["package_status"]
        (output / "package-pins.log").write_text(
            json.dumps(context["package_status"], ensure_ascii=False, indent=2) + "\n",
            encoding="utf-8",
        )
        report["toolchain"] = verifier.ensure_toolchain(REPO, output, env)
        linked = verifier.overlay_package_objects(REPO, olean_root)
        report["build"]["linked_package_objects"] = linked
        report["reused_project_objects"] = materialize_accepted_objects(
            context, olean_root=olean_root
        )
        report["package_compiles"] = verifier.rebuild_missing_package_objects(
            context["package_imports"],
            repo=REPO,
            olean_root=olean_root,
            output=output,
            env=env,
        )
        policy = verifier.policy_check(
            [reference.path for reference in context["closure"]],
            repo=REPO,
            output=output / "policy",
            policy_mask=context["policy_mask"],
        )
        report["policy"] = policy
        if policy["exit_code"]:
            raise ExtensionError(f"source policy failed; see {policy['log']}")

        accepted = set(context["base_object_records"])
        compiled: set[str] = set()
        ordinal = 0
        for reference in context["closure"]:
            rel = relpath(reference.path)
            if rel in accepted:
                continue
            ordinal += 1
            record = verifier.compile_source(
                reference,
                ordinal=ordinal,
                repo=REPO,
                olean_root=olean_root,
                output=output,
                env=env,
                imports=context["imports"].get(reference.path, []),
            )
            if record.get("source_sha256_before") != record.get("source_sha256_after"):
                raise ExtensionError(f"source changed while compiling: {rel}")
            report["compile_records"].append(record)
            compiled.add(rel)
        report["compiled_count"] = len(compiled)
        expected_new = set(context["new_rel"])
        if compiled != expected_new:
            raise ExtensionError(
                f"new source compile set mismatch (compiled={len(compiled)}, expected={len(expected_new)})"
            )

        # Re-check all source and accepted object hashes after the real Lean
        # run.  This catches concurrent source edits and base-root mutation.
        after_sources = finish_source_hashes(context)
        for item in report["source_closure"]:
            if after_sources[item["source"]] != item["source_sha256_before"]:
                raise ExtensionError(f"source changed during extension: {item['source']}")
            item["source_sha256_after"] = after_sources[item["source"]]
        for item in report["reused_project_objects"]:
            base_object = repo_path(item["base_object"])
            base_after = sha256(base_object)
            destination = repo_path(item["materialized_object"])
            destination_after = sha256(destination)
            item["base_object_sha256_after"] = base_after
            item["materialized_object_sha256_after"] = destination_after
            if base_after != item["base_object_sha256"]:
                raise ExtensionError(f"accepted base object changed: {item['source']}")
            if destination_after != item["base_object_sha256"]:
                raise ExtensionError(f"reused object changed: {item['source']}")

        root_record = next(
            (item for item in report["compile_records"] if item.get("source") == TARGET_ROOT_REL),
            None,
        )
        if root_record is None:
            raise ExtensionError("RegionConsumer was not compiled as a new source")
        # ``root_audit`` belongs to the fresh-root adapter; use the same
        # verifier audit primitive here so the post-build source hash and
        # guarded axiom expectation are recorded independently of the compile
        # log.
        post_audit = verifier.audit_root_source(
            target_root,
            EXPECTED_GUARDS,
            policy_mask=context["policy_mask"],
        )
        report["target_root_audit_after"] = post_audit
        report["guard_result"] = {
            "status": "passed",
            "source": TARGET_ROOT_REL,
            "expected_guard_pairs": EXPECTED_GUARDS,
            "source_guard_pairs": {
                "print_axioms": context["target_root_audit"]["print_axioms"],
                "guard_msgs": context["target_root_audit"]["guard_msgs"],
            },
            "compile_exit_code": root_record.get("exit_code"),
            "compile_log": root_record.get("log"),
            "compile_log_sha256": root_record.get("log_sha256"),
            "kernel_guard_check": root_record.get("exit_code") == 0,
            "post_compile_source_sha256": post_audit["source_sha256"],
        }
        if root_record.get("exit_code") != 0:
            raise ExtensionError("RegionConsumer Lean compile did not pass")
        if sha256(context["finite_evidence"]) != context["finite_evidence_sha256"]:
            raise ExtensionError("finite evidence changed during extension")
        report["success"] = True
        report["exit_code"] = 0
    except Exception as exc:
        report["failure"] = str(exc)
        report["success"] = False
        report["exit_code"] = 1
    finally:
        report["finished_utc"] = datetime.now(timezone.utc).isoformat().replace("+00:00", "Z")
        (output / "evidence.json").write_text(
            json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
        )
    return report, output


def parse_args(argv: Sequence[str] | None = None) -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--finite-evidence",
        default=FINITE_EVIDENCE_REL,
        help="fixed successful finite evidence JSON",
    )
    parser.add_argument(
        "--root",
        default=TARGET_ROOT_REL,
        help="frozen analytic root (must be RegionConsumer.lean)",
    )
    parser.add_argument(
        "--output",
        help="new empty verification/analytic/<UTC> directory",
    )
    parser.add_argument(
        "--preflight",
        action="store_true",
        help="validate finite hashes, closure, policy and pins without writing output",
    )
    return parser.parse_args(sys.argv[1:] if argv is None else argv)


def main(argv: Sequence[str] | None = None) -> int:
    args = parse_args(argv)
    try:
        verifier, fresh = load_helpers()
        finite_evidence = repo_path(args.finite_evidence)
        target_root = repo_path(args.root)
        context = validate_base(
            verifier,
            fresh,
            finite_evidence=finite_evidence,
            target_root=target_root,
        )
        summary = preflight_summary(context)
        if args.preflight:
            print(json.dumps(summary, ensure_ascii=False, indent=2, sort_keys=True))
            return 0
        report, output = extend(context, verifier, output_arg=args.output)
        print(f"extension output: {relpath(output)}")
        print(f"extension success: {report['success']} (exit {report['exit_code']})")
        if report.get("failure"):
            print(f"failure: {report['failure']}", file=sys.stderr)
        return int(report["exit_code"])
    except (ExtensionError, OSError, ValueError, json.JSONDecodeError) as exc:
        print(f"extension preflight failed before output allocation: {exc}", file=sys.stderr)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
