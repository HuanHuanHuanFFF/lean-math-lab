# B699 完整中高区间的自包含移植

执行者：`/root/b699_contribution_range_tail`；任务分类为复杂既定目标，GPT-6.1 Sol / xhigh。固定来源提交 `a5f7afff0766bf5fee2d72aa9e8ee6a5eb7bda99`，共享分支 `huan/b699-partial-plan-20261006-01a0e34b`。本任务只写本目录与 `.tools/b699-contribution-range-tail-20261006/`；旧数学源码、原签件、依赖 pins 与其他执行者的文件保持各自归属。没有独立提交、推送或外部平台动作。

## 锁定目标与状态

本子任务目标为所有自然数 `n,i,j`，`185≤i≤30000`、`i<j≤n/2` 时，存在同一个实际素数 `p≥i` 整除两个完整的 `n.choose i`、`n.choose j`。包含 `p=i`，n/j 不设上界，无额外数学前提。原题其他指标仍由母实现任务承担；本目录不能单独代表完整 S 已可提交。

当前状态：**静态候选，待固定官方环境编译和独立核验**。本目录的三个 Lean 候选各自内含项目证明，只有允许外部库的 focused imports，没有兄弟文件或本项目 imports：

| 文件 | 完整指标区间 | 静态字节数 | 有限部分与大 n 部分 |
|---|---:|---:|---|
| `Middle185_322.lean` | 185..322 | 442023 | 原184间距链到20000093；原138份 height 条件，n≤20000000 与 n>20000000 合并 |
| `Middle323_999.lean` | 323..999 | 154700 | 原322间距链到2000003；原677份 height 条件，n≤2000000 与 n>2000000 合并 |
| `High1000_30000.lean` | 1000..30000 | 300717 | 现有36行 IC/sieve 接 n≥4096i；小 n 使用gap999链和4095/4096 ratio链、固定终端素数 |

总候选源码897440字节，低于4 MiB；每份低于1 MiB。固定官方 source-only C019/C020/C021 检查实际零error/零review，源码声明数分别148/101/168（每份上限200），见 `SOURCE-POLICY-STRUCTURAL.json`。当前冻结入口为 `FROZEN-DELIVERY-STRUCTURAL.json`；初版compact报告与Frozen记录保留历史范围。该检查不包括完整 contrib check 的作者、签名、奖励地址、metadata、目标与祖先关系。尺寸和源码规则并不证明可编译、资源合格或平台认可。当前每份的量词范围都写在最终消费者中；它们的并集覆盖185..30000。候选文件尚无新的技术接受记录。

## 实际采用的来源与压缩

入口和原签件从父目录 `SCOPE-REVIEW.md`、`SOURCE-ENTRIES.json` 接入。`SOURCE-CLOSURES.json` 冻结本次保守静态 import 库存及当前字节哈希；包含 `public import` 后，Tail30000 的闭包为229份/5406130字节，修正旧报告的103份/3968727字节。185..999为404份/6566014字节；1000..4882为390份/6779660字节，与旧报告吻合。库存不是最小定理切片。

`middle-core-provenance.json` 的静态声明切片选择67份声明、正文34969字节；`tail-core-provenance.json` 选择74份声明、正文51516字节。声明引用分析只是选择近似，还需要 Lean 实际消解隐含依赖。对应 `*-core.lean` 是构造用中间源，不属于最终外部 artifact 集合。

中段保留原始 prime-chain 节点与原4473完整素数基、primorial 字面量、通用 checker 的数学内容，改为 ASCII 差值数据与携带内核检查证明的 `Segment` 列表。每个数值素数链证明仍最多16条边；通用 soundness 和纯数字 adjacency 检查组合整条链。当前185..322链116667个节点、7292段；323..999链10992个节点、687段。原高度五元组逐一留存，改为携带 count 与 RawHeightValid 证明的 HeightRow 列表，由一个整数 coverage 检查统一消费。`STATIC-RECEIPT.json` 的双向解码静态检查确认全部原节点精确保留；这不是素性或 Lean 验收。

