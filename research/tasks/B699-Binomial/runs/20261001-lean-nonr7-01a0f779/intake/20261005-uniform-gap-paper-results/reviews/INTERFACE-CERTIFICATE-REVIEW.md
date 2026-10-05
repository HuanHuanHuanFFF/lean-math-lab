# 两个 B699 优化包：接口、证书与形式化依赖独立审读

审读日期：2026-10-05（Asia/Shanghai）。审读者：`uniform_gap_paper_interface_review`，任务类别为复杂既定目标的语义/依赖核验，`gpt-6.1-sol / xhigh`。固定本仓比较基线由主任务指定为 `ac26550648b22d8a6c12c6abf89bb3ad843b8fc5`；附件沿用的较早来源是 `6c42ea72b9886afd587e144662bf09bc51557e39`。本审读只写本报告和 `interface-checks/`；没有运行 Lean、checker、CI、安装、Git、素数筛或零点计算。

## 结论与接受范围

**两个包都有可复用的数学接口/依赖优化，但都没有交付无参数的无界解析 Lean 供应；总工时、总证书体积或全题剩余成本下降尚未得到实测支持。** 当前正式完整指标仍为 `{1,2,11,29} ∪ [35,30000]`，本审读没有增加指标或消去任何剩余无界参数。

本轮独立接受的范围仅是：两个算术程序按原源码运行成功，生成的 JSON 解析内容与原件一致；两个 MANIFEST 声明的 28 个非清单成员大小及 SHA256 一致，复跑后源码哈希未变。不能由此接受其纸面解析全链、零点完整性、有限 ψ/θ 供应或 Lean 定理。

主任务给定的当前正式状态是：自然数 `10000000 ≤ y < 122568684` 的有限 Gap 已独立接受；真无界 Gap 仍缺。两包的 `F₀/I₀ pending` 属于较早输入快照，不应覆盖现有状态，更不应作为必须重做的新增成本。原件状态保留不改；比较时使用当前正式状态。

## 1. 参数与可复用产物

| 项目 | smoothing8 | uniform-gap-paper |
|---|---|---|
| 真函数 | `Chebyshev.psi`、`Chebyshev.theta` | 同左；`E=ψ−θ` |
| 解析供应目标 | 所有实 `x≥800000000000`，`|ψ(x)−x|≤x/10000` | 所有实 `t≥100000000`，`|ψ(t)−t|≤(3/25000)t` |
| 新桥的核心 | 全局 `ψ−θ≤21√x`；其 `x/40000` 截止精确为 `705600000000` | 局部 `E(rx)−E(x)≤x/300000`，`r=4096/4095` |
| 精确严格余量 | `4095/10000+4096/8000=1843/2000<1` | `1/4095−(3/25000)(2+1/4095)−1/300000=49/58500000>0` |
| 原件候选输出 | `Gap 4095 800000000000`，以及输入 F₀、F₁ 后的 `Gap 4095 10000000` | 输入 LP/P 后的 `Gap 4095 100000000`，以及输入 I₀ 后的完整 G |
| 当前新增有限义务 | 自然数 `122568684≤y<800000000000` 的 Gap；或等价用途的严格有限 θ 包络 | 解析证明内部的有限 ψ 认证；不等于旧 prime-chain |
| 无界解析依赖变化 | 固定 8 重平均、9 项核和九阶零点矩，免逐零点倒数表及定量无零区 | 局部扣新增高次素数幂，允许 ψ 误差由 `1/10000` 放宽到 `3/25000`；直接高零点核界替代专门截断定理 |

源定位：[smoothing8 结论](D:/CodingProject/Math/research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/intake/20261005-uniform-gap-paper-results/originals/B699-20261005-smoothing8/RESULT.md:7)，[新局部供应与精确余量](D:/CodingProject/Math/research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/intake/20261005-uniform-gap-paper-results/originals/B699-uniform-gap-paper-20261005/RESULT.md:19)。这里记录包实际提出的接口和前置，不独立签署其 PROOF 的整个解析推导。

