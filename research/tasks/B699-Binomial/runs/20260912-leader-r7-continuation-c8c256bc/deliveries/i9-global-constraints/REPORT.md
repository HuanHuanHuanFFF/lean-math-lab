# B699 · Pro A R7：i9 的新全局消费者与参数归约

**R7仍为{3,4,5,6,7,8,9}，i14冻结成果不变。i9尚未全域闭合。**

本轮交付两条不同依赖等级的推进。

## 一、37类模225整行闭合
对每个自然数n、每个10≤j≤floor(n/2)，若n mod225位于

    0..8，45..49，90..98，135..143，184..188，

则存在同一素数p≥11整除C(n,9)和C(n,j)。这是37条完整算术进程，包含无界n与全部合法j。

关键新链：最大3幂、5幂共位 ⇒ 互补2/7幂满足立方局部界 ⇒ 用i14冻结块接过中段 ⇒ 两条出版cut推出n<2^259，与所在高度矛盾。逻辑上只使用两条出版表项，不使用33个新content家族及228万个content有限块。

## 二、将旧有限n结论接到无界放大因子
写α=n/gcd(n,j)。新的初等证明给出：noCommon且α>12时，n≤4+72α^5。因此**所有α≤2^817的比例，全部放大因子g，均已覆盖**。有两个高小素数分量时加强为n≤3+9α^4，对应覆盖α≤2^1023。

潜在反例的α必须7-光滑，且仅有一或两种超过8的小素数幂；二元组合不能是{3,5}。具体归为56个单高幂种子、28个双高幂种子，共84种。给定指数后，β≤α/2且g≤72α^4（双高幂时g≤9α³）。**84是族数，不是有限候选数；一或两个素数幂指数仍无界。**

另得全部j的行消费者：n>4+72S7(n)^5时该行成立，并有显式零密度候选行上界。密度零不等于没有反例。

## 证据与核验

新检查状态见logs/NEW_CHECKS.json。接收脚本只做有理区间/整数检查，不做Padé、CRT或种子发现搜索。旧i14大块、旧i9有限证书按冻结接口接收，本轮未重新运行；未Lean化、未外部人工审读。

完整推导：notes/PROOFS.md。源码：code/build_delivery.py。精确cut接收：evidence/two_published_cuts_receiving.json。37类与84种正规形分别有完整有限清单。

## 下一接续点
优先尝试把剩下五种共位组合对应的互补乘积cut接到同一立方桥，或者在84种α族上用α、β、g的联合算术消去最后一或两个指数。不再回到旧content-G搜索，不把扫描上界扩大当成整指标闭合。

实际新接收摘要：

```json
{
  "status": "PASS_NEW_EXACT_CHECKS",
  "cut_rows": 2,
  "strict_rational_margins": 20,
  "periodic_predicate_cases": 225,
  "residue_classes": 37,
  "valuation_regression_cases": 2700,
  "normal_form_families": 84,
  "factorial_product_regression_cases": 1510,
  "old_i14_large_blocks": "NOT_REPLAYED_ADOPTED_FROZEN_INTERFACE",
  "old_i9_finite_certificate": "NOT_REPLAYED_ADOPTED_FROZEN_INTERFACE",
  "old_content_blocks": "NOT_USED_BY_THE_NEW_37_CLASS_PROOF",
  "Lean": "NOT_RUN"
}
```
