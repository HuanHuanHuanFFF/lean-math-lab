# B699 最终声明与证书覆盖审查

审查者：fresh Astra/Max，只读数学审查。开始于 2026-09-09 13:05:28 UTC；首次检查点上限为 13:25:28 UTC，无其他旧截止继承。本记录的源码/数据检查完成时点为 13:13:33 UTC，证据状态会在检查点前按实际运行结果补记。

结论：**当前未发现数学声明、原题量词、计数边界或证书拼接的阻断性错误。完整 677 项仍不能标为 Lean 已接受：最终消费者及剩余具体数据的实际验收尚未结束。** 这是一份源码对应与证据审查，不是新的 Lean 编译，也不是独立第二内核认证。

审查只写本文件和 [statement-audit-coverage.py](statement-audit-coverage.py)。未运行 Lean、未重算素性、未计算高度证书中的大整数幂、未改动冻结 Lean 源、未提交或发布。

## 锁定声明与采用来源

目标为所有自然数 n,i,j：323≤i≤999、i<j、j≤n/2 时，存在自然数素数 p，满足 i≤p 且 p 整除 Nat.gcd (n.choose i) (n.choose j)。不限制 n,j 的其他范围，不把 p=i 改为 p>i；仅审查首批 677 项。

读取了仓库 AGENTS、STRUCTURE、lean-research、本批 inputs/TASKS.md 主机段、问题入口及当前 frontier。依赖采用固定提交 63a04b064d62e7e8752b1edd75c186d07dc57a20 的既有接受接口。对所涉及旧批 lean 路径和 Math/B699/CofactorCriterion.lean 执行只读 git diff --name-only，未发现与该提交的差异。工作树观测 HEAD 为 651ad3a0bcbcb1f87c386f1df751644ece8f882a；本轮未提交源码的接受状态由本批实际证据确定。

固定版本：Lean 4.33.1；mathlib 0df444a360eaa60ab8c11dca51a86af692955474。当前 manifest SHA256 为 fdbefe6c9b737713c8b9c602643afa154f49dda4f48bfc4d2f64183fdea728a0。122816Z 实际证据的 9 个包均报告观察到的 HEAD 等于 pin 且工作区干净。

## 1. 完整 smallPrimeCount 与每条原始高度证书

[SmallPartBound.lean](../../20260909-large-prime-structure-cb4764f0/lean/SmallPartBound.lean) 第 10 行定义 `smallPrimeCount i := ((Finset.range i).filter Nat.Prime).card`。因此恰好计数所有 p<i，不使用未经完整性证明的名单，也不计入 p=i。

[SmallPrimeCount.lean](../lean/SmallPrimeCount.lean) 第 10–24 行证明实际 trialPrimeCheck 的完备性；固定旧批 TrialPrimeCheck.lean 第 11–26 行检查 2≤p 及所有 2≤d≤Nat.sqrt p 的不可整除性并证明声音性。二者配合 `fastSmallPrimeCount_eq` 第 37–49 行对 i 归纳，把逐整数计数接回上述 Finset 基数。

[RawHeight.lean](../lean/RawHeight.lean) 第 27–30 行的递推需要前一项真实等式和当前整数 trialPrimeCheck 的具体布尔值。独立解析全部 16 个 Count 块，核对：

- count_0..count_999 恰有 1,000 个无参数声明，范围连续、无重名；count_0=0。
- 999 个后继声明全部使用 i−1 的前驱及相同旧计数，并要求一次 `by decide +kernel` 检查当前整数；跨块导入也是前一块。
- count_323=66、count_999=168；所有 677 个高度行采用的 t 与对应 count_i 的陈述一致。

[RawHeight.lean](../lean/RawHeight.lean) 第 10–14 行和 [HeightRows.lean](../lean/HeightRows.lean) 第 10–14 行保留完整阶乘常数、下降阶乘、自然数指数与严格不等式。`heightValid_of_raw` 第 20–25 行只有以证明过的 hcount 替换 `heightExponent`，没有省略原始整数不等式或增加原题结论假设。HeightRows 第 20–25 行直接使用旧接受接口 `common_of_height_certificate`，因而结论覆盖全部 n≥N 与全部合法 j。

旧 ThreeWindowSize 中 windowConstant 第 19–21 行为完整 `2^(2*windowSum s) * (windowFactorials s)^2 * windowFactorials (i-r-1)`；第 51–56 行的公式等价于任务中的 C₀。degree 使用 ≤ 而不是正缺口假设，来自旧消费者已经证明的充分条件；严格高度比较仍保留，不能把此处当作遗漏条件。

## 2. 高度的全部 n≥2,000,000 与 323..999 覆盖

