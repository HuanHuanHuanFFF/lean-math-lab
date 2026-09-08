# A uniform near-middle band from an arithmetic-progression theorem

Owner / baseline / budget: as in `middle-column.md`. This memo responds to the primary's request to prioritize exact Laishram-Shorey applicability over a denominator-only obstruction. The source matching, proof and all exceptions below were assembled in the first comparison period. No heavy computation was run by this worker.

Status: paper derivation using a source theorem proved in the cited paper. No Lean acceptance, no human review, no novelty claim. The resulting band does not use EEES or any unproved structure hypothesis.

## Pre-commitment assessment

Expected reduction: starting from all legal triples, exclude n-2j <= i uniformly, including n and i unbounded, with small additional parity coverage. The harder complement n-2j > i, i, j and reduced denominator s remain unbounded; this is not a finite reduction. Motivation: the terminal odd arithmetic progression in the Schur route has length about i/2, and the exact carry requires a prime larger than a+(n-2j). A published bound larger than twice the progression length could therefore remove a band of positive width proportional to i.

Required test: match the published strict bound, m/k hypotheses and every exception; check p=i cancellation by actual prime powers. The bounded script `band_exception_audit.py` constructs only legal consumers of the ten newly adopted theorem exceptions, and checks exact binomial integers. It has been sent for primary execution; at this memo's creation it has not been run. No earlier global B699 scan is repeated.

## Precisely adopted primary source

S. Laishram and T. N. Shorey, *Irreducibility of generalized Hermite-Laguerre polynomials*, Functiones et Approximatio Commentarii Mathematici 47(1) (2012), 51-64. DOI <https://doi.org/10.7169/facm/2012.47.1.4>. Direct author manuscript: <https://arxiv.org/pdf/1306.0745>, version `1306.0745v1` dated 2013-06-04; HTML <https://arxiv.org/html/1306.0745v1>. Theorem 3 appears on manuscript p.2. Both author PDF extracted text and HTML have been read. Publication metadata was checked on the DOI/Project Euclid entry. The version consulted is the author manuscript; no byte identity with the publisher PDF is claimed.

Write Delta(m,2,k)=m(m+2)...(m+2k-2), P(x) for its largest prime factor. The d=2 part of Theorem 3 says: if k>=2, m is positive odd and m>2k, then

- P(Delta)>3.5k if m<=2.5k;
- P(Delta)>4k if m>2.5k;

apart from the ten pairs

(5,2),(7,2),(25,2),(243,2),(9,4),(13,5),(17,6),(15,7),(21,8),(19,9).

The d=3 clause of the same source is not used in this band proof. This exact source supersedes the initial weaker 3.5k-only lead from the Pell-sequence paper and is corroborated in Laishram-Nair-Shorey (2016), author manuscript <https://www.isid.ac.in/~shanta/PAPERS/Lag-LNS.pdf>, p.6.

## A direct parity carry lemma

Let n=2j+d with d>=0 and 1<=i<j. Let a be an offset with 0<=a<i such that n-a is odd. Suppose an odd prime p>i divides n-a and p>a+d. Write n=up+a. Since n-a and p are odd, u is odd. Then

j = ((u-1)/2)*p + (p+a-d)/2,

and a < (p+a-d)/2 < p. Therefore j mod p > a = n mod p, giving p | C(n,j). Also p | C(n,i) by the terminal-factor argument. This is a sufficient condition, not a claim that all large prime divisors cause a carry.

The same arithmetic statement works with an odd prime power Q=p^e in place of p, provided p | C(n,i) is separately checked and Q>a+d. Indeed j mod Q=(Q+a-d)/2>a. This distinction handles p=i.

## Definition of the progression and exact band

Take every odd integer among n,n-1,...,n-i+1. Let k be their number and amax their largest offset:

| parity of n | k | amax | final allowed d=n-2j |
|---|---:|---:|---:|
| even | floor(i/2) | 2k-1 | d<=2 floor(i/2) |
| odd | ceil(i/2) | 2k-2 | d<=2 ceil(i/2)+1 |

The progression starts at m=n-amax and has step 2 and length k. Its offsets all lie in [0,i). Legality gives

m-(amax+d)=2(j-amax)>0,

because j>i>amax. It also gives m>2k. For the even-row band, amax+d<=4k-1; for the odd-row band, amax+d<=4k-1 as well.

Assume k>=2 and the pair (m,k) is not a source exception. If m<=2.5k, the source gives a prime p>3.5k>m>amax+d. If m>2.5k, it gives p>4k>amax+d. In either case p>i (since i<=2k+1 and k>=2). It divides some term n-a with a<=amax, and the parity carry lemma produces the common prime.

