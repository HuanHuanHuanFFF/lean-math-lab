# REPLAY — 标准库重放

在解压后的本轮目录内运行：

```bash
python3 src/replay.py --output-dir /tmp/b699-r8-fresh-check
sha256sum -c SHA256SUMS
```

输出路径必须不存在，程序拒绝覆盖。默认只需Python标准库。它会完成两套正检查和29项坏证书双方拒绝。

分别检查：

```bash
python3 src/check_a.py certificates/round8.json
python3 src/check_b.py certificates/round8.json
```

重新生成证书，需SymPy：

```bash
python3 src/replay.py --output-dir /tmp/b699-r8-fresh-regenerate --regenerate
```

重生成JSON必须与certificates/round8.json原字节完全一致。不会覆盖冻结文件。

负测试可分批（默认仍为全量）：

```bash
python3 src/replay.py --output-dir /tmp/b699-r8-batch-a --negative-stop 10
python3 src/replay.py --output-dir /tmp/b699-r8-batch-b --negative-start 10 --negative-stop 20
python3 src/replay.py --output-dir /tmp/b699-r8-batch-c --negative-start 20
```

程序证书不能替代PROOFS中的分支穷尽、原题接口和量词证明。源哈希不等于数学接受；A/B同作者，不等于外部审稿。没有Lean步骤。
