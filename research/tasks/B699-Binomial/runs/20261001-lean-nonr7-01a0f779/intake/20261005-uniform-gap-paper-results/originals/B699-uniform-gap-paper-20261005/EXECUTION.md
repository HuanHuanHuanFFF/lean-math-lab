# EXECUTION — 本轮实际执行范围

以下是实际执行的标准库 Python，不是 Lean 或解析数论运行记录。

Python 版本：`3.13.5 (main, Jul 15 2026, 20:25:40) [GCC 14.2.0]`。

## 1. 精确检查

```sh
/opt/pyvenv/bin/python3 /mnt/data/B699-uniform-gap-paper-20261005/certs/verify_constants.py --output /mnt/data/B699-uniform-gap-paper-20261005/certs/CONSTANTS.json
```

```text
VERIFIED 46 exact rational relations; wrote CONSTANTS.json
No primes, zeta zeros, Lean, kernel, or CI were computed.
```

退出码：0；本次进程墙钟：0.572625 秒。这只度量此算术/哈希脚本，不可外推 Lean、筛法或 ζ 证明成本。

## 2. 精确检查

```sh
/opt/pyvenv/bin/python3 /mnt/data/B699-uniform-gap-paper-20261005/certs/verify_input.py /mnt/data/B699-20261004-uniform-gap-paper-1c862c44.zip --output /mnt/data/B699-uniform-gap-paper-20261005/INPUT-BINDING.json
```

```text
INPUT IDENTITY VERIFIED: 25 declared members; no theorem accepted.
```

退出码：0；本次进程墙钟：0.556494 秒。这只度量此算术/哈希脚本，不可外推 Lean、筛法或 ζ 证明成本。

两个自编脚本另经 Python AST 解析；常数脚本再次以标准输出重放，解析后的 JSON 与保存结果一致。没有运行任何 Lean/Lake、kernel、checker 或 CI，没有计算任何素数/素数幂链、ψ 值或 ζ 零点。

公开阅读范围和未留存原始 PDF 字节的限制见 sources/SOURCE-AUDIT.md。输入成员哈希成功只固定包装身份；不提高 I0 的独立验收等级。完整机器记录见 certs/EXECUTION.json。
