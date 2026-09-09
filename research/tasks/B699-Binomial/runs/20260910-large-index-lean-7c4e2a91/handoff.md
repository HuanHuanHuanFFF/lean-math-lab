# 交接入口（构建中）

工作区是本任务独立worktree，分支GPT-work/b699-1000-4882-20260910-7c4e2a91。本批固定来源12c31b8b5729b0017cf8e1423cd98ed5230aaaae，不采用其它并行会话本轮新成果。

恢复脚本：[verification/resume.ps1](verification/resume.ps1)。参数-Python、-Lean、-PackageRoot均指向已有工具与固定依赖；-BaseEvidence可多次给定本工作区内保留的实际证据。不给BaseEvidence会重新编译全部项目源码，固定包缓存仍复用。每次输出新时间戳目录，禁止覆盖历史日志。

当前长构建入口为lean/Acceptance.lean，391个项目源闭包，正在运行verification/20260909T184034Z；源码已提交推送fb2a991ef7dcab12dedbcb01442e1f2ccde10589。若该根失败，保留成功模块记录；最终验收必须生成success=true的新根，不能用evidence.partial.json冒充完整成功。

已识别的待局部修复：Complete.lean双整除转换使用不存在的Nat.dvd_of_dvd_gcd_left/right名称；待当前固定源构建到终点后，改为通过Nat.gcd_dvd_left/right的整除传递，并再检查最终消费者。数值证书不因此改动。

原6小时截止2026-09-09 23:59:27 UTC，第5小时评估22:59:27；绝对上限2026-09-10 00:59:27。当前未启用任何延长。只推本任务分支，不合并main、不建PR、不联系外部人员。
