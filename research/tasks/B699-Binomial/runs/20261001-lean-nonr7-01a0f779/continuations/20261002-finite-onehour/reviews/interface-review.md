# 独立接口与范围审查

核验者 `/root/semantic_verify_sol`，复杂语义/依赖审查，gpt-6.1-sol/xhigh。固定输入 `d094fd1e54a27d45f1c38b8897e67486ab2a8ad6`；本轮09:25:29–10:25:29 UTC，10:21冻结数学源，不延期。独占semantic/reviews，不操作Git、不改实施源、不运行proof/checker。本文是源对应与数学接口审读；typed实际收据未到前不登记新的技术接受。

## 原题与准确输入

原题对自然数 `1≤i<j≤n/2` 要求存在同一个自然素数 `p≥i`，使 `p∣n.choose i` 且 `p∣n.choose j`。固定 `GapAdapter.original_tail_of_inputs` 的目标是原题i≥4883，实际三项输入是：

1. `∀n i j,4883≤i→i<j→j≤n/2→¬Common n i j→n<4096*i`。
2. `∀y:Nat,10000000≤y→∃p:Nat,p.Prime∧y<p∧4095*(p-y)≤y`。
3. `∀n i j,4883≤i→i<j→j≤n/2→n≤20000000→Common n i j`。

Common的定义就是原题同素数结论，无平方自由化/替代计数/削弱整除。第一项只在反例分支要求高度。上轮固定 `ActualUniformConsumers.counterexample_height_4883` 已接受且源哈希 `782bd7e38ed6dbe8607bb75191ab5e051cb3259e483bfbb12f3f886aa98fad3a`，可直接提供第一项，不需要重做同字节数学。

最短有限接口是第三项。旧 `B699MiddleExtension.common_le_twenty_million` 的真实型是i≥185、n≤20M时 `∃p,p.Prime∧i≤p∧p∣Nat.gcd(n.choose i)(n.choose j)`。用gcd_dvd_left/right及dvd_trans拆为两个整除，再特化4883，即能解除有限输入。历史源Complete.lean哈希 `1eeb11886f1525150b5955d4b2477d6eb557c794ff3fc4a81a7b3115ed5b8e67`。历史接受不等于对象当前存在；270源来源计划不算本轮build。

更强 `FiniteTopSupply 4883 20000000` 要求所有2≤n≤20M有真正Prime p≤n且严格n<p+4883，也足够，但不是消费旧结论必需。精确的旧源特化候选见semantic/OldFiniteTyped.lean，尚未编译，不计接受。

## 数学端点独立检查

合法j使2*i<n，所以从n-i<p≤n得i<p且j<p。p出现在两项choose的分子区间并大于两分母指标，实际Prime.dvd_choose给原整数choose整除。这条充分路线使用p>i，但输出仍是原题p≥i；它没有改写原题允许p=i的分支，也没有修改素数幂语义。

当n>20M，合法区间给y=n-i≥10M。反例高度给y<4095*i；Gap给4095*(p-y)≤y，推出p-y<i，于是p<n。严格高度和严格p>y不可松掉。n=4096*i已属于已接受比例区域，不能混入反例高度分支。

有限链的覆盖必须逐对给实际Prime。对递增节点从2开始、末端越过或覆盖20M，相邻差≤4883足以覆盖每个整数区间[p_k,p_{k+1})，保持严格n<p_k+4883。只检末两个prime或随机稀疏节点不构成完整覆盖。若直接证明原题有限消费者，至少须覆盖全部合法n/i/j，而不是仅节点n。

## Real / Dusart / pilot 的实际等级

RealGap与Nat Gap对相同D/Y等价：Nat→Real取floor，p>floor(x)给p>x；距离收缩及floor≤x保证不改变分母。Real→Nat在整数y代入，严格p>y使Nat减法可忠实转实数。没有把实数阈值降低或把严格端点改成非严格。

Dusart适配仍明确输入 `∀x:Real,396738<x→∃p:Nat,p.Prime∧x<p∧p≤x*(1+1/(25*(log x)^2))`。本地不等式只验证x≥10M时25log²x>4095，因此该输入足够供应Gap；它不证明Dusart输入，不能用出版引用/PNT+带sorry/有限扫描替代全实数供应。

旧SparsePilot只给19999909、20000093两Prime与19999909≤n≤20M、4883≤i的原题Common。这个范围与历史有限结论重叠，不计新完整指标。当前原题完整指标保持 `{1,2,11,29}∪[35,4882]`；i≥4883低比例2≤n/i<4096、i/n/j绝对值及Gap的y无界。

## 本轮技术拒绝标准

新消费者须有核验者独立写的literal exacttype wrapper，actualtype/rawstdout、固定source/object、实际argv/exit与来源闭包绑定。所有传递公理必须属于propext/Classical.choice/Quot.sound，缺根输出/意外公理/sorryAx/不同源哈希均拒绝。必须完整记录实际公理集合，允许标准三项的子集。

纠正记录（10:03 UTC）：早期审查将“仅标准三公理”解读为最终根必须用齐三项，此要求过强。Root经runtime_recovery_sol明确标准是actual axioms⊆Std3且完整最终根覆盖，已采用该标准；上轮实际全三项日志仍按实际记录引用。semantic/audit-literal-roots.ps1只是未执行候选，其ExactlyThreeRoots选项不用于本轮接受；真正检查入口由runtime独占。

正常leanchecker是同固定Lean kernel、信任导入环境的声明重放，不称第二独立实现。本轮未收到完整有限供应的新固定根前，有限输入保持pending；无限Gap无条件供应仍未证明。缺环境对象与资源拒绝均不算数学反例。

## 新有限候选的源审查（09:53 UTC）

ChainCore构造式、trans和near_top同旧固定Core数学；singleton仅空半开区间，step按n<q拆分，保证每个实际输出Prime p≤n和严格n<p+gap。新Pilot32的32个Prime声明数值均在旧Block224/225明确tail列表中出现，递增且最大相邻差4876≤4883，记录见pilot-literal-provenance.json。该词面核对不证明primality；本轮尚无其实际编译收据。

Pilot覆盖仅19662301≤n<19811023。新PilotConsumer以这个严格near_top与i≥4883推出n-i<p，再调实际common_of_top_prime，数学对应原题所有合法j、同一Prime p≥i和完整两个choose。独立literal型见semantic/OriginalPilotTyped.lean。原根与wrapper尚未实际编译，仍pending；即使通过，这一区域也与历史≤20M原题覆盖重叠，不增加完整指标。

新OldFiniteTerminal的finite_common正确拆gcd并特化4883；其original_tail_of_gap正确采用已接受counterexample_height_4883，并仅留下真实Gap全y输入。旧270源对象闭包目前未恢复，故该终端只作候选。没有因作者confidence或Luna工具输出单独判接受。
