# B699 Pro D — affine splitting (2026-09-16)

阅读顺序：REPORT.md → SOURCE_ADOPTION.md → PROOFS.md → HANDOFF.md。

本包包含本轮完整新证据、可复现的生成/接收代码，以及两份精确冻结单位窗口采用契约；不重新打包或重放其历史全部证明链。新结论不是出版无关的全新自含证明：原U_i依赖始终保留。

## 重放新链

要求Python 3.10+，主链仅标准库：

```sh
python3 code/replay.py
```

该命令重生成新有限证书，运行不导入生成器的接受器、真实算术回归与损坏测试，并检查时间字段之外的数学输出一致性。不会联网、启动其他会话或更改任何Git仓库。运行输出只写入本目录的evidence/outputs。

也可单独运行：

```sh
python3 code/generate.py
python3 code/verify.py
python3 code/regression.py
python3 code/mutations.py
```

`code/probe_*`、`code/explore_affine.py`、`code/find_strict_example.py`仅发现/比较历史，非主接收入口；部分使用SymPy。失败日志保留，但有限发现模式不替代无限证明。

完整性清单为MANIFEST.json（覆盖所有交付成员，自身除外）。外置最终release-verification.json含ZIP哈希和干净解包重放结果，避免循环自哈希。

R7不变；无新整指标、无反例、无Lean、无外部独立人审。仓库没有写操作。
