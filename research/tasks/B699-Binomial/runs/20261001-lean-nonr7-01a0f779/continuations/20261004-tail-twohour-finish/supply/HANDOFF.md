# A：两小时数学供应接续

执行者 `/root/tail2h_implementation`，复杂既定目标 Lean 实现，gpt-6.1-sol / xhigh；只写本轮 supply。预算 UTC13:16:38–15:16:38，UTC14:46后不开大阶段，14:58前数学交接。旧数学源与已接受证据均保持原字节；A没有运行本机Lean、CI、Git提交或推送。实际编译/AX/normalchecker由 C，独立声明与原件绑定由 S。

初始完整集 `{1,2,11,29}∪[35,10000]`。消费者保持全部 Nat n/i/j、i<j≤n/2、同实际 Prime p≥i 同除双完整 choose。低23与R7不动；更大i及n/j/y的全局无界缺口仍需明确登记。

## 已交付与当前技术状态

1. UTC13:25，`existing-sources-ready.json` 固定28个旧源：until2020 RatioBlock000..025、Tail13000Legacy、Tail15000Legacy。所有大小/哈希匹配旧metadata，数学源新复制数0。13000为1088新prime/17块到53399837；15000为1663新prime/26块到61439401。每块准确module/roots、seed40956329（旧90min RatioBlock044.prime48）、consumer及依赖交给C/S。
2. 已读 S UTC13:35:06 的 `../reviews/TAIL10001-INDEPENDENT-ACCEPTED.json`：fixed3a8b9ff6c5cb8db16112235ca6a0969e36affcbe / run37205771908 / 原包ed3da3e0d707a6d6b1af03e547137eedff0c749503e49619752bbae1753d6aa9，准确单点10001与闭区间[4883,10001]、4freshAX根、2normalchecker exit0、旧源重编0，额外数学输入为空。当前可正式记录完整集 `{1,2,11,29}∪[35,10001]`。更大主阶段以 S 后续签件为准，不由source-ready推定接受。
3. 已准备并保持不变的零新prime forward候选：`FixedForward.lean` 三generic根、`GapLowerLegacy.lean` 两根、`Gap13000Legacy.lean` 三根、`Gap15000Legacy.lean` 两根。S UTC13:33:25 的 `../reviews/FORWARD-SOURCE-READY.json` 是独立源审，不是kernel接受。主三阶段spec不变；新阶段单独freeze/CI。

UTC13:55:06，S签 `../reviews/TAIL15000-INDEPENDENT-ACCEPTED.json`，fixed3a8b9ff6c5cb8db16112235ca6a0969e36affcbe / run37205771908 / 原包9a10b334c04fe75ae8ad4798a15b5289ee721c2571aeac533a6778d7fc7bd7e8：准确单15000及全[4883,15000]、1702freshAX根、32normalchecker全0、全部Nat n/j、同Prime双完整choose、extra=[]。13000另独立签UTC13:48:58、同run/source、原包ffb9bb47f86e6d34517e14b0e514f3204792b13fa09de4b7d26fa80131cbbd6d。当前完整集可正式记 `{1,2,11,29}∪[35,15000]`，相对开始10000新增5000个完整指标；i≥15001低比例与n/j/y全局无界仍开。fullfinite initial与forward接受仍须各自新签件，不能由主15000接受反推。

## 有限 Gap 接合的数学角色

见 `ROUTE-FINITE-FORWARD.md`。旧 fixed chain 2→20000093，接已接受tail5000→20482069。后继q≤y+4883联同y≥4095×4883=19995885，给实际Prime q>y且4095(q−y)≤y，零新prime预期补[19995885,20482069)共486184整数y。接旧relative链或本轮成功13000/15000，最多给[19995885,61439401)。这是θ路线有限初段的依赖缩减，不增加完整原题i计数，也不供应无界Gap。

`probe-fixed-pool.ps1` 已按整数公式检查原source-bundle33块的4171个已存literal prime。Gap可供区间ceil(4095p/4096)≤y<p，在[10M,19995885)并集有2015个缺口；扣除旧pilot后的首缺口[10148087,10150369)，前后stored primes10148087→10152847。`fixed-pool-probe.json`保存33成员哈希与复现入口。这是存储见证覆盖probe，不是新primality/kernel核验，也不反驳真实Gap。现有coarse证书池无法只靠已存见证把低段完整化。

## 完整 θ 有限初段候选：源已冻结，等待实际验证

