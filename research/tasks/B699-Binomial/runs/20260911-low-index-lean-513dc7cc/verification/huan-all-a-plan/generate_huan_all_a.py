#!/usr/bin/env python3
"""Generate the unified explicit A original-consumer candidate.

This generator only writes the requested HuanAllA.lean and files below
verification/huan-all-a-plan.  It discovers historical fallback roots from
receipt JSON when available; it never treats a missing receipt as acceptance.
It is deliberately independent of the fixed verifier and does not run Lean.
"""
from __future__ import annotations

import hashlib
import json
import re
from pathlib import Path
from typing import Any

PLAN_DIR = Path(__file__).resolve().parent
RUN = PLAN_DIR.parents[1]
REPO = RUN.parents[4]
TARGET = RUN / "lean" / "HuanAllA.lean"
ACCEPTED_DIR = RUN / "verification" / "huan-accepted"
RECOVERY_EVIDENCE = RUN / "verification" / "20260911T010452070959Z" / "evidence.json"
RECOVERY_ACCEPTANCE = RUN / "verification" / "huan-recovery-checks" / "acceptance.json"
NAMESPACE = "B699LowIndex.LowIndexLean513dc7cc"
TARGET_NAMESPACE = f"{NAMESPACE}.HuanAllA"
STD3 = ["propext", "Classical.choice", "Quot.sound"]
A_INDICES = [29, *range(35, 185)]
HISTORY_INDICES = [29, 35, 36, 37]
RECOVERED_INDICES = list(range(38, 46))


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def repo_relative(path: Path) -> str:
    return path.resolve().relative_to(REPO.resolve()).as_posix()


def quote_segment(segment: str) -> str:
    if re.fullmatch(r"[A-Za-z_][A-Za-z0-9_']*", segment):
        return segment
    return f"«{segment}»"


def lean_module_from_path(path: Path) -> str:
    relative = path.resolve().relative_to(REPO.resolve()).with_suffix("")
    return ".".join(quote_segment(part) for part in relative.parts)


def original_type(i: int) -> str:
    return (
        f"∀ n j : ℕ, 1 ≤ {i} ∧ {i} < j ∧ j ≤ n / 2 →\n"
        f"      ∃ p : ℕ, p.Prime ∧ {i} ≤ p ∧ p ∣ Nat.choose n {i} ∧ "
        "p ∣ Nat.choose n j"
    )


def source_for_i(i: int) -> Path:
    candidates = sorted((RUN / "lean" / "rows").glob(f"Row{i:03d}*/Original.lean"))
    preferred = [
        path for path in candidates if path.parent.name != f"Row{i:03d}"
    ]
    if preferred:
        return max(
            preferred,
            key=lambda path: (path.stat().st_mtime_ns, path.parent.name),
        )
    return max(
        candidates,
        key=lambda path: (path.stat().st_mtime_ns, path.parent.name),
    ) if candidates else Path()


def resolve_record_path(value: str) -> Path:
    candidate = Path(value)
    if candidate.is_absolute():
        return candidate.resolve()
    for base in (RUN, REPO):
        path = (base / candidate).resolve()
        if path.exists():
            return path
    return (RUN / candidate).resolve()


def literal_original_ok(data: dict[str, Any], i: int) -> bool:
    if data.get("full_original_statement") is True:
        return True
    candidates = [
        data.get("literal_original_statement"),
        data.get("literal_original"),
        data.get("original_statement_literal"),
        data.get("literal_original_check"),
        data.get("original_statement_check"),
    ]
    required_fragments = (
        "Nat.choose",
        "p.Prime",
        "n / 2",
        f"∣ Nat.choose n {i}",
    )
    for value in candidates:
        if value is True:
            return True
        if isinstance(value, dict):
            if any(value.get(key) is True for key in ("matches", "exact", "valid", "ok")):
                return True
            value = value.get("statement", value.get("text"))
        if isinstance(value, str) and all(fragment in value for fragment in required_fragments):
            return True
    return False


def std3_ok(data: dict[str, Any]) -> bool:
    for key in ("axioms", "transitive_axioms"):
        value = data.get(key)
        if isinstance(value, list):
            return len(value) == len(STD3) and set(value) == set(STD3)
    return data.get("std3") is True or data.get("std3_satisfied") is True or data.get("axiom_status") == "std3"


