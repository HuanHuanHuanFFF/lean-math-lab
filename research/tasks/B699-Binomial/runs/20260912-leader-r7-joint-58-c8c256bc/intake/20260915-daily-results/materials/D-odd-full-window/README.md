# B699 Pro D · 完整奇窗口与单高幂残余

先读 REPORT.md，然后 notes/PROOFS.md、SOURCE_ADOPTION.md、HANDOFF.md 和 notes/FAILURES_AND_EXECUTION.md。

## 新链重放

需要Python 3标准库。无需网络、SciPy、Lean或Git工作区：

```sh
python3 replay.py --regenerate
```

该入口在临时目录重建完整新有限域和证书，用第二实现接收并逐字节对照数学输出；运行回归/坏证书测试和精确有理模型检查。不会运行sources原ZIP的历史全链。收据写入单独输出目录，不修改规范证据。

`exploration/`仅为发现过程；使用SciPy/NumPy且不是接受依赖。某些失败初探较慢，不在默认重放中运行。

## 内容

- notes/PROOFS.md：无限论证与有限域完备性。
- notes/HEIGHT_TABLE.md：33个精确高度。
- evidence/：全权重、完整域、行进位证书、接受回执、8/28族角色、有理失败模型。
- code/：生成、第二接受、直接二项式回归、坏证书和模型接受。
- sources/：完整冻结D ZIP、采用成员、上一轮比较文本、哈希。
- MANIFEST.json：除自身外全成员字节数与SHA256。

本轮没有完整解决任一指标；R7不变。单高幂指数仍无界。纸面证明与有限整数证书未经过Lean或外部独立人工审读。
