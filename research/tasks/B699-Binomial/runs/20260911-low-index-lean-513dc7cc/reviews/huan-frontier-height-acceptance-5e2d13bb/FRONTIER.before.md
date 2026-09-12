# 当前 frontier：huan 接续

## 当前检查点（2026-09-12T01:04:30.678738+00:00）

完整原题计数仍以 [target-status.json](target-status.json) 为唯一来源：**A 151项及统一消费者已验收；B 0/19**。最终 i11 入口的源级审查保留无界 n、j 和 p≥11，但还没有完整原题验收。

- 初始高度链：五组实际增长树全部通过，五条实际组件边已有四条通过。ThreeTwo 的 δ0 实际初值及完整审计已在1536MiB通过；δ1、双cap、最后组件边和初始15360/109界正在v24逐层验收。不得提前使用未验的初始高度结论。
- 指数块压缩：387块、8127个位移检查及实际立方桥已验，当前结论仍以初始 n<2^15360 为前提。缺口是把上述初始高度证明接通。
- 有限下降：第一张完整 Stage00 pair23 表（108×68=7344格、154224个位移检查、14块拼接）已验。其余23张下降表、四级合成终点仍待验。完整CRT通用逻辑与数值元数据已验，不能据此算作所有表通过。
- 终端：首批8个区间片段及首尾/最大数值样例已验；1055区间的全覆盖和六张完整会员表仍待验。4042个见证和完整原题入口已经备齐源码，源码不是接受结果。
- 下一步：完成δ1和双cap，验收实际ThreeTwo边与初始高度；再接全量下降和终端证书，最后对原题入口做完整fresh审计。仅在该审计通过后更新B中的11。

当前进程与源绑定计划见 [huan-live-process-state.json](notes/huan-live-process-state.json)；详细检查点见 [huan-resumed-checkpoint-v24.json](notes/huan-resumed-checkpoint-v24.json) 和 [本轮持续记录](notes/huan-resumed-checkpoint-20260912.md)。数值归约修复及失败边界见 [初值分层路线](notes/huan-staged-initial-e-route.md)。声明对照见 [原题接口复核](experiments/huan-i11-original-interface-review-5e2d13bb/REPORT.md)；24张表拼接的静态范围检查见 [composer复核](experiments/huan-crt-composer-interface-review-5e2d13bb/REPORT.md)，二者均不能替代Lean验收。

所有重型Lean保持串行；工作者只在各自实验目录准备源码或做只读检查。压缩/去重仅针对本run对象，全部内容、路径和证据保留；较大压缩计划仍未执行。本轮继续本地工作，提交/推送没有重试，明确发布授权仍待回复。尚未作新颖性认定，也未解决整个B699。

## 历史检查点（以下保留原记录，不代表当前状态）


本轮接收基线9d4228e3ed0de4bb6b8e555ca59af3f53d578c67，沿用20260911-low-index-lean-513dc7cc。本run的[逐项状态](target-status.json)是当前接受集合的唯一计数来源；新增完整行的固定证据在verification/huan-accepted/，串行执行检查点在verification/huan-batch-*/state.json。执行及文件归属见notes/huan-execution-5e2d13bb.md，VPS历史快照见notes/frontier-vps-9d4228e.md。

## 锁定的完整目标

对每个目标i，证明全部自然数n,j满足1≤i<j≤n/2时，存在素数p≥i同时整除Nat.choose n i和Nat.choose n j。保留p=i与完整素数幂；D=V仅在noCommon分支采用。

阶段A固定集合{29}∪{35,…,184}共151项。接收检查点的12项为29及35–45，后续新增任务为46–184；已接受者从待办中移除，但失败项保留。阶段B固定集合{11,13,16,17,18,19,21,22,23,24,25,26,27,28,30,31,32,33,34}共19项，尚无本轮Lean完整接受。

