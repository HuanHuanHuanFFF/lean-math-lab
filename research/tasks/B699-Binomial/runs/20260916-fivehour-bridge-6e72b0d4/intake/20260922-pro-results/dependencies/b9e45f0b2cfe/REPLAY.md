# REPLAY — 可执行检查入口

在解压后的根目录执行：

```bash
python3 src/replay.py --output-dir /tmp/b699-round5-check-new
sha256sum -c SHA256SUMS
```

输出目录必须不存在；重放不会覆盖冻结证书或旧输出。

默认只用Python标准库，检查A/B、全部行/结式/原输入回归和16项坏证书拒绝。可以用 `python3 -S` 确认没有site-packages依赖。

重新生成并对照字节：

```bash
python3 src/replay.py --output-dir /tmp/b699-round5-regen-new --regenerate
```

这一步需要SymPy；运行环境版本记录于 `outputs/environment.json`。生成器读取上轮原ZIP中的素性证书和本轮冻结负向探针输出，不联网、不读取仓库、不执行旧包代码。

单独调用：

```bash
python3 src/check_a.py certificates
python3 src/check_b.py certificates
```

证书生成算法使用SymPy产生结式和整数Bezout身份。A独立重建整数Sylvester/Bareiss；B独立作有理多项式欧几里得递推。两者不依赖生成器的CAS结果作为黑箱。

`src/probe_negative.py` 需要SymPy，是固定范围的方法否证探针，写入 `outputs/negative_probe.json`。它不是默认重放必需项，也不是无限证明的有限末端。默认重放只重新检查它找到的具体整数外壳。

**验收边界：**程序能检查冻结有限数据、精确多项式身份、素性、源精度和声明门槛。PROOFS 的任意次数/任意位置证明仍须数学审读；程序PASS不等于Lean或外部同行验收。
