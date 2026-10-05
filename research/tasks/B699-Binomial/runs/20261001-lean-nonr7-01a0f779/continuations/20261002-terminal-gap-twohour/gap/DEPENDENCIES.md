# 来源、准确型与剩余依赖

核对时点：2026-10-02 13:50–14:03 UTC。当前证据是源审与出版原文核对；新源码编译排给 runtime，不预填通过。

## 原供应的实际证明链

1. [Dusart 2010 原文](https://arxiv.org/pdf/1002.0442)，Proposition 6.8，PDF 第 8 页：在保守子域 `x > 396738`，有自然素数 `x < p ≤ x(1 + 1/(25 log² x))`。目标 `x ≥ 10^7` 远离阈值边界；旧已验 `DusartAdapter.lean` 完成这个结论到 Gap(4095,10^7) 的转换。
2. 同页证明在 `log x > 28` 使用 `|θ(x)-x| < 0.0195 x/log² x`，由两端 θ 估计使 θ 增量为正。较小区间引用 Schoenfeld 1976 第355页的相邻素数差 `≤652` 至约 `2.686×10^12`。这些有效估计和有限 prime-gap 事实不能从引用自动变成 Lean 证据。
3. 同文 Proposition 5.1 给全正实域 θ 上误差 `θ(x)-x < x/36260`；Theorem 5.2 表中 `k=2, η=0.05, x_k=122568683` 给有效双边误差。它们是本轮更短消费者所取的准确出版义务；证明依赖 ψ 有效误差、ψ−θ 控制与数值/零点资料。本轮没有形式化这些深层输入。

## 当前 Lean 能力与外部来源

| 固定源 | 已看到的能力 | 不能据此采用的能力 |
|---|---|---|
| Mathlib `0df444a360eaa60ab8c11dca51a86af692955474`，`NumberTheory/Chebyshev.lean` | 实际 θ/ψ 定义、单调性、`θ≤log(4)x`、`θ≥log(2)x` 主项及误差、ψ−θ 控制；本轮使用实际定义 | 未找到目标有效近1误差或真正无限 Gap。粗上下主项比约2，不足 `4096/4095` 的相邻比例 |
| [PNT+ `c39a751132c88b6e8080b74c74023fd95b3d8be0`](https://github.com/AlexKontorovich/PrimeNumberTheoremAnd/blob/c39a751132c88b6e8080b74c74023fd95b3d8be0/PrimeNumberTheoremAnd/IEANTN/Dusart.lean) | `PrimeInInterval.lean` 的 θ 增量/误差提取有证明体，可参考策略 | `Dusart.theorem_4_2` 行171–172仍 `by sorry`；`proposition_3_2` 的有效 ψ 表也含占位。该仓已升级 Lean4.34，本仓 pins 不改 |
| [迁移后 IEANTN `2a10e721ff645865c45c344333b1934f34c45b41`](https://github.com/teorth/IEANTN/blob/2a10e721ff645865c45c344333b1934f34c45b41/IEANTN/Nodes/Dusart2018/v1/Conclusions.lean) | Dusart2018 Proposition5.4 的命题登记；[PrimeInterval 解](https://github.com/teorth/IEANTN/blob/2a10e721ff645865c45c344333b1934f34c45b41/Solutions/PrimeInterval.v1/Solution.lean)提供转换策略 | Dusart节点明确 `stub` / `literature`，结论是 `def ... : Prop`，不是已证 theorem；文档明确解析、prime-gap表及小域核查三部分均未形式化。不能把节点存在或下游接受当作无条件供应 |

搜索范围为当前固定 Mathlib NumberTheory 与相关 θ/PNT 名称、两外部仓库的明确有效估计和区间节点；不宣称所有世界 Lean 项目不存在相关证明。没有采用未知截止点的 eventually/PNT 结论来替代 `10^7` 的显式起点。

进一步检查了同一 IEANTN 固定提交的 [FKS.v2](https://github.com/teorth/IEANTN/blob/2a10e721ff645865c45c344333b1934f34c45b41/docs/nodes/FKS-v2.md)：其 `bridged` 标签只表示已有引用之间的标量换元/阈值转换已 Lean 化，文档仍明确基础 ψ 估计依赖文献，并列出零点自由区、次凸界和有限高度 RH 验证输入。没有从这个标签推断一个新可接受的无条件 ψ 供应。

PNT+ 的 `Wiener.lean/Consequences.lean` 可定位 `WeakPNT/WeakPNT'` 的渐近声明；本轮未移植或审计其完整传递依赖。即使该渐近声明被接受，也只给依 ε 存在的起点，不自动提供当前所需 `10^7` 的显式起点。

## 本轮可执行前置

`ThetaInterval.lean` 使用 pinned Mathlib 的 `Chebyshev.theta`，没有自定义 prime 谓词：

- `exists_prime_of_theta_lt`：对任意实 x,z，实际 `θ x < θ z` 推出实际 `∃ p:Nat, p.Prime ∧ x<p ∧ p≤z`。证明展开 prime finite sums；严格左端与闭右端不互换。
- `exists_prime_of_theta_bounds`：`θx≤x+a`、`z−b≤θz`、`a+b<z−x` 供前条。
- `prime_of_theta_relative_bounds`：D,x 正；`θx≤(1+u)x` 与 `θ(x+x/D)≥(1−l)(x+x/D)`，以及精确标量条件 `D*u+(D+1)*l<1`，推出实际 `p.Prime, x<p, D(p−x)≤x`。
- 两个固定可证伪标量检查：`4095/36260+4096/6000<1` 与 `8191/8192<1`。上/下误差可以不相等；对称误差从 `10^7` 起是否成立没有被假设为事实。

`ThetaTail.lean` 沿出版证明链继续：

- `log_gt_eighteen` 和 `theta_lower_of_log_error`：`x>122568683` 时，η=1/20 的 log² 误差足以给下相对误差 1/6000。
- `gap_4095_above_theta_threshold`：**显式给定**全部正实 x 的 θ 上界和全部 `x>122568683` 的 θ 下界后，推出 `Gap 4095 122568684`。没有 y 上界，但也没有把两分析输入变成定理。
- `gap_4095_of_theta_estimates_and_initial_segment`：再给实际 prime-gap 义务 `10^7≤y<122568684` 才得到原目标 `Gap 4095 10^7`。

注意：最后的 finite y prime-gap 义务与本轮已验的 finite n 原题二项式结论不同，不能相互冒用。这个分解减少未来可执行有限衔接的截止值；本轮没有生成/接受该有限 prime-gap 链。

`PsiTheta.lean` 完成出版证明链中另一个可拆出的前置：

- 由已证 `psi_sub_theta_le_psi_add_psi_add_psi`、`psi_le_const_mul_self` 及 `log 4≤3`，推出所有 `x≥1` 的实际 `ψ(x)−θ(x)≤21√x`。没有引入未证数值表。
- 对所有 `x≥10^12`，显式平方比较给 `21√x≤x/40000`。这是无条件的无限实数域前置。
- 若再给两端实际 ψ 相对误差 `|ψ(t)−t|≤t/10000`，则 θ 上误差可取 `u=1/10000`、下误差 `l=1/8000`，精确系数 `4095/10000+4096/8000<1` 给实际 Prime 间隔。统一误差输入仍未供。
- 原文 Proposition3.1 的证明明确引用 `t>exp(25)` 时 ψ 相对误差 `<0.00007789`，可作为这个残余输入的出版依据；它依然涉及未形式化的有效 ψ 估计，不能以这段引用完成内核证明。

## 精确剩余缺口

无条件 Gap 仍缺真实无限解析供应。走本轮较小截止值路线，需要：(a) 实现并核验上述全域 θ 上界；(b) 实现并核验 122568683 之后 η=0.05 的有效 θ 下界；(c) 有界 initial prime-gap 段证书。三者均未交付，不把本轮的条件消费者称为 Gap 证明。

走 ψ 路线则是一个明确更深的供应：对全部实 `x≥10^12` 有 `|ψ(x)−x|≤x/10000`，再补到该起点的真实 prime-gap 初段；前置验证只消除 ψ−θ 转换成本，不消除此供应或初段。

这里“补初段”是为回到准确目标 `Gap(4095,10^7)`。若以后先接受真正的 `Gap(4095,10^12)`，合法 `n≥2(i+1)` 已给 `y=n−i≥i+2`，可与原有比例/高度结果服务全部 `i≥10^12` 的原题无限族，毋须先扫完整低端初段。这个用途只是现有拼接的纸面观察；本轮 ψ 供应尚缺、该族未因本文件新增接受，也没有另加一份条件消费者。

本轮预期输出是实际 prime 提取与误差消费者的 kernel/AX 接受；当前状态待执行、待独立源对应。完整指标与原题低比例无界前沿不会仅因这些前置而改变。
