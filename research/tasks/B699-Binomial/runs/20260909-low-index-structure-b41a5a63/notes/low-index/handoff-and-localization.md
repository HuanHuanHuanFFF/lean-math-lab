# 低指标探索暂停与素数幂定位交接

Owner `/root/low_index_mechanism`，Astra / Max；共同开始 2026-09-09 05:59:09 UTC，原截止 10:59:09 UTC。主线程在约 07:15 UTC 指示暂停新的低端探索，改补主线 Lean 定位桥。本记录约 07:24 UTC。

## 已保存的数学成果

- [首份独立路线](initial-memo.md)：保留独立输入边界、零净指数 Baker 候选及它为何因主线程更强路线而未展开。
- [经典 S-part 的准确消费者](s-part-finiteness.md)：固定 i≥5 的无效有限性，Mahler/EEES/BEG 的先例和常数边界。
- [既约斜率结构](reduced-slope-structure.md)：i3 反例4|n、两指标固定既约分子高度、i3/i4 全部 j|n 子族。
- [三次 Krawtchouk 值](cubic-krawtchouk-gap.md)：保留零值分支，给 i3 的 n^(2/3) 级中心排除。
- [i4 平方内容与 CRT](quartic-content-crt.md)：严格 U>n/4，以及两个素数幂加不同小偏移的完备候选行参数化。
- [全局行计数推论](global-row-density.md)：i3 的64X^(1/4)、i4 的对数平方计数，和已采用高指标结果组合后的密度结论。
- [七个预先指定标量](scalar-checks.json)：实际原题 gcd、U/V/D、平方整除与 Krawtchouk 公式的精确 BigInt 诊断；没有范围扫描。

以上数学记录均为纸面成果，尚未自动取得本仓 Lean、AI 独立审查或原创性状态。最大的未界参数仍是低指标既约分子 b，以及 i4 CRT 的两个指数。没有全解、没有原题反例、没有全球可执行终止界。

最后未展开的一条想法：若 G=gcd(C(n,i),C(n,j))，H=C(n,i)/G，则把系数恒等式除 G 后，H 整除全部系数；判别式可使用实际 G 而不是完整小部分 U。i4 的经典二次系数不变量 `I=12f0f4−3f1f3+f2²` 纸面展开为 Z/2，因此 H²|I。任何关于最小不变量、额外常数或新覆盖的后续推论均尚未验收，暂停后未继续开展。

## 当前 Lean 交付

独占源码：[SmallPrimeLocalization.lean](../../lean/SmallPrimeLocalization.lean)。主接口为

`B699LowIndex.binomial_prime_power_localization`

对任意自然数 n,i,p，在 `1≤i≤n` 与 `p.Prime` 下给

`∃ a<i, p^((n.choose i).factorization p + i.factorization p) ∣ n−a`。

同时暴露赋值加法界 `binomial_factorization_add_index_le` 与任意 `e≤` 实际二项式指数的版本 `binomial_prime_power_localization_of_le`。p=i 没有被排除，完整下标 p 部分保留；不要求正 e，也不要求 noCommon。它只做实际原始二项式指数定位，不假设“小素数结构”作为前提。

证明复用 B686 的删最大赋值结果；私有 Finset 双射 `j↦i−j` 把正向区间积改成 n 的下降阶乘，再用 `i! C(n,i)=(n)_i` 和 `i!=i(i−1)!` 取消 `(i−1)!` 的赋值。

直接项目依赖只有两个旧源：

- `research/tasks/B686-Four/formalization/UniformDistance/SmallPrime.lean`，SHA256 `3D9140131479B10D35CCD87884381E225331B2B77C5C80AE211AB9FE19273A6F`。
- 其导入 `research/tasks/B686-Four/round8/lean/BigPrimeSupport.lean`，SHA256 `CD3B1E0FD5282723597ACAA2D5F3290917D9756A9E2C1D682668AC77A6B98D2E`。

两旧源属于给定基线 `7fd3928656489afe2c80698f0a09d1d933444186`，未复制或改动。另直接导入 Mathlib.Data.Nat.Choose.Basic。固定 toolchain 文件为 `leanprover/lean4:v4.33.1`。

07:21 UTC 首稿源码 SHA256：`663B2129A3B18E1AD8003BE7CFEF6792CAF8375E986284B228F098921A8B6477`。这只是交付源码哈希，不是编译或验收证据；后续修订须另记。

## 验收和资源边界

我只读源码、写独占文件并检查无占位标记；没有运行 Lean、改变依赖、提交或推送。末尾三条实际 `#print axioms` 供主线程新输出闭包执行。旧源若需重新生成输出，由主线程独占串行编译。

当前最有用的下一步：主线程返回本文件第一次真实 Lean 诊断；我仅修这个源码并回报。编译通过、实际公理输出和最终主线消费者通过需分别记录，不由纸面证明或该文件存在性代替。

## 08:06 UTC 接续：定位已通过，新增大因子见证首稿

主线程明确报告 SmallPrimeLocalization 已与 SmallPowerIntervals 一起通过新的完整输出闭包，验证目录为本批 `verification/20260909T074627Z`。这是主线程执行的实际 Lean 验证，不是本子任务自行运行；此前“等待编译”一段保留为07:24的历史状态。

随后主线程把本子任务转到独占 [LargeDivisorWitness.lean](../../lean/LargeDivisorWitness.lean)。08:05首稿已交，SHA256 `8123D5EC2A766974BF9CAD0753B0261405EF71548CD3DEE625FEAD65EF0C39F0`；目前仍待它自己的新编译和公理输出。

新文件只导入本批 ThreeWindowSize，不依赖 IntervalCover。定义 RowWitness、GoodSegment、goodSegmentBounds、goodSegmentCheck 和 goodSegmentCheck_sound；g 在 sound 定理中为隐式参数。大因子分支的布尔检查只有单点、D>0、D与(i−1)!互素、i!*D整除下降阶乘及严格整数大小；它不执行实际二项式的大整数因数分解。

符号正确性通过“D与smallPrimePart互素，故D整除实际primePart”接上已验三窗口大小消费者。与(i−1)!互素保留 p=i，不能改用i!。topPrime区间保留p≤lower及upper<p+i，利用原始i<j≤n/2得到正确的顶端素数假设。没有增加结构公理、占位证明或外部计算前提。

当前我仍不运行 Lean 或数学计算，只在主线程反馈后修改独占新源码。
