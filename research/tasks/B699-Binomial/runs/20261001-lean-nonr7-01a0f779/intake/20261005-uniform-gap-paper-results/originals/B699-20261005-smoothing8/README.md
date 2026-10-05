# B699 — uniform-gap smoothing-8 evidence

本包对应唯一输入 `B699-20261004-uniform-gap-paper-1c862c44.zip`，交付日期 2026-10-05（Asia/Shanghai）。

**总体状态：部分完成。** 从列出的无条件文献输入，纸面推导全部实数 x≥800000000000 上的 |ψ(x)−x|<x/10000，接出同 cutoff 的 Gap4095。新增有限桥未供，旧有限初段独立绑定仍 pending；没有运行 Lean/CI，没有重算素数链。

阅读顺序：`RESULT.md` → `PROOF.md` → `DEPENDENCIES.md` → `FORMALIZATION-PLAN.md`。

## 包内容

| 路径 | 内容 |
|---|---|
| RESULT.md | 准确结论、各层证据等级、仍缺义务 |
| PROOF.md | 解析输入、8 重平均、9 项核、全部常数、Nat/Real 与有限拼合、规模界 |
| DEPENDENCIES.md | 已证/可引用但待形式化/缺原件/缺证明；来源符号及表号问题 |
| FORMALIZATION-PLAN.md | 冻结接口差异、下一项精确 Lean 编译目标、后续代表义务 |
| src/check_constants.py | 仅标准库的 51 项精确有理/级数检查 |
| src/TailBridgeCandidate.lean | 118 行未编译候选；5 个声明及待运行的 #print axioms |
| src/Kernel8Spec.lean | 九项复数核及待证命题定义；不是该命题的证明 |
| certificates/constants.json | 实际精确检查输入与输出 |
| certificates/replay.txt | 实际 Python 日志；无 Lean 运行 |
| certificates/README.md | 证书范围和重放方式 |
| sources/INPUT-IDENTITY.json | 原 ZIP、实际读取成员及其 manifest 核对 |
| sources/SOURCE-RECORDS.json | 外部原文定位、URL 和原始字节是否本地持有 |
| STATUS.json | 机器可读状态；所有未完成依赖显式保留 |
| MANIFEST.json | 本包成员 bytes/SHA256，自身除外 |

外部公开论文只保留阅读/定位记录，不把没有取得的 PDF 原字节冒充随包证据。用户原附件仍是本地源码身份的依据，不修改或重新发布仓库。
