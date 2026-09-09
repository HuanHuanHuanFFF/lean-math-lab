# 轨迹证书与原题声明独立审查

## 阶段二最终结论（2026-09-09 19:06:59 UTC）

**F1 已解除。结合首阶段题面对照与本阶段实际源码、对象和日志绑定，未发现本轮目标的剩余验收阻断；可接受固定提交 b9b51897f3c614c9295a7e7527057e2ec86f00bb 上的 B699LargeIndex.original_statement 为已经 Lean 检查的本轮原题消费者。**

接受范围恰为所有自然数 n、i、j，1000≤i≤4882、i<j≤n/2 时，存在素数 p≥i 同时整除两个实际 Nat.choose。n、j 无界，p=i 保留，没有证书、出版、EC、Dusart 或结构假设留给使用者。这里不宣称完整 B699、数学原创性或人工同行评审。

最终成功根为 [20260909T185800Z/evidence.json](../verification/20260909T185800Z/evidence.json)，SHA256：

    dc6b30b2c0b329875c48136f2d1f53961e265155021bacd796d4e216c862eb87

该根开始于 18:58:00.493938 UTC，结束于 18:58:35.062083 UTC。记录与实际保留物核对如下：

| 检查 | 独立只读复核结果 |
|---|---|
| 完整项目源码闭包 | 391 个模块；从 Acceptance 的实际源码导入图可达恰好 391 个 |
| 最后一次调用 | 2 项新编译（Complete、Acceptance），389 项按证据绑定复用 |
| 当前源码、对象、原始编译日志 | 391 项逐一计算 SHA256，全部与最终根一致 |
| 源码快照 | 380 份实际保留快照逐一核对，其余记录通过源码哈希及固定 Git blob 绑定 |
| 固定提交 | 391 个当前源码的原始 Git blob 均与 b9b5189 及 final-source-binding.json 一致 |
| 本批具体尾部 | 全部 67 个 tail 均进入闭包；逐个实际日志有成功退出与标准三公理输出 |
| 阶乘轨迹依赖 | 全部 20 个文件进入闭包；承接首阶段已审的 77 段、4882 步 |
| 递归复用来源 | 24 份证据，1409 个模块节点，1018 条复用边；追到 391 条实际成功编译记录 |
| 历史导入版本 | 2650 条直接项目导入与最终固定源码版本一致 |
| 工具链与锁定依赖 | 24 份递归来源的记录一致；Lean 4.33.1，9 项最终依赖 HEAD 与 pin 一致且 clean |
| 源码规则与公理审核 | 源码违规 0、异常公理 0；实际最终定理只依赖 propext、Classical.choice、Quot.sound |

复用链中确有总体失败的旧构建根。审查逐模块核对 exit_code=0、未超时、源/对象/日志哈希及前驱证据哈希，没有将旧根的整体失败改记成功。旧 Complete 的失败结果没有作为最终 Complete 复用。

### F1 的实际处置

已独立读取 [184034Z 失败日志](../verification/20260909T184034Z/logs/compile-0390-research_tasks_B699-Binomial_runs_20260910-large-index-lean-7c4e2a91_lean_Complete.lean.log)：两个旧 Nat 名称产生 unknownIdentifier，旧双整除定理出现 sorryAx，退出码为 1。这份失败记录保留其原有等级。

修复后 Complete.lean:24–25 以 dvd_trans hdiv 接 Nat.gcd_dvd_left / right。相较首阶段源码，Lean 目录只改了这处包装。修复源码 SHA256 为：

    012a65f6a70418144c9e2d7d53276f645809ea873b41f05bb2329a0d8f520d18

[新 Complete 实际日志](../verification/20260909T185800Z/logs/compile-0390-research_tasks_B699-Binomial_runs_20260910-large-index-lean-7c4e2a91_lean_Complete.lean.log) 在 18:58:27.165474 UTC 退出 0，双整除声明准确，公理只有标准三项；日志 SHA256 为 de4cd5999948ab3c85ef7efdd946c4a9311e8eaf86c5ea3acae44cac4ed5b8f5。

