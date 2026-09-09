# 独立数学与 statement 审查

结论：在下列源码快照和已接受基线范围内，未发现数学或原始 statement 对应关系的阻断。核心判别式递推、实际非零性、精确阶乘缩放以及高度指数消去相互一致。证据等级为独立 AI 静态数学审查；本报告不授予 Lean 内核验收。

审查日期：2026-09-09。源码与哈希复核检查点：06:32:17Z；报告记录检查点：06:33:18Z。本审查按主线程指定的 06:45Z 截止执行。原研究轮时间为 05:58:52Z 至 08:58:52Z。

审查人收到原始目标、已接受事实包和本批源码路径，未读取实现者 notes、其他审查结论或实现对话。已读取仓库 `AGENTS.md`、`docs/STRUCTURE.md`、`lean-research/SKILL.md` 及其开放问题 reference。未运行 Lean 编译、有限枚举、缓存恢复或联网搜索；未修改实现、提交或推送。唯一写入为本报告。

## 审查对象与版本

本批 `lean/` 初读快照的九个文件共 1079 行，均已逐文件读取。06:32:17Z 检查时 Git HEAD 为 `ff5b58377da39f12333fe4e023b8d387ed1652aa`，本批 Lean 文件无未提交改动。固定工具链文本为 `leanprover/lean4:v4.33.1`。

接受事实包以 `7fd3928656489afe2c80698f0a09d1d933444186` 为基线，提供完整 U/V 分拆、小素数部分上界、D/V 转移、小指标 Common 和线性素数计数界。本审查仅核对这些入口的源码声明与定义；未重跑其旧验收。对本批直接复用的 `SmallPartBound`、`PrimePowerTransfer` 所在基线目录、`DivisorTransfer` 和 `LinearPrimeCounting` 的定向差异检查未发现相对该基线的改动。

| 文件 | SHA-256 |
|---|---|
| `Acceptance.lean` | `04d55883a06a93a63e5c62b75b1713a573779213671e8b83b2dec8cde9955722` |
| `CoefficientContent.lean` | `f22752ed618b0f67cc3a116095b1181540553f2f15cca053aaea3461d50ba584` |
| `ContentDiscriminant.lean` | `98e1cd352df2997f1a42d6ce343ed8792fce6354d5216b9efa05aedabbc305a1` |
| `DiscriminantAlgebra.lean` | `be8e8d97c35d8423213613bca2aff8d7c0717c45eb83839369cb6aa3c9789058` |
| `FactorialHeight.lean` | `1bfa8d15b4f1a9e99da36761bcd3b39cc5b1896fa2f1bdfddfb5cb00ca42503f` |
| `HeightArithmetic.lean` | `7bb02db35d37593843b2afa54de53c21a8a8cedb0528f373abd94b7a47175582` |
| `JacobiIdentity.lean` | `42a2f13d9241de0215d40e16ca37dd4602c898acf580f747caab8be629792790` |
| `OriginalHeight.lean` | `9060d8d18ac77901c671e9b325a04d486d84b4fe8876513f857c8d08dc75cb23` |
| `ScaledDiscriminant.lean` | `e34358e3ef953581416dc7b9a483d2efef9ca039bf16bfc71437022a475c1aff` |

交付前 06:35:54Z 增量核对发现两份源码有并发修改。已直接读取相对上述初读快照的完整 diff：`DiscriminantAlgebra` 移除 Positivity 导入，并把一个正整数非零证明改用 `omega`；`JacobiIdentity` 把两处 `positivity` 改为显式 `mul_pos` / `pow_pos`。两文件全部 theorem statement、下降恒等式、指数和参数保持一致，增量未引入数学或 statement 阻断。本报告亦覆盖以下修订哈希，其余七文件哈希未变：

| 修订文件 | SHA-256 |
|---|---|
| `DiscriminantAlgebra.lean` | `4b0209f4f97dc9981491751aca6301c9b4820028b5b8094f3c9d2577f08504ec` |
| `JacobiIdentity.lean` | `b3aed1e44e13ec32b91a8f1a4acffe1a093ac00c41d10173b2829da014964d0e` |

## 原目标与具体对象

锁定目标为自然数 `n,i,j` 满足 `1 ≤ i < j ≤ n/2`；Common 正是存在素数 `p ≥ i` 整除 `gcd(C(n,i), C(n,j))`。`OriginalHeight.counterexample_height` 和 `Acceptance.lean` 的全量词消费者保留了全部这些条件，没有额外的结构、非零性或外部定理假设。

