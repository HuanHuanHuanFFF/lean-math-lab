# REPLAY — 可重放入口

从解压后的包根目录运行。默认验证仅需Python 3标准库，**不需要联网、Lean、CAS或仓库**。

```bash
python3 -B src/replay.py --output-dir /tmp/b699-ns64-replay-new
```

输出目录必须尚不存在，避免覆盖冻结输出或已有重放。可以选择其他全新路径。
此命令核对：上一轮输入ZIP哈希、两个检查器、4种坏证书拒绝、一个精确弱模型、冻结JSON一致性。

可分别调用：

```bash
python3 -B src/check_A.py certificates/near_square_barriers.json
python3 -B src/check_B.py certificates/near_square_barriers.json
python3 -B src/tamper_tests.py certificates/near_square_barriers.json
python3 -B src/weak_model.py
```

重新生成证书需要SymPy；实际使用版本见`outputs/environment.json`。生成是确定性的：

```bash
python3 -B src/replay.py --output-dir /tmp/b699-ns64-regenerate-new --regenerate
```

会在新目录生成证书，并要求与冻结证书字节完全相同。

预期关键摘要：

    A: PASS, 17 uniform inequalities, 520 positive terms
    B: PASS, 17 uniform inequalities, 2233 exact identity evaluations
    Tamper: all four bad certificates rejected by combined verifier
    Weak model: carry at 27 is 0; actual binomial gcd has odd primes 5,7,2671

成员哈希（Linux/macOS配有sha256sum时）：

```bash
sha256sum -c SHA256SUMS
```

SHA256SUMS不包含其自身。外层ZIP哈希在ZIP旁边的`.sha256`文件。
上述程序核验声明的代数证书，不把纸面原题接口升级成形式化全链；详见PROOFS §9。
