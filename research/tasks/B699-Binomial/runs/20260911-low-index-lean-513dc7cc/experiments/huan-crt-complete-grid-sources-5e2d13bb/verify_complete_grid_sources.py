"""Independent static checker for the complete CRT source candidate.

The checker does not import the generator. It re-reads frozen JSON and parses
the emitted Lean data/dispatch text, so a self-consistent generator bug is not
accepted by the static report. It never invokes Lean.
"""

from __future__ import annotations

import hashlib
import json
import re
from pathlib import Path
from typing import Any


OUT = Path(__file__).resolve().parent
RUN = OUT.parent.parent
MANIFEST_PATH = OUT / "manifest.json"
CHUNK_SIZE = 8


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def fail(message: str) -> None:
    raise AssertionError(message)


def load_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text(encoding="utf-8"))


def input_cells(grid: dict[str, Any]) -> dict[tuple[int, int], dict[str, Any]]:
    records: dict[tuple[int, int], dict[str, Any]] = {}
    for raw_name in grid["input_paths"]:
        path = Path(raw_name)
        for cell in load_json(path)["cells"]:
            key = int(cell["a"]), int(cell["b"])
            if key in records:
                fail(f"duplicate input cell {grid['tag']} {key}")
            records[key] = cell
    return records


def expected_cell(cell: dict[str, Any]) -> tuple[int, tuple[int, int], dict[int, tuple[int, int]]]:
    exceptions = {}
    for item in cell.get("exceptions", []):
        d = int(item["d"])
        if d in exceptions:
            fail(f"duplicate input displacement {d}")
        exceptions[d] = (int(item["lo"]), int(item["hi"]))
    default = cell["default"]
    return (
        int(cell["inverse"]),
        (int(default[0]), int(default[1])),
        exceptions,
    )


CELL_RE = re.compile(
    r"def cellA(?P<a>\d+)B(?P<b>\d+) : CellData where\n"
    r"  inverse := (?P<inverse>\d+)\n"
    r"  bounds := fun d =>\n"
    r"(?P<body>.*?)(?=\ndef (?:cellA|rowA|chunkData)|\nend )",
    re.S,
)
NOEX_CELL_RE = re.compile(
    r"def cellA(?P<a>\d+)B(?P<b>\d+) : CellData where\n"
    r"  inverse := (?P<inverse>\d+)\n"
    r"  bounds := fun _ => ⟨(?P<lo>-?\d+), (?P<hi>-?\d+)⟩"
)
EX_RE = re.compile(
    r"(?:if|else if) d = \((-?\d+) : ℤ\) then "
    r"⟨(-?\d+), (-?\d+)⟩"
)
DEFAULT_RE = re.compile(r"else ⟨(-?\d+), (-?\d+)⟩\s*$")
ROW_RE = re.compile(
    r"def rowA(?P<a>\d+) \(b : ℕ\) : CellData :=\n"
    r"(?P<body>.*?)(?=\ndef rowA|\ndef chunkData|\nend )",
    re.S,
)
ROW_ITEM_RE = re.compile(r"(?:if|else if) b = (\d+) then cellA(\d+)B(\d+)")
CHUNK_RE = re.compile(
    r"def chunkData \(a b : ℕ\) : CellData :=\n"
    r"(?P<body>.*?)(?=\nend )",
    re.S,
)
CHUNK_ITEM_RE = re.compile(r"(?:if|else if) a = (\d+) then rowA(\d+)")


def parse_data(text: str) -> dict[tuple[int, int], tuple[int, tuple[int, int], dict[int, tuple[int, int]]]]:
    result = {}
    for match in NOEX_CELL_RE.finditer(text):
        key = (int(match["a"]), int(match["b"]))
        if key in result:
            fail(f"duplicate output cell {key}")
        result[key] = (
            int(match["inverse"]),
            (int(match["lo"]), int(match["hi"])),
            {},
        )
    for match in CELL_RE.finditer(text):
        a, b = int(match["a"]), int(match["b"])
        body = match["body"]
        ex = {}
        branch_tokens = re.findall(r"^\s*(if|else if) d =", body, re.M)
        if branch_tokens != (["if"] + ["else if"] * (len(branch_tokens) - 1)):
            fail(f"invalid exception branch chain {(a, b)}")
        for item in EX_RE.finditer(body):
            d, lo, hi = map(int, item.groups())
            if d in ex:
                fail(f"duplicate output displacement {(a, b, d)}")
            ex[d] = (lo, hi)
        default_match = DEFAULT_RE.search(body)
        if default_match is None:
            fail(f"missing output default {(a, b)}")
        default = tuple(map(int, default_match.groups()))
        key = (a, b)
        if key in result:
            fail(f"duplicate output cell {key}")
        result[key] = (int(match["inverse"]), default, ex)
    return result


