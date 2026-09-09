# 实际二项式多项式的判别式：代数降阶

负责人：algebra；独占 `lean/DiscriminantAlgebra.lean`、`lean/JacobiIdentity.lean`、本文件及 `experiments/algebra/`。基线 `7fd3928656489afe2c80698f0a09d1d933444186`。共享预算起点 2026-09-09T05:58:52Z，原截止 08:58:52Z，06:43:52Z 首检查点，08:13:52Z 收束；未延期。本文首记 06:07Z。

采用旧批 `20260909-large-prime-structure-cb4764f0/notes/discriminant/{source-and-identity,arithmetic-bound}.md` 的题面、归一化及纸面公式；旧批报告和验收明确其判别式部分未 Lean 化。本批不把该公式或非零性作为公理或最终定理假设。

**当前状态（06:48Z）：两个负责的 Lean 模块均已通过固定版开发编译和实际传递公理检查。实际 F 的精确判别式下降及正性已经证明；整条高度消费者的新对象最终验收仍由主线程进行。** 下文保留早期路线判断，其历史状态以各检查点标时区分。

## 预期贡献和当前证据

目标对象是所有自然数 `1≤i<j≤n/2` 的

`F = Σ[r=0..i] choose j r * choose (n-j) (i-r) * X^r ∈ ℤ[X]`。

成功的降阶证明会无条件给实际 `Disc(F)>0` 及 `Disc(F)≤n^(3*i*(i−1)/2)`。这个次数已经够主线程在 `i>4π(i−1)` 时得到固定 i 的有效高度；精确乘积不是这个较松消费者的必要依赖。主线程随后要求保留阶乘消去，已进一步采用下文的 Δ 递推而非丢弃阶乘的常数界。剩余指标及全题不随本地引理自动解决。本段首次记录时以下仅是独立重建的纸面推导；当前证明状态见末尾检查点。

## 固定 mathlib API 核对

