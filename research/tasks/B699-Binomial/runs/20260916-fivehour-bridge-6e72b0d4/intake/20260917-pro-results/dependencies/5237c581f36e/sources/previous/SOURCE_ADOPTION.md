# 来源采用与冻结边界

本轮只读采用本会话已提供的两个阶段材料，不读取其他会话进行中成果，不重新启动仓库任务。

1. `sources/previous.zip` 是上一轮 many-block 原包的原字节副本，SHA-256 `dcee06d806275d728e0f795981d9390b678a2655810a68cd84e58187f05a9850`。读取其 REPORT、HANDOFF、notes/PROOFS、notes/FAILURES；没有重跑历史全链。源报告、交接和证明另有原字节文本副本。
2. `sources/two-window-PROOFS.md` 为本页 earlier all-odd-prime-two-digit 的原证明，读取其两窗口二次约消。该线性余式身份、完整T整除属于旧前置；本轮新增 q<T 的唯一模代表和对应大小证明，从而删除旧 B<T，且无需 X≥T^3。
3. 原题及作者前沿继续按用户提供的 OVERVIEW2026-9-16-11：R7={3,...,9}。不声称在线实时前沿核验。
4. 定向外部核对：mathlib 官方 `Mathlib.Data.Nat.Choose.Factorization` 文档，访问日期2026-09-16；其中 `Nat.factorization_factorial`、`Nat.factorization_choose` 给阶乘估值和进位表述。URL:
   https://leanprover-community.github.io/mathlib4_docs/Mathlib/Data/Nat/Choose/Factorization.html
   本轮没有下载/打包其HTML，没有执行Lean，也不把当前网页源码状态提升为本任务的Lean验收。所需初等推理在新PROOFS §1展开，离线重放不联网。

确切文件大小和 SHA-256 在 SOURCE_MAP.json。新证明不调用上游POLY、Hadamard/结式阈值、ROW128、BFT、Padé、BEG或任何对数高度。仅比较上一轮消费者的同一源素数作用范围，未做全部历史消费者并集的差集审计。
