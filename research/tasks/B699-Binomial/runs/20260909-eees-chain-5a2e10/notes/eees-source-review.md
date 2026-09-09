# EEES 证明依赖与可实现分支

本记录负责人：`eees_dependencies`；唯一写入文件为本文件。来源基线：`37e42aca251c33c62cbc2c40f286daa0526d79ee`。共同预算起点 `2026-09-08T17:41:06.887Z`，原截止 `19:41:06.887Z`；本支持任务初步判断在 `17:52Z` 完成，约定最迟 `18:16Z` 交接。本任务未启动 Lean 编译、构建、Git 修改或其他 Agent。

已读 `AGENTS.md`、`docs/STRUCTURE.md`、Lean research skill 及 open-problem reference、B699 入口、外部报告 §5 与 Appendix E。采用已有完整素数幂转移，不重复证明它；接受主任务给定的 EEES 精确定理及例外表，不重新审计题面。

## 结论与下一步

完整 EEES 不能据当前来源合理预计在约 60 分钟内闭合。可优先闭合的是原文 Region I 的初等核心：

\[
 U_i(n)\le n^{\pi(i-1)}.
\]

当前固定 mathlib 已有逐素数幂上界，仓库又有已验收的显式轮筛计数界。二者与已存在的二项式下界组合，支持实际无条件 EEES 子区域

\[
 185\le i,\quad i^2<n\quad\Longrightarrow\quad U_i(n)<V_i(n).
\]

这里当然保留 `1≤i≤n`；上面两个显示条件已蕴含它们。本结果消掉 EEES 的一个无界区域，但尚余 `i<185` 的无界 `n`，以及 `i≥185, 2i≤n≤i²`。不得称为完整 EEES。

此外，本次从已接受的转移与同一个小素数部分上界独立推导出更直接的原题消费者，建议与主线实现合并：

\[
 185\le i<j,\quad 2j\le n,\quad j^4<n^3
 \quad\Longrightarrow\quad \operatorname{Common}(n,i,j).
\]

该消费者不需要未证明的 EEES 参数，也不需要 `2j≤3i`。主任务于约 `17:50Z` 采纳：先编译 `ElementaryTail.lean`，随后实现归一化二项式比值与这个消费者。此处只记录数学论证和实现建议；Lean 接受状态由主任务的新验证证据决定。

## 原文完整证明的实质依赖

