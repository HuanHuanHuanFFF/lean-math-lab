# Round2：接口、证书与形式化依赖独立审读

日期：2026-10-05，Asia/Shanghai。审读者 `/root/uniform_gap_paper_interface_review`；复杂既定目标与语义/依赖核验，`gpt-6.1-sol / xhigh`。当前固定比较基线 `151da54b1e72cddcbcea1129e1e5f1e5ac766fc9`；两包沿用较早附件来源 `6c42ea72b9886afd587e144662bf09bc51557e39`。本次仅审读与串行轻量算术复跑，没有恢复旧 30 分钟执行，没有 Lean、checker、CI、安装、Git、筛法、零点计算或外部消息。

## 一、结论和本轮接受范围

**两个 R2 包都有准确的供应形状和参数改进，但没有交付无参数 LP、有限 ψ、解析增量或实际加权素数质量供应，也没有交付可重放的有限零点完备性证书。** 其新增 Lean 文件仍为条件消费者及少数纯算术/核性质候选，尚未编译。

本次独立确认：uniform-round2 的 **68 项**、local-spline6 的 **52 项**固定标量关系复跑成功，JSON 解析内容与原件全等；40 个作者 MANIFEST 声明成员大小/SHA 全匹配，43 个实际原件全部被库存覆盖，local 包的 SHA256SUMS 24 行全匹配。接受只限对应算术与字节身份，不接受 ζ 零点、∀实数供应、解析积分/变换恒等式或 Lean 根。

当前正式完整指标仍为 `{1,2,11,29} ∪ [35,30000]`。有限 Gap `[10000000,122568684)` 已独立接受；30 分钟批次还独立接受了原题区域 `i≥4883, i<j≤n/2, n−i<122568684`，含 `n≤122568684` 推论。这些不是附包作者已完成的工作，也不是新完整无限 n 指标。来源见 [FINITE-HEIGHT-INDEPENDENT-ACCEPTED.json](D:/CodingProject/Math/research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/20261005-lean-halfhour/reviews/FINITE-HEIGHT-INDEPENDENT-ACCEPTED.json)：验证者 `/root/tail2h_verification`，固定源码 `7f57671f5a42e7b6f5a143769231e7817c5491b3`，CI `37225133204`，4 个 fresh AX 根、2 个 normalchecker 退出 0、347 个闭包唯一 source/object。

两包 `I₀/F₀ pending` 为旧快照，应保留作者原文但不用于回退当前接受状态，也不计作新增成本。第二 CI `37225855901` 在 checkout 后因重复准入 gate 过期，未到 Lean；不能将它解释成 LP、R2 纸面或数值复杂度失败。

## 二、两个新供应的准确类型

设 `D=4095`、`r=4096/4095`、`T₀=122568684`、`E=ψ−θ`。

| 项目 | uniform-gap-round2 | local-spline6-r2 |
|---|---|---|
| 新解析/质量目标 | 全实 `x≥B=14400000000` 的 ψ 区间增量下界 | 全实 `x≥T=16000000000` 的实际 `primeMass x>0` |
| 准确公式 | `ψ(rx)−ψ(x) ≥ x/8192−14√x−(2001/10⁹)x−1` | `Pₓ/√X > 235937/63000000`，`X=x√r`，Pₓ 是真实素数有限加权和 |
| 初等扣除 | Tail LP：`E(rx)−E(x)≤x/10⁷`；有限桥仍用旧 Small LP `≤x/300000` | 真实 Λ 加权和扣局部 proper prime power 质量，`Qₓ/√X<11/1000` |
| 得到的正余量 | `θ(rx)−θ(x)≥(475571/144000000000)x>x/400000` | `1−122000/126000−17/1000−11/1000−1/1000000=235937/63000000>0` |
| 有限零点所需高度 | `0<|γ|≤294912` | `0<|γ|≤800000` |
| 完整 G 所缺新增有限对象 | 全实 ψ 相对误差 `≤3t/25000` 于 `[T₀,C]`，`C=14403516484` | 自然数 Gap 于 `[T₀,16000000000)` |

