# HANDOFF — Pro A outer-exponent round, 2026-09-13

Read REPORT.md, SESSION_STATE.json, notes/PROOFS.md (particularly §§2–7), then FAILURE_BOUNDARIES.md.

## Accepted new delivery, not whole-family closure
- E9 double-high branches: n/m not any proper integer power. Exact full-exponent gcd uses a+v2(g), b+v5(g), other prime valuations.
- n and n/m not primitive x^h+y^h (positive coprime x,y, h>=2). Therefore n-1 and n/m-1 not proper powers.
- Position k3: n^4963<2^300000 alpha^6000; g^4963<2^300000 alpha^1037.
- Position k4: n^54167<2^3000000 alpha^60000; g^54167<2^3000000 alpha^5833.
- General avoided-complete-power polynomial normalization away from row0; monomial-axis arithmetic nonzero rule h<=5 / <=10, |c|<=2^100.

## Do not regress
R7=3..9; i9 58 families. Single-high56 are untouched. Double-high2, alpha=2^a5^b or3*2^a5^b. Original minima a>=1960001,b>=422064 persist. Four max3/max7 positions for m1; only(3,1) for m3. Old i14 global delivery retained. No a/b absolute bound and no whole-family deletion this round. Do not return to84/60 or the old content search.

## Actual receiving
python code/reproduce.py runs only NEW verify.py plus independent finite diagnostics; no discovery, old large-block replay, or Lean. Source members are byte-identical copies; a shared base58 ZIP is stored once. Original two outer input ZIP hashes are in SOURCE_INPUTS.json, containers untouched.

## Next decision point
The explicit integer family in PROOFS§8 proves that the stated coarse inequalities + actual remaining positions + full-exponent primitivity do not themselves bound a,b. It is NOT noCommon (common prime11). Additional simultaneous arithmetic of the other window rows is still needed. The monomial-axis nonzero theorem enables more polynomials than global positivity, but the small probe did not unlock a new contradiction. No pending background computation. B/D running work was not read/adopted.
