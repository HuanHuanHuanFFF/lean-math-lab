# B686 / Four round6 B

## Scope and checkpoint

- Owner: B (Astra/max), files only in `round6/b/`; namespace `B686Round6B`.
- Session checkpoint: 2026-09-07 15:41:43 UTC, starting 14:41:43 UTC.
- Exact original target: natural k>=2, n>=0, m>=n+k, P_k(m)=4P_k(n). This branch currently works on k=5.
- Read repository AGENTS.md, lean-research skill, docs/STRUCTURE.md, research index, task README, round5/report.md and post-round5 tool survey. No relevant global memory hit.
- Research state: active partial result. Proof state: none new yet. Review: parent will independently check. Novelty unconfirmed. No publication authorized.

## Route 1: central normalization (paper exploration, not accepted)

Motivation: previous records force center contact when gcd(d,6)=1, but center c^3<9d still allows balanced support weights. Write X=c*x,Y=c*y, f(T)=T^5-5T^3+4T and gcd(x,y)=1. Original equation gives
`c^4*(x^5-4*y^5)-5*c^2*(x^3-4*y^3)+4*(x-4*y)=0`.
For odd c, c^2 divides x-4*y. Writing x-4*y=c^2*t gives `t = 75*y^3 (mod c^2)`. This follows by substituting x=4*y modulo c^2 into x^3-4*y^3. The implication assumes the required cancellation of 4 and requires no numerical approximation.

Outcome: additional congruence, no demonstrated finite bound or exclusion of the balanced weight region. This route is deferred, not disproved. Revisit if a bound on t or a fixed twisting set is found. No Lean proof claimed.

## Route 2: sum modulus and two-position support

Motivation: old accepted exclusions constrain d=m-n. Oddness of f additionally gives s=X+Y=m+n+6 dividing 5*P_5(n). Local Taylor cancellation at any occupied root i gives q^2 dividing E_i=5*(n+i)-s when q divides both s and n+i and gcd(q,6)=1.

Falsifiable claim selected at 14:52 UTC: for any i,j in {1,...,5}, if s=P*Q with coprime P,Q supported in n+i and n+j, gcd(s,6)=1, and the original equation holds, then s^2 divides E_i*E_j. The accepted real strip and d>=20000 imply `s^2 < E_i*E_j < 2*s^2`, a contradiction. Therefore a sum modulus supported in two distinct positions is excluded, without bounding its number of primes. A desired corollary is that s cannot be the product of at most two distinct prime powers of primes >5.

Assumptions and boundary: the local contact itself only needs gcd(q,6)=1. Deducing support from s | 5*P_5(n) needs the separate prime !=5 hypothesis. This does not settle original k=5, all k, or sums divisible by 2,3,5.

## Environment evidence

At 14:43 UTC, `exec_command` with `sandbox_permissions=require_escalated` successfully read source. Normal-shell failure was not retried. Python is available at C:/Python314/python.exe (preinstalled); new scripts and outputs remain on D:. Support agent was asked to prebuild NoncentralSupport, K5CubicSlots, K5TwoPosition and recursive dependencies.

## Current next check

Implement the local sum contact and exact product-height contradiction, then connect to B686Target.product and audit transitive axioms. Record actual compiler output and distinguish any failed proof attempt from mathematical failure.

## Route 2 refinement (14:57 UTC, still awaiting first compile)

The two-position statement needs only gcd(s,6)=1, not gcd(s,30)=1. Moreover P and Q need not be coprime: from P^2|E_i and Q^2|E_j one directly gets (PQ)^2|E_i*E_j. Thus splitting s | (n+i)(n+j) works even when i=j. Current source: `SumTwoPositions.lean`; first compile was blocked by missing NoncentralSupport.olean, with no mathematical diagnostic yet (`lean-first.log`). Support agent is rebuilding pinned missing mathlib dependencies, not downloading/upgrading.

### Promising extension at prime 5 (paper, untested at this checkpoint)

Although s | 5P_5(n) loses one power of 5 when assigning a position, the local polynomial is special modulo 5. Writing a root expansion as `a*y+5*b*y^2+5*c*y^3+5*e*y^4+y^5`, if s=25*r*v and y=5*r*u, then the nonlinear part of F(y-s)+4F(y) is divisible by (25*r)^2. Therefore (25*r)^2 divides `a*(5*y-s)`, and a is prime to 5. Also, 5|s should force 25|s by differentiating modulo25 and using 5|P_5(n). This would restore the full square contact for prime powers 5^a in s and broaden the prime-power exclusion to bases >=5. Concrete next test: prove the exact generic identity and the automatic 25-divisibility, then audit the original consumer. This is not yet accepted.

## Verification progress at 15:10 UTC

`CoreCheck.lean` (sum reflection, local square, exact real interval, integer-gap contradiction) passed Lean4.33.1. First full source check found missing Nat.Coprime.prod_right import and a conversion between Int.instDvd and semigroupDvd; these are library/representation issues, not failed mathematical claims. The missing finite-product coprimality import was added; the divisibility conversion now unpacks its integer witness rather than comparing instance records. Logs: lean-core.log, lean-main-third.log, lean-main-diagnostic.log.

The proof dependency was narrowed: the accepted round4 finite certificates cover d<600, so no round5 NoncentralSupport dependency or d>=20000 assumption is needed in this branch. SumTwoPositions.lean directly imports K5CubicSlots, K5Combined, TargetBridge plus small mathlib support.

`probe.py` used exact SymPy1.14.0 expansion to validate the proposed 5-adic polynomial identity. It also found basic-condition non-solutions, e.g. n=62695,m=82728,d=20033=13*23*67, gcd(d,n+3)=23 and s=145429=23*6323. The original product difference is explicitly nonzero (115478693268673654920). These diagnostics only distinguish the new sum filter from the recorded elementary d conditions; they do not satisfy all old high-order conditions and are not original witnesses.

## Final B source freeze: 2026-09-07 15:21:58 UTC

All three proof modules and `AxiomAudit.lean` passed Lean4.33.1. The28 executable #guard_msgs/#print axioms checks report exactly [propext, Classical.choice, Quot.sound]. A placeholder/custom-axiom scan of the four accepted sources found no matches. Source hashes and actual exit codes are captured in source-freeze.json. Temporary duplicated Lean checking files were removed; their logs and the audit generator remain.

Last verified result: `B686Round6B.original_sum_necessary_conditions` connects to the original rational product ratio for natural n,m with m>=n+5, proves5|s=>25|s, and under gcd(s,6)=1 proves at least3 distinct prime divisors plus exclusion of every two-position support. The stronger prime5 square contact is accepted, replacing the earlier >5-only boundary. Parent independently checked the height interval. Source freeze occurred40m15s after start, before the requested15:25 freeze and user's15:41:43 checkpoint.

Remaining gap: primes2/3 in the sum modulus and unrestricted k=5/all-k remain open. No novelty claim or external review. The next concrete test is a prime2/3 local analysis with exact losses; do not infer full sum-prime-count exclusion from the current coprime-to6 theorem. The central normalization route remains unclosed and is not cited as a new Lean result. Reusable artifacts and next checks are in final-handoff.md. B has stopped changing proof sources and awaits only any concrete review correction.
