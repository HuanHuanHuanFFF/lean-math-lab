# 本轮分层验收

## 当前源码已经接受的B699消费者

[FiniteCover.lean](lean/FiniteCover.lean)正式成功根：[091130Z](verification/20260909T091130Z/evidence.json)，UTC09:11:30.149583开始、09:19:10.809468结束。

21个实际项目源全部在当时新的本轮输出目录编译，Lean4.33.1，mathlib0df444a360eaa60ab8c11dca51a86af692955474及其余manifest pins均核对。65项实际传递公理输出仅propext、Classical.choice、Quot.sound；6项guarded打印仅作元数据。源码policy通过，无占位、新公理或native_decide；未执行独立第二内核。

最后已接受的B699消费者是 `B699LowIndex.common_of_finite_cover_row_checked`：

- 给定row : FiniteCoverRow，要求 `finiteCoverRowCheck row = true`。
- 任意自然数n,j满足 `row.height.i < j`、`j ≤ n/2`。
- 结论为存在素数p≥row.height.i整除实际两个二项式的gcd。

该Boolean包含已注册高度、各见证、全部合法低n、层划分、每层M证书及不同素数幂区间交的覆盖；其声音性已经证明。它不假定原题结论，但本轮尚未在Lean中证成所有151条具体Boolean都为true。

同一闭包已经接受 `common_of_registered_height`：高度行属于已验151条表，且i<j≤n/2、n≥row.n0时，完整Common成立。**151条高度表和无限尾部消费者已经接受；未接受的是全范围覆盖数据。**

早期根ThreeWindowWeights（065147Z）、SmallPowerIntervals（074627Z）保留。上述21个源的当前SHA全部与091130Z匹配；[最终审计](notes/final-integrity-audit.md)记录了核对。开发优化后已精确恢复LargeDivisorWitness原字节。

## 新辅助引理

[TrialPrimeCheck.lean](lean/TrialPrimeCheck.lean)在[100325Z](verification/20260909T100325Z/evidence.json)独立正式成功：10:03:41.232683结束，1项目源、1项实际标准公理输出。

其准确结论为 `trialPrimeCheck p = true → p.Prime`，通过整数平方根范围的完整除数检查。它尚未形成一条通过的完整B699覆盖行，不以此宣称整表性能问题已解决。

## 纸面与精确计算接受

主链151项：全部合法n,j，由初等三窗口结构、整数高度与小素数幂覆盖、三阶段不同算法checker和fresh数学审查支持。[真实重放](experiments/two-colour-check/replay-20260909T074014Z/evidence.json)补齐F1/F2记录问题；旧失败保留。

零类28、31、34：M64、Matveev纸面高度、有理对数区间证书及不同算法的有限候选核查支持全部合法n,j。[对数阶段](notes/zero-boundary/verification/20260909T090620Z/run-manifest.json)与[候选阶段](notes/zero-boundary/verification/20260909T092400Z/)是串联依赖，两份都必须保留。[独立审查](reviews/zero-boundary-audit.md)包括原文参数和最终候选完整性，未发现阻断。

因此组合为154个纸面/精确指标：28、29、31及34..184；旧S剩28项。这不是154项Lean定理，也不是完整B699或新颖性认证。

## 未接受与失败

`lean/coverage/rows/`、8个Coverage模块及LowIndexComplete是未验候选。整批19行、逐行与完整代表行的内存失败及见证块化简停滞均保留；详见[停止检查点](experiments/lightweight-prime/stop-checkpoint.json)与[失败源码索引](experiments/lightweight-prime/source-snapshot-index.json)。

10:02:51 UTC已停止整表冲刺。优化见证源码和补丁留在experiments/lightweight-prime，未进入当前已验收消费者。091130Z等对象目录后来用于开发覆盖，当前对象不再是原始验收快照；可审计接受依据是不可改写的日志、固定源哈希和版本记录，恢复须重新建立干净输出。

原始5小时截止10:59:09 UTC未延长；收束阶段不再启动新数学方向或整表计算。
