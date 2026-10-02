# 临界指标执行记录

执行者 `/root/critical_verify`；固定输入 `4d22485e20e509e33348b33e63f6902becbae414`；本轮上海 21:42:09 至 23:42:09 硬停，不延期。独占本目录及 `.tools/b699-lean-20261001-01a0f779/critical/`，历史源不改。

## 目标和依赖

原题合法反例（i=28/31/34，全部 j，n>4096）→ 完整实际 binomial 指数加 i 指数的两个 M64 窗口 → 已验高度 n<2^15360 给完整指数≤15359 → 非零 L 及 |L|<128/n → log2/3/5 真实距离 pilot → 全端点和证书 → 原题消费者。保留 p=i 和全部实际指数。

首个可证伪检查：修订窗口包五源/28根及实际 log 包三源/9根真实编译、类型和公理列表齐全。成功只解锁数值距离消费者；在最后完整反例排除前，新增完整原题指标为0，R7不动。n、j 的原题消费者仍未闭合。

当前：源已复制，内部 import 指向本轮副本；固定 mathlib 缺失的 Mathlib.Tactic.Omega 改为工具链实际 Lean.Elab.Tactic.Omega。尚未编译；等待 runtime_review 独占入口。

## 来源

历史接续：`20260911-low-index-lean-513dc7cc/notes/huan-final-handoff-20260912.md`；M64 与实际 log 对应实验中的源码、HANDOFF/REPORT。逐文件原 SHA 和修订 SHA 见 `source-map.json`。采用高度层只证明 noCommon→n<2^15360，不将其当成三个完整指标。

## 13:55 UTC 准备检查点

- `WindowConsumers.lean` 先连22根M64基础链与9根实际log层；`Consumers.lean` 再连高度，二者均公开检查三个原题noCommon类型，p≥i以gcd素因子形式展开。
- `BaseAudit.lean` / `HeightAudit.lean` 组合typed入口与公理打印；`build-root.ps1`仅经统一控制器编译，且只复用源hash、对象hash、success/exit0收据全匹配的对象；`audit-build.ps1`要求全部输出/源码/对象一致并拒绝缺根及非标准公理。
- `ZeroBoundaryLogBoxes/Bridge.lean`已将realRatio改为noncomputable；`ZeroBoundaryLogSeparation/Basic.lean`已更正Omega导入。尚未运行。
- 已准备 `Endpoints.lean`、16个四端点数据块与 `AllEndpoints.lean`：仍是未编译候选，pilot通过后再逐块核验原96项端点。
- 冻结55对certificate位于旧run的 `notes/zero-boundary/verification/20260909T090620Z/certificate.json`（297947字节）；终端候选为092400Z目录（2220721字节）。本轮只检查结构与位置，未复跑完整checker、CF或枚举。
- 实际原题完整指标增量仍0。环境恢复中；cap按当前资源降低到768MiB，process tree≤900MiB，tail主线优先。环境不确定性不记为数学失败。

## 14:00 UTC 静态拓扑计划

`base-plan.json` 列出首根 BaseAudit 的26份project源码：15份已有底层、11份本轮源码与审计/消费者，不含CriticalPadeHeight。该计划仅读取imports，无Lean执行。后续按基础闭环→高度闭环→pilot真实距离→四端点块递进；两pilot实际窗口消费者仍为未编译候选。

## 14:05 UTC 首次入口调用

WindowLog/Actual 根驱动在首源 Elementary 启动Lean之前被统一入口的 OutputRoot 边界检查拒绝。目标对象目录是本轮 `.tools/.../critical/objects`，已向runtime_review请求修复规范化前缀比较；不改共享控制器。记录：`.tools/.../critical/window-driver.log`、`20261001T140459773Z-build.json`。这是控制器路径检查失败，非源码或数学失败；未生成对象、没有接受根。

## 14:07 UTC 真实导入资源检查

runtime已修OutputRoot：实际原因是绝对路径被Join-Path二次拼接，而非此前怀疑的单纯斜杠前缀比较。新路径检查支持绝对输出目录。

