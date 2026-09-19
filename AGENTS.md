# Repository Guidelines

## Purpose and Entry Points

Pursue mathematical results checked by Lean. Explain progress and limitations in accessible Chinese; distinguish original discoveries from formalizations of known results. Read `docs/STRUCTURE.md` before creating or resuming a research run, changing concurrent ownership, moving research files, merging research branches, or adding modules. Read `research/README.md` when selecting a problem. For research execution, statement verification, or proof packaging, use `.agents/skills/lean-research/SKILL.md`.

Leader work: read [LEADER.md](LEADER.md) before taking over the task command center, choosing directions, allocating workers/resources, writing task prompts, maintaining status, or integrating deliveries. The Leader owns coordination, evidence-status records, integration, and the next executable task; mathematical workers and designated verifiers own technical acceptance.

For B699 cloud research continuation, session recovery, or end-of-day delivery, read [AUTO.md](AUTO.md): one GPT 6 Pro session, continuous research within the authorized daily budget, then consolidated download and intake. An explicit user pause and the current round's scope take precedence. The user's standing authorization to commit and push completed Leader organization work is recorded in [LEADER.md](LEADER.md); it does not grant merges, force pushes, deletion, PR publication, authentication changes, or unrelated external actions. Read the canonical run status for current research authorization and actual dispatch receipts.

When acting as Leader, delegate mathematical review, certificate checks, Lean implementation, compilation, and axiom audits to named execution or verification tasks. The Leader may inspect supplied reports, branch/commit/PR state, file inventories and byte provenance, and package or integrate delivered files; these administrative checks do not constitute mathematical acceptance. Record the verifier, fixed source, accepted scope, and remaining gaps. If verification is missing, assign it and keep the result pending. Do not run proof checks in the Leader thread or silently take a worker's technical task back.

## Task Ownership and Delegation

Give each mathematical problem one stable directory under `research/tasks/<id>-<slug>/`. Independent research runs belong in its `runs/<YYYYMMDD>-<topic>-<short-id>/` directories, using the naming and ownership rules in `docs/STRUCTURE.md`. A run's identity survives branch merges, model changes, handoffs, and changes in concurrency. Keep its changing frontier, reports, source, experiments, reviews, and verification evidence together. Problem-level files provide the target, cumulative overview, and navigation; preserve separate run records when merging.

Record each run's owner, owned files, source baseline, reused results, last proved result, failed approaches, next subgoal, and effort checkpoint. Workers within a run own disjoint files or subdirectories. Coordinate changes to shared files through one owner; merge contributions without replacing another run's account. Keep research, proof, review, novelty, and publication states separate. Preserve other tasks' untracked or modified files.

Unless the user specifies otherwise, delegate substantive mathematical research to `gpt-6-astra` with reasoning effort `max`, with at most two such research subagents active concurrently across the task tree, excluding the primary agent. This is a ceiling, not a required roster. Delegate routine organization, documentation, and bounded support work to `gpt-5.6-luna` with reasoning effort `max`. Use a fresh or bounded history fork; full-history forks inherit parent settings. Specify file ownership and acceptance checks. Coordinate edits to shared modules, dependencies, and entry points through the primary task.

## Research Time Budget

Use the duration supplied by the user for each research round; there is no default total duration. Record the start time and original deadline. The budget covers elapsed time for the whole round, including coordination, verification, and handoff; subagents share that deadline.

Stop at the original deadline unless a concrete important breakthrough is close to completion. In that case, the default authorization permits a cumulative extension of at most one quarter of the original duration. Record the evidence, remaining step, reason, and revised deadline before extending, and tell the user. Calculate the cap from the original duration, never from an extended budget: for duration T, the final deadline is start + 1.25T. Plan verification and records within this limit; an unfinished proof remains pending at the deadline. Explicit user timing or extension instructions override this default.

## Completing Lean Proofs

When assigned to complete a Lean proof, include the mathematical and tooling prerequisites needed by that target unless the user excludes them. Trace the dependency chain from the intended consumer, implement and verify missing prerequisites, and continue connecting the chain within the agreed budget. A verified prerequisite is valid stage progress even when no new original-problem cases are covered. Early environment or route checks select the next action; a missing prerequisite or an incomplete full route does not automatically end the task. Read the **Lean补齐与前置** section of [LEADER.md](LEADER.md) for scope, checkpoints, and stopping conditions.

## Research Direction

