# B686 / Four round 6, task A

- Owner: Astra research task A; files only in `round6/a/`.
- Start checkpoint: 2026-09-07 14:41:43 UTC; intended handoff 15:41:43 UTC.
- Target: k=5, natural n,m, m>=n+5, P5(m)=4 P5(n); seek an infinite subclass exclusion for the center-containing support {1,2,3}, then compatible center classes.
- Current evidence: prior round 5 proves d=m-n>=20000 for all original solutions and has exact D5/R6 two-dimensional contact spaces. No result from the present round yet.
- Route motivation: the prior noncentral route succeeds by choosing an integer combination whose growth on the real solution strip is smaller than the forced d^6 divisor. The same D5/R6 space exists for {1,2,3}; test its exact constants rather than assume the old threshold works.
- First falsifiable check: find a saturated integer-kernel combination H with a certified strict sign and |H|<20000 d^5 throughout the prior rational strip at d>=20000. If this fails, record the coefficient/height obstruction and test a wider finite cutoff or a stronger strip.
- Reuse only: `round5/main/contact_search.py` and existing certificate/height interfaces; old source remains unchanged. Standard-library import must avoid generators that write at import time.
- Environment: elevated read-only process launch succeeded. Lean dependency prebuild requested from primary task; requested ContactTail and ContactFinite dependency chains. Python executable supplied by primary task is C:/Python314/python.exe. No installation, commit, push, or external contact authorized.
- Acceptance: exact symbolic contact identities; original-equation bridge; fresh Lean compilation; executable transitive axiom guards permitting only propext, Classical.choice, Quot.sound; state computation and proof separately.

## 2026-09-07, first 15-minute checkpoint

- Exact saturated-kernel combinations checked from prior `contact_search.json`: {1,2,3}: 323 G0 + 12 G1; {1,3,4}: 29 G0 - 5 G1; {2,3,5}: 29 G0 + 5 G1; {3,4,5}: 323 G0 - 12 G1.
- Initial unshifted monomial bounds at d=20000 were insufficient for {1,2,3}; this was a method/constant limitation, not a counterexample to its exclusion. Translating the homogeneous variable preserves cancellation but still does not close this pair at 20000 with the chosen basis combinations.
- Chosen precise follow-up: uniform d>=50000 tail, plus 20000<=d<50000 finite extension. Main task explicitly approved this direction and owns cross-class integration.
- `generate_contact.py` checked 12 exact polynomial identities; denominators are 279936, 34992, 648 or 10368, all dividing 6^30. Generated `Contact.lean` remains unaccepted until actual compilation.
- `generate_tail.py` checked exact Fraction homogeneous intervals using w=10000000z-83894387d, 0<=w<=3d. With all lower terms bounded, normalized ranges are {1,2,3}: [30502.988,42900.172]; {1,3,4}: [-4925.008,-4861.948]; {2,3,5}: [4921.992,4985.052]; {3,4,5}: [-49614.013,-37216.828]. The JSON stores exact rational endpoints; displayed decimals are summaries.
- `generate_finite.py` checked all 30000 new displacements, using direct five-factor products and independent binomial evaluation at both neighboring starts. No exception to the rational cutoff formula occurs in this range. New Lean Finite0..7 and Finite are assigned to support for compilation; A will not concurrently write their olean files.
- Original-target consumers generated in `Positions.lean`; they include product and rational-ratio exclusions plus d>=50000. All proof status remains pending environment/dependency compilation.
- Environment issue: apply_patch update failed before file access with helper_unknown_error. Continued through already authorized elevated PowerShell writes restricted to round6/a; no workspace-external changes. Support reports a missing locked mathlib .olean and is building the local source dependency without downloads.

## Kernel checkpoint after the first compilation cycle

