# CRT 与实际有界余因子桥审查

结论：在已读的精确域和假设下，未发现 CRT 参数化、lo/hi 充分条件、upper 消费者或 I11Bounded 桥的数学反例。当前缺口是把所有实际窗口覆盖到完整有限格点、验收每个格点的数值条件并合并小 n 分支；不能把原探针的摘要/哈希视作该证明。

Owner `/root/i18_downstream_review`。开始 2026-09-11 18:00:59 UTC，20 分钟检查点 18:20:59 UTC。只写本 review，不运行 Lean/Git、旧 CRT 或新的全量 CRT，也不改集成源及队列。CRT 源为另一工作者的候选；I11Bounded 原候选由本审读者前轮编写，本部分是重新核查，不能算第二作者独立证明。有限交叉程序全新编写，未导入两份源包的旧检查器。

## 源与字节范围

审查 `lean/CrtPair/{Parameterization,Bounds,Consumer}.lean`、`lean/I11Bounded/{StrictSmallPart,Components,WindowBounds,ActualBridge}.lean`，并读取各自 integration manifest、原始 frozen 源包及说明。两个 manifest 的全部 9 个 source/target 对（含 CRT 两个审计入口）哈希均匹配；去掉 import 行并统一换行后，所有证明正文一致。完整签名、行号、哈希在 `manifest-bindings.json`。当前命名收据 crt-pair-max / i11-bounded-cofactors 尚未发现；没有把“候选文本正确”写成 Lean accepted。

## 逐项数学检查

| 实际声明 | 域与假设 | 结论及审查边界 |
|---|---|---|
| positiveResidue_modEq / seed_equation | Q>1、模逆 `(P*v)%Q=1`，d:Int 任意 | rho 是最小正余数，零类取 Q；C0=(P*rho-d)/Q 是 Int 精确商。负 C0 不截断。种子方程由整除得到。 |
| solution_parameterization / parameter_unique | Q>1、上述模逆、A:Nat>0、C:Nat（可为0）、PA-QC=d | 每个实际解有唯一 Int t>=0，A=rho+Qt，C=C0+Pt。v 不必为最小模逆；未要求 A/C 互素。消费者随后另要求 C>=1。 |
| progression_equation / feasible_parameter_gives_solution | t:Int 任意；后者显式要求两坐标>=1且在cap内 | 方程对所有 t 成立；满足正性及cap才可转回实际 Nat 解。不能把所有 t>=0 都当 C>0。 |
| lowerCondition / upperCondition / parameter_bounds | lo<=0 或 C(lo-1)<1；capA<A(hi+1) 或 capC<C(hi+1)；实际 t>=0、C(t)>=1、两cap | 利用 P,Q 非负的单调性证明 lo<=t<=hi。两个严格不等式均必要，不能改成非严格。lo/hi 允许负值和宽松值。 |
| pairBoundCheck_empty | checker=true，hi<lo，加实际正且受cap的解 | 矛盾。lo<=hi 不保证存在可行解；该 empty 接口不宣称对任意宽松数据都判尽空集。 |
| pairBoundCheck_upper_int/nat | checker=true，实际正解及cap，且 n<=min(PA,QC)+w | n<=U(hi)，或n<=toNat(U(hi))，是包含端点的上界。未声称 hi 可行或极值可达。若 U(hi)<0，则实际 n:Nat 前提已矛盾；toNat 不会制造漏解。 |
| actual_small_part_strict | 110<=n、n<H、hij/hjn/noCommon、T H^7<=K M^33 | 真实 Bernoulli 给 K n^121<=T U^11 n^84；n<H 给 T n^7<K M^33，乘法取消与11次幂反推得 n^4<M^3 U。没有直接把旧 <= 结论变成 <。 |
| two_actual_components_above_capacity / ActualBridge | 再加1<=M、M<n | f=M*Xp，cap=M*n，threshold=n 的真实四分量选择给两个不同小素数，n<M*Xp；实际窗口因此 A<M、C<M（出口只给<=M）。M<n 排除零实际指数；a,b 可重合，距离<=10。 |

这里 T=(2*11!)^11，K=i11K，U 为已有 smallPrimePart。Common 的原定义保留 prime p>=11（含11）和所有合法 11<j<=n/2；U 只含 p<11 的 {2,3,5,7}。H/M 证书仍是明确输入，n<max(110,M+1) 与 n=H 不在该严格桥的工作分支。

## 独立有限交叉检查

`cross_check.py`：

