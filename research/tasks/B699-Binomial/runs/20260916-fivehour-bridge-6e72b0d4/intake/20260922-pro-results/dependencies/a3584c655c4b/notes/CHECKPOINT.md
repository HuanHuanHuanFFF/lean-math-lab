# Round 7 checkpoint
Owner: Pro E, B/i3, current conversation. No repository write, no Lean.
Basis: full original Overview and Round 6 PROOFS/HANDOFF read locally; immutable bytes will be bundled.
Route goal: close all nonnegative quartic digital rows above the inherited exact-lifting threshold, rather than scan fixed coefficients.

## New derivation under audit
Write f-1=UV, Sigma=VW, U | VW-1, and
W(W-U)(W-2U)=(UV-1) R in Q[X]. Then gcd(U,W)=gcd(U,R)=1 and
U | W R' - R(3W'-2U'). This follows by differentiating the exact identity and reducing modulo U (no squarefreeness needed).

Quartic: degU=degV=2, degW<=2, degR<=2. Constant R impossible by derivative and degrees; linear R leads at its root k in {0,1,2}, while leading cancellation forces k=4 or -1, impossible. Thus degR=2.

If R wholly divides W-kU for one k in {0,1,2}, the differential identity forces k=1 and W=U/2+c. Constants force c=-1/2 or3/2; hence f=3Z^2-2Z+1 with Z equal to integer polynomial U or V. Such f(T) is never divisible by4.

Otherwise R has distinct rational roots assigned different k,l. Affine-normalize R=ell*x(x-1), k<l. ODE:
3x(x-1)W'-(2x-1)W-2x(x-1)U'+((k+l)x-k)U=0.
Exact coefficient solutions and eliminants recorded in outputs/ode-cases.txt.
Surviving rational ratios u1/u2: 4 in(0,1), -6 in(0,2), -154/125 in(1,2). Other factors exclude gcd(U,R)=1 or rationality.
Case(0,2) gives negative quartic leading coefficient. For the other cases, rational original origins are two per case; one has negative quadratic coefficient. The other gives, up to rational dilation,
f=20t^4+64t^3+60t^2+16t+2, t=rX, r>0 rational.
Integrality of leading coefficient 20r^4 forces r integer (20 has no fourth-power divisor >1). Then f(T)=2 mod4.
Pending full review: ensure all quotient degree cases, repeated roots, denominator normalizations and coefficient tests are explicit.

## Additional uniform equality theorem
For arbitrary d=3r and allocated V of degree2r, R is nonzero constant. Differential identity gives3W'=2U', so W=(2U+3z-2)/3. Positivity of U(T),V(T),W(T) and 0<=leadingW/leadingU<=1 selects z=0. This yields V=(2U^2+3U-3)/2, W=2(U-1)/3. Integer coefficients imply6 divides U-1 coefficientwise. Put U(T)=1+6u, u>0. The exact Round6 cubic exception with original 3-adic deficit is recovered on the same n,j. Thus the equality 3degV=2d is also closed uniformly in d. Need audit without assuming U or V individually nonnegative coefficientwise.

## Failed computational method retained
A direct 5-variable finite-field Groebner probe (z0, b normalized to1) timed out at35sec. No conclusion extracted from it. Later derivative-based classification uses explicit linear identities and resultants, not completeness of that computation.

## Final mathematical checkpoint
The pending quartic obligations above are now discharged in PROOFS §5–7, including low quotient degrees, repeated roots, rational origin and dilation denominators. The equality theorem is proved in §4. No conclusion relies on the unfinished Groebner run. Standard-library A/B verification and 21 mutation tests passed; regeneration was byte identical.