WindowLog/Elementary在固定Lean中真实启动，8.141秒后被900MiB树working-set预算停止（exit124，峰值1090117632 bytes），stdout/stderr均0。完整收据：`runtime/logs/20261001T140700210Z-critical-Elementary/receipt.json`（位于本轮.tools）；驱动记录 `20261001T140659634Z-build.json`。没有源码/证明错误输出，没有对象接受，不据此判为数学失败。

已告知runtime_review/Leader；当前可用物理内存3.303GiB、D36.415GiB是runtime新观察。等待受控限额决定，不在同限额下盲重试。47项fixed imports及IntervalCases的定向缓存已补齐，包pins未改。

## 14:13 UTC 限制分层诊断

| 根与变化 | 实际收据 | 结果 |
|---|---|---|
| Elementary，移除FieldSimp/Ring直接导入，树1536/M768 | `20261001T141026444Z-critical-elementary-1536` | 8.327s，exit -1073740791，WS1027.94MiB；stderr为interpreter memory_exception；未产生证明输出 |
| Definitions，仅Rat.BigOperators+Nat.Log、树1536/M768 | `20261001T141145529Z-critical-Definitions` | 9.533s，同memory_exception，WS789.23MiB；证明未执行完 |
| Elementary，Leader批准一次M1024、树1536 | `20261001T141342248Z-critical-elementary-M1024` | 7.774s，同memory_exception，WS1027.93MiB；几乎相同峰值 |

全部收据位于本轮.tools/runtime/logs。提高M后的相同峰值支持检查Job committed限制是否抢先触发，但尚未确定因果。runtime负责分离控制器与Lean限制；当前没有数学/API失败诊断，不提高M继续盲试。

已准备 `Resonance.lean` 与三个有符号检查pilot：由精确有理幂恒等式恢复log系数偏移，保留r/s正负符号，完整x/y≤15359后吸收±6仍在2^53预算内。来源是旧finite-reuse报告第3–4节，非新研究路线。全部仍未编译，不计接受。

## 14:31 UTC 第一个接受闭环

`WindowLog/{Elementary,Window,Actual}.lean` 三源、9个公开根已真实编译exit0，并以拒绝式公理审计exit0接受：`verification/20261001T142900Z-window/acceptance.json`。准确声明和全部传递公理保存在同目录完整stdout；9根全部仅标准三项 `propext, Classical.choice, Quot.sound`。源码、对象、日志、固定toolchain和manifest均绑定hash。原日志/收据逐字节副本及对应关系见log-byte-map。

实际声明：自然数n,a,b,A,C,p,q,x,y，n>4096、a,b<34、a≠b、A,C≥1、p,q素数，且 n=A*p^x+a=C*q^y+b，则展开的 L=log A−log C+x log p−y log q 满足0<|L|、|L|≤33/(n−33)、|L|<128/n。x,y是分解给出的完整自然指数，允许0；没有额外L≠0或局部上界假设。

运行恢复后M3132仅为Lean阈值；实际树WS保持1536MiB保护、物理启动≥2560MiB/保留900MiB、可用commit≥4096MiB、2CPU/单线程/Idle。最大观察WS1352.6MiB。首根source SHA `d23cd5fbf4a639a144bc7fddf42e81ebfe7421290c1c7183498e60da659d97d0`，对象SHA `3055c99d9b0002227c6095510be6a19d88c77d98cf57e434d7572efdae50416d`。

另修运行路径层：多objects根的research前缀shadow导致后继Window找错对象目录；runtime将当前OutputRoot置LEAN_PATH首位，driver复用对象时精确同步其侧文件并写hash。审计首次绝对路径拼接失败后已修复，保留失败收据；该错误未改证明源码。

实际前沿变化：解除实际窗口→非零log与严格局部上界的形式化接口缺口；noCommon→这些窗口、高度、全部距离表和终端反例排除仍待接通。新增完整原题指标0。下一根BaseAudit（26份project源）；验证与记录继续，不在helper处停止。

## 14:48 UTC 实际三个反例消费者闭环

