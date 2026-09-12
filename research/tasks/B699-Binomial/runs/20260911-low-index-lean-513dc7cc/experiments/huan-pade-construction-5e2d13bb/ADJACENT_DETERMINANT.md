# Adjacent determinant continuation

Owner: `/root/pade_construction`. Started checkpoint: 2026-09-11T04:13:28Z. No total user duration or deadline was supplied; this is a bounded prerequisite checkpoint, with no invented total time limit. Write scope is new files in this experiment only. Previously frozen files remain unchanged. No Lean, download, cache write, Git index, commit, push, or CI action is authorized for this worker.

Locked target: for every u>=1 and v>=0, the rows (A,B,C)=(u,v,u) and (u-1,v+1,u-1) have the same binomial exponent u+v+1. Establish their actual polynomial determinant and then nonvanishing at every nonzero real z. The integer normalization should be connected to actual coefficient-based P/Q, not a type asserting a Padé identity.

Source: the previously frozen BFT 2007-02-26 PDF, SHA256 0df18ee8d108f658812ac05d1f8947b3dcc28b70d17f268acd7c871e7e7c392c. Lemma 3.2 is on printed page 10. It states an unspecified nonzero integer D for the **lower-first** order (A,B,A), (A+1,B-1,A+1). The parent proposed the **upper-first** order; this reverses the determinant sign. Source equations (3.1)-(3.4), including the previously recorded extracted-P-sign discrepancy, retain their fixed integral convention.

Expected frontier change: remove the entire u,v,nonzero-z two-row nonvanishing obligation. This does not supply analytic growth, G lower bounds, Padé heights, or any new original B699 i coverage. Existing integer definitions are accepted in lean/PadeInteger.lean; P-content and coefficient/integral correspondence remain separate candidates unless the parent supplies later acceptance.

Resource snapshot: Windows free physical memory 2646040 KiB; total visible 16456184 KiB; D: free 2228314112 bytes. One Lean process used approximately 835 MB working set and multiple Python workers were present. Only small exact integer/Fraction computations will run here.

Next falsifiable check: independently multiply the two explicit P/Q coefficient arrays, compare every coefficient with the proposed monomial, and verify the scaled integer normalization for signed numerator and denominator inputs, including denominator zero. A separate three-term recurrence will be checked as a possible pure-algebra alternative to the unverified integral correspondence.

## 1. Result of the independent sign and domain check

For u>=1, v>=0, put P0=P_(u,v,u), Q0=Q_(u,v,u), P1=P_(u-1,v+1,u-1), Q1=Q_(u-1,v+1,u-1). With the integral-compatible signs, the proposed formula is correct at the paper-algebra level:

P0(z)Q1(z)-P1(z)Q0(z)
 = D(u,v) z^(2u-1),
D(u,v)=(-1)^(u+1) choose(2u+v,2u-1) choose(2u,u).

D is nonzero because both binomial factors are positive. Thus for every real z!=0 the determinant is nonzero. No upper bound on u,v,z, or positivity of z is used. The two source binomial exponents are both u+v+1.

Boundary conventions matter:

- u=0 is excluded. With natural subtraction, the naively extended formula gives 0=-1 at u=v=0; this is an actual mismatch.
- z=0 gives determinant zero for every allowed u,v, so nonvanishing needs z!=0.
- v=0 and u=1 are covered by the explicit coefficient/integral extension. They should not be justified solely by the opening source wording about positive A,B,C. The u=1 base determinant is 2(v+2)z; v=0 gives 4z. At u=2,v=0 it is -24z^3.
- The source lemma orders the lower row first. Substituting A=u-1,B=v+1 reverses its order here and therefore reverses its D. Our explicit signed D is derived from the actual constant coefficients, not guessed from the unspecified source D.
- Dropping the source P parity sign destroys the zero constant coefficient. The previously recorded PDF-extraction/integral inconsistency remains a text-level source issue; no new visual confirmation is claimed.

## 2. Short proof through the two actual source remainders

Write W=(1-z)^(u+v+1). The integral identity gives

P0-WQ0=z^(2u+1)E0,
P1-WQ1=z^(2u-1)E1.

Elimination gives

