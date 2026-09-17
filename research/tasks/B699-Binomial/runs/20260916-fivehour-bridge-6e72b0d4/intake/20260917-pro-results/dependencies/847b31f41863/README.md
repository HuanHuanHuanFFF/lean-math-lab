# B699 Pro D · 第4行三组非空

先读 REPORT.md，再读 PROOFS.md、SOURCE_ADOPTION.md、HANDOFF.md 和 notes/FAILURES.md。

- 本轮新无限结论由PROOFS承担；父包按原字节保存，旧结果按其原验证等级采用。
- `python3 code/replay.py`：重生成新代数证书，再做独立新检查、有限回归、损坏测试；不执行父包历史链。
- 生成需要Python3与SymPy；`python3 code/check.py`只需标准库即可检查所附新代数证书和固定输入哈希。
- `python3 code/consumer.py N I J`：i∈{5,6,7,8}，i<j≤n/2。输出proved_common或not_covered；后者绝不是反例。
- 巨大整数的素因子分解不自动启动。两素数整行可凭已知完整分解直接采用论文定理。
- 可选单位窗口合同不在默认consumer中自动启用。

所有运行均在当前请求内完成；未修改或发布仓库。无Lean、无外部独立人工审读。最终打包重放收据在同名外置release-verification.json。
