# 共享正素数链接口与首个检查点

负责人：middle_prime_chain（Astra/Max）。写入范围：本批 lean/PrimeChain.lean、lean/primeChain/、experiments/prime-chain/ 和本文件。来源 main 23c4e21096cd711be08927c0c451627c832d64c2；复用固定接入 63a04b064d62e7e8752b1edd75c186d07dc57a20 的旧接受入口，不改旧源。

开始：2026-09-09 11:38:12 UTC。首个接口/源码检查点：11:58:12 UTC；不是新的整轮截止。全轮无用户新总时长，旧5小时截止不继承。

## 预期范围变化与当前证据

目标是给全部 323≤i、i<j≤n/2、n≤2,000,000 的实际 gcd 二项式公共素因子结论。具体正素数链一旦通过，即同时消去该有限 n 区域的所有 i,j；配合主任务高度尾部才形成677项全域结论。本工作不改原题其余区域，也不声称新颖性。

当前状态：源码候选，尚未运行任何 Lean。外部列表共10,992项、首2末2,000,003，是本轮输入事实，未在本子任务重复外部素性检查，也未当成 Lean 接受证据。

## 精确接口

- `PrimeChain gap lo hi`：递归链证书。singleton 证明端点 Prime；step 证明当前节点 Prime、p<q、q≤p+gap，再接后继链。终点素性也需要证明。
- `PrimeChain.trans`：共享同一 mid 端点的两块拼接，不展开列表连接；最终采用平衡树拼接。
- `PrimeChain.near_top`：`lo≤n<hi → ∃p, Prime p ∧ p≤n ∧ n<p+gap`。p≤n 是非严格端点。
- `trialChainCheck_sound`：采用旧已验平方根完整试除器的可选 Boolean 检查器声音性；不是具体数据通过记录。
- `common_of_prime_chain`：gap≤i 时接旧 `B699LargePrimeStructure.common_of_top_prime`。
- `common_le_two_million_of_chain`：输入 `PrimeChain 322 2 2000003` 即输出原定有限 n 目标。具体链通过后必须消去此输入假设。

真正所需旧入口位于 `20260909-large-prime-structure-cb4764f0/lean/GapBridge.lean`。旧 LargeDivisorWitness 的 topPrime 只是它的间接消费者，因此不引入 ThreeWindowSize 的无关依赖。旧入口覆盖 p=n：n%p=n-p=0。结论保留原题 i≤p；在顶端素数所覆盖的这个子区域，合法性本身推出 i<p，不是给原题增加 i<p 假设。

## 首批具体块方案

每块32条边、33个节点，块间共享端点。先生成接近2,000,000的最后32条边，单独节点素性证明使用固定 mathlib `Mathlib.Tactic.NormNum.Prime` 的 `norm_num`，边关系用封闭小整数 `decide`。该素性战术源码生成平方根以下奇数候选的证明项，内核检查；不使用 native_decide，也不调用默认 Prime 的线性范围判定。

同一实际末端块还生成 trialChainCheck 版本供一次对照；是否尝试由主线程按计算槽及首项实测决定。不得两个重计算同时运行。禁止因为孤立素性或静态列表编译成功就批量；至少完整末端块和两块拼接通过，记录时间/内存后再选择总块数。

还未启动：Lean、全链源码生成、外部链重新试除。现在只进行小规模输入读取和末端32边源码生成。

## 环境诊断

普通 exec_command、显式pwsh非提权均在进程启动前报 helper_unknown_error: setup refresh had errors；node_repl也在启动时退出。原因按执行环境失败记录，不推断源损坏。主线程提供已验证的显式 PowerShell7 + require_escalated 方式后，只读工作恢复。没有因失败改动依赖或安装工具。

## 11:45:51 UTC 实际源码检查点

末端输入33节点为1994387到2000003，拼接端点1997183。已生成 End32NormNum、End32Trial 和 End32Consumer；最后一个在原题量词下覆盖1994387≤n≤2000000。生成脚本范围固定32边，清单见 `experiments/prime-chain/end32-generation.json`，该清单明确 leanRun=false、externalPrimalityCheckRun=false。

