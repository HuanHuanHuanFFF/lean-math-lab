# B686／B677／B699 外部数学成果回收与证明义务审计

一次性检查：2026-09-08（UTC）。服务仓库：`HuanHuanHuanFFF/lean-math-lab`。本任务没有修改、构建、切换或写入该仓库，也没有向任何远端提交或联系作者。本次外部审计的源码与实验均位于独立研究目录。编译仅向该研究目录输出；已有工具链与固定依赖缓存只读使用。

## 结论先行

**没有找到已经核验、能从任意原题输入闭合三题之一的完整 bridge。找到了值得回收的通用构造、精确归约和失败反例。**

本次新增的高价值数学连接是 B699 的**大素因子部分转移**：假如没有原题要求的公共素数，则 `C(n,i)` 中全部 `p≥i` 的完整素数幂部分必须整除 `C(j,i)`。这个精确转移及其素数幂乘积定义已在独立目录通过 Lean 与传递公理审计。结合准确保留12例外的 EEES1978 定理，还可推出反例必须满足 `C(n,i)<C(j,i)²`，并排除整个 `2j≤3i` 区域；后两项仅为独立纸面复核，EEES 的分析／历史计算没有在本次完全重证，也尚无 Lean 接入。

B686 的**每个偶数长度 k≥4 的 Runge 尾部构造**对应真实形式化缺口：外部源码构造平方根多项式部分、清分母、证明余项非零，再组装整数矛盾。核心数学链已独立检查；原版 Lean 4.29.1 依赖环境未能完成，不能记作本次 Lean 验收。它留下依赖长度的有限余段，也不等于本库两条更强显式高度界。相关源文件已存在于本库待审计资料，本次完成更深的公开源码闭包回收，不主张首次发现。

B677 已把外部 divisor-run 想法重新写成独立、通过 Lean 与公理审计的**固定 `(n,k)`、覆盖全部 `m` 的有限证书接口**。它省去任意的 `m` 搜索截断，尚不控制无界 `n,k`。原程序正命中只保证单向整除，须补相等检查。

B699 另可回收**候选素数集合、Lucas 未覆盖集合、prime-gap 必要条件**与修复后的 Prime Power Bridge；没有找到“所有合法三元组必满足小互素余因子条件”的证明。现有 pair 判据要求 `p>i`，而原题允许 `p=i`；`(16,2,6)` 的公因子只有素数2，不能把现有充分条件强迫到全部输入。

本文的“首次回收”仅指本次接续检索；不主张这些数学思想由本项目首次发现。

## 1. 真实基线与量词

本次远端只读 `ls-remote` 得到 main：`08a8ac6872e8abfd4a2c480496da350a97ecdc13`。活动形式化工作区当时处于同一提交基线，另有未跟踪研究批次；不能把进行中的文件自动记为验收成果。

已读取 `AGENTS.md`、`docs/STRUCTURE.md`、仓库 Lean research skill 及 open-problem workflow、三题入口与相关 runs 的 frontier、完整报告、验收记录、两份正式 Lean 模块及 B686 路线源码。历史报告保留各自来源时间；以源码和验收交叉消除旧 frontier 的滞后。

| 题目 | 锁定目标 | 已有 Lean 事实 | 只有纸面／计算的部分 | 全题真实缺口 |
|---|---|---|---|---|
| B686 four | `k≥2,n∈ℕ,m≥n+k,P_k(m)=4P_k(n)` 的存在或非存在 | 全长 `k²<64d`；反射和不是素数幂；固定完整余因子 `B` 给 `k≤10B,S,m<200B³`；`k≥802` 的固定测试函数采样误差下界；若干完整固定长度与条件族 | MRSTT 的分析应用及渐近 assembly；全偶及4整除长度的显式高度界；部分全p距离／双素数幂和归约 | `k,d,B` 和高于分析门槛的高度仍无界；缺足够低高度且在原解处不全消失的辅助多项式族，或另一统一结束机制 |
| B677 | `∀m n k:ℕ,k>0,m≥n+k → M(m,k)≠M(n,k)` | 任意素数幂 gap/prefix 整除；后区间含素数即排除；精确 interval 定义桥 | `d≤8k` 或 `n≤369k` 的排除依赖分析论文与有限计算；`m<89693` 无碰撞搜索不是 Lean 证书 | 综合这些非 Lean 输入后，仍有 `n>369k,d>8k,m≥89693` 的无界区域 |
| B699 | `∀1≤i<j≤⌊n/2⌋,∃p` 素数且 `p≥i,p|gcd(C(n,i),C(n,j))` | `prime_dvd_choose_of_mod_lt`；`cofactor_remainder_obstruction`；`cofactor_prime_pair` 及原题结论包装 | 普通／结构族有限搜索；额外结构充分条件 | 未证明任意合法 triple 落入判据；无小互素余因子输入的补集无界；`p=i` 边界必须保留 |

`d=m−n` 仅用于 B686/B677。后文 B677 的 divisor 候选写作 `a=m+1`，避免与距离混淆。

重要对照：B686 反射和批次的旧文字仍讨论250000距离界，但另一已合并批次的完整独立消费者已证明64界。本报告采用64，不把补旧250000链列成新缺口。全部“Lean已验”的基线标记指仓库现存可追溯验收；本任务没有在原工作树重跑构建。

## 2. 本次实际回收了什么

要求检查的七个公开项目均已克隆完整提交历史（blob 按需下载），并读取相关数学源码，而非只读 README：

- `vibemathing/problem-um-ep-686-erd-s-problem-686-e5b0a588@60c6740ec8df05ed7e8693298949d9f382f46bf9`：只有题面 admission 和 harness；candidate/result 记录为空，唯一计划是 source fidelity。题面还是一般 N，不是 exact four 的已证成果，故快速停止数学投入。
- `Kuberwastaken/c5-k4@5c6aae7e9550838a582178eb9320a658314396cc`：回收 B677 divisor-run 算法及其证书方向问题，详见第4节。
- `techno-optimist/erdos-frontier-atlas@0394e3d3b249439ffabec7d96a3311aa441651b8`：回收 B699 exact.py 的数学归约、边界例、source-hash receipt；已真实重跑其验证器，未重跑90百万行完整 campaign。
- `conglu1997/erdos_699_rust@7d030640beeb6bd64b4703fb2e252576a8ab56bb`：读取完整 scanner 与原日志；有算法价值，历史日志与当前源码／参数无法严格绑定，不能当 Lean 证书。
- `rjwalters/lean-genius@f9c62750e76180f15c7bd6c5759be320d7feffdc`：已定向检查三题实际源与 claim，详细边界见附录。
- `google-deepmind/formal-conjectures@c7f31d5fd3d2ca3d69979f2d213eb9b58fe956ae`、`conjectures-io/conjectures-tasks@d9a67b509c5a8b220ba262c1c7ce26f61f52763a`：用于锁定量词、声明与任务 polarity。原题声明带 `sorry` 的 scaffold 不作为证明依赖。

主动追加并深入检查了 `williamjblair/lean-proofs` 的公开历史，固定 `aff1d30...` 并追踪后续 `ef1e54ba31563cec6b5169bfc70543a32ac81ef4`；还找到 `qrdlgit/erdos677`、迁移后的 `vela-science/erdos-frontier`、B699 失败论文的公开 PDF 与论坛残留，以及一个宣称形式化 Singmaster 的定义包装项目。这里只保留与数学判断相关的源码身份；不创建项目活跃度地图或后续 watchlist。

## 3. B686：最值得回收的证明工程

### 3.1 任意偶数长度的完整尾部构造

来源：Will Blair，MIT，`williamjblair/lean-proofs@aff1d30b3b1c6bd705810fa4d588b03940fb31df`。

直接交接入口：

```lean
-- ErdosProblems/Erdos686EvenTailSupply.lean
-- namespace Erdos686.Erdos686Variant
theorem no_even_tail_solution_universal
    {r n d : ℕ} (hr : 2 ≤ r)
    (hd : max (2 * r)
      (universalEvenTailCoefficientCertificate r hr).threshold ≤ d) :
    blockProduct (2 * r) (n + d) ≠ 4 * blockProduct (2 * r) n
```

最小数学接口：对任意首一 `S∈ℚ[X]`、`deg S=2r`，构造首一 `Q`、`deg Q=r` 且 `deg(Q²−S)<r`。对目标中心多项式，单根 `X=1` 证明余项不为零；清分母得到 `T²=C²S+D`。源码用有限系数绝对值和定义阈值，最后通过

`(T(w)−2T(v))(T(w)+2T(v))=D(w)−4D(v)`

的整数间距完成矛盾。完整独立数学复核见附录 B686。

**义务对齐：**原题 + `k=2r,r≥2` → 本库已有中心化／两尺度接口 → 外部构造自动提供多项式和非零余项，仅尾部条件 `d≥M_r` → 全部 `n` 的偶数尾部排除 → 仍有 `2r≤d<M_r`、无界 `r`，以及全部奇数尾部。

这能省掉本库 `formalization-feasibility/README.md` 列明的一大段通用平方根构造和终结器工作。**不等价于**已经形式化本库显式 `n<16·2^(4k)·k^(k/2+1)` 或 `k=4s` 的 `n<2^s·k^(s+1)`；若主任务仍要这两条准确界，必须另补系数／阈值比较或原割线论证。

源码使用 `Classical.choose`／`noncomputable` 提供有限证书，不能把它描述成已经实现高效计算所有 `M_r` 的算法。

### 3.2 真正从原方程产生的 owner 系统

外部源码入口 `Erdos686CanonicalOwnerMatrix.lean: exists_canonicalOwnerSystem`：声明对 `k≥4,d≥k` 的原解，构造 distinguished column、下上余因子、成对互素矩阵格，满足完整行列乘积、差值整除以及全局残余 `G|(k−1)!`。本次已审查 statement 和构造路线，但 provider 的完整原版 Lean 闭包未成功复编，作为待移植审计候选，不能冒称已验收。

**义务对齐：**原题 → 完整产品相等 → 外部仅需 `k≥4` 和分离 → 存在真实且保留全部素数的 owner 系统 → 本库仍须证明该系统产生低高度、足够丰富且不同时为零的辅助多项式族。该结果可以替代“假设已有 canonical 矩阵”的入口，不能替代非零性和高度桥。

若接入，优先保留 `CanonicalOwnerCleaning` 对素数2／除以4的专门处理，不把大素数版本误说成全部素数版本。

### 3.3 更强距离界与不宜优先追加的结果

外部 `no_four_solution_of_quadratic_strip` 声明从 `k≥16,d≥k,18d≤k²` 排除 exact 产品等式，故若该闭包复验通过可使用 `k²<18d`。它在 statement 上比本库64界强，但本次原版 Lean 复现未完成；已有本库复用记录也知道该候选。不能把18计入当前已接受界。

**义务对齐：**原题且 `k≥16` → 已有LCM压缩 → 外部精确窗口／阶乘估计，尚须完成源证明复验 → 可排除 `k²/64<d≤k²/18` → 更大的 `d` 与 `k` 仍无界。若没有能与18界相接的上界，其接入优先级低于3.1。

未将 `d<10^1000` 的固定奇数 Farey 证书、更多固定偶数行或大规模 genus-2 点表列为主要进展。这些可以成为以后明确有限 reduction 的消费者；当前没有因此得到无限尾部闭合。

### 3.4 分析层检索结论

本库用的是 MRSTT 2022 QJM 论文 **Proposition1.13(ii)** 的二维平滑素数采样估计，不是 Singmaster 主定理。一般 PNT、`π(k)<k/8`、素数线性上界和只形式化 binomial equality 的项目均不能替代这个指定分析输入。

本次未找到经复核的 MRSTT Proposition1.13(ii) Lean 实现。`AEjonanonymous/Singmasters-Conjecture@4284d2f...` 的文件只有定义阶段，没有证明阶段之间蕴含；其末端命题还误将表示次数界变成统一坐标上界，明确不可用。精确失败见附录。

## 4. B677：消掉固定输入后的无界 m

设 `V=M(n,k)>0`，定义 `Run(V,m,k):=∀a∈(m,m+k],a|V`。外部算法的准确数学强度是：

```text
Run(V,m,k) ↔ M(m,k)|V
M(m,k)=V ↔ Run(V,m,k) ∧ V|M(m,k).
```

有碰撞时 `m+k≤V`，并且 `a=m+1` 必在 `V.divisors` 中。故对 `k>0` 有精确等价：

```text
(∃m, n+k≤m ∧ M(m,k)=V)
↔ ∃a∈divisors(V), n+k<a ∧ M(a−1,k)=V.
```

本次独立新写 `B677Audit.collision_iff_divisor_candidate` 和消费者 `exclude_all_m_of_divisor_checks`，已在 Lean4.33.1／mathlib固定revision下重编并逐项断言标准传递公理。这是对回收思想的独立形式化审计，**不是 C5-K4 已有 Lean 成果**，也未写入主库。

**义务对齐：**任意合法碰撞 → 已有 intervalLcm 与素数幂整除 → 非零 `V`、`k>0` → 完整有限候选与所有-m消费者 → 尚需统一证书控制所有 `n,k`。已有 gap/prefix 结论可给每个候选增加排除条件；后区间 prime theorem 可处理含新素数者；这些不会自动排除所有约数串。

实际复跑 C5-K4 的既有脚本：全部 `n=0..40,k=3..24` 共902对均无约数串，覆盖每对的全部 `m`；日志无 timeout/skip。此小角落已被本库 `n≤369k` 的纸面结果覆盖，没有扩大数学 frontier。脚本把正约数串直接叫 `COUNTEREXAMPLE` 的分支缺少反向整除检查；其默认超时输出也不能单凭最终一句话当完整范围证书。

许可：C5-K4 本次未找到明确 LICENSE，GitHub license 为 null。建议采用数学思想、独立写代码，并署名 Kuber Mehta／给定源码提交；不要直接当宽松许可代码拷入。

额外 qrdlgit 源码给固定 `(d,k)` 的 finiteness 和 `p>k` 赋值同步，但本库已有全素数幂 gap 界；其一般 Sylvester–Schur 带 `sorry`，不能从 downstream 大素数定理中把它隐藏。

## 5. B699：可用结构与失败完整证明

### 5.0 最高价值新增连接：大素因子部分的无条件转移接口

设

\[
V_i(n)=\prod_{\substack{p\text{ prime}\\p\ge i}}p^{v_p(\binom ni)}.
\]

这里取**完整赋值**，不是只取不同素数的乘积；门槛为 `p≥i`，保留原题边界。对任意合法 triple，有精确的反例必要条件

\[
\neg\operatorname{Common}(n,i,j)\quad\Longrightarrow\quad
V_i(n)\mid\binom ji.\tag{T}
\]

证明很短：组合恒等式

\[
\binom ni\binom{n-i}{j-i}=\binom nj\binom ji
\]

给左侧被 `V_i(n)` 整除。无公共素数假设给 `Coprime(V_i(n),C(n,j))`，消去右侧第一因子即可。它适用于所有合法输入的反例分支，无须预设 small cofactor、近素数或特殊 family；也没有偷偷改成 `p>i`。

**本次已经独立 Lean 验证 (T)**。交付 `bridge-lean/DivisorTransfer.lean` 的真实声明如下；只 import 三个Mathlib模块，不import原题或目标仓库模块：

```lean
-- namespace B699BridgeAudit
def primePart (threshold a : ℕ) : ℕ :=
  (a.primeFactors.filter (fun p ↦ threshold ≤ p)).prod
    (fun p ↦ p ^ a.factorization p)

theorem actual_prime_part_transfer {n i j : ℕ}
    (hij : i ≤ j) (hjn : j ≤ n)
    (h : ¬ ∃ p, p.Prime ∧ i ≤ p ∧
      p ∣ n.choose i ∧ p ∣ n.choose j) :
    primePart i (n.choose i) ∣ j.choose i
```

连同 `divisor_transfer`、`prime_part_dvd`、`prime_part_coprime_of_no_common` 共4项，Lean4.33.1整文件退出0，传递公理逐项仅标准三项。源hash为 `0299face333237445eddd2c11acbf16c554d225028de7b509c8cfe603fc9996e`，成功记录位于 `bridge-lean/verification/20260908T111858984907Z/`。`p|gcd` 与同时整除两个choose等价；原题的 `1≤i<j≤n/2` 比这里需要的 `i≤j≤n` 更强，故没有额外输入门槛。这是本次独立重新形式化，未写入主库，不是未恢复的Price原稿自带Lean证明。

