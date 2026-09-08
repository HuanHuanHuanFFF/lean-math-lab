# Quarter Runge 独立数学复核

结论：未发现实质数学缺口、隐藏最终前提、符号错误或原题量词缩水。全
`s≥1,n<m` 原式消费者及等价的 `4∣k,4≤k` 消费者与已验纸面目标一致。
本次仅作源码与现存证据的独立复核；没有重编、没有修改 quarter 源码，
也不声称第三方包已全量源码重建或外部内核审计。

审查者：`/root/b677_bounds`，未参与 quarter 的 23 个源码实现；本次同时
维护独立的 B677 有限证书长编译。审查对象由 quarter owner 冻结，主线程
授权写入本报告。审查时间：2026-09-08T11:59:23.144910+00:00。

## 原量词和纸面对应

已对照前批 `20260908-lcm-distance-7cab35e/next-route-a/quarter-runge-bound.md`
及 `paper-acceptance/quarter-review.md`。目标为自然数 `s≥1,n<m`、
`P_(4s)(m)=4P_(4s)(n)`，其中 `P_k(t)=∏ i∈Icc 1 k,(t+i)`，推出

```text
n < 2^s*(4s)^(s+1),
n+4s < 2^(s+1)*(4s)^(s+1).
```

`Consumer.original_product_consumers` 正是该结论。
`four_dvd_product_consumers` 用 `4∣k` 消去 `k=4s` 并恢复 `s=k/4`，保留
全部此类自然数长度。只需要 `n<m`，没有加入 `n+k≤m`、`n>0`、有限长度
范围、系统存在性或误差控制前提。此高度界不声称有限高度区域为空，也
不声称原 B686 问题无解。

## 整数 q 与真实低次误差

`IntegerPairs` 的整数递归满足 `G=e²+cXG+X²G²`，其中
`c=a²+2a+2,e=a+1`。直接多项式恒等式证明
`(1-cX-2X²G)²=(1-a²X)(1-(a+2)²X)`；这里没有使用有限系数检查。
`PairProduct` 相乘覆盖全部相邻奇数对，并以常数项为 1 的平方根唯一性
与 centered 的 Catalan 构造对齐。

因此 `quarterPolynomial : ℤ[X]` 的整数性是实际构造所得，不是假设 q
的有理系数已经清分母。q 首一、次数 s；精确缩放恒等式将既有 centered
误差的次数界转成 `natDegree(q²-B)<s`，包括 `s=1`。这允许取 `L=1`，
替代纸面的粗分母 `L=2^(2s)`；最终消费者仍保留请求的原常数。

`AnalyticRemainder` 由反转多项式证明 `P(z)/z^s→coeff_s(P)`，再用
`f-q=(B-q²)/(f+q)` 推出实际余项趋于零。分母归一化趋于 2，故其最终
非零性由极限内部推出。没有把形式级数当作已收敛解析级数，也没有仅凭
平方误差非零就断言余项符号。

## 分支与 Cauchy 的方向

`HalfPlaneRoots` 在闭上半平面使用显式实虚部平方根公式证明连续。
下分支定义为 `(-1)^s*∏sqrt(a_i-z)`，把闭下半平面映入上述连续域。
这避免在主值平方根的负实轴上错误调用双侧连续性。上下分支平方都等于 B，
实轴下分支是上分支的共轭。

`RootAsymptotics` 同时证明上下分支除以 `z^s` 趋于 1；平方根比值的
实部非负用于排除错误的负号分支。归一化不仅是定义中的文字要求。
`BoundaryValues` 对第 j 个割线给
`jump=2i*(-1)^(s-1-j)*sqrt(|B|)`，间隙与端点跳跃均为零。