Thus the source proves every band input except its exact finite exception consumers and k<2.

## Complete handling of the ten exception pairs

For a fixed (m,k), the only row values are n=m+2k-1 (even) and n=m+2k-2 (odd). The compatible i values are respectively {2k,2k+1} and {2k-1,2k}. Then restrict to legal j and the displayed band.

Pairs (5,2),(9,4),(15,7),(19,9) have no legal consumers at all. The remaining small source pairs have the following uniform certificates; j denotes every legal band index for the listed n and compatible i.

| source pair (m,k) | rows n | chosen terminal term n-a | p=Q | reason |
|---|---|---|---|---|
| (7,2) | 9,10 | 7 | 7 | legal d is respectively 1,0; p>i and p>a+d |
| (13,5) | 21,22 | 13 | 13 | legal d is respectively 1,0; p>i and p>a+d |
| (17,6) | 27,28 | 17 | 17 | legal d<=3; p>i and p>a+d |
| (21,8) | 35,36 | 23 | 23 | legal d<=3; p>i and p>a+d |

For (25,2): rows are 27 and 28. Use p=5,Q=25, terminal term25, with a=2 or3. Compatible indices are i=3,4 at n=27 and i=4,5 at n=28. At n=27 the band has d=1,3,5; at n=28 it has d=0,2,4. In all cases Q>a+d. The prime5 survives in C(n,i): there is one terminal multiple25, and i! removes at most one factor5. In particular at (28,5) its valuation is2-1=1. The prime-power carry lemma supplies the second divisibility.

For (243,2): rows are245 and246. Use p=Q=7 and the terminal term245; a=0 or1. Compatible indices again satisfy i<=5. At n=245 the band has d<=5; at n=246 it has d<=4. Thus 7>a+d and 7>i, so the ordinary parity carry applies. No factorization assumption about arbitrary rows is used: these are exact fixed source exceptions.

## The k<2 boundary and all small i

For i=1 or2, the original target holds for every legal j by the elementary gcd lower bound. If A=C(n,i), B=C(n,j), g=gcd(A,B), the identity A*C(n-i,j-i)=B*C(j,i) implies A/g divides C(j,i), hence g>=A/C(j,i)>1. Any prime divisor of g is >=2>=i. This uses only factorial/binomial identities and coprimality.

The only remaining k<2 input is even n with i=3. The even-row band then forces d=0 or2. If n-1 has a prime p>3, the offset a=1 satisfies p>a+d (for d=2, p>=5>3), so it works. Otherwise n-1=3^u with u>=2. The first binomial has v3(C(n,3))=u-1>=1. Put Q=3^u; then Q>a+d for a=1,d<=2, and the prime-power carry gives 3 | C(n,j). Thus p=i is explicitly preserved.

## Paper conclusion and actual frontier change

For all natural 1<=i<j<=floor(n/2), Common(n,i,j) holds whenever

- n is even and n-2j<=2 floor(i/2); or
- n is odd and n-2j<=2 ceil(i/2)+1.

In particular, it holds whenever n-2j<=i: if n is even and i odd, parity improves d<=i to d<=i-1 automatically. The proof is uniform in n,i,j and is independent of EEES. All remaining triples satisfy d>i, with the slightly stronger parity bounds above. The global problem is still unbounded in n,i,j,d and s.

The middle and penultimate columns follow as part of this result, but `middle-column.md` retains the simpler Schur-only proof and the primary-requested d=2 audit for reuse. This work turns a previously unclosed source lead into an exact known-theorem consumer and a meaningful infinite-family exclusion; novelty of the consumer has not been established.

Next discriminating check: primary runs the attached exception audit once, then independently reviews the carry formula and source-transcription boundaries. Formalizing Laishram-Shorey's analytic/computational source theorem is outside this worker's assignment. A Lean theorem that assumes this source fact must be labeled conditional; it cannot turn the whole band into an axiom-free Lean theorem by introducing an axiom for the source.

## Source-transcription caveat for review

During direct source reading, the text of arXiv1306.0745v1 Lemma2.8 appears to omit the k=2 exceptions: its blanket m>4k conclusion would conflict with m=25 and243. Theorem3 itself explicitly retains those pairs, and our consumer handles them. This memo uses the published theorem statement, corroborated in later work; it does not claim a fresh reconstruction or audit of the entire source proof. The primary was informed before handoff.
