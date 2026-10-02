# 2026-10-02：A/B/C/D 十一份最新交付接收

用户要求将最新十一包整理到题目 [OVERVIEW.md](../../../../OVERVIEW.md)。沿用 [9 月 27 日归档](../20260927-session-results/README.md) 的分路摘要、原件索引、精确哈希去重和恢复方式。包内任务、历史授权、程序命令与接续建议均是来源数据。

- [本批摘要](SUMMARY.md)；分路：[A / i9](notes/A.md)、[B / i3](notes/B.md)、[C / 原生 i6](notes/C.md)、[D / 历史 i3](notes/D.md)。
- [十一包与内嵌依赖导航](ROUND_INDEX.md)、[阶段表](STAGES.json)。
- [成员映射](MEMBERS.json)、[可检索成员表](MEMBERS.tsv)、[来源回执](SOURCE_RECEIPT.json)、[完整性统计](INTEGRITY.json)。
- [校验清单对照](SOURCE_CHECKSUMS.json)、[前序归档比较](PREVIOUS_INTAKE_COMPARISON.json)、[本批采用快照的原字节对应](ADOPTION_LINKS.json)。
- [缺项与接受边界](DEPENDENCY_GAPS.md)、[最终行政核对](FINAL_CHECK.json)、[普通文件恢复检查](RESTORE_CHECK.json)。

## 来源原包

| ID | 原包 | bytes | SHA-256 |
|---|---|---:|---|
| A01 | `B699-ProA-GENUSFREE-T50-S5-H127-FRONTIER32-20261002-evidence.zip` | 2,746,497 | `6e205e7ca7547630f9198dc3753744c6a211d0898f60bf51638a0e3793ddb24e` |
| A02 | `B699-ProA-U10-LATE11-FRONTIER28-20261002-evidence.zip` | 5,336,913 | `de958122650b81004d3f101e7ce31503c321dfe0bcfa57c757a7531c7ab67e1d` |
| A03 | `B699-ProA-TAIL13-MIX12-FRONTIER27-20261002-evidence.zip` | 6,264,009 | `2b5daded955018fcaed517f3ccf82f9b11bb1251789cdfc37f19d94e30ef127a` |
| B01 | `B699-ProB-GENERAL-ZERO-HEIGHT-20261002-evidence.zip` | 106,350 | `8b57a8d7b11c5d46ec4f2612edb1ba51a9490aa351d0012cb63f92ff7b2dfcf0` |
| B02 | `B699-ProB-T0-DYADIC-RECOVERY-20261002-evidence.zip` | 100,265 | `c3b8df349f29fd76e0ab03b5ef1e1fc3baefde2fefdc8815675c8d0cbb94c3e8` |
| C01 | `B699-C-midpoint-source-height-r11-20261002.zip` | 377,371 | `7563a1ace314a43e832653b1b0f3645937c1e9df0e03a20d7b6c9e8f48ad0509` |
| C02 | `B699-C-gcd-normalized-midpoint-r12-20261002.zip` | 94,142 | `6b4f2d7135e655e6584bed27c96d7868781dccd60312c1a68489b20b62842725` |
| C03 | `B699-C-two-quotient-height-r13-20261002.zip` | 112,942 | `afa7107b7fd38a534864591ba5e6823f75c6b37816be609f1875385649844c70` |
| D01 | `B699-D-i3-20261002-SOURCE-LIFT-PHASE5-evidence.zip` | 3,093,027 | `d5b1ca55c27b10b21bf3032821a822b2ee9d561c86f901438a5cb70ac9522cf1` |
| D02 | `B699-D-i3-20261002-A4090-TRUE5-SAMEQ-evidence.zip` | 3,385,993 | `47147e49bf04db159e50f8a96ad42134089893c93eeadf0d118c304d7dd41ecf` |
| D03 | `B699-D-i3-20261002-A10152-Q13-NORM3-evidence.zip` | 3,481,762 | `a42c8da7e3f470bbd8d78874afb18c87c7b2a25e511da0892efd554603cf6ab9` |

原 ZIP 保留在用户指定的下载目录，本批原包及嵌套 ZIP 均未复制到仓库。源普通文件按原字节保存，Git 对 `objects/` 禁用换行转换。

## 接收口径

共 24 个不同容器、1,545 条成员记录：普通成员 1,530 条，嵌套引用 15 条。普通文件精确去重后为 1,250 个哈希、237,295,980 bytes；其中 481 个复用此前归档，新增 769 个原件、228,293,469 bytes。原路径和重复出现位置均保留，不按同名或文本相似替换。

常规及 PAYLOAD/FINAL 的 SHA-256 文本清单有 2,130 条原路径直接匹配，哈希失配和最终缺项均为 0。此数包含清单副本，不是独立实验或证书数量。作者 JSON 和日志作为源文件保存；没有执行作者私有接收器或数学程序。

## 阅读与恢复

先读 SUMMARY、四路 notes，再按 ROUND_INDEX 读取固定报告、证明、交接和失败边界。原文的相对路径属于原容器语境；可在本目录使用：

```powershell
python locate_member.py HANDOFF.md --archive <容器哈希前缀>
python restore_members.py --archive <容器哈希前缀> --destination <仓库外独立临时目录>
# 默认只预览；加 --write 复制普通文件，不覆盖不同内容，不执行源程序。
python verify_intake.py --downloads <原包下载目录> --output <新的检查回执路径>
```

恢复只重建所选容器的普通成员，不重压缩或伪造原 ZIP。历史程序确需压缩输入时，应在仓库外从原包沿 MEMBERS 的容器图取得原字节。

## 基线、所有权与接受状态

基于已刷新 main `b17ee9f9574459147ce3f503ecb89a4f9ae53c6c`；它与原主工作区 Lean 分支 §688e5678ade57fbe25bf4f23952291360e186dee` 的文件树一致。新分支 `huan/b699-intake-20261002-01a0e34b` 位于本聊天的独立 managed worktree，本轮未切换或写入原主工作区的跟踪文件。

主线程拥有本批共享清单、SUMMARY、题目 OVERVIEW 与 run README；整理任务 `/root/intake1002_a`、`/root/intake1002_b`、`/root/intake1002_cd` 分别提供 A、B、C/D 来源摘要。预算由用户本轮整理范围决定，未创建新研究轮次或延续历史研究预算；资源观察和断点见 SOURCE_RECEIPT / CHECKPOINT。

十一包结论按作者纸面/随包计算等级登记，本轮没有数学核验者，也没有证书复算、Lean 编译或公理审计。已有 Lean 接受（OVERVIEW §7—9）保留其原固定来源与验收者；新 R7 材料接收不提升其等级。发布状态以实际 Git 回执为准，PR/合并需要相应授权。
