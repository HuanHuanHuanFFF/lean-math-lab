# 大指标尾段 Lean 执行记录

负责人：`/root/tail_verify`。仅写本目录与 `.tools/b699-lean-20261001-01a0f779/tail/`；历史源、公用库及依赖版本不变。

固定输入：`main@4d22485e20e509e33348b33e63f6902becbae414`。共同预算从 2026-10-01 13:42:09 UTC 至 15:42:09 UTC，硬停、无延期；15:32 UTC 转最后验收与交接。

## 锁定消费者与反向依赖

完整目标类型：`∀ n i j : ℕ, 4883 ≤ i → i < j → j ≤ n / 2 → ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j`。同一个素数、包含 `p=i`，不把完整幂替换成根基。

采用纸面路线：原题消费者 ← 顶端素数见证 ← `n<4096*i` 与 `Gap(4095,10000000)` / 旧有限 n 消费者；高度 ← 三窗口完整阶乘归一化 N 与 EC 与 IC/115 行桥。

来源与状态：

- `20260910-unbounded-tail-9f6c2a17/delivery/report.md`、`frontier.md`、`notes/routes.md`：历史技术接受仅为 EC 分析前置；新增原题覆盖 0。
- `20260910-unbounded-tail-9f6c2a17/lean/ECAnalytic.lean`：历史 source SHA256 `9b64ffb7d2ed1fda637511ad56eca51505c4741a2983bb753ab77b59160e1851`，固定验收根 `verification/20260910T075554Z/evidence.json`；新复制修订重新验收。
- `20260910-elementary-count-bbbfe15e/lean/ElementaryCount.lean`：完整 EC 未编译候选，历史 source SHA256 `be0aa12258e65bee7cf29c396fbb253207782c482d64f603d95164e305a8b8c3`；本轮优先修复实际实现与编译。
- `20260909-prime-optimization-a81baaab/delivery/REPORT.md` 第 1–6 节：N、EC、IC、无界计数尾部和 Gap 拼接纸面源。无界 Gap 尚无接受的 Lean 证明。
- `20260909-large-prime-structure-cb4764f0/lean/GapBridge.lean`：已存在 `common_of_top_prime` 消费者，待按本轮固定源/对象检查复用。
- 固定 mathlib pin：`0df444a360eaa60ab8c11dca51a86af692955474`；Lean `4.33.1`。版本实际核对由 runtime_review 提供。

## 首个可证伪检查与预期收益

先恢复/检查 `Chebyshev` 相关 import，再把已验 ECAnalytic 修复接进完整 EC 候选，验证完整实数域 `x≥128` 的 inclusive `π(floor x)` 上界和传递公理。若通过，消除完整 EC 的实现缺口，解锁高度比较中的已知依赖；原题 `i,n,j` 无界域仍不自动缩小。

随后优先连接已存在纸面证明：计数尾部比较/IC 或 Gap 的精确整数拼接，以实际资源与错误选择。不生成新固定指数表、不做新数学研究，不触碰 R7。每个闭环保留 source、实际 command、exit、stdout、hash 和公理；缺前置不是停止理由。

初始状态：尚未启动 Lean。已联系 runtime_review 等待单线程低优先级、1536 MiB、全局独占锁入口；本线程先读源并准备候选。

## 13:58 UTC 源准备检查点（全部待编译）

运行环境实际无工具链和任何包 build 对象；runtime_review 正恢复固定官方版本。按当前可用物理内存约 1.65 GiB，入口初始 cap 改为 768 MiB、单进程。环境恢复和静态源检查不算 Lean 接受。

