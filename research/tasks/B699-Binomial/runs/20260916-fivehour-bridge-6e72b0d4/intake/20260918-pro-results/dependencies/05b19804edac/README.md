# B699 Pro B｜GAP31 evidence

2026-09-17新交付：同一NC3输入的间距商δ有效有限化，`NC3⇒δ≥33`，`n<2²¹δ⁸`。完整R7不变；没有一般i3闭合、Lean或外部独立审读。

阅读顺序：`REPORT.md` → `proofs/PROOFS.md` → `HANDOFF.md`。采用等级见`SOURCE_ADOPTION.md`，方法边界见`FAILURES.md`。

## 文件导航

|路径|内容|
|---|---|
|`proofs/PROOFS.md`|初等前置、无限推导、显式高度、完备恢复、B/E实际内容连接|
|`code/gap_probe.py`|平方除子恢复；需要SymPy|
|`code/verify_gap.py`|不同算法：唯一正三次根恢复；标准库；含5种坏证书拒绝|
|`code/check_terminals.py`|C≤3完整原题终点，及三行孤立3错误诊断；标准库|
|`code/check_algebra.py`|18项精确符号恒等式/常数检查；需要SymPy|
|`code/reproduce.py`|统一重放，不覆盖冻结证据|
|`code/window_probe.py`|首阶段有界可否证实验，不承担无限结论|
|`outputs/`|冻结JSON、运行输出和最终重放摘要|
|`sources/OVERVIEW-2026-9-17.md`|用户唯一接续附件的精确副本|
|`notes/DECISIONS.md`|有依据的路线选择与结果记录|
|`MANIFEST.sha256`|除清单自身外全部交付文件的SHA-256|

## 离线复现

无需第三方库的核心证书复核：

```bash
python3 -S -B code/reproduce.py --output-dir /tmp/b699-gap31-replay
```

完整重跑（已有SymPy时）：

```bash
python3 code/reproduce.py --full --output-dir /tmp/b699-gap31-full
```

环境使用Python 3.13.5、SymPy 1.14.0。输出目录必须在冻结证据目录之外。程序均在前台串行运行，不联网，不访问用户仓库，不改变源附件。

第一算法和第二算法都由本轮同一作者实现。“两实现匹配”不等于独立研究者审读。计数222811是已经证明完备的系数盒大小，不是全题剩余实例数。

`gap_probe.py/verify_gap.py`可以改有限δ边界，但当前证明交付只登记≤31；它们的`source_candidates`是必要系统筛选的候选，并非完整NC认证。当前范围在真实λμ检查时已全空，故不依赖未执行的更后原题检查。

首阶段弱窗口实验可单独重跑：

```bash
python3 -S -B code/window_probe.py --limit 200000 --output /tmp/b699-window-probe.json
```

该输出有观测耗时，不能要求耗时字段逐字节相同，也不能用其有限范围支持无界命题。
