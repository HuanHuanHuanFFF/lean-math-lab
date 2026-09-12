# Bounded external formal-source scan

Static scan completed 2026-09-08. No Lean builds, downloads, checkout mutations, or writes under any `lean-math-lab*` directory were made. The only report written is this file. The scan covered the current working trees and relevant path history in `lean-genius`, `formal-conjectures`, and `conjectures-tasks`; no exact solved proof or exact counterexample was found for targets 677, 686 `variants.four`, or 699.

## Revisions, provenance, and toolchains

| Repository | Current revision (author/date/subject) | License/toolchain evidence |
|---|---|---|
| `rjwalters/lean-genius` | `f9c62750e76180f15c7bd6c5759be320d7feffdc`; Robb Walters, 2026-08-18; `erdos-85: FINAL_PROOF_OUTLINE v2 (consolidation) + archive v1a–v1d (#43716)` | No repository `LICENSE`, `COPYING`, or `NOTICE` found in the checked tree. `proofs/README.md` names Lean `leanprover/lean4:v4.31.0`; `proofs/lakefile.toml` pins mathlib `9a9483a92959bc92bd6a60176dd1fe597298c1f8`. |
| `google-deepmind/formal-conjectures` | `c7f31d5fd3d2ca3d69979f2d213eb9b58fe956ae`; Paweł Kwaczyński, 2026-09-08; `Erdős 97: fix coordinates of B₂ in the three_equidistant witness (#5185)` | Apache 2.0 header in each target file and repository license. Current `lean-toolchain` is Lean `v4.33.1`; current manifest/lake configuration uses mathlib commit `0df444a360eaa60ab8c11dca51a86af692955474`. |
| `conjectures-io/conjectures-tasks` | `d9a67b509c5a8b220ba262c1c7ce26f61f52763a`; kingcharlezz, 2026-09-08; merge of `reviewed-pool-release-20260908` | No repository license file found at the checked depth. Task bundles pin the Formal Conjectures source separately (below). |

The repositories are partial/promisor clones. Current files and available commit metadata were read; some old historical blobs were unavailable without lazy fetch. This limits verbatim comparison with every old revision, but does not affect the current-source conclusions below.

## Exact Formal Conjectures declarations

`formal-conjectures` source paths are `FormalConjectures/ErdosProblems/677.lean`, `686.lean`, and `699.lean`. All import `FormalConjecturesUtil` and all three files are Apache 2.0 licensed.

| Target | Current declaration and boundary | Current proof status |
|---|---|---|
| 677 | `Erdos677.erdos_677` at `677.lean:40–43`: `∀ (m n k : ℕ), k > 0 → m ≥ n + k → lcmInterval m k ≠ lcmInterval n k`. | Category `research open`; body is `by sorry`. The preceding concrete collision lemma at lines 32–34 is only the two known unequal-parameter examples. |
| 686 four | `Erdos686.erdos_686.variants.four` at `686.lean:57–61`: `answer(sorry) ↔ ∃ᵉ (k ≥ 2) (n : ℕ) (m ≥ n+k), (4 : ℚ) = product(m,k)/product(n,k)`. | Category `research open`; body is `by sorry`. |
| 699 | `Erdos699.erdos_699` at `699.lean:37–44`: `answer(sorry) ↔ ∀ n i j, 1 ≤ i → i < j → j ≤ n / 2 → ∃ p, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (Nat.choose n i) (Nat.choose n j)`. | Category `research open`; body is `by sorry`. |

The nearby declarations are meaningful mismatches, not solutions to these targets:

* 686 `four_two` (lines 68–80) has a complete proof only for the fixed value `k = 2`; `four_three` (lines 89–93) is marked `research solved` but its body is still `by sorry`, and is only the fixed value `k = 3`. `nine` (lines 100–107) is a genuinely proved existential for constant 9 with witness `k=3,n=11,m=25`. None proves or refutes the variable-`k` constant-4 target.
* 699 `sylvester_schur` (lines 27–31) is a separate single-binomial theorem, with a linked external formal-proof URL, but its current body is also `by sorry`. It does not establish a prime dividing the gcd of two binomial coefficients. `erdos_szekeres_strengthening` (lines 48–56) is a separate strict `p > i` finite-exception statement and is open.