- `ElementaryCount.lean`：原候选完整 EC，接入历史 ECAnalytic 的真实修复证明体；第一编译优先。
- `FactorialLogBounds.lean`：纸面 4.1 的全正整数 factorial 上/下界、superfactorial 下界，用基本 log 不等式及归纳实现；是实际 N 前置。
- `NormalizationConstants.lean`：纸面 4.2 的全部 `m≥333,1≤c≤3` 完整阶乘常数，使用实际 factorial/superfactorial；无有限指数表。
- `IntegerCountBridge.lean`：纸面 IC 的实代数矛盾及实际 `-log(1-h)` 上界，归一化/对数界输入显式。
- `UniformCountTail.lean`：EC 接实际 `π(i-1)`、统一推出 `i≥131072` 的计数高度比较，三窗口 A 输入显式。
- `GapAdapter.lean`：纸面第 6 节整数拼接，Height/Gap/旧有限 n 输入显式；仅接口前置。

补充采用的真实三窗口消费者：`20260909-low-index-structure-b41a5a63/lean/ThreeWindowSize.lean:noCommon_scaled_prime_part`，其 `primePart` 完整保留 `p=i` 和全指数。当前尚未复跑/绑定该历史接受；没有将它或新候选记为新验收。

N 反向链下一项：阶乘常数 → 对真实 `windowConstant`/`windowDegree` 的参数实例化 → `noCommon_scaled_prime_part` 的 log 比较 → 实际 U×V 分拆与 A。已有证明体（paper §4）与数学尚缺的 Gap 分开；不能因 conditional adapter 编译就宣称尾段闭合。

## 14:16 UTC 首个实际接受与环境诊断

`WindowParameters.lean:normalization_parameters` 对所有自然数 `i≥1000` 真实构造三窗口参数，完整核对自然数除法、截断减法和端点，输出 `i=3m+c`、`m≥333`、`1≤c≤3`、`q=2m`、`r=m+c−1`、`i−r−1=q`、`2q−r=λ=3m−c+1`、`λ≥i−5`、`q<i`、`q≥666`、`λ≥995`。

- 实际入口 receipt：`verification/20261001T141559020Z/receipt.json`；4.559 秒、exit 0、树工作集 461.81 MiB。
- 完整公开声明和真实传递公理见同目录 `stdout.log`，仅 `propext, Classical.choice, Quot.sound`。
- 已运行 `audit-receipts.ps1`：绑定实际源、对象、stdout、receipt 哈希且使额外公理/placeholder/native_decide 失败；根为同目录 `evidence.json`。
- `NormalizationFromWindows.lean` 已改为采用此真实接口，不重复假设参数存在；N 其余证明尚未验收。
- 原题完整指标新增 0；本参数前置没有消除 `i,n,j` 原题区域。独立复核已交 runtime_review。

资源失败分层保留：首次 EC 缺 Mathlib prefix；缓存解包后缺 ExponentialBounds；运行器曾 Int32 峰值溢出，已由 runtime_review 修复；随后 EC/Factorial/IC 的重 import 在树守卫或解释器 memory_exception 停止。M1024 的较小 Log.Basic 根也在同装载点失败，下一步由 runtime_review 区分 Lean heap 与 Windows Job committed 限制，不把这些记为数学反例。全部重根仍为候选。

## 14:33 UTC 前置推进

- `ICAlgebra.lean:ic_real_obstruction` 已接受；实际 16.845 秒、exit 0、M1024/WS1536、Native flags `0x2030`、commit 限额 0，公理仅标准三项。证据 `verification/20261001T142020902Z/`。它证明 paper §3 的真实代数矛盾；归一化 A、log 参数界、筛计数 T 仍要由消费者供应。
- `FactorialLogBounds.lean` 的全 `n≥1` 阶乘 log 双侧估计与全 `q≥1` superfactorial log 下界已接受；实际 17.858 秒、exit 0、峰树 WS1378.07 MiB，M3132/WS1536、Native `0x2030`、commit0；两项真实公理均为标准三项。证据 `verification/20261001T142622263Z/`。4 条 unused-simp 警告保留；为保持验收源绑定不做美化改动。
- `IntegerCountBridge.lean` 的实际 `-log(1-h)` 上界、4095 精确分母与进口 IC 审计已接受；实际 16.201 秒、exit 0、峰树 WS1338.2 MiB，同物理保护参数。证据 `verification/20261001T142939186Z/`。
- `NormalizationConstants.lean` 正在首次真实编译；随后接 `NormalizationFromWindows.lean` 的真实 noCommon→A。