高段选择现有通用 `row_common`、窗积/完整素数幂转移、sieve inclusion-exclusion/递归计数的必要声明，使用固定115行中的前36行覆盖1000..31572。每份实际 prime-count 数值条件重新用原 pruned 算法的普通内核计算证明，移除不参与30000目标的高尾分析。有限节点从原20m/184链与原ratio-chain素数声明取出，再按不超过999或4095/4096的边条件稀疏化。新的有限链含4655个节点，从2到4096073；ratio链含14240个节点，从4096073到122879557。源级数字检查只验证边关系；所有素性还须在新候选中核验。

高段最初采用32节点批量 norm_num；环境执行者的真实 probe 在1024MiB cap触发 memory exception，28秒、采样峰值1093693440字节、最低物理余量471207936字节。该结果否定此本机预算下的批量表示，不是否定素性命题。当前改为通用平方根除数判据与 factorial gcd checker：`B=11086`，固定 `F=11085!` 字面量在内核验证一次；p<B采用完整trial checker，p≥B由 `p<B²` 与 `gcd(p,F)=1` 排除所有可能的平方根素因子，使用标准 `Prime.dvd_factorial`。每个Part含32节点的普通内核 Bool 检查，代替大素数 norm_num；没有反射 oracle 或未证素性输入。新 route 的 F 等式、数字 checker 和完整消费者仍待实测。

`MIDDLE-CANDIDATES.json`、`HIGH-CANDIDATE.json` 记录每个候选的哈希、准确目标、原定理/数据源路径与哈希、命名映射和构造。生成脚本在专属 `.tools` 中，不是提交产物。原字节并未覆盖。

## 接续与资源

此次工作的预期作用是解除185..30000既有完整结果的外部源码包装障碍，**不会新增数学覆盖**。尚未覆盖的低指标与 `i>30000` 无界域仍由现行题目总览描述；本任务不新攻 R7。

最先可证伪检查已实测：`SieveProbe.lean`（31572行 pruned count，仅导入 Init）exit0、2.056秒、axioms空、采样峰值277.3MB；`PrimeProbe.lean` 的 norm_num32节点批量在1024MiB参数下资源失败。记录在父目录环境区，源固定、采样报告与日志均保留。

随后Codec原生小probe发生严重资源超预算，owned过程采样峰值6362652672字节、无阶段输出；owner确认进程归属后停止自己的进程。真实 argv 有 `--memory=256`，但没有OS RSS硬杀保护，不能从该参数保证系统内存上限。诊断与原字节见 `verification/CODEC-DIAGNOSTIC.md`、`verification/codec-init-01.json`、`verification/codec-init-01-source.lean`。失败的确切 elaboration/termination/kernel reduction 层尚未知；Root要求静态降低自动termination风险，两个decoder已改显式结构递归，尚未编译接受。

下一检查点改为 Linux固定环境与OS硬内存限制下的 `CodecStructuralProbe.lean`，然后 `FactorialProbe.lean`、`GcdProbe.lean`、核心切片与三份实际消费者。本机wrapper已禁止继续native证明执行；Linux实际反馈后才修下一份固定源码。probe 成功不替代完整消费者、公理审计、官方限制或独立 source/object 绑定。

初始资源观察：CIM内存查询拒绝访问，未把零读数当可用内存；D可用27.41GiB，未见Lean/Lake进程。ProcessorCount16与GC容量16851132416字节仅为运行时容量观测。环境执行者随后以GlobalMemoryStatusEx测得物理可用约2GiB，并实测缓存工具进程树约947MiB、Basic基线编译峰值810.5MiB；因此本任务静态工作期间不并发下载或重Lean。当前无用户总时限，未设置任意结束时间；代表性性能、完整编译与独立核验是下一检查点。

余下义务：实际固定环境编译；修正任何隐含依赖/语法/数值检查故障；绑定 literal 原题型；拒绝式 Std3 传递公理检查；普通内核/资源成本；由父任务委派独立核验；和低指标任务并集、总包与政策复验。不能在这些完成之前把本目录标作可提交。
