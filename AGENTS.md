# Repository Guidelines

## Purpose and Entry Points

Pursue mathematical results checked by Lean. Explain progress and limitations in accessible Chinese; distinguish original discoveries from formalizations of known results. Read `docs/STRUCTURE.md` when organizing tasks or adding modules, and `research/README.md` when selecting or resuming research. For research execution, statement verification, or proof packaging, use `.agents/skills/lean-research/SKILL.md`.

## Task Ownership and Delegation

Give each selected task a stable ID and a record under `research/tasks/<id>-<slug>/`. Record owned files, the last proved result, failed approaches, next subgoal, and an effort checkpoint. Keep research, proof, review, novelty, and publication states separate. Preserve other tasks' untracked or modified files.

Unless the user specifies otherwise, delegate substantive mathematical research to `gpt-6-astra` with reasoning effort `max`, with at most two such research subagents active concurrently across the task tree, excluding the primary agent. This is a ceiling, not a required roster. Delegate routine organization, documentation, and bounded support work to `gpt-5.6-luna` with reasoning effort `max`. Use a fresh or bounded history fork; full-history forks inherit parent settings. Specify file ownership and acceptance checks. Coordinate edits to shared modules, dependencies, and entry points through the primary task.

## Research Time Budget

Use the duration supplied by the user for each research round; there is no default total duration. Record the start time and original deadline. The budget covers elapsed time for the whole round, including coordination, verification, and handoff; subagents share that deadline.

Stop at the original deadline unless a concrete important breakthrough is close to completion. In that case, the default authorization permits a cumulative extension of at most one quarter of the original duration. Record the evidence, remaining step, reason, and revised deadline before extending, and tell the user. Calculate the cap from the original duration, never from an extended budget: for duration T, the final deadline is start + 1.25T. Plan verification and records within this limit; an unfinished proof remains pending at the deadline. Explicit user timing or extension instructions override this default.

## Research Direction

Before allocating substantial open-problem effort or resuming a research round, the primary task reads the current frontier: the full target, verified coverage, unresolved gaps, and next decision. Deliberately isolated explorers use their designated statement-and-facts packet until the first exchange. The open-problem branch of the Lean research skill defines how to update it and compare routes. Keep evidence strength, contribution to the full target, and reuse value separate; report novelty independently.

The primary agent proactively develops alternative approaches and reformulations, looks for transferable tools across mathematical fields, and explores new definitions, auxiliary constructions, and mathematical or computational tools when useful. Record the obstacle each proposal addresses and how it could be tested; distinguish an untested idea, a useful local construction, an established general method, and a novelty claim.

### Research Leverage

For open-ended research, allocate effort by expected reduction of the unresolved frontier relative to cost. Before starting a lemma, ask: **if it succeeds, what unknown region will it eliminate, or which route to the full target will it unlock?** Apply the same question to estimates, finite cases, formalizations, and auxiliary tools.

Use this priority when selecting and delegating work:

1. Settle the target or eliminate an infinite or large family through a uniform bound, monotonicity argument, asymptotic contradiction, structural reduction, reusable invariant, or reduction to bounded finite verification.
2. Unlock a specifically identified route capable of such a reduction; name the dependency and remaining obstacles.
3. Reserve substantial effort on isolated small cases, weak estimates, easy formalizations, or improved local constants for work required by such a route or explicitly requested by the user. Visible Lean output alone does not justify priority.

Use bounded exploratory tests, including counterexample searches, to assess uncertain routes before committing to proofs. Before substantial work, briefly record the expected frontier change, assumptions, remaining unknown region, and effort checkpoint in the owning task record. For example: `k ≥ 5 unknown → only 5 ≤ k < K remains` or `one isolated case solved → global frontier unchanged`. Identify any other unbounded parameters that remain; use qualitative uncertainty instead of invented completion percentages.

Report expected versus actual frontier reduction separately from local proof output. If completed lemmas or cases leave the global unknown region essentially unchanged, state that explicitly and reassess the next allocation of effort. Counts of proved lemmas, Lean-checked files, or completed cases do not measure progress toward the full target.

## Research Memory

Treat research records as a deliverable for the next human or agent. Maintain them in the owning task directory while working, at each material new route, result, failed attempt, change of direction, and before handoff or stopping; do not rely on an end-of-session reconstruction.

- For each substantive route, record its motivating observation or source, the mathematical rationale, relevant assumptions, and a concrete test or proof obligation. Preserve promising untried ideas with their motivation and an explicit untested label. Write concise, evidence-linked research summaries rather than purported internal thought transcripts.
- Record outcomes with the exact claim or experimental range and links to source, code, commands, and decisive output. Separate Lean-checked statements, paper arguments, finite computations, and conjectures; follow the verification requirements below before marking a proof accepted.
- For failures, retain the attempted claim or construction, counterexample or diagnostic, and what actually failed: the claim, this method, a missing lemma, the environment, or the available budget. Mark unknown causes as unknown. State what would justify revisiting the route; do not turn one failed attempt into a general impossibility claim.
- For collaboration, preserve substantive proposals, objections, tests, and resulting decisions with their provenance. Link existing logs and artifacts instead of copying full conversations. Keep corrections traceable, label superseded conclusions, and never invent a retrospective success story.
- Before stopping, leave the last verified result, remaining gap, reusable artifacts, untried branches, and a concrete next check. Record elapsed effort or the budget checkpoint; a session with no new theorem still needs a usable handoff.

Keep mutable progress and results in task records and the research index; the root README states the project's motivation and stable entry points.

## Structure and Style

- `Math/` and `Math.lean`: accepted library modules and imports; preserve published module paths and theorem names.
- `Tests/`: source correspondence, boundary checks, and executable axiom audits.
- `Examples/`: compilable uses of public APIs.
- `research/`: candidate surveys, task records, and evidence; unfinished Lean experiments stay here or under `.tools/`.
- `.agents/skills/`: repository workflows and templates.
- `scripts/`: verification and local tool entry points.

Use two-space indentation, `UpperCamelCase` modules/types, `lowerCamelCase` definitions, and `snake_case` theorems. Prefer focused imports and explicit assumptions; follow nearby mathlib conventions.

## Verification and Environment

Run `pwsh -File scripts/verify.ps1` to build and check every Lean file in `Math/`, `Tests/`, and `Examples/`; `-List` shows the scope. For focused checks use `scripts/lake.ps1 env lean <path>` with the local installation, or standard Lake elsewhere.

Completed results require source-aligned statements, no placeholder proofs or unjustified axioms, and an executable check of transitive axiom dependencies. Numerical examples do not prove unrestricted theorems. Record actual commands, results, and versions.

On this Windows workstation keep new installations, downloads, caches, and temporary files on D:. Preserve pinned dependencies and process-local Git trust exceptions. If caches fail, report source-build costs rather than claiming cache success.

## Contributions and Publication

Use focused commit messages; existing examples use `feat:` and `ci:` with Chinese descriptions. Changes should state the claim, source, assumptions, verification, and remaining gaps. Commit, push, release, and contact others only within explicit authorization. Preserve published tags; verify the exact remote commit and CI outcome when publishing.
