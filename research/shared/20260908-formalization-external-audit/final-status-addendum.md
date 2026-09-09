# 最终状态补充：B686 fresh 证据、MS2004 契约与固定间隙有限化

核验日期：2026-09-08 UTC。仓库基线仍为
`08a8ac6872e8abfd4a2c480496da350a97ecdc13`；固定 Lean 为 4.33.1，固定
mathlib 为 `0df444a360eaa60ab8c11dca51a86af692955474`。本文件是对本目录既有
`external-audit.md`、`adoption-followup.md` 的状态补充；不改写历史记录，也不把
论文、诊断搜索或有限 Python 搜索升级成 Lean 定理。

## 新鲜验收状态取代旧状态

本次重新读取了以下实际证据：

| 对象 | fresh 证据 | 结果 |
|---|---|---|
| provider | `research/tasks/B686-Four/runs/20260908-formalization-92c221/verification/canonical/standard-provider-final-20260908T/evidence.json` | `success=true`，6 个 provider 源文件 |
| canonical 全偶密度 `1/4` | `research/tasks/B686-Four/runs/20260908-formalization-92c221/verification/canonical/density/20260908T113015661794Z/evidence.json` | `success=true`，18 个项目闭包源文件，fresh project objects |
| 四整除 Runge 闭包 | `research/tasks/B686-Four/runs/20260908-formalization-92c221/verification/quarter/20260908T114117928142Z/verification.json` | 23 个源文件全部退出 0；固定源码哈希一致；审计声明 18 个；仅 `propext`、`Classical.choice`、`Quot.sound` |
| canonical 四整除密度 `1/8` | `research/tasks/B686-Four/runs/20260908-formalization-92c221/verification/canonical/density/20260908T114721436330Z/evidence.json` | `success=true`，36 个项目闭包源文件，fresh project objects；开始 `11:47:21Z`，结束 `11:50:05Z` |

因此旧 follow-up 中“1/8 还只是待闭合”的状态已经被最后一行证据取代。当前
1/8 入口的 guarded 声明是
`B686CanonicalDensity.four_dvd_support_density` 与
`B686CanonicalDensity.four_dvd_canonical_support_density`；后者实际调用
`canonicalSystem`，不是增加一个系统存在性假设。四整除 Runge 的完整 fresh 记录
仍独立保留在上表路径，不能把它误读成原题无解证明。

密度 `1/4` 和 `1/8` 的前提边界现在应记录为：canonical provider 实际给出
矩阵/清分解，随后使用非单位支持的阶乘下界、原下块乘积的端点上界、已验收的
Runge 高度界和 Stirling 型增长桥。proper-support jet、非公共零点、或在原题解
点“不全为零”的性质不进入这两个 limsup 密度消费者；它们只属于更下游的原题
无解/有限性路线。把 jet 前置到密度推导会错误扩大其前提集合。

## MS2004 Theorem 3：原文和精确 Lean 契约

### 一手来源和逐字核读

实际检索词（2026-09-08 UTC）：

- `"Square free part of products of consecutive integers" Mukhopadhyay Shorey Theorem 3 PDF`
- `site:publi.math.unideb.hu/paper/924 "Square free part"`

命中的是作者论文的官方出版页面及其 PDF：

- Anirban Mukhopadhyay and T. N. Shorey, *Square free part of products of consecutive integers*,
  `Publ. Math. Debrecen 64/1-2 (2004), 79–99`, DOI `10.5486/PMD.2004.2881`。
- 官方页面：<https://publi.math.unideb.hu/paper/924>
- 官方 PDF：<https://publi.math.unideb.hu/paper/924/download/10_5486_PMD_2004_2881.pdf>
- Theorem 3 在印刷第 88 页、PDF 第 10 页。直接下载的 PDF 临时副本
  `/tmp/ms2004.pdf` SHA256 为
  `ccde292a42973b56c4b0556c0f08cc5e8b8edf1a7c54dac0ecaf29565d6517f4`。
  式 (3) 位于印刷第 80 页/PDF 第 2 页，异常表 (4) 延续到印刷第 82 页/PDF 第 4 页；
  PDF 第 4 页明确写出当长度大于 293 时式 (3) 总是成立。