每个完整行的Lean验收消除该固定i的全部未形式化n,j范围。这里主要补齐已有纸面/有限证书的形式化；行数不是原题解决率，不据此声称新的纸面数学或完整解决B699。其余小指标与i≥4883等Lean缺口仍在本轮目标之外。

## 已建立的可复用链

- 38–45原字节、22个上游、计划、日志与CI摘要已接收；本机统一消费者通过，见verification/20260911T010452070959Z/evidence.json。接收历史8项不新增计功。
- Windows最小导入、九包pin/clean与共享26源已通过，见verification/20260911T004440769454Z/evidence.json；跨平台纯olean消费另见verification/20260911T005623481788Z/evidence.json。
- Row046的完整common_i046已通过，30个新模块、25个哈希绑定复用对象、std3；422.805秒，采样进程树峰值1391960064字节。见verification/huan-accepted/row046.json。
- 原239模块候选、首次长路径失败、较短路径的8源合并版分别保留；固定checker与原始数学声明未改。后续由generate_huan_row.py、bundle_huan_row.py、verify_huan.py和continue_huan_phase_a.py逐行执行。

## 当前路线和下个决定

当前可复用前置、i11有限计划、实际失败与发布边界见[最新检查点](notes/huan-current-checkpoint.md)。它链接真实收据；B完整原题仍为0/19。

A固定151项现已逐项通过，46–184没有缺项；历史29、35、36、37本机对象现全部补齐，全部151个原题接口已由HuanAllA统一Lean验收。逐项完整原题的接受与统一消费状态分开登记。对象先核对源/输出/日志哈希，再用不可变硬链接或字节复制复用。资源不足返回调整，数学或工具失败留在对应行，不以删项结束阶段A。单命令900秒是诊断限额，不是本轮总时限。

阶段B先反向列依赖，出版前置不能以假设接口或新axiom代替。i18原稿theta误差有十倍来源差异；第一核验者在材料所属run新增reviews/huan-i18-5e2d13bb修复，第二位独立核验者在本run的reviews/huan-i18-correction-second-5e2d13bb审读。原件保留，更正版本单独采用；未形成i18的Lean验收。

已有三个本机提交；后续本机commit及push均已被自动审批拒绝，要求用户明确授权指定仓库/分支的提交与这批源码、日志、证据外传。已提问并等待答复，不以其他工具绕过；远端未更新。源码、验收、纸面修正、AI审读、人审、新颖性与发布状态分别登记。


## 接续：立方小余因子与指数块（2026-09-11T14:17:20.724056+00:00）

历史37已获新的本机完整对象包收据；35/36/37现均收口，29仍待本机对象包，A统一消费者未验收。A逐项仍151，B完整原题仍0/19，不新增计功。

当前B优先级采用用户新交接建议：先把实际i11 noCommon接到两个立方小余因子，再验收一个真实指数块的完整消费者，包含正负及零位移、指数下端、全部21项数值检查与篡改拒绝。主任务继续A历史29和统一入口；两个数学子任务分别负责立方桥与通用块定理，支持子任务负责一个实际块的独立精确数据。各自独占实验目录，主任务串行编译。

固定报告已由GitHub连接器按commit5c37f257401952ed85ddd104de8e56a4f2024031取得，并与本地15289字符逐字一致，SHA及来源见[采用记录](notes/huan-resumed-cubic-adoption.json)。预期变化是打通一种可以统一消去大指数范围的证书接口；实际覆盖在完整桥、范围连接与高度前置通过前保持不变。旧2^109只在纸面链及旧2^4096初始范围内，不能升格为当前Lean结果。新ProC R2包提供较轻共同因子接口，已做211项清单字节核对，数学及Lean状态单独保留在外部材料接收记录。

20分钟只作子任务检查点，本轮无总时限。新的立方路线准备过程中物理可用内存低于1GiB，历史29编译暂缓；不关闭其他任务进程，也不降低固定内存余量门禁。


### 实际闭环更新 2026-09-11T14:47:51.583724+00:00

