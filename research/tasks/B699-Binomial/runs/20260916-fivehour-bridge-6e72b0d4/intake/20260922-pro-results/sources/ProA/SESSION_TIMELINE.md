# SESSION TIMELINE — B699 Pro A / i=9

Scope: all Pro A / i9 research deliveries produced in this continuous session and packaged on 2026-09-22 (Asia/Tokyo user-local date). The individual run filenames retain their original `20260921` labels; those labels are preserved unchanged as evidence provenance.

## 01 — B22 / H117
- Completed B22 (`D=8,e=4,z>=14,mu=22`) classification.
- Obtained loadable B22 constraints including `kappa4+kappa6>=1`.
- Same fixed `G`: COVER10 retained; equality branch improved to `h>=117`.
- Exact auxiliary irreducible counterexample/failure boundary preserved.
- Status now: superseded as frontier, retained as source evidence.

## 02 — TRACE / B28 / H127
- Added GAMMA5 / TAIL567 style low-degree double-deficiency charges and stronger same-G TRACE use.
- Same fixed `G`: COVER10 retained; equality branch improved to `h>=127`.
- Identified explicit `3 S5 + 7 C` resource obstruction; not an actual `G` factorization or B699 counterexample.
- Status now: superseded as frontier.

## 03 — KAPPA-GENUS / COVER9
- Proved KNEAR16–24, KSAT25–28 and TRIPLE45-type geometric constraints using ordinary multiplicities, diagonal tangency and strengthened genus accounting.
- Re-ran the same fixed-G ledger over all 2035 vertical states.
- New unconditional result: `|C_G| <= 9`.
- This is the first COVER9 round; it does not close B699.

## 04 — KSAT29 / nine-factor ledger
- Proved KSAT29: saturated q=29 loadable irreducible factors must pay a diagonal tangency cost.
- Killed the explicit previous nine-component resource example.
- IMPORTANT SUPERSESSION: the reported `130 E=0 + 2 E>0` count used a safe but overly permissive DP initialization that still admitted a virtual zero-cost q29. Geometry remains valid; those ledger counts are superseded by round 05.

## 05 — KSAT30 / EDGE9
- Corrected the DP initialization from a hard-coded `29*n` lower envelope.
- Corrected KSAT29-only ledger: `111 E=0 + 1 E>0`.
- Proved KSAT30 and re-ran the ledger.
- New EDGE9: `|C_G|=9 => E=0`, hence `D(G)=305` and every nonconstant factor of the vertical-line-stripped `Gbar` has `D=2e`.
- Nine-factor necessary E0 states reduced to 98.

## 06 — KSAT² / H133
- Proved `kappa4+kappa6+kappa8 >= 2` for saturated q=25..30.
- Proved at least one diagonal tangency charge for saturated q=31..36.
- Rechecked the 98 complete E0 frontier states using the same-G ledger and TRACE.
- Nine-factor necessary states: `98 -> 6`.
- Current equality consequences: `|C_G|=9 => E=0, D(G)=305, h>=133, V=sum v_r<=39`.
- COVER8 was NOT proved.
