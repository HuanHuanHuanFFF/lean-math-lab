# 有限供应执行记录

Owner finite_supply_sol，复杂既定目标，gpt-6.1-sol/xhigh。固定基线 d094fd1e54a27d45f1c38b8897e67486ab2a8ad6；本轮 2026-10-02 09:25:29–10:25:29 UTC，10:19停止新路线，10:21冻源，硬停不延长。独占本目录和同轮 ignored finite/；不操作Git、不碰R7、不改旧验收字节。

原题范围：自然数 1≤i<j≤n/2，要求同一个实际 Nat.Prime p≥i 整除完整两项 choose，p=i允许。目标是为i≥4883接上已接受的反例高度与有限n≤20M供应，使消费者只剩明确无限 Gap(4095,10^7)输入。Gap对所有自然y≥10^7，当前未证明；本轮不给原创性或完整指标增加的声明。

采用：上轮 ActualUniformConsumers 的所有i≥1000,n≥4096i、全部合法j之无条件实际原题结论与反例高度；gap/FiniteSupply、GapAdapter固定源。旧middle-index-cert完整chain gap184、i≥185,n≤20M有历史kernel接受，当前对象缺失，历史记录不视为本轮重编。旧Block000..227中的明确给定节点可抽稀，单NormNum.Prime叶已恢复但本轮须runtime哈希绑定。

路线比较：优先复用/恢复旧270源闭包后直接特化原题finite消费者。备选仅从固定旧给定节点挑相邻差≤4883的子链，重新证明实际Nat.Prime和全区间严格覆盖，不新搜索素数。首次可否证检查为32个高端节点的小块实际成本；未经此检查不生成约4k完整Lean链。数学API沿用旧PrimeChain三个构造/消费步骤，现代单源ChainCore独立编译接受。

预期前沿：有限供应与高度外置义务 → 仅真正无限Gap输入；如果仅小块通过，全球未知域不变。成功有限供应仅覆盖n≤20M，仍有i/n/j绝对值及Gap的y无界、2≤n/i<4096无限未知域。当前等待runtime安全入口；启动须全局锁、Idle、≤2CPU、D余20GiB、运行物理余900MiB。

## 09:53 UTC 检查点

旧闭包准确顺序沿用 `../../20261002-tail-twohour/gap/finite-twenty-million-source-plan.json`；本轮270源当前字节/三个已知缓存目录中的候选对象登记见 `old-closure-byte-plan.json`。该字节核对不是技术验收。228个旧Block目标目前都未在所查缓存出现；只有CofactorCriterion、GapBridge、DivisorTransfer、PrimePowerTransfer、SmallPartBound共5个源有候选对象，仍须runtime按receipt绑定后才能复用。

固定旧验收 `runs/20260909-middle-index-cert-1a78f8cd/verification/20260909T145049Z/evidence.json`：228 Block实际编译总2572.723秒（42.9分钟），最大单块23.276秒，整轮14:50:49–15:37:02约46分钟且复用158模块。旧闭包完整重编在本轮剩余预算内不可据此许诺。没有精确旧binary时，选择32高端节点小块作为判别检查。

`Pilot32.lean`由 `generate-sparse.ps1 -Mode Pilot`只读旧Block224..227的1978个literal后选择32个节点，首19662301、末19811023；未运行素数搜索或primality计算。独立语义核验者semantic_verify_sol已对32数字逐项查旧pool，递增、最大差4876≤4883，记录在本轮 `reviews/pilot-literal-provenance.json`；这仍不是primality proof。`ChainCore.lean`的构造/trans/near_top源级对应旧Core；`PilotConsumer.lean`准备把已供小链连接实际原题两项choose，严格范围[19662301,19811023)，全合法j、i≥4883。上述新源均待Lean编译、公理审计与checker。

`OldFiniteTerminal.lean`已经写出旧finite结论特化与已接受height的最短接线；独立语义对应通过，但旧source闭包缺失使它仍为候选。`SparseTerminal.lean.candidate`是另一接线模板，明确尚无CompleteChain，不作为可编译root或accepted源。全稀疏链未生成，遵守先32真实成本的门槛。

runtime原入口在约1026MiB可用量下保3072MiB启动门槛；原恢复者未提供可执行新入口。中断仅为用户切换fast，09:49接续不重启预算。新runtime_recovery_sol于09:50:54原生采样物理余744MiB，低于900MiB运行reserve，任何新Lean/checker都未启动；准备固定小profile仍须安全观察允许。环境/预算原因不转述成数学反例或方法失败。

## 10:15 UTC 收敛

NormNum三数学源与独立typed从窄CI准备时即按hash冻结，没有变更；Root保存检查点后报告push `f639d4a64`，8分钟job重试、最晚10:16:29起跑，原10:25:29截止保持。此刻全部新数学源进入收敛：不新route、不全链生成。CI当前结论与确切raw收据由Root/runtime记录，本目录不提前报告kernel通过。

GCD备选在 `alternative/`，27源闭包约71.8KiB。semantic_verify_sol已经独立逐字重建18old/new映射、17整namespace suffix与TrialComplete theorem原摘取，并核对同32数字；记录 `../reviews/alternative-source-correspondence.json`。全部新imports/namespace/type与实际Basis/P仍待编译，不继承历史对象接受。`HANDOFF.md`给当前结果、失败层与下一可执行，最终数学源列表与hash由freeze文件锁定。

如果最终CI接受原题pilot，实际scope只能是19662301≤n<19811023、i≥4883、所有原合法j，同Nat.Prime p≥i整除完整两choose，无Gap/height等数学外置输入；它与旧有限域重叠、完整指标新增0。若未实际成功，所有候选仍待验。原全n≤20M/i≥4883有限供应没有供给，真正无限Gap和无界前沿保持。
