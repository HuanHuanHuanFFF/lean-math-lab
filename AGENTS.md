# Repository Guidelines

## Purpose

Pursue original mathematical results with Lean-checked proofs. Explain decisions, progress, and limitations to the non-specialist owner in accessible Chinese. Distinguish discoveries, partial results, and formalizations of known mathematics.

## Agent Delegation

When delegation is authorized, default to `gpt-5.6-luna` with reasoning effort `max`, unless the user specifies otherwise. Set `fork_turns: "none"` or a bounded history fork; full-history forks inherit parent settings. Provide the task, context, file ownership, and acceptance checks. Review changes and verification evidence before reporting completion.

## Project Structure & Module Organization

Use this layout as the project grows:

- `Math/`, `Math.lean`: proofs grouped by topic and their library entry point.
- `Tests/` (when needed): regression examples.
- `research/` (when needed): candidates, sources, informal arguments, and attempt logs.
- `scripts/`: tool entry points and reproducible experiments.
- `.tools/`, `.lake/`: local tools/caches and project dependencies; exclude from Git.

Keep installations, downloads, caches, and temporary files on D:, including during future invocations. Pin Lean/mathlib using `lean-toolchain`, Lake configuration, and `lake-manifest.json`.

## Build, Test, and Development Commands

Run from the repository root using the project wrappers:

- `.\scripts\lake.ps1 exe cache get Mathlib.Data.Nat.Basic`: fetch a module and its dependencies from cache.
- `.\scripts\lake.ps1 build`: build the library.
- `.\scripts\lake.ps1 env lean Math/Smoke.lean`: check the environment acceptance proof; substitute other proof or regression paths as needed.

If caches are unreachable, build focused imports from source and report this limitation.

## Coding Style & Naming Conventions

Use two-space indentation: `UpperCamelCase` for modules/types, `lowerCamelCase` for definitions, and `snake_case` for theorems. Match mathlib names; prefer focused imports, explicit assumptions, and reusable lemmas.

## Testing & Proof Acceptance

Check changed proofs and relevant regression files, then build the library. Import completed modules through `Math.lean`. Accepted results require proofs without `sorry`, `admit`, or dependencies on `sorryAx`; inspect `#print axioms theoremName` and justify any project-specific axioms. Verify that definitions, quantifiers, and hypotheses match the original claim. Numerical experiments alone do not prove unrestricted theorems.

## Research Workflow

Before attacking a candidate, record its precise statement, source, dated status search, tractable subgoal, and attempt budget. Treat unverified open status as uncertain. Preserve useful failed approaches and reassess when the budget expires. Verify novelty separately from Lean acceptance.

## Commit & Pull Request Guidelines

Use focused imperative commit messages, e.g. `proof: establish finite-case bound`; no historical convention exists yet. PRs must state claims, sources, changed assumptions, verification commands/results, and remaining gaps. Label conjectures and incomplete work explicitly.
