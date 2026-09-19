# B699 Pro D · RES10 joint-squarepart evidence

**Partial mathematical progress, not full RES10 closure.**

准确范围：i6，n≡1530 mod1800，W=(n-1)j(n-j)=10Y²，
alpha=n/gcd(n,j)=3^a、a≥2，同一个合法原输入。

先读 REPORT.md；完整无限推导在 PROOFS.md；边界在 FAILURES.md；继续入口在 HANDOFF.md。
SOURCE_ADOPTION.md 分开新自含数学与旧完整5层消费者的采用等级。

## 重放

在本目录运行：

    python code/verify.py

需要Python 3.10+，只用标准库；不联网、不运行探索扫描或历史全链。
应输出 PASS_RES10_JOINT_SQUAREPART，并比较实际生成结果与certificates/verification.json的精确字节。

## 对一个原输入执行快速判据

    python code/consumer.py N J --witness-p 11

N、J替换为十进制整数。程序先核对准确域，再计算平方条件、gcd与完整源幂缺陷。
二次特征由模40直接计算；不做大整数分解。缺陷D>1只表示任一素因子均可作为真实见证；D不被冒充素数。
可另给小素数p，由完全确定性的素性和阶乘估值验收。试除素性验证不适合巨大的p。

## 包内证据

- code/: 自含确定性算术与重放。
- certificates/: 精确身份、全n正性、指定输入完整进位证书、实际运行日志。
- sources/: 旧输入原字节副本、来源哈希和旧F5合同转录。
- diagnostics/: 失败路线的固定输入与一次严格有限的第一窗口诊断；不属于无限证明，也不默认重跑。
- SHA256SUMS: 除自身外全部包成员的SHA-256。

无Lean、无外部独立数学审读、无仓库修改或推送。
归档的SHA-256、解压后的成员审计与解压后重放结果见配套发行回执JSON。