def check_data_file(grid: dict[str, Any], chunk: dict[str, Any], data_path: Path) -> int:
    text = data_path.read_text(encoding="utf-8")
    if "\r" in text or "\\n" in text:
        fail(f"non-LF or literal escape in {data_path}")
    actual = parse_data(text)
    cells = input_cells(grid)
    wanted_keys = {
        (a, b)
        for a in range(int(chunk["aStart"]), int(chunk["aStart"]) + int(chunk["aCount"]))
        for b in range(1, int(grid["bmax"]) + 1)
    }
    if set(actual) != wanted_keys:
        fail(f"cell definition coverage mismatch {data_path}")
    for key in sorted(wanted_keys):
        if actual[key] != expected_cell(cells[key]):
            fail(f"cell value mismatch {grid['tag']} {key}")
    rows = {}
    for match in ROW_RE.finditer(text):
        a = int(match["a"])
        items = [(int(b), int(aa), int(bb)) for b, aa, bb in ROW_ITEM_RE.findall(match["body"])]
        rows[a] = items
    expected_rows = set(range(int(chunk["aStart"]), int(chunk["aStart"]) + int(chunk["aCount"])))
    if set(rows) != expected_rows:
        fail(f"row definition coverage mismatch {data_path}")
    for a, items in rows.items():
        wanted = [(b, a, b) for b in range(1, int(grid["bmax"]) + 1)]
        row_match = next(match for match in ROW_RE.finditer(text) if int(match["a"]) == a)
        if items != wanted or "else outsideCell" not in row_match["body"]:
            fail(f"row dispatch mismatch {data_path} row={a}")
    chunk_match = CHUNK_RE.search(text)
    if chunk_match is None:
        fail(f"missing chunkData {data_path}")
    chunk_items = [
        (int(a), int(aa)) for a, aa in CHUNK_ITEM_RE.findall(chunk_match["body"])
    ]
    expected_chunk = [
        (a, a)
        for a in range(int(chunk["aStart"]), int(chunk["aStart"]) + int(chunk["aCount"]))
    ]
    if chunk_items != expected_chunk or "else outsideCell" not in chunk_match["body"]:
        fail(f"chunk dispatch mismatch {data_path}")
    if "def outsideCell" not in text:
        fail(f"missing outsideCell {data_path}")
    return len(actual)


def check_row_file(grid: dict[str, Any], chunk: dict[str, Any], a: int, path: Path) -> int:
    text = path.read_text(encoding="utf-8")
    if "\r" in text or "\\n" in text:
        fail(f"non-LF or literal escape in {path}")
    bmax = int(grid["bmax"])
    for b in range(1, bmax + 1):
        needle = f"theorem cellA{a}B{b}_check"
        if needle not in text:
            fail(f"missing direct theorem {needle} in {path}")
    if text.count("decide +kernel") != bmax:
        fail(f"unexpected direct proof count in {path}")
    if "interval_cases b" not in text or f"theorem rowA{a}_block_check" not in text:
        fail(f"missing symbolic row proof in {path}")
    if re.search(r"rowA\d+_block_check\s*:\s*.*?:= by\s*decide", text, re.S):
        fail(f"row theorem uses whole-row decide {path}")
    return bmax


def check_chunk_file(grid: dict[str, Any], chunk: dict[str, Any], path: Path) -> None:
    text = path.read_text(encoding="utf-8")
    if "\r" in text or "\\n" in text:
        fail(f"non-LF or literal escape in {path}")
    if "theorem chunk_check" not in text or "blockCheck_append_rows" not in text:
        fail(f"missing symbolic chunk composition in {path}")
    if re.search(r"theorem chunk_check[\s\S]*?:= by\s*decide", text):
        fail(f"chunk uses whole-block decide {path}")
    if text.count("rowA") < int(chunk["aCount"]):
        fail(f"missing row references in {path}")
    if "#print axioms" not in text:
        fail(f"missing chunk axiom print {path}")


def check_composer(grid: dict[str, Any], chunks: list[dict[str, Any]], path: Path) -> None:
    text = path.read_text(encoding="utf-8")
    if "\r" in text or "\\n" in text:
        fail(f"non-LF or literal escape in {path}")
    for chunk in chunks:
        if f".{chunk['module']}" not in text:
            fail(f"composer misses {chunk['module']} in {path}")
    for required in ("globalData", "blockCheck_transfer_data", "blockCheck_append_rows", "rectangle_check"):
        if required not in text:
            fail(f"composer missing {required} in {path}")
    if re.search(r"theorem rectangle_check[\s\S]*?:= by\s*decide", text):
        fail(f"composer uses whole-rectangle decide {path}")


