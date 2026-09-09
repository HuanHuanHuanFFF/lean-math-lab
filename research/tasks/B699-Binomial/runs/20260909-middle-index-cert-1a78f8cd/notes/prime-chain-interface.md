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
