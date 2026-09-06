# Lean Math Lab

[![Lean verification](https://github.com/HuanHuanHuanFFF/lean-math-lab/actions/workflows/lean.yml/badge.svg)](https://github.com/HuanHuanHuanFFF/lean-math-lab/actions/workflows/lean.yml)

Local build, regression checks, independent audit checks, and a separate consumer project passed. The badge links to the current GitHub verification status; see the [CI guide](docs/ci/README.md) for its scope.

Lean 4 formalizations of concrete mathematical results, with source references,
explicit theorem statements, and reproducible checks. 中文说明见下方及研究记录。

## Repository navigation

- [Repository structure and task workflow](docs/STRUCTURE.md)
- [Research task index](research/README.md)
- [Reusable research skill](.agents/skills/lean-research/SKILL.md)

## Online API documentation

Browse [A071999](https://huanhuanhuanfff.github.io/lean-math-lab/Math/A071999.html),
[search declarations](https://huanhuanhuanfff.github.io/lean-math-lab/search.html),
or read the [documentation and version guide](docs/API.md). The site tracks main;
use v0.1.0 or an exact commit for a reproducible library dependency.

## Available results

| Result | Import | Public theorem | Status |
|---|---|---|---|
| Determinant product formula for OEIS A071999 | `Math.A071999` | `Math.A071999.det_matrix` | Complete for every `n : ℕ`, including the empty matrix |

The mathematical formula was proved by Sela Fried; this repository supplies a
Lean formalization. See [OEIS A071999](https://oeis.org/A071999) and
[Fried, Theorem 3](https://arxiv.org/html/2606.09913v1#S3.SS3).
The [dated search report](research/F1-A071999-查重报告.md) found no public Lean
precedent within its stated scope; global firstness is **not established**.

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
the independent transcription checks, and the usage example. The [GitHub workflow](.github/workflows/lean.yml) runs these checks explicitly on pushes and pull requests to main. Cache download failure can be handled
by building from source, which takes longer.

The Windows scripts in `scripts/` use a pre-existing repository-local elan
installation under `.tools/elan` and keep caches on the same drive. They are
convenience entry points for this workspace, not an installer. For a fresh
checkout with a regular elan installation, use the standard commands above.

For the complete suite on Windows or a machine with PowerShell 7 installed, run
`pwsh -File scripts/verify.ps1`. It builds the library and automatically checks
all Lean files in `Math/`, `Tests/`, and `Examples/`; CI uses the same script.
Use `-List` to inspect the scope without running Lean.

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
consumer project's lockfile. See the [reuse guide](docs/REUSE.md) for the public
API, indexing convention, compatibility limits, and extension plans.

## Evidence and contribution boundaries

- [Result and original verification](research/F1-A071999.md)
- [Independent Astra / xhigh pressure review](research/F1-A071999-pressure-review.md)
- [Executable independent checks](Tests/A071999Audit.lean)
- [Candidate backlog](research/2026-09-06-数学研究候选清单.md): research leads, not completed results

The final theorem's audited axioms are `propext`, `Classical.choice`, and
`Quot.sound`. The project does not accept `sorry` proofs or custom axioms in
completed results. Checks use the pinned Lean kernel; no independent second
kernel verification or external peer review is claimed.

The project is maintained by [HuanHuanHuanFFF](https://github.com/HuanHuanHuanFFF).
The formalization implementation and the recorded pressure review were carried
out with Codex AI agents under the owner's direction. The pressure review is
an AI review, not human peer review. Original mathematical authorship remains
with the cited sources.

## 中文说明

这是一个通过 Lean 检验数学成果的项目。第一份成果是 A071999 行列式公式的完整形式化；
数学公式已有证明，本项目尚未确认全球首次形式化。

别人可以把本项目作为依赖，直接引用已经证明的定理，继续证明自己的结果。
新增结果应分别记录原题、公开接口、适用范围、来源和验收命令。
一般分块工具的进一步抽象属于后续计划，见[复用说明](docs/REUSE.md)。

## License and citation

Project code and original documentation are distributed under
[Apache-2.0](LICENSE). Dependencies and linked external materials retain their
own licenses. Cite the original mathematical source when using its result;
cite this repository and the exact version when using this formalization.
[CITATION.cff](CITATION.cff) provides repository citation metadata.
