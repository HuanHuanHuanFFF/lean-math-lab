# Conjectures.io 赏金猎人深度研究：当前最值得押注的 Lean 数学目标

本报告以 **2026-09-07（Asia/Tokyo）** 为执行日。Conjectures.io 的赏金按池子与 age profile 动态变化，部分 problem 页的搜索缓存比执行日早一至数日，因此我对动态金额会明确标成“抓取快照”或区间，而不会把它伪装成实时固定美元价格。平台也明确说明：页面以美元展示的是指示性金额，最终以 Subnet 66 Alpha 支付；正式提交时会锁定该次 submission 的 bounty。citeturn17view1turn29search1

## 结论总览

**我的第一名是：Erdős 686 — `variants.four`。**

而且不是“勉强第一”。如果今晚只有一次高预算 Astra 任务额度，我会把它押在 **686-four 的 proof/formalized 方向**。

理由非常直接：

> 它不是要求 Astra 证明一个渐近定理，也不是要求形式化几十页论文。它只问：能不能找到三个自然数 \(k,n,m\)，满足一个完全显式的整数乘积方程。

当前 Lean target 是

\[
\texttt{True} \leftrightarrow
\exists k\ge2,\exists n,\exists m\ge n+k,\quad
4=
\frac{\prod_{i=1}^{k}(m+i)}
     {\prod_{i=1}^{k}(n+i)}.
\]

官方 problem 页抓取快照显示 **0 attempts**，赏金约 **$18.2k**；较新的 catalog 快照已经显示这一年龄档大约 $18.35k，因此这里真正重要的是数量级而不是几十美元的缓存差异。两个 submission mode 都存在。citeturn29search1turn29search0 任务 metadata 也确认它是直接 `Prop`、支持 `formalized` 和 `counterexample` 两个模式，并固定到 Formal Conjectures 源代码。fileciteturn40file0L2-L10

这题最关键的经济不对称是：

**找到一个 witness ⇒ 全题解决 ⇒ Lean 证明极短 ⇒ 有资格争取约 $18k 全额 bounty。**

相反，在 counterexample bundle 中你必须证明“这样的 \(k,n,m\) 根本不存在”，那几乎肯定是错误的赏金猎人方向。公开 Formal Conjectures 文件已经证明/记录 \(k=2\) 和 \(k=3\) 对 \(N=4\) 都不行，同时给出 \(N=9\) 的 \(k=3,n=11,m=25\) 显式例子；更强的是，文件中还完整实现了“所有非平方 \(N\)”的一个 Pell-equation 路线。也就是说，**4 的困难性高度集中在“平方例外 + 找某个 \(k\ge4\) 的孤立整数点”上**，而不是广泛的库缺失。fileciteturn28file0L2-L10

我实际做了第一轮计算预攻击：把方程写成 rising factorial

\[
(m+1)\cdots(m+k)=4(n+1)\cdots(n+k),
\]

并利用固定 \(k\) 时左端对 \(m\) 严格递增，以 exact-integer two-pointer 搜索。**在 \(4\le k\le200,\;0\le n\le300\,000\) 的整个矩形内没有找到 witness。** 这不是证明，但已经足以说明“让 Astra 写一个朴素三重循环”不值得；真正下一步应该做 modular sieve、\(p\)-adic valuation、固定 \(k\) 的 Diophantine reduction 与高性能搜索。

方程还可完全等价地写成

\[
\binom{m+k}{k}=4\binom{n+k}{k},
\]

因为两边的 \(k!\) 抵消。**这是我认为 Astra 最可能发挥价值的地方**：数学推理决定模约束和参数化，程序搜索决定候选，Lean 只负责最后几十行的证书。

我的当前前五名是：

| 排名 | Problem | 我的下注 |
|---|---|---|
| 🥇 | **Erdős 686 — four** | **极有吸引力；今晚唯一大任务就押它。Proof side。** |
| 🥈 | **Erdős 617** | **值得重投入；先把 \(r=5\) 变成 SAT/CSP。Counterexample side。** |
| 🥉 | **Erdős 677** | **值得重投入但限定搜索预算；找相同 LCM 的两个不交叠等长区间。Counterexample side。** |
| 4 | **Erdős 324 — quintic** | **值得一次专门的计算数论攻击；找到一次 fifth-power collision 即可。Counterexample side。** |
| 5 | **Erdős 699** | **值得一次小到中规模搜索；证书非常便宜，但数学先验不如前三。Counterexample side。** |

这里有一个重要的总体结论：**我没有把“formalization bug hunting”排除；恰恰相反，我认真做了。但截至这次审计，最好的纯 bug 机会已经不像八月初那么肥。** 平台最近的 task publication review 明确针对 domain、quantifier、side condition、degenerate witness、overlap 等做了 adversarial review，初始的 50 个候选甚至有 5 个因此被撤换，其中就包括“普通 Ramsey 数误写成 size Ramsey”这一类过去确实能拿 defect award 的错误。fileciteturn6file0L1-L2

所以我现在的判断是：

> **不要把 10M Token 全押在“也许还有漏假设”。先做一次便宜的全池语义 lint；真正的大预算则押显式 witness / 有限 counterexample。**