原始文献：E. F. Ecklund Jr.、R. B. Eggleton、P. Erdős、J. L. Selfridge，*On the prime factorization of binomial coefficients*, J. Austral. Math. Soc. (Series A) 26 (1978), 257–269，[DOI](https://doi.org/10.1017/S1446788700011770)。已读取原13页论文并目视核对打印页258：对 `n≥2i,i≥1`，将 `C(n,i)=u·v` 按 `p<i`／`p≥i` 分开，除以下12对外有 `u<v`，即 `C(n,i)<V_i(n)²`：

```text
(8,3), (9,4), (10,5), (12,5), (21,7), (21,8),
(30,7), (33,13), (33,14), (36,13), (36,17), (56,13).
```

二手摘要省略例外的版本不能直接采用。原文使用素数估计、有限计算和历史表；本次没有重新证明这些底层输入。下述初等推导已由两个数学审计者独立检查，其证据级别是 **paper proof independently checked（显式依赖准确引用的 EEES 定理）**，不是 EEES 全证明重放，也不是 Lean 验收。

结合 (T)，非例外反例必须满足

\[
\binom ni < V_i(n)^2\le\binom ji^2.\tag{N}
\]

例外也不会产生反例：依次取顶端素数 `7,7,7,11,19,19,29,31,31,31,31,53`，均满足 `n−i<p≤n`；5.1的顶端素数引理一次覆盖该 `(n,i)` 的全部合法 `j`。因此 (N) 可作为**所有反例**的必要条件。独立整数检查已覆盖12对下全部41个合法 triple；这41个检查仅核对明确有限例外，不承担无限证明。

还有一个完整无限子区域可立即推出。若 `2j≤3i`，令 `s=⌊i/2⌋,t=⌈i/2⌉,r=j−i`。则
`0≤r≤s≤t≤⌊j/2⌋`，由二项式单调性、对称性与 Vandermonde：

\[
\binom ni\ge\binom{2j}i\ge\binom js\binom jt
\ge\binom jr^2=\binom ji^2,
\]

与 (N) 矛盾。故有经过纸面核查的精确结果

\[
1\le i<j,\quad 2j\le n,\quad 2j\le3i
\Longrightarrow\operatorname{Common}(n,i,j).
\]

**义务对齐：**原题假设 → 本库 choose/Kummer接口，反证设无公共素数 → 外部大素因子分拆与 EEES（须保留12例外） → 任意反例满足 `V_i(n)|C(j,i)`、`C(n,i)<C(j,i)²` 和 `3i<2j` → 仍须解决满足这些条件的无界区域，并补 EEES 的 Lean 依赖。这提供统一反例结构，不强迫现有互素余因子 pair 条件成立。

来源归属：检索入口是 `aumara-xyz/golden-horizon-principle@0d0006108637f0f79985ffaacb8efb6c5955cba7/research/erdos-lab/NOTES-699.md` 对 Price 的转述。Price 原稿及 van Doorn／Rocca 的后续强界尚未恢复到可审计原文，不能替作者验证其全部 claim。本次恢复的是 EEES 原始定理，并独立重建 (T)、(N) 和 Vandermonde 消费者；不声称这些想法由我们首创。转述中的固定i有限性及 `i≥1000` 无反例结论保持未核验，不计为进展。

其余建议交接声明如下；第一项已由上面的实际声明实现，后两项仍是数学规格：

```text
largePrimePart_dvd_choose_of_no_common:
  1≤i ∧ i≤j ∧ j≤n ∧ ¬Common(n,i,j) → V_i(n) | C(j,i)

no_common_choose_lt_square:
  1≤i ∧ i<j ∧ 2j≤n ∧ ¬Common(n,i,j) → C(n,i) < C(j,i)^2
  依赖：前项 + EEES精确12例外定理 + 顶端素数处理例外。

common_of_twice_j_le_three_i:
  1≤i ∧ i<j ∧ 2j≤n ∧ 2j≤3i → Common(n,i,j)
  依赖：前项 + Vandermonde + choose对称性、两个参数的单调性。
```

有限 primeFactors 完整 prime-power product、整除和 Coprime 消因子已在审计模块中实现。主会话可从这份独立证明接入；下一步不要把 EEES 写成自定义 axiom 后声称全链通过。若暂未形式化，应把它作为显式参数并归类为条件结果。

### 5.1 候选素数与 prime-gap 归约

来源：Kevin Russell／Frontier Atlas；Cong Lu campaign；历史 Will Blair `lean/Erdos699/Proved/Basic.lean`；Kummer/Lucas 的 mathlib 原始实现。

对 `1≤i≤n`：

```text
p>i, p素数:
p|C(n,i) ↔ (∃t<i, p|(n−t)) ↔ n mod p < i.

i素数:
i|C(n,i) ↔ (n / i) mod i = 0.
```

因此 `S(n,i)={p≥i:p素数且p|C(n,i)}` 可由长度i的下行积素因子及 `p=i` 单独分支精确求出，无需分解整个二项式系数。只写 `p>i` 不是原题 candidate 集合。

若存在素数 `P∈(n−i,n]`，则对所有 `i<j≤n/2`，`P` 同时整除两个 binomial。因此任意反例必满足 `i≤n−P(n)`，其中 `P(n)` 是**不超过n的最大素数**；n本身是素数时 gap=0，不能误用严格 prevprime。

对固定素数p，Lucas给

`U_p(n)={j:∀r,digit_p(j,r)≤digit_p(n,r)}`，

原题某个固定 `(n,i)` 的剩余义务恰为

`(i,n/2] ∩ ⋂_{p∈S(n,i)}U_p(n)=∅`。

**义务对齐：**合法 triple → 候选素数／digit 等价与 prime-gap 已证筛选 → 所有实际候选p的未覆盖集 → 精确残余 intersection → 尚须对任意n,i证明它为空，或证明原输入满足某个足够强的结构条件。这是一条忠实的归约，没有凭空消除困难。

### 5.2 对现有 cofactor 路线的直接连接

最短可移植 Prime Power Bridge 为：

```text
p素数，e≥1，p≥i，n=u·p^e+a，a<i<j≤n，j<p^e
⇒ p|C(n,i) 且 p|C(n,j).
```

证明：`n mod p^e=a`，且两个下标小于 `p^e`，分别两次调用本库 `prime_dvd_choose_of_mod_lt`。没有必要复刻失败稿错误的“第一位必进位”论证。`j<p^e` 是真实额外条件，不能删。

若无公共p，本库同一引理的逆否命题保证相关 `j mod p^e≤a`。两份分解还满足 `Coprime u v` 与 `uv(a+b)<n` 时，现有 `cofactor_remainder_obstruction` 完成矛盾。**外部没有提供强迫这些小互素余因子假设的普遍定理。**

反例边界：`C(16,2)=120,C(16,6)=8008,gcd=8`。唯一公共素数2恰好等于i。故强迫全部输入满足当前 `p>i,q>i` 的 pair 判据本身不可能；需要保留 `p=i` 分支，或改成更广泛的 disjunction／结构。

### 5.3 失败稿：可复现的具体断点

公开残留包括六页 March Revision4 PDF、Sriniketh 用户页的后来完整 claim、Bloom/StijnC 的讨论及二级历史记录。原仓库当前不可读；没有恢复到可完整复编的原 Lean／固定manifest。**不同版本不混成同一份证明。**

- 六页稿 §2.5 的错误等价：`p>i,p|C(j,i)` 不推出 `j−i<p`。`i=2,j=10,p=3` 就有 `3|45`；区间里的是p的倍数9，不是p本身。
- Band Escape 的合法边界例 `(28,3,14)`：7整除 `C(28,3)=3276`，却不整除 `C(28,14)=40116600`。原稿的低端逃逸推理失败；真实gcd=36，原题仍有素数3见证。
- 同例 q=13 重现后续 Case B 讨论中的错误机制：q可同时整除 `C(28,3)` 与 `C(14,3)`，却不整除所需 `C(28,14)`，不能推出共同素因子。
- Prime Power Bridge 可按5.2独立修复；Carry Lemma／FO 只在逐条保留正确条件后使用。narrow-band FO 的必要性依赖上述错误，不能保留为通用刻画。
- Smooth Pair／S-unit 需要处理所有差值 `1≤d<i`，不是把任意两个近邻 smooth 数都当连续数。即使每个固定i有有效有限界，也不等于证明所有i都通过；检到 `i≤23` 的有限表不能覆盖无界i。

### 5.4 计算证据的真实级别

Atlas 的 `verify.py` 本次真实通过：独立大整数oracle对照 `n=4..300`、pruning小范围、Kummer对照、13 shards无缝覆盖、计数与10个生产范围采样点。四个源码哈希与 RESULT 匹配。我们另独立筛出 `<10^8` 的全部素数，最大相邻gap220、最大向下素数距离219，核实该范围 `MAXGAP_PAD=700` 的前置条件安全。

**没有重跑** `[10^7,10^8)` 的90百万行 campaign。该 receipt 与重放检查是 `computational evidence only`，不是所有n的证明；验证器最终输出 `verified:true` 不意味着它重证了每一行。

原脚本对 padding 之外的任意范围不自动安全：首次 prime 尚未出现时跳过行，须保留范围证明或改为 fail-closed。已公开 issue132 的裸 `wait` 也属于执行契约问题；不据此断言当前 receipt 实际漏跑。Cong日志还有源码绑定与非profile恢复问题，详细审计见附录。

## 6. 接入优先级与验收方式

以下排序是“对完整证明的预期贡献／接入成本”的定性判断，不伪造百分比。实际 Lean 复现状态另见最终验收节。

| 顺序 | 回收对象 | 为什么值得 | 主任务应接什么 | 接完仍缺什么 |
|---|---|---|---|---|
| 1 | B699 大素因子部分转移 (T) | 已有独立Lean证明；给任意反例的统一整除结构，保留 `p=i`，可与 Kummer 残余一起使用 | 移植已核的4项定理与完整赋值乘积；在主库写 exact gcd消费者 | 从整除结构推出矛盾；EEES 是下一阶段独立重依赖 |
| 2 | B677 divisor候选等价与所有-m证书接口 | 低成本消掉固定 `(n,k)` 后的任意m截断；本次独立Lean证据完整 | 移植审计七个定理，再在主库实际依赖锥复验；证书区分相等与单向整除 | 仍无界的n,k及统一饱和／排除机制 |
| 3 | B686 通用平方根部分／偶数尾部证书供给 | 正对通用构造、非零余项缺口，避免重做长链；数学已核、原版Lean未完成 | 在可用隔离环境先复验供给和终结器，再以 exact 原产品 statement 适配；MIT署名 | 显式高度常数与所有长度的有限余段；奇数长度 |
| 4 | B699 EEES大小不等式与 `2j≤3i` 消费者 | 真实无限区域排除、统一必要不等式；形式化EEES成本较高 | 先完成条件消费者，另立精确12例外EEES依赖与可重放计算证书 | `3i<2j` 区域仍无界，不是完整桥 |
| 5 | B699 exact candidate＋Lucas残余＋`p=i` 分支 | 修正覆盖边界，避免遗漏原题合法素数 | 素数集合等价、top-prime theorem、digit obstruction；对比本库 Kummer接口 | 强迫 residue intersection 为空／足够强结构 |
| 6 | B686 canonical owner 系统源码候选 | 从原解给已有条件矩阵接口的完整provider | 首先复验清理／矩阵／二进特殊列及完整因子恒等式 | 足够低高度且不同时消失的Q族 |
| 7 | B699 修复 Prime Power Bridge | 很短，可调用现有lemma，但额外覆盖增量有限 | 两次mod-carry＋准确边界例 | 如何保证任意原输入有该结构 |
| 8 | B686 18距离界源码候选 | statement更强，但本次未复验成功且无配套上界 | 只有后续路线确实消费18时复验、移植 | 更大距离、长度无界 |

复用通用规则：固定本文源码commit，保留作者与文件名；只复制许可明确的源码；适配到本库4.33.1后从干净输出重编实际依赖锥，写准确 `#print axioms`/guard，检查 statement 与原题量词，单独保留 `p=i`、`k=0/1/2`、相等端点与自然数减法的边界。不能直接 import 原题 `sorry` scaffold，再用它填回原题。

## 7. 最终验收与附录

| 对象 | 本次准确验收归类 | 证据与限制 |
|---|---|---|
| B699 大素因子部分转移 (T) 与3个依赖定理 | **Lean-verified and statement-audited**，指准确归约 | Lean4.33.1，mathlib `0df444a360eaa60ab8c11dca51a86af692955474`；整文件重编退出0，4项传递公理仅标准三项；无项目olean／原题import、无sorry、无自定义axiom、无native_decide。仍不是完整B699 |
| B677 独立7个约数归约定理 | **Lean-verified and statement-audited**，指这7个局部定理 | Lean4.33.1，mathlib `0df444a360eaa60ab8c11dca51a86af692955474`；精确复制基线模块到独立目录后重编，7项传递公理均仅 `propext,Classical.choice,Quot.sound`；无目标scaffold依赖。未重编mathlib本身，也没有第二个独立kernel |
| B677 所有-m证书消费者 | **Lean-verified but partial/conditional**（相对于原题） | `hcheck` 须确实覆盖 `V.divisors` 所有候选；没有为无界n,k生成统一证书。此分类与上一行的局部 statement 审计并不冲突 |
| B699 EEES后果／Vandermonde消费者；修复Prime Power Bridge；B686通用偶数尾部核心 | **paper proof independently checked** | B699大小结论显式依赖EEES1978；本次未重放其底层历史计算，也未将大小结论／Vandermonde消费者编成Lean。B686原版Lean闭包复现失败，数学审核和编译审核分开 |
| Atlas receipt、独立素数gap核对、C5-K4重放、Cong日志 | **computational evidence only** | C5重放完成；Atlas验证器与边界复核完成，90百万行主campaign未重跑；Cong原日志不能严格绑定当前源码参数 |
| Canonical owner／18界等外部未复编provider；Price与van Doorn/Rocca未恢复原稿的额外claim | **interesting conjectural lead**（本次待验收候选） | 不表示所有源码命题都是数学猜想，而表示本次尚未达到独立完整证明验收；不把作者PASS／clean-axioms记录继承为本次证明 |
| B699失败全证明的Band Escape、错误FO刻画与smooth-pair全局跳步；Singmaster坐标界包装 | **invalid / superseded / retracted** | 已给精确反例／量词断点；无对应原题反例。历史版本归属不能混淆 |

B686 的复现障碍有完整日志：隔离安装并实际运行了 **Lean4.29.1**（commit `f72c35b3f637c8c6571d353742168ab66cc22c00`），以进程局部procfs兼容shim解决本环境启动问题；随后依赖下载/pack索引报 `No space left on device`。虽然恢复了准确mathlib源提交 `5e932f97dd25535344f80f9dd8da3aab83df0fe6`，依赖及oleans未就绪，**未产生目标声明的成功编译或 `#print axioms` 输出**。为恢复研究产物保存空间，只清理了本任务新建且不可用的临时工具链。qrdlgit 的原版4.28安装也因磁盘不足失败。此处是环境失败，不据此判定数学代码错误，也不把静态无placeholder升级为Lean通过。

静态闭包检查记录了 import、文件hash、placeholder与危险构造；重要B686目标未见项目自定义axiom、sorry/admit、unsafe或native_decide，也未import FormalConjectures题面。其实际传递公理仍未取得。相反，`FinalResidual686Hypothesis` 即使不是自定义axiom，作为定理的显式参数也依然是未解数学义务。

`lean-genius` 本次只做源码／历史审计，没有对低增量模块另装4.31重编。B677含Thue–Siegel自定义axiom，B699含Sylvester–Schur自定义axiom；历史spike分别记录API构建失败。B686结构文件历史PASS也没有exact four结果。源码metadata与旧日志均不是本次验收。

Formal Conjectures与tasks中的 `sorry` 是挑战脚手架；tasks还把目标本身列为禁止依赖。`variants.four` 的正式任务是存在性方向，负答案应交付精确否定；B699严格 `p>i` 的反例不能提交为弱 `p≥i` 目标的反例。完整任务ID、hash、polarity与历史审核保存在后附记录。

本报告所列候选进入主库前的最终验收仍由主 Work 会话执行。本次可交接的是精确声明、已核数学链、独立Lean样本、计算证据和失败原因；没有修改主库，也没有把报告中的纸面结果并入主库 acceptance。

## 8. 稳定来源与署名入口

下列链接固定到实际审核的提交或论文；日期仅属于本次检索上下文，不设后续同步责任。

- **Will Blair／MIT**：[EvenTailSupply](https://github.com/williamjblair/lean-proofs/blob/aff1d30b3b1c6bd705810fa4d588b03940fb31df/ErdosProblems/Erdos686EvenTailSupply.lean)、[CanonicalOwnerMatrix](https://github.com/williamjblair/lean-proofs/blob/aff1d30b3b1c6bd705810fa4d588b03940fb31df/ErdosProblems/Erdos686CanonicalOwnerMatrix.lean)、[CenterComponentLogStrip](https://github.com/williamjblair/lean-proofs/blob/aff1d30b3b1c6bd705810fa4d588b03940fb31df/ErdosProblems/Erdos686CenterComponentLogStrip.lean)、[B699 Basic](https://github.com/williamjblair/lean-proofs/blob/aff1d30b3b1c6bd705810fa4d588b03940fb31df/lean/Erdos699/Proved/Basic.lean)。若移植源码，应保留MIT版权许可；改名、API适配和消费者属于本库修改，不重新署作原创定理。
- **Kuber Mehta／无明确代码许可**：[B677 exact-search 原文件](https://github.com/Kuberwastaken/c5-k4/blob/5c6aae7e9550838a582178eb9320a658314396cc/results/expansion/live-search-2026-08-15/verify_erdos677_lcm_interval.py)。本次 `DivisorRunAudit.lean` 是独立写出的审计证明，引用算法思想，未复制外部Lean。来源引入提交 `9ade6e11f0266e7d6c0a95e977b4103dac31f66e`。
- **Kevin Russell／MIT**：[Atlas B699目录](https://github.com/techno-optimist/erdos-frontier-atlas/tree/0394e3d3b249439ffabec7d96a3311aa441651b8/certificates/erdos-699)。复用候选筛选、Lucas搜索或执行契约时应署名，并保留具体范围与receipt来源。
- **Cong Lu／Cargo声明 MIT OR Apache-2.0**：[Rust核心](https://github.com/conglu1997/erdos_699_rust/blob/7d030640beeb6bd64b4703fb2e252576a8ab56bb/scanner-core/src/lib.rs)、[CLI](https://github.com/conglu1997/erdos_699_rust/blob/7d030640beeb6bd64b4703fb2e252576a8ab56bb/scanner-cli/src/main.rs)。本次无独立LICENSE文件，直接代码移植需补齐声明对应的许可文本与版权归属；数学算法可独立重写并引用。
- **Ecklund、Eggleton、Erdős、Selfridge**：[1978原始PDF](https://www.cambridge.org/core/services/aop-cambridge-core/content/view/2971F0D118511902190BDED49B361FF6/S1446788700011770a.pdf/on_the_prime_factorization_of_binomial_coefficients.pdf)。本文只重述定理与自行重建的后果，未把论文全文收入交付包。
- **Matomäki、Radziwiłł、Shao、Tao、Teräväinen**：[Singmaster's conjecture in the interior of Pascal's triangle，预印本](https://arxiv.org/abs/2106.03335)，[QJM DOI](https://doi.org/10.1093/qmath/haac006)。引用应指向正式版Proposition1.13(ii)，不要只引用Singmaster主结论。
- **qrdlgit／README归功Aristotle／无明确代码许可**：[固定源码](https://github.com/qrdlgit/erdos677/tree/d64211ecdc02693a11a7bf0468be10f06b6ec48d)。本次回收数学证明思路，未把其原版Lean记为复现成功。
- **失败稿与归属链**：[六页Revision4残留PDF](https://files.catbox.moe/uw4ah2.pdf)、[Sriniketh论坛用户页](https://www.erdosproblems.com/forum/user/Sriniketh)、[原不可访问仓库地址](https://github.com/srinikethpsarathy-oss/Erdos-verification-suite)。PDF无作者署名，不能仅凭文件自身断言作者／版本等同于后来16页稿；详情见B699附录。
- **Robb Walters**：[lean-genius固定三题源码目录](https://github.com/rjwalters/lean-genius/tree/f9c62750e76180f15c7bd6c5759be320d7feffdc/proofs/Proofs)。当前无明确仓库许可证，旧PASS、定义与局部例子不构成三题通用证明。
- **题面合同**：[Formal Conjectures固定源码](https://github.com/google-deepmind/formal-conjectures/tree/c7f31d5fd3d2ca3d69979f2d213eb9b58fe956ae/FormalConjectures/ErdosProblems)（Apache2.0）；[conjectures-tasks固定池](https://github.com/conjectures-io/conjectures-tasks/tree/d9a67b509c5a8b220ba262c1c7ce26f61f52763a)。任务实际源pin为 `8432eac998110a563e03df65a28c117e97c8c142`；附录记录其类型hash，不把新main的类型悄悄代入旧任务。

交付证据包只保存本次审计说明、独立证明／检查代码、固定源码hash与日志。未包含外部仓库镜像、完整工具链或需要日后更新的项目地图。部分复现脚本保留本次绝对缓存路径；在另一环境使用前只调整其输入缓存位置，仍须校验记录的toolchain和manifest pins，所有输出指向独立目录。


## 附录索引与证据阅读方式

以下保留各专项审计的完整推导与来源细节；主文第7节是最终验收口径。附录中的本次绝对路径用于定位实验，持久证据包按相同相对目录收录源码、hash、日志。论文全文与未许可的二手文档只提供来源与hash，没有打包。


## 附录 A｜只读基线与验收交叉核对

审计是只读的，目标仓库为 `/workspace/scratch/75a17f226d3b/lean-math-lab`。未在目标仓库运行 build/test，未编辑文件，未做 Git 写操作；只读取规则、任务入口、报告、验收记录和源码，并对选定源码做 SHA-256。`git rev-parse HEAD` 为 `08a8ac6872e8abfd4a2c480496da350a97ecdc13`，与指定 baseline 一致。工作树没有发现 tracked 改动，但有大量 `??`；其中三个任务的 `runs/20260908-formalization-92c221/` 均是未跟踪活动快照，不能按已接受结果计入基线。

“Lean 已闭合”以下仅指某个精确声明的源码、其验收/guard 记录和（若有）消费者闭合；不表示对应 Erdős 原题已闭合。三份任务入口都明确写着“当前各批均没有完整解答”：`research/tasks/B677-Lcm/README.md`、`research/tasks/B699-Binomial/README.md`、`research/tasks/B686-Four/README.md`。

#### 任务级结论

| 任务 | 基线中实际 Lean 已闭合的范围 | 纸面/计算范围 | 完整目标的明确缺口 |
|---|---|---|---|
| B677 | 区间 LCM 结构引理 | `d=m-n≤8k` 或 `n≤369k` 的排除（纸面 + Dusart 外部输入 + 精确 Python）；`m<89693` 的 6,368,203 个窗口无碰撞 | 尚无编译定理把纸面两分支、有限证书和 Dusart 接成完整消费者；剩余 `n>369k,d>8k,m≥89693` 无界 |
| B699 | 双素数幂余因子**充分条件**及 Kummer 桥 | 有限结构搜索无原题反例；非空示例 | 没有证明每个合法 `(n,i,j)` 都有该余因子结构；补集无界 |
| B686 | LCM 距离界；反射和的素数幂子族、固定余因子界、带条件两位置界、采样误差下界 | 两倍素数幂、MRSTT 高度、Runge 偶数界等分别是纸面/外部输入；短间隙也仍缺外部定理形式化 | 没有全 `k,n,m` 的无解证明，也没有合法见证；`k,d` 无界 |

#### B677：已接受边界

题面是 `M(n,k)=lcm(n+1,…,n+k)`，`0<k`、`n+k≤m` 时要求两段 LCM 不相等。正式模块 [Math/B677/IntervalLcm.lean] 的 SHA-256 是 `1a1b686278747d6d5e1e731ecf826bb66c31c7906e4146d36647ee611daaaf44`；已闭合声明为：

- `B677.interval_lcm_ne_zero`；
- `B677.prime_pow_occurs_in_lcm`；
- `B677.equal_interval_lcm_dvd_gap`；
- `B677.equal_interval_lcm_dvd_prefix`；
- `B677.interval_lcm_eq_range`；
- `B677.interval_lcm_ne_of_later_prime`。

`Tests/B677IntervalLcm.lean` SHA-256 为 `cfad6066b5306b165f13c425623083e4b9859f1c3ac3470426f665fc29073b51`，其 guard 的传递公理是标准 `[propext, Classical.choice, Quot.sound]`；`Examples/IntervalLcm.lean` 是用法/具体值示例。这些都是支撑引理，不是 B677 全题定理。

最近完整记录 `runs/20260908-interval-lcm-f0a6539/history/problem-entry.md`、`review/mathematical-review.md`、`review/code-audit.md` 和 `explorer/delivery-audit.json` 一致地把结果标为“部分纸面/计算 + Lean 结构引理”。精确排除并集是 `d≤8k ∨ n≤369k`；独立有限扫描另给 `m<89693` 无碰撞（`bounded-start-result.json` 的 `total`/覆盖计数为 6,368,203 个 later-start/window 查询，`witness=null`）。这不是 Lean 穷尽证书；Dusart Proposition 5.4 也未形式化。

活动未跟踪批次 `runs/20260908-formalization-92c221/ledger.md` 把 F677-01 初等边界写成可复核成功，但仍把 F677-02（有限全覆盖的 Lean 证书）、F677-03（Dusart）和 F677-04（并集消费者）列为缺口。因此活动证据只能标为 in-progress/reproduction，不能提升基线。

#### B699：已接受边界

正式模块 [Math/B699/CofactorCriterion.lean] SHA-256 `341180b428b6927e72bd7de10c0ca03b3f8d4eb4f778c1aa4a3aeea4f33b9d79`，测试 `Tests/B699CofactorCriterion.lean` SHA-256 `f282409e41d5b7ddadbb006f5aa7e717840fc50869014b7cdcd7ae61951f633b`，示例 `Examples/CofactorCriterion.lean` SHA-256 `de4dc0921be6c90756ebea76d38a55b1ff57f59cead06f703b1271dda3a7ec29`。`lean/accepted-result.json` 与 `lean/promotion.json` 记录历史源码 `CofactorCore.lean` 已提升到当前 Math 模块。

核心闭合声明包括 `B699.cofactor_core`、`B699.cofactor_remainder_obstruction`、`B699.prime_dvd_choose_of_mod_lt`、`B699.cofactor_prime_pair` 和 `B699.common_large_prime_of_coprime_cofactors`。最终结论只在下列条件下成立：`i<j≤n/2`；`a,b<i`；素数 `p,q` 满足 `i<p,i<q`；`1≤e,1≤f`；`n=u*p^e+a=v*q^f+b`；`Nat.Coprime u v`；`u*v*(a+b)<n`。结论是存在 `r` 为素数、`i≤r` 且 `r∣gcd(choose n i, choose n j)`。`a,b`、素数和指数不要求彼此不同，也不要求指数是精确赋值。

`runs/20260908-binomial-cofactors-f0a6539/history/problem-entry.md`、`review/mathematical-review.md`、`lean/HANDOFF.md` 均强调这是条件定理，不是“所有合法输入都有这种分解”。有限搜索（包括 `n=86,i=8` 的示例）只是非空性和查错证据。活动快照 `runs/20260908-formalization-92c221/verification/baseline/20260908T095843Z/evidence.json` 的 success 只是在未跟踪批次中重编当前三根/五个 guard；F699-01 补集仍开放，故不能当作新接受结果。

#### B686：两个已接受批次及当前接受根

##### LCM 距离批次 `20260908-lcm-distance-7cab35e`

`uniform/verification.json` 报告 `success:true`，且 `full_uniform_distance_bound_lean_verified:true`、`stronger_constant_64_lean_verified:true`；`support/acceptance/acceptance.json` 的结果是 `pass_with_scoped_gaps`。已接受的完整链包括：

- `uniform/InitialLcm.lean`、`uniform/FactorialTail.lean`、`main/MatchingLcm.lean`、`uniform/LcmDistance.lean`、`uniform/UniformDistance.lean`、`uniform/Consumer.lean`；并复用旧 `BigPrimeSupport.lean`、`SmallPrime.lean`、`TargetBridge.lean`、`SizeBounds.lean`、`Boundary.lean`。
- 精确消费者 `B686UniformRound9.uniform_distance_bound_sixty_four`：原题方程及 `k≥2,n+k≤m` 推出 `k^2<64*(m-n)`。
- `B686UniformRound9.uniform_distance_bound` / `uniform_distance_bound_products` 及 `Consumer.original_statement`：推出原要求的较弱 `k^2<250000*(m-n)`。

验收记录明确 `original_B686_nonexistence_proved:false`、`external_constant_18_locally_verified:false`、未用独立 kernel checker，且只独立重编消费者而不重新闭合全部依赖。故这条链是强必要距离界，不是无解证明。

##### 反射和批次 `20260908-reflected-sum-9bad0b9`

最新完整记录 `report.md`、`frontier.md`、`environment/final-integration/delivery.json` 的最终四根是：

- `a/ReflectedPrimePower.lean`：高位置/赋值/反射接触接口；
- `main/SumPrimePowerExclusion.lean`：`B686Reflected.not_four_prime_power_reflected_sum`，排除所有 `S=m+n+k+1=p^a`（包括 `a=0`）；
- `main/SumCofactorBounds.lean`：`B686Reflected.original_sum_quotient_bounds`，对任意素数 `p` 定义 `B=S/p^{v_p(S)}`，给出 `k≤10B`、`S<200B^3`、`m<200B^3`；固定 B 只界住原题变量，不界住当 `p∤S` 时自由选择的辅助 p；
- `b/SumTwoPositionGap.lean`：`B686Round9.SumTwoPositionGap.reflected_factor_contact_bounds`，在显式 `A*Di*Dj=S`、`Di^2∣reflectedError_i`、`Dj^2∣reflectedError_j` 等接触/分组条件下给 `k≤60A^2`，偶数 A 时给 `k≤15A^2`。

另有 `main/OriginalDiscrepancy.lean` 的 `original_sampling_discrepancy_lower`：`k≥802` 的原题解强迫固定测试函数的采样误差下界；相反的 MRSTT 分析上界和渐近组装仍是外部/纸面。反射批次明确写着：两倍素数幂是纸面结论，完整原题仍开放。

#### B686 近期外部路线：不能算“已接受”

用户特别关心的 generic even-tail coefficient supply 与 canonical owner system 均不在当前接受根内：

1. `runs/20260908-lcm-distance-7cab35e/independent/external/Erdos686EvenTailSupply.lean`（SHA-256 `7784331341c8c8eff14a2c27d7a344e8a130ce6c4f569178bd42a74c1aa54da5`）确实定义了 `universalEvenTailCertificateSupply` 和 `no_even_tail_solution_universal`，但文件头固定为上游 Lean/mathlib v4.29.1，并导入仓库没有纳入正式验收根的 `ErdosProblems.Erdos686EvenTailCoefficientCertificate`。同目录 `external/README.md` 明确称其为“待审计材料，不能替代本仓源码与命题验收”；`external-decision-review.md` 明确“本分支未编译外部 Lean 依赖”。所以它是外部候选/未接受模块。
2. `ErdosProblems-Erdos686CanonicalOwnerMatrix.lean`（SHA-256 `e593e58228305b284e18456cee2522303afdd7a51e5bc7c3b5933178d120bd2e`）来自外部 commit `aff1d30b3b1c6bd705810fa4d588b03940fb31df`，头注同样是 v4.29.1。活动快照中的 `lean/canonical/vendor/...` 仍为 `??`；`notes/canonical/matrix-declaration-closure.md` 只记录小的 `CanonicalOwnerDensity.SystemInput` 接口编译成功，provider 和 adapter 未通过固定 v4.33.1/mathlib pin 的完整闭包。`adoption-followup.md` 也明确 paper acceptance 没有接受 matrix、完整 jet、proper-support 或正整数解点非公共零条件。
3. 纸面 `centered-runge-bound.md`、`quarter-runge-bound.md` 的偶数高度界可以作为 paper evidence；它们与外部 matrix 合并后的 `limsup 1/4,1/8` 只是条件后处理，不是已接受的有限 k 精确定理或 B686 全题结论。

#### 活动 `20260908-formalization-92c221` 快照判定

必须把该目录当作“进行中 snapshot”，即便其中 JSON 记录 success。它的 README/ledger 自己也声明基线仍是本 HEAD、全题仍未解决；整个目录目前是未跟踪写集。

- B677 活动账本：F677-00/F677-01 可视为复用/初等边界尝试；F677-02 有限 Lean 证书、F677-03 Dusart 桥和 F677-04 并集消费者仍缺。
- B699 活动账本只有复现条件判据；F699-01 补集仍是开放数学范围。
- B686 活动账本把 F686-02 至 F686-08 的若干尝试写成“complete”，但不能升级接受。可见最新失败证据包括：
  - `verification/centered/20260908T101546570584Z/verification.json` 为 `success:false`，`lean/quarter/IntegerPairs.lean` exit 1；对应 log 有未解 PowerSeries 系数目标、`sq_nonneg` 类型不匹配和 `linarith/omega` 失败。
  - `verification/quarter/20260908T104800496406Z/verification.json` 为 `success:false`，`lean/quarter/SlitBranch.lean` exit 1，含 `DifferentiableAt.comp` 类型错误。
  - 更晚的 `verification/quarter/20260908T104924429587Z/verification.json` 仍为 `success:false`；`HalfPlaneRoots.lean` exit 1，含未解的有限乘积符号恒等式、未知标识符 `differentiableAt_const.mul` 和多余 tactic。
  - 期间某些 centered/quarter 子集曾出现 success，但随后加入的依赖失败，不能视作整批验收。

#### 基线不一致/读法提醒

- B677 `explorer/route-record.md` 第 33 行写成“`L(14,6)=L(16,6)=1627920` 而 `L(15,6)=232560`”。这与当前 `Math/B677/IntervalLcm.lean`、`Tests/B677IntervalLcm.lean` 和示例冲突；源码/测试的正确值是 `L(13,6)=L(15,6)=1627920`、`L(14,6)=232560`。该行应视为路线记录中的下标笔误，不能当反例或数学证据。
- B686 两个迁移批的历史验收 JSON/报告仍使用旧 `research/tasks/B686-Four/round9/...` 路径；当前树对应 `runs/20260908-lcm-distance-7cab35e/...` 和 `runs/20260908-reflected-sum-9bad0b9/...`。各 `migration/README.md`/`manifest.json` 说明旧字节和哈希是历史来源、迁移文件可能只改 import/navigation。引用证据时需同时给迁移映射，不能把旧路径误报成当前源码路径。
- `reflected-sum` 的 `environment/runtime-recovery.md` 保留了较早状态（例如高次素数幂仍未由当时两根形式化）；应以最终 `environment/final-integration/delivery.json` 四根和 `report.md` 为最新接受状态，历史恢复文档不能覆盖它。

#### 基线裁决

截至指定 HEAD，可安全交给后续工作的结论是：三题均未全解；B677 只有结构 Lean + 纸面/计算有限化，B699 只有双余因子条件判据，B686 只有强距离界和反射/余因子等局部或条件 Lean 根。任何 generic even-tail、canonical owner matrix、完整两倍素数幂/短间隙外部定理、MRSTT 高度链，均应标为 paper/external/in-progress，不能写成“已接受 Lean 完成”。


## 附录 B｜B686核心数学与statement审核

检查日：2026-09-08 UTC。作者／源码：Will Blair，MIT，`williamjblair/lean-proofs`，提交 `aff1d30b3b1c6bd705810fa4d588b03940fb31df`。后续历史检到 `ef1e54b`，通过 `git show`／`git diff` 检查；没有把后续 claim 自动继承为 Lean 验收。

本文是数学及 statement 审核；实际编译状态以 `b686-verify/findings.md` 为准。

#### 1. 通用偶数尾部：可节省已有路线的形式化工作

原文 `ErdosProblems/Erdos686EvenTailSupply.lean`，命名空间 `Erdos686.Erdos686Variant`：

```lean
theorem no_even_tail_solution_universal
    {r n d : ℕ} (hr : 2 ≤ r)
    (hd : max (2 * r)
      (universalEvenTailCoefficientCertificate r hr).threshold ≤ d) :
    blockProduct (2 * r) (n + d) ≠ 4 * blockProduct (2 * r) n
```

`blockProduct` 使用 `Icc 1 k`，与本库 `P_k(t)` 一致；`m=n+d`、`d≥k` 恢复不重叠条件。这里覆盖每个偶数 `k≥4` 的全部 `n` 与足够大 `d`；`k=2` 必须另用已有定理。阈值依赖 `r`，没有把 `∀r ∃M_r` 偷换成 `∃M ∀r`。

已独立核读三个核心文件：`EvenTailSupply`、`EvenTailCoefficientCertificate`、`EvenTailRunge` 的构造和终结器，数学链如下。

1. 对任意有理首一 `S`，次数 `2r`，从 `Q=X^r` 开始，按 `j=r−1,...,0` 依次加 `−coeff(Q²−S,r+j)/2 * X^j`。交叉项的次数正好是 `r+j`，平方修正次数 `2j<r+j`，因此不会破坏已取消的高次系数。得到首一次数 `r` 的 `Q` 与 `deg(Q²−S)<r`。
2. 对中心多项式 `S_r(X)=∏_{i=1}^{2r}(X+2i−2r−1)`，`X=1` 是单根。任何非零常数倍平方不可能拥有单根；因此清分母后 `D=T²−C²S_r` 非零且次数 `q<r`。
3. 设 `A` 为 `T` 的非首项系数绝对值和，`E` 为 `D` 全部系数绝对值和，`F` 为 `D` 非首项系数绝对值和。源码使用
   `M=max(2r,2|A|+1,7|F|+1,10|E|+1)`。
   `universalEvenTailCoefficientCertificate` 通过 `Classical.choose` 和有理系数清分母构造这个有限数据。因此它是按有限系数定义的阈值；不能声称这是可直接 `#eval` 的程序或低成本闭式阈值。
4. 对原解中心 `v=2n+2r+1`、`w=v+2d`，`S_r(w)=4S_r(v)`。已证明的窗口保证 `d≤v`，并给 `w^q<3v^q`。若 `d≥M`，系数范数控制给 `T(v),T(w)>0`，以及
   `|D(w)−4D(v)|<T(w)+2T(v)` 和 `|D(w)|<4|D(v)|`。
5. 整数因式分解
   `(T(w)−2T(v))(T(w)+2T(v))=D(w)−4D(v)`
   迫使第一因子为零，于是 `D(w)=4D(v)`，与后一严格不等式矛盾。非零余项通过单根证明，未暗中假设它。

**义务连接：**原题假设 → 本库中心化／两尺度思路 → 外部要求仅 `r≥2`、`d≥M_r` → 全偶数尾部排除 → 仍须处理 `2r≤d<M_r`，并跨所有 `r` 统一结束；奇数长度不在此结论内。

对本库 `formalization-feasibility/README.md` 列出的“任意阶有限平方根构造／分母／非零余项／整数终结器”有直接接口价值。它不证明本库更强的显式 `n<16·2^(4k)·k^(k/2+1)`，也不证明 `k=4s` 的割线积分界。不能用外部尾部阈值替换那两条声明后仍宣称原声明已形式化。

#### 2. 从原方程实际构造 canonical owner 系统

外部 `Erdos686CanonicalOwnerMatrix.lean: exists_canonicalOwnerSystem` 声明在 `k≥4,d≥k,P_k(n+d)=4P_k(n)` 下构造 `t∈[1,k]`、矩阵 `C_{ji}`、下／上残余 `a_j,b_i` 与 `G`。本节核对 statement 和构造路线，不代表该大型 provider 已通过本次 Lean 复验。其声明满足：

- `G | (k−1)!`；`∏a_j=∏b_i=G`；
- `n+j=a_j∏_i C_{ji}`；`n+d+i=(if i=t then 4 else 1)b_i∏_j C_{ji}`；
- `C_{ji}|d+i−j`；不同格两两互素；`G∏_{ji}C_{ji}=P_k(n)`。

先把上块一个含完整最大二进赋值的项除以 4，再对各素数选上下最大赋值位置，把公共可保留赋值放入其唯一矩阵格。各素数只进一格，得到格间互素；剩余乘积用阶乘估计控制。二进素数的分离在 `CanonicalOwnerCleaning` 中显式处理，不可省略那个 distinguished column。

这是 `原解→真实结构` 的单向必要条件，价值高于“给定某个矩阵”的条件终结器。**仍缺**从这个系统推出本库所需的低高度、足够多且在正整数原解处不同时消失的辅助多项式。它不会自己提供 small cofactor、非零性或 uniform contradiction。

#### 3. 严格更强的距离约束，优先级次于通用构造

外部 `Erdos686CenterComponentLogStrip.lean: no_four_solution_of_quadratic_strip` 精确要求 `k≥16,d≥k,18d≤k²`，声明推出原乘积不等。若该证明闭包复验成功，可用原解在 `k≥16` 时的 `k²<18d`；本次未完成该原版 Lean 复验。本库已接受的是较短移植的 `k²<64d`，外部18也并非本次首次发现。

核心是最大赋值匹配压缩 `P_k(n)|(k−1)!·LCM(d−k+1,...,d+k−1)`、区间 `m!L|B·LCM(1,...,m)`、`LCM(1,...,m)≤4^m`、精确原方程比例窗口与阶乘尾部下界。该目标依赖锥没有数学上需要 MRSTT 的部分。

义务连接：原题 → 已有64界和匹配LCM → 外部18界 → 排除 `k²/64<d≤k²/18` → `k,d` 仍无界。没有配套上界时，它不是完整结束桥。

#### 4. 已核失败与后续历史边界

- `FinalResidual686Hypothesis` 是公开保留的未解剩余命题；`erdos686_false_of_finalResidual(hres)` 不能算完整证明。其包装等价于奇数大尾部和大长度 smooth 分支，不因声明的公理列表干净而去掉 `hres`。
- 偶数 Runge 阈值与18距离带不重合。原报告以 `k=34,d=65` 的尺度／系数证书展示阈值远大于距离带；这反驳这条拼接方法，不反驳原题。
- `d<10^1000` 的 Farey 证书仍是有限范围。`d=10^1000` 属于未覆盖尾部；不根据规模把它升级为无限定理。
- genus-2 的 `RationalPointsGenus2` 明示 `proved_all=false`，已知点和 Mordell–Weil 基不等于全部有理点穷尽。
- 后续 `ef1e54b` 历史增加高素数 support 投影、osculation 商非零／次数桥、匹配质量和 secant/cycle 约束。但报告仍指出 bounded span、足够高度／非零族、diffuse cycle stability 等缺口。没有找到可取代本库真实全局桥的最终定理；不把23k行新形式化量当成全题推进量。

#### 5. 检索到的另一个错误“形式化”宣称

`AEjonanonymous/Singmasters-Conjecture`，提交 `4284d2fcd31d94c5a5f1d283f560e64aaddcadc0`，`SingmastersConjecture.lean` 只有一系列集合与命题的 `def`，没有证明这些阶段等价或蕴含的 theorem/lemma。末端 `singmasterConjectureBound` 定义的是统一限制所有参数坐标的命题，甚至为假：取任意大 `n`、`k=2`、`t=n(n−1)/2`，满足 `solutionSetSeparated t` 而 `n` 无统一上界。Singmaster 原猜想限制表示次数，并不限制随 `t` 增长的 `n`。

该代码不含 MRSTT Proposition1.13(ii) 的素数加权二维平滑采样估计，不能补本库 prime synchronization 分析层。无需把这份仅有定义的文件编译成绿色来决定其不可用。


## 附录 C｜B677外部算法与独立Lean归约

日期：2026-09-08。负责人：B677 外部研究子任务。现有 lean-math-lab 目录保持只读；没有在其内运行 Lake、编译或任何 Git 写操作。

基线：`HuanHuanHuanFFF/lean-math-lab@08a8ac6872e8abfd4a2c480496da350a97ecdc13`。实际读过 AGENTS、STRUCTURE、lean-research skill、题目入口、前沿、完整纸面报告、独立数学验收及正式 `Math/B677/IntervalLcm.lean`。未因未跟踪 formalization 文件存在而把其结论升格为正式接受结果。

#### 第一结论

恢复了一个可证明的 **固定 `(n,k)` 后排除全部 `m` 的有限证书接口**，并已独立 Lean 检查。它没有消去仍无界的 `n,k`，也没有扩大基线已知的无碰撞区域。

外部 `c5-k4` 的约数串搜索是正确的必要条件搜索；其正命中分支没有检查 LCM 相等，不能直接当作反例。原脚本的零命中有限范围本次真实复跑完成，故本次结论不依赖其不充分的默认超时汇总。

新找到的 `qrdlgit/erdos677` 确有 Aristotle Lean 源码；固定版本复核因磁盘空间不足阻断，不能采用 README 的“全部标准公理”声明替代实际重编。其 Sylvester–Schur 主定理明确含 `sorry`。

#### 锁定原题及已知基线

`n,m,k : ℕ`，`k>0`，`n+k≤m`，`M(n,k)=lcm(n+1,…,n+k)`。目标为 `M(n,k)≠M(m,k)`。平台现行类型保留 `m≥n+k`；某些原文或日志讨论 `m>n+k`，不得互换。

正式模块源码 SHA256：`1a1b686278747d6d5e1e731ecf826bb66c31c7906e4146d36647ee611daaaf44`。

基线已接受的正式结构：

- `equal_interval_lcm_dvd_gap`：所有素数幂合并后，`M(n,k) | lcm(d-k+1,…,d+k-1)`，其中 `d=m-n≥k`。
- `equal_interval_lcm_dvd_prefix`：上述推出 `M(n,k)|lcm(1,…,d+k-1)`。
- `interval_lcm_ne_of_later_prime`：后区间 `(m,m+k]` 含素数即可排除相等。

基线纸面/精确计算与 AI 审阅支持 `d≤8k` 或 `n≤369k` 的无限区域排除，尚不可称全题 Lean 证明。尚余 `n>369k,d>8k,m≥89693` 等无界区域。补读的运行中初等形式化验收只用作导航，未重新接受其状态。

#### C5-K4 来源、回放及代码审计

- 来源：<https://github.com/Kuberwastaken/c5-k4>，完整历史克隆，HEAD `5c6aae7e9550838a582178eb9320a658314396cc`，2115 个 main 可达提交。
- 文件：`results/expansion/live-search-2026-08-15/verify_erdos677_lcm_interval.py`；报告 `erdos-hunt.md` 的 D4 节。
- 文件引入提交：`9ade6e11f0266e7d6c0a95e977b4103dac31f66e`，作者 Kuber Mehta，2026-08-15 07:57:28 UTC。相关报告后来由 `9f6079adc866e20f1affdbc24f3d190f9d5189ea` 修改。
- 许可：GitHub API `license:null`，HEAD 未找到 LICENSE/COPYING/NOTICE 文件。只建议回收数学思想与重新实现证书接口；不把源码当作已获宽松开源许可的可直接合入代码。
- 只读 GitHub API：forks 列表 `[]`，全部状态 issues 列表 `[]`。完整本地历史及分支搜索未发现 B677 Lean 文件；`lean/Equation677ColumnBridge.lean` 研究的是 magma 的 Equation 677→Equation 255，与 Erdős #677 无关。

实际命令：

```text
python3 -B repos/c5-k4/results/expansion/live-search-2026-08-15/verify_erdos677_lcm_interval.py 200000 12
```

输出保存在 `source-evidence/replay-200000-12.log`。退出 0；第一阶段 3.7 秒完成，`k=1..12,n=0..200000` 零反例；第二阶段连同第一阶段 49.3 秒完成，在 52 秒软限前完成全部 `41×22=902` 对 `n=0..40,k=3..24`，无跳过、无超时、无约数串。这里只复核既有范围，没有扩大搜索。

独立静态审计：

1. 第一阶段保留每个 LCM 值的最小起点，足以检测间距至少 `k` 的重复；整型值字典不会把概率指纹当相等。
2. `factor(V)` 是完全试除；`divisors(f,V)` 枚举每个素因子指数的笛卡尔积，恰好得到全部正约数，不要求排序。`d-1` 是每个后区间首项对应的唯一起点。
3. 零约数串 ⇒ 零相等。这一方向无需反向整除。
4. 正约数串只得到 `M(m,k)|V`；脚本直接打印 `COUNTEREXAMPLE(divisor-run)` 的名字过强，必须补验 `M(m,k)=V` 或 `V|M(m,k)`。尚未给出满足原题分离条件的伪命中，故这里是缺失证明义务，不声称已发现原题范围内的程序误报。
5. 超时检测发生在每个 `(n,k)` 开头；`n=NS+1` 后 `break` 只跳出内层循环，不能停止外层 for。`divisors` 也可能返回 `None`，最后仍打印整个范围。因此别的复跑必须显式审计跳过/超时；本次完整日志没有这些情况。

902 对的结论已由基线 `n≤369k` 纸面区域覆盖；数学前沿没有因复跑而扩张。

#### 精确归约与独立 Lean 验收

令 `V=M(n,k)>0`。令 `Run(V,m,k)` 表示后区间每个整数整除 `V`。

| 原题假设 → 现有事实 | 外部/独立构造假设 | 得到的结论 | 仍需完成 |
|---|---|---|---|
| 相等，`k>0` → 每个后区间项整除 `V` | `V≠0` | `m+k≤V`，从而 `m≤V-k` | 这只对固定 `(n,k)` 有界；`V` 本身无统一上界 |
| 相等 → `m+1|V` | 设 `d=m+1`，`d∈divisors(V)`，`n+k<d` | 有限候选集合完整覆盖全部合法 `m` | 每个候选须验相等或用充分的排除条件 |
| 约数串 | 全部 `m+1,…,m+k` 整除 `V` | **等价于** `M(m,k)|V` | 正反例须另验 `V|M(m,k)` |
| 固定 `(n,k)` | 对每个 `d∈divisors(V)` 且 `n+k<d`，均有 `M(d-1,k)≠V` | 对全部合法 `m` 排除碰撞 | 统一控制全部 `n,k` 或用其他定理先界定二者 |
| 固定 `(n,k)` | 对上述每个 `d`，存在一个后区间项不整除 `V` | 同样对全部合法 `m` 排除碰撞 | 此证书比原题非相等更强，可能拒绝本可排除的候选 |

精确等价式：

```text
(∃ m, n+k≤m ∧ M(m,k)=M(n,k))
 ↔ ∃ d∈divisors(M(n,k)), n+k<d ∧ M(d-1,k)=M(n,k).
```

证明首项整除使用 `k>0`；去掉此条件会失效，因为空区间的 LCM 为 1，所有 `m` 都碰撞。自然数减法 `d-1` 由 `n+k<d` 保证无端点问题。`V≠0` 由每个区间成员正得到，空区间同样非零。

新写的独立审计文件：`lean/DivisorRunAudit.lean`。它没有复制 C5-K4 代码，也没有把假设重命名为全题证明。对照例 `M(13,6)=1627920`、`M(14,6)=232560` 说明实际 LCM 窗口可以有真整除约数串；例子是重叠窗口，仅用于测试丢失方向，不能冒称原题反例。

运行：`python3 -B support/verify_audit.py`。成功证据：`verification/20260908T105102259127Z/evidence.json`。

- Lean 4.33.1；mathlib `0df444a360eaa60ab8c11dca51a86af692955474`；所有 manifest 包实际 HEAD 核对，受跟踪源码 clean。
- 只从固定包缓存读取依赖；复制的基线模块和新增审计模块均在全新 scratch olean 根编译，没有使用既有项目 olean。
- 七个导出审计定理的准确传递公理均为 `[propext, Classical.choice, Quot.sound]`，脚本逐个断言；无 `sorryAx`、新 axiom 或 `native_decide`。
- 没有第二个独立 Lean 内核检查。
- 保留第一次失败：单个演示例未展开定义，Lean 无法合成 `Decidable divisorRun`；七个一般定理均已通过。改用已证整除等价式化简该例后全量重新编译通过。
- 普通编译器初次启动报 `failed to locate application`；原因符合既有 procfs 环境不匹配。复制既有 `lean-proc-self.c` 到本任务隔离目录并编译，进程局部 shim 仅重试自身 executable 路径；未修改编译器、权限、依赖 pins 或主仓库工具目录。

#### 其他可追踪来源

`qrdlgit/erdos677@d64211ecdc02693a11a7bf0468be10f06b6ec48d`：唯一提交，2026-03-31；作者 qrdlgit，README 明示 Aristotle 编辑。固定 Lean 4.28.0、mathlib `8f9d9cff6bd728b17a24e163c9402775d9e6a365`。API 同样 `license:null`、forks `[]`、所有状态 issues `[]`；不得假设其代码已获宽松复用许可。`Finiteness.lean` 的实际证明核心是 `(n+1)|d(d+1)…(d+k-1)`，故固定 `d,k` 有限；文件前段长注释有多条已放弃错误推测，不能当作正式证明。`Smoothing.lean` 给出 `p>k` 时两窗口乘积的 p-adic valuation 相同；`Bridge.lean` 限于 `p>k` 的差值见证弱于基线所有素数幂合并的 gap theorem。一般 Sylvester–Schur 使用 `sorry`，其后 `windowLcm_has_large_prime` 也受传递污染。

| 原题 → 现有事实 | qrdlgit 准确输入 | 输出及适用性 | 剩余义务 / 证据 |
|---|---|---|---|
| 令 `d=m-n`，由分离得 `d≥k>0` | `fixed_gap_finite k d hk hd`，LCM 定义为 `Icc(n+1,n+k)` | 固定 d,k 的 n 有限；允许重叠的版本更广，但原题范围已有 gap theorem 支持固定 d,k 有限性 | 仍无界 d,k；纸面独立重建通过，原版 Lean 尚未复编 |
| LCM 相等 | `p.Prime, k<p, k>0, d>0` | 两窗口乘积的 `multiplicity p` 相同；可用作固定 k 平滑比值方程接口 | 需整体小素因子指数、真实区间与相等条件；未产出全题区域排除 |
| LCM 相等、后区间成员 | `no_prime_in_second_window` 要求 `k≤d` | 后区间无素数 | 基线 later-prime 已覆盖；没有新增前沿 |
| LCM 相等及共同 p^a 因子 | `prime_power_divides_difference` 只要求 `d>0`，未要求 `d≥k` | `δ∈[d-(k-1),d+k-1]` 且 `p^a|δ` | 若 d<k，δ 可以为0，不能推出 `p^a≤d+k-1`；在原题 d≥k 才是正差 |
| 想用任意 n≥k 区间含大素因子 | `sylvester_schur` | 声明存在，但证明为 `sorry` | 不接受此 theorem 及其下游为回收证明 |

边界实证：`n=13,d=2,k=6,p=17,a=1` 时两个重叠窗口 LCM 相等，共同项17可给 `δ=0`，而 `17>d+k-1=7`。因此缺少分离时的零差不是技术小节，而是阻止错误大小上界的关键。

原版重编尝试：独立设置 `ELAN_HOME=.../b677/support/elan`，执行已有 elan 二进制 `toolchain install leanprover/lean4:v4.28.0`。官方压缩包下载成功，展开到 `libleanshared.so` 时报 `No space left on device (os error 28)`；当时系统 32GB 已满，未能运行4.28编译器，也未开始下载4.28 mathlib缓存。只清理了本任务的失败临时目录，释放约1.7GB文件，未动主仓库或同伴环境。不把这称作数学失败、成功复编或独立公理审核。原始错误摘要保存在 `verification/qrdlgit-v428-install-failure.txt`。继续复现的确切条件是足够独立磁盘空间及4.28固定包缓存；无需重搜题面。

`vibemathing/problem-um-ep-677-erd-s-problem-677-65469972@8d3874fbe30277abb85b4b8d671daf1a60f42ee9`：完整克隆两提交；研究候选、evidence、result 记录为空，仅有 admission/harness 与 `2+2=4` 的 Lean fixture。不是 B677 证明来源。

Patrick White + Claude 的公开研究页 <https://www.erdosproblemaday.com/day/677-lcm-bridge> 本次通过主页链接成功读取；页面摘要声称固定小 `k` 分类及 prime-routing 的不充分性。链接的两个原始 ChatGPT 交流，一个读取为零行，一个仅返回登录外壳；没有拿到所需完整论证/证书，故不接受为已恢复证明。其 1975 年参考可定位至 Tharmambikai Ponnudurai，*The Diophantine Equation Y(Y+1)(Y+2)(Y+3)=3X(X+1)(X+2)(X+3)*，JLMS s2-10(2),232–240，DOI `10.1112/jlms/s2-10.2.232`；出版社只读元数据可见，完整定理未读，不据摘要采用分类。

网页访问限制：erdosproblems.com/677 及其 forum 通过 web open 和无凭证 urllib 均 403。搜索索引能读到讨论摘要；不把索引当完整证明。Conjectures.io 的当前完整 Lean 类型可读且与基线一致。

#### 当前交接

最有价值的实际回收是：完整候选集与可检查的所有-m消费者，以及外部程序正负证书差异的明确审计。扩大此处小范围搜索不能关闭无界前沿。下一项决策应是能否用结构定理统一控制约数串/饱和条件，或先限制 `n,k`，不是仅把枚举上限加大。

qrdlgit 当前证据等级为“源码核查 + 独立纸面证明，原版 Lean 尚未重现”。完整推导和证书规格见 `proof-notes.md`。本次没有完整 B677 桥接、统一 n,k 上界或新颖性主张。


## 附录 D｜B677完整初等推导与证书规格

本页是独立重建的数学论证。动机来自 Kuber Mehta 的 `c5-k4` 约数串程序；不是外部程序逐字翻译，也不依赖其时间限制或运行结果。

令 `n,m,k∈ℕ`，`k≥1`，`V=M(n,k)`。所有区间都是 `(a,a+k]`。所谓约数串是 **差为 1 的连续整数都为 V 的约数**；文献中的“consecutive divisors”有时仅指排序约数表中的相邻项，不能直接套用。

#### 精确有限化

每个区间元素均为正，所以 `V≥1`。若 `M(m,k)=V`，则最大后区间项 `m+k|V`，故 `m+k≤V`。因此只需 `n+k≤m≤V-k`。更经济地取首项 `d=m+1`，则

`d∈D(V)={positive divisors of V}` 且 `n+k<d`。

于是，对于固定 `n,k`：

\[
\exists m\ge n+k:\ M(m,k)=V
\quad\Longleftrightarrow\quad
\exists d\in D(V),\ d>n+k:\ M(d-1,k)=V.
\]

正向如上，反向令 `m=d-1`；严格下界确保 `m≥n+k`。这是等价，不是启发式，也没有引入仍需枚举到无穷的 `m`。但 `n,k` 仍无界，而 `V=M(n,k)` 随它们变化；不能把逐个实例可判定误读为全题有限。

#### 约数串和相等之间的接口

对于非零 `V`：

\[
\{m+1,\ldots,m+k\}\subseteq D(V)
\Longleftrightarrow M(m,k)\mid V.
\]

这是 LCM 的泛性质。相等还恰好需要 `V|M(m,k)`。所以：

- 没有合法约数串，是排除碰撞的充分条件。
- 找到合法约数串，只得到候选，须再次检查相等。
- 没有相等的合法约数串，与该固定窗口不存在任何合法碰撞等价。

也可把反向整除写成有限“指数达到”条件。若完整分解

\[
V=\prod_{p\in S}p^{e_p},\qquad e_p\ge1,
\]

则在已有约数串条件下，`M(m,k)=V` 当且仅当：对每个 `p∈S`，至少一个后区间项被 `p^{e_p}` 整除。因为 LCM 的 p-adic 指数是各项指数的最大值。这里必须使用各素数的 **完整最大指数**；仅核对素数集合相同不够。该有限最大指数版本在本页为纸面证明；当前 Lean 文件检查的是等价的反向整除接口。

#### 可复用负证书

输入 `n,k` 以及 `V=M(n,k)` 的准确证明。提供有限集合 `D`，并证明 `V.divisors⊆D`；提供列表恰好等于所有约数也可以。对于每个 `d∈D` 且 `d>n+k`，提供以下任意一种检查：

1. 直接证 `M(d-1,k)≠V`。此规格完整，所有可排除实例原则上都可使用。
2. 给出 `j_d∈{0,…,k-1}` 且 `d+j_d∤V`。此规格更便宜但更强，只适用于没有合法约数串的实例。
3. 给出某素数幂 `p^{e_p}|V`，证明所有后区间项都不被它整除。这否定反向整除，同样足够。

检查覆盖必须显式包含所有候选，禁止把超时、内存跳过或未试的分支记作排除。正证书必须含 `k>0,n+k≤m` 和原定义 LCM 相等。

Lean 对应：`collision_iff_divisor_candidate`、`exclude_all_m_of_divisor_checks`、`exclude_all_m_of_missing_divisor`。现有文件直接以 `V.divisors` 为完整集合，未依赖外部因子分解工具的可信性。

#### 与基线三个结果的连接

- `equal_interval_lcm_dvd_gap`：在候选通过约数串测试后，仍可由原题相等假设增加 `V|lcm(m-n-k+1,…,m-n+k-1)` 的过滤。它控制共同最大素数幂在两区间间的差，而本有限化首先限制后起点来自 `V` 的约数。两者互补，但都只是必要条件。
- `equal_interval_lcm_dvd_prefix`：把差值区间放大成前缀会失去约束。它适合解析上界，通常不如原差值区间适合局部候选排除。
- `interval_lcm_ne_of_later_prime`：若后区间有素数 `p>m≥n+k`，则它不可能整除 `V`，因此正好是负证书第 2 种的一个特殊情况；可先用它廉价剪枝。

不能仅凭一个抽象 prime-power 路由图满足差值约束就宣布碰撞：还需两个真实连续区间共同实现，并且每个素数的最大指数完全一致。

#### qrdlgit 固定间距证明的独立重建

固定正整数 `d,k`，假设 `M(n,k)=M(n+d,k)`。首项 `n+1` 整除后区间 LCM，后区间 LCM 又整除其项的乘积。因此

\[
n+1\mid\prod_{i=1}^{k}(n+d+i).
\]

模 `n+1`，每个因子等于 `d+i-1`，故

\[
n+1\mid P(d,k):=\prod_{i=1}^{k}(d+i-1).
\]

`d,k≥1` 保证 `P(d,k)>0`，所以 `n+1≤P(d,k)`，候选 `n` 有限。这甚至允许窗口重叠；不需 Sylvester–Schur 或素数间隙。

这是真实的有限化，但固定的是 `d,k`，不是只有 `k`。对于 B677 原题的 `d≥k`，基线 gap-divisibility 已能给出另一种固定 `d,k` 的有限性。它没有给出 `d` 的统一上界，也没有达到题目文献中固定 `k` 的 Thue–Siegel 有限性。

#### qrdlgit smoothing 的独立重建

令 `p>k` 为素数。任意长度 k 的整数区间最多有一项被 p 整除，因为两不同倍数至少相距 p，而区间跨度只有 k−1。因此该区间乘积的 p-adic 指数等于该区间 LCM 的 p-adic 指数。LCM 相等立即推出两乘积在每个 `p>k` 上指数相等，约分后的乘积比只含不超过 k 的素因子。

外部源码仍使用严格 `p>k`；本页沿用它，不擅自把正式命题改成 `p≥k`。这个结论可接到平滑数比值或固定 k 的丢番图方程路线，但它不等于共同 LCM 相等，更不自动解决这些方程。


## 附录 E｜B699原文、失败残骸、Rust与Lucas审核

All `lean-math-lab` directories were read-only. The adopted baseline is `08a8ac6872e8abfd4a2c480496da350a97ecdc13`; untracked active formalization is not accepted by this audit. The exact target is: for every natural triple `1 ≤ i < j`, `2*j ≤ n`, some prime `p ≥ i` divides both `choose n i` and `choose n j`.

#### Decision and evidence boundary

No complete proof was recovered. The strongest useful recovery is a published size theorem combined with an independently audited universal transfer argument: **every hypothetical counterexample must satisfy**

\[
\binom ni<\binom ji^2,\qquad 2j>3i.
\]

This constrains every legal input, rather than adding a computational family. Its elementary transfer and exact full-prime-power product were subsequently independently Lean-verified in the sibling `bridge-lean/` audit; see the acceptance update below. Its size input is a substantial 1978 published theorem; the original analytic estimates and historical computations were **not** independently reproduced here. It is paper-level progress, not an accepted Lean theorem in the main repository.

The withdrawn 2026 full-proof attempt has explicit false intermediate claims. Several independent local lemmas survive. Cong Lu's scanner has a sound mathematical reduction on its documented range, but its saved campaign cannot be bound to an exact committed source/configuration. Historical Will Blair Lean code supplies general Lucas and prime-interval interfaces; source extraction was completed, but this audit does not claim successful pinned compilation or axiom output.

#### 1. Published backbone and an all-input bridge

##### 1.1 Primary theorem and exact exception set

E. F. Ecklund Jr., R. B. Eggleton, P. Erdős, J. L. Selfridge, **On the prime factorization of binomial coefficients**, *J. Austral. Math. Soc. (Series A)* 26 (1978), 257–269, DOI [10.1017/S1446788700011770](https://doi.org/10.1017/S1446788700011770).

[Publisher PDF](https://www.cambridge.org/core/services/aop-cambridge-core/content/view/2971F0D118511902190BDED49B361FF6/S1446788700011770a.pdf/on_the_prime_factorization_of_binomial_coefficients.pdf), saved as `sources/eees-1978.pdf`. The main theorem is on printed page 258. Copyright Australian Mathematical Society 1978; no open source license asserted.

For `1 ≤ i` and `2*i ≤ n`, uniquely write `A = choose n i = U*V`, putting all prime powers with prime **strictly below** `i` in `U`, and all with prime **at least** `i` in `V`. EEES proves `U < V`, equivalently `A < V²`, except at exactly these twelve `(n,i)`:

`(8,3), (9,4), (10,5), (12,5), (21,7), (21,8), (30,7), (33,13), (33,14), (36,13), (36,17), (56,13)`.

The distinct split using `p>i` has a different theorem and exceptional-set status; do not substitute it. The published proof uses prime estimates, finite regional checks, and smooth-number tables. **Class: published theorem, statement/source checked; original analytic dependencies and computations not fully replayed.** The exception list was independently cross-checked by exact factorization through `n=149`.

##### 1.2 Elementary coprime-divisor transfer

Portable statement, valid independently of B699:

> If `i ≤ j ≤ n`, `D ∣ choose n i`, and `Coprime D (choose n j)`, then `D ∣ choose j i`.

Proof: the master identity is

\[
\binom nj\binom ji=\binom ni\binom{n-i}{j-i}.
\]

Its right side is divisible by `D`; coprimality cancels `choose n j` from the left. No prime-power localization or analytic input is needed.

Assume now that the legal B699 triple has no common prime `p≥i`. Every prime divisor of `V` is at least `i` and divides `choose n i`; consequently none divides `choose n j`. Hence `Coprime V (choose n j)`, so

\[
V\mid\binom ji,\qquad V\le\binom ji.
\]

This argument includes `p=i` exactly. It does not assume `p²>n`, a tame interval, coprime cofactors, or a bound on the number of candidate primes. A convenient first Lean interface can take an arbitrary divisor `D` with the guard `∀ p, p.Prime → p ∣ D → i ≤ p`, and specialize to the large-prime part later.

**Final acceptance update: Lean-verified and statement-audited in the sibling independent `bridge-lean/DivisorTransfer.lean`.** The exact declaration `B699BridgeAudit.actual_prime_part_transfer` includes the complete finite prime-power product with threshold `i≤p`, not only an abstract divisor interface. Lean4.33.1/mathlib `0df444a360eaa60ab8c11dca51a86af692955474` compiled the whole file with exit 0; all four theorem axiom sets are exactly `[propext, Classical.choice, Quot.sound]`. Success evidence: `bridge-lean/verification/20260908T111858984907Z/evidence.json`. EEES and its size/Vandermonde consequences remain paper-level. The general transfer was tested nonvacuously using the largest part of `choose n i` coprime to `choose n j`, without assuming a nonexistent B699 counterexample.

##### 1.3 All twelve exceptions are uniformly harmless

Each exceptional row has an explicit prime in the top interval:

| n | i | p with n-i<p≤n | All legal j |
|---:|---:|---:|---|
| 8 | 3 | 7 | 4 |
| 9 | 4 | 7 | none |
| 10 | 5 | 7 | none |
| 12 | 5 | 11 | 6 |
| 21 | 7 | 19 | 8–10 |
| 21 | 8 | 19 | 9–10 |
| 30 | 7 | 29 | 8–15 |
| 33 | 13 | 31 | 14–16 |
| 33 | 14 | 31 | 15–16 |
| 36 | 13 | 31 | 14–18 |
| 36 | 17 | 31 | 18 |
| 56 | 13 | 53 | 14–28 |

For every legal `j`, `n-i<p≤n` forces `p>j>i`, `n<2p`, and `n-p<i<j<p`. The units residue of `n` modulo `p` is therefore below both indices, so `p` divides both binomials. This is exactly the historical Lean top-interval interface in §2. All **41 legal triples** were additionally checked by exact binomial arithmetic. The two empty rows need no witness application.

A hypothetical counterexample is consequently outside the twelve-case exception set, and §1.1–1.2 yield the **unconditional necessary inequality**

\[
\text{no common prime }p\ge i\Longrightarrow
\binom ni<V^2\le\binom ji^2.
\]

##### 1.4 Vandermonde, including odd i

Suppose `2*j ≤ 3*i`. Set `r=⌊i/2⌋`, `s=⌈i/2⌉`. The integer assumptions give

\[
j-i\le r\le s\le\lfloor j/2\rfloor.
\]

Symmetry and unimodality imply `choose j r ≥ choose j i` and `choose j s ≥ choose j i`. Retaining the `r` term of Vandermonde, and using monotonicity in the top index,

\[
\binom ni\ge\binom{2j}i
=\sum_{t=0}^{i}\binom jt\binom j{i-t}
\ge\binom jr\binom js\ge\binom ji^2.
\]

This contradicts §1.3. Thus B699 holds when `2*j≤3*i`, and every hypothetical counterexample has `2*j>3*i`. Odd `i` uses two adjacent coefficients; neither is silently replaced by an unjustified square.

This is an **independent reconstruction from primary EEES**, prompted by a secondary description of Liam Price's later proof. It does not reproduce the unavailable Price document, and no novelty is claimed.

##### 1.5 Precise localization if a residue interface is desired

For prime `q≥i` with `e=v_q(choose n i)>0`, put `δ=1` when `q=i`, and `δ=0` otherwise. There is a unique `α∈[0,i)` with `q∣n−α`, and

\[
Q=q^{e+\delta}\mid n-\alpha,\qquad n\bmod Q=\alpha.
\]

The length-`i` numerator window has exactly one multiple of `q`; the denominator valuation is zero for `q>i` and one for `q=i`. If `q∤choose n j`, the remainder obstruction gives `r=j mod Q≤α`. Hence `s=(n-j) mod Q=α-r`, so

\[
r+s=\alpha<i,\qquad Q\mid j-r,\qquad Q\mid n-j-s.
\]

The extra exponent at `q=i` is essential when specifying the full numerator power. These are necessary constraints, not an equivalence after higher digit conditions are discarded. The transfer in §1.2 avoids this bookkeeping.

##### 1.6 Evidence and implementation obligations

`checks/eees_bridge_audit.py` and `checks/eees-bridge-results.json` record 70,210 unconditional coprime-part transfers, 76,696 localization instances including 377 with `q=i`, 23,390 Vandermonde comparisons (`4≤n≤120`), and every legal exceptional triple. These check the elementary reconstruction; they do not replay EEES globally.

For the remaining Lean acceptance: master transfer and the finite-product prime-part interface are now independently proved; supply a formal EEES theorem with the exact exception predicate; discharge exceptions by the top-interval theorem; then formalize the displayed Vandermonde inequalities. **The substantial missing formal input is EEES**, not a further finite binomial scan. Full B699 still requires a contradiction in the unbounded region `2*j>3*i`, outside any separately established central-row result.

#### 2. Historical Lean: exact reusable interfaces

Primary repository [williamjblair/lean-proofs](https://github.com/williamjblair/lean-proofs), pinned commit `aff1d30b3b1c6bd705810fa4d588b03940fb31df`, file `lean/Erdos699/Proved/Basic.lean`, blob `8f581411fa080d21bbb41df86a6d6c2ed2ae45f8`. Its last content commit is `f2e3db95b3ff0d36441646bb14606132e504f0c3`, July 5, 2026, Will Blair. MIT, copyright 2026 Will Blair.

Environment: Lean `v4.29.1`, mathlib `5e932f97dd25535344f80f9dd8da3aab83df0fe6` (`v4.29.1`). The full project also pins PrimeNumberTheoremAnd; the extracted generic closure uses only the original five Mathlib imports. No main-repository environment was used or changed.

| Declaration | Exact content and role |
|---|---|
| `dominated_iff_forall_digits` | For `p≥2`, the finite domination encoding equals domination at every base-`p` digit. |
| `lucas_nonzero_mod_prime_iff_dominated` | For prime `p`, `choose n k % p ≠ 0 ↔ dominated k n p`, for all naturals `n,k`. Exact Lucas equivalence. |
| `commonPrimeDivisor_of_digit_failures` | Prime `p≥i` and a failing digit for each index give a target witness. General sufficient interface. |
| `commonPrimeDivisor_of_prime_in_top_interval` | Prime `p`, `i<j`, `2*j≤n`, `n-i<p≤n` give a common prime `≥i`. |
| `t3_top_interval_prime_free_of_no_common` | No common prime forces `(n-i,n]` to contain no prime. Despite its name, generic in `i`. |
| `t3_no_large_prime_dvd_fallingWindowProduct_of_no_common` | No common prime forces every prime factor of the numerator window to be at most `n/2`. |
| `no_commonPrimeDivisor_iff_obstructionCriterion` | No witness iff every prime `p≥i` digitwise dominates at least one of the two indices. Exact reformulation, not closure. |
| `t1_i_eq_one` | Global `i=1` case for `2≤j` and `2*j≤n`; lower priority than generic interfaces. |

`checks/HistoricalGenericSlice.lean` preserves the declarations and proofs unchanged from three source blocks, and appends seven `#print axioms` requests. The original full MIT permission notice is copied beside it in `checks/LICENSE-williamjblair.txt`. This is an exact **source slice**, not the complete 11,864-line module. **No successful pinned compilation or axiom output is claimed by this report.** External dependency preparation encountered disk exhaustion. Source inspection found no added assumptions in these extracted proofs, but that does not replace kernel checking.

The larger historical `i=3` campaign explicitly leaves kernel exclusion obligations open. Some theorems are conditional, and a weakened normalized kernel has an explicit counterexample in the source. Do not discard those hypotheses or promote the incomplete campaign to B699.

Later history points to `vela-science/erdos-frontier`. Its public archived HEAD was `12fdb0ad09c710469e50a60e8a6e2c81c9d18c3f` on retrieval. Archive/compaction notes do not claim a mathematical solution; no new B699 proof was recovered there. Archival status does not complete an old proof.

#### 3. Withdrawn proof: provenance, failures, and surviving lemmas

##### 3.1 Recovery limits

The named repository `srinikethpsarathy-oss/Erdos-verification-suite` returned 404; exact repository/fork-name searches found no accessible replacement. Known raw `Erdos (1).lean` retrieval also returned 404. Code, commit, and issue searches found a historical audit but not the original Lean file or pinned manifest. The evidence cannot distinguish deletion, privatization, or renaming. Archive retrieval did not complete, so no claim is made that archived copies do not exist.

The [author's forum page](https://www.erdosproblems.com/forum/user/Sriniketh) preserves a later claim; the [B699 forum](https://www.erdosproblems.com/forum/thread/699) records StijnC's May 1 objection and Thomas Bloom's May 11 invalidity judgment. These primary discussion records were retrieved through search caches where direct opens were blocked.

A contemporary link trail recovered the six-page [Revision 4 PDF](https://files.catbox.moe/uw4ah2.pdf), saved with extracted text. Its cover says March 2026 Revision 4; headers say Revision 3. There is no named-author byline or license; attribution comes from the public source trail. This artifact must not be conflated with the later sixteen-page paper and Carry supplement described secondhand.

Secondary memo: `mrmartin/claude_proving_new_mathematics` commit `7547b8ede5509b0a2c31de582e95088cba7967ee`, `memory/0052-survey-erdos699-literature.md`, blob `5a854ac1ef654a22d0e32c170257c1ba8fff32d4`, preserved locally. Its assertion that 27 Lean declarations have clean axioms is **not inherited as verification**. Original definitions, `native_decide` uses, source version, and theorem coverage were unavailable for checking.

##### 3.2 Explicit false steps in the six-page proof

| Printed step | Audit |
|---|---|
| §2.5: `p>i`, `p∣choose j i` imply `j-i<p` | **False:** `i=2,j=10,p=3`, `choose 10 2=45`. A multiple of `p`, rather than `p` itself, can lie in the numerator interval. The displayed floor inequality is reversed. |
| §5.2 Prime Band Escape: `i<r≤j-i` and `r` divides the numerator window imply `r∣choose n j` | **False:** `(n,i,j,r)=(28,3,14,7)`, but `choose 28 14=40,116,600` is not divisible by 7. |
| Case B as an exhaustive cancellation route | At `(28,3,14)`, take `q=13`: `j-q=1<2<i`, `13∥26`. It divides `choose 28 3=3276` and `choose 14 3=364`, but neither `choose 28 14` nor `choose 25 11`. This realizes StijnC's mechanism. |
| Cofactor Escape (a)/(c) in generality | (a) uses false §2.5. In (c), a numerator multiple in a long block may cancel against the factorial denominator; only an actual positive binomial valuation suffices. |
| §5.4: two nearby smooth terms are bounded by the largest consecutive smooth pair | **Invalid inference:** 16 and 18 are `{2,3}`-smooth, distance 2, and exceed the stated consecutive bound 9. This refutes the inference, not by itself every possible guarded FO theorem. |
| §5.5 parity | A `{2,3}`-smooth cofactor at least 2 can be odd (3); adjacent coprime products at least 11 need not both be prime. An inequality from `n≥2j` is also reversed. |
| §5.7 universal completion | Terminating a finite search for each fixed `i` does not show that every search accepts, or cover all unbounded `i` by finitely many completed checks. |
| §5.9: one of `n,n-1` is divisible by 4 | **False:** `n=6`; `choose 6 2=15` is odd. |

The triple `(28,3,14)` is **not** a B699 counterexample: its gcd is 36, with valid boundary witness 3.

##### 3.3 Independent local lemmas that survive

**Prime Power Bridge.** Let `p` be prime, `e≥1`, `Q=p^e`, `n=uQ+a`, and `0≤a<i<j≤n`, `j<Q`. Then `n mod Q=a`, `i mod Q=i`, `j mod Q=j`; the accepted remainder lemma proves both divisibilities by `p`. Add `p≥i` for B699. Exact valuation, `p≤j`, and `e≥2` are unnecessary once these inequalities are explicit.

The printed proof wrongly insists on a digit-1 carry: at `n=8,i=2,j=4,p=2,e=3`, the first carry is at digit 2. Its remark that only `p²∣n-a` is used is false if it removes `j<p^e`: at `n=12,i=2,j=4,p=2,a=0`, `4∣12` while `choose 12 4=495` is odd.

**Carry at `M=1`.** For prime `p`, `V≥2`, `0≤a<p`, `n=p^V+a`, and `p<j≤n/2`, one has `a<p<j<p^V`; the bridge supplies `p` at `i=p`. This is a pure-power sufficient condition. No argument forcing every obstructed input to have `M=1` was recovered. The unavailable supplement's `M≥2` closure and finite subordinate checks are not accepted as a global dichotomy.

**Master identity and B-α.** The identity in §1.2 implies `p∣choose n j` if `p` is prime, `p∣choose n i`, and `p∤choose j i`. Valid, and weaker than the general coprime-divisor transfer.

**Actual tame valuation.** If `p>i`, `j-i<p≤j`, and `p` is prime, then `p>j/2`, both denominator factorials are prime to `p`, and `v_p(choose j i)=1`. The converse interval assertion remains false.

**FO characterization requires a pinned definition.** The early PDF's FO includes narrow-band, loneliness and exponent conditions; failure of the strict target does not force that definition. The later memo also uses the weaker predicate `∀p>i, p∣P → p∣choose j i`. It is necessary for absence of a strict witness, but not sufficient: `(n,i,j)=(9,2,3)` satisfies it, while prime 3 divides both binomials and their gcd is 12. A theorem `fo_char` equating two definitions is not automatically an equivalence with the original obstruction. The exact later Lean definition was not recovered.

**Smooth-pair/S-unit, corrected conditional route.** Suppose an independently proved structural condition gives two distinct `{primes≤i}`-smooth terms `x,y` in the length-`i` window. Their distance `d` lies in `1…i-1`. A correct bound must cover every such `d`; equivalently, `x/d-y/d=1` is a rational S-unit equation since `d<i` is S-smooth. The largest integer consecutive smooth pair is insufficient. The later proposed S-set also includes prime factors of `choose j i`, hence depends on `j`: a bound `N₀(i,j)` does not yield a finite search over all `j`. No universal forcing of this smooth configuration was recovered.

These are **audited elementary statements or conditional leads**, not verification of an unavailable Lean module.

#### 4. Cong Lu scanner: completeness and provenance

Full-history clone `repos/erdos_699_rust`, [conglu1997/erdos_699_rust](https://github.com/conglu1997/erdos_699_rust). Exactly two commits: initial source/log commit `7fdcc0b3fb61b3206979e2ff1a25b00ff615d22a`, January 6, 2026 10:51:47 UTC; `.gitignore`-only HEAD `7d030640beeb6bd64b4703fb2e252576a8ab56bb`, 10:52:03. Author Cong Lu; Cargo authors `Erdos 699 Compute Team`. Cargo declares `MIT OR Apache-2.0`; no standalone license file. Rust edition 2021 with Cargo.lock.

##### 4.1 Mathematical completeness of a successfully completed fresh run

1. Full sieve/SPF/previous-prime tables are built to the requested maximum. At row `n`, set `m=⌊n/2⌋`, `ℓ=prevprime(n)`, `g=n-ℓ`. Only `i≤min(m,g)` are scanned. Bertrand gives `ℓ>n/2`; every omitted `i>g` and legal `j` has `n-ℓ<i<j<ℓ`, so `ℓ` witnesses both.
2. Incrementally factoring `n-i+1` retains all numerator-window prime factors, hence every divisor prime of `choose n i`. Candidates are filtered by `p≥i` and the exact support containing `i`; denominator cancellation does not create a false witness.
3. For each candidate, support is exactly `{k∈[1,m] : p∣choose n k}`. The union covers all legal `j` iff that `(n,i)` has no counterexample; an uncovered index is returned explicitly.
4. For `p>n/2`, support is the interval `n-p<k≤m`. For `p>n/3`, the two-digit interval routine applies; `p²>n` fails only at tiny `p=2,n=4,5`, whose formula was checked directly. Other supports are complements of all digitwise dominated indices, in bitmap or interval form. The digit DFS is exact Lucas arithmetic. Optional Legendre supports are also exact.
5. Separate unions with `p>i` detect strict near misses; the weak target retains `p=i`.

Inspected arithmetic and `u32` operations are safe over the advertised range, whose maximum family row is `2^27=134,217,728`; this is not a claim for arbitrary `u32` endpoints. The bitmap cutoff changes representation, not mathematics.

##### 4.2 Resume risk and mismatch of saved run to source

Fresh tasks are disjoint chunks; the writer deduplicates results. In nonprofiling `--anomalies-only` resume mode, however, an out-of-order higher chunk may advance `max_seen` beyond an unfinished lower chunk. Restarting at that maximum can skip rows; no completed-row manifest is retained in that mode. Worker `join()` errors are ignored. These are completeness risks for those invocation patterns, **not evidence the reported campaign was affected**: the README's `--profile` disables resume.

The saved January 3 near-miss records have empty `shared_primes_geq_i` and no `gcd_factorization`. The documented command uses `--fast --anomalies-only --profile`; in current code, default `near-miss-mode=all` forces shared-prime collection despite `--fast`, and `build_pair_record` emits nonempty gcd factorizations for these cases. With only two commits and no original command receipt, the exact source/configuration producing those logs is unrecovered. Correct-looking logs are not exact source-bound replay evidence.

##### 4.3 Actual evidence and independent checks

Saved progress/profile summaries report `9,999,997` rows (`4≤n≤10^7`), no weak counterexample, eight anomalous rows containing nine strict near misses. README also describes `n=2^k` through `k=27` and `n=3^m+1` through `m=17`; full targeted run receipts are not committed.

The nine triples are `(10,3,5)`, `(16,2,6)`, `(28,3,14)`, `(28,5,14)`, `(244,3,122)`, `(512,2,147)`, `(2048,2,713)`, `(2188,3,1094)`, `(1594324,3,797162)`. Independently reconstructed gcd factorizations confirm exactly `p=i` among shared primes at least `i`. The largest certificate uses small-index numerator factorization and independent Legendre valuations.

`checks/arithmetic_audit.py` checks exact Python binomials for `4≤n≤220`: 418,508 support comparisons, 176,064 large-prime interval checks, 3,449 `p=i` checks, and 12,098 numerator-factor inclusions, plus all counterexamples and near misses. **No Rust executable was built or run**: Cargo/Rust was unavailable. Neither the ten-million-row campaign nor targeted campaigns were replayed. The evidence class is source audit plus independent arithmetic, not Rust reproduction.

The early failed PDF's appendix says `i≤15` but advertises over 109 million triples; the actual legal count through `n=4400` is 72,073,240. Later `i≤23` gives exactly 110,109,924. Revisions must therefore remain separate.

#### 5. Later leads and the accepted frontier

Atlas is audited separately by the parent. Its finite scan and exact residue/pruning mechanisms do not supply an unbounded forcing theorem.

A later secondary note, `aumara-xyz/golden-horizon-principle` at `0d0006108637f0f79985ffaacb8efb6c5955cba7`, `research/erdos-lab/NOTES-699.md`, blob `c11a99f8467cfa18a5e79a755b1066b3466aded1` (introduced at `8cb492c3fcdde6e118273604e8f98be9551ab012`, September 3), names two Overleaf papers:

- **Common Prime Divisors of Binomial Coefficients**, Liam Price submission, author line reportedly GPT 5.6 Sol Pro: reportedly `j≤3i/2` and `n=2j`.
- **Binomial coefficients sharing a large prime divisor**, van Doorn and Rocca: reportedly a determinant-based gcd lower bound, fixed-`i` finiteness for `i≥4`, and an explicit large-`i` exclusion.

Neither document nor exact Overleaf read URL was recovered. Direct primary proof-claims retrieval was blocked/timed out; exact title/author/code/commit/issue searches found secondary references only. The central-row claim, determinant bound, finite horizons, and large-`i` thresholds remain **leads**. Section 1 independently reconstructs only the EEES/Vandermonde consequence; it does not validate these other claims. Atlas's Del Pin/Bloom interval-entropy description likewise remains a source lead.

The accepted main-repository cofactor criterion retains its coprimality, size, and strict-prime hypotheses. It cannot be forced on every legal input: at `n=16,i=2`, all primes above 2 in the two-term window come from 15, namely 3 and 5. Distinct choices have cofactors 5 and 3, giving size `5*3*(1+1)=30≥16`; repeating a prime fails coprimality. Yet `(16,2,6)` has valid boundary witness 2. A universal adoption plan needs a boundary-prime route or a more general structural argument.

Recommended adoption order: generic divisor transfer; exact Lucas/top-interval interfaces; then the EEES-backed size obstruction, treating its substantial formal dependency as a separate obligation. More individual `M=1` examples or finite scans do not supply the remaining all-input proof.

#### Evidence inventory

| Artifact | Class |
|---|---|
| `sources/eees-1978.pdf` | Primary published theorem; original proof computations not replayed |
| `sources/parthasarathy-revision4-catbox.pdf` and text | Recovered primary invalid proof |
| `sources/mrmartin-memo-0052.md` | Secondary historical lead; no inherited Lean verification |
| `sources/aumara-notes-699-20260903.md` | Secondary later-paper lead |
| `checks/arithmetic_audit.py`, `checks/arithmetic-results.json` | Independently executed exact arithmetic |
| `checks/eees_bridge_audit.py`, `checks/eees-bridge-results.json` | Independently executed bridge and exception checks |
| `checks/HistoricalGenericSlice.lean` | Exact extracted source; no successful kernel/axiom audit claimed |
| `sources/source-manifest.json` | Source pins, hashes, and toolchain metadata |

There is no complete Lean proof of B699 in the evidence recovered here. Invalid bridges, unavailable claims, audited elementary lemmas, published dependencies, source-only Lean, and finite computational results remain explicitly distinguished.


## 附录 F｜B699转移的Lean验收

状态：独立 Lean 4.33.1 验证通过。没有改动任何现有 lean-math-lab 目录；无新工具链或依赖下载。本目录源码为本轮独立撰写，并非外部未验证 theorem 的封装。

`DivisorTransfer.lean` 的核心结论：对自然数 `i≤j≤n`，若 `D|choose n i` 且 `D.Coprime (choose n j)`，则 `D|choose j i`。证明直接使用 `Nat.choose_mul` 和互素整除消去。

文件同时定义真实的大素因子部分

```lean
def primePart (threshold a : ℕ) : ℕ :=
  (a.primeFactors.filter (fun p ↦ threshold ≤ p)).prod
    (fun p ↦ p ^ a.factorization p)
```

边界是 `p≥threshold`，保留每个素因子的完整指数。两个引理证明该部分整除原数，以及没有符合门槛的共同素因子时它与另一个数互素。由此实际消费者为：

```lean
theorem actual_prime_part_transfer {n i j : ℕ} (hij : i ≤ j) (hjn : j ≤ n)
    (h : ¬ ∃ p, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j) :
    primePart i (n.choose i) ∣ j.choose i
```

因此 B699 原合法条件 `1≤i<j≤n/2` 与“没有共同素数≥i”的假设直接推出转移 T。没有把 T 本身列作新假设。

运行命令：

```text
python3 -B /workspace/scratch/c6b148d48b6d/external-research/bridge-lean/verify.py
```

成功证据：`verification/20260908T111858984907Z/evidence.json`；编译退出0。四项实际公理输出均为 `[propext, Classical.choice, Quot.sound]`，验证脚本逐项核查，未使用 `native_decide`、`sorry` 或项目新公理。没有第二个独立 Lean 内核。

固定 mathlib `0df444a360eaa60ab8c11dca51a86af692955474`；所有 manifest 依赖包 HEAD 和受跟踪源码 clean 状态实际核对。`GIT_OPTIONAL_LOCKS=0` 禁止 Git 的可选刷新写入；包对象缓存只读。此模块没有导入任何旧项目对象。验证脚本沿用相邻 `b677/support/` 的已记录 manifest 和进程局部 procfs shim；常规固定 mathlib 项目可直接编译本文件，无需该容器兼容 shim。

第一次日志 `verification/20260908T111800259428Z/` 保留：四个一般定理已成功，但两个额外数值展示例的 `decide` 无法直接约化 factorization。最终删除这两个展示例，一般命题与证明未变，重新完整编译成功；没有借助未经内核验证的计算绕过问题。

证据边界：T 已 Lean 验证；EEES1978 的小/大素因子不等式、十二例外处理和 `2j≤3i` 的 Vandermonde 区域证明未包含在本 Lean 文件中，仍为另行记录的文献/纸面/精确有限核验。没有完整 B699 Lean 证明，也没有主仓库合入。

来源与归属：数学检索入口为Liam Price相关二手描述；准确可核查的文献后续输入是Ecklund–Eggleton–Erdős–Selfridge1978。这个短转移使用标准组合恒等式 `Nat.choose_mul` 与互素消因子，由本次审计独立重新形式化；不主张数学思路首次发现，也不声称恢复了Price原稿的代码。EEES不参与这4个Lean定理的依赖链。


## 附录 G｜正式题面、tasks polarity与lean-genius

Static scan completed 2026-09-08. No Lean builds, downloads, checkout mutations, or writes under any `lean-math-lab*` directory were made. The only report written is this file. The scan covered the current working trees and relevant path history in `lean-genius`, `formal-conjectures`, and `conjectures-tasks`; no exact solved proof or exact counterexample was found for targets 677, 686 `variants.four`, or 699.

#### Revisions, provenance, and toolchains

| Repository | Current revision (author/date/subject) | License/toolchain evidence |
|---|---|---|
| `rjwalters/lean-genius` | `f9c62750e76180f15c7bd6c5759be320d7feffdc`; Robb Walters, 2026-08-18; `erdos-85: FINAL_PROOF_OUTLINE v2 (consolidation) + archive v1a–v1d (#43716)` | No repository `LICENSE`, `COPYING`, or `NOTICE` found in the checked tree. `proofs/README.md` names Lean `leanprover/lean4:v4.31.0`; `proofs/lakefile.toml` pins mathlib `9a9483a92959bc92bd6a60176dd1fe597298c1f8`. |
| `google-deepmind/formal-conjectures` | `c7f31d5fd3d2ca3d69979f2d213eb9b58fe956ae`; Paweł Kwaczyński, 2026-09-08; `Erdős 97: fix coordinates of B₂ in the three_equidistant witness (#5185)` | Apache 2.0 header in each target file and repository license. Current `lean-toolchain` is Lean `v4.33.1`; current manifest/lake configuration uses mathlib commit `0df444a360eaa60ab8c11dca51a86af692955474`. |
| `conjectures-io/conjectures-tasks` | `d9a67b509c5a8b220ba262c1c7ce26f61f52763a`; kingcharlezz, 2026-09-08; merge of `reviewed-pool-release-20260908` | No repository license file found at the checked depth. Task bundles pin the Formal Conjectures source separately (below). |

The repositories are partial/promisor clones. Current files and available commit metadata were read; some old historical blobs were unavailable without lazy fetch. This limits verbatim comparison with every old revision, but does not affect the current-source conclusions below.

#### Exact Formal Conjectures declarations

`formal-conjectures` source paths are `FormalConjectures/ErdosProblems/677.lean`, `686.lean`, and `699.lean`. All import `FormalConjecturesUtil` and all three files are Apache 2.0 licensed.

| Target | Current declaration and boundary | Current proof status |
|---|---|---|
| 677 | `Erdos677.erdos_677` at `677.lean:40–43`: `∀ (m n k : ℕ), k > 0 → m ≥ n + k → lcmInterval m k ≠ lcmInterval n k`. | Category `research open`; body is `by sorry`. The preceding concrete collision lemma at lines 32–34 is only the two known unequal-parameter examples. |
| 686 four | `Erdos686.erdos_686.variants.four` at `686.lean:57–61`: `answer(sorry) ↔ ∃ᵉ (k ≥ 2) (n : ℕ) (m ≥ n+k), (4 : ℚ) = product(m,k)/product(n,k)`. | Category `research open`; body is `by sorry`. |
| 699 | `Erdos699.erdos_699` at `699.lean:37–44`: `answer(sorry) ↔ ∀ n i j, 1 ≤ i → i < j → j ≤ n / 2 → ∃ p, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (Nat.choose n i) (Nat.choose n j)`. | Category `research open`; body is `by sorry`. |

The nearby declarations are meaningful mismatches, not solutions to these targets:

* 686 `four_two` (lines 68–80) has a complete proof only for the fixed value `k = 2`; `four_three` (lines 89–93) is marked `research solved` but its body is still `by sorry`, and is only the fixed value `k = 3`. `nine` (lines 100–107) is a genuinely proved existential for constant 9 with witness `k=3,n=11,m=25`. None proves or refutes the variable-`k` constant-4 target.
* 699 `sylvester_schur` (lines 27–31) is a separate single-binomial theorem, with a linked external formal-proof URL, but its current body is also `by sorry`. It does not establish a prime dividing the gcd of two binomial coefficients. `erdos_szekeres_strengthening` (lines 48–56) is a separate strict `p > i` finite-exception statement and is open.

`FormalConjecturesUtil/Answer.lean` documents and implements `answer(sorry)` as `True` under the default `google.answer = .alwaysTrue` setting (the answer elaborator is around lines 136–140). Thus the mathematical content of the 686-four and 699 declarations is the right-hand proposition, while their Lean type is literally `True ↔ P`.

#### Exact task bundles and polarity

Every relevant current task manifest has `classification: DIRECT_PROP`, permitted axioms only `propext`, `Quot.sound`, and `Classical.choice`, and `repository_commit: 8432eac998110a563e03df65a28c117e97c8c142`. The source theorem is listed under `forbidden_dependencies`; a submission cannot simply invoke the sorry-backed declaration.

| Target | Formalized task ID / generated type hash | Counterexample task ID / generated type hash | Source type hash |
|---|---|---|---|
| 677 | `fc-8432eac9-erdos677-erdos-677-76ff90e091-formalized-v1` / `d8b4d613ce4725ad35aa8fcd437a819ff7a65c62b0e6b2d4c7d4d7e6f3790f22` | `fc-8432eac9-erdos677-erdos-677-c378adf3c2-counterexample-v1` / `6af41730e950bd6074a42df5eb8bb33ae47e640fad9e1da35a3ff216138e1c47` | `d8b4d613ce4725ad35aa8fcd437a819ff7a65c62b0e6b2d4c7d4d7e6f3790f22` |
| 686 four | `fc-8432eac9-variants-four-ae7cfb4a62-formalized-v1` / `ba400ba0844a1182de84df5aa217255c4343091b3aec968e35793bb0e75e8db2` | `fc-8432eac9-variants-four-ecbc35a890-counterexample-v1` / `cae2f5de9d6a3b7f8694319a5baf6359a0889013314de022a467f203905fec3c` | `ba400ba0844a1182de84df5aa217255c4343091b3aec968e35793bb0e75e8db2` |
| 699 | `fc-8432eac9-erdos699-erdos-699-6cbf8d0b4b-formalized-v1` / `f5eee958e682d353b94818dd365b7f9a090f1cb6d7361dfe754876412168b217` | `fc-8432eac9-erdos699-erdos-699-ee0608c704-counterexample-v1` / `9bec1394a0fd55dbcd3abff5a38b2bb40130bbb0b4a164e96bc24886d8103994` | `f5eee958e682d353b94818dd365b7f9a090f1cb6d7361dfe754876412168b217` |

The task `Challenge.lean` files are proof scaffolds: the formalized modes say `theorem target : fcTypeOfName% "..." := by sorry`; counterexample modes say `theorem target : ¬ (fcTypeOfName% "...") := by sorry`. For 677, the named source type is already `P`, so the modes ask `P` and `¬P`. For 686 four and 699, the named source type is `True ↔ P`, so the modes ask `¬(True ↔ P)` for counterexamples, definitionally equivalent to `¬P`. The task builder records this relation as counterexample=`logical-negation`, formalized=`definitionally-equal`.

#### `lean-genius` source audit

##### 677: `proofs/Proofs/Erdos677Problem.lean`

This is a standalone Mathlib file and does not import the Formal Conjectures theorem. It defines a global `lcmInterval` at lines 33–36 using `Finset.range k` and a fold, then defines `ErdosProblem677` at lines 40–42. That definition is never proved. It differs from the Formal Conjectures target's `Finset.lcmInterval` namespace/function, so this file is not a drop-in proof of the task.

There are actual local proofs: the two concrete unequal-parameter collisions (`49–50`), `lcmInterval` recursion/divisibility/positivity (`79–208`), `lcmInterval_two` (`212`), fixed-`k` results `erdos677_k1` and `erdos677_k2` (`221–235`), factorization (`237`), a large-`m` result (`256`), and several fixed `k=3` cases (`268–347`). The theorem at line 322, `lcmInterval_two_three_collision : lcmInterval 2 3 = lcmInterval 3 3`, is a near miss: its two intervals use different starts but does not satisfy the main theorem's separated-range premise in the relevant orientation.

The file contains one substantive custom axiom, `thue_siegel_finiteness` at lines 71–74. There are no `sorry` or `admit` tokens. Metadata (`src/data/proofs/erdos-677/meta.json`) reports zero sorries, `axiomCount=2` including this axiom and the `Lean.ofReduceBool` mechanism used by `native_decide`, and status `axiomatized`; the main problem status remains open. The recorded v4.31 spike result is `Erdos677Problem FAIL`, with API errors in `fold_insert`, missing `Finset.not_mem_range_self`, a gcd rewrite, and an unfinished factorization base case (`proofs/final.out` around 5388 onward; corresponding row in `proofs/spike-logs-full/results-full.tsv`). No fresh build was attempted.

##### 686: `proofs/Proofs/Erdos686Problem.lean`

This standalone file defines a natural-number `consecutiveProduct` over `Finset.Icc 1 k` (lines 40–40), a rational `ratioExpression` (79), and its own `Erdos686Conjecture` definition (109). It has no axiom, `sorry`, or `admit`; metadata reports zero explicit axioms/sorries (with the usual `Lean.ofReduceBool` caveat for `native_decide`).

The strongest reusable content is structural: factorial/binomial identities (`51–77`), positivity/monotonicity (`114–146`), factor/product divisibility (`151–175`), shifted integer ratios and gap bound (`173–200`), rational-to-natural quotient (`203–208`), and injectivity (`212–217`). It proves examples only for N=2, 6, 3, and 10 (`222–244`). `representable_set_infinite` (`280–284`) proves infinitude for fixed `n,k≥2` through shifted multiples; it does not prove every N is represented and contains no N=4 result. There is no exact `variants.four` declaration, witness, or refutation in this repository. The recorded v4.31 spike row says `Erdos686Problem PASS`, but that only concerns this standalone structural file and cannot establish the Formal Conjectures target, which uses a different namespace/source and current FC v4.33.1 toolchain.

##### 699: `proofs/Proofs/Erdos699Problem.lean`

This standalone Mathlib file defines the weak common-prime predicate and statement at lines 60–75, and the strict predicate at lines 64–66. It assumes a custom `sylvester_schur` axiom at lines 41–48, which concerns a prime in one coefficient only. There are no `sorry` or `admit` tokens; metadata reports one substantive custom axiom, zero sorries, and status `axiomatized` (again with `Lean.ofReduceBool` in computational proofs).

Concrete proofs include weak examples `(6,2,3)` (`117–123`), `(10,2,5)` (`139–145`), and the exact triple `(28,5,14)` weak witness (`187–193`). The latter computes `gcd(C(28,5), C(28,14)) = 1080` and supplies `p=5`. The theorem `counterexample_28_5_14_strong` (`199–204`) refutes only the strict predicate `p > i`; it does **not** refute the Formal Conjectures weak target because `p=5=i` satisfies `p ≥ i`. There is no proof of the universal weak statement and no weak counterexample. The recorded v4.31 spike row is `Erdos699Problem FAIL`; the failure is an API mismatch in `Nat.Prime.dvd_of_dvd_pow` calls within `max_prime_1080_is_5` (also recorded in `proofs/batch2/diag-W0ae.txt` around 1247–1259). No fresh build was attempted.

#### Relevant history and PR evidence

No branch name or available path history in `lean-genius` contains an exact proof of `variants.four`, the FC 677 theorem, or the FC 699 weak gcd theorem. The relevant `lean-genius` path commits are:

* 677: `c3b019fff9bd3bce6df87b724378c295b546f6bc` (Robb Walters, 2026-01-26, initial formalization with several axioms); `d7f059e4900ec800d2fa800f7753d253619cce54` (Robb, 2026-05-03, k=1/k=2 and factorization); `e550c6737c50d68673ea56b8f98df2162dcb2810` (Robb, 2026-05-13, axiom-free k=3 cases); `98630041efbcca1a31cee1c2aca8c035c2e9af57` (Robb, 2026-07-17, v4.31 migration). These remain partial results plus the custom Thue–Siegel axiom.
* 686: `c225c8b385684ed1ab1d5980da1ca3255ad9d019` (Robb, 2026-01-26, initial ratio formalization with axioms); `08fda98e20e0ce764f58988ef58d5e6868d09c96` (Robb, 2026-02-06, enhancement); `f590a290d3396b20662f6f583b4d8831465c4c83` (Robb, 2026-02-07, binomial identities/examples); `5c802f2315c18c029c7870341cc66d9bc4fdeadd` and `c4038a570f3aa350f9511ae0581ffeac3b2d481f` (Robb, 2026-03-24, axiom elimination); `515ea3d34cf5d5e5e472f0251edb073ea5ecb0f1` (Robb, 2026-06-23, audit-related revert). No constant-4 result appears.
* 699: `f3d30d46a6c8afae4fb71ccbf2321fec5422c6c3` (Robb, 2026-01-14, early placeholder); `58d59bef80d9871a456ce89a8b14c70005001ebb` (Robb, 2026-01-17, definitions/axiom and concrete examples); `ca19c29928657af30fb72d240ac9f5182d79967e` (Robb, 2026-02-07, removed placeholder `True` axioms); `eba26943c39041b90596c80988bf38838d65d61a` (Robb, 2026-02-10, proved the concrete max-prime lemma); `98630041efbcca1a31cee1c2aca8c035c2e9af57` (Robb, 2026-07-17, v4.31 migration). The file remains an axiom-backed collection of examples, not a universal weak theorem.

Relevant Formal Conjectures path history confirms the same boundary: 677 was added by `c1249b6a157bb39e5120cfe09ef084ae643d4d74` (HerrLaal, 2025-12-02) and remains open; 686 was added by `0e3a38b41e9468baebc1c73cde7a36dfb976d267` (Sami Boukortt, 2025-10-13), with `35aabe285d0163d13283d43bf063f2386c360471` (Miklós Z. Horváth, 2026-03-02) adding variants, `11f8ecbc4f69c5d09dd33e524d2bbf87464fe35d` (Miklós, 2026-03-20) merely marking `four_three` solved while leaving its body `sorry`, and `5ed828e2855790893d8287fbfd10c096e2e593d8` (Will Blair, 2026-06-26) proving only the constant-9 witness; 699 was added by `a94857215a00c5c29cd8a4c53c8b703fffb953b3` (Cong Lu, 2026-01-04), and `2e6688c479e126d4cae76dfa06120d59c34b2796` (Allen, 2026-05-10) linked the separate Sylvester–Schur proof. The linked theorem is not the weak gcd target.

The task bundles were added as reviewed scaffolds: 686-four in `a5c5e698ade9299ab8654324bf451905bec8cea2` (kingcharlezz, 2026-08-04), 699 in `aa9a2c815f2456fe4bb0ee02dc1b9febb103f610` (kingcharlezz, 2026-08-12), and 677 in the tier-2 publication sequence beginning at `d3801a0b5555de45169a3e7118cdf6af04aa4ed5` and readable bundle commit `d5437a032bf81d545710439e20fadb7cc8ccb0f1` (2026-08-03/04). `802f60b888abc19e4f5708c6b58f17b114703477` (2026-09-02) repinned the pool to FC `8432eac9`; `275ef4824c41d41f97ac4e9fff95ca471de9341d` (2026-09-08) published the reviewed 10 MiB proof contracts. These are challenge scaffolds, not proof submissions.

#### Reuse assessment

The 686 standalone divisibility/shift lemmas are the most plausible reusable material, but they use their own `Erdos686.consecutiveProduct`, require adaptation to the exact FC theorem and current FC v4.33.1/mathlib, and do not contain a constant-4 construction. The 677 fixed-k lemmas may support bounded subcases after reconciling the two `lcmInterval` definitions, but the custom Thue–Siegel axiom is not a proof of the universal target. The 699 `(28,5,14)` result is useful only as evidence against a strict strengthening; its weak witness directly shows why it cannot serve as a counterexample to the task target.

#### Finding

There is no source-backed solved statement, sorry-free exact proof, or valid exact counterexample for 677, 686 `variants.four`, or 699 in the scanned current files and relevant available history. The exact task boundaries are the pinned Formal Conjectures declarations above; in particular, “solved” category labels and nearby strict/fixed-parameter variants must not be reported as solving the requested targets.


## 附录 H｜B686原版Lean复现失败与静态闭包

Date: 2026-09-08 UTC

The result is source and static audit evidence only. No target theorem was accepted by Lean, no target `lake build` completed, and no `#print axioms` output was obtained. The exact v4.29.1 toolchain was installed and version-checked through an isolated process shim, then removed after preserving hashes and logs because the workspace had no free disk space.

#### Scope and source identity

The inspected checkout is:

`/workspace/scratch/c6b148d48b6d/external-research/repos/lean-proofs`

- Git state at inspection and final check: detached `HEAD`, clean.
- Source `HEAD`: `aff1d30b3b1c6bd705810fa4d588b03940fb31df`.
- `lean-toolchain`: `leanprover/lean4:v4.29.1` (SHA-256 `7dc000621e0046d1aada809e2b7177e64454645cf4c741e9daaf79c99ec2e7a2`).
- `lakefile.toml` SHA-256: `e8b665ea4b011dd5698379dc710f94e1ebf97fa3e13eaa1dc0430bb9c13f85c7`.
- `lake-manifest.json` SHA-256: `f4c3e1fea9e745548c15b78b91015489277625c3dee15ab1ebe8bf6acf57b320`.

The main target is `Erdos686.Erdos686Variant.no_four_solution_of_quadratic_strip` in module `ErdosProblems.Erdos686CenterComponentLogStrip`, at source lines 1239–1242:

```lean
theorem no_four_solution_of_quadratic_strip
    {k n d : ℕ} (hk : 16 ≤ k) (hd : k ≤ d)
    (hstrip : 18 * d ≤ k ^ 2) :
    blockProduct k (n + d) ≠ 4 * blockProduct k n := by
```

The two additional same-commit closures requested for inspection were included:

- `Erdos686.Erdos686Variant.no_even_tail_solution_universal` in module `ErdosProblems.Erdos686EvenTailSupply` (lines 425–431), for every even row `2*r` with `2 ≤ r` and `d` above its supplied effective threshold.
- `Erdos686.Erdos686Variant.exists_canonicalOwnerSystem` in module `ErdosProblems.Erdos686CanonicalOwnerMatrix` (lines 630 onward), for `4 ≤ k`, `k ≤ d`, and an exact ratio-four equation.

#### Pinned versions and dependency setup

The checked-in manifest has these direct pins:

| Package | Resolved revision | Input revision |
| --- | --- | --- |
| mathlib | `5e932f97dd25535344f80f9dd8da3aab83df0fe6` | `v4.29.1` |
| PrimeNumberTheoremAnd | `d7f9e2bfdcc7e34dfb9328b7494a6d424ff50c96` | same |
| plausible | `83e90935a17ca19ebe4b7893c7f7066e266f50d3` | `main` |
| LeanSearchClient | `c5d5b8fe6e5158def25cd28eb94e4141ad97c843` | `main` |
| importGraph | `48d5698bc464786347c1b0d859b18f938420f060` | `main` |
| proofwidgets | `4dd0959c44d1af0462bd604d0f87c5781307d709` | `v0.0.95+lean-v4.29.1` |
| aesop | `7152850e7b216a0d409701617721b6e469d34bf6` | `master` |
| Qq | `707efb56d0696634e9e965523a1bbe9ac6ce141d` | `master` |
| batteries | `756e3321fd3b02a85ffda19fef789916223e578c` | `main` |
| Cli | `7802da01beb530bf051ab657443f9cd9bc3e1a29` | `v4.29.0` |
| PrimeCert | `2030255c7e3efb07074171879ec920b500ee0e58` | `v4.29.0` |
| leancert | `6237c769e79d4cefec17f5f3c40d288a9baa01e5` | `v4.29.0` |
| checkdecls | `3d425859e73fcfbef85b9638c2a91708ef4a22d4` | unspecified |
| LeanArchitect | `719ea595bb100be70d0b53b01eca828862d9f860` | `v4.29.0` |

The target's direct imports are `Erdos686ReflectedAlignmentSquareLift`, `Erdos686MatchingCompression`, `Erdos686CenteredRatioWindowSharp`, and three Nat factorial/choose Mathlib modules. EvenTailSupply directly imports `Erdos686EvenTailCoefficientCertificate` and `Mathlib.RingTheory.Localization.Integral`; CanonicalOwnerMatrix directly imports `Erdos686CanonicalOwnerCleaning`.

`lake update` was attempted with the pinned project manifest. It tried to clone mathlib and exited 1 after Git exited 128. A traced retry recorded the concrete failure `fatal: write error: No space left on device` during pack indexing, followed by `fatal: fetch-pack: invalid index-pack output`.

A source-only shared working copy was then materialized in `.lake/packages/mathlib` from an already available 4.33 clone, checked out detached at the exact manifest revision:

- `.lake/packages/mathlib` `HEAD`: `5e932f97dd25535344f80f9dd8da3aab83df0fe6`.
- Working tree clean, non-shallow, with the existing alternate object store.
- Size: approximately 114 MiB of source.
- `.lake/packages` contains only `mathlib`; PrimeNumberTheoremAnd and the inherited packages were not materialized.
- No `.olean`, `.ilean`, generated C, or native library files were present under `.lake` after this setup.
- `Mathlib.lean` at this revision has SHA-256 `f753b8e3397e7f6039101615b07d8a316023ad7e1eda5b345504435a0fcf8df6` and imports the full generated Mathlib umbrella.

#### Exact source import closure

The closure was traversed recursively from all three requested roots with the owned `static_audit.py` script. It resolves source modules in the checkout and `.lake/packages/mathlib`, while recording unresolved imports instead of treating them as available.

| Root | Total resolved source modules | Project modules | Mathlib modules |
| --- | ---: | ---: | ---: |
| `ErdosProblems.Erdos686CenterComponentLogStrip` | 7,894 | 22 | 7,872 |
| `ErdosProblems.Erdos686EvenTailSupply` | 7,890 | 18 | 7,872 |
| `ErdosProblems.Erdos686CanonicalOwnerMatrix` | 7,878 | 6 | 7,872 |

Across the union there are 7,899 resolved source modules: 27 project modules and 7,872 Mathlib modules. The unexpectedly large Mathlib count is caused by the project module `ErdosProblems.Erdos686`, which imports `Mathlib` and therefore reaches the generated umbrella rather than a narrow Mathlib slice.

The 27 project modules in the union are:

```text
ErdosProblems.Erdos686
ErdosProblems.Erdos686CanonicalOwnerCleaning
ErdosProblems.Erdos686CanonicalOwnerMatrix
ErdosProblems.Erdos686CenterComponentLogStrip
ErdosProblems.Erdos686CenteredRatioWindow
ErdosProblems.Erdos686CenteredRatioWindowSharp
ErdosProblems.Erdos686ConstantQuotient
ErdosProblems.Erdos686ConstantSurvivors
ErdosProblems.Erdos686EvenK
ErdosProblems.Erdos686EvenTailCoefficientCertificate
ErdosProblems.Erdos686EvenTailRunge
ErdosProblems.Erdos686EvenTailSupply
ErdosProblems.Erdos686ExceptionalNine
ErdosProblems.Erdos686FourteenStrip
ErdosProblems.Erdos686LargeEscape
ErdosProblems.Erdos686LargeKWedge
ErdosProblems.Erdos686MatchingCompression
ErdosProblems.Erdos686PadicLift
ErdosProblems.Erdos686PrimeObstruction
ErdosProblems.Erdos686QuotientConfinement
ErdosProblems.Erdos686Reduction
ErdosProblems.Erdos686ReflectedAlignmentSquareLift
ErdosProblems.Erdos686ReflectionCompression
ErdosProblems.Erdos686ReflectionOwnerCorrelationAudit
ErdosProblems.Erdos686SmallBranch
ErdosProblems.Erdos686SmallCore
ErdosProblems.Erdos686SmallPrimeBand
```

There are 155 unresolved module names. They are primarily Lean core/Std, Batteries (50), Lean (57), Aesop (7), ProofWidgets (9), Qq (5), Plausible (6), Std (5), Init (5), ImportGraph (2), LeanSearchClient (1), and a small set including `Data.Fin.VecNotation`. The import-line parser also reports `A`, `B`, `Z`, `all`, `cycle.`, `hierarchy.`, and `statements*` from prose in generated Mathlib umbrella comments; these are parser artifacts, not package declarations. The complete list and every resolved source hash are in `static-closure.json`.

#### Static forbidden-source check

The owned scanner was corrected before the final run to preserve apostrophes in identifiers such as `map'` while still masking character literals. It masks nested block comments, line comments, strings, and character literals, then checks the token set `sorry | admit | native_decide | axiom | constant`. Intentional `#print axioms ...` audit commands are excluded from this policy count; they are separately counted below. This remains a lexical check, not Lean parsing or kernel evidence.

- Reachable project source: 27 modules, zero forbidden-token findings after masking and excluding the audit commands.
- Reachable Mathlib source: 7,872 modules, 21 lexical hits in 8 files. Reviewed contexts are Mathlib's quoted `sorry` syntax used to display goals, `#guard_msgs` examples, the `Proof.sorry` constructor and formatter, registered linter option text, and theorem names such as `rec.constant`; they are external Mathlib source and do not constitute findings in the B686 project modules.
- Therefore the aggregate JSON field `forbidden_clean` is false because it includes those external Mathlib lexical hits. The project-only result is clean; this does not certify the imported package axioms.

The machine-readable closure, source hashes, and findings are in `static-closure.json`; the concise rerun output is in `static-audit-summary.json`.

#### Axiom audit status

The source contains explicit `#print axioms` commands, but none ran because the dependency closure never reached a successful Lean invocation. In the project closure there are 108 such commands across 11 files. Relevant guards include:

- `Erdos686CenterComponentLogStrip.lean:1493–1508`, including `no_four_solution_of_quadratic_strip` at line 1501.
- `Erdos686EvenTailSupply.lean:433–443`, including `no_even_tail_solution_universal` at line 443.
- `Erdos686CanonicalOwnerMatrix.lean:695–714`, including `exists_canonicalOwnerSystem` at line 714.
- `Erdos686EvenTailCoefficientCertificate.lean:388–394`.
- `Erdos686EvenTailRunge.lean:241–245`.

No transitive `#print axioms` result, no `lake build` result, and no kernel-level theorem acceptance should be inferred from these source commands or from the lexical scan. The presence or absence of axioms in the complete transitive environment remains unverified.

#### Toolchain and failure evidence

An isolated Elan 4.2.4 was used under the task-owned directory. Its installer reported version `elan-init 4.2.4 (227caca13 2026-08-25)`. The command

```text
elan toolchain install leanprover/lean4:v4.29.1
```

returned status 0 and downloaded the requested release, but Elan printed `error reading lean version` because direct Lean startup hit the container's process `/proc/<pid>/exe` lookup mismatch. Direct invocation recorded:

```text
error: failed to locate application
```

For diagnosis only, the audited process-local shim from B677 was copied into the owned evidence directory and compiled with:

```text
cc -shared -fPIC -O2 -Wall -Wextra -Werror lean-proc-self.c -o proc-self.so
```

With `LD_PRELOAD` set to that shim, the installed binaries reported:

```text
Lean (version 4.29.1, x86_64-unknown-linux-gnu, commit f72c35b3f637c8c6571d353742168ab66cc22c00, Release)
Lake version 5.0.0-src+f72c35b (Lean version 4.29.1)
```

Recorded hashes:

- Installer archive: `42b94d4244e8353142c456ec0e4ca6528fd898a6c604d4059f494e706e431f63`.
- `elan` wrapper binary: `e0f4b30b29c565625189744847dfef5f132b6322c5e452dbebfeae780c9749e5`.
- Lean 4.29.1 executable before cleanup: `3e0d0d3d801675359f2d4cf9815bfdb417b20b92fdd9d48b3b14c95bbae28bbf`.
- Lake 4.29.1 executable before cleanup: `a608ff084d7e2af228b92a29d7c2fd083ba0580e46889175ec74a81678c98359`.
- Shim C source: `44b1a436ea29e45da83bb39ca411b529e2881f4f7c5093d2e9ccf05ff4c8e30d`.
- Shim shared object: `6ffe1fa82905f89e90959b638f3479873e252f0faa573be690511f2da3e2f544`.

The complete pre-cleanup file hash list is `toolchain-artifact-hashes-before-cleanup.txt`. The exact toolchain directory was then removed with Python `shutil.rmtree` at:

`/workspace/scratch/c6b148d48b6d/external-research/b686-verify/elan`

The postcondition was checked and the directory is absent. The cleanup log is `toolchain-cleanup.txt`; no shared Elan directory, source checkout, or other project was removed. The source checkout remains clean, and the only repository-side setup retained is the source-only `.lake/packages/mathlib` checkout described above.

#### Evidence index

All paths below are under `/workspace/scratch/c6b148d48b6d/external-research/b686-verify` unless stated otherwise:

- `checkpoint-initial.md`: initial source and pin checkpoint.
- `progress-to-root.txt`: install, procfs, disk, and source-only clone progress.
- `static_audit.py`: corrected lexical closure scanner.
- `static-closure.json`: roots, closure counts, unresolved imports, source hashes, and findings.
- `static-audit-summary.json`: final scanner output.
- `toolchain-install-v4.29.1.log`, `lean-direct-version.log`, `lean-version-shim.log`, `lake-version-shim.log`, `lake-update-v4.29.1.log`, `mathlib-clone.log`: exact command logs.
- `toolchain-artifact-hashes-before-cleanup.txt`, `current-sha256.txt`, `toolchain-cleanup.txt`: version/hash and cleanup evidence.
- `support/lean-proc-self.c`, `support/proc-self.so`: process-local startup shim used only to obtain version output.

Root handoff correction: the declarations live in namespace `Erdos686.Erdos686Variant`; module names are distinct. An additional raw `unsafe` token scan over all 27 project modules returned no hits (`unsafe-project-scan.json`).


报告完成时间：2026-09-08 11:24:23 UTC。这是一份一次性证据快照，不构成后续维护任务。
