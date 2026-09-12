# i11 原1055候选区间的完整终端覆盖候选

完整证明文本，尚未运行Lean。唯一写入本目录，没有修改稳定Chunk、原候选列表、低端扩展桥或任何外部文件。没有Git。原B仍0/19。

## 最终公开接口

模块Assembly.lean，namespace Math.B699.I11TerminalCandidateCoverage。
建议集成短路径lean/I11TerminalCandidateCoverage/Assembly.lean。

common_of_original_candidates {n j : Nat}
  (hmem : B699LowIndex.I11TerminalCover.candidateMem n
    Math.B699.I11TerminalMembership.originalCandidates)
  (hij : 11<j) (hjn : j<=n/2) :
  B699LargePrimeStructure.Common n11j。

另有同前提的prime_of_original_candidates，直接给出存在素数p，11≤p且p整除gcd(choose(n,11),choose(n,j))。不存在额外的总覆盖、candidateIntervalsCheck、witnessesCheck总式或Common假设。

范围精确为originalCandidates的1055项，不改candidates=(0,23)::originalCandidates，也不处理由别的已冻结扩展桥负责的n<24分支。

## 源数据与完整性

原1055区间逐字数值等于旧terminal_certificate_11.json中的candidate_intervals，也等于当前Candidates.lean的originalCandidates。索引0..1054严格按序各出现一次；最后Assembly用纯List NatInterval等式original_candidates_eq正式核验原列表与生成列表完全相等，另有candidate_count=1055。

4042见证全部来自稳定I11TerminalData.Chunk000..252：1699topPrime、2342largeDivisor、1special330。每条manifest declaration、lo/hi/value、wN_check名字及253个Chunk.witnesses列表均与实际源码逐项核对。4042见证恰好各用一次；不依赖主任务正在修正的GroupNNN大Witness列表拼接模块。

首区间[24,4010]需要911见证，拆为57片；special330是Chunk002.w13，确实必需。最后[29294601,29294602]只需Chunk252.w9。删330、删末见证的负例均使相应纯覆盖失败。

## 证明结构与计算边界

Generic定义IntervalSound、IntervalsSound两个Prop谓词。对j的全称量词和Common只出现在Prop中，绝不进入Bool。

每小片最多16见证：
- 整个Chunk恰好匹配时，直接exact已有Chunk.witnesses_check；
- 部分Chunk时，simp only已有wN_check；
- witnesses到纯区间列表的对应由rfl核对边界投影；
- 只对显式List NatInterval的coverCheck作decide，再由已验common_of_cover_checks得到IntervalSound。
没有重新decide任何素性、大因子条件或witnessCheck总式。

首区间先合并57片，Last独立给出末区间。剩余候选每16项一组，共66个Groups模块；私有具体区间证明均在组内实际供给，组的公有IntervalsSound覆盖所有成员。65个平衡追加节点拼出allIntervals，每次指定left/right并用List.append_assoc归一化。仅拼纯NatInterval列表及Prop证明，避免大Witness记录展开。

共有1112个小片，1116处新decide；逐行检查显示它们仅是纯区间coverCheck或原1055列表的相等/长度，未计算witnessCheck。所有索引和值来源在candidate-index-map.json；组内私有proof名只作为源码定位，不冒充外部可调用API。

## 首末试验与审计

首末及Generic先冻结在PROBE_FREEZE，字节至今不变：
GenericAudit；
FirstPieceAudit（只依赖已验Chunk000，给24..137）；
LastAudit；
FirstAudit（完整24..4010）。
首区间各片独立入口FirstPartsAudits/P000..P056；各组入口GroupAudits/G000..G065；最后AssemblyAudit和Audit。

共127个实现模块、209个自有公有root（140定理、69定义）；总Audit再加5个基础root，共214组#check @/#print axioms。所有私有区间证明通过组公有root的传递公理检查覆盖。公理审计器合成自测拒绝缺root、sorryAx、额外axiom和编译错误；不把自测当Lean接受。

局部资源上限为片段8192、组/首16384、Assembly32768；只有1055纯列表相等/计数处使用有限maxRecDepth100000。它们是资源限额，不是数学假设。组源码合计约1.47MB，Assembly约44KB。实际内核时间/内存仍需主任务测量，本代理没有运行Lean。

## 当前证据与下一验收

Python精确检查：1055原列表一致；4042声明/边界/值/检查名一致；每见证只用一次；253Chunk列表一致；所有区间覆盖为真；首末负例拒绝；所有新decide目标满足纯区间边界；先冻结试验未变。脚本不运行素性或大因子检查。

第一次schema读取把特殊kind写成special而不是实际special330，报KeyError后按manifest修正；这是解析器问题，没有数学反例或Lean运行。其余负例都是主动删项检查。

INPUT_SOURCES记录冻结时看到的实际receipt子集；当时仅Chunk000有匹配当前根的接受记录。4042个w_check声明存在不等于都已通过，主任务必须继续全部相关Chunk接受，再验片段/组/Assembly完整闭包。accepted Witness/Cover/Append的源码与旧终端证书都已绑定SHA。

预期如果相关见证检查和本覆盖链通过，原1055候选区间对每个原合法j都得到Common，终端候选区域被全部消去。实际目前只有候选源码、源对应与精确区间诊断，无新Lean接受、无原B计数增加。完整i11仍须与初始高度、CRT候选成员桥及原始最终入口共同验收；不宣称原题已经完成，也不作新颖性声明。