这是与一个月前非常不同的 bounty-hunter 策略。

## 奖励机制与问题池现实

当前公开 catalog 抓取显示 **208 个 problem records**。与此同时，提交页的 operational contract 显示 **414 个 task bundles**；每个 live theorem 通常对应 proof 与 counterexample 两种 bundle。已解决的 Erdős 726 仍保留在 catalog 作为永久记录、但已经不再接受提交，因此这些数字与约 **207 个仍可提交的 theorem targets × 两种 mode** 是一致的。citeturn25search4turn25search10turn11view0

这对扫描方法很重要。我没有把“208 张卡片”当成 208 个完全独立的数学问题：同一原始问题的不同 part/variant 经常各有独立 bounty，而且 **proof/refutation 是独立 bundle**。真正应该优化的是 exact Lean reward target，而不是 Erdős problem number。citeturn25search0turn29search1

提交成本目前是 **每个付费 submission 0.25 τ**；平台提供免费 `check`，并提供 `pay --dry-run` 检查支付路径。因此理性的打法不是“不断把半成品扔给 validator”，而是 **离线搜索 → 本地 Lean 闭环 → 免费 check → 只有完全通过时才花 submission fee**。citeturn11view0turn25search6

Validator 的约束也直接影响题目选择：最终 artifact 不能依赖目标 theorem 本身，不能把 `sorry`/`admit`/新 `axiom` 带进去，且当前 machine contract 明确禁止 `native_decide` 等若干逃生路线；所以“Python 找到了有限反例”还不够，必须问 **这个反例能不能用允许的 Lean 机制便宜地重新认证**。citeturn11view0

### Formalization defect 现在仍然是真钱

当前 manual-review policy v2 明确规定三种 outcome：全额显示 bounty、**固定 $750 USD-equivalent 的 `FORMALIZATION_DEFECT_AWARD`**、或按已公布理由拒绝。Defect 必须是真正改变数学问题的 material mismatch，例如漏/加假设、错误 domain/quantifier、错误 convergence/equality/negation 等；“只是命名或注释不好”不算。$750 按 payout 时 Alpha/USD quote 换成 Alpha。fileciteturn37file0L2-L6 当前 payout 代码也将这一金额写为 `FORMALIZATION_DEFECT_AWARD_USD = 750.00`。fileciteturn36file2L29-L40

这不是纸面规则。已经发生过多次真实 paid defect：

Erdős 939 的 formalization 漏掉了“powerful number 必须为正”，结果 \(\{0,1\}\) 可利用零得到 Lean-valid artifact；平台明确按 formalization defect 处理。citeturn25search7 Erdős 15 则把目标写成了 rational-domain summability，而不是原问题预期的 real series convergence，也获 defect award。citeturn25search8 Erdős 726 的已认证结果同样属于 defect 路线。citeturn25search1 Erdős 567 的错误则来自 Ramsey notion 本身选错，亦获得 partial award。citeturn25search5

这给了一个非常明确的漏洞 taxonomy：

**零/正性、coercion、错误的有限/无限 notion、错误 convergence、错误 combinatorial invariant、量词与索引**，是真正值得猎的；不是随机寻找 Lean syntax trick。

### Novelty 没有想象中苛刻，但不能忽略

Policy v2 对 `NOT_NOVEL` 的要求比“有人以前想到过相似方法”严格得多：必须有更早的公开来源已经解决 **同一个 direct informal problem**，并且当前 submission 实质性使用/实现了那个来源的具体解法。仅仅相同 conclusion、标准策略或必然出现的 witness 形式不足以自动拒绝；证据不足时政策要求偏向 `REVIEW_APPROVED`。fileciteturn37file0L2-L6

但历史结果已经证明这一 gate 不是装饰：Green 3 的 verified submissions 就因为先前公开解法及具体 correspondence 而遭到 novelty rejection。相反，平台也已经为真正的新 counterexample 支付过完整 bounty。citeturn17view0

因此对我的前五名，最佳做法是：**搜索过程可以广泛吸收一般数学方法，但一旦得到具体 witness，在付费提交前必须针对该 exact witness 和 direct problem 做一次 chronology check。**

## 候选排行榜

金额是抓取时的动态页面值；同一题在相隔一两天的 cache 中会有小幅变化，因此我宁愿给出可靠快照而不是虚假的“实时精确到一美元”。平台本身确认 bounty 是 dynamic-age policy。citeturn29search0turn29search1

