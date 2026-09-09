# B699 185..322 扩展：声明、基底完整性与证据审查

审查者：Astra/Max，独立只读数学审查。开始 2026-09-09 14:23:04 UTC，15 分钟检查点为 14:38:04 UTC。主要结构及证据核对成功时点为 14:28:01 UTC；随后完成原压缩包字节对照。

**结论：没有发现新增数学声音性、范围拼接、参数或证据对应方面的阻断。138 条 N=20,000,000 的原题无限尾部已经验收，完整基底和实际末端 16/32 节点消费者已经验收。整个 20m 链和最终 815 项全域消费者仍未由本次证据闭合；保留扩展验收阻断 E1。**

本次只写本报告和 [statement-audit-extension.py](statement-audit-extension.py)。未运行 Lean、素性测试或高度大整数计算；没有修改任何已有报告或 Lean 源，没有派生任务。既有 677 项的数学审查不重复；仅核对其 129 个已接受源的 SHA，全部保持原字节。

## 锁定范围与原始输入

扩展目标为所有自然数 n,i,j：185≤i≤322、i<j、j≤n/2 时，存在素数 p≥i 整除实际 Nat.gcd (n.choose i) (n.choose j)。扩展成功后才能与既有 323..999 全域结果形成 185..999 的 815 项完整消费者。N 保持 20,000,000，没有换成 2,000,000，也没有增加其他 n/j 上界来替代目标。

独立读取原 zip 与 import-manifest，对所选 10 个条目共 1,204,448 字节作字节级比较，全部相同：

- 原档案 SHA256：`b96965a898f6f097d66fbb0d8df4e12e5b03c8f238e43143cd32fe7c506e0cf0`。
- 原高度 JSON SHA256：`2ccc08c94ef911344df35c0438ba29a945361e545fe07d697684337dbf9276ef`。
- 原 20m 链 SHA256：`a4954fc348879a5bff3bb91e8448f91437bd5220e80a1f1bc4cfb86ca8190414`。

对该链只解析整数、顺序和差值，观察为 116,667 节点、116,666 边，首 2、末 20,000,093，严格递增且最大相邻差 184。这项静态检查不重新证明每个节点素性，不能替代全链的 Lean 验收。

## 1. PrimeBasis 声音性完整

[PrimeBasis.lean](../lean/extension/PrimeBasis.lean) 第 10–11 行把 BasisComplete 定义为：所有素数 q<B 都属于 ps。它没有假定候选 p 素，也没有假定所需的原题结论。允许列表包含额外元素是声音性上安全的：额外模检查可能拒绝某个素数，但不会把合数误判为素数；因此不需要为每个列表元素另外证明 Prime。

第 15–17 行分支准确：

- p<B 时使用旧 trialPrimeCheck，0、1 也由该检查器的 2≤p 条件正确排除。
- p≥B 时要求 `2≤p ∧ p<B*B`，并逐项检查全部 ps 的模非零。

第 29–38 行的反证完整：若存在 2≤d≤sqrt(p) 且 d∣p，则 d≠1，故可取素数 q∣d；d>0 保证 q≤d。严格高度界 p<B² 给出 sqrt(p)<B，于是 q<B。BasisComplete 把 q 放入 ps，列表检查给 p%q≠0，而 q∣d∣p 给 p%q=0，矛盾。没有把“d 自己是素数”当作前提，也没有漏掉合数 d、平方根处的除数或自然数零值边界。

这里 `p<B²` 是实际检查条件，不能删除或改成未经另证的边界。B=4473 时 B²=20,007,729，比原链最后节点 20,000,093 大 7,636。全部实际输入节点均小于此上界；B 本身不需要素。

## 2. 607 项基底由逐整数覆盖证明完整

[BasisData.lean](../lean/extension/basis/BasisData.lean) 的实际 literal 有 607 个互异条目，首 2、末 4463。此列表的长度本身没有被当成完整性证明。

[PrimeBasisCoverage.lean](../lean/extension/PrimeBasisCoverage.lean) 第 16–18 行检查 List.range' lo len 中每个整数 q，要求 `!trialPrimeCheck q || ps.contains q`。第 23–31 行在 q.Prime 前提下，使用已经证明的 `trialPrimeCheck_complete` 强制 trialPrimeCheck q=true，再推出 contains=true 和实际列表成员关系。这里使用的是旧检查器的完备性方向，不能只靠 trialPrimeCheck_sound 替代；实际源码选用方向正确。

