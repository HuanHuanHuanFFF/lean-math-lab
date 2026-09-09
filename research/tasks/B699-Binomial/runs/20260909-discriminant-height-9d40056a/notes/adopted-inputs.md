# 固定来源与实际采用范围

来源提交为最新main `7fd3928656489afe2c80698f0a09d1d933444186`。两批旧交付的完整记录在初始化时读取并采用其既有验收，没有通过重跑旧扫描或证书来完成接续：

| 旧批 | 完整记录 | 既有验收 |
|---|---|---|
| 云端EEES链 | [report](../../20260909-eees-chain-5a2e10/report.md)、[frontier](../../20260909-eees-chain-5a2e10/frontier.md)、[HANDOFF](../../20260909-eees-chain-5a2e10/HANDOFF.md) | [ACCEPTANCE](../../20260909-eees-chain-5a2e10/verification/ACCEPTANCE.md) |
| 电脑大素数结构 | [report](../../20260909-large-prime-structure-cb4764f0/report.md)、[frontier](../../20260909-large-prime-structure-cb4764f0/frontier.md)、[handoff](../../20260909-large-prime-structure-cb4764f0/handoff.md) | [acceptance](../../20260909-large-prime-structure-cb4764f0/acceptance.md) |

本批最终消费者直接复用电脑旧批的 `SmallPartBound`，因为它无条件提供实际U的分拆与上界，且无需带入条件EEES链。云端 `ElementaryTail`、`ScaledTransfer` 及 `notes/eees-source-review.md` 用于核对既有状态和路线边界，不因读取而加入编译根。

| 本批所需事实 | 实际旧源码入口 | 使用位置 |
|---|---|---|
| 完整大素数部分及原题小指标结论 | `Math/B699/CofactorCriterion.lean`、电脑旧批 `lean/GapBridge.lean` | 实际V定义；排除i≤2反例 |
| 完整D定义和反例下D=V | 电脑旧批 `lean/PrimePowerTransfer.lean`，传递依赖旧 `20260908-external-reductions-b3c1b7/lean/DivisorTransfer.lean` | CoefficientContent、ContentDiscriminant |
| 实际UV=C(n,i)和U≤n^t | 电脑旧批 `lean/SmallPartBound.lean` | OriginalHeight |
| 77π(N)≤16N+616 | B686 `formalization/PrimeCounting/LinearPrimeCounting.lean` | i≥185正指数消费者 |

上述六个旧项目模块只因新消费者的实际导入依赖，才进入本轮新项目对象根编译；旧源码保持不变。验收证据绑定实际源码哈希和整个依赖闭包。其余旧成果不重验、不升级状态。

判别式的纸面比较来源为电脑旧批 `notes/discriminant/source-and-identity.md` 与 `arithmetic-bound.md`。本批自行从一阶多项式关系及结果式推导实际递推，未移植外部Jacobi实现、未复制外部证明体、未把源公式作为假设。固定mathlib `Resultant/Basic.lean` 的文件头标明 Apache 2.0；本轮直接导入其API，不改变该依赖。归一化与自由次数的检查见 [algebra](algebra.md)，版本兼容性以实际Lean编译为证。

保持Lean `v4.33.1`、mathlib `0df444a360eaa60ab8c11dca51a86af692955474`；其他九包清单整体以仓库manifest为准。完整EEES、Dusart及i≥10^6全域排除仍保持原先缺口和纸面状态。本轮没有重新做新颖性搜索，不主张已知判别式数学公式的首创。
