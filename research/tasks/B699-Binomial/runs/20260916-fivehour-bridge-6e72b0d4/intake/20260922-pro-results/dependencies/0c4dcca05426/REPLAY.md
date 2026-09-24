# REPLAY · 第十轮

## 环境

只需 Python 3.11+ 标准库与常见 POSIX 工具；不需要网络、SymPy、Sage、Magma 或仓库写权限。

## 完整重放

```bash
cd B699-D-i3-20260921-round10-bicoftwo-blockmix
sha256sum -c SHA256SUMS.txt
bash replay.sh
```

`replay.sh` 会：

1. 记录五份证书的原字节 SHA256；
2. 重新生成 BICOF2、TRI3、XBLOCK、UBLOCK 与混合弱模型证书；
3. 检查重新生成后的证书逐字节哈希一致；
4. 重算全部首返周期、553 个有效状态、商的模恢复和非剩余见证；
5. 用纯标准库微型符号环验证 m=2 的两个 Q 因子分解；
6. 重算混合弱模型的相邻平方间距。

期望终点：

```text
BICOF2_EXACT_CONSTANTS=PASS
TRI3_PELL_PERIOD_MOD5=PASS
M2_PRIME_POWER_FACTORIZATIONS_SYMBOLIC=PASS
XBLOCK_FINITE_AUTOMATA=PASS; VALID_STATES=486; COVERED=486
UBLOCK_FINITE_AUTOMATA=PASS; VALID_STATES=67; COVERED=67
MIXED_WEAK_MODEL_EXACT_NON_SQUARE=PASS
ROUND10_REPLAY=PASS
CERTIFICATES_BYTE_IDENTICAL=PASS
```

## 条件门检

```bash
python3 -B evidence/block_gate.py --side X --multiplier 36
python3 -B evidence/block_gate.py --side U --multiplier 117
```

该工具只读取已证条件域，输出 `EXCLUDED_*` 或 `OUTSIDE_PROVED_MULTIPLIER_RANGE`。它不会把参数称作 NC3，也不会构造原题反例。

## 证据边界

程序完整验证有限状态与精确整数算术，但不自动形式化正文所有不等式，也不验证从原 NC3 到冻结最小支的历史桥。`PASS` 不等于 Lean 或外部独立审读。
