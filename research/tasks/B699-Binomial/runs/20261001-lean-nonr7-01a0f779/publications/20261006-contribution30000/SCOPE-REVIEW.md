# B699 全部已验收指标的部分贡献包装：只读技术评估

日期：2026-10-06（上海）。具名核验者：`/root/b699_contribution_scope`。任务分类：复杂既定源码、依赖与外部贡献规则审读；模型/努力按 brief 为 Sol/xhigh。来源数学树：`6f73379737e932ed92bcab2b68cc405189ae577e`。Leader 后续换到计划分支，未改变本评估采用的数学源码树。

本轮只读源码、既有签件和固定官方规则，执行静态导入闭包/尺寸/词法扫描；没有编译 Lean、跑证明检查器、下载安装运行时、触发 CI、对外提交或作新数学证明。本报告是包装可行性审读，不是移植验收。

## 结论与锁定目标

用户要求保留完整集合 `S={1,2,11,29}∪[35,30000]`，即 29970 个指标。现行 `research/tasks/B699-Binomial/OVERVIEW.md:33` 与 75 分钟轮 `reviews/CURRENT-SCOPE.json` 明确承认这整个集合。每个指标覆盖所有合法自然数 n/j，结论为同一个实际 `Nat.Prime p`、`i≤p`、`p∣n.choose i` 和 `p∣n.choose j`；n/j 没有上界，没有证书/出版定理/Gap 等额外数学输入。包含 p=i，完整 choose 不被小素数部分或截断幂代替。

需要移植的总目标保持为：

```lean
∀ n i j : ℕ,
  (i = 1 ∨ i = 2 ∨ i = 11 ∨ i = 29 ∨ (35 ≤ i ∧ i ≤ 30000)) →
  i < j → j ≤ n / 2 →
  ∃ p : ℕ, Nat.Prime p ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j
```

现行完整集合来自多个已验收消费者的并集。本评估在对应签件和根源码中没有定位到一份已经验收的上述全 S 总定理：`HuanAllA` 是 151 个单指标定理的统一编译入口，`common_upto_30000` 的下界是 4883。新写总定理或重新包装这些来源，都必须重新验收。

现成源码不能直接提交到 Conjectures.io：完整主要消费者的项目导入闭包去重约 68.6 MB，机械去注释/import/审计输出后仍约 59.9 MB。i=11 和 A151 各自就超单文件 1 MiB 很多；普通拼接、把库放到兄弟文件或压缩包都不能满足独立编译规则。应把本次工作定为**保持全 S 的源码切片和证明表示压缩移植**，可行性尚未实测，不能宣称已能提交。

## 真正消费者与旧验收锚点

以下路径都相对仓库根；全文路径在来源树保持可读。

