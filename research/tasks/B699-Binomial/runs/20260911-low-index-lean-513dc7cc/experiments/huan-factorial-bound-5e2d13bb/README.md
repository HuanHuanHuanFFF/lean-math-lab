# 无 Stirling / π 的阶乘前因子界

本目录是固定基线 `9d4228e3ed0de4bb6b8e555ca59af3f53d578c67` 的有界准备交付，唯一负责人 `/root/bft_sequence_lemma`。只研究 `(c,d)=(3,2),(15,8),(15,11)`、`δ=0,1`。**所有 Lean 文件均为未编译候选；本子任务没有运行 Lean。**

已形成完整的数学推导和精确有限系数证书，且候选已从实际阶乘定义接通两 δ、精确递推、归纳上界及统一常数；没有仅以想要的阶乘递推当作最终假设。下一步由主线程按组串行编译并审计公理。

## 原式及范围

来源为 [BFT 2007-02-26 作者稿](../../../20260911-web-i18-6f4334c9/reviews/huan-i18-5e2d13bb/publication/BFTpaper0207.pdf)，SHA256 `0df18ee8d108f658812ac05d1f8947b3dcc28b70d17f268acd7c871e7e7c392c`。原稿 §3 式 (3.1)–(3.3)，PDF 第 9 页的阶乘因子为

\[
\frac{(A+B+C+1)!}{A!B!C!}.
\]

第 10 页取 `A=C=n=dm-δ`、`B=cm-n-1=(c-d)m+δ-1`。所以本任务准确目标为

\[
F_{m,\delta}=\frac{((c+d)m-\delta)!}
 {(dm-\delta)!^2\,((c-d)m+\delta-1)!},\quad m\ge1,
\]
\[
\beta=\frac{(c+d)^{c+d}}{d^{2d}(c-d)^{c-d}}.
\]

Lean 的 `factorialTerm c d delta m` 逐项使用自然数阶乘，先投射到 `ℚ`，再做有理数除法；不是自然数整除。所有最终定理显式要求 `1≤m` 和 `δ=0∨δ=1`。定义在域外由于自然数截断减法仍然有值，**不把这些域外值认作原稿结论**。

特别地，`(c,d,δ,m)=(3,2,0,1)` 对应 `A=C=2,B=0`。原稿 §3 开头先要求 `A,B,C` 为正整数；因此本任务的 `m=1` **纯阶乘基例**不能自动授权使用这一 Padé 积分端点。该组 `δ=0,m≥2` 及本任务其余五组的 `m≥1` 已无这个零端点问题；积分表示的证明仍须另外完成。

## 精确推导

写 `a=c+d,b=c-d`，对正整数 `m` 定义

\[
U(m)=\prod_{j=1}^{a-1}(am+j),\qquad
W(m)=\left(\prod_{j=1}^{d-1}(dm+j)\right)^2
     \prod_{j=1}^{b-1}(bm+j).
\]

空积取 1。普通阶乘递推给出

\[
\frac{F_{m,1}}{F_{m,0}}
 =\frac{(dm)^2}{(am)(bm)}
 =\frac{d^2}{c^2-d^2}.
\]

这是实际等式，尤其 `(15,11)` 的比 `121/104` 大于 1，不能默认 `δ=1` 更小。两个 δ 的相邻比完全相同：

\[
R(m)=\frac{F_{m+1,\delta}}{F_{m,\delta}}
 =\frac{aU(m)}{bd^2m(m+1)W(m)}.
\]

原始未约分形式也保存在计算脚本中：其分子为
`∏_{j=1-δ}^{a-δ}(am+j)`，分母为
`(∏_{j=1-δ}^{d-δ}(dm+j))² ∏_{j=δ}^{b+δ-1}(bm+j)`。

令约分后的正有理数 `β=N/D`。目标比较

\[
R(m)\le\beta\frac{(m+1)^2}{m(m+2)}
\]

在正分母下等价于

\[
H(m):=Nbd^2(m+1)^3W(m)-aD(m+2)U(m)\ge0.
\]

三组均在 `x=m-1` 后得到严格正系数多项式。`factorial-certificates.json` 保存其正整数 content 和升幂顺序的 primitive coefficients；Lean 候选从全部字面量重新用 `ring` 检查因式表达与 Horner 表达的恒等式，再用正性证明不等式，没有把 Python 的布尔输出当作证明。原始两 δ 清分母后的残差分别为 `m(m+1)H(m)`、`m²H(m)`，脚本已独立展开验证这两个精确多项式恒等式。

| `(c,d)` | `β` | `F₁,₀` | `F₁,₁` | `Fₘ,₁/Fₘ,₀` | `H(x+1)` 次数 |
|---|---|---:|---:|---|---:|
| `(3,2)` | `5^5/2^4=3125/16` | 30 | 24 | `4/5` | 3 |
| `(15,8)` | `23^23/(8^16·7^7)` | 22086194130 | 8779605120 | `64/161` | 21 |
| `(15,11)` | `26^26/(11^22·4^4)` | 42184833600 | 49080431400 | `121/104` | 24 |

