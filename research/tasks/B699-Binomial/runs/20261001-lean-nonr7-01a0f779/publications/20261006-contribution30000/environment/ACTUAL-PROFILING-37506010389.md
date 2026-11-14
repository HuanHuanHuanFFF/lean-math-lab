# 首五项诊断的实际环境结果

执行 run37506010389，固定HEAD a7b2bd2a6820c491cb2b429b4d7ef49451355d2a；普通证据在 D:/ResearchArtifacts/b699-contribution-validation-20261006/37506010389/。环境执行者仅读取原字节并聚合字段，没有重新运行Lean。完整结构化记录为 ACTUAL-PROFILING-37506010389.json，可由 record-profile-37506010389.py 复现。

五项全部实际执行 GNU coreutils timeout9.1；guard、只读entry/metrics挂载与已审脚本SHA均一致。Docker memory=memory-swap，实际13568或13824MiB，pids1024、networknone、rootfs只读、capdropALL、no-new-privileges、core0；每项源与managed内存/180s/15s killafter绑定。Host CPU affinity4，容器 cpu.max=max100000（没有有限CPU quota）；各阶段可用预算14.486..14.537GiB、磁盘80.038..80.052GiB是当时观测。

所有State为Stopped，OOMKilled=false，采样memory.events oom_kill=0；cleanup目标与自有容器64hex ID相同，全部cleanupConfirmed=true，没有用supervisor杀仍运行容器。遥测memory.peak是活跃期采样counter，不能当最终瞬时峰值；CPUusage同样仅采样末值，包含可信timer/metrics过程开销，不是完整单独Lean CPU时间。

| Probe | 编译退出 | 实际墙钟秒 | 观察memory.peak字节 | 观察CPUusage秒 |
|---|---:|---:|---:|---:|
| A151Prelude | 0 | 9.49 | 275496960 | 5.156 |
| A151Height001 | 0 | 7.48 | 282595328 | 5.361 |
| A151Height016 | 0 | 7.46 | 309886976 | 5.388 |
| AbovePrefix064 | 1 | 12.92 | 440115200 | 10.999 |
| AbovePrefix256 | 1 | 71.65 | 1645174784 | 71.520 |

A151三项有成功对象，没有完整范围literal、独立AX或标准kernel回放，因此不是all151或S接受。Above两项均出现早期unknown Math.B699.N11、X/d0缺失和将Nat值u3作rewrite参数的真实前端错误；256另触发400k heartbeat并缺最终d9。先修前端再测有效同算法，不把坏前缀的时间外推到正确CRT或整叶成本，也不把这些失败当物理OOM或180秒timeout。

范围第二轮独立请求绑定 repairs/20261007-ci7/PROBE-REQUEST.json 413ea094431b20fe7556ea37de5fae2c5cc43e142afa3a2e94dc4819892ac10c，仅选 MiddlePrelude、MiddleJoin001、MiddleJoin016、HighPrelude、HighFactorial。这些actual ID对应通用依赖前缀、原尾端1/16段join、High数值前的前缀、一次F=11085!内核等式。高度/gcd本轮不执行。现generic schema已支持此目录和ID，不改任何已审runner/helper或普通七叶合同。Source scope审读后由Leader激活。

这轮能够区分新的范围源前端、join扩展成本、High前缀与F_eq阶段；旧High137原因仍未知，不能用本轮其他五项OOM=false来替它归因。所有诊断结果始终proofAccepted=false；完整新三范围及七叶S仍需完整fresh900s编译、真正kernel与独立literal/Std3。