`FormalConjecturesUtil/Answer.lean` documents and implements `answer(sorry)` as `True` under the default `google.answer = .alwaysTrue` setting (the answer elaborator is around lines 136–140). Thus the mathematical content of the 686-four and 699 declarations is the right-hand proposition, while their Lean type is literally `True ↔ P`.

## Exact task bundles and polarity

Every relevant current task manifest has `classification: DIRECT_PROP`, permitted axioms only `propext`, `Quot.sound`, and `Classical.choice`, and `repository_commit: 8432eac998110a563e03df65a28c117e97c8c142`. The source theorem is listed under `forbidden_dependencies`; a submission cannot simply invoke the sorry-backed declaration.

| Target | Formalized task ID / generated type hash | Counterexample task ID / generated type hash | Source type hash |
|---|---|---|---|
| 677 | `fc-8432eac9-erdos677-erdos-677-76ff90e091-formalized-v1` / `d8b4d613ce4725ad35aa8fcd437a819ff7a65c62b0e6b2d4c7d4d7e6f3790f22` | `fc-8432eac9-erdos677-erdos-677-c378adf3c2-counterexample-v1` / `6af41730e950bd6074a42df5eb8bb33ae47e640fad9e1da35a3ff216138e1c47` | `d8b4d613ce4725ad35aa8fcd437a819ff7a65c62b0e6b2d4c7d4d7e6f3790f22` |
| 686 four | `fc-8432eac9-variants-four-ae7cfb4a62-formalized-v1` / `ba400ba0844a1182de84df5aa217255c4343091b3aec968e35793bb0e75e8db2` | `fc-8432eac9-variants-four-ecbc35a890-counterexample-v1` / `cae2f5de9d6a3b7f8694319a5baf6359a0889013314de022a467f203905fec3c` | `ba400ba0844a1182de84df5aa217255c4343091b3aec968e35793bb0e75e8db2` |
| 699 | `fc-8432eac9-erdos699-erdos-699-6cbf8d0b4b-formalized-v1` / `f5eee958e682d353b94818dd365b7f9a090f1cb6d7361dfe754876412168b217` | `fc-8432eac9-erdos699-erdos-699-ee0608c704-counterexample-v1` / `9bec1394a0fd55dbcd3abff5a38b2bb40130bbb0b4a164e96bc24886d8103994` | `f5eee958e682d353b94818dd365b7f9a090f1cb6d7361dfe754876412168b217` |

The task `Challenge.lean` files are proof scaffolds: the formalized modes say `theorem target : fcTypeOfName% "..." := by sorry`; counterexample modes say `theorem target : ¬ (fcTypeOfName% "...") := by sorry`. For 677, the named source type is already `P`, so the modes ask `P` and `¬P`. For 686 four and 699, the named source type is `True ↔ P`, so the modes ask `¬(True ↔ P)` for counterexamples, definitionally equivalent to `¬P`. The task builder records this relation as counterexample=`logical-negation`, formalized=`definitionally-equal`.

## `lean-genius` source audit

### 677: `proofs/Proofs/Erdos677Problem.lean`

This is a standalone Mathlib file and does not import the Formal Conjectures theorem. It defines a global `lcmInterval` at lines 33–36 using `Finset.range k` and a fold, then defines `ErdosProblem677` at lines 40–42. That definition is never proved. It differs from the Formal Conjectures target's `Finset.lcmInterval` namespace/function, so this file is not a drop-in proof of the task.

There are actual local proofs: the two concrete unequal-parameter collisions (`49–50`), `lcmInterval` recursion/divisibility/positivity (`79–208`), `lcmInterval_two` (`212`), fixed-`k` results `erdos677_k1` and `erdos677_k2` (`221–235`), factorization (`237`), a large-`m` result (`256`), and several fixed `k=3` cases (`268–347`). The theorem at line 322, `lcmInterval_two_three_collision : lcmInterval 2 3 = lcmInterval 3 3`, is a near miss: its two intervals use different starts but does not satisfy the main theorem's separated-range premise in the relevant orientation.

