# Windows Lean 加载内存诊断

执行者 `runtime_review`，固定基线 `4d22485e20e509e33348b33e63f6902becbae414`。本记录不构成数学接受。采用 `diagnosing-bugs` 工作流：保留真实最小红信号，逐变量诊断，未增加物理工作集上限。

## 复現信号

`ImportProbe.lean` 只有固定 `Mathlib.NumberTheory.Chebyshev` import、两个声明查询和一个公理输出。M768/树WS1536在9.910秒、M1024/树WS1536在9.503秒均原生退出 `-1073740791`，stderr明确为 interpreter 的 `lean::memory_exception`。两次峰值WS1293.71/1285.69MiB、Job peak committed3597.73/3596.01MiB。真实argv分别含 `-M768` / `-M1024`。

较轻 Log 根的 M768/M1024 也在约1028MiB WS、2843MiB committed时产生同一异常；IC 的 Real.Basic小根M768在825.92MiB WS报该异常。stdout为空，不是Lean数学错误。Core/Omega证明则M768成功，树WS429.02MiB，公理仅 `propext, Quot.sound`。

## 可证伪假设与结果

1. **Job committed限制错误绑定WS1536，先于Lean阈值触发。** 看起来代码设 `0x2230`，但 Native readback 证明此限制没有生效：flags0、Job/Process限额0。本轮现有失败不能归因于该Job cap；该假设已被读回反证。
2. **M1024没有进入真实argv。** ProcessStartInfo使用ArgumentList，两个 receipt保存 `-M1024`，没有字符串拼接或shell重解释；现有证据不支持。
3. **固定导入解释器本身越过Lean内部阈值。** 当前stderr与读回一致，但没有把具体分配点或内部计数完全定位。没有独立证明哪项import导致峰值，不把一次失败泛化为所有Lean任务不可用。
4. **Native结构/统计布局错误。** 64位进程、Basic64/IO48/Extended144字节、JobMemory偏移120/PeakJob偏移136，布局与对应ABI一致。发现的实际错误是PowerShell嵌套值类型写入临时副本，非Native偏移错误。

## 最小修复

把BasicLimits单独构造后整体赋回 `ExtendedLimits.Basic`；仅设 `0x2030`（KillOnJobClose、Affinity、Priority），明确不设committed上限。修复后只读 Native读回确认flags0x2030、affinity3、priority64、Job/Process committed限额0，见 `job-readback-corrected.json`。每次实际receipt保存读回、controller SHA256和源原字节快照。

保留树WS1536MiB、开始可用物理≥2560MiB、运行余量900MiB、D≥20GiB、2逻辑CPU/低优先级、单锁、最多300秒和本轮硬截止。旧封装器根进程已有直接Idle/affinity设置和WS守卫；旧嵌套Job flags未生效的事实保留，不能把旧证据说成完整的Job限制。此前两次Int32峰值溢出为封装器错误，源/日志仍在忽略目录对应runId，未计接受。

## 后续边界

Chebyshev M1024仍失败后不再盲抬限；转缩依赖的实际N/IC前置。较轻根可在Leader批准的一次M1024探测下继续，实际结果另由核验记录接受。包装器修正不自动改变任何数学结果或已失败源码的接受状态。

## 14:24 后的证据更新（取代上述临时停升阈值决定）

固定历史 `20260910-unbounded-tail-9f6c2a17/notes/routes.md` 与 `verification/startup/minimal-retry.json` 提供具体同版本输入：Lean4.33.1、同9包pins，PrimeCounting最小import先M1024失败，后来 `-j1 -M3132` 真实exit0，实测WS1,089,904,640字节。该记录是历史证据，不能代替本轮结果；它提供了区分Lean内部阈值和物理WS的定向测试依据。

Leader据此批准全局一次较轻根M3132/WS1536；Native预检14:23:23物理空闲4.308GiB、commit余量39.541GiB、D36.407GiB。保持启动物理≥2560MiB、可用commit≥4096MiB、运行物理余量900MiB、WS1536，不改系统pagefile。

critical/WindowLog/Elementary的同源M1024在修后Native0x2030/commit0仍产生同解释器异常；M3132真实19.506秒exit0、树WS1352.60MiB，stderr空、两个根公理标准三项。由此接受“取消Job committed限制不足以解决内部阈值”；较轻Log根的内部阈值调整获得当前可重现绿色，物理预算没有增加。tail ICAlgebra M1024另有16.845秒exit0/WS932.14MiB；不能由小根成功推断重Chebyshev根成功。

成功后同量级根可按实测继续，仍不做整库冷构建。完整EC的M3132加载首次在WS1536监控下以1560.19MiB样本停止；Leader仅批准一次EC必需加载1792MiB，开始物理≥3072MiB/commit≥4096MiB、余量900MiB，其余保护相同。该单次实际结果由tail记录，不能在未见exit0与完整声明/公理前计为接受。

## 对象搜索路径修复

Lean按第一个已有 `research` / `Math` 前缀选对象目录，多个对象root不会逐文件fallback。runtime/objects中的Core probe曾shadow critical同前缀的Elementary对象，引发真实import失败。入口把本次OutputRoot放LEAN_PATH首位并记录effectiveLeanPath；跨root复用者先以成功源/object hash把完整对象sidecars复制到自己完整module路径，不能只改搜索路径。此修复不下载新缓存、不更改任何数学源码；最终消费者仍须fresh专项编译和公理审计。
