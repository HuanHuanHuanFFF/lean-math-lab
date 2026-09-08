# First independent route memo: bounded displacement/length cones

Sent to primary after the first exchange on 2026-09-08 around 04:54 Shanghai. Mathematical checkpoint tool reading before exchange: 04:51:48. Full working record: route-record.md.

## Target and status
M(n,k)=lcm(n+1,...,n+k), n,m,k natural, k>0, m>=n+k. A counterexample settles the original universal statement. No counterexample or new Lean-accepted theorem has been obtained.

Expected frontier change of the selected route: exclude a whole unbounded cone k<=m-n<=Ck for a specified constant C, leaving m-n>Ck with n,m,k still unbounded. This is a partial result only; no completion percentage or novelty claim.

## Independent route (before first exchange)
Let d=m-n>=k. Under LCM equality L, for every prime p choose positions i,j in [1,k] attaining the common largest p exponent e. Then p^e divides both n+i and m+j, so divides d+j-i, a positive integer in [d-k+1,d+k-1]. Hence

    L | lcm(d-k+1,...,d+k-1).

Also product(n+i) | (k-1)! L. The elementary bound lcm(1,...,N)<=4^N gives, if d<=Ck,

    n+1<=4^(C+1) k,    m<(4^(C+1)+C)k.

Dusart Proposition 5.4 gives a prime p with x<p<=x(1+1/log^3 x) for every x>=89693. For C=4, m<1028k and log(m)^3>1028, so this p lies in the later interval and is greater than all numbers in the earlier interval, contradiction. Therefore the C=4 cone reduces to 1<=m<89693, with all other variables bounded by m.

## After first exchange: primary improvement under review
Primary independently proposed expanding the difference interval to length 2k and using

    M(a,b) | binom(a+b,b) lcm(1,...,b).

For k>=2, binom(N,r)<=(eN/r)^r, e<3 and (k-1)!<=(k/2)^k give

    n+1<=18(C+1)^2 k,    m<[18(C+1)^2+C]k.

I independently checked the p-adic divisibility argument and the parameter alignment. C=8 gives B=1466. A rigorous rational margin can use exp(1)<87/32, (87/32)^57<89693^5, and (57/5)^3>1466. These exact rational/integer inequalities are included in the finite checker. k=1 is directly impossible by equality of single integers.

## Primary-source verification
- Dusart, Explicit estimates of some functions over primes, Ramanujan J.45 (2018), 227-251, DOI https://doi.org/10.1007/s11139-016-9839-4 . Published online 2016. Proposition 5.4 is printed on p.242 (PDF page16), proof p.243 (PDF page17). Exact statement: for all real x>=89693 there exists prime x<p<=x(1+1/log^3 x). It is unconditional; proof uses unconditional analytic estimates and verified finite prime gaps, not RH as an assumption.
- Downloaded published PDF from public mirror https://piyanit.nl/wp-content/uploads/2020/10/art_10.1007_s11139-016-9839-4.pdf . SHA256 fcd7cd1f7afcec97f6c73a2cbc540f7a56f0425987fa261c9f0d4925c2b31ebc. The mirror certificate was expired; one explicitly scoped no-credentials request skipped certificate validation. Bibliographic metadata matches publisher and author page.
- Author publications page https://www.unilim.fr/pages_perso/pierre.dusart/Publications.html links correction https://www.unilim.fr/pages_perso/pierre.dusart/Recherche/correctif_RJ.pdf . Revision 2018-02-26; corrects two typographical errors in Theorem3.5 and gives PARI code. It does not state a change to Proposition5.4. Correction SHA256 bcd8b9868b6b2b4e28e332e54ef56967c35df2670ba7dd7e8e4b61410ce74d5d.
- PDF source text extracted with bundled pypdf; complete proposition page rendered to sources/dusart-p242.png. App image inspection failed before opening because of the known Windows sandbox helper startup error. Thus no successful visual preview is claimed; exact proposition text and adjacent proof were read from PDF extraction.

## Finite remainder and acceptance cost
A collision later interval must be prime-free. An exact sieve below twice 89693 bounds the permitted k for every m<89693 by next_prime(m)-m-1; complete range and maximum are recorded by check_finite_cones.py. The checker computes full integer LCMs using a two-stack aggregate queue and exact integer dictionary equality. Every queue window for n<=200,k<=15 is independently checked against the original math.lcm definition. Every reported collision would be directly rechecked from both original intervals. It separately evaluates C4 and C8.

This certificate plus the source-dependent paper argument may establish paper/computational coverage after independent review. The Dusart theorem and analytic/binomial bounds are not yet proved in this Lean worktree. Do not report Lean acceptance or original novelty. Larger proof engineering should wait for primary allocation after comparison against the remaining unbounded d/k frontier.

## Rejected or lower-priority routes
- LCM fibre convexity is false: L(14,6)=L(16,6)=1627920 but L(15,6)=232560. This refutes only that auxiliary claim; the intervals overlap.
- Independent exact rectangle a=n+1<=10000,k<=80 found no disjoint collision. It does not shrink the unbounded frontier by itself.
- Farhi-Kane periodic quotient gives finitely many product-ratio curves for fixed k; n,m and k remain globally unbounded. No large formalization commitment.
- Known greatest-prime-factor results of Hanson and Laishram-Shorey can exclude n small relative to k, but must be compared with the selected cone route before spending effort.
