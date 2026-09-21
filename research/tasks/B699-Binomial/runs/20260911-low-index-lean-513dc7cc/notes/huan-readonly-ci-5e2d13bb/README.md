# huan 只读 bundled CI 方案

日期：2026-09-11（Asia/Shanghai）。本说明对应两个新增文件：

- `.github/workflows/b699-huan-bundled.yml`
- `verification/runner/ci_bundled_rows.py`

当前代理接收路径为 `.tools/worktrees/b699-huan-5e2d13bb`；派工路径中曾出现名称差异，本次以实际存在的路径为准。

## 固定范围

准备时从本 run 的 `target-status.json` 读取到阶段 A 的 46..184 中，65..71 已在共享
worktree 中推进为完整接受；本说明记录的是 workflow 文件写入时的快照，当前待办从 72 开始。因此
workflow 将两个明确 JSON 分片固定为 `72..124` 与 `125..184`。driver 在每个 CI checkout 中重新核对 target-status：输入必须是
唯一的整数、位于 46..184、属于阶段 A 且当前没有
`full_original_statement_accepted=true`。任何过时分片会失败并保留状态，不会静默跳过已接受行。

每个 runner 只启动一个 driver；driver 在一个 runner 内串行执行：

1. 以 `generate_huan_row.py` 生成/核对原始行计划；
2. 以 `bundle_huan_row.py --block-size 64` 生成/核对文本 bundle；
3. 通过现有 `verify_incremental.py`，以 `-j1`、`-M3072` 的固定底层 verifier 实际编译并审计；Linux CI 不调用依赖 Windows 资源 API 的 `verify_huan.py`。
4. 对每行继续处理，写机器可读 `state.json`，失败项保留；
5. 仅在完整原题 `∀ n,j` 根存在、根对象和日志哈希一致、根公理输出属于
   `[propext, Classical.choice, Quot.sound]` 时，将该行记为 raw-evidence accepted。

driver 不写 `target-status.json`，不改变 `verify.py`、`verify_repo_relative.py`、pins、manifest 或
现有 workflow，也不执行 commit、push、dispatch、自提交、自改分支或模型修复。

## 共享对象与资源边界

`shared` job 先以当前 checkout 的 `github.sha` 重编译 SharedEnvironment 的 26 源闭包，再使用已有
`cache_bundle.py` 导出；导出器会逐项核对源、对象、日志、pins、manifest 和 toolchain，并强制 100 MiB
共享包上限。两个 row runner 下载同一个只读包后再次由 `cache_bundle.py import` 校验，再把 shared
evidence 交给 `verify_incremental.py --reuse`。driver 自身还检查 26 个 source records、9 个干净 pin、
对象/日志 SHA-256 和 std3 审计。

每个 runner 使用 `ubuntu-22.04`、固定 action SHA、固定 `leanprover/lean4:v4.33.1`，每行
`--memory-mb 3072 --timeout 900 --block-size 64`。driver 在 runner 开始、每行前后记录
`memory.max`、`memory.current`、`cpu.max`、`/proc/meminfo`、磁盘和有限进程摘要；固定 verifier 本身没有 Linux 整棵进程树峰值字段，driver 额外对每个生成/打包/verify 子进程轮询 `/proc`，记录其后代进程树 RSS 峰值。
每个分片的源码、计划、当前行对象、当前行日志与状态以目录 artifact 传输，且每行完成后立即形成独立 `rows/rowNNN/` 目录、`row-state.json` 和 checkpoint 状态；driver 强制分片 512 MiB、单文件 64 MiB
上限；没有把全部历史未压缩输出拼入一个无界 ZIP。artifact 保留 3 天，数学接受仍由原始 Lean evidence 决定，artifact 上传状态不提升证据等级。
这些逐行目录能让正常收尾或可取消收尾恢复已完成行的 source/plan/evidence/log/object；GitHub job 达到硬 timeout 时仍可能来不及执行最终 upload，因此硬 timeout 不是 artifact 已上传的证明。

## 触发、取消与未执行事项

workflow 只监听精确的 `huan/b699-low-index-lean-20260911-5e2d13bb` 分支，并且只在 workflow 或
driver 文件变化时由 push 注册/触发；保留 `workflow_dispatch` 作为可见后续入口。`concurrency` 使用
分支组并设置 `cancel-in-progress: false`，新提交会排队保留已投入的长批次；需要停止时由操作员取消具体 run。
本次只准备文件，没有调用 GitHub API、dispatch、push 或上传 artifact；因此尚无 CI 实际验收结果。

## 本地静态检查

本地只做了不启动 Lean、不下载依赖的检查：

- `ci_bundled_rows.py --self-test`：JSON 数组、重复/非法输入和完整原题字符串门禁；
- `ci_bundled_rows.py --validate-only` 的正/负输入路径：拒绝越界、重复、非整数和已接受指标；
- Python 语法编译；
- workflow 文本检查：只读 `contents` 权限、固定 checkout、固定 action SHA、`-j1`/`3072`、64 源 bundle、
  两个串行 job、artifact 限额、无 push/API/自提交命令（`workflow_dispatch` 仅注册入口）；
- driver 的 `/proc` 子进程树峰值字段、逐行 checkpoint 和 hard-timeout 限制均只做静态检查；
- 工作树范围检查：新增内容仅为本说明、目标 driver 与目标 workflow。

这些检查不等价于 Linux runner 的 Lean 通过。实际 CI 仍须逐行确认原题根、完整源闭包、对象/日志哈希、
9 个 pins、std3 公理审计和 artifact 可恢复性；CI 绿灯本身也不能替代这些逐项证据。
