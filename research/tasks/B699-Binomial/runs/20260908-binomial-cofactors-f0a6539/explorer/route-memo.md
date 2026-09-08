# B699 independent explorer: first route memo

Checkpoint: 2026-09-08 04:49 Asia/Shanghai. Shared round start 04:43:27, original deadline 10:00, possible extension only by primary decision, absolute cap 11:00. Ownership: this directory only. Research active; proof none; review none; novelty unconfirmed; publication local only.

## Input and exact target

Initial isolated packet: natural n,i,j with 1 <= i < j <= floor(n/2), and ask for a prime p >= i dividing both choose(n,i) and choose(n,j). A legal triple with every common prime < i refutes the whole target. No peer preferred routes or prior finite verification were inherited. Read AGENTS.md, lean-research SKILL and open-problem-workflow, task README, structure and registry. Memory lookup returned no relevant hit.

## Source check

- Original source recovered: P. Erdos and G. Szekeres, Some number theoretic problems on binomial coefficients (1978), pp. 97-99, https://users.renyi.hu/~p_erdos/1978-46.pdf (also static.renyi.hu). Conjecture 1 is exactly the weak >=i form; strict >i form has exceptions. Original examples include (16,2,6), (2048,2,713), and (28,5,14).
- Site still lists #699 as falsifiable, https://www.erdosproblems.com/699; search snapshot states last edited 2025-09-30. Direct forum reader fails. A search hit on forum/699 explicitly says a posted proof was invalid and its Lean statement mismatched; this is a warning to inspect statements, not independent review of that proof.
- G. Bergman, On common divisors of multinomial coefficients, https://arxiv.org/html/0806.0607 (v2 2010) proves a growing gcd lower bound, but that does not bound its largest prime and so does not settle this target.
- Fresh computational claims discovered: SciNet claims n<=100000 and another GitHub frontier atlas claims [10^7,10^8). Neither run/source has been independently verified here. Do not expend the round merely duplicating those bounds or adopt them as established coverage.

## Candidate R1: prime or prime-power interval exclusion

Observation/argument: if n-i < p <= n and p is prime with p>n/2, then for every i<j<=n/2 both choose(n,i) and choose(n,j) contain p. Denominators have no p and each numerator interval contains p. In particular, if P is the largest prime <=n, a counterexample requires i <= n-P (Bertrand ensures P>n/2 for legal n). Prime-power version: if p^a>n/2, p>=i, and n-p^a<i then the base-p digit criterion also supplies a common p.

Expected frontier change: all legal triples -> only i within the preceding prime gap (and further eligible prime-power gaps). Both n and i remain unbounded; this is not finite reduction. Reuse: search sieve and source-aligned necessary condition. Cost: short paper proof and bounded direct validation; no substantial Lean commitment yet. This alone is a known-style elementary exclusion, not a solution or novelty claim.

## Candidate R2: CRT search for a structural counterexample

For p>i, p divides choose(n,i) iff n mod p<i. More strongly, if 0<=a<i, p>i, and p^e exactly divides n-a, then p does not divide choose(n,j) implies j mod p^e <= a. This follows because the low e base-p digits of n are just a (<p), so a carry-free j has residue in {0,...,a}. Different p occur in only one of n,n-1,...,n-i+1 and the moduli are coprime.

Thus a counterexample must simultaneously satisfy small residue sets modulo the large prime powers in the short terminal interval. For p=i when i is prime, separately check actual Lucas divisibility; omitting this check is valid for pruning but not for acceptance. The CRT low-digit constraints are necessary, not sufficient; all upper digits must be checked before reporting a candidate, followed by direct exact gcd verification against the original binomial definition.

Expected frontier change if successful: one constructed admissible CRT witness -> full target refuted. If no witness, only the explicit tested family/range is excluded; n,i,j all remain unbounded. Target n near prime powers, smooth numbers, and products with unusually few large prime factors rather than all small rows. Motivating obstacle: large binomial values and O(n^2) pairs obscure a constraint problem whose surviving j should often be sparse.

Concrete test before investment: implement p-adic residues + CRT interval pruning; compare complete candidates and final decisions with direct binomial gcd for bounded small rows, including known strict-form exceptions. Benchmark several large structured rows (not an exhaustive census), preserving exact input family, prime factors, and Lucas checks. Checkpoint: initial decision exchange by 05:20, then primary chooses whether to continue this branch. A slow branch or empty finite search is not evidence of an impossibility theorem.

## Candidate R3: central and nearby rational j/n families

For n=2m,j=m, any odd a<i with a prime factor p>=i in n-a supplies a common p (for p>i immediate from parity and the lowest Lucas digit; p=i needs a separate check). This points to Schur-type theorems on consecutive odd factors. This is presently an untested literature match. Search found Schur's odd-product theorem has delicate small exceptions, including 25,27, so a general unqualified claim is not accepted.

Expected frontier change: exclude all central j=n/2 if the exact theorem transfers, but all noncentral j remain, hence unlikely by itself to beat a structural witness search. Possible reuse: identify why strict exceptions cluster near the center; test rational j/n=t/s with small smooth denominator s. Do not spend substantial proof effort before matching hypotheses.

## First decision

Prefer R2 for bounded exploration, using R1 as a safe sieve; investigate R3 only if a precise source theorem gives a cheap uniform exclusion or strengthens the witness search. Current actual frontier change: no verified theorem or new tested range yet. The useful output so far is the exact source, necessary-constraint route, and awareness that larger existing claimed enumerations make naive small exhaustive search low leverage.


## Checkpoint after the prime-power-neighborhood test

Actual run UTC: 2026-09-07T20:56:47.4364051Z to 20:57:10.8970111Z. Input: `family_rows()` in crt_probe.py, n=p^e+a for p in {2,3,5,7,11}, a=0..5, explicit exponent caps in code, 10^8<=p^e<=10^18. There are 540 input rows. For each, all i from 3 through n-prevprime(n) were examined (observed maximum134, below requested cap1000); all larger i are handled by the prime-gap argument. The 16,194 n,i decisions all completed with no survivors. i=1,2 rely on the known gcd>1 theorem and were not part of this large-row computation. See family-all-summary.json, family-all-run.json and raw JSONL.

Actual frontier reduction: only this finite structured family is excluded by computation plus the prime-gap argument. The global unknown n,i,j region remains unbounded. No new Lean theorem. Only21 low-digit candidates survived, all at n=3^r+1,i=3 and all eliminated by full Lucas conditions. No useful large-i near miss.

## Bounded R4 test: adjacent smooth inputs via Pell equations

Motivation: in generic rows the a=0 and a=1 CRT constraints often dispose of every j immediately. Choose n,n-1 both smooth over primes<=31 to deliberately weaken those constraints for i>31. Enumerate squarefree D formed from those11 primes and Pell solutions x^2-D*y^2=1 with x<=2*10^18+1; candidates m=(x-1)/2 are checked directly for smoothness of m,m+1, then n=m+1. This is a bounded construction, not a claim about all n or all possible smoothness levels. Continued fractions and exact integer checks provide candidate generation; no external number-theory solver or installation is needed.

Expected result: find an admissible witness (settles target), find a more informative near miss, or learn that even deliberately weakened first constraints do not create one in this finite family. All parameters remain globally unbounded. Remaining proof obligation for any candidate: full Lucas plus an independent factorial-valuation gcd reconstruction; no ordinary finite exclusion will be promoted to theorem. Checkpoint remains05:20; this test should finish within a few minutes or preserve an incomplete status.