`RectangleCauchy.squareBoundary` 的底边、右边、顶边、左边方向确为
正向，`square_boundary_inverse` 直接计算其 `1/w` 积分为 `2πi`。
上、下矩形的轴线项相加给 `(fu-fl)/(t-z)`。用 `dslope` 正则化上半面
极点，mathlib Goursat 的所有连续与可微义务都实际提供；随后加回 `fu(z)/w`
产生 `2πi*fu(z)`。外边界估计以任意正 ε 和可选大半径完成，所得公式为
`fu(z)=(2πi)^(-1)∫jump/(t-z)`，没有把该表示作为前提。

实点延拓利用紧区间和 `z>R0` 的正距离，clamp 使参数积分的连续性可由
真正连续的全参数被积函数推出。`JumpIntegral` 沿所有相邻根分段，间隙
项归零，`t=u²` 换元的导数为 `2u`。分母由 `t-z` 改为 `z-t` 的负号
明确保留，最终 `upperRemainder=-ε`，因此 `q=sqrt(B)+ε`。

辅助表示在 `z>(4s+1)²` 使用，略强于纸面最右实际根之外的条件；最终
高度反证的所有点都经 `NumericalBound` 证明落在该域，不缩小原消费者。
这里只需要余项趋零和上述矩形估计，无须另交付更强的 `O(1/z)` 结论。

## 严格正性、递减和常数

`RealShift` 先证明无除法的精确移位恒等式，再在明确的非零点和正分母
区域证明绝对值严格增加。对每个相邻有效割线的内点，两次位移均处于
合法区域；端点零值用非负性处理。`CutIntegrals` 由连续性、逐点比较
及一个实际严格点得到每段正积分和相邻严格增长。

`alternatingFromRight_pos` 以两项归纳处理所有 s，包括 `s=1`，所以
从最大项开始的交错和严格正。严格递减另用混合核
`2u*sqrt(|R(u)|)/((z-u²)(w-u²))`：当 `z<w` 时，差分等于 `(w-z)` 乘
该混合核。相同的移位比较证明其交错和严格正，从而 ε(w)<ε(z)。
没有对交错和逐项错误套用单调性，也没有未经证明地在积分号下求导。

`IntegralErrorBounds` 的根数是 `2s`；先用每因子绝对值至多 `k²`
再开方，得到密度至多 `k^(2s)`。割线长度、`2u`、段数和 `π≥1`
组合成 `ε(z)≤k^(2s+2)/(z-k²)`，未漏掉开方指数或积分雅可比。
`NumericalBound` 在 `x≥2*k^(s+1)` 下给 `x²>(k+1)²` 和 `2ε(x²)<1`，
严格不等式包括阈值等号。请求的 `n≥2^s*k^(s+1)` 经中心坐标
`x=2n+k+1` 蕴含这个辅助阈值。

原式中心配对精确给 `R(y)=4R(x)`；`x<y` 与 x 的正性给 `x²<y²`。
q 的整数性使 `H=q(y²)-2q(x²)` 为整数，实际表示给
`H=ε(y²)-2ε(x²)`。严格正性、严格递减和数值界共同给 `-1<H<0`，
由整数性矛盾。第二端点界随后仅由自然数幂单调性和第一界推得。

## 已核验的证据边界

现存完整 fresh 记录为
`verification/quarter/20260908T114117928142Z/verification.json`，
其 SHA-256 为 `ae94b0859cfc445d2b5da42e6e46f8c516e3bc369b2df089151c648b7001c50f`。本次重新读取该 JSON、实际 AxiomAudit
原始日志和当前源码：23 个记录均 exit 0、日志存在、当前 SHA 与原记录
一致，当前 manifest SHA 亦一致。18 个关键声明的原始日志全部仅含
`propext, Classical.choice, Quot.sound`；空白名单反向检查确实 exit 1，
并被 runner 识别为预期拒绝。

本报告的独立结论来自上述源码数学复核；形式重编及公理结果归属于该
既存 fresh 证据。没有将 density 的另一份验收代替 quarter 验收。

## 当前 23 源 SHA-256

