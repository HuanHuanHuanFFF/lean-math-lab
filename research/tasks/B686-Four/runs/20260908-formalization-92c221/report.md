# B686 既有成果形式化交付报告

本批已把反射与距离结构、两条 Runge 高度界、规范矩阵渐近密度、短间隙排除和任意固定间隙有限性接成从原式出发的完整 Lean 证明链。采样高度的下游条件消费者也已实现，但 MRSTT 估计本身未形式化，因此不能称全部完成，更没有证明 B686 全题无解。

基线为 `08a8ac6872e8abfd4a2c480496da350a97ecdc13`；采用同题 `20260908-lcm-distance-7cab35e` 与 `20260908-reflected-sum-9bad0b9` 的完整报告、源码及验收。独立分支为 `GPT-work/formalization-20260908-closure`。历史源码、报告、验收与依赖 pins 均保留。建立时间为 2026-09-08 09:18:48 UTC；用户未设截止，本批没有继承旧轮次的停止工程决定。

## 完整闭合的最终结论

以下令 $P_k(t)=\prod_{i=1}^k(t+i)$，原解假设 $H$ 为自然数 $k,n,m$、$k\ge2$、$n+k\le m$、$P_k(m)=4P_k(n)$，并记 $d=m-n,S=m+n+k+1$。具体声明、额外结构假设和纸面来源逐项列于 [ledger.md](ledger.md)。

| 结论 | 本次完成的原题消费者及适用范围 | 验收入口 |
|---|---|---|
| 反射和排除两倍素数幂 | 对全部素数 $p$ 和自然数 $a$，$H\Rightarrow S\ne2p^a$，包括 $p=2,a=0$ | [TwicePrimePower.lean](lean/reflected/TwicePrimePower.lean) |
| 全素数距离余因子界 | $k\ge3,p$ 为任意素数，$a=v_p(d),B=d/p^a$：$p^{2a}<12k^2d,d<12B^2k^2,m<16B^2k^3$，也覆盖 $p\nmid d$ | [DistancePrimePower.lean](lean/reflected/DistancePrimePower.lean) |
| 反射粗支持至多两位置 | $k\ge5$，$A$ 为 $S$ 的 $k$-smooth 部分；每个 $p>k,p\mid S$ 命中下段指定两位置之一，则 $k\le60A^2$；$A$ 偶数时 $k\le15A^2$。位置可相同 | [TwoPositionSupport.lean](lean/reflected/TwoPositionSupport.lean) |
| 全偶数长度 Runge 高度 | $H,\operatorname{Even}(k)\Rightarrow n<16\cdot2^{4k}k^{k/2+1},\ n+k<20\cdot2^{4k}k^{k/2+1}$，包含所有偶数长度 | [centered/Consumer.lean](lean/centered/Consumer.lean) |
| 四整除长度 Runge 高度 | 全部 $s\ge1,n<m,k=4s$ 及原乘积式：$n<2^s k^{s+1},\ n+k<2^{s+1}k^{s+1}$。此项只需 $n<m$ | [quarter/Consumer.lean](lean/quarter/Consumer.lean) |
| 距离中心、一般及对称两位置界 | 以实际 $d$ 的光滑部分 $A$ 和实际粗支持为输入；中心相邻 $k\ge4$ 给 $d<8A^3k^3,3m<32A^3k^4$；一般与对称位置 $k\ge40$ 的完整原常数、调和最简分母界见账本 F686-08 | [CentralConsumer.lean](lean/distance/CentralConsumer.lean)、[PairBounds.lean](lean/distance/PairBounds.lean)、[SymmetricConsumer.lean](lean/distance/SymmetricConsumer.lean) |
| 规范矩阵支持密度 | 对每个 $\varepsilon>0$，存在统一 $K$，使全部 $k\ge K$ 原解对应的实际系统沿偶数长度满足 $s/k^2\le1/4+\varepsilon$，沿 $4\mid k$ 满足 $s/k^2\le1/8+\varepsilon$。系统从原式构造；另有对所有有效系统的版本 | [density/Consumer.lean](lean/canonical/density/Consumer.lean)、[QuarterConsumer.lean](lean/canonical/density/QuarterConsumer.lean) |
| 短间隙全排除 | 对全部 $H$，$m\ge n+k+8$。没有有限起点范围或外部删项定理前提 | [shortgap/Consumer.lean](lean/shortgap/Consumer.lean) |
| 每个固定间隙的有效有限性 | 对每个自然数 $h$，保留原报告精确 $B(h)=\max(293,h+8,p_{\lfloor(4h+7)/3\rfloor+1}-1)$；全部原解 $m=n+k+h$ 有 $2k+h\le B(h),k\le\lfloor(B(h)-h)/2\rfloor,n<B(h)^2$，且全部解三元组构成有限集 | [FixedGap.lean](lean/shortgap/FixedGap.lean) |

既有全长度距离界 $k^2<64d$、反射和非素数幂排除以及固定反射余因子界已在基线完成。本批复用其源码，并在受影响的新消费者闭包内重编，没有重复实现或依据旧 frontier 错报为未完成。

## 关键证明链与路线调整

反射与距离消费者使用完整素数幂估值和实际光滑/粗部分分组，已经消除原先只接收人工因子分组或接触证书的终结器缺口。一般距离两位置的 $D^5$ 接触、对称位置的 $D^3$ 接触、调和分母界及辅助式非零/高度均由项目内部证明。