[新 Acceptance 实际日志](../verification/20260909T185800Z/logs/compile-0391-research_tasks_B699-Binomial_runs_20260910-large-index-lean-7c4e2a91_lean_Acceptance.lean.log) 在 18:58:35.032099 UTC 退出 0，显示：

    B699LargeIndex.original_statement (n i j : ℕ) :
      1000 ≤ i → i ≤ 4882 → i < j → j ≤ n / 2 →
        ∃ p, Nat.Prime p ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j
    'B699LargeIndex.original_statement' depends on axioms:
      [propext, Classical.choice, Quot.sound]

此日志 SHA256 为 1f318903e68b6487a7c44b39d89ad7b68cc4d0137f1271804402e5066605c085；Acceptance 源码仍为首阶段哈希 cfb1c4a2001f6bd6ff96002e7907ef5d21227614e356986703735028ce556e83。

主任务的 [final-integrity.json](../verification/final-integrity.json) 和 [final-source-binding.json](../verification/final-source-binding.json) 已读取；本审查另行计算哈希、Git blob、实际导入图与递归来源，未仅采信其 success 字段。这两份摘要的 SHA256 分别为 f913a1667eca73b05971b327340cf48d78f459215a1ebfc18023ff3fc2fca845、4006a7fd1c7451b15d785e62a66bf67decfb2244eae0c7beefba61dcbb8bf889。

**本审查没有再次运行 Lean，也没有运行独立第二内核。** 结论是 fresh AI 源码审查及现存真实编译证据的独立绑定复核；最后一根也明确记录 independent_checker_used=false。上述 391 项不能描述为最后一次全部重新编译。源码在本阶段最后一次检查时仍与固定提交一致。

以下保留首阶段原始记录及当时的待核验状态；其中 F1 和所列证据义务现已由本节闭合，保留文字用于追溯。

## 首阶段状态与边界（历史记录）

本审查人为 fresh 子任务 /root/trace_statement_review，阶段检查点为 2026-09-09 18:48:24 UTC；首次读取时钟为 18:39:03 UTC。共用本轮原始预算与 23:59:27 UTC 计划截止，只有主任务可以按原授权记录延长。

本次源码检查点：fb2a991ef7dcab12dedbcb01442e1f2ccde10589。固定数学来源：12c31b8b5729b0017cf8e1423cd98ed5230aaaae。检查时本批所审源码与前一检查点无差异；所审历史 Lean 目录与固定来源无差异。未采用其它并行会话本轮新数学成果、EC 或 Dusart 输入。

**首阶段结论：所审通用轨迹/高度链、具体数据接线与题面转录中，暂未发现数学声音性阻断。最终包装有一处已识别、待修复的 API 编译问题，见 F1。本报告不表示整批 Lean 验收成功；最终成功根及其源/日志绑定尚待复核。**

已读取 AGENTS.md、docs/STRUCTURE.md、Lean research 技能。审查范围包括指定五个通用模块、生成器、dyadic/Base 与 Compare、全部生成源码的索引和证明接线、AllBlocks/Complete/Acceptance，以及固定 HeightRows/TailRange/HeightCertificate/ThreeWindowSize/有限素数链入口。进一步沿固定三窗口链核对了 Common、完整素数部分、严格小素数计数与 p=i 的分母补偿。

本审查未运行 Lean、Lake、生成器、素性重算、大整数证书计算、第二内核，也未停止任何进程；只写本文件。AI 源码审查、独立第二内核、人工同行评审分别记载。

## 锁定题面与定义

Acceptance.lean:7–11 的声明准确为：

    ∀ n i j : ℕ, 1000 ≤ i → i ≤ 4882 → i < j → j ≤ n / 2 →
      ∃ p : ℕ, Nat.Prime p ∧ i ≤ p ∧
        p ∣ Nat.choose n i ∧ p ∣ Nat.choose n j