- 参数化检查 P=1..9、Q=2..9 的互素组合，模逆取最小代表和代表+Q，A=1..12、C=0..12，共 **14352** 个解，覆盖无位移限制的正/负 d、负 C0 和零余数；Bézout t 与直接整除 t 一致且非负。
- P,Q=2..9、d=-10..10、capA/capC∈{0,1,3,6}，共 **25536** 个紧界包，直接枚举正 A/C 与仿射进度枚举完全一致；每包另验宽松 lo-2、hi+2 不漏解。
- P,Q=2..5、d=-5..5、capA/capC=0..3、lo/hi=-3..4，共 **112640** 个任意端点包；所有通过检查的包均覆盖其真实解并给正确上界。
- 18271 个 n=0..150、a,b=0..10 的窗口链接检查，均有 `n<=min(n-a,n-b)+10` 和距离<=10（Nat 减法按截断处理）。

总耗时约0.157秒，完整计数和样例在 `cross-check-results.json`。没有验证任何无界 Lean 语句，也未运行全量 CRT。

关键边界：P=2,Q=3,v=2,d=9 时 rho=3、C0=-1，A=6,C=1 对应 t=1，不能丢掉负种子。d=6 时 C0=0，需要 t>=1 才给 C>0；d=0 时 rho=3、C0=2，t=0 已可行。capA<rho 可得到 hi=-1。将上界严格 `<` 改为 `<=` 会错误丢掉 d=0,A=3,C=2 的端点；将下界 C(lo-1)<1 改为 <=1 会错误丢掉 d=1,A=2,C=1 的端点。当前代码没有这些错误。

## 对主线程新探针的限定复核

只读 `huan-i11-crt-descent-probe-5e2d13bb/{PLAN.md,probe.py,result.json}`。源码/结果 SHA、五个 H/M 最小整数证书、幂范围末项/下一项、每阶段六对计数和30个已报告见证均独立核对。

| 阶段 | H | M | 报告的 inclusive upper | next_H | 行数 |
|---|---:|---:|---:|---:|---:|
|0|2^109|118703030|1458309064184540963|1458309064184540964|501396|
|1|1458309064184540964|92731|304531636234|304531636235|153573|
|2|304531636235|3550|207734385|207734386|61278|
|3|207734386|757|29294602|29294603|30198|
|4|29294603|500|29294602|29294603|23982|

总计 **770427** 正确；真正下降的前四阶段为746445行。`capA=min(M,(H-1)//P)` / capC 正确：由 PA=n-a<=n<H 推出 PA<=H-1，再用 P>0 除法。global 初值 max(M,109) 保留 n<=M、n<110，next_H=upper+1 正确保留严格高度。最后阶段 next_H=H 正确停止，没有新下降。

我没有重生成770427行，也没有重算 ordered_rows_sha256；30个见证只能核对报告值在宽松数论模型中可取到，不能单独证明它们是全部行的上界。result.json 目前只有各对摘要、一个见证和全行摘要哈希，正式接受仍需完整格点检查与覆盖证明。probe 的 witness.a/b 是**幂指数**，不是窗口 offset，转换时不能混淆。

入口是实际 n<2^109。result.missing 中的 initial n<2^15360 并不单独提供这个入口；中间压缩链（或直接109界）也需要明确接受证据。

停滞见证 n=29294602 的实际 choose(n,11) 小素数 valuations 为 (16,2,1,6)，U=346961018880，不满足阶段必要式 n^4<500^3 U。因此它不是原题 noCommon 反例；只是两余因子放宽模型中的见证。此单点检查不能排除整格点、证明新全局界或完成终端过滤。详情在 probe-audit.json。

## 最小下一接口

见 `MINIMAL_GRID_INTERFACE.md`：实际窗口到height caps、六对的swap与d变号、全21位移、全部正指数覆盖、每行 pairBoundCheck、lo>hi 空分支、逐行计算upper、n<=M/n<110 小分支和inclusive-to-strict合并都必须有正式消费者。不能把全格点上界作为未定义的MaximumValid字段假设。

主线程随后提供的完整终端过滤更新只记录为**待复核分支**，本次没有读取/验证/重跑 terminal_filter.py 或 terminal-filter-result.json。该更新的计数与候选值见 `unreviewed-terminal-update.json`，不纳入本次已检查结论。此后需要全部t和所有窗口n的覆盖、实际U/Bernoulli过滤及末端原题核查。

本审查不运行 Lean；无新增接受结果、初始高度或原题结论。B 原题仍0/19。