对实际源而不是生成器 manifest 作解析：43 个 heightBlocks，加上专门的 RawHeight323/999，恰好有 677 条 RawHeightValid 的具体声明。每条 i,r,s,N,t 逐项对应 compact 输入；r=⌊i/3⌋、s=⌊7i/10⌋、N=2,000,000，未发生行错配。

[statement-audit-coverage.py](statement-audit-coverage.py) 沿 `tailRange_singleton`、`tailRange_combine` 的实际引用解析每一棵证明树，验证每个合并的右子区间从 mid+1 开始。最终 [AllHeights.lean](../lean/AllHeights.lean) 的 coverage 恰好采用 323..999 的 677 个叶子各一次；特殊 323/999 采用各自 certified 高度，其余逐条采用相应 Counts.count_i 与 raw_i。没有漏项、重叠代替缺项、空区间或未被最终树采用的输入行。

[TailRange.lean](../lean/TailRange.lean) 第 8–10 行保留自然数 n,i,j 的完整量词，只有 N≤n 的尾部条件；第 19–25 行合并不会引入额外 j 或 n 限制。所检查关键定义在实际闭包中没有同名重定义。

高度输入 SHA256：`2d799bab3d72081a356fb3c69d63e9b9c614aaea2280321c28d14aa908bb9199`。

这里的“677 条声明已连接”是源码结构结论。尚未编译成功的具体算术声明不能因此成为 Lean 定理。

## 3. 素数链覆盖全部 n≤2,000,000

[primeChain/Core.lean](../lean/primeChain/Core.lean) 第 18–21 行的归纳类型要求每个起始节点 Prime、严格递增、下一节点≤当前节点+gap；终点也由 singleton 或尾链证明 Prime。第 36–46 行 trans 只允许相同数值的公共端点连接。无需断言已经列出全部素数。

第 50–58 行 `near_top` 对 lo≤n<hi 给出 p.Prime、p≤n、n<p+gap。其 p≤n 是非严格比较，所以 p=n 不会丢失。接入 [PrimeChain.lean](../lean/PrimeChain.lean) 第 17–33 行时，合法条件推出 i≤n，并由 gap≤i 得到 n−i<p。旧 GapBridge `common_of_top_prime` 第 81–93 行接受 p≤n，推出 p>i、p>j 后通过真实二项式模判据得公共素因子。因此有限段取得更强的 p>i 见证，并没有把全局目标的 p≥i 门槛改掉；p=n 时 n−p=0 的同一证明仍有效。

独立解析实际各段数组及 `.trans` 引用，重建结果：

| 项目 | 观测 |
|---|---:|
| 素数链块 | 43 |
| 组 | 3 |
| 具体反射检查段 | 687 |
| 节点 | 10,992 |
| 边 | 10,991 |
| 首节点 | 2 |
| 末节点 | 2,000,003 |
| 最大相邻差 | 322 |

每个 segmentCheck 都是具体 `trialChainCheck ... = true := by decide +kernel`，并由 trialChainCheck_sound 接到该段。重建的最终有序数组与 compact/outputs/prime_chain_2m_gap322.txt 逐项相同；该输入 SHA256 为 `3f1beae9cab6c6621e5c0d976586e78da12724bad0ee52e358d281784f053f0d`。此核对仅比较数组、顺序、相邻差和引用，不重算素性。

[primeChain/Complete.lean](../lean/primeChain/Complete.lean) 第 10 行把 AllPrimeBlocks.joined 接成具体 PrimeChain 322 2 2000003；第 13–16 行的 `common_le_two_million` 没有 hchain 参数。n 的上下界均能由原题合法性与 n≤2,000,000 推出：最低合法 n 至少 648，故 n=0、1 不构成漏项；n=2,000,000 仍严格小于链末端。

## 4. 首指标与最终原题声明

[FirstComplete.lean](../lean/FirstComplete.lean) 第 10–14 行只有自然数 n,j 和 `323<j`、`j≤n/2`。按 n≤2,000,000 分支，分别调用具体整链消费者与 tail_323_certified。它在源码层确实声称 i=323 的全部合法 n,j，而非检查器声音性或有限 n 结论。

[MiddleComplete.lean](../lean/MiddleComplete.lean) 第 11–16 行仅含自然数 n,i,j 与四个原题范围条件。有限分支采用实际 two_million_prime_chain，高度分支调用 AllHeights.coverage，n=2,000,000 被有限分支包含。没有外加证书真值、素数计数真值、解析素数分布定理、n/j 上界或原题结论前提。

源码 SHA256：