第一组的完整残差为

\[
H(x+1)=20(8712+16404x+10250x^2+2125x^3).
\]

其余两组全部精确系数保存在 JSON 中；没有必要把长整数复制到报告。对每个 δ，令

\[
K_\delta=\frac{2F_{1,\delta}}\beta.
\]

从 `m=1` 的等式出发按上述递推归纳，得到

\[
F_{m,\delta}\le K_\delta\beta^m\frac m{m+1}<K_\delta\beta^m.
\]

六个 `Kδ` 都严格小于 `1/2`，比较使用精确有理数。因此在这六组指定参数内，还有统一简式

\[
\boxed{F_{m,\delta}<\tfrac12\beta^m\quad(m\ge1).}
\]

其中 `(3,2)` 的精确 `K₀=192/625`、`K₁=768/3125`。其他四个约分值见 JSON；统一简式不改变指数增长率。

## 候选分层及主线程编译顺序

1. [FactorialCommon.lean](FactorialCommon.lean)：原始阶乘定义、阶乘乘积恒等式、普适两 δ 比例、正系数证书消费和归纳桥。
2. [Factorial3D2.lean](Factorial3D2.lean)：优先编译。已写出实际 `(3,2)` 的阶乘递推，无抽象递推缺口；最终根 `factorial_telescoping_3_2`、`factorial_uniform_3_2` 同时覆盖两个 δ 和全部 `m≥1`。
3. [Factorial15D8.lean](Factorial15D8.lean)、[Factorial15D11.lean](Factorial15D11.lean)：使用同一个消费机制，包含各自正系数证书与实际阶乘递推，最终根同样覆盖两 δ。这些较大恒等式也尚未编译。
4. [FactorialBound.lean](FactorialBound.lean)：三个组的合并入口。

共 28 条定理各附 `#print axioms`，尚无实际公理输出。所有库依赖均为固定 mathlib；未使用占位证明、新项目公理、`native_decide` 或 `Lean.ofReduceBool`。先验证共用模块和 `(3,2)`，再串行检查其余两组。Windows 若需要短路径 staging，由主线程按既有流程复制并改写导入，另存新哈希及验收；不要覆盖本冻结候选或旧记录。

下一条推荐命令只交接、不在本子任务执行。工作目录为当前隔离 worktree，PATH 使用主线程的固定 Lean 配置：

```powershell
& 'C:\Users\幻\.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe' `
  research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/verification/runner/verify_huan.py `
  --repo . --package-root D:/CodingProject/Math/.lake/packages `
  --memory-mb 3072 --timeout 900 `
  --root research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/experiments/huan-factorial-bound-5e2d13bb/Factorial3D2.lean
```

之后依次换为其余两组的根并沿用主线程已接受共用对象的哈希复用记录。900 秒是诊断上限，不是本轮研究总时限。

## 计算证据与仍缺的桥

- [check_factorial_bound.py](check_factorial_bound.py) 使用标准库整数卷积、`Fraction` 和阶乘生成三组全部系数，逐一检查六个原始残差的系数非负及精确约分关系；没有安装 Sympy，也没有扩大到其他参数。
- [independent_check.py](independent_check.py) 独立直接计算真实阶乘。对六组分别核对 `m∈{1,2,3,5,10,25}` 的递推、精细归纳界和统一半界，共 36 组；另在 `x∈{0,1,2,7}` 核对直接乘积残差与系数求值，共 12 组；六个 `K<1/2` 均以精确有理数比较通过。结果见 [independent-check.json](independent-check.json)。这些检查是有限计算，不单独证明无穷范围。
- 无限范围的数学根据是完整正系数恒等式和递推归纳。Lean 候选表达了这条完整阶乘链，但在编译、公理审计及源语义审读前，不能登记 Lean 接受。

这会给实际 Lemma 4.1 一条**较松常数的替代路线**，不等于证明原稿印刷常数。纸面上 `β=α(c/d)^d`；令 `M_Q=(Q(s,z)/α(s))^d`、`I₁,δ` 为原稿 `C₁,δ` 的剩余积分，则“积分中取最大值”的分解会产生替代常数

\[
\widetilde C_{1,\delta}=K_\delta\frac{\beta}{Q(s,z)^d}I_{1,\delta},\qquad
\widetilde C_{2,\delta}=K_\delta\frac{\beta}{E(s,z)^d}I_{2,\delta},
\]

或把 `Kδ` 统一放宽到 `1/2`。本次没有实现这个积分步骤，也没有实现有理 `β` 到实数 `α(s)^d` 的幂换元。它们是明确的下一义务。原始积分表示、最大点、非对称 Padé 构造、`G` 下界、θ 输入与最终 B699 原题消费者仍分别待做，阶段 B 完整接受数没有增加。

证据分层：源式已读、纸面推导及精确有限计算已形成、Lean 候选已写、Lean 编译和公理审计未执行、独立技术接受及公开发布未发生。不作数学新颖性声明。
