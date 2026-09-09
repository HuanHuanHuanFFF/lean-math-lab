# B699 本轮研究报告

从main `7fd3928656489afe2c80698f0a09d1d933444186`独立开始。原预算上海2026-09-09 13:59:09–18:59:09；没有延期。分支、验收和恢复入口见[README](README.md)、[acceptance](acceptance.md)、[handoff](handoff.md)。

## 结果与准确范围

本轮在纸面证明和独立精确证书层得到：

对全部自然数n,i,j，若1≤i<j≤floor(n/2)，且
**i∈{28,29,31}或34≤i≤184**，
则存在素数p≥i整除gcd(C(n,i),C(n,j))。

共154个指标，均覆盖全部合法n,j，保留p=i与完整指数。原集合S=[3,96]∪[98,100]∪[102,120]的116项中排除88项，剩余3..27、30、32、33共28项。S以外原来也有高度内候选；没有把“S外”当作全部已解决。

这不是154项Lean定理，也不是完整B699或数学首创声明。151项初等主链的高度、无限尾部和通用覆盖消费者已Lean接受；具体全范围数据仍待内核验收。另三项依赖Matveev纸面论证。

## 从旧次数障碍到三窗口机制

旧的只依赖d的通用整除多项式受次数障碍限制。本轮对象同时使用n、j和n−j；这改变了所研究的对象，没有否定或删除旧障碍。

令实际avoidingPart为D，V为C(n,i)中全部p≥i的完整素数幂部分，U为互补部分。只有noCommon时才令D=V。对0≤r<i、1≤s<i，写λ=2s−r、L=i−r−1，构造

`Z = (∏_{h=1}^s C(j,h) C(n−j,h)) (∏_{h=1}^L C(n−i+h,h))`。

完整大素数幂在三个窗口的位置约束给D^λ|Z。若F_m=∏_{h=1}^m h!，则

`E=s(s+1)+L(L+1)/2`，
`K=2^(s(s+1)) F_s² F_L`，
`K Z≤n^E`。

因此反例必须满足K V^λ≤n^E。结合U≤n^t，得到完全整数的高度比较。三窗口非负权重类内的正指数门槛为i≥3t+2；低于185时恰为29及35..184。原S中的85项因此获得新的有效路线。

详细推导、参数允许范围及权重类的边界见[主链推导](notes/heights/two-cutoff-theorem.md)。它没有调用未证明的Jacobi、EEES或Dusart参数。最初45分钟的分类、路线比较和选择记录在[检查点](notes/checkpoint-45min.md)。

## 理论高度如何变成可处理候选

高度的单点证书为

`K (N0)_i^λ > (i!)^λ N0^(tλ+E)`。

整数乘积比把它传到所有n≥N0。151条具体CERT都经Lean检查；最大的所选N0为10^66。

在中间范围，Bernoulli给(n)_i≥n^i/2。每层的精确M证书强迫至少两个不同的小素数，其完整二项式幂都不小于n/M。每个幂又定位到n−a（0≤a<i），保留指数v_p(C(n,i))+v_p(i)。于是n必须位于两个不同素数颜色的短区间交集。这里用的是全部指数和真实二项式，不是抽象可任选的因子。

| 主链证书阶段 | 精确结果 |
|---|---|
| 高度 | 151条整数CERT |
| 幂区间 | 3919层、67479个非空族、161313区间 |
| 两种颜色交集 | 912578个(i,n)，最大n658537 |
| 加入所有合法低n | 2943530个(i,n) |
| 顶端素数整段见证 | 排除2943463对，余67对 |
| 大素数部分大小 | 67对全部通过K V^λ>n^E，最大n58878 |

每个行见证同时覆盖全部合法j。没有枚举j，也没有用扩大旧三元组扫描替代推导。另一算法检查器重建幂族、交集、完整低端、素数分段及实际V，[真实三阶段重放](experiments/two-colour-check/replay-20260909T074014Z/evidence.json)全部通过。[fresh数学初审](reviews/independent-math/review.md)未发现逻辑阻断，后续[源码装配审读](reviews/final-consumer-audit.md)记录了其参与实现的边界。

预期是用统一结构消除一批指标的无界n方向；实际在纸面/精确证书层，连高度内候选也全部排除了。完整Lean数据检查的工程缺口另计。

