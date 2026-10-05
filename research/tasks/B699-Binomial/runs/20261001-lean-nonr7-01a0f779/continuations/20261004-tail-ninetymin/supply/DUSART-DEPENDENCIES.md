# Dusart 6.8：下一份最小形式化交付

A，Sol6.1/xhigh复杂固定来源核对；11:16 UTC接续，硬停止11:32:50，只读公开证明依赖，不开发新数学、不运行Lean、不改冻结源或开CI。实际打开并核对 [Dusart2010v1](https://arxiv.org/pdf/1002.0442v1) 印刷p.4–5、p.8、p.13、p.15–18；固定代码hash在 `route-sources.json`。网页只读没有保存PDF原字节/声称其SHA，下一交付须自行固定原件。本文是来源与交付接口审读，不是这些出版定理的独立证明。

## 已有消费者，不应重做

本仓已验无条件高度/比例、完整有限供应和 `B699FiniteFull20261002.original_tail_of_gap`；仅差 `B699TailGap.Gap 4095 10000000`。`DusartAdapter.lean` 已验分母数值余量、Real/Nat转写与供应后的Gap后果；`ThetaInterval/ThetaTail/PsiTheta` 已验素数抽取和明确条件后果。它们没有无界有效θ或ψ供应。

当前原题完整上限10000已由S接受；补无界供应才可覆盖所有更大i的未覆盖低比例n/j。这个缺口是形式化/来源闭包，不是本轮测到的慢kernel。本轮代表64个≤约20.9M素数的编译/检查时间，不是深解析数论形式化的成本数据。

## 原文最小依赖拆分

| 义务 | 原文位置和实际角色 | 下一交付必须提供什么 | 当前状态 |
|---|---|---|---|
| 短区间原目标 | Prop6.8，p.8；精确严格左端、非严格右端、实数阈值396738 | 实际prime见证，不用RH或新project axiom；或仅交本题所需10M以上版本 | 未供Lean；公开v1已有已知命题 |
| 解析大尾的θ误差 | 同页证明在log x>28使用η₂=.0195；来源为Thm5.2及分段η表 | 对整个无界实数尾部的θ误差定理，明确常数、阈值、区间拼合和舍入保证 | 没有这个供应；已有θ抽取前置不能替代 |
| 分段ψ误差与ψ→θ | Thm5.2，p.4–5，使用ψ误差、Prop3.2和到b=5000的Tables6.4/6.5 | 每个采用区间的误差来源/验证，再用真正足够尖锐的ψ−θ界；无需形式化无用k行 | 现有无条件21√x较粗，不能自动替代Prop3.2的尖锐界 |
| 无限尾最后一段 | Thm5.2，p.5，对x>exp5000引用[7]Thm1.1 | 固定完整原文、准确R/域/误差函数，再证明其无界结果与数值单调性 | v1 bibliography把[7]标为submitted；本轮未取得该固定全文，不冒称已有已发表或Lean依赖 |
| 有限prime-gap数据 | Prop6.8，p.8，引[23]p.355的连续prime间距界，覆盖到约2.686×10¹² | 可内核检查的完整区间见证/算法证书，或改交本题所需较弱Gap的完整证书；只引用表或有限扫点不够 | 原文引用已核；原始计算证据未取得、未Lean验 |
| 精细θ上界与低阈值 | 若选本仓ThetaTail路：Prop5.1和Thm5.2的η=.05/122568683行，p.4–5 | 本仓准确两无界接口的证明，加真实10M至122568684的完整Gap初段 | 两估计未供；旧64点和本轮finite Gap只能消去各自精确片段 |

Prop6.8的有限段说明已覆盖x>3.8M；本题目标从10M起，不需要先补全396738至3.8M之间的原文省略细节。若交完整 `DusartStrictInput`，则必须处理全部其声明域，不能偷改阈值。

两项来源注意：v1的Prop5.1说引用Table6.4证明θ<x到8×10¹¹，但后文Table6.4标题是分段η表，有限θ区间表见Table6.6；此交叉引用需核对原件或作者更正版，不把一个表号直接当证书。Tables6.1/6.2的计算来源[5]是Deléglise–Rivat《Computing ψ(x)》(Math.Comp.67,1998,1691–1696)；printed decimals仍需严格误差与全区间覆盖，不等于已验Lean有理证书。这些是来源闭包待补，不据此否定出版命题。

## 哪些文献已经读到，哪些没有

Dusart v1 bibliography p.13明确[21]为Rosser–Schoenfeld1975，Math.Comp.29，243–269；[23]为Schoenfeld1976，Math.Comp.30，337–360；[13]为Costa Pereira1985，Math.Comp.44，211–221；[7]是另一个submitted稿。这一轮只读到Dusart对它们的引用，不能声称已逐个核对全部上游证明。

本轮再尝试 [Schoenfeld1976原AMS PDF](https://www.ams.org/mcom/1976-30-134/S0025-5718-1976-0457374-X/S0025-5718-1976-0457374-X.pdf) 返回403；另一原文副本请求超时。因此[23]p.355的实际有限计算证书/证明来源仍须取得。不能从搜索摘要或旧SOURCE-AUDIT把它补成已读。未继续追v1中submitted的[7]，也没有虚构其后来发表版本或来源等价。

## 最小不引公理的Lean接口

推荐只固定一个真正能解锁本题的目标类型：

```lean
B699TailGap.Gap 4095 10000000
```

展开为：

```lean
∀ y : Nat, 10000000 ≤ y →
  ∃ p : Nat, p.Prime ∧ y < p ∧ 4095 * (p - y) ≤ y
```

导入本run `continuations.«20261002-tail-twohour».gap.GapDefinitions`，无供应参数地证明它；旧 `original_tail_of_gap` 不需改。若保留完整Prop6.8，则目标 `B699TailGap.DusartStrictInput` 为：

```lean
∀ x : Real, (396738 : Real) < x → ∃ p : Nat,
  p.Prime ∧ x < (p : Real) ∧
  (p : Real) ≤ x * (1 + 1 / (25 * (Real.log x)^2))
```

导入同目录 `DusartAdapter`，完成后现成 `nat_gap_of_dusart` 接好。只证明x≥10M的相同供应也有用，但它不等于完整 `DusartStrictInput`；可以复用已验分母/转换代码给真正Gap，不能称原接口已填。

若采用本仓既有θ路线，必须准确供应 `∀x>0, theta x−x≤x/36260` 与 `∀x>122568683, x−theta x≤x/(20*(log x)^2)`，加 `∀Nat y∈[10M,122568684), ∃实际Prime短区间见证`。现成前置的准确函数是mathlib `Chebyshev.theta/psi`，不是自定义的已假设结论函数。精确逐源接口与哈希见 `UNIFORM-ROUTE-GAP.md`、`route-sources.json`。

## 下一项工作与成本边界

先由复杂source-review任务取得并冻结所选解析大尾原文与实际有限证据，列出供给声明、依赖和缺失原件，再决定Lean实现/证书路径。如果精确来源不足，交付缺口本身并保持pending，不开始大规模重算旧消费者。目标是消去无界Gap供应，原题高度、比例和已验prime链不需重写。

无界ψ误差、尖锐ψ−θ、原文分段表的严格舍入、exp5000以后的来源，以及到10¹²量级的证书生成/内核成本，均未在本轮编译或测峰；工时、内存和CPU成本目前未知。来源规模或论证深度可说明风险，不能伪造“已测复杂度瓶颈”或拿64块成本外推整套解析形式化。以后实际source-aligned闭包应先做一个代表义务，再记录工具/资源故障与数学缺口的不同类别。

验收仍固定Lean4.33.1/mathlib0df444a与九pins，拒绝sorry/额外project axiom，供应根与最终原题literal实际compile、传递公理白名单、normalchecker、独立source/object/raw绑定。论文已知结果、原始数值表、本仓accepted前置、新供应接受与发布分别记录。
