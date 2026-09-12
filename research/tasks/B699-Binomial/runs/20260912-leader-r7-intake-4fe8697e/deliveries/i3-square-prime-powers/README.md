# B699 Pro B：平方行的素数幂分子闭合

先读 REPORT.md，再读 notes/PROOFS.md。HANDOFF.md 与 SESSION_STATE.json 给精确接续点。

结果：i=3，n为平方、β=j/gcd(n,j)=q^r、q素数、1≤r≤7 的全部合法输入已在纸面＋精确有限检查层闭合。不是整个i=3，不是任意指数，也不是一般非平方n的β=q²闭合。R8不变。

重放只需 Python 3 标准库：

    python3 -S verify_manifest.py
    python3 -S code/reproduce.py --record replay/local

程序从空临时目录重新生成并比较5份数学输出。四条命令分别是生成、不同方向的精确检查、代数/内容回归、坏输入拒绝。旧百万β和C旧Padé计算不重跑。

originals/ 保存 B/C 两个原ZIP的原字节；sources/ 是采用文本的字节副本；对应成员、大小和SHA256在 SOURCE_MAP.json。本轮实际 Library 恢复过程与外部只读背景核对见 SOURCES.md。
