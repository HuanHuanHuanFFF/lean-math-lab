# B699 low-index structure

本批身份：20260909-low-index-structure-b41a5a63。分支 `GPT-work/b699-low-index-20260909-b41a5a63`，源main `7fd3928656489afe2c80698f0a09d1d933444186`。只写本批；旧批、题目导航、云端新批、控制中心、CI及依赖pins保持边界。

原始5小时预算：上海2026-09-09 13:59:09–18:59:09（UTC05:59:09–10:59:09）。18:14:09开始收束，未延期。前45分钟检查点已在06:43前写成、对应快照已推送a6781549。主任务用户指定Astra/Max；数学最多两个Astra/Max、支持Luna/Max，总子任务最多三个，无递归。所有重计算由主线程串行、Lean -j1/-M1536。

## 当前主要结果

- **纸面证明与独立精确覆盖完成，仍在补完整Lean：** 对全部合法n,j，i=29或35≤i≤184时Common成立。它排除了旧S中的85个指标，而不是只给它们高度。见[报告](report.md)、[数学审查](reviews/independent-math/review.md)及[独立覆盖检查](experiments/two-colour-check/README.md)。
- **无条件Lean已验：** 实际D的三窗口完整幂整除、noCommon下V版和原题数值消费者。固定版本新闭包6模块、实际27项公理打印仅标准三公理；[验收](acceptance.md)。
- 高度、联合小素数幂/覆盖及终端证书连接继续形式化，尚不把整个151指标定理列为已Lean验收。
- i=3/4的斜率、中心带、CRT候选参数化及稀疏性均保留为独立纸面结果；未给两个低指标全域解答。入口[低端交接](notes/low-index/handoff-and-localization.md)。

## 当前所有权与恢复入口

主线程负责共享记录、lean/ThreeWindowWeights.lean、ThreeWindowSize.lean、HeightCertificate.lean及后续Bernoulli/M证书接续、串行验证和Git。low_index_mechanism已交低端笔记，当前负责SmallPrimeLocalization.lean。fresh数学审查已结束，原review冻结；同一角色的新实施任务独占LargeSmallPowers.lean。Luna支持负责独立checker证据修复与有限高度数据生成，文件范围按委派记录分开。

首先读[frontier.md](frontier.md)、[report.md](report.md)、[acceptance.md](acceptance.md)。纸面与数据链入口[高度交接](notes/heights/HANDOFF.md)。工具/资源[启动记录](notes/resources-start.json)，固定来源[采用清单](notes/source-adoption.md)。普通进程/文件编辑器可能报helper_unknown_error；实际获准pwsh入口可用。新工作树位于忽略目录，验证器必须用repo-relative源码索引入口，不能重复旧绝对路径过滤故障。

可运行主验证器是本批verification/runner/verify_repo_relative.py；--root指定本批实际消费者，--project-root为本工作树，固定D盘Lean4.33.1与9包缓存。每次正式验收全部项目依赖新编；开发缓存不充当最终接受。