uniform-round2 不再要求上一轮的全域 ψ 绝对相对误差；其 DB 是一个真正的局部增量接口。相较 R1，它把解析尾起点从 50,000,000,000 降到 14,400,000,000，有限 RH 高度从 589824 降到 294912，并在纸面依赖图删除小倒数和 3.54、单端点公式常数压缩和外部 Bessel/Logan 变换定理。通用 Weil–Barner、真实 ζ 分析与有效计数仍保留；新正项级数的积分换序及变换证明也尚未 Lean 化。[原结论](D:/CodingProject/Math/research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/intake/20261005-uniform-gap-round2-results/originals/B699-uniform-gap-round2-20261005/RESULT.md:7)。

local-spline6 的直接接口是 **质量正性**，不是全域 θ/ψ 误差，也不是仅给两个矩。定义 `h=log(r)/6`，六重密度的七项表达 `spline6`，以及真实权 `localWeight(x,p)=spline6(h,log(p/X))/√p`。候选 `primeMass` 在 `Nat.primesLE ⌊rx⌋₊` 上求和 `log p * localWeight x p`，没有自由函数或假素数谓词。两个矩和 sinc 包络是证明质量正性的上游工具，不能直接当作质量供应。[原结论](D:/CodingProject/Math/research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/intake/20261005-uniform-gap-round2-results/originals/B699-20261005-local-spline6-r2/RESULT.md:47)。

### 不能把 uniform-round2 的有限 ψ 右端缩回 B

对 `T₀≤x<B`，两端都需要有限 ψ 界；`rx` 可以超过 B。脚本实际核对 `C−1<rB≤C`，纸面给出更精确的 `rB=14403516483+47/91`。因此 `[T₀,C]` 覆盖所有这些实数端点，而只供 `[T₀,B]` 会遗漏 `(B,rB)` 上的 ψ 评估。

上一轮曾可按已接受 F₀ 把有限 ψ 下端提高到 T₀，本轮已采用这一削弱。但上一轮的 pointwise ψ 尾误差能直接供应 t≥B，本轮 DB 只供应 ψ 差，不能按旧理由把 F2 上端截在 B。源码在 x=B 使用解析尾，x<B 使用有限桥；T₀ 和 B 均无接缝空洞。见 [PROOF §9](D:/CodingProject/Math/research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/intake/20261005-uniform-gap-round2-results/originals/B699-uniform-gap-round2-20261005/PROOF.md:579)。

这是原候选采用有限 ψ 接合时的必要右端，并非完整 G 只有这一证书路线。也可把无参数尾部 `Gap 4095 B` 与直接自然数 Gap 桥 `[T₀,B)`、已验 F₀ 三段拼合；这样不需要 SmallLP/F2，但需要真正的有限 prime witness/覆盖认证。所需接合与既有 consumer 同型，两个有限替代对象目前都未交付。此选择亦由 [数学审读 §4.4](D:/CodingProject/Math/research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/intake/20261005-uniform-gap-round2-results/reviews/MATH-REVIEW.md:125) 明确说明。

## 三、Lean 文件真供应与占位边界

### uniform-round2：6 根，全部分布供应仍为输入

[B699UniformGapRound2.lean](D:/CodingProject/Math/research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/intake/20261005-uniform-gap-round2-results/originals/B699-uniform-gap-round2-20261005/lean/B699UniformGapRound2.lean:22) 有 129 行、5 个 Prop 定义、6 个 theorem 和 6 个 `#print axioms` 请求：

- `FinitePsiSupply`：全部实 `T₀≤t≤C` 的 ψ 相对界。
- `SmallLocalPowerIncrement`：全实 x≥10⁸ 的旧 LP。
- `TailLocalPowerIncrement`：全实 x≥B 的加强 LP。
- `DifferenceBudget`：全实 x≥B 的新 ψ 增量 DB。
- `InitialSegment`：旧自然数有限 Gap。

这些均显式保留为参数，没有无参数供应证明。`coefficient_margin` 和 `sqrt_bound` 是纯算术候选；`theta_tail_of_budget`、`theta_bridge_of_finite` 做给定预算后的条件 θ 增量，后两根抽实际 prime 并拼 G。作者“LP纸面已证”不等于该源已经实现 LP。