固定mathlib的缺缓存递归检查停止于已有对象边界：只缺 `Mathlib.Tactic.NormNum.Prime.olean`；其直接导入 `Mathlib.Data.Nat.Prime.Basic`、`Mathlib.Data.Nat.Prime.Defs`、`Mathlib.Tactic.NormNum.Basic`、`Mathlib.Tactic.NormNum.Result` 的olean均在固定包缓存中。主线程可在本轮D盘overlay从固定源补这一个模块，不需要下载缓存。本子任务未启动该编译。

已交主线程统一排队：优先以 End32Consumer.lean 为实际末端块与拼接消费者根；End32Trial.lean是按资源选择的一次对照。尚无性能结果，也没有根据源码生成进行全链批量。

## 全链生成预案（尚未执行）

若末端真实块与消费者在资源内通过，10,991条边按每块32边分为344块，最后一块15边；每块独立节点素性定理及构造链。可每16个块再输出一个拼接模块，层内二分调用 trans，最后只导入22个拼接模块再平衡合并。每层的输入输出类型都直接写具体端点数值，避免展开10992项列表、长链append或全局decide。

优先接受一个终点为2000003的完整 `PrimeChain 322 2 2000003`，再导入 `common_le_two_million_of_chain` 得有限n段无证书假设消费者。整鏈通过后的接受还需要实际消费者和传递公理；344个叶块各自成功不能替代整链导入/拼接的资源及内核检查。若最末块成本过高，先保留首失败声明和实测，再改变块大小或素性证明器；不按默认Prime.decide重跑全表。

## 11:55 UTC：实际末端检查已通过，计算槽交还主线程

开发验收证据：[20260909T115413Z/evidence.json](../experiments/prime-chain/20260909T115413Z/evidence.json)。本次不是最终消费者完整依赖闭包重建；复用的两个项目源为CofactorCriterion、GapBridge，使用前源码和对象SHA均与主线程114042Z成功记录匹配。未采用失败Height323对象。

| 实際編譯对象 | 秒 | Windows峰值工作集字节 | 结果 |
|---|---:|---:|---|
| 固定Mathlib.Tactic.NormNum.Prime | 9.150 | 526884864 | exit0 |
| 旧TrialPrimeCheck（重新编译） | 7.740 | 858898432 | exit0 |
| Core | 7.139 | 865579008 | exit0 |
| PrimeChain | 8.240 | 1076101120 | exit0 |
| End32NormNum | 7.936 | 944390144 | exit0 |
| End32Consumer | 8.742 | 1071505408 | exit0 |

所有编译均为Lean4.33.1、-j1、-M1536，单条超时上限300秒；没有超时。原始记录同时含0.1秒采样、Windows peak working set、peak commit，不能把commit指标误写为驻留内存。各有实际打印的末端声明仅依赖propext、Classical.choice、Quot.sound，脚本会拒绝不在该集合内的打印结果。

已检查的具体原题声明是 `B699MiddleIndex.common_of_last32_prime_edges`：全部自然数 n,i,j，323≤i、i<j≤n/2、1994387≤n≤2000000，存在Prime p≥i整除实际gcd。它已使用33个真实节点素性证明、两块16边链及trans拼接，不是孤立Prime探针。整条从2出发的链尚未通过，有限n全段声明仍保留hchain假设，全域指标接受集合不因这个末端检查而增加。

唯一计算槽在流水线完成后立即交还主线程。没有启动End32Trial对照或自动生成/运行整链。下一判别建议：因通用Core约7秒且32边块约8秒，先实测128或256边块减少进程启动数量，再决定全链块大小；该较大块成本仍是待验推断。

### 保留的失败诊断和恢复命令

初次runner启动时工作树祖先层级少算一层，依赖哈希读取在Lean启动前失败，已修正为明确的实际祖先位置；启动生成的空叶目录已删除，没有修改其他源。

随后首次NormNum.Prime在1.109秒失败：稀疏overlay含Mathlib顶层目录，Lean便在该根下寻找Prime.Basic而不会回退固定包。该失败是路径/缓存视图问题，不是素性结论为假；后续以junction/hardlink镜像固定缓存，只让NormNum输出写本轮本地目录，即成功。固定包未写入。初始化命令已固化为 `experiments/prime-chain/prepare-overlay.ps1`，随后运行 `C:/Python314/python.exe -B experiments/prime-chain/run-checkpoint.py initial`（路径以本批为基准），详尽Lean argv、source SHA、output SHA均在实际证据中。

