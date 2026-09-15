# Shifts 0 through 3 preserve the fixed-cofactor reduction

Author `/root/arithmetic`; completed author paper proof and two exact finite implementations after frozen 04. Independent parent AI acceptance is recorded separately. No Lean. All external inputs and explicit logarithm constants are those fixed in 02--04; no new transcendence theorem is introduced here. This version is frozen for stage handoff; later work uses new files.

## Locked target and intended frontier contribution

For each d with `5<=d<=31` and `gcd(d,6)=1`, and for every `A,B>=0` and `h in {0,1,2,3}`, put

`u=d*2^A*3^B`, `n=u+h`.

Prove the original statements at i=4 and i=5, with all legal j, primes p>=i, and full source/target powers. This gives ten fixed-cofactor double-exponent families under four shifts. Different representations of the same n are not counted as different original rows. d=1 is not included without its separate old proof, and d remains unrestricted in general H02.

The change from 04 is structural: the four-window always contains the core u. Its other terms are u+t for `t in {h-3,h-2,h-1,h}`. It is essential to use **core u** in the exponential congruences and **target n=u+h** in QIG and the binomial coefficients.

## 1. Uniform interior and two easy horizontal edges

If A>=2 and B>=2, the four-window 2-part product is 2^(A+1), and its 3-part product is at most 3^(B+1); any second 3-multiple differs from the core by exactly 3. A solitary 5 adds at most 5. Hence

`T5<=30*2^A*3^B=(30/d)u<=(30/d)n<=6n`.

QIG-height yields n-1<1, a contradiction. This closes every shifted interior, not just a finite set of A,B.

If B=1, A>=2, and h=1 or 2, the core is the only 3-multiple in the four-window. Thus `T5<=30*2^A<=(10/d)n<=2n`, again a QIG-height contradiction. No logarithm theorem is needed for these two entire edges.

## 2. Remaining horizontal edges and signed rational ratios

For B=0, A>=2, let v be the largest 3-adic valuation among the relevant shifted terms `d2^A-rho`. The possible rho values are

| h | rho values whose terms lie in the source four-window |
|---:|---|
| 0 | 1,2 |
| 1 | -1,1,2 |
| 2 | -2,-1,1 |
| 3 | -2,-1 |

The source position is `h+rho`, in {0,1,2,3}. Two 3-multiples, if present, differ by 3, so the total 3-part is at most 3^(v+1). Thus `T5<=(30/d)3^v n`.

For B=1 and h=0 or 3, the other 3-multiple is respectively `3(d2^A-1)` or `3(d2^A+1)`. Use rho=1 for h=0 and rho=-1 for h=3, and v=v3(d2^A-rho). The 3-part product is 3^(v+2), and again `T5<=(30/d)3^v n`. When v=0, QIG-height immediately contradicts n>=10, so only v>=1 matters.

In every remaining horizontal case, n>=d2^A and

`2^A < [(2/d)(30/d)^6/2^16]*3^(6v) <3^(6v)<2^(10v)`.

The middle coefficient is less than 1 for d>=5 (at d=5 it is `93312/327680<1` and it decreases with d). Therefore A<10v. The same explicit p-adic theorem with ratio **rho/d**, including negative rho, gives the cap

`A<5360*k*(ell+11)^2`, `k=bit_length(d)`, `ell=bit_length(k)`.

The primary source's total notation on printed page 138 allows nonzero rational numbers of either sign. Its height bounds use absolute values of numerators and denominators. Here |rho|<=2<d, so the heights and numerical constants are unchanged. For m=3 and auxiliary g=2, the signed ratio is still a 3-adic unit whose square is 1 modulo 3. Lambda is nonzero. Thus a negative ratio does not remove any H1 or height obligation.

All least residues solving `d2^A=rho mod3^v` are lifted as before, separately for every signed rho. Enumerate every allowed progression with A>=3, A<10v, and the cap; check exact v before applying QIG to target n. A=2 is finite. Extra candidates from a non-maximal 3-position are harmless; completeness follows because the true maximal position is among the listed rho values.

## 3. Vertical edges and their signed source offsets