额外较小的可复用项是 smoothing8 `PROOF.md:573–587` 的旧截止备选：保留原 L，另供应上误差 `1/12000` 和 `log(122568684)>18`，得到下误差 `1/6480`，系数 `63073/64800<1`。系数算术已复跑；它已适配本仓 generic θ 桥。真实 U/L 和对数边界仍需证明，不能把这一项写成无界分布供应已完成。

## 2. 与当前接受接口的对应

当前 [ThetaLocalizedLegacy](D:/CodingProject/Math/research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/20261005-lean-formal-seventyfive/supply/ThetaLocalizedLegacy.lean:12) 只要求实数 `x>122568683` 的两条 θ 供应。包中对旧“所有正实数上界”的批评，不应当作当前接口仍有这一要求。

当前 [UniformThetaGapLegacy](D:/CodingProject/Math/research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/20261005-lean-formal-seventyfive/supply/UniformThetaGapLegacy.lean:14) 已接受 generic 条件 `D*u+(D+1)*l<1`：

- smoothing8 的 `D=4095,u=1/10000,l=1/8000,Y=800000000000` 可直接实例化其高 cutoff Gap 形式。新候选的 Nat/Real 桥与当前 generic 桥重复，复用现有接受源码即可；若要得到完整 G，仍缺 F₁ 或有限 θ 包络。
- uniform-paper 的 LP 控制的是 `E(z)−E(x)`，不能仅凭 LP/P 自动供应两条独立的 θ 绝对相对界。因此其局部消费者有实际接口价值。它使用现有 `exists_prime_of_theta_lt`，最终返回的 `Gap` 定义与当前 consumer 相同，无需改变原题消费定理。

当前 [GapCutoffConsumerLegacy](D:/CodingProject/Math/research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/20261005-lean-formal-seventyfive/supply/GapCutoffConsumerLegacy.lean:11) 可把任何已证 `Gap 4095 Y` 接成原题 `i≥max(4883,Y)` 的无界指标族，仍保留 `p≥i` 及完整 choose 整除。故未来若只接受解析高尾，也有独立可复用成果，不必等待整个有限桥；本次包尚未达到这一步。

### 利用当前 F₀ 可进一步缩小 uniform-paper 的新供应范围

原件为方便统一声明要求 LP/P 从 `A=100000000` 起成立。但接回当前完整 G 时，`y<122568684` 已由正式 F₀ 覆盖，剩余仅调用 `x=y≥122568684` 和 `z=x+x/4095≥x`。

因此，一个更弱而足够的后继接口是：LP 只要求实 `x≥122568684`，P 只要求实 `t≥122568684`；若其解析 P 已从 `B=50000000000` 起供应，新增有限 ψ 认证只需实数闭区间 **`[122568684,50000000000]`**。B 可由两段重叠覆盖，x、z 跨 B 时分别调用各自所在段，没有接缝空洞。包候选保留更强的 A 类型并不错误，但不应把 `[100000000,122568684)` 误列成完成 G 必需的新工作。

这个削弱只涉及接口所需范围；正式 F₀ 不能推出 ψ 值，也不能代替该新增有限认证。

## 3. Lean 候选的准确证明状态

全部 3 个 Lean 文件都已按原文逐行审读：

1. [TailBridgeCandidate.lean](D:/CodingProject/Math/research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/intake/20261005-uniform-gap-paper-results/originals/B699-20261005-smoothing8/src/TailBridgeCandidate.lean:22) 使用真正 Chebyshev 函数，含 5 个有证明体的候选 theorem。`hψ` 在第 79–82、96–103 行明确为参数，F₀/F₁ 也显式保留。21√x 关系及降低截止的候选不能被等同于解析 ψ 根供应。
2. [Kernel8Spec.lean](D:/CodingProject/Math/research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/intake/20261005-uniform-gap-paper-results/originals/B699-20261005-smoothing8/src/Kernel8Spec.lean:12) 定义复指数、9 项核和 `Kernel8NormTarget : Prop`；**没有证明这个目标的 theorem**。证明提纲及 `<complete checked proof>` 仅在注释中；编译定义本身也不构成核界证明。
3. [B699UniformGapPaper20261005.lean](D:/CodingProject/Math/research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/intake/20261005-uniform-gap-paper-results/originals/B699-uniform-gap-paper-20261005/lean/B699UniformGapPaper20261005.lean:22) 的 `LocalPowerIncrement`、`PsiSupply`、`InitialSegment` 都是命题定义。4 个有证明体的候选 theorem 仅做算术和条件接合，`hlocal/hψ` 在第 61–63、79–82 行仍为显式参数。LP 的初等纸面证明未在此实现。