| Problem | Bounty 快照 | 当前状态 | 数学难度 | Lean 难度 | Formalization attack surface | Counterexample 潜力 | Proof 潜力 | Novelty 风险 | Token 成本判断 | 我的主观评级 |
|---|---:|---|---|---|---|---|---|---|---|---|
| **Erdős 686 — four** | **约 $18.2k–18.35k** | 0 attempts；2 modes citeturn29search1turn29search0 | 中高，但只是 existence | **找到 witness 后极低** | 低 | “反例 mode”差 | **极高：只需一个 witness** | 低 | **最优** | **极有吸引力** |
| **Erdős 617** | **$18,349** 快照 | 0 attempts；2 modes citeturn29search0 | 高，但 \(r=5\) 是明确有限 CSP | 中 | 低到中 | **高：找 balanced coloring** | 低 | 低 | 中高计算、低数学形式化尾巴 | **值得重投入** |
| **Erdős 677** | **$18,878** problem-page 快照 | 0 attempts；两方向 citeturn25search0 | 高 | **反例证书很低** | 低 | **中高** | 低 | 低 | 搜索便宜，可严格止损 | **值得重投入** |
| **Erdős 324 — quintic** | **$18,349** 快照 | 0 attempts；2 modes citeturn29search0 | 高，Diophantine | **collision 后极低** | 极低 | **高价值但未知尺度** | 很低 | 低到中 | 需要聪明计算，不宜蛮力无限扩大 | **值得一次中型攻击** |
| **Erdős 699** | **$13,614** 快照 | 0 attempts；2 modes citeturn29search0 | 高 | 反例后低到中 | 低 | 中 | 很低 | 低 | 搜索/证书比数学 proof 便宜很多 | **值得一次小到中型攻击** |
| Erdős 985 | $18,349 快照 | 0 attempts citeturn29search0 | 高 | 反例低 | 有一处表述差异，但大概率非 defect | 中低 | 极低 | 中 | 已有公开 computational work | **仅小规模尝试** |
| Erdős 982 | 约 $18k 档 | 0 attempts | 很高，离散几何 | **高** | 中低 | 数学上可 falsify | 低 | 低 | 即便找到坐标，Lean 几何证书贵 | **降级** |
| Erdős 779 | $18,349 快照 | 0 attempts citeturn29search0 | 很高 | 反例后中 | **已主动修过 n=0** | 中低 | 极低 | 低 | 小参数漏洞已封 | **不重投入** |
| Erdős 141 — eleven | $18,349 快照 | 0 attempts citeturn29search0 | **非常高** | witness 后低 | 很低 | 不适用 | explicit witness 理论上好，现实搜索差 | 低 | 找 11 个 consecutive primes AP 本身就是突破 | **不值得当前投入** |
| Erdős 375 | 约 $18k–19k 档 | 0 attempts | **Grimm conjecture 级别** | 高 | 很低 | 数学上可 falsify | 极低 | 低 | 成本远大于 bounty-adjusted chance | **不值得当前投入** |

这张表里最重要的不是绝对“数学难度”，而是 **失败是否便宜、成功后的 Lean 尾巴是否短**。

例如 686 与 141 都属于“找到 explicit object 就赢”。但 686 是一个整数乘积方程，可以做 modular search、p-adic pruning、Pell/曲线分析；141 则要求产生此前未知的 11 项 consecutive-prime arithmetic progression。Formal Conjectures 对 141 的定义还特意用 cardinality 条件锁住 progression，排除了“公差 0 / 重复元素”这类便宜漏洞，并记录已知验证仅到长度 10。fileciteturn8file0L2-L10 所以它看起来像同类题，ROI 实际完全不是一回事。

同理，我没有因为 699 的 bounty 比 617 低就删除它；它留下来的理由是 **一旦找到一个三元组，Lean 认证可能非常短**。反过来，某些 $18k–$20k 的 analysis/prime-distribution 问题即使模型产生一页漂亮数学，也离可 kernel-check 的 submission 还有很远。

## 前线深挖与预攻击

### Erdős 686 — four：当前最值得打的一题 🥇

**原命题。** 是否存在 \(k\ge2\)、自然数 \(n,m\) 且 \(m\ge n+k\)，使

\[
4=
\frac{(m+1)(m+2)\cdots(m+k)}
     {(n+1)(n+2)\cdots(n+k)}?
\]

Formal Conjectures 的 Lean statement 忠实地使用 `Finset.Icc 1 k` 与 rational coercion 表达这个式子；当前 task metadata 展开的 exact type 与自然语言一致。fileciteturn28file0L2-L10 fileciteturn40file0L2-L10

**数学进展。** 同一 source 已经有：\(k=2\) 不可能、\(k=3\) 不可能；\(N=9\) 有 \(k=3,n=11,m=25\) 的显式表示；所有非平方 \(N\) 有一条基于 Pell equation 的 constructive theorem。4 因为恰好是平方，没有被后者吃掉。fileciteturn28file0L2-L10

**Formalization 审计。** 我逐项检查了最危险的位置。`k ≥ 2` 正确；`m ≥ n+k` 正确；index 是闭区间 `Icc 1 k`，恰好有 \(k\) 个因子；所有因子至少为 1，分母不会因为 Nat→ℚ coercion 产生零除的漏洞；没有 positivity、distinctness 或 off-by-one 缺失可直接利用。我的判断是：**不要在这题赌 $750 defect award，应该赌真正的 $18k witness。**

**本次预攻击。** 我把它改写成

\[
\binom{m+k}{k}=4\binom{n+k}{k}
\]

并进行了 exact-integer 搜索。在 **\(4\le k\le200,\ n\le300\,000\)** 内，对每个 \((k,n)\) 精确寻找所有可能满足等式的 monotone \(m\ge n+k\)，没有命中。

这反而提高了它作为 Astra 项目的质量：简单蛮力路径已经被快速淘汰，下一步有清晰的升级方向，而不是漫无目的“想数学”。

