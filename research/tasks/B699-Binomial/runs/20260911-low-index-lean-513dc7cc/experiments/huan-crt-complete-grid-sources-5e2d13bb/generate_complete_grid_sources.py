"""Generate split CRT grid sources for stages 00..03.

This is a source-only candidate generator. It consumes frozen exact JSON
records and emits one data module, one symbolic row module per a-row, one
symbolic chunk module, and two axiom-audit modules per chunk. Only cell
theorems use decide plus kernel; row, chunk, and composer theorems reuse the
checked APIs symbolically.
"""

from __future__ import annotations

import hashlib
import json
from dataclasses import dataclass
from pathlib import Path
from typing import Any


OUT = Path(__file__).resolve().parent
RUN = OUT.parent.parent
PKG = "research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc»"
LEAN_BASE = PKG + ".lean"
GRID_IMPORT = LEAN_BASE + ".CrtGrid.Grid"
META_IMPORT = LEAN_BASE + ".I11CrtStages.NumericMetadata"
CHUNK_SIZE = 8

PAIR23_DIR = RUN / "experiments/huan-crt-stage0-pair23-full-5e2d13bb"
REMAINING_DIR = RUN / "experiments/huan-crt-remaining-grid-data-5e2d13bb"
EXISTING_CHUNK_DIR = RUN / "lean/CrtStage0Pair23"
PROBE_PATH = RUN / "experiments/huan-i11-crt-descent-probe-5e2d13bb/result.json"
REMAINING_MANIFEST = REMAINING_DIR / "manifest.json"

