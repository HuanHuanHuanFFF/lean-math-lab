# Source map and exact claims

The fixed input is the [BFT author PDF](https://personal.math.ubc.ca/~bennett/BFTpaper0207.pdf), dated 2007-02-26, SHA256 `0df18ee8d108f658812ac05d1f8947b3dcc28b70d17f268acd7c871e7e7c392c`. Its **printed pages** are used below; subtract one for zero-based PDF indices. No final-journal-version comparison or originality claim is made.

## 1. Exact construction and source-text discrepancy

Printed page 9, (3.1)-(3.3): for positive source integers A,B,C put K=(A+B+C+1)!/(A!B!C!). The natural-zero extensions below are also meaningful.

- P(z)=K integral_0^1 u^A(1-u)^B(z-u)^C du.
- Q(z)=(-1)^C K integral_0^1 u^B(1-u)^C(1-u+zu)^A du.
- E(z)=K integral_0^1 u^A(1-u)^C(1-zu)^B du.
- (3.4): P(z)-(1-z)^(B+C+1) Q(z)=z^(A+C+1) E(z).

The fixed PDF extraction of Lemma 3.1 shows `sum_r choose(N,r) choose(A+C-r,A) (-z)^r` for P. It conflicts with P's integral at z=0 for odd C. A positive-parameter check A=B=C=1 gives the integral polynomials P=4z-2, Q=-2-2z, E=4-2z. The extracted P expression is 2-4z and makes (3.4)'s two sides differ by 4 at z=0. The coefficient compatible with the integral is

`p_r=(-1)^(C+r) choose(A+B+C+1,r) choose(A+C-r,A)`.

This corrected sign was already used in the adopted [asymmetric Padé report section 4.1](../../../20260910-asymmetric-pade-022987af/delivery/REPORT.md). We do not claim it as a new discovery. Both web screenshot transport and local view_image/node_repl failed to supply a viewable page in this worker, so this record states **a fixed extraction/integral inconsistency**, not a visually confirmed printing error.

The other integer arrays are

`q_r=(-1)^C choose(A+C-r,C) choose(B+r,r)` (0<=r<=A),
`e_r=(-1)^r choose(A+r,r) choose(N,A+C+r+1)` (0<=r<=B).

## 2. Section 4 specialization

Printed page 10 fixes c>d>=1, coprime, n=dm-delta with delta=0 or 1, and A=C=n, B=cm-n-1. Thus the exponent B+C+1 is cm, provided the natural-subtraction side condition n<cm is proved. The integer version must not silently use truncated subtraction to infer this identity for arbitrary c,d,m.

Lemma 4.1 on that page is the pair of analytic bounds for |Q_n(z)| and |E_n(z)|. It is separate from the §7 two-row integer error bridge already accepted by the parent. The sibling owns the factorial prefactor estimates; this worker does not repeat them.

Lemma 3.2, printed page 10, concerns adjacent diagonal rows (A,B,A) and (A+1,B-1,A+1), with B>=1. Its determinant has form D*z^(2A+1), D nonzero. The integral-compatible coefficient convention gives the explicit candidate

`D=(-1)^(A+1) choose(2A+B+1,2A+1) choose(2A+2,A+1)`.

This formula is presently paper algebra plus bounded exact tests here, not a Lean theorem. The proof route is to eliminate the shared `(1-z)^(A+B+1)` factor in the two polynomial identities, use the degree bound 2A+1, then evaluate the remaining constant at zero.

## 3. What (5.14)/(5.15) actually state

Printed pages 17-18: set N=c+d, W=floor(m/(2N))-1, and for each j let r be its representative `j*d^(-1) mod N` in 0..N-1; t=Nw+r. For 0<=w<=W, define v_g=gw+1+floor(gr/N).

(5.14), delta=0:

- c<=j<N contributes max(theta((Nm-1)/t)-theta(dm/v_d),0).
- N/2<j<c contributes max(theta((Nm-1)/t)-theta(((c-d)m-1)/v_(c-d)),0).

Their sum over the specified w,j is a lower bound for log G(c,d,dm).

(5.15), delta=1:

- c<j<N contributes max(theta((Nm-2)/t)-theta((dm-1)/v_d),0).
- N/2<j<=c contributes max(theta((Nm-2)/t)-theta((c-d)m/v_(c-d)),0).

Their sum lower-bounds log G(c,d,dm-1). These are content bounds, not polynomial identities. The j=c term switches groups. There r=N-1 and g/v_g=1/(w+1), so the shared weakened bound used by the corrected i18 adoption is compatible with both formulas. This worker does not prove either content inequality or the theta theorem.

The source G is `gcd_{0<=r<=n} choose(2n-r,n) choose(cm-n-1+r,r)`. `IntegerConstruction.lean` constructs exactly this gcd after the §4 specialization. Its positivity and exact divisibility of the signed Q array are candidate algebraic lemmas; no G lower bound is assumed or supplied.

## 4. Candidate obligations and what they unlock

1. `IntegralIdentity.lean`: direct affine substitutions t=zu and t=1-(1-z)u, followed by oriented interval additivity, prove (3.4) for every A,B,C in Nat and every real z. This is a genuine unlimited-parameter construction identity, not a same-name validity interface.
2. `IntegerConstruction.lean`: exact integer P/Q/E coefficient arrays, degree bound, constant coefficients, source Q content, and integer denominator-cleared normalized Q values. The cast identity identifies the constructed integer as y^A/G times the explicit Q polynomial at x/y for any nonzero integer y.
3. Next measurable mathematical bridge: prove the beta monomial integral `integral_0^1 t^a(1-t)^b = a!b!/(a+b+1)!`, expand the integrands, and derive full coefficient/integral correspondence. This turns the already proved integral identity into the actual integer polynomial identity.
4. Then prove the adjacent determinant, P-content divisibility by looking below the remainder order, normalized two-row nonvanishing, and apply `../../lean/IntegerBridge.lean`. The full Q/E size estimates, corrected G lower bounds, and original B699 consumer still need their own verification.

Expected versus actual frontier: the checkpoint targets a uniform Padé prerequisite, not a bounded i case. No original B699 n,j family is presently removed by these uncompiled files. Completion of the integral prerequisite alone does not establish Lemma 4.1, Padé heights, or any of the stage B full-index claims.

## 5. Exact bounded evidence

Command (from this worktree): `C:/Python314/python.exe -B research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/experiments/huan-pade-construction-5e2d13bb/check_symbolic.py`, environment PYTHONUTF8=1.

`symbolic-check.json` records SymPy 1.14.0 and exact rational arithmetic: 64 triples A,B,C=0..3 verify all three coefficient/integral correspondences and (3.4); 32 odd-C cases detect the extraction sign inconsistency. Thirty-five adjacent rows A=0..6,B=1..5 verify the explicit determinant and P-content divisibility; 210 signed rational evaluations verify both normalized integer values. SymPy floating integration is not used. These checks can expose transcription mistakes; they do not prove a universal statement.

## 6. Continuation after the integer candidate freeze

`IntegerConstruction.lean` is frozen at SHA256 `539696b7354a5c2a54605ff1c5a742634d00bba8fc565f0af0e34d5aa192ff2b`, 8667 bytes; see FREEZE_INTEGER_V1.json. Parent will compile its identical-byte adoption; this worker has not launched Lean.

`CoefficientFactors.lean` adds the exact three scalar identities behind the coefficient-integral correspondence. `check_coefficient_factors.py` verified 4,116 rational cases, covering A,B,C=0..6 and every valid coefficient index; outputs are in coefficient-factor-check.json. This is factorial cancellation, independent of the sibling's exponential factorial estimates.

`KernelExpansion.lean` gives the exact finite binomial expansion of each original integrand, with the P parity sign explicit. It is pure real ring algebra and finite sums, with no analysis integral import. Together with the scalar identities, the analytical correspondence reduces to the classical beta monomial integral and finite-sum integration.

Existing library route for the beta formula: `Mathlib/Analysis/SpecialFunctions/Gamma/Beta.lean` has `Complex.betaIntegral_eq_Gamma_mul_div`; `Gamma/Basic.lean` has `Complex.Gamma_nat_eq_factorial` and `Real.Gamma_nat_eq_factorial`. These are actual existing results, but the local Gamma/Beta.olean and interval-integral Basic.olean were absent at the resource checkpoint. No download, new cache, or Lean run was attempted by this worker. A pure formal-antiderivative alternative would require Polynomial.Derivative.olean, also absent; this alternative remains untried and was not chosen over the direct integral route.

The fixed PDF's four relevant pages are additionally extracted from the existing local bytes by extract_source.py. source-extraction.json binds the input/output hashes; source-pages-extracted.txt is text evidence only.