For A=0 or 1 write `e=d2^A`, `delta=A`, and core `u=e3^B`. For B>=2 the four-window 3-part is at most 3^(B+1). Its 2-part is 2^(C+1), where the largest complete power 2^C is at `u-r` for the following offsets:

| h | r when e is odd | r when e is even |
|---:|---|---|
| 0 | 1,3 | 2 |
| 1 | -1,1 | 2 |
| 2 | -1,1 | -2 |
| 3 | -1,-3 | -2 |

Again the source position is h+r, always in the four-window. Consequently `T5<=(30/e)2^C n` and B<4C exactly as in 04. Put `B=2v+epsilon`. The m=4 logarithm form is now

`Lambda=9^v-r/(e3^epsilon)`.

Its 2-valuation is `C-delta`, because the numerator and denominator of the second ratio have the same 2-valuation delta. For high C-delta>=2 the ratio is 1 modulo 4; hence H1/H2 hold with auxiliary g=1 and heights 9 and 3e, even when r is negative. The constant 201, the floor in v4, and the +2 conversion are unchanged. Thus

`v<3240*k*(ell+11)^2`, `k=bit_length(3e)`.

All C-delta<=2 cases force B<12 and belong to the finite bottom B=0,...,11. For B>=12 let t=C-delta>=3, `c=e3^epsilon/2^delta`, `r0=r/2^delta`. The necessary congruence is

`c9^v=r0 mod2^t`.

If c and r0 differ modulo 8, the branch is impossible. Otherwise lift the unique least v modulo 2^(t-3), retaining both possible next lifts, all progression members with `12<=2v+epsilon<4(t+delta)`, and the proved v cap. Use the exact valuation of **core-r**, not target-r. Stop only after the actual least root reaches the cap. The order of 9 and all interval/cap arguments are those already proved in 04.

## 4. Original finite boundary and scope of evidence

The discovery `experiments/arithmetic/shifted_mixed_probe.py` imports only frozen scalar utilities from `mixed_powers_probe.py`; it does not edit that file. It reconstructs 80 horizontal and 240 vertical cases, 60 active vertical high-layer branches, and 1845 finite candidate representations. Only 181 representations fail strict QIG, corresponding to 129 different target integers n. The largest target is 156,905,298,048 (38 bits).

`shifted_mixed_certify.py` produces one certificate for every distinct pair (n,i), rather than repeating the same n for overlapping representations. The full `shifted_mixed_certificate.json` has **258** original indexed rows and **877** complete prime-power carry intervals, covering **392,031,014,969** legal pairs. This is exact interval coverage, not that many individually enumerated calculations. Every source prime is deterministically certified by complete trial division, and source valuations are checked separately for i=4 and i=5, retaining i=4's j=5 and i=5's endpoint prime 5.

`shifted_mixed_verify.py` imports no discovery or certificate generator. It rebuilds the horizontal lifts with base 4, checks both possible binary vertical lifts, exhausts each small exponent interval directly, verifies the signed source-offset tables and exact valuations against the **core**, and reconstructs every non-QIG representation. It then checks all 129 distinct n and both original indices, full factorization products, prime certificates, source valuations, and every interval's endpoints and strict target residue condition. Its `shifted_mixed_verification.json` reports all exact checks passed in about 0.07 seconds. It also verifies that the h=0 finite frontier exactly matches the frozen unshifted stage. The two implementations share an author; independent parent AI review remains a separate evidence layer.

Reused scalar utilities come from frozen `mixed_powers_probe.py` (QIG and deterministic cover generation) and `mixed_powers_verify.py` (a separate prime/source-valuation checker). Their source hashes are already in the stage-2 freeze manifest and are referenced again in the stage-3 handoff. No prior frozen file is edited by this extension.

## Variable-cofactor obstruction retained

Every success here still fixes d in a finite explicit set. The general effective cap controls A or B in terms of bit_length(d), while the previous H02 gcd bound only gives an upper estimate for d that grows with n. These inequalities do not imply a fixed d or produce a descent that preserves NC. A future attempt at the full remaining templates must introduce that missing arithmetic coupling; this shifted-family result is not evidence that the general step is automatic.