实数转 Nat 前先取得 `y<p`，再使用 `Nat.cast_sub hypN.le`。严格左端和自然数减法未被放松；最终见证 `p.Prime` 与旧 Gap 完全相同。

### local-spline6：7 根，有实际核定义，但 mass/support 尚未证明

[LocalGapBridgeCandidate.lean](D:/CodingProject/Math/research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/intake/20261005-uniform-gap-round2-results/originals/B699-20261005-local-spline6-r2/src/LocalGapBridgeCandidate.lean:27) 有 137 行、3 个 noncomputable def、7 个 theorem 和 7 个 `#print axioms` 请求。

其中 `spline6_eq_zero_of_left` 确实有证明体，目标是 `h≥0,v≤−3h⇒spline6 h v=0`；不是只有 Prop 定义。`exact_budget` 是有理预算，`positive_mass_of_bounds` 仍是带 R/S/Q 预算输入的代数消费者。**从真实 log 坐标得到实际权左支撑，和所有实 x≥T 的质量正性，仍是 `hsupport/hmass` 参数**。核非负、右支撑、C⁴、质量1、Mellin恒等式、实际 Λ/prime-power 分解、sinc 包络、两个积分矩、EF/N/ZERO-H 均未在候选实现。

`prime_of_local_mass` 对真实 primesLE 集合反证抽 prime：若该集合所有 prime 都≤x，左支撑使整个质量为0，与 hmass 矛盾。这个消费者不需要偷换成任意“prime predicate”，也不假设所有权先已非负；其正性根供应依然很强。候选只输出 `x<p≤rx`，原纸面 `x<p<rx` 更强，严格右端尚未由此候选实现，但目标 Gap 只需非严格右端，故没有目标失配。

本轮也阅读 local 包附带的 `GapDefinitions.lean`、`RealGap.lean`、`ThetaInterval.lean` 历史快照。`nat_gap_of_local_mass` 正确使用同一 D/Y 的 `nat_gap_of_real_gap`，该转换仍先处理严格 `y<p` 后转换减法。

5 个包内 Lean 文件静态未见新增 `axiom`、`sorry`、`admit` 证明声明或自造素数模型。这里包括 3 个旧接口快照，不将它们计作 R2 新成果。没有实际编译或传递 AX 输出，不能由注释中的静态审读 JSON或 `#print axioms` 请求推定 kernel 接受。

## 四、与当前六个未编候选及已验消费者的关系

当前 [30分钟 HANDOFF](D:/CodingProject/Math/research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/20261005-lean-halfhour/supply/HANDOFF.md:5) 的六源、20 数学根仍全部未编；本报告按实际字节阅读，不把 source-ready 升级为接受。

| 当前源 | R2 可复用或重复内容 | 不能据此说已完成什么 |
|---|---|---|
| `LocalPowerCore.lean` | 原 LP=`SmallLocalPowerIncrement`；旧余量49/58500000与有限桥接合重复 | LP 本身仍参数；旧全域 PsiSupply 不是新 DB |
| `LocalPowerOriginalLegacy.lean` | 已写真实 F₀ 的绑定方式及 original consumer 接线；R2 可用同样方式消去 InitialSegment | 此文件本身仍未编，不能给 R2 新根验收 |
| `WeakUpperLegacy.lean` | 1/12000 上误差的独立 θ 路线 | R2 两个新供应都没有给这条 θ 上/下供应；无直接数值实例即可转接 |
| `LocalPowerDecomposition.lean` | 共同 K 的真正 ψ−θ 有限和，以及普通整数区间卡数 | 只是 LP 前置，未合成全域局部界 |
| `LocalPowerRootWidth.lean` | 同比例 r 的实根宽度/Bernoulli，对两路线局部幂计数可复用 | 仍未编；不证明完整 LP 或加权 properPowerMass |
| `LocalPowerThetaInterval.lean` | 真实 θ 区间差的 weighted log sum、card/floor 上界 | 仍未编；缺有限求和/单调性/端点合成 |

uniform-R2 新增的是尾部更强 LP 专化的目标、DB 的供应类型、有限右端 C 检查，以及条件的 sqrt 预算消费者；没有补上此前 LP4/求和/半线单调性缺口。local-R2 新增真实七项权与有限 primeMass 对象，和左核零值/条件质量抽取；其 weighted Λ 拆分不是旧 Decomposition 的同一定理，后继必须建立真实对象对应。