def evidence_root_record(evidence: Path, root: Path) -> dict[str, Any]:
    data = json.loads(evidence.read_text(encoding="utf-8"))
    source_name = repo_relative(root)
    records = [
        *data.get("compile_records", []),
        *data.get("reuse_records", []),
    ]
    matches = [record for record in records if record.get("source") == source_name]
    root_sha = sha256(root)
    valid: list[dict[str, Any]] = []
    for record in matches:
        if (
            record.get("source_sha256_before") != root_sha
            or record.get("source_sha256_after") != root_sha
            or record.get("failure")
            or record.get("exit_code") != 0
            or record.get("timed_out")
        ):
            continue
        output_value = record.get("output")
        output = resolve_record_path(str(output_value)) if output_value else Path()
        if not output.is_file() or record.get("output_sha256") != sha256(output):
            continue
        audit = record.get("axiom_audit", {})
        if audit.get("error") or audit.get("unexpected_axioms"):
            continue
        valid.append(
            {
                "module": record.get("module"),
                "source": source_name,
                "source_sha256": root_sha,
                "output": repo_relative(output),
                "output_sha256": sha256(output),
                "evidence": repo_relative(evidence),
            }
        )
    if not data.get("success") or not valid:
        raise RuntimeError(
            f"top-level evidence lacks a valid source/output record for {source_name}: {evidence}"
        )
    return {"source": source_name, "records": valid}


def discover_receipts(i: int) -> list[tuple[Path, dict[str, Any]]]:
    path = RUN / "verification" / "huan-historical-accepted" / f"row{i:03d}.json"
    if not path.is_file():
        return []
    data = json.loads(path.read_text(encoding="utf-8"))
    if data.get("i") != i:
        raise RuntimeError(f"historical receipt index mismatch: {path}")
    return [(path, data)]


def history_entry(i: int) -> dict[str, Any]:
    receipts = discover_receipts(i)
    receipt_required = [
        "i",
        "kind",
        "root",
        "source_sha256",
        "evidence",
        "declaration",
        "literal_original_check",
        "axioms_or_std3",
    ]
    if receipts:
        path, data = receipts[-1]
        root_value = data.get("root", data.get("module_root", data.get("fallback_root")))
        root = resolve_record_path(str(root_value)) if root_value else Path()
        declaration = str(
            data.get("declaration", data.get("module_declaration", f"{NAMESPACE}.common_i{i:03d}"))
        )
        source_hash = data.get("source_sha256")
        evidence_value = data.get("evidence", data.get("evidence_path"))
        evidence = resolve_record_path(str(evidence_value)) if evidence_value else Path()
        kind = str(data.get("kind", ""))
        literal_ok = literal_original_ok(data, i)
        axioms_ok = std3_ok(data)
        root_record = None
        if root.is_file() and evidence.is_file() and literal_ok and axioms_ok:
            root_record = evidence_root_record(evidence, root)
        valid = (
            bool(kind)
            and "publication" not in kind.lower()
            and root.is_file()
            and source_hash == sha256(root)
            and literal_ok
            and axioms_ok
            and evidence.is_file()
            and root_record is not None
        )
        result = {
            "i": i,
            "status": "receipt_verified" if valid else "receipt_present_but_invalid",
            "root": repo_relative(root) if root.is_file() else str(root_value),
            "root_sha256": sha256(root) if root.is_file() else None,
            "declaration": declaration,
            "kind": kind,
            "receipt": repo_relative(path),
            "receipt_sha256": sha256(path),
            "required_receipt_fields": receipt_required,
            "full_original_statement": data.get("full_original_statement"),
            "literal_original_valid": literal_ok,
            "axioms": data.get("axioms", data.get("transitive_axioms")),
            "std3_valid": axioms_ok,
            "evidence": repo_relative(evidence) if evidence.is_file() else str(evidence_value),
            "evidence_sha256": sha256(evidence) if evidence.is_file() else None,
        }
        if root_record is not None:
            result["root_record"] = root_record
        return result

    fallback = source_for_i(i)
    return {
        "i": i,
        "status": "fallback_present_receipt_pending" if fallback.is_file() else "waiting_for_receipt_and_root",
        "root": repo_relative(fallback) if fallback.is_file() else None,
        "root_sha256": sha256(fallback) if fallback.is_file() else None,
        "declaration": f"{NAMESPACE}.common_i{i:03d}",
        "receipt": None,
        "receipt_sha256": None,
        "required_receipt_fields": receipt_required,
        "full_original_statement": None,
        "literal_original_valid": None,
        "axioms": None,
        "std3_valid": None,
        "evidence": None,
        "evidence_sha256": None,
    }


