# SUPERSESSION NOTES

This package intentionally retains every round, including claims later sharpened or corrected.

1. `B22-H117` and `TRACE-B28-H127` are historical intermediate frontiers. Their local theorems/evidence remain reusable, but their COVER10 equality thresholds are superseded by later COVER9/EDGE9 results.

2. `KAPPA-GENUS-COVER9` establishes the current unconditional component bound `|C_G|<=9`. Later rounds strengthen the equality branch rather than replacing the COVER9 theorem.

3. `KSAT29-NINELEDGER`:
   - The KSAT29 geometry/certificates remain adopted.
   - Its ledger counts `130 E0 + 2 positive-E` are **superseded**.
   - The cause, found in the next round, is a safe but overly permissive Bellman-DP initialization that retained a virtual zero-cost q29 candidate after q29 had acquired a kappa cost.
   - Because this widened the feasible set, it did not invalidate COVER9 or incorrectly exclude a real case.

4. `KSAT30-EDGE9` corrects that ledger:
   - KSAT29-only: `111 E0 + 1 positive-E`.
   - After KSAT30: `98 E0 + 0 positive-E`.
   - Hence EDGE9: nine components force `E=0`.

5. `KSAT2-EDGE9-H133` is the final frontier in this package:
   - `98 -> 6` nine-component necessary states.
   - `h>=133`, `V<=39`.
   - COVER8 remains open.

When using this package, always treat the latest non-superseded statement as the current frontier while retaining old files as provenance and failure-history evidence.