原文 Theorem 3 使用小写 `n,k,z`；以下用大写 `N,K,Y` 避免与 B686 原题的
`n,k` 混淆。逐字内容是：`2 ≤ t ≤ 7`、`K ≥ 2+t`；
`d₁,…,d_{K−t}` 是区间 `[0,K−1]` 中的互异整数，并且

```text
∏_{r=1}^{K−t} (N + d_r) = Y²,       Y > 0。
```

然后分三段：

```text
N > K²       ⇒ 只有三个异常平方：
               240·243·245 = 3780²，
               242·245·250 = 3850²，
               240·242·243·250 = 59400²；
K < N ≤ K²   ⇒ K ≤ κ(t);
N ≤ K        ⇒ K ≤ κ′(t).
```

常数逐项是

```text
κ(2),…,κ(7)   = (8, 9, 11, 15, 16, 24),
κ′(2),…,κ′(7) = (11, 25, 28, 30, 46, 50).
```

这里中间分支的下端 `K<N` 是严格的，上端 `N=K²` 被包含；`N=K` 归入第三
分支。原文的正整数约定必须保留，所以在 Nat 版契约中还需显式带 `0<N`；
Theorem 3 没有给出任意 `N` 的额外上界，也没有假设本题目标 `m≥n+k+8`。

### Finset 化的最小声明

等价的、适合固定 Lean 环境的输入可写成如下接口（异常产品用显式三个分支
表达）：

```lean
MS2004Theorem3
  (N K t Y : ℕ)
  (hN : 0 < N)
  (ht : 2 ≤ t ∧ t ≤ 7)
  (hK : t + 2 ≤ K)
  (D : Finset ℕ)
  (hDsub : D ⊆ Finset.Icc 0 (K - 1))
  (hDcard : D.card = K - t)
  (hY : 0 < Y)
  (hsq : (∏ i in D, (N + i)) = Y ^ 2) :
  (N > K ^ 2 ∧
     ((∏ i in D, (N + i)) = 240 * 243 * 245 ∨
      (∏ i in D, (N + i)) = 242 * 245 * 250 ∨
      (∏ i in D, (N + i)) = 240 * 242 * 243 * 250)) ∨
  (K < N ∧ N ≤ K ^ 2 ∧ K ≤ κ t) ∨
  (N ≤ K ∧ K ≤ κPrime t)
```

`Finset` 的无重复性加上 `hDsub` 和 `hDcard` 正好实现论文的“`K−t` 个互异
偏移”；不能只给一个任意乘积的平方而删掉范围或 card 条件。对于异常分支，
论文给出的是保留积的三个数值，不给出可省略的偏移位置，因此消费者必须把
它们作为完整乘积等式保留，不能把异常改成“存在某个未说明的删项集合”。

### B686 的逐项映射

原题解使用 `m=n+k+h`，其中 `k≥2`、`h=m−n−k`。令

```text
d := m−n = k+h,
N := n+1,
K := k+d = 2k+h,
t := h,
D := Icc 0 (K−1) \ Icc k (k+h−1).
```

对本轮 `h=2,…,7`，有 `D.card=K−h=2k`，且 `D⊆Icc 0 (K−1)`。保留的
`D` 恰好是完整区间 `[N,N+K−1]` 去掉中间的 `h` 个因子；不是预先假定
`h≥8`。若原方程是
`P_k(n+d)=4P_k(n)`，则

```text
∏ i in D, (N+i)
  = P_k(n) * P_k(n+d)
  = 4 * P_k(n)^2
  = (2 * P_k(n))^2,
```

所以 `Y=2*P_k(n)>0`。`K=2k+h≥h+4` 给出论文要求的 `K≥t+2`；`N=n+1`
给出正性。此处真正需要交给 MS 的契约就是上面的 `N,K,t,D,Y`，不能用目标
`m≥n+k+8` 替代它。

