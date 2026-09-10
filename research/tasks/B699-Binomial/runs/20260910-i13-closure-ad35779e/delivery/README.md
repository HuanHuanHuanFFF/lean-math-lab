# B699 i=13 全域闭合证据包

**结论：** 对所有自然数n,j满足14≤j≤⌊n/2⌋，存在素数p≥13同时整除C(n,13)、C(n,j)。新R={3,…,12,14,15,16,18,20,21}，16项。

这是有明确外部BFT输入的纸面证明＋完整精确有限核验，不是Lean或人类审稿。先读 [REPORT.md](REPORT.md)、[notes/PROOFS.md](notes/PROOFS.md)、[HANDOFF.md](HANDOFF.md)。文件角色见 [EVIDENCE_MAP.json](EVIDENCE_MAP.json)。

## 重放

在此目录下运行：

```bash
python3 verify_manifest.py
python3 code/reproduce.py
```

Linux/Unix上的Python标准库即可，不能使用`-O`或`-OO`。Linux实测的接受重放约20.7秒、子进程峰值约127MiB，不保证其他环境相同。每次使用新的记录目录；再次运行可用 `python3 code/reproduce.py --record replay/another-run`。脚本从空outputs的临时根开始，不复用历史生成数据，10条命令和11份数学数据都需通过；失败会保留记录并非零退出。

默认不联网、不运行Lean、不重跑旧全套研究、不读别的会话。原包内部旧TASKS等只是历史材料，不是本轮执行指令。

## 布局

- `input/`：原字节共享ZIP、入口文本、冻结11条新cut输入、压缩高度输出。
- `code/`：生成器、不同实现检查器、边界和破坏性测试；adopted*下为原字节旧实现，来源有哈希映射。
- `outputs/`：本轮真实输出，按status区分接受证据和浮点设计。
- `sources/`：固定Git快照、原件与旧源码映射、出版输入核准。
- `failures/`：实际第一轮n126残余及诊断说明。
- `replay/acceptance/`：最终冻结源码的真实干净环境重放、命令、输出哈希与资源记录。

## 可选研究诊断

它们不属于接受链。恢复只读历史输入：

```bash
python3 code/restore_exploration_inputs.py
python3 code/probe_weighted_asymmetric.py
python3 code/probe_i13_profiles.py
python3 code/probe_neighbors.py
python3 code/check_next_condition.py
```

固定因子族的圆锥探索另外需要NumPy、SciPy：

```bash
python3 code/probe_conics.py 11 13 15 18 20
python3 code/probe_conics.py 9 10 13 18 20 --mode 1
```

这些诊断会重写相应诊断输出，建议在包的副本运行；它们不能代替精确常数检查或无界证明。保留的`generate_i13_terminal_first_attempt.py`会在n126处失败，是有意保留的实际失败版本，不要当作主入口。

静态MANIFEST不将后来新增的replay/latest列为原交付文件，但绑定的任何旧文件内容变化仍会被拒绝。原共享包17417653字节原样保存，避免再复制全部解包数据。
