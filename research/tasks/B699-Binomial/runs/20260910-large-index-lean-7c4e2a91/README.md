# B699 1000..4882 原题消费者

本批负责人：Codex 主任务。只写本批目录；历史批次以固定源码导入复用。独立分支 `GPT-work/b699-1000-4882-20260910-7c4e2a91`，固定来源 `12c31b8b5729b0017cf8e1423cd98ed5230aaaae`。不采用其它并行会话本轮新成果，不依赖 EC、Dusart 或其它未证出版输入。

目标：对所有自然数 n,i,j，1000≤i≤4882、i<j≤n/2，存在素数 p≥i 整除两个实际二项式系数（等价写为整除 gcd）。保留 p=i；n,j 无上界；无证书或结构前提。3883 项在本批开始时均未新增验收。

预算：2026-09-09 17:59:27 UTC（上海 2026-09-10 01:59:27）开始；第五小时收束评估 22:59:27 UTC；计划截止 23:59:27 UTC；仅核心证明/最终验收接近完成时可记录依据延长，绝对截止 2026-09-10 00:59:27 UTC。所有子任务共享此预算，不自动继承其他任务预算。

已读固定材料：仓库 AGENTS、STRUCTURE、Lean research skill 与 open-problem workflow；题目入口；middle-index 815 项验收、frontier、HeightRows、RawHeight、HeightApprox、extension/primeChain/Complete；low-index acceptance、ThreeWindowSize、HeightCertificate；prime-optimization REPORT 第1/3/4/6节、previous-report 第4节、整数表。

源版本采用：以上均为本批固定来源提交。815项完整根 20260909T145049Z 用作固定项目对象复用候选，必须逐源、依赖、对象与实际日志绑定。HeightApprox/DyadicBounds 在旧交接明确为未验草稿，本批若采用需实际验证。

启动工作区：main 在固定提交上，仅 B686-Four/round9 未跟踪；已在忽略的本机目录保存原文件 SHA256 清单。未改变原文件。启动约16GB总内存、1.3至2.5GB可用，D盘约6.0GB可用；无既有 Lean/lake 进程。相关非研究进程不停止。重计算串行，Lean -j1，缓存和临时输出在D盘。

当前状态：准备阶段，尚无本批已验定理。[前沿](frontier.md)记录范围和下一检查；[路线记录](notes/routes.md)记录 A/B 比较。
