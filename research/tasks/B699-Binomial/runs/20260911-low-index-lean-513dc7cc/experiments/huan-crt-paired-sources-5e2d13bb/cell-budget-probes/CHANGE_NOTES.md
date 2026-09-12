# CRT cell budget probes

This directory contains two source-only resource probes built directly from
original Row and Data sources. Existing paired Pack files were not imported or
copied, and Stage0Pair25 sources were excluded because the primary v27 run owns
that table.

- Stage0Pair27 Chunk000: first three rows, all 38 columns, 114 cells. The
  source metadata keeps Stage00 exponentMax2=108, so the probe retains the
  2^109 boundary scale.
- Stage3Pair23 Chunk000: 8 rows, all 17 actual columns,
  136 cells. actual b range is 17; full eight rows fit exactly 136 cells

Each probe uses a fresh namespace, opens the original Data namespace, imports
only the original Data module and Mathlib.Tactic.IntervalCases, and retains
every selected Row declaration, proof body, cell print, and row print. The
Data and DataAudit source hashes are recorded separately. Both target Data
sources currently have no bound success receipt, so they remain pending source
inputs rather than accepted results.

For the remaining 22 tables, the theoretical budget count uses at most eight
rows per Chunk and at most 136 cells per module. Same-scope comparison is
441 existing two-row modules versus
245 theoretical budget modules, a reduction
of 196. The arithmetic comparison
against the full previous 495 count is 250,
which includes the excluded active Stage0Pair25 table and is therefore not the
same scope. No large candidate version was generated and no B-original result
was added.

The independent candidate, source-root, complete, and probe-root SHA values are
in SOURCE_MAP.json and FREEZE.json. Run
python -B verify_cell_budget_probes.py
for static checks only; it does not invoke Lean.