P0Q1-P1Q0 = z^(2u-1) [z^2 E0Q1-E1Q0].

The determinant degree is at most u+(u-1)=2u-1. Consequently the bracket is constant. Its value at zero is

-E1(0)Q0(0)
 = -choose(2u+v,2u-1) [(-1)^u choose(2u,u)]
 = D(u,v).

This is an unrestricted paper argument. Its **Lean dependency is not yet closed**: the integral/coefficient correspondence and the actual two polynomial remainder identities must be proved. `AdjacentDeterminantData.lean` implements the real source arrays' constant, its nonvanishing, their determinant degree bound, and a generic elimination theorem whose two remainder inputs are explicit. That generic theorem is not recorded as the actual source determinant.

The file uses t=u-1, so upper=(t+1,v,t+1), lower=(t,v+1,t), n=2t+1. This removes natural-subtraction ambiguity in the core API. Its `adjacentConstant` is D(t+1,v).

## 3. Pure coefficient alternative, avoiding analysis-cache dependence

There is a common three-term recurrence for both actual P and Q. For F=P or Q, u>=2, v>=0:

u(u-1) F(u,v;z)
 = -(u-1)(2u-1)(2-z) F(u-1,v+1;z)
   +(v+2)(2u+v) z^2 F(u-2,v+2;z).

Here F(u,v) denotes the diagonal source polynomial F_(u,v,u), so u+v+1 is unchanged across all three rows. This is not inferred from fitting a finite set. The following factorial ratios give a direct coefficient proof.

Let 0<=r<=u, L=2u-r, N=2u+v+1, and write M_P,M_Q for the unsigned positive source coefficients. Coefficients outside their polynomial degree, including negative indices, are zero. **A Lean implementation must use an explicit shift guard `if shift<=r then coefficient(r-shift) else 0`; bare Nat subtraction is wrong at r=0,1.**

Divide the coefficients of the previous rows at indices r, r-1, r-2 by the current positive coefficient. For Q the ratios are:

a_Q = u(u-r)(v+r+1)/(L(L-1)(v+1)),
b_Q = ur/(L(v+1)),
c_Q = u(u-1)r(r-1)/(L(L-1)(v+1)(v+2)).

For P they are:

a_P = u(u-r)(N-r)/(N L(L-1)),
b_P = ur/(N L),
c_P = u(u-1)r(r-1)/(N(N-1)L(L-1)).

These follow directly by writing the relevant natural binomial coefficients as factorial quotients. L>=u>=2, N>=5, and v+1>=1 ensure all displayed denominators are nonzero. The missing r-1/r-2 coefficients vanish at r=0/1; the previous-row r coefficient vanishes at r=u. The corresponding displayed numerators have exactly these zeros, so those boundaries are handled separately without a negative factorial convention.

Restoring the signs requires `2a_Q-b_Q` for Q and `2a_P+b_P` for P. After clearing denominators, the two scalar obligations are respectively

L(L-1)(v+1)
 =(2u-1)[2(u-r)(v+r+1)-r(L-1)]+(2u+v)r(r-1),

N L(L-1)
 =(2u-1)[2(u-r)(N-r)+r(L-1)]+(v+2)r(r-1).

Both are polynomial ring identities, implemented as candidate lemmas in `AdjacentRecurrenceAlgebra.lean`. The six binomial-ratio identities are the remaining concrete Lean work for this route; they are not replaced by an assumed recurrence theorem.

The shared recurrence then implies, for Delta(u,v)=P(u,v)Q(u-1,v+1)-P(u-1,v+1)Q(u,v),

u(u-1) Delta(u,v)
 = -(v+2)(2u+v) z^2 Delta(u-1,v+1).

This is the candidate's generic `scaled_cross_recurrence`; the middle-row term cancels by integer ring algebra. The signed closed constant satisfies exactly the same recurrence:

u(u-1) D(u,v)=-(v+2)(2u+v) D(u-1,v+1).

For its magnitude, the factorial identity

|D(u,v)| = 2u (2u+v)! / (u!^2 (v+1)!)

