# Erdős #486: independent kernel-level verification of a negative answer

[![reverify](https://github.com/ibrahimmian36/Pilus/actions/workflows/reverify.yml/badge.svg)](https://github.com/ibrahimmian36/Pilus/actions/workflows/reverify.yml)
[![License](https://img.shields.io/badge/license-Apache--2.0-blue.svg)](LICENSE)
[![axioms](https://img.shields.io/badge/axioms-propext%20%7C%20Classical.choice%20%7C%20Quot.sound-success)](reports/erdos-486.md)

Third-party verification of a claimed resolution of
[Erdős #486](https://www.erdosproblems.com/486): *let A ⊆ ℕ and choose
X_n ⊆ ℤ/nℤ for each n ∈ A; let*

$$B=\{m\in\mathbb{N}: m \bmod n\notin X_n \text{ for every } n\in A \text{ with } n<m\}.$$

*Must B have a logarithmic density?* Erdős recorded the question as
Problem I.26 in 1961. Davenport–Erdős proved **yes** for the
sets-of-multiples case X_n = {0}; the general question stayed open. In
July 2026 Shouqiao Wang claimed **no**, with a Lean 4 formalization.

This repository holds the artifacts of our independent replay. The
statement verified is:

```lean
/-- Erdős Problem 486 has a negative answer. -/
theorem erdos486_negative : ¬Erdos486Assertion
```

together with `erdos486_quantitativeCounterexample`, which strengthens it
to liminf L_B ≤ 177/200 and 49/50 ≤ limsup L_B. Both depend on axioms
exactly `propext`, `Classical.choice`, `Quot.sound` — as do all 492
theorems in the compiled namespace. There is no `sorry`, no
`native_decide`, no bespoke axiom: **the disproof is unconditional**,
which a good fraction of Lean-closed Erdős problems are not.

Full report: **[reports/erdos-486.md](reports/erdos-486.md)**.

## What is new here, and what is not

The mathematics is **not ours**. It is Shouqiao Wang's, produced with
GPT-5.6 Sol under iterative human prompting as he discloses. We claim no
part of it, and this repository contains none of his code. The problem
and its lineage belong to Erdős, and to Davenport–Erdős, Besicovitch and
Behrend in the surrounding results.

The contribution here is **epistemic**. On the claim thread the site
owner said he was inclined to wait for a formalized version rather than
check a delicate ad hoc construction line by line. Wang posted one the
next day, and until this audit nobody had checked it. What we add is an
independent replay from a cleared build tree; a mechanically enforced
axiom gate over every theorem in the development rather than the
headline two; an external kernel re-check of the compiled environment;
an exact-arithmetic re-derivation of the construction's constants,
independent of the Lean development; an adversarial pass aimed at the one
thing a passing compile cannot rule out — a faithful-looking statement that
is secretly hollow; and a report that states its own limits as plainly as
its results.

On that last point, since it is the part most easily waved at: after a clean
replay under an axiom gate, the proof cannot be subtly wrong. What can still
fail is the *statement*. So we tried to break it — pinning `logAverage`
against three classically known densities, and exhibiting an admissible
instance of the problem that does have a density, which a degenerate
formalization would not admit. It held. See `tools/MRAdversarial.lean` and
the adversarial subsection of the report.

## The formal-conjectures statement of this problem is degenerate

Independently of Wang's work, and this would stand if his claim were
withdrawn tomorrow. The `m > n` activation delay is not a technicality —
it is what lets an infinite congruence system stay silent long enough
for the logarithmic average to recover, which is what makes the
oscillation possible. Liam Price asked in January 2026 whether the
condition belonged; Terence Tao inspected Erdős's 1961 paper, confirmed
that it does, and the site was corrected the same day.

[`FormalConjectures/ErdosProblems/486.lean`](https://github.com/google-deepmind/formal-conjectures/blob/main/FormalConjectures/ErdosProblems/486.lean)
still omits it, six months and three edits later. It also places no
positivity constraint on the modulus, so `n = 0` is admitted — and in
Mathlib `ZMod 0 = ℤ`, so the single row `X 0 ⊆ ℤ` deletes an arbitrary
set of naturals. We certify in Lean, against formal-conjectures' own
`Set.HasLogDensity`, that its `erdos_486` therefore asserts only that
*every* subset of ℕ has a logarithmic density, and that **adding the
missing threshold alone does not repair it** — for `0 < m` the modulus
`n = 0` is still active. Both guards are needed. See
[`tools/MR486Defect.lean`](tools/MR486Defect.lean) and §5 of the report.

A corrected file is in [`fc-fix/486.lean`](fc-fix/486.lean), and
[`tools/MR486FixCheck.lean`](tools/MR486FixCheck.lean) machine-checks that it
closes the hole rather than merely looking like it does: under the `0 < n`
guard, row `X 0` can be set to all of `ℤ` without moving the survivor set by
a single element.

That repository's own `erdos_25` — the singleton special case of exactly
this problem — has both guards right. The general case and its own
special case currently disagree.

## The activation threshold is provably necessary

The two guards are independently load-bearing, and we now have all four
combinations settled. Dropping the positivity guard makes the statement
contentless, as above. Dropping the *threshold* instead, with positivity
kept, makes the assertion **false**:

```lean
/-- The assertion with the modulus positive but NO activation threshold. -/
theorem not_assertion_noThreshold :
    ¬ ∀ X : (n : ℕ) → Set (ZMod n),
        ∃ d : ℝ, Erdos486.HasLogDensity (survivorsNoThreshold X) d
```

Without a threshold a modulus *larger* than `m` still constrains `m`, and
since `m mod n = m` when `m < n`, one modulus deletes an entire interval
at a density cost that cancels against the block length. Blocks long on a
logarithmic scale drive the average to `1/10`; long recovery windows bring
it back above `22/25`. The construction dies immediately under the real
threshold, because every modulus it uses exceeds the integers it deletes,
which is exactly why the real problem is hard and this one is not.

The observation is not ours. It was made by GPT-5.2 and endorsed by
Terence Tao on the problem page in January 2026. **The proof is ours**, in
[`tools/MRThreshold.lean`](tools/MRThreshold.lean): 24 theorems, 790
lines, no `sorry`, every declaration on exactly the three standard axioms,
and a mechanical sweep of the whole namespace covering 93 theorems. It is
stated in Wang's own definitions, so the difference from
`Erdos486Assertion` is exactly the activation condition and nothing else.

| `0 < n` | `n < m` | statement | status |
|---|---|---|---|
| no | no | formal-conjectures' `erdos_486` | contentless (machine-checked) |
| no | yes | threshold-only "fix" | contentless (machine-checked) |
| yes | no | this development | **false** (machine-checked) |
| yes | yes | the real problem | resolved by Wang, verified here |

**Wang's theorem resolves the problem as the site states it. It does not
resolve formal-conjectures' version, which is a different and degenerate
statement, and it should not be recorded as doing so.**

## Contents

| Path | What it is |
|---|---|
| `reports/erdos-486.md` | The verification report: all seven layers, the counterexample mechanism, the trust base, and what we did *not* verify |
| `tools/MRAxioms.lean` | The axiom manifest: `#print axioms` on both public theorems |
| `tools/escape_scan.py` | Escape-token scan that strips Lean comments and string literals first. A plain grep flags the English word "admit" in a docstring and fails a clean repository; nested block comments rule out doing this with a regex |
| `tools/AxiomSweep.lean` | Our mechanical sweep: every theorem in the compiled namespace via `CollectAxioms`, one memoized closure walk, so nothing hides behind a hand-kept manifest (492 theorems) |
| `tools/MRAdversarial.lean` | Our falsification attempt: pins the normalization at three classically known densities, and exhibits a real instance of the problem that *does* have one, so the statement is not hollow and the counterexample is not cheap |
| `tools/MR486Defect.lean` | Four theorems certified against formal-conjectures' own `Set.HasLogDensity`, showing its `erdos_486` is contentless and that the obvious fix still leaks |
| `fc-fix/486.lean` | The corrected formal-conjectures file, compiling at `735aee07` |
| `tools/MR486FixCheck.lean` | Machine-checked proof that the fix *closes* the hole: with the `0 < n` guard, row `X 0` is provably never consulted |
| `tools/MRThreshold.lean` | Our own theorem: with the modulus positive but no activation threshold, the assertion is false. 24 theorems, no `sorry`, standard axioms only; namespace sweep covers 93 theorems |
| `probes/probe_threshold.py` | Exact-rational check of the threshold construction: block deletion, later-block inertness, and the collateral bound, computed directly at reduced parameters |
| `logs/threshold/` | Self-audit of our own development: escape scan, axiom manifest, namespace sweep |
| `probes/probe486.py` | Exact-rational corroboration of the block lemma's constants and the global assembly arithmetic, independent of the Lean development |
| `pods/pod_build.sh` | The from-source bootstrap: Lean toolchain compiled from source, mathlib rebuilt with no cache, checks re-run, `lean4checker` replay. **Executed 2026-08-02**; transcripts in `logs/pod-gcc/` |
| `logs/` | The replay, escape scan, per-module `lean4checker` run, probe output, and the defect certificate's axioms |
| `.github/workflows/reverify.yml` | Weekly re-run of the audit against the pinned commit. Fails if the pin moves, the mathlib rev changes, an escape token appears, the axiom manifest changes, or the swept theorem count is no longer 492 |

## Check it yourself

The audited code is **not** vendored here — clone it at the pinned commit:

```
git clone https://github.com/ShouqiaoW/erdos && cd erdos
git checkout 61325b10bbdc29f4fb5e0618b414b9f2189333ad
cd 486/lean
lake exe cache get && lake build        # 7,912 jobs, ~9 min on a laptop
```

Then drop in our two files and run both checks:

```
cp .../Pilus/tools/MRAxioms.lean .
cp .../Pilus/tools/AxiomSweep.lean .
lake env lean MRAxioms.lean     # the two public theorems
lake env lean AxiomSweep.lean   # our sweep: 492 theorems
```

Each prints `depends on axioms: [propext, Classical.choice, Quot.sound]`,
and the sweep prints `AXIOM SWEEP PASS`. Expected output is quoted
verbatim in the report.

You do not have to take our word that this still holds. The `reverify`
workflow above runs exactly these steps weekly against the pinned commit
and fails loudly if any of them stops reproducing, so the badge reflects a
live check rather than a claim made once in August 2026.

The external `lean4checker` replay must be run **one module per
process**. The umbrella pattern is a prefix match: it pulls in all 27
modules plus the full mathlib environment and was killed at 16 GB
(exit 137). The per-module loop is in the report.

The from-source bootstrap is `pods/pod_build.sh`. **We have not run it**
— it needs ≥ 32 GB, which the audit machine does not have — and the
report claims only Layers 0–6 accordingly. The script fixes the
provenance defect our Erdős 1002 run exposed: it archives itself into
the results directory as its first action, and every `lean4checker`
pattern logs its own exit code, so the logs evidence exactly the
coverage a report may claim.

## Attribution

The audited formalization is © its author and is **not** redistributed
here; at the audited commit `ShouqiaoW/erdos` carried no license file. It
has since been placed under the MIT License (© 2026 Shouqiao Wang), so the
audited development is now reusable at its current head.
The formal-conjectures statements transcribed in `tools/MR486Defect.lean`
are from
[formal-conjectures](https://github.com/google-deepmind/formal-conjectures)
(Apache-2.0, The Formal Conjectures Authors) at `735aee074327`.
[`lean4checker`](https://github.com/leanprover/lean4checker) is by the
Lean FRO. The activation-threshold correction is due to Liam Price, who
raised the question, and Terence Tao, who checked Erdős's 1961 statement
and answered it the same day. The problem, its history, and the comment
threads that map the terrain are hosted at
[erdosproblems.com](https://www.erdosproblems.com) (Thomas Bloom).

## Citing

```bibtex
@misc{mian2026erdos486verification,
  title  = {Independent Kernel-Level Verification of a Claimed Negative
            Resolution of Erd\H{o}s Problem 486},
  author = {Ibrahim Mian and Shayaan Siddique},
  year   = {2026},
  note   = {Millennium Research},
  url    = {https://github.com/ibrahimmian36/Pilus}
}
```

Our related work on Erdős problems:
[centurion](https://github.com/ibrahimmian36/centurion) (#7,
[arXiv:2607.25628](https://arxiv.org/abs/2607.25628)),
[Optio](https://github.com/ibrahimmian36/Optio) (#364), and
[Tesserarius](https://github.com/ibrahimmian36/Tesserarius) (#1002). The
name continues that line: the *primus pilus* was the senior centurion of
a Roman legion, who held the first century of the first cohort — the
rank you reached by having been right often enough to be trusted with
the front.

## License

[Apache 2.0](LICENSE). Copyright 2026 Millennium Research
(Ibby Mian, Shayaan Siddique); developed with Claude. Covers **our**
files only.

Contact: ibrahimnmian@gmail.com
