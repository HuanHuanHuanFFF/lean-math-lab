# (5,7) 最终四层消费者

完整的自有证明文本，尚未运行Lean。先前RateBasis/RateBasisAudit/RATE_FREEZE全部字节保留。最终公开入口是Math.B699.I11FiveSevenFinalConsumers.actual_five_seven_component_edge。

它对所有自然数n仅假设2^15360≤n，得到Xp^1000·((n+1)/2)^352≤n^1000，或Xq^1000·((n+1)/2)^216≤n^1000。Xp/Xq是已验primeComponent定义，分别是5、7在完整choose(n,11)中的全部素数幂，含零指数情形；不是余因子。

RateBasis使用真实固定边的精确N/D，策略为2D^32≤N^32，六块得R^192≥64，再单调到194。M=194，最终大幂保持符号；数值与源码hash见rate-exact-checks。

ActualNumeric先构造八个原始类型证书的And.intro bundle，随后只展开Z/M/Y0别名，再把同一实际类型的证书解包交给FixedEdge，避免巨大幂的defeq展开。
ActualInstance使用正式重冻结的新命名Shared/Tree源：false=δ1，true=δ0，c/d/z/λ及四种weight定义已逐项对齐。旧I11Row02/04文件只作历史材料，不导入。
Component只用一般CeilHalf和实际PrimeWindow：n≥2^15360给20≤n和ceil(n/2)≥2^15359；正余因子窗口允许重合；差正/负/零都涵盖；最后用primeWindow_graph_capacity转成实际组件边。无G、Hom、树、数值、cofactor、window、noCommon或HeightValid的最终外部前提。

22条公开候选定理和3个定义，共25项公理审计。4层实现+4分层Audit+总Audit，共9Lean文件。审计器仅作合成自测，拒绝缺根、sorryAx、额外axiom与编译错误；这不等于Lean验收。独立检查还覆盖n20..200、两个素数的362个真实binomial窗口。

重要的上游状态边界：本包采用主任务确认的正式新名称和固定数学数据，但原冻结Selector仍有主任务发现的集成遗漏。p_base的重复Nat类型标注由主任务在集成副本规范化；FiveSeven另须补已有原始短基7^256≤2^719的basis_seven及audit。它在原冻结Basis中缺声明，而数学不等式已精确检查成立。消费者公开API不变，没有把该遗漏改成额外假设。

SOURCE_MAP/INPUT_SOURCES分别记录原冻结源、主修正后的集成目标、后续实际receipt。不能把原冻结Selector未经修正直接标为可编译接受。这里的imports仍指原实验文件，父任务集成时映射到修复过的lean/I11FiveSevenNumeric及对应Growth/Edge模块，明确不复制旧RowNN。每组Leaves映射到自己的I11FiveSevenLeaves目录，避免冲突。

当前源绑定与正式重冻结所有文件hash一致；目标参数与实际七selector陈述/四树声明已静态逐项核对。独立字符串检查器曾不识别重复的Nat标注，规范化后匹配；它不是Lean运行，也不是形式化语法接受的证据。

下一步由父任务串行验证真实上游修正及本组ActualNumeric/ActualInstance/Component/Audit，绑定实际集成hash与公理日志。此单边组件结果仍不等于完整i11或原B699，原B仍0/19。没有新颖性声明、Lean/Git运行或外部文件改动。
