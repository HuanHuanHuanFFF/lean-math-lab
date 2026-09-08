# B677 / disjoint equal-length interval LCM

- Goal type: open-problem research, initially counterexample search with structural alternatives.
- Current state: partial paper/computational result accepted after fresh AI review; Lean structural lemmas verified; full B677 open; novelty unconfirmed; commit/push authorized and being prepared.
- Owner: primary agent. All files are in WORKTREE. Original workspace is read-only.
- GitHub baseline: 9d403934c9716fc4bef63a18aaf443b3c0cb7e39, independent bare clone BARE_REPOSITORY; branch codex/bounty-20260908.
- Round start: 2026-09-08 04:43:27 Asia/Shanghai (goal creation); original deadline 2026-09-08 10:00; user permits extension to 11:00 only if needed; no extension invoked.
- Budget includes setup, coordination, verification and handoff. Initial route checkpoint 05:20.

## Exact target and frontier
For n,m,k natural, k>0 and m>=n+k, define M(n,k)=lcm{n+1,...,n+k}. The conjecture says M(m,k) != M(n,k). One exact collision settles the counterexample direction. A proof requires all unbounded n,m,k.

Primary source checked 2026-09-08: https://conjectures.io/problems/erdos677-erdos-677 . Live Lean type is `forall (m n k : Nat), k > 0 -> m >= n + k -> Finset.lcmInterval m k != Finset.lcmInterval n k`.
Source type SHA256 d8b4d613ce4725ad35aa8fcd437a819ff7a65c62b0e6b2d4c7d4d7e6f3790f22. Formalized task fc-8432eac9-erdos677-erdos-677-48e9746ac1-formalized-v1. Counterexample task: fc-8432eac9-erdos677-erdos-677-488e6f5a67-counterexample-v1. The four bundles and actual reconstructed source HEAD were audited; see ../../platform-20260908/source-reconstruction.json.
Original problem https://www.erdosproblems.com/677 currently returns 403 via web reader; use another read-only source route. Prior deep-report finite searches are NOT independently verified coverage.

- Last verified result: task statement and independent worktree established; no mathematical result yet.
- Expected frontier change: seek a collision (whole target) or a structural restriction eliminating an unbounded family / enabling targeted search; ordinary finite absence alone leaves global frontier unchanged.
- Current unknown region: all positive k and unbounded n,m with disjointness; literature bounds not yet audited.
- Next decision: independent route memo plus literature freshness/source correspondence and short discriminating computation by 05:20, then allocate according to frontier reduction.
- Candidate tools pending assessment: prime-power maxima encode LCM exactly; relation to smooth-number divisors, prime gaps, and interval shifts. These are untested proposals, not established reductions.
- Failed routes: none yet. Setup sandbox startup failed; reviewed escalated execution succeeded. No original-workspace files modified.

## Evidence and handoff
This record will link source snapshots, route memos, computations, Lean theorem statements and executable axiom audits separately. No commit, push, platform submission, payment, or outside contact authorized.

## Checkpoint 2026-09-08 05:02 Shanghai

Primary and isolated explorer have now exchanged first route memos. Main selected route: if d=m-n is at most C*k, equality gives L | lcm(d-k+1,...,d+k-1), which controls the first interval size. Explorer independently proposed a C4 reduction; primary improved the candidate elementary bound to m <= (18(C+1)^2+C)*k using the interval-LCM/binomial bound and factorial AMGM. C8 gives1466*k. Exact Dusart source and endpoints are still being audited; assuming its claimed x>=89693, prime in(x,x+x/log(x)^3] theorem is confirmed, this should reduce all d<=8k to m<89693. This is a candidate paper result, not yet accepted or fully Lean checked.

Primary's independent exact finite check completed: all possible collisions with m<89693 have k<=71 because the later interval cannot contain a prime; the prime table through89753 was independently reconstructed by trial division. An exact sparse-LCM sweep of6,368,203 windows found no disjoint equal-length collision. Evidence: primary/finite_check.py, primary/finite-check-89693.json and .log, primary/prime-gap-certificate-89693.json. No probability fingerprints and no inferred unrestricted conclusion. Explorer is implementing a mathematically different finite audit.

Lean attempt primary/GapDivisibility.lean currently blocked only by missing copied FinsetLemmas.olean; support is fetching/building focused dependencies. No Lean acceptance is claimed yet. This pivotal lemma unlocks the uniform reduction, justifying proof effort; easy case counts are not the motivation.

Current global unknown region remains all arbitrary d/k until the paper chain and independent check are accepted; afterwards it would still include unbounded d/k>8. No bounty solution or novelty established. Next decision at05:20: accept/correct C8 reduction, compare far-displacement constructions and B699 CRT results, then allocate the remaining round.

## User timing/publication update, 2026-09-08 05:12 Shanghai

The user replaced the original10:00/11:00 budget: exploration must now stop at06:10 Shanghai. This supersedes every earlier shared deadline; no old extension remains active. The user explicitly authorized committing and pushing all of this round's research code and records to a new GitHub branch. Primary owns integration and publication; no platform bounty submission, payment or outside contact is included.

Current publication branch candidate: codex/bounty-20260908 (remote absence checked). New independent bare repository/worktree established from GitHub9d403934c9716fc4bef63a18aaf443b3c0cb7e39; original workspace remains read-only. Verification and handoff are reserved within the shortened round. Third-party dependency caches stay ignored; the research artifacts, scripts, failures and evidence will be committed.

## Primary acceptance checkpoint, 2026-09-08 05:39 Shanghai

The full standalone paper/computational argument for d<=8k OR n<=369k passed fresh AI review: [mathematical review](review/mathematical-review.md), with a separate [code audit](review/code-audit.md). The submitted proof document preserves its historical candidate wording; the current review outcome is recorded here. This does not turn the complete argument into a Lean theorem.

Accepted public structural module: [Math/B677/IntervalLcm.lean](../../../Math/B677/IntervalLcm.lean); [axiom/boundary audit](../../../Tests/B677IntervalLcm.lean); [usage](../../../Examples/IntervalLcm.lean). The exact interval/range correspondence, difference-LCM divisibility, prefix divisibility and prime-witness exclusion were compiled and have executable standard-axiom guards. The initial missing-cache failure and one function-argument inference error were repaired; neither was a mathematical refutation.

Remaining possible counterexamples satisfy n>369k, m-n>8k andm>=89693. The paper also proves the global necessary bound m+1<4(n+k) for k>=2; k1 is excluded. These inequalities leave the full problem open. The highest-value next direction is a structural far-displacement test, not repeating the finite sweep or only increasing the local constants; see primary/route-notes.md for the untried cross-task cofactor/slope proposal.

Counts in the queue/Counter logs are covered triples represented by exact integer-value membership, not individually recomputed LCM calls for every triple. Their scopes and this distinction are reviewed in code-audit.md. Publication is on the new research branch only; no main-branch merge, bounty-platform submission, payment or community contact is part of this round.
