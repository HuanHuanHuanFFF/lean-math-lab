# B699 Pro B — 平方二阶矩与共同奇除子

阅读顺序：REPORT.md → notes/PROOFS.md → HANDOFF.md。

- 主结论：i3的全部平方二阶矩j(n−j)(n−1)输入成立；一般NC3下λR C0C2非平方。
- 完备有限证明：outputs/bottom.json，9状态，无合法整数点。
- 有限实现回归：outputs/regression.json；不作为无限覆盖的扫描证据。
- 有限路线诊断：outputs/square_projection_probe.json；无范围外推。
- 源原件：sources/，SOURCE_MAP给字节哈希；previous.zip未解包重跑。

复现只需Python标准库：

    python3 -S -B verify_manifest.py
    python3 -S -B code/reproduce.py --record replay/local

第二条命令在新的空临时目录中重生成本轮五份确定数学输出，与冻结字节比较；不会运行旧证据链。

R7不变。新结果未Lean化、未独立研究者或人类审稿，未做全历史覆盖并集差集审计。
