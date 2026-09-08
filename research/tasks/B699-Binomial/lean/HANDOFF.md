> Primary promotion note (05:39): this is the historical author handoff. Original verified bytes now live in `CofactorCore.verified.lean.txt`; `promotion.json` maps the old source hash to `Math/B699/CofactorCriterion.lean`. `CofactorCore.lean` is now an import wrapper. Current public guards are in `Tests/B699CofactorCriterion.lean`; use the full repository verifier for current acceptance.

# B699 Lean handoff, 2026-09-08

Final proof source and metadata are frozen: `CofactorCore.lean`, SHA2563ac8e44b155d96c113ba712fa4d94d57b9947ebd9e64d9a13a0fb3f09c77a138; `accepted-result.json`, actual compile05:33:42.8349104--05:33:54.4576526 Asia/Shanghai, exit0. No accepted source edits after that run. This subtask started05:20:14 and finished proof work before its05:45 checkpoint; the user's overall exploration deadline is06:10.

## What is actually proved

For natural n,i,j,a,b,p,q,e,f,u,v with

- i<j<=floor(n/2), a<i,b<i;
- primes p,q>i and positive e,f;
- n=u*p^e+a=v*q^f+b;
- Coprime u v and uv(a+b)<n,

Lean proves that p or q divides both choose(n,i) and choose(n,j), hence an r>=i prime divides their gcd. The original1<=i condition follows already from natural a<i. Positivity of u,v follows in a legal instance from the decompositions and index bounds, so it need not be a separate formal hypothesis. No exact-valuation or distinctness hypothesis is imposed. The paper source is `../explorer/constraints.md`; all five theorem signatures can be read directly in the accepted source.

This is a uniform conditional exclusion and a reusable criterion, not a proof that all legal n,i have these factorizations, nor a proof that infinitely many n realize a chosen factor pattern. The complementary n,i region remains unbounded. There is no B699 solution or novelty claim.

## Acceptance and remaining coordination

- Pure arithmetic results: exact axioms propext,Quot.sound.
- Kummer carry helper and prime/gcd conclusions: exact axioms propext,Classical.choice,Quot.sound.
- All five have executable #guard_msgs/#print axioms checks; all passed in the final exit0 run.
- A concrete use at n86,i8 covers every j with8<j<=43 and compiles without assuming B699.
- No placeholder proofs, native_decide or project axioms; no separate external checker/human review claimed.
- Primary's fresh reviewer received this exact source hash. Their review outcome is not yet claimed by this handoff.
- Primary will promote to Math/B699/CofactorCriterion.lean, move audit guards into Tests, preserve the historical source-byte hash mapping and run the repository verifier before the authorized commit/push. This explorer did not edit shared modules, entry points, CI, dependency manifests, Git commits or remotes.

Reproduce current accepted source: `pwsh -File scripts/lake.ps1 env lean research/tasks/B699-Binomial/lean/CofactorCore.lean` from the independent new worktree. The dependency build and historical failure logs are retained; README.md distinguishes them from accepted evidence.

The highest-value remaining mathematical question is whether a prospective counterexample can be forced to contain such a useful pair of small coprime cofactors, or can be excluded by another uniform route when none exists. No further structural enumeration was opened during this Lean subtask.