**第一轮真正攻击方案。** 我会把 token 分成三条并行线：

第一条做高性能 exact search。对固定 \(k\) 用 recurrence 更新 rising factorial，而不是重新乘；对大量小素数预计算

\[
v_p((x+1)\cdots(x+k)),
\]

先用 valuation equality

\[
v_p(R_k(m))-v_p(R_k(n))=v_p(4)
\]

排除绝大多数 \((m,n)\)。然后才比较大整数。

第二条对小 \(k\) 做代数化。\(k=4,5,6,\ldots\) 分别把等式化成 hyperelliptic/elliptic/Pell-like 整数点问题，优先找可以参数化的分支。这里 Astra 的价值比纯 CPU 高：程序实验给出模周期，模型从模式中猜局部 obstruction 或 transformation。

第三条主动尝试 construction，而非只枚举。例如令若干 numerator factors 吸收 denominator factors 的两倍/四倍关系，寻找 factor-by-factor cancellation pattern；要求 \(m-n\ge k\) 使两个区间完全分离，这会产生很强的 divisibility structure。

**最大未知。** witness 的尺度。它可能在 \(n=10^{20}\) 但具有低复杂度参数化，也可能根本不存在。我们目前不知道。

**止损。** 若先查明公开 computational frontier 已经远超我们准备扫的范围，且没有新的 modular/Diophantine reduction，就不重复烧 token；若多个固定小 \(k\) 被理论排除、较大 \(k\) 的模 sieve 也呈指数恶化，则立即转 617。**绝不转去证明“所有 \(k\) 都不可能”**，那会把这题的 ROI 优势全部丢掉。

我的评级：**极有吸引力，值得今晚唯一的大任务额度。**

### Erdős 617：把开放组合数学变成一个 \(r=5\) SAT 实验 🥈

Lean target 说：对 \(r\ge3\)，任意 \(K_{r^2+1}\) 的 \(r\)-edge-coloring，都有一个 \(r+1\) 顶点子集漏掉至少一种颜色。Formalization 使用有限类型 \(V\)、`Sym2 V → Fin r` 作为 coloring，并且只对 \(u\ne v\) 的边施加条件。fileciteturn16file0L2-L10

Source 已记录 \(r=3\) 与 \(r=4\) 已知成立；它还记录当 \(r^2+1\) 换成 \(r^2\) 时，结论对无限多个 \(r\) 会失败。fileciteturn16file0L2-L10 当前 catalog 显示该 exact problem **0 attempts、$18,349 档 bounty**。citeturn29search0

所以 bounty-hunter 不应该“证明所有 \(r\)”；应该直接攻击**第一个开放的 \(r=5\)**。

此时要找的是 \(K_{26}\) 的 5-edge-coloring，使每个 6 点集合都看到所有 5 种颜色。

这可以变成非常具体的 SAT：

\[
\binom{26}{2}=325
\]

条边，每条边一个 5-valued variable；对于每个 6-subset \(S\) 和每种 color \(c\)，要求 \(S\) 的 15 条内部边中至少一条颜色为 \(c\)。

换个图论语言更加漂亮：五个 color classes 分割 \(E(K_{26})\)，并且**每个 color-class graph 的 independence number 至多 5**。

这是我认为特别适合 Astra 的原因。模型可以循环：

数学 symmetry reduction → 写 generator → SAT 求 model → 发现 pattern → 压缩成 cyclic/affine construction → Lean 验证。

如果 SAT 给出 model，这将是一个**真正的 counterexample**，不是形式化漏洞，有机会争 full bounty。

**Formalization audit。** `Sym2 V` 包含对角 pair，但目标只在 `u ≠ v` 时读取 edge condition，所以 self-loop 的任意 coloring 不会制造假 counterexample；`Fintype.card V = r^2+1` 与原题吻合；`Fin r` 也精确给出 \(r\) 种颜色。我没有找到漏 distinctness 或空集退化。fileciteturn16file0L2-L10

**Lean 风险**比 686 高：即使 SAT 给出 325-edge lookup table，也必须在 validator 限制内证明“所有 6-subsets、所有 colors”的性质，不能简单依赖禁止的 `native_decide`。citeturn11view0 因此搜索时最好偏向**有群作用或代数公式的 coloring**，而不是完全随机的 325 项表；结构化 model 更容易形式化。

**止损。** 对 \(r=5\) 做一次真正强的 symmetry-broken SAT。如果 UNSAT，或产生可信的完整 unsat result，我不会立即把资源膨胀到 \(r=6\) 的 \(K_{37}\)；除非 UNSAT proof 自己暴露出一个可推广的数学 lemma。否则立刻换题。

我的评级：**值得重投入。**

### Erdős 677：LCM collision 猎杀 🥉

原题：

\[
M(n,k)=\operatorname{lcm}(n+1,\ldots,n+k).
\]

问 \(k>0,\ m\ge n+k\) 时是否总有

\[
M(m,k)\ne M(n,k).
\]

