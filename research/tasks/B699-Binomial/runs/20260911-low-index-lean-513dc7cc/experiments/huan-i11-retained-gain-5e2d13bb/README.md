# Retained gain checkpoint

Owner: `/root/pade_construction`. Frozen bounded numeric exploration; no Lean/CRT/Git operation. Read `REPORT.md` for the exact scope and limited outcome.

Reproduce only in this directory with Python 3.14, `-B`, and `PYTHONUTF8=1`:

1. `check_retained_gain.py`: same-scope old/new comparison and rounded-height shell statistics.
2. `verify_retained_gain.py`: independent small factorial/C0/T reconstruction and source map.
3. `check_minimum_height_shells.py`: shell-only counts at B=15148 and 15028.
4. `extract_minimum_plan.py`: concrete common weights and strict finite margins at B=15028.

No script calls Lean, a CRT pair loop, old generators' main functions, or D(K). Dependencies are read-only sibling artifacts; `FREEZE_V1.json` identifies the executed/reviewed bytes.
