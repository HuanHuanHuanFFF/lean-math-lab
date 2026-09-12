# i=11 原题链独立审查

**结论：在本次所列范围内，未发现题面弱化、隐藏原题假设或数学覆盖遗漏。** 这是一份 AI 源码审查及独立精确整数诊断，不能代替 Lean 编译、公理审计或人工同行评审；本审查新增原题内核接受数为 0。

审查者 `/root/i11_statement_review`，Astra/max。开始 2026-09-12 08:20:41 UTC；无总时限，已向主任务报告 20 分钟检查点。实现及旧记录只读，唯一写入范围为本目录；未调用 Lean、Lake 或另起并发编译。采用 `lean-research` 和 `verification-before-completion` 的题面对照、证据边界与完成前核验要求。

审查树 `D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb`，HEAD `f0b0cc10fbab9db7133aae9914178caf0b4c587b`；实际未提交源码以 [最终 1552 个项目依赖哈希](source-manifest-final.json) 为准。工具链为 `leanprover/lean4:v4.33.1`，mathlib 固定 `0df444a360eaa60ab8c11dca51a86af692955474`。该清单只遍历项目本地 `research`/`Math` 导入；不是外部数学库对象审计。

## 原题与根定理

锁定目标为：

```lean
∀ n j : ℕ, 1 ≤ 11 ∧ 11 < j ∧ j ≤ n / 2 →
  ∃ p : ℕ, p.Prime ∧ 11 ≤ p ∧
    p ∣ Nat.choose n 11 ∧ p ∣ Nat.choose n j
```

[Final.lean](../../lean/I11OriginalFinal/Final.lean) 的 `original_i11`（33–39 行）逐项使用上述类型、量词、闭阈值与两个整除条件；`original_i11_gcd`（26–30 行）只改为等价 gcd 形式。`common_i11`（14–23 行）只接收 `11<j` 和 `j≤n/2`，在反证分支内部依次产生初始高度、四级下降高度、候选归属，再由候选通用见证得出 `Common`，最终排除 `hno`。

实际 `Common` 是旧批次 [GapBridge.lean](../../../20260909-large-prime-structure-cb4764f0/lean/GapBridge.lean) 9–10 行的 `∃ p, p.Prime ∧ i≤p ∧ p∣gcd(...)`。本次项目依赖扫描仅找到这一项 `Common` 定义，未见针对 `Nat.choose`/`Nat.gcd` 的替换记号。最终 [Audit.lean](../../lean/I11OriginalFinal/Audit.lean) 27–35 行包含显式原题类型核对与三个根定理的传递公理输出；它的待验源码不是已完成的审计结果。

## 边界逐项核对

