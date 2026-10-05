# 精确标量证书

运行：

```sh
python certs/verify_constants.py
```

输出固定写入脚本同目录 `CONSTANTS.json`。仅使用 Python 标准库 int、Fraction、factorial。没有网络、素数筛、ψ 求值、ζ/零点求值、Lean 或外部数据库。68个断言均为固定有理关系；16行覆盖的是解析高度区间的上界，不能解释为观测了零点。

log/exp/整个 sinhc 的余项推导见 PROOF §10；脚本不把打印小数转成真值。Lᵢ取分母10000、Rᵢ取分母100000的向上有理舍入。所有重算输出可由标准库单独重放。

Python 并非 Lean 内核：对于无界结论，还要证明本文的单调性、部分求和、显式公式和有限 RH 等输入。脚本的成功不能替代它们。

`verify_inputs.py` 只检查两个来源 ZIP 的字节和成员哈希，不证明其中的数学或独立验收状态。
