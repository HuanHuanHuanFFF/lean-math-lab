#!/usr/bin/env python3
"""Summarize recorded Lean compile costs without changing verification evidence.

The verifier stores resource measurements on command records while compile
records store source/object hashes and axiom audits.  This utility joins those
records by their exact public command.  It never runs Lean, and it refuses to
overwrite an existing output file.
"""

from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path
from typing import Any, Mapping, Sequence


def _as_mapping(value: Any) -> Mapping[str, Any] | None:
    return value if isinstance(value, Mapping) else None


def _as_list(value: Any) -> list[Any]:
    return list(value) if isinstance(value, list) else []


def _resolve_evidence(value: str | None, script_path: Path) -> Path:
    if value is None:
        value_path = script_path.parent.parent.parent / "verification"
    else:
        value_path = Path(value)
    value_path = value_path.expanduser().resolve()
    if value_path.is_file():
        return value_path
    if not value_path.is_dir():
        raise ValueError(f"input does not exist: {value_path}")
    direct = value_path / "evidence.json"
    if direct.is_file():
        return direct.resolve()
    candidates = sorted(
        candidate / "evidence.json"
        for candidate in value_path.iterdir()
        if candidate.is_dir() and (candidate / "evidence.json").is_file()
    )
    if not candidates:
        raise ValueError(f"no evidence.json found below: {value_path}")
    if len(candidates) > 1:
        joined = ", ".join(str(candidate) for candidate in candidates)
        raise ValueError(
            "verification directory contains multiple evidence files; "
            f"pass one evidence.json explicitly: {joined}"
        )
    return candidates[0].resolve()


def _command_key(command: Any) -> tuple[str, ...] | None:
    if not isinstance(command, list):
        return None
    return tuple(str(item) for item in command)


def _index_commands(commands: Sequence[Any]) -> dict[tuple[str, ...], list[Mapping[str, Any]]]:
    index: dict[tuple[str, ...], list[Mapping[str, Any]]] = {}
    for command in commands:
        record = _as_mapping(command)
        if record is None:
            continue
        key = _command_key(record.get("command"))
        if key is not None:
            index.setdefault(key, []).append(record)
    return index


def _matched_command(
    compile_record: Mapping[str, Any],
    command_index: Mapping[tuple[str, ...], list[Mapping[str, Any]]],
) -> Mapping[str, Any] | None:
    key = _command_key(compile_record.get("command"))
    candidates = command_index.get(key, ()) if key is not None else ()
    return candidates[0] if candidates else None


def _memory_summary(
    compile_record: Mapping[str, Any], command: Mapping[str, Any] | None
) -> dict[str, Any]:
    measurement: Mapping[str, Any] | None = None
    measurement_source: str | None = None
    for source_name, source in (
        ("compile_record", compile_record.get("memory_measurement")),
        ("command", command.get("memory_measurement") if command else None),
    ):
        candidate = _as_mapping(source)
        if candidate is not None:
            measurement = candidate
            measurement_source = source_name
            break

    if measurement is None:
        return {
            "status": "unavailable",
            "source": None,
            "method": None,
            "sample_count": None,
            "peak_working_set_bytes": None,
            "sampled_peak_private_bytes": None,
            "peak_pagefile_bytes": None,
        }

    sample_count = measurement.get("sample_count")
    measured = isinstance(sample_count, int) and sample_count > 0
    return {
        "status": "measured" if measured else "unmeasured",
        "source": measurement_source,
        "method": measurement.get("method"),
        "sample_count": sample_count if isinstance(sample_count, int) else None,
        # A zero counter with no successful samples is not a measurement.
        "peak_working_set_bytes": measurement.get("peak_working_set_bytes")
        if measured
        else None,
        "sampled_peak_private_bytes": measurement.get("sampled_peak_private_bytes")
        if measured
        else None,
        "peak_pagefile_bytes": measurement.get("peak_pagefile_bytes")
        if measured
        else None,
    }


def _status(record: Mapping[str, Any]) -> str:
    if record.get("failure"):
        return "failed"
    if record.get("timed_out") is True:
        return "failed"
    if record.get("exit_code") not in (None, 0):
        return "failed"
    if record.get("output_exists") is False:
        return "failed"
    if (
        record.get("failure") is None
        and record.get("exit_code") == 0
        and record.get("timed_out") is False
        and record.get("output_exists") is True
    ):
        return "success"
    return "unknown"


def _axiom_summary(record: Mapping[str, Any]) -> dict[str, Any]:
    audit = _as_mapping(record.get("axiom_audit"))
    if audit is None:
        return {
            "status": "unavailable",
            "actual_axioms": None,
            "unexpected_axioms": None,
            "error": None,
        }

    declared = audit.get("declared_print_axioms")
    printed = audit.get("printed")
    if declared == 0:
        status = "no_print_declarations"
        actual: list[Any] | None = None
    elif isinstance(printed, list):
        status = "printed"
        actual = [
            {
                "declared_name": item.get("declared_name")
                if isinstance(item, Mapping)
                else None,
                "axioms": item.get("axioms") if isinstance(item, Mapping) else None,
            }
            for item in printed
        ]
    else:
        status = "incomplete"
        actual = None
    return {
        "status": status,
        "actual_axioms": actual,
        "unexpected_axioms": audit.get("unexpected_axioms"),
        "error": audit.get("error"),
    }