| 核查点 | 源码依据与结果 |
|---|---|
| 全部自然数 n、j | `Final.lean:33–39` 没有 n 上界、j 额外范围、候选或表检查参数。合法输入自动满足 n≥24，故 choose 的越界空情形没有混入证明。 |
| p=11 与完整幂 | [DivisorTransfer.lean](../../../20260908-external-reductions-b3c1b7/lean/DivisorTransfer.lean):19–20 的 `primePart` 筛选 `threshold≤p`，指数是完整 `factorization p`；[I11SmallPrimes/Components.lean](../../lean/I11SmallPrimes/Components.lean):16、22–26 使用实际 choose 的完整 2、3、5、7 分量，11 仍在大素数部分。 |
| p=i 的额外分子指数 | [PrimePowerTransfer.lean](../../../20260909-large-prime-structure-cb4764f0/lean/PrimePowerTransfer.lean):14–17 明确为 `e + if p=i then 1 else 0`；[I11SmallPrimes/Window.lean](../../lean/I11SmallPrimes/Window.lean):24–29 从 `v_p(choose)+v_p(11)` 的定位定理取实际分量的整除，没有把它替成平方自由部分。 |
| avoidingPart=primePart | 上述 `PrimePowerTransfer.lean:197–213` 只在 `¬ Common` 假设下等同；[ThreeWindowSize.lean](../../../20260909-low-index-structure-b41a5a63/lean/ThreeWindowSize.lean):141–165 和 [LargeDivisorWitness.lean](../../../20260909-low-index-structure-b41a5a63/lean/LargeDivisorWitness.lean):40–61 的实际消费者保留完整原题域。 |
| 五条边与初始高度 | [I11InitialHeight/Product.lean](../../lean/I11InitialHeight/Product.lean):18–50 内部供给五条实际边及四个实际分量上界；逐项核对这些实际边的公开定理仅要求 `2^15360≤n`。`Height.lean:12–20` 在该尾段反证，`Compression.lean:12–16` 内部供给得到的初始高度。没有把抽象图边当未证明的原题公理。 |
| 初始压缩的低指数 | [CubicCover/Pair.lean](../../lean/CubicCover/Pair.lean):21–47 先推 h≤amax，再对 h<astart（包括 0）走 `low_exponent_height_cut`；其余范围使用连续块。`CubicCover/Coverage.lean:26–40` 检查相邻块端点，并对另一指数 k 不设上界。`I11Compress/Compression.lean:31–39` 显式保留 n<2^98。 |
| 四级高度端点 | [AllStages.lean](../../lean/I11CRTConsumers/AllStages.lean):19–49、51–131 使用 `max M (max 109 upper)+1`，把 n≤upper 转成下一阶段 n<H，未遗漏等号。五阶段 H/M、cutoff 及四次连接均独立复算。 |
| 实际反例到终端窗口 | [I11Bounded/ActualBridge.lean](../../lean/I11Bounded/ActualBridge.lean):13–41 内部取得不同 p、q∈{2,3,5,7}、正完整指数、正有界余因子和两个实际窗口。位置可以相同，不假设 r≠s 或余因子互素。 |
| 小 n 与小指数 | [I11TerminalCrt/Actual.lean](../../lean/I11TerminalCrt/Actual.lean):25–41 先处理 n≤M、n<110，再调用实际窗口桥。末端表指数从 1 开始是因为桥已证明指数正；小 n 分支覆盖到 max(M,109)，没有遗漏。 |
| 全部偏移、零与负数 | `CrtGrid/Cell.lean:19` 的偏移是 (0..20)−10；`I11TerminalCrt/RowCell.lean:14–31,40–75` 使用有符号 d、整数坐标及完整参数范围。`CrtPair/Parameterization.lean:45–51,76–81` 允许负 seed C；0 residue 取正代表 Q，d=0 未被剔除。 |
| 六对与换序 | [I11TerminalCrt/Dispatch.lean](../../lean/I11TerminalCrt/Dispatch.lean):12–69 显式处理全部 12 个有序不同素数对。`Pair.lean:37–47` 与 `Grid.lean:51–62` 同时交换指数、余因子与偏移，方向一致。 |
| 闭区间与高度 cap | `Grid.lean:34–49` 从实际窗口推出 `[max(PA,QC),min(PA,QC)+10]`；`heightCap=min M ((H−1)/P)` 与严格 n<H 相符。`IntervalCover.lean:12–24` 使用闭区间及下一起点 b+1；间隙会使检查失败。 |
| 人工低域 padding | [I11TerminalFinal/Extended.lean](../../lean/I11TerminalFinal/Extended.lean):10–33 只补 `(0,23)`，再由 n≥24 排除该头区间。最终 `candidate_mem_of_stage04` 返回原始候选表的归属；见证检查没有被要求接受人工 padding。 |
| 1055 候选与全部 j | [Assembly.lean](../../lean/I11TerminalCandidateCoverage/Assembly.lean):403–429 把 66 组的实际 append 树同原始列表比较；`Generic.lean:11–15` 的 `IntervalSound` 对区间内所有合法 j 量化。实际见证为检查过的 topPrime、largeDivisor 或封闭的 special330，不含用户可塞入的 `Common` 证明字段。 |

上述检查涉及的泛用旧模块均为最终实际导入链中的文件；源码哈希清单没有缺失的本地导入。

## 独立整数诊断

所有诊断均使用 `C:/Python314/python.exe -B`，没有调用研究项目的生成器或 Lean。完整结果为 [numeric-diagnostics.json](numeric-diagnostics.json)、[initial-block-diagnostics.json](initial-block-diagnostics.json) 和 [special-coverage-diagnostics.json](special-coverage-diagnostics.json)。