开发对象位于仓库ignored `.tools/mid/prime-chain-dev/olean`，固定包overlay在 `.tools/mid/prime-chain-dev/mathlib`。最终接受仍交主线程使用新的完整闭包运行和源码政策/传递公理审计；这些开发对象不是无条件最终接受快照。

## 12:00:37 UTC：下一检查点仅生成末端256边

按主线程新指派，末端256边候选已生成，尚未编译。节点为1953451到2000003，共257项；内部每32边一段，端点依次1953451、1959263、1965133、1970959、1976537、1982401、1988237、1994387、2000003，8段平衡拼接。

源码为 `lean/primeChain/End256NormNum.lean` 和 `End256Consumer.lean`；预期消费者 `common_of_last256_prime_edges` 对全部合法j覆盖1953451≤n≤2000000、i≥323。源与输入SHA见 `experiments/prime-chain/end256-generation.json`。本次只做格式读取/源码生成，不重新外部检查素性。

已提供固定包overlay完整源/五种对象/构建日志哈希清单：`experiments/prime-chain/normnum-prime-overlay-manifest.json`。全链源码生成器 `generate-prime-chain-blocks.py` 已保存，--all尚未执行；如采用256边每文件则43叶块、每16叶一组形成3组，再平衡拼接。最终输出将是无hchain参数的 `two_million_prime_chain` 和 `common_le_two_million`，但当前并不存在这些全链生成源或验收。

开发runner已增加end256阶段，仅在主线程再交唯一计算槽时运行；当前计算槽属于主线程。

## 12:09 UTC：实际末端256边与消费者通过，计算槽交还

证据为 `experiments/prime-chain/20260909T120849Z/evidence.json`，结果/对象大小/哈希复查另见 `experiments/prime-chain/end256-result-summary.json`。Lean -j1/-M1536，单条300秒上限；两根均exit0。

- End256NormNum：13.968秒，Windows峰值工作集1273757696字节、peak commit2448498688字节。
- End256Consumer：7.739秒，Windows峰值工作集1072431104字节、peak commit2412646400字节。
- 实际打印 `End256NormNum.joined` 与 `common_of_last256_prime_edges` 的axioms均仅propext、Classical.choice、Quot.sound。

具体原题接受扩大到1953451≤n≤2000000、i≥323、全部合法j。沿用开发依赖并核对来源，尚不是完整finalconsumer依赖闭包重建；整条2到2000003的链仍未生成或验收。没有运行第二实验。流水线结束立即归还唯一计算槽。

## 紧凑素性证书：按主线程要求的窄范围源码调查

固定mathlib 0df444a360eaa60ab8c11dca51a86af692955474 存在 `Mathlib/NumberTheory/LucasPrimality.lean:39` 的精确入口：

```lean
lucas_primality (p : ℕ) (a : ZMod p)
  (ha : a ^ (p - 1) = 1)
  (hd : ∀ q : ℕ, q.Prime → q ∣ p - 1 → a ^ ((p - 1) / q) ≠ 1) : p.Prime
```

它是现成声音性定理，hd必须覆盖p−1的全部素因子，不是一份未经完整性证明的候选因子列表。能否用此得到更小对象还需完整因子/指数余数证明与实际生成成本；本调查不把这个待补连接记成现成证书生成器，也没有开始新Lean路线。

同一文件21–22行明确把生成Pratt战术、接入norm_num列为TODO。当前NormNum/Prime源码实际走minFacHelper_0..3及平方根以下奇数候选的证明项；没有调用Lucas/Pratt。在固定Mathlib/NumberTheory和Mathlib/Tactic的窄检索中，没有Pocklington/Pratt实现命中，只有Lucas文件的说明及Fermat.lean的特殊消费者。这是限定范围检索结果，不作生态全局不存在宣称。

缺缓存闭包见 `experiments/prime-chain/lucas-cache-inspection.json`：只缺 LucasPrimality 与 Algebra.Field.ZMod 两模块；边界 RingTheory.IntegralDomain、Algebra.Field.Basic、Data.ZMod.Basic已有olean。没有编译它们或第二实验。

若以后采用Lucas，不可直接向当前overlay的Algebra、NumberTheory子目录编译：这两个兄弟目录目前是指向固定缓存的只读junction镜像，应另建相应本轮可写分支或新overlay，保持共享固定包不变。当前唯一新增的固定模块对象仍只有NormNum.Prime。