def accepted_entry(i: int, row_path: Path) -> dict[str, Any]:
    row = json.loads(row_path.read_text(encoding="utf-8"))
    if row.get("i") != i:
        raise RuntimeError(f"row index mismatch: {row_path}")
    root = REPO / row["root"]
    evidence = REPO / row["evidence"]
    evidence_data = json.loads(evidence.read_text(encoding="utf-8"))
    if not root.is_file():
        raise RuntimeError(f"accepted root missing: {row['root']}")
    if sha256(root) != row.get("source_sha256"):
        raise RuntimeError(f"accepted root SHA changed: {row['root']}")
    if not row.get("full_original_statement"):
        raise RuntimeError(f"accepted row lacks original statement: row{i:03d}")
    if row.get("axioms") != STD3:
        raise RuntimeError(f"accepted row axioms differ: row{i:03d}")
    if not evidence_data.get("success"):
        raise RuntimeError(f"accepted evidence is not successful: row{i:03d}")
    root_record = evidence_root_record(evidence, root)
    return {
        "i": i,
        "status": "accepted_evidence",
        "root": row["root"],
        "root_sha256": row["source_sha256"],
        "declaration": row["declaration"],
        "evidence": row["evidence"],
        "evidence_sha256": sha256(evidence),
        "root_record": root_record,
        "evidence_reuse_evidence": evidence_data.get("reuse_evidence", []),
        "evidence_reuse_records": len(evidence_data.get("reuse_records", [])),
        "evidence_compile_records": len(evidence_data.get("compile_records", [])),
        "full_original_statement": row["full_original_statement"],
        "axioms": row["axioms"],
    }


def recovered_entry() -> dict[str, Any]:
    source = RUN / "lean" / "HuanRecoveredOriginals.lean"
    acceptance = json.loads(RECOVERY_ACCEPTANCE.read_text(encoding="utf-8"))
    evidence = json.loads(RECOVERY_EVIDENCE.read_text(encoding="utf-8"))
    if not evidence.get("success") or evidence.get("toolchain", {}).get("declared") != "leanprover/lean4:v4.33.1":
        raise RuntimeError("HuanRecoveredOriginals evidence is not a successful fixed-toolchain consumer")
    root_record = evidence_root_record(RECOVERY_EVIDENCE, source)
    return {
        "source": repo_relative(source),
        "source_sha256": sha256(source),
        "acceptance": repo_relative(RECOVERY_ACCEPTANCE),
        "acceptance_sha256": sha256(RECOVERY_ACCEPTANCE),
        "evidence": repo_relative(RECOVERY_EVIDENCE),
        "evidence_sha256": sha256(RECOVERY_EVIDENCE),
        "root_record": root_record,
        "accepted_rows": acceptance.get("accepted_rows", []),
        "reuse_evidence": evidence.get("reuse_evidence", []),
        "reuse_records": len(evidence.get("reuse_records", [])),
        "compile_records": len(evidence.get("compile_records", [])),
        "axioms": STD3,
    }


def build_entries() -> tuple[list[dict[str, Any]], dict[str, Any]]:
    accepted: dict[int, dict[str, Any]] = {}
    for i in range(46, 185):
        path = ACCEPTED_DIR / f"row{i:03d}.json"
        if not path.is_file():
            raise RuntimeError(f"missing accepted row evidence: row{i:03d}")
        accepted[i] = accepted_entry(i, path)

    history = {i: history_entry(i) for i in HISTORY_INDICES}
    entries = [history[29]]
    entries.extend(history[i] for i in range(35, 38))
    entries.extend(
        {
            "i": i,
            "status": "recovered_consumer",
            "root": "research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/lean/HuanRecoveredOriginals.lean",
            "root_sha256": recovered_entry()["source_sha256"],
            "declaration": f"{NAMESPACE}.HuanRecovery.original_i{i:03d}",
            "evidence": recovered_entry()["evidence"],
            "evidence_sha256": recovered_entry()["evidence_sha256"],
            "full_original_statement": True,
            "axioms": STD3,
        }
        for i in RECOVERED_INDICES
    )
    entries.extend(accepted[i] for i in range(46, 185))
    entries.sort(key=lambda row: row["i"])
    if [row["i"] for row in entries] != A_INDICES:
        raise RuntimeError("A index set is not exactly {29} union {35..184}")
    return entries, {"history": history, "recovered": recovered_entry(), "accepted": accepted}