- **初始压缩**：直接解析最终六个列表的实际引用，复算全部 387 块、8127 个正负及零偏移不等式、逆元、低指数 cutoff、连续端点与最终排他端点；没有失败项。
- **末端六表**：尺寸依次为 24×15、24×10、24×8、15×10、15×8、10×8，共 1142 cells、23982 个偏移行。逐一检查数据函数确实映射到对应 cell、合成器引用全部行、逆元、参数下界/上界证书，以及所有参数对应的 n 区间覆盖。
- **从原方程独立找解**：对每个 P、Q、d、1≤A≤capA，直接检查 C=(PA−d)/Q 是否是 1..capC 的整数，不借用表的 t 范围搜解。找到 47136 个可行解；每个都能映回声明参数范围，其整个合法 n 窗口都被候选覆盖。包含零偏移、双向非零偏移及负 seed C 情形；没有漏解。
- **候选与见证**：1055 个原始区间总计 12167 个 n。实际 65 个 append 节点与 66 组列表逐项等于原始列表；1699 个 topPrime、2342 个 largeDivisor 和 1 个 special330 的算术条件全部通过独立计算。普通 1052 项的见证列表同其区间列表逐项核对；特殊候选 0、10、1054 另核对：首段 57 片覆盖 24..4010，ID10 的两片覆盖 4300..4322 与 4323..4346，末段由 `Chunk252.w9` 覆盖 29294601..29294602。
- **原始定义诊断**：对 24≤n≤500 的全部 57121 个合法 `(n,j)` 直接计算两个二项式系数的 gcd，并去除 2、3、5、7 因子，余部均大于 1。独立验证 n=330 的全部 154 个合法 j 采用源码给出的 163/109 见证。`(126,11,42)` 的 gcd 确实含 11；这不是“11 是唯一公共大素数”的结论。
- **源码 policy 扫描**：初始 1552 个项目依赖去注释后未检出 `sorry/admit/sorryAx/axiom/native_decide/unsafe/implemented_by/extern` 标记。这不能代替根定理的传递公理审计。

复运行命令（先进入本工作树；入口已改为按新时间戳输出，不覆盖本次原始诊断文件；冻结后请在新一轮获得写入授权时使用）：

```powershell
& 'C:/Python314/python.exe' -B 'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/reviews/huan-i11-original-chain-review-5e2d13bb/check_numeric.py'
& 'C:/Python314/python.exe' -B 'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/reviews/huan-i11-original-chain-review-5e2d13bb/check_initial_blocks.py'
& 'C:/Python314/python.exe' -B 'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/reviews/huan-i11-original-chain-review-5e2d13bb/check_special_coverage.py'
```

三份检查逻辑均已实际运行，退出码均为 0；前两份入口随后仅把固定输出名改为带时间戳的 replay 文件名，未再次执行数值计算；最近的特殊覆盖复运行记录为 `special-coverage-replay-20260912T084226Z.json`。精确有限计算的通过不证明整个无限原题；覆盖到任意合法 j 的论证仍来自上述 Lean 源码通用定理，正式接受取决于主任务的新鲜内核验收。

## 源码修复绑定与未完成验收

审查期间主任务完成七处限定修复，已逐字节独立核查 [final-source-binding.json](final-source-binding.json)：

1. 六个 `Pair*/Composer.lean` 的 `cutoff_check` 从 `simpa ... using (decide_eq_true hprop)` 换成 `simp only [cutoffCheck, decide_eq_true_eq]; exact hprop`。命题、数据、数值及其他证明文本不变。
2. `Assembly.lean:407` 仅将 scoped `set_option` 前的文档注释开头 `/--` 改为普通注释 `/-`。定理及证明字节不变。

这七个 before 哈希均与本审查初始清单及主任务备份相符，after 哈希均与真实现存文件及主任务修复记录相符；其余 1545 文件未改变。因此本审查和数值诊断绑定到 **2026-09-12 08:43:31 UTC 的最终清单**。修复记录：[主任务 fix.json](../huan-terminal-cutoff-decision-fix-5e2d13bb/fix.json)。后续源码改动须另记增补，不能沿用这一冻结结论。

没有发现需修改数学声明或数值表的阻断异议，但以下验收缺口仍明确存在：

- **已观察的 pair23 内存失败**：`Pair23/RowA004.lean` 在 `-j1 -M1536` 下于 08:33:30–08:33:43 UTC 退出 3221226505，日志为 `lean::memory_exception: excessive memory consumption detected at 'interpreter'`。该次失败尚未到 Composer，也不是数值反例。可复核 [队列失败日志](../../verification/huan-b-queue-20260912T074239052735Z/14-i11-terminal-membership-pair23.log) 与 [该次 evidence](../../verification/20260912T083221582578Z/evidence.json) 中的实际命令；本审查没有再次运行它。
- **Assembly 及根审计尚待新验收**：主任务已记录 Assembly 原 line407 语法失败和上述修复，正在另以 v41 串行诊断；九组覆盖通过不表示 `Assembly`、fullCoverageAudit 或完整原题根已接受。Pair25Data 的被中断尝试不可作为成功收据。参见主任务修复记录的 `stop_record_clarification`。
- **最终原题和传递公理**：必须由主任务在最终源码上完成 `I11OriginalFinal/Audit.lean` 的真实编译与执行式传递公理检查。当前的 `#check/#print axioms` 文字、AI 审查和上述 Python 输出均不满足这一义务。

下一项明确检查是主任务解决 RowA004 的执行资源问题并验收受影响消费者，随后验收原题根。此报告不判断全 B699、新颖性或公开发表状态。

冻结交付时间：2026-09-12T08:48:23.454677+00:00；总审查经过 27.71 分钟。
