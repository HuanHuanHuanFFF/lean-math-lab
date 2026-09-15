# B699 Pro A — 统一粗余因子高度与可变支持消费者

从REPORT.md → notes/PROOFS.md → SOURCE_ADOPTION.md → FAILURE_BOUNDARIES.md进入。接续见HANDOFF.md和SESSION_STATE.json。

运行本轮新增接收：

```sh
python3 code/reproduce.py
```

只需Python标准库。可重新生成证书：`python3 code/generate_certificate.py`；不要求重新生成才能接收。code/consumer.py提供保守的精确充分条件接口；False不是NC9。

输入inputs/A-support31-original.zip保持原字节。源任务与旧状态不替代当前用户指令。B/D没有作为前提，不等待其新结果。不要重放未修改的历史全链。

新主结论：NC9且完整粗部分W≥11时，n<W^(2^73)；400|n时以2^72替代。新K不依赖粗素数身份、数量或指数，但W本身仍无界。58族和R7不变；i14旧成果保留。

等级：明确出版输入（2019主文＋2020负号勘误）之上的新纸面推导、有限整数/有理义务接收。未Lean、未外部独立全篇审读。旧C31仅用于W=1端点和前沿说明，新核心不依赖旧计算。
