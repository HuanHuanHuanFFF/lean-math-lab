# Direct P-content bridge from the actual Q coefficients

Owner: `/root/pade_construction`. This is the prioritized continuation after the parent accepted the integrated integer construction. All new files remain in this exclusive experiment directory. No Lean or downloads were run by this worker; phase A retains the serial compiler.

## Exact target and frontier

For **every u,B in Nat**, define the actual diagonal signed arrays from the fixed BFT source integrals:

p_k=(-1)^(u+k) choose(2u+B+1,k) choose(2u-k,u), 0<=k<=u,
q_r=(-1)^u choose(2u-r,u) choose(B+r,r), 0<=r<=u,
G=gcd_{0<=r<=u} choose(2u-r,u) choose(B+r,r).

The target is `G divides p_k` for every k<=u, hence all coefficients of P, together with a constructed integer normalized value. This removes the unrestricted P-content integrality obligation for both n=dm and n=dm-1. It needs neither the main Padé error identity nor any G lower bound. It does not remove the adjacent determinant, analytic size estimates, or original B699 n,j gaps.

The diagonal restriction A=C is essential to this route as stated. B=0 and u=0 are explicitly included. In the actual adjacent pair take the lower u=dm-1 and B=(c-d)m>=1; the next row uses u+1 and B-1. Natural-subtraction and positivity hypotheses must be established at that specialization.

## Motivation and exact transformation

The integral permutations suggest a degree-u Möbius transformation, but the proposed proof uses only the explicit coefficient arrays. Its polynomial form is

P(z)=sum_{r=0}^u q_r (-z)^r (1-z)^(u-r).

This form is valid at every z, including z=1. The shorthand `(1-z)^u Q(z/(z-1))` is used only for z!=1. Earlier communication used that shorthand without immediately stating its domain; this file supplies the explicit boundary correction.

Taking coefficient k gives the stronger integer identity

p_k=(-1)^k sum_{r=0}^k q_r choose(u-r,k-r).

Thus each p_k is an integer linear combination of Q coefficients. This is a substantive identity between fixed constructed data, not an assumption that a P-content property holds.

## Uniform paper proof of the coefficient identity

The binomial rearrangement, valid for r<=k<=u, is

choose(2u-r,u) choose(u-r,k-r)
 = choose(2u-k,u) choose(2u-r,k-r).

It follows from choose symmetry and the elementary `Nat.choose_mul` identity, with all subtractions justified by r<=k<=u.

The remaining sum is positive:

sum_{r=0}^k choose(B+r,r) choose(2u-r,k-r)
 = choose(2u+B+1,k).

Set M(a,b,k)=sum_{r=0}^k multichoose(a,r) multichoose(b,k-r). The elementary multichoose recurrence yields

M(0,b,k)=multichoose(b,k),
M(a+1,b,k+1)=M(a,b,k+1)+M(a+1,b,k).

Double induction in a and k proves M(a,b,k)=multichoose(a+b,k), including a=0 or b=0. Substituting a=B+1 and b=2u-k+1, and using multichoose(a,r)=choose(a+r-1,r), proves the displayed positive sum.

Multiply the binomial rearrangement by choose(B+r,r), sum, then restore the sign `(-1)^(u+k)`. This gives the triangular coefficient identity. G divides each q_r by its actual finite-gcd construction, so divisibility of p_k follows term by term. No source theorem about Padé remainders enters this argument.

## Candidate and consumer

`PContentTransform.lean` imports exactly:

- `research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PadeInteger`
- `Mathlib.Data.Nat.Choose.Sum`

The first import's source SHA256 is `8aa4bdbd7b3751fe96bd4d953ee68ab5b7fd2fa374cb5ce623d7d460d444044b`. The parent adapted the original integer candidate by marking only its four polynomial-valued definitions noncomputable; its arrays, G, and homogeneous values remain computable. Parent evidence: `../../verification/20260911T035339927527Z/evidence.json`; the subsequent uniform prerequisite audit is `../../verification/20260911T035706170589Z/evidence.json`. The latter reports success=true for PrerequisiteCheckpoint and explicitly reuses previously hash-bound objects; this worker did not rerun it.

The candidate derives `qContent_dvd_pPolynomial_coeff`, constructs

pNormalizedValue(u,B,x,y)=sum_{r=0}^u (p_r/G) x^r y^(u-r) in Int,

and proves its real cast equals `y^u/G * P(x/y)` for every integer x and every nonzero integer y. Together with the accepted normalized Q value, this prepares the actual pair of integers required by IntegerBridge.

A nonzero adjacent determinant remains mandatory before invoking the two-row existence step. Once proved, its normalized value should be

D*x^(2u+1)/(G_u G_(u+1)),
D=(-1)^(u+1) choose(2u+B+1,2u+1) choose(2u+2,u+1),

with B>=1 and x!=0. This line is a planned consequence of the still-pending adjacent polynomial determinant, not an accepted Lean theorem.

## Evidence and freeze

`check_content_transform.py` uses exact integer operations and a small symbolic polynomial expansion. It passed 1,936 multichoose convolution instances, 4,851 triangular coefficient instances for u,B=0..20 and all k<=u, 441 complete content-gcd comparisons, and 49 polynomial transformation cases. `content-transform-check.json` records range, time, and script hash. This finite evidence tests transcription and boundaries; the unrestricted proof obligation is the separate induction in the candidate.

Candidate frozen at 2026-09-11T04:07:44Z: 10690 bytes, SHA256 `88157c95f1d99a2d25dbb6023b3e65c5cf0caebb43bbd6c25e641cda8a793af2`; see FREEZE_CONTENT_V1.json. It is **not Lean-accepted yet**. On a diagnostic, preserve this file and write a versioned correction. The next useful serial check is PContentTransform after the parent's phase-A boundary, before expanding analysis-cache work.
