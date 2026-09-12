# 可组合的 i11 CRT 网格消费者候选

Owner `/root/i18_downstream_review`。开始 2026-09-11 18:23:10 UTC；20 分钟检查点已向主任务报告，检查点不是总截止。唯一写入本 run `experiments/huan-i11-crt-grid-consumer-5e2d13bb/`。四个源均为**未编译候选**；未运行 Lean/Git、完整 stage0 网格或全 CRT。已有集成源和冻结源未修改。

本次目标是把“所有正指数×全部21位移”的覆盖写成可检查、可组合的完整证明文本；不把所求最大上界当成结构字段/公理。实际交付是通用消费者和一个真实 stage0 单格闭环，尚未提供完整六对格点数据。

## 1. 逐位移与21位移 Cell

`CellData` 只给一个实际模逆自然数和 `d:Int -> BoundsDatum`（lo/hi）。`rowCheck` 计算

`pairBoundCheck P Q v capA capC 10 d bounds = true`

且

`bounds.hi < bounds.lo OR (upperValue P Q v 10 d bounds.hi).toNat <= T`。

这里 upperValue 是已有定义直接计算的有理/整数坐标上界；没有 MaxValid、原题解上界或搜索完整性字段。`rowCheck_sound` 对任意正 A,C、实际 cap、原整数方程及窗口 min+10 前提推出 n<=T：空区间调用已有 empty，其余调用已有 upper_nat。

`shifts` 固定为 `(List.range 21).map (k↦(k:Int)-10)`。`mem_shifts` 显式证明每个 -10<=d<=10 都在该列表，因此 d=0、负位移和+10端点不能从证书中漏掉。`cellCheck` 对这21行做 List.all；data 函数在列表之外的值无作用。

可先分位移子列表证明 `shiftCheck=true`，再用 `shiftCheck_append` 拼接。`rowCheck_mono_target` 与 `cellCheck_mono_target` 将已验的小目标界提升到较大的公共界，不重算基础 CRT 条件。

## 2. 完整正指数网格与分块复用

`blockCheck p q H M T aStart aCount bStart bCount data` 遍历

`aStart <= a < aStart+aCount`，`bStart <= b < bStart+bCount`，

并逐格检查 `P=p^a,Q=q^b` 与实际 height caps。`rectangleCheck ... amax bmax` 固定从1开始，所以恰好覆盖 a=1..amax、b=1..bmax；零长度轴按空列表处理。

- `blockCheck_cell` 从真实 List.range' 成员提取对应 Cell 的检查结果。
- `rectangleCheck_sound` 对全部范围内正指数、所有21个位移和实际有界正解推出 n<=T。
- `exponent_le_of_pow_lt` 由 p>1、H<=p^(amax+1)、p^a<H 推出 a<=amax。因此 cutoff 证书把所有正指数自动送入完整有限矩形，不假设实际指数已经在人工枚举表中。
- `blockCheck_append_rows`、`blockCheck_append_columns` 拼接严格相邻块，无空隙；`blockCheck_mono_target` 支持不同块使用同一较大总目标。
- `blockCheck_transfer_data` 在原矩形上的 data 值不变时复用旧检查。这允许把总 data 定义扩展成旧/新数据的分段函数，再追加新区域。它要求实际数据相等，不是最大值假设。

不会生成一次包含约50万条件的巨大 decide。未来按一个21行 Cell 或若干小块验收，再用这些通用证明组合；本次唯一直接数值 Cell 是下述一个真实样例。

## 3. height cap 与实际窗口

`heightCap H M P = min M ((H-1)/P)`。`height_cap_of_product_le` / `height_cap_of_window` 从 P>0、A<=M、PA=n-r<=n<H 证明 A<=heightCap；没有把程序的裁剪当成假设。`actual_window_height_cap` 直接作用于已验 PrimeWindow / primeComponent。

`power_lt_height_of_window` 由 A>=1 得 P<=PA<=n<H；`integer_window_links` 同时证明全部位移范围和 `n<=min(n-r,n-s)+10`。`grid_windows_sound` 将这些桥合成，接受完整 rectangleCheck=true 与两个 cutoff，覆盖任意正指数和实际两个窗口，输出 n<=T。

`grid_windows_sound_swapped` 同时交换素数角色、指数、余因子和 offset。位移变号由交换后的真实窗口差自动处理，仍落在全部21位移中。

六对总拼装暂未做。已读的 `PairDispatch` 实际定理名是 `Math.B699.I11CubicCompression.distinct_pair_below_109`，其输入是旧 CubicBlockCover.pairCheck 和立方小余因子，**不是新 CRTGrid 的泛型分派接口**。本候选不虚构名称或错误调用它；下一步可把已有12分支分派抽象后复用，或用本次 normal/swapped 两个接口完成有限六对分派。

## 4. 真实 stage0 单格闭环

`Sample37.lean` 固定旧探针的 `(p,a,q,b)=(3,22,7,12)`：

- P=31381059609，Q=13841287201，inverse=6943879098；
- H=2^109=649037107316853453566312041152512，M=118703030；
- 两侧 heightCap 都为 M；T=1458309064184540963。

全部21行 lo=0；只有 d=2 的 hi=0，其余 hi=-1。d=2 时 rho=46470995、C0=105359353，computed upper=T；与旧探针该对极值和见证逐项一致。`sample_cell_check` 是实际 Bool 检查的闭合 decide 候选，`sample_block_check` 结构化复用它，证明 (22,12) 的1×1块。`sample_cell_sound` 对该幂对的**所有**受 cap 约束正整数解和全部21位移给 n<=T，没有上界假设。

这不是 a=1..22、b=1..12 的完整矩形，也不是整个(3,7)对；sampleGridData 的常量值只用于已声明的1×1块。

## 5. 检查与来源

`bounded_check.py` 重算样例全部21项，核对旧 result.json 中 H/M、指数、d=2 的 A/C、极值。错 inverse、把活动行误写空区间、丢掉活动 t=0、把 T 减1四种篡改均被拒绝。另检查32个小网格（含 M=0、零 cap 和空块）、288次行/列拆分、12320个 height-cap 实例，全部通过；耗时约0.04687秒。没有生成旧50万格。

`source-ledger.json` 保存来源 SHA、实际接口签名和行号。List.range'_1、List.all_eq_true、Bool.and_eq_true_iff 等 API 已从固定本机源码核对；Mathlib.Data.List.Range 缓存存在，未下载新模块。所有新定理都有 #print 审计入口；无 sorry/native_decide/ofReduceBool/自造 axiom，实际 Lean 结果仍由主任务串行提供。

最新入口状态也已更新：`i11-actual-block-compression` 收据对应 `Math.B699.I11VerifiedCubicCompression.actual_i11_below_109_of_initial_height`，证据20260911T182133767665Z已接受，当前源码 SHA 匹配；因此给定原题条件及初始 n<2^15360 的109压缩前置已有本机依据。初始 n<2^15360 本身仍不是本次 Grid 候选证明的结论。

## 6. 尚未完成

- CrtPair、四个新模块和样例的实际完整 Lean 闭包/公理验收。
- 六个无序素数对的全矩形证书、cutoff 与全局总上界合并；只给出一个真实 Cell 的闭环。
- 从完整原题 hno 的 H/M 条件调用 I11Bounded、保留 n<=M/n<110 分支、得到 next_H=T_global+1 的六对总消费者。
- 终端全部t/窗口枚举、Bernoulli过滤和最后原题有限检查。

没有初始高度、末端全覆盖或 B699 原题新增声明，B仍0/19。