实际读取固定提交 `0df444a360eaa60ab8c11dca51a86af692955474` 的 [Resultant/Basic.lean](https://raw.githubusercontent.com/leanprover-community/mathlib4/0df444a360eaa60ab8c11dca51a86af692955474/Mathlib/RingTheory/Polynomial/Resultant/Basic.lean)。初查时本地工具链/包缓存尚未恢复。

- `Polynomial.discr` 已定义为修改 Sylvester 矩阵的行列式乘标准符号，值仍在系数环。
- `resultant_deriv`：正次数 f 的 `Res(f,f';d,d−1)=(-1)^(d(d−1)/2)*lead(f)*discr(f)`。
- 已有 `resultant_C_mul_left/right`、`resultant_add_mul_left/right`、`resultant_comm`、`resultant_mul_left/right`、`resultant_X_sub_C_right`、`resultant_add_right_deg`。
- 没有 `discr_C_mul`；可以从前两项和非零首项消去，补出整数域上的缩放。
- 不需要先补全根乘积型判别式，也不需要 Jacobi 正交性或实根分析。

## 关键多项式等式

记 `k=n−j`，`F_i(j,k)=Σ choose(j,r)choose(k,i−r)X^r`，

`G=F_(i−1)(j−1,k)`，`Q=X(1−X)`，

`L=(k−i+1)+(i+j−1)X`。

在 `i≥1`、`i≤j,k` 下：

1. `F'=jG`，因为 `(r+1)choose(j,r+1)=j choose(j−1,r)`。
2. `iF=QG'+LG`。

第二式的 X^r 系数是

`(k−i+r+1)choose(j−1,r)choose(k,i−1−r)`
`+(i+j−r)choose(j−1,r−1)choose(k,i−r)`。

第一项利用 `(k−s+1)choose(k,s−1)=s choose(k,s)`，化成 `(i−r)choose(j−1,r)choose(k,i−r)`。再利用 `r choose(j−1,r)=(j−r)choose(j−1,r−1)` 和 Pascal 恒等式，即为 `i choose(j,r)choose(k,i−r)`。r=0 和 r=i 的端点须分别处理，不能让自然数截断减法伪造 r=−1 系数。

## 完整结果式降阶和符号

以下假设 `i≥2`，`d=i−1`，`B=i(i−1)/2`，`B'=d(d−1)/2`，`a=choose(j,i)`，`b=choose(j−1,i−1)`。合法范围使 a,b 非零，且 `i*a=j*b`。

对第二等式两边取 `Res(G,−;d,i)`，先使用 `Res(G,H+LG)=Res(G,H)`（形式次数 i 不变），再按实际次数 `deg(QG')=2+(i−2)=i` 分解：

`i^d Res(G,F)=Res(G,QG')`

`=Res(G,X)*Res(G,1−X)*Res(G,G';d,d−1)`

`=(-1)^d G(0)*G(1)*(-1)^B' b Disc(G)`。

其中 `Res(G,X)=(-1)^d G(0)`；`Res(G,1−X)=G(1)`，其两个 `(-1)^d` 因子相消。这里 i=2 时 G' 是非零常数、次数 0，乘法公式仍成立。

另一方面 `i*d` 为偶数，交换 F,G 不引入符号，导数等式给

`j^i Res(G,F)=Res(F,F')=(-1)^B a Disc(F)`。

因为 `B=d+B'`，可消去共同符号，得到

`i^d * a * Disc(F) = j^i * b * G(0)*G(1)*Disc(G)`。

代入 `j*b=i*a`，在整域中消去非零 a 和一个 i：

`i^(i−2) Disc(F)`
`= j^(i−1) * choose(k,i−1) * choose(n−1,i−1) * Disc(G)`。 **(R)**

端点：i=2 时 `Disc(G)=1`，(R) 正好为 `Disc(F)=j*k*(n−1)`。i=3 时乘上低阶 `Disc(G)=(j−1)k(n−2)`，得到 `12 Disc(F)=j²(j−1)k²(k−1)(n−1)(n−2)²`，与旧批源公式相符。这两项是归一化诊断，不是无限族证据。

## 足够的次数上界

从线性基例 `Disc(F_1)=1` 和 (R) 归纳：所有合法 F 的判别式为正。因为 `i^(i−2)≥1` 且 `choose(a,d)≤a^d`，(R) 给

`Disc(F_i) ≤ n^(3(i−1)) Disc(F_(i−1))`。

后继对象的 n 为 `n−1≤n`，故归纳得到

`0<Disc(F_i)≤n^(3*i*(i−1)/2)`。

这是未取消阶乘的较松常数界，但最高 n 次数与精确 Jacobi 乘积完全相同。主线程可用 `choose(n,i)≥(n/2)^i/i!` 与内容幂下界接出显式高度。精确乘积若本轮来不及，不应阻止先闭合这个充分版本。

## 下一项可证伪检查

先在固定版编译通用 `discr_C_mul` 与只接受具体一阶多项式等式的结果式降阶，再接实际系数恒等式；每个条件接口只记为辅助，不记为实际 F 的结论。所有编译由主线程协调单进程时隙。预计 06:25Z 向主线程报告首次 Lean/API 风险结论。

## 06:20Z 首次路线检查点

当前累计约 22 分钟。已向主线程提前交付：

- `lean/DiscriminantAlgebra.lean`：从 `resultant_deriv` 证明完整 `2deg−2` 次数的内容缩放；从一阶多项式等式证明通用精确判别式下降。
- `lean/JacobiIdentity.lean`：实际逐系数下降恒等式、实际线性基例、实际判别式下降、实际判别式正性归纳。没有把所求公式、非零性、根分离性放进最终定理假设。
- 两文件为尚待编译的完整候选，没有占位证明或新公理。实际采用的首项、系数、端点与导数接口来自同批 `CoefficientContent.lean`；该文件由另一负责人写入并另行验收。
- 本地 `.lake/packages/mathlib` 已恢复可读，`git rev-parse HEAD` 实际核实为 `0df444a360eaa60ab8c11dca51a86af692955474`。尚未自行运行任何 Lean 进程。

主线程补出的正规化版本：令 `Δ_i=(i!)^(2i−2)Disc(F_i)`，由 (R) 及两个 `choose=descFactorial/factorial`，精确得到

`Δ_i=i^i*j^(i−1)*(k)_(i−1)*(n−1)_(i−1)*Δ_(i−1)`。

因每个下降阶乘的各因子均≤n，归纳可得

`Δ_i≤(∏[ν=1..i]ν^ν)*n^(3*i*(i−1)/2)`，

于是平方后

`Δ_i²≤i^(i*(i+1))*n^(3*i*(i−1))`。

这一版本保留关键阶乘消去。`ScaledDiscriminant.lean` 由 coefficients 负责人实现；主线程承担最终高度幂消去。新贡献是源公式之外的独立代数重建及其形式化候选，不主张该已知数学公式首创。实际前沿尚未改变：编译、传递公理及最终消费者闭合仍待完成。

## 06:38Z 开发编译进展

主线程报告并保存 `verification/dev-20260909T063845949192Z`：

- 固定 Lean 4.33.1 已实际编译 `DiscriminantAlgebra.lean` 成功。
- `discr_C_mul`、`content_pow_dvd_discr`、`discr_of_lowering` 三项传递公理输出均限于标准集合。
- 这是通用代数核心的开发验证，实际 `coefficientPolynomial` 的下降等式、正性以及全高度消费者还待编译；不计作最终全链验收。
- 自由次数、非首一缩放、符号及最后非零首项消去的接口已不再是静态猜测。原截止不变，未启用延期。

## 06:48Z 实际多项式核心通过及交接

已直接读取并核实两份开发日志：

- `verification/dev-20260909T063845949192Z/000-DiscriminantAlgebra.log`：`discr_C_mul`、`content_pow_dvd_discr`、`discr_of_lowering` 全部通过。
- `verification/dev-20260909T064656452724Z/006-JacobiIdentity.log`：`coefficientPolynomial_lowering`、`coefficientPolynomial_discr_one`、`coefficientPolynomial_discr_step`、`coefficientPolynomial_discr_pos`、`coefficientPolynomial_discr_ne_zero` 全部通过。

每项实际打印的传递公理精确为 `[propext, Classical.choice, Quot.sound]`。这里是固定 Lean 4.33.1、固定 mathlib 提交上的开发编译，尚不替代主线程安排的全新项目对象验收；没有独立实现的第二个内核。源码保持不变，等待整链验收。

实际证明的关键定理精确覆盖所有自然数 `n i j` 满足 `2≤i`、`i≤j`、`i≤n−j`、`j≤n`：

`(i:ℤ)^(i−2) * (coefficientPolynomial n i j).discr`

`= (j:ℤ)^(i−1) * choose(n−j,i−1) * choose(n−1,i−1)`

`  * (coefficientPolynomial (n−1) (i−1) (j−1)).discr`。

在同样合法性且 `1≤i` 下已证明该实际判别式严格为正，因而非零。线性基例本身不引用递推。原题 `1≤i<j≤n/2` 蕴含全部这些前提，没有削弱成另一个多项式或把判别式结论作为参数。

首轮 `JacobiIdentity` 失败诊断保留于 `verification/dev-20260909T064447443898Z/009-JacobiIdentity.log` 及同目录失败源码快照。三个根因均为 Lean 表达/API：自然数到整数的后继 cast 未展开、对已经是 `r+1` 的索引重复重写 `Nat.succ`、一般 `simp` 过早拆开常数多项式 `C`。修复不改数学声明；失败传播输出中的占位公理没有被接受。当前只剩不影响证明的 linter 提示，依主线程要求暂不为这些提示扰动已通过源码。

实际前沿变化：原先“实际 F 的非零判别式和有效次数界依赖未形式化的 Jacobi 来源”中的非零性与精确降阶障碍已关闭。`ScaledDiscriminant.lean` 负责人把已证下降接成保留阶乘的平方次数界；主线程把它接到实际完整大素数部分和显式高度。最后的原题消费者及统一验收由主线程报告，不能仅由本文件宣称全题完成。

本子任务用时约 49 分钟；未运行自行安排的 Lean/实验进程，未派子任务，未提交或推送，未更改其他负责人文件。没有未解决的数学阻断留给下一位；具体下一项检查是主线程完成 `ScaledDiscriminant` 的自然绝对值接口修复并执行全链新对象/传递公理验收。原截止 08:58:52Z 不变，未延期。