Primary source: Ecklund–Eggleton–Erdős–Selfridge, *On the prime factorization of binomial coefficients*, J. Austral. Math. Soc. A 26 (1978), 257–269, [DOI 10.1017/S1446788700011770](https://doi.org/10.1017/S1446788700011770), [publisher PDF](https://www.cambridge.org/core/services/aop-cambridge-core/content/view/2971F0D118511902190BDED49B361FF6/S1446788700011770a.pdf/on_the_prime_factorization_of_binomial_coefficients.pdf). 本次通过出版者原 PDF 读取全部 13 页，核查证明主体 pp.259–268 及引用表；公式密集页另请求原页图。原文 copyright Australian Mathematical Society 1978；没有宣称其具开源许可，不将全文复制进本记录。

以下是证明依赖目录，不是逐页复写。`c=n/i`、`t=π(i−1)`。

| 区域与原文位置 | 实质输入 | 本轮评估 |
|---|---|---|
| I，§3，pp.260–261 | 每个完整素数幂至多 `n`；Rosser–Schoenfeld 素数计数估计；有误差项的 Stirling 界；`i≥649,c≥11.53` 的连续不等式 | 幂上界可立即复用；精确原阈值还需要分析依赖。改用轮筛可闭合多项式尾部。 |
| II，§4，pp.261–263 | 若干区间素数乘积整除 `V`；`θ(x)<1.000081x`；`θ(x)>0.990x`（`x≥32057`）；小范围精确表及有限参数比较 | 这是完整大 `i`、小 `c` 区域的主要缺口。当前弱 Chebyshev 界不能直接代入。 |
| III，§5，pp.263–265 | 删去各素数的最大赋值项后，剩余贡献整除 `(i−1)!`；所选位置的去重乘积；阶乘消去；多项式阈值与单调性 | 已有逐素数删项引理，但其余合并及阈值证明仍是真实工作。 |
| IV，§6，p.266 | 按前面边界完整枚举有限区域 | 需要新建可重放的精确证书；论文报告的计算不能充当内核证明。 |
| V，§7，pp.266–268 | 更精细的内在/外在素因子分拆；低阶参数处理；Lehmer 1964 光滑数配置的完整性；其余有限残段 | 尤其 `i=4,6,8` 不能只靠 III 的次数差解决。历史表的完整性不是普通有限扫描。 |

原文的 Mahler 渐近结果及开头的 Sylvester–Schur 介绍，不是补上当前完整 `p<i` / `p≥i` 定理的一步接口。已有 Sylvester–Schur 的全部证明不会自动给出 `U<V`。

`Region III` 的数学输出可精确写成：令 `D_t(n)=n(n−1)…(n−t+1)`，则合数 `i` 有 `iU≤D_t(n)`，素数 `i` 有 `U≤D_t(n)`。原文后续需要对这些量和余下下降乘积进行比较，而非只证明存在某个最大赋值位置。该改进仍是次数 `t` 的上界；它没有立刻替代 II 的强素数估计，也没有替代 V 的光滑数完整性。

## 已固定的可复用源码

固定工具链为 Lean `4.33.1`，mathlib `0df444a360eaa60ab8c11dca51a86af692955474`。以下三个仓库文件相对本次基线执行 `git diff` 输出为空。

| 输入 | 精确接口与证据边界 |
|---|---|
| mathlib `Mathlib/Data/Nat/Choose/Factorization.lean` | `Nat.pow_factorization_choose_le (hn : 0<n) : p ^ (n.choose i).factorization p ≤ n`，无需另加 `p.Prime`。Apache-2.0；文件 SHA256 `f7e4d90e1d3d74af322feb3731f98186b4f701c747d66d822bef8a799d6d5f38`。 |
| [LinearPrimeCounting.lean](../../../../B686-Four/formalization/PrimeCounting/LinearPrimeCounting.lean) | `B686PrimeCounting.prime_counting_linear (N) : 77*Nat.primeCounting N ≤ 16*N+616`。完整 2310 轮筛证书、周期桥、五个例外素数比较均在同一文件；相邻 README 记录 exit 0 与传递公理守卫。本次未重编译。仓库 Apache-2.0；SHA256 `e5a6a6cc4d10206edbd4e226106d1862f720542f84aa4398b62a624fdab6902a`。 |
| [SylvesterSchurSource.lean](../../../../B686-Four/runs/20260908-formalization-92c221/lean/shortgap/sylvester/SylvesterSchurSource.lean) | `Erdos699Formalization.pow_le_pow_mul_choose (n i) (hi:i≤n) : n^i ≤ i^i*C(n,i)`；`pow_mul_pow_half_lt_pow_of_sq_lt (hi:0<i) (h:i²<n) : i^i*n^(i/2)<n^i`；下文比值推广复用其前一个单步幂比较。SHA256 `5636abc1e07366f0f1f5fb4f5daabbac276cbf537ceeddb528703c3415552285`。 |
| [SmallPrime.lean](../../../../B686-Four/formalization/UniformDistance/SmallPrime.lean) | `B686UniformDistance.small_prime_factorization_bound`：对 `1≤k`、素数 `p`，存在 `j∈Icc 1 k`，使区间积的 `p` 赋值至多 `(k−1)!` 的赋值加 `(n+j)` 的赋值。SHA256 `3d9140131479b10d35ccd87884381e225331b2b77c5c80ae211ab9fe19273a6f`。这里仅确认源码，不把其他 B686 结果的验收当作当前 EEES 合并证明。 |

`SylvesterSchurSource.lean` 保留的来源头同时记录：`williamjblair/lean-proofs@aff1d30b3b1c6bd705810fa4d588b03940fb31df` 的 MIT 许可（Copyright 2026 Will Blair），及 `AllenGrahamHart/FormalConjectures-Bench@482dacc4d9335240f26218cdc62032da3100392b` 的原始 `formalizations/erdos699/Erdos699Formalization.lean`，原 payload SHA256 `ab0987fe6012fb421138af86ea6509979fcf885aa54744f06b2215fbb7f7e7b4`。复用证明体应保留完整许可及这段来源映射。主任务已选择仅提取最小证明体，并新编译，不重新构建整个 7700 多行文件。

当前 mathlib `Mathlib/NumberTheory/Chebyshev.lean` 提供 `theta_le_log4_mul_x`、`theta_ge`、`eventually_primeCounting_le` 和 `pi_le_log4_mul_div`；它们是实际证明，但不是上述 Rosser–Schoenfeld/Schoenfeld 的精确常数。对 `c=2`，简单代入上界主项 `log 4` 和下界主项 `log 2` 到 `θ(2i)−θ(i)`，主项仅为零；所需正线性下界无法从这次代入得到。此处失败的是该直接替换，不是对其他 Chebyshev 方法的不可能性结论。

## 本次独立推导：直接作用于原题的多项式区域

以下是本支持任务从固定源码和已接受转移独立重建的推导；不声称数学首创，也不归为恢复了 Price 或其他未取得的原稿。

设 `1≤i≤j≤n`，`A=C(n,i)`，`B=C(j,i)>0`，`t=π(i−1)`，`A=UV` 为完整素数幂分拆。没有公共素数 `p≥i` 时，已接受的结果给 `V∣B`，故

\[
 A=UV\le n^t B. \tag{1}
\]

用下降乘积逐项比较，或推广已存在的顶端参数归纳，可得

\[
 n^i B\le j^i A. \tag{2}
\]

逐项数学理由是对 `0≤r<i≤j≤n`，有 `n(j−r)≤j(n−r)`。乘起来再消去共同的 `i!` 即得 (2)。Lean 中可直接复用 `succ_pow_mul_sub_le_pow_mul_succ`：把 `pow_le_pow_mul_choose` 的归纳起点从 `i` 改为 `j`，在每步保留正因子 `B`；用 `Nat.choose_mul_succ_eq` 和 `N+1−i>0` 消因子即可。这样不用引入有理数除法或新的阶乘 API。

联立 (1)、(2)，消去 `B>0`，得到所有原题反例的实际必要条件

\[
 n^i\le j^i n^t. \tag{3}
\]

这是可检查的数值上界，依赖的是已经证明的小素数部分估计和转移，没有把 EEES 隐藏为参数。

当 `i≥185` 时，把轮筛界用于 `i−1` 得

\[
 77t\le16(i−1)+616=16i+600,\qquad 4t\le i.
\]

最后一步的充分条件是 `2400≤13i`，故 `185` 确实够用，无需新有限素数扫描。若另有 `j^4<n^3`，把 (3) 取四次方，利用 `i>0,n>0`：

\[
 n^{4i}\le j^{4i}n^{4t}
 <n^{3i}n^i=n^{4i},
\]

矛盾。因此所有原题反例在 `i≥185` 时必须满足 `n³≤j⁴`。这排除的是无界多项式区域；剩余 `i<185` 以及 `i≥185,n³≤j⁴` 仍含无界参数，不得到有限全题搜索。

作为实现上的可选一般式，若 `2≤m`、`m*t≤i` 且 `j^m<n^(m−1)`，同样对 (3) 取 `m` 次方即可：严格比较给出 `n^(m*i)<n^((m−1)*i+m*t)≤n^(m*i)`，矛盾。当前建议只落实 `m=4`，不为了接口泛化增加本轮工作。

## 停止和重定向条件

1. 第一选择为已证明逐素数幂界 → 真实 `U≤n^t` → 轮筛 → 无条件 EEES 尾部 / 原题多项式消费者。若正数消因子、有限乘积或归纳的 Lean 诊断在主任务检查点前没有收敛，应保留明确的纸面结论并停止扩展接口，不能加入 axiom。
2. Region III 删除引理虽可复用，但只有在具体原题消费者或一个可验证阈值已经被选中时，才值得继续完成去重乘积和分母合并。单独再做一条删除引理不会消掉新的前沿。
3. 完整 EEES 的 Region II 需要可核验的强素数估计或新替代论证；Region V 需要光滑数配置完整性证明或新的低阶参数证明。这两个条件没有变化，不因主任务完成条件消费者或本次尾部而消失。
4. 本任务没有重做已排除的 Blair 通用 Lucas 接口检索，也没有重复寻找仍不可得的 Price / van Doorn–Rocca 原稿。现有固定源码已经给出本轮最有价值的可实现分支；没有理由填满支持任务剩余时间做宽泛搜索。

## 核验与交接状态

截至 `17:52Z`：来源读取和源码静态检查完成；数学推导已交主任务。所列源码 `git diff` 对基线为空；哈希已实测。没有启动 Lean 编译，因此本文件不宣称本次新定理已通过内核。主任务正在实施对应分支，最终结果、传递公理和实际前沿变化以本批新验证记录为准。

`17:57Z` 纠正：主任务指出可选一般式误写为 `m*t≤(m−1)*i`；该条件已撤回并更正为 `m*t≤i`，因为最终指数比较需要 `(m−1)*i+m*t≤m*i`。上文专门写出的 `m=4` 推导一直使用正确的 `4*t≤i`，不受此笔误影响；主任务报告对应实现已编译成功，本支持任务未另行构建。另按本文件所在 `notes/` 目录重新解析全部三个 B686 相对链接，`../../../../B686-Four/...` 均命中现存文件；五层 `../` 会错误地指向不存在的 `research/B686-Four`，因此保留四层链接。