- `Contact.lean` now compiles with exit 0 and 28 executable axiom guards. Actual command: `$env:LEAN_PATH=(Get-Location).Path; & ./scripts/lake.ps1 -LakeArgs @('env','lean','research/tasks/B686-Four/round6/a/Contact.lean','-o','research/tasks/B686-Four/round6/a/Contact.olean')`. The wrapper requires `-LakeArgs` to avoid PowerShell treating Lean's `-o` as an ambiguous wrapper option.
- Failure preserved: contact-attempt2.log reports a literal center shift `0+q*u` that prevented rewriting by hcurve. Attempt 3 applied the simplification too broadly and failed where simp made no progress. Attempt 4 uses `try simp only [zero_add] at hcurve`; it completed with exit 0. The guards correctly rejected the failed proof elaborations' generated sorryAx before repair; no placeholder was inserted in source.
- `HeightProbe.lean` compiled the full sixteen homogeneous-part bounds for the main task's first D15 candidate. `HeightTotalProbe.lean` additionally compiled the total -50000*d^15 < H < 0 estimate and its standard-three-axiom guard. These are temporary mechanism probes, separate from the final imported theorem.
- Main-task breakthrough proposal (provenance: primary-task messages and `round6/main/selected-four.json`): fixed D15/R16 or D17/R18 candidates for all four center-containing four-position supports. A independently recalculated all four using translated monomials rather than main's original interval method; exact snapshots and source hash are in `selected-four-input.json`.
- Main owns local high-contact certificates in HighContact1235/1345/1234/2345. A owns generated FourTail and FourPositions consumers. The main task owns further integration into necessary occupation of all five slots; A does not claim that integrated statement here.
- Independent high-tail outer bounds at d>=50000: 1235 [-15826.935,-3410.754], 1345 [-8462.316,-60.551], 1234 [-8721.166,-3101.858], 2345 [-8020.300,-2400.992]. The strict negative margin of 1345 is the tightest and must remain visible during review.
- Fresh exact audit `independent_verify.py` completed: 4 recomputed saturated kernels match prior data, 12 local identities independently pass SymPy polynomial expansion, and all 30000 finite rows match an independent monotone scan of raw five-factor products. See independent-verification.json.

## Three-position acceptance and independent high-tail packaging

- `Tail.lean` and `Positions.lean` both completed with exit 0. The full accepted three-position chain comprises 12 new modules and 66 executable guards, counting support's eight finite blocks and their entry point. `acceptance-manifest.json` records exact hashes, theorem names and axiom lists. `not_four_support123_ratio`, `not_four_support134_ratio`, `not_four_support235_ratio`, `not_four_support345_ratio`, and `solution_displacement_ge_50000_ratio` are original-target entry points.
- Fresh local version command reports Lean 4.33.1, x86_64-w64-windows-gnu, commit 819816b2e0a3bf405af45ae5c7af2491d8f5bee6. No independent kernel checker beyond Lean was run.
- Support completed Finite0..7 and Finite with exit 0; final new finite theorem is `B686Round6A.not_four_below_50000`. All formal-library sources remain untouched.
- To overlap verification with main's expensive high-contact ring proofs, pure four-position height certificates now compile independently in `FourHeight.lean`, namespace B686Round6AHeight. `FourTail.lean` preserves the requested B686Round6A public bounds and contains explicit polynomial equality bridges to main's auxiliary definitions, each with a guard.
- `audit_high_transcription.py` independently checks eight actual source definitions (four main auxiliaries and four pure-height copies) against the frozen coefficient input. The final Lean equality bridges remain the acceptance mechanism; this symbolic check catches transcription mistakes earlier.
- Research state: three-position targets accepted; four-position extension still pending main's local-contact compilation and final consumers. Review state: exact same-task arithmetic cross-checks, no external review. Novelty unknown. No claim of full B686/Four or full k=5.
- Untried follow-up, with motivation: each high-contact auxiliary should also yield a conditional omitted-factor bound d<50000*s^R for d=s*P*Q*R*S. This would quantify the occupied-factor lower bounds, but it does not remove the all-five balanced-weight obstruction; it is not being pursued before the current acceptance chain closes.


## Final A handoff checkpoint

- Actual handoff UTC: 2026-09-07T15:30:12.4547818Z; elapsed wall effort: 48.49 minutes from 14:41:43 UTC.
- FourHeight, FourTail, FourPositions and Integration all completed with exit 0; 16 accepted files and 101 guarded declarations are recorded in acceptance-manifest.json. Source is frozen. No active A command remains.
- Primary task reports AllFiveSupport accepted (7 guards), and support owns whole-round independent recursive rebuild. A is stopping new work as directed, preserving all probes and failures.
- Reusable final report: final-handoff.md. Last verified A results are the four original-target four-position exclusions and d>=50000; full B686/Four remains unresolved.

