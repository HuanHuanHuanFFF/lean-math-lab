# 有界外部依赖核验（2026-09-08 UTC）

本记录只覆盖三项被点名的外部输入，不能替代数学证明、Lean 内核验收或论文同行评审。检索结论均为限定结论：在固定 mathlib 源码和本次指定的公开一手来源检索范围内，未找到可直接消费的 Lean 定理，不据此声称全网不存在。

## 基线、规则和可复核性

- 仓库基线：`08a8ac6872e8abfd4a2c480496da350a97ecdc13`。
- 工具链：`leanprover/lean4:v4.33.1`；`lake-manifest.json` 的 mathlib 条目为 `inputRev: v4.33.1`、`rev: 0df444a360eaa60ab8c11dca51a86af692955474`。
- 只读源码核对路径：`/workspace/scratch/0d28e8b53182/lean-math-lab/.lake/packages/mathlib`；该工作副本 `git rev-parse HEAD` 同样是 `0df444a360eaa60ab8c11dca51a86af692955474`，`git status --short` 为空。当前仓库的 `.lake/packages/mathlib` 也核为同一 SHA。结论没有建立在缓存中已有 `.olean` 的假设上；本轮针对性读的是上述 commit 的 `.lean` 源码。
- 已读规则：`AGENTS.md`、`docs/STRUCTURE.md`、`.agents/skills/lean-research/SKILL.md`。规则要求精确记录域、假设、端点、来源和日期，区分论文/有限计算/Lean 定理，禁止 `sorry` 或未解释项目公理；跨题证据放在 `research/shared/`。
- 本文件及本目录是本轮唯一写入位置；没有修改 pins、题目账本、其他 run 或正式 `Math/` 模块。

被核对的既有材料及 SHA256：

| 材料 | 路径 | SHA256 |
|---|---|---|
| B677 候选证明 | `research/tasks/B677-Lcm/runs/20260908-interval-lcm-f0a6539/explorer/complete-proof.md` | `a3e31f20f6702a56a51828be308b3df749bf64a7d68e5562cac02aac89e5c900` |
| B677 来源清单 | `research/tasks/B677-Lcm/runs/20260908-interval-lcm-f0a6539/explorer/sources/SOURCE-MANIFEST.md` | `a83985ad397cbb0a4e2a1f902b30286f280503b5ad2f166fa37216751a43d9b7` |
| B686 同步高度材料 | `research/tasks/B686-Four/runs/20260908-reflected-sum-9bad0b9/main/prime-synchronization-theorem.md` | `58514e7f3699e8a99a2742c982d63e099c612d3dc59ceedd3b6cff407234b0fe` |
| B686 同步来源审计 | `research/tasks/B686-Four/runs/20260908-reflected-sum-9bad0b9/main/source-audit.md` | `96cf7c3944d14e386287058d8410ade250263bec15d6da2149a8b8c06dba1785` |
| B686 割线纸面证明 | `research/tasks/B686-Four/runs/20260908-lcm-distance-7cab35e/next-route-a/quarter-runge-bound.md` | `6ece40936e86d7a9407ffee19e8f0d118cf74ba96d64447ab4cc80b6b014076c` |
| B686 割线独立验收 | `research/tasks/B686-Four/runs/20260908-lcm-distance-7cab35e/paper-acceptance/quarter-review.md` | `48692bb1926ed0a782f259c2c39cdb65985f65de5f520932a6bc09efa9825804` |

本轮实际执行的本地核对包括：

```text
rg -n -i 'Dusart|explicit estimate|prime counting|prime.*interval|short interval|prime.*gap|Bertrand' <fixed-mathlib>/Mathlib
rg -n -i 'slit|cut|branch|circleIntegral|boundary_rect|differentiable_on_off_countable' <fixed-mathlib>/Mathlib/Analysis/Complex/CauchyIntegral.lean
rg -n -i 'sqrt|branch|cut|slit|continuous|HasDeriv' <fixed-mathlib>/Mathlib/Analysis/Complex/BranchLogRoot.lean <fixed-mathlib>/Mathlib/Analysis/Complex/SqrtDeriv.lean
rg -n 'intervalIntegrable|integral_mono_on|integral_lt_integral_of_continuousOn_of_le_of_exists_lt|integral_pos|integral_nonneg' <fixed-mathlib>/Mathlib/MeasureTheory/Integral/IntervalIntegral
```

网页检索日期为 2026-09-08 UTC，实际搜索词包括：

