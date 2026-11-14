# 全范围新源码独立验收

核验者 `/root/b699_contribution_scope`，Sol/xhigh；本目录由该核验任务独占。当前新可移植源码独立接受的范围仅 **`{1,2}`**。其余六叶和完整目标 `S={1,2,11,29}∪[35,30000]` 尚未接受。原研究签件覆盖 S 的数学结果与本次自包含移植的验收分开记录；失败编译不构成原题反例。

完整目标保留全部合法 Nat n/i/j：`i∈S`、`i<j`、`j≤n/2`，存在同一实际 `_root_.Nat.Prime p` 且 `i≤p`，分别整除两份完整 `_root_.Nat.choose n i` 和 `_root_.Nat.choose n j`。S 共29,970个指标；i11 在 `n<2^15360` 和 `2^15360≤n` 两边精确互补，不遗漏等号。未缩成诊断点或成功子集。

## 当前固定源码和验收

最终七文件、原研究来源和静态绑定见 [FINAL-SEVEN-CANDIDATE-INPUTS.json](FINAL-SEVEN-CANDIDATE-INPUTS.json)，当前行政采用见 [R10-SELECTED-THREE-ADOPTION-BINDING.json](R10-SELECTED-THREE-ADOPTION-BINDING.json)。七源总3,083,914字节，最大832,915字节，均小于单文件1MiB，整份小于4MiB。容量通过不等于编译通过。

| 文件 / 覆盖 | 当前 SHA 前缀 | 实际验收状态 |
|---|---|---|
| small12 / {1,2} | 451fea0fb657 | CI6/7/R8完整raw、kernel、literal、kernel、Std3通过，接受仅2例 |
| a151 / {29}∪[35,184] | 33d845cdfb72 | R8完整源900秒超时；真实i44 goods354诊断通过，完整row decide未化简，原因未定 |
| i11_above / i11且2^15360≤n | 916461c9fa53 | R8完整源900秒超时，未进入后续接受阶段 |
| i11_below / i11且n<2^15360 | ff460f668a6c | R8完整源900秒超时，未进入后续接受阶段 |
| middle185_322 / [185,322] | b60565db1d3e | R10完整源137，无对象；正常runner未保留OOM State，原因未定 |
| middle323_999 / [323,999] | a484ee28492d | R10完整源137，无对象；正常runner未保留OOM State，原因未定 |
| high1000_30000 / [1000,30000] | c72b506fee4c | R10完整源137，无对象；正常runner未保留OOM State，原因未定 |

Small的固定源、真实对象、独立字面类型、两次正常内核重放及拒绝式Std3依据见 [SMALL12-R8-REPLAY-ACCEPTED.json](SMALL12-R8-REPLAY-ACCEPTED.json)。其余六叶拒收依据见 [R8-SIX-LEAVES-NOT-ACCEPTED.json](R8-SIX-LEAVES-NOT-ACCEPTED.json) 和 [R10-SELECTED-THREE-NOT-ACCEPTED.json](R10-SELECTED-THREE-NOT-ACCEPTED.json)。R10固定Git源 `cfc0642132cd3c158a7f9d349c6229c0a5141de8`，41项关键输入逐字节核对，所选三叶的真实memory guard和自有容器清理均通过；三叶均无对象、未运行literal/kernel/Std3。R10在22:52:55 UTC结束，绝对23:30截止没有触发。该runner不保留停止容器State，不能把137解释为物理OOM。

[AUDIT-CONTRACT.json](AUDIT-CONTRACT.json) 固定当前七源及公共根，SHA `91c41dc98aa05a12f69811480545a6183cf23e8084f7848fc1b06537db6316cb`。物理源模块为lowercase `Frozen.small12/a151/i11_above/i11_below/middle185_322/middle323_999/high1000_30000`；独立审计模块为 `Audit.<组ID>`，runner对象路径和imports已逐项对应。内部 [FullCoverageExact.lean](FullCoverageExact.lean) 保留精确 S 与 i11拼接义务，但没有实际编译接受；它导入兄弟审计模块，仅供核验，不能作为符合单文件独立导入规则的官方贡献文件。

## 源对照与有限诊断边界

A151全部151原Row、37,313 goods、3,919 layers逐字段对照，结构递归解码变换另见 [A151静态绑定](repairs/20261007-a151-structural/BINDING-DRAFT.json)。Above保持81数值数组和18,483显式数值literal，原moment_sum泛型义务移到全局，见 [Above绑定](repairs/20261007-above-polyglobal100/BINDING-DRAFT.json)。Below保持1,111 bundles、4,041 witnesses和1,055 intervals，全部源码变换的逆映射精确恢复旧源，见 [Below绑定](repairs/20261007-below-runtime/BINDING-DRAFT.json)。

