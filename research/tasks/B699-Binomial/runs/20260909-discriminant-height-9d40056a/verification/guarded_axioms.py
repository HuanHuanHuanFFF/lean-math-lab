#!/usr/bin/env python3
"""Strict supplementary axiom audit for the one legacy guarded module.

The legacy source puts its four ``#print axioms`` commands below
``#guard_msgs``.  Lean therefore checks the messages without emitting them on
stdout, while the frozen verifier deliberately audits stdout only.  This
module supplies a temporary consumer which imports the already-built legacy
object and prints the four declarations directly.

The source and hash gate in this file is intentionally narrow.  A caller must
keep the ordinary frozen audit result for every other source, including an
unknown guarded module or a changed copy of this one.
"""

from __future__ import annotations

import hashlib
import json
import re
import shlex
import subprocess
import time
from datetime import datetime, timezone
from pathlib import Path
from typing import Any, Callable, Mapping, Sequence


GUARDED_SOURCE = Path(
    "research/tasks/B686-Four/formalization/PrimeCounting/LinearPrimeCounting.lean"
)
GUARDED_SOURCE_SHA256 = (
    "e5a6a6cc4d10206edbd4e226106d1862f720542f84aa4398b62a624fdab6902a"
)
GUARDED_MODULE = "research.tasks.B686-Four.formalization.PrimeCounting.LinearPrimeCounting"
GUARDED_IMPORT = "research.tasks.«B686-Four».formalization.PrimeCounting.LinearPrimeCounting"
GUARDED_PRINT_NAMES = (
    "B686PrimeCounting.wheel_data_certificate",
    "B686PrimeCounting.wheel_count_linear",
    "B686PrimeCounting.prime_count_le_wheel_add_five",
    "B686PrimeCounting.prime_counting_linear",
)

_IDENTIFIER = re.compile(r"[A-Za-z_][A-Za-z0-9_']*\Z")


