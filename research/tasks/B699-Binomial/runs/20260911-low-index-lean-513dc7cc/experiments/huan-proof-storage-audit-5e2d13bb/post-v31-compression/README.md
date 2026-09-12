# post-v31 压缩候选计划

本目录只准备计划和未来执行入口，没有运行 compact.exe /C 或 /U，没有删除、替换、硬链接、Lean 或 Git 操作。

计划文件 post-v31-compression-plan.json 固定 SHA 为 bca13be79d4107d3e5f2f25e35bdd01b7fda0d32ca15ef242b234368f60f104e。生成入口是 build_post_v31_compression_plan.py，默认以 v31 queue 的 started boundary 为 cutoff，因此当前活跃 v31 目录和别名全部排除；显式 --include-finished-v31 只有在该 v31 state 为 queue_finished 时才允许把已结束 v31 对象纳入。

本轮只读取 huan-prerequisites 与 huan-accepted 收据引用的成功 evidence，未扫描或解析历史失败 evidence。收据索引为477个路径，其中462个成功 evidence；evidence SHA 使用显式缓存。对象候选要求成功 compile record、同盘 identity 的全部别名都在本 run 的专属 .tools 根内、st_nlink 与枚举数一致，并由 Windows file attribute 判定当前未压缩。

把下限从旧的1MiB降到256KiB只扩大筛选范围，不改变512MiB保留门禁。当前结束对象路径28,056个、identity 4,647个；431个满足成功绑定、identity/link完整和未压缩条件，按最多256个 identity 选出256个。候选物理容量为 283,352,320 bytes（约270.2MiB），logical link bytes 为2,045,914,464。实际保证可回收量记为0；压缩比和释放量不作预测。历史 primary 审核执行实际释放605,614,336 bytes，只作参考，不能外推到本计划。

未来执行入口复制自 primary 审核版本：
reviews/huan-successful-objects-compression-v24-5e2d13bb/execute_primary_checked.py
其来源 SHA 为 8f15e408548878b9e0858b68ce060974079aa08afdeabbb291410b1381ca9cb6；本目录适配入口 execute_post_v31_compression.py SHA 见交接记录。它固定本计划 SHA，要求最新 queue 为 queue_finished、无本 run Lean/verifier 进程、重新枚举所有同 identity 别名并逐项核对 SHA/size/file ID/nlink/source/evidence，执行命令形状为单文件 compact.exe /C /Q。本轮不执行该入口。

终端容量口径按 v32 实际 root import closure 记录在 v32-terminal-root-closure.json：38个 jobs 的 union closure 为1,565个模块；两个 original-final roots 各自 closure 为1,535个模块，其中包含253 DataChunk、66 CoverageGroup、57 FirstParts、125 Membership 等。I11TerminalData.Group、单独 FirstPartsAudit、GroupAudit 等恢复候选不属于这两个实际 root closure，不能作为额外终端验收量叠加。
