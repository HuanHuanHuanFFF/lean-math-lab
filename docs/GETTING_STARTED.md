# Build, reuse, and verification

[← Lean Math Lab](../README.md)

Run the commands below from the repository root. Research tasks have separate verification entries documented in their task records; the standard CI checks the accepted library, tests, and examples.

## Verify locally

Install [elan](https://github.com/leanprover/elan#installation), then clone this
repository. The committed `lean-toolchain` selects Lean **4.33.1**; mathlib is
pinned to **v4.33.1**, with exact dependency commits in `lake-manifest.json`.

```sh
git clone https://github.com/HuanHuanHuanFFF/lean-math-lab.git
cd lean-math-lab
lake exe cache get   # optional: avoids compiling mathlib from source
lake build
lake env lean Tests/A071999.lean
lake env lean Tests/A071999Audit.lean
lake env lean Examples/ReusingA071999.lean
```

`lake build` builds the library; run the other commands to check regressions,
the independent transcription checks, and the usage example. The [GitHub workflow](../.github/workflows/lean.yml) runs these checks explicitly on pushes and pull requests to main. Cache download failure can be handled
by building from source, which takes longer.

The Windows scripts in `scripts/` use a pre-existing repository-local elan
installation under `.tools/elan` and keep caches on the same drive. They are
convenience entry points for this workspace, not an installer. For a fresh
checkout with a regular elan installation, use the standard commands above.

For the complete suite on Windows or a machine with PowerShell 7 installed, run
`pwsh -File scripts/verify.ps1`. It builds the library and automatically checks
all Lean files in `Math/`, `Tests/`, and `Examples/`; CI uses the same script.
Use `-List` to inspect the scope without running Lean. Before the build, this
entry point runs `scripts/check-lean-policy.py`; it lexically removes Lean
comments and strings, then rejects `sorry`, `admit`, `sorryAx`, `native_decide`,
and source-level `axiom`/`constant` declarations in the accepted directories.
The policy gate is not a substitute for kernel checking or transitive
`#print axioms` audits. Research tasks remain outside the standard build and
use their own recorded verifiers, such as the B686 round-5 checker.

In a Linux Work container where Lean reports `failed to locate application`
because `/proc/<own PID>/exe` is unavailable, use the scoped launcher:

```sh
bash scripts/lean-work.sh lake build
bash scripts/lean-work.sh lake env lean research/tasks/B686-Four/lean/K5Reduction.lean
```

It uses the selected elan toolchain and, only for that startup failure, compiles
a small compatibility library with a local C compiler. The library retries a
unavailable own-process executable link through `/proc/self/exe`; it leaves other
paths and the Lean kernel unchanged. Build outputs remain in ignored `.tools/`.
Ordinary environments use the selected tool directly.

## Use in another Lean project

Use the same Lean version, then add this to your project's `lakefile.toml`:

```toml
[[require]]
name = "lean_math_lab"
git = "https://github.com/HuanHuanHuanFFF/lean-math-lab.git"
rev = "v0.1.0"
```

Run `lake update` in that project and import the module:

```lean
import Math.A071999

example (n : ℕ) :
    (Math.A071999.matrix n).det =
      ∏ i ∈ Finset.Icc 1 ((n - 1) / 2),
        (1 - (i : ℤ) * ((n : ℤ) - i)) :=
  Math.A071999.det_matrix n
```

For an exact reproducibility record, pin a full commit SHA and commit your
consumer project's lockfile. See the [reuse guide](../docs/REUSE.md) for the public
API, indexing convention, compatibility limits, and extension plans.

## Evidence and contribution boundaries

- [Result and original verification](../research/F1-A071999.md)
- [Independent Astra / xhigh pressure review](../research/F1-A071999-pressure-review.md)
- [Executable independent checks](../Tests/A071999Audit.lean)
- [Candidate backlog](../research/2026-09-06-数学研究候选清单.md): research leads, not completed results

The final theorem's audited axioms are `propext`, `Classical.choice`, and
`Quot.sound`. The project does not accept `sorry` proofs or custom axioms in
completed results. Checks use the pinned Lean kernel; no independent second
kernel verification or external peer review is claimed.

The project is maintained by [HuanHuanHuanFFF](https://github.com/HuanHuanHuanFFF).
The formalization implementation and the recorded pressure review were carried
out with Codex AI agents under the owner's direction. The pressure review is
an AI review, not human peer review. Original mathematical authorship remains
with the cited sources.

## License and citation

Project code and original documentation are distributed under
[Apache-2.0](../LICENSE). Dependencies and linked external materials retain their
own licenses. Cite the original mathematical source when using its result;
cite this repository and the exact version when using this formalization.
[CITATION.cff](../CITATION.cff) provides repository citation metadata.
