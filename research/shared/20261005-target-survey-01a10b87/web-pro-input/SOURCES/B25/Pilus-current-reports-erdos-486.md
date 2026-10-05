# Independent verification: Erdős Problem 486 is resolved in the negative

Millennium Research (Ibby Mian, Shayaan Siddique) — 2026-08-01
Status: all seven layers pass (Layer 7 executed 2026-08-02). Three defect
findings against google-deepmind/formal-conjectures, all machine-checked.

Every claim below is either mechanically reproducible from a command
given in the text, or explicitly labeled as unverified adjudication. We
claim no part of the mathematics.

## 0. Verdict

Shouqiao Wang's Lean 4 formalization of a NEGATIVE answer to Erdős
Problem 486, at commit `61325b10bbdc29f4fb5e0618b414b9f2189333ad` of
github.com/ShouqiaoW/erdos (directory `486/`), replays cleanly on our
hardware: 27 compiled modules, 5,490 lines, 7,912 build jobs, zero
errors, on the official Lean v4.27.0 toolchain with mathlib pinned to
the official v4.27.0 tag. The two public theorems

    Erdos486.erdos486_negative : ¬Erdos486Assertion
    Erdos486.erdos486_quantitativeCounterexample
      (liminf logAverage ≤ 177/200 and 49/50 ≤ limsup logAverage)

depend on axioms exactly `[propext, Classical.choice, Quot.sound]`, as
does every one of the 492 theorems in the compiled namespace. There is
no `sorry`, no `native_decide`, and no bespoke axiom: the disproof is
unconditional. Subject to the Lean kernel and mathlib at the pinned tag:

**The survivor set of a delayed congruence system need not have a
logarithmic density. Erdős's question 486 has answer NO, and the
Davenport–Erdős theorem does not extend to arbitrary residue sets.**

Separately, and independently of Wang's work, the official
formal-conjectures rendering of problem 486 is defective for two
independent reasons, and the repair a maintainer would reach for fixes
neither completely. All three findings are certified in Lean against
fc's own definitions (§5).

## 1. What was claimed, and by whom

Erdős Problem 486 (erdosproblems.com/486; the site's own reference line
is [Er61, p.235] [Er80, p.114]; the activation condition appears as
b ≥ a_i in condition (I.26.1) of [Er61]; site status at audit time OPEN,
with one claimed proof and eight comments). Let
A ⊆ ℕ, and for each n ∈ A choose X_n ⊆ ℤ/nℤ. Put

    B = { m ∈ ℕ : m mod n ∉ X_n for every n ∈ A with n < m }.

Must the logarithmic averages L_B(x) = (1/log x)·Σ_{m<x, m∈B} 1/m
converge? Davenport–Erdős (1936, 1951) proved YES for X_n = {0}, the
sets-of-multiples case; Besicovitch (1934) showed natural density can
fail there. The problem generalizes Erdős #25, the case |X_n| = 1.
Erdős: "perhaps this question is not very difficult as far as I know it
has not been attacked really seriously."

**The m > n activation delay is the crux.** On 2026-01-11 at 17:08 Liam
Price (username Leeham) asked on the problem thread whether the site's
statement was right, since GPT-5.2 claimed a solution to a version with
no activation threshold. Terence Tao replied at 17:42. Two distinct
things happened in that reply, and they are worth keeping apart: Tao
inspected [Er61, p.236] himself and confirmed the threshold is there
(b ≥ a_i in (I.26.1)) — that is his own verification; and he relayed,
without disputing, GPT-5.2's claim that without the condition one can
cheaply disrupt the logarithmic density with sparse congruence
conditions — that claim originates with the model, not with Tao. The
site was updated the same day to add the condition.

Claim under audit: **Shouqiao Wang**, proof-claim submitted 2026-07-16
02:50:25, answer NO; repo github.com/ShouqiaoW/erdos, directory `486/`.
He discloses it was "found through my AI pipeline and was generated
almost entirely by GPT-5.6 Sol", and states that he has personally read
and checked it. Thomas Bloom replied on the claim thread at 07:09 the
same day: the statement and strategy seemed plausible to him, but for a
proof with no easily digestible big idea, rather a delicate ad hoc
construction relying on quantitative estimates, he was inclined to wait
for a formalised version rather than check the line by line details
himself. Wang posted the Lean formalization at 08:46 on 2026-07-17,
stating that it compiles under Lean 4.27.0 with mathlib and proves the
negative answer with no `sorry` and no axioms beyond Lean's standard
foundations. This report is the check Bloom said he was waiting for, and
it confirms Wang's own description of his artifact.

