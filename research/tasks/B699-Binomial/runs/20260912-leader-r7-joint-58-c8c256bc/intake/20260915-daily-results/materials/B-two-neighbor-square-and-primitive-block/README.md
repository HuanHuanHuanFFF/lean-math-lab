# B699 Pro B：两邻平方分配与完整双字块闭合

先读 REPORT.md → notes/PROOFS.md → HANDOFF.md。最强新结果：

- n=x²时，x−1或x+1整除j或n−j的全部合法输入闭合。
- n=(P^a±1)²、P奇素数、a≥1的整行闭合；平方NC3必须有ω(x−1),ω(x+1)≥2。
- 与旧k≥3证明合并，任意字块完整重复至少两次的输入全部闭合。
- 任意长度、任意内部结构的互补交替字块也闭合。

不是整个i3的闭合；R7不变。作者纸面＋精确有限证书；未Lean、未外部独立数学/人类审稿。

## 重放新接受链

```bash
python3 -S -B verify_manifest.py
python3 -S -B code/reproduce.py --record replay/local
```

仅Python 3.10+标准库。重放在临时空目录执行新代码，比较六份数学输出原字节，前后核对静态文件与旧原件哈希。无联网，无旧大表重跑。原始上一轮ZIP在sources/previous.zip，不改字节。

`outputs/modular_certificate.json`的20行小模数与覆盖是有限证明组成部分；`finite_bottom.json`存39个小偶底数模式、5个3端点对、12个交替底部。`regressions.json`里的有限样例不能代替无限证明。

`exploration/`均为选路诊断，非接受前提；需要C++/SymPy的可选探索不被默认重放调用。失败与剩余量词在notes/FAILURES.md。