通用指数块与第一个真实块消费者已完整Lean通过（5新2复用，40.286秒）；前置核心数值和通用算术分别已成功。完整声明、SHA、成本与尚缺依赖见[立方路线状态](notes/huan-cubic-route-status.md)。该局部闭环是接口验收，未形成新的B原题指标，未证明2^109或2^15360。


### 实际立方桥与历史29收口 2026-09-11T15:39:29.890711+00:00

原字节ActualCubic三源首轮Lean通过：n>=2^98且原题noCommon推出两个不同小素数的实际完整binomial素数幂、两个允许同位置的窗口与两份立方小余因子。收据[i11-actual-cubic-bridge](verification/huan-prerequisites/i11-actual-cubic-bridge.json)绑定27.107秒、3新18复用及std3。与已验块消费者可连接；连续六对、初始高度及CRT末端仍待完成，B保持0/19。

历史29使用逐模块预算完整通过31新23复用，源与原题未改，见[收据](verification/huan-historical-accepted/row029.json)。AllA manifest已刷新为四历史receipt_verified；首轮统一验收0新编译3690复用，因可用物理内存约1895MiB低于1536+512门槛停止，不作统一接受。正使用更多预备余量及既有30秒等待重试，审核规则未放宽。


### 阶段A统一完成 2026-09-11T15:42:23.684520+00:00

151个完整原题包装声明一起通过，1新3690复用，38.821秒，全部传递公理std3以内。见[统一验收报告](notes/huan-stage-a-unified-acceptance.md)及[收据](verification/huan-all-a-plan/acceptance.json)。此前编译前内存门禁失败仅保留为过程记录，当前统一状态已由成功证据覆盖。B保持0/19，继续既定立方覆盖及实际Padé初始高度链。

## 2026-09-11T18:12:01.554314+00:00 compressed CRT discriminating probe

Exact computation only, not a new Lean result: `experiments/huan-i11-crt-descent-probe-5e2d13bb/REPORT.md` records all 770427 signed checks over six prime pairs and positive exponents. With source K and explicit H/M certificate, the conditional heights descend 2^109 -> 1458309064184540964 -> 304531636235 -> 207734386 -> 29294603, then stall. Every output also includes n<=M and n<110. Per-pair cofactor caps retain the input height.

Expected reduction if every missing bridge and certificate is accepted: i11 remaining n<=29294602. Actual global original frontier remains unchanged: initial height, numerical grid consumer/acceptance, and finite terminal original coverage remain missing. Do not extrapolate the old direct15360-bit search cost to this compressed109-bit stage.

Pending fresh verification: `notes/huan-b-proof-queue-plan-v3.json` (26 jobs) and `notes/huan-crt-proof-queue-plan.json` (7 jobs). The latter includes the frozen D=3 (2,5) prefix, preserving 3^(2u+1); exact imported provenance is in `verification/huan-candidate-integrations/i11-two-five-prefix.json`. Active heavy Lean remains the cubic numerical queue only.

Terminal probe update 2026-09-11T18:21:52.184552+00:00: all positive CRT parameters and n-window positions at H=29294603/M=500 were enumerated exactly (47136 solutions, 203522 positions, 11690 unique n). Actual U and K*n^37<=(2*11!)^11*U^11 leave only 730,1030,1032,1380 above500. Small n<=500 remains. This is computational evidence only; no global Lean frontier reduction and B remains0/19. Old terminal certificate already contains full common-prime witnesses on all12167 rows; small witness pilots are being prepared for direct accepted-consumer reuse.

2026-09-11T18:25:41.129647+00:00: **Accepted actual numerical compression** `notes/huan-i11-concrete-compression-acceptance.json`. Under original11<j,j<=n/2,not Common and initial n<2^15360, the actual 387 block certificates now prove n<2^109. Six numeric premises are discharged. Source/root evidence20260911T182133767665Z:1 new68reuse,std3. The actual global frontier is still blocked by the unproved initial height and subsequent CRT/terminal connections; B0/19.

