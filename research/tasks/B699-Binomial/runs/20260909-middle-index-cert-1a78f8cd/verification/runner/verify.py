#!/usr/bin/env python3
"""Fresh, focused Lean verification for one or more project roots.

The verifier accepts an existing Lean 4.33.1 executable and an existing fixed
package-cache root.  It never invokes Lake, updates packages, or reuses old
project objects.  Every invocation allocates a new public evidence directory
under this run and a diagnostic/object directory below ``.tools``.
"""

from __future__ import annotations

import argparse
from monitor import measured_run
import hashlib
import json
import os
import re
import shlex
import shutil
import subprocess
import sys
import time
from dataclasses import dataclass
from datetime import datetime, timezone
from pathlib import Path
from typing import Any, Mapping, Sequence


TOOLCHAIN_PIN = "leanprover/lean4:v4.33.1"
DEFAULT_MEMORY_MB = 1536
DEFAULT_TIMEOUT_SECONDS = 120
EXPECTED_PACKAGE_COUNT = 9
ALLOWED_AXIOMS = frozenset({"propext", "Classical.choice", "Quot.sound"})
BUILTIN_PREFIXES = frozenset({"Init", "Lean", "Std", "Lake"})
PROJECT_PREFIXES = frozenset({"Math", "research"})
PACKAGE_PREFIX_ALIASES = {
    "mathlib": "Mathlib",
    "plausible": "Plausible",
    "LeanSearchClient": "LeanSearchClient",
    "importGraph": "ImportGraph",
    "proofwidgets": "ProofWidgets",
    "aesop": "Aesop",
    "Qq": "Qq",
    "batteries": "Batteries",
    "Cli": "Cli",
}

IDENT_PATTERN = r"(?:[A-Za-z_][A-Za-z0-9_']*|«[^»\r\n]+»)"
MODULE_TOKEN_RE = re.compile(rf"{IDENT_PATTERN}(?:\.{IDENT_PATTERN})*")
MODULE_SEGMENT_RE = re.compile(IDENT_PATTERN)
IMPORT_LINE_RE = re.compile(r"^\s*import\s+(.+)$")
PRINT_AXIOMS_RE = re.compile(r"^\s*#print\s+axioms\s+([^\s]+)", re.MULTILINE)
PRINT_AXIOMS_LINE_RE = re.compile(r"^\s*#print\s+axioms\s+([^\s]+)\s*$")
GUARD_MSGS_RE = re.compile(r"^\s*#guard_msgs\b", re.MULTILINE)
AXIOM_OUTPUT_RE = re.compile(
    r"(?P<list>depends\s+on\s+axioms\s*:\s*\[(?P<body>.*?)\])|"
    r"(?P<none>does\s+not\s+depend\s+on\s+any\s+axioms|"
    r"depends\s+on\s+no\s+axioms)",
    re.IGNORECASE | re.DOTALL,
)
ABSOLUTE_PATH_RE = re.compile(
    r"(?i)(?<![A-Za-z0-9_])(?:[A-Z]:[\\/]|\\\\)[^\r\n\t \"'<>]+"
)
FORBIDDEN_TOKENS = (
    "sorry",
    "sorryAx",
    "admit",
    "native_decide",
    "new_axiom",
    "newaxiom",
)
DECLARATION_RE = re.compile(
    r"^\s*(?:(?:private|protected|scoped|noncomputable|opaque|unsafe|local)\s+)*"
    r"(?:axiom|constant)\b[^\r\n]*$",
    re.MULTILINE,
)


class VerificationFailure(RuntimeError):
    """A deterministic failure that must make the final result unsuccessful."""


@dataclass(frozen=True)
class SourceRef:
    path: Path
    module: str


def utc_now() -> str:
    return datetime.now(timezone.utc).isoformat().replace("+00:00", "Z")


