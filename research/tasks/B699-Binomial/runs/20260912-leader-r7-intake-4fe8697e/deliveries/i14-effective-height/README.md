# B699 Pro A · i14 接续证据包

本包结论：任何合法 i14 反例必须满足 **n<2^33554433**。33 个有效 G 家族、45 条已验 cuts、全位置高度证明已经完成；i14 整指标闭合和 Lean 形式化没有完成。

先读 `REPORT.md`；数学细节读 `notes/PROOFS.md`；继续研究读 `HANDOFF.md` 与 `SESSION_STATE.json`。

## 独立接收

在解压得到的包根目录中运行：

```bash
python3 code/check_manifest.py
python3 code/reproduce.py
```

第一条核对交付时所有文件的 SHA256。第二条编译接收器、需要时重建素数缓存，并串行执行全部证书接收，不做 Padé/种子搜索。接受输出是 `evidence/reproduction.json` 中的 `PASS_FULL_RECEIVING_REPLAY_NO_PADE_SEARCH`。禁止使用 Python `-O`，否则断言检查会被禁用；核心接收器明确拒绝该模式。

运行依赖：Python 3（本次实际测试 3.13.5，无额外 Python 包）、支持 C++17 的 g++、GMP 开发库。实际测试环境为 64 位 Linux。缓存使用同机生成的本机整数二进制格式，不从未经核对的第三方缓存接收数学事实。

缓存与可执行文件不在包内。运行时约需 829 MiB 的可重建素数/前缀缓存磁盘空间，另外保留本包和编译产物的空间。有限块接收器会 mmap 稠密前缀；应预留相应内存/页缓存空间，不并行启动多份重验。只有一个重阶段在运行；日志写入 `logs/replay/`，不要将全部 .blocks 或大 JSON 一次性读入对话上下文。

重验会重新写接收结果、运行时间和日志，因此应在重验**之前**运行清单校验；重验后旧清单对这些运行记录不再匹配属预期，不等于数学证书失败。

## 文件布局

- `input/cuts.json`、`selected_content_specs.json`、`graph.txt`：本轮真正采用的有限数学输入。
- `evidence/content_finite_*.blocks`：33 族完整连续有限块；`content_tail.json`：继承的精确无限尾项，只有选中的 33 族接受。
- `evidence/content_check.json`、`cuts_check.json`、`cuts_grid_check.json`、`graph_height_check.json`、`graph_grid_check.json`：全量接收输出。
- `evidence/reproduction.json`：实际完整运行记录；`negative_tests.json`、`math_regression.json`：负测试和有限数学回归。
- `code/`：独立接收器和所需源代码；`adopted/`：旧交接与 i10 证明框架的参考快照，不表示重新验收了旧 i10 全链。

## 生成与搜索的区分

本轮复用两组已有有限块，修复批处理后生成其余 31 组，再独立全量接收。`run_content_families.py` 是生成器，不应代替 `reproduce.py`。

`select_saved_design.py` 只在旧 51 条 cuts 内删减，不寻找新种子。交付已经固定 45 条，因此接续不用重新运行它。`input/cut_design.json` 和部分继承文件中的 `NEW_UNPROVED_G` 是历史记录；当前可消费输入只有 `input/cuts.json`，其依赖已逐条接入 accepted 家族。

SHA256 清单不包含清单自身，避免原包的自引用哈希问题。ZIP 不包含 `cache/`、`bin/`、`__pycache__/` 或 PID 文件。

## 信任边界

普通整数/有理数程序接收，不是 Lean。无界数学论证见 PROOFS.md；出版依赖为 BFT 的有效 θ 界和六个内容表项。有限回归只是实现回归。R8 仍包含 i14。