def wrapper_reference(entry: dict[str, Any]) -> str:
    i = entry["i"]
    if i in RECOVERED_INDICES:
        return f"{NAMESPACE}.HuanRecovery.original_i{i:03d}"
    return f"{NAMESPACE}.common_i{i:03d}"


def render_lean(entries: list[dict[str, Any]], import_paths: list[str]) -> str:
    lines = [
        "-- Candidate only: unified explicit A original-problem consumers.",
        "-- Generated by verification/huan-all-a-plan/generate_huan_all_a.py.",
        "-- Historical 29/35/36/37 remain receipt-pending until their actual",
        "-- receipt roots are supplied; this file does not claim their acceptance.",
    ]
    lines.extend(f"import {path}" for path in import_paths)
    lines.extend(["", "set_option maxRecDepth 4096", "set_option exponentiation.threshold 1000000", "", f"namespace {TARGET_NAMESPACE}", ""])
    for entry in entries:
        i = entry["i"]
        lines.extend(
            [
                f"theorem original_i{i:03d} :",
                f"    {original_type(i)} :=",
                f"  {wrapper_reference(entry)}",
                "",
            ]
        )
    lines.extend([f"end {TARGET_NAMESPACE}", ""])
    for entry in entries:
        i = entry["i"]
        lines.append(f"#print axioms {TARGET_NAMESPACE}.original_i{i:03d}")
    return "\n".join(lines) + "\n"


def collect_reuse(entries: list[dict[str, Any]], recovered: dict[str, Any]) -> dict[str, Any]:
    values: dict[str, dict[str, Any]] = {}
    nested_values: dict[str, dict[str, Any]] = {}

    def add(
        path_value: str,
        user: str,
        expected_sha: str | None = None,
        root_record: dict[str, Any] | None = None,
    ) -> None:
        path = resolve_record_path(path_value)
        key = repo_relative(path) if path.is_file() else path_value.replace("\\", "/")
        item = values.setdefault(
            key,
            {
                "path": key,
                "sha256": sha256(path) if path.is_file() else None,
                "expected_sha256": expected_sha,
                "users": [],
                "exists": path.is_file(),
            },
        )
        item["users"].append(user)
        if root_record is not None:
            item.setdefault("root_records", []).extend(root_record.get("records", []))
        if expected_sha and item.get("sha256") and expected_sha != item["sha256"]:
            item.setdefault("sha_mismatches", []).append(
                {"expected": expected_sha, "observed": item["sha256"]}
            )

    for entry in entries:
        if entry.get("evidence"):
            add(
                entry["evidence"],
                f"row{entry['i']:03d}",
                entry.get("evidence_sha256"),
                entry.get("root_record"),
            )
        for reuse in entry.get("evidence_reuse_evidence", []):
            nested_values.setdefault(
                reuse["path"],
                {
                    "path": reuse["path"],
                    "sha256": reuse.get("sha256"),
                    "users": [],
                },
            )["users"].append(f"row{entry['i']:03d}")
    if recovered.get("evidence"):
        add(
            recovered["evidence"],
            "HuanRecoveredOriginals",
            recovered.get("evidence_sha256"),
            recovered.get("root_record"),
        )
    for reuse in recovered.get("reuse_evidence", []):
        nested_values.setdefault(
            reuse["path"],
            {
                "path": reuse["path"],
                "sha256": reuse.get("sha256"),
                "users": [],
            },
        )["users"].append("HuanRecoveredOriginals")

    ordered = [values[key] for key in sorted(values)]
    argv = []
    for item in ordered:
        argv.extend(["--reuse", item["path"]])
    commandline = " ".join(argv)
    windows_commandline_limit = 32767
    if len(commandline) >= windows_commandline_limit:
        raise RuntimeError(
            f"top-level --reuse arguments exceed Windows command-line limit: {len(commandline)}"
        )
    return {
        "unique_count": len(ordered),
        "entries": ordered,
        "all_users_count": sum(len(item["users"]) for item in ordered),
        "reuse_switch_count": len(ordered),
        "commandline_chars_including_reuse_switches_and_separators": len(commandline),
        "windows_commandline_limit": windows_commandline_limit,
        "below_windows_commandline_limit": len(commandline) < windows_commandline_limit,
        "planned_argument_vector": argv,
        "nested_upstream_reuse_evidence": [
            nested_values[key] for key in sorted(nested_values)
        ],
        "note": "Top-level consumer evidence is passed to --reuse; nested upstream reuse is retained as provenance and is not substituted for the consumer evidence.",
    }


