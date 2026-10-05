# 有效 ψ 核心的反向追踪

2026-10-02 14:20–14:24 UTC，仅源审。固定 PNT+ revision `c39a751132c88b6e8080b74c74023fd95b3d8be0`，其实际 `lean-toolchain` 为 `leanprover/lean4:v4.34.0`；本仓保持 v4.33.1，不导入外部项目。

## 有证明体不等于闭合供应

| 消费者 | 实际采用的上游 | 当前源状态 |
|---|---|---|
| `BKLNW.thm_1a` / `cor_2_1` | `Pre_inputs.default.hε := BKLNW_app.theorem_2` | [BKLNW_app.lean](https://github.com/AlexKontorovich/PrimeNumberTheoremAnd/blob/c39a751132c88b6e8080b74c74023fd95b3d8be0/PrimeNumberTheoremAnd/IEANTN/BKLNW/BKLNW_app.lean#L1181) 第1181–1183行，`∀b≥0,∀x≥exp b, abs(ψx−x)≤table_8_ε b*x` 的证明为 `sorry` |
| 同一默认输入中 `θx<x` 的有限部分 | `BKLNW.buthe_eq_1_7` 调用 `Buthe.theorem_2c` | [Buthe.lean](https://github.com/AlexKontorovich/PrimeNumberTheoremAnd/blob/c39a751132c88b6e8080b74c74023fd95b3d8be0/PrimeNumberTheoremAnd/IEANTN/Buthe.lean#L52) 第52–53行，`1≤x≤10^19` 的有限范围仍为 `by sorry`；本轮没有相应完整数据证书 |
| `BKLNW.lemma_11b` 下界中的 prime-power correction | `RS_prime.theorem_12`，`ψx < 1.03883x` | [RosserSchoenfeldPrime.lean](https://github.com/AlexKontorovich/PrimeNumberTheoremAnd/blob/c39a751132c88b6e8080b74c74023fd95b3d8be0/PrimeNumberTheoremAnd/IEANTN/RosserSchoenfeld/RosserSchoenfeldPrime.lean#L1015) 第1015行仍 `by sorry` |

文件级 Git blob SHA：BKLNW `dd61eab55d8b388d2b98e02e799f708e956b45c4`；BKLNW_app `1aa27ea76871cc2ae6bfa3b684a2d19e8f70374e`；Buthe `eb726358b3e28f2ad4bb77ba05324ca778ea8d19`；RS prime `67d164400ca323189a78434441baa043ed8a38be`。这不是整个外部项目的传递 AX 审计，只是对阻断当前所需供应的明确声明逐项定位。

`BKLNW_app.theorem_2` 的源注释把数值分为 `20≤b≤2000`（Theorem16）、`2500≤b≤25000`（Theorem13）以及 `b>25000`（Theorem14）。对应主 theorem 自身仍占位；不能因表或若干标量子引理存在，就认为所有数值段和无限尾部已闭合。有限 RH 高度、零点自由区和相应数值输入必须另行证明或提供可验数据。

## 已选前置实际减少什么

本轮 `PsiTheta.lean` 不采用未证的 RS 精细常数或 Buthe 的 10^19 θ 表。它由 pinned Mathlib 的粗 ψ 界和已证 Costa–Pereira 直接给 `ψ−θ≤21√x`，从而在 `x≥10^12` 得 `ψ−θ≤x/40000`。若编译/公理/独立核验通过，这一步确实消除一个 prime-power correction 的未证依赖；后续也不需要先证明全正实域的精细 θ 上误差，因为 `θ≤ψ` 已在 Mathlib。

剩余关键仍是实际无界 ψ 估计 `∀x≥10^12, |ψx−x|≤x/10000`。它是分布估计，强于“给每个区间一个素数”的目标，绝不是把 Gap 换名。该输入未供，且接回10^7还须真实 initial prime-gap 段。接口前置减少不说明全部数学形式化更便宜；相较不对称 θ 路线的122568684起点，ψ路线有更大的有限衔接范围。

## 不增加的工作

- 不移植未经传递 AX 闭合的 `cor_2_1` 等包装。
- 不再添加重复的条件误差消费者。
- 不生成到10^12或10^19的整段扫描/素数表。已有整数步长探针不预测真实素性和内核成本。
- 不用 WeakPNT 的未知渐近起点冒充10^7；外部 MediumPNT/WeakPNT 的完整依赖本轮未验收。

原 [Schoenfeld 1976 DOI](https://doi.org/10.1090/S0025-5718-1976-0457374-X) 与 AMS PDF 本次访问仍失败（官方 PDF HTTP403）。当前652及2.686×10^12的范围证据是已读 Dusart 原文第8页对它的明确引用；不声称已独立读取 Schoenfeld 原始数值表，更没有其 Lean certificate。

## 保留但尚未投入的复用点

同一 BKLNW_app 源的 `besselI0_sub_partial_le`（约1045行）等正级数尾界已有证明体，可供后续有效 ψ 数值阶段使用；本轮未移植、未核其完整传递AX。它们位于 Theorem16 数值核查的上游，但 Theorem16 及全域 Theorem2 仍未闭合。当前只移植更多这类局部算术/分析块不会消除本目标的有效 ψ 缺口，因此不排到本轮三个直接消费者之前。

重新考虑该复用点的条件：固定一条真正采用 Theorem16 的有效 ψ 证明路径，列齐零点/显式公式输入，并给出将被核验的具体数值行；先以该行的最小源码和传递AX探针确认实际闭包，再决定完整移植。不能按外部文件中 `sorry` 的数量推断该行已接受。
