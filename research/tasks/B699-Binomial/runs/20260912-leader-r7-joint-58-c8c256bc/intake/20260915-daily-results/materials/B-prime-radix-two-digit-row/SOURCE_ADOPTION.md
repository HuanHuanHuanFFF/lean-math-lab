# 来源采用与执行边界

本轮依据本页最新R7用户要求接续；工具上下文出现的旧R12/R13任务不替代本轮要求，也不用于回退前沿。没有查询A/D进行中成果或当前Git仓库。

1. `sources/previous.zip`：上一轮规范邻数完整原ZIP，原字节保存；REPORT/HANDOFF/PROOFS采用边界仅作为接续定位，不重跑旧证书。
2. `sources/previous-PROOFS.md`、`sources/previous-HANDOFF.md`：上一轮原文本。先检查LOSS双侧组合，但未将其作为新定理前提。
3. `sources/digital-PROOFS.md` §1.2：三商给g⁴<3n的短证明，注明原来源D-as-B。当前证明重新写出适用于一般4|n的所需链，未升级其历史验证等级。

四项字节与SHA-256见sources/SOURCE_MAP.json；接受链在任意恢复目录仅核对包内副本，不依赖原绝对路径存在。原绝对路径仅记来源定位。

网上只为标准前置定向核对：
https://leanprover-community.github.io/mathlib4_docs/Mathlib/Data/Nat/Choose/Factorization.html

实际读取Nat.factorization_factorial及Nat.factorization_choose：Legendre地板和与进位次数。完整用于本轮的推导已在正文给出，没有调用远程代码、Lean对象或编译结果。一次B699题目检索没有采用新的数学输入；不会把搜索摘要当证明。

新主链没有出版数论高度输入、没有人类同行评审或外部独立数学验收。不同实现出自同一会话。声明的新结论由纸面证明、有限范围完整性和本轮确实运行的算术检查共同支撑，不由Python PASS自动提升等级。
