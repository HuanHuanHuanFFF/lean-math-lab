# Round6 B handoff

## Result and scope

This branch concerns only k=5 with natural n,m and m>=n+5. Put `s=n+m+6` and `E_i=5(n+i)-s`, i=1,...,5. Original target uses `B686Target.product` and its verified rational bridge.

The three mathematical statements now compiled in the pinned Lean4.33.1 environment are:

1. If gcd(s,6)=1 and s divides (n+i)(n+j) for any i,j in {1,...,5}, the original equality P_5(m)=4P_5(n) is impossible. Positions may coincide and no bound on the number of primes is imposed. Entry: `not_four_sum_two_position_support_ratio` in `SumTwoPositions.lean`.
2. For any original equality, 5|s implies25|s. Every prime power p^a|s with p>=5 has a full square contact p^(2a)|E_i for some position i. Consequently s=p^a*q^b is impossible for primes p,q>=5, with zero exponents and repeated primes allowed. Entry: `not_four_sum_two_prime_powers_ge_five_ratio` in `SumFiveAdic.lean`.
3. If gcd(s,6)=1, an original equality requires at least three DISTINCT prime divisors of s. The rational target combines this with (1) and the25-divisibility condition in `original_sum_necessary_conditions`, `SumPrimeSupport.lean`.

These constrain the sum of the two centers, complementing older restrictions on their difference. They do not solve unrestricted k=5 or the full B686 target. They are not added to the accepted Math/ library, do not claim novelty, and have no external peer review or publication.

## Mathematical mechanism

Reflection P_5(-t-6)=-P_5(t) changes the original equation into P_5(n-s)=-4P_5(n), giving s|5P_5(n). At a simple root, local cofactor cancellation gives q^2|E_i if q|s, q|(n+i), gcd(q,6)=1. If s=P*Q with P|(n+i), Q|(n+j), multiplication gives s^2|E_iE_j without needing gcd(P,Q)=1.

For d=m-n>=600 the existing exact rational strip implies s<E_i<(4/3)s for every position, hence s^2<E_iE_j<2s^2. This is an integer-gap contradiction. The already Lean-checked round4 certificates cover the finite displacement range5<=d<600 for every natural n. This branch does not depend on the heavier round5 d>=20000 conclusion.

Prime5 requires separate attention because s|5P_5(n) loses one assignment power. The root expansion has form `a*y+5*b*y^2+5*c*y^3+5*e*y^4+y^5`. With y=5ru and s=25rv, the nonlinear part of F(y-s)+4F(y) is exactly divisible by (25r)^2; a is prime to5. Together with 5|s=>25|s this restores the full square contact. The identity is proved by Lean and also checked independently by exact SymPy expansion (`probe.py`).

## Files and verification

Accepted candidate source set is `SumTwoPositions.lean`, `SumFiveAdic.lean`, `SumPrimeSupport.lean`, and `AxiomAudit.lean`. The audit imports the three proof modules and checks every one of their28 named theorems. The temporary CoreCheck.lean and AuditPending.lean were removed after acceptance; their diagnostic logs and the audit generator are retained.

Actual successful checks before audit:

- `SumTwoPositions.lean`: lean-main-fourth.log, Lean4.33.1, exit0.
- `SumFiveAdic.lean`: lean-five-second.log, Lean4.33.1, exit0.
- `SumPrimeSupport.lean`: lean-support-first.log, Lean4.33.1, exit0.
- All28 actual #print axioms reports had exactly [propext, Classical.choice, Quot.sound]; AxiomAudit.lean then compiled with all28 executable guards, exit0 (lean-audit-final.log).

The support agent rebuilt pinned missing mathlib modules and old research dependencies from local source/cache. No installation, download, dependency upgrade, repository commit, push, release, or external contact was performed by B. Existing imports were read-only; only B's assigned directory was edited. Compiler errors and their corrections are retained in logs and exploration.md, including missing dependencies, a PowerShell -o argument-binding error, a missing finite-product coprimality import, and Int divisibility-instance conversion issues.

## Remaining routes

- Prime2/3 in s: unhandled by this branch. A next concrete check is whether full or bounded-loss square contacts survive at these two primes; derive the losses before attempting a global prime-count theorem.
- The central normalization congruence t=75*y^3 mod c^2 remains a paper observation, with no bounded parameter or exclusion obtained here. Details and revisit condition are in exploration.md.
- The general odd-k sum reflection is a plausible future reusable lemma: s=n+m+k+1 and E_i=5(n+i)-s. It has not been proved or investigated here; local derivative losses and the changing real interval must be handled separately.
- No positive original witness was found or claimed. The basic-condition diagnostics in probe.json are explicitly non-solutions and do not satisfy all older high-order constraints.

## Effort and acceptance state

Research start14:41:43 UTC; parent requests source freeze by15:25 UTC within the user's15:41:43 UTC checkpoint. At15:21:58 UTC all three proof modules and all28 executable axiom guards had passed; the four accepted source files were frozen, 40m15s after the session start. Hashes and actual exit codes are in source-freeze.json. Support's recursive integration check remains. Parent independently verified the sum-height interval in `round6/main/independent-verification.json` (sum_height). This is same-task AI review, not external review.

