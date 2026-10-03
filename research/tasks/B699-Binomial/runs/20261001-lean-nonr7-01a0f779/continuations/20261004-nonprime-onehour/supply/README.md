# 条件后续：把已有有限 top-prime 链的右端延长

Owner `/root/nonprime_next_consumer_20261004`；复杂固定目标实现准备，`gpt-6.1-sol / xhigh`。仅拥有本 `supply/**`，不改共享记录、历史源、CI 或 Git。共享开始 UTC2026-10-03 17:36:13，hard18:36:13，cleanup18:28:13；本准备检查点17:55。输入工作树 HEAD `0315fa513e889c528ec756b490d9e632190a4b56`，branch `huan/b699-lean-next-20261002-01a0f779`。

状态：**候选准备完成，未运行 Lean，未接受新增原题指标**。Leader 认可短续推方向；必须先等本轮五非素性证书、旧 generic 独立绑定、四完整4885–4888三步全部通过，再由 C 唯一串行执行。S 已于17:53附近源审最小消费者，未发现量词或端点错误；其正式审查原件和最终执行接受由 `../reviews/` 记录。

## 准确依赖与省掉的工作

- 采用旧实际已接受 `B699FiniteFull20261002.complete_chain : PrimeChain 4883 2 20000093`，**gap是4883，不是184或4882**。旧 literal 源中的184不能当此已验新对象的类型。由 S 核对固定 source/object/raw/type：旧 terminal source `be6b2df9b`、CI `37037647747`、archive `D:/ResearchArtifacts/b699-terminal-fortymin/b699-main-37037647747.zip`，archive SHA前缀29a3；源 `accepted-full-33-CompleteChain/source.lean` 10325B/SHA `168c467c0451124b3fdba313a27cf274ac3cf5ab7b542d78d9a91e0e66546acc`。canonical import仍是 `20261002-finite-full-onehour/finite/generated/CompleteChain`；本机未物化生成目录不表示原件缺失。
- 固定旧入口 `20261002-terminal-gap-twohour/terminal/FiniteConsumerLegacy.lean` 通过已有完整 source/object closure 导入这条链、`chain_last_prime`、全部 `i≥1000,n≥4096*i` 的无外置数学输入 ratio 原题消费者及 `common_of_top_prime`。这里复用 C 当前三步已恢复的同29a3来源对象/pins，不能重建整个129 supplier来制造进度。
- 现代小叶子 `TailPrimes.lean` 只导入 `Mathlib.Tactic.NormNum.Prime`；legacy消费者导入旧 `FiniteConsumerLegacy` 与该现代叶。seed20000093由 `chain_last_prime complete_chain` 复用，不重新证明。
- 不需要重新生成 `[10M,20M)` 真Gap前缀，不需要旧 `generate_segments.py`、Pilot64或无限Gap/PNT供应。这个数学接合是既有finite top-prime消费方式的延长，非新的开放问题论证。

## API、端点与原题范围

`TailConsumerLegacy.common_of_tail_chain` 候选准确接口为：`{U K : Nat}`，给定真实 `PrimeChain 4883 20000093 U` 与 `4096*K≤U`，对全部 Nat n/i/j、`4883≤i≤K`、`i<j≤n/2`，存在同一个 `Nat.Prime p`、`i≤p`，同除两个完整 choose。

证明用三个已建立区域：

1. `4096*i≤n`：实际 ratio 原题定理，边界等号包含在这里。
2. `n<4096*i` 且 `n<20000093`：旧完整 chain 的 `near_top`，左端2由原题合法区间给出。
3. `n<4096*i` 且 `20000093≤n`：新 tail chain 的 `near_top`。`n<4096*i≤4096*K≤U` 保证**严格** `n<U`。

两链得到真实素数 `p≤n` 与严格 `n<p+4883≤p+i`，推出 `n-i<p` 后调用旧实际双choose消费者。`n=20000093`在新链首节点；`n=4096*i`在ratio；`n=U`不属于tail调用区域。原题结论保持 `p≥i`、所有合法n/j及完整choose，不改成弱化余因子声明。

## 最小执行项：跨素数4889

- `TailPrimes.lean`：6新素数根，20,004,973 /20,009,819 /20,014,693 /20,019,547 /20,024,339 /20,029,199。
- `TailConsumerLegacy.lean`：uniform条件helper、实际tail_chain、无新数学输入的common_upto_4889、complete_4889，共4根。
- 新链6边差 `4880,4846,4874,4854,4792,4860` 均≤4883；尾点20,029,199≥4096*4889=20,025,344。
- `prepare_tail_extension.py` / `tail-candidate.json`：只准备6边、99个trial候选，实际约0.0023秒。精确Python计算不是Lean证书。
- C须fresh编6叶+4消费者根，打印独立literal types及拒绝式标准三公理审计，再normal leanchecker；S绑定source/objectparts/pins/raw/typed/AX/checker后才能接受。没有实际执行资源成本；旧Pilot64的6.416秒只说明同类64叶历史成本，不能充作本源时间。

三步先成功到4888后，最小消费者接受将完整上界推进到4889，即净增1个完整指标。若三步尚未接受，此候选也不能登记任何覆盖。

## 同模版备选：K5000

`prepare_tail5000.py` 已在owned目录准备6个≤16新边的现代块、`Tail5000ConsumerLegacy.lean`。第一块复用 `TailPrimes.prime6`，后继块复用上一块最后prime，全部原六叶不重证。额外93个新prime /6链根 /3最终根，共102新根；连最小4889的6叶，总共99个新prime。候选末点20,482,069≥4096*5000=20,480,000，新增边最大4882≤统一gap4883。trial671项，实际约0.0144秒，仅精确计算。详情及所有文件hash在 `tail5000-candidate.json`。

先最小4889量成本和确认legacy接缝；剩余预算足够且 C/Leader确认可执行才继续5000，不把有限段准备冒充运行。全部K5000通过相对完整4888净增112完整指标；相对4889净增111。若成本/编译失败，保留实际故障和最小已接受范围，不自动扩大批量。

## 剩余前沿与边界

成功仍只有固定i有限段。K4889后 `i≥4890`，K5000后 `i≥5001` 的低比例域 `2≤n/i<4096` 仍可有无界i/n/j；真无限Gap的y仍无界，低非R7的23项和R7不动。没有无限Gap供应、有效θ/ψ或原创性声明。停止前由C/S登记fresh接受范围；这里持续保持candidate，直到能链接他们的具名签件。

## 本机环境与准备证据

UTC17:41资源观察：D盘24.78GiB可用、16逻辑CPU；CIM物理内存读取拒绝，不能把返回空值当0或实际内存预算。17:48 .NET报告可用内存上限16070MiB，不能充作free memory；已有两个Python进程44.6/40.2MiB，未停止。这里只跑毫秒级有限trial，无本机Lean、缓存/下载或新重计算，实际CI资源由C实时预检。

完整依赖、候选文件byte/hash及形式声明见 `source-provenance.json`；prepared / source-reviewed / runtime-accepted / independently-accepted 状态分开。最后已接受原题完整上界在本子任务开工时为4884。本任务交付的是下一项可执行源，未把旧失败或旧pending改为成功。
