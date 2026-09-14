# 2026-09-14：外层指数、立方残量与两个 D 接收

本次行政接收属于原 run，不新建数学研究批次。当前数学前沿只在 [CURRENT_STATUS](../../CURRENT_STATUS.md) 维护；这里记录固定输入、文件归属、派发版本和接收边界。

| 交付身份 | 原报告与交接 | 来源与恢复 |
|---|---|---|
| Pro A / 外层指数与本原性 | [REPORT](../../deliveries/A-outer/REPORT.md) · [HANDOFF](../../deliveries/A-outer/HANDOFF.md) | [SOURCE-LOCATION](../../deliveries/A-outer/SOURCE-LOCATION.md) |
| Pro B / 立方禁形与整行 | [REPORT](../../deliveries/B-cubic/REPORT.md) · [HANDOFF](../../deliveries/B-cubic/HANDOFF.md) | [SOURCE-LOCATION](../../deliveries/B-cubic/SOURCE-LOCATION.md) |
| 旧 Pro D / transfer-verified | [REPORT](../../deliveries/D-transfer/REPORT.md) · [HANDOFF](../../deliveries/D-transfer/HANDOFF.md) | [SOURCE-LOCATION](../../deliveries/D-transfer/SOURCE-LOCATION.md) |
| 新 Pro D / three-window | [REPORT](../../deliveries/D-three-window/REPORT.md) · [HANDOFF](../../deliveries/D-three-window/HANDOFF.md) | [SOURCE-LOCATION](../../deliveries/D-three-window/SOURCE-LOCATION.md) |

旧 D 与新 D 的身份来自用户说明：误判旧会话停滞后接续，后来发现旧会话仍在。本轮只由新 D 接续；两件原交付独立保留，不互相覆盖，也不重复计功。

## 文件与字节

[SOURCES.json](SOURCES.json) 是本次四个外层 ZIP 的总清单；[members.jsonl](members.jsonl) 是逐成员视图，各 route 的 INTAKE_MANIFEST 记录原成员名、当前去向、大小和 SHA-256。读取大清单时取汇总或选定成员，不全文打印。

原包共 492 个外层文件成员。主报告、HANDOFF、SESSION_STATE、README、失败边界在各路保留原字节；其他成员精确复用 main 已有 Git blob 或本批首次保留的相同字节。ZIP 与超过 512 KiB 的成员留在完整原 ZIP，仓库保存来源定位，不重复放入大二进制。归档指针和 Git 复用不表示已复跑原程序。

四个原 ZIP 均随已交付的 B699-ABD-next-round-20260914-v1.zip 保存；大小、SHA-256、文件身份与保存回执见 [DISPATCH_PACKET.json](DISPATCH_PACKET.json)。原包仍分别可定位，成员原名包括被移除的顶层前缀。用户上传名中的 (1) 仅在共用包内作文件名规范化，原字节不变。

复现作者目录时，取得该完整任务包，按其 README 运行 prepare_inputs.py 的对应路线恢复四个原包，或者直接把目标原 ZIP 解压到新的空目录。Git 中各 delivery 是去重后的阅读视图；原作者验证程序需要原目录及对应冻结输入，不能在这个视图直接声称可复现。嵌套 ZIP 只保留其容器字节，本次没有递归展开，不声称已经核验完整历史闭包。明确缺口见 [INTAKE_REVIEW](INTAKE_REVIEW.md)。

## 任务和证据

[DISPATCH.md](DISPATCH.md) 记录本轮权限与可取得的回执；[dispatch-v1/PROMPTS.md](dispatch-v1/PROMPTS.md) 和 tasks/ 保存原派发文本。此处 dispatch-v1 只保存原包的文本、元数据及恢复脚本；archives/ 在完整下载包中，所以不要直接在 Git 这个文本子集运行恢复脚本。原 v1 manifest 仍针对完整下载包，未改写成这个子集的 manifest。

任务包是 Leader 根据四个用户原件制作的派发材料，不是第五份作者研究交付。v1 中的推荐并发顺序、尚未启动标签及旧基线是打包时快照；它们不覆盖当前回执或最新 Git 接管记录。未创建 v2，也未重新投递任务。

作者证据与独立接受分别见 [acceptance](../../acceptance.md)。行政整理执行者 intake_stage 负责 staging；packet_provenance 负责独立字节映射复核；VPS Leader 维护 canonical 状态、采用界限与 Git 元数据。这些角色均未运行数学验证器、证书重放、Lean 或公理审计。

## 行政复核与处理

[独立行政复核](ADMIN_REVIEW.md)及[机器记录](ADMIN_REVIEW.json)：492/492 个外层成员去向可恢复，四个原包大小/SHA/CRC 对账通过，179/179 个直接 main 引用通过。该复核针对 staging 与原 ZIP；复制进仓库后的本地目标、冻结文本及新增文档链接另见[整合检查](INTEGRATION_REVIEW.json)。未发现成员字节不一致。

最终互斥去向为 173 个本地原字节副本、179 个直接 main 引用、119 个路线复用、21 个原 ZIP/大成员定位，合计 492。stage 的 122 个跨包/档案复用包含了 3 个同时属于后者的定位，不能把 173+179+122+21 相加；当前 SOURCES 和 COMPLETION 已改为互斥汇总，原成员映射未变。其他行政修正只涉及实际记录时间、路径语境和任务包由 Leader 制作的归属；作者报告、代码、日志和原 manifest 均未修改。

## 接管与历史

[CHECKOUT_RECEIPT.json](CHECKOUT_RECEIPT.json) 记录整理前干净的精确 main 检出；[VPS 接管记录](../../notes/20260914-vps-leader-takeover.md) 解释旧基线分叉与稀疏浅检出。该收据不是整理后的 clean 声明，也不是提交/发布回执。

[previous-status-at-main.md](previous-status-at-main.md) 保留最新 main 中旧 CURRENT_STATUS 的原字节；其中下载阻塞、暂停和“运行中”均是该历史版本的记录。读取当前状态须返回本 run 的 CURRENT_STATUS。