独立解析 Coverage00..09 的实际证明树，核对每个 `check := by decide +kernel`、对应 lo/len 参数、被消费的 part、每个 trans 公共端点和最终根：

- 10 个 Coverage 文件，共 70 个具体整数段，完整消费 0..4472 各一次。
- 前 69 段各长 64；最后一段为 [4416,4473)，长 57。
- 各段使用左闭右开区间，trans 的右段从同一个 mid 开始，无缺口或重复代替缺项。
- [PrimeBasis4473.lean](../lean/extension/PrimeBasis4473.lean) 第 52–57 行从完整 [0,4473) 树经 to_complete 得到没有额外真值参数的 `basis4473_complete : BasisComplete 4473 basis4473`。

基底源 SHA256：`d2b5f8c5cd256a924d6b3fdea7ff062b53cf0b1def5ef37f5b12888f92bab91e`。完整性来自这些已验具体整数段与声音性，不来自生成列表的外部算法或外部 PASS。

## 3. PrimeBasisChain 与已接受的实际末端消费者

[PrimeBasisChain.lean](../lean/extension/PrimeBasisChain.lean) 第 11–26 行对每个节点调用 basisPrimeCheck，再检查严格递增和 gap 上界；空尾也检查终点，因此不漏最后节点。归纳证明把每个检查结果接入既有 PrimeChain 构造器。泛化接口中的 hcomplete 在具体 End16Basis/End32Basis 中都由 `basis4473_complete` 实际提供，hcheck 也由各具体 `decide +kernel` 定理提供。

实际数据逐项对应原链末端：

| 已验对象 | 节点/边 | 首节点 | 终点 | 原题消费者的 n 范围 |
|---|---:|---:|---:|---|
| End16Basis | 16 / 15 | 19,997,609 | 20,000,093 | 19,997,609≤n≤20,000,000 |
| End32Basis | 32 / 31 | 19,994,899 | 20,000,093 | 19,994,899≤n≤20,000,000 |

独立解析每个列表和实际 check/part/joined 引用；末端 32 节点的两个片段共享 19,997,441，合并后恰好等于原链最后 32 个节点。16/32 指节点数，不混记成 16/32 条边。

[End32BasisConsumer.lean](../lean/extension/basis/End32BasisConsumer.lean) 第 11–17 行只有自然数 n,i,j、185≤i、i<j≤n/2 及上述 n 范围；结论为实际 gcd 的素因子且 i≤p，没有附加 hcomplete/hcheck。它调用既有 common_of_prime_chain，gap=184≤i；终点严格大于 20m，p≤n 的端点约定继续保留 p=n。它同时覆盖所有合法 j，未添加 i≤322 的必要性假设，因而本身是更广的有限带结果。

本审查没有把正在成本测试的 End512Basis 或完整 116,667 节点链计作已验。

## 4. 全部 138 条高度和原题无限尾部

[AllExtensionHeights.lean](../lean/extension/AllExtensionHeights.lean) 的最终声明为 `TailRange 185 322 20000000`。采用既有 TailRange 定义，展开后保留所有自然数 n,i,j，仅以 185≤i≤322、i<j、j≤n/2、20,000,000≤n 为前提，结论保留 p≥i 与真实二项式 gcd。

独立解析 9 个 heightBlocks，以及专用 Height185/200/322，核对以下连接全部成立：

- 原始具体高度共有 138 条，指标恰好为 185..322，未重复或缺失。
- 每条 i,r,s,N,t 与原 zip 高度 JSON 对应；r=⌊i/3⌋、s=⌊7i/10⌋、N=20,000,000，t 与已有真实 Counts.count_i 一致。
- 每个 heightValid_of_raw 都采用该行自己的 raw 证明与同指标 count_i；保留完整阶乘常数与严格整数比较。
- 每个 singleton 采用正确 i,r,s,N 的高度定理；AllExtensionHeights 的实际 trans 树恰好消费 138 个单指标叶子各一次。
- 185、200、322 三个样本来自 140012Z 成功根，分别在 9 块树中被明确引用；它们没有仅停留在未被使用的成本样本中。

