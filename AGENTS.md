# Repository Guidelines

## Purpose and Entry Points

Pursue mathematical results checked by Lean. Explain progress and limitations in accessible Chinese; distinguish original discoveries from formalizations of known results. Read `docs/STRUCTURE.md` when organizing tasks or adding modules, and `research/README.md` when selecting or resuming research. For research execution, statement verification, or proof packaging, use `.agents/skills/lean-research/SKILL.md`.

## Task Ownership and Delegation

Give each selected task a stable ID and a record under `research/tasks/<id>-<slug>/`. Record owned files, the last proved result, failed approaches, next subgoal, and an effort checkpoint. Keep research, proof, review, novelty, and publication states separate. Preserve other tasks' untracked or modified files.

When delegation is authorized, default to `gpt-5.6-luna` with reasoning effort `max`, unless the user specifies otherwise. Use a fresh or bounded history fork; full-history forks inherit parent settings. Specify file ownership and acceptance checks. Coordinate edits to shared modules, dependencies, and entry points through the primary task.

## Research Memory

Treat research records as a deliverable for the next human or agent. Maintain them in the owning task directory while working, at each material new route, result, failed attempt, change of direction, and before handoff or stopping; do not rely on an end-of-session reconstruction.

- For each substantive route, record its motivating observation or source, the mathematical rationale, relevant assumptions, and a concrete test or proof obligation. Preserve promising untried ideas with their motivation and an explicit untested label. Write concise, evidence-linked research summaries rather than purported internal thought transcripts.
- Record outcomes with the exact claim or experimental range and links to source, code, commands, and decisive output. Separate Lean-checked statements, paper arguments, finite computations, and conjectures; follow the verification requirements below before marking a proof accepted.
- For failures, retain the attempted claim or construction, counterexample or diagnostic, and what actually failed: the claim, this method, a missing lemma, the environment, or the available budget. Mark unknown causes as unknown. State what would justify revisiting the route; do not turn one failed attempt into a general impossibility claim.
- For collaboration, preserve substantive proposals, objections, tests, and resulting decisions with their provenance. Link existing logs and artifacts instead of copying full conversations. Keep corrections traceable, label superseded conclusions, and never invent a retrospective success story.
- Before stopping, leave the last verified result, remaining gap, reusable artifacts, untried branches, and a concrete next check. Record elapsed effort or the budget checkpoint; a session with no new theorem still needs a usable handoff.

Explore new definitions, auxiliary constructions, and reusable tools when the problem suggests them. Record the obstacle each proposal addresses and how it could be tested; distinguish a useful local construction from an established general method or a novelty claim. Keep mutable progress and results in task records and the research index; the root README states the project's motivation and stable entry points.

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