Before allocating substantial open-problem effort or resuming a research run, the primary task reads the problem entry and relevant run frontiers: the full target, verified coverage, unresolved gaps, and next decision. Record which results and source versions the current run actually adopts. Deliberately isolated explorers use their designated statement-and-facts packet until the first exchange. The open-problem branch of the Lean research skill defines how to update the run's frontier and compare routes. Keep evidence strength, contribution to the full target, and reuse value separate; report novelty independently.

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
- After every major research round, update `research/tasks/<id>-<slug>/OVERVIEW.md` before handoff or publication. This problem-level file is the single continuation entry across rounds: exact target, adopted results and evidence grades, actual frontier reduction, all remaining unbounded parameters, useful failures and untried routes, fixed source links, and the next executable check. A new agent must be able to start the next round from this file without prior chat or a newly prepared archive. Record the effort checkpoint even when no new theorem was proved; retain each round's detailed records under its run.

Keep detailed progress and evidence in the owning run; maintain the cumulative continuation summary in the problem-level `OVERVIEW.md`, with one coordinating owner. The research index and problem README link to it and to run records. Run-level overviews are historical snapshots or redirects, not competing current summaries. The repository root README states the project's motivation and stable entry points.

Store research deliveries as ordinary files with member-level provenance; keep archive files outside the checkout and out of Git. Before archive intake, duplicate cleanup, reading a missing historical path, or replaying old evidence, read [docs/ARTIFACTS.md](docs/ARTIFACTS.md). Use its member-completeness and exact-byte mapping procedure; restored local duplicates are not new tracked deliverables.

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

### VPS Resources and Tool Output

- Before a build, search, or batch computation, inspect the current container's memory limit/usage, available memory, CPU quota, disk space, and relevant running jobs. Use cgroup limits when available; host totals and old session measurements are not the task's available budget. Record the observation in the run, not as a permanent machine specification.
- Start memory-heavy work serially. Budget peak memory for the whole process tree, leave room for the system and other sessions, and increase concurrency only after observing representative peaks. Preserve pinned dependencies and useful caches; validate one relevant import before committing to a large build. Reduce batch size or concurrency when memory or disk approaches the available budget. After an OOM or resource failure, diagnose and change the workload before retrying. Do not kill another worker's process or delete its files/caches to recover capacity.
- Inspect file sizes before reading unfamiliar logs, JSON, tables, or generated data. Return selected fields, aggregates, or bounded excerpts; default to about 12 KiB of text per model-visible tool result and consider cumulative output across calls. Redirect full command logs to files and return the exit code, summary, and decisive error excerpt. A line limit alone does not bound a giant JSON line.
- Transfer large files through Git, supported file-upload tools, or scripts/APIs that keep bytes outside the model context. Inspect or extract archives locally; never read a ZIP by encoding it as Base64 for inspection. Keep binary data and full Base64/upload payloads out of model-visible output, including repeated chunks that accumulate into a huge transcript. Report paths, sizes, hashes, and transfer status; inspect contents locally with parsers when needed. Stop a truncated or oversized read and narrow the query instead of repeatedly dumping the same payload.
- Save a resumable checkpoint before expensive builds, bulk transfers, and publication: current branch/commit, completed work, pending action, and artifact/log paths. Distinguish resource exhaustion, tool/output transport failure, and an unknown session stall from mathematical failure; a spinning UI alone does not identify the cause.

## Contributions and Publication

Use execution-location branch prefixes for new work: `huan/<topic>-<date>-<short-id>` on huan, `think/<topic>-<date>-<short-id>` on think, and `GPT-work/<topic>-<date>-<short-id>` for cloud Work VPS tasks. Dates use Asia/Shanghai. These branch names do not change the run-directory naming rules in `docs/STRUCTURE.md`; preserve existing branches and run identities.

The upstream workstation Leader uses `huan/leader`. The independent VPS Leader uses `GPT-work/leader`, as specified by the user on 2026-09-14, and preserves the same canonical research run. The current VPS branch starts from the user-requested latest `main`; this does not authorize rewriting or merging the upstream Leader branch. Follow [LEADER.md](LEADER.md) for intake, synchronization, and handoff. When publication is authorized, target a PR at `main`; the user merges it unless they explicitly delegate that action. Leader intake never pushes directly to `main`. Ordinary workers publish only their own task branch under the session's authorization; they do not merge other ongoing tasks into their delivery.

Use focused commit messages; existing examples use `feat:` and `ci:` with Chinese descriptions. Changes should state the claim, source, assumptions, verification, and remaining gaps. The user authorized routine Leader commits and pushes on 2026-09-14: after each completed organization/integration and its relevant checks, commit and push to `GPT-work/leader`, then verify the remote SHA without requesting permission again. Keep changes within the completed task; preserve other branches and work. Releases, PR creation, merges, force pushes, deletion, permission changes, and contact with others still require their own authorization. Preserve published tags and report the observed CI status when publishing.

API documentation CI is non-blocking for merge or push handoff. Once the required code/proof checks for the change pass, report the documentation build/deployment's current status and run link when available, then hand off without waiting or repeatedly polling for it. Report pending documentation CI as pending. Wait for documentation completion only when explicitly requested by the user.