n、j 无额外上界，也无证书、出版、结构或分析假设。

固定 TailRange.lean:8–10 对闭区间内所有 i、所有合法 n、j 及 n≥N 量化，结论是实际二项式 gcd 的素因子且 i≤p。固定 GapBridge.lean:9–10 的 Common 就是同一个原题 gcd 命题。DivisorTransfer.lean:19–20 的 primePart 纳入 p≥i 的完整素数幂；SmallPartBound.lean:10 的 smallPrimeCount 统计全部 p<i。因此 p=i 保留在大素数部分。

固定 ThreeWindowWeights.lean:37–68 使用模数 p^(e + if p=i then 1 else 0)，再转移 p^e，明确保留 p=i 时分母需要的额外一个 p。实际素数部分的三窗口传递通过 avoidingPart_eq_primePart_of_noCommon 接到原题反例，未另加未证结构条件。

## tailRange_of_row_checked 的全部前提

记 L=row.lo、U=row.hi、q=2*row.s-row.r，以及

    E = row.t*q + row.s*(row.s+1)
        + (U-row.r-1)*(U-row.r)/2

减法和除法全部是 Nat 运算。[CertifiedBlock.lean](../lean/CertifiedBlock.lean):69–75 恰有五项语义数据前提与一个行检查：

| 前提 | 所需方向 | 具体生成源码的消去方式 |
|---|---|---|
| hcount | smallPrimeCount U ≤ t | le_of_eq B699CountData.count_U |
| hf | U! ≤ factorialUpper.value | good_U.2.1 |
| hs | windowS.value ≤ windowFactorials s | good_s.2.2.1 |
| hm | windowM.value ≤ windowFactorials (L-r-1) | 第二次 good_s.2.2.1，实际 L-r-1=s |
| hd | descLower.value ≤ N.descFactorial L | good_L.2.2.2 |
| hcheck | rowCheck bits row = true | 具体 by decide +kernel |

rowCheck 本身没有被误称为以上五项语义前提的证明；每个具体 tail 都逐项提供这些证明。全部 67 行的 L-r-1=s 已静态核对，所以两个窗口可复用同一个下界；hm 的 Lean 类型仍须通过该等式对齐，Python assert 不能代替它。

rowCheck（60–67 行）检查其余全部义务：2≤L、L≤U、s<L、U≤N、E≤L*q；阶乘上界幂轨迹、N 的上界幂轨迹、下降阶乘下界幂轨迹；最终有向严格比较。通用声音性不需要 q 或精度为正；全部实际行的 q 均为正。

## 数学方向与 Nat 端点

- HeightBlock.lean:20–26 用集合包含证明完整严格小素数计数的单调性。i=U 时仍统计 p<U，并未误移到 p≤U。
- 窗口次数、常数使用 Nat 截断减法的单调性。固定 window_degree_formula 对 r<i 和 r≥i 分别证明，因此重写没有暗中把 Nat 减法当整数减法。
- 左侧放大到 U! 与 N^(t*q+windowDegree U r s)。指数单调所需 N>0 由 2≤L≤i≤U≤N 推出。
- 右侧缩小到 windowConstant L r s 与 N.descFactorial L。下降阶乘长度单调只在 i≤N 使用，额外因子均至少为一，不会越过 N 后遇到零因子。
- 次数界方向是 heightExponent i r s ≤ E ≤ L*q ≤ i*q。
- constantLower_le 全程向下取整，包括窗口下界平方及 2 的幂。最终链为：精确左侧 ≤ 向上取整左侧 < 向下取整右侧 ≤ 精确右侧。
- 固定 common_of_height_certificate 以已证 choose-ratio 不等式和次数界，把 N 点的严格比较推进到所有 n≥N。j 只保留原题 j≤n/2。