| 覆盖 | 真正消费者与关键行 | 固定验收/来源 |
|---|---|---|
| i=1、2 | `runs/20260909-large-prime-structure-cb4764f0/lean/GapBridge.lean:96`，`B699LargePrimeStructure.common_small_index`；假设 1≤i、i≤2 和合法 n/j，结论 `Common n i j`。该文件第9行定义 Common 为实际素数≥i整除两 choose 的 gcd。`Nat.gcd_dvd_left/right` 可展开双整除。 | 同 run `verification/20260908T200259Z/evidence.json`：success/exit0，GapBridge 源 SHA `0005d90a062359af36b95c0420440e4ff7c9b4187a6fc319884a286ae6209697`，编译8.203s；`axiom_audit` 的6根包含 common_small_index。`verification/final-source-binding.json`（large-index run）又记录该源与 Git/runtime/current 一致。 |
| i=11 | `runs/20260911-low-index-lean-513dc7cc/lean/HuanI11.lean:8`，`Math.B699.HuanI11.original` → `I11OriginalFinal/Final.lean`；完整 n/j、实际 p≥11 双 choose。 | `verification/huan-accepted/row011.json`：full_original_entry_validated，源 SHA `2d7fbbfc999193092736369d08873f4eb87f2be56dfc0b7984e3a81c042189d4`，source_commit `f0b0cc10fbab9db7133aae9914178caf0b4c587b`；实际 evidence `verification/20260912T102939095897Z/evidence.json`，full chain audit `verification/huan-prerequisites/i11-original-full-chain-audit.json`。 |
| i=29 和 35..184 | 同 low-index run `lean/HuanAllA.lean:155`（original_i029）、`:160`（original_i035）至`:905`（original_i184）。当前采用的是其导入的 Row029J2/Row035J2/Row036T/Row037J32、恢复 Row038..045 与后续具体 Row*B* 消费者，不用旧候选行来替换已验入口。 | `verification/huan-all-a-plan/acceptance.json`：fresh_complete_Lean_verification，151个指标，源 SHA `ec40c37154ae65aa56c393585fdf10aef6e20d0251eaa6aa51dcbb576607d03d`；实际 evidence `verification/20260911T153556686407Z/evidence.json`，1新编+3690复用。`notes/huan-final-handoff-20260912.md:7` 明确 A151 与统一入口通过；源码顶部 candidate/receipt-pending 是保留的旧注释，不覆盖固定成功收据。 |
| 185..999 | `runs/20260909-middle-index-cert-1a78f8cd/lean/ExtendedComplete.lean:13`，`B699Middle.common_185_999`；实际素数≥i整除完整 choose gcd，无证书前提。 | `acceptance-815.md`；`verification/20260909T145049Z/evidence.json`；`verification/final-integrity-815.json`：success，404源，246新编+158复用，标准三公理。README 固定证明源提交 `3f57affefb15c83b0f0deb5e4327d506d00c3178`。当前根源 SHA `9c66797c1039fa9bab20bd89abeb618f765bddb34665a3ac4033eb872c3f1b37`。 |
| 1000..4882 | `runs/20260910-large-index-lean-7c4e2a91/lean/Complete.lean:12`，`common_1000_4882`；`:20` 双整除入口；`lean/Acceptance.lean:7` 的 `B699LargeIndex.original_statement` 为直接原题转录。 | `acceptance.md`；`verification/20260909T185800Z/evidence.json`；`verification/final-source-binding.json`：success，固定 `b9b51897f3c614c9295a7e7527057e2ec86f00bb`；完整391源包括最终 Acceptance alias。当前 Acceptance SHA `cfb1c4a2001f6bd6ff96002e7907ef5d21227614e356986703735028ce556e83`。 |
| 4883..30000 | `runs/20261001-lean-nonr7-01a0f779/continuations/20261004-tail-twohour-finish/supply/Tail30000Legacy.lean:10`，`B699TailFinish20261004.FullInitial.common_upto_30000`；UpperChain 接 Tail15000Legacy，再接 RatioPrimeChain 与 common_of_ratio_tail_endpoint。 | 75分钟轮 `reviews/TAIL30000-INDEPENDENT-ACCEPTED.json`：fixed source `b1de49c08be2850f6e98d4fe9f101e29778cdcdc`，CI `37210857364`，artifact `11306801187`，完整额外数学输入=[]；`TINY-ALL-INDEPENDENT-BINDING.json` 的 freshCompilerBindings[2] 实际 exit0/2.302s、source unchanged/SHA `4cdb9ab952fa003cac7d1a7ead3a5be62aec3a2347a06a3db7604cc0a9e83cbb`。独立 literal `all_upto_30000_exact` 确认所有 Nat n/i/j 与实际同 p 双整除。 |

表中所有 runs 均在 `research/tasks/B699-Binomial/runs/` 下；75分钟轮为该表最后一行 run 内 `continuations/20261005-lean-formal-seventyfive/`。以上读取和当前六入口源哈希核对支持旧签件定位；本轮未重新逐源核查全部历史对象、AX日志或内核执行。正式移植前仍需按固定源重新绑定整个所选闭包。

## 静态闭包与容量

统计方法：从每个根解析 import，去掉 Lean 模块段 `«…»` 引号并映射本仓 `.lean`；递归按路径去重。`import all X` 中 all 是 import 修饰词，不是缺失模块。只统计本项目源字节；Mathlib/Std 等外部允许库不计。第2个字节栏剔除嵌套块注释、行注释、import 行、`#print`/`#check` 起始行，并统一拼接 LF。它是机械清理后尺寸，不是定理级最小切片，也不是任意有效压缩的下界；未删除无关声明、重编码证书或缩短名称。

