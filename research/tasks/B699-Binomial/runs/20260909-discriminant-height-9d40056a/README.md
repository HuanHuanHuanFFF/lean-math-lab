# B699：判别式到有效高度界

状态：本轮高度目标已完成，实际原题消费者通过固定版新对象闭包验收；B699全题仍未解决。

最后接受结果：所有自然数 `1≤i<j≤n/2` 的原题反例，在 `s=i−4π(i−1)>0` 时满足

`n ≤ H(i) = 2^(4*i/s+1) * i^((i+3)/s+1)`，其中除法为自然数整除。

实际公式、非零性和系数内容均在链内证明，最终定理没有这些额外假设。已验轮筛使全部 `i≥185` 自动满足正指数条件。`H(185)≈2.83×10^40`；这是固定指标的理论高度界，不能包装为立即可行的穷举。

- 来源：最新 `main` `7fd3928656489afe2c80698f0a09d1d933444186`（已 fetch 核对）。
- 独立分支：`GPT-work/b699-height-20260909-9d40056a`；独立 checkout，不改动其他工作区现场。
- 开始：2026-09-09T05:58:52Z（上海 13:58:52）；原截止：2026-09-09T08:58:52Z（上海 16:58:52）。原预算 3 小时，初始化与推送计入；未延期。
- 45 分钟检查点：2026-09-09T06:43:52Z；收束：2026-09-09T08:13:52Z。
- 主线程负责本批记录、有效高度界、整合与推送；数学子任务最多两个 Astra / Max，常规支持 Luna / Max，独占文件另记。主线程未声称能更改自身模型档位。
- 写入边界：仅本批及 B699 README 导航；旧批、电脑新批、CI、依赖 pins、控制中心记录冻结。

目标：所有自然数 `1≤i<j≤n/2` 的原题反例，在 `4*i.primesBelow.card<i` 时给出明确可计算 `n≤H(i)`。实际 `F=Σ C(j,r) C(n-j,i-r) X^r`；完整大素数部分保留 `p=i` 和全部指数。

采用旧批验收，不初始化重跑：
- [云端旧批](../20260909-eees-chain-5a2e10/README.md)：实际 `U≤n^t`、轮筛、分拆和转移消费者。
- [电脑旧批](../20260909-large-prime-structure-cb4764f0/README.md)：实际 avoidingPart、完整幂整除；Jacobi 判别式与全局 `i≥10^6` 排除目前仅纸面。

入口：[frontier](frontier.md) · [完整报告](report.md) · [验收](verification/ACCEPTANCE.md) · [恢复与交接](HANDOFF.md) · [资源记录](notes/resources.md)。

首次决策：核对固定 Resultant/Basic 接口；实现实际系数整除，独立攻击具体判别式公式/非零性，同时保留阶乘消去准备显式自然数高度界。不得用公式参数宣布整链完成。

## 实际分工与首轮候选

- algebra（Astra / Max）：DiscriminantAlgebra.lean、JacobiIdentity.lean、notes/algebra.md。
- coefficients（Astra / Max）：CoefficientContent.lean、ScaledDiscriminant.lean、对应主题 notes。
- runtime（Luna / Max）：本轮工具/包缓存恢复、notes/runtime.md及verification/runtime；不编译旧题目源。
- 主线程：HeightArithmetic、FactorialHeight、ContentDiscriminant、OriginalHeight、验收入口、共享批次记录和远端保存。

上述分工已结束。早期“候选/待编译”描述是历史检查点；当前九份主链源码均已进入 [20260909T070200Z](verification/20260909T070200Z/evidence.json) 的成功验收。失败实验和开发日志保持独立，不能因同批提交而被视为已接受。