def main() -> None:
    entries, material = build_entries()
    imports: list[str] = []
    for i in HISTORY_INDICES:
        entry = material["history"][i]
        if entry.get("root"):
            imports.append(lean_module_from_path(resolve_record_path(entry["root"])))
    imports.append(lean_module_from_path(RUN / "lean" / "HuanRecoveredOriginals.lean"))
    for entry in entries:
        if entry["i"] >= 46:
            imports.append(lean_module_from_path(REPO / entry["root"]))
    imports = list(dict.fromkeys(imports))
    TARGET.parent.mkdir(parents=True, exist_ok=True)
    TARGET.write_text(render_lean(entries, imports), encoding="utf-8", newline="\n")

    reuse = collect_reuse(entries, material["recovered"])
    wrapper_text = TARGET.read_text(encoding="utf-8")
    wrapper_names = re.findall(r"theorem original_i(\d{3}) :", wrapper_text)
    forbidden = [
        token for token in ("axiom ", "sorry", "admit", "native_decide", "new_axiom")
        if token in wrapper_text
    ]
    static = {
        "expected_indices": A_INDICES,
        "wrapper_indices": [int(value) for value in wrapper_names],
        "wrapper_count": len(wrapper_names),
        "exact_index_set": [int(value) for value in wrapper_names] == A_INDICES,
        "explicit_type_occurrences": sum(
            wrapper_text.count(f"∀ n j : ℕ, 1 ≤ {i} ∧ {i} < j ∧ j ≤ n / 2 →")
            for i in A_INDICES
        ),
        "forbidden_extra_assumption_tokens": forbidden,
        "namespace": TARGET_NAMESPACE,
        "imports_unique": len(imports) == len(set(imports)),
        "historical_receipts": {
            str(i): material["history"][i] for i in HISTORY_INDICES
        },
        "all_historical_receipts_ready": all(
            material["history"][i]["status"] == "receipt_verified"
            for i in HISTORY_INDICES
        ),
        "global_collision_risk": {
            "wrapper_names_scoped_under": TARGET_NAMESPACE,
            "source_declarations_reused_without_redeclaration": True,
            "risk": "none for wrapper names; historical source/global common_i conflicts remain a compile-time input check",
        },
    }
    plan = {
        "kind": "huan_all_a_explicit_original_consumer_plan",
        "status": "candidate_ready_for_unified_verification" if static["all_historical_receipts_ready"] else "candidate_pending_historical_receipts",
        "target": "A={29} union {35..184}",
        "target_count": 151,
        "generated_source": repo_relative(TARGET),
        "generator": repo_relative(Path(__file__)),
        "source_commit": "9d4228e3ed0de4bb6b8e555ca59af3f53d578c67",
        "fixed_manifest_sha256": "fdbefe6c9b737713c8b9c602643afa154f49dda4f48bfc4d2f64183fdea728a0",
        "toolchain": "leanprover/lean4:v4.33.1",
        "entries": entries,
        "recovered_consumer": material["recovered"],
        "reuse_evidence": reuse,
        "static_checks": static,
        "lean_not_run": True,
        "historical_pending_action": "Run the unified compiler and axiom audit." if static["all_historical_receipts_ready"] else "Obtain missing canonical historical receipts and rerun this generator.",
    }
    (PLAN_DIR / "input-manifest.json").write_text(
        json.dumps(plan, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
        newline="\n",
    )
    (PLAN_DIR / "reuse-evidence.json").write_text(
        json.dumps(reuse, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
        newline="\n",
    )
    (PLAN_DIR / "static-checks.json").write_text(
        json.dumps(static, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
        newline="\n",
    )
    print(json.dumps({
        "target": repo_relative(TARGET),
        "entries": len(entries),
        "imports": len(imports),
        "reuse_unique": reuse["unique_count"],
        "historical_status": {str(i): material["history"][i]["status"] for i in HISTORY_INDICES},
        "receipt_ready": static["all_historical_receipts_ready"],
    }, ensure_ascii=False))


if __name__ == "__main__":
    main()