At audit time the claim thread carried exactly two comments — Bloom's and
Wang's — so no third party had examined the proof. The site states this
itself: appearing on the proof-claim page is no guarantee of correctness
and does not mean anyone associated with the site has examined any part
of it.

This is our second audit of this repository (Erdős 1002, 2026-07-31,
all layers pass). We have no connection to the author and no stake in
the outcome; the independence is the point, and it matters more on a
second audit of the same author, not less.

**Audited commit, to which every statement below is pinned:**
`61325b10bbdc29f4fb5e0618b414b9f2189333ad`. At audit time this was also
the tip of the repository's default branch. We hold a local clone; if
the repo moves, our statements still refer to this hash.

## 2. How the counterexample works

Adjudicated summary. The Lean kernel carries the proof; this section is
our reading of `486/paper.tex` and the `Biased*` modules, offered so the
report is usable by a mathematician, and it is not itself verified.

*The finite block.* At scale Q = 2^j, set k = 2⌊√j/8⌋ and pick distinct
primes p_1 < … < p_k with 4^{k+i} < p_i < 2·4^{k+i} (Bertrand). For each
subset S ⊆ {1,…,k} of near-median size (|S| within √k of k/2) there is a
modulus q_S ∈ [19Q/20, 21Q/20] with p_i | q_S exactly when i ∈ S, so a
modulus *encodes its own subset* in its prime divisors. Now attach an
independent fair coin ε_i(b) to each i and each residue b mod p_i, and
let K(m) = { i : ε_i(m mod p_i) = 1 } — a pseudorandom subset determined
by m's own residues. The endpoint set is E = { m ∈ [11Q/10, 19Q/10] :
K(m) is near-median }, and each such m is assigned the modulus q_{K(m)}.
A bounded-differences argument gives |E| ≥ 3Q/8, so the block deletes a
positive proportion of its dyadic window, worth at least 15/76 of
harmonic mass.

*Why the deleted classes are nonetheless sparse.* This is the heart of
it. A point ω of the profinite completion lies in the block's periodic
footprint only if some near-median S satisfies K(m_S(ω)) = S, where
m_S(ω) is the unique representative of ω mod q_S in the window — a
self-consistency condition. For i ∈ S we have p_i | q_S, so the queried
coin is the same coin ω itself anchors; that forces S ⊆ T, where T is
ω's own anchor set. For i ∉ S the queried coin is fresh, costing
2^{-(k-|S|)}. An entropy count bounds the number of near-median S inside
a typical T by e^{0.29k}, against a per-candidate cost e^{-0.33k}, so
the footprint has Haar measure e^{-Ω(k)} = e^{-Ω(√j)}, which is
summable in j. So the same residue classes that locally delete 3Q/8
integers have negligible long-run density.

*The global assembly.* Blocks are installed in epochs, epoch t carrying
the scales I_t = {a_t, …, 2a_t}. Two cutoffs alternate. At the recovery
cutoff x_t = 2^{a_t−1}, every modulus of epoch t and later is at least
(19/20)·2^{a_t} > x_t, so by the activation delay none of them is yet
active: below x_t the survivor set agrees exactly with the finite system
of past epochs, whose logarithmic average converges to 1 − μ(V_{t−1}) >
1 − ε, giving L_B(x_t) ≥ 49/50. At the deletion cutoff y_t = 2^{2a_t+1},
all a_t + 1 scales of epoch t have fired, each removing at least 15/76
of harmonic mass, against log y_t = (2a_t+1)·log 2; the deficit exceeds
1/8 and gives L_B(y_t) ≤ 1 + ε − 1/8 = 177/200. Infinitely many epochs,
so liminf ≤ 177/200 < 49/50 ≤ limsup, and no logarithmic density exists.

