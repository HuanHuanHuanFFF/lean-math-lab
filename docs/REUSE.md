# Reusing Lean Math Lab

## Public API in v0.1.0

Import `Math.A071999`. The Lake package name is `lean_math_lab`; package names
and Lean module names are different identifiers.

| Name | Meaning |
|---|---|
| `Math.A071999.matrix n` | Integer matrix indexed by `Fin n` |
| `Math.A071999.det_matrix n` | Determinant as a product over `Finset.Icc 1 ((n - 1) / 2)` |
| `Math.A071999.det_matrix_range n` | Equivalent product over `Finset.range ((n - 1) / 2)` |

Entries use zero-based `Fin` indices: the diagonal has value 1; otherwise,
when `i.val + j.val + 2 = n`, the entry is `i.val + 1`; all other entries are 0.
The diagonal branch takes priority. All factors are computed in `ℤ`.
The theorem includes `n = 0`, with empty determinant and product equal to 1.

The paired blocks and odd/even reindexing helpers are private implementation
details. Importing the theorem does not require copying or understanding those
helpers. Definitions under `Tests/` are review evidence, not the library API.

## Dependency and compatibility

Use Lean `leanprover/lean4:v4.33.1` and the dependency stanza in the
[README](../README.md). Prefer the immutable source snapshot identified by a
full commit SHA for archival work; `v0.1.0` is the named initial version.
Retain the consumer's `lake-manifest.json` in version control.

Lean compiled files are version-specific. An existing project using another
Lean/mathlib version needs an explicit dependency upgrade and a fresh build;
compatibility with other versions has not been tested. The `Math` module prefix
must also be free in the consumer's dependency graph.

The [usage example](../Examples/ReusingA071999.lean) demonstrates both the
general theorem and a concrete application. It has passed local verification and is included in the GitHub verification workflow. Standard Lake
commands work without this workspace's `.tools/` directory.

## Extension policy

Keep existing public theorem names and statements stable within a published
version. Add new results in separate modules, retain precise source citations,
and expose only proved declarations as public results. Dependency upgrades and
changes to public statements need a new version and a compatibility note.

The present library formalizes one specific matrix family. A useful next step
is a general determinant theorem for paired indices and independent diagonal
entries, then deriving several concrete matrix families from it. That theorem
has not been implemented here. First collect a second concrete use case before
choosing its ring assumptions and indexing API; reuse mathlib's existing block
determinant infrastructure where possible.

## 中文：让成果更容易复用

当前已经提供三层入口：可以直接引用的定理、能运行的例子、可重复执行的验收检查。
引用时固定版本，后续结果按模块增加，避免让使用者跟随主分支变化。

后续优先寻找另一类能共享“索引配对后分块求行列式”的矩阵，再提炼通用引理。
这一步能让复用范围超过 A071999；目前它是计划，不是已有成果。
社区收录和独立的人类审阅可以增加可发现性，但不作为当前依赖使用的前提。
