# B699 Pro E：变模整数恢复证据包

**新结果：规范最小支的全部 n=2^(4t+1) 与 n=2^(10t+1)（t≥1）关闭。** 在该支的纯二幂奇指数部分，v2(s−1) 现在精确等于1，且 5∤s−1。不是这些 n 的全部 j 整行定理，R7 不变。

阅读顺序：`REPORT.md` → `PROOFS.md` → `HANDOFF.md`。`FAILURES.md` 保存精确反例诊断与范围边界，`SOURCE_ADOPTION.md` 列出冻结采用前置和未重验之处。

## 重放

在解压目录运行：

```bash
python3 replay.py
```

需要 Python 3.10+ 的标准库；不需要网络、Lean、SymPy、PARI 或类数软件。不要使用 Python `-O` 或 `PYTHONOPTIMIZE`；检查器明确拒绝优化模式。

重放核对成员 SHA256，两套算术检查器，九类坏证书拒绝和条件消费者；并确认前后字节不变。不会重验旧 L/h13/order5 的无限证明链，不会自动把作者证据升级为独立验收。

## 可分开运行

```bash
python3 check_coeff.py
python3 check_values.py
python3 check_bad.py
python3 test_consumer.py
python3 consumer.py --s 17
python3 consumer.py --s 51
python3 consumer.py --s 17 --c-alpha 3
```

最后一条应返回没有本轮新排除，而不是把 c_alpha=3 错当成二幂分解。

证书可选再生成（请写到包外，保持冻结包只读）：

```bash
python3 check_coeff.py /tmp/rebuilt-certificate.json --emit
python3 check_values.py /tmp/rebuilt-certificate.json
```

## 文件与证据分工

- `certificate.json`：全部新有限算术的精确输入与输出；包含有序余式、正性系数、严格有限端点、失败恒等式。
- `check_coeff.py`：系数运算与给定分解核验；也提供证书生成入口。
- `check_values.py`：不导入第一实现，使用完整次数取值网格及独立筛法重新分解。
- `outputs/`：实际运行输出；`notes/`：路线记录、初始否证试验和纸面审计。
- `sources/`：原 Overview、上一轮报告/证明/交接、采用的大小不等式原段及原字节 ZIP。MAX5 附包仅供后续接续，不是新定理依赖。

无限参数的整数分配、变模引理、各自严格尾部与原题回传由 `PROOFS.md` 证明。有限脚本不是全题形式化。