因此，只要各有限前提具有真正的 Lean 证明，所审通用行引理有正确的源码路径给出 TailRange L U N。

## 轨迹完整性与全部具体源码

[生成器](../experiments/trace-certificates/generate.py) 输出字面量尾数/指数状态。Python assert、筛法与 manifest 状态不进入 Lean 证明。

阶乘轨迹：

- 初态准确为 k=0，所有值为一。
- 每步检查 b.k=a.k+1 及四项局部更新。下降阶乘乘数为 N-a.k，对应生成器 next-index 循环中的 N-k+1。
- 窗口更新乘入新的 b.k! 下界，对应 1!⋯b.k!。
- traceCheck_sound 从已证起点 Good 推至每个列表成员及终点；空表只能保留起点，非空表不能跳过或重复阶乘索引。
- 当前生成器未调用新增 segmentCheck，而以 traceCheck_sound 的第一分量取得终点。这样仍可靠：所声明 Good N state_hi 必须与实际字面量终点定义等同。本审查还直接比较了两者字面量。
- 内部选中状态经 good_of_mem_trace 和内核决定的成员证明提取。

只读全量源码解析得到：

| 项目 | 实际源码结构 |
|---|---|
| 阶乘文件 | 20 |
| 已声明检查段 | 77，每段至多 64 个后继 |
| 字面量后继索引 | 1 到 4882，各一次 |
| 首段 | 0→64 |
| 末段 | 4864→4882，共 18 步 |
| 命名状态 / Good 声明 | 264 / 264 |
| 状态字面量一致性 | 每个命名状态均等于其轨迹中的字面量 |
| 行中的 Good 语义证明引用 | 268 项，全部有实际声明 |

每个阶乘文件导入前一文件。每个终点 Good 接到相应检查段及上一个 Good；内部 Good 接到相应段及成员证明。具体命题都使用 N=20000000。

幂轨迹：

- 每步只从显式 previous 状态检查指数翻倍或翻倍加一及相应有向乘法。
- 起点固定为指数零、值一；末端同时检查请求指数及最终 dyadic。
- 空轨迹不能认证任意正指数或任意终值。
- 全部 201 条实际行轨迹的指数转移、终指数及终值字段准确。这里是源码形状核对，没有第二次重算舍入算术。

dyadic/Base 证明对任意自然数精度成立的向下/向上界。生成器 bit_length 位移和整除向上取整与 Lean 定义一致。Compare 显式处理零尾数，消去公共 2 的幂，并证明 size 快捷分支的严格方向。无外部大整数计算结果被当成证明。

## 完整计数与区间拼接

CountIntervals.lean:8–27 检查 [start,start+length) 的每个整数。它通过归纳接到固定 fastSmallPrimeCount_eq；后者使用精确整数平方根试除的声音性与完备性。得到的是完整 smallPrimeCount 等式，不是选中素数列表的下界。

具体链从固定 count_999=168 出发，有 67 次连续扩展直到 4882。每段前一定理、start、length、旧计数和计数增量的源码算式都对齐；67 行的 t 与相应 U 点声明计数一致。每项数值素性义务仍待所属 Lean 构建实际通过。

AllBlocks 有 67 个叶子、66 个 tailRange_combine 节点。逐节点静态解析确认左右端点、共同 N=20000000、右段下界 mid+1；根恰有 67 个不同叶子，完整覆盖 1000..4882 的 3883 个指标。此结论依据全部 Lean 拼接源码，不仅依据生成器 assert。

Complete.lean:12–17 在 n≤20000000 分支使用固定有限消费者；该消费者只要求 i≥185、原题合法 j 及相应 n 界，具体素数链在内部提供。另一分支使用 N≤n 的完整尾部。20000000 边界无缺口。

manifest-full.json 的 89 项源码 SHA256 均与当前文件一致；其状态明确为 generated only，仍需逐个 Lean 检查及完整依赖闭合验收。没有外部 PASS 标记替代行定理或最终声明的证明。

