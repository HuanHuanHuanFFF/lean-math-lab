# Factorial-bound preparation checkpoint

- Owner: /root/bft_sequence_lemma; sole write scope: this directory.
- Fixed baseline: 9d4228e3ed0de4bb6b8e555ca59af3f53d578c67.
- Start: 2026-09-11T03:06Z. No total research duration supplied. Bounded task: exactly (c,d)=(3,2),(15,8),(15,11), delta=0,1; no Lean execution.
- Primary source: BFT author manuscript 2007-02-26, equations (3.1)-(3.3), PDF page 9, and Lemma 4.1 / substitutions, page 10. PDF SHA256 0df18ee8d108f658812ac05d1f8947b3dcc28b70d17f268acd7c871e7e7c392c.
- Locked proposal to test: F_(m+1)/F_m <= beta*(m+1)^2/(m*(m+2)), m>=1, where F_m=((c+d)m-delta)!/((dm-delta)!^2*((c-d)m+delta-1)!), beta=(c+d)^(c+d)/(d^(2d)*(c-d)^(c-d)). Not yet accepted.
- Expected benefit: if a coefficient certificate succeeds, derive an explicit elementary uniform factorial bound and reduce a Stirling/pi prerequisite. It does not prove the actual Lemma 4.1, integral representation/maximizer bounds, G/theta inputs or any B699 original-problem case.
- Source-aligned observation pending exact check: delta=1 versus delta=0 factorial ratios appear constant; this will be tested algebraically rather than assumed.
- Initial resource snapshot: free physical memory 3,356,372 KiB of 16,456,184 KiB; D: free 2,524,598,272 bytes; no local lean/lake process observed. Standard-library exact polynomial arithmetic will suffice; bundled Sympy was not installed and no installation is requested.
- Evidence state: paper definitions checked; exact computation and candidate proof pending; Lean/review/publication not performed.

## Delivery checkpoint: 2026-09-11T03:25Z

- Locked six comparisons all passed exact coefficient expansion. Reduced residual degrees are 3, 21, 24; all primitive coefficients are strictly positive. Original delta=0/1 residuals are m(m+1)H(m) and m^2 H(m), respectively.
- Exact delta ratio is d^2/(c^2-d^2), so both delta choices have the same adjacent factorial ratio. This was derived and independently checked from factorial values.
- Mathematical consequence: F_(m,delta) <= (2F_(1,delta)/beta)*beta^m*m/(m+1) < beta^m/2 for exactly the three pairs and both deltas, m>=1. All six K constants are strictly below 1/2 by exact rational comparison.
- Candidate files now connect the actual factorial definitions, not only an assumed recurrence. One shared module and three separate parameter modules allow the primary task to compile the (3,2) chain first; all 28 theorems have matching axiom-print commands.
- Independent checks: 36 actual factorial recurrence/telescoping/half-bound cases, 12 direct product versus coefficient evaluations, and 6 K<1/2 comparisons. These finite checks do not replace the positive-coefficient identity or Lean verification.
- No Lean execution occurred. Source/API or tactic repairs may still be needed at first compilation. All acceptance states remain pending.
- Important endpoint: (c,d,delta,m)=(3,2,0,1) has source B=0; using its true factorial value for the induction base does not extend the source's initial positive A,B,C Pade convention.
- Expected frontier change: remove a possible Stirling/pi dependence from a looser factorial-prefactor estimate. Actual global B699 unknown region is unchanged; no Stage B target accepted. Integral representation, maxima, the alpha(s)^d real-power identification, G/theta and original-problem consumers remain separate obligations.
- Exact files, hashes and static source-policy checks are recorded in candidate-manifest.json. Original integer-bridge candidates and all external records were read-only.
- Next action: primary task serially compiles FactorialCommon + Factorial3D2, then the other two pair modules; record any path-adapted source under fresh hashes, audit transitive axioms and inspect source correspondence.
- Elapsed bounded preparation: approximately 20 minutes at this checkpoint. No total deadline was supplied. No commit, push, package installation or external contact performed.
