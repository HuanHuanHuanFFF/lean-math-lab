# Oct5：75分钟 Lean 形式化报告

本轮开始UTC2026-10-04 16:35:50（上海Oct5 00:35:50），原截止17:50:50（上海01:50:50），不延期。证明执行已经结束，主体材料已于本轮预算内提交并push：3b836fa62b9bab6364297032edb1015e79a3eea0，UTC17:42:28远端SHA一致且工作树干净；本封存记录随后单独提交，最终SHA见Git。时间与发布核对见[Leader回执](LEADER-PUBLICATION-RECEIPT.json)。同一分支huan/b699-lean-next-20261002-01a0f779，初始提交db0f06bd1115d5815b432c18f537378fa0aa520e。

## 实际验收与前沿变化

原题完整集合从 `{1,2,11,29} ∪ [35,15000]` 升为 **`{1,2,11,29} ∪ [35,30000]`**，本轮净新增 **15000个指标**。每个指标涵盖全部合法Nat n/j：存在同一个实际素数p≥i，整除两个完整choose，无额外数学输入，保留p=i。

整个有限θ初段 `10000000≤y<122568684` 已正式接受：存在实际Prime p>y且4095*(p-y)≤y，无额外数学输入。这是有限Gap供应；真正全体y≥10M的无界供应仍缺。上轮producer已经成功的数学对象在本轮恢复并独立绑定，不重跑90块素数链或四个成功消费者。

| 正式结果 | 固定数学源／实际CI | 独立证据 |
|---|---|---|
| 上下段累计104模块 | d26594a69a35f42336654b8169c61b40f55a32c0／37207871560 | [父签件](reviews/UPPER-RANGES-INDEPENDENT-ACCEPTED.json)、完整source/object/raw与1822成员映射 |
| 完整30000与整个有限θ初段 | b1de49c08be2850f6e98d4fe9f101e29778cdcdc／37210857364 | [30000签件](reviews/TAIL30000-INDEPENDENT-ACCEPTED.json)、[初段签件](reviews/THETA-INITIAL-INDEPENDENT-ACCEPTED.json)，UTC17:08:18 |
| 原两θ条件桥及局部化桥 | 3f0379e5b33a7d4c9654145bb61c7166cba00294／37218764276 | [独立签件](reviews/THETA-BRIDGES-INDEPENDENT-ACCEPTED.json)，UTC17:14:51 |
| 通用相对θ与高cutoff消费者 | 7a1bb1aace4d7200b8cc23d65b8d6648eb0a016c／37219682143 | [独立签件](reviews/GENERIC-CUTOFF-INDEPENDENT-ACCEPTED.json)，UTC17:22:16 |

具名独立验收者为/root/tail2h_verification（6.1-sol/xhigh）。历史335源及本轮复用的Theta来源不重编；两个新单元各4个fresh模块、10个Std3公理审计根、4次正常kernel重放、5个独立完整字面目标，合计8模块、20AX、8正常检查器、10个目标。聚合不同source/object闭包345个。全部原包成员与仓内/仓外保留路径逐字节绑定，Leader的行政检查不代替技术接受。

## 已接受的接线与数学输入

第一单元保留原两θ桥，并把上误差所需定义域局部化到Real x>122568683；下误差仍在同一区间。这样云端供应器不必额外证明未使用的小正x上界。两条估计本身均未证明，相关全Gap和原题全尾结论仍为条件结论。

第二单元把相对θ输入参数化为正D/Y和u/l：在全Real x≥Y上给出两界且D*u+(D+1)*l<1，可得相应Gap。接已验初段得到全4095-Gap还需D≥4095、Y≤122568684。高cutoff消费者对i≥max(4883,Y)返回原题，不限制Y上界，仍需一个真正uniform Gap输入。这些已验接口的无条件完整指标增量均为0，不能把条件根数量当作前沿覆盖。

