# 本轮固定 Lean 环境与资源入口

执行者与环境复核者：`runtime_review`。来源基线 `4d22485e20e509e33348b33e63f6902becbae414`。本轮硬截止 `2026-10-01T15:42:09Z`，不延期。

## 实测与恢复

- 13:46:37 UTC 原生 `GlobalMemoryStatusEx`/`GetSystemTimes` 预检：物理内存 15.694 GiB、可用 1.652 GiB、16 逻辑 CPU、500ms CPU 忙 39.00%、D 盘可用 42.002 GiB；无可见 Lean/Lake/Python 重任务。
- 当前 `.tools/elan/toolchains` 实际为空。全 `.tools`、`.lake` 与旧 Bounty checkout 只找到 4 个 `lakefile.olean`，没有可复用的 Mathlib/研究对象；不能据历史日志声称当前对象存在。
- 仓库 9 个真实依赖源的实际 Git SHA 与 `lake-manifest.json` 完全匹配，未升级依赖。
- 官方 Lean 4.33.1 Windows ZIP 842,456,015 字节；官方 SHA256 `c39360867edfff6b090f20c16e18581c969ce839b71e813d76022ec04ec73e4d`。先读取限定 2 MiB ZIP 目录元数据，后 65.032 秒下载成功。初次最小解包漏了 `.ir.sig`，产生 `missing data file` 的真实失败记录；定向补齐签名后 Cache 引导模块编译成功。必需工具链实际 2,504,110,388 字节；ZIP 与工具链合计 3.117 GiB。
- Chebyshev 的 2742 份缓存仅下载其真实闭包（压缩 170,165,738 字节），解包实际 exit 0。六个额外 focused import 只新增 7 个缓存模块；包含两路提交的所有首批 Mathlib imports。
- 二进制、压缩包、缓存、对象和全日志仅在 `.tools/b699-lean-20261001-01a0f779/runtime/`。源目录通过 junction 复用；缓存输出独有，不修改原包源码和 pins。

## 调用

仓库根目录启动新 PowerShell 进程：

```powershell
pwsh -NoProfile -File research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/runtime/invoke-task.ps1 `
  -Source research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/tail/ICAlgebra.lean `
  -OutputRoot .tools/b699-lean-20261001-01a0f779/tail/objects `
  -Label tail-ic -TimeoutSeconds 300 -MemoryMiB 1024 `
  -TreeMemoryMiB 1536 -MinimumAvailableMiB 2560 -PhysicalReserveMiB 900
```

入口以 FileStream 独占 `runtime/compile.lock`，Lean `-j1 -M768 -DElab.async=false`，低优先级且最多 2 逻辑 CPU。Job Object 包含自有子进程并关闭时终止；单次 300 秒与全轮硬截止共同约束。参数 `-Mode Command -Executable ... -Arguments @(...)` 支持同一锁内的下载/解包/旧验证器；不启动全 Mathlib 源构建。

最初进程树工作集 900 MiB、系统余量 650 MiB。在实际单 Chebyshev import（980.73 MiB）和较轻 WindowLog 根（1039.62 MiB）均被守卫 exit 124 后，Leader 批准两路默认改为：`-TreeMemoryMiB 1536 -MinimumAvailableMiB 2560 -PhysicalReserveMiB 900`，Lean `-M768` 保持。启动前空闲至少 2.5 GiB，运行中留 900 MiB，D 盘至少 20 GiB。这是一次根据实际映射工作集的调整；达到新限额不继续盲目提高。内存峰值使用 `peakTreeWorkingSetMiB`；committed 值包含映射/虚拟负担，不能代替物理工作集。

随后同固定源的M768/M1024加载失败与Native读回被独立诊断，见 `DIAGNOSTIC.md`。依据已存在的同版本M3132/低WS成功记录，Leader批准一次小根M3132/WS1536且commit空闲≥4GiB；该Log根当前真实exit0/WS1352.60MiB，因而同量级Log/N根可使用 `-MemoryMiB 3132 -MinimumAvailableCommitMiB 4096`，不提高实际物理预算。完整EC因一次WS1536略超，仅获单次WS1792校准，启动物理要求3072MiB；其他根保持1536。较小ICAlgebra在M1024已真实成功，不必升到3132。所有实际参数、原生limits、源/入口snapshot和日志hash以每次receipt为准。

原生Job控制使用0x2030（KillOnClose、Affinity、Idle），明确不把WS预算设成committed上限；每次读回必须一致，否则不启动。旧嵌套Basic字段赋值未真正改变Job flags的封装器缺陷与两次Int32溢出均保留为历史失败/限制，不追溯冒称旧记录已拥有后来控制。

对象依模块完整路径保存在所指定输出根；环境 JSON 的 `leanPath` 包含共享 `runtime/objects`、`tail/objects`、`critical/objects` 及 9 包定向缓存。Cache 引导编译可通过 `-SourceRoot .lake/packages/mathlib` 使模块路径从包根起算。

每次记录固定源 SHA256、实际参数、stdout/stderr、exit、墙钟、根/树工作集峰值、树 committed 峰值、D 盘与系统内存前后、对象 SHA256。复用只允许固定源、对象哈希与真实成功 receipt 一致。成功编译与内存缓存恢复不单独构成原题接受；还须公开声明、传递公理与消费者专项核验。

可复现源：`resources.ps1`、`invoke-task.ps1`、`toolchain-archive.py`、`initialize-environment.ps1`、`bootstrap-cache.ps1`。精简依赖收据见 `environment-receipt.json`；全运行收据在忽略目录，结束时由本目录的证据索引绑定哈希。

`restore-cache.ps1`只对指定真实import闭包恢复固定缓存；`inspect-job.ps1`读回实际Job布局/配置，`summarize-evidence.ps1`更新 `evidence-index.json` 的命令、结果与完整日志hash绑定。索引中的success包括资源下载/导入/编译，不能按数量解释原题进展；技术接受分别由本run/reviews与两执行者专项acceptance登记。
