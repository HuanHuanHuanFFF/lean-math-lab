# B699 D / i=3 · Round 11 · TWO-END / BRIDGE256

本包研究规范最小临界两底、真实 `mu=1`、平衡 `D_v=D_W=y` 中的纯二跨块。

主要结论：

* 纯二跨块只能落在低二端点或高二端点；
* 低二端点完整排除；
* 高二端点 `rho=3,...,7` 完整排除；
* 剩余纯二桥必须 `rho>=8` 且 Pell 指数 `t=1 mod256`。

先读：`REPORT.md`、`PROOFS.md`、`FAILURES.md`、`HANDOFF.md`。

重放：

```bash
sha256sum -c SHA256SUMS.txt
bash replay.sh
```

本包没有修改仓库，没有 Lean，也没有宣称整个 `i=3` 闭合。
