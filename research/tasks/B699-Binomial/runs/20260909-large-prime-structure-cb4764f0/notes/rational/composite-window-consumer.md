# Conditional consumer of a composite-window prime-factor bound

Owner / baseline / budget: same rational worker and adopted source as `near-middle-band.md`. Formulated 2026-09-08 during the first comparison period. The primary assigned original-source verification to the source_bounds support worker. The quotation below is a lead until that check succeeds; no complete new source theorem is being asserted by this note.

## Expected contribution and decision

The accepted-for-paper 4k odd-progression route excludes d=n-2j<=i uniformly. Its remaining gap includes unbounded d/i. The present route uses an additional property forced by an actual B699 counterexample: EVERY mother-window integer is composite. That permits applying a theorem to all i consecutive terms, rather than only the roughly i/2 odd terms. If the exact quoted result is correct and its finite consumers are discharged, it excludes d up to floor(171i/50)+1, a band extending beyond three times i. It still leaves unbounded n,i,j,d/i and s; it is not a global finite reduction.

Smallest decisive tests: verify the original theorem's strict constant, the all-composite and x>100 hypotheses, and its five exceptions; test only the finite new boundary consumers. Do not enlarge the old unrestricted B699 scan.

## Source lead, not yet adopted here

A Wronskian-Hermite paper's Theorem18 quotes Nair-Shorey [33] as follows: for k>=2, x>100 and x,x+1,...,x+k-1 all composite, their product has a prime factor >4.42k, except (x,k)=(125,2),(224,2),(2400,2),(4374,2),(350,3).

Lead: <https://www.researchgate.net/publication/384703080_THE_IRREDUCIBILITY_OF_SOME_WRONSKIAN_HERMITE_POLYNOMIALS>. Likely original source, confirmed bibliographically on an author's publication list: S.G. Nair and T.N. Shorey, *Lower bounds for the greatest prime factor of product of consecutive positive integers*, Journal of Number Theory159 (2016),307-328. Author list: <https://www.bits-pilani.ac.in/goa/publications/?faculty=saranya-g-nair>. The primary's source_bounds worker owns direct theorem verification and any stronger source conclusion. This worker has not inspected the original Nair-Shorey paper.

## Original constraints imply a composite window

Suppose a legal triple has no prime p>=i common to C(n,i), C(n,j). Put x=n-i+1. Every integer r in [x,n] is >n/2, since i<j<=n/2. If such an r were prime, it would occur as a terminal factor in BOTH binomial numerators, and r>j>i prevents either factorial denominator from cancelling it. Thus every one of x,x+1,...,x+i-1 is composite. This is a genuine necessary condition on the original integers.

If d>=i, then for every offset a<i we have d>a. The second case of `parity-transfer.md` shows that any prime factor p>i+d-1 of the mother-window product is common: it exceeds i, and p>d+a for its unique offset. Equivalently, a noCommon triple with d>=i has

P((n-i+1)(n-i+2)...n) <= i+d-1.                (2)

A larger prime could not hide in an even terminal term: d>a eliminates the zero-residue case that made parity necessary near the middle.

## Exact conditional bound

Assume the quoted source theorem is correct, x>100, i>=2, and (x,i) is not one of its five exceptions. Combining it with (2) gives

i+d-1 > (221/50)i,

hence

50d > 171i+50

for a counterexample with d>=i. Thus the source rules out

i <= d <= floor(171i/50)+1.

Together with the proved-on-paper 4k band, all d<=floor(171i/50)+1 are covered under these source-domain hypotheses. The rational constant is exact; 4.42 is not used as an approximate numerical floating-point comparison.

## Five exceptional source pairs

Four have i=2 and are already covered for ALL j by the elementary gcd>1 argument, independently of this source theorem.

The only i>=3 pair is (x,i)=(350,3), so n=352. In the target band i<=d<=floor(171i/50)+1=11, parity forces d=4,6,8,10, giving j=174,173,172,171. Use p=13 at the terminal term351=n-1. Here p>i, p>d+1, and p|351. The positive-gap carry lemma proves p divides both binomial coefficients. This is a uniform certificate for all four j, not a factorization assumption for arbitrary rows.

## The x<=100 boundary is a bounded unresolved obligation

In the new region d>=i, legality gives n=2j+d>=3i+2, so x=n-i+1>=2i+3. Consequently x<=100 implies i<=48 and n<=147. If the already adopted EEES exclusion 3i>=2j is used, the unresolved part further has i<=32 and n<=131, but that extra paper dependency is optional.

The simple exact finite obligation is therefore: all legal triples with 3<=i<=48, n<=147, i<=d<=floor(171i/50)+1, x<=100, whose mother window is entirely composite, and which are not already in the 4k band. This range is derived from the theorem's domain, not an arbitrary extension of the previous global scan. It is not yet checked by this worker. The primary may either discharge it with a new focused certificate or leave the final theorem with the explicit x>100 boundary.

## Acceptance boundary

The conditional consumer is an elementary paper argument. The general carry statement and the near-middle4k result have separate evidence. The quoted Nair-Shorey theorem, direct source transcription, five-pair boundary and x<=100 finite checks must each be marked by their actual evidence before the primary announces an unconditional enlarged band. No Lean compiler, factorization or enumeration was run by this worker.