## 下一有界对照：相同末端32边的trial检查

主线程再次明确授予唯一计算槽，要求每条最多180秒。目的仅比较同一33节点、两块16边的End32Trial与已通过NormNum版本之证明对象体积和内核成本，避免直接把NormNum整链对象线性约GB的风险带入最终导入。

新增End32TrialConsumer直接调用common_of_prime_chain和EndBlockTrial.joined；候选范围仍1994387≤n≤2000000、i≥323、全部合法j。现有End32Trial源未改，本次不是旧完整覆盖行重跑，不开始Lucas路线、不自动扩大块或整链。成功或失败后都交还计算槽。

## 默认End32Trial对照失败：12:20:58 UTC证据

实际失败证据：`experiments/prime-chain/20260909T122058Z/evidence.json`；源/日志/无对象状态复查：`end32-trial-result-summary.json`。End32Trial保持原SHA 8e17ad9a6d3be310eefdcc7c1488390648c7161dc95d7c31b83e8bf211817c8c；没有因失败改写该候选。

默认decide在6.533秒退出1，峰值工作集838782976字节、peak commit1965568000字节。两条leftCheck/rightCheck均报Decidable实例未化简到isTrue/isFalse，卡在trialChainCheck的Bool匹配；未达到180秒上限，没有日志证据显示内存耗尽或数值为假。更细的透明度/化简根因尚未知。

编译失败时joined的真实公理打印含sorryAx，运行器拒绝此结果；未产生可接受对象，End32TrialConsumer未进入流水线。本失败不能提升整链接受，也不能据此否定检查器数学声音性。计算槽立即交还主线程，没有第二实验。

现有候选使用默认`decide`；本轮固定Lean源码Elab/Tactic/Decide.lean确有`decide +kernel`选项。该选项与native互斥，直接让内核检查反射证明；尚未测这个不同入口。若主线程再次授权，最小诊断应保留当前失败原源，另建同一32边的+kernel版本及消费者，继续记录实际公理和对象大小，而非直接跑整表。

## 紧邻后端诊断：单素数优先的+kernel探针

主线程再次明确授权唯一计算槽，并指定改后端、先单素数。保留默认End32Trial原源与失败证据，新建KernelSinglePrime、End32TrialKernel、End32TrialKernelConsumer。所有本轮真值证书改用decide +kernel；若实际末端素数2000003的trialPrimeCheck失败，流水线立即停止，不试32边。每条仍最多180秒、-j1/-M1536。

此次改变依据是固定Lean源已核对的doElab/doKernel区别；不是重跑默认decide，也没有开始Lucas或整鏈。失败原因若不能进一步判定，仍明确标未知。

## 12:24:06 UTC：+kernel紧邻探针成功，对象显著缩小

实际证据：`experiments/prime-chain/20260909T122406Z/evidence.json`；包括对象族字节数、源/object/log SHA复查与零公理声明的完整结果：`end32-trial-kernel-result-summary.json`。三根全部exit0，单线程1536MiB、每条180秒上限，没有超时。

| 根 | 秒 | 峰值工作集字节 | peak commit字节 | 对象字节 |
|---|---:|---:|---:|---:|
| KernelSinglePrime | 6.745 | 888528896 | 2032721920 | 8512 |
| End32TrialKernel | 10.760 | 1311264768 | 2457731072 | 62472 |
| End32TrialKernelConsumer | 8.157 | 1070977024 | 2382700544 | 44600 |

`KernelSinglePrime.lastPrimeCheck`的真实输出为不依赖任何公理；lastPrime、EndBlockTrialKernel.joined与common_of_last32_trial_kernel_edges只含标准三公理。旧默认decide失败源和日志保留；此次成功说明相同计算在kernel后端可以归约，不能把先前默认透明度下的失败归结为检查器不正确或不可计算。

同一实际32边的NormNum对象为3970816字节，kernel反射链为62472字节，缩小约63.6倍。数学范围保持1994387≤n≤2000000、i≥323、全部合法j；本轮贡献在证书对象成本，没有扩大全链已验范围。当前两份16边的Bool真值证明足够构造32边链，整表仍未生成/运行。