def sha256_path(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def inside(path: Path, parent: Path) -> bool:
    try:
        path.resolve().relative_to(parent.resolve())
    except ValueError:
        return False
    return True


def relpath(path: Path, repo: Path) -> str:
    try:
        return path.resolve().relative_to(repo.resolve()).as_posix()
    except ValueError:
        return path.as_posix()


def safe_label(value: str) -> str:
    return re.sub(r"[^A-Za-z0-9_.-]+", "_", value).strip("._") or "item"


def read_utf8(path: Path) -> str:
    return path.read_text(encoding="utf-8-sig")


def write_text(path: Path, value: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(value, encoding="utf-8")


def write_json(path: Path, value: Any) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(
        json.dumps(value, ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
    )


def mask_comments_and_strings(source: str) -> str:
    """Blank comments and string literals while preserving line positions."""

    chars = list(source)
    i = 0
    block_depth = 0
    in_string = False

    def blank(index: int) -> None:
        if chars[index] not in "\r\n":
            chars[index] = " "

    while i < len(chars):
        if block_depth:
            if source.startswith("/-", i):
                blank(i)
                if i + 1 < len(chars):
                    blank(i + 1)
                block_depth += 1
                i += 2
            elif source.startswith("-/", i):
                blank(i)
                if i + 1 < len(chars):
                    blank(i + 1)
                block_depth -= 1
                i += 2
            else:
                blank(i)
                i += 1
            continue
        if in_string:
            if source[i] == "\\":
                blank(i)
                if i + 1 < len(chars):
                    blank(i + 1)
                i += 2
            elif source[i] == '"':
                blank(i)
                in_string = False
                i += 1
            else:
                blank(i)
                i += 1
            continue
        if source.startswith("--", i):
            while i < len(chars) and chars[i] not in "\r\n":
                blank(i)
                i += 1
        elif source.startswith("/-", i):
            blank(i)
            if i + 1 < len(chars):
                blank(i + 1)
            block_depth = 1
            i += 2
        elif source[i] == '"':
            blank(i)
            in_string = True
            i += 1
        else:
            i += 1
    return "".join(chars)


def source_location(source: str, offset: int) -> tuple[int, int]:
    line = source.count("\n", 0, offset) + 1
    start = source.rfind("\n", 0, offset) + 1
    return line, offset - start + 1


def source_policy(path: Path, repo: Path) -> list[str]:
    source = read_utf8(path)
    masked = mask_comments_and_strings(source)
    violations: list[str] = []
    display = relpath(path, repo)
    for token in FORBIDDEN_TOKENS:
        pattern = re.compile(
            rf"(?<![A-Za-z0-9_']){re.escape(token)}(?![A-Za-z0-9_'])"
        )
        for match in pattern.finditer(masked):
            line, column = source_location(source, match.start())
            violations.append(
                f"{display}:{line}:{column}: forbidden token '{token}'"
            )
    for match in DECLARATION_RE.finditer(masked):
        line, column = source_location(source, match.start())
        declaration = match.group(0).strip().split(None, 1)[0]
        violations.append(
            f"{display}:{line}:{column}: explicit '{declaration}' declaration"
        )
    return violations


def normalize_module_name(value: str) -> str:
    value = value.strip().rstrip(";,\r")
    # Canonical names already contain unquoted hyphen/date segments; keep normalization idempotent.
    if "«" not in value and "»" not in value:
        return value
    segments = MODULE_SEGMENT_RE.findall(value)
    if not segments:
        return value.strip().rstrip(";,")
    return ".".join(
        segment[1:-1] if segment.startswith("«") and segment.endswith("»") else segment
        for segment in segments
    )


def module_name_for_path(path: Path, repo: Path) -> str:
    relative = path.resolve().relative_to(repo.resolve()).with_suffix("")
    return ".".join(relative.parts)


def imports_in(path: Path) -> list[str]:
    source = mask_comments_and_strings(read_utf8(path))
    imports: list[str] = []
    for line in source.splitlines():
        match = IMPORT_LINE_RE.match(line)
        if not match:
            continue
        tokens = MODULE_TOKEN_RE.findall(match.group(1))
        if not tokens:
            raise VerificationFailure(f"malformed import line in {path}")
        imports.extend(normalize_module_name(token) for token in tokens)
    return imports


def build_source_index(repo: Path) -> dict[str, list[Path]]:
    index: dict[str, list[Path]] = {}
    for root_name in PROJECT_PREFIXES:
        root = repo / root_name
        if not root.is_dir():
            continue
        for path in root.rglob("*.lean"):
            if any(part in {".git", ".lake", ".tools"} for part in path.resolve().relative_to(repo.resolve()).parts):
                continue
            index.setdefault(module_name_for_path(path, repo), []).append(path.resolve())
    return index


def is_prefix(module: str, prefix: str) -> bool:
    return module == prefix or module.startswith(prefix + ".")


def fixed_kind(module: str, package_prefixes: Mapping[str, str]) -> str | None:
    if any(is_prefix(module, prefix) for prefix in BUILTIN_PREFIXES):
        return "builtin"
    if any(is_prefix(module, prefix) for prefix in package_prefixes):
        return "package"
    return None


def resolve_project_import(
    module: str,
    *,
    index: Mapping[str, list[Path]],
    package_prefixes: Mapping[str, str],
) -> SourceRef | None:
    normalized = normalize_module_name(module)
    if any(is_prefix(normalized, prefix) for prefix in PROJECT_PREFIXES):
        candidates = list(index.get(normalized, ()))
        if len(candidates) != 1:
            if not candidates:
                raise VerificationFailure(
                    f"project import source not found: {normalized}"
                )
            raise VerificationFailure(
                "ambiguous project import "
                + normalized
                + ": "
                + ", ".join(str(path) for path in candidates)
            )
        return SourceRef(candidates[0], normalized)
    if fixed_kind(normalized, package_prefixes) is not None:
        return None
    raise VerificationFailure(
        f"unsupported import outside project or pinned packages: {normalized}"
    )


def build_closure(
    roots: Sequence[Path],
    *,
    repo: Path,
    index: Mapping[str, list[Path]],
    package_prefixes: Mapping[str, str],
) -> tuple[list[SourceRef], dict[Path, list[str]]]:
    ordered: list[SourceRef] = []
    imports: dict[Path, list[str]] = {}
    states: dict[Path, int] = {}
    names: dict[Path, str] = {}

    def visit(reference: SourceRef) -> None:
        path = reference.path.resolve()
        state = states.get(path, 0)
        if state == 1:
            raise VerificationFailure(f"cyclic project import at {relpath(path, repo)}")
        if state == 2:
            if names[path] != reference.module:
                raise VerificationFailure(
                    f"source reached under two module names: {relpath(path, repo)}"
                )
            return
        states[path] = 1
        names[path] = reference.module
        module_imports = imports_in(path)
        imports[path] = module_imports
        for module in module_imports:
            dependency = resolve_project_import(
                module,
                index=index,
                package_prefixes=package_prefixes,
            )
            if dependency is not None:
                visit(dependency)
        states[path] = 2
        ordered.append(reference)

    for root in roots:
        visit(SourceRef(root.resolve(), module_name_for_path(root, repo)))
    return ordered, imports


def decode_output(value: str | bytes | None) -> str:
    if value is None:
        return ""
    if isinstance(value, bytes):
        return value.decode("utf-8", errors="replace")
    return value


def sanitize_text(
    value: str,
    *,
    repo: Path,
    lean: Path,
    package_root: Path,
    raw_root: Path,
    public_root: Path,
) -> str:
    replacements = [
        (str(raw_root), f".tools/20260909-middle-index-cert-1a78f8cd/verification/{raw_root.name}"),
        (raw_root.as_posix(), f".tools/verification/{raw_root.name}"),
        (str(public_root), f"verification/{public_root.name}"),
        (public_root.as_posix(), f"verification/{public_root.name}"),
        (str(package_root), "PACKAGE_ROOT"),
        (package_root.as_posix(), "PACKAGE_ROOT"),
        (str(lean), "LEAN"),
        (lean.as_posix(), "LEAN"),
        (str(repo), "PROJECT_ROOT"),
        (repo.as_posix(), "PROJECT_ROOT"),
    ]
    sanitized = value
    for old, new in sorted(replacements, key=lambda item: len(item[0]), reverse=True):
        if old:
            sanitized = re.sub(re.escape(old), new, sanitized, flags=re.IGNORECASE)
    return ABSOLUTE_PATH_RE.sub("<LOCAL_PATH>", sanitized)


def allocate_outputs(repo: Path, run_dir: Path) -> tuple[Path, Path, str]:
    public_parent = run_dir / "verification"
    raw_parent = repo / ".tools" / "mid" / "verification"
    public_parent.mkdir(parents=True, exist_ok=True)
    raw_parent.mkdir(parents=True, exist_ok=True)
    base = datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%SZ")
    for suffix in ("", *[f"-{index:02d}" for index in range(1, 1000)]):
        stamp = base + suffix
        public_root = public_parent / stamp
        raw_root = raw_parent / stamp
        if public_root.exists() or raw_root.exists():
            continue
        try:
            public_root.mkdir()
            raw_root.mkdir()
        except FileExistsError:
            continue
        (public_root / "logs").mkdir()
        (raw_root / "logs").mkdir()
        (raw_root / "tmp").mkdir()
        (raw_root / "olean").mkdir()
        return public_root, raw_root, stamp
    raise VerificationFailure("could not allocate a fresh timestamped output")


def run_logged(
    command: Sequence[str],
    public_command: Sequence[str],
    *,
    label: str,
    repo: Path,
    lean: Path,
    package_root: Path,
    raw_root: Path,
    public_root: Path,
    env: Mapping[str, str],
    timeout_seconds: int,
    command_records: list[dict[str, Any]],
    diagnostic_records: list[dict[str, Any]],
) -> tuple[dict[str, Any], str]:
    started = utc_now()
    monotonic = time.monotonic()
    timed_out = False
    output = ""
    try:
        process = measured_run(
            list(command),
            cwd=repo,
            env=dict(env),
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
            text=True,
            encoding="utf-8",
            errors="replace",
            timeout=timeout_seconds,
            check=False,
        )
        output = decode_output(process.stdout)
        exit_code = process.returncode
    except subprocess.TimeoutExpired as exc:
        timed_out = True
        output = decode_output(exc.stdout) + decode_output(exc.stderr)
        exit_code = 124
    finished = utc_now()
    seconds = round(time.monotonic() - monotonic, 3)
    file_label = safe_label(label)
    raw_log = raw_root / "logs" / f"{file_label}.log"
    public_log = public_root / "logs" / f"{file_label}.log"
    raw_header = "\n".join(
        [
            f"# command: {shlex.join([str(item) for item in command])}",
            f"# cwd: {repo}",
            f"# started_utc: {started}",
            f"# finished_utc: {finished}",
            f"# exit_code: {exit_code}",
            f"# timed_out: {timed_out}",
            "",
        ]
    )
    public_header = "\n".join(
        [
            f"# command: {shlex.join([str(item) for item in public_command])}",
            "# cwd: PROJECT_ROOT",
            f"# started_utc: {started}",
            f"# finished_utc: {finished}",
            f"# exit_code: {exit_code}",
            f"# timed_out: {timed_out}",
            "",
        ]
    )
    raw_text = raw_header + output
    public_text = public_header + sanitize_text(
        output,
        repo=repo,
        lean=lean,
        package_root=package_root,
        raw_root=raw_root,
        public_root=public_root,
    )
    write_text(raw_log, raw_text)
    write_text(public_log, public_text)
    record: dict[str, Any] = {
        "label": label,
        "command": [str(item) for item in public_command],
        "command_shell": shlex.join([str(item) for item in public_command]),
        "started_utc": started,
        "finished_utc": finished,
        "seconds": seconds,
        "memory_measurement": getattr(process, "memory_measurement", None) if not timed_out else None,
        "timeout_seconds": timeout_seconds,
        "exit_code": exit_code,
        "timed_out": timed_out,
        "log": relpath(public_log, repo),
        "log_sha256": sha256_path(public_log),
        "diagnostic_log": relpath(raw_log, repo),
        "diagnostic_log_sha256": sha256_path(raw_log),
        "output_preview": sanitize_text(
            output[:4000],
            repo=repo,
            lean=lean,
            package_root=package_root,
            raw_root=raw_root,
            public_root=public_root,
        ),
    }
    diagnostic_records.append(
        {
            "label": label,
            "command": [str(item) for item in command],
            "cwd": str(repo),
            "started_utc": started,
            "finished_utc": finished,
            "seconds": seconds,
            "timeout_seconds": timeout_seconds,
            "exit_code": exit_code,
            "timed_out": timed_out,
            "log": str(raw_log),
            "log_sha256": sha256_path(raw_log),
        }
    )
    command_records.append(record)
    return record, output


def load_manifest(repo: Path) -> dict[str, Any]:
    path = repo / "lake-manifest.json"
    try:
        manifest = json.loads(read_utf8(path))
    except (OSError, json.JSONDecodeError) as exc:
        raise VerificationFailure(f"cannot read lake-manifest.json: {exc}") from exc
    if not isinstance(manifest, dict):
        raise VerificationFailure("lake-manifest.json is not an object")
    packages = manifest.get("packages")
    if not isinstance(packages, list) or len(packages) != EXPECTED_PACKAGE_COUNT:
        raise VerificationFailure(
            f"lake-manifest.json must contain exactly {EXPECTED_PACKAGE_COUNT} packages"
        )
    return manifest


def package_prefixes(manifest: Mapping[str, Any]) -> dict[str, str]:
    prefixes: dict[str, str] = {}
    for package in manifest.get("packages", []):
        if not isinstance(package, dict):
            continue
        name = str(package.get("name", ""))
        if not name:
            continue
        prefix = PACKAGE_PREFIX_ALIASES.get(name, name)
        prefixes[prefix] = name
    return prefixes


def check_packages(
    manifest: Mapping[str, Any],
    *,
    package_root: Path,
    repo: Path,
    lean: Path,
    raw_root: Path,
    public_root: Path,
    env: Mapping[str, str],
    timeout_seconds: int,
    command_records: list[dict[str, Any]],
    diagnostic_records: list[dict[str, Any]],
) -> list[dict[str, Any]]:
    if shutil.which("git") is None:
        raise VerificationFailure("git executable not found for process-local pin checks")
    records: list[dict[str, Any]] = []
    for package in manifest["packages"]:
        if not isinstance(package, dict):
            raise VerificationFailure("malformed package entry in lake-manifest.json")
        name = str(package.get("name", ""))
        expected = str(package.get("rev", ""))
        package_path = (package_root / name).resolve()
        public_package = f"PACKAGE_ROOT/{name}"
        cache_path = package_path / ".lake" / "build" / "lib" / "lean"
        record: dict[str, Any] = {
            "name": name,
            "path": public_package,
            "manifest_rev": expected,
            "input_rev": package.get("inputRev"),
            "url": package.get("url"),
            "cache_path": public_package + "/.lake/build/lib/lean",
            "cache_exists": cache_path.is_dir(),
            "safe_directory_scope": "process-local git -c only",
        }
        if not name or not expected or not package_path.is_dir():
            record.update(
                {
                    "observed_head": None,
                    "head_matches": False,
                    "clean": False,
                    "error": "missing package checkout",
                }
            )
            records.append(record)
            continue
        safe = str(package_path)
        head_command = [
            "git",
            "-c",
            f"safe.directory={safe}",
            "-C",
            safe,
            "rev-parse",
            "--verify",
            "HEAD",
        ]
        public_head_command = [
            "git",
            "-c",
            f"safe.directory={public_package}",
            "-C",
            public_package,
            "rev-parse",
            "--verify",
            "HEAD",
        ]
        head, head_output = run_logged(
            head_command,
            public_head_command,
            label=f"package-{safe_label(name)}-head",
            repo=repo,
            lean=lean,
            package_root=package_root,
            raw_root=raw_root,
            public_root=public_root,
            env=env,
            timeout_seconds=timeout_seconds,
            command_records=command_records,
            diagnostic_records=diagnostic_records,
        )
        status_command = [
            "git",
            "-c",
            f"safe.directory={safe}",
            "-C",
            safe,
            "status",
            "--porcelain=v1",
            "--branch",
        ]
        public_status_command = [
            "git",
            "-c",
            f"safe.directory={public_package}",
            "-C",
            public_package,
            "status",
            "--porcelain=v1",
            "--branch",
        ]
        status, status_output = run_logged(
            status_command,
            public_status_command,
            label=f"package-{safe_label(name)}-status",
            repo=repo,
            lean=lean,
            package_root=package_root,
            raw_root=raw_root,
            public_root=public_root,
            env=env,
            timeout_seconds=timeout_seconds,
            command_records=command_records,
            diagnostic_records=diagnostic_records,
        )
        heads = [line.strip() for line in head_output.splitlines() if line.strip()]
        observed = heads[-1] if heads else None
        changes = [
            line
            for line in status_output.splitlines()
            if line.strip() and not line.startswith("##")
        ]
        record.update(
            {
                "observed_head": observed,
                "head_matches": head["exit_code"] == 0 and observed == expected,
                "clean": status["exit_code"] == 0 and not changes,
                "status_changes": changes,
                "head_command_exit_code": head["exit_code"],
                "status_command_exit_code": status["exit_code"],
            }
        )
        records.append(record)
    return records


def package_cache_records(
    records: Sequence[Mapping[str, Any]],
    modules: Sequence[str],
    *,
    package_root: Path,
) -> list[dict[str, Any]]:
    prefix_to_packages: dict[str, list[Mapping[str, Any]]] = {}
    for record in records:
        name = str(record["name"])
        prefix = PACKAGE_PREFIX_ALIASES.get(name, name)
        prefix_to_packages.setdefault(prefix, []).append(record)
    checks: list[dict[str, Any]] = []
    for module in sorted(set(modules)):
        if any(is_prefix(module, prefix) for prefix in BUILTIN_PREFIXES):
            checks.append({"module": module, "kind": "builtin", "cache_found": None})
            continue
        matching = [
            prefix
            for prefix in prefix_to_packages
            if is_prefix(module, prefix)
        ]
        if not matching:
            raise VerificationFailure(f"no pinned package prefix for import {module}")
        prefix = max(matching, key=len)
        module_file = Path(*module.split(".")).with_suffix(".olean")
        candidates: list[dict[str, Any]] = []
        found = False
        for package in prefix_to_packages[prefix]:
            name = str(package["name"])
            cache = package_root / name / ".lake" / "build" / "lib" / "lean"
            candidate = cache / module_file
            exists = candidate.is_file()
            found = found or exists
            candidates.append(
                {
                    "package": name,
                    "path": f"PACKAGE_ROOT/{name}/.lake/build/lib/lean/{module_file.as_posix()}",
                    "exists": exists,
                }
            )
        check = {
            "module": module,
            "kind": "package",
            "package_prefix": prefix,
            "cache_candidates": candidates,
            "cache_found": found,
        }
        checks.append(check)
        if not found:
            raise VerificationFailure(
                f"fixed package cache missing for imported module {module}"
            )
    return checks


def parse_axiom_outputs(output: str) -> list[list[str]]:
    observed: list[list[str]] = []
    for match in AXIOM_OUTPUT_RE.finditer(output):
        if match.group("none") is not None:
            observed.append([])
            continue
        body = match.group("body") or ""
        names: list[str] = []
        for item in body.split(","):
            cleaned = re.sub(r"\s+", " ", item.strip()).strip("'\"")
            if cleaned:
                names.append(cleaned)
        observed.append(names)
    return observed


def classify_axiom_prints(masked: str) -> tuple[list[str], list[str], int]:
    """Classify bare prints and the supported one-line guard wrapper.

    Only an exact "#guard_msgs in" line followed by the next nonempty
    "#print axioms" line is recognized as guarded metadata. Any other guard
    shape fails closed so hidden output is never inferred.
    """

    bare: list[str] = []
    guarded: list[str] = []
    guard_count = 0
    guard_pending = False
    for line in masked.splitlines():
        stripped = line.strip()
        if not stripped:
            continue
        if stripped.startswith("#guard_msgs"):
            if stripped != "#guard_msgs in" or guard_pending:
                raise VerificationFailure(
                    "unsupported #guard_msgs form; expected a standalone guard "
                    "line before a #print axioms line"
                )
            guard_pending = True
            guard_count += 1
            continue
        match = PRINT_AXIOMS_LINE_RE.fullmatch(line)
        if match is not None:
            if guard_pending:
                guarded.append(match.group(1))
                guard_pending = False
            else:
                bare.append(match.group(1))
            continue
        if guard_pending:
            raise VerificationFailure(
                "unsupported #guard_msgs body; expected the next nonempty "
                "line to be #print axioms"
            )
        if "#guard_msgs" in stripped:
            raise VerificationFailure("unsupported #guard_msgs placement")
        if "#print axioms" in stripped:
            raise VerificationFailure("malformed #print axioms declaration")
    if guard_pending:
        raise VerificationFailure("unterminated #guard_msgs in wrapper")
    return bare, guarded, guard_count


def audit_axioms(source: Path, output: str) -> dict[str, Any]:
    text = read_utf8(source)
    masked = mask_comments_and_strings(text)
    observed = parse_axiom_outputs(output)
    guard_count = len(GUARD_MSGS_RE.findall(masked))
    try:
        declarations, guarded_declarations, classified_guard_count = (
            classify_axiom_prints(masked)
        )
        guard_count = classified_guard_count
        classification_error: str | None = None
    except VerificationFailure as error:
        declarations = []
        guarded_declarations = []
        classification_error = str(error)
    entries = [
        {
            "declared_name": declarations[index] if index < len(declarations) else None,
            "axioms": names,
        }
        for index, names in enumerate(observed)
    ]
    unexpected = sorted(
        {
            name
            for names in observed
            for name in names
            if name not in ALLOWED_AXIOMS
        }
    )
    result: dict[str, Any] = {
        "declared_print_axioms": len(declarations),
        "declared_names": declarations,
        "guarded_print_axioms": len(guarded_declarations),
        "guarded_names": guarded_declarations,
        "actual_printed": len(observed),
        "guard_msgs_in_source": guard_count,
        "printed": entries,
        "unexpected_axioms": unexpected,
        "guarded_output_inferred": False,
    }
    if classification_error is not None:
        result["error"] = classification_error
    elif len(declarations) != len(observed):
        result["error"] = (
            "#print axioms output count mismatch for unguarded declarations: "
            f"source={len(declarations)} actual={len(observed)}"
        )
    elif unexpected:
        result["error"] = "unexpected axioms: " + ", ".join(unexpected)
    return result

def policy_check(
    closure: Sequence[SourceRef],
    *,
    repo: Path,
    public_root: Path,
    raw_root: Path,
) -> dict[str, Any]:
    violations: list[str] = []
    lines = [f"exact project closure files: {len(closure)}"]
    for reference in closure:
        path = reference.path
        lines.append(relpath(path, repo))
        violations.extend(source_policy(path, repo))
    if violations:
        lines.extend(["", "policy violations:", *violations])
    else:
        lines.extend(["", "Source policy passed for exact project closure."])
    content = "\n".join(lines) + "\n"
    public_log = public_root / "logs" / "source-policy.log"
    raw_log = raw_root / "logs" / "source-policy.log"
    write_text(public_log, content)
    write_text(raw_log, content)
    return {
        "files": len(closure),
        "violations": violations,
        "exit_code": 1 if violations else 0,
        "log": relpath(public_log, repo),
        "log_sha256": sha256_path(public_log),
        "diagnostic_log": relpath(raw_log, repo),
        "diagnostic_log_sha256": sha256_path(raw_log),
    }


def compile_source(
    reference: SourceRef,
    *,
    repo: Path,
    lean: Path,
    package_root: Path,
    raw_root: Path,
    public_root: Path,
    raw_olean: Path,
    env: Mapping[str, str],
    memory_mb: int,
    timeout_seconds: int,
    imports: Sequence[str],
    command_records: list[dict[str, Any]],
    diagnostic_records: list[dict[str, Any]],
    ordinal: int,
) -> tuple[dict[str, Any], str]:
    source = reference.path
    before = sha256_path(source)
    snapshot = public_root / "sources" / (before + "-" + source.name + ".txt")
    snapshot.parent.mkdir(parents=True, exist_ok=True)
    snapshot.write_bytes(source.read_bytes())
    output_path = raw_olean.joinpath(*reference.module.split(".")).with_suffix(".olean")
    output_path.parent.mkdir(parents=True, exist_ok=True)
    if output_path.exists():
        raise VerificationFailure(
            f"fresh project output unexpectedly exists: {relpath(output_path, repo)}"
        )
    command = [
        str(lean),
        "-j1",
        f"-M{memory_mb}",
        "-DautoImplicit=false",
        "-DrelaxedAutoImplicit=false",
        f"--root={repo}",
        "-o",
        str(output_path),
        str(source),
    ]
    public_command = [
        "LEAN",
        "-j1",
        f"-M{memory_mb}",
        "-DautoImplicit=false",
        "-DrelaxedAutoImplicit=false",
        "--root=PROJECT_ROOT",
        "-o",
        relpath(output_path, repo),
        relpath(source, repo),
    ]
    command_record, output = run_logged(
        command,
        public_command,
        label=f"compile-{ordinal:04d}-{safe_label(relpath(source, repo))}",
        repo=repo,
        lean=lean,
        package_root=package_root,
        raw_root=raw_root,
        public_root=public_root,
        env=env,
        timeout_seconds=timeout_seconds,
        command_records=command_records,
        diagnostic_records=diagnostic_records,
    )
    after = sha256_path(source)
    output_exists = output_path.is_file()
    axiom_result = audit_axioms(source, output)
    record: dict[str, Any] = {
        "source": relpath(source, repo),
        "module": reference.module,
        "imports": list(imports),
        "source_sha256_before": before,
        "source_sha256_after": after,
        "source_snapshot": relpath(snapshot, repo),
        "output": relpath(output_path, repo),
        "output_exists": output_exists,
        "output_sha256": sha256_path(output_path) if output_exists else None,
        "command": command_record["command"],
        "command_shell": command_record["command_shell"],
        "started_utc": command_record["started_utc"],
        "finished_utc": command_record["finished_utc"],
        "seconds": command_record["seconds"],
        "timeout_seconds": timeout_seconds,
        "exit_code": command_record["exit_code"],
        "timed_out": command_record["timed_out"],
        "log": command_record["log"],
        "log_sha256": command_record["log_sha256"],
        "diagnostic_log": command_record["diagnostic_log"],
        "diagnostic_log_sha256": command_record["diagnostic_log_sha256"],
        "axiom_audit": axiom_result,
    }
    failures: list[str] = []
    if before != after:
        failures.append("source changed during compile")
    if command_record["timed_out"]:
        failures.append("compile timeout")
    elif command_record["exit_code"] != 0:
        failures.append(f"Lean exit {command_record['exit_code']}")
    if not output_exists and command_record["exit_code"] == 0:
        failures.append("Lean returned success without producing an olean")
    if axiom_result.get("error"):
        failures.append(str(axiom_result["error"]))
    record["failure"] = "; ".join(failures) if failures else None
    return record, output


def find_repo(script_path: Path, explicit: str | None) -> Path:
    if explicit:
        candidate = Path(explicit).expanduser()
        if not candidate.is_absolute():
            candidate = Path.cwd() / candidate
        candidate = candidate.resolve()
        if not (candidate / "lake-manifest.json").is_file():
            raise VerificationFailure(
                f"--project-root has no lake-manifest.json: {candidate}"
            )
        return candidate
    for candidate in (script_path.parent, *script_path.parents):
        if (candidate / "lake-manifest.json").is_file() and (
            candidate / "lean-toolchain"
        ).is_file():
            return candidate.resolve()
    raise VerificationFailure(
        "could not derive repository root from script location; pass --project-root"
    )


def resolve_executable(value: str, repo: Path) -> Path:
    candidate = Path(value).expanduser()
    if not candidate.is_absolute():
        local = (repo / candidate).resolve()
        if local.is_file():
            return local
        found = shutil.which(value)
        if found:
            return Path(found).resolve()
    if candidate.is_file():
        return candidate.resolve()
    raise VerificationFailure(f"Lean executable not found: {value}")


def resolve_directory(value: str, repo: Path, label: str) -> Path:
    candidate = Path(value).expanduser()
    if not candidate.is_absolute():
        candidate = repo / candidate
    candidate = candidate.resolve()
    if not candidate.is_dir():
        raise VerificationFailure(f"{label} directory not found: {candidate}")
    return candidate


def resolve_root(value: str, repo: Path) -> Path:
    candidate = Path(value).expanduser()
    if candidate.is_absolute():
        raise VerificationFailure(f"--root must be relative to project root: {value}")
    resolved = (repo / candidate).resolve()
    if not inside(resolved, repo):
        raise VerificationFailure(f"--root escapes project root: {value}")
    relative = resolved.relative_to(repo).parts
    if not relative or relative[0] not in PROJECT_PREFIXES:
        raise VerificationFailure(
            f"--root must be below Math/ or research/: {value}"
        )
    if not resolved.is_file() or resolved.suffix != ".lean":
        raise VerificationFailure(f"--root is not a Lean source file: {value}")
    return resolved


def parse_args(argv: Sequence[str]) -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--lean", required=True, help="existing Lean 4.33.1 executable")
    parser.add_argument(
        "--package-root",
        required=True,
        help="existing fixed package checkout root, normally .lake/packages",
    )
    parser.add_argument(
        "--root",
        action="append",
        required=True,
        help="relative Lean project root below Math/ or research/; repeatable",
    )
    parser.add_argument(
        "--memory-mb",
        type=int,
        default=DEFAULT_MEMORY_MB,
        help=f"Lean per-process memory limit in MB (default: {DEFAULT_MEMORY_MB})",
    )
    parser.add_argument(
        "--timeout",
        type=int,
        default=DEFAULT_TIMEOUT_SECONDS,
        help=f"per-command timeout in seconds (default: {DEFAULT_TIMEOUT_SECONDS})",
    )
    parser.add_argument(
        "--project-root",
        help="explicit repository root; otherwise derive it from this script location",
    )
    args = parser.parse_args(argv)
    if args.memory_mb <= 0:
        parser.error("--memory-mb must be positive")
    if args.timeout <= 0:
        parser.error("--timeout must be positive")
    return args


def main(argv: Sequence[str] | None = None) -> int:
    args = parse_args(sys.argv[1:] if argv is None else argv)
    script_path = Path(__file__).resolve()
    try:
        repo = find_repo(script_path, args.project_root)
    except (VerificationFailure, OSError) as exc:
        print(f"verification failed before repository discovery: {exc}", file=sys.stderr)
        return 1

    run_dir = script_path.parent.parent.parent
    public_root: Path | None = None
    raw_root: Path | None = None
    lean_for_diagnostic = args.lean
    package_root_for_diagnostic = args.package_root
    command_records: list[dict[str, Any]] = []
    diagnostic_records: list[dict[str, Any]] = []
    report: dict[str, Any] = {
        "schema_version": 1,
        "success": False,
        "exit_code": 1,
        "started_utc": utc_now(),
        "finished_utc": None,
        "project_root": "PROJECT_ROOT",
        "evidence_directory": None,
        "diagnostic_directory": None,
        "argv_public": {
            "lean": "LEAN",
            "package_root": "PACKAGE_ROOT",
            "project_root": "PROJECT_ROOT",
            "roots": list(args.root),
            "memory_mb": args.memory_mb,
            "timeout_seconds": args.timeout,
        },
        "memory_mb": args.memory_mb,
        "timeout_seconds": args.timeout,
        "toolchain": None,
        "manifest_sha256": None,
        "pins": [],
        "source_closure": [],
        "package_imports": [],
        "fixed_cache_imports": [],
        "policy": None,
        "compile_records": [],
        "axiom_audit": [],
        "commands": command_records,
        "command_count": 0,
        "fixed_dependency_cache_reused": False,
        "all_new_project_closure_compiled": False,
        "independent_checker_used": False,
        "failure": None,
    }
    try:
        public_root, raw_root, stamp = allocate_outputs(repo, run_dir)
        raw_olean = raw_root / "olean"
        raw_tmp = raw_root / "tmp"
        report.update(
            {
                "stamp": stamp,
                "evidence_directory": relpath(public_root, repo),
                "diagnostic_directory": relpath(raw_root, repo),
                "fresh_output": True,
                "lean_path_public": [relpath(raw_olean, repo), "PACKAGE_CACHE_ROOTS"],
                "environment_scope": None,
            }
        )
        lean = resolve_executable(args.lean, repo)
        lean_for_diagnostic = str(lean)
        package_root = resolve_directory(args.package_root, repo, "--package-root")
        package_root_for_diagnostic = str(package_root)
        roots = [resolve_root(value, repo) for value in args.root]
        report["root_sources"] = [relpath(path, repo) for path in roots]

        manifest = load_manifest(repo)
        manifest_path = repo / "lake-manifest.json"
        report["manifest_sha256"] = sha256_path(manifest_path)
        declared_toolchain = read_utf8(repo / "lean-toolchain").strip()
        if declared_toolchain != TOOLCHAIN_PIN:
            raise VerificationFailure(
                f"lean-toolchain is {declared_toolchain!r}, expected {TOOLCHAIN_PIN!r}"
            )
        env = dict(os.environ)
        raw_mathlib_cache = raw_root / "mathlib-cache"
        raw_mathlib_cache.mkdir()
        env["TEMP"] = str(raw_tmp)
        env["TMP"] = str(raw_tmp)
        env["TMPDIR"] = str(raw_tmp)
        env["MATHLIB_CACHE_DIR"] = str(raw_mathlib_cache)
        report["environment_scope"] = {
            "TEMP": relpath(raw_tmp, repo),
            "TMP": relpath(raw_tmp, repo),
            "TMPDIR": relpath(raw_tmp, repo),
            "MATHLIB_CACHE_DIR": relpath(raw_mathlib_cache, repo),
            "safe_directory": "each package path passed with process-local git -c only",
            "project_objects": relpath(raw_olean, repo),
            "fixed_dependency_objects": "PACKAGE_ROOT/*/.lake/build/lib/lean",
        }
        cache_roots: list[Path] = []
        package_records = check_packages(
            manifest,
            package_root=package_root,
            repo=repo,
            lean=lean,
            raw_root=raw_root,
            public_root=public_root,
            env=env,
            timeout_seconds=args.timeout,
            command_records=command_records,
            diagnostic_records=diagnostic_records,
        )
        report["pins"] = package_records
        bad_pins = [
            row
            for row in package_records
            if not row.get("head_matches", False) or not row.get("clean", False)
        ]
        if bad_pins:
            raise VerificationFailure(
                "pinned package HEAD mismatch, dirty checkout, or missing package: "
                + ", ".join(str(row.get("name")) for row in bad_pins)
            )
        for row in package_records:
            cache = package_root / str(row["name"]) / ".lake" / "build" / "lib" / "lean"
            if cache.is_dir():
                cache_roots.append(cache.resolve())

        version_record, version_output = run_logged(
            [str(lean), "--version"],
            ["LEAN", "--version"],
            label="lean-version",
            repo=repo,
            lean=lean,
            package_root=package_root,
            raw_root=raw_root,
            public_root=public_root,
            env=env,
            timeout_seconds=args.timeout,
            command_records=command_records,
            diagnostic_records=diagnostic_records,
        )
        observed_version = version_output.strip()
        report["toolchain"] = {
            "declared": declared_toolchain,
            "observed": sanitize_text(
                observed_version,
                repo=repo,
                lean=lean,
                package_root=package_root,
                raw_root=raw_root,
                public_root=public_root,
            ),
            "command": version_record["command"],
            "exit_code": version_record["exit_code"],
            "log": version_record["log"],
            "log_sha256": version_record["log_sha256"],
        }
        if version_record["exit_code"] != 0 or "Lean (version 4.33.1" not in version_output:
            raise VerificationFailure("provided Lean executable is not verified as 4.33.1")

        exact_index = build_source_index(repo)
        prefixes = package_prefixes(manifest)
        closure, imports = build_closure(
            roots,
            repo=repo,
            index=exact_index,
            package_prefixes=prefixes,
        )
        report["source_closure"] = [
            {
                "source": relpath(reference.path, repo),
                "module": reference.module,
                "imports": imports.get(reference.path, []),
                "source_sha256_before": sha256_path(reference.path),
                "source_sha256_after": None,
            }
            for reference in closure
        ]
        policy = policy_check(
            closure,
            repo=repo,
            public_root=public_root,
            raw_root=raw_root,
        )
        report["policy"] = policy
        if policy["exit_code"]:
            raise VerificationFailure("static Lean source policy failed")

        package_modules = sorted(
            {
                module
                for values in imports.values()
                for module in values
                if fixed_kind(module, prefixes) == "package"
            }
        )
        report["package_imports"] = package_modules
        cache_checks = package_cache_records(
            package_records,
            package_modules,
            package_root=package_root,
        )
        report["fixed_cache_imports"] = cache_checks
        report["fixed_dependency_cache_reused"] = True
        env["LEAN_PATH"] = os.pathsep.join(
            [str(raw_olean), *[str(path) for path in cache_roots]]
        )
        report["lean_path_public"] = [
            relpath(raw_olean, repo),
            *[
                f"PACKAGE_ROOT/{row['name']}/.lake/build/lib/lean"
                for row in package_records
                if row.get("cache_exists")
            ],
        ]
        report["environment_scope"]["LEAN_PATH"] = report["lean_path_public"]
        for ordinal, reference in enumerate(closure, start=1):
            record, _output = compile_source(
                reference,
                repo=repo,
                lean=lean,
                package_root=package_root,
                raw_root=raw_root,
                public_root=public_root,
                raw_olean=raw_olean,
                env=env,
                memory_mb=args.memory_mb,
                timeout_seconds=args.timeout,
                imports=imports.get(reference.path, []),
                command_records=command_records,
                diagnostic_records=diagnostic_records,
                ordinal=ordinal,
            )
            report["compile_records"].append(record)
            report["axiom_audit"].append(
                {
                    "source": record["source"],
                    "module": record["module"],
                    **record["axiom_audit"],
                }
            )
            for source_record in report["source_closure"]:
                if source_record["source"] == record["source"]:
                    source_record["source_sha256_after"] = record[
                        "source_sha256_after"
                    ]
                    break
            if record["failure"]:
                raise VerificationFailure(
                    f"compile failed for {record['source']}: {record['failure']}"
                )
        if len(report["compile_records"]) != len(closure):
            raise VerificationFailure("project closure compile count mismatch")
        report["compiled_count"] = len(report["compile_records"])
        report["all_new_project_closure_compiled"] = True
        report["success"] = True
        report["exit_code"] = 0
    except (VerificationFailure, OSError, subprocess.SubprocessError, ValueError) as exc:
        report["failure"] = str(exc)
        report["success"] = False
        report["exit_code"] = 1
    finally:
        report["finished_utc"] = utc_now()
        report["command_count"] = len(command_records)
        if public_root is not None and raw_root is not None:
            write_json(public_root / "evidence.json", report)
            write_json(public_root / "package-pins.json", report.get("pins", []))
            write_json(
                public_root / "source-closure.json", report.get("source_closure", [])
            )
            write_json(
                raw_root / "diagnostic.json",
                {
                    "schema_version": 1,
                    "repository": str(repo),
                    "lean": lean_for_diagnostic,
                    "package_root": package_root_for_diagnostic,
                    "roots": [str(item) for item in args.root],
                    "memory_mb": args.memory_mb,
                    "timeout_seconds": args.timeout,
                    "commands": diagnostic_records,
                },
            )
    if public_root is None:
        print("verification failed before output allocation", file=sys.stderr)
    else:
        print(f"verification output: {relpath(public_root, repo)}")
        print(f"verification success: {report['success']} (exit {report['exit_code']})")
        if report["failure"]:
            print(f"failure: {report['failure']}", file=sys.stderr)
    return int(report["exit_code"])


if __name__ == "__main__":
    raise SystemExit(main())




