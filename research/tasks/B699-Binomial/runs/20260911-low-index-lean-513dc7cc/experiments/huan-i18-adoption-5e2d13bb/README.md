# i18 修正采用副本（Windows）

状态：有界采用与轻量验证完成；未运行整包素数块、Lean 或发布。

本副本的唯一写入范围是：
research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/experiments/huan-i18-adoption-5e2d13bb/

来源与采用边界：
- 原材料根为 D:/CodingProject/Math/.tools/b699-intake-20260911-5e2d13bb/materials/i18/B699-i18-content-Pade-closure-20260911。
- 第二份独立审读为 reviews/huan-i18-correction-second-5e2d13bb/REPORT.md，SHA-256 为 8c4eef2c6bafb8a306611cf52696fad17d19928b23c4f524ce72370be4ca3def。
- 第一审读的小型修正证书和检查器只复制到 support/；大型 PDF、嵌套压缩包和整包原始载荷没有复制。
- SOURCE_MAP_ADOPTED.json 是本副本新生成的来源映射；没有改写旧 MANIFEST.json 或旧验收记录。

LF 修正补丁：
- corrected-theta-lf.patch 的 SHA-256 为 8a436452bdf9f80cab829ced878cc64c67be429a1d250181835d12ae07e9d892。
- 在本副本内 apply --check 与实际 apply 均返回 0；第二审记录的原 CRLF 补丁 apply --check 返回 1。
- content_bounds.py、CONTENT_PROOF.md、REPORT.md 和 CORRECTED_THETA_TAIL.md 与第二审 patch-application-lf 副本逐字一致。check_content_bounds.py 在 LF 结果上只增加了下述 resource 元数据 shim。

Windows resource 诊断与采用：
- 原 check_content_bounds.py 的 resource 使用点只有第 10 行 import resource，以及第 99 行以 getrusage(RUSAGE_SELF).ru_maxrss 写 peak_rss_kib。
- 采用副本移除这两个直接依赖，改为 code/resource_compat.py 的 peak_rss_kib()。POSIX 仍调用 resource；Windows 用 PSAPI PeakWorkingSetSize 从字节换算 KiB；无法读取时返回 None。
- 该值只写入最终运行元数据，不参与 verify_tail、verify_finite、primes_weights 或任何数学精度和判定。resource_compat.log 的直接检查为 PASS_RESOURCE_METADATA_SHIM，当前值 13576 KiB。

轻量检查：
- AST 语法检查：4 个 Python 文件 PASS_AST。
- C:/Users/幻/.cache/codex-runtimes/codex-primary-runtime/dependencies/python/python.exe -B code/content_bounds.py tail：退出码 0；三行保留项为 106、95、78。生成输出与原始尾部证书语义相同；原始快照 SHA-256 为 b04b3f1f3051da6e01feb53a47e7e155e5aa22a527cf89308ca9a4bcb3147b46，生成 LF 输出 SHA-256 为 9ed198b242d1b7d4f45cb9f73a939bfaac24f9474497c850c8717ad0f0d4fbe0。
- 直接调用修正后的 verify_tail：PASS_PATCHED_VERIFY_TAIL，三行合计 279 项，转折点 T=1000000000；精确分数在 verification/patched_verify_tail.log。
- support/check_corrected_theta.py 独立读取原始尾部快照并返回 PASS_CORRECTED_ANALYTIC_BRIDGE_AND_INFINITE_TAILS，106/95/78 项，4 个错误变体均拒绝。

未覆盖与证据边界：
- 没有重跑 75,000,000 素数筛、原有限素数块、39,238,326 区间单元、Padé 下游、指数块、CRT、末端证书或 Lean。
- 因此本目录证明的是：修正层 LF 补丁在 Windows 上可采用，resource 入口可运行，三行双段尾界和 279 项有界算术检查通过。它不是整包 i18/Lean 验收，也不是 B699 完整解答。

详细文件哈希和命令入口见 SOURCE_MAP_ADOPTED.json 及 verification/ 下日志。
