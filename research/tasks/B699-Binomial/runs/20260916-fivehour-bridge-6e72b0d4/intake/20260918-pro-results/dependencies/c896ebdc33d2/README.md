# B699 Pro B · B-SPLIT（2026-09-18）

入口：REPORT.md → proofs/PROOFS.md → HANDOFF.md。来源与边界见SOURCE_ADOPTION.md、FAILURES.md。

原题i3、同一原(n,j)、p=3和完整素数幂均保留。本轮排除恢复三次两个负根族的B素数幂分支，给原n完整指数和缺失补部θ的相对高度。一般i3与R7不变，无Lean或外部独立审阅。

## 重放

Python 3标准库即可验证：

```sh
python3 -S -B code/reproduce.py --output-dir /tmp/b699-b-split-replay
```

输出目录必须在冻结证据树外。重放核对SOURCE_HASHES、MANIFEST（存在时），重建三份确定性输出并与outputs原字节比较。

可选重新构造证书需要SymPy：

```sh
python3 -B code/build_certificate.py --output /tmp/b699-b-split-certificate.json
python3 -S -B code/verify_certificate.py --certificate /tmp/b699-b-split-certificate.json --output /tmp/b699-b-split-acceptance.json --negative-tests
```

consumer.py是原数对的充分谓词API，False只表示本消费者未认证；其True不等于输出共同素数见证或Lean证明。素性验证为确定性试除，超大素数不宜直接使用该演示实现。未声称API有限回归出现新命中。

experiments是已完成的探索诊断，仅解释路线选择，非主证书。主复现不扩大任何n、t3、ρ或素数扫描。