- FirstComplete.lean：`21177f61f08ad63825bfee7b10a97eceb90ad254f7289f0f64fc682e66fc51fd`。
- MiddleComplete.lean：`134879221754901924123c8980b46a0e7eb088974dc025e778caa0b37b6cd918`。
- 两根联合实际项目导入闭包：130 个文件；按“相对路径 空格 SHA256 换行”排序后的清单摘要为 `a25251a2190c34eaee4decfc98843edb0559ba50133dca65c3511004cec00d1e`。

## 5. 实际验收证据与阻断

本次独立检查了各成功记录的当前 source before/after SHA 与日志 SHA，并直接解析对应日志中实际打印的传递公理，不只采用 evidence.json 的 success 字段。

| 验证根 | 已结束状态 | 实际支持 |
|---|---|---|
| [122816Z](../verification/20260909T122816Z/evidence.json) | success=true；33/33 项源与日志匹配 | 完整 count_0..999；323 与 999 的实际高度及无限尾部消费者 |
| [124652Z](../verification/20260909T124652Z/evidence.json) | success=true；33/33 项源与日志匹配 | 984..999 的整个无限尾部块 |
| [130116Z](../verification/20260909T130116Z/evidence.partial.json) | 13:13:33 观察：finished_utc=null，尚未结束 | 当时完成 33/72 项，最后为 Block026；未出现最终 common_323 的实际输出 |

前两成功根中的实际公理输出无异常，尾部消费者及计数/转换接口的传递公理都只在 `{propext, Classical.choice, Quot.sound}` 中。130116Z 已结束的逐模块记录也与当前源和实际日志对应，但 partial 的整体 success=false 是“还未完成”的状态，不据此声称失败，更不能据此声称完整目标已通过。

对 130 个项目源的独立 policy 扫描没有发现 sorry/admit/sorryAx、项目 axiom、native_decide、unsafe 或额外自定义证明执行代码。实际 runner 的 policy 同时禁止新增 axiom/constant；其新编命令带 -j1 与固定内存设置，未见跳过内核参数。extend.py 对重用源、对象与实际日志做哈希复核，重新解析公理输出并递归检查项目依赖。此审查没有重哈希每个 .olean，也没有重跑 Lean；对象重用的运行时保证来自已检查的验证记录与程序，不能声称独立第二内核复验。

**阻断 B1（验收证据，而非已发现的数学反例）：** 原题完整消费者的实际编译、公理输出及对应具体数据闭包还没有全部结束。当前可以报告 `{323}∪[984,999]` 的 17 项无限尾部已验；不能报告 677 项全域已验，也不能仅因源码里存在 common_323 就报告其已验。FirstComplete 完整成功之后，只能先把该成功根真正接受的指标记为全域；其余高度和 MiddleComplete 仍须各自完成验收。

解除 B1 所需的最小证据：FirstComplete 的完整成功记录和实际 common_323 公理输出；随后 MiddleComplete 及其全部具体高度/素数链依赖的成功记录、源对应及实际 common_323_999 公理输出。若只有前者完成，应保留“首指标全域已验、677 项未完成”的区别。首批未完成前不把 185..322 扩展计入接受范围。

## 复核命令与边界

在指定隔离工作树运行：

```powershell
& 'C:/Python314/python.exe' -B 'research/tasks/B699-Binomial/runs/20260909-middle-index-cert-1a78f8cd/reviews/statement-audit-coverage.py'
```

该脚本只读原始输入、实际 Lean 源、已保存日志和 evidence，不调用生成器、不调用 Lean、不输出额外文件。最初两次解析器调试分别修正了相邻 def 的分隔，以及旧源未限定 #print 名称在实际日志中展开为完整命名空间的识别；这些是审计脚本问题，不是被审数学源码的问题。最终 13:13:33 运行的全部数学结构检查通过，已结束证据的 problems 列表为空。

无新颖性或完整 B699 解答结论；不将其他批次的结果或外部 PASS 提升为本批接受结果。

## 首次审查收束检查点

2026-09-09 13:19:31 UTC（本次耗时 14 分 03 秒）：本次源码、数组与日志核对再次通过，130 项联合源闭包摘要仍为 a25251a2190c34eaee4decfc98843edb0559ba50133dca65c3511004cec00d1e。最新 130116Z 证据类型为 evidence.partial.json，success=False，已完成且源/日志匹配 44/72 项，最后为 research/tasks/B699-Binomial/runs/20260909-middle-index-cert-1a78f8cd/lean/primeChain/blocks/Block036.lean。全部被检查证据的 problems 均为空。当前仍无已结束的 common_323 最终成功根，B1 保留。

首次有界审查已完成；此后只需随具体运行的完成或失败更新验收意见，不需重做数学源码审查，除非冻结源发生变化。