2026-09-11T19:11:41.621768+00:00: accepted six actual prerequisites; exact records in notes/huan-crt-and-two-five-accepted-checkpoint.json. The (2,5) D=3 actual Hom/scaling prefix and all four G tracks for both delta and every m>=141 now have complete fresh Lean acceptance. Special n330 is proved for every one of154 legal j through two mod-certificate intervals; this is one finite original row, not a B index. Actual strict U lower and bounded-window algebra accepted. CRT complete parameterization/product selector need their small prepared fixes; six terminal witness pilot hit M1280 memory and now reuses accepted square-root prime checks. Initial height, full CRT grids and terminal coverage are still missing; B0/19.

2026-09-11T19:55:55.328170+00:00: **Actual initial-height graph edge (5,3) accepted**. Full source alignment, all actual G/Q/E/selector/tree inputs supplied; only domain n>=2^15360 remains. `notes/huan-i11-five-three-actual-edge-acceptance.md` and receipt i11-five-three-actual-component-edge give exact claim/evidence. First complete CRT Cell/Grid/height-cap source and real (3^22,7^12)21-displacement sample also accepted; all numeric grids still absent. Actual two-five trees accepted separately. B0/19, initial height not yet proved.

2026-09-11T20:17:55.714197+00:00: next G route prepared for(7,2),c9d5,all m>=224. A generic adjacent rationalDivisor identity can supply both deltas from the delta0 lower bound, also relevant to(23,15)/(11,7). Exact probe630 cases supports it; actual G monotonicity has counterexample u2,r0 (G upper3 vsadjacent1). Only D1>=D0 is used, then actual G1>=D1. Source packet/report preserved and11 files imported tolean/I11DivisorSevenTwo; no Lean acceptance yet.


## 2026-09-12 continued: second actual edge and complete CRT consumer

- Actual (2,5) edge accepted, including all four actual growth trees, seven selector bounds and the rate certificate. Weights 248/252; sole remaining mathematical domain assumption is n >= 2^15360. ComponentAudit evidence 20260911T201605253862Z (2 new, 66 reused; 19.716 s); full 22-root audit 20260911T201654987698Z (1 new, 67 reused; 9.212 s). Standard axioms only.
- Together with accepted (5,3), this closes 2 of 5 initial-height edges. This is a dependency count, not a completion percentage. Three actual edges and weighted-product tail contradiction still remain.
- Complete six-pair CRT step and actual-window consumer are accepted. Five-stage numerical metadata and four numerical pilot grids are accepted; the first full numerical pair is not yet accepted.
- Stage0 (2,3) exact data cover 108*68 cells and 154224 signed rows. Fourteen 8-row whole-block decisions exceeded the 1536 MiB kernel budget. An independent row-level attempt also exceeded interpreter memory. These are resource failures, not evidence of a false numerical bound. Frozen data remain unchanged; next test is one direct cell decision at a time plus symbolic range composition.
- Twenty-seven serial jobs are now checking seven-two growth/selector/scaled-edge dependencies and the two remaining G packages. No concurrent Lean.
- Original A is 151 plus unified; original B remains 0/19. No commit or push retried. See notes/huan-two-five-edge-and-crt-step-acceptance.json for current accepted receipts.


## 2026-09-12: all remaining actual G bounds accepted

The v11 serial queue completed with26 accepted prerequisite roots and1 resource failure (the monolithic seven-two growth leaves). Actual all-delta G bounds for (9,5), (23,15), (11,7) are accepted, with thresholds224,160,149. The exact Factorial9D5 and all seven-two fixed-edge layers/full66-root audit are accepted. Seven-two actual four-tree package remains unaccepted; its17 leaf namespaces have now been split into9 independent source modules without changing proof bodies. v13 tests one small leaf module, direct low/high CRT cells and one full row, plus terminal cover/parameter interfaces and largest terminal witness examples. Original coverage is still A151 with unified consumer, B0/19; actual initial-height edges remain2/5. See notes/huan-all-three-g-and-seven-two-fixed-acceptance.json for evidence IDs.


