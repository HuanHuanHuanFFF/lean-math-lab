# B128 可复用材料导航

先读 [累计总览](../../OVERVIEW.md)。所选论证、脚本和具名审读均保留原字节，来源映射见 [SOURCES.json](SOURCES.json)。证明合订本和废稿省略，按独立论证直接复用。

| 材料 | 复用内容与接受范围 |
|---|---|
| [一般界基础链](results/proofs/GENERAL_BOUND.md) | 平衡负方向、四候选、平均化、整数舍入；已独立 AI 纸面审读 |
| [一般界强化链](results/proofs/GENERAL_BOUND_REFINED.md) | 依赖已发表 R1/R2/R3 的 C_+=110637361403/4196188620800；仍严格大于 1/50 |
| [Clebsch 证书与无界障碍](results/proofs/CLEBSCH_CERTIFICATE.md) | 最优 4 边、整数 Gram、完整邻域模板 6t² 下界与真最优 4t² |
| [根签名精确优化](results/proofs/LOCAL_ORACLE.md) | 可复用的优化合同与算法论证；全部 14 轨道最优值未独立重审，仍为作者范围 |
| [失败与义务记录](results/FAILURE_BOUNDARIES.md) | 12 点质量失败、完整邻域障碍、外部证书缺口；是作者轮末历史记录，“未独立审读”字样由后续具名审读更新 |
| [来源记录](results/source-map.md) | 平台版本、Razborov 来源、先例与未核新颖性 |
| [实验入口](experiments/sparse-half/README.md) | 三份已独立执行脚本、根轨道程序与作者范围 |
| [具名审读](reviews/20261005-b128-delivery/REVIEW.md) | /root/review_b128_delivery，Astra/max；主链、Clebsch 与指定精确重放接受 |
| [独立 Clebsch 证书](reviews/20261005-b128-delivery/clebsch.json) | 12870 半集、Gram、邻域、12 点失败例；[构造审计](reviews/20261005-b128-delivery/constructive.json) 与 [代数](reviews/20261005-b128-delivery/algebra.json) |

## 历史路径与有意省略

旧 delivery/originals/Erdos128-C/proofs/ 下所选文件现位于 results/proofs/，字节相同。旧 PROOFS.md 合订本的 A/B/C/D 节分别对应 GENERAL_BOUND、GENERAL_BOUND_REFINED、CLEBSCH_CERTIFICATE、LOCAL_ORACLE；合订本只是重复集成，故未复制，不能把分拆文件冒称原合订本哈希。GENERAL_BOUND_DRAFT 明确已废弃，也未采用。

泛泛 REPORT/HANDOFF/ACCEPTANCE、会话状态、MANIFEST/INTAKE、任务提示词及重复输入、全包 replay、早期和重复 final 日志、作者构造/代数/Clebsch 重复输出均未复制。reviews 的固定源记录保留其旧哈希与历史对照事实。作者 FAILURE_BOUNDARIES 中 data/clebsch-exact-certificate.json 所指的具体失败例，现在可从上述独立 Clebsch 证书阅读；这是另次独立输出，不是原作者 JSON 的字节替身。

[共享固定题面](../../../../shared/20261005-target-survey-01a10b87/README.md) 提供原题阅读入口。所选完整论证和具名接受范围不依赖原 ZIP。

## 重跑条件与未覆盖项

所选三份审计脚本及 local_templates.py 使用显式 --out，可在新时间戳目录另存结果；不覆盖 reviews 或旧 data。见实验说明。本次没有执行脚本或验证重定位后的结果。冻结 commands.json 内 SOURCE 路径属于当时执行位置。

外部 PSD/Maple 证书、R3 原证明、14 根轨道全重审、Lean、公理审计、人类同行评审与当前世界纪录核定仍未完成。四根新方案必须先对任意块质量证明候选合法；固定图成功不够。

## 2026-10-06 补充记录

[输入来源比对](results/input-provenance.json) 保留原上传资料包哈希和六份输入的作者历史比对记录；旧 source-map 中 data/input-provenance.json 对应此文件。它不是本次重新检查原 ZIP 的结果。

小图 C++ 全枚举及单份作者输出已补入[实验入口](experiments/sparse-half/README.md)。原字节与来源见 SOURCES.json，当前接受论证不依赖它们；未新增数学执行、Lean 或独立接受。