| 源码（本批相对路径；历史依赖保留仓库路径） | SHA-256 |
| --- | --- |
| `lean/quarter/SlitBranch.lean` | `2c0ec5d7f032da6116757eaa6847a187438ec03d9acfca2a9f648309b8472f15` |
| `lean/quarter/HalfPlaneRoots.lean` | `31175e4372822d26be16b1e2f29d59fd75da78ec665c7ebd727f7bc35e398166` |
| `lean/quarter/RootAsymptotics.lean` | `586a7881fffd30e2af755b31015ac9c6ac3159ee8e54dd86d19329333229e179` |
| `lean/centered/CatalanConstruction.lean` | `b6bdae846b71de19f7c8068c127376071d1f97d152351294e7243417c2919e79` |
| `lean/quarter/IntegerPairs.lean` | `3dafd47dcd0a4251cd01c53da892a379a0a985ce88fa2a942efe604cd8838778` |
| `lean/centered/RootPolynomial.lean` | `2a112ac4c141965c3c7404b8df83fd8aed19973dd3b6b6a0e0ea27ae17891a58` |
| `lean/centered/ErrorPolynomial.lean` | `1a21a580b75b3356fb737d21b3f618716c8f2afc4b5b05f9b1682bc82afaab2d` |
| `lean/quarter/PairProduct.lean` | `ba371557b12c656a4f478e7acf0d1cba2dd63e1e28b060a7729e0149675b94cf` |
| `lean/quarter/QuarterPolynomial.lean` | `e0da807a6b928b71e1052ab9127aa7cd2c05e7870913c8bc0968edde6694fd91` |
| `lean/quarter/AnalyticRemainder.lean` | `bce75f81120ecede7408ada5fb20a6bd25bb6ad4280e3fef9c1b2bf801acc2cb` |
| `lean/quarter/BoundaryValues.lean` | `e7074cd4d3de286a1507dcb25be9a0462d4e225c73e671da7feeb015587adc4f` |
| `lean/quarter/RealShift.lean` | `4cc814cf65f63927cd2340383a71940fac6809dfc03619f47ce63a3dd4d77e99` |
| `lean/quarter/CutIntegrals.lean` | `970241b7218731d105409d8e82d434cd327328aa8a4d689f4bd39e322cf2dc3e` |
| `lean/quarter/RectangleCauchy.lean` | `d94783dcd9b19011684839d2e245463d8c210f5032c1e3488e11ff7b4e1ef8e3` |
| `lean/quarter/JumpIntegral.lean` | `64f1ee4e22e4a5718fe41e44070f1a7f77f05642c17cf8fd6234e36ed4754fa6` |
| `lean/quarter/MixedCutIntegrals.lean` | `0e640c03a844d40fefc29fcbdd71e7920bdc465e2f7b316bd2a06445b989c3bb` |
| `lean/quarter/IntegralErrorBounds.lean` | `05cc3057759c0db7751ec683f40545e11f47c18f7505bfc6e20465dc85690408` |
| `research/tasks/B686-Four/lean/Round3TwoScaleGap.lean` | `74a34e6baff218665cc8eb4adadd4f127d5303b1e45943730f0eac00b3b4791a` |
| `lean/centered/CenteredRunge.lean` | `6190d057d5f234063799c53b32fe4b37b689145a8f73026b8dd1359c09dfd78e` |
| `lean/quarter/RealError.lean` | `b521f36c029536dd631bd138af115790750d09bedecfd249e154273551000138` |
| `lean/quarter/NumericalBound.lean` | `4357ae5f5538bbab7cde7ce332f0ff9528a7b7c553a9afce0528e16eaae7f204` |
| `lean/quarter/Consumer.lean` | `b68044750f388983ebcb4c93e7bcee7349c283f9caac45ed2b2bf33a4bddcc88` |
| `lean/quarter/AxiomAudit.lean` | `0b13f5d516184b97350548307f3da2b2fd6823acdd159b9506d3926699dcda96` |
