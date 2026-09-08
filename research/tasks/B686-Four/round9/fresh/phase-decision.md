# Fresh-branch phase decision

Date: 2026-09-08. Initial branch start 07:15:43 Asia/Shanghai; first exchange 07:39 (advanced by primary from scheduled 07:40). Initial allocation ends 08:00; whole-round original deadline remains 10:00. No extension was requested or invoked.

## Decision

Stop substantial investment in this independent branch at the present checkpoint. No examined route has a concrete new bridge that can exclude an unbounded remaining family. Retain odd-k fixed-gap irreducibility and the primary task's h>=k square-multiplier proposal as unproved candidates. Neither receives further factorization-range expansion, square-multiplier-range expansion, or Lean engineering merely because its small probe had no counterexample.

For h>=k, the possible full-target gain is explicit: it would rule out multiplier 4 for k>=3, leaving already-handled k=2. The route assessment did not identify a uniform arithmetic theorem or construction that makes this stronger claim easier. Square completion gives special low-degree arguments, while known general even-degree approximations still have rapidly growing coefficient/height bounds; they do not establish h>=k in the polynomial-size n regime. The consulted square-block papers distinguish two fixed-ratio blocks from broader multi-block constructions. No new applicable theorem was found; this is a scoped search result, not a claim that none exists.

## What was produced

- Exact counterexample to an overly broad even-2-adic-exponent obstruction: (k,n,m)=(3,4,13), multiplier 16. This is not a multiplier-4 witness.
- Exact negative-root family refuting all-k fixed-gap irreducibility: k divisible by 6, d=5k/3, X=-4k/3. Inside k^2<64d it remains only up to k=102. These roots violate n>=0.
- Independent reconstruction of nonzero p-adic local solutions, matched after exchange to an already-existing primary route.
- Jointly checked paper real-root geometry: every odd k>=3,d>=k gives exactly one real root of F_{k,d}, and it is positive. The key interval estimate is |P_k(x)|<=(k-1)!/4 for x in [-k,-1]. This does not show the positive root nonintegral.

## Evidence and remaining gap

The computations used Python 3.14.0 and SymPy 1.14.0, both actually queried. Probe scripts and exact JSON outputs are present; SHA-256 hashes are in experiment-manifest.json. The multiplier-16 example and ten instances of the negative-root family were also checked in an independent pure-JavaScript BigInt implementation. No accepted-library file, Lean experiment, dependency, index, Git commit, push, or publication was changed by this branch.

Expected frontier at entry: a uniform prime-power or algebraic obstruction might remove arbitrary k. Actual frontier: unchanged. No new original triple is excluded; no legal multiplier-4 witness found. All unexcluded k and the corresponding unbounded parameters remain as in the designated packet, with the parent's newer results tracked by the parent.

Last verified original result used: the packet's existing necessary bounds and fixed-length exclusions, not a new result of this branch. Failed routes, precise counterexamples, source applicability and untried conditional branches are preserved in first-exchange.md, route-checkpoint-1.md, irreducibility-route.md and local-solubility.md. The next justification for reopening is a concrete uniform factor/valuation criterion for odd k, or an independent height/gap principle that actually implies h>=k. More no-hit samples alone do not justify reopening.
