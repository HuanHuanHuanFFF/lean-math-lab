# B677 外部约数候选归约接入

本批基于 `6074823870dfda8076710cefe063bf44b0fcc1c9`，接入较早 `08a8ac6` 外部审计独立新写的有限候选归约。主线程负责源码、消费者、验证与记录；Astra Max 做独立只读数学审查。开始：2026-09-08 14:39 UTC；用户未设时间预算。

原输入为自然数 `n,m,k`、`k>0,n+k≤m`。目标是固定 `n,k` 后用完整有限约数候选替代无界 `m`，不证明全题或新的排除范围。源文件按原字节接入 [DivisorRunAudit.lean](lean/DivisorRunAudit.lean)；原范围接口和可执行公理守卫在 [Consumer.lean](lean/Consumer.lean)。

来源：Kuber Mehta / `Kuberwastaken/c5-k4@5c6aae7e9550838a582178eb9320a658314396cc` 的 divisor-run 数学思想。C5-K4 未核得明确许可证；本批没有复制其程序，接入的是外部审计独立撰写的 Lean。原证据、署名和状态对照见[外部成果批次](../../../../external-results/20260908-erdos-686-677-699-b3c1b7/README.md)。

当前已通过新输出目录的完整项目依赖编译与 9 项传递公理守卫。精确声明、来源、失败与成功证据见 [acceptance.md](acceptance.md)，剩余范围见 [frontier.md](frontier.md)。本批接入已完成，原题仍未解决。
