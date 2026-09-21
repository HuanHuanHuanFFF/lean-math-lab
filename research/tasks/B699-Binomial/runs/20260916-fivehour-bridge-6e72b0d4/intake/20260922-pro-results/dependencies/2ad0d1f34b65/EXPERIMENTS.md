# EXPERIMENTS / CERTIFICATES

本轮有限计算只承担精确代数分类与证书核对，不从扫描推出无限结论。

- `src/replay.py`：从 DIFF/主身份重新构造 2+1 六个有序槽对；对 1+1+1 使用两步 resultant 消去 `rho,s`，得到 q 的精确消去多项式并做有理根审计。
- `src/checker_independent.py`：不重做主分类算法；独立核对两个规范终端、完整第二源分母9、冻结消去因子的全部有理根、两个非退化候选的 gcd 失败、q=2 特殊矛盾及坏证书拒绝。

冻结输出：`replay.out`、`checker_independent.out`。