`BaseAudit.lean` 的26份project源码全部exit0；`verification/20261001T144100Z-base/acceptance.json` 对本轮36公开根的传递公理审计exit0接受（M64基础22、实际WindowLog9、组合消费者5）。全部仅标准三项。完整26源日志/receipt采用序号前缀保留原字节，避免同名BaseAudit覆盖。

三个 `CriticalWindowLogBase.actual_i{28,31,34}_log_pair` 公开类型直接展开原题noCommon为 `¬∃ p, p.Prime ∧ i≤p ∧ p∣gcd(C(n,i),C(n,j))`。对全部n>4096、i<j≤n/2，推出p<q<i、各自素性、M64实际窗口、完整指数 `(C(n,i)).factorization p + i.factorization p`、实际不同offset及signed gap1..33，随后非零L和严格128/n界。不留下任意截断指数、非零假设或局部上界假设。p=i在原题反例量词中保留。

审计诊断保留：最初对全部依赖中未限定名的#print做解析时需恢复namespace；旧B686依赖的#guard_msgs抑制了四项stdout。接受范围明确采用本轮36目标公开根的实际完整传递axioms，并仍验证全部26依赖的source/object/sidecar/log哈希；没有以旧注释代替任何必需根stdout。

实际前沿：原题反例→完整幂窗口→非零L/局部上界的共用接口已打通；仍未排除全部窗口。HeightAudit静态91源（现约65源需编译），先检实际log2/3/5距离与两个实际窗口pilot，再接高度和端点。完整原题指标新增0。

## 15:24 UTC 距离与实际窗口pilot闭环

`PilotConsumers.lean` 的33份project源最终全部exit0；`verification/20261001T151700Z-pilot/acceptance.json` 对45个本轮公开根的完整传递公理审计exit0接受，只有标准三项。完整日志/receipt逐字节副本按序号保存，见log-byte-map。

实际输出包括：原m96的log2/log3/log5上下盒、非共振与共振两条距离声性（全部整数y；共振保留x=0,y≠0）、两个真实log线性形式下界。后继实际M64(2,3)窗口中，cofactor(A,B)=(5,1)和(1,1)，n>4096、i≤34以及完整fullExponent(n,i,2)≤15359分别给

- `(5,1)`：`n < 25600 * 9881527843552324`；
- `(1,1)`：`n < 512 * 9881527843552324`。

此处系数/素数是两个固定证书位置，不声称全部55对或全部2519比例；指数条件仍由冻结高度接入，新的Height合成未验。两个实际消费者没有留下L≠0或局部上界假设；它们从实际不同offset导出。完整原题指标新增0。

本轮实际API修复：Basic中的加法单调性用`add_le_add le_rfl`；有限Rat界显式`Rat.cast_lt`到Real，避免自动mod_cast不归一化；整数偏移用abs_le双侧界和omega；PilotData显式归一化record v与Rat阈值；log2 pilot删除目标已闭合后的多余tactic；实际五比例消费者先显式归一化Nat字面量cast。数学声明/证书参数未改。所有失败收据保留，不从红编译的sorryAx输出提取接受结论。

## 高度bundle：仅准备，尚未编译

Leader批准一次bounded bundle方案以免约68次环境装载。`CriticalHeightBundle.lean` 收入63份冻结历史非import正文，484076 bytes；`height-bundle-map.json` 保存原文件raw hash、保留body text hash、完整拓扑、在bundle中的精确字节段。每个原文件置单独命名section以隔离variables/open/notation/set_option，本身namespace/section/mutual词法平衡已检查；41个private声明名无重复。没有#eval/#reduce、占位证明、新axiom/native_decide。原历史文件未动，当前M64/Height进口也未改。

词法平衡、无重复private名仅是预检，不能替代fresh编译与全部最终typed/axiom检验。bundle仍为未试候选。

15:24 runtime实测物理仅1.768GiB，无可见Lean任务；重Height/全端点不满足2560MiB门槛与900MiB余量，Leader要求先不启动重根。轻审计已按专用1200MiB启动/256MiB树/900MiB余量封存成功。未关闭用户程序，资源限制不记为数学失败。
