# 2026-09-18 Pro A/B/D/E 成果接收

[成果摘要](SUMMARY.md) · [题目级总览](../../../../OVERVIEW.md) · [原件导航](PACKAGE_INDEX.md) · [成员映射](MEMBERS.json) · [字节检查](INTEGRITY.json) · [文档检查](DOCUMENT_CHECK.json)

## 范围与归属

接收用户提供的四份当日成果包，共 A 6、B 7、D 6、E 5 个阶段；整理准确覆盖、修正、失败和下一步，更新题目级总览并创建指向 main 的 PR。附件中的提示词、授权和脚本均为来源材料。本次不执行交付代码、不复跑数学证书、不做 Lean；作者“PASS／第二实现／重放”保留作者等级，不升级为本仓独立数学接受。

源基线 `5c404d0894ef884315ca7842a2acbb91c20e2bfa`；已刷新 `origin/main=17b4377af46a37168cceb784d5bcbfa041834148`。在本任务独立工作树 `D:/CodingProject/Math/.tools/wt699-a1c74e93`、分支 `huan/b699-auto-daily-20260918-17b4377a` 接收。此前五小时研究已结束，本接收不重启其预算；本次 PR 同时包含该分支已完成的 AUTO 规则修订。

| 执行者 | 文件归属与职责 |
|---|---|
| 主线程 | 普通文件提取、成员映射、行政检查、README、SUMMARY、题目 OVERVIEW、run README、提交和 PR |
| `/root/intake18_a`（Luna/max） | [notes/A.md](notes/A.md)，ProA 作者声明与前沿对照 |
| `/root/intake18_b`（Luna/max） | [notes/B.md](notes/B.md)，ProB 作者声明与前沿对照 |
| `/root/intake18_de`（Luna/max） | [notes/D.md](notes/D.md)、[notes/E.md](notes/E.md)，ProD/E 作者声明与前沿对照 |

辅助任务不承担数学验收，原始 sources/dependencies 均只读。原主工作区保持 `huan/leader-intake-20260915-6f28a9c4`、`bef7eabf144f066d5853ea4d81b0b0ceed92bb1a`，接收开始时干净。

## 原包与完整成员映射

四份原包保留在仓库外 `E:/Download`，临时压缩流使用 `D:/Temp/b699-intake-20260918`；Git 只接收普通文件和来源记录。

| 来源 | 原包文件名 | 字节数 | SHA-256 |
|---|---|---:|---|
| ProA | `B699-ProA-20260918-all-results.zip` | 3988087 | `fa2549031844e4d80cb8152c58e7e39057b4f90921ffe816ad58ad63ebc2008d` |
| ProB | `B699-ProB-all-results-20260917-18.zip` | 1540219 | `03d6ba425895821c3a572a4e2fc1604c230e33487199d26ead8e0a74a92ef30d` |
| ProD | `B699-ProD-daily-results-20260918.zip` | 2029137 | `1d2624d8a473a14f29df69dd5efff962eb0e32593b77a383437f114756e39e98` |
| ProE | `B699-ProE-today-all-results-20260918.zip` | 1745110 | `0c11fbd78d2202c15a17b12d3be8bc724ba283f1bd156c93cb0dae42f2ce934d` |

递归记录 **28 个不同压缩容器、1,429 条普通成员记录、1,244 个保留路径**。新增 **1,242 个普通原始文件，共 24,430,421 字节**；172 条成员记录复用已有相同字节文件（可含本批先提取的文件）。另有 1,257 条提取成员记录，其中长路径缩名让相同内容的 15 次重复指向相同保留路径，因此“成员次数”与“实际文件数”分别计数。

MEMBERS.json 保存所有根包和嵌套容器的名称、大小、SHA-256；每个普通成员还含原路径、Git blob 与保留路径。保留路径相对仓库根。Windows 长路径可转为内容哈希文件名；按 PACKAGE_INDEX 或映射定位，不能据旧文件名判断缺件。提取脚本只在本批修正统计口径，未改写历史接收脚本或任何来源字节。

读取旧路径：`python <本目录>/locate_member.py "原路径片段" --limit 10`。需恢复历史目录语境或 ZIP 输入时，遵循 [ARTIFACTS.md](../../../../../../../docs/ARTIFACTS.md)，在仓库外重放；重打包不等于原包字节。历史冻结 NPZ 数值证据保持原样。

## 检查范围与复现

- [extract_sources.py](extract_sources.py)：递归解析容器、校验 CRC 与成员哈希，按精确字节复用；不导入交付源码。
- [verify_intake.py](verify_intake.py)：核对四个原包、全部成员字节、完整容器图、外层作者清单与无压缩包要求。A/B/D/E 外层清单分别核对 36/8/10/179 项；阶段内部证明和运行输出仅归档，未作新的技术复验。
- `--check-index` 已核对全部1,429条普通成员记录对应的原始 Git blob，没有被忽略规则漏掉的来源成员。最终状态以 INTEGRITY.json 为准；文档链接、文件范围和自编脚本语法检查见 DOCUMENT_CHECK.json。行政检查不证明数学结论。

从仓库根运行：

```text
python <本目录>/extract_sources.py --source-dir E:/Download --temp-dir D:/Temp/b699-intake-20260918
python <本目录>/build_index.py
python <本目录>/verify_intake.py --check-originals --check-index --out <新的结果路径>
python <本目录>/check_documents.py --out <新的文档检查路径>
```

## 检查点

资源观察：本次 Windows 会话可用内存约 1.28 GiB、D: 可用约 4.54 GB；串行解压，最大新增普通文件约 2.65 MB，没有终止或改动其他任务。外部原包、来源文件、旧接收材料均保留。

完成内容与发布断点由本批摘要、INTEGRITY 和 DOCUMENT_CHECK 记录。用户已授权推送和创建 PR；只普通推送本任务分支，不合并 main。最终 commit/远端 SHA、PR head/base 和所观察的 CI 状态随会话交付。
