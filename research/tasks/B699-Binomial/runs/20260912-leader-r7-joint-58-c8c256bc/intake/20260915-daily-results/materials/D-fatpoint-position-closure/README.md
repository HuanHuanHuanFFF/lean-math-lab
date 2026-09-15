# B699 Pro D：多重消失位置闭合（2026-09-15）

阅读顺序：REPORT.md → HANDOFF.md → SOURCE_ADOPTION.md → notes/FAILURE_BOUNDARIES.md → notes/PROOFS.md。

## 接收

从本目录执行：

```sh
python3 replay.py --regenerate
```

默认与--regenerate均只用Python标准库。默认检查发布的全部新证据；--regenerate额外重建三个新有限域，并逐字节比较domains/rows/families。两种模式都会重算接收、有限真实二项式回归和坏证据拒绝，并与发布数学输出逐字节比较。不会解包运行旧数学全链，不需要联网、Git仓库、Lean或人工提供额外输入。

系数构造也可另行重做（只该可选功能需要NumPy）：

```sh
python3 replay.py --regenerate --reconstruct
```

实际系数重构已执行，记录在evidence/reconstruction.json、logs/reconstruct-new.log。即使不运行构造，主接收也重新验证全部1,020条整数Taylor条件、正性和高度；不信任模核／秩报告。

运行不会改写发布的数学证据。可传--receipt /某路径/receipt.json保存本次接收收据；收据包含机器环境和实际时间，不构成独立数学审读。Python -O模式被接收入口拒绝，以免去掉断言。

## 文件

- evidence/height_certificates.json：三份完整整数多项式及正性、成本证书。
- evidence/domains.json、rows.json：已获得绝对高度之后的完整新有限域与进位区间。
- evidence/families.json：剩余角色的完整并集；不是原题反例。
- code/：生成器、不同实现的接收器、回归、损坏拒绝和可选重构。
- exploration/：发现材料和失败探针，非正式接收依赖。
- sources/：实际取得的冻结D包及文本，INPUTS.json绑定原字节；保留缺少最新A/B的事实。
- MANIFEST.json：当前封包成员大小和SHA-256（自身不递归列入）。

新整行结论覆盖i7的H024/H025/H026；n mod49≥7时才转i8/i9。R7不变，没有新完整指标结论。
