# 来源、依赖与冻结边界

本轮只读用户附件 B699-R7-next-research-20260912(1).zip。共享包 SHA-256：

    c8a55fa10fd31049ae206aeb0cc90c837e853d989b13ebef3023f0c0074050b5

入口 START_HERE.md 的 B 路径与 frontier.md 已读取。未查询在线 main、未读取其他会话本轮成果、未修改Git仓库。

采用两份内嵌原包：

- originals/B699-i3-square-row-prime-powers-evidence(1).zip → 本包 sources/b-original.zip。
  采用根 HANDOFF/notes/PROOFS；旧内容、基例、d/e分拆可沿其中 sources/pro-b 与 originals/previous-b.zip 恢复。
- originals/B699-ProD-R8-results-20260911(1).zip → 本包 sources/d-original.zip。
  采用 B699-ProD-R8-20260911/HANDOFF.md、notes/PROOFS.md §1—6、双侧恒等式。

两包 SHA-256、字节数和14份源文本的逐成员映射见 sources/INTAKE.json 与 outputs/sources.json。source检查只核原字节、ZIP CRC和成员映射，不重跑或提升其历史数学验收。

新推导没有外部出版输入；Kummer/Legendre的完整幂必要式按冻结B/D的自包含阶乘推导采用。没有进行新的文献首创调查。

旧的 β≤2^20 原题有限消费者作为已经交付的纸面＋精确证书前置；本轮不把它改称Lean，也不以本轮回归代替其完整证明。平方行任意指数新结论对源中r≤7定理没有循环依赖：它只用源的基础输入和重新推导的位置恒等式。
