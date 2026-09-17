# B699 · Pro A · Quartic saturation / integer-kernel lattice

This is the evidence package for the 2026-09-17 round after the fixed-cover bound39.

Read `REPORT.md`, then `PROOFS.md`, `FAILURE_BOUNDARIES.md` and `HANDOFF.md`.

New author results: SAT24, Q8-L50, Q4-L150, U9, and M35 (39→35). Frozen dependencies and their evidence grades remain unchanged. Classical Minkowski's second theorem is the one new published theorem input.

Reproduce **only the new finite obligations**:

```bash
python3 -B code/reproduce.py --out /absolute/new-empty-directory
```

This entry point uses Python's standard library. Discovery script `code/saturated_solve.py` separately uses SymPy; it is not a dependency of acceptance.

`evidence/saturation_certificate.json` contains exact root shapes, nonzero minors, rational solutions and explicit reducible products. `logs/replay-03` first checks the final full degree9..305 statement; earlier logs are preserved as process records. `logs/final-replay` is the final pre-package run. The separate release receipt records clean extraction, hashes and post-package execution.

No unknown-H large matrix, old source chain, Lean build or remote repository write was performed. No actual fixed G, factor list or finite original-problem candidate set is claimed. New proofs remain author mathematics supported by exact finite checks, not external independent acceptance.

The sole project continuation overview remains `OVERVIEW-2026-9-17.md`. `OVERVIEW_DELTA.md` is a proposed delta for its coordinating owner, not a competing project overview.