The activation delay is exactly the off-switch that permits the
oscillation: it lets an infinite congruence system stay silent for as
long as the construction needs the average to recover. That is why the
threshold Tao restored is not a technicality but the whole problem.

## 3. What we verified mechanically — seven layers

Hardware: Apple M2 Pro, 10 cores, 16 GB RAM, macOS (Darwin 25.5.0).

### Layer 0 — provenance of the audited sources

Fresh clone of ShouqiaoW/erdos, checkout of the pinned commit, and a
recursive diff of the pinned `486/` tree against our working copy
(excluding only the three files we added):

    diff -r --exclude=.lake --exclude=build486.log \
            --exclude=MRAxioms.lean --exclude=AxiomSweep.lean \
            verify_clone/486 486

**VERDICT L0: PASS.** No differences. `git rev-parse HEAD` returns
`61325b10bbdc29f4fb5e0618b414b9f2189333ad`.

### Layer 1 — kernel replay

We deleted our entire build output and recompiled the development from
source (mathlib artifacts from the community cache are retained; every
file of the Erdos486 development itself was elaborated and
kernel-checked locally):

    cd 486/lean && lake exe cache get && rm -rf .lake/build && lake build

Toolchain `leanprover/lean4:v4.27.0` (from `lean-toolchain`); mathlib
resolved to rev `a3a10db0e9d66acbebf76c5e6a135066525ac900` (inputRev
v4.27.0), which we verified byte-identical to the official
leanprover-community/mathlib4 v4.27.0 tag object during the Erdős 1002
audit of the same repository. The project sets `warningAsError = true`.

**VERDICT L1: PASS.** `Build completed successfully (7912 jobs).`
15:59:47 → 16:08:46 PDT, about nine minutes from a cold development
tree. Transcript: `logs/reverify_clean.log`.

### Layer 2 — axiom manifest

    lake env lean MRAxioms.lean

verbatim output:

    'Erdos486.erdos486_negative' depends on axioms:
      [propext, Classical.choice, Quot.sound]
    'Erdos486.erdos486_quantitativeCounterexample' depends on axioms:
      [propext, Classical.choice, Quot.sound]

**VERDICT L2: PASS.**

### Layer 3 — mechanical full-namespace sweep

Our `AxiomSweep.lean` threads one memoized `CollectAxioms` state through
every theorem in the compiled `Erdos486` namespace, so the whole closure
is walked once rather than per-theorem:

    lake env lean AxiomSweep.lean

verbatim output:

    theorems swept: 492
    axiom union: [propext, Quot.sound, Classical.choice]
    AXIOM SWEEP PASS: union ⊆ [propext, Classical.choice, Quot.sound]

**VERDICT L3: PASS.** The disproof is unconditional. This is worth
stating against the ecosystem baseline: of the 207 (Lean)-closed Erdős
problems in our closed-status census, 13 closures are axiom-conditional,
and #1197's disproof rests on an unproven bespoke lemma. This one rests
on nothing beyond the standard three.

### Layer 4 — escape scan and pin audit

    grep -rnE '\b(sorry|admit|axiom|opaque|native_decide|ofReduceBool
              |implemented_by|trustCompiler|unsafe|partial)\b' \
         Erdos486/ Erdos486.lean

**VERDICT L4: PASS.** No hits. Imports are closed over `Mathlib`,
`Mathlib.NumberTheory.Bertrand`, `Mathlib.NumberTheory.Harmonic.Bounds`
and the development's own modules — nothing else. 26 source modules
under `Erdos486/` plus the root shim, 5,490 lines. Log: `logs/escape_scan.log`.

### Layer 5 — statement faithfulness against the site

`Erdos486/Statement.lean` defines

    survivors A X = {m | 0 < m ∧ ∀ n : A, (n:ℕ) < m → (m : ZMod n) ∉ X n}
    logSum B x    = Σ_{m ∈ range ⌈x⌉₊} if m ∈ B ∧ m < x then 1/m else 0
    logAverage B x = logSum B x / Real.log x
    Erdos486Assertion = ∀ (A : Set ℕ) (X : (n : A) → Set (ZMod n)),
                          0 ∉ A → ∃ d, HasLogDensity (survivors A X) d

