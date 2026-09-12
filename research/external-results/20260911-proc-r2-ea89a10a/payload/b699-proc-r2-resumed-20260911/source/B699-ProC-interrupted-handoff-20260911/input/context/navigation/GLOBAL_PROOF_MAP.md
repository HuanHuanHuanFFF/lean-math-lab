# 整体证明背景：给C，也供A/B按需取用

这是现有路线导航，不是必须遵循的研究顺序。先了解原题与当前状态，随后只加载会改变你研究选择的原始推导。新统一路线可以覆盖任何指标，包括已有闭合区域。

## 现有拼接方式

- 完整大素数幂转移把noCommon导向三个相连区间的整除条件。判别式是一条既有全局高度路线；后续三窗口归一化还给出不经过判别式的替代路线。
- 大／中指标：统一线性高度（如i≥1000时n<4096i）、明确素数计数与短区间供应、有限高度／素数链拼接，纸面层覆盖全部i≥185。最新优化能替换素数计数的重依赖，但短区间素数供应仍有独立义务。
- 低指标：三窗口高度、有限覆盖和零净指数分支；部分指标使用Padé、公因子界、不同位置及碰撞分析，再接指数块、CRT和末端证书。最新A把12、15、20接到了完整纸面消费者。
- 特殊比例族n=3j、n=4j和i3/i4局部结构是可用支线。它们各有自己的适用范围，不能直接推广成一般n,j。
- 形式化层尚未拼成全题。C可研究能同时减少数学分支、外部依赖、有限计算或未来Lean成本的新结构，不要求沿当前工程顺序补模块。

## 原始材料入口

下列文件按固定仓库路径保留原字节；原文中的时间、旧前沿、旧任务边界是历史事实，当前状态见CURRENT_STATE.md。仅随包提供列明文本及相应推导，不是完整仓库克隆；未打包的引用见GLOBAL_SOURCES.json对应固定仓库来源。

| 阅读目的 | 原始材料 |
|---|---|
| 三窗口、统一高度与i≥185的纸面拼接 | [中指标完整报告](../global/repository/research/tasks/B699-Binomial/runs/20260909-middle-index-b96965a8/delivery/REPORT.md) |
| 当前依赖简化、EC与短区间缺口 | [素数输入优化报告](../global/repository/research/tasks/B699-Binomial/runs/20260909-prime-optimization-a81baaab/delivery/REPORT.md) |
| 判别式从何而来 | [恒等式来源](../global/repository/research/tasks/B699-Binomial/runs/20260909-large-prime-structure-cb4764f0/notes/discriminant/source-and-identity.md)、[算术高度推导](../global/repository/research/tasks/B699-Binomial/runs/20260909-large-prime-structure-cb4764f0/notes/discriminant/arithmetic-bound.md) |
| 完整幂与低指标三窗口 | [双截点定理](../global/repository/research/tasks/B699-Binomial/runs/20260909-low-index-structure-b41a5a63/notes/heights/two-cutoff-theorem.md)、[低指标报告](../global/repository/research/tasks/B699-Binomial/runs/20260909-low-index-structure-b41a5a63/report.md) |
| 零净指数如何进入有限候选 | [零边界候选链](../global/repository/research/tasks/B699-Binomial/runs/20260909-low-index-structure-b41a5a63/notes/zero-boundary/candidate-chain.md) |
| 剩余低指标的已知局部结果与障碍 | [i3/i4定位](../global/repository/research/tasks/B699-Binomial/runs/20260909-low-index-structure-b41a5a63/notes/low-index/handoff-and-localization.md)、[低指标高度与非有效有限性](../global/repository/research/tasks/B699-Binomial/runs/20260909-low-index-bounds-a5b51cea/delivery/REPORT.md)、[B新报告](../sources/pro-b/REPORT.md) |
| 最新Padé简化及三个新闭合 | [A报告](../sources/pro-a/REPORT.md)，尤其§§2–8；有限部分按需要读§§9–12 |
| 特殊比例族 | [n=3j推导](../global/repository/research/tasks/B699-Binomial/runs/20260909-large-prime-structure-cb4764f0/notes/rational/slope-three.md)、[n=4j推导](../global/repository/research/tasks/B699-Binomial/runs/20260909-slope-four-243425d5/derivation.md) |
| 可替换的解析输入与失败阈值 | [素数输入替代推导](../global/repository/research/tasks/B699-Binomial/runs/20260909-prime-input-d2f7a636/derivation.md) |
| Lean为什么还没拼完整 | [无界尾部交付](../global/repository/research/tasks/B699-Binomial/runs/20260910-unbounded-tail-9f6c2a17/delivery/report.md)、[高度链报告](../global/repository/research/tasks/B699-Binomial/runs/20260909-discriminant-height-9d40056a/report.md) |
| EEES历史接口与替代关系 | [EEES链报告](../global/repository/research/tasks/B699-Binomial/runs/20260909-eees-chain-5a2e10/report.md) |

## 研究价值如何登记

完整原题证明、覆盖无界参数族的统一定理、替换原有关键模块的更简证明都可成为实质交付。请比较新结论实际覆盖的范围、依赖和剩余义务；更短的文字或更少的函数名本身不证明数学链更简。A/B失败诊断只限制原文明确的方法类，C仍可考虑更强输入或新的对象。
