# The ninth source position: h=8 with at most two high exponents

Author `/root/arithmetic`; completed author paper argument and two exact finite implementations. This is a separate extension of frozen 13, leaving that file and its data unchanged. Parent acceptance is separate. No Lean or historical position theorem is used.

## 1. Exact statement and reason for a new threshold

Let `n=2^A*3^B*5^C*7^D+8`, with A,B,C,D>=0. For this shift only, use high thresholds **(4,2,2,2)**. If at most two exponents are high, the original common-prime assertion holds for i=8 and i=9 and every legal j.

For i9 this fills the last source position h=8 in the canonical hypothesis that some native normalized block q_r equals 1, r=0,...,8. The first eight shifts have their own frozen threshold (3,2,2,2) and are unchanged. This file does not itself close the three-high component of either threshold system.

The larger 2-threshold is necessary for this source comparison: every high power must exceed every |rho|, now at most 8. A core with exactly 2^3 can acquire a larger 2-valuation at core+8; it therefore belongs in the low category here. The 7-threshold remains D>=2, so the h=7 low-7 issue from 13 is not reintroduced.

Although the canonical motivation is i9, the six-window and quartic source arguments already apply under NC8 with the same native 2357-small part. We check the finite endpoint for i8 and transfer its prime p>=11 to i9 using `C(n,9)=C(n,8)*(n-8)/9`. Thus the stated i8 conclusion at h=8 is also proved; it is not described as a native q8 unit-window condition.

## 2. Exact changes to the paper interface

Use the complete-power QIG/SIXG sources, rational-logarithm theorem, and full affine lattice coverage proved in 13. All source differences rho=r-8, r=0,...,5, lie in [-8,-3]. The high powers now exceed 8, so the maximal-power comparison and `T6<=120*n*product(low q^Cq)` remain valid. Consequently

* one high exponent: `H<6+10C`;
* two high exponents: `H<6+8C`.

The low selected q-exponent delta is at most **3**. Set CUT=80. At H>=80 the selected C is at least 8 in the one-high case and at least 10 in the two-high case. Thus the exact source valuation `v=C-delta` is at least 5 or 7, respectively, above every principal-group start 1,2,3,4. As before, rho is nonzero and delta=v_q(rho).

After removing q^delta, write c=e/u with u=rho/q^delta. In the one-high case e contains only two other low prime powers, so **e<=56**; in the two-high case e<=8. Also |u|<=8. The coefficient here is the reduced rational after removing the selected q-power, not the whole low smooth factor, which can be 840. Therefore the squared rational coefficient has logarithmic height at most `2 log56<10`.

Yu's section 0.1 applies exactly as in 13 with ell=2 or 3, squared positive rational bases, h_j=h'=10, K=Q, and the nonzero squared form. It gives `v<10^26 log H`, hence

`H<36+10^27 log H`, and therefore **H<10^32**.

Only the finite exact-v sum ceilings change to

`H<=5+10(v+3)` or `H<=5+8(v+3)`.

The principal-group exceptions p=7,q=2 (start 4) and p=7,q=5 (start 2) are both preserved. The global stop still tests the complete high-exponent region below 10^32 against the original unsquared congruence, including all residue lifts. No new asymptotic assumption is introduced.

With four high exponents the earlier estimate gives n^3<45000, contradicting n>=16*9*25*49+8. Thus four-high is directly excluded too; exactly three-high is the only unconsumed category in this last-shift design.

## 3. Completed exact computation

The h=8 inventory has 56 one-high and 36 two-high coefficient cells, and 32 low-box representations. Grouping exact rational forms leaves **258 one-variable and 134 two-variable forms**, altogether 392.

Of these, 27 are impossible at their principal-group start: 6 at (p,q)=(7,2), and 21 at (7,5). The other 365 have certified global stops; the deepest is level 217. The independent checker reconstructs **29375 lift levels** and all 456 high form candidates. Expanding those candidates gives 784 high representations.

The complete finite set consists of 32 low-box, 107876 bottom (H<80), and 784 high representations, altogether **108692**. Recomputed native scalar results are:

| result | representations |
|---|---:|
| no legal i8 pair | 9 |
| strict QIG | 108609 |
| strict SIXG after QIG | 41 |
| original-prime endpoint | 33 |

The endpoint consists of **33 distinct n**, all at most **1380**. Exact trial factorizations of the eight source terms and **34 complete prime-power intervals** cover **2575 legal i8 pairs**; the largest witnessing prime is **1373**. Every witness is at least 11, so the same evidence gives every legal i9 pair. There is no probable-prime dependency.

## 4. Files, replay and acceptance boundary

All new executable files use the prefix `i9_h8_low_high_` in `experiments/arithmetic`:

* `probe.py/.json` and `screen.json` give the fixed forms, global stops, finite candidates and native scalar screen;
* `certify.py` and `certificate.json` give the original i8 endpoint and i9 transfer;
* `verify.py` and `verification.json` independently rebuild all forms, all lifts, global stopping boxes, finite representations, scalar inequalities, source valuations, exact trial primes and interval coverage.

The new programs were copied from the frozen 13 algorithms with explicit parameter changes; the original files were not modified. The verifier still imports neither generator nor a lattice/CAS/primality package. It enumerates finite affine candidates by residue progressions while the generator uses coordinate boxes. The fresh verification passed in about 7.5 seconds and binds all three exact input JSON hashes.

This is a completed unrestricted h=8 zero-, one-, and two-high result, with direct four-high exclusion. It does not silently adopt a pending three-high certificate, and it does not close arbitrary nontrivial coarse-block inputs. The stage remains paper plus exact finite computation until the parent records independent mathematical acceptance; it has no Lean acceptance claim.