**VERDICT L5: PASS.** The strict `(n:ℕ) < m` activation matches the
corrected site text; the normalization is the site's verbatim; the
assertion quantifies over *all* admissible (A, X), so
`erdos486_negative : ¬Erdos486Assertion` is the full negative answer
rather than a variant, and the quantitative form strictly strengthens
it. Two points of care, both resolved in the formalization's favour:
`0 ∉ A` is required, which is necessary and correct (see §5 — without
it the statement is degenerate, and this is precisely where fc fails);
and strict versus inclusive activation (n < m versus n ≤ m) is
immaterial for the existence of logarithmic density, since the two
survivor sets differ within a primitive set, which has logarithmic
density zero by Behrend. Wang's `paper.tex` makes that argument
explicitly; we did not formalize it, and the Lean development does not
need it, since it fixes the strict convention throughout.

### Layer 6 — external kernel replay (lean4checker)

An independent re-check of the compiled environment by a checker outside
the Lean frontend, at `leanprover/lean4checker` tag v4.27.0, commit
`7df74851c95d9bd1bbb8fc9b51aeb291304faaf6`, built against the same
toolchain.

**VERDICT L6: PASS, with one honestly-scoped gap.** The umbrella
invocation `lean4checker Erdos486` was **killed by the OS at 16 GB
(exit 137)** — its prefix match pulls in all 27 modules and the full
mathlib environment at once. We therefore replayed **one module per
process**: all 26 substantive modules pass with exit code 0. The 27th,
the root module `Erdos486`, cannot be isolated (lean4checker's pattern
match is a prefix match, so naming it selects everything); it is an
eight-line import shim with zero declarations of its own, so nothing is
lost, but we state the gap rather than paper over it. Log:
`logs/l4c_replay.log`.

