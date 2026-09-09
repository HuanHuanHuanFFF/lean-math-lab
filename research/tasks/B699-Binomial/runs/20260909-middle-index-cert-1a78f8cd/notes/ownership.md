# 写入归属

主线程：README/frontier/report/acceptance/handoff、HeightRows与heightRows、具体高度桥和最终原题消费者、verification/runner及证据。

middle_prime_chain（Astra/Max）：lean/PrimeChain.lean、lean/primeChain/、experiments/prime-chain/、notes/prime-chain-interface.md，正素数链和有限n消费者。

middle_evidence_support（Luna/Max）：reviews/runner-audit.md、experiments/kernel-cost/summarize.py及该目录说明，只做证据工具与源审查，不编译。

low_index_mechanism（Astra/Max，接新任务）：lean/DyadicBounds.lean、lean/dyadic/、notes/dyadic-bounds.md，整数区间运算声音性。旧轮研究不继续。

最多3个活动子任务/2个数学；不递归。Lean与重计算槽由主线程统一授予，当前委派与旧线程身份不改变本批所有权。所有论文与外部优化接口须经用户转达后核对，未自动联系其他会话。

## 扩展与最终交付阶段

middle_prime_chain继续独占lean/extension的basis、primorial、primeChain及相应experiments/notes；主线程独占扩展heightRows/heightBlocks/AllExtensionHeights与ExtendedComplete。所有正在验收的Lean源码已冻结。

middle_statement_review（Astra/Max）独占reviews/final-statement-audit.md、extension-statement-audit.md及statement-audit证据，只读核对量词、证明树、来源与实际日志。

delivery_support（Luna/Max，15:00前后启动）独占reviews/delivery-link-audit.md/.json，只审查维护文档的链接和当前状态表述，不编译、不改其他文档。最终verification/final_integrity.py及验收/交接文件由主线程负责。

当前只有主线程的145049Z一条Lean计算流水线；首批、历史失败及新扩展源均不在编译中改写。所有子任务不得递归派生。
