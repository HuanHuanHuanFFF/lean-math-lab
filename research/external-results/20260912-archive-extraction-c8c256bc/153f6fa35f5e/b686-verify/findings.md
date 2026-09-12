# B686 bounded Lean reproduction and audit findings

Date: 2026-09-08 UTC

The result is source and static audit evidence only. No target theorem was accepted by Lean, no target `lake build` completed, and no `#print axioms` output was obtained. The exact v4.29.1 toolchain was installed and version-checked through an isolated process shim, then removed after preserving hashes and logs because the workspace had no free disk space.

## Scope and source identity

The inspected checkout is:

`/workspace/scratch/c6b148d48b6d/external-research/repos/lean-proofs`

- Git state at inspection and final check: detached `HEAD`, clean.
- Source `HEAD`: `aff1d30b3b1c6bd705810fa4d588b03940fb31df`.
- `lean-toolchain`: `leanprover/lean4:v4.29.1` (SHA-256 `7dc000621e0046d1aada809e2b7177e64454645cf4c741e9daaf79c99ec2e7a2`).
- `lakefile.toml` SHA-256: `e8b665ea4b011dd5698379dc710f94e1ebf97fa3e13eaa1dc0430bb9c13f85c7`.
- `lake-manifest.json` SHA-256: `f4c3e1fea9e745548c15b78b91015489277625c3dee15ab1ebe8bf6acf57b320`.

The main target is `Erdos686.Erdos686Variant.no_four_solution_of_quadratic_strip` in module `ErdosProblems.Erdos686CenterComponentLogStrip`, at source lines 1239–1242:

```lean
theorem no_four_solution_of_quadratic_strip
    {k n d : ℕ} (hk : 16 ≤ k) (hd : k ≤ d)
    (hstrip : 18 * d ≤ k ^ 2) :
    blockProduct k (n + d) ≠ 4 * blockProduct k n := by
```

The two additional same-commit closures requested for inspection were included:

- `Erdos686.Erdos686Variant.no_even_tail_solution_universal` in module `ErdosProblems.Erdos686EvenTailSupply` (lines 425–431), for every even row `2*r` with `2 ≤ r` and `d` above its supplied effective threshold.
- `Erdos686.Erdos686Variant.exists_canonicalOwnerSystem` in module `ErdosProblems.Erdos686CanonicalOwnerMatrix` (lines 630 onward), for `4 ≤ k`, `k ≤ d`, and an exact ratio-four equation.

## Pinned versions and dependency setup

The checked-in manifest has these direct pins:

| Package | Resolved revision | Input revision |
| --- | --- | --- |
| mathlib | `5e932f97dd25535344f80f9dd8da3aab83df0fe6` | `v4.29.1` |
| PrimeNumberTheoremAnd | `d7f9e2bfdcc7e34dfb9328b7494a6d424ff50c96` | same |
| plausible | `83e90935a17ca19ebe4b7893c7f7066e266f50d3` | `main` |
| LeanSearchClient | `c5d5b8fe6e5158def25cd28eb94e4141ad97c843` | `main` |
| importGraph | `48d5698bc464786347c1b0d859b18f938420f060` | `main` |
| proofwidgets | `4dd0959c44d1af0462bd604d0f87c5781307d709` | `v0.0.95+lean-v4.29.1` |
| aesop | `7152850e7b216a0d409701617721b6e469d34bf6` | `master` |
| Qq | `707efb56d0696634e9e965523a1bbe9ac6ce141d` | `master` |
| batteries | `756e3321fd3b02a85ffda19fef789916223e578c` | `main` |
| Cli | `7802da01beb530bf051ab657443f9cd9bc3e1a29` | `v4.29.0` |
| PrimeCert | `2030255c7e3efb07074171879ec920b500ee0e58` | `v4.29.0` |
| leancert | `6237c769e79d4cefec17f5f3c40d288a9baa01e5` | `v4.29.0` |
| checkdecls | `3d425859e73fcfbef85b9638c2a91708ef4a22d4` | unspecified |
| LeanArchitect | `719ea595bb100be70d0b53b01eca828862d9f860` | `v4.29.0` |

The target's direct imports are `Erdos686ReflectedAlignmentSquareLift`, `Erdos686MatchingCompression`, `Erdos686CenteredRatioWindowSharp`, and three Nat factorial/choose Mathlib modules. EvenTailSupply directly imports `Erdos686EvenTailCoefficientCertificate` and `Mathlib.RingTheory.Localization.Integral`; CanonicalOwnerMatrix directly imports `Erdos686CanonicalOwnerCleaning`.

`lake update` was attempted with the pinned project manifest. It tried to clone mathlib and exited 1 after Git exited 128. A traced retry recorded the concrete failure `fatal: write error: No space left on device` during pack indexing, followed by `fatal: fetch-pack: invalid index-pack output`.

