# Actual source coefficient multiplication identities

Owner: `/root/pade_construction`. Start checkpoint 2026-09-11T04:35:32Z. No overall deadline supplied; phase A retains the compiler. This continuation writes only new files in the same exclusive directory. Old frozen sources remain unchanged and no Lean/download/cache/Git operation is run.

Goal: prove all six actual source coefficient ratios as denominator-free natural-number equalities, with explicit r>=1/r>=2 shift guards. This is the substantive prerequisite for the shared P/Q recurrence and the unconditional raw determinant, not a new assumed ratio interface.

Route selected: use three existing elementary mathlib identities (`Nat.add_one_mul_choose_eq`, `Nat.choose_mul_succ_eq`, `Nat.choose_succ_right_eq`) to lower the top/bottom of a binomial coefficient by one or two. No factorial-division theorem or uncompiled CoefficientFactors module is needed. The first Q identity explicitly handles r=u by the zero out-of-range choose value.

Expected frontier change: all six infinite-parameter ratio obligations become proved source lemmas after the candidate is accepted. Recurrence assembly, determinant induction, and the unconditional actual-row consumer still remain. No original B699 index is counted by this step.

Resource snapshot: approximately 3.58 GiB free physical memory; D: free 2118836224 bytes; one Lean process visible. Only bounded small integer checks run here.

## Concrete first checkpoint: all six source identities

`AdjacentCoefficientMultiplication.lean` contains full candidate proofs of the six multiplication identities, not six assumed inputs. Its only project import is the already integrated `lean/PadeInteger.lean`. It does not import `CoefficientFactors.lean`, `PContentTransform.lean`, analysis modules, or the earlier conditional determinant consumers.

For u>=2 and 0<=r<=u put L=2u-r and N=2u+v+1. Write Q(u,v,r)=qMagnitude(u,v,u,r) and P(u,v,r)=sourcePMagnitude(u,v,r), where

P(u,v,r)=choose(N,r) choose(L,u).

The candidate proves its exact relation to the source integer coefficient:

pCoefficient(u,v,u,r)=(-1)^(u+r) P(u,v,r).

Within r<=u it also proves this as a statement about `(pPolynomial u v u).coeff r`, and the corresponding Q statement with sign `(-1)^u`. Outside that support, use `coefficientPolynomial_coeff`; raw Nat formulas must not be silently treated as polynomial coefficients.

The six proved-candidate statements are:

1. Q(u-1,v+1,r) L(L-1)(v+1)
   =Q(u,v,r) u(u-r)(v+r+1).
2. If r>=1, Q(u-1,v+1,r-1) L(v+1)
   =Q(u,v,r) u r.
3. If r>=2, Q(u-2,v+2,r-2) L(L-1)(v+1)(v+2)
   =Q(u,v,r) u(u-1)r(r-1).
4. P(u-1,v+1,r) N L(L-1)
   =P(u,v,r) u(u-r)(N-r).
5. If r>=1, P(u-1,v+1,r-1) N L
   =P(u,v,r) u r.
6. If r>=2, P(u-2,v+2,r-2) N(N-1)L(L-1)
   =P(u,v,r) u(u-1)r(r-1).

All are natural-number equalities without division. In 1 and 4, r=u is separated and proved by `choose(u-2,u-1)=0`; the other branch uses weighted choose identities. The lower-row u=0 case of 3/6 at u=r=2 remains legal and is not excluded.

The private binomial helpers have complete proofs from the three named mathlib identities. For example:

choose(n-2,k-1)n(n-1)=choose(n,k)k(n-k)

comes from first lowering only the top at (n-1,k-1), then lowering both top and bottom at (n,k). Thus no factorial ratio, field division, beta moment, or Padé remainder is hidden in this checkpoint.

## Exact boundary tests

`check_cross_multiplied_coefficients.py` passed 26,334 checks over u=2..20,v=0..20 and every allowed r. It evaluates the raw source qMagnitude and P-factor formulas using actual Nat-style truncated subtraction and out-of-range choose=0, independently of the candidate helper decomposition.

Omitting the shift guards is false, rather than merely inconvenient. At u=2,v=0:

- q_shift_one at r=0 with truncated r-1 gives 8=0.
- q_shift_two at r=1 with truncated r-2 gives 12=0.
- p_shift_one at r=0 gives 40=0.
- p_shift_two at r=1 gives 120=0.

These counterexamples are saved in cross-multiplied-coefficient-check.json. The proper six guarded statements pass. The results are finite transcription/boundary evidence, not unrestricted Lean acceptance.

## Exact continuation to the common recurrence

The next algebra can keep all intermediate statements in Nat, avoiding subtraction of coefficient magnitudes. Define shifted terms with explicit guards:

M1(r)=if 1<=r then M(u-1,v+1,r-1) else 0,
M2(r)=if 2<=r then M(u-2,v+2,r-2) else 0,
M0(r)=M(u-1,v+1,r),
A=(u-1)(2u-1), B=(v+2)(2u+v), n=u(u-1).

The intended **actual** magnitude recurrences are

n Q(u,v,r)+A Q1(r)=2A Q0(r)+B Q2(r),
n P(u,v,r)=2A P0(r)+A P1(r)+B P2(r).

The guarded shifted versions of identities 2/3/5/6 follow from the proved source identities when their guards hold; when they fail, the r or r(r-1) factor is zero. This handles r=0,1 honestly.

For Q, multiply the desired equality by the positive Dq=L(L-1)(v+1)(v+2), distribute, and substitute identities 1-3. The remaining arithmetic is the denominator-cleared Q ring identity already recorded in ADJACENT_DETERMINANT.md. For P use Dp=N(N-1)L(L-1) and identities 4-6. The remaining P ring identity is also recorded there. Those identities can be copied with their `ring` proofs or reproved locally; the source six are no longer hypothetical once this candidate is accepted.

After restoring `(-1)^u` for Q and `(-1)^(u+r)` for P, and using the explicit coefficient guards for r>u, polynomial extensionality yields the common actual polynomial recurrence

u(u-1) F(u,v)
 =-(u-1)(2u-1)(2-X)F(u-1,v+1)
   +(v+2)(2u+v)X^2 F(u-2,v+2),

for both F=P,Q. Coefficient shifts at r=0,1 must use `coeff_X_pow_mul'` or equivalent guarded coefficients. No six-ratio assumption should be introduced in the final theorem: call the six newly proved source lemmas directly.

The remaining determinant induction then uses the actual common recurrence, base Delta(1,v)=2(v+2)X, and the explicit D constant recurrence. This must yield the unconditional actual raw polynomial/homogeneous determinant before the hraw-based consumer can lose its input. Neither the shared recurrence nor that unconditional determinant is claimed Lean-accepted in the present checkpoint.

## Acceptance state

This checkpoint delivers one complete source-proof group with six unrestricted-parameter candidate equalities and three source-sign/coeff correspondence lemmas. It was chosen as a manageable serial verification unit before expanding into the full coefficient-to-polynomial-to-determinant chain. The actual source has no new axioms or proof holes; it has not been compiled by this worker. No original B699 case is newly counted.