静态源码未发现新 `axiom`、`sorry`、`admit` 证明声明；这不等于已经取得传递公理清单。三个文件均未在本次或原包执行 Lean；文件末尾 `#print axioms` 是待执行命令，不是成功输出。固定导入使用已有 θ 抽取/Gap 模块，未将真正 θ 替换成自由函数；不过 API 可见性、elaboration 和完整导入公理闭包仍需真实编译验证。

两候选都先由实数严格 `y<p` 转回 Nat，随后使用 `Nat.cast_sub hypN.le`，再转回 `4095*(p−y)≤y`；静态范围检查未见自然数减法截断被忽略或把素数幂当素数的改变。

## 4. 本轮可重放证据

运行前完整静态阅读两个算术脚本和 `verify_input.py`。它们只用 Python 标准库；算术脚本没有联网、安装、外部进程、素数扫描或零点求值。输出只由 `--output` 指定；本轮全部定向到本报告旁的 `interface-checks/`，没有覆盖包原输出。

| 原源码 | SHA256 | 实际复跑 | 原 JSON 对应 |
|---|---|---|---|
| smoothing8 `src/check_constants.py` | `ca99ca88993539db4e9370595229767da4b0667d138079c9da8880168e399efd` | exit 0；51 项；约 0.112 秒 | 解析内容完全相同 |
| uniform-paper `certs/verify_constants.py` | `b419dd963e40a28c3bfb316b380368e1b38d4d50e7e2446792ff01711bc682e0` | exit 0；46 项及 2 个额外整数幂比较；约 0.128 秒 | 解析内容完全相同 |

实际命令、Python 3.14 身份、完整源哈希与结果路径见 [REPLAY-RESULTS.json](D:/CodingProject/Math/research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/intake/20261005-uniform-gap-paper-results/reviews/interface-checks/REPLAY-RESULTS.json)。独立入口为 [replay_interface_certificates.py](D:/CodingProject/Math/research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/intake/20261005-uniform-gap-paper-results/reviews/interface-checks/replay_interface_certificates.py)；短日志分别为 `smoothing8-constants.log`、`uniform-paper-constants.log`。两个新 JSON 原字节与包原 JSON 不同，是本机文本写出的 CRLF 换行；解析对象相同。本记录分别保留原件和新输出 SHA，绝不以语义相同冒充原字节相同。

成员身份：28 个声明的非 MANIFEST 普通成员全部匹配；加两份自排除的 MANIFEST，原件共 30 个普通文件。[SOURCE-HASHES.json](D:/CodingProject/Math/research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/intake/20261005-uniform-gap-paper-results/reviews/interface-checks/SOURCE-HASHES.json) 另冻结所有 30 个原件及 3 个当前接口源的哈希。包引用的较早输入 ZIP 身份仍只是其已保存记录：本轮未复跑 `verify_input.py`，不声称重验了该较早 ZIP。

运行前 [RESOURCE-PREFLIGHT.json](D:/CodingProject/Math/research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/intake/20261005-uniform-gap-paper-results/reviews/interface-checks/RESOURCE-PREFLIGHT.json) 记录 D: 可用约 15.79 GB、可用内存 1610 MiB、16 个逻辑 CPU，未见 Lean/Lake 作业。较早一次计数器仅 1233 MiB；CIM 内存查询被拒。没有观察到容器内存限制或 CPU quota，不将原生 Windows 计数器包装为 cgroup 配额。两个轻量任务串行执行；上述时间仅度量算术复跑，不能外推解析形式化或有限证书成本。

## 5. 未消去的前置与有限成本

