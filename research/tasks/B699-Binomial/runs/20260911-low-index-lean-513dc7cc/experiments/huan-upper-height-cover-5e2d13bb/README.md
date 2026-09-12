# Upper-height 有限覆盖消费者候选

owner：`/root/i18_downstream_review`；唯一写入本目录。开始 2026-09-11 10:45:56 UTC。父任务已审查并同意本目录的一般数学声明；无总时限，每 20 分钟或重要障碍记录 checkpoint。强化 D 旁支尚未开始并已暂停。

所有 Lean 源为**未编译候选**，本 worker 不运行 Lean/Git，不改共享 `FiniteCover`、注册表、已验模块或旧实验。拟集成目录为本 run `lean/UpperHeight/`；导入按该位置书写，由主线程复制并串行核验。

具体缺口：i11,r3,s7 时 `heightExponent=4*11+84=128`，大于 `i*(2s−r)=121`，所以现有 lower-height 注册接口的 `128≤121` 不成立。新接口使用 **n≤H** 与 `heightExponent=i*lambda+delta`，在完整原题反例条件下推出小素数部下界，不假设任何注册高度有效性。

模块：

1. `UpperSmallPart.lean`：一般 upper-height 下界；只用既有 `noCommon_bernoulli_size`、`window_constant_pos` 与自然数幂运算。
2. `I11SmallPart.lean`：实际 `smallPrimeCount(11)=4`、windowDegree=84、实际 K、128=121+7 的独立 kernel 数值候选；实例化 `n^4≤M^3*smallPrimePart n 11`。
3. `UpperCoverLayer.lean`：新的可执行算术/层检查，复用真实幂族列表完整性、颜色相交检查和全 j goodSegment 正确性；最后公开原题的两个组合数整除结论，保留 p≥i。

一般下界层不需要 `M<n`；该条件仅在推导两种颜色幂族的层检查中要求。所有 n,j 为自然数，保留 `i<j≤n/2`，不以某个 j、某个大素因子或单独 `choose(n,i)` 替换完整 `¬Common n i j`。

预期解锁：i11 正 delta 分支的正式覆盖接口。实际前沿变化仍为零，直到本候选经过 Lean 验收并且真实高度、完整覆盖证书、低行与后续下降均接入。新接口依然调用原始 `powerIntervalList`，不能直接在巨大 M 上运行该列表；紧凑 CRT/幂块验证接口及全量数据仍是另一项工作。本候选不宣称解决先前约 38.9 亿位移步骤的成本问题，不增加 B 原题计数，不作新颖性声明。

主线程数学审查记录：已确认 upper-height 指数方向，lambda>0 用于最后幂比较反推，window_constant_pos 用于消去正常数，不在一般下界擅加 M<n。

最终检查点 2026-09-11 10:59:07 UTC：三文件候选和 14 个 audit roots 已准备；180 个精确整数代数实例及七个已验输入源绑定通过，检查 0.008856 秒。本 worker 的 Lean 调用数仍为零，等待主线程真实编译。