令 `k=n-j`、`t=i.primesBelow.card=π(i-1)`、`s=i-4t`。`heightSlack` 使用自然数截断减法，但最终定理的 `4*t<i` 保证它正好是正整数差。`effectiveHeight` 正是

\[
H(i)=2^{\lfloor 4i/s\rfloor+1}\,i^{\lfloor(i+3)/s\rfloor+1}.
\]

`coefficientPolynomial` 是实际整系数多项式

\[
F=\sum_{r=0}^{i}\binom jr\binom{k}{i-r}X^r.
\]

其最高系数是 `C(j,i)>0`，所以次数恰为 i；常数项是 `C(k,i)`，且 `F(1)=C(n,i)`。这里没有把 F 替换成未落实的抽象多项式。

基线 `primePart` 和 `smallPrimePart` 分别取素数 `p≥i` 与 `p<i` 的完整 `p^factorization`。D 另加 `p ∤ C(n,j)` 的筛选。`CoefficientContent` 从实际组合恒等式

\[
\binom nj\binom jr\binom{k}{i-r}
=\binom ni\binom ir\binom{n-i}{j-r}
\]

与 `gcd(D,C(n,j))=1` 推出 D 整除每个实际系数，从而取得整系数商 `F=C(D)G`。D 的空支持乘积是 1，始终非零。只在 `noCommon` 条件下使用 `D=V`；阈值仍为 `p≥i`，包括 `p=i` 的全部指数，没有降为 radical。

## 判别式关系的独立重建

令 `G=coefficientPolynomial (n-1) (i-1) (j-1)`。合法域给出 `j≥i≥1` 和 `k≥i`，故所有下降中的 `n-1-(j-1)=k` 均有正确自然数减法解释。

逐系数关系为

\[
F'=jG,\qquad
iF=X(1-X)G'+G\bigl[(k-i+1)+(i+j-1)X\bigr].
\]

源码分别处理常数系数、内部系数、最高系数及次数外的零系数；内部二项式关系的截断减法条件由 `r+1<i`、`i≤j`、`i≤k` 供给，最高系数另用 `i*C(j,i)=j*C(j-1,i-1)`。因而下降关系没有遗漏 `i=1` 或最高项。

本地 mathlib 的归一化为

