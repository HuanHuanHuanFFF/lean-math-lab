# CI7 固定 Linux 小探针

这是独立诊断入口，不是七叶贡献、S 类型、Std3 或平台接受记录。常规 linux-platform-replay.py 与 VERIFICATION-REQUEST.json 保留原协议；本入口在任意 probe exit0 时也始终 proofAccepted=false。

Leader 将 linux-profiling-workflow.yml 放入 .github/workflows/，核对 PROFILING-RUNNER-FREEZE.json 及具名独立审读签件，再激活 PROFILING-REQUEST.json。只有该分支上此请求文件变更会触发。诊断与常规验收共享串行 concurrency group，但 work/evidence 目录分别独立。环境任务没有 commit/push/触发。请求目前 disabled；impl 重冻 heartbeat 后再绑定当前 probe manifest SHA。初轮明确选择 A151Prelude、Height001、Height016、AbovePrefix064、AbovePrefix256；Below 留下一轮，所有选择须保持冻结清单顺序。

入口复用已 hash-bound 审读的常规 runner：从其 main 的实际 admission 到官方 sandbox SHA gate 之间取精确连续 AST statements，不调用普通七叶循环，也不更改七叶合同。固定 contribution/tasks/base+patch/Lean release digest、九 package pins、源码门、focused cache 与官方 workspace 验证均执行原步骤。所有真实脚本、diff、源/对象/退出码/日志与版本收据保留。

每 probe 180 秒、CLI heartbeat400000/j1，source 同样固定400000；内存实际预算留1GiB且不超过16GiB，保持原 guard/只读/networknone/pids1024/capdrop/noswap/core0。RO trusted entry 在 guard 后先核 `/usr/bin/timeout` 可执行、版本为 GNU coreutils，再用独立 `timeout --kill-after=15 180` 包真正 Lean。版本或可执行性失败即125环境故障，不运行数学源码；真实版本在 stdout 记录。此门实际 Linux 验证尚待 CI，未在 Windows 执行该二进制。

外层官方 Docker client timeout 仍保留。Host 另有 monotonic180+15 deadline，新增 Docker 查询/指标均受剩余时间及3秒短 timeout；正常退出后的state/cleanup也有短 timeout。容器暂不--rm，以保存 OOMKilled、Running、ExitCode。若client退出时container仍Running，先记录状态，只停止已核自有64hex ID，再取Stopped状态，明确 supervisorKilled，不从137推OOM。

身份来自 fresh nonce 名的检查或同一次可信Docker launch写入的cidfile。cidfile在所有guest可写mount之外，prelaunch拒绝已存，内容必须64hex且不能与已核ID冲突。finally 即使遥测/query故障也尝试kill/rm已验证缓存ID；没有可靠ID时不强杀未验证name，不能确认absence就fail-stop。确认cleanup后才下一probe。SIGTERM进入同一finally，最多结束自己的child及UUID容器。

运行中采集同cgroup的memory.current、memory.peak、memory.events、cpu.stat与pids.current；保存采样与退出State。peak是已观察到的counter，可能缺最后一瞬，故 memoryPeakIsFinal=false；OOMKilled仅来自真实State，不由退出码推断。全stdout+stderr合并留log，profiler时间与完整JSON error另外可解析。诊断成功对象也不作内核或数学接受。

固定 profiler 来源为 Lean819816 的 src/Lean/Util/Profile.lean，2075B、SHA256 bb6f45b4c357fa61c9bc647e4129343489af018505cdbc2422a92081053c890f，Git blob df21629886ce8b69c8ffea99b9ab3ea4bdb27a71；已与官方树精确比对。仅使用已注册 profiler=true、threshold100ms，不用未核对trace选项。

test-linux-profiling.py 的纯AST/fake-process/fake-Docker fixture 已覆盖：原bootstrap边界、原保护、RO timer门、0/真实OOM137/clienttimeout137、telemetry故障仍清verifiedID、cleanup失败拒收、任何结果不是S接受。没有执行Lean、Docker或CI。真实wall/guard/timer/state/cgroup/cleanup仍需独立intake核对。
