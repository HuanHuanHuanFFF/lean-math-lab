# 精确二进制区间引擎

本轮独占负责人：`low_index_mechanism`（Astra / Max）。来源基线：
`63a04b064d62e7e8752b1edd75c186d07dc57a20`。本文件和 `lean/DyadicBounds.lean`、
`lean/dyadic/` 为独占写入范围；不修改旧批或其他消费者。

## 动机与验收边界

主线程的 `HeightValid 323 107 226 2000000` 直接 kernel 数值判定在
`verification/20260909T114042Z` 触发 excessive memory，未获验收。当时尚未分离计数与整数比较成本。本引擎将巨大整数表示为
自然数尾数乘 `2^exponent`，只在小尾数上作整数除法和精确比较，供主线程的高度证书递归桥使用。
预期作用是解锁 323 至 999 的全部 677 个高度证书；本引擎声音性本身不证明该覆盖。

## 完整数学接口

命名空间 `B699Dyadic`；`Dyadic` 有自然数字段 `mantissa`、`exponent`，
`Dyadic.value x = x.mantissa * 2^x.exponent`。所有下面的界对任意自然数精度 `bits`、
任意输入（包括零尾数）成立。`bits` 控制紧度，不构成声音性的附加假设。

* `value_embed (n) : (embed n).value = n`。
* `mulDown_le (bits) (x y) : (mulDown bits x y).value ≤ x.value * y.value`。
* `mul_le_mulUp (bits) (x y) : x.value * y.value ≤ (mulUp bits x y).value`。
* `powDown_le (bits) (x) (k) : (powDown bits x k).value ≤ x.value^k`。
* `pow_le_powUp (bits) (x) (k) : x.value^k ≤ (powUp bits x k).value`。
* `ltCheck_sound {x y} (h : ltCheck x y = true) : x.value < y.value`。

乘法先形成尾数积 `m`，选择 `shift = m.size + 1 - bits`；向下取 `m / 2^shift`，
向上取 `m / 2^shift + (if m % 2^shift = 0 then 0 else 1)`，并给指数增加 `shift`。
证明先对任意 `shift` 成立，因此未依赖位长选择的任何未经证明性质。
一位保留量用于向上舍入进位；本批不把独立位长上界当作必需验收条件。

幂使用 `k/2` 良基递归，每层只作一次递归调用，以局部 `let` 共享平方输入。
上下界由强归纳和偶奇分支证明。源算法为对数递归深度；kernel 实际时间/内存仍需真实验证。
比较先消去公共 `2` 幂，利用 `Nat.size_le` 跳过巨大指数差；仅在指数差小于输入尾数位长时形成剩余幂。
不使用浮点、外部预言、`native_decide`、占位证明或新公理。

## 来源和当前状态

已读本树 AGENTS、STRUCTURE、lean-research 技能、本批 README 和 TASKS 主机部分。
直接复用固定 mathlib 的 `Mathlib.Data.Nat.Size`，特别是
`Nat.size_le : size m ≤ n ↔ m < 2^n`；整除舍入只用自然数商余恒等式。
这是常规整数区间算法的形式化，不作新颖性主张。

2026-09-09 12:00 UTC 左右：四个候选源码已写入，接口已告知主线程。
尚未启动 Lean 或数值运行，等待唯一计算槽。源码未验收，可能存在 elaboration/API 问题；
不得把文件存在或静态审读记为 Lean 通过。关键声音性声明结尾均有可执行 `#print axioms`。
下一步是按 Base → Pow → Compare → 聚合顺序，在 `-j1 -M1536` 下串行编译并保存真实证据，
随后由主线程编译高度桥和代表数值行。

## 12:01 UTC 静态检查点与新诊断

主线程报告：仅证明 `smallPrimeCount 323 = 66` 的 `Count323.lean` 已在 14.843 秒、
工作集峰值 1646391296 字节后发生 kernel excessive memory。它证明原始完整 Prime 过滤计数
本身足以触发失败，不能把此前 Height323 的故障归因于大幂。主线程正验证快速计数的完整等价桥，
随后改写计数后重测原始整数高度比较；Dyadic 暂停在静态候选状态，可能无需进入终端证明链。

静态修正已把 Compare 的指数因子恒等式抽成一般辅助命题，避免在包含自然数减法的式子上
直接重写指数。Base/Pow/Compare 当前候选 SHA256 依次为：

* `6EDC30A820924461BAF13309A17FAF23E7DD57099054F0BC8B756F983A2DE92E`
* `6A27E3504EFC22FF4CA34C1EEBD07B68CC9663AF5DAA9DDEF2179FD60D55A57D`
* `44D0E2412DEB4A516C20D435F8178E35DF285C86F762456F20B4976062123332`

此检查点没有自有 Lean 或计算进程；没有运行性能基准或数值证书。本工具是否被采用、Lean 是否
通过及实际递归成本均待验，接口冻结，不扩大方向。下一项检查由主线程的直接高度复测决定。