# Sliced canonical closure：机械适配与失败记录

核验日期：2026-09-08 UTC。所有 Lean 编译均顺序执行，使用固定
`leanprover/lean4:v4.33.1`、`-j 1`、Lean `-M 6144`，并设置进程虚拟地址上限；
没有并行或无界 compiler。固定源码来自本地 mathlib pin
`0df444a360eaa60ab8c11dca51a86af692955474`。

## 提取策略

`lean/canonical/vendor/sliced/extract_canonical_slice.py` 先验证四个上游文件
SHA-256，再按 `slice-manifest.json` 的行段生成模块：

* Matrix 与 Cleaning 的 source lines `4-end` 完整保留；只替换模块 import；
* base 只保留 `Erdos686.lean` 的 `blockProduct`（4716--4717）和
  `blockProduct_pos`（5060--5065）；
* PadicLift 只保留 `localBlockCoefficientNat`、阶乘/距离乘积闭包、
  `exists_blockProduct_factorization_concentration`、
  `localBlockCofactorNat` 和 `blockProduct_eq_factor_mul_localBlockCofactorNat`；
* 没有引入 QuotientConfinement、ConstantQuotient 或其余 18k 行 Pell/有限段。

最终只做两类 API 级适配：

1. 增加 `Mathlib.Data.Nat.GCD.BigOperators`，提供固定 mathlib 中
   `Nat.Coprime.prod_left/prod_right` 的显式导入；
2. Matrix 四个 `simpa` 显式展开 `canonicalOwnerPrimePower`，以适应 v4.33.1
   focused imports 的简化器行为。

两项均不改变命题、假设、数据结构或数学证明步骤；没有 `axiom`、`sorry`、
`admit`、`native_decide` 替代。

## 失败与修正顺序

* 直接调用 toolchain 的 `lean` 先触发已知 procfs 兼容错误
  `failed to locate application`；随后所有命令改用仓库
  `scripts/lean-work.sh`，没有修改 toolchain。
* 4 GiB 虚拟上限下首次固定 mathlib 辅助模块编译出现 `failed to create thread`；
  改为 `-j 1 -M 6144`，保留 8/12 GiB ulimit 作为外层边界。
* 固定缓存没有 `Mathlib.Data.Nat.Dist.olean` 和
  `Mathlib.Tactic.NormNum.Prime.olean`；只从同一固定 mathlib 源码顺序编译到
  `/tmp/b686-canonical-sliced-overlay-20260908/`，日志分别为
  `compile-sliced-dist.log`、`compile-sliced-normnum-prime.log`。
* 首次 Padic slice 缺少 `Finset.prod_pos` 与
  `Finset.prod_Ico_id_eq_factorial`，补入对应 focused imports 后通过。
* 首次 Cleaning slice 缺少 `norm_num` 的 Nat.Prime 扩展，补入
  `Mathlib.Tactic.NormNum.Prime` 后通过。
* 首次 Matrix slice 报 `Nat.Coprime.prod_left/prod_right` 与四处定义展开错误；
  采用上述两项纯 API 适配后通过。
* Cleaning 有一次 8 GiB 外层上限下的线程创建中止；提高外层上限至 12 GiB、仍
  保持单线程和 Lean `-M 6144` 后重新通过。没有启动重复的重型原始 provider。

## 最终编译证据

| 模块 | 日志 | 状态 |
|---|---|---|
| `Mathlib.Data.Nat.Dist` 固定辅助缓存 | `compile-sliced-dist.log` | exit 0 |
| `Mathlib.Tactic.NormNum.Prime` 固定辅助缓存 | `compile-sliced-normnum-prime.log` | exit 0 |
| `Erdos686CanonicalPadicSlice` | `compile-sliced-padic.log` | exit 0 |
| `CanonicalOwnerDensityInterface` | `compile-sliced-interface.log` | exit 0 |
| `Erdos686CanonicalOwnerCleaning` | `compile-sliced-cleaning.log` | exit 0 |
| `Erdos686CanonicalOwnerMatrix` | `compile-sliced-matrix.log` | exit 0 |
| `CanonicalOwnerMatrixAdapter` | `compile-sliced-adapter.log` | exit 0 |

Matrix 日志的最后一项为
`Erdos686.Erdos686Variant.exists_canonicalOwnerSystem`，其公理输出只有
`propext, Classical.choice, Quot.sound`；Cleaning 及其下游输出同样没有
`sorryAx`。这只证明本 sliced provider 在固定环境中可编译，并不把外部数学来源
升级为题目账本的无条件结论。

## 标准仓库模块路径与 Provider

随后将相同切片的模块导入改为本 run 的标准前缀
`research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.canonical.vendor.sliced`，
并在 `lean/canonical/Provider.lean` 提供最终入口。该改动只重写模块路径；数学命名空间
仍为 `Erdos686.Erdos686Variant` 和
`B686CanonicalVendor.CanonicalOwnerDensity`。Provider 中有两个实际 `#guard_msgs`，
分别保护 `exists_canonicalOwnerSystem` 与
`systemInput_of_sliced_external`。

标准路径的 fresh-root 结果在
`standard-provider-final-20260908T/evidence.json`：固定 mathlib 缺失对象从 pinned
源码重建后，Padic、Cleaning、Matrix、接口、adapter 和 Provider 全部 exit 0；两个
guard 都核到 `[propext, Classical.choice, Quot.sound]`。该 fresh-root 的 `LEAN_PATH`
只含新建 object root。三次中间失败（默认线程、Provider import 前注释、guard 文档折行）
及其修正证据分别保留在同目录的 `standard-provider-thread-failure-20260908T/`、
`standard-provider-import-failure-20260908T/` 和
`standard-provider-guard-failure-20260908T/`，不覆盖最终成功记录。
