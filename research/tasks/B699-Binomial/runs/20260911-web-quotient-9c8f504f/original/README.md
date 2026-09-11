# B699 R13：新商消元与自由次数Padé证据

先读REPORT.md，再按需要读notes/QUOTIENT_PROOF.md与notes/FREE_DEGREE_PROOF.md。R仍13项，没有新的整指标闭合或绝对高度；有两个完整无界排除族和一条阈值明确的余因子引理。

## 复现

Python 3.10或更新版，标准库即可；不要使用`-O`或`-OO`。

```bash
python3 verify_manifest.py
python3 code/reproduce.py --record replay/local
```

复现只运行8条新接受检查，从空临时输出目录重生成并与冻结输出比较；不运行Lean、不联网、不重跑全部历史扫描。`replay/local`是新运行记录，不覆盖发布验收记录。

可选浮点探索需要NumPy和SciPy，命令见replay/exploration_commands.json。这些输出不是数学证明。

## 输入与来源

input/originals保留本轮用户ZIP原字节；其中的旧任务文字只作为原件的一部分保存，不是新增执行指令。原件中的数学源码和记录均不被本包修改。

input/frozen-small-box保存旧完整n≤10000证明/检查器/证据的原字节，主接受链只绑定，不重跑。code/vendor有两个来源映射明确的旧有理区间助手。新循环、消元、阈值和反向证书由本轮给出。

主证据是纸面推导与新精确算术检查；BFT出版输入保持未形式化状态。无新Lean、无人审、新颖性未调查。