当前 Lean 桥已经闭合两个分支条件，但没有形式化 MS 本身：

- `B686GapBounds.start_below_span_square` 从原方程给
  `N=n+1 < (k+d)^2=K^2`；论文允许的端点 `N=K²` 因而在本题桥中被更强的
  严格不等式排除了。
- `B686Round3SmallGap.start_exceeds_span` 在 `k≥5`、`d≥k`（这里
  `d=k+h` 自动满足）时给 `K<N`。`k≤4` 由现有 all-`n` 小参数证书覆盖。
- 因而 `h=2,…,7` 的纸面归约只需 MS 中间分支，给 `K≤κ(h)`，再给本题
  `k≤8`；但该外部 theorem 尚未成为固定 v4.33.1 下的 Lean 声明。69120 个
  有限三元组搜索是交叉证据，不是这个无界桥的替代品。

这仍然是 MS 纸面路线的精确缺口。根据根线程当前已核得并正在接入的统一界
`k^2 < 64d`，在 `h≤7` 时可直接得到 `k≤70`，再把现有 all-`n` sign
certificate 扩展到 `k≤70`；因此 MS Theorem 3 和 `h=0,1` 的 Sylvester–Schur
输入不再是 F686-09 当前选定闭合路线的必要外部依赖。本文件只记录该路线调整，
不把根线程的新统一界或其证书扩展冒充为本次独立编译结果。MS 契约仍作为可追溯的
历史/替代纸面路线保留。

## 任意固定 h 的有限化：旧路线审计检查点

`research/tasks/B686-Four/experiments/round3-final-report.md` 报告的界为

```text
s := floor((4h+7)/3),
p_r := 第 r 个素数,
B(h) := max(293, h+8, p_{s+1}−1).
```

该结论的外部数数输入来自同一 MS2004 原文，不是 Theorem 3：论文印刷第
80 页/PDF 第 2 页的式 (3) 定义的 `g₀(N,K)` 是完整连续积
`Δ(N,K)=N(N+1)…(N+K−1)` 的不同素因子 `p>K` 的数目，并给出

```text
g₀(N,K) ≥ floor(3π(K)/4) − 1,
```

前提为 `N>K≥19`，但须排除式 (4) 的有限异常对；印刷第 82 页/PDF 第 4 页
明确说明当 `K>293` 时没有异常，故可采用最小外部接口

```text
K > 293 ∧ K < N
  → g₀(N,K) ≥ floor(3 * π(K) / 4) − 1.
```

这里 `π(K)` 是不超过 `K` 的素数个数；式 (3) 计数所有不同素因子，不是只计
奇次赋值。边界 `K=293` 不可套用这个无异常接口，而由 `B(h)` 的 `293` 分支
直接有限化。`N=K` 也不属于该接口；固定 h 的本题在 `k≥5` 时由 Lean 桥给出
严格 `K<N`。

把该接口接到 B686 还需要以下纸面桥（当前没有相应的 Lean 全局定理）：

1. `N<K²`（当前 `GapBounds` 给出更强的严格式）使每个完整区间项小于
   `(K+1)²`；因此 `p>K` 在一项中的指数为 1，且不能同时整除两个相差小于
   `K` 的项。
2. 原方程使去掉中间 `h` 项后的外块乘积是平方。故每个 `p>K` 素因子不能
   落在保留项中，只能落在 `h` 个缺项中；由位置注入得到
   `h≥g₀(N,K)`。
3. 从
   `floor(3π(K)/4)−1≤h` 得 `3π(K)≤4h+7`，即
   `π(K)≤s`。用一基素数索引得到 `K<p_{s+1}`，所以
   `K≤p_{s+1}−1`。

若 `k≤4`，则 `K=2k+h≤h+8`。若 `k≥5` 且 `K>293`，上面的三个桥给出
`K≤p_{s+1}−1`；其余 `K≤293`。因此纸面上得到

