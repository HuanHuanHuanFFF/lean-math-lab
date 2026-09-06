---
name: lean-research
description: Select or continue mathematical research with Lean, verify a formalization against its source statement, or prepare a reusable proof artifact. Use for research tasks and their acceptance records, not routine repository formatting or general mathematics tutoring.
---

# Lean Research

## Establish the claim

Read repository instructions and the current task record before starting a new attempt. Distinguish proving an open problem, formalizing known mathematics, and improving reusable infrastructure. Record the exact statement, domains, hypotheses, boundary conventions, primary sources, and dated mathematical/Lean precedent searches. Search absence supports only a scoped finding, not global firstness.

For a new task, adapt [assets/task.md](assets/task.md). Follow the host repository's task layout. Where `research/README.md` defines the registry, create `research/tasks/<stable-id>-<slug>/README.md` and register it there. Resume an existing task from its last proved result and failed approaches rather than repeating the initial search.

## Work to a checkpoint

Record the next falsifiable subgoal and an effort checkpoint consistent with the user's budget. Separate exact computation, informal reasoning, and kernel-checked results. A computed counterexample needs an independent check against the original definition. If progress stalls, preserve useful lemmas and failure reasons, then narrow the claim or report what would unlock progress; do not silently weaken the target.

Keep experiments outside the accepted library until ready. Map source notation to Lean types explicitly, including indexing, natural versus integer subtraction, and empty cases. Check whether hypotheses are satisfiable and whether a new definition assumes the desired conclusion. Reuse existing library lemmas; expose general helpers only when their assumptions and a concrete reuse case justify the API.

## Establish acceptance

Check the actual theorem statement and its transitive axioms, not just a successful build log. Recheck changed theorem sources and relevant consumers with the pinned toolchain. Add meaningful source-transcription or direct small-case checks where they can catch a wrong formalization; examples proved using the main formula are regression evidence, not an independent proof.

Completed results must avoid `sorry`, `admit`, `sorryAx`, and unjustified project axioms. Record the exact axiom list and make unexpected additions fail an executable audit. If the host provides `scripts/verify.ps1`, use it; otherwise discover its native build and test commands. State whether dependencies came from cache and whether an independent checker was actually used.

When independent review is requested and delegation authorized, give a fresh read-only reviewer the raw statement, files, and acceptance question without the implementer's reasoning history. Verify findings and rerun affected checks after fixes. Distinguish AI review from human peer review. A task requiring additional authority does not gain it from this skill.

## Package only what is supported

Maintain separate research, proof, review, novelty, and publication states in the task record. Report partial results as partial, with remaining obligations. For accepted artifacts provide stable imports, source citations, a working usage example, pinned dependencies, and a reproducible validation entry point.

When publication is authorized, inspect the remote and exact file set, preserve existing release tags, then verify the remote commit and real CI outcome. Test downstream consumption when dependency packaging changes. Publication, a DOI, kernel acceptance, and research novelty are distinct claims. Report the strongest supported result and the next useful step in the user's language.