样本与其余行都通过既有 `heightValid_of_raw → common_of_valid_height → common_of_height_certificate` 接到所有 n≥20m、所有合法 j。没有引入对数近似真值参数，也没有弱化原高度整数证书。

## 5. 独立验证证据核对

| 实际成功根 | 时间 UTC | 项目源 | 新编/复用 | 实际公理输出 |
|---|---|---:|---:|---:|
| [140805Z](../experiments/extension-prime-basis/verification/20260909T140805Z/evidence.json) | 14:08:05.323402→14:12:16.266811 | 28 | 19 / 9 | 49 |
| [141839Z](../verification/20260909T141839Z/evidence.json) | 14:18:39.495175→14:21:30.880070 | 33 | 10 / 23 | 64 |

均为实际 success=true、exit_code=0、finished_utc 非空、failure=null、all_project_closure_verified=true。逐个项目源核对当前源码 before/after SHA、实际 .olean SHA、实际日志 SHA；28/28 与 33/33 全部对应。直接解析每个实际 #print axioms 输出，无未出现的打印或非标准依赖。基底声音性、basis4473_complete、末端消费者及 AllHeights.coverage 的实际传递公理都只包含标准 `{propext, Classical.choice, Quot.sound}`。

从真实 import 行独立构造的各根闭包与 evidence 的 source_closure/compile_records 集合完全一致。复用项逐个核对旧 evidence SHA、旧成功模块、源码、imports、对象、日志与原复用对象 SHA；没有采用失败模块或失效开发对象。新编命令为 -j1、-M1280，未见跳过内核参数。

当前 manifest SHA 为 `fdbefe6c9b737713c8b9c602643afa154f49dda4f48bfc4d2f64183fdea728a0`；两根声明 Lean 4.33.1 且实际版本日志 SHA 对应，9 个包的实际记录 HEAD 等于各自 pin、工作区干净。source policy 的实际范围和日志 SHA 亦核对通过；扩展源另作占位、项目公理和 native_decide 检索，未发现命中。

证据指纹：

- 140805Z evidence SHA：`cb225f1dade214ae3cd527a729cf779bcf2167efc139d9f8583968fdf63574b1`；排序的“路径 空格 源SHA 换行”闭包摘要为 `b3b40761be8d90553483a54b369e16d4a26ec2548107a09fbe01be69c4a84d30`。
- 141839Z evidence SHA：`c51f8414e3fa75cb089b0a4577fcfae32d6f59b8c5b709781977dd73dce07ac8`；同规则闭包摘要为 `3c8bdfcfbd9cbb9b6289972627c1ac910836c96f149e5209bf7c5d9b6d501acd`。

## 6. 未解除的扩展边界 E1

**E1：尚缺完整 20m 素数链的具体 Lean 验收，以及无证书真值参数的 185..322 全域消费者和最终 185..999 消费者。** 此项是精确的验收缺口，不是本审查发现的数学反例。

当前接受范围可以分别报告：185..322 的 n≥20m 原题尾部；末端 32 节点提供的 19,994,899≤n≤20m 有限带；以及冻结的 323..999 全域结果。不得把这些成功记录直接标为“815 项全域已接受”。相对于本次核对的扩展片段，尚未覆盖的合法输入可能位于 185≤i≤322、n<19,994,899；其 j 仍须满足 i<j≤n/2。

解除 E1 的最小后续检查：完整具体 `PrimeChain 184 2 20000093`、从中得到所有 n≤20m 的原题消费者，再与已验 AllExtensionHeights 按 n 分支接成扩展全域消费者；最后与旧 323..999 按 i 分支形成原题 815 项声明。核对最终真实 #check 的自然数 n,i,j 全量词、p≥i、没有 hcomplete/hcheck/hchain 等证书真值前提，并验收其完整源闭包和实际传递公理。

复核脚本只读、不到一秒完成，不调用 Lean或生成器。首次运行只因专用样本使用完整命名空间与 raw_height_i 命名而漏识别三行；修正审计解析器后全部检查通过，该诊断不属于数学源码错误。源码、数据或最终证据变化时再更新此结论；本报告不评价完整 B699 或新颖性。