```text
K ≤ B(h),
2 ≤ k ≤ floor((B(h)−h)/2),
N=n+1 < B(h)^2,  hence  n < B(h)^2,
m=n+k+h.
```

这确实对每个指定固定 `h∈ℕ` 给出有限搜索（包括奇数 `k`），但在当时的
MS 数数路线下没有给出
`h` 的全局上界，也没有把有限 Python/相邻变号诊断变成任意 `h` 的 Lean
消费者。当前采用记录因此支持“条件于一手大素因子计数定理和上述局部桥的固定
h 有效有限化”，不支持“已在 Lean 中完成该完整结论”。这一段保留为旧来源
审计检查点；下文的 fresh `FixedGap.lean` 已用不依赖 MS 数数界的新路线取代它
作为 F686-11 的验收状态。

## 固定 Blair tree/FRONTIER 的有界来源审查

检索日期为 2026-09-08 UTC。固定只读仓库为
`/workspace/scratch/c6b148d48b6d/external-research/repos/lean-proofs`，HEAD
为 `aff1d30b3b1c6bd705810fa4d588b03940fb31df`，工作树干净。实际检索词和结果
如下；这是一轮有界 tree/FRONTIER 核验，不是全网搜索：

| 检索词 | 命中 | 结论 |
|---|---|---|
| `Mukhopadhyay`, `MS2004`, `Theorem 3`（Lean/Markdown/Text） | 没有 MS 论文声明；官方 PDF 只在本文件上文记录 | 没有可直接复用的 MS2004 Theorem 3 源码 |
| `Laishram`, `Shorey`, `floor(3π(K)/4)−1`, `prime.?divisors.*3/4` | `PROGRESS_Erdos686.md:563,573` 只有发表结果/计划叙述；无对应 Lean 声明 | 没有 Laishram–Shorey 大素因子计数实现 |
| `Dusart` | 无 Lean/Markdown/Text 命中 | 没有 Dusart Proposition 5.4 实现 |
| `Sylvester`, `sylvester_schur` | `ErdosProblems/Erdos686SylvesterSchur.lean` 及其导入者 `ErdosProblems/Erdos686ReflectedHarmonic.lean` | 存在一个可适配的完整二项式 Sylvester–Schur 候选 |

唯一同类可复用候选是
`ErdosProblems/Erdos686SylvesterSchur.lean`。文件头保留了上游
`AllenGrahamHart/FormalConjectures-Bench` commit
`482dacc4d9335240f26218cdc62032da3100392b`、上游 payload SHA256
`ab0987fe6012fb421138af86ea6509979fcf885aa54744f06b2215fbb7f7e7b4`；在固定
Blair tree 中该文件 Git blob 是
`9991830e1225ca9b98ac40da022e96537e8f5a3b`，工作内容 SHA256 是
`9c16d59ea2a1e4e41b1ba0329f6f43749973e14ef064bd2f003cf95ef2c71243`。
当前仓库 `LICENSE` 是 MIT（SHA256
`0665bb5f63d444ca4dcc9ad89e274cf1d657928789bd1cae6ce2524423fe5902`）；上游
FormalConjectures-Bench 的独立许可证文本未随该文件核验，所以若移植必须保留
来源头并另行确认上游许可，不能仅凭当前仓库 MIT 宣称上游载荷许可。

该候选只证明

```lean
theorem Erdos699Formalization.sylvester_schur
    (n i : ℕ) (hi : 1 ≤ i) (hi_half : i ≤ n / 2) :
    ∃ p : ℕ, p.Prime ∧ i < p ∧ p ∣ Nat.choose n i
```

并同时保留 `SylvesterSchurInterval` 的区间定义和证明开发；它不是
MS2004 的删项平方积定理，也不是 `g₀ ≥ floor(3π(K)/4)−1` 计数定理。将其用于
B686 还需把 `K<N` 映射到 `n_binom=N+K−1, i=K`，再证明从二项式整除到连续
区间乘积整除的适配桥。该桥在当前固定树中没有作为 B686 的目标声明出现。