环境诊断訂正：14:14:38 观察的源码 `Flags=0x2230` 不是 Native 读回。runtime_review 的同 fixture 读回显示旧 flags 实为0，因此“旧 Job committed 限额导致失败”的猜测已证伪。新入口已实际读回 `0x2030`、Job/process committed 限0。M3132 调整的是 Lean 内部阈值；轻根仍用树工作集1536 MiB、启动可用物理≥2560 MiB/commit≥4096 MiB、运行余量900 MiB、2CPU/低优先级，未把内部阈值当物理可用预算。

完整 EC 在 M3132/树1536 实际装载到1560.19 MiB后由守卫停止（`20261001T142748059Z-tail-ec-3132`），未到数学诊断。已保留固定 Mathlib 源的 EC 小链 `SlimChebyshev.lean` 候选以缩导入；Leader 随后按现场物理4.308 GiB批准一次 EC 树1792 MiB、启动物理3072 MiB/commit4096、余量900的实际诊断。超过该 cap 不再上调。全部新前置尚未形成无条件原题消费者；新增完整指标仍0。

## 15:02 UTC 实际原题归一化 A 已接受

`NormalizationConstants.factorial_normalization` 已在 `verification/20261001T144214146Z/` 接受全部 `m≥333,1≤c≤3` 的真实 factorial/superfactorial 对数常数。它是纸面(4.4)的实际证明体。该模块首次暴露清分母 API 残留；改用标准除法消去定理后真实 exit0，三项传递公理输出均为标准集合。

`NormalizationFromWindows.noCommon_normalized_1000` 已真正接受：对全部自然数合法 `n,i,j` 且 `i≥1000`，原题 noCommon 分支必满足纸面 A 的完整对数不等式，使用实际 `π(i−1)`；没有额外的 N、计数或 Gap 前提。该证明直接消费固定原始三窗口、完整 primePart（含p=i/全幂）、已证阶乘常数与准确参数，未用有限指数表。

- 接受根：`verification/20261001T150015086Z/`，38.058秒/exit0/峰树WS1375.8 MiB，三项真实公理输出仅标准三项；源/对象/日志audit通过。
- 固定历史项目闭包七源已全部新编译到本轮独占对象根；固定源hash/順序见 `historical-window-closure.json`，受控入口 `compile-window-closure.ps1`。历史源码不变。
- 源 API 修复：Real cast的 `1*i`、正数乘法反射lemma名称、field_simp已关闭后冗余ring；这些是实现错误，未把 A 当数学假设补洞。
- 当前仍未接受原题同素数消费者，新增完整指标0；下一项是接完整 EC 与 uniform count tail，再验 `Consumers.common_of_ratio_4096` 的真实无限区域。

EC方面：`SlimChebyshev` 的θ界与inclusive π(floor x) Abel恒等式已实际接受（`verification/20261001T144527797Z/`，21.224秒，峰树1712.7 MiB，标准公理）。旧候选的 `Nat.primorial` 实际不存在，已纠正为固定库的全局 `primorial`。固定128 base已拆至轻根 `ECBase.lean` 并接受（`verification/20261001T145752239Z/`，20.77秒/exit0/峰树1256.91 MiB）；计数31与2^145下界为真实kernel decide，无native_decide。完整EC改用这些已验对象继续本轮诊断，目标仍完整实数域x≥128。

## 15:17 UTC 完整 EC 与 count tail 已接受，原题消费者等待资源

