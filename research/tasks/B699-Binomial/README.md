# B699 / common large prime in binomial coefficients

- Goal type: open-problem research, alternative candidate to B677; B686 excluded.
- Current state: a uniform conditional criterion including the binomial/Kummer bridge is Lean-verified; full B699 open; fresh AI review accepted the stable conditional theorem; novelty unconfirmed; commit/push authorized and being prepared.
- Owner: primary agent. Files exclusively in WORKTREE, GitHub baseline 9d403934c9716fc4bef63a18aaf443b3c0cb7e39.
- Shared round start 2026-09-08 04:43:27 Asia/Shanghai; deadline10:00, hard extension cap11:00 only by primary decision; initial route checkpoint05:20.

## Exact target and frontier
For natural n,i,j with 1<=i<j<=n/2 (natural floor division), is there a prime p>=i dividing gcd(choose(n,i),choose(n,j))? One legal triple with no such prime refutes the entire universal statement. All of n,i,j are unbounded.
Source https://conjectures.io/problems/erdos699-erdos-699 checked2026-09-08 gives `True iff forall (n i j : Nat), 1 <= i -> i < j -> j <= n / 2 -> exists p, Nat.Prime p and i <= p and p divides (n.choose i).gcd (n.choose j)`.
Source type SHA256 f5eee958e682d353b94818dd365b7f9a090f1cb6d7361dfe754876412168b217; formalized task fc-8432eac9-erdos699-erdos-699-0157c70467-formalized-v1. Counterexample task: fc-8432eac9-erdos699-erdos-699-4b309685d8-counterexample-v1. The exact bundles and reconstructed source HEAD have been checked; see ../../platform-20260908/source-reconstruction.json.
Original source https://www.erdosproblems.com/699 returned403 through web reader. Prior report finite computations are not inherited as verified evidence.

- Last verified result: source statement only; no theorem or confirmed finite exclusion.
- Expected frontier change: identify a structural construction / uniform restriction using binomial prime factors or carries, or find a counterexample. Finite small-case output alone is not a reduction of the unbounded target.
- Decision at05:20: continue only if a route or diagnostic justifies cost relative to B677.
- Independent exploration packet: original target and standard definitions, with preferred strategies withheld until first memo.
- Remaining gaps: source literature coverage, all unbounded triples, Lean and platform integration.
- No commitments, publication, payments or contact authorized.

## Checkpoint 2026-09-08 05:02 Shanghai

Explorer's CRT/Lucas checker has been compared with direct binomial gcd on80,850 weak/strict pair decisions throughn100, and strict-form examples from the original source. Structured540-row family n=p^e+a (p in2,3,5,7,11; a0..5; code-defined exponents10^8..10^18) yielded16,194 complete(n,i) checks, no unknowns and no weak counterexample. See explorer/family-all artifacts. This excludes only the exact tested structural family; all untested n,i,j remain and there is no global finite reduction.

A rational-slope reformulation n=s*d,j=t*d,gcd(s,t)=1 gives p^e|(a*t-b*s) for large prime powers p^e|n-a and 0<=b<=a. The boundary for primes dividing s is <=i, not<i; prime=i must be treated separately. See primary/route-notes.md and explorer/route-memo.md. Central j=n/2 may be covered for i>=6 using Schur's odd-product theorem, but source hypotheses and acceptance remain under audit. No large Lean engineering allocated to this subcase yet.

Next probe: explorer's Pell-generated near-smooth n,n-1 family designed to weaken the two strongest CRT constraints. Main round checkpoint05:20 will compare with B677 uniform-region reduction. Research, source acceptance, finite computations, Lean acceptance and novelty stay separate.

## User timing/publication update, 2026-09-08 05:12 Shanghai

New stop06:10 Shanghai supersedes original10:00 and extension11:00. Primary is authorized to commit and push this round's complete research code/records to a new GitHub branch. No platform submission/payment/contact. Close bounded exploration and leave precise reusable artifacts before the new deadline.

## Primary integration checkpoint, 2026-09-08 05:39 Shanghai

The full conditional theorem now has a Lean proof, including the Kummer bridge and the exact original conclusion: a prime >=i divides gcd(choose(n,i),choose(n,j)). The assumptions are two terminal prime-power factors n=u*p^e+a=v*q^f+b, offsets a,b<i, primes p,q>i, positive exponents, coprime u,v, and u*v*(a+b)<n, along with the legal index range. This does not prove that every legal triple has these factors or that any chosen factor pattern occurs infinitely often.

Stable public source: [Math/B699/CofactorCriterion.lean](../../../Math/B699/CofactorCriterion.lean), [executable axiom audit](../../../Tests/B699CofactorCriterion.lean), [example](../../../Examples/CofactorCriterion.lean). Original accepted bytes, their hash and promotion mapping are preserved under lean/. The pure integer results use propext/Quot.sound; the Kummer and final gcd results use propext/Classical.choice/Quot.sound. Final integrated verification and fresh review are recorded separately as they finish.

The original witness-search expectation was not met. Finite structural searches and deliberate removal of initial CRT constraints yielded a reusable sufficient condition, not a counterexample. The full unknown region without a useful small coprime-cofactor pair remains unbounded. Future work should test that complementary region or prove a route forcing such a pair; no additional generic range increase is justified by this round alone.

Fresh review completed: [mathematical-review.md](review/mathematical-review.md). It independently recompiled the stable source, all five guards and the usage example, checked Kummer boundaries and actual nonvacuous parameter families, and found no blocking objection. This is AI review, not human peer review or a novelty determination.
