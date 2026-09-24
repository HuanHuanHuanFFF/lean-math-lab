# 2026-09-24：A/B/C/D 全会话成果接收

本次用户要求“整理一下先，不要 push”。只做本地提取、来源对照、摘要与总览更新，不重启研究、不执行作者程序、不运行 Lean。根 README、AGENTS、正式库和历史证据保持原样。

- [当前进展摘要](SUMMARY.md)：累计 59 个正式阶段，较今天早期归档新增 22 阶段。
- 分路接续：[A/i9](notes/A.md)、[B/i3 数字多项式](notes/B.md)、[C/原生 i6](notes/C.md)、[D/i3 同一原输入平衡核心](notes/D.md)。
- [逐轮原件导航](ROUND_INDEX.md)：报告、证明、交接、勘误、失败与来源。
- [缺项、恢复与证据边界](DEPENDENCY_GAPS.md)。
- [MEMBERS.json](MEMBERS.json)、[MEMBERS.tsv](MEMBERS.tsv)：容器图、每项原路径/大小/SHA-256/保留位置。
- [接收基线](SOURCE_RECEIPT.json)、[完整性统计](INTEGRITY.json)、[作者校验表对照](SOURCE_CHECKSUMS.json)、[与早期四包比较](PREVIOUS_INTAKE_COMPARISON.json)、[本地最终检查](FINAL_CHECK.json)。
- [恢复入口实测](RESTORE_CHECK.json)：C24 的 33 个普通成员恢复后逐项哈希一致，未执行源程序。

## 来源与完整性口径

| 路线 | 用户交付原包 | bytes | SHA-256 |
|---|---|---:|---|
| A | `A-i9-fixedG-ALL-SESSION-2026-09-24.zip` | 123,699,973 | `f7a0b8206ad0bcd19d2af052a47d6bfc7ee510c48cc55af711703e6016c16126` |
| B | `B-i3-research-full-session-2026-09-24.zip` | 66,201,744 | `134e36ff349cb4d411809f955ee069ce20d32a3f92b65559693635e7f5e0b8d2` |
| C | `C-B699-open-FULL-SESSION-ARCHIVE-2026-09-24.zip` | 22,875,458 | `386901cadbfceed19e4718bf9d07c39c2c4c8b46d6cce4bd2ce170cc59c830e5` |
| D | `D-same-origin-ALL-SESSION-ARCHIVE-2026-09-24.zip` | 2,816,531 | `5db174471b8b094a05ae3346a6c9dea1b6e7ba0f2785fb0d2683e218c5f5bb77` |

递归读取 69 个不同 ZIP 容器（含 4 外包），成员记录 10,418 项，其中普通文件成员 10,208 项、内嵌 ZIP 引用 126 项、目录 84 项。仅完全相同 SHA-256 字节去重，保留 **3,734 份普通文件，共 275,716,117 bytes**。所有容器成员实际读取成功；原 ZIP 留在用户下载目录，不入库。嵌套 ZIP 可按成员图从未改动的外包取得；重新压缩普通文件不保证复原原 ZIP 哈希。

常规 SHA256SUMS/MANIFEST.sha256 共 11,876 条在原容器路径语境直接匹配；另 3,963 条随对象去重搬离旧目录，但均找到准确相同哈希的普通文件或原容器。没有哈希失配或最终无法定位项。此计数包含清单副本，不是独立证书数量；JSON 清单作为原件保存，不冒称每种作者私有清单格式均已运行。

今天较早四包的 1,494 个独有普通文件哈希、43 个原容器哈希均在本次包中找到；这些源字节已完整纳入。本次未复制较早外部整理目录的生成文档，也未改动该目录。旧 37 阶段在本批累计 59 阶段内，不重复计作新增。C7 preliminary、C15 早期稿及归档操作不计正式新研究轮。

`objects/` 按内容哈希保留来源字节，`.gitattributes` 禁用这些原件的换行转换。来源中的 Python 缓存按 `.pyc.source` 保存为不执行的数据，原名仍在成员表；没有悄悄丢弃成员。原件内个人路径/提示词/历史状态原样保留为证据，本次可编辑导航用相对路径。

## 阅读和恢复

优先读 SUMMARY 与 notes，再从 ROUND_INDEX 进入原报告。原件内相对链接属于旧目录语境；要继续研究时可以恢复所需**单个原容器的普通成员**，不需要准备 ZIP 输入包。

在本目录运行：

```powershell
python locate_member.py HANDOFF.md --archive 26d6e20f8a57
python restore_members.py --archive 26d6e20f8a57 --destination <独立临时目录>
# 确认列出的恢复数量后，加 --write 写入普通文件；不同内容拒绝覆盖。
python verify_intake.py --downloads <原包下载目录> --output <新的检查回执路径>
```

恢复只复制成员，不执行源程序，不复原嵌套 ZIP。脚本缺少嵌套依赖时按 MEMBERS 的容器图分别恢复对应普通文件；来源脚本仍沿用硬编码 ZIP 输入的，须在仓库外从原始外包按原成员取得 ZIP，不要重压缩冒充原件。

## 基线、归属和发布

刷新后的 origin/main：`bc66b6873d06c70628672ec004f5c5ea5583ff15`。本地接续基线：`d7192f4253f26f6bcb99caf9e693adc6febefce8`，是包含 9/22 接收的 main 后继；该前置此前作为 PR #24 发布，本次未断言它已合并。

独立分支 `codex/b699-intake-20260924`，工作树 `<repo>/.tools/wt-b699-0924`。主线程负责本目录共享文件、notes/C、题目 OVERVIEW 与所属 run README；三个 Luna/max 整理任务 `/root/intake24full_a`、`/root/intake24full_b`、`/root/intake24full_d` 分别只写 notes/A、B、D。数学核验均未派发/未执行，技术接受保持待定；后续待核点写入各 notes。原主工作区、9/22 工作树及其未跟踪 OVERVIEW-2026-09-21.md 保留。

发布状态：**仅本地整理；本轮不 push、不发 PR、不合并**。文件与链接检查只证明接收材料完整、导航可用，不证明数学结论。
