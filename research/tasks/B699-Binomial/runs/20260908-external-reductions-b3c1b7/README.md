# B699 外部大素因子部分转移接入

本批基于 `6074823870dfda8076710cefe063bf44b0fcc1c9`，接入外部审计独立新写的精确转移 T。主线程负责源码、消费者、验证与记录；Astra Max 做独立只读数学审查。开始：2026-09-08 14:39 UTC；用户未设时间预算。

原范围为自然数 `1≤i<j≤n/2`。没有原题公共素数时，`choose(n,i)` 中所有 `p≥i` 的完整素数幂部分整除 `choose(j,i)`。源文件按原字节接入 [DivisorTransfer.lean](lean/DivisorTransfer.lean)；原 gcd 形式的必要条件、逆否消费者和公理守卫在 [Consumer.lean](lean/Consumer.lean)。

检索线索来自对 Liam Price 的二手描述；该转移由外部审计独立用标准组合恒等式与互素消因子形式化，不主张数学首创或恢复 Price 原稿。EEES1978 仅是另行记录的后续文献输入，不属于当前 Lean 依赖。署名和原始证据见[外部成果批次](../../../../external-results/20260908-erdos-686-677-699-b3c1b7/README.md)。

当前已通过新输出目录的完整项目依赖编译与 6 项传递公理守卫。精确声明、来源、失败与成功证据见 [acceptance.md](acceptance.md)，剩余范围见 [frontier.md](frontier.md)。本批接入已完成，原题仍未解决。