两个新供应不能直接实例化已有 generic θ 的两条**独立绝对相对误差**输入。它们各自输出 `Gap 4095 Y` 后，均能复用已经接受的高 cutoff consumer，取得原题 `i≥max(4883,Y)` 的无限指标族；若再与 F₀及新有限供应形成 `Gap 4095 10000000`，即可复用已有完整 original-tail consumer。接口允许 `p=i`，保留真正 choose 整除；没有要求修改原题量词。当前没有无参数新 Gap，故这些只是未来接线用途。

## 五、轻量复跑、字节身份和资源证据

复跑前静态阅读全部 3 个 Python 脚本。两个算术程序仅使用标准库 int/Fraction、有限 log/exp/atan/sinhc 级数和小范围固定循环，没有联网、安装、外部进程、ψ 求值、prime/zero搜索或数值积分。`verify_inputs.py` 只做两个 ZIP 的字节绑定；本轮未复跑它，也不重验缺失的旧 ZIP 原件。

**uniform脚本固定写 `Path(__file__).with_name('CONSTANTS.json')`，不能在原件目录直接复跑。** 本轮以同字节、同 SHA 副本隔离执行于 `reviews/interface-checks/B699-uniform-gap-round2-20261005/`。local脚本支持 `--output`，也用同字节副本并明确输出到其 owned 目录。原件全部复核未变。

| 原源码 | 原 SHA256 | 本轮运行 | 对原输出 |
|---|---|---|---|
| uniform `certs/verify_constants.py` | `deb78dfc7bacd99148db696105afe8384cd5ed5510fa9b0a8b8061f7e6edb4df` | exit0；68项；约0.098秒 | parsed JSON全等，换行规范化后全文全等 |
| local `src/check_constants.py` | `140289963d42825ae19bfff584c428a570f8910bc600d2a57383c5327978f13a` | exit0；52项；约0.105秒 | 同左 |

新 JSON 原字节 SHA 与包内不同，原因是本机 CRLF 换行；不将解析一致冒充字节一致。原输出未改。实际 Python 版本、命令、source-copy/output哈希及日志路径见 [REPLAY-RESULTS.json](D:/CodingProject/Math/research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/intake/20261005-uniform-gap-round2-results/reviews/interface-checks/REPLAY-RESULTS.json)，独立入口 [replay_round2_certificates.py](D:/CodingProject/Math/research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/intake/20261005-uniform-gap-round2-results/reviews/interface-checks/replay_round2_certificates.py)。

uniform MANIFEST 自排、声明17成员；local MANIFEST排自身及SHA256SUMS、声明23成员，共40。加两 MANIFEST和一 SHA256SUMS为全部43原件；local SHA256SUMS24行覆盖其 MANIFEST及23声明成员，不列自身。所有集合、大小、SHA均实查一致；[SOURCE-HASHES.json](D:/CodingProject/Math/research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/intake/20261005-uniform-gap-round2-results/reviews/interface-checks/SOURCE-HASHES.json) 固定43原件、当前六候选与有限区域接受JSON，共50份源。

资源首次观察可用内存1871MiB，实际复跑前 [RESOURCE-PREFLIGHT.json](D:/CodingProject/Math/research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/intake/20261005-uniform-gap-round2-results/reviews/interface-checks/RESOURCE-PREFLIGHT.json) 为1434MiB，D:可用约15.6GB、16逻辑CPU，无本机Lean/Lake作业。原生Windows未观察到容器内存限制或CPU quota，不把逻辑CPU当本任务可用配额。两个算术任务串行。0.1秒量级仅是固定算术，不是任何 Lean、EF、有限ψ或零点证书成本测量。

## 六、仍缺的证书体量与分析前置

uniform的16行覆盖解析高度 `(16384,294912]`，由公式有理包围及向上舍入给核/倒数和预算，不是16个真实零点或有限RH检查。68项中的正侧计数上界464733以前提N为条件，不是观测到或验证了这些零点。所需有限RH必须绑定严格误差、重数、端点和总数完备性；临界线符号变化表不能单独排除遗漏的离线零点。低倒数和3.54被删除是具体依赖收益，不能说有限零点成本已消失。

