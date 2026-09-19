# B699 Pro B · ODD13

入口：[REPORT](REPORT.md) → [完整证明](proofs/PROOFS.md) → [HANDOFF](HANDOFF.md)。边界：[FAILURES](FAILURES.md)；采用：[SOURCE_ADOPTION](SOURCE_ADOPTION.md)。

新结果只针对同一NC3的恢复三次Pρ可约分支：原n的13平方剩余部分S13不整除39，且n²<2²⁷S13¹⁵。一般i3和R7未闭。没有Lean或外部审稿。

## 核心重放

```sh
python3 -S -B code/reproduce.py --output-dir /tmp/b699-odd13-replay
```

只需Python标准库。所有写入均到指定新目录，不覆盖冻结输出。可选符号重建需要SymPy：

```sh
python3 -B code/build_algebra.py --output /tmp/b699-odd13-algebra.json
```

`code/consumer.py`提供实际输入充分消费者；未命中不是反例。S13版本需要完整因数分解，代码用确定性试除验证素数，不把概率素性当证书。Q0和高度版本不需要原n的因数分解。

`experiments/`为本轮探索记录，不是主接受入口。嵌套的旧SIGN ZIP只作冻结采用依赖，不属于本轮已重放链。新输出在outputs，来源SHA在SOURCE_HASHES，最终成员在MANIFEST。