```text
site:github.com/leanprover-community/mathlib4 Dusart Proposition 5.4 prime gap 89693
site:github.com/leanprover-community/mathlib4 MRSTT Singmaster Proposition 1.13 formalization
site:github.com Lean4 formalization Runge theorem square root polynomial branch cut Cauchy integral
site:github.com Lean4 formalization prime gap explicit Dusart
polynomial part square root consecutive integers coefficients
square root polynomial Laurent coefficients equally spaced
```

公开来源只采用官方论文/出版社、作者页面、arXiv、GitHub 项目及 mathlib 源码；搜索命中和适配性见下文。

## 决策表

| 项目 | 外部输入 | 固定 mathlib 直接命中 | 公开 Lean 直接复用 | 实际状态 |
|---|---|---|---|---|
| B677 | Dusart Prop. 5.4，`x≥89693` 的窄素数区间 | 无；仅有 Bertrand 和 Chebyshev 粗界 | 无；PrimeGaps186/LongGapsBetweenPrimes 不同命题 | **真实阻塞** |
| B686 同步 | MRSTT QJM Prop. 1.13(ii) 的受高度限制素数采样误差 | 无指数和/Vaughan/该采样估计 | 本轮未找到 | **真实阻塞** |
| B686 quarter | 成对割线上的 `sqrt(B)` Cauchy 跳跃表示及严格交错正性 | 有通用 Cauchy、单值根和区间积分零件，缺目标组合定理 | 未找到同一割线证明 | **真实阻塞，且缺口在分支/跳跃/Cauchy 主链** |

“真实阻塞”表示现有纸面路线要进入接受的 Lean 证明，必须新增可信 formalization 或明确、可审计的条件接口；不能把论文引用写成 `axiom` 后宣称已完成。

## 1. B677：Dusart Proposition 5.4

### 纸面输入和现有使用点

`complete-proof.md` 第 37–47 行和 `SOURCE-MANIFEST.md` 第 9–34 行给出的精确输入是：对每个实数 `x ≥ 89693`，存在素数 `p` 满足

```text
x < p ≤ x * (1 + 1 / (log x)^3).
```

这里左端严格、右端非严格，`p` 是整数素数而 `x` 是实数。材料引用 Pierre Dusart, “Explicit estimates of some functions over primes”, *Ramanujan Journal* 45 (2018), 227–251, Proposition 5.4，印刷页 242、PDF 页 16，证明从印刷页 243/PDF 页 17 开始；DOI：<https://doi.org/10.1007/s11139-016-9839-4>。来源清单保留了出版 PDF SHA256 `fcd7cd1f7afcec97f6c73a2cbc540f7a56f0425987fa261c9f0d4925c2b31ebc`，勘误 PDF SHA256 `bcd8b9868b6b2b4e28e332e54ef56967c35df2670ba7dd7e8e4b61410ce74d5d`；作者勘误明确改的是 Theorem 3.5 的两处排印错误，既有材料核对不到 Prop. 5.4 被改动的声明。

该输入在候选证明中把两个无界区域压到 `m<1480k`，再用 `(log 89693)^3>1480>1466` 进入 Dusart 区间，随后把剩余情况化为 `m<89693` 的有限精确计算。材料明确说有限 Python 计算不是 Lean kernel 的穷尽证明。

### 固定 mathlib 搜索结果

固定 commit 的源码命中：

- `Mathlib/NumberTheory/Bertrand.lean:196–240` 的
  `Nat.exists_prime_lt_and_le_two_mul_eventually` 和
  `Nat.exists_prime_lt_and_le_two_mul`（别名 `bertrand`）只给
  `n < p ≤ 2*n`，`n,p : ℕ`。
- `Mathlib/NumberTheory/Chebyshev.lean:802–852` 的
  `Chebyshev.eventually_primeCounting_le`、`pi_ge`、`pi_ge'`、`pi_le_log4_mul_div` 给的是素数计数粗界；源码没有把它们组织成给定实数起点的短区间存在性。
- `Mathlib/NumberTheory/PrimeCounting.lean` 只有 `π`/`π'` 定义及计数基本性质。

源码中没有 Dusart、Prop. 5.4、`89693` 或该 `1/(log x)^3` 区间定理。Bertrand 不可替换：相对区间宽度为 1，而目标宽度为 `1/(log x)^3`，且目标保留实数端点和精确阈值。

核对的固定源码文件哈希如下：

```text
Mathlib/NumberTheory/Bertrand.lean       0cffcd48b6053957b3b1c5503a1bddbbff037267f5438305728137b989c70f71
Mathlib/NumberTheory/Chebyshev.lean      aef754a31071c53ac5edd3772eaad7d46cc977f5e4e3e8bc5847db6cd9d0c192
Mathlib/NumberTheory/PrimeCounting.lean  1e16d828297cfe981488e8cd4c4db7598adb96ed35a313f41f45baaf724c27f7
```

