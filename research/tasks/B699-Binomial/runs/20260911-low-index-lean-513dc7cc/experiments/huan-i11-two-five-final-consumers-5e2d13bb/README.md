# 实际 (2,5) 分量边：最终消费者候选

四个实现模块已冻结，未运行 Lean。最终公开声明 `Math.B699.I11TwoFiveFinalConsumers.actual_two_five_component_edge` 只有一个前提：n∈Nat 且 n≥2¹⁵³⁶⁰；结论是

```
(primeComponent n 2)^1000 * ((n+1)/2)^248 ≤ n^1000
OR
(primeComponent n 5)^1000 * ((n+1)/2)^252 ≤ n^1000.
```

这里 `primeComponent n p = p^((n.choose 11).factorization p)`，是原有实际二项式分量；A、C 余因子没有混进最终图顶点。最终声明不再要求四树、数字证书、G、Hom、窗口或共因子假设。阈值是该分量边的**下端定义域**，本包没有据此宣称已证明原题的上界 n<2¹⁵³⁶⁰，也不等于完成原 i11。

最新来源快照核对了16份现有成功 receipt：七数值选择器、完整 (2,5) FixedEdge 链、实际四树、D=3 前缀/G、CeilHalf 与原窗口均已接受，根源与源闭包 SHA 均匹配。四个新消费者自身仍需主任务真实验收。

## 第八个实际 Rate 证书

`RateBasis.lean` 采用冻结实际值 N/D：

```
N=83682878107040006334695941930360399789273674382573568
D=80167724078165772891757631585792600333690643310546875.
```

直接整数证书只有 D>0、N≥D、2D³²≤N³²；最大整数5626 bit。后者在一个局部 `maxRecDepth 8192` 资源限额下写成 `by decide`，不增加数学前提。其余步骤均保持大幂为符号：

```
(N/D)^32 ≥2
(N/D)^192=((N/D)^32)^6 ≥64>48
192≤329 且 N/D≥1 ⇒48<(N/D)^329.
```

没有直接展开192次或329次幂。`ActualNumeric.actual_rate_eq_rational` 从真实 qRate、qBase、β、λQ、Lt 定义用固定低次数有理计算证明相等，进而取得实际 `48<qRate(qBase)^329`。这不是把先验浮点值或抽象增长率等式作为前提。

`rate-check.json` 的独立整数检查验证了这些固定整数比较；它不是 Lean 验收。原 qRate 的完整定义仍来自冻结且已集成的 (2,5) 缩放链，特别保留 E 的128·3⁸尺度与每行实际G。

## 八个数字先组成束，再规范化别名

`ActualNumeric.lean` 引入 `Math.B699.I11TwoFiveNumeric` 的7个真实选择器声明。遵循主任务已验的修复模式，先用 `And.intro` 在来源类型中构造八项证书束，再仅用

```
simpa only [twoFiveZ, certificateZ, twoFiveM, twoFiveY0]
```

对齐几个常量名。最后从 `actual_numeric_certificates` 的实际目标类型中解包，才把参数传给 FixedEdge。没有把异名 Z/M/Y0 的巨大幂证明直接塞进期望目标类型的 tuple，从而避免这一步依赖昂贵的巨大自然数定义相等计算。

新消费者保留原 M=329、Z=115572769905797、Y0=2¹⁵³⁵⁹、35m/15m、248/252与1000分母权重；7个选择器命题及第8个Rate命题都通过具体声明供给，未重新假设。

## 四树与原窗口的实际接合

`ActualInstance.lean` 直接调用已验

- `Math.B699.I11TwoFiveGrowth.Tree.q_tree_delta0`、`q_tree_delta1`；
- `Math.B699.I11TwoFiveGrowth.Tree.e_tree_delta0`、`e_tree_delta1`。

显式对齐真实 qLam/eLam 与 qLambda/eLambda，Bool false 使用δ1，true 使用δ0。于是 `actual_two_five_cofactor_edge` 已在源码中消去所有树与数字前提，只保留普通窗口数据。

`Component.lean` 只额外导入已验 `I11Component.CeilHalf`、`I11SmallPrimes.Window`。它没有导入5/3的 WindowPair/ActualComponentEdge 整链。两个短的通用窗口步骤在本模块内完整证明：

1. 两个 offset<11 的自然数窗口，其整数差绝对值≤10，包括负差和零差。
2. 从 `PrimeWindow.equation` 得到 p^factorization·cofactor=n−offset，再复用 CeilHalf 区间定理。

所有 `(n.choose 11).factorization p` 作为函数参数时均加完整括号。原题高度下，已验 `twenty_le_of_power_bound` 给出 n≥20；已验 `ceilHalf_power_lower` 给出 ceilHalf(n)≥2¹⁵³⁵⁹。这里先把15359+1规范化为15360再传原高度证明。随后取真实 p=2、p=5 的两个 PrimeWindow，调用实际余因子边；最后由已验 `primeWindow_graph_capacity` 转换为两个实际分量边。

两窗口可以处于同一位置；e或f为0的情况也没有预先删除。最终不需要合法j/noCommon假设，因为这个辅助分量不等式本身对全部指定大n成立。j与原题p≥11边界仍属于后续全局消费者。

## 最小逐层验收

| 层 | 新内容 | 入口 | 公共根 |
|---|---|---|---:|
| RateBasis | 32次整数证书与符号329次界 | RateBasisAudit | 7 |
| ActualNumeric | 实际Rate相等、8证书束、数值消费者 | ActualNumericAudit | 4 |
| ActualInstance | 已验四树对应及实际余因子边 | ActualInstanceAudit | 7 |
| Component | 两窗口桥及仅n域前提的分量边 | ComponentAudit | 4 |

完整 `Audit.lean` 打印22个新公开定理的传递公理集合。`AUDIT_PLAN.json` 列出全名。允许仅 std3；sorryAx、额外公理、缺失根或任何编译错误都应整体拒绝。`audit_axioms.py --self-test` 的22根合成测试已通过，但尚无本包的真实 Lean 输出。

`SOURCE_FREEZE.json` 固定9个 Lean 文件。源式、accepted receipts、只读参考模式及SHA绑定在 `SOURCE_MAP.json`。旧34根包、G包及共享源码均未改动。生成器仅在冻结前执行；冻结后不要用它覆盖这批文件。

本轮起点2026-09-11 19:24:42 UTC；20分钟目标检查点是19:44:42，实际源冻结19:47:33后报告，约晚3分钟；已如实向主任务说明。20分钟不是总截止。

若本包通过，将得到原i11图中真实 (2,5) 分量边，而不是原i11全部结论。剩余其他边、全局高度矛盾和有限消去仍由主任务推进；当前本包未验收，不增加原题计数，B保持0/19。
