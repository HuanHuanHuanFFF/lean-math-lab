# B699 explorer handoff

Handoff checkpoint2026-09-08 05:17 Asia/Shanghai. Owned directory: research/tasks/B699-Binomial/explorer/ only, in WORKTREE. No original-worktree writes, shared-module edits, commits, pushes, contacts or submissions by this explorer. Original round deadline10:00 and extension11:00 were superseded by the user's05:12 change: exploration stops06:10; primary coordinates the newly authorized commit/push.

## Last supported result

The two-cofactor sufficient condition in [constraints.md](constraints.md) has a complete paper proof and bounded independent arithmetic/binomial audits. It is not Lean-accepted and novelty is unconfirmed. It proves a uniform exclusion when terminal factors n-a=u*p^e and n-b=v*q^f have p,q>i, coprime positive cofactors u,v, and n>uv(a+b). The exact hypotheses, integer identity, binomial bridge, special p=i boundary, and diagnostic counterexamples to weakened versions are in that file.

Expected versus actual: the initial objective was a structural witness settling the conjecture. No witness was found. The useful output became a uniform sufficient condition and exact candidate-search tools. Its complementary n,i region is still unbounded; B699 is not solved and no global finite reduction has been obtained. There is no claim of novelty or external review. Primary has separately located potentially overlapping two-prime row-cover literature.

## Computation and diagnostic evidence

- [crt_probe.py](crt_probe.py): factor terminal intervals, impose exact necessary low-residue constraints, prune CRT classes against the entire legal j interval, and finish with full Lucas checks including p=i. State/direct caps report unknown instead of silently accepting. Small validation n<=100:80,850 weak/strict pair decisions compared with direct binomials; known strict exceptions recovered. Raw output [validation-small.json](validation-small.json).
- [family-all-summary.json](family-all-summary.json):540 explicit prime-power-neighbor rows, n from129140163 to576460752303423493. All16,194 n,i decisions for3<=i<=the preceding prime gap completed; maximum gap134 below requested cap1000. Larger i have a prime-gap witness. The i=1,2 cases were not computed in this large run and instead use the known gcd>1 theorem. No unknown or weak witness. Exactly21 low-residue near misses, all n=3^r+1,i=3; all rejected by full prime-digit checks. Raw inputs are deterministically specified by family_rows(); stdout records each n and gap, results record used constraints. Actual run23.46 seconds in [family-all-run.json](family-all-run.json).
- [smooth_pair_probe.py](smooth_pair_probe.py): bounded adjacent-smooth candidate generation from squarefree D and Pell solutions with x<=2*10^18-1, then direct smoothness checks. This constructs n,n-1 simultaneously smooth over the specified prime set; no unrestricted smooth-number claim is made. Pell generation matched direct smooth-set intersections at n<=10^6:445 pairs fory31 and1729 fory59. Large y59 input has175 rows,2694 n,i decisions, all complete with0 low-residue near misses. y31 is a smaller5-row precursor; do not sum overlapping families as distinct coverage.
- [smooth-pairs-y59-diagnostic.json](smooth-pairs-y59-diagnostic.json):13 rows and171 n,i decisions really had all p>i constraints at offsets0,1 absent. They still needed at most4 other constraints; the final eliminating offsets varied, rather than a single universal obstruction. Example n=101273250,i47..49 was excluded by the two prime factors at offsets4,5 and yielded the general cofactor proposition. Max CRT states23. All raw input certificates, rows and statuses remain available.
- [valuation_audit.py](valuation_audit.py), [valuation-audit.json](valuation-audit.json): reconstructs factorization of choose(n,i) and verifies it against Python's exact comb; reconstructs gcd by independent factorial valuations of choose(n,j). All21 large near misses have a common prime>=i. Six small examples also match direct exact gcd. Seed699 generated4000 local constructions,1210 satisfied the cofactor criterion, and150,200 complete legal-j comparisons with direct binomials passed. Boundary counterexamples verify why the cofactor coprimality, size bound and p>i bridge hypotheses matter. Python3.14.0/Sympy versions and UTC times are in raw audit.

## Actual commands

All run with explicit new-worktree cwd and reviewed escalation because ordinary Windows sandbox startup fails. No process ran in the occupied original worktree.

- `python research/tasks/B699-Binomial/explorer/crt_probe.py validate --max-n 100`
- `python research/tasks/B699-Binomial/explorer/crt_probe.py family --max-i 32 --limit 120 --output research/tasks/B699-Binomial/explorer/family-first120.jsonl`
- `python research/tasks/B699-Binomial/explorer/crt_probe.py family --max-i 1000 --limit 10000 --direct-cap 200000 --output research/tasks/B699-Binomial/explorer/family-all.jsonl`
- `python research/tasks/B699-Binomial/explorer/smooth_pair_probe.py --y 31 --cap 1000000000000000000 --min 100000000 --max-i 1000`
- `python research/tasks/B699-Binomial/explorer/smooth_pair_probe.py --y 59 --cap 1000000000000000000 --min 100000000 --max-i 1000`
- `python research/tasks/B699-Binomial/explorer/valuation_audit.py`

## Failures, corrections, and next useful check

No search family produced a counterexample; this is a finite outcome, not a refutation of the search strategy. Larger y/range searches were deliberately stopped because no new structural signal justified their cost. The original paper's strict >i exceptions are not weak >=i counterexamples. A transient oral denominator statement '<i' was corrected to'<=i' immediately; code always handled p=i separately. The memo's initial estimated05:04 timestamp was replaced by actual04:49; subsequent run times are tool-generated.

Next highest-value check: independently formalize only the pure integer two-cofactor obstruction, then decide whether the binomial/Kummer bridge is cheap enough for the remaining user budget. Check source overlap (especially the a0,b1 row-cover criterion) separately before any novelty claim. A larger future search should target failure of the coprime-cofactor criterion or construct simultaneous rough-factor alignment, not merely enlarge generic n.

Untried branch: reduced denominator s=n/gcd(n,j) is i-smooth up to the p=i caveat; terminal prime powers must divide a*t-b*s and, when s does not divide a, are bounded by a(s-t). This may support fixed-small-denominator uniform arguments. Primary is handling the central Schur match. n,i,s and the region without a useful cofactor pair remain unbounded.