## Primorial GCD 检查器及完整生成链续审：2026-09-09 14:50:37 UTC

本次续审于 14:45:39 UTC 开始；仅向本报告追加，不修改原报告段落、辅助脚本或任何 Lean 源，不运行 Lean。**新 GCD 声音性、具体乘积、512 边已验对象及完整生成链的静态连接均未发现阻断；E1 仍保留到完整最终运行成功。** 原 677 项接受状态继续保留。

### GCD 声音性与实际乘积

[PrimePrimorial.lean](../lean/extension/PrimePrimorial.lean) 第 12–14 行对 p<B 继续调用旧 trialPrimeCheck；其余分支的真实条件为 `2≤p ∧ p<B*B ∧ Nat.gcd p P=1`。第 16–35 行的声音性同时要求完整基底与已证 `ps.prod=P`。若存在 2≤d≤sqrt(p) 且 d∣p，取素因子 q∣d 后仍有 q≤d≤sqrt(p)<B；基底完整性给 q∈ps。第 31–33 行使用 hprod 与 List.dvd_prod 给 q∣P，结合 q∣p 得 q∣gcd(p,P)=1，与 q.Prime 矛盾。没有删去 sqrt 界、严格 p<B²、p≥2 或基底完整性，也不需要把全部 ps 元素为素数作为额外前提。

第 38–55 行 primorialChainCheck 逐个检查每个节点和相邻次序/gap；空尾检查终点。声音性把同一个已证 hcomplete/hprod 传入每一个素性叶子，没有为链尾或小 p 留下未证分支。

[PrimorialData.lean](../lean/extension/primorial/PrimorialData.lean) 第 13 行 P 是 Nat literal；第 15–16 行的 `basis4473_prod_eq : basis4473.prod=primorial4473` 是实际 `decide +kernel` 定理。读取 607 个基底整数后做一次仅 6330 位的乘积核对，结果精确等于该 literal，未做素性重算或高度大整数计算。实际 Lean 日志中此等式 **不依赖任何公理**，不是把外部生成的数值当作额外假设。P 源 SHA 为 `366e45192a051e278294796b5767c71d51374a615b3b964dc39909e2c7b9d111`；通用检查器源 SHA 为 `dfa271b4523a3c18171c7205fd57c36c74a7b1224971a76bc5d4325ab53c6afa`。

### 两个新的实际成功根

| 成功根 | 结束 UTC | 实际闭包 | 新编/复用 | 独立核对 |
|---|---|---:|---:|---|
| [143618Z](../experiments/extension-primorial/verification/20260909T143618Z/evidence.json) | 14:37:06.161282 | 26 | 3 / 23 | 26/26 source/object/log SHA 对应；49 项实际公理输出无异常 |
| [143846Z](../experiments/extension-primorial/verification/20260909T143846Z/evidence.json) | 14:39:05.689728 | 26 | 1 / 25 | 26/26 source/object/log SHA 对应；49 项实际公理输出无异常 |

独立由实际 imports 重建两个闭包，与 compile_records/source_closure 集合一致；逐项读取当前源、实际 .olean 和实际日志并哈希。复用项再次核对 base evidence SHA、旧成功记录、相同源/imports/对象/日志，以及原复用对象的 SHA。实际版本、manifest、9 个 pins、source policy 的范围和日志均对应。新编命令为 -j1、-M1280，无跳过内核参数。声音性、链及原题消费者的传递公理只在标准三项内；完整乘积与单素数布尔真值检查本身的实际公理列表为空。

证据 SHA：143618Z 为 `0b599c13f60c91ed4ae0f5f69722eb813483e96162f1639b6663c11568d408dd`；143846Z 为 `1f987b8a2a726374f4af6c031a3b273043efc19fad4bcd1b4e2920aaf4e48516`。

[End512Primorial.lean](../lean/extension/primorial/End512Primorial.lean) 的实际证明树由 32 个 16 边段组成，每叶明确采用 basis4473_complete、basis4473_prod_eq 和本段 `check`。独立重建后恰为原 20m 输入最后 513 节点，亦即 512 边，首 19,912,523、末 20,000,093。其已验原题消费者覆盖 `185≤i、i<j≤n/2、19,912,523≤n≤20,000,000`，结论仍是 p≥i 整除真实 gcd，无证书真值参数。实际该新文件编译约 11.662 秒；整个 143846Z 验证根时间约 18.807 秒，两者不混记。