def sha256_path(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def _relative(path: Path, repo: Path) -> str | None:
    try:
        return path.resolve().relative_to(repo.resolve()).as_posix()
    except ValueError:
        return None


def source_identity(path: Path, repo: Path) -> dict[str, Any]:
    """Return the evidence used by the fixed-source gate.

    The relative path and bytes are both checked.  In particular, a matching
    module name or a matching comment is never sufficient.
    """

    relative = _relative(path, repo)
    exists = path.is_file()
    actual_hash = sha256_path(path) if exists else None
    path_matches = relative == GUARDED_SOURCE.as_posix()
    hash_matches = actual_hash == GUARDED_SOURCE_SHA256
    return {
        "source": relative if relative is not None else str(path),
        "expected_source": GUARDED_SOURCE.as_posix(),
        "source_sha256": actual_hash,
        "expected_sha256": GUARDED_SOURCE_SHA256,
        "path_matches": path_matches,
        "hash_matches": hash_matches,
        "supported": bool(exists and path_matches and hash_matches),
    }


def is_supported_source(path: Path, repo: Path) -> bool:
    return bool(source_identity(path, repo)["supported"])


def is_exact_guarded_source_audit(
    audit: Mapping[str, Any] | None, failure: str | None
) -> bool:
    """Whether the frozen source failure is exactly the known four-guard case."""

    if not isinstance(audit, Mapping):
        return False
    expected_error = "#print axioms output count mismatch: source=4 actual=0"
    return bool(
        audit.get("declared_print_axioms") == 4
        and audit.get("actual_printed") == 0
        and audit.get("guard_msgs_in_source") == 4
        and audit.get("unexpected_axioms") == []
        and audit.get("error") == expected_error
        and failure == expected_error
    )


def companion_source() -> str:
    lines = [f"import {GUARDED_IMPORT}", ""]
    lines.extend(f"#print axioms {name}" for name in GUARDED_PRINT_NAMES)
    return "\n".join(lines) + "\n"


def _safe_label(value: str) -> str:
    return re.sub(r"[^A-Za-z0-9_.-]+", "_", value).strip("._") or "guarded-axioms"


def _utc_now() -> str:
    return datetime.now(timezone.utc).isoformat().replace("+00:00", "Z")


def _write_text(path: Path, value: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(value, encoding="utf-8")


def _write_json(path: Path, value: Any) -> None:
    _write_text(path, json.dumps(value, ensure_ascii=False, indent=2) + "\n")


def _sanitize_output(value: str, sanitizer: Callable[[str], str] | None) -> str:
    return sanitizer(value) if sanitizer is not None else value


def audit_companion(
    source: Path,
    output: str,
    audit_axioms: Callable[[Path, str], dict[str, Any]],
) -> dict[str, Any]:
    """Apply the frozen parser and add strict companion-specific checks."""

    result = dict(audit_axioms(source, output))
    errors: list[str] = []
    if result.get("error"):
        errors.append(str(result["error"]))
    if result.get("declared_names") != list(GUARDED_PRINT_NAMES):
        errors.append(
            "companion declarations do not match the fixed four names: "
            + repr(result.get("declared_names"))
        )
    if result.get("declared_print_axioms") != len(GUARDED_PRINT_NAMES):
        errors.append(
            "companion declaration count is "
            + str(result.get("declared_print_axioms"))
        )
    if result.get("actual_printed") != len(GUARDED_PRINT_NAMES):
        errors.append(
            "companion actual output count is " + str(result.get("actual_printed"))
        )
    if result.get("guard_msgs_in_source"):
        errors.append("companion source unexpectedly contains #guard_msgs")
    if result.get("guarded_output_inferred") is not False:
        errors.append("companion audit may not infer output from guarded messages")
    if result.get("unexpected_axioms"):
        errors.append(
            "companion unexpected axioms: "
            + ", ".join(map(str, result["unexpected_axioms"]))
        )
    if errors:
        result["error"] = "; ".join(dict.fromkeys(errors))
    else:
        result.pop("error", None)
    result["supplementary_audit"] = True
    result["supplementary_audit_passed"] = not errors
    return result


def _default_public_command(command: Sequence[str], repo: Path) -> list[str]:
    """Make a readable command when no frozen ``run_logged`` is supplied."""

    result = [str(item) for item in command]
    repo_text = str(repo.resolve())
    result = [item.replace(repo_text, "PROJECT_ROOT") for item in result]
    return result


def run_guarded_companion(
    *,
    repo: Path,
    source: Path,
    lean: Path | str,
    package_root: Path,
    env: Mapping[str, str],
    public_root: Path,
    raw_root: Path,
    memory_mb: int,
    timeout_seconds: int,
    audit_axioms: Callable[[Path, str], dict[str, Any]],
    label: str,
    compile_prefix: Sequence[str] | None = None,
    compile_flags: Sequence[str] | None = None,
    public_prefix: Sequence[str] | None = None,
    public_flags: Sequence[str] | None = None,
    run_logged: Callable[..., tuple[dict[str, Any], str]] | None = None,
    command_records: list[dict[str, Any]] | None = None,
    diagnostic_records: list[dict[str, Any]] | None = None,
    sanitize_output: Callable[[str], str] | None = None,
) -> dict[str, Any]:
    """Compile and audit a temporary consumer of the fixed legacy object.

    ``run_logged`` is the frozen verifier's runner when called from fresh
    acceptance.  Development mode may omit it; this function then runs the
    exact supplied compiler prefix itself and writes equivalent evidence.
    The caller is responsible for having compiled the legacy source first and
    for setting ``LEAN_PATH`` to that source's object root.
    """

    identity = source_identity(source, repo)
    base: dict[str, Any] = {
        "supported_source": identity,
        "module": GUARDED_MODULE,
        "import": GUARDED_IMPORT,
        "printed_names": list(GUARDED_PRINT_NAMES),
        "success": False,
    }
    if not identity["supported"]:
        base["failure"] = "guarded companion source/hash gate rejected source"
        return base

    safe = _safe_label(label)
    public_dir = public_root / "guarded-axioms" / safe
    raw_dir = raw_root / "guarded-axioms" / safe
    public_dir.mkdir(parents=True, exist_ok=True)
    raw_dir.mkdir(parents=True, exist_ok=True)
    public_source = public_dir / "companion.lean"
    raw_source = raw_dir / "companion.lean"
    source_text = companion_source()
    _write_text(public_source, source_text)
    _write_text(raw_source, source_text)
    companion_source_sha256_before = sha256_path(raw_source)
    output_path = raw_dir / "companion.olean"

    compiler = [str(item) for item in (compile_prefix or [str(lean)])]
    flags = [
        str(item)
        for item in (
            compile_flags
            if compile_flags is not None
            else [
                "-j1",
                f"-M{memory_mb}",
                "-DautoImplicit=false",
                "-DrelaxedAutoImplicit=false",
            ]
        )
    ]
    command = [
        *compiler,
        *flags,
        f"--root={repo}",
        "-o",
        str(output_path),
        str(raw_source),
    ]
    public_command = [
        *[
            str(item)
            for item in (public_prefix if public_prefix is not None else ["LEAN"])
        ],
        *[
            str(item)
            for item in (public_flags if public_flags is not None else flags)
        ],
        "--root=PROJECT_ROOT",
        "-o",
        "GUARDED_COMPANION/companion.olean",
        "GUARDED_COMPANION/companion.lean",
    ]

    command_record: dict[str, Any]
    output: str
    if run_logged is not None:
        if command_records is None or diagnostic_records is None:
            raise ValueError("frozen run_logged requires command and diagnostic lists")
        command_record, output = run_logged(
            command,
            public_command,
            label=safe,
            repo=repo,
            lean=Path(lean),
            package_root=package_root,
            raw_root=raw_root,
            public_root=public_root,
            env=env,
            timeout_seconds=timeout_seconds,
            command_records=command_records,
            diagnostic_records=diagnostic_records,
        )
    else:
        started = _utc_now()
        started_mono = time.monotonic()
        timed_out = False
        try:
            process = subprocess.run(
                command,
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
            output = process.stdout or ""
            exit_code = process.returncode
        except subprocess.TimeoutExpired as exc:
            timed_out = True
            output = exc.stdout or ""
            if isinstance(output, bytes):
                output = output.decode(errors="replace")
            exit_code = 124
            output += "\nTIMEOUT\n"
        finished = _utc_now()
        command_record = {
            "label": safe,
            "command": public_command,
            "command_shell": shlex.join(public_command),
            "started_utc": started,
            "finished_utc": finished,
            "seconds": round(time.monotonic() - started_mono, 3),
            "timeout_seconds": timeout_seconds,
            "exit_code": exit_code,
            "timed_out": timed_out,
            "log": str(public_dir / "companion.log"),
        }
        if command_records is not None:
            command_records.append(command_record)
        if diagnostic_records is not None:
            diagnostic_records.append(
                {
                    **command_record,
                    "command": command,
                    "cwd": str(repo),
                    "log": str(raw_dir / "companion.log"),
                }
            )

    public_output = _sanitize_output(output, sanitize_output)
    _write_text(raw_dir / "actual-output.txt", output)
    _write_text(public_dir / "actual-output.txt", public_output)
    if run_logged is None:
        header = "\n".join(
            [
                f"# command: {shlex.join(command)}",
                f"# exit_code: {command_record['exit_code']}",
                f"# timed_out: {command_record['timed_out']}",
                "",
            ]
        )
        _write_text(raw_dir / "companion.log", header + output)
        _write_text(public_dir / "companion.log", header + public_output)

    audit = audit_companion(raw_source, output, audit_axioms)
    output_exists = output_path.is_file()
    source_after = sha256_path(source)
    companion_source_sha256_after = sha256_path(raw_source)
    compile_error: str | None = None
    if command_record.get("timed_out"):
        compile_error = "companion compile timeout"
    elif command_record.get("exit_code") != 0:
        compile_error = f"companion Lean exit {command_record.get('exit_code')}"
    elif not output_exists:
        compile_error = "companion Lean returned success without an olean"
    if source_after != GUARDED_SOURCE_SHA256:
        compile_error = (compile_error + "; " if compile_error else "") + (
            "guarded source changed during companion compile"
        )
    if companion_source_sha256_before != companion_source_sha256_after:
        compile_error = (compile_error + "; " if compile_error else "") + (
            "companion source changed during compile"
        )
    if audit.get("error"):
        compile_error = (compile_error + "; " if compile_error else "") + str(
            audit["error"]
        )

    result = {
        **base,
        "source_sha256_before": identity["source_sha256"],
        "source_sha256_after": source_after,
        "source": identity["source"],
        "companion_source": str(public_source),
        "diagnostic_companion_source": str(raw_source),
        "companion_source_sha256_before": companion_source_sha256_before,
        "companion_source_sha256_after": companion_source_sha256_after,
        "output": str(output_path),
        "output_exists": output_exists,
        "output_sha256": sha256_path(output_path) if output_exists else None,
        "command": command_record.get("command", public_command),
        "command_shell": command_record.get("command_shell", shlex.join(public_command)),
        "exit_code": command_record.get("exit_code"),
        "timed_out": command_record.get("timed_out", False),
        "log": command_record.get("log", str(public_dir / "companion.log")),
        "actual_output": str(public_dir / "actual-output.txt"),
        "actual_output_sha256": sha256_path(public_dir / "actual-output.txt"),
        "diagnostic_actual_output": str(raw_dir / "actual-output.txt"),
        "axiom_audit": audit,
        "failure": compile_error,
        "success": compile_error is None,
    }
    _write_json(public_dir / "companion.json", result)
    _write_json(raw_dir / "companion.json", {**result, "command": command})
    return result


__all__ = [
    "GUARDED_SOURCE",
    "GUARDED_SOURCE_SHA256",
    "GUARDED_MODULE",
    "GUARDED_IMPORT",
    "GUARDED_PRINT_NAMES",
    "audit_companion",
    "companion_source",
    "is_exact_guarded_source_audit",
    "is_supported_source",
    "run_guarded_companion",
    "sha256_path",
    "source_identity",
]