当前 exact page 显示 **$18,878、0 attempts**，proof 与 counterexample 两种任务均开放。citeturn25search0 Lean source 中 `lcmInterval n k` 的定义正是 `Finset.Ioc n (n+k)` 的 `lcm`，也就是自然语言的 \(\{n+1,\ldots,n+k\}\)，没有 off-by-one。fileciteturn21file2L44-L53 Exact theorem 也确实要求 \(m\ge n+k\)，所以两个区间不重叠。fileciteturn20file0L2-L10

这是另一个典型的 **proof side 很差、counterexample side 很好** 的 bounty。

Source 自己还展示了**不同长度** interval 的 LCM coincidence，比如 `lcmInterval 4 3 = lcmInterval 13 2`；邻近 Problem 678 的测试甚至展示 later interval 的 LCM 可以比 earlier interval 小。fileciteturn20file0L2-L10 fileciteturn21file1L20-L42 因而不能用“区间右移后 LCM 大概变大”这种伪单调性证明目标。

**本次预攻击：**我枚举了 \(1\le k\le30\)，所有 start \(n,m<1000\)，精确计算 LCM，并检测所有满足 \(m\ge n+k\) 的碰撞，**没有反例**。

下一轮不应该只是把 1000 改成 100000。应表示 LCM 的 prime-power signature：

\[
v_p(M(n,k))
=
\max_{n<j\le n+k}v_p(j).
\]

于是 equal-LCM 就是所有素数上的窗口最大 valuation 完全相同。可以围绕 smooth intervals、prime-power-free boundary、sparse RMQ、signature hashing 做数量级更大的 sweep，而无需反复构造大整数。

如果找到 \((m,n,k)\)，Lean 尾巴极其友好：三个 concrete naturals + closed finite `lcm` computation。对 bounty hunter 来说，这比证明原 conjecture 好几个数量级。

**止损。** 一旦 optimized signature sweep 穿越远大于本次 \(10^3\) 范围、且 collision frequency 的经验统计趋零，就停止。不要因为搜索程序写好了而 sunk-cost fallacy。

我的评级：**值得重投入，但它应是“有硬上限的计算 অভিযান”，不是无限跑机器。**

### Erdős 324 — quintic：四个整数就可能值 $18k

Lean statement 非常干净：

\[
\{(a,b)\in\mathbb N^2:a<b\}
\]

上函数

\[
(a,b)\mapsto a^5+b^5
\]

是否 injective。fileciteturn32file0L2-L10 Catalog 抓取显示 **0 attempts、$18,349 档**。citeturn29search0

反例只需：

\[
a<b,\quad c<d,\quad(a,b)\ne(c,d),
\]

并且

\[
a^5+b^5=c^5+d^5.
\]

从 Lean 角度看，这几乎是梦想型 counterexample：**只要四个自然数**。没有 geometry、limit、measure、choice construction。若数字不是荒谬大，`norm_num` 类证明就够。

我做了一个很小的第一轮 hash search：对 \(b\le1200\) 的所有 \(0\le a<b\) 没有 collision。这个范围不足以提供数学证据；它只验证了 target 的计算表示与基本 search pipeline。

真正路线不应是 \(O(N^2)\) hash 一直扩大。应该利用

\[
x^5+y^5=(x+y)
(x^4-x^3y+x^2y^2-xy^3+y^4)
\]

以及大量模素数 residue filtering，或者将 pairs 以 modular fingerprints 分桶，再做 distributed meet-in-the-middle。Astra 应同时检索已公开 computational frontier，避免花几亿 token 重新验证别人早就扫过的 box。

这里**最大的未知**恰恰是我没有在本轮抓取资料中可靠钉死的“当前公开计算下界到底到了哪里”。所以我不会把它排到前三。但它的 payoff shape 太漂亮，不应忽略。

**止损信号：**一旦发现公开 exhaustive bound 已远远超过我们可经济覆盖的区域，又没有新的 algebraic parameterization，就立即停。

我的评级：**值得一次专门的中型计算攻击。**

### Erdős 699：便宜证书的 binomial-gcd 反例搜索

Lean target 要求所有

\[
1\le i<j\le n/2
\]

都存在 prime \(p\ge i\)，使

\[
p\mid
\gcd\left(\binom ni,\binom nj\right).
\]

Formal source 还紧邻一个 Sylvester–Schur theorem：单独对 \(\binom ni\)，存在 \(p>i\) 的 prime divisor；真正困难点是**同一个大 prime 同时进入两个 binomial coefficients**。fileciteturn17file0L2-L10

Catalog 快照是 **$13,614、0 attempts**。citeturn29search0 它比前三 bounty 低不少，但继续留在前五是因为 refutation certificate 很便宜。

我本次对 **全部 \(n\le1000\)** 与所有合法 \(i,j\) 做了 exact arithmetic search，没有发现 counterexample。

下一轮应完全避免生成巨大 \(\binom ni\)。利用 Legendre/Kummer 公式直接计算

\[
v_p\!\binom ni
\]

并寻找两个 binomial 的共同 prime support。一个 counterexample 等价于：它们 gcd 的所有 prime factors 都 \(<i\)。

若出现具体 triple，Lean 只需实例化 \(n,i,j\)，算出相关 gcd/factorization，再否定任意 \(p\ge i\) 成为 prime divisor。

