# 当前赏金目录与公开推进盘点

负责：recurrence_screen，复杂只读资料盘点，Sol / xhigh。观察日期：2026-10-05。仅写本目录的 CATALOG.json 与本文件；未运行证明、编译、证书或公理审计。

## 目录分母与观察版本

- [平台目录](https://conjectures.io/problems)与官方 `/v1/catalog/conjectures` 的 3 页结果精确匹配 **277 个唯一目标**，含 **257 个当前展示主赏金的 Open 目标**、**20 个 ALREADY_SOLVED 目标**。页面、API、JSON 的计数按精确变体，不按题号或 prove/refute 方向。
- Erdős 目标 238 个，涉及 205 个原题号；Green 6 个；其他 33 个。
- 当前 pinned FormalConjectures：`6a786f997e18e8f095762a2830d191b7e25e505e`；mathlib `0df444a360eaa60ab8c11dca51a86af692955474`；Lean `v4.33.1`。本轮未下载、编译或接受该工具链。
- API 的 `is_open` 全为 true，meta 的 `open_conjectures` 也为 277；它们保留原 pool 分类。当前关闭与奖金状态须用 `bounty.available / reason`，不能把前两个字段当成支付状态。
- **257 是展示可用赏金的分母，不是 257 个已完成人工资格调查的目标。** 70、252 的真实拒奖记录说明，网页继续挂牌不等于相同公开证明还能领取主奖。
- 原 HTML 4.05 MB 缓存在 D 盘 `.tools/target-survey/recurrence-inventory/`。React streaming 槽导致初版 HTML 价格不完整，已全部由官方 API 替换；最终 JSON 不使用临时价格计数。
- 3 页 API 同 source commit；每页报价是各自分钟级快照。完整源 URL、观察 UTC、字节数与 SHA256 逐项保存在 [CATALOG.json](CATALOG.json) 的 `sources` 中。不要将报价当作未来锁定金额。

## 本轮覆盖到哪里

| 检查 | 分子 / 分母与边界 |
|---|---|
| 目录 URL 与实时状态 | 277/277 |
| 六类索引的存在性对应 | 277/277；匹配的是记录存在性，不是数学接受 |
| teorth 当前题号级数据库 | 238 个 target 命中；变体不得继承原题 solved 状态 |
| GPT-Erdos 公开解答目录 | 原库 676 个题号目录；当前 target 命中 232 个 |
| Nexus 原成功与尝试索引 | 9 个成功 theorem；与当前声明名完全相同的成功命中 0，尝试命中 161；未重新验语义等价 |
| FME 官方选择索引 | 68 个 statement；与当前声明名完全相同的命中 32；未重新验跨版本语义等价 |
| 官方公开贡献 | 全部 96 条 / 83 个 target（含退池）；当前目录 74 个 target 有贡献 |
| 官方公开提交 feed | 39 条，next_cursor=null，当前 27 个 target 命中；没有下载未批准证明 |
| 重点范围注释 | 下表 15 个 target；不是 257 个目标的全论文语义审查 |
| 新证明检查或编译 | 0；本轮无数学接受结论 |

公开提交状态：26 条 VERIFIED / APPROVED / REWARDED；6 条 VERIFIED / REJECTED / INELIGIBLE；1 条 VERIFIED / UNREVIEWED / INELIGIBLE（579）；1 条 UNVERIFIED / UNREVIEWED；5 条 REJECTED / UNREVIEWED。26 条已支付 submission 不等于 26 个不同 current target。

贡献 API 的 meta `stale=true`、镜像抓取时间 2026-09-30，必须显示这个限制。本轮另行从 GitHub 读取 current HEAD，仍为 `be220ff2519ecfd61b28ba9e477321e4287ef6b4`（commit 2026-09-28），与 API 镜像一致；并非凭旧镜像推断没有更新。公开 pending 仅 617 与一个 docs PR；701 的贡献/PR/提交索引没有命中。这只是限定公开索引查重，不排除私有或未发布工作。

teorth `data/problems.yaml` 已固定到 `b916d95cdfd41a6d2f21aa304515834e84f247c9`（2026-09-28），并与首次下载逐字节匹配。唯一题号级“已解且当前挂牌”命中是 126，精读源码后淘汰：已解的是下侧增长，挂牌的是上侧小 o。GPT-Erdos 的新证明 281/397/652、精确文献 591/847/1129/1130 没有形成当前目录同一主目标捷径。Nexus 的 138-difference 与 FME 的 126-main 也不能迁移成当前同题号变体的闭合。

## 当前生效资格规则

本轮直接 GET [LIVE submission-terms](https://conjectures.io/v1/catalog/submission-terms)：版本 **v6**，生效日 **2026-09-11**，manual policy **v3**；`body_md` 与原仓库 [SUBMISSION_TERMS.md](https://github.com/conjectures-io/conjectures-validator/blob/main/docs/SUBMISSION_TERMS.md) 的本轮快照完全相同。[详细人工审核规则](https://github.com/conjectures-io/conjectures-validator/blob/main/docs/MANUAL_REVIEW_CRITERIA.md)

- **NOT_NOVEL** 有两条：结果已在 exact pinned environment 中；或提交被接受前，带公开日期的来源已解决同一 direct mathematical problem，且该提交 substantially implements 该来源针对 exact target 的方案。后一条须同时给日期、精确 target 对应、distinctive argument 与提交的具体对应。相同结论、标准库调用或常规策略本身不足；日期/target/correspondence 存在真正不确定时该理由不适用。
- **PRIOR_EXTERNAL_FORMALIZATION** 要求提交被接受前已公开记录同一 reward target 的完整外部形式化，且有可检查 artifact、statement、certificate 或 target-specific record。仅宣布“某论文已形式化”不足。纸面结果应按上面的 NOT_NOVEL 条件分析。
- 人工规则要求发现 qualifying prior public solution 后暂停或退掉 affected task。但资格裁定与网页/API 退休是不同记录；不能用挂牌金额反推合格，也不能仅用 FAQ 简句断言任何不同新证明必合格或必不合格。
- 因此，“同 statement 的原创不同证明是否还能领取”须按 exact source-to-submission correspondence 和外部形式化事实判断；本轮没有待提交 artifact，不能替平台预先保证资格。701 暂列“外部完整纸面证明声明 / 资格冲突需审”，不当作领奖建议。
- 已有完整外部 formal proof 与数学已解但没有 formal proof 的情形不同。下表的 70、252 是官方实际拒奖记录，可用于检验解释；不是个人推测。

## 15 项值得技术审读或明确淘汰的对应

下表里的“贡献给出”是官方发布 title / declaration 索引的范围，不表示本任务独立检查了证明。消费者、转录和 full-target acceptance 应交给具名数学/形式化任务。

| 目标 | 判断 | 原公开范围与日期 | 仍有的全目标差距 / 无界参数 | 来源 |
|---|---|---|---|---|
| [Erdős problem 701](https://conjectures.io/problems/erdos701-erdos-701) | 新增完整纸面证明声明；资格冲突，暂不主奖推荐 | 2026-09-23 arXiv:2609.28404 原作者声称完整 Chvátal 证明。当前 FC main 只给题面和 sorry。API 贡献为 0，公开提交无 701，贡献仓库 current HEAD 与镜像一致，701 PR 搜索无命中。 | 任意有限底集与任意下闭集族；完整 Lean 与题面对应尚未验收。 | [原始来源](https://arxiv.org/abs/2609.28404) |
| [Erdős problem 126 - is Little O](https://conjectures.io/problems/erdos126-erdos-126-variants-islittleo) | 负面：题号已解不等于挂牌变体已解 | 数据库原题已解及 FME 解答证明 f(n)/log n→∞；当前 source 明确把 isLittleO 继续标 research open。 | f(n)=o(n/log n) 的全 n 渐近上界仍缺。 | [原始来源](https://github.com/google-deepmind/formal-conjectures/blob/main/FormalConjectures/ErdosProblems/126.lean) |
| [Erdős problem 70 - omega times two four](https://conjectures.io/problems/erdos70-erdos-70-variants-omega-times-two-four) | 负面：真实 NOT_NOVEL 拒奖先例 | 2026-09-21 机械 VERIFIED，2026-09-22 人工 REJECTED / NOT_NOVEL；公开理由锁定 Milner–Prikry 1991 的完整结果和提交证明的具体对应。 | 数学结论已有来源；改变形式化语言不自动建立奖励资格。 | [原始来源](https://conjectures.io/results/81f38614-217d-4eef-aadf-d3fd9d62a8d0) |
| [Erdős problem 252](https://conjectures.io/problems/erdos252-erdos-252) | 负面：此前完整外部 Lean 证明 | 2026-09-16 机械 VERIFIED，但人工 REJECTED / PRIOR_EXTERNAL_FORMALIZATION。公开决定链接 2026-09-13 固定 commit 的全 k Lean 证明及 Statement 审计。 | 同一完整 reward target 已有外部形式化；此轮不重放该证明。 | [原始来源](https://github.com/tokengr1nder/Erdos252/blob/dc071aafce41bbae41caf4c015499db6dafafd11/Erdos252/Solution.lean) |
| [Erdős problem 579](https://conjectures.io/problems/erdos579-erdos-579) | 注意：已有公开待审机械通过记录 | 2026-10-03 VERIFIED / UNREVIEWED / INELIGIBLE；solution_available=false。不可把这行当作数学已接受，也不可声称没人推进。 | 全 δ>0、充分大 n 的八面体自由图线性独立集结论；提交具体方案未公开。 | [原始来源](https://conjectures.io/results/e4934265-aa96-4bf5-a3c0-d01153dfcfaa) |
| [Erdős problem 396](https://conjectures.io/problems/erdos396-erdos-396) | 优先交技术任务审适用性 | 2026-09-28 最新贡献题名是 Adjacent quadratic rows with simultaneous prime-valuation bounds。元数据仅说明局部工具；全 k 闭合必须读源码另验。 | 全 k 及其消费者的全参数桥接，本盘点没有接受其完整性。 | [原始来源](https://github.com/conjectures-io/conjectures-contribution/tree/main/contributions/erdos-396/71f4268abc7293aa3044550c84fe871ab8e8722bb7e128bafd7d5ff04ed941ad) |
| [Erdős problem 949](https://conjectures.io/problems/erdos949-erdos-949) | 可深入：结构路线的真实剩余条件 | 2026-09-23 贡献给一般 Zorn criterion，并解决 #S<c、S 有上/下界、span_Q S≠⊤ 的情形。 | 任意和自由 S 的全体量词；未覆盖的无界、基数 continuum、满 Q-span 情形须审查。 | [原始来源](https://github.com/conjectures-io/conjectures-contribution/tree/main/contributions/erdos-949/7dec15a5cf8f5124b5fa189b39ea2e2abedef944c294b3e30336c02d52b5154e) |
| [Erdős problem 263 - part i](https://conjectures.io/problems/erdos263-erdos-263-parts-i) | 可深入：明确的反向障碍 | 2026-09-23 bounded-tail case：若有理和则整数 tails 无界；不是原全目标。 | 没有 bounded-tail 假设的无界尾部。 | [原始来源](https://github.com/conjectures-io/conjectures-contribution/tree/main/contributions/erdos-263-parts-i/301ede54adb5a4ea72a07d77dcffea4558ec32c338c1dcf17670898c1c7b9549) |
| [Erdős problem 274 - herzog schonheim](https://conjectures.io/problems/erdos274-herzog-schonheim) | 可深入：群论归约，非已解捷径 | 2026-09-19 贡献为有限商归约及最大指数重数；GPT-Erdos 的题号级 hidden-constraints 分类不能替代同变体证明。 | 任意群、任意有限陪集分拆及所有子群指数。 | [原始来源](https://github.com/conjectures-io/conjectures-contribution/tree/main/contributions/erdos-274-herzog-schonheim/feeec3ed631b64049fa79b960ba84324abc0737349a50c9846c9a2b7db80a28d) |
| [Erdős problem 617](https://conjectures.io/problems/erdos617-erdos-617) | 可深入：有未合入五色情况 PR | 2026-09-19 已有 partition stability/minimum-hole/surplus 贡献；pending PR 129 标 sparse minimal cores and five-colour case。 | 完整目标 r≥3；五色情况不覆盖所有 r。 | [原始来源](https://github.com/conjectures-io/conjectures-contribution/pull/129) |
| [Erdős problem 835](https://conjectures.io/problems/erdos835-erdos-835) | 可深入：参数归约而非有限化 | 2026-09-19 贡献为 local color counts and reduction to prime parameters。 | 所有未排除的素数参数仍无界；有限色表不足以闭合存在目标。 | [原始来源](https://github.com/conjectures-io/conjectures-contribution/tree/main/contributions/erdos-835/9994ae3dd648c3afdf6720b630793195cc2c9e3e0e90f7f2727b473922c66cdb) |
| [Erdős problem 463](https://conjectures.io/problems/erdos463-erdos-463) | 可深入：limsup 与最终趋于无穷的区别 | 2026-09-09 贡献给 erdos463 iff reach(n)→∞、reach 无界及单个精确证书。 | reach(n) 无界不蕴含 reach(n)→∞；全充分大 n 仍缺。 | [原始来源](https://github.com/conjectures-io/conjectures-contribution/tree/main/contributions/erdos-463/5a7b35d0ea4d347cddddafaefa20a93399264501d210ea8c194b169c2e5878ab) |
| [Erdős problem 1106 - part ii](https://conjectures.io/problems/erdos1106-erdos-1106-parts-ii) | 负面：弱下界未达到主目标 | 2026-09-08 贡献的题名列 F(n)≥2 与 partition-function API / smooth-number counting bound。 | 主目标 F(n)>n 的充分大 n 结论仍无界。 | [原始来源](https://github.com/conjectures-io/conjectures-contribution/tree/main/contributions/erdos-1106-parts-ii/a8cb99e5ad8f73b29afd6a9571267083938dc79e884f43aaba6e2a036bd7308c) |
| [Erdős problem 138](https://conjectures.io/problems/erdos138-erdos-138) | 负面：Nexus 成功的是其他变体 | Nexus 原仓库仅有 erdos_138.variants.difference 成功证明；当前挂牌是原增长目标，精确 theorem name 不同。 | W(k)^(1/k)→∞ 的全 k 渐近结论。 | [原始来源](https://github.com/google-deepmind/alphaproof-nexus-results/blob/main/APNOutputs/ErdosProblems/erdos_138.variants.difference.lean) |
| [Erdős problem 120](https://conjectures.io/problems/erdos120-erdos-120) | 可深入：有限情形工具尚非全目标 | 2026-09-08 贡献题名说明 Steinhaus finite case 及 equivalence reduction；不应把有限族消费者替代整个挂牌目标。 | 一般无限/测度对象的原量词；需读对应源码确定归约尚缺的前置。 | [原始来源](https://github.com/conjectures-io/conjectures-contribution/tree/main/contributions/erdos-120/fe97732c4b5cde8dacd052952675b7e0064cd82956d884a4dca1523db5eb42ba) |

## 继续入口与限制

1. 先对 396、949、274、617、835、463 等结构贡献做 exact consumer 审计，判断是否确实减少主目标的无界前沿。不要用贡献数、lemma 数或 finite-case 个数代替全目标推进。
2. 701 若研究价值值得保留，可审读新论文及完整 Lean 路线；完整 paper-to-Lean 工程与主赏金资格分开记录。
3. 277 个 target 的 statement、URL、领域、状态、来源 theorem、公开贡献与提交匹配都在 CATALOG.json 中。任何后续搜索须报告所审 target / 当前 257 的覆盖，不使用“全网无人做”之类结论。
4. upstream pinned 701 raw source 本轮返回 404，当前 main 源码是另一只读快照；API exact statement 与 pins 已保存，不能把 current main 的文件哈希冒充 pinned 文件哈希。

运行观测：D 盘当时可用约 17.18 GB，16 个逻辑处理器；CIM 内存检查被权限拒绝，没有把不可观测内存写成 0，也没有启动构建。43 个现有 node 进程合计约 983 MiB working set，仅用于这次观测，不作为永久机器规格。未移动、删除或干预其他任务的进程和文件。
