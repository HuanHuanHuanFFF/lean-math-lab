# verify_huan 协作暂停风险评估

本目录只保存只读分析、默认 dry-run helper 和模拟测试。本轮没有暂停、恢复、结束或杀死任何进程，也没有修改 runner、证据、源文件、索引或 Git。

## 现场观察

在 2026-09-11T10:43:40.5122611Z 的只读快照中，唯一匹配到的当前严格核验是：

- verifier PID 31740，创建时间 2026/9/11 18:20:11；
- 命令为 verify_huan.py，root 是 Row035J2/Original.lean，memory 2048，timeout 900；
- 父 PID 32216 是 probe_huan_historical.py；
- 子 PID 25256 是 lean.exe，正在编译 Row035J2/Block114.lean；
- 上层祖先包含 Codex 的 pwsh/codex/ChatGPT 进程。

原始 verifier 的当前 probe state 仍是 running。日志显示 Block114 已完成并随后进入 Block115..119，过程连续进行。相邻块之间的空窗只有约 14ms，不能依赖轮询稳定捕获 child-free 边界。

## 固定 verifier 的实际行为

verify_huan.py 调用固定 verify.py 的 run_logged。每个 Lean 编译使用 subprocess.run、-j1、-M2048 和每命令 900 秒 timeout，stdout=PIPE，父 Python 负责等候并在子进程返回后写 public/raw log 和 compile record。最终 evidence 只在 verify_huan.py 的 finally 写入；probe 的 state 也只在外层 finally 收尾。

当前 Windows 资源适配 huan_resources.py 已在每次 run_logged 周围以约 0.2 秒轮询 Python verifier 及其后代，并记录 windows_process_tree.peak_tree_working_set_bytes。因当前不是 Linux runner，不需要另造 /proc 采样器。该采样是 working-set 的观测峰值，不等同于每个瞬间的 commit 峰值，也不追补已经错过的极短尖峰。

## 暂停可行性和结论

建议拒绝本轮实际暂停，继续等待 Row035J2 串行核验结束。理由是：

1. 当前存在 Lean 子进程，用户要求的 child-free 安全边界尚未满足。暂停 Python 不能暂停 Lean；它不会释放 Lean 的 working set，重核验仍会与 M2048 子进程争用内存。
2. 让 Lean 自然结束、只暂停 Python 父进程也不安全。stdout 通过 PIPE 返回给被暂停的父进程，Lean 输出可能填满管道；父进程暂停后无法读取。若父进程恢复晚于 900 秒边界，固定 timeout 可能把这一编译记录成 timed_out，破坏成功证据。
3. 空窗很短。若在无 child 时才暂停，5 分钟内可节省的资源极少；暂停本身也保留进程 working set，不能把 M2048 的内存让给其他重核验。
4. 当前命令用了 --repo .，命令行没有包含这个 worktree 的绝对路径。严格 helper 因此拒绝当前 PID；不能用相同脚本名和 Row035J2 字符串替代 repo identity。
5. 不能暂停其父级 probe、Codex、其他 agent 或任何 Lean 进程。不能用 taskkill、TerminateProcess 或树杀进程作为恢复手段。

如果将来 primary 明确选择测试一个暂停窗口，至少要满足：两次独立快照唯一匹配同一 PID、创建时间和完整命令 SHA 一致；命令行含绝对 repo token 和精确 Row035J2/Original.lean；目标无任何 descendant；单独 watchdog 先登记同一身份并保证最多 300 秒后只恢复该 PID；暂停与恢复都必须 finally；恢复后再验证命令行、创建时间和无 descendant。任何条件失败都应继续等待，不能改写 evidence 或复用失败 report。

## helper 和模拟测试

cooperative_pause_helper.py 的 ctypes NtSuspendProcess/NtResumeProcess 仅作为审查用 API 草图，REAL_CONTROL_ENABLED=false，--apply 永远拒绝。默认路径只读获取进程快照、验证唯一目标、检查 child-free 边界并打印计划。它从不暂停、恢复、结束或杀死进程。

test_cooperative_pause_helper.py 通过纯内存记录模拟：

- 唯一精确命令和创建身份；
- 存活 Lean 子进程拒绝；
- 重复目标拒绝；
- PID 复用或创建时间变化拒绝；
- 当前这种相对 --repo 命令拒绝；
- dry-run 不调用控制函数。

process-observation.json 保存本次有限只读快照。static-checks.json 记录 Python AST、模拟测试和 dry-run 默认禁用实际控制的结果。