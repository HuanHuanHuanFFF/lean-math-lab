# `4 ∣ k` 的 canonical support 密度：已验收

独立入口：`lean/canonical/density/QuarterConsumer.lean`。
先前已验收的 `1/4` 源码保持不变。

`B686CanonicalDensity.four_dvd_canonical_support_density` 对每个 `ε>0`
给出统一自然数阈值 `K`，使所有 `k≥K`、`4∣k`、`n+k≤m` 且满足

```text
∏ i∈Icc 1 k, (m+i) = 4 * ∏ i∈Icc 1 k, (n+i)
```

的自然数实例都有一个实际构造的 canonical `SystemInput`，其全部非单位格
数量 `s` 满足 `s/k²≤1/8+ε`。没有额外高度或系统存在性假设。
更强的 `four_dvd_support_density` 对同一实例的每个有效系统成立。
这里是全 `4∣k` 长度的渐近尾部；不声称有限长度的精确 `1/8`。

实际高度依赖是 `B686QuarterRunge.four_dvd_product_consumers`，给出
`n+k<2^(k/4+1)*k^(k/4+1)`，其 `n<m` 前提由本题的分离条件推出。
把指数因子放宽到 `2*2^k` 后，已验收的统一增长桥取
`C=2, B=2, e=k/4, a=1/4`，故最终主常数为 `a/2=1/8`。
系统使用已有 `canonicalSystem`，实际依赖同批真实 provider。

完整 fresh 验收：
`verification/canonical/density/20260908T114721436330Z/evidence.json`，
`success=true`。36 个项目模块从源码重编，闭包包括真实 canonical provider、
中心消费者、全部 quarter 高度模块及本密度模块。唯一项目对象根是
`.lake/research-runs/b686-quarter-density-20260908T114721436330Z/olean`。
固定 pins、36 文件源码策略、前后源码哈希均通过；两条新最终消费者的
可执行传递公理守卫仅允许且只报告 `propext`, `Classical.choice`, `Quot.sound`。

冻结文件 `QuarterConsumer.lean` SHA-256：
`6982fd40cb358f50b29a27d69d45a13842cf0444793e6dcfb628b9c3dd33b487`。

独立数学 agent `b686_centered` 随后在其 Sylvester 任务的包对象等待期间
完成了四个 density 源文件的只读复核，未发现实质问题。其复核覆盖
全部非单位格、正性及互素到阶乘下界、对所有 `s` 的 entropy 界、阈值
仅依赖常数和 `ε`、实际 provider 构造、两种长度尾部以及 floor / 指数
放宽方向。该审查没有重编，也没有重新审查 provider 底层；完整依赖
的形式验收仍由上列实际 fresh 重编与传递公理检查提供。
