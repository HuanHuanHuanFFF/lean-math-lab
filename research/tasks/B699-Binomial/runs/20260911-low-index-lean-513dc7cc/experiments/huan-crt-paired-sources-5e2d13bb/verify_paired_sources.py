"""Independent source-only verifier for the paired CRT candidate.

The checks below operate on bytes, imports, source declarations, and the
existing 171-job plan.  This verifier deliberately does not call Lean.
"""

from __future__ import annotations

import hashlib
import json
import re
from datetime import datetime, timezone
from pathlib import Path
from typing import Any


OUT = Path(__file__).resolve().parent
RUN = OUT.parent.parent
REPO = RUN.parents[4]
LEAN = RUN / "lean"
PLAN = RUN / "notes" / "huan-complete-crt-grid-plan.json"
RUN_REL = "research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc"
IMPORT_RE = re.compile(r"^import\s+(.+?)(?:\r?\n)?$")
ROW_FILE_RE = re.compile(r"^Chunk(?P<chunk>\d{3})RowA(?P<a>\d+)\.lean$")
CELL_NAME_RE = re.compile(r"^cellA(?P<a>\d+)B(?P<b>\d+)_check$")
DECL_RE = re.compile(
    r"(?m)^\s*(?P<private>private\s+)?"
    r"(?P<kind>theorem|lemma|def|abbrev|opaque|instance|structure|class|inductive)\s+"
    r"(?P<name>[A-Za-z_][A-Za-z0-9_']*)\b"
)


