# 实际 i11 六对 CRT 单级下降消费者

Owner `/root/i18_downstream_review`。开始 2026-09-11 18:54:06 UTC；20 分钟为检查点，不是总截止。唯一写入本 run `experiments/huan-i11-crt-six-pair-step-5e2d13bb/`。三个源均是**未编译候选**，未运行 Lean/Git 或全表 CRT，也未改任何集成/冻结源。

目标：把冻结 Grid 检查器真正接到原题条件。实际交付是一个可分层编译的通用单级消费者；六张具体数值全表仍未提供或验收。

## 最终精确接口

`ActualStep.actual_i11_step` 对任意 n,j,H,M,T:Nat，接收：

- 原题 `11<j`、`j<=n/2`、`not Common n 11 j`、严格输入 `n<H`；
- `stageConstantsCheck H M=true`，精确含 `1<=M` 和 `(2*11!)^11*H^7<=i11K*M^33`；
- 六项 `pairGridCheck p q H M T data.gridPQ=true`，对应 (2,3)、(2,5)、(2,7)、(3,5)、(3,7)、(5,7)。

输出

`n <= stageBound M T = max M (max 109 T)`。

`actual_i11_next_height` 进而输出

`n < nextHeight M T = max M (max 109 T)+1`。

没有窗口方程、实际组件、幂指数范围或所求 n 上界前提；这些都在内部由原题 hno 与数据检查推导。H 是自然数上边界的实际数值，不是二进制指数；max 中的109是 n<110 小分支的自然数上界。

## 分层证明

1. `Meta.lean`：PairGridData 只有 amax、bmax 和真实 CellData 总函数。`cutoffCheck` 可计算地验证 p,q>1 与 `H<=p^(amax+1)`、`H<=q^(bmax+1)`；`pairGridCheck` 同时要求冻结 Grid 的完整 `rectangleCheck`。cutoff 不能由人工遗漏的指数表代替。
2. 正常/交换两个窗口接口调用已有 `grid_windows_sound` / `grid_windows_sound_swapped`。交换包装的 h,k 仍按实际第一/第二窗口命名，内部将 checked p-grid 的指数设为 k、q-grid 设为 h；余因子和 offset 同时交换，所以位移变号和全部21位移覆盖不丢失。
3. `Dispatch.lean`：从两个 {2,3,5,7} 成员展开全部16种组合；4个相等组合由 p!=q 排除，6个正向和6个反向分别调用对应网格。旧已验 `I11CubicCompression.distinct_pair_below_109` 只作为有限分派模式参照，不把它的 CubicBlock checker 当成新 CRTGrid 接口。
4. `ActualStep.lean`：先保留 n<=M；再保留 n<110（给 n<=109）。其余分支有 110<=n、M<n，调用实际 `actual_i11_bounded_cofactor_bridge`，内部取得两个不同素数、实际正 binomial 指数、offset<11、正余因子<=M和窗口方程，然后送入12组合分派，得到 n<=T。三分支合并给所需 max。

因此 p>=11（含11）的原题 Common 量词和所有合法 j 都保留；没有新增 j 范围或排除同位置。样本窗口可以重合，余因子不要求 p-free。

## 组合与数值证书界限

`pairGridCheck_of_parts` 将单独验收的 cutoff 与完整矩形证明合成，避免对整表做一次大 decide。`pairGridCheck_mono_target` 复用冻结 Grid 的目标界单调性，允许把各块/各对的较小上界提升到一个共同 T。冻结 Grid 已提供行/列追加与旧区域 data 保持时的复用。

这里只定义并使用真正的可计算 grid 检查前提；**尚未给六张具体全表以及 rectangleCheck=true 的数值证明**。源中没有“最大上界正确”或任何含实际 n 的 MaxValid 字段。以后每阶段可提供独立的 H/M 检查、cutoff 和分块 grid 验收。

nextHeight 可能等于或大于 H；本定理不会把这种情况称为下降。要报告实际压缩，还需检查 nextHeight<H。初始高度不是这里新增的假设或结论，H 可以是任意合法后续整数边界。

## 有界核对和来源

`bounded_check.py` 验证：12个有序对恰好落入6张表，6种反向的幂指数、余因子、offset与位移同时交换；902个小窗口方程核对通过。实际 Dispatch 源的12条调用顺序与这张映射表一致，4个相等组合均是矛盾分支。

读取旧探针的5个阶段，核对30组 cutoff 与 H/M 条件；将任一对的一个 cutoff 少报一次都会失败，60种少报均拒绝。7553个小分支/nextHeight整数实例验证 max 和 +1 端点。耗时约0.00642秒，没有读取/构造新的全表。

`source-ledger.json` 记录冻结 Grid、实际 I11Bounded、旧 PairDispatch、已验109入口和源探针的 SHA、声明行号与完整签名。当前 import 指向冻结 Grid 实验；主任务将来集成时应统一映射到其已验集成副本，不修改冻结源。三个文件共有8个公开 #print 审计入口，当前没有新 Lean 输出。

## 仍未完成

- 冻结 Grid、这三个模块及其完整真实依赖闭包的串行 Lean/传递公理验收。
- 每阶段六张数值全表与所有分块检查证明，以及具体 H/M/cutoff 检查的 kernel 验收；本次只做其少量数学交叉核对。
- 终端全部t/窗口成员覆盖、11690等计算集合的覆盖证明、实际U/Bernoulli过滤和最后有限原题核查。
- 初始 n<2^15360 仍需原路线完成；已验条件消费者可将它接到 n<2^109，本单级定理不重新假定或证明该初始界。

没有初始高度、终端全覆盖或 B699 原题新增声明，B仍0/19。
