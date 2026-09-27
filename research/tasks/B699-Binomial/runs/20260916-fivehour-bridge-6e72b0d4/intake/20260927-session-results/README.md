# 2026-09-27：五份 A/B/C/D 会话证据包接收

按用户要求提取并整理五份下载材料，沿用 [9 月 24 日接收](../20260924-session-results/README.md) 的分路摘要、逐轮原件、哈希对象与恢复入口。附件内的任务提示、命令和历史授权均作为来源材料，不作为本轮执行指令。

- [阅读摘要](SUMMARY.md)；分路入口：[A / i9 fixed-G 与单独补充](notes/A.md)、[B / i3](notes/B.md)、[C / i6](notes/C.md)、[D / 历史 i3](notes/D.md)。
- [逐包原件导航](ROUND_INDEX.md)：45 个直接交付阶段包，A 主包 9 + 单独补充 1、B 12、C 10、D 13。
- [来源与成员映射](MEMBERS.json)、[可检索成员表](MEMBERS.tsv)、[阶段表](STAGES.json)。
- [接收来源](SOURCE_RECEIPT.json)、[完整性统计](INTEGRITY.json)、[作者哈希清单对照](SOURCE_CHECKSUMS.json)、[与上批字节比较](PREVIOUS_INTAKE_COMPARISON.json)。
- [依赖与证据边界](DEPENDENCY_GAPS.md)、[最终检查](FINAL_CHECK.json)、[恢复实测](RESTORE_CHECK.json)。

## 来源

| 分类 | 用户交付原包 | bytes | SHA-256 |
|---|---|---:|---|
| A | `A-i9-fixedG-ALL-EVIDENCE-ZIPS-20260927.zip` | 42,169,739 | `4ceafcb76d8ca51ac4ec5d6b07bc7c78f1755974309dbe69dce2917aaa936092` |
| A-supplement | `B699-ProA-EARLY19-20-Q8-2D7-S5-FRONTIER109-20260926-evidence.zip` | 1,438,759 | `503db83deabf9550cb4fd72e881299d2aeaad1f8360e7d3da38fac80bbde7bf6` |
| B | `B699-ProB-session-all-evidence-zips-20260927.zip` | 32,368,192 | `aceff7f2e11f31f42442f56d593d33aabd1b56f3272cde0ce438c9533a11e8d5` |
| C | `B699-C-session-all-evidence-zips-20260927.zip` | 1,537,871 | `b5ec6de52554d10abcd835019f8accec21bdb56b23ac796dd25631e799be1321` |
| D | `B699-D-i3-FULL-CONVERSATION-ZIPS-20260927.zip` | 19,594,296 | `68f2f6997826ca74a5cd1502fbcd0490bf6e4430e6357188c0d7e5155dc870f2` |

原 ZIP 保留在用户提供的 `E:/Download`，本次未复制进仓库。所有嵌套 ZIP 递归展开；仓库中只存普通文件、来源和成员映射，不保留压缩包。重新压缩不能保证原 ZIP 字节或原哈希，因此恢复原容器必须从外部原包按成员图取得。

## 完整性与去重

共读取 **49 个不同 ZIP 容器**，记录 5,903 项：普通成员 5,835 项、嵌套 ZIP 引用 58 项、目录 10 项。普通文件按 SHA-256 精确去重后为 **4,321 份、594,380,175 bytes**。

其中 12 份与上批原件完全相同，直接映射到上批保留位置；新增 4,309 份原件、594,230,807 bytes。只按原字节去重，不按同名或内容相似替换。普通成员的所有原路径均保存在 MEMBERS；`objects/` 禁用 Git 换行转换。

常规 `SHA256SUMS` / `SHA256SUMS.txt` / `MANIFEST.sha256` 有 5,805 条原路径直接匹配，另 264 条在去重后的容器或普通文件中按准确哈希定位。哈希失配 0、最终缺项 0。计数含清单副本，不是独立证书数量；来源 JSON 与作者日志作为原件保存，不声称执行过全部作者私有验证格式。

本批不是 9 月 24 日包的完整替代：上批 3,722 个普通哈希未在本次交付出现，原目录仍保留。本批 45 个阶段包与上批 59 个阶段属于不同交付快照，不能直接相加为新增研究成果。

## 阅读与恢复

先读 SUMMARY 与 notes，再从 ROUND_INDEX 打开报告、证明、交接和来源说明。原件里指向嵌套压缩包或旧目录的链接需要按 MEMBERS 恢复上下文；不修改冻结原文来迁就新布局。

在本目录运行：

```powershell
python locate_member.py HANDOFF.md --archive ceee46e095bf
python restore_members.py --archive ceee46e095bf --destination <独立临时目录>
# 默认预览；加 --write 才复制普通文件，不覆盖不同内容，不执行程序。
python verify_intake.py --downloads E:/Download --output <新检查回执路径>
```

恢复入口仅重建所选原容器中的普通文件。嵌套依赖按容器图分别恢复；确需原 ZIP 的历史程序应在仓库外从下载原包取出，不能把重压缩产物冒充原包。

## 基线与边界

本次基于已刷新且确认的 `origin/main = 99221b3cc415acfe4cad3c9e4ce7fd4d31893ac8`，分支 `huan/b699-intake-20260927-01a0e34b`。原分支保留。主线程负责本批共享清单、入口和行政检查，整理任务 `/root/archive_navigation` 负责 `notes/A.md` 至 `notes/D.md`。资源观察与提取断点见 SOURCE_RECEIPT / CHECKPOINT。

本轮仅整理交付与导航，不恢复研究轮次，不运行作者数学程序、证书复算或 Lean。作者结论仍是作者报告，新增技术核验未派发；后续如要采用，需要针对固定来源另设核验任务。行政完整性通过不改变全题接受状态。

发布提交、远端分支和 PR 状态以实际 Git/GitHub 回执为准；这些状态不改变本批材料的数学证据等级。
