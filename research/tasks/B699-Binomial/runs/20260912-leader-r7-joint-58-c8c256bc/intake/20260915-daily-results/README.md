# 2026-09-15：A／B／D 十八份研究成果接收

本批接收用户提供的 Pro A、Pro B、Pro D 各六份原包。原件位于 `E:\Download`；本目录只保存展开后的普通文件、逐成员映射和整理记录，**不保存 ZIP 容器**。这是同一 canonical run 的一次资料接收，没有创建新的数学研究 run。

先读 [十八份成果合并阅读](SUMMARY.md)，再进入 [A 路整理](notes/A.md)、[B 路整理](notes/B.md)、[D 路整理](notes/D.md)；全局当前状态见 [CURRENT_STATUS](../../CURRENT_STATUS.md)。各路顺序依据作者的来源采用链记录；下表提供阅读入口，不把文件名或文件时间当作轮次证据。

## 十八份原始报告

| 路线 | 本次包 ID／主题 | 原报告 |
|---|---|---|
| A | uniform-cofactor／统一余因子 | [REPORT](materials/A-uniform-cofactor/B699-ProA-variable-support-20260915/REPORT.md) |
| A | coupled-edge-blocks／两侧块耦合 | [REPORT](materials/A-coupled-edge-blocks/B699-ProA-i9-coupled-edge-blocks-20260915/REPORT.md) |
| A | three-digit-closure／三位数子族 | [REPORT](materials/A-three-digit-closure/B699-ProA-i9-three-digit-closure-20260915/REPORT.md) |
| A | tridigit-exponent-bound／三位数指数界 | [REPORT](materials/A-tridigit-exponent-bound/B699-ProA-i9-general-tridigit-20260915/REPORT.md) |
| A | rough-base-repdigits／粗基数重复数字 | [REPORT](materials/A-rough-base-repdigits/B699-ProA-i9-rough-base-repdigits-20260915/REPORT.md) |
| A | cyclotomic-adjacent／分圆与相邻位置 | [REPORT](materials/A-cyclotomic-adjacent/B699-ProA-i9-cyclotomic-packets-20260915/REPORT.md) |
| B | uniform-digital-height-and-four-period／数字高度与四周期 | [REPORT](materials/B-uniform-digital-height-and-four-period/REPORT.md) |
| B | signed-complexity-and-single-run／有符号复杂度与单段 | [REPORT](materials/B-signed-complexity-and-single-run/REPORT.md) |
| B | periodic-block-and-double-run-closure／周期块与双段 | [REPORT](materials/B-periodic-block-and-double-run-closure/REPORT.md) |
| B | two-neighbor-square-and-primitive-block／相邻平方与本原块 | [REPORT](materials/B-two-neighbor-square-and-primitive-block/REPORT.md) |
| B | normalized-three-neighbor-and-square-rows／规范三邻数与平方行 | [REPORT](materials/B-normalized-three-neighbor-and-square-rows/REPORT.md) |
| B | prime-radix-two-digit-row／素数基数二位数行 | [REPORT](materials/B-prime-radix-two-digit-row/REPORT.md) |
| D | position-descent／位置下降 | [REPORT](materials/D-position-descent/REPORT.md) |
| D | lcm-denominator-closure／最小公倍数分母 | [REPORT](materials/D-lcm-denominator-closure/REPORT.md) |
| D | two-power-closure／两最大完整幂恢复 | [REPORT](materials/D-two-power-closure/REPORT.md) |
| D | odd-full-window／奇数完整窗口 | [REPORT](materials/D-odd-full-window/REPORT.md) |
| D | critical-quotient-closure／临界商 | [REPORT](materials/D-critical-quotient-closure/REPORT.md) |
| D | fatpoint-position-closure／重数点位置 | [REPORT](materials/D-fatpoint-position-closure/REPORT.md) |

报告同目录中的 HANDOFF、SOURCE_ADOPTION（若作者提供）与失败记录保留作者原字节。若去重后原相对路径没有直接文件，用下面的成员清单定位；不要把稀疏提取目录直接当作可运行的完整作者目录。

## 来源、完整性与恢复

