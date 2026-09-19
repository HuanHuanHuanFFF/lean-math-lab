# B699 Pro E：有理分裂比值障碍

从 `OVERVIEW.md` 接续；最强结论在 `REPORT.md`，完整证明在 `PROOFS.md`，失败模型在 `FAILURES.md`。

对合法 `4|n,4≤j≤floor(n/2)`，

`(n-1)(n-2)((n-2j)²-3n+2)` 为整数平方

足以证明同一个奇素数同时整除两个原始二项式。证明没有有限尾部，没有给参数设扫描上限；一般 i3 / omega(t3)=2 仍未闭合。

## 可执行消费者

```sh
python3 -S -B scripts/split_consumer.py 52 18
python3 -S -B scripts/split_consumer.py 11272 5292
```

命中返回 `PROVED_BY_SPLIT_THEOREM` 和失败的完整窗口；不命中返回 `UNKNOWN`，绝不返回“反例”。该程序不做巨大因数分解，所以一般返回的是存在性结论，而非已分解出的素数。

## 完整复现

```sh
python3 -B scripts/reproduce.py --output-dir /tmp/b699-split-replay --symbolic
```

核心检查仅需 Python 3 标准库；`--symbolic` 另外需要 SymPy。没有该包时删去此开关，仍会重放算术证书、损坏测试、明确原输入见证和消费者测试。

实际本轮重放记录：`outputs/REPRODUCTION.json`，5份输出逐字节相同。证书、有限扫描、精确恒等式不能替代无限纸面证明。两套实现均为同作者代码，不是外部研究者验收。

## 来源与清单

`SOURCE_ADOPTION.md`、`sources/PROVENANCE.json` 固定来源和依赖等级；`MANIFEST.json` 列全部交付普通文件及 SHA256（不含自身）。二进制、Python缓存、前两轮完整ZIP不重复打包。
