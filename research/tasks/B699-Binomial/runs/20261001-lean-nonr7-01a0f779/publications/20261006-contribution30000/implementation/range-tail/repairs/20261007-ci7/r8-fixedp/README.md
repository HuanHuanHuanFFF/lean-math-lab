本目录由 `/root/b699_contribution_environment` 独占，任务为 Sol/xhigh 的既定完整范围修复与定点诊断。原范围185..322、323..999、1000..30000不变：全部合法 Nat n/i/j、i<j≤n/2，同一实际 Prime p≥i整除两个完整choose，不引入oracle或统一fuel终止假设。

R8固定输入来自 run37529174035、commit ffcc7fd84953934bb29b835dc2b56ba3971a6092。Middle185完整JSON错误101条（含达到maxErrors），Middle323完整9条且最终900秒退出124；各组末尾首句为 `Expected type must not contain metavariables`，既含隐式起点p，也含列表内部proof MVars。High退出137但正常runner的生命周期只保自有清理，不含OOMKilled/metrics；未建立OOM或超时原因。聚合在R8-DIAGNOSTIC.json，不按137猜原因。

新Middle完整副本只在每组先建立typed local ss，再显式给join_sound原Group.lo；最后group_sound显式p=2。逆补丁精确还原原完整文件，所有7292/687段、116667/10992节点、138/677高度行、最终consumer均保留。SOURCE-FREEZE.json绑定新旧字节；WHOLE-SOURCE-POLICY.json为官方源码门0hard/0review。这些新完整源尚未编译、kernel回放或独立literal/Std3接受，不能直接替代已冻结artifact。

本次仅三份180秒/400k/j1诊断：MiddleGroupFirst128FixedP用同first128段确认typedlet和显式p；MiddleHeight842Block16复制原835..850高度行（含历史i842瓶颈）；HighFirstPartFuel复制原firstaddPart32节点/F11085!一次等式，只把gcd计算改为耗尽false的普通fuel64，soundness推出原Nat.gcd=1后沿原Prime证明。未假定64总够，真正closed检查仍须成功。探针不是原题S接受。

prepare.py可静态重建，不触旧源；PROBE-REQUEST.json和PROBE-SOURCE-POLICY.json冻结探针字节。实际新容器仍须独立状态/峰值/CPU/UTC timer与自有清理记录。Root拥有请求、提交、触发和artifact替换；本worker不native Windows Lean、不推送、不自行触CI。proof硬截止UTC2026-10-06T23:30:25，round记录截止23:40:25，不延期。

下一步：独立源码/协议核验后由Root触发最后定点batch。若修后完整单叶被选择，normal的strict selectedGroupIds仍绑定并运行全部七源的源码门，只对明确选叶执行完整raw/kernel/literal/kernel/Std3；子集fullS=false且不组合FullCoverage。完整S目标保持pending，只有全部七叶及组合实际通过才进入独立接受。
