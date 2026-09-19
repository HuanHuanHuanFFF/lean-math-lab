# Checkpoint 1

Basis: uploaded OVERVIEW-2026-9-17.md fully read; repository branch resolved through GitHub to f232982bc5d27ba4de68cc3abb916796f771dec6. Latest Pro A report, proof §§0–9 and failure boundaries read through connector. No local checkout; network DNS unavailable in container. No remote writes.

New route: use the WHOLE ordinary-double interpolation space, rather than one auxiliary. For twelve actual source hits, frozen bootstrap gives deg_w H<=20 and ||H||_1<2^8400. The 36x42 ordinary-jet matrix has a small integer basis of dimension >=6. All basis members must be divisible by H using the existing arithmetic transfer and resultant thresholds. This forces deg_w H in {6,7,8}. For degree 6 it forces six singular source points; for degree 7 a four-point rank lemma gives contradiction; for degree 8 all twelve points must be singular. In degrees 6 and 8 add the actual rational point (n,J) to an auxiliary interpolation of weighted degree 4 or 6 and use weighted affine Bezout, giving 13>12 or 25>24. These arguments are being written and independently checked; they do not assume absolute irreducibility or infer NC from window conditions.

Expected frontier change: eliminate the ENTIRE z=12 component stratum, including singular source hits; all surviving components must have at least thirteen hits. R7, 57 templates, 152 row targets, and 50 component bound not yet changed. All global arithmetic parameters remain unbounded.

Next cheap checks: exact dimension/height inequalities; exhaustive four-source rank test; compact exact integer jet nullspace example. Then examine z=13 bootstrapping only if it has a clear strengthening payoff.

# Checkpoint 2: thirteen-source refinement

The weighted affine intersection bound was reduced to ordinary plane Bezout using the finite flat substitution X=Y^2 (rank two). Hilmar–Smyth arXiv:0907.0361 Theorem 1 was checked in the original PDF. All z=12 degrees 6/7/8 have contradictions including singular cases.

For z=13 the tighter frozen factor norm 2^1244000 makes a 130x132 ordinary four-jet bootstrap fit under the original entry threshold. Exact exponent budgets: nonzero 39846944 < 3*14000001; resultant 13869761 < 14000001. It gives weight<=21, norm<2^9450. The entire 39x42 ordinary-double kernel is then divisible by H and has dimension at least three. Initial possibilities reduce to weight6/cubic with 3 or 4 singular sources, or weight8/quartic with 8 or 9 singular sources.

Further row-profile dimension arguments remove cubic/3-singular and quartic/8-singular. Remaining thirteen-point profiles: weight6 with four singular points (two profile types, 395040 and 777600 configurations), or weight8 with nine singular points (97200 configurations). A bounded new modular rank probe will test whether these profiles force zero coefficient space or only reducible/extra-hit relations. Success would delete the entire z=13 stratum, not bound n or recover G. Rank deficiency modulo a prime will never be treated as rational rank deficiency without exact kernel certificates. The old chains are not rerun.

# Checkpoint 3: full source-thirteen closure

Both independently written enumerators finished. First uses prime 1000003, explicit A/B/C profile loops, standard forward elimination; second uses prime 1000033, row-state DFS, reversed monomial/point ordering and streaming echelon insertion. Both cover 1,269,840 distinct profiles (not n/j inputs). The same 9 exceptions remain: 8 cubic-space kernels of rank 15/16 and 1 quartic-space kernel of rank 24/25. Each has a nonzero primitive INTEGER kernel, all jet equations verified, and an explicit nontrivial factor product checked by standard-library integer polynomial multiplication. Thus all exceptions are reducible, incompatible with the carrier H.

Full new replay: `python -B code/reproduce.py --out /mnt/data/source14-check-1`, status PASS_NEW_SOURCE14_CLOSURE_REPLAY, actual elapsed 22.062 seconds. Old chains were not executed. This proves, at the declared frozen-author input grade, that every remaining carrier must have AT LEAST FOURTEEN source hits. Both the entire twelve-hit singular stratum and the entire thirteen-hit stratum are removed. Counts R7/57/152/50 are unchanged; general n,a,b,g,beta/support remain unbounded.

Next: proof audit, compact packaging, and one bounded diagnostic for whether the same four-jet weight21 bootstrap can extend uniformly to fourteen hits. A full-rank source matrix is only an obstruction to that auxiliary construction, never an NC9 counterexample.

# Release checkpoint

The full proof and source contracts are written in PROOFS.md. The fourteen-point 140x132 fourth-order matrix has an explicit full-rank witness, checked at both primes; it is only a method-boundary diagnostic. Final new replay passed after the source/CLI audit, with 23.955 seconds actual validation runtime. The normalized Taylor-row convention is explicit. The package contains no old large evidence, no binary executable, no Lean, no external-review claim and no actual G coefficients.
