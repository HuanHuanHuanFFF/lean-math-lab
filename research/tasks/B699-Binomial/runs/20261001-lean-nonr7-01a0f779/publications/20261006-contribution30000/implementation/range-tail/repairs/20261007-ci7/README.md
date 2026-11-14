# CI7 中高区间固定范围接续

Owner：`/root/b699_contribution_environment`，GPT-6.1 Sol / xhigh，复杂既定目标，2026-10-07 接管。旧 range-tail actor 已退出 live tree，Leader 授予本目录及必要生成器修订的独占写入范围。原 frozen artifacts、数学源码与历史签件保留；独立核验者为 `/root/b699_contribution_scope`。没有给定总时限，不设默认收工窗口；按实际失败与下一可执行测试记录检查点。

锁定目标为三个完整区间 `185..322`、`323..999`、`1000..30000`，对所有合法自然数 n、i、j 保留 `i<j≤n/2`，同一实际素数 `p≥i`（含等号）整除两个完整的 `n.choose i`、`n.choose j`。n、j 不设有限上界。不能删除失败指标、改成有限 n/height、只检查最大素因子，或引入 oracle、native_decide、Lean.ofReduceBool、新 axioms 或占位证明。

本次预期原题前沿变化为零：恢复已知区间证明的自包含移植，不宣称新发现或扩大已接受指标。静态修复与源码门不是数学接受。

固定失败输入为 CI7 `37488807936`；普通原字节在 `D:/ResearchArtifacts/b699-contribution-validation-20261006/37488807936/`。SOURCE-REPAIRS.json 绑定 INPUT-BINDING、三个冻结源与原 primeChain/Core.lean。RESOURCE-PRECHECK.json 保存当前观测：GlobalMemoryStatusEx 可用约2.48GB、D余约27.07GB、无Lean/Lake/Leantar任务；native Windows 的任务 cgroup/CPU quota 不可得。native Lean 停用，仅静态读写与 Python 源码门。

两份 Middle 从同一原 Core 完整定义补回 PrimeChain.trans/near_top，原切片遗漏 field syntax 依赖。三源 join_sound 都将 hb 的等式与尾部证书拆开，再 subst p；High 的相同潜在错误亦修正。数据表、解码函数、数值输入和最终消费者未改。

新副本为 Middle185_322.lean、Middle323_999.lean、High1000_30000.lean，共899007B。固定官方 source-only C019/C020/C021、尺寸与LF门实际0error/0review，见 SOURCE-POLICY.json；不包含身份、签名与奖励。repair_sources.py 可复现且拒绝旧源SHA漂移。新源尚未 Lean 编译、内核回放或独立 literal/axiom 接受。

CI7-DIAGNOSTIC.json 保留完整解析错误、argv、日志SHA、清理收据与预算。Middle 两个 complete_chain 的整表 decide+kernel 达到 kernel memory 限制；Middle323 的 hr4 一次128行，在i842处达到本声明1M heartbeat，继而 hr4/heightChecked 缺失。不能单纯升限或删除失败行。

High 退出137、日志截在warning中，无完整error；cleanupConfirmed=true、guard已核实际硬cap。原证据没有 OOMKilled/memory.events/peak，原因仍未知，不称超时或物理OOM。源已含大Nat常量F和一次 F_eq=11085!，primeCheck gcd仅用F；每节点重算factorial不是当前源码支持的新诊断。

下一步固定Linux小探针分离通用前缀、1/16/128段join、单高度/16行、High前缀/sieve、F_eq/1个gcd。仅诊断用独立180秒请求，不替代完整900秒验收。若join为热点，比较明确首尾的小组proof-carrying链，避免整体解码7292/687段；若高度组累计开销为热点，比较16行组。负载修订先测代表峰值，保每源≤200声明/1MiB、整包4MiB，不能把方案当已修好。

独立环境 profiling runner 已交 scope 审读，使用同固定 bootstrap、官方 sandbox/guard/硬cap，只对自有UUID取实际State与采样peak/CPU，清理确认后下一探针，所有结果 proofAccepted=false。触发、最终freeze与artifact替换归Leader。完整接受仍需三个新完整源fresh exit0、真正kernel、独立原题literal/Std3，后接七叶完整S；不能省略失败叶。

2026-10-07 后续检查点：上文三个899007B副本是历史前端修复输入，最终采用源以 `full-factorial/FINAL3-ADOPTION.json` 为准。两份 Middle 使用一次普通 kernel 核验的4472!常量、耗尽返回false的结构fuel gcd、每段显式端点与小组proof-carrying链；保留7292/687段、116667/10992节点、138/677高度行和最终消费者。High采用 `numeric/High1000_30000.lean`，只删除未被消费者引用的202B匿名example，全部其他字段保持原样。三源1143564B，固定官方 source-only 门0hard/0review；独立核验者已对完整三源做静态绑定。

实际 run37522782892 的同尾段 factorial 载体3.092秒编译0、采样峰106639360B；旧plain检查与旧product也各自通过，因此旧组合载体OOM的具体原因仍未锁定。这里只支持采用改变后的载体做完整复验，不代表完整链已经通过。普通证据聚合在 environment/ACTUAL-PROFILING-37522782892.json；真实容器硬限制、GNU timer、源/对象绑定与自有清理均已核。三份完整新源的 Lean、标准 kernel、独立 literal/Std3及完整S仍全部 pending。共享硬截止 UTC2026-10-06T23:40:25Z，无native Windows Lean。
