# 整数近似桥：未编译候选交付

本目录的产物是 [IntegerApproximationBridge.lean](IntegerApproximationBridge.lean)，固定基线 `9d4228e3ed0de4bb6b8e555ca59af3f53d578c67`。负责人 `/root/bft_sequence_lemma`，唯一写入范围为本目录。本轮没有总时限；本子任务的有界检查点是交付完整候选与原式映射，由主线程另行串行编译。没有运行 Lean，没有新增阶段 B 接受项，没有提交或发布。

## 更正及实际来源

初始派工将 BFT Lemma 4.1 概述为“整数近似序列推出无理逼近下界”。读取原稿后发现内容不符，先向主线程报告；主线程明确撤回该概述，并要求继续准备 §7 实际使用的整数桥。这里保留更正，不将辅助桥冒称为 Lemma 4.1。

固定来源是 Bennett–Filaseta–Trifonov，*On the factorization of consecutive integers*，2007-02-26 作者稿：[本地原件](../../../20260911-web-i18-6f4334c9/reviews/huan-i18-5e2d13bb/publication/BFTpaper0207.pdf)，[作者网站](https://personal.math.ubc.ca/~bennett/BFTpaper0207.pdf)。SHA256 已核对为 `0df18ee8d108f658812ac05d1f8947b3dcc28b70d17f268acd7c871e7e7c392c`。本稿共 35 页；本说明用 PDF/印刷页 5–10、26–27。它是当前实际核对的版本，不声称已比对最终期刊排印本。

实际 Lemma 4.1 在第 10 页，继承正整数互素 `c>d`、`s=c/d`、`0<z<1` 的参数背景，使用 `A=C=n`、`B=cm-n-1`，并令 `n=dm-δ`、`δ∈{0,1}`。它给出两条严格不等式：

\[
 |Q_n(z)|<C_{1,\delta}Q(s,z)^{dm},\qquad
 |E_n(z)|<C_{2,\delta}E(s,z)^{dm}.
\]

不是误差序列结论。完整常数及域的抄录见 [SOURCE-MAP.md](SOURCE-MAP.md)。§3 最初以正整数 `A,B,C` 定义多项式；零端点若需采用，应单独核对延伸，不能默认为当前候选已覆盖。

## 核心推导及可调用结果

令两行整数为 `(P₀,Q₀)`、`(P₁,Q₁)`，且 `P₀Q₁-P₁Q₀≠0`。若 `v≠0`，两整数 `Q₀u-P₀v` 和 `Q₁u-P₁v` 不能同时为零，因为

\[
(P_0Q_1-P_1Q_0)v
 =Q_0(Q_1u-P_1v)-Q_1(Q_0u-P_0v).
\]

选出的非零整数绝对值至少为 1。于是对 `r≥0` 和 `|ru-sv|≤D`，有

\[
\begin{aligned}
r&\le r|Qu-Pv|\\
 &=|Q(ru-sv)-(rP-sQ)v|\\
 &\le |Q|D+|rP-sQ|\,|v|.
\end{aligned}
\]

`cross_ne_zero_or`、`integer_gap_lower_bound`、`exists_integer_gap_lower_bound` 实现这条代数链；输入都是显式整数、其计算出的行列式和误差界，没有把所需下界装进新定义或新公理。泛型的两索引接口允许直接传 `dm`、`dm-1`，不借自然数减法偷偷扩域。

`bft_7_4_of_two_rows` 处理共同非零整数缩放。源式对应如下：

| Lean 输入 | BFT §7 输入 |
|---|---|
| `r`, `s` | `p^(k₀cm)`, `q^(l₀cm)` |
| `a`, `b` | 原稿 `a^(cm)`, `b^(cm)`；这里已吸收幂 |
| `u`, `v` | `x₁''`, `x₂''` |
| `P i`, `Q i` | 第 26 页除以 `G(c,d,n)` 并清分母之后的整数 `P,Q` |
| `r*a*P i-s*b*Q i` | (7.3) 的整数 `E` |
| `b*Q i*u-a*P i*v` | 原文证明非零的整数 |

因此输出为某个给定索引 `i` 上

\[
r\le bD|Q_i|+|r aP_i-s bQ_i|\,|v|.
\]

实际应用中 `v>0`，去掉 `|v|` 就是 (7.4)。证明还显式验证缩放后的行列式等于 `ab(P₀Q₁-P₁Q₀)`。**这不证明原始 Padé 行列式、归一化整数性或误差估计**；这些是来源明确的后续构造义务。

同一候选的后半部分给出独立的有限索引实数推论：若 `q≠0`、`B>0`，两行均满足

\[
 |Q_i|\le B,\qquad |q|\,|Q_i\alpha-P_i|<\tfrac12,
\]

则 `rational_approximation_lower_bound_of_two_rows` 给出

\[
 \frac1{2B|q|}<\left|\alpha-\frac pq\right|.
\]

推导使用整数 `Q_ip-P_iq` 及恒等式

\[
 Q_ip-P_iq=q(Q_i\alpha-P_i)-Q_i(q\alpha-p).
\]

这对任意实数 `α` 有效，无须先假设无理性，也无需约分 `p/q` 或要求每个 `Q_i` 非零。负整数 `q` 由绝对值统一处理。有限估计的假设不保证某个特定无限序列存在，也不提供完整无理度指数。

边界检查：严格误差假设不能改成 `≤1/2` 而保持严格结论。取 `α=1/2,p=0,q=1,B=1`，两行 `(P,Q)=(0,1),(1,1)` 的行列式非零，两个误差均为 `1/2`，结论会变成错误的 `1/2<1/2`。另若撤去 `v≠0`，取目标 `(u,v)=(0,0)`，任意独立两行的两个交叉整数仍都为零。它们是直接算术边界观察，未记作 Lean 验收。

## 本次实际采用和仍缺的依赖

采用的库源码固定为 mathlib `0df444a360eaa60ab8c11dca51a86af692955474`，工具链 pin 为 Lean `4.33.1`。本工作树没有本地包目录；只读检查了固定依赖根 `$mathlibPackageRoot/mathlib` 指向的同一固定源码。候选仅导入标准 mathlib；每条交付定理均附 `#print axioms`，尚未产生执行输出。

2026-09-11 的有范围先例检索查看了 mathlib 的 `NumberTheory/DiophantineApproximation/Basic.lean`、`NumberTheory/Real/Irrational.lean`、`NumberTheory/Transcendental/Liouville/Basic.lean` 的相关声明，并复用了 `Int.one_le_abs`、`Int.cast_abs`、`Int.cast_le`、`abs_add_le`、`abs_mul`、`div_lt_iff₀` 和 `div_mul_cancel₀`。未找到本次两行整数接口的可直接同形调用；这不是全库不存在或数学原创性的声明。

完整路线仍须：

1. 实现 §3 的 Padé 多项式和恒等式 (3.4)，证明 Lemmas 3.1/3.2 所给整数系数及非零行列式。
2. 在具体有理点清分母、除以 `G`，证明所得 `P,Q,E` 为整数，且原始非零行列式在两组可能不同的归一化因子下仍非零。本候选只处理已得到整数行之后的共同缩放。
3. 形式化实际 Lemma 4.1 的积分/最大值及常数界，再形式化 Proposition 5.1 的 `G≥L₁(s)^(dm)` 和严格门槛 `m>m₀`。本文件没有这些分析与素数估计输入。
4. 对来源指定的指标代入正确常数、处理有限初段及对数/指数桥，最终连接完整 B699 原题消费者。

如果今后采用标准无限序列假设 `|Q_n|≤k₀A^n`、`|Q_nα-P_n|≤l₀E^(-n)` (`A,E>1`) 并有相邻行列式非零，有限实数推论只差显式选出两个索引并把误差压到严格半界。例如选 `n` 使 `2l₀|q|<E^n`，再以 `B=k₀A^(n+1)` 控制相邻两行；想获得准确对数幂常数，仍须证明所选 `n` 的上界及实数幂换元。以上是未实现的普通序列桥说明，不能倒称为 BFT Lemma 4.1。

预期作用与实际状态：提供 (7.4) 下游直接可用的候选前置；全题的未知 `n,j` 区域没有因此改变，阶段 B 仍无新增完成项。研究为源对齐辅助工具；数学论证已写出；Lean、独立技术审读和公理审计均待执行；不作新颖性或发表声明。

## 最小下一编译动作

由主线程在资源空档串行执行。已有 huan 验证器会检查固定依赖、编译实际源码并执行公理审计，且不会把辅助定理算作完整目标。工作目录为当前 worktree，PATH 使用主线程已配置的固定 Lean；此命令只是交接，**本子任务未执行**：

```powershell
$python = Join-Path $env:USERPROFILE '.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe'
$repo = (Get-Location).Path
$mathlibPackageRoot = $env:MATHLIB_PACKAGE_ROOT
if (-not $mathlibPackageRoot) { throw 'Set MATHLIB_PACKAGE_ROOT to the fixed read-only parent containing mathlib and other pinned packages.' }
& $python `
  research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/verification/runner/verify_huan.py `
  --repo $repo --package-root $mathlibPackageRoot `
  --memory-mb 3072 --timeout 900 `
  --root research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/experiments/huan-bft-sequence-5e2d13bb/IntegerApproximationBridge.lean
```

这里的 900 秒只是首轮编译诊断上限，不是本轮研究总时限。候选没有项目源码导入，不需要复用任何其他研究结果的接受记录。首轮若有错误，应先保存日志并区分机械 API/类型问题、数学问题与资源问题；在真实编译和公理审计通过前，全部定理保持候选状态。