### 完整 20m 生成链的独立静态重建

14:50:37 UTC，未使用生成器的 manifest 或其静态 PASS 作为依据，直接解析所有实际生成源与证明引用：

| 项目 | 观测 |
|---|---:|
| blocks/Block000..Block227 | 228 个 |
| groups/Group000..Group014 | 15 个 |
| 具体真值段 | 7,292 个 |
| 16 边段 | 7,291 个 |
| 最后一个段 | 10 边 |
| 最后一个块 | 442 边 |
| 全链节点/边 | 116,667 / 116,666 |
| 首/末节点 | 2 / 20,000,093 |
| 最大相邻差 | 184 |

每个短段的实际证明均是 `primorialChainCheck ...=true := by decide +kernel`，再以匹配的 p/qs/B/P/gap、basis4473_complete、basis4473_prod_eq 和该段 check 调用声音性。每个 trans 的显式 lo/mid/hi 与两侧值精确一致。逐层解析全部块、组和 AllBlocks 后，最终有序节点数组 **逐项等于** 原 zip 的 116,667 节点数组，原输入 SHA 仍为 `a4954fc348879a5bff3bb91e8448f91437bd5220e80a1f1bc4cfb86ca8190414`。不存在缺段、未消费段、终点遗漏或用重复段代替缺项。

228 块＋15 组＋AllBlocks 共 244 源的排序路径/源哈希摘要为 `3189133a183317bbb9d335a1e2c39c863c75171881c17e12e00099894b17e6f3`，审查前后各文件 SHA 不变。这项检查不计算任何链节点的 gcd/素性，也不宣称这些尚未整体编译的具体真值段已经成为 Lean 定理。

[extension/primeChain/Complete.lean](../lean/extension/primeChain/Complete.lean) 以 PrimorialAllBlocks.joined 给出具体 `PrimeChain 184 2 20000093`，再接 `common_le_twenty_million`，其源码声明没有 hchain/hcomplete/hprod/hcheck 等参数。合法条件至少给 n≥372，从而满足链左端 2≤n；n≤20m 严格小于末端 20,000,093。原有 p≤n 的端点约定仍允许 p=n。该文件源 SHA 为 `1eeb11886f1525150b5955d4b2477d6eb557c794ff3fc4a81a7b3115ed5b8e67`。

### ExtendedComplete 的 815 项声明与 E1 当前处置

[ExtendedComplete.lean](../lean/ExtendedComplete.lean) 第 13–20 行的源码声明是：

```lean
∀ {n i j : ℕ}, 185 ≤ i → i ≤ 999 → i < j → j ≤ n / 2 →
  ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j)
```

分段正确：323≤i 时直接使用已接受 common_323_999；否则自然数 i≤322，n≤20m 时采用新的具体全链消费者，其余 n>20m 时采用已经接受的 AllExtensionHeights。185、322、323、999 和 n=20m 均进入相应分支，没有缺口；n,j 保持原题全量词，没有额外真值前提或改动 p≥i。它直接完成所需逻辑连接，无须另行命名一个 185..322 全域定理才能满足任务。

当前该最终源真实导入闭包为 **404 个项目源**，包含上述全部新链、9 个新高度块及旧 43 个高度块；全部旧 677 接受源仍与原 129 项快照一致。404 源的排序路径/源哈希摘要为 `1fa80bcae37c88b3481975ac56c46d607d642a3f22ad48528eed04f940e5a629`。ExtendedComplete 源 SHA 为 `9c66797c1039fa9bab20bd89abeb618f765bddb34665a3ac4033eb872c3f1b37`。

**E1 继续保留，现只待 ExtendedComplete 的完整实际验收根及真实最终 #check/#print axioms 输出。** 源码结构、具体输入完整消费和泛化声音性均已完成本次审查；不能把这一状态写成“815 项已 Lean 通过”。已经验收的扩展有限带提高到 19,912,523≤n≤20m；结合已验无限尾部，剩余未验区域可能在 185≤i≤322、n<19,912,523 的合法输入内。该剩余边界属于当前接受证据，完整生成链的静态通过尚不改变它。
