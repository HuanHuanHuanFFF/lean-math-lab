# B699 Pro E — 交叉恢复与完整赋值证据包

本包有一个一般NC3赋值必要定理、一个可约支全指数条件性闭合，以及未完成交叉域的精确交接；没有一般i3闭合或反例。

先读REPORT.md；完整数学在PROOFS.md；独立接续读HANDOFF.md；边界在FAILURES.md、SOURCE_ADOPTION.md。

复放新证据：

```bash
python -m pip install -r requirements.txt
python src/replay.py
```

第一程序使用SymPy；第二检查器只使用Python标准库，可独立运行：

```bash
python src/verify.py outputs/certificate.json
```

不重跑旧结果，不扫描n,j或指数。证书通过不表示上游VG8已由本轮独立验收，也不表示Lean或外部审读。所有输出保持相应准确证据等级。
