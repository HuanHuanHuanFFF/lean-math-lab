# REPLAY · B699 D / i=3 · 第十一轮

## 环境

只需 Python 3 标准库和 POSIX shell；不依赖网络、CAS、Sage、Magma 或仓库工作树。

## 完整重放

```bash
cd B699-D-i3-20260921-round11-two-adic-bridge256
sha256sum -c SHA256SUMS.txt
bash replay.sh
```

`replay.sh` 会：

1. 记录四份证书的原 SHA256；
2. 重新运行 `evidence/make_certificates.py`；
3. 比较重生成证书是否逐字节一致；
4. 运行 `evidence/verify.py`，重建全部 Pell 首返周期、分支状态与非剩余覆盖；
5. 调用两个门检，复核最复杂状态和 `rho=8` 弱模型。

预期关键输出：

```text
PELL_TWO_ADIC_IDENTITIES_1_TO_128=PASS
LOW_ENDPOINT_COMPLETE=PASS; NO_STATE=29; NONRESIDUE_STATES=38; M9=ANALYTIC
HIGH_LAYERS_R3_TO_R7_COMPLETE=PASS; NONRESIDUE_STATES=299
REMAINING_R8_WEAK_MODEL_EXACT_NONSQUARE=PASS
ROUND11_VERIFY=PASS
CERTIFICATES_BYTE_IDENTICAL=PASS
ROUND11_REPLAY=PASS
```

## 定向检查

```bash
# 最复杂的已排层状态
python3 -B evidence/bridge_gate.py --layer high --r 7 --multiplier 373

# 最新前沿的精确弱模型；不会构造 NC3
python3 -B evidence/bridge_gate.py --layer weak-model
```

门检输出中的 `EXCLUDED_CONDITIONAL_CORE` 只表示相应必要核心被非剩余证书否定；`WEAK_MODEL_NOT_INTEGER_RECOVERY` 表示弱模型没有恢复整数平方。两者都不是原题反例声明。
