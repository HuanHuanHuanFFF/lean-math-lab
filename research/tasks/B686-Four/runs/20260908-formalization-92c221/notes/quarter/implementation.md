# Quarter Runge 的实际证明链

目标始终为任意 `s≥1`、`n<m`、`P_(4s)(m)=4P_(4s)(n)` 的两个原常数
消费者；没有添加 `n+4s≤m`。本文件记录实际构造，最终检查结果另见
`acceptance.md` 和相应 fresh 输出中的 `verification.json`。

## 整数多项式部分

`IntegerPairs` 用整数 Motzkin 递归构造相邻两平方根因子的形式平方根；
`PairProduct` 相乘并用常数项为1的平方根唯一性，与既有 centered 的
Catalan 构造对齐。由此得到整系数 `quarterPolynomial s : ℤ[X]`，次数 s、
首一，且 `q²−B` 的次数严格小于 s。`QuarterPolynomial` 中的精确缩放
恒等式使这些次数断言复用既有已验构造。这个整数性允许后续取 L=1；
最终消费者仍输出原纸面要求的常数，不依赖额外分母假设。

## 真实复分支与 Cauchy 表示

`SlitBranch` 验证单对显式分支及其 slitPlane 判据。实际拼接采用
`HalfPlaneRoots` 的上下半平面平方根乘积，直接用平方根实虚部分公式
证明闭半平面连续，避免在割线上错误使用主值连续性。

`RootAsymptotics` 证明归一化分支趋于1；`AnalyticRemainder` 利用
`(f−q)=(B−q²)/(f+q)`、整数多项式次数界和反转多项式，证明真实余项
沿闭半平面无穷远趋于0。此步骤不需要形式级数的解析收敛定理。

主线程负责的 `RectangleCauchy` 从固定 mathlib 的矩形 Goursat 开始，
证明外方形 `1/w` 积分、上下矩形相加、无穷远外边界消失和实点延拓。
其实际跳跃公式仅假定所构造分支已证明的连续、全纯、衰减和紧支撑跳跃
性质；没有假定本任务要求的 Cauchy 表示。

`BoundaryValues` 给每个割线和间隙的有向跳跃及端点零值。主线程的
`JumpIntegral` 实例化通用公式，沿相邻根分段并作 `t=u²` 换元，得到

```
upperRemainder s z = −(ε_s(z) : ℂ),
ε_s(z) = (1/π) ∑ j<s (−1)^(s−1−j) J_j(z),
J_j(z) = ∫[4j+1,4j+3] 2u sqrt(|R_(2s)(u)|)/(z−u²) du.
```

这个表示在 `z>(4s+1)²` 成立；最终阈值全部落在该区域。表示的使用域
比最右根稍大，是辅助接口选择，没有缩小原题消费者的适用范围。

## 正核、递减与统一上界

`RealShift` 证明全实参数的精确平移恒等式，进而证明割线上密度在
`u↦u+4` 下严格增大。`CutIntegrals` 将正性和严格比较积分化，并用
两项归纳证明从右端开始的交替和严格为正。

`MixedCutIntegrals` 比较两个外部参数：差分核为
`(w−z)·2u sqrt(|R(u)|)/((z−u²)(w−u²))`。同一平移比较给出混合核的
交替和严格为正，所以 ε 严格递减；无需积分号下求导。

`IntegralErrorBounds` 对每个因子用 `|u²−a²|≤k²`（`0≤u,a≤k`），给出
`sqrt(|R_(2s)(u)|)≤k^(2s)`。每段长度2，总长2s；逐项绝对上界和
`π≥1` 推出

```
0 < ε_s(z) ≤ k^(2s+2)/(z−k²),  k=4s, z>k².
```

`NumericalBound` 由 `x≥2k^(s+1)` 推出 `x²>(k+1)²` 及 `2ε_s(x²)<1`。
用户要求的 `n≥2^s k^(s+1)` 经中心坐标 `x=2n+k+1` 蕴含这个辅助阈值。

## 原式消费者

`RealError` 把真实复分支表示还原为整数 q 的实值等式，并直接复用
`CenteredRunge.centered_equation_of_original`。若 `n<m`，则中心坐标
`x<y`，原式给平方根密度在 y 处为 x 处的2倍。因此整数

```
H = q(y²) − 2q(x²) = ε_s(y²) − 2ε_s(x²)
```

由正性、严格递减和误差上界满足 `−1<H<0`，矛盾。
`Consumer` 输出 s 参数版与 `4∣k,4≤k` 版原产品消费者。

## 工程边界

没有新代理、没有修改 pins、公共 Math 模块或历史来源。centered 只读
导入；主线程独占的两个 Cauchy 文件由主线程交付。本目录的
`AxiomAudit` 检查完整传递公理，fresh runner 使用新项目输出目录并带
空白名单反向检查。无外部内核复核声明。