- [SOURCES.json](SOURCES.json)：18 个用户原包的文件名、外部路径、实际大小、SHA-256、根成员清单与作者身份。
- [archives/](archives/)：49 个不同 ZIP 的逐成员清单。普通文件记录原路径、大小、CRC、SHA-256、实际 `stored_path`；嵌套 ZIP 记录同样的容器身份及子清单。`stored_path` 相对于本目录，允许指向仓库已有冻结文件。
- [BYTE_RECEIPT.json](BYTE_RECEIPT.json)：此次行政检查覆盖 3,686 个普通文件成员、60 个嵌套 ZIP 成员、2,578 个实际文件位置；18 个外部原包均重新核对哈希，错误为 0，本批 ZIP 文件数为 0。
- [REUSED_TRACKED_FILES.json](REUSED_TRACKED_FILES.json)：复用仓库中 1,252 个逐字节相同的已跟踪文件，避免新增约 24.9 MiB 重复内容；保留对应 Git blob 和固定基线。
- [ADMIN_REVIEW.json](ADMIN_REVIEW.json)：另一个文档整理任务做的行政复查；18 根、49 清单、60 嵌套引用、3,686 普通成员路径均可达，阅读入口的 107 个相对链接没有缺失。这不是独立数学核验。
- [EXTRACTION.json](EXTRACTION.json)：初次提取统计，早于“复用已有文件”的整理步骤，不代表最终新增占用。嵌套深度最高 12 层。

`materials/` 优先保留本轮各包的可读目录；`objects/` 保存唯一的历史文件、超长路径成员或被全局忽略规则匹配的原件。改名仅改变保存位置，成员映射与哈希保留原身份。`.gitattributes` 禁止 Git 自动转换这些原件的换行。

只做文件完整性检查：

```powershell
python research/tasks/B699-Binomial/runs/20260912-leader-r7-joint-58-c8c256bc/intake/20260915-daily-results/intake_archives.py --verify
```

需要恢复某一个包的普通文件布局时，在执行者的临时目录使用：

```powershell
python research/tasks/B699-Binomial/runs/20260912-leader-r7-joint-58-c8c256bc/intake/20260915-daily-results/intake_archives.py --materialize D-two-power-closure --destination .tools/replay/daily-20260915-D-two-power
```

此命令不运行数学代码、不覆盖不同字节，也不重建嵌套 ZIP。生成的 `NESTED_ARCHIVE_LOCATIONS.json` 指向子包清单；可用其完整 SHA-256 继续 materialize。若原作者程序必须读取原 ZIP，须从 `SOURCES.json` 指定的外部原包按成员链恢复容器；**Git 内普通文件不保证能重新压出相同 ZIP 字节**。换机器后没有外部 ZIP 时，普通文件仍可恢复和核对，原 ZIP 容器的当前可用性须另行登记。

## 证据与责任

- Leader：`/root`，负责来源、字节接收、仓库导航、总状态与后续任务入口。
- A/B/D 文档整理：`b699_intake_a_20260915`、`b699_intake_b_20260915`、`b699_intake_d_20260915`，均为 Luna/max；各自只写 `notes/A.md`、`notes/B.md`、`notes/D.md`。
- 数学结论按对应 Pro 的报告登记。作者纸面证明、作者有限计算、出版依赖、独立数学接受、Lean 与公理审计分别记录。**此次未运行作者程序、数学证书、Lean 或公理审计。**
- 待核验事项转入 [acceptance](../../acceptance.md) 的接收队列；尚未指派独立核验者，不将文档整理者计作数学验收者。

## 仓库与执行断点

本机源基线为 `main@c0517376026da6f8c58185a5bd86327127d29ce3`。现有 `huan/leader@3a22fe6d9` 不是该 main 的祖先，因此保留它，在 `huan/leader-intake-20260915-6f28a9c4` 接收本批文件。此次没有合并分支或改写历史；发布状态见[本批交接](HANDOFF.md)。

开始提取前本机可用内存约 2.93 GiB，D 盘可用约 7.75 GiB，E 盘约 71.18 GiB；CPU 为 i7-12650H、16 逻辑处理器。这是此次 Windows 快照，无容器 cgroup 限额。提取串行执行，仅文本归纳并发，没有开展数学计算。用户未指定研究时长，此任务为资料整理，不虚构研究预算。

下一步：从三路整理与 canonical 状态选择需要独立接收的固定结论，再决定下一轮研究。此次收到资料不等于授权恢复无限自动研究或新增 Lean 派发。
