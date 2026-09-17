# 来源、依赖与读取边界

## 实际读入的作者源

- 用户总入口：`/mnt/data/OVERVIEW-2026-9-17.md`，已完整读取；这是唯一项目总览。
- 直接冻结父源：`B699-ProA-i9-next-window-20260917-7b40a1c6/PROOFS.md`，全文306行；REPORT、HANDOFF、FAILURE_BOUNDARIES同目录。使用本会话上一轮M39、Q8-L21、EDGE39及明确前置作为起点，不从摘要虚构推导。
- 父原包：`B699-ProA-i9-mahler39-quartic-edge-evidence-20260917.zip`，SHA-256 `f00566820c69f2dab0fa000d572bd83e5a65ac55866ae9e726c5e5bc38a974b4`。采用成员：`B699-ProA-i9-next-window-20260917-7b40a1c6/PROOFS.md`。完整指针见`evidence/parent_archive_pointer.json`；没有将父ZIP重复塞入本包，也没有重跑它的接收入口。
- 每份已读取本地源的字节大小、路径、SHA-256见`evidence/source_manifest.json`。本轮未接入B/D/E的新结果，未请求旧聊天记忆替代本会话附件。

## 采用但未重新验收的数学契约

P/E入口、完整六粗窗、BC/S14、Q2/W6、C3-L85/L200、二元Mahler系数界MC/FH及同一个G的K152预算。全部保留原作者证据等级；本轮源字节核对与新代码重放不升级它们为独立接受。依赖准确量词在PROOFS §1。

## 新增出版输入

Martin Henk, *Successive minima and lattice points*, arXiv:math/0204158v1 (2002), Theorem1.3，证明在§3。

- 原文：`https://arxiv.org/pdf/math/0204158`
- 核对方式：读取PDF解析正文；网页截图实际成功显示第2页(Theorem1.3)，已核对上界 `(∏λ_i)vol(K)≤2^t detΛ`。
- 不使用同页Conjecture1.4，不使用未证明的离散类比，不将图中猜想误记为输入。
- 未将PDF下载到容器，不声称PDF字节/哈希；包内不复制完整论文。

Mahler/Jensen及二元系数界沿用父文中自包含推导；本轮对M(F)≤||F||₂的补充在PROOFS §2.3展开。没有新增Baker、椭圆曲线、整数点求解器或CAD黑箱。

检索时见到的三角网格插值和Bézout材料没有成为新证明依赖。新SAT24是明确的有限系数/ordinary-jet分类，格行列式界在PROOFS §2.1用外积和Cauchy–Binet说明。

## 新颖性及接受边界

本轮“新增”指相对实际冻结研究链的增量，不主张文献首创。Minkowski第二定理、Mahler测度及整数格对偶是经典工具；新的应用、预算、饱和分类与原题消费者由本文承担。

两个枚举/两种Taylor实现属于同会话实现交叉检查，不是另一个研究者的数学审稿。没有Lean、外部独立全篇审稿、仓库推送或发布权限外动作。
