# 独立布局完整性审查

审查日期：2026-09-08  
审查方式：只读核验；未运行旧研究验证器，未修改数学文件。  
来源提交：main `7cab35e54092912f7e586f58ffd837ec7a8e87e0`、GPT `9bad0b9653f21822570c38f09229ca01fb2aa6a7`、codex `98a1d90d249fa1ea8aec1807ea3155283979976e`。

## 结论

迁移后的目录布局、manifest 映射和历史原字节保存通过独立审查。没有发现来源遗漏、目标覆盖、旧 round9 残留、Lean 正文改写或当前导航回归。研究编译由主线程收口；本审查不据编译环境错误推断数学证明失败。

## 核验结果

只读运行 `python3 scripts/check-research-layout.py --verify-git-sources`，结果为 `success: true`、`git_sources_checked: true`、`files: 673`、`failures: []`。

五份 manifest 的文件数如下：

| manifest | 文件数 |
|---|---:|
| `research/shared/20260908-environment-publication-f0a6539/migration/manifest.json` | 58 |
| `research/tasks/B677-Lcm/runs/20260908-interval-lcm-f0a6539/migration/manifest.json` | 27 |
| `research/tasks/B686-Four/runs/20260908-lcm-distance-7cab35e/migration/manifest.json` | 207 |
| `research/tasks/B686-Four/runs/20260908-reflected-sum-9bad0b9/migration/manifest.json` | 335 |
| `research/tasks/B699-Binomial/runs/20260908-binomial-cofactors-f0a6539/migration/manifest.json` | 46 |

所有条目的 source hash、target hash 和 `original_copy` 原字节均通过核对。673 个目标路径全部唯一。变换计数为：`none` 611、`imports-only` 22、`navigation-paths` 32、运行器的 `current-verification-entry; original archived` 8。

22 个 Lean imports-only 条件逐项通过：剔除 import 行后，文件正文与来源逐字节相同；仅允许的模块路径发生变化。`Math/`、`Tests/`、`Examples/` 没有 diff。

来源覆盖逐树完整：B677 27/27、B686 lcm 207/207、B686 reflected 335/335、B699 46/46；shared 为平台文件 40 项及根记录 18 项。没有发现声明来源树中的缺失或额外研究文件。

旧 `research/tasks/B686-Four/round9` 当前无文件、无 tracked 残留。`duplicate-cleanup.json` 记录已清理 403 个重复来源副本，且每项都有 manifest 原字节对应关系；B677 和 B699 未发现同类旧目录残留。

`link-audit.json` 记录迁移链接 383 条，`regressions: []`，`current_navigation_missing: []`。其中 4 条缺链已记录为迁移前历史 reflected integration 证据中的 `preexisting_missing`，不是迁移回归。当前入口导航和脚本路径未发现漏改；迁移脚本中保留的旧路径仅作为预期的旧到新映射。

## 编译环境观察

主线程收口期间生成的一次新 verifier 证据记录为 `success: false`，失败发生在编译来源文件 `research/tasks/B686-Four/formalization/UniformDistance/SmallPrime.lean`：缺少 `Mathlib.Data.Nat.Dist` 对应的 object 文件，报错路径为 `/workspace/scratch/0d28e8b53182/lean-math-lab/.lake/packages/mathlib/.lake/build/lib/lean/Mathlib/Data/Nat/Dist.olean`。当前 checkout 的 `.lake/packages/mathlib` 指向该旧工作区路径。这是工具链/构建产物环境问题；本审查不将其解释为证明失败或迁移内容错误。