### 公开 Lean 检索和适配性

命中但不能直接复用的第一方/公开项目：

1. OpenAI `PrimeGaps186`：<https://github.com/openai/PrimeGaps186>，公开 README 说明其是 Apache-2.0 项目，网页 commit 页观察到短 SHA `61340d0`。它形式化的是 `liminf` 型素数间隔上界，README 明确列出依赖 Deligne/Fouvry–Kowalski–Michel 等尚未在 Lean 中证明的输入公理，toolchain 还不是固定的 v4.33.1（搜索结果显示 Lean 4.34.0-rc2）。没有目标的实数 `x`、阈值 `89693`、`log` 窄区间接口，不能作为 B677 输入。
2. OpenAI `LongGapsBetweenPrimes`：<https://github.com/openai/LongGapsBetweenPrimes>，README 标注 Apache-2.0、Lean 4.33.0；它给的是长素数间隔下界，网页最新 master 短 SHA `03a1190`，方向与存在窄区间素数相反，不能复用。

因此没有记录“下载路径 + 可适配 commit”作为可接受候选；上面两项只可作为形式化风格参考。网页只暴露了短 SHA，未把它们宣称为固定可锁定依赖。

### 最小消费者契约

若研究层要先让下游算术代码显式依赖该输入，契约至少应保留原始域和端点：

```lean
-- 条件研究接口；声明本身不是接受的证明
theorem dusart_prime_interval
    {x : ℝ} (hx : (89693 : ℝ) ≤ x) :
    ∃ p : ℕ, Nat.Prime p ∧
      x < (p : ℝ) ∧
      (p : ℝ) ≤ x * (1 + 1 / (Real.log x) ^ 3)
```

接受状态还需要一个真实证明或明确可审计的外部 formalization，包含 `Real.log` 正性、自然数到实数 cast、严格/非严格端点及 `Nat.Prime` 的桥接。仅引用 DOI、复制论文句子或添加未解释 `axiom` 都不能填缺口。

## 2. B686：MRSTT 采样/同步高度界

### 纸面输入和现有使用点

`prime-synchronization-theorem.md` 第 1–2 节给出路线结论：固定 `0<δ<1/2`，存在 `Kδ`，使自然数解

```text
k≥2, n≥0, m≥n+k, P_k(m)=4P_k(n), k≥Kδ
```

满足 `log m > (log(2k))^(3/2−δ)`。它只限制高长度的高度，不能覆盖固定 `k` 或全部 B686。

外部输入是 Matomäki–Radziwiłł–Shao–Tao–Teräväinen, “Singmaster's conjecture in the interior of Pascal's triangle”, *QJM* 73(3) (2022), 1137–1177, Proposition 1.13(ii)，DOI <https://doi.org/10.1093/qmath/haac006>；arXiv 预印本 <https://arxiv.org/abs/2106.03335> 把同一命题编号为 Prop. 1.12。出版物版本优先。论文命题的要点是：`P≥2`，`I⊂[P,2P]`，`j∈ℕ`，实数 `M,N` 受 `O(exp((log P)^(3/2−ε)))` 的高度限制，`W` 为平滑 `ℤ²` 周期函数；素数和与相应 `dt/log t` 积分的误差为

```text
O_{ε,A}( ||W||_{C^3} * P / (log P)^A ),
```

其中出版版本定义 `||W||_{C^3}` 为 0 至 3 阶导数上确界之和。路线特化为 `P=2k`、`I=[2k,4k]`、`N=n`、`M=m`、`j=1`，取固定的 `W` 和 `A=2`；积分保留两个相位的相关性，不是独立均匀分布假设。

`main/source-audit.md` 第 3–9 行明确记录：该定理依赖指数和、Vaughan 分解等深分析，没有 Lean 实现；当前 Lean 只检查原解的采样偏差下界，未检查 MRSTT 输入或完整高度结论。

### 固定 mathlib 和公开 Lean 搜索结果

固定 mathlib 的分析库有复数积分、可微性和区间积分，但没有 MRSTT 的素数指数和、Vaughan 分解、`P/log(P)^A` 采样误差、二维周期测试函数或 `O` 常数的定量接口。本次针对性公开检索没有找到 MRSTT Prop. 1.13(ii) 的 Lean formalization；也没有找到能够在固定 pin 下直接替换它的项目。MRSTT arXiv 页面显示 CC BY 4.0 许可（可按署名分享/改编论文文本），这不等于存在可复制的 Lean 代码许可；出版论文本身也不是本仓库的代码依赖。