| 根 | 本项目模块数 | 原始字节 | 去注释/import/审计起始行字节 |
|---|---:|---:|---:|
| HuanAllA（151项） | 3691 | 30,510,686 | 25,725,267 |
| HuanI11 | 1552 | 26,748,818 | 23,059,045 |
| ExtendedComplete（185..999） | 404 | 6,566,014 | 6,377,262 |
| Complete（1000..4882） | 390 | 6,779,660 | 6,603,532 |
| Tail30000Legacy（4883..30000） | 103 | 3,968,727 | 3,901,316 |
| 五根按源码路径去重 | 5812 | 68,622,139 | 59,889,115 |

`Acceptance.lean` 是 Complete 上的682字节转录 alias，若算为指定第4根再多1文件；不改变容量结论。GapBridge 已在五根并集中，不再增加 i=1/2 文件。尾部签件的331旧来源/四fresh及其他提供者对象库存大于本报告103模块，因为验收库存还包含其他已验消费者；这里追的是 Tail30000Legacy 的直接 transitive import 闭包，不把整份库存都认作定理必要源。

所有单个原模块均小于1MiB，但一个独立外部文件必须内联它实际需要的项目声明；这一点不能由“每个本仓模块都小”推导出合规。机械清理后的五根并集约为总4MiB上限的14.3倍；HuanI11 单根约为单文件1MiB上限的22.0倍。Raw导入闭包会保留模块内未用声明，应该先做定理级切片再评估真实剩余空间。

静态去注释后词法扫描：未命中 `sorry`、`admit`、`axiom`、`unsafe`、`native_decide`、`Lean.ofReduceBool`、`IO.`；`maxHeartbeats 0` 命中166处；`maxHeartbeats` 数字设置共2347处；SlimChebyshev 有一处 notation 命中。该词法检查不是正式平台 checker 或传递公理检查，不能证明所有执行行为合规。零预算要移除/改为有限预算，超过1,000,000或元编程/全局attribute等可能转人工审读。

本地资源前置观测：Windows，未观察 cgroup 接口；CIM物理内存/CPU查询拒绝访问，不能据此声称当前可用内存预算。`Environment.ProcessorCount=16`；GC TotalAvailableMemoryBytes=16,851,132,416 只是运行时容量观察，MemoryLoadBytes=0不能当实时物理余量；D可用29,629,595,648B。开始没有 lean/lake 进程输出。静态脚本串行；没有重计算数学证书、编译或触发其他任务。

## 固定官方规则与真正障碍

