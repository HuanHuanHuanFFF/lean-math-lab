# 第八轮续段：三项完整基础模块通过Lean，原界仍待合并

用户新增30分钟并继续归入第八轮，后因额度可能不足要求尽快在12分钟内收尾。本续段提前冻结，不使用延期。**完整 d>k²/250000 尚未Lean闭合，原题仍未解。**

## 已通过的内容

1. **完整通用gcd上界**：对k≥1、n+k≤m，gcd(P_k(m),P_k(n))≤(k−1)!(n+k)^{π(2k−1)} binom(m−n+k−1,2k−1)。Astra/xhigh完成大素数幂汇总、小素数逐素数阶乘界及全部乘积合并，无额外数学假设。[正式入口](../../formalization/UniformDistance/GcdBound.lean)、[四模块验收](../../formalization/UniformDistance/verification.json)。
2. **全局线性素数计数界**：对所有自然N，77π(N)≤16N+616。Astra/max完成2310周期证书的全部Nat.count语义桥、周期分解和五个例外素数的比较。[单文件入口](../../formalization/PrimeCounting/LinearPrimeCounting.lean)、[交接](../../formalization/PrimeCounting/README.md)。这次已从有限证书推进到无限范围定理；尚未形成所需加权对数界。
3. **原方程大小界**：主任务完成k≥2、不重叠且比例4时，k(m−n)<2m及3m<4k(m−n)。[SizeBounds.lean](SizeBounds.lean)的B686Size.size_bounds_nat直接使用原产品等式，证明在精确有理数中完成后转回自然数，不假设任何分析结论。

主任务统一导入以上3个根并逐一核对传递公理，全部仅为propext、Classical.choice、Quot.sound；源码策略扫描10文件通过。分支分别执行源码重编译和严格guard；主任务核对文件哈希与跨模块消费者。[联合验收](verification.json)记录实际命令、退出码、入口和哈希。源码策略扫描包含探索文件，不表示所有探索文件都是完成结果。PrimeCounting当前复用入口是LinearPrimeCounting，Wheel/Probe保留为过程记录。

## 原250000界的精确剩余

- 从线性π界、Chebyshev θ界和Abel求和/积分关系，形式化k≥250000时π(2k−1)logk<3k。
- 形式化所需组合数指数估计及exp/log常数计算。Astra已定位Real.pow_div_factorial_le_exp与Nat.choose_le_pow_div，可避免重证Stirling积分；尚未将它们组成目标需要的完整Lean接口。
- 对m≥k³与m<k³分情况，接入本次gcd、大小界和上述估计，再连接自然数目标k²<250000(m−n)。小k分支和Nat/Rat差桥已由Boundary模块完成。

纸面依据仍为[第七轮证明](../../round7/a/explicit-bound.md)及[第八轮初等替代路线](../main/elementary-prime-bound.md)。没有新增axiom来填补RS或分析层，也没有把条件版本冒称原结论。

## 过程、失败与资源记录

主任务U4首次使用Real.Basic缺少对象文件，改为纯Rat避免非必要分析依赖。FieldSimp仅增量构建两个实际模块后可用。第一版宽泛nlinarith和隐式类型造成超时/错误，改为显式二次Bernoulli乘法链、准确有理数类型和已导入的有限求和/域接口；size-attempt1至5保留诊断，最终第5次编译exit0。

Astra/xhigh将小素数删除法改为最大赋值位置的距离乘积：删去j后的p幂整除(j−1)!(k−j)!，再整除(k−1)!，避免逐层Legendre计数；这是已验证的新实现路径，非新数学首次性主张。

Chebyshev/ExponentialBounds首次源码依赖构建比预期更重，并与证明编译竞争资源。主任务按额度要求停止自己的构建进程树，已有缓存保留；analytic-build.log记录已完成部分及中止，不能称该构建成功。剩余分析证明本身也未完成，补齐缓存不等于自动闭合原界。

本续段所有旧轮次冻结源码未改，不提交或推送。新颖性未调查，没有外部同行评审。起点18:49:33 UTC，原截止19:19:33 UTC；实际结束和用户收尾要求见handoff.json。下一任务从以上3个已验收入口接续，不重做gcd、周期计数或大小界。