def main() -> None:
    manifest = load_json(MANIFEST_PATH)
    if manifest["status"] != "UNCOMPILED_COMPLETE_GRID_SOURCE_CANDIDATE":
        fail("unexpected manifest status")
    if manifest["grid_count"] != 24 or manifest["chunk_count_all"] != 147:
        fail("grid/chunk count mismatch")
    if manifest["cell_count"] != 35545 or manifest["signed_rows"] != 746445:
        fail("total coverage mismatch")

    generated_cells = 0
    generated_chunks = 0
    for grid in manifest["grids"]:
        for raw_path, expected_sha in zip(grid["input_paths"], grid["input_sha256"]):
            path = Path(raw_path)
            if sha256(path) != expected_sha:
                fail(f"input SHA changed {path}")
        cells = input_cells(grid)
        expected = int(grid["amax"]) * int(grid["bmax"])
        if len(cells) != expected:
            fail(f"input coverage mismatch {grid['tag']}")
        chunks = grid["chunks"]
        cursor = 1
        for chunk in chunks:
            if int(chunk["aStart"]) != cursor:
                fail(f"chunk gap/overlap in {grid['tag']}")
            if int(chunk["aCount"]) > CHUNK_SIZE:
                fail(f"chunk too large in {grid['tag']}")
            cursor += int(chunk["aCount"])
            if chunk["existing_chunk000"]:
                continue
            generated_chunks += 1
            module = str(chunk["module"]).split(".")[-1]
            folder = OUT / "candidate" / "lean" / str(chunk["module"]).split(".")[-2]
            data = folder / f"{module}Data.lean"
            if not data.is_file():
                fail(f"missing data source {data}")
            count = check_data_file(grid, chunk, data)
            generated_cells += count
            for a in range(int(chunk["aStart"]), int(chunk["aStart"]) + int(chunk["aCount"])):
                row = folder / f"{module}RowA{a:02d}.lean"
                if not row.is_file():
                    fail(f"missing row source {row}")
                check_row_file(grid, chunk, a, row)
            block = folder / f"{module}.lean"
            audit = folder / f"{module}Audit.lean"
            data_audit = folder / f"{module}DataAudit.lean"
            if not block.is_file() or not audit.is_file() or not data_audit.is_file():
                fail(f"missing chunk audit sources {folder}")
            check_chunk_file(grid, chunk, block)
            ns = (
                "Math.B699.CRTStage" + str(grid["stage"]) + "Pair"
                + str(grid["p"]) + str(grid["q"]) + "." + module
            )
            audit_text = audit.read_text(encoding="utf-8")
            data_audit_text = data_audit.read_text(encoding="utf-8")
            if f"#print axioms {ns}.chunk_check" not in audit_text:
                fail(f"wrong final audit target {audit}")
            if f"#print axioms {ns}.chunkData" not in data_audit_text:
                fail(f"wrong data audit target {data_audit}")
        if cursor != int(grid["amax"]) + 1:
            fail(f"chunk tail mismatch {grid['tag']}")
        composer = OUT / "candidate" / "lean" / (
            "CrtStage" + str(grid["stage"]) + "Pair" + str(grid["p"]) + str(grid["q"])
        ) / "CompleteComposer.lean"
        if not composer.is_file():
            fail(f"missing composer {composer}")
        check_composer(grid, chunks, composer)
        composer_text = composer.read_text(encoding="utf-8")
        composer_ns = (
            "Math.B699.CRTStage" + str(grid["stage"]) + "Pair"
            + str(grid["p"]) + str(grid["q"]) + ".CompleteComposer"
        )
        if f"#print axioms {composer_ns}.rectangle_check" not in composer_text:
            fail(f"wrong composer audit target {composer}")

    if generated_chunks != 146 or generated_cells != 35001:
        fail(f"generated totals mismatch chunks={generated_chunks} cells={generated_cells}")

    for name, record in manifest["existing_chunk000_files"].items():
        path = Path(record["path"])
        if sha256(path) != record["sha256"] or path.stat().st_size != record["bytes"]:
            fail(f"existing Chunk000 changed: {path}")

    report = {
        "status": "STATIC_PASS_SOURCE_ONLY_NO_LEAN",
        "grid_count": manifest["grid_count"],
        "chunk_count_all": manifest["chunk_count_all"],
        "chunk_count_generated": generated_chunks,
        "cell_count": manifest["cell_count"],
        "signed_rows": manifest["signed_rows"],
        "generated_cell_definitions_reloaded": generated_cells,
        "existing_chunk000_files_rechecked": len(manifest["existing_chunk000_files"]),
        "checks": [
            "frozen input SHA re-read through manifest paths",
            "every generated CellData inverse/default/exception map compared to JSON",
            "every row and chunk range has exact ordered dispatch and outside fallback",
            "direct cell proofs are decide +kernel; row/chunk/composer are symbolic",
            "DataAudit and final chunk axiom print entries exist",
            "no Lean invocation, Git mutation, or integration source mutation",
        ],
    }
    (OUT / "STATIC_CHECK.json").write_text(
        json.dumps(report, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
        newline="\n",
    )
    print(json.dumps(report, ensure_ascii=False))


if __name__ == "__main__":
    main()
