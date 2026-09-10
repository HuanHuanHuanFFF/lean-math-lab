# B699 研究上下文资料包（2026-09-09）

这是供两个独立 Chat 研究会话使用的固定材料包，不是任务提示词。任务提示词由用户在压缩包外粘贴。本包没有启动或转达任务，也没有运行新的数学实验或 Lean 验证。

## 原题与当前前沿

对自然数 n,i,j，满足 1≤i<j≤⌊n/2⌋，目标是存在同一个素数 p≥i，同时整除 C(n,i) 与 C(n,j)。包括 p=i。全称结论须覆盖声明范围中的全部 n,j；可接受直接核对原题的精确反例。

当前接收记录在纸面＋精确证书层覆盖全部 i≥26，以及 i=1,2,17,23。各部分可能引用已出版理论，并未统一 Lean 化。完整 B699 尚未解决。

尚未全域排除：R={3,4,…,16,18,19,20,21,22,24,25}，共21项。i=3尚无绝对有限性；其余20项已有非有效有限性来源，需要具体有效化或完成排除。固定辅助参数后的有限性不能替代绝对有限性；未实例化的常数也不等于可执行数值界。

最新七项闭合为 {17,23,26,27,30,32,33}，其完整推导和精确证书见 seven-index 原包；它使旧28项缩减为21项。新七项链尚未 Lean 化。

185≤i≤999 的全部815项已完整 Lean 验收，最终定理 B699Middle.common_185_999 无额外证书或出版定理假设，传递公理仅 propext、Classical.choice、Quot.sound。验收记录说明404个项目源依赖闭包中246个实际新编、158个绑定源码与依赖复用，未执行独立第二内核。原始验收记录附于 sources/lean-815-acceptance.md。本次资料整理没有重跑这项验证。

冻结 main：12c31b8b5729b0017cf8e1423cd98ed5230aaaae，已包含上述815项交付；原工作分支交付点：759df6da085d7ed928a90927d697a8494e7bcf05。
仓库：https://github.com/HuanHuanHuanFFF/lean-math-lab

## 选择性阅读入口

先核对以上原题和前沿，再按具体路线打开相应原包。历史原件不修改，因此其中的“尚余28项”“只有677项Lean”等时间状态可能已过时，以本入口的21项、815项为接续基线。更早已 Lean 完成的局部定理可按需从仓库查找；这里只列与本轮决策直接有关的范围，不是全仓库定理目录。

| 本包路径 | 用途与原包阅读入口 |
|---|---|
| originals/seven-index-closure.zip | 最新七项全域闭合；先 REPORT.md、FRONTIER.md，再 notes/PROOFS.md、notes/CERTIFICATE_FORMAT.md、实际证书与检查代码。33个下降阶段、47,113个最终候选全部排除，未枚举j；不保证对任意新高度都可负担。 |
| originals/shifted-slope-research.zip | i=3的初等新结构；打开 B699-shifted-slope-research-20260909/REPORT.md。min(b₀,b₁)≤32及靠近整数斜率的整族已排除；固定分子有七次高度，辅助分子仍无界。 |
| originals/low-index-bounds.zip | 七项的旧初始高度、外部定理映射、退化处理与四个备用指标；打开 REPORT.md、SOURCES.md。i=16,19,22,25的含C₀界仍须具体化，不能当作完整数值高度。 |
| originals/prime-input-optimization.zip | i≥1000纸面线性界、初等计数EC、整数计数桥、短区间素数供应；打开 b699-prime-optimization/REPORT.md。inputs/previous-evidence-unchanged.zip 与 previous-report.md 保存前一轮中间指标材料。 |
| sources/lean-815-acceptance.md | 从固定交付759df6d导出的原字节验收文档；其中相对链接应回到该提交下原批次目录解析，不代表日志全部在本包内。 |

## 两条容易混淆的边界

1. 纸面线性界 n<4096i 与短区间素数定理组合给出 i≥1000 全域纸面结论。其 EC、计数桥、归一化、短区间依赖必须分开看，不能因已有 Lean 高度和有限n消费者就认定整条链已经 Lean 通过。
2. i=3已知必要条件包括 4|n、n−1|3j(j−1)、n−2|6j(j−1)(j−2)，这些不是原题反例的充分条件。设 b₀=j/gcd(n−1,j)，b₁=(j−1)/gcd(n−1,j−1)；排除它们的固定/有界子族尚不能约束所有反例。对整数m的新界 n≤33(n−1−mj)²，也需要对偏移作统一控制才可能推出整个i=3有限。

这些材料是可复用的证明与证据来源，同时应接受针对性的数学审读。引用出版定理必须保留完整假设与例外；原始脚本PASS、AI审读、实际Lean验收、人类审稿、新颖性调查是不同状态。发现具体矛盾时回到推导和真实证书，不能以本入口摘要替代证明。

## 来源和完整性

四个原ZIP均按字节保留，仅改本包内文件名，完整SHA256和上传来源名见 SOURCE-MANIFEST.json。原ZIP内部可保留历史 TASKS.md，这是原始材料的一部分，不是本轮派工提示词。

Lean验收文档固定来源：
https://github.com/HuanHuanHuanFFF/lean-math-lab/blob/759df6da085d7ed928a90927d697a8494e7bcf05/research/tasks/B699-Binomial/runs/20260909-middle-index-cert-1a78f8cd/acceptance-815.md

本包只核对归档路径、原件字节和哈希、ZIP可读性，没有重跑大规模研究脚本或Lean构建。两份 Chat 任务各自用本包即可启动，不需要等待其他 Work 或 Chat 的新成果。