OPTIONS = """set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512
"""


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def write_utf8(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8", newline="\n")


def pair_tag(p: int, q: int) -> str:
    return f"{p}{q}"


def stage_meta(stage: int) -> str:
    return f"Stage{stage:02d}"


def module_prefix(stage: int, p: int, q: int) -> str:
    return f"CrtStage{stage}Pair{pair_tag(p, q)}"


def namespace_prefix(stage: int, p: int, q: int) -> str:
    return f"Math.B699.CRTStage{stage}Pair{pair_tag(p, q)}"


def source_import(stage: int, p: int, q: int, module: str) -> str:
    return f"{LEAN_BASE}.{module_prefix(stage, p, q)}.{module}"


def json_cell_key(cell: dict[str, Any]) -> tuple[int, int]:
    return int(cell["a"]), int(cell["b"])


@dataclass(frozen=True)
class Grid:
    stage: int
    p: int
    q: int
    H: int
    M: int
    T: int
    amax: int
    bmax: int
    cells: dict[tuple[int, int], dict[str, Any]]
    source_paths: tuple[Path, ...]
    source_sha256: tuple[str, ...]

    @property
    def pair(self) -> str:
        return pair_tag(self.p, self.q)

    @property
    def tag(self) -> str:
        return f"stage{self.stage}_pair{self.pair}"


@dataclass(frozen=True)
class Chunk:
    grid: Grid
    index: int
    a_start: int
    a_count: int

    @property
    def a_stop(self) -> int:
        return self.a_start + self.a_count

    @property
    def module(self) -> str:
        return f"Chunk{self.index:03d}"

    @property
    def ns(self) -> str:
        return namespace_prefix(self.grid.stage, self.grid.p, self.grid.q) + "." + self.module

    @property
    def folder(self) -> Path:
        return (
            OUT / "candidate" / "lean"
            / module_prefix(self.grid.stage, self.grid.p, self.grid.q)
        )


def load_grid(stage: int, p: int, q: int, paths: list[Path]) -> Grid:
    records: dict[tuple[int, int], dict[str, Any]] = {}
    H = M = T = amax = bmax = None
    for path in paths:
        raw = json.loads(path.read_text(encoding="utf-8"))
        if "H" in raw:
            this = (int(raw["H"]), int(raw["M"]), int(raw["T"]))
            shape = (int(raw["aMax"]), int(raw["bMax"]))
            if H is None:
                H, M, T = this
                amax, bmax = shape
            elif this != (H, M, T) or shape != (amax, bmax):
                raise ValueError(f"inconsistent grid metadata: {path}")
        for cell in raw["cells"]:
            key = json_cell_key(cell)
            if key in records:
                raise ValueError(f"duplicate cell {key} in {path}")
            records[key] = cell
        if "aStart" in raw and H is None:
            H, M, T = (
                649037107316853453566312041152512,
                118703030,
                1458309064184540963,
            )
            amax, bmax = 108, 68
    if None in (H, M, T, amax, bmax):
        raise ValueError(f"missing grid metadata: {paths}")
    expected = {(a, b) for a in range(1, amax + 1) for b in range(1, bmax + 1)}
    if set(records) != expected:
        missing = sorted(expected - set(records))[:3]
        extra = sorted(set(records) - expected)[:3]
        raise ValueError(f"grid coverage mismatch {paths}: missing={missing} extra={extra}")
    return Grid(
        stage=stage, p=p, q=q, H=int(H), M=int(M), T=int(T),
        amax=int(amax), bmax=int(bmax), cells=records,
        source_paths=tuple(paths),
        source_sha256=tuple(sha256(path) for path in paths),
    )


def make_grids() -> list[Grid]:
    grids = [
        load_grid(
            0, 2, 3,
            [PAIR23_DIR / f"Chunk{i:03d}.json" for i in range(14)],
        )
    ]
    for stage in range(4):
        pairs = [(2, 5), (2, 7), (3, 5), (3, 7), (5, 7)]
        if stage > 0:
            pairs = [(2, 3), (2, 5), (2, 7), (3, 5), (3, 7), (5, 7)]
        for p, q in pairs:
            path = REMAINING_DIR / "data" / f"stage{stage}_pair{p}{q}.json"
            grids.append(load_grid(stage, p, q, [path]))
    return grids


def chunks_for(grid: Grid) -> list[Chunk]:
    return [
        Chunk(grid, i, start, min(CHUNK_SIZE, grid.amax - start + 1))
        for i, start in enumerate(range(1, grid.amax + 1, CHUNK_SIZE))
    ]


def bounds_literal(lo: int, hi: int) -> str:
    return f"⟨{lo}, {hi}⟩"


def int_literal(value: int) -> str:
    return f"({value} : ℤ)"


def cell_definition(cell: dict[str, Any]) -> str:
    a, b = json_cell_key(cell)
    exceptions = sorted(cell.get("exceptions", []), key=lambda item: int(item["d"]))
    seen: set[int] = set()
    default = cell["default"]
    lines = [
        f"def cellA{a}B{b} : CellData where",
        f"  inverse := {int(cell['inverse'])}",
    ]
    if not exceptions:
        lines.append(f"  bounds := fun _ => {bounds_literal(int(default[0]), int(default[1]))}")
        return "\n".join(lines)
    lines.append("  bounds := fun d =>")
    for item in exceptions:
        d = int(item["d"])
        if d in seen:
            raise ValueError(f"duplicate exception d={d} in {(a, b)}")
        if not -10 <= d <= 10:
            raise ValueError(f"out-of-range displacement {d} in {(a, b)}")
        seen.add(d)
        prefix = "    if" if not seen - {d} else "    else if"
        lines.append(
            f"{prefix} d = {int_literal(d)} then "
            f"{bounds_literal(int(item['lo']), int(item['hi']))}"
        )
    lines.append(f"    else {bounds_literal(int(default[0]), int(default[1]))}")
    return "\n".join(lines)


def data_header(ns: str) -> str:
    return (
        f"import {GRID_IMPORT}\n"
        f"import {META_IMPORT}\n\n"
        "/-! UNCOMPILED source-only candidate. Cell data is copied from the "
        "frozen exact JSON; only the later cell lemmas compute it. -/\n"
        + OPTIONS + "\n"
        + f"namespace {ns}\n"
        "open Math.B699.CRTGrid\n"
        "open B699LowIndex.I11CrtStageMetadata\n\n"
    )


def make_data(chunk: Chunk) -> tuple[str, list[tuple[int, int]]]:
    grid, ns = chunk.grid, chunk.ns
    out = [data_header(ns)]
    out += [
        "def outsideCell : CellData where",
        "  inverse := 0",
        "  bounds := fun _ => ⟨0, -1⟩",
        "",
    ]
    keys: list[tuple[int, int]] = []
    for a in range(chunk.a_start, chunk.a_stop):
        for b in range(1, grid.bmax + 1):
            keys.append((a, b))
            out.append(cell_definition(grid.cells[(a, b)]))
            out.append("")
    for a in range(chunk.a_start, chunk.a_stop):
        out.append(f"def rowA{a} (b : ℕ) : CellData :=")
        for b in range(1, grid.bmax + 1):
            prefix = "  if" if b == 1 else "  else if"
            out.append(f"{prefix} b = {b} then cellA{a}B{b}")
        out.append("  else outsideCell")
        out.append("")
    out.append("def chunkData (a b : ℕ) : CellData :=")
    for a in range(chunk.a_start, chunk.a_stop):
        prefix = "  if" if a == chunk.a_start else "  else if"
        out.append(f"{prefix} a = {a} then rowA{a} b")
    out.append("  else outsideCell")
    out += ["", f"end {ns}", ""]
    return "\n".join(out), keys


def goal(grid: Grid, a: int | str, b: int | str, data: str) -> str:
    meta = stage_meta(grid.stage)
    return (
        f"cellCheck ({grid.p} ^ {a}) ({grid.q} ^ {b})\n"
        f"      (heightCap {meta}.H {meta}.M ({grid.p} ^ {a}))\n"
        f"      (heightCap {meta}.H {meta}.M ({grid.q} ^ {b})) "
        f"{meta}.upper {data} = true"
    )


def row_header(chunk: Chunk, imports: list[str]) -> str:
    return (
        "\n".join(f"import {item}" for item in imports) + "\n\n"
        "/-! UNCOMPILED direct-cell candidate; no row-wide decide. -/\n"
        + OPTIONS + "\n"
        + f"namespace {chunk.ns}\n"
        "open Math.B699.CRTGrid\n"
        "open B699LowIndex.I11CrtStageMetadata\n\n"
    )


def make_row(chunk: Chunk, a: int) -> str:
    grid = chunk.grid
    data_import = source_import(grid.stage, grid.p, grid.q, f"{chunk.module}Data")
    text = row_header(chunk, [data_import, "Mathlib.Tactic.IntervalCases"])
    for b in range(1, grid.bmax + 1):
        text += (
            f"theorem cellA{a}B{b}_check :\n"
            f"    {goal(grid, a, b, f'cellA{a}B{b}')} := by\n"
            "  decide +kernel\n\n"
        )
    text += (
        f"theorem rowA{a}_cell_check (b : ℕ) (hb0 : 1 ≤ b) "
        f"(hb1 : b ≤ {grid.bmax}) :\n"
        f"    {goal(grid, a, 'b', f'(rowA{a} b)')} := by\n"
        "  interval_cases b\n"
    )
    for b in range(1, grid.bmax + 1):
        text += (
            f"  · simpa only [show rowA{a} {b} = cellA{a}B{b} from rfl] "
            f"using cellA{a}B{b}_check\n"
        )
    meta = stage_meta(grid.stage)
    text += (
        "\n"
        f"theorem rowA{a}_block_check :\n"
        f"    blockCheck {grid.p} {grid.q} {meta}.H {meta}.M {meta}.upper "
        f"{a} 1 1 {grid.bmax} chunkData = true := by\n"
        "  unfold blockCheck\n"
        "  apply List.all_eq_true.mpr\n"
        "  intro aa haa\n"
        "  have hab := List.mem_range'_1.mp haa\n"
        f"  have ha : aa = {a} := by omega\n"
        "  subst aa\n"
        "  apply List.all_eq_true.mpr\n"
        "  intro b hb\n"
        "  have hbb := List.mem_range'_1.mp hb\n"
        f"  have h := rowA{a}_cell_check b hbb.1 (by omega)\n"
        f"  simpa only [show chunkData {a} b = rowA{a} b from rfl] using h\n\n"
        f"end {chunk.ns}\n\n"
    )
    roots = [f"cellA{a}B{b}_check" for b in range(1, grid.bmax + 1)]
    roots += [f"rowA{a}_cell_check", f"rowA{a}_block_check"]
    text += "\n".join(f"#print axioms {chunk.ns}.{root}" for root in roots) + "\n"
    return text


def make_chunk(chunk: Chunk) -> str:
    grid, ns, meta = chunk.grid, chunk.ns, stage_meta(chunk.grid.stage)
    imports = [
        source_import(grid.stage, grid.p, grid.q, f"{chunk.module}RowA{a:02d}")
        for a in range(chunk.a_start, chunk.a_stop)
    ]
    text = (
        "\n".join(f"import {item}" for item in imports) + "\n\n"
        "/-! UNCOMPILED symbolic chunk composition. It never decides the full "
        "rectangle; it appends proved rows. -/\n"
        + OPTIONS + "\n"
        + f"namespace {ns}\n"
        "open Math.B699.CRTGrid\n"
        "open B699LowIndex.I11CrtStageMetadata\n\n"
    )
    text += """private theorem append_rows_named
    {p q H M T start left right next total bStart bCount : ℕ}
    {data : ℕ → ℕ → CellData}
    (hnext : start + left = next) (htotal : left + right = total)
    (hl : blockCheck p q H M T start left bStart bCount data = true)
    (hr : blockCheck p q H M T next right bStart bCount data = true) :
    blockCheck p q H M T start total bStart bCount data = true := by
  have hr' : blockCheck p q H M T (start + left) right bStart bCount data = true := by
    rw [hnext]
    exact hr
  have h := blockCheck_append_rows hl hr'
  rw [htotal] at h
  exact h

"""
    text += (
        f"theorem chunk_check :\n"
        f"    blockCheck {grid.p} {grid.q} {meta}.H {meta}.M {meta}.upper "
        f"{chunk.a_start} {chunk.a_count} 1 {grid.bmax} chunkData = true := by\n"
    )
    if chunk.a_count == 1:
        text += f"  exact rowA{chunk.a_start}_block_check\n"
    else:
        previous = f"rowA{chunk.a_start}_block_check"
        for offset, a in enumerate(range(chunk.a_start + 1, chunk.a_stop), start=2):
            left = offset - 1
            text += (
                f"  have h{offset} : blockCheck {grid.p} {grid.q} "
                f"{meta}.H {meta}.M {meta}.upper {chunk.a_start} {offset} "
                f"1 {grid.bmax} chunkData = true :=\n"
                "    append_rows_named\n"
                f"      (p := {grid.p}) (q := {grid.q}) (H := {meta}.H) "
                f"(M := {meta}.M) (T := {meta}.upper)\n"
                f"      (start := {chunk.a_start}) (left := {left}) "
                f"(right := 1) (next := {a}) (total := {offset})\n"
                f"      (bStart := 1) (bCount := {grid.bmax}) (data := chunkData)\n"
                f"      (by decide : {chunk.a_start} + {left} = {a}) "
                f"(by decide : {left} + 1 = {offset})\n"
                f"      {previous} rowA{a}_block_check\n"
            )
            previous = f"h{offset}"
        text += f"  exact h{chunk.a_count}\n"
    text += (
        f"\nend {ns}\n\n"
        f"#print axioms {ns}.chunk_check\n"
    )
    return text


def make_data_audit(chunk: Chunk) -> str:
    return (
        f"import {source_import(chunk.grid.stage, chunk.grid.p, chunk.grid.q, chunk.module + 'Data')}\n\n"
        f"#print axioms {chunk.ns}.chunkData\n"
    )


def make_audit(chunk: Chunk) -> str:
    return (
        f"import {source_import(chunk.grid.stage, chunk.grid.p, chunk.grid.q, chunk.module)}\n\n"
        f"#check {chunk.ns}.chunkData\n"
        f"#check {chunk.ns}.chunk_check\n"
        f"#print axioms {chunk.ns}.chunk_check\n"
    )


def make_composer(grid: Grid, chunks: list[Chunk]) -> str:
    ns = namespace_prefix(grid.stage, grid.p, grid.q) + ".CompleteComposer"
    imports = [source_import(grid.stage, grid.p, grid.q, c.module) for c in chunks]
    if grid.stage == 0 and grid.p == 2 and grid.q == 3:
        imports[0] = f"{LEAN_BASE}.CrtStage0Pair23.Chunk000"
    imports += [f"{LEAN_BASE}.I11CrtStep.Meta", META_IMPORT]
    text = (
        "\n".join(f"import {item}" for item in imports) + "\n\n"
        "/-! UNCOMPILED composer candidate. Every chunk proof is transferred "
        "to one total function and appended symbolically. -/\n"
        + OPTIONS + "\n"
        + f"namespace {ns}\n"
        "open Math.B699.CRTGrid\n"
        "open B699LowIndex.I11CrtStageMetadata\n\n"
        "def outsideCell : CellData where\n"
        "  inverse := 0\n"
        "  bounds := fun _ => ⟨0, -1⟩\n\n"
    )
    first, last = chunks[0].a_start, chunks[-1].a_stop - 1
    text += "def globalData (a b : ℕ) : CellData :=\n"
    text += f"  if a < {first} ∨ {last} < a then outsideCell\n"
    for index, chunk in enumerate(chunks):
        if index < len(chunks) - 1:
            text += f"  else if a < {chunk.a_stop} then {chunk.module}.chunkData a b\n"
        else:
            text += f"  else {chunk.module}.chunkData a b\n"
    text += "\n"
    for index, chunk in enumerate(chunks):
        text += (
            f"theorem globalData_eq_{chunk.index:03d} (a b : ℕ) "
            f"(ha0 : {chunk.a_start} ≤ a) (ha1 : a < {chunk.a_stop}) :\n"
            f"    globalData a b = {chunk.module}.chunkData a b := by\n"
            f"  have hout : ¬ (a < {first} ∨ {last} < a) := by omega\n"
        )
        for j, previous in enumerate(chunks[:index]):
            text += f"  have h{j:03d} : ¬ a < {previous.a_stop} := by omega\n"
        if index < len(chunks) - 1:
            text += f"  have hin : a < {chunk.a_stop} := by omega\n"
        items = ["globalData", "if_neg hout"]
        items += [f"if_neg h{j:03d}" for j in range(index)]
        if index < len(chunks) - 1:
            items.append("if_pos hin")
        text += "  simp only [" + ", ".join(items) + "]\n\n"
    meta = stage_meta(grid.stage)
    for chunk in chunks:
        text += (
            f"theorem global_check_{chunk.index:03d} :\n"
            f"    blockCheck {grid.p} {grid.q} {meta}.H {meta}.M {meta}.upper "
            f"{chunk.a_start} {chunk.a_count} 1 {grid.bmax} globalData = true := by\n"
            "  exact blockCheck_transfer_data\n"
            f"    (p := {grid.p}) (q := {grid.q}) (H := {meta}.H) "
            f"(M := {meta}.M) (T := {meta}.upper)\n"
            f"    (aStart := {chunk.a_start}) (aCount := {chunk.a_count}) "
            f"(bStart := 1) (bCount := {grid.bmax})\n"
            f"    (data := {chunk.module}.chunkData) (data' := globalData) "
            f"{chunk.module}.chunk_check\n"
            "    (by\n"
            "      intro a ha0 ha1 b _hb0 _hb1\n"
            f"      exact (globalData_eq_{chunk.index:03d} a b ha0 (by omega)).symm)\n\n"
        )
    text += """private theorem append_rows_named
    {p q H M T start left right next total bStart bCount : ℕ}
    {data : ℕ → ℕ → CellData}
    (hnext : start + left = next) (htotal : left + right = total)
    (hl : blockCheck p q H M T start left bStart bCount data = true)
    (hr : blockCheck p q H M T next right bStart bCount data = true) :
    blockCheck p q H M T start total bStart bCount data = true := by
  have hr' : blockCheck p q H M T (start + left) right bStart bCount data = true := by
    rw [hnext]
    exact hr
  have h := blockCheck_append_rows hl hr'
  rw [htotal] at h
  exact h

"""
    previous = f"global_check_{chunks[0].index:03d}"
    cumulative = chunks[0].a_count
    for chunk in chunks[1:]:
        total = cumulative + chunk.a_count
        name = f"prefix_{total:03d}"
        text += (
            f"theorem {name} :\n"
            f"    blockCheck {grid.p} {grid.q} {meta}.H {meta}.M {meta}.upper "
            f"{first} {total} 1 {grid.bmax} globalData = true := by\n"
            "  exact append_rows_named\n"
            f"    (p := {grid.p}) (q := {grid.q}) (H := {meta}.H) "
            f"(M := {meta}.M) (T := {meta}.upper)\n"
            f"    (start := {first}) (left := {cumulative}) "
            f"(right := {chunk.a_count}) (next := {chunk.a_start}) "
            f"(total := {total})\n"
            f"    (bStart := 1) (bCount := {grid.bmax}) (data := globalData)\n"
            f"    (by decide : {first} + {cumulative} = {chunk.a_start}) "
            f"(by decide : {cumulative} + {chunk.a_count} = {total})\n"
            f"    {previous} global_check_{chunk.index:03d}\n\n"
        )
        previous, cumulative = name, total
    text += (
        f"theorem rectangle_check :\n"
        f"    rectangleCheck {grid.p} {grid.q} {meta}.H {meta}.M {meta}.upper "
        f"{grid.amax} {grid.bmax} globalData = true := by\n"
        "  unfold rectangleCheck\n"
        f"  exact {previous}\n\n"
        f"end {ns}\n\n"
        f"#print axioms {ns}.rectangle_check\n"
    )
    return text


def generated_chunks(grids: list[Grid]) -> list[Chunk]:
    result = []
    for grid in grids:
        for chunk in chunks_for(grid):
            if grid.stage == 0 and grid.p == 2 and grid.q == 3 and chunk.index == 0:
                continue
            result.append(chunk)
    return result


def preserve_existing_chunk000() -> dict[str, Any]:
    names = [
        "Chunk000Data.lean", "Chunk000DataAudit.lean", "Chunk000Pilot8.lean",
        "Chunk000PilotHigh.lean", "Chunk000RowA01.lean", "Chunk000RowA02.lean",
        "Chunk000RowA03.lean", "Chunk000RowA04.lean", "Chunk000RowA05.lean",
        "Chunk000RowA06.lean", "Chunk000RowA07.lean", "Chunk000RowA08.lean",
        "Chunk000.lean",
    ]
    result = {}
    for name in names:
        path = EXISTING_CHUNK_DIR / name
        if not path.is_file():
            raise FileNotFoundError(path)
        result[name] = {"path": str(path), "bytes": path.stat().st_size, "sha256": sha256(path)}
    return result


def main() -> None:
    grids = make_grids()
    existing = preserve_existing_chunk000()
    all_chunks = {grid.tag: chunks_for(grid) for grid in grids}
    generated = generated_chunks(grids)
    for chunk in generated:
        data_text, _ = make_data(chunk)
        write_utf8(chunk.folder / f"{chunk.module}Data.lean", data_text)
        write_utf8(chunk.folder / f"{chunk.module}DataAudit.lean", make_data_audit(chunk))
        for a in range(chunk.a_start, chunk.a_stop):
            write_utf8(chunk.folder / f"{chunk.module}RowA{a:02d}.lean", make_row(chunk, a))
        write_utf8(chunk.folder / f"{chunk.module}.lean", make_chunk(chunk))
        write_utf8(chunk.folder / f"{chunk.module}Audit.lean", make_audit(chunk))

    composers = []
    for grid in grids:
        chunks = all_chunks[grid.tag]
        folder = OUT / "candidate" / "lean" / module_prefix(grid.stage, grid.p, grid.q)
        composer = folder / "CompleteComposer.lean"
        write_utf8(composer, make_composer(grid, chunks))
        audit = folder / "CompleteComposerAudit.lean"
        ns = namespace_prefix(grid.stage, grid.p, grid.q) + ".CompleteComposer"
        write_utf8(
            audit,
            f"import {LEAN_BASE}.{module_prefix(grid.stage, grid.p, grid.q)}.CompleteComposer\n\n"
            f"#check {ns}.globalData\n#check {ns}.rectangle_check\n"
            f"#print axioms {ns}.rectangle_check\n",
        )
        composers.append({
            "grid": grid.tag, "source": str(composer), "source_sha256": sha256(composer),
            "audit": str(audit), "audit_sha256": sha256(audit), "new_Lean_runs": 0,
        })

    grid_records = []
    for grid in grids:
        chunks = all_chunks[grid.tag]
        grid_records.append({
            "tag": grid.tag, "stage": grid.stage, "p": grid.p, "q": grid.q,
            "H": grid.H, "M": grid.M, "T": grid.T, "amax": grid.amax, "bmax": grid.bmax,
            "cells": grid.amax * grid.bmax, "signed_rows": grid.amax * grid.bmax * 21,
            "input_paths": [str(path) for path in grid.source_paths],
            "input_sha256": list(grid.source_sha256),
            "chunks": [{
                "index": chunk.index, "aStart": chunk.a_start, "aCount": chunk.a_count,
                "bStart": 1, "bCount": grid.bmax,
                "cells": chunk.a_count * grid.bmax,
                "signed_rows": chunk.a_count * grid.bmax * 21,
                "existing_chunk000": (
                    grid.stage == 0 and grid.p == 2 and grid.q == 3 and chunk.index == 0
                ),
                "module": module_prefix(grid.stage, grid.p, grid.q) + "." + chunk.module,
            } for chunk in chunks],
        })
    generated_source_files = [
        {
            "path": str(path.relative_to(OUT)),
            "bytes": path.stat().st_size,
            "sha256": sha256(path),
        }
        for path in sorted((OUT / "candidate").rglob("*.lean"))
    ]
    manifest = {
        "status": "UNCOMPILED_COMPLETE_GRID_SOURCE_CANDIDATE",
        "created_by": str(Path(__file__).relative_to(RUN)),
        "new_Lean_runs": 0, "stages": [0, 1, 2, 3], "grid_count": len(grids),
        "chunk_count_all": sum(len(items) for items in all_chunks.values()),
        "chunk_count_generated": len(generated),
        "cell_count": sum(grid.amax * grid.bmax for grid in grids),
        "signed_rows": sum(grid.amax * grid.bmax * 21 for grid in grids),
        "chunk_size_max_a_rows": CHUNK_SIZE,
        "source_inputs": {
            "probe": str(PROBE_PATH), "probe_sha256": sha256(PROBE_PATH),
            "remaining_manifest": str(REMAINING_MANIFEST),
            "remaining_manifest_sha256": sha256(REMAINING_MANIFEST),
            "existing_pair23_manifest": str(PAIR23_DIR / "manifest.json"),
            "existing_pair23_manifest_sha256": sha256(PAIR23_DIR / "manifest.json"),
        },
        "existing_chunk000_files": existing,
        "generated_source_files": generated_source_files,
        "grids": grid_records, "composers": composers,
    }
    write_utf8(OUT / "manifest.json", json.dumps(manifest, ensure_ascii=False, indent=2) + "\n")
    freeze = {
        "status": "SOURCE_ONLY_FREEZE_NO_LEAN_RUN",
        "manifest_sha256": sha256(OUT / "manifest.json"),
        "generator_sha256": sha256(Path(__file__)),
        "grid_count": len(grids), "chunk_count_all": manifest["chunk_count_all"],
        "chunk_count_generated": len(generated), "cell_count": manifest["cell_count"],
        "signed_rows": manifest["signed_rows"], "existing_chunk000_preserved": True,
        "no_git_or_lean": True,
    }
    write_utf8(OUT / "FREEZE.json", json.dumps(freeze, ensure_ascii=False, indent=2) + "\n")
    print(
        f"generated {len(generated)} chunks and {len(composers)} composers; "
        f"{manifest['cell_count']} cells/{manifest['signed_rows']} signed rows"
    )


if __name__ == "__main__":
    main()