为什么它只排第五？因为 $13.6k 的 bounty 更低，而且“小 \(n\) 全无反例”与 Sylvester–Schur 的结构都让我认为它比 677 更可能需要真正的新数论，而不是一次幸运计算命中。fileciteturn17file0L2-L10

我的评级：**值得一次小到中规模反例搜索；没有新迹象就迅速退出。**

## Formalization defect 猎杀

我对候选没有只问“Lean 能不能证明”，而是按历史真钱漏洞的模式逐项比较了 informal ↔ exact type。

结论反而很明确：

> **前五名里，我目前没有发现一个我愿意为之支付 submission fee 的 material formalization defect。**

这不是坏消息。它意味着若前五命中，预期目标是**全额 bounty，而不是 $750 defect award**。

### 值得继续盯的语义点

| Target | 可疑点 | 我的审计结果 | 是否值得专攻 defect |
|---|---|---|---|
| **686-four** | Nat product → ℚ coercion；`Icc 1 k`；分母零 | 因子均 ≥1；索引与原式一致；无零除漏洞 | **否** |
| **677** | `Ioc` 是否 off-by-one；\(m\ge n+k\) | `Ioc n (n+k)` 精确编码 \(n+1,\dots,n+k\) fileciteturn21file2L44-L53 | **否** |
| **617** | `Sym2` 包含 diagonal；edge distinctness | diagonal 不影响，因为 condition 显式要求 \(u\ne v\) fileciteturn16file0L2-L10 | **低** |
| **324 quintic** | pair symmetry、zero、strict order | `a<b` 已移除 swap duplication；0 本就是 nonnegative domain | **极低** |
| **699** | `≥i` vs `>i`；Nat division \(n/2\) | target 与 stated problem 均是 \(p\ge i\) 与 \(j\le\lfloor n/2\rfloor\) fileciteturn17file0L2-L10 | **低** |
| **985** | informal `q≤p`，Lean `q<p`；Lean 排除 \(p=2\) | 有表面差异，但 \(q=p\) 不提供有用 primitive root，排除模 2 很像 intentional nontrivial normalization | **只有重新核对原始 source 后才值得** |
| **373 maximal solution** | `List.headI` 对空 list；`n-1` Nat truncation | 确有退化语义，但空 product =1 只会产生很小 \(n\)，目前看不足以破坏 “fst≤16” | **低成本继续审计** |
| **213** | integer distance 用 `Set.range Int.cast`；`Pairwise` | 负 integer 不会等于正 distance；distinct pair 的语义正常；`NonTrilinear` 是 Triplewise no-collinear fileciteturn22file0L2-L10 fileciteturn23file1L17-L27 | **低** |
| **982** | `IsConvexPolygon` 的方向/索引 | helper 定义为 CCW polygon 或反向 indexing 的 CCW polygon，属于合理 orientation handling fileciteturn15file0L1-L13 | **低到中，但证书昂贵** |
| **458** | informal \(k\ge1\)，Lean 从 zero-based `nth Prime` 的 \(k=0\) 开始 | 最近官方 slate review 已显式检查 prime indexing，认定 zero-based Lean 与 one-based informal 对齐 fileciteturn6file0L1-L2 | **不要浪费 Token** |

### 几个已经被我主动降级的“看起来像低垂果实”

**Erdős 985** 很适合有限 counterexample search，但不是大任务首选。Formal source 是“每个 odd prime \(p\) 是否有 prime \(q<p\) 作为 primitive root”。fileciteturn31file0L2-L10 我实际检查了所有 odd primes \(p<5,000,000\)，没有反例；其中我看到的最大“最小 prime primitive root”也不过 211。更重要的是，公开 GitHub 上已经存在专门的 Erdos985 verifier，明确设计用来至少检查到 \(10^6\)。fileciteturn34file0L2-L10 这说明“写个 sieve 扫几百万”不是新的攻击面。它只值得作为空闲 CPU 的廉价旁线。

**Erdős 406 — one_two** 我也主动检查了小参数。对 \(2^k\) 转 ternary，搜索 \(k\le5000\) 后，所有 ternary digits 都非零的 exponent 仍只出现 \(0,1,2,3,4,15\)；没有便宜的新 exponent。原 source 的上下文也确认这里谈的是 ternary digits，不是一个“漏写 base”就能领奖的 bug。因此我把它从 shortlist 去掉。

**Erdős 779** 的 source 甚至直接留下备注：原 indexing 会在 \(n=0\) 出现 trivial false case，所以 formalizer 已经主动 shift 并添加 `n ≥ 1`。fileciteturn27file0L2-L10 这恰恰是我本来最喜欢猎的漏洞类型，但它已经被补了。

**Erdős 141** 的 AP predicate 同时要求 set cardinality 与由 consecutive nth-primes 生成的集合相等，因此重复项/零公差并不能偷掉长度。fileciteturn8file0L2-L10

**Green 40** 的源文件甚至专门注释了 ENNReal 上 `atTop` 与 `𝓝 ⊤` 的 subtle distinction，并在 `all_n` variant 中选择了后者，说明这里的 convergence trap 已经被作者意识到。fileciteturn12file0L2-L10