F2的跨度是 `14403516484−122568684=14280947800`。假设每整数1bit，仅跨度数组就为1,785,118,475字节，闭端点另需bit；它不是算法必要内存下界，也不含实际 ψ 前缀、素数幂跳点、log定向区间与覆盖证书。当前1434MiB可用内存不足以容纳这种整段位图加实际工作集，不应未经设计启动全域筛。分段/粗包络可改变内存形态，但没有提供实现、完整性或实测时间，不能承诺有限认证轻量。现有F₀只给prime witness，不给ψ值。

local的新有限Gap `[T₀,16000000000)` 仍未供：19952是单prime覆盖表示的必要见证下界，40970是条件格子数上界，204850bytes仅是假如每格取得指定窗口prime时的五字节数值数组。没有窗口prime存在性保证、实际prime、素性证书或覆盖绑定，不是已经形成的完整证书大小。正侧零点对象<1530000同样是N输入导出的粗计数界，不是数据体积或求值次数实测。

local的52项只验证有理/级数包围、预算与有限差分矩，**两个实际积分矩、sinc全域函数不等式、Stieltjes步骤、Mellin/EF和primeMass正性不在其运行验收范围**。还缺真实ζ解析/重数对称、有效全实数N(t)、紧支撑C⁴权的积分显式公式及完整H=800000验证。uniform还缺正核级数的收敛换序、WB及差分专化、N与计数和对应、H=294912完备验证。来源缺件分别见 `DEPENDENCIES.md:46–63` 与 local `DEPENDENCIES.md:26–36`。

本报告没有独立重新取得并审读primary论文全文；作者的文献适用性和整条纸面推导交由指定数学/来源审读，本报告不将作者“已读”升级为本轮原文核验。数学审读另指出 uniform `PROOF.md:268` 的公式门应比较 `log u,log v`，不是仅比较 u、v；该审读已对本组常数补核正确门，未来 Lean 移植应采用正确 statement。本报告引用此修正，不将该 AI 纸面审读升级为 kernel 接受。包装身份、算术PASS和当前真实Lean接受保持不同层级。

## 七、下一次最小 CI 与正式 statement 升级顺序

以下仅是下一次**新授权窗口**的建议，本次不执行CI，不恢复旧过期窗口：

1. 先消除准入重复检查问题：固定单一真实job-start时点；checkout后按当时剩余预算检查恢复/编译/AX/checker成本。30分钟HANDOFF已有约200秒冷恢复观察，不能因129/137行文件短便承诺编译秒数，也不能将旧0次Lean诊断当数学失败。
2. 若先检验R2接口，uniform只编译129行、6根消费者，独立核对B/C、sqrt吸收、严格prime及实际AX；local只编译137行、7根，核对实际spline左零值、真实有限prime质量抽取、同D/Y Nat/Real和AX。沿既有接受闭包复用；不生成旧prime链、不纳入筛/零点数据。这只接受条件声明，不消除其供应参数。
3. 若追求首个无参数数学前置，优先复用并实际验证当前Decomposition、RootWidth、ThetaInterval，随后合成LP4/有限倒数和/半线单调性；同一通用局部界可在A和B两个端点专化取得SmallLP和TailLP。它不会供应F2或DB。local可先把左核零值连接实际log支撑；更有区分力的义务是实际weighted Λ分解与全尾局部幂质量界，但不能把旧未编root候选视为已经可用的已验定理。
4. 最后分别消除：采用原有限ψ接合时uniform的SmallLP/TailLP/F2/DB参数，或改为TailLP/DB加直接Nat有限Gap桥；local的hsupport/hmass/hbridge参数。I₀/F₀用当前已验根直接绑定。若只先形成高cutoff无参数Gap，可立即接现有cutoff consumer；完整G再接original-tail consumer，不需改其原题statement。

预期收益是降低未来无界供应的起点与部分证书范围，以及删掉具体解析依赖；实际本次Lean/原题前沿增量为0。当前真无限Gap、剩余低比例无界i/n/j、R7及低23仍开。没有新颖性或总体成本下降验收。
