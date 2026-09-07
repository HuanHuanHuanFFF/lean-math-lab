"""Verify selected round-6 Lean entry roots and their research dependencies.

The positional arguments are the accepted entry roots chosen by the coordinator.
Dependencies imported through ``research.*`` are rebuilt first.  Generated logs,
the report, and the joint-import source stay in this support directory; only
ignored ``.olean`` products may be written beside older research sources.

Examples (from any directory):

  C:/Python314/python.exe research/tasks/B686-Four/round6/support/verify_round6.py \
    research/tasks/B686-Four/round5/worker/ContactFinite.lean \
    research/tasks/B686-Four/round5/worker/ContactTail.lean

No installation, dependency update, remote write, commit, or push is performed.
"""

from __future__ import annotations

import argparse
import concurrent.futures
import threading
import hashlib
import json
import os
import platform
import re
import shutil
import subprocess
import sys
import time
from datetime import datetime, timezone
from pathlib import Path


SUPPORT = Path(__file__).resolve().parent
REPO = SUPPORT.parents[4]
RESEARCH_PREFIX = "research."
ALLOWED_AXIOMS = {"propext", "Classical.choice", "Quot.sound"}
DEFAULT_VERSION = "4.33.1"


def now() -> str:
    return datetime.now(timezone.utc).isoformat()


