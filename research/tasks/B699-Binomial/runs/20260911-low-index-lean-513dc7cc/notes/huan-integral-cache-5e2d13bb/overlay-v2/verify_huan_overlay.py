#!/usr/bin/env python3
"""Version 2 preparation candidate for a read-only package-cache overlay verification.

This is intentionally kept under the run notes directory.  It is not wired
into the repository runner.  Without ``--execute`` it only prints a plan and
does not create outputs or invoke Lean.

The execution path keeps the pinned verifier and its source-policy, import,
cache, compile, and axiom gates.  It accepts a fresh package root and a
read-only fallback package root.  Project objects are written only below the
new run-local ``.tools`` directory; package objects are read through
``LEAN_PATH`` in this order: new project objects, new package caches, then
fallback package caches.  No hard-link operation is used. Source identity follows Cache.Hashing.hashFileContents: CRLF is replaced by LF for the normalized audit.
"""
from __future__ import annotations

import argparse
import hashlib
import importlib.util
import json
import os
import shutil
import subprocess
import sys
from datetime import datetime, timezone
from pathlib import Path
from typing import Any, Mapping, Sequence


RUN = Path(
    "research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc"
)
OLD = Path(
    "research/tasks/B699-Binomial/runs/20260909-low-index-structure-b41a5a63"
)
MIN_FREE_BYTES = 1 * 1024 * 1024 * 1024


def load_fixed_verifier(repo: Path):
    adapter_path = repo / OLD / "verification/runner/verify_repo_relative.py"
    spec = importlib.util.spec_from_file_location(
        "b699_overlay_fixed_adapter", adapter_path
    )
    if spec is None or spec.loader is None:
        raise RuntimeError(f"cannot load fixed adapter: {adapter_path}")
    adapter = importlib.util.module_from_spec(spec)
    sys.modules[spec.name] = adapter
    spec.loader.exec_module(adapter)
    verifier = adapter.load_verifier()
    verifier.build_source_index = (
        lambda root: adapter.repo_relative_source_index(verifier, root)
    )
    return verifier, adapter


def git_head(package_root: Path) -> str:
    safe = str(package_root)
    result = subprocess.run(
        [
            "git",
            "-c",
            f"safe.directory={safe}",
            "-C",
            safe,
            "rev-parse",
            "--verify",
            "HEAD",
        ],
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        text=True,
        check=False,
    )
    if result.returncode != 0:
        raise RuntimeError(f"cannot read package HEAD: {package_root}")
    return result.stdout.strip()