The file contains one substantive custom axiom, `thue_siegel_finiteness` at lines 71–74. There are no `sorry` or `admit` tokens. Metadata (`src/data/proofs/erdos-677/meta.json`) reports zero sorries, `axiomCount=2` including this axiom and the `Lean.ofReduceBool` mechanism used by `native_decide`, and status `axiomatized`; the main problem status remains open. The recorded v4.31 spike result is `Erdos677Problem FAIL`, with API errors in `fold_insert`, missing `Finset.not_mem_range_self`, a gcd rewrite, and an unfinished factorization base case (`proofs/final.out` around 5388 onward; corresponding row in `proofs/spike-logs-full/results-full.tsv`). No fresh build was attempted.

### 686: `proofs/Proofs/Erdos686Problem.lean`

This standalone file defines a natural-number `consecutiveProduct` over `Finset.Icc 1 k` (lines 40–40), a rational `ratioExpression` (79), and its own `Erdos686Conjecture` definition (109). It has no axiom, `sorry`, or `admit`; metadata reports zero explicit axioms/sorries (with the usual `Lean.ofReduceBool` caveat for `native_decide`).

The strongest reusable content is structural: factorial/binomial identities (`51–77`), positivity/monotonicity (`114–146`), factor/product divisibility (`151–175`), shifted integer ratios and gap bound (`173–200`), rational-to-natural quotient (`203–208`), and injectivity (`212–217`). It proves examples only for N=2, 6, 3, and 10 (`222–244`). `representable_set_infinite` (`280–284`) proves infinitude for fixed `n,k≥2` through shifted multiples; it does not prove every N is represented and contains no N=4 result. There is no exact `variants.four` declaration, witness, or refutation in this repository. The recorded v4.31 spike row says `Erdos686Problem PASS`, but that only concerns this standalone structural file and cannot establish the Formal Conjectures target, which uses a different namespace/source and current FC v4.33.1 toolchain.

### 699: `proofs/Proofs/Erdos699Problem.lean`

This standalone Mathlib file defines the weak common-prime predicate and statement at lines 60–75, and the strict predicate at lines 64–66. It assumes a custom `sylvester_schur` axiom at lines 41–48, which concerns a prime in one coefficient only. There are no `sorry` or `admit` tokens; metadata reports one substantive custom axiom, zero sorries, and status `axiomatized` (again with `Lean.ofReduceBool` in computational proofs).

Concrete proofs include weak examples `(6,2,3)` (`117–123`), `(10,2,5)` (`139–145`), and the exact triple `(28,5,14)` weak witness (`187–193`). The latter computes `gcd(C(28,5), C(28,14)) = 1080` and supplies `p=5`. The theorem `counterexample_28_5_14_strong` (`199–204`) refutes only the strict predicate `p > i`; it does **not** refute the Formal Conjectures weak target because `p=5=i` satisfies `p ≥ i`. There is no proof of the universal weak statement and no weak counterexample. The recorded v4.31 spike row is `Erdos699Problem FAIL`; the failure is an API mismatch in `Nat.Prime.dvd_of_dvd_pow` calls within `max_prime_1080_is_5` (also recorded in `proofs/batch2/diag-W0ae.txt` around 1247–1259). No fresh build was attempted.

## Relevant history and PR evidence

No branch name or available path history in `lean-genius` contains an exact proof of `variants.four`, the FC 677 theorem, or the FC 699 weak gcd theorem. The relevant `lean-genius` path commits are:

* 677: `c3b019fff9bd3bce6df87b724378c295b546f6bc` (Robb Walters, 2026-01-26, initial formalization with several axioms); `d7f059e4900ec800d2fa800f7753d253619cce54` (Robb, 2026-05-03, k=1/k=2 and factorization); `e550c6737c50d68673ea56b8f98df2162dcb2810` (Robb, 2026-05-13, axiom-free k=3 cases); `98630041efbcca1a31cee1c2aca8c035c2e9af57` (Robb, 2026-07-17, v4.31 migration). These remain partial results plus the custom Thue–Siegel axiom.
* 686: `c225c8b385684ed1ab1d5980da1ca3255ad9d019` (Robb, 2026-01-26, initial ratio formalization with axioms); `08fda98e20e0ce764f58988ef58d5e6868d09c96` (Robb, 2026-02-06, enhancement); `f590a290d3396b20662f6f583b4d8831465c4c83` (Robb, 2026-02-07, binomial identities/examples); `5c802f2315c18c029c7870341cc66d9bc4fdeadd` and `c4038a570f3aa350f9511ae0581ffeac3b2d481f` (Robb, 2026-03-24, axiom elimination); `515ea3d34cf5d5e5e472f0251edb073ea5ecb0f1` (Robb, 2026-06-23, audit-related revert). No constant-4 result appears.
* 699: `f3d30d46a6c8afae4fb71ccbf2321fec5422c6c3` (Robb, 2026-01-14, early placeholder); `58d59bef80d9871a456ce89a8b14c70005001ebb` (Robb, 2026-01-17, definitions/axiom and concrete examples); `ca19c29928657af30fb72d240ac9f5182d79967e` (Robb, 2026-02-07, removed placeholder `True` axioms); `eba26943c39041b90596c80988bf38838d65d61a` (Robb, 2026-02-10, proved the concrete max-prime lemma); `98630041efbcca1a31cee1c2aca8c035c2e9af57` (Robb, 2026-07-17, v4.31 migration). The file remains an axiom-backed collection of examples, not a universal weak theorem.

Relevant Formal Conjectures path history confirms the same boundary: 677 was added by `c1249b6a157bb39e5120cfe09ef084ae643d4d74` (HerrLaal, 2025-12-02) and remains open; 686 was added by `0e3a38b41e9468baebc1c73cde7a36dfb976d267` (Sami Boukortt, 2025-10-13), with `35aabe285d0163d13283d43bf063f2386c360471` (Miklós Z. Horváth, 2026-03-02) adding variants, `11f8ecbc4f69c5d09dd33e524d2bbf87464fe35d` (Miklós, 2026-03-20) merely marking `four_three` solved while leaving its body `sorry`, and `5ed828e2855790893d8287fbfd10c096e2e593d8` (Will Blair, 2026-06-26) proving only the constant-9 witness; 699 was added by `a94857215a00c5c29cd8a4c53c8b703fffb953b3` (Cong Lu, 2026-01-04), and `2e6688c479e126d4cae76dfa06120d59c34b2796` (Allen, 2026-05-10) linked the separate Sylvester–Schur proof. The linked theorem is not the weak gcd target.

The task bundles were added as reviewed scaffolds: 686-four in `a5c5e698ade9299ab8654324bf451905bec8cea2` (kingcharlezz, 2026-08-04), 699 in `aa9a2c815f2456fe4bb0ee02dc1b9febb103f610` (kingcharlezz, 2026-08-12), and 677 in the tier-2 publication sequence beginning at `d3801a0b5555de45169a3e7118cdf6af04aa4ed5` and readable bundle commit `d5437a032bf81d545710439e20fadb7cc8ccb0f1` (2026-08-03/04). `802f60b888abc19e4f5708c6b58f17b114703477` (2026-09-02) repinned the pool to FC `8432eac9`; `275ef4824c41d41f97ac4e9fff95ca471de9341d` (2026-09-08) published the reviewed 10 MiB proof contracts. These are challenge scaffolds, not proof submissions.

## Reuse assessment

The 686 standalone divisibility/shift lemmas are the most plausible reusable material, but they use their own `Erdos686.consecutiveProduct`, require adaptation to the exact FC theorem and current FC v4.33.1/mathlib, and do not contain a constant-4 construction. The 677 fixed-k lemmas may support bounded subcases after reconciling the two `lcmInterval` definitions, but the custom Thue–Siegel axiom is not a proof of the universal target. The 699 `(28,5,14)` result is useful only as evidence against a strict strengthening; its weak witness directly shows why it cannot serve as a counterexample to the task target.

## Finding

There is no source-backed solved statement, sorry-free exact proof, or valid exact counterexample for 677, 686 `variants.four`, or 699 in the scanned current files and relevant available history. The exact task boundaries are the pinned Formal Conjectures declarations above; in particular, “solved” category labels and nearby strict/fixed-parameter variants must not be reported as solving the requested targets.