We flag this because our Erdős 1002 report (a separate audit, in the
[Tesserarius](https://github.com/ibrahimmian36/Tesserarius) repository)
claimed lean4checker coverage
that the archived logs supported for only one pattern block. That was
recorded at the time in
[Tesserarius `pods/SCRIPT_PROVENANCE.txt`](https://github.com/ibrahimmian36/Tesserarius/blob/main/pods/SCRIPT_PROVENANCE.txt),
and the fix — log every pattern with its own exit code, claim only what
the log evidences — is applied here and baked into the pod script below.

### Layer 7 — from-source bootstrap

`pods/pod_build.sh` compiles the Lean toolchain from source, rebuilds
mathlib with the cache purged, re-runs Layers 2–3, and replays through
lean4checker with each pattern's exit code logged separately. It archives
itself into the results directory as its first action, with a sha256,
which is the specific provenance defect the 1002 run exposed.

**EXECUTED 2026-08-02** on a rented CPU pod (RunPod, Linux
6.8.0-45-generic x86_64, 32 vCPU, 119 GB as read from the cgroup). Whole
run 17:16:04 → 18:31:57 UTC, about 76 minutes.

Provenance, which is the point of the layer as much as the result: the
archived `pod_build.EXECUTED.sha256` is

    af81bda6d2bba2756118d818358ada8a94a85a36788af56e47d0be3ae67a9780

and that is byte-identical to `pods/pod_build.sh` at commit `af282a9` of
this repository. The bytes that ran are a specific public commit, not a
description of one.

The chain, with nothing inherited from any distribution:

- **Toolchain.** Lean v4.27.0 compiled from source with gcc, from the
  `v4.27.0` tag of leanprover/lean4 (9 minutes). The `elan` release
  binary is not used to supply a toolchain; it only links the
  locally-built `stage1`.
- **Build.** `lake exe cache get` is never invoked, and any prefetched
  package build trees are purged first. `lake build` then compiled
  **7,919 jobs** in 24 minutes. Note this is seven more than the 7,912
  of Layer 1: with the cache purged, Lake builds a few targets it would
  otherwise fetch. Log `logs/pod-gcc/lake_build.log.gz`.
- **Layer 2 re-run.** Both public theorems again report exactly
  `[propext, Classical.choice, Quot.sound]`, and the sweep again reports
  `theorems swept: 492` with the union exactly those three
  (`logs/pod-gcc/check_MRAxioms.log`, `check_AxiomSweep.log`). The
  theorem count matching to the unit is what rules out a differently
  configured build quietly checking something else.
- **Layer 6 re-run**, lean4checker at `7df74851c95d9bd1bbb8fc9b51aeb291304faaf6`.
  All 27 Erdős 486 modules pass individually. **The umbrella `Erdos486`
  pattern also passes**, which the audit laptop could not do: at 16 GB it
  was OOM-killed (exit 137), and that is why Layer 6 reports a per-module
  loop. At 119 GB the whole namespace is checked against the full
  environment in one process. `Batteries`, `Aesop`, `Qq`, `ProofWidgets`,
  `Plausible`, `ImportGraph`, `LeanSearchClient` and **`Mathlib`** all
  pass as well, so the entire compiled environment underneath the result
  has been replayed by an external kernel.
- **Digests.** sha256 of all 27 Erdős 486 oleans and all 7,517 mathlib
  oleans, in `logs/pod-gcc/`.

One line in the manifest reads `L4C FAIL rc=1 Cli`, and the stage is
recorded as `STAGE4b PARTIAL`. That is an artifact of our own script, not
a finding. `Cli` is a declared dependency that nothing in the import
closure of the development uses, so `lake build` never compiled it and it
has zero oleans; the checker's own message is
`Could not find any oleans for: Cli`. Nothing was checked and nothing
failed. The script now classifies such patterns as `SKIPPED` before
invoking the checker, so the distinction is visible in the log rather
than in a footnote — but the run archived here predates that change, and
we would rather show the artifact than quietly re-run until the output
looks tidy.

**VERDICT L7: PASS.** The result does not depend on the distributed Lean
binary, on the community mathlib cache, or on the audit laptop's
architecture: it reproduces on x86-64 with a gcc-built toolchain and no
cache anywhere in the chain. What Layer 7 does *not* do is verify mathlib
as mathematics, or remove the Lean kernel and the C++ compiler from the
trusted base. It removes two supply-chain assumptions, and nothing else.

### Adversarial probes — attacking the statement, not the proof

Once the kernel replay and the axiom gate pass, the proof cannot be subtly
wrong: that is what formalization buys. The residual risk is entirely in
whether the *sentence* means what Erdős asked, and whether the definitions
are non-degenerate. A formalization can be hollow in a way no amount of
compiling detects — as formal-conjectures' own rendering of this problem
demonstrates (§5). So we attacked those two points directly.

The attack: if `logAverage` carried a wrong normalization — a stray
constant, a wrong logarithm base, a mis-set cutoff — then instantiating
Wang's own positive recovery theorem
(`hasLogDensity_of_eventually_periodic`) at cases whose answer is
classically known would produce the wrong number. We pinned it at three
such points, and separately checked that the problem is not trivially
false. `MRAdversarial.lean`:

    theorem evens_density_half :
        HasLogDensity {n : ℕ | 0 < n ∧ n % 2 = 0} ((1 : ℝ) / 2)

    theorem all_positives_density_one :
        HasLogDensity {n : ℕ | 0 < n} (1 : ℝ)

    theorem mult_three_density_third :
        HasLogDensity {n : ℕ | 0 < n ∧ n % 3 = 0} ((1 : ℝ) / 3)

    theorem evenSieve_has_density :
        HasLogDensity evenSieveSurvivors ((1 : ℝ) / 2)

**VERDICT: PASS.** All four compile, axioms exactly the standard three.
The second is the sharpest check on the normalizing factor 1/log x: a wrong
denominator surfaces here as a number other than 1. The third rules out a
normalization that is accidentally right only at period 2. The fourth is a
genuine admissible instance of the problem itself — the delayed even-sieve
`A = {2}`, `X₂ = {0}` — and it *does* have a logarithmic density, so
`Erdos486Assertion` is not refuted by a simple congruence system and the
counterexample has to earn its keep. This last point agrees with an
observation already on the problem thread: on 2025-10-16 the commenter
Woett noted that for *finite* A the problem collapses to a single modulus,
the lcm of the elements, and B then has even a natural density. Our probe
reaches the same conclusion from the other direction. Any counterexample
must therefore use infinitely many moduli, as Wang's does.

Two further points we checked by hand rather than by compiling. First,
Wang's `Erdos486Assertion` requires `0 ∉ A`, which is what closes the
`ZMod 0 = ℤ` hole that sinks the formal-conjectures version; the modulus
`n = 1` is admitted but harmless, since `ZMod 1` is trivial and the
resulting survivor set is finite, hence of logarithmic density 0. Second,
`erdos486_negative` follows from the `¬∃ d` conjunct of
`QuantitativeCounterexample` alone; the constants 177/200 and 49/50 are a
strengthening rather than load-bearing, though we confirm they do separate.

What this does **not** establish: that no other reading of Erdős's original
sentence is defensible. We checked Wang's statement against the corrected
site text and against the problem's own history, and we report that it
matches. That is a judgement, and we label it one.

### Empirical corroboration (not a proof)

`probes/probe486.py` re-derives the paper's quantitative claims
independently of the Lean development, in exact rational arithmetic for
the combinatorics and 60-digit directed-rounding arithmetic for the
transcendentals, with every comparison decided conservatively. It checks
the block lemma's conditional candidate bound, the Hoeffding and Markov
steps, the summability of the footprint bounds η_j, and the global
assembly arithmetic that produces 177/200 and 49/50. **All checks pass**
(`logs/probe486_output.log`).

A literal simulation is impossible and it is worth saying why: the
footprint bound only becomes strong for k in the hundreds, and
k = 2⌊√j/8⌋, so the relevant scales are Q = 2^j with j ~ 10^7. The probe
also records two facts about the shape of the argument that a reader
should know. First, the paper's conditional candidate bound holds
throughout its stated regime k ≥ 10^4 — we confirmed it exactly at
k = 10000, 10005, 12000 and 20000 — but *fails* for small k divisible
by 5. That is not a defect: the paper's per-candidate estimate
depends on the side condition √k ≤ k/100, which is exactly k ≥ 10^4, and
below that regime the estimate is simply not asserted. Second, the
epoch smallness condition Σ_{j≥j_0} η_j < 1/100 needs j_0 of order
10^8. The construction is genuinely asymptotic; nothing about it is
numerically realizable, and its correctness rests on the kernel replay,
not on any computation.

## 4. Trust base, and what we did not verify

Trusted: the Lean 4 kernel at v4.27.0, mathlib at the official v4.27.0
tag, lean4checker v4.27.0, and our hardware.

Not trusted and not relied upon: the repository's CI; any AI system; and
`486/paper.tex`, which we read as prose only — §2 above is our reading
and is labeled adjudication, not verification.

Not verified, stated plainly:
- The root module gap in Layer 6 (immaterial, but real).
- We did not verify mathlib itself. We did re-verify the pin's identity
  in this audit rather than inheriting it: the official
  leanprover-community/mathlib4 `v4.27.0` tag resolves to commit
  `a3a10db0e9d66acbebf76c5e6a135066525ac900`, which is what Wang's
  `lake-manifest.json` names and what our local checkout reports.
- We did not formalize the Behrend argument reconciling strict and
  inclusive activation (§5 of the paper); the development does not use
  it.
- We did not check Wang's claim of priority or novelty beyond the
  problem page, and we express no view on whether the construction is
  the simplest possible.
- erdosproblems.com returns 403 to automated requests, so the problem
  page, the comment thread and the proof-claim thread were read in a
  browser by hand (2026-08-01/02) rather than fetched by tooling. Every
  date, quotation and attribution in §1 was checked against the live
  pages that way. Nothing in the layers or §5 depends on them regardless:
  the fc findings are checked against fc's own source and the GitHub API,
  and Layer 5 is checked against the site statement as displayed.
- We have not verified Tao's assertion that the unthresholded version
  admits cheap counterexamples. We did not need to: our fc findings in
  §5 are stronger, independent of it, and machine-checked.

Repository licence: at the audited commit `61325b1` ShouqiaoW/erdos carried
**no LICENSE file**, so we vendored none of its source and this repository
still contains none; everything published here is our own audit code, plus
quotation for the purpose of review. The repository has since been placed
under the **MIT License** (© 2026 Shouqiao Wang, added 2026-08-02), which
does not change what we publish but does mean others may now reuse the
audited development directly.

## 5. Finding: the formal-conjectures statement of 486 is defective, and the obvious fix does not repair it

This section is about google-deepmind/formal-conjectures, not about
Wang. It is independent of his work and would stand if his claim were
withdrawn tomorrow.

At fc commit `735aee074327b8e78b0d92bb1ee8ea00937c3f51` (checked
2026-08-01), `FormalConjectures/ErdosProblems/486.lean` reads:

    theorem erdos_486 : answer(sorry) ↔
        ∀ X : (n : ℕ) → Set (ZMod n), ∃ d,
          {m : ℕ | ∀ n, (m : ZMod n) ∉ X n}.HasLogDensity d

**Defect A — the activation threshold is missing.** There is no `m > n`
condition, and the docstring drops "with m > n" as well. This is the
condition Tao identified as missing on 2026-01-11, after which the site
was corrected. The file's full commit
history, verified through the GitHub API:

    d4863de138  2025-12-29  feat(ErdosProblems/486): …
    a22f98abef  2026-01-06  chore: prefer `answer(sorry) ↔ …`
    1607ff44d8  2026-01-17  chore(ErdosProblems): clean up docstrings
    c252a41054  2026-07-16  refactor: split out FormalConjectures.Util

None of the three post-correction edits added the threshold; the
2026-01-17 edit touched the docstring itself. The official Lean
statement has carried a rendering the community's own discussion
identified as degenerate for over six months after the public
correction.

**Defect B — the modulus is unconstrained, so n = 0 is admitted.** In
Mathlib `ZMod 0 = ℤ`. Nothing in fc's statement requires `0 < n`, so the
single row `X 0 ⊆ ℤ` can delete an arbitrary set of naturals outright.
This is independent of Defect A and, unlike Defect A, it needs no appeal
to anyone's judgement about degeneracy. We certified it in Lean against
fc's own `Set.HasLogDensity`, transcribing fc's right-hand side verbatim
(`tools/MR486Defect.lean`):

    theorem fc_B_arbitrary (S : Set ℕ) :
        {m : ℕ | ∀ n, (m : ZMod n) ∉ badX S n} = S

    theorem fc_assertion_iff_all_sets :
        FCAssertion ↔ ∀ S : Set ℕ, ∃ d, S.HasLogDensity d

That is, fc's `erdos_486` asserts precisely that **every** subset of ℕ
has a logarithmic density. It has no arithmetic content at all.

**Defect C — the obvious repair still leaks.** Adding only the missing
threshold does not fix the statement, because for `0 < m` the modulus
`n = 0` satisfies `n < m` and is therefore always active. We certified
this too, since it is the fix a maintainer would naturally reach for:

    theorem fc_thresholded_B_arbitrary (S : Set ℕ) (hS : 0 ∉ S) :
        {m : ℕ | 0 < m ∧ ∀ n, n < m → (m : ZMod n) ∉ badX S n} = S

    theorem fc_thresholded_iff_all_sets :
        FCAssertionThresholded ↔ ∀ S : Set ℕ, 0 ∉ S → ∃ d, S.HasLogDensity d

All four theorems compile against fc at the commit above, on the same
toolchain and the same mathlib rev fc itself pins, and each depends on
axioms exactly `[propext, Classical.choice, Quot.sound]`. Reproduction:

    git clone https://github.com/google-deepmind/formal-conjectures
    cd formal-conjectures
    git checkout 735aee074327b8e78b0d92bb1ee8ea00937c3f51
    lake exe cache get
    lake build FormalConjecturesForMathlib.Data.Set.Density
    cp /path/to/MR486Defect.lean .
    lake env lean MR486Defect.lean

**A correct statement needs both guards**, as in

    {m : ℕ | 0 < m ∧ ∀ n, 0 < n → n < m → (m : ZMod n) ∉ X n}

Two remarks on scope, both important:

- **Wang's theorem does not resolve fc's `erdos_486`.** They are
  different statements, and fc's is a degenerate one. Any resolution PR
  against that file must fix the statement first. We say this because
  the temptation to bridge them will exist, and it should be resisted.
- fc's own `erdos_25` — the singleton special case of exactly this
  problem — carries both guards correctly (`∀ i, 0 < seq_n i` and the
  `x < seq_n i ∨ …` activation disjunct). So fc states the special case
  faithfully and the general case degenerately. That internal
  inconsistency is the cleanest evidence that this is an oversight
  rather than a deliberate reading, and it is the argument we would lead
  with in the issue.

This is a live instance of the failure mode our closed-status census
tracks (finding F7): a formal statement quietly diverging from the
intended problem, in the official repository, surviving multiple edits
and a refactor. It is also the reason we did not build an fc bridge for
this audit — one cannot faithfully bridge to a broken statement.

## 5b. The threshold is provably necessary

Section 5 shows that admitting `n = 0` makes the formal-conjectures
statement contentless. The other guard is independently essential, and we
have since proved it: with the modulus required positive but the
activation threshold dropped, the assertion is FALSE. Machine-checked in
`tools/MRThreshold.lean`, 24 theorems, no `sorry`, axioms exactly the
standard three, with a namespace sweep covering 93 theorems and a
`lean4checker` pass over the compiled module.

This settles all four guard combinations, so the analysis in Section 5 is
complete rather than anecdotal. The claim itself was made by GPT-5.2 and
endorsed by Tao on 2026-01-11; only the proof is ours, and it confirms
their assessment that such a counterexample is easy to build.

## 6. Credit and priority

The mathematics is Shouqiao Wang's, with his disclosed tooling (GPT-5.6
Sol); he is the sole claimant, 2026-07-16, and posted the formalization
2026-07-17 in direct response to Bloom's request for one. The problem
and its lineage belong to Erdős, and to Davenport–Erdős, Besicovitch and
Behrend in the surrounding results. The activation-threshold
clarification belongs to Liam Price, who asked, and Terence Tao, who
checked [Er61] and answered the same day. The problem site is Thomas
Bloom's.

Ours is only the verification: the kernel replay, the axiom gate, the
statement audit against the corrected problem, the external replay, the
corroboration probe, and the formal-conjectures findings in §5. We did
not contribute to the resolution of 486 and do not claim to have.

## 7. Reproduction

    git clone https://github.com/ShouqiaoW/erdos && cd erdos
    git checkout 61325b10bbdc29f4fb5e0618b414b9f2189333ad
    cd 486/lean
    lake exe cache get && lake build
    lake env lean MRAxioms.lean      # our 3-line axiom manifest
    lake env lean AxiomSweep.lean    # our single-pass namespace sweep

External replay (per module, to stay inside 16 GB):

    git clone --branch v4.27.0 https://github.com/leanprover/lean4checker
    cd lean4checker && lake build && cd -
    for f in Erdos486/*.lean; do
      M=$(echo "$f" | sed 's|/|.|g; s|\.lean$||')
      lake env ../../lean4checker/.lake/build/bin/lean4checker "$M"
    done

Corroboration probe: `python3 probe486.py` (needs mpmath).

Our audit code — `tools/MRAxioms.lean`, `tools/AxiomSweep.lean`,
`tools/MR486Defect.lean`, `probes/probe486.py`, `pods/pod_build.sh`
— is in this repository under Apache 2.0. None of Wang's source is
vendored, as his repository carries no license.

All logs quoted above are in `logs/` of this repository.


---

## Addendum (2026-08-02): kernel advisories and tooling errata

**Kernel soundness advisories.** Lean 4 kernel soundness bugs #14576 and
#14484 (July 2026) permit axiom-free proofs of False invisible to
`#print axioms`, reachable only via kernel-direct metaprogramming; the
audited toolchain predates the fixes, and same-kernel replays
(lean4checker/lean4lean) do not detect the class. Checked 2026-08-02:
the audited Erdos486 development contains **zero kernel-direct
metaprogramming constructs** (no `run_cmd`, `run_elab`, `addDecl`,
`setEnv`/`modifyEnv`, `initialize`); its type declarations use ordinary
frontend syntax. No path to the bug class; this report's verdict is
unaffected.

**Tooling errata.** The archived `tools/AxiomSweep.lean` is frozen
as-run and lacks a zero-theorem guard (a reuser with a mistyped
namespace would get a vacuous PASS). The shipped logs show
`theorems swept: 492`, so the defect did not affect these results. A
hardened successor lives in our audit kit.
