# B699 Pro B — NEG-SPLIT

入口：[REPORT.md](REPORT.md)。完整证明：[proofs/PROOFS.md](proofs/PROOFS.md)。接续：[HANDOFF.md](HANDOFF.md)。失败边界：[FAILURES.md](FAILURES.md)。来源：[SOURCE_ADOPTION.md](SOURCE_ADOPTION.md)。

本轮完整排除恢复三次两个负有理根族的两个端点幂分配；特别排除二次系数M为任意素数幂的参数子域。两族整体、一般i3尚未闭合；无Lean。证据等级见报告。

仅本地研究交付，未改变Git或共享OVERVIEW。运行重放输出到新目录，不能覆盖冻结证据：

```bash
python3 -S -B code/reproduce.py --output-dir /tmp/b699-negative-split-replay
```

重建符号证书需要SymPy；验证已有证书与重放不需要第三方库。

```bash
python3 code/build_certificate.py --output /tmp/b699-new-certificate.json
python3 -S -B code/verify_certificate.py --certificate /tmp/b699-new-certificate.json --output /tmp/b699-new-acceptance.json --negative-tests
```

`code/consumer.py`是只对同一原(n,j)计算参数的充分消费者，不是原题NC的等价判定。M的端点判定只需gcd，无需因数分解巨大整数。
