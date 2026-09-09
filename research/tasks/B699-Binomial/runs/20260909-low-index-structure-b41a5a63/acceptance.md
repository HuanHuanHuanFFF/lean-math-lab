# 本轮验收状态

## 最新正式 Lean 根

[FiniteCover.lean](lean/FiniteCover.lean) 已于 UTC 2026-09-09 09:19:10.809468 完成全新源码闭包验收：[evidence.json](verification/20260909T091130Z/evidence.json)。

21 个实际项目模块全部在本轮新输出目录编译；只复用固定包缓存。Lean4.33.1、mathlib0df444a360eaa60ab8c11dca51a86af692955474和其余manifest pins均核对。65 项实际公理输出仅 propext、Classical.choice、Quot.sound；6项guarded打印仅作为元数据，不推定为stdout。源码policy通过，无占位、新公理或native_decide。没有运行独立第二内核。

最后已接受的通用消费者为 B699LowIndex.common_of_finite_cover_row_checked：任意有限证书行row，若 finiteCoverRowCheck row=true，则所有 n,j 满足 row.height.i<j≤n/2 时，都有素数p≥row.height.i整除实际两个二项式的gcd。Boolean检查包括已注册高度、全部见证、低n覆盖、完整层划分、每层M证书与两种素数幂区间的交集覆盖；其声音性本身已证明，未用原题结论作为参数。

同一闭包还已接受 B699LowIndex.common_of_registered_height：row属于151条高度表，i<j≤n/2且n≥row.n0，即有完整Common结论。151条高度数值CERT全部由Lean检查。ThreeWindowSize、CofactorCover、完整指数定位、PrimePowerEnumeration、LargeDivisorWitness、IntervalCover均已纳入这次成功的新源码验收。

历史成功根保留：ThreeWindowWeights（065147Z，6模块、27实际打印）、SmallPowerIntervals（074627Z，10模块、34实际打印）。

## 尚未完成的 Lean 数据接受

151行最终目标是i=29或35≤i≤184的全部合法n,j。全部数据在独立Python证书链上通过，但151行的Lean布尔检查尚未全部成功，所以 LowIndexComplete.lean 仍是待验收候选，不能称其为已接受定理。

Coverage00整批19行的普通decide因内存压力主动中止；拆分到逐指标/逐层后，Row184在1536MiB上限仍发生interpreter内存异常。2048MiB诊断亦因时间/资源主动结束。正在用最小导入、静态数据与各检查阶段定位。所有失败目录保留。直接内核选项decide +kernel来自固定Lean源码的doKernel分支，与native求值不同，最终仍须实际编译和公理审核。

## 纸面与精确计算成果

主链151指标全域结论：完整初等纸面证明、另一算法的三阶段checker真实重放、fresh数学审查。见[重放](experiments/two-colour-check/replay-20260909T074014Z/evidence.json)、[审查](reviews/independent-math/review.md)。F1参数缺失与F2命令记录意见均有修复与实跑记录，历史失败未覆盖。

新增i=28,31,34全域结论：M64与完整幂定位、Matveev纸面高度、有理对数区间的全55×2519证书将n界压到10^25，再由不同算法重建全部有限候选并核全部大因子/素数见证。见[零边界入口](notes/zero-boundary/README.md)、[对数证书执行](notes/zero-boundary/verification/20260909T090620Z/run-manifest.json)、[有限候选执行](notes/zero-boundary/verification/20260909T092400Z/)、[来源审查](reviews/zero-boundary-audit.md)。Matveev及有理日志到Lean的桥未完成；这三项不进入上面的已接受Lean范围。

## 完整原题的边界

本轮组合纸面/精确证书覆盖154指标：28、29、31和34..184。旧S中88项被该层次排除，尚余3..27、30、32、33共28项。更大指标的旧纸面、条件Lean和未闭合出版依赖各自保留原等级；完整B699未解决，未认证新颖性。