`ElementaryCount.elementary_primeCounting_bound` 真正接受：所有实数 `x≥128`，`(π(floor x):ℝ)≤log4*x/(log x−3/2)`，无 EC/RS/PNT/Dusart 或 Gap 前提。接受根 `verification/20261001T150657845Z/`：19.929秒、exit0、峰树1772.67 MiB、主声明及3个辅助公开公理输出全部标准三项；实际source/object/log audit通过。把固定128 kernel计算拆到轻模块后，重根进入真实数学诊断；补齐导数分母非零与泛化3/2清分母实现后通过。不把此前无stdout的守卫停止确指为纯装载失败，缺阶段日志时原因保留为载荷/有限kernel reduction峰值。

`UniformCountTail.normalized_height_131072` 真正接受：实际 `ρ=π(i−1)/i`，`i≥131072`，归一化 A 推出 `n<4096i`；该声明本身保留 A 输入，下一消费者已准备接实际 N。接受根 `verification/20261001T151446065Z/`：23.617秒、exit0、峰树1651.64 MiB、3个主公理打印全部标准集合。使用固定 Log.Monotone 中所需 log/x 比较证明体，不扩大引入负熵等无关模块。首次暴露线性化变量除法的表达式问题，显式 `mul_div_assoc` 修复，未削弱阈值。

`Consumers.lean` 已写出无额外数学前提的实际反例高度与原题 `i≥131072,n≥4096i`、任意合法j的同素数消费者。首次入口在可用物理低于3072 MiB时预检拒绝，未启动Lean；不作数学失败、接受或该区域覆盖登记。继续按既定WS1792/余量900保护等待资源，预算硬停不变。

术语訂正：`FactorialLogBounds` 冻结源一条注释称hyperfactorial，实际对象是mathlib `Nat.superFactorial=1!⋯q!`。接受的类型和proof始终是superfactorial，报告不主张hyperfactorial估计；保留冻结源字节，详见runtime独立复核。

## 最终冻结与交接（15:37 UTC）

本轮接受范围以 `summary.json` 的10项准确scope和固定hash为准，接受源不再改动。`source-map.json` 区分接受源与候选；`verification/attempt-index.json` 链接全部实际受控尝试，失败的原始receipt/stdout/stderr/可用source snapshot保存在 `verification/failures/`。全部成功根有实际exit0、公開声明、传递公理和source/object/log绑定；独立核验记录在本run `../reviews/`。

最后 `ConsumerPublic.lean` 纯term/module/public-import低资源单次probe在安全门槛内实际启动：13.618秒、exit1、峰树173.21 MiB；唯一错误是既有 `NormalizationFromWindows` 为legacy non-module，不能从module模式导入。失败发生在proof/type/axiom前，归类为接口兼容失败；不重写已验旧源或假造原题接受。原 `Consumers.lean` 重入口此前因可用物理不足3072 MiB预检拒绝，未启动Lean。

**原题新增已接受区域为空，新增完整指标为空，全部i≥4883尾部未完成。** 实际成果是完整EC、实际原题noCommon→A、uniform count tail和所需完整阶乘/参数/IC证明体。不能把它们合并登记成尚未实际通过的原题消费者，也不能把无限Gap当作已验前提。

下一项可执行检查：资源恢复至安全门槛后，用原legacy `Consumers.lean` 在同一受控入口实际编译/审计 `i≥131072,n≥4096i` 的同素数声明；或者在新的独占目录迁移必要前置为module/public接口并新验收，原冻结源保留。之后仍需4883..131071的IC/sieve/115行桥、所有小比例n和统一无界 `Gap(4095,10^7)`，再接全部i≥4883消费者。n、i、j及Gap的y仍不能由本轮登记为消掉的无界参数。

停止新的Lean/math修改；最终source/summary/hash收据已冻结，未自行git操作、推送、合并或触碰R7。15:42:09 UTC硬停，本线程保留必要轻审计与交接，任何最终消费者的新接受只能另有真实exit0/公理/source绑定后登记。
