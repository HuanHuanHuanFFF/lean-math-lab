# Cross-route AI review of the rational near-middle band

Reviewer: valuation-transfer (`/root/valuation_transfer`), 2026-09-08 18:30 UTC checkpoint. The primary explicitly extended this worker's ownership to this review file. This is a cross-route AI review by an existing mathematical worker, not a fresh-context review, not human peer review, and not a reconstruction of the complete source proof. No Lean or heavy computation was run by the reviewer.

## Verdict

No blocking mathematical or source-correspondence defect was found in the reviewed consumer. It proves the stated parity-dependent near-middle band on paper from the main Laishram-Shorey Theorem 3 statement, with all ten source exceptions discharged and p=i retained. In particular, the whole `n-2j<=i` region is covered. The result is independent of EEES, but is not an axiom-free Lean proof of the analytic/computational source theorem.

The source's internal Lemma 2.8 issue was already correctly flagged by the author of the memo. The present verdict uses the main theorem with its explicit exceptions, and does not certify all of the source's proof details.

## Scope and source check

Read `notes/rational/near-middle-band.md`, `parity-transfer.md`, `middle-column.md`, and `band_exception_audit.py`. Read the existing executed `experiments/ap-exceptions/las2012.json`; no cases were rerun.

Independently opened [Laishram-Shorey author manuscript v1](https://arxiv.org/pdf/1306.0745v1), manuscript p.2, Theorem 3. Its d=2 hypotheses, strict piecewise bounds, and ten exceptions agree with the transcription. The requirements are positive odd m, k>=2, m>2k; the split is at m=2.5k, with lower bounds 3.5k and 4k. The d=3 clause is unused. The theorem's exact exceptional pairs are the same ten in the consumer. On manuscript p.5, Lemma 2.8 indeed omits the exceptional k=2 wording; the consumer does not rely on that lemma in isolation.

For the cheaper penultimate-column route, independently opened [Jakhar's publisher PDF](https://nyjm.albany.edu/j/2026/32-16v.pdf), printed p.366, Lemma 2.4 and Remark 2.5. The strict `p>2k+1` bound and the k=2 first-term-25 exception agree. The original 1929 Schur source was not inspected; the review certifies the use of the explicitly cited modern lemma, not its original attribution details.

## Arithmetic and quantifier checks

Write d=n-2j>=0. For a terminal offset a<i and Q|n-a, no divisibility of p into C(n,j) implies `b=j mod Q<=a`. The integer `d+2b-a` is Q-divisible and lies between d-a and d+a. Both sufficient conditions in `parity-transfer.md` are valid: when d>a it is positive; when n-a and Q are odd it is odd and therefore nonzero. In both cases Q>d+a makes its absolute value too small for nonzero Q-divisibility. The explicit quotient formula also has an integer remainder strictly between a and Q.

The source progression contains exactly the odd terminal terms. Its parameter table is correct:

- even n: k=floor(i/2), amax=2k-1;
- odd n: k=ceil(i/2), amax=2k-2.

Legality gives m=n-amax>2k and `m-(amax+d)=2(j-amax)>0`. The specified band makes `amax+d<=4k-1`. If m<=2.5k, the source prime exceeds 3.5k, hence m and amax+d. If m>2.5k, it exceeds 4k and hence amax+d. For k>=2 both bounds exceed i. Thus the actual prime divisor of a progression term meets every carry premise, with no unproved matching or cofactor assumption.

The final even/odd band is exactly what the parameter table states. Since d has the parity of n, even n and odd i turn d<=i into d<=i-1 automatically. Therefore the claimed simpler d<=i consumer follows without losing a parity case.

## All ten exceptions

Independently derived the finite consumer set from n=m+2k-1 or m+2k-2, the two compatible i values in each parity, legal j, and the claimed band. The existing result file has precisely these counts:

| source pair | legal band consumers | certificate |
|---|---:|---|
| (5,2) | 0 | no legal consumer |
| (7,2) | 2 | terminal prime 7 |
| (25,2) | 12 | p=5, Q=25 |
| (243,2) | 12 | terminal 245, p=Q=7 |
| (9,4) | 0 | no legal consumer |
| (13,5) | 2 | terminal prime 13 |
| (17,6) | 6 | terminal prime 17 |
| (15,7) | 0 | no legal consumer |
| (21,8) | 6 | terminal prime 23 |
| (19,9) | 0 | no legal consumer |

The total is 40. The script's `first_j=max(i+1,ceil((n-dmax)/2))` is complete for this finite range. No source exception is silently removed based on an unrelated old scan.

For (25,2), the compatible rows are 27 and 28 and the chosen term is 25. The three records with n=28,i=p=5 have numerator valuation2 and denominator valuation1, leaving a positive exponent; Q=25 produces the carry even when p=5 itself is too small for the uniform size premise. For (243,2), using 245 rather than 243 is legitimate because 245 is in the two-term progression. Its p=7 exceeds every compatible i and a+d.

## Small-index boundary

The i<=2 argument correctly cancels gcd from the binomial identity, giving `C(n,i)/g | C(j,i)` and hence g>1. Any prime factor of g is at least2, which is enough for both indices.

For the only remaining one-term case, even n and i=3, the band has d=0 or2. If n-1 has no prime above3, it is `3^u` with u>=2 because n>=8. Exactly one terminal numerator term is divisible by3, so `v3(C(n,3))=u-1>=1`. The power Q=3^u is greater than a+d with a=1, proving the second divisibility. This explicitly checks the p=i=3 boundary; no strict-p replacement was made.

## Version and evidence boundary

Reviewed SHA-256 values:

- `near-middle-band.md`: `1E6F643AB0962429AA0B94C39964574E941687BC47AF5E10BD2E34F864C01147`
- `parity-transfer.md`: `84D8224F850C77689F762EC408D43B166D0DD3722E8F66B92AB2CEAFCE2FBFD7`
- `band_exception_audit.py`: `2C7CBF77C656B8F971C05218E63E94F2AA7F81ACC0FCF3199816ADA9E84CF466`
- `las2012.json`: `4C69FF45B620A8E62314ADCB14D18D771D8EA18CB13C38232796420951200F06`

The existing executed 40-case evidence is supporting finite verification. It does not prove the unrestricted source theorem. This review provides a second reconstruction of the consumer and finite-range completeness, not a claim that the source theorem or full B699 has been formally verified. No mathematical correction is required; the owning run should link the executed record and this cross-review when updating its current paper-acceptance state.