Root提出用已建立relative-chain方法补整个[10M,122568684)，使ThetaTail只剩两个真正无界theta估计。`probe-full-initial.py` 与 `full-initial-probe.json` 已给真实candidate计数：

- 自供seed10000019（需1个norm_num primality证明）；它覆盖[10M,10000019)，4095×19≤10M。避免额外恢复旧64pilot大origin。
- lower相对链10000019→19997441≥19995885：2850新prime、45个64块（末34）；准确试除准备0.200s。
- upper从已验15000 seed61439401→122579999≥122568684：2831新prime、45块（末15）。若顺带完整K30000，目标4095×30000=122850000，末122879557，2841新prime、同45块（末25），只多10个prime；准备0.333s。

最短建议选后者，总5692新primality义务（含seed）、90块；strict trial-divisor上限12000且拒绝n≥144M，覆盖所有新节点。它只是准确candidate准备，不是Lean证明。历史每64块compile9.7s/checker8.2s，90块约26.9min只是prime阶段基线；setup、queue、对象绑定、consumer内存与本轮高段数值的实际成本未知，必须由C当前实测与root门控，不承诺完成时间。

完整有限Gap若成功，才可无外部有限输入提供θ hinitial；无界两theta估计尚缺，任何后续无限原题消费者仍应把这两个输入写明，绝不新增axiom/sorry。最初计数checkpoint没有写90个Lean块或启动大CI，随后由Root授权源实施、C决定成本门与launch；以下是后续明确断点，不能把初始checkpoint当最终状态。

UTC13:45:08，`prepare-full-initial.py` 完成95个Lean候选源，0.090s；`full-initial-candidates.json` 固定所有大小/哈希/module/roots和分stage，SHA256 `6f5132737f3b1a469767bd65738d1ade0ffde0b38f7c4f1752a454ba4802fbb6`。95源总1168592B、最大13063B；seed2根、90块每块prime与chain根、LowerChain2根、UpperChain2根、FullInitialGapLegacy1根、Tail30000Legacy3根，共5791个AX打印根（其中5692新primality）。新source在READY之后保持冻结；旧main及4个forward源码未改。

`preflight-full-initial.py` UTC13:46:58检查全部字节/哈希、唯一且一致的AXroots、所有literal ratio edges、无sorry/admit/axiom/native_decide，通过。记录 `full-initial-static-ready.json`；此是A静态preflight，不是kernel、normalchecker或独立接受。

最短执行链：SeedInitial→LowerBlock000..044→LowerChain（精确[10M,19995885)）；已验mid Gap15000_extended_initial；old已验RatioBlock025.prime63=61439401→UpperBlock000..044→UpperChain（精确[61439401,122879557)）；FullInitialGapLegacy.theta_initial（精确全Nat[10M,122568684)、extra=[]）。可选同upper链消费Tail30000Legacy原题单点+闭区间；不额外扩块。S各段与全初段独立literal，C每个完整验证单元分别保包，末端全初段优先。

当前C报告主13000实际17块约401s，约24s/块；90块仅prime阶段约36min。新90块的实际编译/峰值及运输成本仍需C观察。不得继续用更早18s/块当本轮总完成承诺，亦不能把下载或调度时间称数学复杂度故障。A未运行任何本机Lean/CI。

## 下一消费者的候选，明确排除本次CI

按Root后续指令另写 `NEXT-TWO-THETA.md` 和 `ThetaOriginalLegacy.lean`（1842B、两根）。它们没有加入第二CI95源/spec，后者未编译、未AX/checker、未独立接受；不改变任何已冻结源。桥仅将真实finiteInitial接旧ThetaTail，再接旧原题 `original_tail_of_gap`，显式保留两个精确无界Real theta误差参数；没有新增axiom/sorry。这是下一具名执行者的准确接口，不是本轮求解无界解析估计。

旧ThetaTail真正接受为gap-halfhour S fixed6191c5f1 / run37046323083 / 54826001原包、源a56752ab；其早期2026-10-02 HANDOFF“未编译”已被后续接受supersede，只有条件后果接受，两个供应仍未形式化。未来先检查finiteInitial的实际接受；若没有，桥的该依赖仍pending，不能直接消费为已验。

资源仅行政观察：本机D余21.919GiB，未见lean/lake/python活动进程；A不把主机总内存或旧CI峰值当本轮runner可用资源。实际source/object/raw/AX/checker/literal版本由C/S固定证据登记。
