# Cauchy 核心的最小形式接口

本文保留最初的义务分解和失败诊断。后续实际实现已经由上下半平面
矩形拼接完成 Cauchy 核心，见 `implementation.md`、主线程交付的
`rectangle-cauchy.md` 与 `jump-integral.md`。下文“当前缺口”“拟用”等
措辞均描述该路线选择时的历史状态，不是最终验收状态。

取 `a_j=(4*j+1)^2`、`b_j=(4*j+3)^2`（`j<s`），显式定义

```lean
def slitPair (a b : ℝ) (z : ℂ) : ℂ :=
  (z - b) * Complex.sqrt ((z - a) / (z - b))
def slitRoot (s : ℕ) (z : ℂ) : ℂ :=
  ∏ j ∈ Finset.range s, slitPair ((4*j+1)^2) ((4*j+3)^2) z
```

在 `ℂ \ ⋃j [a_j,b_j]` 上，分式在 `Complex.slitPlane`，因此每对分支
用 `Complex.differentiableAt_sqrt` 及乘除微分可直接定义，无需解析粘合
作为额外公理。在右实轴上每项为正，平方为对应两因子。

注意：`Complex.sqrt` 对负实轴取正虚部，但上半平面经该分式落到下半平面。
所以 `slitPair` 在割线上的直接函数值对应下侧边界；不能把它直接声明为
上侧连续。上侧可另用 `sqrt(z-a)*sqrt(z-b)`，或由下侧负实轴极限计算。

真正缺少的定理需最终给出（`q` 为上面整系数级数的次数 s 多项式部分）：

```lean
∀ s : ℕ, 1 ≤ s → ∀ z : ℝ, (4*s-1)^2 < z →
  q(s,z) - Real.sqrt (∏ i ∈ Finset.range (2*s), (z-(2*i+1)^2)) =
    (1 / Real.pi) * ∑ j ∈ Finset.range s,
      (-1 : ℝ)^(s-1-j) *
      ∫ t in (4*j+1)^2..(4*j+3)^2,
        Real.sqrt |∏ i ∈ Finset.range (2*s), (t-(2*i+1)^2)| / (z-t)
```

所有幂和自然数转实数在实际 Lean 声明中须显式处理。此展示声明不算通过。
只要这个等式成立，正核平移比较可给误差正性；比较两个 z 的正核差可给
严格递减，因此不必另外证明积分号下求导。

## 已检查的 pinned API 与未直接覆盖的步骤

`Mathlib.Analysis.Complex.CauchyIntegral` 提供矩形边界积分为零，特别是
`Complex.integral_boundary_rect_eq_zero_of_continuousOn_of_differentiableOn`，
要求闭矩形上的连续性和开矩形内部的全纯性。它没有任意有限割线挖孔后的
边界表示，不能一次调用就得到本任务有向求和。

`Mathlib.Analysis.Complex.SqrtDeriv` 给 slitPlane 上的导数与连续性。
`Mathlib.Analysis.SpecialFunctions.Complex.Log` 已给负实轴上侧的
`continuousWithinAt_log_of_re_neg_of_im_zero`，以及下侧的
`tendsto_log_nhdsWithin_im_neg_of_re_neg_of_im_zero`。平方根仍需通过
exp(log/2) 合成这些边界值，且零端点需单独范数估计。

拟用矩形拼接的新增基础步骤是：

1. 显式配对分支的 slitPlane 判据、平方恒等式和全纯性。
2. 上下边界跳跃及端点连续趋零，包含方向符号。
3. 在无穷处证明 `slitRoot(s,w)-q(s,w)=O(1/w)`。这里现已找到不要求解析
   级数收敛的实现路线：q²−B 的次数≤s−1，显式分支除 w^s 趋于1，q除
   w^s也趋于1；用 `f−q=(B−q²)/(f+q)` 直接得到所需衰减。
4. 对避开各割线的矩形区域分割，逐矩形使用 Cauchy-Goursat，消去公共边。
   待求点的留数可用局部 Cauchy 或去除极点函数。
5. 内边界高度趋零、端点宽度趋零、大矩形趋无穷，证明每段极限和一致控制。

第 4、5 项是当前标准 API 不能直接代替的组合义务，第 3 项也是单独缺口；
目前不声称已经完成多割线表示或完整 quarter 消费者。

进一步简化第4项的候选：上半平面用 `∏sqrt(z−b_i)`，下半平面用
`(−1)^s∏sqrt(b_i−z)`；分别对 `dslope(f−q,z)` 套上下矩形 Goursat。
两矩形相加后实轴只剩割线跳跃，外方形的主项是 `−(f(z)−q(z))/w`。
这样无需多孔区域分割，只需计算外方形1/w积分为2πi并控制剩余项。
`Complex.sqrt_eq_real_add_ite` 还可以直接证明闭上半平面连续性，无需先
组合 Log 的边界极限。它与 slitPair 的联系及无穷衰减仍待实际实现。

## 另一个已记录、尚未证明的代数替代

精确有限诊断 `s=1..12`、奇数 `U=1,3,..,33` 发现整数多项式 Q_s(U)
在每个 s 上的二进赋值相同，样本值为
`2,6,5,14,7,17,10,30,11,27,14,41`。它们满足候选公式
`V(s)=4*s-3*t+popcount(t)`，t 为 s 的奇数部分。
若全 s 证明固定赋值，则 Q_s(Y)=2 Q_s(X) 自动矛盾，可绕开尾项符号。

当 s 为奇数，平移到 U² 后根差除8为三角数差，首初等对称和为奇数。
binomial(1/2,j) 的二进分母严格递增，给第 s 系数的唯一最小赋值，解释
候选 `s+popcount(s)`；s 为偶数尚缺递归分簇论证。该局部解释和有限数据
没有被作为全范围证据，当前优先推进原 Cauchy 核心。
