# C2(4m,4m,m) strong-growth route audit

Owner: /root/i13_high_height. Start 2026-09-12 06:10:04 UTC; 20-minute checkpoint 06:30:04 UTC, not a deadline.

Scope: read-only source/evidence audit plus exact rational interval arithmetic, written only here. No Lean invocation, large prime table, dependency installation, new seed, or edits to frozen packages.

Target: an effective log(C2(4m,4m,m))/m > 0.910560352 bound with a finite starting point. Compare the original BFT c5d4 proof against the direct common prime-product route. Expected frontier: identify the minimal numerical prime-distribution obligation and its exact finite/tail burden; original i13 coverage remains unchanged.

Adopt: ProC minimal coefficient-divisor interface as a paper/source candidate, not Lean acceptance; pinned mathlib source and successful local receipts only at their recorded strength. Direct C2 divisibility source is owned by another Astra.

Initial finding: the old common-product tail explicitly records PASS_RATIONAL_INFINITE_TAILS_CONDITIONAL_ON_BFT_THETA. Existing mathlib Chebyshev source contains log(2)/log(4) scale bounds, not an explicit theta ~ x estimate. Numerical sufficiency and exact source/receipt audit are in progress.

## Interim checkpoint at 2026-09-12 06:21:53 UTC

Source audit is in progress, with two decisive findings. Four disjoint w=0 cells [2/9,1/4), [4/9,1/2), [2/3,3/4), [8/9,1) suffice for C2. Under theta(x) in [199x/200,201x/200] from x>=X0, their product gives log C2 >= 61m/64-199/96, strictly above the target for m>=max(49,ceil(X0)). This is a conditional paper reduction, not a new theta theorem.

A source mismatch was found in the old A tail: all 205 recorded terms use eta=213/10^7, whereas BFT PDF p.19 prints 0.000213=213/10^6. Merely correcting eta and enlarging the per-cell error leaves five of six frozen family sums positive; the (5,6,15),g=2.43 sum drops to about2.42613. This flags that frozen sufficient certificate only, not the true growth claim. Parent notified.

Pinned mathlib provides theta/psi/prime-counting infrastructure and coarse log2/log4 bounds, but no explicit near-one theta estimate found in the searched modules. Existing ECAnalytic acceptance does not even import Chebyshev and proves no prime-distribution statement. B677 DusartBridge explicitly consumes an unproved external proposition; a clean downstream audit does not remove that assumption. Saved PNT+ Dusart numerical statements are by sorry, and the non-numerical PNT bound has an existential unknown constant.

Next: finish exact arithmetic certificates, audit receipt/source hashes and positive/negative boundaries, then recommend a concrete four-interval growth interface plus its finite coverage scale and unresolved tail obligation. No Lean or prime sieve has run.

Correction of provenance: the ETA tenfold issue was already discovered and corrected for i18 in reviews/huan-i18-correction-second-5e2d13bb and the source run i18 review. This audit adds only a read-only exact replay over the separate ORIGINAL ProC old A six-family/205-term payload. It does not supersede or invalidate the corrected i18 279-term two-stage certificate.


## Resumed and frozen, 2026-09-12

Owner `/root/c2_growth_audit_resume` resumed at 07:43:59 UTC after the primary confirmed the predecessor was interrupted and would no longer write. The shared 20-minute checkpoint was 08:03:59 UTC, not a total deadline. This handoff keeps the same directory and prior artifacts. Final freeze time, artifact hashes and observed versions are in [FREEZE.json](FREEZE.json).

The [final report](REPORT.md) and [minimal Lean interface](LEAN_INTERFACE.md) distinguish the shortest `m>=10000` route from retaining all `m>=51`. The former needs no C2 bridge on 51..9999; the latter has 9949 possible singleton inputs, with full prime-power cutoff 44995 and four-interval prime cutoff 44994. Neither finite certificate was generated.

Independent exact replay [recheck-20260912T075343Z.json](recheck-20260912T075343Z.json), exit 0, confirms all 23 source hashes, 175 generic-modulus endpoint checks, four-interval rates, alternate-series G1-to-C2 constant, all original old-A 205 rows, and five B686 receipt source/log bindings. It does not import or rerun the original audit.py. The original audit.py, source map and certificate outputs retain their bytes.

The BFT page 19 image was re-read visually: eta=213/10^6, sqrt constant259/125, finite range1..10^11, tail range>=10^8. Existing i18 reviews retain priority for discovering/fixing the factor-ten issue. Corrected i18 279-term evidence remains untouched.

Current outcome: exact/source audit frozen; no accepted effective theta interface found in the bounded source set. Chebyshev.olean is absent at the shared checked path. No Lean invocation, large number table, sieve, installation, download, shared-source edit, commit or push occurred. Current original i13/B699 coverage change is zero. Next useful Lean work is the unconditional four-interval prime-product bridge against the actual N definition, then discharge the explicit source input before any unconditional growth claim.
