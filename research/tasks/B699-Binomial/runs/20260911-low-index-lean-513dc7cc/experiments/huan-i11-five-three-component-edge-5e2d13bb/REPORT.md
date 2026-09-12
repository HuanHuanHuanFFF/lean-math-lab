# 实际 (5,3) 组件边包装

Owner `/root/i18_downstream_review`。开始 2026-09-11 17:17:52 UTC，20 分钟检查点 17:37:52 UTC。唯一写入本 run 的 `experiments/huan-i11-five-three-component-edge-5e2d13bb/`。三个源均是**未编译候选**；未运行 Lean、Git、全量覆盖或 CRT，也未改任何已验/冻结源。

目标是把实际余因子边接回 32 分支图需要的实际 primeComponent 边。候选没有把 A/C 余因子重命名为组件，没有假设所求组件边或 noCommon 初始高度。最终适用域为 n>=2^15360；这只是该边的参数范围，不是原题高度上界。

## 最终精确声明

`ActualComponentEdge.actual_five_three_component_edge`：给定两族 Bool-indexed 的真实 GrowthTree（等价于 Q/E 各 delta0、delta1 的四个根），对每个自然数 n>=2^15360，令 Y=(n+1)/2，推出

`(primeComponent n 5)^1000 * Y^354 <= n^1000`

或

`(primeComponent n 3)^1000 * Y^228 <= n^1000`。

这里 `primeComponent n p = p^((n.choose 11).factorization p)` 来自已验源。此边不使用 j 或 noCommon，所以最终没有添加这些假设。固定素数的 valuation 可以为零；没有擅加正指数要求。

## 实际对象之间的连接

1. `CeilHalf.lean` 定义 Y=(n+1)/2，纯 Nat 证明 n>=20、a<11 时 `Y<=n-a<=2Y`。通用引理 `2^(k+1)<=n -> 2^k<=Y` 给 n>=2^15360 时 Y>=2^15359；通过指数单调性给 n>=20，避免把巨大的高度幂交给算术求值。
2. 从已验 `primeWindow_nonempty` 取得实际 wp:PrimeWindow n 5、wq:PrimeWindow n 3。它们的余因子、offset 和 actual valuation 直接给 `5^e*A=n-a`、`3^f*C=n-b`。所有窗口都落在同一个 [Y,2Y]。
3. a,b<11 给整数绝对差 <=10，因此满足 Numeric 实际余因子边的 <=24 前提。允许 a=b；没有假设两窗口位置不同。
4. 调用当前集成 `I11Numeric/ActualNumeric.five_three_edge_of_growth_trees`，得到 `Y^354<=A^1000` 或 `Y^228<=C^1000`。这里 A/C 始终是实际窗口余因子。
5. 对相应分支直接调用已验 `primeWindow_graph_capacity wp/wq`，由 `cofactor*primeComponent=n-offset<=n` 完成转换，得到真正的 primeComponent 结论。没有替换或重证 U 分解，也没有把 cofactor 当组件。

## 模块与源证据

编译顺序：`CeilHalf.lean`、`WindowPair.lean`、`ActualComponentEdge.lean`。共 8 个公开 #print 审计入口，当前没有实际 Lean 输出。

`source-ledger.json` 保存当前已读源码 SHA、声明行号和签名。已验 Components/Window 的当前字节分别与本机成功 cubic 闭包 `verification/20260911T150344000788Z/evidence.json` 内记录一致；其中 Window 的 `primeWindow_nonempty` 和 `primeWindow_graph_capacity` 被直接复用。

余因子边使用当前集成 `lean/I11Numeric/ActualNumeric.lean`，完整数值和缩放链的验收状态由父任务的最新收据决定，本任务不从“文件存在”或旧 UNCOMPILED 标题推断接受。四个真实增长树根仍是显式输入，没有导入正在修改的 I11FiveThreeTree 来假称闭包完成。原 qLambda/eLambda、权重和 Numeric 的 Z/M/Y0 都未改变。

## 有界检查及边界

`bounded_check.py` 实际检查：

- n=20..300、a=0..10，共 3,091 个 ceil-half 区间实例；
- n=0..300、a,b=0..10，共 36,421 个整数 gap 实例；
- 通用 dyadic 下界 k=0..12、每个 k 的阈值之后 65 个 n，共 845 个实例；
- 实际 n=20..160 的 binomial p=5、p=3 所有可用窗口配对，共 3,679 对，其中 330 对位置相同、3,410 对至少一个实际 valuation 为零；
- 对这些小例中实际满足的余因子不等式，核对 7,218 次 cofactor→component 容量转换。

耗时约 0.05512 秒。小例没有达到 n>=2^15360，所以测试没有假设或验证大 n 余因子定理，只核对真实窗口、整数转换及条件消费者。所有结果在 `bounded-check-results.json`。

n=19,a=10 时下区间结论确实失败，说明本通用包装不能无说明地把 n>=20 降为 n>=19。n=21,a=10 恰好达到 ceil-half 下界；若错误用 floor(n/2)，n=21,a=0 将超过 2Y 上界。这些边界均实际检查通过。

## 剩余工作

父任务需串行编译这三个候选并执行公理审计，再用四个实际增长树根实例化。该文件只补一条组件边；其余四边、32 分支图总装、原题初始高度和有限覆盖不由本任务完成。B 原题仍 0/19，无新颖性或新增原题声明。
