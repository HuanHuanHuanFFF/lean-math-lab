# B699 Pro A — quadratic component closure

阅读入口：REPORT.md → notes/PROOFS.md → SOURCE_ADOPTION.md / FAILURE_BOUNDARIES.md。接续入口OVERVIEW.md，机器状态SESSION_STATE.json。

实际接收全部本轮新义务：

```sh
python3 -B code/reproduce.py --out /tmp/b699-a-quadratic-check
```

需要Python 3.10+；接收使用标准库整数、Fraction和hashlib，不用SymPy，不重跑原ZIP的接收器。外置输出目录避免覆盖原证据。返回状态应为`PASS_COMPLETE_NEW_QUADRATIC_CLOSURE_REPLAY`。这不是Lean/旧依赖全链接受。

发现程序只用于需要重新生成新小分类时，按顺序运行：

```sh
python3 -B code/probe_weight5.py > /tmp/probe.log
python3 -B code/filter_weight5.py > /tmp/filter.log
python3 -B code/factor_weight5.py > /tmp/factor.log
python3 -B code/build_certificate.py > /tmp/build.log
```

第三步发现使用SymPy（本轮1.14.0）。可能约12MB的中间重复列表不进入发布包；按源码可重建。证书certificate.json已包含全部新接收需要的数据，不需要执行发现程序。

原输入ZIP按原字节保存一次，选用文本有成员映射。最终发布SHA256清单不包含自身。未知大核G及其真正因子未恢复；新小分类不能称为这些实际因子。
