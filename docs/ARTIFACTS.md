# 研究材料：阅读、去重与恢复

日常阅读从 [研究索引](../research/README.md) 和 [批次目录](../research/CATALOG.md) 进入；数学接受状态以各批次 frontier、acceptance 和固定验收记录为准。

## 已去重的历史验收文件

2026-09-12 清理了已停止的低指标研究批次中完全相同的历史脚本、源码快照和日志副本。Lean 模块路径、实际验证程序 `verification/runner/`、`evidence.json`、`acceptance.json` 和独有记录保留。原记录中的旧路径仍表示当时的文件布局。

映射和固定来源见 [去重清单](../research/shared/20260912-artifact-dedup-c8c256bc/duplicates.json)。每个旧路径都有相同 Git blob 的保留副本；不以相似文本代替原字节。

读取缺失的历史路径、重跑历史脚本、验证旧哈希或打包完整历史验收目录前，先在仓库根目录执行：

```sh
python scripts/restore-research-artifacts.py --check
python scripts/restore-research-artifacts.py
```

可用 `--prefix research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/verification/某次验收` 只恢复指定目录，也可指定一个旧文件路径。恢复文件是可再生成的本地副本，不应重新提交。

恢复程序逐项校验 Git blob 哈希，拒绝覆盖不同的现有内容。保留副本后来发生变化或被 Windows 转换换行时，从清单固定提交读取原字节；浅克隆缺少该提交时，按清单的 `source_commit` 获取历史后重试。此命令只恢复文件，不运行数学验证。检查原始 ZIP 字节哈希时也应使用清单固定历史提交中的原 ZIP；重新压缩提取目录不保证得到相同 ZIP 字节。

## ZIP 接收

接收研究 ZIP 时，记录原包哈希、来源、每个成员的原路径、大小、内容哈希与提取位置；嵌套 ZIP 递归检查到普通文件。区分来源文件、已采用源码与新生成的验收材料。

全部成员已按原字节落入仓库、每项有可访问的保留路径且恢复入口已记录后，移除当前分支中的原始 ZIP。成员未齐、原件不可读或映射尚不完整时，保留原包并记录具体缺口。不得仅凭“存在同名解压目录”判断完整。

旧来源说明保留原文，通过迁移清单及固定提交解释旧 ZIP 路径。成员位置见[原包清单](../research/shared/20260912-artifact-dedup-c8c256bc/archives.json)，原目录的 `ARCHIVE-LOCATION.md` 提供固定原件链接。旧脚本若硬编码 ZIP 输入，先在临时工作区按清单恢复原包，例如 `git restore --source=a71a34083c5f64ed2c4c1355d5e4eaafe55d4cdd -- 原ZIP路径`；这些重放用本地 ZIP 不重新提交。

发给用户的任务包仍按 LEADER 要求临时汇总为一份完整 ZIP；任务包与仓库内重复储存的原始 ZIP 是不同用途。

## 后续记录

新记录优先引用已有冻结脚本、清单及内容哈希，避免为每次验收重复复制相同字节。需要独立目录交付时，先恢复成完整目录再打包。当前各验证器保持现有行为；本次没有改写它们的证据输出格式，后续生成的重复快照仍需按同样的精确映射方式整理。

Lean 源码分块、定理名和导入路径继续保留。提取公共模块另走源码变更及对应验收流程。研究结论、失败诊断和证据等级不随整理而改变。