A source-only shared working copy was then materialized in `.lake/packages/mathlib` from an already available 4.33 clone, checked out detached at the exact manifest revision:

- `.lake/packages/mathlib` `HEAD`: `5e932f97dd25535344f80f9dd8da3aab83df0fe6`.
- Working tree clean, non-shallow, with the existing alternate object store.
- Size: approximately 114 MiB of source.
- `.lake/packages` contains only `mathlib`; PrimeNumberTheoremAnd and the inherited packages were not materialized.
- No `.olean`, `.ilean`, generated C, or native library files were present under `.lake` after this setup.
- `Mathlib.lean` at this revision has SHA-256 `f753b8e3397e7f6039101615b07d8a316023ad7e1eda5b345504435a0fcf8df6` and imports the full generated Mathlib umbrella.

## Exact source import closure

The closure was traversed recursively from all three requested roots with the owned `static_audit.py` script. It resolves source modules in the checkout and `.lake/packages/mathlib`, while recording unresolved imports instead of treating them as available.

| Root | Total resolved source modules | Project modules | Mathlib modules |
| --- | ---: | ---: | ---: |
| `ErdosProblems.Erdos686CenterComponentLogStrip` | 7,894 | 22 | 7,872 |
| `ErdosProblems.Erdos686EvenTailSupply` | 7,890 | 18 | 7,872 |
| `ErdosProblems.Erdos686CanonicalOwnerMatrix` | 7,878 | 6 | 7,872 |

Across the union there are 7,899 resolved source modules: 27 project modules and 7,872 Mathlib modules. The unexpectedly large Mathlib count is caused by the project module `ErdosProblems.Erdos686`, which imports `Mathlib` and therefore reaches the generated umbrella rather than a narrow Mathlib slice.

The 27 project modules in the union are:

```text
ErdosProblems.Erdos686
ErdosProblems.Erdos686CanonicalOwnerCleaning
ErdosProblems.Erdos686CanonicalOwnerMatrix
ErdosProblems.Erdos686CenterComponentLogStrip
ErdosProblems.Erdos686CenteredRatioWindow
ErdosProblems.Erdos686CenteredRatioWindowSharp
ErdosProblems.Erdos686ConstantQuotient
ErdosProblems.Erdos686ConstantSurvivors
ErdosProblems.Erdos686EvenK
ErdosProblems.Erdos686EvenTailCoefficientCertificate
ErdosProblems.Erdos686EvenTailRunge
ErdosProblems.Erdos686EvenTailSupply
ErdosProblems.Erdos686ExceptionalNine
ErdosProblems.Erdos686FourteenStrip
ErdosProblems.Erdos686LargeEscape
ErdosProblems.Erdos686LargeKWedge
ErdosProblems.Erdos686MatchingCompression
ErdosProblems.Erdos686PadicLift
ErdosProblems.Erdos686PrimeObstruction
ErdosProblems.Erdos686QuotientConfinement
ErdosProblems.Erdos686Reduction
ErdosProblems.Erdos686ReflectedAlignmentSquareLift
ErdosProblems.Erdos686ReflectionCompression
ErdosProblems.Erdos686ReflectionOwnerCorrelationAudit
ErdosProblems.Erdos686SmallBranch
ErdosProblems.Erdos686SmallCore
ErdosProblems.Erdos686SmallPrimeBand
```

There are 155 unresolved module names. They are primarily Lean core/Std, Batteries (50), Lean (57), Aesop (7), ProofWidgets (9), Qq (5), Plausible (6), Std (5), Init (5), ImportGraph (2), LeanSearchClient (1), and a small set including `Data.Fin.VecNotation`. The import-line parser also reports `A`, `B`, `Z`, `all`, `cycle.`, `hierarchy.`, and `statements*` from prose in generated Mathlib umbrella comments; these are parser artifacts, not package declarations. The complete list and every resolved source hash are in `static-closure.json`.

## Static forbidden-source check

The owned scanner was corrected before the final run to preserve apostrophes in identifiers such as `map'` while still masking character literals. It masks nested block comments, line comments, strings, and character literals, then checks the token set `sorry | admit | native_decide | axiom | constant`. Intentional `#print axioms ...` audit commands are excluded from this policy count; they are separately counted below. This remains a lexical check, not Lean parsing or kernel evidence.

- Reachable project source: 27 modules, zero forbidden-token findings after masking and excluding the audit commands.
- Reachable Mathlib source: 7,872 modules, 21 lexical hits in 8 files. Reviewed contexts are Mathlib's quoted `sorry` syntax used to display goals, `#guard_msgs` examples, the `Proof.sorry` constructor and formatter, registered linter option text, and theorem names such as `rec.constant`; they are external Mathlib source and do not constitute findings in the B686 project modules.
- Therefore the aggregate JSON field `forbidden_clean` is false because it includes those external Mathlib lexical hits. The project-only result is clean; this does not certify the imported package axioms.

