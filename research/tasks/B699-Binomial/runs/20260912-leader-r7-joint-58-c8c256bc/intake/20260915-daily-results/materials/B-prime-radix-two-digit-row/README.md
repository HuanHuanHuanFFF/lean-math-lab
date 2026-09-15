# B699 Pro B：奇素数进制首位／尾块与两位整行证据

入口：REPORT.md → notes/PROOFS.md → HANDOFF.md。

复现只需要Python标准库：

    python3 -S -B verify_manifest.py
    python3 -S -B code/reproduce.py --record replay/local

6条新命令重新生成7份数学输出，与outputs逐字节比较；旧原件不执行。`replay/acceptance/`保存实际接受过程。`exploration/`是不承担无限证明的选路探针，`notes/FAILURES.md`说明其范围。

新结论：任意尾块的整行判据、两位奇素数进制反例的统一指数界、系数≤8的完整整行。R7不变；未Lean、未独立研究者或人类审稿。
