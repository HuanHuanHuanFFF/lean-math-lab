# Middle-column exclusion from Schur's odd-product theorem

Owner: rational_structure, GPT-6 Astra / Max. Owned directory: this `notes/rational/` only. Source baseline: `37e42aca251c33c62cbc2c40f286daa0526d79ee`. Round starts 2026-09-08 17:41:44 UTC, original deadline 21:41:44 UTC; this worker uses the primary's shared checkpoints and runs no heavy computation. Initial source match and proposal sent to primary before 18:12 UTC.

Status: complete paper derivation conditional only on the precisely stated published Schur theorem below, plus standard factorial valuations/Kummer. Not Lean checked. This is an independently reconstructed known-source consequence; novelty is unconfirmed. No theorem about all j is claimed.

## Assessment made before proof commitment

Locked target: for every natural triple 1 <= i < j <= floor(n/2), find a prime p >= i common to C(n,i) and C(n,j). Adopted baseline: the terminal-factor and reduced-slope arguments in `../../../20260908-binomial-cofactors-f0a6539/explorer/constraints.md` and the parallel `primary/route-notes.md`; the run's adoption memo controls accepted Lean/paper evidence.

Proposed subgoal: exclude the entire middle column j = floor(n/2), uniformly in n and i. The old central odd-product lead was unclosed. Expected reduction: all middle-column triples in the remaining 3i < 2j region disappear; non-middle j, n, i and reduced denominators remain unbounded. Smallest falsification checks: the exceptional odd product 25*27, the p=i cancellation at (n,i,j)=(28,5,14), and even n=3^u+1 at i=3. Continue only if the published theorem has exactly the needed strict bound and small-k exceptions. That applicability check succeeded as described below.

## Exact published input

Anuj Jakhar, *On Schur's irreducibility results and extended Hermite polynomials*, New York J. Math. 32 (2026), 361-370, Lemma 2.4 on printed p.366:

- For integers h > k > 2, the product of 2h+1, 2h+3, ..., 2h+2k-1 has a prime divisor p > 2k+1.
- For k=2 the same conclusion holds unless its first term is 25.

Source: <https://nyjm.albany.edu/j/2026/32-16v.pdf>. Read the publisher-hosted PDF's extracted text, particularly Lemma 2.4 and Remark 2.5. The web screenshot endpoint failed to render; no successful screenshot audit is claimed. Reference [20] attributes the lemma to Schur, *Einige Saetze ueber Primzahlen mit Anwendungen auf Irreduzibilitaetsfragen, II*, 1929, pp.370-391. The original Schur article itself has not been inspected.

Independent corroboration of the k>2 statement: Safwan Akbik, *A special prime divisor of the sequence: Ah+B,...,A(h+k-1)+B*, IJMMS 14 (1991), 705-708, introduction; DOI <https://doi.org/10.1155/S0161171291000947>, metadata/full-text navigation <https://eudml.org/doc/46695>. Akbik's bibliography points to Schur Part I, so use the explicit Jakhar lemma rather than asserting a directly audited original page.

The source's one-term clause is not needed: small i is handled directly below.

## Elementary binomial bridge

If p is prime, p > i, and 0 <= a < i with p | n-a, then p | C(n,i). Indeed, exactly one of n,n-1,...,n-i+1 is divisible by p and i! is not. If j mod p > n mod p, then p | C(n,j) by the first carry/floor-valuation term; all valuation summands are nonnegative.

For an arbitrary prime-power P=p^e, the stronger carry implication is j mod P > n mod P => p | C(n,j). This is used explicitly only for the boundary i=p=3 below; the i=p=5 exception also admits a direct modulo-p carry.

## Even row n=2j

Let i >= 4, k=floor(i/2), and h=j-k. Legal i<j gives h>k. The k odd terms

n-(2k-1), n-(2k-3), ..., n-1

are 2h+1,2h+3,...,2h+2k-1. Every corresponding offset a is odd and satisfies 0 <= a < i. If p>i divides n-a then n=up+a, and u is odd because n is even while p,a are odd. Hence

j mod p = (p+a)/2 > a = n mod p.

Thus p is a common prime.

For k>2 (i>=6), Schur gives p>2k+1>=i, proving the claim. For k=2 (i=4 or 5), it gives p>5>=i except when n-3=25, i.e. n=28.

Exceptional n=28: p=5. The offset a=3 gives n-a=25. For i=4, v5(C(28,4))=2; for i=5, v5(C(28,5))=2-1=1. Also 14 mod 5=4 > 3=28 mod 5, so 5 | C(28,14). This handles p=i correctly for i=5.

Small i:

- i=1: 2 | n and C(2j,j)=2*C(2j-1,j-1), so p=2 works.
- i=2: n-1>=5 is odd. Any prime p | n-1 has p>=3>i. The odd-offset bridge with a=1 applies.
- i=3: if n-1 has a prime divisor p>3, use a=1. Otherwise n-1=3^u; legality n>=8 forces u>=2. Then v3(C(n,3))=u-1>=1. Set P=3^u=n-1. We have n mod P=1 and j mod P=(P+1)/2>1, so 3 | C(n,j). The witness p=i=3 is retained.

## Odd row n=2j+1

For i>=3, put k=ceil(i/2), h=j-k+1. Legal i<j implies h>k: if i=2k then j>=2k+1; if i=2k-1 then j>=2k. The k odd terms

n-2(k-1), n-2(k-2), ..., n

are 2h+1,2h+3,...,2h+2k-1, and their offsets a are even with 0<=a<i. If p>i divides n-a, write n=up+a. Now u is odd, and

j mod p = (p+a-1)/2 > a = n mod p,

because p>i>=a+1. Thus p is common.

For k>2 (i>=5), Schur gives p>2k+1>i. For k=2 (i=3 or 4), it gives p>5>i except when n-2=25, i.e. n=27. In that exception use p=5 and a=2: 5 | C(27,i), and 13 mod 5=3>2=27 mod 5.

For i=1 or 2, take any prime p | n. The odd n>=5 gives p>=3>i. With a=0, j mod p=(p-1)/2>0=n mod p, and the elementary bridge gives the conclusion.

## Result and limitation

**Paper proposition:** For all natural n,i with 1<=i<floor(n/2), a prime p>=i divides both C(n,i) and C(n,floor(n/2)). In even rows the p=i boundary is essential for the displayed n=28,i=5 example and possibly i=3; the proof does not silently strengthen the original conjecture.

Actual frontier reduction relative to this run's unclosed central lead: the entire middle column is removed on paper, uniformly with n and i unbounded, including the subset satisfying 3i<2j. The global B699 target remains open for j<floor(n/2); no finite global verification follows. No existing accepted Lean result was rebuilt, no old scan was repeated, and no commit/push was made by this worker.

Next route: test denominators s>=3 against exact arithmetic-progression prime-factor estimates. Do not duplicate the primary's n-2j determinant/LCM route. The specific expected obstacle is that prime size >i alone need not force a carry once the reduced denominator exceeds 2.