\[
\operatorname{Res}(P,P')=(-1)^{m(m-1)/2}\operatorname{lc}(P)\operatorname{disc}(P)
\]

（次数 m 必须正）。对于一般 `deg f=d+1`、`deg g=d≥1`、`f'=a g` 的下降关系，`Res(g,X(1-X)g')` 的符号是 `(-1)^d`；交换 `f,g` 的符号是 `(-1)^{d(d+1)}=1`。再用

\[
\frac{d(d+1)}2=\frac{d(d-1)}2+d,
\qquad (d+1)\operatorname{lc}(f)=a\operatorname{lc}(g)
\]

消去非零首项系数和 `d+1`，得到源码声明的

\[
(d+1)^{d-1}\operatorname{disc}(f)
=a^d g(0)g(1)\operatorname{disc}(g).
\]

此推导不需要预先假设可分性。代入具体 G 后，确实得到

\[
i^{i-2}\Delta_{n,i,j}
=j^{i-1}\binom{k}{i-1}\binom{n-1}{i-1}\Delta_{n-1,i-1,j-1}.
\]

符号和幂次一致。作为独立符号边界核对，`i=2` 时直接展开二次判别式得到 `j*k*(n-1)`，恰是递推右边；左侧 `i^(i-2)` 为 1。`i=1` 用一次多项式判别式 1 作基例。下降仍满足 `i-1≤j-1` 与 `i-1≤k`，递推乘子严格为正，因此源码从实际 F 证明 `Δ>0`。最终大小桥的非零输入在 `OriginalHeight` 内由此生成。

内容缩放满足 `disc(C(D)G)=D^(2i-2)*disc(G)`，适用条件是 D 非零且 F 次数正。由此完整得到 `D^(2(i-1)) | |Δ|`，并在 `noCommon` 下得到 `V^(2(i-1)) ≤ |Δ|`。从整除转大小时有实际 `Δ≠0`，未对零判别式错误使用该推论。

## 阶乘与最终指数

令 `S_i=(i!)^(2(i-1))*|Δ|`。源码的精确递推是

\[
S_i=i^i j^{i-1}\,k^{\underline{i-1}}\,(n-1)^{\underline{i-1}}\,S_{i-1}.
\]

其中 `i^(2i-2)=i^i*i^(i-2)`，另外两个 `(i-1)!` 与两个二项式分别合成下降阶乘，余下指数为 `2(i-2)`。整个消去通过乘法恒等式完成，没有不整除时的自然数除法风险。对 `i=2`，余下阶乘指数为 0，仍成立。

每步把三个参数因子各界为 `n^(i-1)`，平方后下降归纳给出

\[
S_i^2\le i^{i(i+1)} n^{3i(i-1)}.
\]

平方步中的指数分别为 `2i+(i-1)i=i(i+1)` 和 `6(i-1)+3(i-1)(i-2)=3i(i-1)`，没有漏因子。

原始合法域蕴含 `2i≤n`。令 `A=n` 的 i 阶下降阶乘，则每项 `n≤2(n-r)` 给出 `n^i≤2^i A`。精确 `A=i!*U*V` 与完整内容界给出

\[
A^{2(i-1)}\le U^{2(i-1)}S_i.
\]

平方、使用 `U≤n^t`、再代入判别式上界，得到

\[
n^{4i(i-1)}\le
2^{4i(i-1)}i^{i(i+1)}n^{(3i+4t)(i-1)}.
\]

由于 `n>0` 且 `s=i-4t>0`，合法消去 n 的幂后为

\[
n^{s(i-1)}\le2^{4i(i-1)}i^{i(i+1)}.
\]

对 `i≥3`，`i(i+1)≤(i+3)(i-1)` 恰等价于 `i≥3`，因此取正整数 `i-1` 次幂的单调性得到 `n^s≤2^(4i)*i^(i+3)`。源码先用已接受的 `common_small_index` 排除 `i=1,2` 的合法反例，随后才使用这一步，范围匹配。

最后 `a≤(a/s+1)*s`（自然数除法，`s>0`）保证 `H(i)^s≥2^(4i)*i^(i+3)`，再用正指数的严格单调性取得 `n≤H(i)`。整数恰好整除时的额外 `+1` 只增大 H，不会把上根估计反向。

`four_mul_primesBelow_lt` 复用的源定理是 `77*π(N)≤16*N+616`；代 `N=i-1` 后正是事实包中的 `77*t≤16*i+600`。若 `4*t≥i` 则 `13*i≤2400`，与 `i≥185` 矛盾。因此 185 的高指标消费者没有常数平移错误。

## 源码政策、交付范围及后续验收

本批九个 Lean 文件的定向扫描未发现 `sorry`、`admit`、`sorryAx`、新 `axiom`、`unsafe` 或 `partial`。最终 `counterexample_height` 实例化了真实 U、V、δ 的全部中间参数，没有把最终高度结论、内容结论或判别式公式作为自身前提。`common_of_height_lt` 直接对原始 gcd 命题取逆否，`Acceptance.lean` 另有全自然数参数消费者。

静态数学检查未给出阻断或反例。本报告未检查新证明体是否成功 elaboration，也未取得本次传递公理输出。`Acceptance.lean` 的 `#print axioms` 是审计入口；源码中的这些命令本身不能作为已执行审计的证据。内核验收仍需对上述精确源码运行编译、实际消费者和传递公理检查，并记录意外公理会失败的审计结果。若之后修改判别式归一化、下降参数、内容指数或最终消费者，应对改动部分重新核对。

若内核检查通过，本批支撑的是所有满足 `s>0` 的合法反例的显式高度界，以及 `i≥185`、`n>H(i)` 的原始 Common 结论。剩余区域仍包括尚未覆盖的较小指标和 `n≤H(i)` 的区域；`i=1,2` 继续由基线覆盖。i 本身仍可无界，本结果没有把整个 B699 化为一个已给出统一上界的有限枚举，也不构成全题完成或新颖性认定。

## 06:50Z 最终源码差异复核

本节为追加复核，保留上文初读与 06:35Z 的全部版本记录。本次采集检查点为 2026-09-09 06:50:35Z，Git HEAD 为 `79cbe5a45ef55e2aa6934ecd670a1f61bab863c4`。逐项读取了本批九文件相对 `ff5b58377da39f12333fe4e023b8d387ed1652aa` 的全部 diff，并对当前源码重新做了禁用占位符及新增公理的定向扫描；没有 Lean 执行、编译日志复验、wrapper 审查、notes 阅读或实现修改。本节的结论限定于 source-correspondence。

结论：五文件有证明体或 tactic 导入调整，四文件与初读快照逐字节一致。没有 definition、theorem statement、类型、完整量词、假设、结论、判别式归一化、幂指数或边界条件变动。未发现此次差异新增的数学或原始题面对照阻断。

| 文件 | 全部差异的作用与范围 |
|---|---|
| `CoefficientContent.lean` | `coefficientPolynomial_coeff` 改为显式 `simp only`，加入 `Finset.mem_range`，不再依赖宽泛简化或 `sum_ite_eq'`。实际 F、系数范围和内容整除声明均未改变。 |
| `DiscriminantAlgebra.lean` | 与 06:35Z 已审修订相同：移除 Positivity 导入，最后非零乘子中的正整数证明改为 `omega`。内容次数和带符号 resultant 推导未改变。 |
| `FactorialHeight.lean` | 当前实际 diff 仅把下降阶乘逐项比较中的 `Finset.prod_le_prod` 改为 `Finset.prod_le_prod'`。逐项不等式仍为 `n≤2*(n-r)`；阶乘消去和指数收集的 `calc` 均保持原文。 |
| `JacobiIdentity.lean` | 私有 `coeff_X_derivative` 的 successor 分支显式处理整数 casts；下降系数证明删去冗余 successor rewrite；线性 L 的次数证明显式展开两个系数分支；正性证明使用 `mul_pos` / `pow_pos`。下降对象、L 的常数与一次系数、递推公式以及实际非零性结论未改变。 |
| `ScaledDiscriminant.lean` | 对整数递推取 `natAbs` 后，改为仅按乘法、幂和自然数 cast 的绝对值公式简化。平方、阶乘缩放与最终上界均保持原文。 |
| `Acceptance.lean`、`ContentDiscriminant.lean`、`HeightArithmetic.lean`、`OriginalHeight.lean` | SHA-256 与初读快照相同，无文本差异。 |

由声明及定义不变可直接确认：F 仍是实际整系数二项式和；D/V 仍保留 `p=i` 的完整指数；`noCommon` 仍是原始全量词 gcd 命题；判别式内容指数仍为 `2*(i-1)`；缩放量仍为 `(i!)^(2*(i-1))*|Δ|`；`i=1,2` 仍先由基线排除合法反例；正 slack 条件和 H 中自然数除法、两个 `+1` 均未改变。原始消费者没有新增假设或遗留参数。

本次九文件哈希如下（当前总计 1082 行）：

| 文件 | SHA-256 |
|---|---|
| `Acceptance.lean` | `04d55883a06a93a63e5c62b75b1713a573779213671e8b83b2dec8cde9955722` |
| `CoefficientContent.lean` | `230a00ba5261ca66f611bea8b9aac64a2529e86d1d359b6a64fdf1c66616cccd` |
| `ContentDiscriminant.lean` | `98e1cd352df2997f1a42d6ce343ed8792fce6354d5216b9efa05aedabbc305a1` |
| `DiscriminantAlgebra.lean` | `4b0209f4f97dc9981491751aca6301c9b4820028b5b8094f3c9d2577f08504ec` |
| `FactorialHeight.lean` | `f4686629e4a3e54b27583dcaa1e24b5c7ccd0d7ba5b12ecb73cc8acbf0f53681` |
| `HeightArithmetic.lean` | `7bb02db35d37593843b2afa54de53c21a8a8cedb0528f373abd94b7a47175582` |
| `JacobiIdentity.lean` | `d190a68ff4fdbb1d13ec9b74a072244021c5f2ad9fa93581f9c72ea7dd04b070` |
| `OriginalHeight.lean` | `9060d8d18ac77901c671e9b325a04d486d84b4fe8876513f857c8d08dc75cb23` |
| `ScaledDiscriminant.lean` | `56a3488ec01d50795c22711507fde1e71df8fcc6e27577a5c1cb975f818918e8` |

06:52:40Z 交付前再次采集九文件哈希，均与本节表格一致；再次读取的 `FactorialHeight` diff 仍仅有上述逐项比较 lemma 的调整。

定向扫描仍无 `sorry`、`admit`、`sorryAx`、新 `axiom`、`unsafe` 或 `partial`。本次未独立运行或审查 Lean 全链编译与传递公理输出；相关接受结论应由另行记录的精确版本验收证据承担。
