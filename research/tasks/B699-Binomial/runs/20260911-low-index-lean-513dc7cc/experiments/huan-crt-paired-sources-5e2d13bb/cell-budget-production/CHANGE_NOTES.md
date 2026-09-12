# CRT cell-budget production candidate

This source-only candidate covers 22 tables: every CRT grid except the
accepted Stage0Pair23 and Stage0Pair25 rectangles. It uses the current live
Chunk files as the old Pack-import inputs and records every old Chunk SHA.
Original Row/Data/Composer files are never changed.

There are 119 prepared Chunk replacements and 245 Cells
modules. Each Cells module contains complete original Row bodies in the
original public namespace, keeps every declaration/proof/print line, imports
only the original Data module plus Mathlib.Tactic.IntervalCases, and contains
at most 8 rows / 136 cells. Each
candidate Chunk changes only its leading imports from current Pack modules to
Cells modules; no Pack and Cells modules are imported together.

The whole-rectangle plan is recorded with its exact target and current SHA
bindings in SOURCE_MAP.json. Stage0Pair23 and Stage0Pair25 accepted-table
source SHA records are rechecked in FREEZE.json. No accepted target was
overwritten and no successful receipt was reused for a selected Chunk.

The first candidate is frozen in FREEZE.json for primary measurement:
lean/CrtStage0Pair27/Chunk000.lean with old SHA 2e83c0ed71e8284a2d432b78f2e6c9e9675c32a8fb5a7cd462a516f8705270b2 and new SHA
a7b3ca38af16e0f5f38780f3f69d5021eb9efd05dc4f58afb2b9c3999237d715. The candidate source root is
b3f107e584dde21ad1361d9f0d44879f52e3baa2b73bc025fbc21af31af5ce99. This is source preparation only, with no Lean run and
no new B-original result.

Use python -B verify_cell_budget_production.py for independent static checks.
