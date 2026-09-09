# 实际运行的检查

从解压目录运行：

```sh
python experiments/verify_constants.py > experiments/results-rerun.json
```

依赖仅为 Python 标准库。`results.json` 是本轮真实输出；10 个正性/余量断言均使用任意精度整数或 Fraction。后半部 Decimal 数字只用于显示包络强度，不用于通过/失败判断。

没有运行 Lean；没有以有限素数扫描验证无限区间命题；没有声称验证 Gap2048。无限 i 范围的正确性来自 derivation.md 中的单调性和符号推导。

运行环境 Python：3.13.5
