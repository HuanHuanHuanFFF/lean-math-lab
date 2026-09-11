# huan 当前接续检查点

更新于 UTC 2026-09-11T12:43:40.114267+00:00。原始声明、逐项计数和运行身份以本 run 的 [frontier](../frontier.md)、[target-status](../target-status.json) 为准。本页是带时间的证据导航，不另行维护接受集合。

A 的151个固定指标已经逐项接受。历史35、36的本机完整对象包也已补齐，见[35收据](../verification/huan-historical-accepted/row035.json)和[36收据](../verification/huan-historical-accepted/row036.json)。仍需29、37的本机对象包，再核验全部151个显式原题接口的统一入口。历史包重验不新增计功。

B 的19个原始指标当前仍为0个完整Lean接受。下列是已经真实核验的前置，不能代替完整原题。

| 已验前置 | 证据 |
|---|---|
| 实际整数Padé构造 | [已验收据](../verification/huan-prerequisites/pade-actual-checkpoint.json) |
| 实际P/Q/E恒等式 | [已验收据](../verification/huan-prerequisites/actual-pade-moment-identity.json) |
| 新增三对F界统一审计 | [已验收据](../verification/huan-prerequisites/factorial-extra-checkpoint.json) |
| 实际核的全m增长桥 | [已验收据](../verification/huan-prerequisites/actual-kernel-growth.json) |
| m=1精确归一化 | [已验收据](../verification/huan-prerequisites/growth-normalization.json) |
| 旧row00/Q完整两δ增长树 | [已验收据](../verification/huan-prerequisites/growth-tree-row00.json) |
| 有限递推与Bernoulli阈值 | [已验收据](../verification/huan-prerequisites/elementary-rate.json) |
| 通用逐层取整不等式 | [已验收据](../verification/huan-prerequisites/rational-divisor-floor.json) |
| 通用四阶乘整除 | [已验收据](../verification/huan-prerequisites/rational-divisor-factorial.json) |
| i11上界高度覆盖接口 | [已验收据](../verification/huan-prerequisites/upper-height-cover.json) |

所有表中接受都绑定实际源SHA、固定依赖、成功完整导入闭包、对象/日志以及公开声明的传递公理检查。源注释保留创建时的候选状态；是否当前接受看收据及其绑定源，不能只看旧注释或编译日志中的部分成功。

## 当前主线

初等有理阶乘因子 D=(u+floor(v/2))! floor(v/2)!/(u!v!) 的逐层不等式和通用阶乘整除已通过；实际q系数及G/D整性正在验收。五组i11参数已有精确有限证书，主计划仍为H=2^15360、S=640、Delta=40，见[采用记录](huan-i11-finite-plan-adoption.json)。目前实际(5,3)有限D/G链、Hom余项、最小m选择器及五边乘积仍分别是候选，只有真实验收后才升级。

原FiniteCover采用另一指数方向，不能直接登记i11；新UpperHeight三模块已通过，覆盖的完整原题仍要求实际数值层证书和所有有限覆盖。这一接口缺口已补，终端覆盖尚未补。

完整Q树目前是旧i18种子的row00/Q；i11的(5,3)Q/E九叶树另行生成，不混同为同一组种子。另三对i11 F界(9,5)、(23,15)、(11,7)当前只有精确证书，尚未作为Lean结果接受。

## 已测的成本与路线边界

[保守壳统计](../experiments/huan-i11-coverage-feasibility-5e2d13bb/REPORT.md)剩185190380个族对，乘21个位移为3888997980步。旧1699段统一顶端素数见证没有删除这层族；各颜色的壳并集仍覆盖整个高区间。没有执行完整CRT或cofactor枚举。

[144对实际CRT样本](../experiments/huan-i11-crt-primitive-benchmark-5e2d13bb/README.md)的每对耗时已含21个位移。机械乘族对均值约14.1262天；[纠正记录](../experiments/huan-i11-crt-primitive-benchmark-5e2d13bb/CORRECTION.json)保留此前重复乘21的错误。此数不是完整工时预测，更不包含Lean证明成本。

保留递推gain使m0下降，但同范围成本只改善约1.56%；不替换当前冻结的(5,3)m>=129证明链。保留窗口K的另一小测试也没有显著降低高度。相关旧方案与纠正均保留。

[五三取整刚性论证](../experiments/huan-five-three-floor-rigidity-5e2d13bb/REPORT.md)在明确F<=phi、有限正整数斜率及两条平衡假设下给出底数上界64/27。它目前是独立复核的纸面论证和精确矩阵证书，未Lean；实际整除推出该相位条件仍未证。不能据此限制所有G因子或所有阶乘方法；未作原创性接受。

## 执行与发布

大型Lean任务始终顺序执行。512MiB小检查连Nat.Basic+rfl都无法完成，已结束该穿插试验；没有暂停或终止历史35进程。它最终509个新模块、25个复用模块全部通过。后续失败候选均保留源快照，修复只在集成副本进行。

最新运行进程与下一步在[live-state](huan-live-process-state.json)。本机HEAD仍是c2028，原74–103阶段的已审暂存快照未动。后续commit及push曾被自动审批拒绝，指定仓库/分支的明确授权问题仍待答复；未用替代工具提交、推送或触发CI。
