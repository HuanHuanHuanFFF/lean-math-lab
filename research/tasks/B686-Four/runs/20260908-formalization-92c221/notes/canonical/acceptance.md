# B686 canonical sliced provider acceptance

记录时间：2026-09-08 UTC。此记录只验收固定外部来源的声明闭包、模块路径和机械 API 适配；不把它提升为密度证明，也不导入任何 density consumer。

## 可复用入口

稳定入口是：

```lean
import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.canonical.Provider
```

入口导出以下标准模块路径（数学命名空间保持上游名字）：

| 模块 | 标准模块名 | 作用 |
|---|---|---|
| Padic/base slice | `research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.canonical.vendor.sliced.Erdos686CanonicalPadicSlice` | `blockProduct`、正性及 Cleaning 实际引用的 PadicLift 声明 |
| Cleaning | `research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.canonical.vendor.sliced.Erdos686CanonicalOwnerCleaning` | 上游完整 Cleaning body |
| Matrix | `research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.canonical.vendor.sliced.Erdos686CanonicalOwnerMatrix` | 上游完整 Matrix body |
| consumer interface | `research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.canonical.vendor.sliced.CanonicalOwnerDensityInterface` | `B686CanonicalVendor.CanonicalOwnerDensity.SystemInput` |
| adapter | `research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.canonical.vendor.sliced.CanonicalOwnerMatrixAdapter` | `systemInput_of_sliced_external` |

可供下游直接使用的精确接口为

```lean
@B686CanonicalVendor.CanonicalOwnerDensity.systemInput_of_sliced_external :
  ∀ {k n d : ℕ}, 4 ≤ k → k ≤ d →
    Erdos686.Erdos686Variant.blockProduct k (n + d) =
      4 * Erdos686.Erdos686Variant.blockProduct k n →
    Nonempty (B686CanonicalVendor.CanonicalOwnerDensity.SystemInput
      (Erdos686.Erdos686Variant.blockProduct k n) k n d)
```

因此 B686 密度消费者可导入 `...lean.canonical.Provider`，并以
`B686CanonicalVendor.CanonicalOwnerDensity.SystemInput` 接收矩阵数据；消费者仍需自行证明题目所需的密度估计。切片中没有删除 `k ≥ 4`、`k ≤ d` 或乘积等式假设，也没有把结论换成 axiom。

## 来源、许可和提取

外部来源固定为 `williamjblair/lean-proofs`，commit
`aff1d30b3b1c6bd705810fa4d588b03940fb31df`，MIT 许可。完整来源、第三方 notice、MIT 文本和六个上游文件的 SHA 在
`lean/canonical/vendor/source-manifest.json`、`LICENSE-Will-Blair-MIT.txt`、`NOTICE-upstream.txt` 中。固定 mathlib 源码 checkout 实际核验为
`0df444a360eaa60ab8c11dca51a86af692955474`；仓库基线为
`08a8ac6872e8abfd4a2c480496da350a97ecdc13`。

可重建切片的唯一脚本是
`lean/canonical/vendor/sliced/extract_canonical_slice.py`：

```bash
python3 research/tasks/B686-Four/runs/20260908-formalization-92c221/lean/canonical/vendor/sliced/extract_canonical_slice.py
```

脚本先核验上游 SHA，再按 `slice-manifest.json` 的行范围提取 Padic/base 声明；Cleaning 和 Matrix body 完整复制。它只写聚焦 imports、标准模块路径和四处 `canonicalOwnerPrimePower` 的显式 simp 展开，并补充 `Mathlib.Data.Nat.GCD.BigOperators`；不添加 `sorry`、`admit`、`native_decide` 或公理。接口文件是本地消费者形状，adapter 只把已存在的 `exists_canonicalOwnerSystem` 结论投影为该形状。

## fresh-root 验收

最终证据目录：
`verification/canonical/standard-provider-final-20260908T/`。

使用仓库 `fresh-root.py` 的 fresh object root，并在进程内把每个 Lean 子命令限制为 `-j 1 -M 6144`；外层 `ulimit -v 12582912`、总超时 300 秒。最终证据中的 `LEAN_PATH` 只有新建的
`.lake/formalization-environment/standard-provider-final-20260908T/olean`，固定 package objects 先按 manifest HEAD 检查后链接到该根。固定缓存中缺失的 `Mathlib.Data.Nat.Dist` 和 `Mathlib.Tactic.NormNum.Prime` 均从同一 pinned mathlib 源码重建，随后按依赖顺序编译 5 个 sliced vendor 模块和 `Provider.lean`；全部 exit 0。
有效 Lean 参数和 fresh object root 也记录在同目录的 `compiler-policy.json`。

`Provider.lean` 含两个实际 `#guard_msgs`：

* `Erdos686.Erdos686Variant.exists_canonicalOwnerSystem`；
* `B686CanonicalVendor.CanonicalOwnerDensity.systemInput_of_sliced_external`。

两者的 kernel axiom 输出均为 `[propext, Classical.choice, Quot.sound]`，没有 `sorryAx` 或项目自定义公理。fresh-root 审计记录 `print_axioms = 2`、`guard_msgs = 2`、`success = true`；逐模块输出 SHA、源码 SHA、package pin 和命令保存在上述 `evidence.json` 及同目录日志。

一次默认线程数的 fresh-root 尝试因固定环境的 `failed to create thread` 失败，证据保存在 `standard-provider-thread-failure-20260908T/`；修正为单线程后成功。一次 Provider guard 文档的折行格式失败，证据保存在 `standard-provider-guard-failure-20260908T/`；该失败只反映 guard 文档格式，5 个 vendor 模块均已 exit 0。另一次最初的 import 前注释失败保存在 `standard-provider-import-failure-20260908T/`，随后已将 import 移到文件首行并通过。

## 与旧全量路径的边界

旧 remapped 六文件路径仍保留作为来源审计和失败记录，不是最终入口。它沿 `Erdos686CanonicalOwnerMatrix → Cleaning → PadicLift → QuotientConfinement → ConstantQuotient → Erdos686` 引入 18,199 行历史文件及 Pell/finite 内容；固定 cache 下的 `compile-Erdos686-attempt8.log` 精确失败为缺少 `Mathlib/NumberTheory/Pell.olean`，而不是切片声明失败。切片只递归保留 Matrix/Cleaning 实际引用的 `blockProduct`、`blockProduct_pos` 和 PadicLift 声明，故 fresh-root 闭包不再被无关 Pell/finite 内容拖住。

该模块化结果只证明外部声明已在固定 Lean 环境中可导入和可消费；它没有为 canonical matrix 的上游数学证明增加新的证明步骤，也没有关闭 B686 密度消费者的 Runge/Stirling 义务。`proper-support` 属于进一步推进原题无解路线的义务，不是密度消费者的必要前提。
