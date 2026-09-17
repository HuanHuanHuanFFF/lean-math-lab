# B699 Pro B · STRIP / EXP / RAT-HEIGHT

本包是2026-09-17本会话继GAP31、BAL-rho后的独立研究轮。主责i=3，R7不变。来源为附件总览及本会话冻结交付，不代表Git或其他会话实时状态。

## 阅读入口

[REPORT.md](REPORT.md)给本轮范围与证据等级；[proofs/PROOFS.md](proofs/PROOFS.md)为完整作者纸面证明；[HANDOFF.md](HANDOFF.md)为下一轮接续；[FAILURES.md](FAILURES.md)列准确失败边界；[SOURCE_ADOPTION.md](SOURCE_ADOPTION.md)逐项标注采用依赖。

新排除：z≤u且g<ε≤2g−A；C|u（C²|t3）。新高度：恢复Pρ可约时n²<2^22(ρ+81)^11；u|C时n<2(ρ+108)^10。全部要求真实NC3同输入参数，不能把必要系统反推为反例。

## 复现

无需第三方库的验证：

```sh
python3 -S -B code/reproduce.py --output-dir /tmp/b699-strip-replay
```

另从SymPy重建（本轮实测SymPy版本见outputs/verification_record.json）：

```sh
python3 -B code/reproduce.py --output-dir /tmp/b699-strip-full --with-sympy
```

输出目录必须位于包外，避免改写冻结证据。脚本验证全部清单成员与8个冻结源哈希，执行独立标准库多项式/有理根核验、损坏证书测试、定向回归及API，并比对冻结确定性输出。`reproduction.json`的时间字段按本次执行生成，不要求它与旧时间收据相同。

`code/consumers.py`提供真实输入必要系统恢复和充分消费者。`unresolved`只表示本组消费者未结束该输入，不等于NC3。恢复多项式有理根判定用精确整数二分，不需要把ρ素因数分解。

## 证据与不包含的内容

包含作者推导、两种算法的精确代数证书、有限回归、失败模型、固定源字节和哈希。没有Lean、独立研究者/人审、一般ρ界、完整i3闭合、整个可约族闭合或历史覆盖差集审计。两实现均同作者；完整证书重放不承担无限数学命题的证明。

旧E的L,R>1仅作为总览作者级可选前置，用于ω(t3)=2的端部解读；核心STRIP、EXP和两个新高度不依赖该E链。没有新增外部出版定理。