The machine-readable closure, source hashes, and findings are in `static-closure.json`; the concise rerun output is in `static-audit-summary.json`.

## Axiom audit status

The source contains explicit `#print axioms` commands, but none ran because the dependency closure never reached a successful Lean invocation. In the project closure there are 108 such commands across 11 files. Relevant guards include:

- `Erdos686CenterComponentLogStrip.lean:1493–1508`, including `no_four_solution_of_quadratic_strip` at line 1501.
- `Erdos686EvenTailSupply.lean:433–443`, including `no_even_tail_solution_universal` at line 443.
- `Erdos686CanonicalOwnerMatrix.lean:695–714`, including `exists_canonicalOwnerSystem` at line 714.
- `Erdos686EvenTailCoefficientCertificate.lean:388–394`.
- `Erdos686EvenTailRunge.lean:241–245`.

No transitive `#print axioms` result, no `lake build` result, and no kernel-level theorem acceptance should be inferred from these source commands or from the lexical scan. The presence or absence of axioms in the complete transitive environment remains unverified.

## Toolchain and failure evidence

An isolated Elan 4.2.4 was used under the task-owned directory. Its installer reported version `elan-init 4.2.4 (227caca13 2026-08-25)`. The command

```text
elan toolchain install leanprover/lean4:v4.29.1
```

returned status 0 and downloaded the requested release, but Elan printed `error reading lean version` because direct Lean startup hit the container's process `/proc/<pid>/exe` lookup mismatch. Direct invocation recorded:

```text
error: failed to locate application
```

For diagnosis only, the audited process-local shim from B677 was copied into the owned evidence directory and compiled with:

```text
cc -shared -fPIC -O2 -Wall -Wextra -Werror lean-proc-self.c -o proc-self.so
```

With `LD_PRELOAD` set to that shim, the installed binaries reported:

```text
Lean (version 4.29.1, x86_64-unknown-linux-gnu, commit f72c35b3f637c8c6571d353742168ab66cc22c00, Release)
Lake version 5.0.0-src+f72c35b (Lean version 4.29.1)
```

Recorded hashes:

- Installer archive: `42b94d4244e8353142c456ec0e4ca6528fd898a6c604d4059f494e706e431f63`.
- `elan` wrapper binary: `e0f4b30b29c565625189744847dfef5f132b6322c5e452dbebfeae780c9749e5`.
- Lean 4.29.1 executable before cleanup: `3e0d0d3d801675359f2d4cf9815bfdb417b20b92fdd9d48b3b14c95bbae28bbf`.
- Lake 4.29.1 executable before cleanup: `a608ff084d7e2af228b92a29d7c2fd083ba0580e46889175ec74a81678c98359`.
- Shim C source: `44b1a436ea29e45da83bb39ca411b529e2881f4f7c5093d2e9ccf05ff4c8e30d`.
- Shim shared object: `6ffe1fa82905f89e90959b638f3479873e252f0faa573be690511f2da3e2f544`.

The complete pre-cleanup file hash list is `toolchain-artifact-hashes-before-cleanup.txt`. The exact toolchain directory was then removed with Python `shutil.rmtree` at:

`/workspace/scratch/c6b148d48b6d/external-research/b686-verify/elan`

The postcondition was checked and the directory is absent. The cleanup log is `toolchain-cleanup.txt`; no shared Elan directory, source checkout, or other project was removed. The source checkout remains clean, and the only repository-side setup retained is the source-only `.lake/packages/mathlib` checkout described above.

## Evidence index

All paths below are under `/workspace/scratch/c6b148d48b6d/external-research/b686-verify` unless stated otherwise:

- `checkpoint-initial.md`: initial source and pin checkpoint.
- `progress-to-root.txt`: install, procfs, disk, and source-only clone progress.
- `static_audit.py`: corrected lexical closure scanner.
- `static-closure.json`: roots, closure counts, unresolved imports, source hashes, and findings.
- `static-audit-summary.json`: final scanner output.
- `toolchain-install-v4.29.1.log`, `lean-direct-version.log`, `lean-version-shim.log`, `lake-version-shim.log`, `lake-update-v4.29.1.log`, `mathlib-clone.log`: exact command logs.
- `toolchain-artifact-hashes-before-cleanup.txt`, `current-sha256.txt`, `toolchain-cleanup.txt`: version/hash and cleanup evidence.
- `support/lean-proc-self.c`, `support/proc-self.so`: process-local startup shim used only to obtain version output.

Root handoff correction: the declarations live in namespace `Erdos686.Erdos686Variant`; module names are distinct. An additional raw `unsafe` token scan over all 27 project modules returned no hits (`unsafe-project-scan.json`).
