# 交接前的早期运行记录快照
历史状态仅供追溯；当前结论以report.md/frontier.md为准。

# B699：完整大素数幂与剩余区域

本轮原题：对所有自然数 n,i,j，1≤i<j≤⌊n/2⌋，存在素数 p≥i 整除 gcd(C(n,i),C(n,j))。保留 p=i 及完整指数。本轮研究新结构，不重复 EEES 的形式化工程。

- 批次：20260909-large-prime-structure-cb4764f0；主负责人：本机会话 /root，用户指定 GPT-6 Astra / Max。
- 分支：codex/b699-large-prime-20260909；独立工作树由主线程创建。原 main 保持 08a8ac6，原未跟踪 B686 round9 保留。
- 实际来源提交：37e42aca251c33c62cbc2c40f286daa0526d79ee。2026-09-08 fetch 后 origin/GPT-work/formalization-20260908-closure 与之相同；PR #1 open、未合并。
- 状态：研究进行中；没有新 Lean 接受结果、没有全题证明、新颖性未判定。
- 交付授权：用户本轮明确要求本地提交并 push 自己的独立分支；不合并 main，不开新 PR，不联系第三方。
- VPS：独立会话处理 EEES 依赖与下游形式化；不直接通信、不访问其工作区、不等待它完成。用户中途转交材料另行核对。

## 预算与资源

首次执行 2026-09-08 17:41:44 UTC / 2026-09-09 01:41:44 Asia/Shanghai。原始预算 4 小时，原始截止 2026-09-08 21:41:44 UTC / 上海 05:41:44。首比较截止 18:26:44 UTC，收束预留自 20:56:44 UTC 起。包含初始化、审查、验证、提交与推送。未启用延期；仅当重要突破有具体剩余步骤时，主线程提前记证据并通知用户，最终上限 22:41:44 UTC。

本机初始化实测：i7-12650H，10 核/16 逻辑处理器，约 15.69 GiB RAM、约 2.09 GiB 可用；CPU load 34%；D 盘约 8.51 GiB 空闲、C 盘约 6.42 GiB。未见 Lean/Lake 计算任务，已有其他应用与 Chroma 服务不动。最多一个 Lean 编译或重计算，由主线程串行安排，先单线程；子线程禁止自行编译或长计算。安装、临时、缓存只在 D:。

全任务树最多 3 个子线程（含递归），其中数学至多 2 个 Astra Max；各子线程禁止派生。第三支持席位按需 Luna Max，当前空置。

## 文件所有权与入口

- 主线程独占：本 README、[frontier](frontier.md)、notes/adoption.md、notes/route-comparison.md、experiments/ 下主线程运行的结果、verification/、最终交接和公共模块必要修改。
- 数学 valuation-transfer：只写 notes/valuation/；研究完整 prime-power 转移、双子窗口、Kummer 与实际整数结构。可交付小实验脚本但不自行运行。
- 数学 rational-slopes：只写 notes/rational/；独立研究比例/算术级数结构与可适用大素因子定理。可交付小实验脚本但不自行运行。
- 子线程不得改旧批次、公共模块、共享记录或包版本，不提交、不 push、不递归派生。

[采用清单](notes/adoption.md)；[路线比较](notes/route-comparison.md)。动态结果与失败按证据写入本批，不回写 VPS 批次或控制中心。

## 当前交接点

最后接受结果来自上述基线的实际 V_i(n) 转移；纸面采用准确 EEES 及十二例外、平方必要条件和 3i<2j。新结果待形成。下一个判别点：对每条候选给完整量词、真实约束、预期无限范围收益、剩余无界参数及最小可证伪测试。

2026-09-08 初始化后：第三席 source_bounds 已启动为 Luna Max，只写 notes/sources/，核对 LCM 与 Dusart 原始来源；禁止递归与重计算。当前全树恰有两个数学子线程及一个支持子线程。

首轮比较已在45分钟内完成，见 notes/first-checkpoint.md。来源支持席已结束；两数学角色在原有线程内互审对方路线，分别新增独占reviews/valuation-cross-review.md和reviews/rational-cross-review.md。工具总线程数拒绝新审阅线程；没有绕过并发上限，审查按跨路线AI审查标记。

19:32UTC检查点：当前精确结果和剩余无界区域已更新frontier.md。第三支持角色独占实验composite-boundary/generate_lean.py与生成FiniteBoundary.lean，处理同一范围的紧凑内核证书；没有数据或假设缩小。最初768MB开发限制不足；实测可用内存约5.77GiB后主线程将唯一Lean进程限制调整为1536MB，并保持-j1。普通编译已通过，有限证书的大命题计算触限记录保留，现按行拆分。