## 2026-09-12: third actual initial-height edge accepted; CRT granularity resolved

All17 v14 prerequisite jobs passed. The full four-tree seven-two package and actual component edge (weights60/330) are accepted with full25-root audit. Actual initial-height edges are now3/5; the unrestricted initial height itself is still unproved. First full CRT row a1,b1..68 (1428 signed checks) and low/high direct-cell tests passed; first entire 8-row block is the next trial. Source granularity was the resource issue, and no numerical certificate changed. The generic CRT RowCell-to-terminal-membership bridge and four largest-prime/four largest-divisor terminal examples passed. All4042 terminal witnesses have generated16-item source chunks but remain mostly unaccepted. The two final growth/selector families are integrated with documented repairs for stale audit module names, duplicate Nat annotations, and missing FiveSeven basis_seven. Those repairs are not yet Lean-accepted. Original status remains A151 plus unified, B0/19. See notes/huan-third-actual-edge-and-crt-row-acceptance.json.


## 2026-09-12 v17: current acceptance and complete candidate inventory

- v16 ended13 accepted/9 failed/13 skipped. Tail passed after removing obsolete Nat.pow_pos arguments. FiveSeven full19-leaf growth tree and actual initial window bounds passed.
- Failures were isolated: single-module544cell packing hit1536MiB; witness Group000 needed append_assoc; membership Pilot needed explicit HeightCap import; both m1 E caps hit200000-heartbeat default; nonzero-shift degree38 polynomial equalities hit1536MiB.
- Applied the small import/association fixes and5M heartbeat budget (statements/numerical data unchanged). The single original ELeaf001 passed with3072MiB and512MiB memory reserve,20.822s/new14.358MiB object. Group000 and the worst terminal member cell pilot also now pass. v17 continues with both fixed chains, actual FiveSeven edge and coverage probes. All heavy Lean remains serial; no user apps closed.
- All24 decreasing CRT rectangles (35545cells/746445signed) have integrated1715candidate sources. Existing first544cell block remains accepted. The full six terminal member tables (1142cells/23982signed/47136parameters) have integrated130candidate files. Full1055candidate interval coverage reuses4042witnesses and now has256candidate sources; final originali11 entry has5source/audit files and only the original domain assumptions.
- These are source inventories, not original results. A151 plus unified is accepted; B0/19. Actual initial edges remain3/5 until last two full consumers pass. Both the unrestricted initial height and complete finite closure are still pending.
- Source fixes/provenance are under reviews/huan-remaining-numeric-source-fixes-5e2d13bb, reviews/huan-four-stage-api-fixes-5e2d13bb and the v15/v16 review records. Source experiments remain frozen, including superseded templates. See notes/huan-resumed-current-acceptance-v17.json for exact receipts.


## 2026-09-12 v18: fourth actual edge and storage preservation

FiveSeven actual component edge and full audit passed in v17, so4/5 actual initial edges are accepted. The complete terminal member pair23 first row and worst3490-parameter cell also passed. ThreeTwo raw Pascal expansion still hit5M heartbeats; its coefficient-level chooseFast equality is now accepted, while closed value proofs require a guarded3072MiB retry after their1536MiB kernel-memory failure. Eta-expanded1112 terminal IntervalSound calls (124files), preserving all numeric checks and accepted Generic. Identical-content object dedup preserved/rehashed7298paths, replaced1510links, left6locked unchanged, and accounted154036488released bytes; no source/log/evidence was deleted. v18 is the sole active Lean queue (session28075). Initial height itself remains unaccepted, originalB0/19. Full24CRT rectangles and full terminal coverage remain source-complete but largely pending verification.
