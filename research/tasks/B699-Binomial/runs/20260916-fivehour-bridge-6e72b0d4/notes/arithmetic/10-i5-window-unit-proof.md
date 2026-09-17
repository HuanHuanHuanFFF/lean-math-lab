# The complete i=5 unit-window class, with a direct i=4 result

Author `/root/arithmetic`; completed author paper proof and two exact finite implementations. Parent independent acceptance is recorded separately. No Lean and no historical position premise are used. The QIG identity and signed two-log/LTE interfaces are the already reconstructed inputs of 02 and 08. This version is frozen for stage handoff.

## 1. Exact statement

Let `s5(x)=2^v2(x)*3^v3(x)*epsilon5(x)`, where epsilon5=5 exactly when v5(x)=1, and is 1 otherwise. For r=0,...,4 put `q_r=(n-r)/s5(n-r)`.

The canonical i5 target is: **some q_r=1 implies Common5 for every legal j**. Equivalently,

`n=d*2^A*3^B+h`, `d in {1,5}`, `A,B>=0`, `0<=h<=4`.

The proof actually gives both i=4 and i=5 on this entire family, with their respective legal j>=5 and j>=6. These two source binomials are checked separately. A high 5-power is not removed from q_r: the factor d=5 occurs exactly once in the core, so the equivalence keeps the endpoint rule.

For i=4 its native small part removes only 2 and 3, hence is at most s5. Under NC4, enlarging the four-window small-part product to the auxiliary target-5 product preserves the necessary QIG and QIG-height inequalities. This does not transfer an i5 prime witness to C(n,4); it uses the stronger coefficient divisibility under NC4. The QIG positivity range includes j,k>=5 and n>=10.

## 2. Both high exponents: direct finite height or immediate contradiction

Use thresholds A>=3 and B>=2. Their powers exceed every source offset of absolute value at most 4, even when the core at h=4 lies outside the first four source positions. Those source maxima are at most 2^A and 3^B, so

`T5<=30*2^A*3^B<=(30/d)n`.

For d=5, QIG-height would give n-1<6^6/2^16<1, impossible. For d=1 it gives n-1<30^6/2^16, hence the exact integer bound

`n<11125`.

Thus only the d=1 both-high pairs with A<=13, B<=8 and 2^A3^B+h<11125 need finite checking. This proof does not assume a prior common-maximum-position theorem.

## 3. One high exponent: the frozen signed lifting bounds apply

If only 2 has a high exponent, n=e2^a+h with e=d or 3d. If only 3 has a high exponent, n=e3^a+h with e=d,2d,4d. There are five strip types per d, hence fifty under the five shifts and two d values. The no-high box has A=0,1,2 and B=0,1, sixty shifted representations.

Let p be the high base, q the other prime in {2,3}, and Qq=q^C the maximum complete q-power in the first four target positions. The high-base maximum there is at most p^a. Consequently

`T5<=30*p^a*Qq`.

Since e>=1, QIG-height gives `p^a<2^15*Qq^6`; use 30<32 in the constant. As q<=3<p^2, this implies

`a<15+12C<36(C+1)`.

For a>=192, C>=5 and it is attained at a nonzero offset rho in [-h,3-h]. The unequal-valuation rule forces delta=v_q(e)=v_q(abs(rho))<=2, so the normalized valuation of `e'p^a-rho'` is at least 3.

This is exactly the signed one-power arithmetic interface established in 08, with heights 6e and at most the same numerical constants. For dependent ratios rho'/e'=+-p^b, elementary LTE gives a<10^6. Other odd-q branches have a<3*10^8*bit_length(6e); 2-adic branches use a=2u+epsilon and u<10^8*bit_length(6e). Every residue progression, exact valuation, sign, parity, and period-based exact-small-root stop is retained. No NC5-to-NC7 implication is used.

The first 192 exponents cover every low-valuation or small-power exception. At those small n, QIG and original witnesses are evaluated using i4/i5 themselves, not the i7 labels of a reused arithmetic helper.

## 4. Complete finite domain and original checks

`i5_window_unit_probe.py` reconstructs the fifty strips, sixty low-box representations, and 115 bounded both-high representations. In total there are 9,850 finite representations. Exactly 217 fail QIG, corresponding to 189 distinct n. The i4-only low boundary n=10,11 is also explicitly retained; i5 has an empty legal j range there.

The largest finite integer is 3^33=5,559,060,566,555,523. `i5_window_unit_factor_probe.py` uses SymPy only to discover factorizations, not to certify primes. All actual factors are at most 11,916,528,545,671, so complete trial primality needs trial divisors only through 3,452,032. The already-QIG row n=28 is added as an explicit p=i=5 calibration, rather than counted as a new surviving row.

`i5_window_unit_certify.py` verifies all those primes and full source factorizations deterministically before constructing the two original certificates for each n. It checks source valuations separately for C(n,4) and C(n,5), then covers each legal target range by full prime-power carry intervals. The certificate has **384** indexed rows (192 different n), **1,262** intervals, and **11,120,608,020,979,064** covered pairs. These are exact interval lengths, not a claim to have enumerated that many pairs. The p=5 endpoint is retained: the n=28,j=14 calibration uses prime 5 and the complete target layer 25, with source v5(C(28,5))=1.

`i5_window_unit_verify.py` independently reconstructs all fifty strips, 96 normalization/parity branches and twelve identity stops, then rebuilds the low box and bounded both-high domain. It rechecks all source factorizations and trial primalities, both original indices, every entire interval and the full 25-layer endpoint calibration. Its output reports all checks passed in about 0.22 seconds. No generator, historical position result, sixth source window, or SIXG theorem is used for i=5.

## 5. Frontier consequences and limits

Once accepted, this gives `NC5 ==> q_r>=7` at every one of the five source positions: a nontrivial q_r either has a prime at least 7 or contains a full 5-power of exponent at least two. The source q_0 divides gcd(n,j), so NC5 also forces gcd(n,j)>=7.

The native i4 unit-window class is the d=1,h<=3 subfamily. Its nontrivial coarse blocks have minimum prime 5, so NC4 forces each native q_r>=5 and gcd(n,j)>=5. The general H01/H02 cofactors, six NC5 denominator templates, and full i4/i5 indices remain unresolved. The i5 result also overlaps earlier fixed-d row families; it is a canonical complete interface, not a claim that every included row is newly excluded by the project.