makes the recurrence immediate. The base is D(1,v)=2(v+2). Induction in u, generalized over v, and cancellation of the nonzero integer u(u-1) yields the determinant monomial. This gives a full paper route based only on source coefficients. In Lean, the six coefficient-ratio lemmas, the explicit coefficient support cases, the factorial constant recurrence, and the induction remain unverified obligations.

Route decision: the integral route has fewer new conceptual steps and uses the already prepared IntegralIdentity/KernelExpansion/CoefficientFactors chain; the pure recurrence route avoids all analysis imports but requires careful source-coefficient arithmetic. Preserve both. Do not invest in a separate reciprocal-Gamma library merely for this determinant.

## 4. Actual normalized integer rows

Let H_P(u,v;x,y)=sum_{r=0}^u p_r x^r y^(u-r), and H_Q similarly. The actual source content is G(u,v)=qContent(u,v,u). The normalized P is defined by integer coefficient quotients in the pending PContentTransform candidate; normalized Q is the accepted coefficient construction in PadeInteger.

The exact normalization identity, with **no source determinant assumption**, is

G(u,v) G(u-1,v+1) det(normalized upper row, normalized lower row)
 = H_P(u,v) H_Q(u-1,v+1)-H_P(u-1,v+1) H_Q(u,v).

`AdjacentIntegerBridge.lean` proves this identity from the two actual normalization lemmas and ring arithmetic. It also proves that raw and normalized determinants are nonzero simultaneously, since both actual contents are positive. Its import of PContentTransform is a declared **pending** dependency, not a claim of acceptance.

Once the raw homogeneous determinant formula is supplied, the right side is D(u,v)x^(2u-1). Hence x!=0 implies actual normalized determinant nonzero. The subsequent Bool-indexed row consumer calls the already accepted `bft_7_4_of_two_rows` on these concrete integers. Its hraw argument names the exact remaining source equality and is explicitly conditional; it must not be counted as full BFT acceptance.

The homogeneous formula is true for all integer x,y, including y=0, and was tested that way. The most economical source implementation may prove it only for y!=0 using the already accepted `homogeneousValue_cast_eq`, because the actual BFT denominator is positive. The stronger y=0 case need not consume effort before the required source consumer works.

## 5. Minimal Lean obligations, in executable order

1. Check `AdjacentDeterminantData.lean`: actual signed constant, positivity/nonzero, degree bound, zero constant coefficient, and the explicitly conditional generic remainder eliminator.
2. Close **one** actual source route:
   - Integral route: verify the pending source coefficient/integral correspondence, derive the two actual polynomial remainder equalities with W=(1-X)^(t+v+2), then apply the eliminator and the constant-coefficient theorem.
   - Pure route: prove the six guarded source coefficient ratios, assemble P/Q three-term recurrences, prove D's factorial recurrence, and perform the determinant induction. This route can stay in integer/rational polynomial algebra.
3. Transfer the accepted actual polynomial determinant to the raw homogeneous values, using y!=0 and the accepted cast lemma if that is cheaper.
4. Verify PContentTransform, then `AdjacentIntegerBridge.lean`; combine its unconditional content-scaling theorem with the now-proved raw identity to remove hraw from the final source consumer.
5. Audit transitive axioms and source correspondence of that unconditional consumer. Only then is the full u,v,nonzero-z two-row gap formally cleared. Analytic growth, G lower bounds, heights, and original B699 quantifiers are still separate.

## 6. Exact tests and current evidence state

- `check_adjacent_determinant.py`: 288 complete polynomial determinant checks, u=1..18,v=0..15; 5,760 normalized integer checks with signed x,y and y=0; 544 whole-polynomial common-recurrence checks; 105 source-integral coefficient checks. The low-degree coefficients are checked, not sampled only at numerical z.
- `check_adjacent_ratios.py`: 10,374 exact Fraction ratio checks, u=2..15,v=0..12, all r=0..u, including the zero-guard boundaries. This validates the implemented ratios against the actual source coefficient arrays; it does not itself prove the unrestricted ratio lemmas.
- Results are in adjacent-determinant-check.json and adjacent-ratio-check.json, bound to their exact scripts.
- All three new Lean files are candidates and have not been run by this worker. No new original B699 index is claimed; no novelty claim is made.
