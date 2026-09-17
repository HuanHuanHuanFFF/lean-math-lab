# B699 Pro E：端部结果式与小系数乘素数幂闭合

本批次 owner：当前 Pro E 会话。只写本目录，未修改原交付、Git或他人文件。用户本轮没有指定总时长；没有继承旧五小时预算。

## 完成的结论

**THIN9：** 对全部合法 i3 输入，令 g=gcd(n,j)、β=j/g、γ=(n−j)/g。若 β 或 γ 为 dP^a，P任意素数、a≥1、1≤d≤9，则存在共同奇素数。n、j、g、P、a均无上界。

**一般第一分配界：** NC3下，a=gcd((n−1)/λ,j)、b=gcd((n−1)/λ,j−1)满足 `2g(n−2)<21min(a,b)^3`。

**端部R=7混合：** 第一窗口两侧都必须跨越平方行的两个互素因子，因而两约分侧都至少有三个不同素因子。这不是整个R=7闭合。

## 入口与证据

从 [OVERVIEW.md](OVERVIEW.md) 接续；完整证明 [PROOFS.md](PROOFS.md)，本轮摘要 [REPORT.md](REPORT.md)，采用边界 [SOURCE_ADOPTION.md](SOURCE_ADOPTION.md)。

作者纸面＋新完备整数证书＋同作者第二实现。THIN9的β分支采用旧THREE的L>1，含旧出版整点分类；γ分支可用初等R>1。无Lean、无独立数学审读，无全历史差集/新颖性审计。全局R7不变。

```bash
python3 -S -B scripts/build_certificate.py --output /tmp/b699-thin9/cert.json
python3 -S -B scripts/verify_certificate.py --certificate /tmp/b699-thin9/cert.json --output /tmp/b699-thin9/acceptance.json
```

两主脚本只需Python标准库，不导入彼此或发现脚本；发现探针使用NumPy时不属于正式接受依赖。旧证据未重跑。

实际冻结与重放见verification/。普通文件按MANIFEST.json核对；哈希完整性不是数学证明。