源码只导入四个 Mathlib 模块（阶乘大运算、Bertrand、Nat 区间 Finset、平滑数）；
文件中没有声明级 `axiom`、`sorry`、`admit` 或 `native_decide`。`FRONTIER.md`
称其为已 vendor 且 kernel-checked，`Erdos686ReflectedHarmonic.lean` 也实际导入
它；但该候选没有登记在当前 `proofs.yaml` 汇总条目中，且固定 tree 中未找到该
文件的 `.olean`。外部 `lake-manifest.json` 使用 Lean `v4.29.1` / mathlib
`5e932f97dd25535344f80f9dd8da3aab83df0fe6`，不是本项目固定的 v4.33.1 /
`0df444a360eaa60ab8c11dca51a86af692955474`，所以它是有来源和无自定义公理文本的
适配候选，不是当前项目已接受的 v4.33.1 定理。

截至该固定 tree，MS 中间分支、Laishram–Shorey 数数界、Dusart Proposition 5.4
都没有同声明 Lean 来源；诊断、`PROGRESS_Erdos686.md` 的发表结果叙述和有限搜索
均不计入形式化闭合。由于 F686-09 当前改走 `h≤7 ⇒ k≤70` 的统一界路线，以上三类
缺口保留为替代路线/历史审计项，不能再写成该 F09 选定路线的阻塞项。

## 旧交接判定（保留为历史检查点）

- 新 fresh 证据已经关闭 provider、`1/4` canonical 密度、四整除 Runge
  闭包和 `1/8` canonical 密度的旧状态差异；proper-support/jet 仍是原题下游
  义务，不是密度输入。
- MS2004 Theorem 3（含上面的 Finset 范围/card、正性、三异常和两端点分支）、
  Laishram–Shorey 数数界和 Dusart Proposition 5.4 仍没有固定 v4.33.1 的同
  声明来源；Blair 候选只提供二项式 Sylvester–Schur 证明且仍需 API/整除桥适配。
  这些是替代纸面路线的未关闭义务，有限搜索不关闭它们；按根线程当前采用的
  `k^2<64d` 与 `h≤7⇒k≤70` 路线，它们不再是 F686-09 选定消费者的必要输入。
- 固定 h 的新界还需要式 (3) 的 `g₀` 计数接口（`K>293,N>K`）和第 1–3 项
  的位置/指数/素数索引桥。它没有假设 `n+k+8`，也不能反向给出所有 h 的
  上界。

## Fresh 最终路线状态：F686-09、F686-11 已闭合

本节状态取代上面旧交接中的“MS 是 F686-09 最小外部义务”描述；旧 MS
Theorem 3、固定 `h` 的 `g₀` 数数接口以及 `h=0,1` 的 Sylvester–Schur
阻塞文字仍保留，作为历史/替代路线检查点，不再作为当前消费者判定。

| 任务 | 当前根入口 | fresh 验收证据 | 独立审查 | 状态 |
|---|---|---|---|---|
| F686-09 短间距 | `research/tasks/B686-Four/runs/20260908-formalization-92c221/lean/shortgap/Consumer.lean`；最终声明 `B686ShortGapConsumer.original_gap_ge_eight` | `research/tasks/B686-Four/runs/20260908-formalization-92c221/verification/20260908T120354Z/evidence.json`；`success=true`，14 个 source-closure 文件，root SHA256 `ca41ccbda42bcbb005c3ed1f85c2b0ad9d5a5dd5dee4aa29ab559b9e967c4572`，3 个 guard/print-axioms 通过 | `research/tasks/B686-Four/runs/20260908-formalization-92c221/reviews/shortgap-independent-review.md` | 新路线完整闭合；不依赖 MS、MRSTT、Dusart 或 Sylvester–Schur |
| F686-11 固定间隙 | `research/tasks/B686-Four/runs/20260908-formalization-92c221/lean/shortgap/FixedGap.lean`；最终声明 `original_fixed_gap_bounds` 与 `fixed_gap_solutions_finite` | `research/tasks/B686-Four/runs/20260908-formalization-92c221/verification/20260908T120826Z/evidence.json`；`success=true`，13 个 source-closure 文件，root SHA256 `aa6d16ec49d21a587d53369b5fdb8002aa5b77245cee611e475a16bb167951f6`，3 个 guard/print-axioms 通过 | `research/tasks/B686-Four/runs/20260908-formalization-92c221/reviews/fixedgap-independent-review.md` | 新路线完整闭合；精确保留 `B(h)=max(293,h+8,p_{floor((4h+7)/3)+1}-1)`，不依赖 MS 数数界或 Dusart |

