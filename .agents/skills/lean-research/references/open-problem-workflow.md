# Open-problem research decisions

Use this reference for open-ended mathematical exploration and its checkpoints. Scale the process to the work; roles are responsibilities, not a fixed agent roster. Follow the active user budget, model limits, and publication authority. In this repository, [AGENTS.md](../../../../AGENTS.md) is the source of defaults for delegation and time extensions; carry the applicable shared deadline and extension rule into worker briefs.

## Keep the whole target visible

The primary task maintains a concise frontier in the task record, or `frontier.md` for multi-round work. Initialize it from the latest verified records when absent, and link it from the task entry. Include the exact target and success condition, established coverage with evidence links, all remaining cases or unbounded parameters, and the next decision-changing test. Distinguish a witness that settles an existence claim from exclusions that must cover every case to establish nonexistence.

Before extending a local result, explain its possible connection to completing the target, an explicit obstruction it tests, or a concrete reuse objective. Leave an unknown connection marked unknown. A smaller restatement of the original hard step is still a gap; show the dependencies rather than hiding it inside a helper lemma.

Evaluate outcomes on separate axes:

| Axis | What to record |
|---|---|
| Evidence | Hypothesis, bounded computation, exact certificate, checked literature statement, informal argument, or Lean verification; attach assumptions and decisive artifacts. |
| Full-target contribution | Which cases or bottlenecks disappear, which remain, and what additional argument would connect the result to completion. |
| Reuse | An identified consumer or other problem that can use the result or method. |

Record novelty separately. A known theorem can be the most valuable next tool. Do not infer a completion percentage from lemma counts, audit counts, larger search cutoffs, or overlapping exclusions of an infinite domain. A finite checklist may have its own explicitly scoped progress count.

## Develop alternatives and tools

The primary agent actively generates approaches as well as selecting among workers' proposals. Revisit the formulation at the outset, at a structural obstacle, and before investing further in repetitive local improvements. Consider changes of variables or representation, equivalent problems or useful reductions, proof and counterexample directions, and tools from other mathematical fields. Choose avenues suggested by the structure rather than enumerating techniques as a ritual.

For a transformation, state whether it is an equivalence, a one-way implication, a necessary condition, or a heuristic. Track domains, exceptional cases, new parameters, and the argument needed to transfer a proof or counterexample back to the original target. For a borrowed theorem, identify the matching objects and hypotheses that still need verification.

When available tools leave a specific obstacle, explore a new definition, invariant, auxiliary object, estimate, proof method, or computational search/certificate tool. Give each serious proposal its motivating observation, intended obstruction, and smallest useful test. New terminology alone supplies no mathematical evidence. Allow unfamiliar ideas bounded exploration even when immediate formalization is unclear; preserve promising untried proposals separately from established facts.

The output of this work can be a new route, a reusable construction, a counterexample, or a precise limitation of a method. Record how it changes the frontier and what would justify the next investment. Keep these activities within the current budget and preserve the independent explorers' initial information boundary.

## Choose and exchange branches

The primary agent maintains the global judgment and continues substantive mathematical work: attack a bottleneck, connect branches, or independently reconstruct a decisive argument. Delegate bounded supporting work when it can proceed independently.

When route diversity is useful, give an exploratory worker the raw problem, required definitions, and neutral established facts. Withhold preferred strategies and peers' proposals until its first route memo or the agreed exchange checkpoint. Existing facts and safety constraints remain available; isolation concerns proposals, not correctness. Record the actual input packet. A fresh context reduces shared framing but does not establish statistical independence.

The primary agent checks existing work before dispatch. Distinguish an intentional blind replication from accidental repetition. Give each branch an objective, owned files, accessible evidence, checkpoint, and an output that would change a decision. Let the worker choose the mathematical method. After the first exchange, share only relevant findings, objections, and artifacts; request another branch when a concrete uncertainty can be investigated independently.

## Decide whether to continue

At the agreed checkpoint, record what was learned, what it changes, the next test, and the reason to continue, redirect, consolidate, or pause. Compare plausible bottleneck reduction, evidence, additional cost, and reuse against alternative routes. Use qualitative reasoning where numerical scores would be invented.

Reserve room for uncertain exploration within the user's budget. A stage can earn continuation by settling applicability of a source theorem, finding a counterexample to a proposed lemma, exposing a method's obstruction, or designing a discriminating test. It need not produce a new theorem. An attempted strategy is not refuted merely because its allotted time expired.

Repeated attempts need a changed premise, tool, bound, or diagnostic. Preserve a short failure record: attempted claim and assumptions, decisive obstruction or failure category, evidence link, and what would justify revisiting it. Favor unresolved work with a clear decision consequence over repeating already accepted computations.

## Verify claims and their significance

Use the progressive formalization and axiom checks in `SKILL.md`. For a substantial completion claim or pivotal disputed reduction, use a fresh reviewer when feasible. Provide the original target, allowed assumptions, candidate artifact, dependencies, and evidence; omit the author's confidence and production conversation.

Ask separately whether the argument is valid and whether its conclusion covers the stated target. A reviewer objection is a claim to check, not a vote. Classify it and seek a counterexample, source theorem, exact computation, or formal check. Repeated disagreement without new evidence calls for independent reconstruction or a documented pause, not additional consensus rounds.

Keep informal acceptance, Lean acceptance, source correspondence, novelty, and external review distinct. Update the frontier and link detailed records after integration; preserve historical checkpoints as historical evidence.

## Basis and limits

Adapted on 2026-09-08 from B686 research experience and the user's report *AI Agent 组织高难数学研究：证据、机制与 Open‑Math Agent Lab*. These are working rules to evaluate in this repository, not an experimentally established optimal configuration. This reference prescribes no universal agent count or token allocation; repository defaults and explicit user overrides govern actual runs.

The consulted [Nexus architecture study](https://arxiv.org/html/2605.22763v1) reports problem-dependent tradeoffs; [RMA](https://arxiv.org/html/2605.22875v1) studies a small research-math benchmark; [cross-context review](https://arxiv.org/abs/2603.12123) concerns non-mathematical artifacts. They motivate experiments with coordination and review, not guarantees of solving an open problem.