## 已识别问题及待核验项

**F1：最终双整除包装的 API 名称，检查点 fb2a991，Complete.lean:24。**

当前源码使用 Nat.dvd_of_dvd_gcd_left / right。主任务在本检查阶段通知：固定来源中不存在这些名称，拟在冻结构建记录实际末端结果后，改用经 Nat.gcd_dvd_left / right 的整除传递。

源码所需数学转换简单且方向正确；本审查未运行 Lean，尚未独立确认实际报错或修复结果。F1 记为已识别的 API/展开阻断，须有具体修复源码与新成功根闭合；它不构成二项式定理或高度证书数学方向的缺口。审查者首次猜测的工作区 .lake/packages/mathlib 路径不存在，不能从这一读路径失败推断 API 的任何相反结论。

最终接受本轮目标前，下一检查点必须核对：

1. 修复后的 Complete/Acceptance 就是新成功根记录哈希的源码。
2. 67 个块证明、77 个阶乘段、完整计数链、通用声音性及固定复用依赖均被该根或其明确源/对象/日志来源覆盖。
3. original_statement 的实际展开和传递公理输出不存在 sorryAx、项目公理、本机代码计算公理或未批准依赖。
4. 最终根的退出状态、日志、工具链/依赖版本、源码/对象哈希一致；进度消息不能代替完成证据。
5. 本检查点之后发生的相关源码变化须复核并按需重新验证。

完整 B699、新颖性、人工审查、独立内核与公开状态仍单独记载。

## 审查操作及哈希快照

只执行了短只读 PowerShell、rg、git diff、JSON 解析及 SHA256 读取。静态解析涉及字面量、索引、引用、小型端点算式和图拼接；没有生成或重算数值证书。

第一版行字段审查脚本因 PowerShell 数组连接优先级，把四个字段合成一个字符串，产生 67 项误诊断。修正脚本后逐项核对全部 268 个字段，错误为零。这是审查脚本构造问题，不是候选源码失败；不影响独立的阶乘索引、计数链、指数转移、图与清单检查。

| 源文件 | SHA256 |
|---|---|
| lean/HeightBlock.lean | 3018eee9c04a05c38e1d536f9928f06906905e43c699b791f3f38d50ce422fd2 |
| lean/FactorialTrace.lean | 359c4c7147cad7964c50a480c71484794a7208104c8f652fd3f0b0ead786dd67 |
| lean/PowerTrace.lean | 27e6f202d9d587b4d776fe95040d7f67a8a42705e5709e3cc36f24d4557a0347 |
| lean/CertifiedBlock.lean | b22590ac9f2cbc1631d205160dc39e44f52a5031525af7789cf05453cdd9ec3a |
| lean/CountIntervals.lean | 619d7d7d615d11a5b428767c6b2fa86d055b069da9556ebf542712d599d0bdb2 |
| lean/dyadic/Base.lean | 2e9aa93e364a1e2608083de39a4e6532e5cb480addccd5eea8f49d4b56084002 |
| lean/dyadic/Compare.lean | cd66456ad5cb0990ca95e9b4ddaea8d8f12f0cfcd25283d8662c0a6089a8bf79 |
| lean/AllBlocks.lean | 9e804bc8198ec673d2acec36a6670b61d91283f73f9c8eaf7b917c68997a6dc7 |
| lean/Complete.lean | 1d36f55d4d425f9649a816dd37cf3a396c42f6f8149246d4e6bc00c4de0b4ebe |
| lean/Acceptance.lean | cfb1c4a2001f6bd6ff96002e7907ef5d21227614e356986703735028ce556e83 |
| experiments/trace-certificates/generate.py | 20ed4b6327ce96cc75862647d10ee3ce51183dac53de3a360df2641be838c792 |
| experiments/trace-certificates/manifest-full.json | 2e7a807ca2c253341c84d45797bc4eb9b6b4003c19288e069ee63002c710aea9 |