def sha256_bytes(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def bytes_fingerprint(data: bytes) -> dict[str, Any]:
    is_text = b"\x00" not in data
    if is_text:
        try:
            data.decode("utf-8")
        except UnicodeDecodeError:
            is_text = False
    normalized = data.replace(b"\r\n", b"\n") if is_text else data
    return {
        "raw_sha256": sha256_bytes(data),
        "normalized_sha256": sha256_bytes(normalized),
        "raw_bytes": len(data),
        "normalized_bytes": len(normalized),
        "text": is_text,
        "crlf_pairs": data.count(b"\r\n"),
        "lone_cr_bytes": data.count(b"\r") - data.count(b"\r\n"),
    }


def file_fingerprint(path: Path) -> dict[str, Any]:
    return bytes_fingerprint(path.read_bytes())


def tracked_names(package_root: Path) -> list[bytes]:
    safe = str(package_root)
    result = subprocess.run(
        [
            "git",
            "-c",
            f"safe.directory={safe}",
            "-C",
            safe,
            "ls-files",
            "-z",
        ],
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        check=False,
    )
    if result.returncode != 0:
        raise RuntimeError(f"cannot enumerate package source: {package_root}")
    return sorted(item for item in result.stdout.split(b"\0") if item)


def tracked_fingerprints(package_root: Path) -> tuple[list[bytes], dict[str, dict[str, Any]]]:
    names = tracked_names(package_root)
    records: dict[str, dict[str, Any]] = {}
    raw_tree = hashlib.sha256()
    normalized_tree = hashlib.sha256()
    root = package_root.resolve()
    for raw_name in names:
        relative = Path(os.fsdecode(raw_name))
        path = (package_root / relative).resolve()
        if not path.is_file() or not path.is_relative_to(root):
            raise RuntimeError(
                f"tracked package source is not a regular in-tree file: {relative}"
            )
        data = path.read_bytes()
        fingerprint = bytes_fingerprint(data)
        key = relative.as_posix()
        raw_tree.update(b"path\0" + raw_name + b"\0bytes\0" + data + b"\0")
        normalized = data.replace(b"\r\n", b"\n") if fingerprint["text"] else data
        normalized_tree.update(
            b"path\0" + raw_name + b"\0bytes\0" + normalized + b"\0"
        )
        records[key] = fingerprint
    return names, {
        "files": records,
        "raw_tree_sha256": raw_tree.hexdigest(),
        "normalized_tree_sha256": normalized_tree.hexdigest(),
        "tracked_files": len(names),
        "tracked_bytes": sum(row["raw_bytes"] for row in records.values()),
        "normalized_bytes": sum(row["normalized_bytes"] for row in records.values()),
    }


def source_tree_audit(new_root: Path, fallback_root: Path) -> dict[str, Any]:
    new_names, new = tracked_fingerprints(new_root)
    fallback_names, fallback = tracked_fingerprints(fallback_root)
    new_set = {os.fsdecode(item).replace("\\", "/") for item in new_names}
    fallback_set = {os.fsdecode(item).replace("\\", "/") for item in fallback_names}
    entries: list[dict[str, Any]] = []
    errors: list[str] = []
    for relative in sorted(new_set | fallback_set):
        left = new["files"].get(relative)
        right = fallback["files"].get(relative)
        if left is None or right is None:
            entries.append(
                {
                    "path": relative,
                    "new_present": left is not None,
                    "fallback_present": right is not None,
                    "raw_equal": False,
                    "normalized_equal": False,
                    "allowed_line_ending_only": False,
                }
            )
            errors.append(f"tracked path set differs: {relative}")
            continue
        raw_equal = left["raw_sha256"] == right["raw_sha256"]
        normalized_equal = (
            left["normalized_sha256"] == right["normalized_sha256"]
        )
        allowed = raw_equal or (
            left["text"] and right["text"] and normalized_equal
        )
        entries.append(
            {
                "path": relative,
                "new_raw_sha256": left["raw_sha256"],
                "fallback_raw_sha256": right["raw_sha256"],
                "new_normalized_sha256": left["normalized_sha256"],
                "fallback_normalized_sha256": right["normalized_sha256"],
                "new_raw_bytes": left["raw_bytes"],
                "fallback_raw_bytes": right["raw_bytes"],
                "new_normalized_bytes": left["normalized_bytes"],
                "fallback_normalized_bytes": right["normalized_bytes"],
                "new_text": left["text"],
                "fallback_text": right["text"],
                "raw_equal": raw_equal,
                "normalized_equal": normalized_equal,
                "allowed_line_ending_only": allowed and not raw_equal,
                "new_crlf_pairs": left["crlf_pairs"],
                "fallback_crlf_pairs": right["crlf_pairs"],
            }
        )
        if not allowed:
            errors.append(f"non-line-ending tracked difference: {relative}")
    allowed_count = sum(
        1 for row in entries if row.get("allowed_line_ending_only")
    )
    disallowed_count = sum(
        1
        for row in entries
        if not row.get("raw_equal") and not row.get("allowed_line_ending_only")
    )
    return {
        "new": {
            "raw_tree_sha256": new["raw_tree_sha256"],
            "normalized_tree_sha256": new["normalized_tree_sha256"],
            "tracked_files": new["tracked_files"],
            "tracked_bytes": new["tracked_bytes"],
            "normalized_bytes": new["normalized_bytes"],
        },
        "fallback": {
            "raw_tree_sha256": fallback["raw_tree_sha256"],
            "normalized_tree_sha256": fallback["normalized_tree_sha256"],
            "tracked_files": fallback["tracked_files"],
            "tracked_bytes": fallback["tracked_bytes"],
            "normalized_bytes": fallback["normalized_bytes"],
        },
        "raw_tree_equal": new["raw_tree_sha256"] == fallback["raw_tree_sha256"],
        "normalized_tree_equal": (
            new["normalized_tree_sha256"] == fallback["normalized_tree_sha256"]
        ),
        "allowed_line_ending_differences": allowed_count,
        "disallowed_differences": disallowed_count,
        "errors": errors,
        "files": entries,
    }


def load_plan_inputs(
    verifier: Any, dag_path: Path, build_plan_path: Path
) -> dict[str, Any]:
    dag_rows = [
        json.loads(line)
        for line in dag_path.read_text(encoding="utf-8").splitlines()
        if line.strip()
    ]
    plan = json.loads(build_plan_path.read_text(encoding="utf-8"))
    modules = plan.get("topological_modules", [])
    summary = plan.get("summary", {})
    if len(dag_rows) != 2618 or len(modules) != 2618:
        raise RuntimeError("fixed integral DAG/plan must contain 2618 modules")
    if not summary.get("topological_order_valid"):
        raise RuntimeError("integral build plan is not topologically ordered")
    expected = {
        "official_parser_modules": 2618,
        "primary_objects_available": 2428,
        "missing_primary_objects": 190,
        "missing_source_bytes": 4224008,
        "existing_primary_bytes": 578631032,
        "existing_companion_bytes": 1200809904,
        "raw_source_byte_mismatch_count": 2618,
    }
    for key, value in expected.items():
        if summary.get(key) != value:
            raise RuntimeError(f"integral plan summary changed: {key}")
    mismatch_details = summary.get("mismatch_details", [])
    if len(mismatch_details) != 2618 or any(
        row.get("lf_normalized_equal") is not True
        or row.get("new") == row.get("original")
        for row in mismatch_details
    ):
        raise RuntimeError("integral plan does not prove CRLF-to-LF equality for every source")
    for dag_row, plan_row in zip(dag_rows, modules):
        if (
            dag_row.get("module") != plan_row.get("module")
            or dag_row.get("imports") != plan_row.get("imports")
        ):
            raise RuntimeError(
                f"DAG and build plan differ at {plan_row.get('module')}"
            )
    return {
        "dag_sha256": verifier.sha256_path(dag_path),
        "build_plan_sha256": verifier.sha256_path(build_plan_path),
        "module_count": len(modules),
        "summary": {
            key: summary[key]
            for key in expected
        },
        "modules": modules,
    }


def plan_object_inventory(
    verifier: Any,
    plan_modules: Sequence[Mapping[str, Any]],
    new_root: Path,
    fallback_root: Path,
    new_pins: Sequence[Mapping[str, Any]],
    fallback_pins: Sequence[Mapping[str, Any]],
    prefixes: Mapping[str, str],
) -> dict[str, Any]:
    new_by_name = {str(row["name"]): row for row in new_pins}
    fallback_by_name = {str(row["name"]): row for row in fallback_pins}
    entries: list[dict[str, Any]] = []
    errors: list[str] = []
    missing_source_bytes = 0
    fallback_primary_bytes = 0
    selected_by_side = {"NEW_PACKAGE_ROOT": 0, "FALLBACK_PACKAGE_ROOT": 0}
    primary_available_count = 0
    for plan_row in plan_modules:
        module = str(plan_row["module"])
        package_name = str(plan_row["package"])
        source_relative = Path(str(plan_row["package_source"]))
        new_source = (new_root / source_relative).resolve()
        fallback_source = (fallback_root / source_relative).resolve()
        if not new_source.is_file() or not fallback_source.is_file():
            errors.append(f"plan source missing: {module}")
            entries.append(
                {
                    "module": module,
                    "package": package_name,
                    "source_side": None,
                    "source_relative": source_relative.as_posix(),
                    "primary_object_available": bool(
                        plan_row.get("primary_object_available")
                    ),
                    "object_available": False,
                }
            )
            continue
        new_fp = file_fingerprint(new_source)
        fallback_fp = file_fingerprint(fallback_source)
        if new_fp["raw_sha256"] != plan_row.get("source_sha256"):
            errors.append(f"new plan source SHA mismatch: {module}")
        if fallback_fp["raw_sha256"] != plan_row.get("original_source_sha256"):
            errors.append(f"fallback plan source SHA mismatch: {module}")
        if new_fp["normalized_sha256"] != fallback_fp["normalized_sha256"]:
            errors.append(f"non-CRLF source difference: {module}")
        primary_available = bool(plan_row.get("primary_object_available"))
        if primary_available:
            primary_available_count += 1
        else:
            missing_source_bytes += new_fp["raw_bytes"]
        candidates = package_cache_candidates(
            new_root,
            fallback_root,
            new_by_name,
            fallback_by_name,
            module,
            prefixes,
        )
        expected_sources = {
            "NEW_PACKAGE_ROOT": new_source,
            "FALLBACK_PACKAGE_ROOT": fallback_source,
        }
        for candidate in candidates:
            if candidate["source"].resolve() != expected_sources[candidate["label"]]:
                errors.append(f"object/source module path mismatch: {module}")
        if len(candidates) == 2 and same_inode(
            candidates[0]["path"], candidates[1]["path"]
        ):
            errors.append(f"new/fallback object is hard-linked: {module}")
        chosen = candidates[0] if candidates else None
        if primary_available and chosen is None:
            errors.append(f"plan primary object missing from both roots: {module}")
        fallback_candidate = next(
            (row for row in candidates if row["label"] == "FALLBACK_PACKAGE_ROOT"),
            None,
        )
        if primary_available and fallback_candidate is not None:
            fallback_primary_bytes += fallback_candidate["path"].stat().st_size
        item: dict[str, Any] = {
            "module": module,
            "package": package_name,
            "source_relative": source_relative.as_posix(),
            "plan_source_sha256": plan_row.get("source_sha256"),
            "plan_original_source_sha256": plan_row.get("original_source_sha256"),
            "new_source_raw_sha256": new_fp["raw_sha256"],
            "fallback_source_raw_sha256": fallback_fp["raw_sha256"],
            "new_source_normalized_sha256": new_fp["normalized_sha256"],
            "fallback_source_normalized_sha256": fallback_fp["normalized_sha256"],
            "primary_object_available": primary_available,
            "object_available": chosen is not None,
            "object_source_side": chosen["label"] if chosen else None,
        }
        if chosen is not None:
            source_fingerprint = (
                new_fp if chosen["label"] == "NEW_PACKAGE_ROOT" else fallback_fp
            )
            selected_by_side[chosen["label"]] += 1
            item.update(
                {
                    "object_path": relative_package_path(
                        chosen["root"], chosen["label"], chosen["path"]
                    ),
                    "object_sha256": verifier.sha256_path(chosen["path"]),
                    "object_bytes": chosen["path"].stat().st_size,
                    "object_source_raw_sha256": source_fingerprint["raw_sha256"],
                    "object_source_normalized_sha256": source_fingerprint[
                        "normalized_sha256"
                    ],
                    "object_artifacts": artifact_inventory(
                        verifier,
                        chosen["root"],
                        chosen["label"],
                        chosen["path"],
                    ),
                }
            )
        entries.append(item)
    if missing_source_bytes != 4224008:
        errors.append(
            f"missing source byte total changed: {missing_source_bytes}"
        )
    if fallback_primary_bytes != 578631032:
        errors.append(
            f"fallback primary byte total changed: {fallback_primary_bytes}"
        )
    summary = {
        "module_count": len(entries),
        "primary_objects_available": primary_available_count,
        "missing_primary_objects": len(entries) - primary_available_count,
        "actual_objects_available": sum(
            1 for row in entries if row.get("object_available")
        ),
        "actual_objects_missing": sum(
            1 for row in entries if not row.get("object_available")
        ),
        "selected_by_side": selected_by_side,
        "missing_source_bytes": missing_source_bytes,
        "fallback_primary_bytes": fallback_primary_bytes,
        "errors": len(errors),
    }
    return {"summary": summary, "errors": errors, "modules": entries}


def expected_package_map(manifest: Mapping[str, Any]) -> dict[str, str]:
    return {
        str(row["name"]): str(row["rev"])
        for row in manifest.get("packages", [])
        if isinstance(row, dict) and row.get("name") and row.get("rev")
    }

def public_pin_rows(rows: Sequence[Mapping[str, Any]], label: str) -> list[dict[str, Any]]:
    result: list[dict[str, Any]] = []
    for row in rows:
        item = dict(row)
        name = str(item.get("name", ""))
        item["path"] = f"{label}/{name}"
        item["cache_path"] = f"{label}/{name}/.lake/build/lib/lean"
        result.append(item)
    return result


def assert_matching_pins(
    manifest: Mapping[str, Any],
    new_rows: Sequence[Mapping[str, Any]],
    fallback_rows: Sequence[Mapping[str, Any]],
) -> None:
    expected = expected_package_map(manifest)
    if len(expected) != 9 or len(new_rows) != 9 or len(fallback_rows) != 9:
        raise RuntimeError("both package roots must expose exactly the nine manifest pins")
    new_by_name = {str(row.get("name")): row for row in new_rows}
    fallback_by_name = {str(row.get("name")): row for row in fallback_rows}
    if set(new_by_name) != set(expected) or set(fallback_by_name) != set(expected):
        raise RuntimeError("package names differ from the fixed nine-package manifest")
    for name, revision in expected.items():
        left = new_by_name[name]
        right = fallback_by_name[name]
        for label, row in (("new", left), ("fallback", right)):
            if (
                row.get("manifest_rev") != revision
                or row.get("observed_head") != revision
                or not row.get("head_matches")
                or not row.get("clean")
            ):
                raise RuntimeError(f"{label} package pin/clean gate failed: {name}")
        if left.get("observed_head") != right.get("observed_head"):
            raise RuntimeError(f"package HEAD differs between roots: {name}")


def cache_root(package_root: Path, package_name: str) -> Path:
    return package_root / package_name / ".lake" / "build" / "lib" / "lean"


def module_path(module: str, suffix: str = ".olean") -> Path:
    return Path(*module.split(".")).with_suffix(suffix)


def module_owner(module: str, prefixes: Mapping[str, str]) -> str:
    matches = [
        prefix
        for prefix in prefixes
        if module == prefix or module.startswith(prefix + ".")
    ]
    if not matches:
        raise RuntimeError(f"no pinned package prefix for import {module}")
    return prefixes[max(matches, key=len)]


def package_object(
    package_root: Path, package_name: str, module: str
) -> Path:
    return cache_root(package_root, package_name) / module_path(module)


def package_source(
    package_root: Path, package_name: str, module: str
) -> Path:
    return package_root / package_name / module_path(module, ".lean")


def relative_package_path(root: Path, label: str, path: Path) -> str:
    return f"{label}/{path.resolve().relative_to(root.resolve()).as_posix()}"


def same_inode(left: Path, right: Path) -> bool:
    try:
        left_stat = left.stat()
        right_stat = right.stat()
    except OSError:
        return False
    return (
        left_stat.st_dev != 0
        and left_stat.st_ino != 0
        and left_stat.st_dev == right_stat.st_dev
        and left_stat.st_ino == right_stat.st_ino
    )


def artifact_inventory(
    verifier: Any,
    root: Path,
    label: str,
    object_path: Path,
) -> dict[str, Any]:
    suffixes = (
        ".olean",
        ".olean.hash",
        ".ilean",
        ".ilean.hash",
        ".trace",
        ".olean.private",
        ".olean.private.hash",
        ".olean.server",
        ".olean.server.hash",
        ".ir",
        ".ir.sig",
        ".c",
        ".c.hash",
    )
    artifacts: dict[str, Any] = {}
    for suffix in suffixes:
        path = object_path.with_suffix(suffix)
        if path.is_file():
            artifacts[suffix] = {
                "path": relative_package_path(root, label, path),
                "bytes": path.stat().st_size,
                "sha256": verifier.sha256_path(path),
            }
    return artifacts


def package_cache_candidates(
    new_root: Path,
    fallback_root: Path,
    new_rows: Mapping[str, Mapping[str, Any]],
    fallback_rows: Mapping[str, Mapping[str, Any]],
    module: str,
    prefixes: Mapping[str, str],
) -> list[dict[str, Any]]:
    package_name = module_owner(module, prefixes)
    candidates: list[dict[str, Any]] = []
    for label, root, rows in (
        ("NEW_PACKAGE_ROOT", new_root, new_rows),
        ("FALLBACK_PACKAGE_ROOT", fallback_root, fallback_rows),
    ):
        if package_name not in rows:
            raise RuntimeError(f"package row missing for {package_name}")
        path = package_object(root, package_name, module)
        if path.is_file():
            if not path.resolve().is_relative_to(cache_root(root, package_name).resolve()):
                raise RuntimeError(f"cache object escapes package root: {module}")
            candidates.append(
                {
                    "label": label,
                    "root": root,
                    "package": package_name,
                    "path": path,
                    "source": package_source(root, package_name, module),
                }
            )
    return candidates


def fixed_cache_gate(
    verifier: Any,
    rows: Sequence[Mapping[str, Any]],
    modules: Sequence[str],
    root: Path,
) -> dict[str, Any]:
    """Run the unchanged verifier cache gate for every object present in root."""
    present: list[str] = []
    for module in sorted(set(modules)):
        matches = [
            row
            for row in rows
            if package_object(root, str(row["name"]), module).is_file()
        ]
        if matches:
            present.append(module)
    checks = verifier.package_cache_records(rows, present, package_root=root)
    return {
        "checked_modules": present,
        "records": checks,
        "missing_from_this_root": sorted(set(modules) - set(present)),
    }


def relabel_cache_gate(gate: Mapping[str, Any], label: str) -> dict[str, Any]:
    result = json.loads(json.dumps(gate))
    for row in result.get("records", []):
        for candidate in row.get("cache_candidates", []):
            if isinstance(candidate.get("path"), str):
                candidate["path"] = candidate["path"].replace(
                    "PACKAGE_ROOT", label
                )
    return result


def selected_package_objects(
    verifier: Any,
    new_root: Path,
    fallback_root: Path,
    new_pins: Sequence[Mapping[str, Any]],
    fallback_pins: Sequence[Mapping[str, Any]],
    modules: Sequence[str],
    prefixes: Mapping[str, str],
    identities: Mapping[str, Mapping[str, Mapping[str, Any]]],
) -> list[dict[str, Any]]:
    new_by_name = {str(row["name"]): row for row in new_pins}
    fallback_by_name = {str(row["name"]): row for row in fallback_pins}
    selected: list[dict[str, Any]] = []
    for module in sorted(set(modules)):
        candidates = package_cache_candidates(
            new_root,
            fallback_root,
            new_by_name,
            fallback_by_name,
            module,
            prefixes,
        )
        if not candidates:
            raise RuntimeError(f"fixed package cache missing for imported module {module}")
        chosen = candidates[0]
        package_name = str(chosen["package"])
        identity = identities[package_name][chosen["label"]]
        new_candidate = next(
            (row for row in candidates if row["label"] == "NEW_PACKAGE_ROOT"), None
        )
        fallback_candidate = next(
            (row for row in candidates if row["label"] == "FALLBACK_PACKAGE_ROOT"),
            None,
        )
        if new_candidate and fallback_candidate and same_inode(
            new_candidate["path"], fallback_candidate["path"]
        ):
            raise RuntimeError(f"new and fallback cache objects are hard-linked: {module}")
        for candidate in candidates:
            if not candidate["source"].is_file():
                raise RuntimeError(
                    f"pinned source module is missing for cache object: {module}"
                )
        source = chosen["source"]
        source_fingerprints = {
            chosen["label"]: file_fingerprint(source)
        }
        for other in (new_candidate, fallback_candidate):
            if other and other["source"].is_file():
                source_fingerprints[other["label"]] = file_fingerprint(
                    other["source"]
                )
        if len(
            {
                value["normalized_sha256"]
                for value in source_fingerprints.values()
            }
        ) != 1:
            raise RuntimeError(f"package source module differs between roots: {module}")
        selected.append(
            {
                "module": module,
                "package": package_name,
                "selected_root": chosen["label"],
                "source_side": chosen["label"],
                "source_tree_raw_sha256": identity["raw_tree_sha256"],
                "source_tree_normalized_sha256": identity[
                    "normalized_tree_sha256"
                ],
                "source_module_raw_sha256": source_fingerprints[chosen["label"]][
                    "raw_sha256"
                ],
                "source_module_normalized_sha256": source_fingerprints[
                    chosen["label"]
                ]["normalized_sha256"],
                "source_module_fingerprints": source_fingerprints,
                "source_module_path": relative_package_path(
                    chosen["root"], chosen["label"], source
                ),
                "object_path": relative_package_path(
                    chosen["root"], chosen["label"], chosen["path"]
                ),
                "object_bytes": chosen["path"].stat().st_size,
                "object_sha256": verifier.sha256_path(chosen["path"]),
                "artifacts": artifact_inventory(
                    verifier, chosen["root"], chosen["label"], chosen["path"]
                ),
                "candidates": [
                    {
                        "root": candidate["label"],
                        "path": relative_package_path(
                            candidate["root"], candidate["label"], candidate["path"]
                        ),
                        "sha256": verifier.sha256_path(candidate["path"]),
                        "source_tree_raw_sha256": identities[package_name][
                            candidate["label"]
                        ]["raw_tree_sha256"],
                        "source_tree_normalized_sha256": identities[package_name][
                            candidate["label"]
                        ]["normalized_tree_sha256"],
                    }
                    for candidate in candidates
                ],
            }
        )
    return selected


def fixed_source_snapshot(verifier: Any, repo: Path, fixed: Mapping[str, Any]) -> list[dict[str, Any]]:
    result: list[dict[str, Any]] = []
    for row in fixed.get("source_closure", []):
        relative = str(row["source"])
        path = repo / relative
        observed = verifier.sha256_path(path) if path.is_file() else None
        item = {
            "source": relative,
            "expected_sha256": row.get("expected_sha256"),
            "observed_sha256": observed,
            "matches": observed == row.get("expected_sha256"),
        }
        result.append(item)
        if not item["matches"]:
            raise RuntimeError(f"fixed source closure SHA mismatch: {relative}")
    return result


def verify_source_record(
    verifier: Any,
    path: Path,
    manifest: Mapping[str, Any],
    manifest_sha256: str,
) -> dict[str, Any]:
    data = json.loads(path.read_text(encoding="utf-8"))
    if data.get("manifest_sha256") != manifest_sha256:
        # The caller performs the authoritative repo-manifest comparison.  This
        # branch only rejects an explicitly inconsistent external record.
        raise RuntimeError("source record manifest SHA does not match the repository")
    expected = expected_package_map(manifest)
    observed = {
        str(row.get("name")): str(row.get("revision", row.get("manifest_rev", "")))
        for row in data.get("packages", [])
        if isinstance(row, dict)
    }
    if observed != expected:
        raise RuntimeError("source record package revisions differ from manifest")
    return {"path": "EXTERNAL_SOURCE_RECORD", "sha256": verifier.sha256_path(path)}


def optional_windows_sampler(verifier: Any, repo: Path) -> str:
    if os.name != "nt":
        return "unavailable-on-this-platform"
    helper = repo / RUN / "verification/runner/huan_resources.py"
    if not helper.is_file():
        return "runner-helper-missing"
    try:
        spec = importlib.util.spec_from_file_location("b699_overlay_resources", helper)
        if spec is None or spec.loader is None:
            return "runner-helper-unloadable"
        module = importlib.util.module_from_spec(spec)
        sys.modules[spec.name] = module
        spec.loader.exec_module(module)
        module.instrument(verifier)
    except (AttributeError, ImportError, OSError, ValueError) as exc:
        return f"runner-helper-unavailable:{type(exc).__name__}"
    return f"windows_process_tree:{verifier.sha256_path(helper)}"


def resource_snapshot(repo: Path) -> dict[str, Any]:
    usage = shutil.disk_usage(repo)
    return {
        "platform": sys.platform,
        "disk": [usage.total, usage.used, usage.free],
        "minimum_free_bytes": MIN_FREE_BYTES,
    }


def validate_reuse(
    verifier: Any,
    repo: Path,
    fixed: Mapping[str, Any],
    current_closure: Sequence[Any],
    imports: Mapping[Path, Sequence[str]],
    reuse_paths: Sequence[Path],
    report: dict[str, Any],
) -> dict[str, tuple[dict[str, Any], Path]]:
    reusable: dict[str, tuple[dict[str, Any], Path]] = {}
    current_sources = {verifier.relpath(ref.path, repo): ref for ref in current_closure}
    for requested in reuse_paths:
        evidence = (repo / requested).resolve()
        if not evidence.is_relative_to(repo / RUN / "verification"):
            raise RuntimeError("reuse evidence must belong to this task run")
        data = json.loads(evidence.read_text(encoding="utf-8"))
        if not data.get("success") or data.get("manifest_sha256") != fixed["manifest_sha256"]:
            raise RuntimeError("reuse needs successful evidence at the fixed manifest")
        if data.get("toolchain", {}).get("declared") != fixed["toolchain"]:
            raise RuntimeError("reused toolchain mismatch")
        pins = data.get("pins", [])
        if len(pins) != 9 or any(
            not row.get("head_matches") or not row.get("clean") for row in pins
        ):
            raise RuntimeError("incomplete reused package audit")
        records = [*data.get("reuse_records", []), *data.get("compile_records", [])]
        by_source = {str(row["source"]): row for row in records}
        if set(by_source) != set(current_sources):
            raise RuntimeError("reused closure does not match the requested source closure")
        for source_name, reference in current_sources.items():
            source_row = next(
                (
                    row
                    for row in data.get("source_closure", [])
                    if row.get("source") == source_name
                ),
                None,
            )
            if source_row is None:
                raise RuntimeError(f"reused source record is incomplete: {source_name}")
            record = by_source[source_name]
            source_hash = verifier.sha256_path(reference.path)
            if (
                record.get("source_sha256_before") != source_hash
                or record.get("source_sha256_after") != source_hash
            ):
                raise RuntimeError(f"reused source changed: {source_name}")
            output = (repo / str(record["output"])).resolve()
            if not output.is_relative_to(repo / ".tools" / RUN.name):
                raise RuntimeError("reused object is outside this task run")
            if not output.is_file() or verifier.sha256_path(output) != record.get("output_sha256"):
                raise RuntimeError(f"reused output changed: {source_name}")
            if (
                record.get("failure")
                or record.get("exit_code") != 0
                or record.get("timed_out")
            ):
                raise RuntimeError(f"reused compile was not successful: {source_name}")
            log = (repo / str(record["log"])).resolve()
            if not log.is_relative_to(repo / RUN / "verification"):
                raise RuntimeError("reused compile log is outside this task run")
            if not log.is_file() or verifier.sha256_path(log) != record.get("log_sha256"):
                raise RuntimeError(f"reused compile log changed: {source_name}")
            audit = verifier.audit_axioms(reference.path, log.read_text(encoding="utf-8"))
            if audit.get("error") or audit.get("unexpected_axioms"):
                raise RuntimeError(f"reused axiom audit failed: {source_name}")
            if list(source_row.get("imports", [])) != verifier.imports_in(reference.path):
                raise RuntimeError(f"reused imports changed: {source_name}")
            module = str(record["module"])
            if module in reusable:
                raise RuntimeError(f"duplicate reused module: {module}")
            reusable[module] = (record, evidence)
        report["reuse_evidence"].append(
            {"path": verifier.relpath(evidence, repo), "sha256": verifier.sha256_path(evidence)}
        )
    return reusable


def redact_overlay_logs(
    verifier: Any,
    public: Path,
    repo: Path,
    new_root: Path,
    fallback_root: Path,
    report: dict[str, Any],
) -> None:
    fallback_dir = public / "fallback-package-checks"
    for path in public.rglob("*.log"):
        text = path.read_text(encoding="utf-8", errors="replace")
        text = text.replace(str(new_root), "NEW_PACKAGE_ROOT")
        text = text.replace(new_root.as_posix(), "NEW_PACKAGE_ROOT")
        text = text.replace(str(fallback_root), "FALLBACK_PACKAGE_ROOT")
        text = text.replace(fallback_root.as_posix(), "FALLBACK_PACKAGE_ROOT")
        if path.is_relative_to(fallback_dir):
            text = text.replace("PACKAGE_ROOT", "FALLBACK_PACKAGE_ROOT")
        else:
            text = text.replace("PACKAGE_ROOT", "NEW_PACKAGE_ROOT")
        path.write_text(text, encoding="utf-8", newline="")
        relative = verifier.relpath(path, repo)
        digest = verifier.sha256_path(path)
        for record in report.get("commands", []):
            if record.get("log") == relative:
                record["log_sha256"] = digest
        for collection_name in ("compile_records",):
            for record in report.get(collection_name, []):
                if record.get("log") == relative:
                    record["log_sha256"] = digest


def allocate_outputs(repo: Path) -> tuple[Path, Path, str]:
    public_parent = repo / RUN / "verification"
    raw_parent = repo / ".tools" / RUN.name
    public_parent.mkdir(parents=True, exist_ok=True)
    raw_parent.mkdir(parents=True, exist_ok=True)
    base = datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%S%fZ")
    for suffix in ("", *[f"-{index:02d}" for index in range(1, 1000)]):
        stamp = base + suffix
        public = public_parent / stamp
        raw = raw_parent / stamp
        if public.exists() or raw.exists():
            continue
        try:
            public.mkdir()
            raw.mkdir()
        except FileExistsError:
            continue
        (public / "logs").mkdir()
        (raw / "logs").mkdir()
        (raw / "tmp").mkdir()
        (raw / "olean").mkdir()
        return public, raw, stamp
    raise RuntimeError("could not allocate a fresh overlay verification directory")


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--repo", type=Path, default=Path("."))
    parser.add_argument("--package-root", type=Path, required=True)
    parser.add_argument("--fallback-package-root", type=Path, required=True)
    parser.add_argument("--root", action="append", required=True)
    parser.add_argument("--reuse", action="append", type=Path, default=[])
    parser.add_argument("--source-record", type=Path)
    parser.add_argument("--import-dag", type=Path)
    parser.add_argument("--build-plan", type=Path)
    parser.add_argument("--memory-mb", type=int, default=3072)
    parser.add_argument("--timeout", type=int, default=900)
    parser.add_argument(
        "--execute",
        action="store_true",
        help="perform the future verification; without it this script is plan-only",
    )
    args = parser.parse_args()
    if args.execute and (args.import_dag is None or args.build_plan is None):
        parser.error("--import-dag and --build-plan are required with --execute")
    if not args.execute:
        print(
            "PLAN ONLY: pass --execute only after the two package roots, source "
            "SHA records, and disk budget have been reviewed."
        )
        return 0

    repo = args.repo.resolve()
    verifier, adapter = load_fixed_verifier(repo)
    verifier.FORBIDDEN_TOKENS += ("Lean.ofReduceBool", "ofReduceBool")
    fixed = json.loads(
        (repo / RUN / "verification/runner/finitecover-inputs.json").read_text(
            encoding="utf-8"
        )
    )
    for row in fixed["support_files"]:
        if verifier.sha256_path(repo / row["source"]) != row["expected_sha256"]:
            raise RuntimeError("fixed verifier changed: " + row["source"])
    if verifier.sha256_path(repo / "lake-manifest.json") != fixed["manifest_sha256"]:
        raise RuntimeError("manifest changed")
    if (repo / "lean-toolchain").read_text(encoding="utf-8").strip() != fixed["toolchain"]:
        raise RuntimeError("toolchain pin changed")

    package_root = args.package_root.resolve()
    fallback_root = args.fallback_package_root.resolve()
    if package_root == fallback_root:
        raise RuntimeError("new and fallback package roots must be distinct")
    if package_root.is_relative_to(fallback_root) or fallback_root.is_relative_to(package_root):
        raise RuntimeError("new and fallback package roots must not be nested")
    if not package_root.is_dir() or not fallback_root.is_dir():
        raise RuntimeError("both package roots must already exist")

    public, raw, stamp = allocate_outputs(repo)
    objects = raw / "olean"
    commands: list[dict[str, Any]] = []
    diagnostics: list[dict[str, Any]] = []
    report: dict[str, Any] = {
        "schema_version": 4,
        "kind": "hash_checked_incremental_package_overlay_v2",
        "success": False,
        "exit_code": 1,
        "started_utc": verifier.utc_now(),
        "evidence_directory": verifier.relpath(public, repo),
        "diagnostic_directory": verifier.relpath(raw, repo),
        "root_sources": [
            verifier.relpath(verifier.resolve_root(item, repo), repo) for item in args.root
        ],
        "package_roots": {
            "new": "NEW_PACKAGE_ROOT",
            "fallback": "FALLBACK_PACKAGE_ROOT",
        },
        "memory_mb": args.memory_mb,
        "timeout_seconds": args.timeout,
        "manifest_sha256": verifier.sha256_path(repo / "lake-manifest.json"),
        "source_commit": git_head(repo),
        "runner_sha256": verifier.sha256_path(Path(__file__)),
        "reuse_evidence": [],
        "reuse_records": [],
        "compile_records": [],
        "commands": commands,
        "all_new_project_closure_compiled": False,
        "failure": None,
        "output_stamp": stamp,
        "integral_plan_inputs": {
            "import_dag": "INTEGRAL_IMPORT_DAG",
            "build_plan": "INTEGRAL_BUILD_PLAN",
        },
    }
    shutil.copyfile(Path(__file__), public / "runner-source.py")
    try:
        lean_name = shutil.which("lean")
        if not lean_name:
            raise RuntimeError("Lean is unavailable")
        if shutil.which("elan"):
            found = subprocess.run(
                ["elan", "which", "lean"],
                cwd=repo,
                text=True,
                capture_output=True,
                check=False,
            )
            if found.returncode == 0 and found.stdout.strip():
                lean_name = found.stdout.strip()
        lean = Path(lean_name).resolve()
        env = dict(os.environ)
        for name in ("TEMP", "TMP", "TMPDIR"):
            env[name] = str(raw / "tmp")
        env["MATHLIB_CACHE_DIR"] = str(raw / "mathlib-cache")
        manifest = verifier.load_manifest(repo)
        fixed_source = fixed_source_snapshot(verifier, repo, fixed)
        report["fixed_source_closure"] = fixed_source
        if args.source_record:
            report["source_record"] = verify_source_record(
                verifier,
                args.source_record.resolve(),
                manifest,
                fixed["manifest_sha256"],
            )
        else:
            report["source_record"] = None
        common = dict(
            repo=repo,
            lean=lean,
            raw_root=raw,
            public_root=public,
            env=env,
            timeout_seconds=args.timeout,
            command_records=commands,
            diagnostic_records=diagnostics,
        )
        new_pins = verifier.check_packages(
            manifest, package_root=package_root, **common
        )
        fallback_public = public / "fallback-package-checks"
        fallback_raw = raw / "fallback-package-checks"
        fallback_public.mkdir()
        fallback_raw.mkdir()
        (fallback_public / "logs").mkdir()
        (fallback_raw / "logs").mkdir()
        fallback_common = dict(common, public_root=fallback_public, raw_root=fallback_raw)
        fallback_pins = verifier.check_packages(
            manifest, package_root=fallback_root, **fallback_common
        )
        assert_matching_pins(manifest, new_pins, fallback_pins)
        source_audit_dir = raw / "source-tree-audit"
        source_summary_dir = public / "source-tree-summary"
        source_audit_dir.mkdir()
        source_summary_dir.mkdir()
        new_identities = {
            str(row["name"]): {
                "HEAD": git_head(package_root / str(row["name"])),
                "source": None,
            }
            for row in new_pins
        }
        fallback_identities = {
            str(row["name"]): {
                "HEAD": git_head(fallback_root / str(row["name"])),
                "source": None,
            }
            for row in fallback_pins
        }
        package_identities: dict[str, dict[str, dict[str, Any]]] = {}
        for name in expected_package_map(manifest):
            left = new_identities[name]
            right = fallback_identities[name]
            if left["HEAD"] != right["HEAD"]:
                raise RuntimeError(f"package HEAD differs between roots: {name}")
            audit = source_tree_audit(
                package_root / name,
                fallback_root / name,
            )
            verifier.write_json(source_audit_dir / f"{name}.json", audit)
            verifier.write_json(
                source_summary_dir / f"{name}.json",
                {
                    key: value
                    for key, value in audit.items()
                    if key != "files"
                },
            )
            if audit["errors"]:
                raise RuntimeError(
                    f"package source differs beyond CRLF normalization: {name}"
                )
            left["source"] = audit["new"]
            right["source"] = audit["fallback"]
            if left["source"]["normalized_tree_sha256"] != right["source"]["normalized_tree_sha256"]:
                raise RuntimeError(f"normalized package source differs: {name}")
            package_identities[name] = {
                "NEW_PACKAGE_ROOT": left["source"],
                "FALLBACK_PACKAGE_ROOT": right["source"],
                "allowed_line_ending_differences": audit[
                    "allowed_line_ending_differences"
                ],
            }
        report["pins"] = public_pin_rows(new_pins, "NEW_PACKAGE_ROOT")
        report["fallback_pins"] = public_pin_rows(
            fallback_pins, "FALLBACK_PACKAGE_ROOT"
        )
        report["package_source_identities"] = package_identities
        prefixes = verifier.package_prefixes(manifest)
        plan_inputs = load_plan_inputs(
            verifier,
            args.import_dag.resolve(),
            args.build_plan.resolve(),
        )
        report["integral_plan"] = {
            key: value for key, value in plan_inputs.items() if key != "modules"
        }
        plan_inventory = plan_object_inventory(
            verifier,
            plan_inputs["modules"],
            package_root,
            fallback_root,
            new_pins,
            fallback_pins,
            prefixes,
        )
        verifier.write_json(raw / "plan-object-inventory.json", plan_inventory)
        report["integral_plan_object_inventory"] = {
            "path": verifier.relpath(raw / "plan-object-inventory.json", repo),
            "sha256": verifier.sha256_path(raw / "plan-object-inventory.json"),
            "summary": plan_inventory["summary"],
        }
        if plan_inventory["errors"]:
            raise RuntimeError(
                "integral plan/source/object gate failed: "
                + plan_inventory["errors"][0]
            )
        report["toolchain"] = {"declared": fixed["toolchain"]}
        version_record, version_output = verifier.run_logged(
            [str(lean), "--version"],
            ["LEAN", "--version"],
            label="lean-version",
            package_root=package_root,
            **common,
        )
        report["toolchain"]["observed"] = version_output.strip()
        report["toolchain"]["exit_code"] = version_record["exit_code"]
        if version_record["exit_code"] or "Lean (version 4.33.1" not in version_output:
            raise RuntimeError("wrong Lean version")
        report["resource_sampler"] = optional_windows_sampler(verifier, repo)
        roots = [verifier.resolve_root(item, repo) for item in args.root]
        closure, imports = verifier.build_closure(
            roots,
            repo=repo,
            index=adapter.repo_relative_source_index(verifier, repo),
            package_prefixes=prefixes,
        )
        policy = verifier.policy_check(
            closure, repo=repo, raw_root=raw, public_root=public
        )
        report["policy"] = policy
        if policy["exit_code"]:
            raise RuntimeError("source policy failed")
        report["source_closure"] = [
            {
                "source": verifier.relpath(reference.path, repo),
                "module": reference.module,
                "imports": imports.get(reference.path, []),
                "source_sha256_before": verifier.sha256_path(reference.path),
            }
            for reference in closure
        ]
        package_modules = sorted(
            {
                module
                for values in imports.values()
                for module in values
                if verifier.fixed_kind(module, prefixes) == "package"
            }
        )
        report["package_imports"] = package_modules
        report["fixed_cache_import_gate"] = {
            "new": relabel_cache_gate(
                fixed_cache_gate(verifier, new_pins, package_modules, package_root),
                "NEW_PACKAGE_ROOT",
            ),
            "fallback": relabel_cache_gate(
                fixed_cache_gate(verifier, fallback_pins, package_modules, fallback_root),
                "FALLBACK_PACKAGE_ROOT",
            ),
        }
        report["selected_package_objects"] = selected_package_objects(
            verifier,
            package_root,
            fallback_root,
            new_pins,
            fallback_pins,
            package_modules,
            prefixes,
            package_identities,
        )
        env["LEAN_PATH"] = os.pathsep.join(
            [
                str(objects),
                *[
                    str(cache_root(package_root, str(row["name"])))
                    for row in new_pins
                    if row.get("cache_exists")
                ],
                *[
                    str(cache_root(fallback_root, str(row["name"])))
                    for row in fallback_pins
                    if row.get("cache_exists")
                ],
            ]
        )
        report["lean_path_public"] = [
            verifier.relpath(objects, repo),
            "NEW_PACKAGE_ROOT/*/.lake/build/lib/lean",
            "FALLBACK_PACKAGE_ROOT/*/.lake/build/lib/lean",
        ]
        reusable = validate_reuse(
            verifier,
            repo,
            fixed,
            closure,
            imports,
            args.reuse,
            report,
        )
        report["compile_resources"] = []
        for ordinal, reference in enumerate(closure, 1):
            saved = reusable.get(reference.module)
            if saved:
                record, evidence = saved
                destination = objects.joinpath(
                    *reference.module.split(".")
                ).with_suffix(".olean")
                destination.parent.mkdir(parents=True, exist_ok=True)
                # Deliberately byte-copy.  Never hard-link a reused object into
                # the new output, and never mutate either package root.
                shutil.copyfile(repo / record["output"], destination)
                if verifier.sha256_path(destination) != record["output_sha256"]:
                    raise RuntimeError(f"reused object copy hash mismatch: {reference.module}")
                report["reuse_records"].append(
                    dict(
                        record,
                        output=verifier.relpath(destination, repo),
                        object_materialization="byte_copy_no_hardlink",
                        reused_from_output=record["output"],
                        reused_from_evidence=verifier.relpath(evidence, repo),
                    )
                )
                continue
            resources = resource_snapshot(repo)
            report["compile_resources"].append(
                {"source": verifier.relpath(reference.path, repo), **resources}
            )
            if resources["disk"][2] < MIN_FREE_BYTES:
                raise RuntimeError("D drive free space is below the 1 GiB hard gate")
            record, _ = verifier.compile_source(
                reference,
                raw_olean=objects,
                memory_mb=args.memory_mb,
                imports=imports.get(reference.path, []),
                ordinal=ordinal,
                package_root=package_root,
                **common,
            )
            report["compile_records"].append(record)
            if record["failure"]:
                raise RuntimeError(f"compile failed: {reference.module}")
        for row in report["source_closure"]:
            row["source_sha256_after"] = verifier.sha256_path(repo / row["source"])
            if row["source_sha256_before"] != row["source_sha256_after"]:
                raise RuntimeError(f"project source changed: {row['source']}")
        for name in expected_package_map(manifest):
            after_audit = source_tree_audit(
                package_root / name,
                fallback_root / name,
            )
            if (
                after_audit["errors"]
                or after_audit["new"] != new_identities[name]["source"]
                or after_audit["fallback"] != fallback_identities[name]["source"]
            ):
                raise RuntimeError(f"package source changed during verification: {name}")
        report["success"] = True
        report["exit_code"] = 0
    except (RuntimeError, OSError, ValueError, KeyError, subprocess.SubprocessError) as exc:
        report["failure"] = str(exc)
    finally:
        redact_overlay_logs(
            verifier, public, repo, package_root, fallback_root, report
        )
        report["finished_utc"] = verifier.utc_now()
        report["compiled_count"] = len(report["compile_records"])
        report["reused_count"] = len(report["reuse_records"])
        report["all_new_project_closure_compiled"] = bool(
            report["success"] and not report["reuse_records"]
        )
        verifier.write_json(public / "evidence.json", report)
        verifier.write_json(raw / "diagnostic.json", {"commands": diagnostics})
        print("EVIDENCE", verifier.relpath(public / "evidence.json", repo), flush=True)
        print(
            "RESULT",
            json.dumps(
                {
                    key: report[key]
                    for key in ("success", "exit_code", "compiled_count", "reused_count", "failure")
                }
            ),
            flush=True,
        )
    return report["exit_code"]


if __name__ == "__main__":
    raise SystemExit(main())