def sha256_bytes(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def sha256(path: Path) -> str:
    return sha256_bytes(path.read_bytes())


def normalize_root(value: str) -> str:
    value = value.replace("\\", "/")
    prefix = RUN_REL + "/"
    if value.startswith(prefix):
        return value[len(RUN_REL) + 1 :]
    return value


def split_imports(data: bytes) -> tuple[list[str], bytes]:
    lines = data.splitlines(keepends=True)
    imports: list[str] = []
    index = 0
    while index < len(lines):
        line = lines[index].decode("utf-8")
        match = IMPORT_RE.match(line)
        if match is None:
            break
        imports.append(match.group(1).strip())
        index += 1
    return imports, b"".join(lines[index:])


def source_path(value: str) -> Path:
    value = value.replace("\\", "/")
    if value.startswith("research/"):
        return REPO / value
    return RUN / value


def declaration_names(data: bytes) -> list[dict[str, Any]]:
    text = data.decode("utf-8")
    return [
        {
            "kind": match.group("kind"),
            "name": match.group("name"),
            "private": bool(match.group("private")),
        }
        for match in DECL_RE.finditer(text)
    ]

def row_facts(data: bytes) -> tuple[int | None, list[int], list[str]]:
    declarations = declaration_names(data)
    cells = []
    rows = []
    for item in declarations:
        match = CELL_NAME_RE.match(item["name"])
        if match:
            cells.append((int(match.group("a")), int(match.group("b"))))
        if item["name"].startswith("rowA"):
            rows.append(item["name"])
    a_values = sorted({a for a, _ in cells})
    b_values = sorted({b for _, b in cells})
    return (a_values[0] if a_values else None), b_values, rows



def main() -> None:
    source_map = json.loads((OUT / "SOURCE_MAP.json").read_text(encoding="utf-8"))
    freeze = json.loads((OUT / "FREEZE.json").read_text(encoding="utf-8"))
    failures: list[str] = []
    checks: dict[str, Any] = {}

    plan = json.loads(PLAN.read_text(encoding="utf-8"))
    plan_jobs = list(plan["jobs"])
    plan_by_root = {normalize_root(str(item["root"])): item for item in plan_jobs}
    checks["plan_job_count"] = len(plan_jobs)
    if len(plan_jobs) != 171:
        failures.append(f"plan job count is {len(plan_jobs)}, expected 171")

    packs = source_map["packs"]
    chunks = source_map["chunks"]
    checks["pack_count"] = len(packs)
    checks["chunk_count"] = len(chunks)
    if len(chunks) != 133:
        failures.append(f"prepared Chunk count is {len(chunks)}, expected 133")
    if not packs:
        failures.append("no Pack files recorded")

    pack_by_target = {item["target_path"]: item for item in packs}
    chunk_by_source = {item["source_path"]: item for item in chunks}
    if len(pack_by_target) != len(packs):
        failures.append("duplicate Pack target in SOURCE_MAP")
    if len(chunk_by_source) != len(chunks):
        failures.append("duplicate Chunk source in SOURCE_MAP")

    row_body_occurrences = 0
    row_count = 0
    max_rows = 0
    for pack in packs:
        candidate = OUT / pack["candidate_path"]
        if not candidate.exists():
            failures.append(f"missing Pack candidate {pack['candidate_path']}")
            continue
        actual_sha = sha256(candidate)
        if actual_sha != pack["sha256"]:
            failures.append(f"Pack SHA mismatch {pack['candidate_path']}")
        imports, body = split_imports(candidate.read_bytes())
        if imports != pack["imports"]:
            failures.append(f"Pack import mismatch {pack['candidate_path']}")
        rows = pack["source_rows"]
        max_rows = max(max_rows, len(rows))
        row_count += len(rows)
        if len(rows) > 2:
            failures.append(f"Pack exceeds two rows {pack['candidate_path']}")
        occurrences: list[int] = []
        actual_pack_a: list[int] = []
        actual_pack_b: set[int] = set()
        for row_source in rows:
            row_file = source_path(row_source)
            if not row_file.exists():
                failures.append(f"missing original Row {row_source}")
                continue
            row_bytes = row_file.read_bytes()
            row_imports, row_body = split_imports(row_bytes)
            row_a, row_b, _ = row_facts(row_bytes)
            if row_a is None:
                failures.append(f"Row has no cell declarations {row_source}")
            else:
                actual_pack_a.append(row_a)
                actual_pack_b.update(row_b)
            count = body.count(row_body)
            occurrences.append(count)
            row_body_occurrences += count
            if count != 1:
                failures.append(
                    f"Row body occurrence count {count} for {row_source} in {pack['candidate_path']}"
                )
            if sha256_bytes(row_bytes) != pack["source_row_sha256"][len(occurrences) - 1]:
                failures.append(f"Row source SHA changed {row_source}")
            if sha256_bytes(row_body) != pack["source_row_body_sha256"][len(occurrences) - 1]:
                failures.append(f"Row body SHA changed {row_source}")
            expected_data = pack["data_imports"]
            if sorted(item for item in row_imports if ".Chunk" in item and item.endswith("Data")) != expected_data:
                failures.append(f"Row Data import drift {row_source}")
        if occurrences != pack["body_occurrences"]:
            failures.append(f"recorded body occurrence mismatch {pack['candidate_path']}")
        actual_decls = declaration_names(body)
        if [item["name"] for item in actual_decls] != pack["declaration_names"]:
            failures.append(f"Pack declaration sequence changed {pack['candidate_path']}")
        names = [item["name"] for item in actual_decls]
        if len(names) != len(set(names)):
            failures.append(f"duplicate declaration in Pack {pack['candidate_path']}")
        if actual_pack_a and pack["a_range"] != [min(actual_pack_a), max(actual_pack_a)]:
            failures.append(f"Pack a-range changed {pack['candidate_path']}")
        if actual_pack_b and pack["b_range"] != [min(actual_pack_b), max(actual_pack_b)]:
            failures.append(f"Pack b-range changed {pack['candidate_path']}")
    checks["row_count"] = row_count
    checks["max_rows_per_pack"] = max_rows
    checks["row_body_occurrences"] = row_body_occurrences
    if max_rows > 2:
        failures.append("max rows per Pack exceeds two")
    if row_body_occurrences != row_count:
        failures.append("not every Row body occurs exactly once")

    for chunk in chunks:
        source = source_path(chunk["source_path"])
        candidate = OUT / chunk["candidate_path"]
        if not source.exists():
            failures.append(f"missing source Chunk {chunk['source_path']}")
            continue
        if not candidate.exists():
            failures.append(f"missing candidate Chunk {chunk['candidate_path']}")
            continue
        old = source.read_bytes()
        new = candidate.read_bytes()
        if sha256_bytes(old) != chunk["source_sha256"]:
            failures.append(f"source Chunk SHA changed {chunk['source_path']}")
        if sha256_bytes(new) != chunk["candidate_sha256"]:
            failures.append(f"candidate Chunk SHA mismatch {chunk['candidate_path']}")
        old_imports, old_body = split_imports(old)
        new_imports, new_body = split_imports(new)
        if old_body != new_body:
            failures.append(f"Chunk body changed {chunk['source_path']}")
        if old_imports != chunk["old_imports"]:
            failures.append(f"recorded old imports drift {chunk['source_path']}")
        if new_imports != chunk["new_imports"]:
            failures.append(f"new imports drift {chunk['candidate_path']}")
        expected_pack_modules = []
        for pack_target in chunk["new_pack_targets"]:
            pack = pack_by_target.get(pack_target)
            if pack is None:
                failures.append(f"missing Pack map for {pack_target}")
            else:
                expected_pack_modules.append(pack["module"])
        if new_imports != expected_pack_modules:
            failures.append(f"Chunk pack import map mismatch {chunk['candidate_path']}")
        if len(old_imports) != len(chunk["row_files"]):
            failures.append(f"old Row import count changed {chunk['source_path']}")
        if len(new_imports) != (len(chunk["row_files"]) + 1) // 2:
            failures.append(f"new Pack import count is not ceil(rows/2) {chunk['candidate_path']}")
        actual_row_paths = sorted(
            source.parent.glob(f"{source.stem}RowA*.lean"),
            key=lambda path: int(ROW_FILE_RE.match(path.name).group("a"))
            if ROW_FILE_RE.match(path.name)
            else -1,
        )
        actual_row_paths = [path for path in actual_row_paths if ROW_FILE_RE.match(path.name)]
        actual_rows = [path.name for path in actual_row_paths]
        if actual_rows != chunk["row_files"]:
            failures.append(f"Chunk row source list changed {chunk['source_path']}")
        actual_a: list[int] = []
        actual_b: set[int] = set()
        data_imports: set[tuple[str, ...]] = set()
        for row_path in actual_row_paths:
            row_a, row_b, _ = row_facts(row_path.read_bytes())
            if row_a is not None:
                actual_a.append(row_a)
                actual_b.update(row_b)
            row_imports, _ = split_imports(row_path.read_bytes())
            data_imports.add(tuple(item for item in row_imports if ".Chunk" in item and item.endswith("Data")))
        if actual_a and chunk["a_range"] != [min(actual_a), max(actual_a)]:
            failures.append(f"Chunk a-range changed {chunk['source_path']}")
        if actual_b and chunk["b_range"] != [min(actual_b), max(actual_b)]:
            failures.append(f"Chunk b-range changed {chunk['source_path']}")
        if len(data_imports) != 1 or sorted(next(iter(data_imports))) != chunk["data_imports"]:
            failures.append(f"Chunk Data import source mismatch {chunk['source_path']}")
        if sha256_bytes(old_body) != chunk["old_body_sha256"]:
            failures.append(f"recorded old body SHA mismatch {chunk['source_path']}")
        if chunk["a_range"][0] > chunk["a_range"][1] or chunk["b_range"][0] != 1:
            failures.append(f"invalid recorded range {chunk['source_path']}")
        row_files = chunk["row_files"]
        for row_file in row_files:
            row_path = source.parent / row_file
            if not row_path.exists():
                failures.append(f"missing row file {row_path}")

    # Reconstruct the 171-job candidate root map and compare its deterministic SHA.
    plan_records = source_map["candidate_plan_records"]
    if len(plan_records) != len(plan_jobs):
        failures.append("candidate plan mapping count differs from source plan")
    for item in plan_records:
        root = normalize_root(str(item["root"]))
        job = plan_by_root.get(root)
        if job is None:
            failures.append(f"candidate plan root missing from source plan: {root}")
            continue
        source = source_path(root)
        if not source.exists():
            failures.append(f"missing plan source {root}")
            continue
        current = sha256(source)
        if current != str(job["source_sha256"]).lower():
            failures.append(f"plan source SHA changed {root}")
        if current != item["source_sha256"]:
            failures.append(f"candidate old SHA mismatch {root}")
    root_payload = [
        {
            "name": item["name"],
            "root": item["root"],
            "source_sha256": item["source_sha256"],
            "candidate_target": item["candidate_target"],
            "candidate_path": item["candidate_path"],
            "candidate_sha256": item["candidate_sha256"],
            "status": item["status"],
        }
        for item in plan_records
    ]
    canonical = json.dumps(root_payload, ensure_ascii=False, sort_keys=True, separators=(",", ":"))
    candidate_root_sha = hashlib.sha256(canonical.encode("utf-8")).hexdigest()
    checks["candidate_new_root_sha256"] = candidate_root_sha
    if candidate_root_sha != source_map["candidate_new_root_sha256"]:
        failures.append("candidate plan root SHA mismatch")

    freeze_records = freeze["first_accepted_rectangle"]["records"]
    freeze_unchanged = True
    for item in freeze_records:
        path = source_path(item["source"])
        current = sha256(path) if path.exists() else None
        if current != item["expected_sha256"] or current != item["current_sha256"] or not item["unchanged"]:
            freeze_unchanged = False
            failures.append(f"first accepted source changed {item['source']}")
    checks["first_accepted_source_count"] = len(freeze_records)
    checks["first_accepted_sources_unchanged"] = freeze_unchanged
    if not freeze["invariants"]["no_lean_invoked"]:
        failures.append("FREEZE no_lean_invoked flag is false")

    result = {
        "status": "STATIC_PASS_SOURCE_ONLY_NO_LEAN" if not failures else "STATIC_FAIL_SOURCE_ONLY",
        "created_utc": datetime.now(timezone.utc).isoformat(),
        "no_lean_invoked": True,
        "checks": checks,
        "failure_count": len(failures),
        "failures": failures,
    }
    (OUT / "VERIFY.json").write_text(
        json.dumps(result, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
        newline="\n",
    )
    print(json.dumps(result, ensure_ascii=False, indent=2))
    if failures:
        raise SystemExit(1)


if __name__ == "__main__":
    main()