### 为什么我不再主张“全力扫 defect”

八月初的历史确实显示 defect hunting 极其赚钱：positivity、domain、Ramsey notion、mod coercion 等都真付过钱。citeturn25search1turn25search5turn25search7turn25search8

但后来官方 publication gate 明显吸取了教训。8 月 24 日那批候选在发布前被逐项检查 domain、quantifier order、asymptotic filter、inequality、distinctness/nonemptiness、helper definitions 和 degenerate witnesses；初始 slate 有 5 个目标被删换，其中有的正是 semantic mismatch 或 prior public work。fileciteturn6file0L1-L2

因此当前最合理的 defect 策略是：

**对全池做 cheap semantic audit，发现 concrete discrepancy 才进入证明；不要先选一个 $750 目标再强行寻找漏洞。**

尤其因为 v2 的 defect reward 固定为 $750，而一个真正的 686/617/677 witness 可以争取约 $18k。fileciteturn37file0L2-L6

经济上，除非漏洞可以在几十万到一两百万 token 内变成可验证 artifact，否则它不应挤掉主攻线。

## 最终下注与 Prover Agent 任务书

### 主目标：Erdős 686 — four

**这是我的最终下注。**

如果给我“一晚 + 10M Token + Web + Python/C++ + 完整 Lean 4/mathlib feedback loop”，我不会平均分配。我会把主要预算放在这里。

最大的原因不是我认为原数学问题“最容易”；而是它的 **reward surface 最漂亮**：

\[
\text{发现三个整数}
\longrightarrow
\text{极短 Lean certificate}
\longrightarrow
\text{直接解决 exact open target}
\longrightarrow
\text{约 \$18k full-bounty eligibility}.
\]

当前页面仍显示 0 attempts。citeturn29search1

可以直接交给 Prover Agent 的任务如下：

```text
PRIMARY TARGET
Erdos686.erdos_686.variants.four
Attack mode: FORMALIZED / PROVE, not counterexample.

Exact mathematical goal:
Find natural numbers k,n,m with
  k ≥ 2,
  m ≥ n + k,
and
  ∏_{i=1}^k (m+i) = 4 * ∏_{i=1}^k (n+i).

Equivalent form:
  C(m+k,k) = 4 * C(n+k,k).

Known information from the source:
- k=2 is impossible.
- k=3 is impossible.
- Therefore begin at k=4.
- Related non-square N cases admit Pell-type constructions.
- Current public Conjectures.io page has zero attempts.

Phase A — freshness/novelty:
Before consuming the large search budget, check the current Erdős Problems page,
paper references, comments, active Formal Conjectures PR/issues and public search
for any post-2026-09-07 solution or computational bound.
Do not reuse a previously published solution.

Phase B — exact computational hunt:
1. Implement exact rising-factorial/binomial recurrence; never use floating equality.
2. Search k adaptively from 4 upward.
3. Use p-adic valuation constraints for many small primes before BigInt comparison:
      v_p(R_k(m)) - v_p(R_k(n)) = v_p(4).
4. Add modular residue sieves for the polynomial/rising-factorial equation.
5. Prioritize k=4..20 for algebraic reduction:
   factorization, Pell/elliptic/hyperelliptic transformations, local obstructions.
6. Search for structured constructions rather than merely increasing n.
7. Parallelize only after mathematical pruning.

Existing local negative checkpoint:
An exact search already found no witness for
  4 ≤ k ≤ 200, 0 ≤ n ≤ 300000.
Do not repeat that rectangle naively.

Phase C — once a witness appears:
Immediately freeze (k,n,m), independently recompute the equality,
then produce the smallest possible Lean target proof.

Prefer:
  constructor
  · intro _
    refine ⟨k, by norm_num, n, m, by norm_num, ?_⟩
    norm_num [Finset.prod_Icc_succ_top, Finset.Icc_self, Finset.prod_singleton]
  · intro _
    trivial

Adapt the proof to the actual k. Do not use native_decide.
Do not reference the source theorem itself or admitted dependencies.

Run the exact task bundle locally and run the platform's free `check`.
Do not pay/submit until the production-compatible check succeeds.

STOP CONDITIONS:
- A public earlier solution of the direct problem is found.
- The only remaining search would merely duplicate a much larger published exhaustive bound.
- Fixed-k analysis shows strong local obstructions and no new construction mechanism emerges.
- The search strategy degenerates into unstructured brute force with no meaningful coverage gain.

Success means an explicit witness plus a validator-clean Lean proof, not a heuristic.
```

### 备选目标：Erdős 617

如果 686 的 freshness check 显示公开搜索已经把我们准备做的全部区域覆盖，或者 modular analysis 很快显示没有新东西，我会马上切 **617 的 \(r=5\) counterexample**，不是转去深证明 686。

