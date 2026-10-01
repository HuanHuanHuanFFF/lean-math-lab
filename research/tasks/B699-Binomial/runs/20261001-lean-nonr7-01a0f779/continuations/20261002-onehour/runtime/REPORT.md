# 一小时续轮环境与独立核验

负责人runtime_review。预算16:04:43–17:04:43 UTC（上海00:04:43–01:04:43），17:00前冻源，硬停无延期。旧run源、verification、stop收据不可覆盖。本轮仅新continuation/runtime与reviews、新tools输出；不commit/push/切分支。

16:05:23实测可用物理2.330GiB、commit35.536GiB、CPU忙7.04%、D36.356GiB，无Lean/Lake/Python重任务。16:06全局锁free、上轮129 ownedPID已在原stop收据确认无余。本輪资源独立记录，旧值不作当前预算。

复用官方固定Lean4.33.1（compiler819816b2）、同9包源/必要缓存，零新下载、零整库build。新 `invoke-task.ps1` 复制已验旧控制源到独有目录；截止17:04:43、共享原compile.lock，新logs/temps/controller与source原字节snapshot。实际Native0x2030、2CPU/Idle、Lean单线程/async=false、单次≤300秒、D≥20GiB、运行物理余量≥900MiB。OutputRoot仅允许新轮路径，并置LEAN_PATH首位。

默认M3132、轻重源WS1536/启动物理3072/commit4096。tail同EC量级Consumers显式WS1792，仍3072启动。16:09自然恢复观测2.906GiB后，Leader批准**仅critical新HeightBundle首次单次**启动2560/WS1536，commit/900余量不变；2560−1536=1024MiB仍高于900。新484KiB/63体载荷未先验声称可用；必须记录实际peak，超守卫则分组减载，不再抬cap。

`seed-objects.ps1 -Owner tail/critical`只对旧success/exit0/source不变且源/object实际hash匹配者，精确复用project对象及现有sidecars到本人新对象根。旧tail17文件共9.4MB、critical36文件8.97MB，库缓存不复制。复用不计新编译/新数学进展；最终原题/root类型与公理必须另有真实验收。

当前数学接受与剩余原题范围沿用上轮13份独立reviews；本轮新结果另存新reviews，未用旧CI/作者PASS/缓存恢复替代。下一目标为旧legacy Consumers最终原题区域与critical高度→完整指数/两pilot接线；源码准备不等于接受。

## 实测调度与实际交付

首critical整bundle在25.434秒触发1536MiB树守卫（实际1539.44MiB），exit124，不接受。未抬cap；改4原成员小组/纯Nat入口。Leader批准同类小组2560启动/1536树/4096commit/900空闲，16组实际成功最高1523.79MiB。最终height/types接线独立接受；旧历史高度及冻结Base有精确复用绑定，新组与消费者为本轮实际编译，不能把46依赖全称新证明。完整原题指标新增0。

tail原题Consumers实际17.011秒/树1674.62MiB成功：∀n,i,j自然数，i≥131072，i<j≤n/2，n≥4096i→同一prime p≥i同时除两choose。没有额外A/EC/Gap假设。独立复核在reviews/original-common-region.md；与旧有效高度/j四次方/有限n区域的交叠和改善在coverage-comparison.md，不声称互不重叠。

16:33:40锁内控制开销profile：controller原工作集154.25MiB，峰155.45MiB（差分1.19MiB）；该既有工作集已包括在锁后空闲测量。已知IC首根树1636.25MiB且仅field_simp数学错误，据此给一次修订同闭包2816启动/1792树校准（1024余量超过900），不泛化新筛载荷。最终IC成功实际仍用了原3072启动/1792树，峰1698.08MiB，最低实测空闲1187.68MiB，校准授权没有被消耗。

固定115行纯Lean/Omega checker一次轻profile1800启动/768树/4096commit/900空闲，实测462.38MiB峰/4.297秒成功；其输入逐tuple与原纸面JSON一致，不做新prime扫描，不证明每行π(b)≤T。IC一般原题消费者保留这些计数输入。一般sieve-cardinality上界真实成功1083.76MiB；均有独立reviews。

64原96项log端点真实全部通过（最高1476.30MiB）；公式未换成浮点或其它精度，102项仅内部比较。独立记录critical-endpoints.md，尚不代表全55对距离。

16:49:28锁空闲、63本轮receipt-owned PID无存活，无进程被停止；fresh物理3.201GiB、D36.279GiB。新增下载为0，工具链及9包pins不变。后续resource只能采用现场新测。

## 证据修补和收尾

新入口给preflight拒绝保存planned命令、源snapshot与hash、资源及controller原字节；明确childStarted=false和Lean exit=null，不把没启动当编译失败。此前未留receipt的拒绝由执行者保存waiting证据，不伪造运行收据。新增controller及child精确StartUtc/PID字段便于截止身份核对。

check-owned-processes.ps1只核本续轮receipt拥有的进程身份，PID重用或不明身份不会停止。PowerShell ConvertFrom-Json会将ISO日期变DateTime；身份核对保留其UTC Kind，不能经本地化字符串重解析（否则产生8小时误差）。本轮停机收据与原轮分离，17:00冻结，17:04:43硬停。evidence-index.json提供全部实际receipt命令、源/对象/log/controller byte hash、资源门槛/峰值及停止原因；success仍需独立scope review才算数学接受。

全部P,b的完整finite inclusion-exclusion与prime product floor公式已独立接受（含empty P、empty product=1、b=0）。最后固定16 prime与115行消费者将唯一剩余前提明确为finiteSieveCertificates：每行完整2^16子集的signed floor sum≤T−15。前提本身未证，故1000..131071未增无条件覆盖。一般signed resonance与实际M64距离→25600v/512v接线也接受，但有限checker与actual alpha/beta boxes仍在终端type内，非全55对距离。

修补前有3个目录没有runtime receipt（critical Group001与tail两次重根）；执行者实际工具异常报告为RAM预检未启动，源码守卫确在Process.Start之前。索引单列missingReceiptDirectories，并转执行者waiting/exception证据，不补造argv/exit0。新入口补丁以后直接保存真实preflight_rejected收据。
