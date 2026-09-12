# B699 · Pro B · R7 双侧缺陷研究

先读 REPORT.md、HANDOFF.md；完整证明在 notes/PROOFS.md。

最强结果：一般行 β 或 γ 为素数平方的子族完整闭合；平方行 β 或 γ 为任意素数幂（指数无上界）完整闭合。R7整项集合不变。

复现（Python 3.10+标准库，不能使用-O）：

```sh
python3 -S verify_manifest.py
python3 -S code/reproduce.py --record replay/local
```

重放从临时空目录产生5份新数学输出，逐字节比较outputs，记录5条命令的退出码和运行时间。sources中的两份原ZIP按原字节保存；不重放旧研究整轮实验。probe_*仅为发现阶段脚本。

纸面推导、有限证书、作者第二实现、Lean、人类审稿相互区分：本包没有新Lean或独立人类审稿。