计算槽完成后立即交还。建议后续经主线程决策保留16边的单个Bool核验长度，在同文件平衡拼接多段再测64/128/256边；该建议尚未执行，也不从小对象直接宣称最终全链可导入。

## 12:29:09 UTC：End256TrialKernel候选就绪，尚未编译

主线程要求先准备源码，计算槽当前由其计数/高度流水线使用。实际同末端256边、257节点1953451→2000003，现在每16边一个独立 `by decide +kernel` 真值证明，共16份，再平衡trans；没有巨大单体check。

新源码：End256TrialKernel.lean（7843字节，SHA 5e6366dd9d588fba55b19bfbfe06f9c0313e95b433acfddedb5335e172ad3dcb）和End256TrialKernelConsumer.lean（SHA e278bf8d88a8ecb94be6f255e5006b4684fcb61fb0f562fe4a89afa76986d494）。来源清单 `experiments/prime-chain/end256-trial-kernel-generation.json`，明确lean_run=false。

`generate-prime-chain-blocks.py --backend trial-kernel` 已用于这次有界生成；`--all --backend trial-kernel --block-edges 256` 只准备为后续入口，尚未执行。该方案会生成43个256边上限叶文件、每叶内部16边子证书、3个分层汇总组、AllBlocks及Complete消费者。采用kernel后完整数学导入只需Core和已有GapBridge，不再依赖NormNum.Prime对象overlay；这是源码接口性质，整体可导入性仍待实际全链验收。

开发runner增加end256-kernel阶段，但只有主线程再次交槽才执行。原NormNum成功源、默认decide失败源和32边kernel成功源均未改。

## End256TrialKernel资源失败：不能采用43叶方案作已验排期

实际新证据与源/对象/log状态：`experiments/prime-chain/end256-trial-kernel-result-summary.json`，其中链接本次独立时间戳evidence。End256TrialKernel源SHA仍5e6366dd9d588fba55b19bfbfe06f9c0313e95b433acfddedb5335e172ad3dcb。

编译30.648秒后exit3221226505。精确诊断为 `lean::memory_exception: excessive memory consumption detected at interpreter`；峰值工作集1610776576字节、peak commit2747543552字节，-M1536。没有达到300秒超时；未产出接受对象，也没有运行消费者，崩溃前无实际axiom打印。准确失败到哪一份16边segment，现有日志无法判定，标为未知。

这次是明确资源限制，与默认decide的透明度化简卡点不同。小段kernel Bool为真已经在同32边对照通过；同一末端256节点的数学链仍有NormNum接受记录。失败不表示素数链或检查器数学结论为假，也不能据此断言所有kernel分块都不可行。

本次实际导入的5个旧项目依赖逐一核对源码/object SHA成功：CofactorCriterion、GapBridge、TrialPrimeCheck、Core、PrimeChain，见 `kernel-development-dependency-audit.json`。数学闭包未引用NormNum.Prime。最终完整源闭包验收仍由主线程负责，开发导入不冒充全部重建。

唯一计算槽在失败后立即归还，未运行64/128探针或整链。当前最大已通过kernel块为32边（两个16边证书）。按43个256边文件方案无法给出可行成本，因为一个代表叶已失败；如直接采用32边模块则需344叶，按最末块10.760秒逐叶估计约62分钟，另加汇总/最终消费者成本。这只是同等末端成本假设的排期估计，不是时限保证。64/128模块的成本尚未测，应由主线程决定是否进行下一有界阈值探针。

kernel反射的小对象确实缓解序列化体积风险，但不消除当前编译瞬时内存限制；最终全链导入/传递公理仍须实测，不能从小文件或各叶通过直接推定。

## 最后有界诊断：Elab.async全局关闭

主线程指定只改变调度做最后一次同256边对照，并授予唯一计算槽。固定Lean源已核对：CoreM.lean:35–45将Elab.async定义为多线程elaboration选项，命令行默认会设为true；MutualDef.lean:1237–1242按此选项选择elabAsync或elabSync，后者仍进入finishElab，前者另开任务后也进入finishElab并提交checked environment。Decide.lean:116只在mkAuxLemma的局部withOptions关闭异步。这些源码支持它是调度选择，不是关闭kernel检查的选项。

