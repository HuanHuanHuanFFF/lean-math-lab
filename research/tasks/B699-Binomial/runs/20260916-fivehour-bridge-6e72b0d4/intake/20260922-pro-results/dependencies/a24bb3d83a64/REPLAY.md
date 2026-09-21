# REPLAY · 第八轮

## 环境

只需Python 3.10或更高版本和Bash。重放无网络请求，无SymPy、Sage、PARI、Magma或Lean依赖；不读写仓库。SymPy仅出现在探索记录中，不作为大数素性证书。

```bash
cd B699-D-i3-20260921-round8-ramified-square
sha256sum -c SHA256SUMS.txt
bash replay.sh
```

## 固定Pell指数的条件消费者

```bash
python3 -B evidence/pell_gate.py --index 233
python3 -B evidence/pell_gate.py --index 41
# 附加“单底”所需的Pell指数素性条件；不宣称Pell值素性
python3 -B evidence/pell_gate.py --index 9 --single-prime
# 正确返回资源不足，而非空集
python3 -B evidence/pell_gate.py --index 10001 --max-index 5000
```

t=233的预期结果：`EXCLUDED_BALANCED_CORE_IN_THIS_PELL_FIBRE`，s上界3985，c=1、3的集合均空，7972次检查。这是PROOFS限定的同输入平衡纤维，不是全i3结论。

## 重新生成六份证书

为避免改动冻结目录，将新证书写到另一个目录：

```bash
python3 -B evidence/make_certificates.py --out /tmp/b699-round8-certificates
```

验证器同时在内存再生证书并逐字段对照。有限模检查另有直接pow与逐步递推的第二实现；二者仍属于同会话。

## PASS证明什么、不证明什么

* 多项式恒等式与全参数正系数逐项重建，Pell周期是精确矩阵幂，不是根据样本猜周期。
* 三个固定t下，两个c和每一个0<=s<=B(t)都实际检查；完整上界由正文HEIGHT9/Pell增长证明提供。
* UFD、四次互素下降、Pell正整数解的完备性由正文证明，有限诊断不替代全称逻辑。
* RAM-ODD与UNRAM-PP是冻结作者级前置；旧NL外部合同没有被本轮程序重新证明。
* PASS不等于Lean、外部人审、全局有限化、原反例或仓库验收。

实际stdout保存于logs/replay.log。最终ZIP的外部解压验收记录和ZIP自身SHA256在压缩包旁的同名文件中。