真正未供的是两条无界解析输入，或可替代它们的 `∀Nat y≥10000000, ∃Prime p>y,4095*(p-y)≤y`。这部分纸面优化据用户报告正在云端进行，本轮只推进已有推理的形式化和接线。

## 第三个消费者：源码候选，未验收

[FiniteHeightConsumerLegacy.lean](supply/FiniteHeightConsumerLegacy.lean)和两条独立字面目标已源审就绪，拟无条件覆盖i≥4883且n-i<122568684，并推出n≤122568684的区域。**候选源码已随本次封存推送；启动窗口内未发布为可执行CI单元，未启动第三个CI，没有编译、AX或kernel结果，当前完整区域不得据此扩大。**

A实际source-ready为UTC17:25:02，S为17:25:56，C原READY为17:27:39；最终受控发布未赶上17:28启动截止。另发现CI前置stage误写tinytail30000，实际应为tail30000：原bad冻结spec/READY及诊断保留，修正版仅source presence/hash/AST和真实origin.stageName静态门控通过。时间与配置问题不是Lean复杂度或数学反例，不据此要求重写纸面证明。见[独立pending记录](reviews/FINITE-HEIGHT-RUNTIME-PENDING.json)、[配置诊断](runtime/HEIGHT-DIAGNOSTIC.json)与[修正版静态READY](runtime/HEIGHT-CORRECTED-STATIC-READY.json)。

下次最小执行应为：在新授权时窗只采用修正版stage配置，恢复345个已接受源对象，单独编译这个消费者及独立literal模块，做拒绝式AX、正常kernel重放、原件/对象/字面目标独立绑定。先验证这两源，不重跑大素数链。当前workflow已关push触发，旧手动入口保留过期启动守卫，不会因本次封存push产生新CI。

## 成本、版本与资源

父原包923266078B与tiny原包2416995B已经完整恢复并通过size/SHA；旧断流前缀、partial与chunks原件保留。本轮未因传输恢复而重做已成功数学执行。父104与tiny4的历史实际编译/AX/checker成本见[测量回执](reviews/MEASURED-COSTS.json)，不能计作本轮新运行。

历史37207871560整体run仍显示failure；本轮接受其已经成功的数学stage固定源对象/raw和独立绑定，不改写历史整体GitHub状态。两个新CI均completed success：第一37218764276于UTC17:02:35完成，第二37219682143于17:17:26完成；最后正常checker child分别在17:02:28.628101和17:17:17.945252结束。第一4模块编译/AX累计约8.50s、正常checker16.48s；第二约13.15s和9.08s。记录值是相应child加总，并非CI排队、恢复、独立绑定的整轮耗时。新单元没有观察到递归深度、OOM或证明计算量故障。

固定Lean为leanprover/lean4:v4.33.1（819816b2e0a3bf405af45ae5c7af2491d8f5bee6），Mathlib为0df444a360eaa60ab8c11dca51a86af692955474。实际composite执行-M6144、startup6144MiB/tree5120MiB；早期预案10240/8192被固定helper覆写，按真实回执记录，原source/helper不改。所有重Lean在CI串行、两CPU/nice19，本机Lean0。

UTC17:33:11资源观察D剩15793328128B（约14.71GiB），保留线10GiB。C-owned活动CI和传输均0；Windows进程身份清单受限，不宣称全系统Python进程为0，未终止其他任务。没有删除原件/缓存或改变认证。普通证据及映射入Git，ZIP/olean/其他二进制保留在仓库外；最终目录与资源回执见[runtime/FINAL.json](runtime/FINAL.json)。

## 剩余边界

i>30000的未覆盖低比例区域仍含无界i/n/j；旧n≥4096i、i≥1000比例域和n≤20M、i≥4883有限域继续保持。两条无界θ估计、真无界Gap、低23 `{10}∪[12,28]∪[30,34]` 及R7 `{3,…,9}` 未由本轮闭合。新finite-height候选未验收；有限表、条件接口、CI成功和材料完整性均不能代替全题证明。原题和研究新颖性没有升级声明。