全偶 Runge 构造任意长度的真实整数截断多项式，控制非零余项和系数。四整除 Runge 进一步构造整数多项式 $q$、真实半平面平方根分支、矩形 Cauchy 跳跃公式、割线积分表示及误差的正性、严格递减性和显式上界。整数 $q(y^2)-2q(x^2)$ 被迫严格处于 $(-1,0)$，产生矛盾。整数配对允许取分母因子 $L=1$，仍保留纸面请求的常数和完整参数范围。

规范矩阵从固定公开源码的实际声明依赖闭包移植而来，经过固定工具链兼容修复及公理核验。原式首先构造 `SystemInput`，非单位格的互素性给阶乘下界，再与两条已验 Runge 高度合成统一渐近密度。不是把系统存在性或最终密度改成额外假设。来源、许可及失败的过大聚合导入探针均保留在 [canonical 验收](notes/canonical/acceptance.md)。

短间隙采用更直接的新接口：$h=d-k\le7$ 与最新 $k^2<64d$ 推出 $k\le70$。原有长度 2–21 的内核证书和本批长度 22–70 的证书逐一通过；单调性覆盖每项的全部 $n\ge0$。Python 只生成 cutoff 数据，所有符号比较及覆盖均由 Lean 内核验证，未使用 `native_decide`。

固定 $h$ 的旧精确 $B(h)$ 也无需尚未形式化的大素因子计数：初等素数间距证明 $B(h)\ge293,4h+2$，再由统一距离界推出 $2k+h\le B(h)$。这一调整关闭原来外部依赖阻塞的完整目标，而没有改变目标常数或把 $h$ 限于有限范围。详细推导、失败记录和验收见 [shortgap/acceptance.md](notes/shortgap/acceptance.md)。

完整 Sylvester–Schur 连续乘积定理同时已从公开固定版本移植并验证：对全部 $0<K<N$，区间乘积存在素因子 $p>K$。它是已闭合的可复用成果，当前短间隙及固定间隙最终消费者不依赖它。分发许可与更早来源许可核查的实际边界见 [upstream-adoption.md](notes/shortgap/sylvester/upstream-adoption.md)，不将未核实来源自动宣称为独立 MIT 授权。

## 完成的中间结果与最小剩余缺口

`FixedTestSamplingEstimate δ` 是精确命题定义，不是新公理。给定它，已证明以下完整下游消费者：

- 每个 $0<\delta<1/2$，存在统一长度阈值，使原解满足 $\log m>(\log(2k))^{3/2-\delta}$。
- 每个实数 $C>0$，在 $m\le k^C$ 内的全部原解三元组有限。
- 若每个 $0<\delta<1/2$ 的精确估计均成立，则每个 $\eta>0$ 最终有 $k<\exp((\log m)^{2/3+\eta})$。

[HeightAssembly.lean](lean/sampling/HeightAssembly.lean) 与 [HeightCorollaries.lean](lean/sampling/HeightCorollaries.lean) 已在新目录编译并检查全部传递公理。F686-07 **仍开放**：缺 MRSTT 素数采样估计本身、出版版本的 $C^3$ 范数统一接口和固定测试函数特化。固定 mathlib 和核查的公开形式化中没有找到可直接移植的完整兼容证明；目前具备的分析基础不足以提供指数和/Vaughan 等完整解析数论依赖。不能把论文引用视为 Lean 定理。

恢复条件是固定 pins 下引入或证明该精确估计及其依赖，再调用已验消费者。尝试范围、来源差异和不能复用的公开结果列于 [外部审计](../../../../shared/20260908-formalization-external-audit/external-audit.md) 及其 [最终状态补记](../../../../shared/20260908-formalization-external-audit/final-status-addendum.md)。旧 MS 删项定理和计数路线的审计仍保留，但其“阻塞 F686-09/11”的早期状态已由本批新证明取代。

全题的长度、一般间隙和高度仍无界。proper-support/jet 路线还需要同时满足低高度和原解点不全零的生成族；这是尚未完成的数学步骤，并非支持密度消费者暗含的形式化缺口。被否定的模板、Pell 放松诊断和未采用的分析草稿没有自动计为待实现结论。

## 验证、审查与接受状态

可执行消费者、全部新目录验证及复现命令集中于 [verification/README.md](verification/README.md)。Lean 为固定 `v4.33.1`，mathlib 为 `0df444a360eaa60ab8c11dca51a86af692955474`；9 项包 pins 未改。每个接受链重新编译全部项目源码依赖，只复用固定包缓存。标准传递公理为 `propext`、`Classical.choice`、`Quot.sound`，没有 `sorryAx`、新公理或本地未证明假设混入无条件消费者。存在非阻断 linter 提示；未运行额外外部内核检查器。

独立数学审查覆盖 [quarter](reviews/quarter-independent-review.md)、[短间隙](reviews/shortgap-independent-review.md)、[固定间隙](reviews/fixedgap-independent-review.md)、[密度](reviews/density-primary-review.md)、[采样条件消费者](reviews/sampling-independent-review.md) 及 [距离两位置链](../../../B677-Lcm/runs/20260908-formalization-92c221/notes/finite/b686-distance-independent-review.md)。主线程直接实现关键接触、Cauchy/积分、采样组装、短间隙和固定 $h$ 消费者，并完成整合；Astra 数学工作始终不超过两条并发支线。历史失败与环境诊断原样保留，不计入成功证据。

本次主要增强已接受数学成果的形式可靠性。没有发现并接受原纸面结论的反例；修正的是依赖状态和路线归属：短/固定间隙不再受旧外部定理阻塞，渐近密度也不需要后续 proper-support/jet 猜想。未声称新颖性、全题完成或已经合并 main。
