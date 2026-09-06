# Repository Guidelines

## Purpose and Entry Points

Pursue mathematical results checked by Lean. Explain progress and limitations in accessible Chinese; distinguish original discoveries from formalizations of known results. Read `docs/STRUCTURE.md` when organizing tasks or adding modules, and `research/README.md` when selecting or resuming research. For research execution, statement verification, or proof packaging, use `.agents/skills/lean-research/SKILL.md`.

## Task Ownership and Delegation

Give each selected task a stable ID and a record under `research/tasks/<id>-<slug>/`. Record owned files, the last proved result, failed approaches, next subgoal, and an effort checkpoint. Keep research, proof, review, novelty, and publication states separate. Preserve other tasks' untracked or modified files.

When delegation is authorized, default to `gpt-5.6-luna` with reasoning effort `max`, unless the user specifies otherwise. Use a fresh or bounded history fork; full-history forks inherit parent settings. Specify file ownership and acceptance checks. Coordinate edits to shared modules, dependencies, and entry points through the primary task.

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
