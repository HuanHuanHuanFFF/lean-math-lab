# B25 可复用材料导航

先读 [累计总览](../../OVERVIEW.md)。选取文件均保留原字节，旧路径、现位置、大小、SHA256 见 [SOURCES.json](SOURCES.json)，不恢复泛泛交付和附件包装。

| 固定论证 | 复用内容与接受范围 |
|---|---|
| [universal-modulus-budget](results/proofs/universal-modulus-budget.md) | 任意有限互异单剩余系统的 MB；扩宽 epoch 障碍；零中心局部调和最优的 N=24 反例 |
| [finite-integer-centers](results/proofs/finite-integer-centers.md) | 固定有限整数中心（含负中心）无限子类有对数密度 |
| [subsequence-extraction](results/proofs/subsequence-extraction.md) | HEAD_EXCESS 条件归约及 TC 等价；没有满足其前提的具体无限系统 |
| [486-singleton-capacity](results/proofs/486-singleton-capacity.md) | 指定稀疏素数标签架构的单剩余容量障碍；不是原题反例 |
| [first-kill-obstruction](results/proofs/first-kill-obstruction.md) | 逐行密度收费错误的塔反例；已有 Chojecki 先例 |
| [来源记录](results/source-map.md) | 平台版本与外部先例的历史来源；新颖性未认证 |
| [实验入口](experiments/finite-systems/README.md) | 容量/塔、有限引理、UF 搜索脚本和选取输出 |
| [具名审读](reviews/20261005-b25-delivery/REVIEW.md) | /root/review_b25_delivery，Astra/max；五份纸面证明已审，两个小脚本与额外小检查已复跑 |
| [复跑汇总](reviews/20261005-b25-delivery/logs/summary.json) | 两项退出码与固定输出对应；[额外独立小检查](reviews/20261005-b25-delivery/logs/independent-small-checks.json) |

## 历史路径与有意省略

旧 delivery/originals/Erdos25-B-20261005/proofs/ 下五份固定论证现在位于 results/proofs/，字节不变；所选 experiments/ 和 data/ 迁到 experiments/finite-systems/code 与 data。详细映射见 SOURCES.json。reviews 原相对布局保留。平台与阅读副本从 [共享固定题面](../../../../shared/20261005-target-survey-01a10b87/README.md) 进入。

泛泛 REPORT/HANDOFF、原 README、CLAIMS/SELF_AUDIT、会话时钟、MANIFEST/INTAKE、输入副本及任务提示词、全包 replay/REPRODUCE、重复作者 replay 输出、exhaust_small 的大枚举和互素启发式搜索未复制。独立审读内对省略报告的历史对照仍保留原文和旧哈希；实际接受的五份论证与具名执行证据完整可读，不需原 ZIP。

## 重跑条件与未覆盖项

check_and_replay.py 保存旧程序字节，但依赖 delivery、REPORT/HANDOFF 等旧输入，并写本 review/logs。不能直接用它覆盖当前冻结证据。后续具名执行者可在新时间戳输出目录运行所选独立小脚本，按 SOURCES.json 绑定其源码；命令入口见实验说明。本次只核对复制字节和新导航，没有进行数学重跑。

大枚举及搜索仍是作者有限记录；UF、TC 和一般无界中心系统未证。没有 Lean、公理审计、人审或新颖性接受。下一步须计算实际周期并集与全部激活删除总量，不能只按单行密度收费。
