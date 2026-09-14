# 来源与出版依赖

## 本轮新证明

TW、目标相关端点版、COUNT 和 n=22^(420t+1) 消费者全部在 `notes/PROOFS.md` 自包含推导。没有新增出版对数、Padé 或计算黑箱假设。思想上复用 D 的完整共享残量，但目标相关投影从新的 NG_m 假设重证，不能套旧 NC3 规范参数。

标准阶乘赋值/幂层无进位公式在证明§1直接推导。公开实现参考（本轮实际打开核对，2026-09-13）是官方 mathlib 文档：

- `https://leanprover-community.github.io/mathlib4_docs/Mathlib/Data/Nat/Multiplicity.html`：`Nat.Prime.emultiplicity_factorial`、`Nat.Prime.emultiplicity_choose`；
- `https://leanprover-community.github.io/mathlib4_docs/Mathlib/Data/Nat/Choose/Basic.html`：标准二项式恒等式背景。

这只是标准前置的公开对照；没有因此声称新证明已 Lean 化。新检查器仅依赖 Python 标准库。

## 已交付 A/B/D

完整路径、字节数和 SHA-256 见 `INPUT_INVENTORY.json`，实际采用边见 `notes/INTAKE_AND_DEPENDENCIES.md`。

发布包内 `frozen/` 保留本轮实际重放的 D transfer-verified、B cubic 两个原 ZIP，以及恢复条带的 D tail 原 ZIP。B 最新17/25与一般高度原文位于 B cubic 包的 `sources/B/`。A 仅保留实际读取的完整报告与 PROOFS 文本，不冒充其约50MB历史证据全包。

B 一般 min(Cr) 高度的源稿声明依赖 Bérczes–Evertse–Győry, *Effective results for hyper- and superelliptic equations over number fields*, arXiv:1301.7168v1 (2013), Proposition3.10 的实位三代数数特化。本轮未重证或重新核验该出版输入，也未用它证明新主结论。

D 的 n=18P^rQ^s+2 / K或M=aP^rQ^s(a≤9) 行族继承旧 Cr>1 非空性，其中困难尾部仍有原出版对数依赖；不能重标为本轮初等结果。新 TW/COUNT 不调用这条非空性。

A 最新联合高度在本轮仅用于证明本轮判据不覆盖其最后双高幂残余；它继承 A 的旧链，不作为新整行/计数定理的前提。

没有检索认证数学优先权，没有独立人审，没有运行 Lean。原源文件中提到的“本轮”均指相应历史作者轮次，不指当前新交付。
