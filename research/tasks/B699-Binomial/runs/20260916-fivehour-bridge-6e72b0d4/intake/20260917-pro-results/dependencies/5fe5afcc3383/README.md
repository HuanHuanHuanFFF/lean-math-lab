# B699 Pro E — 两块与长间隔整行闭合

本目录是独立研究交付，不是仓库 checkout。负责人：Pro E（本轮主线程）。建议仓库归档 run：

    research/tasks/B699-Binomial/runs/20260916-two-block-remainder-e62b7c91/

用户目标：基于指定总览和最新指定分支自由推进，优先闭合、允许改换表示。不继承旧五小时预算；用户未给本轮总时长。本轮没有发布授权动作：未 push、PR 或合并。

入口：先读 REPORT.md、PROOFS.md、SOURCE_ADOPTION.md；后续从 OVERVIEW.md / HANDOFF.md 开始。失败和适用边界见 notes/FAILURES.md。

结果：i3 的全部奇素数幂进制两非零块、任意长低位块的足够长间隔族、两个移位族，以及带低素数过滤的 i3..9 转移。没有新增完整指标，R7 不变。

证据：作者纸面证明；新符号恒等式、正多项式证书、有限原始二项式及阶乘估值回归。未 Lean；运行环境没有找到 lean/lake；未进行独立研究者审稿。无限结论依靠纸面证明，不依靠扩大测试范围。

复现：

    python scripts/verify.py
    python scripts/verify_shifted.py
    python scripts/verify_general_block.py

Python 3.13.5 / SymPy 1.14.0。脚本只写当前目录 verification/。MANIFEST.json 是交付文件字节清单；重跑脚本会改变实际耗时字段，应另存新的验证记录，不把新哈希冒充原记录。

首个显式墙钟记录：2026-09-16 03:34:48 UTC（上海11:34:48）；不是对完整会话起始时刻的追认。容器初次资源检查：内存上限4GiB，已用约0.73GiB，CPU配额4核，盘余约30GiB；属于本轮观测，非永久机器规格。
