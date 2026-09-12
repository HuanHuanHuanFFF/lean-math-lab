# 最少形式化接合义务

状态：精确纸面目标，不是已验 Lean 声明。本轮不生成大量 Lean。所有已存在源码只读；目标可在后续获授权的新模块完成。

1. **实际 G 的 telescoping 实例**

   对 m≥1、δ=0或1，以 Gδ=qContent(7m−δ,4m+δ−1,7m−δ)，证明

       (16/3) R^(m−1)/(m+1)^2 ≤ (G0:Rat),
       (7m/2)(16/3)R^(m−1)/(m+1)^2 ≤ (G1:Rat).

   使用 I11DivisorFiveSeven.divisor_initial、divisor_rough_step、divisor_adjacent_eq 和 RationalFactorialDivisor.rationalDivisor_le_qContent，再实例化 ElementaryRate.lower_telescoping_from_step。最终调用者不提供 G、D-step 或 factorial 下界假设。无需展开 D(826)。

2. **固定数值选择器**

   新常量 H=65535、Z=800066819113475893826133、M=826，m(Y)=DiscretePadeSelector.leastExponent Z Y。

   四个短基、两项括区的指数比较、六项容量指数比較见 compressed-certificate.json。通过 ShortPowerBounds.conditions_from_short_bases 和 LeastExponent 的现有 API，得到 Y≥2^65535 时 m≥826 和

       5^(22000*m)≤Y^645 ∧ 7^(22000*m)≤Y^779.

   同一个 m 的 previous 上界不可丢弃。当前理论直接支持 u=397,v=5；括区 upper 使用单独 Z^16<2^1271。不要展开千万 bit 的最终容量幂。

3. **多项式损失与两 δ 行误差**

   实例化实际 q_content_identity、e_content_identity、standard_bounds_from_fixed_trees，树来自 I11FiveSevenFinalConsumers.actual_q_tree_family/actual_e_tree_family，m1 caps 来自 SmallCertificates。新 G 下界替代 ActualRows.content_lower 的较弱 targetBase 末端；不能改掉真实 content 定义。

   对 m≥826、4Y<Z^m、Nq≤2Y，证明每行

       24*|qRow|/25^(11m) + Nq*|rowError|/(25^(11m)*49^(11m)) <1.

   用两个明示二次恒等式证明序列递减、两个 Bernoulli 块和 M=826 小整数比较。δ1 的上界系数分别为 1/(175m)、100/(7m)，由实际 D 邻接式推得。不要把它写成实际 G 邻接式，也不假设实际 E1/E0 的比例。

4. **实际窗口边**

   目标为所有 Y,e,f,A,C，若 Y≥2^65535，Y≤5^e A≤2Y，Y≤7^f C≤2Y，且带符号差绝对值≤24，则

       Y^355≤A^1000 ∨ Y^221≤C^1000.

   边失败给两严格 cofactor 界；I11ActualPadeEdge.small_cofactor_forces_exponent 与同一选择器给 22m<e,f。复用 I11FiveSevenScaled.actual_integer_gap，无需再证邻项行列式或 Hom 身份；第3步反驳它选出的那一行。

   最后仅做 Y=n−12 的自然数窗口实例，r,s≤12。全 n≥2^65536 与任意位置（含碰撞、差0）都被覆盖。

建议逐层验收：G 实例 → 短数值/选择器 → 误差序列及真实行上界 → 窗口边。每个新增公开声明都需显式 typed check 和 #print axioms，禁止 sorry/新 axiom/native_decide。此清单没有声称这些新接合已经编译。

范围外仍包括其余 i13 Padé 边、图/带权分配消费者、统一初始高度、旧高指数块扩展及有限终端覆盖。本边采用更高阈值，不直接使旧 2^8192 block 包成为适用于整个新高度范围的证书。