**smoothing8：** 仍依赖真正 ζ/ξ 的解析基础及对数导数、带正确常数的积分显式公式、含重数和端点的有效零点计数、`0<|Imρ|≤1000000` 的临界线完整性。其低倒数表被消除，不代表有限临界线验证被消除。依赖账本定位为 `DEPENDENCIES.md:19–33`；积分公式原文常数符号问题及其修正应由数学/文献审读核对，51 项标量 PASS 不接受该公式。

新增 F₁ `[122568684,800000000000)` 尚无见证。包的 35974 是单 prime 覆盖表示的必要数量下界，73746 是一个**条件网格的格子数上界**，368730 字节仅指假如所有窄窗口均取得 prime 时的 40 位值数组。没有具体 prime、素性证书或窄窗口存在性证明；34 行 Dusart 表也不是 34 个端点计算即可验证连续区间。数学规格与缺口见 `PROOF.md:489–571`；两百万正侧零点只是从未验收解析计数前置推出的规模界，不是已到手的零点证书。无法据此确认 F₁ 实际生成/核验可行性或总耗时。

**uniform-paper：** 除未实现的 LP 外，仍依赖 Logan 正核与变换、真实 ζ/Weil–Barner 显式公式、有效计数/分部求和、有限高度 `H=589824` 的全部零点临界线事实，以及 `0<γ<5000` 小倒数和的完整数值证据；依赖定位为 `DEPENDENCIES.md:42–53`。没有原始零点符号/误差/完备性证书，也没有有限 ψ 分段证书。

其有限 ψ 认证必须覆盖全部素数幂跳点的两侧及段间范围，配套 log 有向界与前缀绑定；prime-chain 只给短区间 prime，不能直接提供 ψ 前缀和。原件 `[A,B]` 暴力全域 bitmap 的模型超过 6.237 GB；改成当前所需 `[122568684,B]` 仍超过 6.23 GB，且未含辅助数据。分段、粗包络或更弱 P 证书可能改变成本，但包没有实测数据，不能据此宣称总成本较小或在当前低内存下启动全域筛。

若仅从 B 接解析尾，缺口改为自然数 `[122568684,B)` 的 Gap。24619 是单素数覆盖模型的必要段数下界，**不是已经存在的链或证书大小上界**。`N(H)<1032207` 同样是条件解析计数规模界，不等于百万零点已证。原件定位为 `FORMALIZATION-PLAN.md:104–150`。

本接口审读没有重新取得并独立核对所引 primary 文献全文；论文适用性和整条纸面数学论证应以指定数学/来源审读报告为准。包的“已在线核对”是作者来源记录，不在本报告升级为本轮独立原文核验。

## 6. 下一项最小验证与收益边界

1. **uniform-paper 优先小验证：** 在已经锁定、依赖可用的环境，仅编译其 95 行条件消费者，取得 4 个真实公理输出；随后独立实现 LP，并保持当前接受 F₀ 绑定。本步骤不要求先建新素数链或零点证书，能验证新局部接口是否实际可接。条件消费者通过仍不证明 LP/P。
2. **smoothing8 优先去重后的小验证：** 复用当前 generic θ/Gap 与高 cutoff consumer，只验证其降低 `ψ−θ` 截止的候选；若要判断解析路线实现难度，再独立证明 `Kernel8NormTarget`。只编译该 Prop 定义没有数学收益。不要以验证完整 F₁ 或重编全部旧链作为这一小步的前置。
3. **比较净成本需新增事实：** 至少要取得代表性解析核义务的实测实现，以及有限 ψ/F₁ 和零点前缀证书的可信生成、完整性和核验数据。当前 0.1 秒的标量复跑不能回答这些成本。

预期前沿变化：若未来取得无参数解析高尾并通过现有 cutoff consumer，可消去 `i≥800000000000` 或 `i≥50000000000` 的无限指标族；若再取得所需有限接合，可回到完整 G，从而接现有原题全尾消费者。**本次实际前沿变化为零**：仍缺真正无界分布供应，LP/P/解析基础与有限认证未被本审读消去，原题的剩余 `i,n,j` 无界参数不变。
