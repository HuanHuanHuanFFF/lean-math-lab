# 2026-09-16 Pro A / B / D 接收

[成果摘要与下一核验入口](SUMMARY.md) · [题目级单文件总览](../../../../OVERVIEW.md) · [完整成员映射](MEMBERS.json) · [完整性检查](INTEGRITY.json)

## 范围与状态

用户要求提取整理三个下载包，并将“大轮结束更新 OVERVIEW.md、仓库使用普通文件交付”写入 AGENTS.md。主线程负责接收、规则、总览和 Git；`/root/intake_summary`（Luna/max）只写本目录 SUMMARY.md。工作继续在独立工作树 `D:/CodingProject/Math/.tools/wt699-a1c74e93`，来源基线 `4d11dd7f2d4ae5194af6a45bb2e2717672beab1b`，分支 `huan/b699-fivehour-20260916-6e72b0d4`；原工作区保持不变。

本次完成文件与来源检查，未执行附件代码、复跑数学证书或做 Lean 验证。三路新命题均登记为**作者纸面/作者证书交付，待定向数学核验**。包内提示词、重放命令和旧授权是来源文本，不作为本次操作指令。五小时研究轮已经结束，本次是其后材料接收。

## 原包与阅读入口

原包均留在用户的 `E:/Download/`，不复制入库。完整 SHA-256 见 MEMBERS.json 的 `roots`。

| 原包 | 字节 | SHA-256 前缀 | 普通文件入口 |
|---|---:|---|---|
| B699-ProA-i9-H013-closure-evidence-20260916.zip | 56,829,019 | b71cc095bf8fe01a | [ProA/REPORT.md](sources/ProA/REPORT.md) · [证明](sources/ProA/notes/PROOFS.md) · [采用来源](sources/ProA/SOURCE_ADOPTION.md) |
| B699-ProB-origin-rigidity-and-prime-digit-refinement-20260916.zip | 52,757 | e3ff10f2b4fc4079 | [ProB/REPORT.md](sources/ProB/REPORT.md) · [证明](sources/ProB/notes/PROOFS.md) · [采用来源](sources/ProB/SOURCE_ADOPTION.md) |
| B699-ProD-denominator-ladder-20260916.zip | 175,486 | 8475c48ae4b6fbd | [ProD/REPORT.md](sources/ProD/REPORT.md) · [证明](sources/ProD/PROOFS.md) · [采用来源](sources/ProD/SOURCE_ADOPTION.md) |

顶层 A/D 的单个包装目录被去掉，统一放在 `sources/ProA`、`sources/ProB`、`sources/ProD`；正文、脚本、日志与作者清单保持原字节。原成员路径与新位置逐项保留在映射中。

## 嵌套材料与去重

A 的继承材料最深到第 19 层。递归内容去重后共 39 个不同容器、3,153 条普通成员记录，映射到 2,179 个保留文件位置；2,961 条记录复用已有原字节文件，新增 192 个普通文件，共 5,034,969 字节。计数不代表独立数学成果数。

- `MEMBERS.json` 的 `archives` 以容器 SHA-256 为键；每项成员记录原路径、字节数和内容哈希。普通文件的 `retained_path` 相对仓库根；嵌套包的 `archive_sha256` 指向下一层。所有普通叶子都有实际文件。
- 已有文件先按 Git blob 定位，再核对当前文件大小和 SHA-256；只有原字节相同才复用。旧报告和旧验收不改写。
- 新增历史依赖位于 `dependencies/<容器哈希前缀>/`；新 A 的数值 NPZ 容器也展开为六个普通 NPY 文件，并保留原容器哈希。旧研究已冻结的 NPZ 数组证据保持不变。
- 当前交付源中的旧 ZIP/NPZ 路径因此不直接存在；作者原 SHA256SUMS 按成员映射核对，而非伪造新压缩包使其通过。普通文件阅读无需 ZIP。旧重放程序若硬编码压缩输入，须先检查写入位置，再从仓库外原包在仓库外恢复准确输入；本次未执行这些程序。

从本目录定位缺失旧路径：

```powershell
python locate_member.py "A9_FINITE.md"
```

输出给出原路径、固定哈希及当前普通文件位置，默认最多显示 10 项。历史 Git 来源另沿用 [材料恢复规则](../../../../../../../docs/ARTIFACTS.md)。

## 实际检查与复用

从本目录执行 `python verify_intake.py`，核对所有普通叶子、容器引用、作者顶层哈希清单及压缩包禁入范围；加 `--check-originals` 会另外读取 E 盘三个原包。检查结果只表示文件完整性，不提高数学接受等级。原始提取命令及行为见 [extract_sources.py](extract_sources.py)，它不执行包内代码，也不覆盖不同内容。

资源观测：接收时可用物理内存约 2,426 MB、16 逻辑 CPU、D 盘可用约 6,075 MB。嵌套压缩流串行放在仓库外 `D:/Temp/b699-intake-20260916`，关闭后自动释放。CIM 查询被环境拒绝，改用 Windows 内存接口取得本次观测；未干预其他进程。

## 发布前检查点

2026-09-16：三份来源、完整成员图、A/B/D 作者清单均已核对；本次编写文档的 80 个本地链接通过。Luna 摘要经主线程核对并修正 D 消费者的矛盾式写法及高度前提，已冻结。原工作区仍为 `huan/leader-intake-20260915-6f28a9c4`、`bef7eabf144f066d5853ea4d81b0b0ceed92bb1a`，干净；本分支远端仍为上列来源基线。下一动作是只提交本目录、run 入口/总览及 AGENTS/归档规则的改动，普通推送本分支并核对远端 SHA。此段保存发布前断点，发布结果以 Git 提交与远端回执为准。
