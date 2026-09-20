# B699 Pro D · 原行唯一恢复与单格候选门

入口：REPORT.md；全证明PROOFS.md；错误边界FAILURES.md；下一步HANDOFF.md。
本轮真正未知域净减少未认证：**frontier reduction = 0**。

运行（Python标准库）：

```sh
sh REPLAY.sh
python3 code/lattice_gate.py 7549341510137130
python3 code/consumer.py 108268610952065130 73341537334800
```

`EMPTY`只在给定前提内表示弱整数子系统无解；对RES10的NC应用另有完整G134回传证明。
`CANDIDATE`或`OPEN_CANDIDATE`绝不是NC6、反例、完整源证明或一般i6已闭合。

默认重放不运行发现扫描。可选有界诊断：

```sh
python3 code/falsify_small_g.py --output /tmp/b699-small-g.json
c++ -O3 code/repeat_probe.cpp -o /tmp/b699-repeat-probe
/tmp/b699-repeat-probe
```

所有有界诊断都不是原题的全局有限末端。证据等级为作者纸面+同会话精确复算，无Lean/外部独立审读。