```text
BACKUP TARGET A
Erdos617.erdos_617
Attack mode: COUNTEREXAMPLE.

Specialize immediately to r = 5 and V = Fin 26.

Goal:
Construct a 5-coloring of the 325 edges of K_26 such that every
6-vertex subset contains at least one edge of every one of the 5 colors.

Equivalent requirement:
Partition E(K_26) into five graphs G_0,...,G_4 with α(G_c) ≤ 5
for every color c.

Phase A — structured constructions:
Search cyclic, affine, difference-set and group-orbit colorings first.
A formulaic coloring is dramatically more valuable than a random 325-entry table
because its Lean verification will be much cheaper.

Phase B — SAT:
Variables encode one of 5 colors for every unordered edge.
For every 6-subset S and color c add:
  OR_{e ∈ E(S)} [color(e)=c].
Add exactly-one-color edge constraints.
Aggressively break vertex and color symmetry.

Use solver output to look for algebraic patterns rather than accepting an
opaque model immediately.

Phase C — Lean:
Instantiate V with Fin 26 and r=5.
Produce the coloring as a compact computable function.
Prove the negation of the universal theorem.
Avoid native_decide; test whether permitted `decide`/reflection is fast enough.
If raw exhaustive reduction exceeds validator limits, prove the property from
the symmetry/algebraic structure instead.

STOP CONDITION:
If r=5 is decisively UNSAT, do not blindly scale to r=6/K_37.
Only continue if the UNSAT analysis produces a new structural theorem or a
much smaller search parametrization.

Success means a concrete balanced coloring with a validator-clean refutation.
```

这是一个很好的 **Astra engineering problem**：它不要求模型凭空证明几十年的组合数学，而是允许 solver、程序搜索、结构识别和 Lean feedback 形成真正的闭环。Formal statement 本身看起来忠实，因此若成功，我预期争的是 full bounty，而不是 $750 defect。fileciteturn16file0L2-L10

### 备选目标：Erdős 677

第二备选我选 677，而不是 324/699，因为它同时有接近 $19k 的 bounty、0 attempts、非常短的潜在 counterexample certificate，而且 exact arithmetic search 可以明确量化 coverage。citeturn25search0

```text
BACKUP TARGET B
Erdos677.erdos_677
Attack mode: COUNTEREXAMPLE.

Goal:
Find naturals m,n,k such that
  k > 0,
  m ≥ n+k,
  lcm(n+1,...,n+k) = lcm(m+1,...,m+k).

Do not spend the main budget trying to prove the universal conjecture.

Represent each interval LCM by prime-power maxima:
  v_p(M(n,k)) = max_{n<j≤n+k} v_p(j).

Phase A:
Build SPF/prime-power tables and an efficient signature or fingerprint for
intervals. Search only pairs separated by at least k.
Use exact confirmation for every fingerprint collision.

Existing negative checkpoint:
No counterexample was found for k≤30 with both interval starts <1000.
Do not repeat this region.

Phase B:
Target unusually smooth intervals and boundaries that introduce no new
large prime powers.
Study when shifting an interval removes one maximal p-adic contributor while
adding a number whose p-adic exponents reproduce the same maxima.

Use source examples with equal LCM for different lengths as pattern generators,
but enforce the actual same-k condition.

Phase C:
Once a numeric collision is found, instantiate m,n,k directly in Lean and
normalize both finite LCM computations.
Prefer a compact arithmetic certificate and factorization lemmas if the
numbers are too large for direct reduction.
No native_decide.

STOP CONDITION:
Set an explicit coverage budget before search.
If the optimized prime-power-signature sweep grows by several orders of
magnitude without a collision or new structural pattern, terminate and move
to Erdős 324 or 699.

Success is one concrete disjoint equal-length LCM collision plus a
validator-clean counterexample proof.
```

**最终资金下注顺序就是：686 → 617 → 677。**

686 是最好的“一个 witness 换约 $18k”彩票，而且彩票可以用数学把号码空间大幅压缩；617 是最好的“第一个开放有限 case + SAT + Lean”项目；677 则是最好的“便宜、可量化、失败也能快速止损”的 arithmetic counterexample sweep。

我**不会**把今晚的大额度押在 141、375、723、828、Green 40 这类“赏金看起来差不多，但实际上要求真正攻破著名深问题”的目标上。723 的 order-12 projective plane 虽然形式上是 finite existence，却是巨大的 incidence structure 搜索；Formal Conjectures 的 exact target确实要求构造有限 projective plane of order 12。fileciteturn18file0L2-L10 Green 40 则已经进入 coding-theory liminf/ENNReal covering-density 层面，并非一个小形式漏洞。fileciteturn12file0L2-L10 Grimm 的 375 formalization也与标准命题高度贴合，没有发现能把几十年数论压成 `decide` 的缺口。fileciteturn13file0L2-L10

因此，我的最终 bounty-hunter 判断是：

> **当前最可能把 Astra 的推理 Token 转换成“Lean 可验证 + 有真实现金价值”的，不是最大 bounty，也不是最著名的问题，而是 Erdős 686-four 这种 explicit-existence target。**
>
> **今晚只押一题：押 686 的 proof side。**  
> **如果它迅速出现明确止损信号：转 617 的 \(r=5\) counterexample SAT。**  
> **再下一张牌：677 的 LCM collision。**
>
> Formalization-defect hunting 继续作为全池的廉价 side-channel，但在当前 v2 的 **$750 fixed defect award** 与明显增强的 admission audit 之下，我不会再让它吃掉主任务的大部分 Token。fileciteturn37file0L2-L6