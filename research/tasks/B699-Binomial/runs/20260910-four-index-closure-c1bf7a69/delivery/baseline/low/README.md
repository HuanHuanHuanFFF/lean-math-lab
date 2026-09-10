# B699 低指标有效高度研究证据包

入口顺序：`HANDOFF.md` → `FRONTIER.md` → `REPORT.md`。

## 结果

七项17、23、26、27、30、32、33得到具体绝对反例高度；i4得到新的非有效绝对有限性；i3/i4有准确的局部多项式方法障碍。所有新结果未Lean化，没有完成高度内排除。

## 可复现接受路径

从解压目录运行：

```bash
python3 code/reproduce.py
```

只需Python标准库；禁止用`python -O`关闭断言。脚本在子进程中记录命令、退出码、实际stdout/stderr、耗时和哈希；核验原输入快照的provenance；重放阶乘高度生成、Legendre赋值复核、独立有理多项式代数、6个原始二项式测试、4类坏证书拒绝、BFT图约束的720次序分类。

这不重证出版输入，不运行Lean，不穷举n、j，不联网。

## 可选探索

```bash
python3 code/reproduce.py --exploration
```

需`requirements-exploration.txt`记录的SymPy、NumPy、SciPy。这会另外重放SymPy展开，以及报告列明指标的有限直线/圆锥LP诊断。LP使用浮点找候选，然后逐约束作精确有理可行性校验；只有修复后的确切界作为有限模型证据。大例没有假称全曲线最优性。

## 文件

- `input/`：用户原任务ZIP、TASKS和来源provenance，原件按字节保存。
- `code/`：所有实际使用脚本；`exact_polynomial.py`为独立标准库多项式实现。
- `outputs/`：真实计算输出，非模拟记录。
- `replay/`：本轮最终subprocess重放日志和状态。
- `SOURCES.md`：精确原始定理版本、页码、假设与访问限制。
- `notes/RESEARCH_LOG.md`：过程中保存的检查点，不冒充独立审查。
- `MANIFEST.sha256`：发布文件哈希（不包含其自身与Python缓存）。重放会更新计时/日志，所以重放后的这些文件哈希可能不同；确定性数学输出应一致。

核心文件兼容Python3.10+所用语法；实际环境版本在replay/reproduction.json中。可选库版本只是本轮实测环境，不承诺任意平台结果字节一致。
