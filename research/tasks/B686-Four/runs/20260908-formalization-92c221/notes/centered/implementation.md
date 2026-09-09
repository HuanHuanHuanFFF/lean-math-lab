# 全偶中心化 Runge：实施结构与纸面对照

本批没有改变目标、常数、自然数域或偶数长度的完整量词。
以下说明实际 Lean 构造与已验收纸面证明的等价调整。

## 整数构造

`CatalanConstruction.lean` 以 mathlib 的整数 Catalan 递推构造
`S(z)=1−2z C(z)`，直接证明 `S(z)^2=1−4z`。对每个整数根参数 `a_i`
使用 `rescale (a_i^2)`，有限乘积记为 `S_r`。令 `J=r/2`，
`D=trunc(J+1) S_r`。实际使用

```
A(T) = [reflect r (expand 2 D)](2T),
L = 2^r.
```

与纸面的 `L=4^J` 相比，偶数 r 时相同，奇数 r 时同时将 A、L 放大 2。
仍有精确 `L=2^r`，处于纸面用于估计的 `1≤L≤2^r` 范围内。
所有系数从构造起就在 `ℤ`，不另外假设清分母成立。

`squareRootProduct_coeff_bound` 用有限卷积归纳与 `sum_two_pow_le` 证明

```
|[z^j]S_r| ≤ 2^(r+j) (4k²)^j.
```

这替代纸面的弱组合计数上界。反序缩放后实际得到更紧的统一系数界
`|A_h|≤2^(2r+J)k^(r−h)`，足以保留原 `Ecoef` 常数 `B=2^(8r)`。

## 非零余项与次数

`ErrorPolynomial.lean` 证明截断平方在 `j≤J` 的全部系数精确相同，
再经 `Polynomial.reflect`、`expand 2` 和整数缩放得到

```
E=A²−2^(2r)R,
natDegree E<r,
所有奇数次系数为0.
```

简单根证明独立于任何“首个候选余项系数”猜测：`R(1)=0` 且
`R'(1)≠0`，若 `E=0`，从 `A(1)^2=0` 和微分恒等式立即矛盾。
因此真实领先系数非零。常数余项分支在数值链中显式处理。

## 估计与整数矛盾

`WeightedEstimates.lean` 在整数上证明有限几何加权和及多项式求值界，
没有使用实数平方根。A 删除领先项后只需要通常的一阶次数降低；
E 的偶次性保证删除领先项后至少降低两阶，这保留纸面关键节省。

`NumericalControl.lean` 从以上系数性质推导 `ValueControl` 的全部六项
整数不等式。`CenteredRunge.lean` 将这些值接入历史
`Round3TwoScaleGap.not_four_of_two_scales`。它还单独证明原题的 `Icc 1 k`
乘积与中心配对恒等式，避免索引或自然数减法替换原题。

`Consumer.lean` 把阈值 `32*2^(8r)*(2r)^(r+1)` 代入，并回到原来的
`k,n,m : ℕ`。最终三个消费者都只有 `2≤k`、`Even k`、`n+k≤m`、
原乘积等式四项前提。

## 验证检查点

截至本记录创建，构造、结构与数值控制模块已分别在 fresh 项目输出目录通过：

- `verification/centered/20260908T095529615302Z/verification.json`：
  Catalan、根多项式、误差多项式结构及非零性。
- `verification/centered/20260908T095529614735Z/verification.json`：
  系数上界、原题配对、加权求值、数值控制，包含历史 TwoScaleGap 重编。

这些检查没有使用旧项目 `.olean`。最终消费者和可失败传递公理审计仍在运行，
以随后最终验收记录为准。此前失败全部是 Lean API、类型推断或 tactic
改写定位问题；没有找到纸面结论的数学反例。完整结果不以有限 fixtures 代替。

最终更新：消费者与可失败传递公理 guard 已于同日通过，完整证据为
`verification/centered/20260908T095933132002Z/`，见 `acceptance.md`。