## 零净指数整类28、31、34

这三项共有i=3π(i−1)+1，主链净指数为零。统一M=64的三个精确整数证书仍能强迫两个不同小素数大幂。n>4096时，它们不能占同一位置：互素幂之积会超过n。因此得到

`A p^x−B q^y=h`，
`1≤A,B≤64`，
`p≠q<i`，
`0<|h|<i`。

[Matveev原文Corollary 2.3](https://www.mathnet.ru/php/getFT.phtml?jrnid=im&option_lang=eng&paperid=314&what=fullteng)给显式指数界。包含A=B退化和共振分支的完整有理区间证书，核55组素数对、138545个约分系数条件后，将高度压到n<10^25。生成与独立checker约30.5秒。

随后恢复所有符合完整幂/系数约束的不同颜色交集，并补全部合法低n。不同算法checker核查所有行见证：

| i | 完整候选行数 | 最大候选n | 未解决行 |
|---|---:|---:|---:|
| 28 | 6768 | 301823 | 0 |
| 31 | 9302 | 688157 | 0 |
| 34 | 9397 | 1102281 | 0 |

两阶段候选生成/检查约2.5秒；314份素数证书全为确定性小素数证据，最大素数4091，没有巨素数概率检验代替证明。没有枚举j。

[对数证书](notes/zero-boundary/verification/20260909T090620Z/run-manifest.json)与[候选证书](notes/zero-boundary/verification/20260909T092400Z/)是串联依赖，不能以后一份替代前一份。[完整性推导](notes/zero-boundary/candidate-chain.md)及[独立原文/末端审查](reviews/zero-boundary-audit.md)保存了完整量词和参数核对。Matveev与日志约化的Lean桥未完成，这三项不进入已接受Lean范围。

## Lean验收、失败与停止决定

当前最后接受的B699根是[FiniteCover](verification/20260909T091130Z/evidence.json)：21项目模块，65项实际公理输出仅propext、Classical.choice、Quot.sound；6项guarded打印仅作元数据。当前21源的SHA与该接受记录一致。

已接受消费者包括151条高度和所有n≥N0的原题结论，以及 `common_of_finite_cover_row_checked`：给定row，若其完整Boolean检查为true，则全部合法n,j有Common。**本轮没有在Lean中证成所有151条具体全范围Boolean。**

整批、逐指标和分离静态数据后的完整代表行曾触发内存限制。默认素性判定的线性范围是一个已确认成本风险；基于已有prime_def_le_sqrt的TrialPrimeCheck声音性已[单独正式接受](verification/20260909T100325Z/evidence.json)，但整合后代表行仍未成功，见证块又出现化简停滞。根因尚未全部定位，失败不构成原题或数学方法的反例。

按控制中心转达的条件，10:02:51 UTC停止整表冲刺；不能以静态数据成功当完整行成功。优化草稿与补丁已分离，原消费者精确恢复，10份近期失败源码都有匹配原始SHA的快照。见[停止记录](experiments/lightweight-prime/stop-checkpoint.json)、[恢复材料](experiments/lightweight-prime/README.md)。开发对象不能冒充新的源码验收。

## 保留缺口、来源与交接

185≤i<10^6的高度内候选未由本轮处理。旧i≥10^6纸面全域排除、n=3j纸面/精确成果、完整EEES/Dusart及近中心出版参数仍保留原等级。控制中心转达的云端24cb8dc高度消费者未在本地复核，不纳入本批采用来源。

i=3/4的既约斜率相对高度、j|n子族、中心带、CRT与稀疏性保留为[低端纸面支线](notes/low-index/handoff-and-localization.md)，没有得到两个低指标的全域结论；Mahler/BEG无效有限性不能当可执行上界。

F1参数检查遗漏和F2命令记录问题均已有修复与真实重放，历史证据保留。来源版本见[采用清单](notes/source-adoption.md)，当前一致性见[最终审计](notes/final-integrity-audit.md)。本轮只写自身批次，持续正常推送，不合并main、不创建PR、不联系独立云端或外部作者。结束状态与资源见verification/end-state.json；恢复按[handoff](handoff.md)从干净的单代表行成本检查开始。