def digest(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def relative(path: Path) -> str:
    return path.relative_to(REPO).as_posix()


def without_comments(source: str) -> str:
    """Erase nested block and line comments while preserving line boundaries."""
    out: list[str] = []
    i = 0
    depth = 0
    while i < len(source):
        if source.startswith("/-", i):
            depth += 1
            i += 2
        elif depth and source.startswith("-/", i):
            depth -= 1
            i += 2
        elif depth:
            out.append("\n" if source[i] == "\n" else " ")
            i += 1
        elif source.startswith("--", i):
            end = source.find("\n", i)
            i = len(source) if end == -1 else end
        else:
            out.append(source[i])
            i += 1
    if depth:
        raise RuntimeError("Unterminated Lean block comment")
    return "".join(out)


def module_to_path(module: str) -> Path:
    parts = [part.replace("«", "").replace("»", "") for part in module.split(".")]
    return REPO.joinpath(*parts).with_suffix(".lean")


def path_to_module(path: Path) -> str:
    parts = list(path.relative_to(REPO).with_suffix("").parts)
    # The task directory contains a hyphen and must be quoted in Lean module syntax.
    parts = [f"«{part}»" if "-" in part else part for part in parts]
    return ".".join(parts)


def parse_entry(raw: str) -> Path:
    candidate = Path(raw)
    if not candidate.is_absolute():
        candidate = REPO / candidate
    candidate = candidate.resolve()
    try:
        candidate.relative_to(REPO)
    except ValueError as error:
        raise RuntimeError(f"Entry is outside repository: {raw}") from error
    if candidate.suffix != ".lean" or not candidate.is_file():
        raise RuntimeError(f"Lean entry does not exist: {raw}")
    return candidate


def audit_source(path: Path, source: str, require_guards: bool) -> dict[str, object]:
    clean = without_comments(source)
    forbidden = re.findall(r"\b(?:sorry|admit|native_decide|sorryAx)\b", clean)
    declarations = re.findall(r"^\s*(?:axiom|constant)\s+\S+", clean, re.M)
    prints = re.findall(r"^\s*#print\s+axioms\s+(\S+)", clean, re.M)
    guarded_prints = re.findall(
        r"#guard_msgs(?:\s*\[[^\]]*\])?\s+in\s*\n\s*#print\s+axioms\s+(\S+)",
        clean,
        re.M,
    )
    expected = re.findall(r"depends on axioms:\s*\[([^\]]*)\]", source)
    axiom_sets = [
        set(filter(None, (name.strip() for name in item.split(",")))) for item in expected
    ]
    problems: list[str] = []
    if forbidden:
        problems.append("forbidden proof placeholders: " + ", ".join(forbidden))
    if declarations:
        problems.append("project axiom/constant declarations: " + ", ".join(declarations))
    if require_guards and not prints:
        problems.append("accepted entry has no #print axioms audit")
    if len(guarded_prints) != len(prints):
        problems.append("every #print axioms must be enclosed by #guard_msgs in")
    if len(expected) != len(prints):
        problems.append("guarded axiom messages and #print axioms count differ")
    unexpected = sorted(set().union(*axiom_sets) - ALLOWED_AXIOMS) if axiom_sets else []
    if unexpected:
        problems.append("nonstandard expected axioms: " + ", ".join(unexpected))
    return {
        "source_sha256": digest(path),
        "guard_required": require_guards,
        "guarded_declarations": guarded_prints,
        "expected_axiom_sets": [sorted(items) for items in axiom_sets],
        "forbidden_hits": forbidden + declarations,
        "problems": problems,
    }


def discover(entries: list[Path]):
    modules = {path_to_module(path): path for path in entries}
    entry_modules = set(modules)
    dependencies: dict[str, list[str]] = {}
    external_imports: set[str] = set()
    audits: dict[str, dict[str, object]] = {}
    pending = list(modules)
    while pending:
        module = pending.pop(0)
        path = modules[module]
        source = path.read_text(encoding="utf-8")
        imports = re.findall(r"^\s*import\s+(\S+)\s*$", source, re.M)
        research_imports = [item for item in imports if item.startswith(RESEARCH_PREFIX)]
        dependencies[module] = research_imports
        for dependency in research_imports:
            if dependency not in modules:
                dependency_path = module_to_path(dependency)
                if not dependency_path.is_file():
                    raise RuntimeError(f"Missing research source: {dependency}")
                modules[dependency] = dependency_path
                pending.append(dependency)
        external_imports.update(item for item in imports if not item.startswith(RESEARCH_PREFIX))
        audits[module] = audit_source(path, source, module in entry_modules)
        if audits[module]["problems"]:
            details = "; ".join(audits[module]["problems"])
            raise RuntimeError(f"Source audit failed for {relative(path)}: {details}")

    order: list[str] = []
    visiting: set[str] = set()
    complete: set[str] = set()

    def visit(module: str):
        if module in complete:
            return
        if module in visiting:
            raise RuntimeError(f"Research import cycle: {module}")
        visiting.add(module)
        for dependency in dependencies[module]:
            visit(dependency)
        visiting.remove(module)
        complete.add(module)
        order.append(module)

    for module in modules:
        visit(module)
    return modules, dependencies, order, sorted(external_imports), audits


def lake_command(*args: str) -> list[str]:
    if os.name == "nt":
        pwsh = shutil.which("pwsh") or shutil.which("powershell")
        if not pwsh:
            raise RuntimeError("Neither pwsh nor powershell is available on Windows")
        # With ``-File``, PowerShell''s script binder interprets Lean''s ``-o`` as
        # an ambiguous common parameter. Quoted literals passed through
        # ``-Command`` remain positional values for the wrapper''s LakeArgs.
        def ps_quote(value: str) -> str:
            return "'" + value.replace("'", "''") + "'"

        invocation = "& " + " ".join(
            ps_quote(value) for value in ("scripts/lake.ps1", *args)
        )
        return [pwsh, "-NoProfile", "-Command", invocation]
    return ["bash", "scripts/lean-work.sh", "lake", *args]


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("entries", nargs="+", help="accepted Lean entry roots")
    parser.add_argument("--expected-lean-version", default=DEFAULT_VERSION)
    parser.add_argument("--per-file-seconds", type=int, default=240)
    parser.add_argument("--max-total-seconds", type=int, default=1200)
    parser.add_argument("--jobs", type=int, default=1, help="parallel Lean jobs per dependency layer")
    parser.add_argument(
        "--report-name", default="lean-verification.json", help="filename under support"
    )
    parser.add_argument(
        "--evidence-name", default="verification", help="directory under support"
    )
    args = parser.parse_args()
    started = time.monotonic()
    evidence = SUPPORT / args.evidence_name
    evidence.mkdir(parents=True, exist_ok=True)
    report_path = SUPPORT / args.report_name
    entries = [parse_entry(raw) for raw in args.entries]
    report: dict[str, object] = {
        "started_utc": now(),
        "expected_lean_version": args.expected_lean_version,
        "platform": platform.platform(),
        "python": sys.version,
        "entry_roots": [relative(path) for path in entries],
        "full_bounty_proved": False,
        "results": [],
    }
    if args.jobs < 1:
        parser.error("--jobs must be at least 1")
    env = dict(os.environ)
    env["LEAN_PATH"] = str(REPO) + (os.pathsep + env["LEAN_PATH"] if env.get("LEAN_PATH") else "")

    report_lock = threading.Lock()

    def save():
        with report_lock:
            report_path.write_text(
                json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
            )

    def run(label: str, command: list[str], limit: int) -> tuple[Path, dict[str, object]]:
        remaining = args.max_total_seconds - (time.monotonic() - started)
        if remaining <= 0:
            raise RuntimeError("Total verification budget exhausted; no success claimed")
        log = evidence / f"{label}.log"
        begin = time.monotonic()
        try:
            with log.open("w", encoding="utf-8") as output:
                try:
                    result = subprocess.run(
                        command,
                        cwd=REPO,
                        env=env,
                        stdout=output,
                        stderr=subprocess.STDOUT,
                        timeout=min(limit, remaining),
                        text=True,
                    )
                    code = result.returncode
                except subprocess.TimeoutExpired:
                    code = 124
        except OSError as error:
            log.write_text(str(error) + "\n", encoding="utf-8")
            code = 127
        entry = {
            "label": label,
            "command": command,
            "exit_code": code,
            "seconds": round(time.monotonic() - begin, 3),
            "log": relative(log),
            "log_sha256": digest(log),
        }
        report["results"].append(entry)
        save()
        print(f"{label}: exit {code}, {entry['seconds']}s", flush=True)
        if code:
            raise RuntimeError(f"{label} failed; see {relative(log)}")
        return log, entry

    try:
        modules, dependencies, order, external, audits = discover(entries)
        report["source_audit"] = audits
        report["dependency_graph"] = dependencies
        report["dependency_order"] = order
        report["external_imports_observed"] = external
        report["mathlib_dependency_build"] = "not run; existing cached objects are consumed by lean"

        version_log, _ = run("lean-version", lake_command("env", "lean", "--version"), 30)
        version_text = version_log.read_text(encoding="utf-8", errors="replace")
        match = re.search(r"Lean \(version ([^,\s)]+)", version_text)
        actual_version = match.group(1) if match else None
        report["actual_lean_version"] = actual_version
        save()
        if actual_version != args.expected_lean_version:
            raise RuntimeError(
                f"Expected Lean {args.expected_lean_version}, observed {actual_version!r}"
            )

        def compile_module(module: str):
            path = modules[module]
            source_hash = audits[module]["source_sha256"]
            olean = path.with_suffix(".olean")
            label = "-".join(path.relative_to(REPO).with_suffix("").parts)
            _, result_entry = run(
                label,
                lake_command("env", "lean", "-o", relative(olean), relative(path)),
                args.per_file_seconds,
            )
            if digest(path) != source_hash:
                raise RuntimeError(f"Source changed during verification: {relative(path)}")
            if not olean.is_file():
                raise RuntimeError(f"Lean reported success without output: {relative(olean)}")
            result_entry["source_sha256"] = source_hash
            result_entry["olean"] = relative(olean)
            result_entry["olean_sha256"] = digest(olean)
            save()

        report["jobs"] = args.jobs
        report["dependency_layers"] = []
        pending = set(order)
        completed: set[str] = set()
        while pending:
            ready = [
                module for module in order
                if module in pending and all(dep in completed for dep in dependencies[module])
            ]
            if not ready:
                raise RuntimeError("No ready module in dependency graph")
            report["dependency_layers"].append(ready)
            save()
            with concurrent.futures.ThreadPoolExecutor(max_workers=args.jobs) as pool:
                futures = [pool.submit(compile_module, module) for module in ready]
                for future in concurrent.futures.as_completed(futures):
                    future.result()
            completed.update(ready)
            pending.difference_update(ready)

        generated = evidence / "JointImport.lean"
        generated.write_text(
            "/- Generated verifier input; not an accepted theorem module. -/\n"
            + "".join(f"import {path_to_module(path)}\n" for path in entries),
            encoding="utf-8",
        )
        joint_olean = generated.with_suffix(".olean")
        run(
            "joint-import",
            lake_command("env", "lean", "-o", relative(joint_olean), relative(generated)),
            args.per_file_seconds,
        )
        report["joint_import"] = {
            "source": relative(generated),
            "source_sha256": digest(generated),
            "olean": relative(joint_olean),
            "olean_sha256": digest(joint_olean),
            "accepted": False,
        }
        changed = [
            module for module, path in modules.items() if digest(path) != audits[module]["source_sha256"]
        ]
        if changed:
            raise RuntimeError("Sources changed during verification: " + ", ".join(changed))
        report["success"] = True
    except Exception as error:
        report["success"] = False
        report["error"] = str(error)
    report["finished_utc"] = now()
    report["elapsed_seconds"] = round(time.monotonic() - started, 3)
    save()
    print(
        json.dumps(
            {key: report[key] for key in ("success", "finished_utc", "elapsed_seconds")},
            ensure_ascii=False,
        ),
        flush=True,
    )
    return 0 if report["success"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