Middle两叶保留全部7,292/687 segments、116,667/10,992节点和138/677高度六字段/原证明，显式p/typed segment修复的逆补丁精确恢复已审查源，见 [Middle绑定](repairs/20261007-middle-fixedp/BINDING-DRAFT.json)。High替换普通fuel检查和空列表membership证明后，其余完整源/F/consumer尾部不变，见 [High绑定](repairs/20261007-high-nil/BINDING-DRAFT.json)。fuel耗尽返回false，只有实际checker=true才能经普通归纳得到真实gcd=1/Prime；没有假设fuel64对所有数据足够。

有限诊断通过不接受对应指标族，也不外推完整叶性能。最后五项实际结论见 [PROFILE-9-LAST-FIVE-INDEPENDENT-DIAGNOSIS.json](PROFILE-9-LAST-FIVE-INDEPENDENT-DIAGNOSIS.json)：Middle首128段和16行高度通过；High首Part在checker之前出现空列表证明类型错误；A151 i44 goods354通过，而完整row出现decide stuck。完整row输出既未化简为True也未化简为False，普通内核auxLemma错误可能由官方decide诊断fallback遮蔽，原因仍未知。5项真实OOMKilled均false，采样峰值不是最终峰值。

较早MiddleJoin1/16诊断曾保留真实OOMKilled=true，见 [PROFILE2-RANGE-INDEPENDENT-DIAGNOSIS.json](PROFILE2-RANGE-INDEPENDENT-DIAGNOSIS.json)。这是该旧诊断负载的真实物理OOM；不能反推R10三个不同完整源的137均为OOM。

## 最后一次资源证据与硬截止

用户给定全轮UTC18:40:25至23:40:25，不延期；proof job更早截止UTC23:30:25，预留600秒核验与交接。预算包含协调、源码、验证和记录。Root明确批准的最后一次 **完整Middle323原字节** 180秒资源诊断已经完成，见 [LAST-WHOLE-RESOURCE-PROBE-READY.json](LAST-WHOLE-RESOURCE-PROBE-READY.json)。source+CLI唯一1M heartbeat，j1，无新增profiler或#check；实际ad4 main前17个admission语句已独立执行通过，21个helper哈希保持。新增officialProductionCommit字段的包装修正不改数学源码。

该诊断只为取得停止容器State.OOMKilled、cgroup采样peak/events和自有CID清理证据；没有独立literal、kernel replay或Std3阶段，任何结果均不接受原题。此后本轮不新增数学、候选、框架或重试。Host watchdog与guest绝对UTC期限同时约束，所有缓存/数学容器通过受验证的自有CID清理，不能靠杀Docker client代替清理guest。实际结果见 [PROFILE-11-LAST-RESOURCE-INDEPENDENT-DIAGNOSIS.json](PROFILE-11-LAST-RESOURCE-INDEPENDENT-DIAGNOSIS.json)：同源a484在13.25GiB硬限下70.6569秒退出137，真实停止State.OOMKilled=true，supervisorKilled=false，自有CID清理确认。末次采样peak约13.1987GiB并非最终，采样oom_kill=0没有覆盖末尾OOM。该新run没有对象或原题接受；不能追认旧R10三失败原因，也不能据此推定最高16GiB必败。原字节见 [profile-11-last-resource/README.md](profile-11-last-resource/README.md)。本轮技术尝试已停止，最终接收与剩余义务见 [FINAL-INDEPENDENT-HANDOFF.json](FINAL-INDEPENDENT-HANDOFF.json)。

继续入口为 [CURRENT-CHECKPOINT.json](CURRENT-CHECKPOINT.json)。本核验任务没有触发CI或运行新本机Lean；Root负责Git/推送/状态和普通artifact接收。本轮停止后，完整S的新移植仍需针对失败负载重新设计/定位，并完整通过实际源码、独立literal、正常kernel和拒绝式Std3；这属于下一次明确授权的工作。

## 官方贡献边界

固定官方平台为贡献repo `be220ff2519ecfd61b28ba9e477321e4287ef6b4`、FC derived `6a786f997e18e8f095762a2830d191b7e25e505e`（base+patch重建）、Lean4.33.1 commit `819816b2e0a3bf405af45ae5c7af2491d8f5bee6`。每个官方提交文件须独立againstMathlib/FormalConjectures编译、namespace Contribution.*，不能导入本项目或兄弟文件；每文件1MiB、整份4MiB/32文件，默认900秒/≤16GiB。只允许Std3 `propext/Classical.choice/Quot.sound`。

[R10-SEVEN-SOURCE-POLICY.json](R10-SEVEN-SOURCE-POLICY.json) 当前0hard、6项人工C020审阅，不能代替完整CLI签名、身份、奖励或贡献合同G6判定。没有创建官方PR、签署合同、钱包或付款操作。历史数学覆盖、移植源码接受、原题全解、人工同行审查、新颖性与奖励资格分别保留。