采用 Leader 固定官方仓 `conjectures-io/conjectures-contribution` main `be220ff2519ecfd61b28ba9e477321e4287ef6b4` 的 `.tools/b699-contribution-policy-20261006/` 普通文件。官方入口：[guidelines](https://github.com/conjectures-io/conjectures-contribution/blob/be220ff2519ecfd61b28ba9e477321e4287ef6b4/guidelines.md)、[pipeline](https://github.com/conjectures-io/conjectures-contribution/blob/be220ff2519ecfd61b28ba9e477321e4287ef6b4/docs/pipeline.md)、[recognition contract](https://github.com/conjectures-io/conjectures-contribution/blob/be220ff2519ecfd61b28ba9e477321e4287ef6b4/contribution-contract.md)、[erdos-699已有贡献](https://github.com/conjectures-io/conjectures-contribution/blob/be220ff2519ecfd61b28ba9e477321e4287ef6b4/contributions/erdos-699/index.md)。

规定摘要：每个 Lean 文件分别在允许库环境编译，不能 import 本仓项目或同目录兄弟文件；平铺最多32 artifacts，每份1MiB，全部4MiB；声明放自有 namespace；禁 sorry/axiom/native_decide/Lean.ofReduceBool/unsafe/IO 等。默认每文件900s/16GiB可配置，不能借用完整解答通道的10MiB/3600s。G6不允许拆同一逻辑单元增加奖励；通过CI只表示可接收，认定和付款另审。

因此：

1. **一个文件直接拼全范围：** 必须保留全部必要声明并压到1MiB，当前未证明可做到；去注释与短namespace不足。
2. **同一贡献里拆多个 .lean：** 每份必须完全自给。可以让各文件分别证明覆盖子集，在 sources 说明并集恰为全S；却不能把证明库拆到 common.lean 再由其他文件 import，也不能靠 siblings 生成一份总定理。共享依赖复制会消耗总4MiB；只改变文件布局没有解决核心障碍。
3. **拆多个贡献/PR：** 独立编译仍在，parents只表达来源而不建立可导入库；不能作为容量/import的自动豁免，不能为奖励重复拆逻辑单元。若最后确需不同数学子件，要明确整体提交计划、必要分界与增量，并保留用户全S最终交付目标。
4. **压缩包/对象/附加数据文件：** 不提供可导入项目环境；不能用IO解压或读取数据补证明。需要嵌在允许的Lean源内、由内核接受的有限证书表达与通用检查定理；候选表示改变后仍需新验收。

固定 `lean-source.json` 当前 derived commit 是 `6a786f997e18e8f095762a2830d191b7e25e505e`，上游base `7d1a8c9912747679d0093f6d1216420c33ee5ffa`，patch SHA `82b0f491dd18c331f12efa722761e46b728e9bb8d643466e9ef8b40dde903023`。该derived tree需按官方脚本从base+patch重建，不能假定上游GitHub可fetch。此前web缓存的8432版本不作为本计划固定源。相同Lean4.33.1并不证明两个mathlib/FormalConjectures接口和导入环境完全相容。

已有e32064贡献是Kummer carry接口与例外三元组。本仓 GapBridge/Cofactor 的部分底层工具与其主题重合；正式 sources 和 parents 应逐声明比较，说明本次新增的是完整指标域的结果，不把复用来源或已知形式化说成原创新发现。

## 推荐全范围路线与下一可执行检查

完整交付合同始终为全S；以下probe仅判断包装方法能否完成这个合同，不是改交付为几个引理。

1. 固定上表六源入口、完整型与旧签件；给每个采用声明建立来源映射。先做**定理级依赖切片**，消除模块中未使用定义、历史消费者、多余 `#print/#check`、旧候选与宽import。保留旧原字节和旧验收，不覆盖它们。
2. 第一probe选 **i=11**：它是不可省去的完整目标内最大单指标容量障碍，1552模块、raw26.75MB，旧验收依赖1055候选区间/4042见证、完整CRT下降与终端归属。先只读切出 `HuanI11.original` 的必要声明和有限证书数据，区分“库证明”与“重复生成的各格证明”，估算重用一个通用内核检查定理、紧凑数据/DAG后能否≤1MiB。若这个probe不能过尺寸门，不能声称全S已具备外部包装路线。
3. 并列备选小成本probe为 Tail30000Legacy 的103模块闭包：静态剔除 SlimChebyshev/Core 中未用声明，追 `common_of_ratio_tail_endpoint` 实际需要的无条件ratio/finite来源和UpperChain证书。它更适合快速验证allowed-import迁移模式，但成功只消除尾部包装障碍，**不能把全范围缩成尾部交付**。
4. 尺寸门通过后才在官方derived环境新编译相应单文件，做literal原题型与拒绝式Std3传递公理审计，测900s/16GiB。在整个全S包实际≤4MiB、每文件≤1MiB、无项目/sibling import并全部新验收前，状态只能是“已验数学来源，外部移植pending”。
5. 最终优先一个贡献目录内完成全S。若经实测多个自给文件更合适，分别声明完整原题域、清楚展示并集与29970分母，并避免重复计功；若做成单文件则加上述总定理。完整移植成功后，才生成 sources/metadata，按实际祖先填parents，并走平台check/promote/submit与签名/奖励配置授权。

当前没有新Lean文件、官方编译结果、平台admissibility/recognition、发布或领取状态。R7、其他低指标及 i>30000 的未覆盖域仍开放；本次全S部分贡献不是原题完整解答。