两份证据的 guard 公理均只有固定环境的 `propext`、`Classical.choice`、
`Quot.sound`。短间距独审明确核对了否定目标 `h≤7` 后由全长距离界得到
`k≤70`，再由 `22≤k≤70` 的 392 个完整自然参数和 `k≤21` 既有证书覆盖全部
自然起点；固定间隙独审明确核对了任意 `h` 的完整量词、原等式、`B(h)` 和有限
三元组解集。有限/Python 诊断只作为数据来源和交叉检查，闭合结论来自这些
Lean 根入口及其 fresh source closure。

## Sylvester–Schur：已独立验收的可复用成果

完整公开来源的适配现在有独立 fresh 证据：

`research/tasks/B686-Four/runs/20260908-formalization-92c221/verification/shortgap/sylvester/20260908T120920262026Z/verification.json`

该证据 `success=true`，Lean 4.33.1 下 `SylvesterSchurSource.lean`、
`Consumer.lean`、`AxiomAudit.lean` 三个源文件均退出 0，允许公理仍只有
`propext`、`Classical.choice`、`Quot.sound`；空白名单 `NegativeAudit.lean`
按预期拒绝而没有引入公理。来源、许可和适配边界详见
`research/tasks/B686-Four/runs/20260908-formalization-92c221/notes/shortgap/sylvester/upstream-adoption.md`：固定 Blair commit 的 MIT 入口、上游 provenance、原始 SHA、四个 Mathlib 导入和当前 pin 适配均有记录。

它是已闭合、可复用的二项式 Sylvester–Schur 成果，消费者通过阶乘/上升阶乘
恒等式得到连续乘积中的素数见证；但当前 F686-09 的 `k≤70` 短间距主链和
F686-11 的统一界主链都不依赖它。该成果的“可复用”属性不能倒过来恢复旧 MS
阻塞，也不能把它当作 MRSTT 或 Dusart 的替代证明。

## 当前真正的外部阻塞边界

在上述两条新路线闭合后，当前审计范围内剩余的外部数学输入只有：

- **B686 MRSTT**：`research/tasks/B686-Four/runs/20260908-reflected-sum-9bad0b9/main/prime-synchronization-theorem.md` 所引用的 MRSTT QJM Proposition 1.13(ii) 素数采样/同步高度估计。既有 `reflected-sum` Lean 链只证明原解导致的采样偏差下界，未形式化 MRSTT 的指数和、Vaughan 分解、采样误差和完整高度估计；这仍是该 reflected-sum/大参数路线的条件外部依赖。
- **B677 Dusart Proposition 5.4**：对所有实数 `x≥89693` 存在素数 `x<p≤x(1+1/(log x)^3)`。`research/shared/20260908-formalization-external-audit/external-audit.md` 第 1 节及 `research/tasks/B677-Lcm/runs/20260908-interval-lcm-f0a6539/explorer/sources/SOURCE-MANIFEST.md` 保存了一手 PDF、勘误、页码和 SHA；B677 的条件消费者仍显式暴露该输入，不能把来源论文或有限计算称作 Lean 证明。

B699 的结构强迫数学缺口（包括其双余因子/结构消费者若仍未证明的部分）是独立的
数学研究义务，不是本节所说的外部定理阻塞；不得把它与 B686 MRSTT 或 B677
Dusart 合并计数。当前 F686-09/F686-11 的 fresh 完成也不替 B699 结构缺口提供
任何证明。