### 最小消费者契约

若主线程需要先接条件消费者，接口必须把论文中的隐含常数和域具体化，而不能只写一句“均匀分布”：

```lean
-- 示意契约，尚非本仓库接受定理
structure MRSTTInput where
  eps : ℝ
  heps : 0 < eps
  heps2 : eps < 1
  A : ℕ
  P : ℝ
  hP : 2 ≤ P
  I : Set ℝ
  hI : I ⊆ Set.Icc P (2 * P)
  M N : ℝ
  hheight : |M| ≤ C eps * Real.exp ((Real.log P) ^ (3 / 2 - eps)) ∧
            |N| ≤ C eps * Real.exp ((Real.log P) ^ (3 / 2 - eps))
  W : ℝ × ℝ → ℂ
  hperiodic_smooth : ...
  herror : ‖primeSum I W N M - integralApprox I W N M‖ ≤
    C' eps A * ‖W‖C3 * P / (Real.log P) ^ A
```

正式接口还需决定：区间端点是否含端、素数和是 `Finset` 还是可测函数积分、`j=1` 的精确相位次序、`C_{ε,A}` 的存在量词和独立于 `P,I,M,N,W` 的范围、复值范数及 `‖W‖C3` 的四项定义。当前 `OriginalDiscrepancy.lean` 的下界不能反向生成此误差上界。没有一份经证明的 `herror`，下游高度推导只能标为条件结果。

## 3. B686：quarter-Runge 割线表示和严格误差下降

### 纸面主张和缺口边界

`quarter-runge-bound.md` 第 1 节及 `quarter-review.md` 的 Exact claim 给出：`k=4s≥4`，`m>n` 且 `P_k(m)=4P_k(n)` 时

```text
n < 2^s * k^(s+1),
 n+k < 2^(s+1) * k^(s+1).
```

纸面链的关键对象是

```text
B(z)=∏_{i=1}^{2s}(z-(2i-1)^2),
I_j=[b_(2j-1), b_(2j)],
f=sqrt(B),
g=f-q,
J_(j,p)(z)=∫_(I_j) sqrt(|B(t)|)/(z-t)^p dt.
```

需要在成对割线补集上构造 `f`，固定无穷处分支 `f(z)~z^s`，证明上下边界跳跃、端点弧消失、外圆项消失，从 Cauchy 公式得到交错表示；再由 `t=u²` 和 `R(u+4)` 严格比较证明 `0<J_1<J_2<...`，从而 `ε(z)>0`、`ε'(z)<0`，最后把 `H=A(Y)-2A(X)` 识别成严格负的整数。

`quarter-review.md` 判定纸面数学链可接受，但明确不是 Lean 内核验收；`quarter-runge-bound.md` 第 183–185 行也明确该证明未 Lean 化。本轮未找到同一多项式/成对割线/严格交错和的第一方 Lean 先例。

### 固定 mathlib 的可复用零件（以及确切缺失）

1. `Mathlib/Analysis/Complex/CauchyIntegral.lean`：有矩形 Cauchy–Goursat 和圆周 Cauchy 公式，例如
   `Complex.integral_boundary_rect_eq_zero_of_differentiable_on_off_countable`、
   `Complex.circleIntegral_sub_inv_smul_of_differentiable_on_off_countable`、
   `Complex.circleIntegral_one_div_sub_center_pow_smul_of_differentiable_on_off_countable`。
   源码 SHA256：`7a2022a8a02dbef3b5466edd2ba9e4123a898f1e0b0dc5dc320104832405f14b`。
   这些 API 处理矩形/圆，不给沿多个有限 slit 的挖孔区域、孔洞方向、跳跃密度和端点极限。
2. `Mathlib/Analysis/Complex/BranchLogRoot.lean:37–92`：
   `exists_continuousOn_eqOn_exp_comp`、`exists_continuousOn_pow_eq` 在开、单连通、避开零点的域上给连续对数/根分支。成对割线补集不是该 API 直接提供的开单连通域，且它只给连续性与平方关系，不给本路线所需的无穷处归一化、两侧 trace 或 Cauchy 跳跃表示。源码 SHA256：`33b5ad25f083d07882e17b1a40e639649420aa4255e152863fa37ddb3dd367af`。
