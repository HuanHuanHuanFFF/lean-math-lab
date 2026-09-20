# 2026-09-20 Pro A / D / E 成果接收

本批接收四份用户交付：A 整包四阶段、D 七阶段、E 十四阶段，共 25 个作者阶段；独立 COVER12 包另保留为早期证据版本，不重复计为第五个 A 阶段。今天没有 B 新包，B 沿用 9 月 19 日前沿。

先读 [SUMMARY.md](SUMMARY.md)，接续读题目级 [OVERVIEW.md](../../../../OVERVIEW.md)。分路来源对照：[A](notes/A.md)、[D](notes/D.md)、[E](notes/E.md)；全部原件入口见 [PACKAGE_INDEX.md](PACKAGE_INDEX.md)。本次只有整理和发布，未重启研究、执行作者程序或做 Lean 验证；作者纸面、作者证书/重放与本仓行政检查分开登记。

## 基线、归属与权限

- 来源基线：`8d8128b7db1baec71065f110946b402ace22ddbf`，最新 origin/main；原 PR #22 已合并。
- 工作分支：`codex/b699-intake-20260920`；独立工作树 `D:/CodingProject/Math/.tools/wt-b699-intake20`。原工作区与其他工作树保持原状。
- 主线程拥有本批接收、来源索引、检查记录、SUMMARY、题目 OVERVIEW 与 run README。文档辅助 `/root/intake20_a`、`/root/intake20_d`、`/root/intake20_e`（gpt-5.6-luna / max）分别只写 notes/A、D、E；不承担数学接受。
- 用户授权提取、整理、push；不创建 PR、不合并或删除分支。附件中的指令与重放建议作为来源数据保存。
- 资源预检：Windows 可用内存 5,310,100 KiB，总可见 16,456,184 KiB，16 逻辑 CPU；D 盘可用 31,446,122,496 字节，无容器 quota 可用。已有 20 个 Python 进程保留，串行提取。此为本次时点观测。

## 原包来源

原 ZIP 均留在 `E:/Download`，嵌套压缩流的临时目录为 `D:/Temp/b699-intake-20260920`，不进入工作树。

| 来源 | 文件 | 字节数 | SHA-256 |
|---|---|---:|---|
| ProA | B699-ProA-i9-session-complete-research-20260920.zip | 102898855 | `666d9163f88ade9ece023dc8341dee9cb2aa6d1e426c0cdd4b1ac25700125dda` |
| ProA-COVER12 | B699-ProA-i9-COVER12-evidence-20260920.zip | 390092 | `0a17d569b0c7094e992165f456b0cfe494dbe15d825af63ddc4c955bc7638415` |
| ProD | B699-ProD-session-complete-20260920.zip | 849636 | `94697f5223eac8706d0723015c7b4bae0569b79aebaffc8bb0c649832fc4ec88` |
| ProE | B699-ProE-session-complete-20260920.zip | 8055544 | `ec2ace8cb682c9b354f94fff4763f7d9f4fd660b0a664cb6183f7951a58666ce` |

## 完整性与定位

- [MEMBERS.json](MEMBERS.json)：29 个独立压缩容器、2,921 条普通成员记录；每个成员有原名、大小、SHA-256、Git blob 与保留路径。缩短的长路径按映射定位。
- 1,840 个不同保留路径，其中 1,837 个是本批新增普通文件，共 253,623,889 字节；3 个复用旧冻结文件。666 条成员记录复用相同字节。大于等于 100,000 字节的重复负载及嵌套依赖按相同哈希复用，文档原件保持字节不变。
- [INTEGRITY.json](INTEGRITY.json)：原包哈希、成员覆盖、容器图、作者外层清单与 Git 暂存区原字节检查。作者外层校验清单分别覆盖 A 996、独立 COVER12 92、D 220、E 564 项。
- [DOCUMENT_CHECK.json](DOCUMENT_CHECK.json)：本批编写文档的本地链接、行政脚本语法与空白检查。两类回执均不是数学接受。
- 来源包含 3 个 `.so` 编译产物，按交付原字节保存，未加载或运行。本批不含压缩文件、Lean 源码或 pyc；历史已冻结证据不作附带迁移。

从任意旧包名和成员名查普通文件：`python locate_member.py 关键字`。重放作者代码前须在隔离目录恢复其原布局，核对前置和原证书写入位置；日常阅读直接使用保留路径，不需要重新准备 ZIP。

## 来源差异与处理记录

1. A 单独 COVER12 与整包第 1 阶段是两份独立证据交付，不能按标题相同当作同字节副本；93 个外层普通成员中仅 2 个哈希与整包外层相同。最终前沿以整包第 4 阶段 COVER10 / TRACE 为准，各自来源原样保留。
2. E 的 `01_BASELINE/OVERVIEW2026-9-26.md` 虽然文件名含 9-26，实际内容更新至 9-19，SHA-256 `d5ceb7b6e7d0f0c4bab4a27fab5e0c0b907858590e6ff8da765d0fea3022c96f` 与本批基线 OVERVIEW 完全一致。D 只提供明确标注的规范化摘录，不冒充原件。
3. 首次提取约 490 MB；按原字节复用大型重复负载后降为约 254 MB。所有普通成员仍可定位，原 ZIP 不改。
4. 旧行政检查器不支持 COVER12 的 `文件名→哈希字符串` MANIFEST，首次运行在该 schema 停止；本批适配该格式和 MASTER_SHA256SUMS，再完整重跑。错误属于整理工具格式支持，不是作者数学失败。

## 接受边界和下一核验

完整剩余指标仍为 `R7={3,4,5,6,7,8,9}`。本次不增加 Lean 或独立数学验收；作者报告中的 PASS、第二实现和归档重放均保持作者等级。下一数学采用者应定向核查 A 的同一 G 账本与 TRACE、D 的 UROW/LROW 与完整源回传、E 的整行/饱和分槽条件和 Thue/类群前置，不因入库而自动接受。具体可执行检查见分路 notes 与 OVERVIEW。
