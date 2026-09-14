# B699 · Pro D · R7 三分配与平方根整行消费者

先读 REPORT.md；完整推导在 notes/PROOFS.md，最小依赖在 notes/MINIMAL_INTERFACE.md，下一轮接续在 HANDOFF.md。

证据等级：作者纸面证明＋一个明确出版对数输入＋精确小证书／普通程序回归；未Lean、未人审、未由第二研究者独立审稿。研究前沿仍为R7={3,4,5,6,7,8,9}。

## 默认重跑

需要Python 3.10或更新版本；本轮实际版本与耗时见evidence/acceptance.json。默认链没有第三方依赖。

```bash
cd B699-ProD-R7-20260912
python verify.py --output /tmp/b699-proD-r7-verification.json
```

它检查成员哈希和冻结原件字节，重跑最小证书、备用两方程、符号身份、原题消费者回归、固定模数边界，并在临时目录重生成对数证书作逐字节比较。默认不修改证据包。输出日志放包外，否则会改变冻结清单。

最小B699消费者单独运行：

```bash
python code/check_minimal.py --mutations
```

它只需要evidence/minimal-log-certificate.json中的一个r/s，保留原题ℓ=3条件；a=2用小模数排除，a=1经高度后只剩两个模数排除。此脚本仍未形式化论文推导或出版定理。

备用两指数方程的更强结论：

```bash
python code/check_log_certificate.py --mutations
```

探索性探针可另行重跑，不属于默认接受的证明前提：

```bash
python code/explore_quartics.py
```

explore_hessian.py需要SymPy，只有探索记录，没有被最终证明采用。

## 成员结构

- notes/：完整证明、最小接口、失败边界。
- code/：生成器、不同实现的区间接受器、原题估值与代数／模数检查。
- evidence/：冻结证书、确定性输出和实际接受日志。
- adopted/：未改动的旧D原文和接收前沿／修正，源哈希见SOURCE_MAP.json。
- checkpoints/：本轮途中简短状态；以REPORT和HANDOFF为最终状态。
- MANIFEST.json：全包成员字节数与SHA-256，自身不列入；ZIP的外部SHA另附。

不要把局部同余见证、必要整除的弱解、有限扫描范围或受限行族当成原题反例／全域证明。没有Github推送或PR动作；交付方式是本轮证据包。