3. `Mathlib/Analysis/Complex/SqrtDeriv.lean:29–67`：
   `Complex.hasDerivAt_sqrt`、`Complex.differentiableOn_sqrt`、`Complex.continuousOn_sqrt` 在标准 `Complex.slitPlane` 上给主平方根导数/连续性。它不是任意多项式 `B` 的成对割线分支，不能直接证明本例的粘合和跳跃符号。源码 SHA256：`6ef61f17a2638443fa845d941e0eb2e769341c2f267da4634fc8f5b5ac877b58`。
4. `Mathlib/MeasureTheory/Integral/IntervalIntegral/Basic.lean:1363–1403,1432–1437`：有
   `integral_lt_integral_of_continuousOn_of_le_of_exists_lt`、
   `integral_pos`、`integral_nonneg`、`integral_mono_on`；可用于在分支/跳跃公式已经建立后形式化 `J_j` 的可积性和严格比较。源码 SHA256：`93908eb0c771ba8edcb47537dfe1a40e98a1545be9d427c1eb9823d44decdcd5`。

因此实际最小缺口不是“再导入一个 Cauchy 定理”，而是以下四层新 formalization：

- 成对切割域、无穷处归一化的 `f`，以及 `f^2=B`、右半轴正性；
- 每条割线的上/下侧 trace 和含端点平方根密度的 jump 公式；
- 挖孔 Cauchy 极限（外圆、端点小圆弧、核微分和可积支配）；
- 由区间积分接口完成 `R(u+4)` 严格比较、交错正性、`H∈ℤ` 与高度阈值。

固定 mathlib 的区间积分 API 可以承接最后一层的分析不等式，但不能替代前三层。

### 公开 Lean 检索和适配性

`LOGIC-10/CrouzeixConjecture`（<https://github.com/LOGIC-10/CrouzeixConjecture>）命中了一般 Cauchy/复分析 formalization，但仓库 README 的 toolchain/mathlib pin 是 Lean v4.28 时代的不同 commit；本次没有找到成对割线平方根、跳跃公式或本题严格交错积分。它不能在固定 v4.33.1 下作为直接依赖，最多作为 API 设计参考。公开搜索“polynomial part square root consecutive integers coefficients”和“square root polynomial Laurent coefficients equally spaced”没有返回可直接采用的一手 Lean 定理。该有限搜索不支持全网优先性或不存在性断言。

### 最小消费者契约

若先把纸面路线接入条件消费者，建议把以下结果作为独立、待证明的接口，而不是把 `ε>0`/`ε'<0` 拆成无来源公理：

```lean
structure QuarterCutData (s : ℕ) where
  k : ℕ
  hk : k = 4 * s
  B : ℂ → ℂ
  f : ℂ → ℂ
  q : ℂ → ℂ
  domain : Set ℂ
  hsq : ∀ z ∈ domain, f z ^ 2 = B z
  hasBranch : ...                 -- 成对割线补集上的解析分支
  asymptotic : Tendsto (fun z => f z / z ^ s) atTop (𝓝 1)
  jump_cauchy : ∀ z, z ∈ rightHalfAxis →
    q z - f z = (1 / Real.pi) * alternatingCutIntegral B z
  strict_error : ∀ z, z ∈ rightHalfAxis →
    0 < q z - f z ∧ deriv (fun x : ℝ => q x - Real.sqrt (B x)) z < 0
```

真正下游使用时还要提供 `L*q(U^2) ∈ ℤ[U]`、端点积分的 `IntervalIntegrable` 和 `H` 的整数桥接。上述字段只是条件消费者边界；字段的 proof 欺骗性地用 `...` 省略的地方正是主要工作量，不能合入接受库。

## 结论和给主线程的交接

1. B677 的 Dusart Prop. 5.4 是实际、精确且不可由固定 mathlib 的 Bertrand/Chebyshev 粗界替换的外部阻塞；PrimeGaps186 和 LongGapsBetweenPrimes 是公开 Apache-2.0 参考项目，但命题、假设、pin 都不兼容。
2. B686 MRSTT Prop. 1.13(ii) 是路线中真实的深分析阻塞；既有 Lean 的原解偏差下界不包含它，未找到可复用 formalization。条件消费者必须显式暴露区间、素数和、周期函数、`C^3` 范数和高度范围。
3. B686 quarter 的 paper proof 可以作为纸面路线，但固定 mathlib 只提供通用 Cauchy/主根/区间积分零件；成对割线的分支、jump、端点极限及严格交错和仍是主要 formalization 缺口。
4. 三项都不应以未解释 `axiom` 进入已接受 `Math/`。主线程可以把上面三种契约放在研究层的条件模块，直到每个契约都有证明、精确外部 formalization，或在交付说明中明确保留为未完成阻塞。
