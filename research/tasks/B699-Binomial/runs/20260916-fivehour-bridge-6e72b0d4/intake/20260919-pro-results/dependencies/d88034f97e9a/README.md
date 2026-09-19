# B699 Pro A · SAT54 / COVER20

入口：REPORT.md → PROOFS.md → SOURCE_ADOPTION.md。可执行完整接收：

```sh
python3 -B code/reproduce.py --out /absolute/new-empty-directory
```

只需Python标准库；不导入发现程序，不重放旧证据。最终发布包须同时有完整PASS和包外干净解压回执。

发现程序：`python3 -B code/discover_sat54.py`；`--limit 60`仅是探针，不给全域PASS。会写evidence，完整接收是只读输入、新输出目录。

HANDOFF.md记录真实前沿与下一门；FAILURE_BOUNDARIES.md记录数学/工具边界。条件NF35/SAT60/SAT66诊断不是已证几何。

本包无Lean，无外部独立审稿，不修改或推送仓库；旧证据仅保留来源路径和哈希。
