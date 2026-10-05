# B156 可复用材料导航

先读 [累计总览](../../OVERVIEW.md)，再按下面的固定论证和实验接续。所有保留的研究文件与审读文件均按原字节复制，来源旧路径、现位置、大小和 SHA256 见 [SOURCES.json](SOURCES.json)。该清单只描述本次选取，不承担整份旧交付的恢复。

| 材料 | 复用内容与当前证据 |
|---|---|
| [完整论证](results/proofs/PROOFS.md) | §1–4、§10–11、§12.1、§12.3–12.4 通过具名独立 AI 纸面审读；§12.2 有指定有限核验；§5–9 仍为未审作者声称 |
| [来源与先例](results/source-map.md) | Singer/Ruzsa、Bertrand、平台目标与阅读副本的版本差异；属于原轮历史来源记录 |
| [Singer 提升实验](experiments/singer-lifts/README.md) | 保留成对间隔、低层、事件依赖及影响量脚本与输出；完整搜索范围见实验说明 |
| [数学审读](reviews/20261005-b156-math/REVIEW.md) | /root/review_b156_math，Astra/max；固定论证 SHA256 5a81a364…；AI 纸面接受，不是 Lean 或人审 |
| [有限审读](reviews/20261005-b156-inventory/REVIEW.md) | /root/review_b156_inventory，Sol/xhigh；两个 40320 空间与 17 元极大证书已独立重算；联合 40320² 空间未枚举 |
| [独立有限结果](reviews/20261005-b156-inventory/independent-results.json) | 固定输入哈希、直方图及完成证书，与 [执行日志](reviews/20261005-b156-inventory/independent-p7.log) 对读 |

## 历史路径与有意省略

旧审读中的 delivery/originals/Erdos156-A-20261005/proofs/PROOFS.md 对应本目录 results/proofs/PROOFS.md，字节哈希相同。所选 code/data/logs 迁至 experiments/singer-lifts，逐文件映射在 SOURCES.json；reviews 的相对位置保留。旧 source-map 中的 input 文件现从 [共享固定题面](../../../../shared/20261005-target-survey-01a10b87/README.md) 阅读，旧附件语境不构成接续依赖。

泛泛 REPORT/HANDOFF、原 README、MANIFEST/INTAKE、时钟/会话状态、提示词与重复输入、初始随机完成、大区间画像、群/循环桥实验及全包 verify/run_all 均未复制。它们不是当前使用入口。历史数学审读曾对照 REPORT/HANDOFF 的事实和原哈希保留在审读原文中；这些额外文本此次有意省略，不改变已审论证的固定源。

certificate-audit.log 记录旧输入下 1110 个异质证书组的历史审计；选取材料不足以重放这次完整审计，其未保留表格不获新的接受。独立 p=7 的决定性源和输出仍在本目录。

## 重跑条件与未覆盖项

独立审读脚本 independent_p7.py 固定 SOURCE 为旧 delivery 路径，且向 reviews 写输出。它保存的是旧程序版本，不应在当前证据目录直接执行。复跑须由具名执行者将其读入点适配到所选 data，并写新时间戳目录，另存新哈希/日志。本次没有进行该重跑。

无 Lean、公理审计、人工审稿或新颖性核定。原题 N 与模型 p、M、低层及间隔仍无界。下一项可证伪检查与全 N 后续义务见总览。

## 2026-10-06 数据解释补充

[原数据字典](results/DATA_DICTIONARY.md) 解释当前 structural/influence/paired 数据。expected_H 是全部非基底漏点期望，不能误当单纤维期望；structural 与 influence 的部分高度空间重叠，不能把计数简单相加。

字典也描述未保留的历史实验，这些章节继续属于未采用的作者范围，不新增其执行或接受。所选数据原字节、原题边界与具名审读不变。
