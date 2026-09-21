# REPLAY

## 环境

Python 3.10或更高版本用于标准库整数检查；符号重放需要 SymPy。实际运行版本由 `logs/environment.json` 记录。

没有使用 Magma、PARI、Lean、浮点数根判定或远端计算。

## 一键重放

```bash
cd B699-D-i3-20260921-round2-cyclotomic
sha256sum -c SHA256SUMS.txt
bash replay.sh
```

脚本生成临时证书并与包内冻结 JSON 逐字节比较；随后检查45个完整末端、5条无限尾部、符号恒等式及统一恢复器的D=1 EMPTY结果。临时文件自动删除，不修改证据包。

预期最后一行为 `REPLAY=PASS`。这不等于Lean或独立数学审读；全称归约仍须阅读 PROOFS。

## 只运行无第三方依赖的精确有限检查

```bash
python3 evidence/verify_certificate.py
python3 evidence/finite_recovery.py --defect 1
```

## 文件作用

- `make_certificate.py`：生成完整45状态有限末端。
- `verify_certificate.py`：同会话第二实现，以独立显式系数和平方夹逼核对完整状态集。
- `symbolic_check.py`：精确恒等式核对；不是样本外推。
- `finite_recovery.py`：给定D的通用必要代数候选恢复，显式处理二次降为一次的分支。
- `cyclotomic_defect_one.json`：5条无限尾部和45条平方夹逼的冻结证书。
- `defect_one_recovery.json`：统一上界下150个二次式的EMPTY结果。
- `logs/replay.log`：本轮真实重放输出。
