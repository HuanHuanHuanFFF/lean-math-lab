# B699 Pro D · q4中心比较与残量放大

先读REPORT.md；完整定理及反证回传在PROOFS.md。
HANDOFF.md给下一轮准确剩余；FAILURES.md说明弱模型、不可升级和方法障碍。

重放（Python 3.10+，标准库）：

```bash
python code/verify.py --json
```

成功标志：`PASS_CENTRE_BALANCE_RESIDUAL_AMPLIFICATION`。
默认核对SHA256SUMS；`--skip-hashes`仅供开发，不是发行验收。
默认不会联网、不会运行SymPy、不会重跑旧支持证明或扫描无界指数。

原输入消费者：

```bash
python code/consumer.py 30422030765130 12458784298184
```

返回的`witness_cofactor`是原完整源的非平凡缺陷余因子，不被声称是素数。
它的任意素因子均是同一个原输入的真实共同素数p>=7。

可选重建证书需SymPy：`python code/build_evidence.py`。接收器不导入此重建器。

本轮没有一般RES10闭合或一般绝对高度。作者纸面＋同会话确定性复算；无Lean、外部独立数学验收、仓库写入或推送。