def _compile_summary(
    record: Mapping[str, Any], command_index: Mapping[tuple[str, ...], list[Mapping[str, Any]]]
) -> dict[str, Any]:
    command = _matched_command(record, command_index)
    axioms = _axiom_summary(record)
    seconds = record.get("seconds")
    if seconds is None and command is not None:
        seconds = command.get("seconds")
    return {
        "module": record.get("module"),
        "source": record.get("source"),
        "status": _status(record),
        "failure": record.get("failure"),
        "exit_code": record.get("exit_code"),
        "timed_out": record.get("timed_out"),
        "seconds": seconds,
        "compiled_in_this_invocation": record.get("compiled_in_this_invocation"),
        "reuse_seconds": record.get("reuse_seconds"),
        "original_compile_seconds": record.get("original_compile_seconds"),
        "reused_from": record.get("reused_from"),
        "memory": _memory_summary(record, command),
        "source_sha256_before": record.get("source_sha256_before"),
        "source_sha256_after": record.get("source_sha256_after"),
        "output_sha256": record.get("output_sha256"),
        "output_exists": record.get("output_exists"),
        "axioms": axioms,
        "command_label": command.get("label") if command else None,
        "command": command.get("command") if command else record.get("command"),
        "command_record_found": command is not None,
    }


def summarize(evidence_path: Path) -> dict[str, Any]:
    try:
        evidence = json.loads(evidence_path.read_text(encoding="utf-8"))
    except (OSError, json.JSONDecodeError) as exc:
        raise ValueError(f"cannot read evidence JSON: {exc}") from exc
    if not isinstance(evidence, Mapping):
        raise ValueError("evidence JSON must be an object")

    commands = _as_list(evidence.get("commands"))
    records = _as_list(evidence.get("compile_records"))
    command_index = _index_commands(commands)
    compile_summaries = [
        _compile_summary(record, command_index)
        for record in records
        if isinstance(record, Mapping)
    ]
    closure = [item for item in _as_list(evidence.get("source_closure")) if isinstance(item, Mapping)]
    compiled_sources = {record.get("source") for record in records if isinstance(record, Mapping)}
    uncompiled_sources = [
        item.get("source") for item in closure if item.get("source") not in compiled_sources
    ]
    counts = {
        "compile_records": len(compile_summaries),
        "success": sum(item["status"] == "success" for item in compile_summaries),
        "failed": sum(item["status"] == "failed" for item in compile_summaries),
        "unknown": sum(item["status"] == "unknown" for item in compile_summaries),
        "project_closure_sources": len(closure),
        "uncompiled_project_sources": len(uncompiled_sources),
    }
    pins = [item for item in _as_list(evidence.get("pins")) if isinstance(item, Mapping)]
    return {
        "schema_version": 1,
        "input_evidence": str(evidence_path),
        "verification": {
            "stamp": evidence.get("stamp"),
            "success": evidence.get("success"),
            "exit_code": evidence.get("exit_code"),
            "failure": evidence.get("failure"),
            "all_new_project_closure_compiled": evidence.get(
                "all_new_project_closure_compiled"
            ),
            "all_project_closure_verified": evidence.get("all_project_closure_verified"),
            "fixed_dependency_cache_reused": evidence.get("fixed_dependency_cache_reused"),
            "independent_checker_used": evidence.get("independent_checker_used"),
        },
        "counts": counts,
        "pins": {
            "recorded": len(pins),
            "head_matches": sum(item.get("head_matches") is True for item in pins),
            "clean": sum(item.get("clean") is True for item in pins),
            "cache_missing": [
                item.get("name") for item in pins if item.get("cache_exists") is False
            ],
        },
        "compile_records": compile_summaries,
        "uncompiled_project_sources": uncompiled_sources,
        "limitations": [
            "Only recorded commands and compile_records are summarized; no Lean or external computation is run.",
            "Missing or zero-sample resource measurements are emitted as null metrics, never as measured zero.",
            "No CI status or mathematical coverage is inferred from this evidence.",
            "A source with no #print axioms declaration is marked no_print_declarations; that is not an empty transitive axiom audit.",
        ],
    }


def _write_or_print(value: Mapping[str, Any], output: str | None) -> None:
    text = json.dumps(value, ensure_ascii=False, indent=2) + "\n"
    if output is None:
        sys.stdout.write(text)
        return
    path = Path(output).expanduser()
    path.parent.mkdir(parents=True, exist_ok=True)
    try:
        with path.open("x", encoding="utf-8", newline="\n") as stream:
            stream.write(text)
    except FileExistsError as exc:
        raise ValueError(f"refusing to overwrite existing output: {path}") from exc


def main(argv: Sequence[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "input",
        nargs="?",
        help="evidence.json or a verification directory (default: this batch's verification directory)",
    )
    parser.add_argument(
        "--output",
        help="write to this new JSON file; stdout is used when omitted",
    )
    args = parser.parse_args(argv)
    try:
        evidence_path = _resolve_evidence(args.input, Path(__file__).resolve())
        _write_or_print(summarize(evidence_path), args.output)
    except (OSError, ValueError) as exc:
        print(f"summarize failed: {exc}", file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