保留原End256TrialKernel失败源不动，新增End256TrialKernelSync和SyncConsumer，除独立namespace/消费者名及全局 `set_option Elab.async false` 外保持相同256边、16边子证书。预测：若多份异步声明累积造成先前峰值，关闭调度应降低峰值；失败则仅不支持这个调度解释，不推广为其它方法均不可能。每条180秒，-j1/-M1536，失败即停止该诊断，不再连续调内存。

## 12:42:05 UTC：同步256边与原题消费者通过

实际证据：`experiments/prime-chain/20260909T124205Z/evidence.json`；完整源/object/log SHA、对象族体积与排期条件：`end256-trial-kernel-sync-result-summary.json`。两根均exit0，-j1/-M1536，单条180秒上限。

- End256TrialKernelSync：79.304秒，峰值工作集1280991232字节，peak commit2435899392字节。
- End256TrialKernelSyncConsumer：23.226秒，峰值工作集1069154304字节，peak commit2367864832字节。
- 两项实际传递公理均仅propext、Classical.choice、Quot.sound。

`end256-sync-source-comparison.json` 逐字归一化核对：与原失败256源相比，只有全局Elab.async=false和独立namespace差异；原失败源SHA保持5e6366dd9d588fba55b19bfbfe06f9c0313e95b433acfddedb5335e172ad3dcb。此次观察支持调度对峰值内存有决定性影响，但尚未进一步证明内部哪一种待处理对象导致了累积，不把机制猜测升级成源码已证根因。

具体结论为同步内核证明的1953451≤n≤2000000、i≥323、全部合法j原题消费者。数学区域与此前NormNum256相同，收益是低对象成本路径获得可用256边模块。没有开始Lucas、提升内存阈值、生成或编译全链。

唯一计算槽已归还。按43叶都等于所测最末叶79.304秒的简单排期估计，叶模块共约56.8分钟，另加3组、AllBlocks及最终消费者成本；这不是上界保证。最终导入的完整源闭包、公理遍历及内存仍须实际测试，现有低体积只降低风险，不等于全链接受。

同步探针完成后只更新了全链生成器接口，未执行生成：后续应使用 `--all --backend trial-kernel --sync --block-edges 256`，使每叶和汇总消费者显式带Elab.async=false。--sync的末端命名为End256TrialKernelSync，避免覆盖原异步失败源。生成manifest将记录backend、sync和generator SHA。当前只运行--help检查接口，没有生成全链或重写任何已验Lean源。

## 完整链源码生成与冻结交接

2026-09-09 12:55:25 UTC按主线程明确授权实际运行 `generate-prime-chain-blocks.py --all --backend trial-kernel --sync --block-edges 256`。生成43叶、3组、AllBlocks和Complete共48个新Lean模块；没有重跑外部素性检查，也没有由本子任务启动这些源的Lean编译。

全模块生成清单为 `experiments/prime-chain/all-generation.json`。独立静态审计 `audit-all-sources.py` 从实际生成源码重新提取687份最多16边的证书数据、核对每份声音性消费者和每层trans端点，重建出的10992节点/10991边与原输入逐项一致；全部共享端点正确，全局首2末2000003。48份源均显式Elab.async=false，禁用证明词/新axiom静态扫描通过。生成前后15份旧成功和失败Lean源SHA全部不变。

`experiments/prime-chain/all-source-static-audit.json` 同时是准确模块manifest：包含48份新模块的路径、可直接使用的quoted import、source SHA、imports；并列出最终根的53模块完整项目源闭包、外部导入和SHA。它是静态证据，未把687个Bool的真值或整链公理标为通过。

最终源根 `lean/primeChain/Complete.lean`；import为 `research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Complete`。本根提供具体 `B699MiddleIndex.two_million_prime_chain : PrimeChain 322 2 2000003` 及无链真值前提的原题有限n消费者 `B699MiddleIndex.common_le_two_million`，完整签名、清单hash与交接状态见 `experiments/prime-chain/final-source-handoff.json`。

主线程通知其FirstComplete完整72模块闭包已开始（通知入口verification/20260909T130116Z，以其实际验收记录为准）。从收到通知起，全部已生成及被导入Lean源冻结；本子任务仅写notes/manifest，不开Lean、不边编边改。生成源当前仍是pending，整链通过、首个指标全域通过和677项全域通过由主线程新鲜最终消费者记录分别决定。
