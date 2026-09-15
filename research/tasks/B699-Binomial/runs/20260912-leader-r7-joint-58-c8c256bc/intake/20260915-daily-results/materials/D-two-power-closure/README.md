# B699 Pro D · 双最大幂恢复与分散位置闭合

日期：2026-09-15。主责 i4–i8；本轮正向推进 i6/i7/i8，并准确转移至合法 i9。

阅读顺序：`REPORT.md` → `HANDOFF.md` → `SOURCE_ADOPTION.md` → `notes/FAILURES_AND_EXECUTION.md` → `notes/PROOFS.md`。

## 接收

需要 Python 3.9+，接收程序仅使用标准库。所有整数证书都在 `evidence/`；不需要联网、Lean、SciPy、SymPy 或外部素数／分解程序。

```sh
python3 replay.py --regenerate --receipt local-receipt.json
```

它重建本轮的有界双幂域、全部低段域和进位覆盖，检查新证书及四份采用的旧高度证书，逐字节比较六份数学文件；**不重放冻结的历史全链**。运行时间只在独立收据中记录。

`code/generate.py` 与 `code/verify.py` 使用不同的幂域、CRT 方向和最大幂判断；二者均为本会话作者编写，不是外部独立接受。`code/regression.py` 是有限回归／反向控制，不承担无界量词。

`exploration/` 含探索源码和真实输出；其中 LP 发现可能使用 SciPy，其浮点结果不被接收程序信任。旧绝对路径的探索脚本是运行历史，不是可移植接收入口。

三份完整冻结原 ZIP 在 `sources/archives/`，身份见 `sources/INPUTS.json`。未取得新的 A/B 或调度包；不把历史缺失输入改写成已取得。

R7 不变；未 Lean、未外部人审、无原题反例；不包含任何仓库修改或发布操作。
