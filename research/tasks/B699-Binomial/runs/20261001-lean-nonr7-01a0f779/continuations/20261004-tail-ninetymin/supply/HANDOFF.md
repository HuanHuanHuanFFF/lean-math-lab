# A：本轮候选接续入口

执行者 `/root/tail90_implementation`，复杂已知目标Lean实现，Sol6.1/xhigh；仅写本轮 `supply/**`。开始基线297dcd3943fc6468212cc6240bc65a3b9a17ccc2。共享预算10:22:50–11:52:50 UTC；新重CI最晚11:15:50，全部proof停止11:32:50，不延期。A未运行本机Lean、未commit/push、未改旧source或其他worker目录。

准确原题消费者保留全部Nat n/i/j、`i<j≤n/2`，存在同一个实际 `Prime p≥i` 同除双完整choose。开始已接受全集 `{1,2,11,29}∪[35,5000]`。本轮候选的kernel/AX/checker/独立byte绑定由C/S另行记录；本文件不代替接受签件。

10:49 UTC检查点：S已正式独立接受5001，fixededc3d997/run37196132408/ZIP625a1e5b，见 `../reviews/TAIL5001-INDEPENDENT-ACCEPTED.json`。准确单5001与闭区间[4883,5001]、全部n/j，无额外数学输入；5freshAX和2normalchecker及140旧闭包source/object/raw绑定通过。Endpoint b7bb源未改。当前完整全集可登记 `{1,2,11,29}∪[35,5001]`；6000/10000仍候选，相对链实际probe待C/S。此checkpoint采用S具名回执，A没有自行重复kernel。

## 最小阶段与来源

1. `EndpointLegacy.lean`：旧U20482069的零新prime完整5001。新helper `common_of_tail_chain_endpoint` 只需4095K≤U，把n=U以及U≤n<4096i另走最后prime，源SHA b7bb4718a095da2d822347c03296f67ed129d60141bc3a7fab701f58592835f8。复用上一轮 `Tail5000ConsumerLegacy`、29a3及217e objects，不重编129旧供应器或99旧prime。
2. `FixedPilot16.lean`：16新prime的旧固定gap4883代表，根位于 `B699TailNinety20261004.FixedPilot16`；此文件测旧过程基线，不直接扩完整指标。
3. `RatioCore.lean`：有限relative链的4个泛型根；`RatioEndpointLegacy.lean` 接新链到准确原题；`RatioPilot16.lean` 与 `RatioBlock000.lean` 分别测16/64新prime的实际成本与内存。仅实测允许后扩大64块；源审不等于kernel接受。
4. `Tail6000Legacy.lean`：`tail_chain_6000`、`common_upto_6000`、`complete_6000`，namespace统一 `B699TailNinety20261004`。链seed20482069，748新prime、13个块（pilot+000..011），末24574447≥4095×6000。
5. `Tail10000Legacy.lean`：同namespace的对应10000三根；复用新6000链，再2096prime/33块（012..044），末40956329≥4095×10000。必须先实际完整接受6000或至少固定已验其source/objects再接；不能仅因候选存在计10000。

所有新prime由 `Mathlib.Tactic.NormNum.Prime` 的 `norm_num` 候选证明提供。首modern块seed准确复用 `B699TailExtension20261004.Tail5000Block005.prime13`，其已接受源在上一轮供给根。后续modern块以previous块的实际最后prime接合，不引prime、Gap或高度为最终外部参数。

`candidates.json` 247991字节，按解析字段读取，含52个Lean候选的对应核心/块/consumer哈希、modules、roots及2845节点；不要完整dump。`prepare.py` 0.266462秒精确候选试除只准备source，未获得任何Nat.Prime/kernel接受。生成器拒绝覆盖既有文件，带共享proofStop；旧生成器未重放。Root/C/S已获得ready回执。

另有Root允许的3个可选forward源：`RatioForward.lean` 两根 `RatioPrimeChain.first_prime/near_after`，以及 `Gap6000Legacy.lean` 的 `gap_6000_initial`、`Gap10000Legacy.lean` 的 `gap_10000_initial`，三源哈希见 `forward-sources.json`，不改52初始候选哈希。零新增prime，按同chain提供真实全Nat y的 `[20482069,24574447)` 或 `[20482069,40956329)` Gap4095片段，分别4092378或20474260个整数y。主完整消费者先验先交；C余量不足时这三源与S字面核验保持pending，不能由full B699接受反推Gap接受。

此片段可为θ方案的真实初段复用，但尚缺 `[10146761,20482069)` 和右端到122568684等区域，以及两个无界θ输入；不把它称为10M全初段或无界Gap。未来可在更窄modern链聚合模块内接这些已验relative块，不依赖原题消费者整个legacy环境；本轮不为此搬改已冻结模块。

## 纸面论证与源审

新相对边4095q≤4096p，半开n<q给严格4095n<4096p。联同低比例n<4096i得n−i<p；末端U由4095K≤U、i≤K直接给n−i<U，U≤n提供top-prime。左段完整旧chain、旧5000tail、中段relative、末端U与比例分支覆盖每个n。无原创新颖性主张，这是初等有限接线和可复用证书结构。

S已独立源审，记录在 `../reviews/FINITE-ENDPOINT-INDEPENDENT-REVIEW.md` 及 `CANDIDATES-INDEPENDENT-SOURCE-REVIEW.json`，并自行给5001/6000/10000单点与闭区间literal。源审状态不得改写为实际kernel接受。C采用规范Std3拒绝式公理门、normalchecker、固定objects/raw/source绑定；S独立签每个已闭合阶段，证明停止后不补proof。

## 无限尾与失败分类

从原題onlyGap消费者反查的准确未供来源见 `UNIFORM-ROUTE-GAP.md` 和 `route-sources.json`。已发表Dusart供应尚未形式化；现有conditional adapter、θ/ψ前置和64点真实Gap不会自动填无界供应。本轮截至本记录没有实际复杂度失败或数学反例；若C出现故障，必须按精确命题/阶段/log另记数学缺口、API、资源或复杂度，不把首次普通接线错误冒称用户要求停止的证明复杂度。

有限5001/6000/10000成功可消去对应整个i区间的全部n/j，但无界i/n/j与Gap y仍不消失；低23与R7保留。下一次预算可在实际接受的最高ratio末端继续同模板，或取得真实无界解析供应；不要重算已接受旧链。

资源行政观察只限本机D约24.25GiB和无lean/lake进程；CIM内存读取拒绝访问，未猜可用RAM。CI资源、版本、峰值、真实执行与接受以C/S固定证据为准。源与证明objects/ZIP字节分别归档；仓库只保普通source/records，原ZIP留仓库外。
