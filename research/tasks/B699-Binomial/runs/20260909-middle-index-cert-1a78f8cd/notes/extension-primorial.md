# Primorial gcd有界计算对象替换

开始2026-09-09 14:31:18 UTC；原截止14:51:18 UTC，共20分钟，不滚动延长。唯一计算槽由主线程明确授予；-j1/-M1280、每模块180秒。旧677、已验basis与512模块全部冻结，不加内存，不使用native，不运行116667整链，不开始其它算法。

动机：原512边基底试除需要66.398秒，整链等成本排期约4.21h。新计算对象P是已验607基底的乘积literal；每个大p检查gcd(p,P)=1，代替逐项607次mod。外部乘积只生成候选，ps.prod=P必须实际decide+kernel通过，且checker参数只接P literal，不能在每个p展开ps.prod。

声音性沿用BasisComplete：任意d≥2且d≤sqrt(p)整除p，取Prime q∣d，小于B，故q属于ps并整除其prod=P；q也整除gcd(p,P)=1，与Prime.not_dvd_one矛盾。List.dvd_prod使用固定Mathlib.Algebra.BigOperators.Group.List.Lemmas:154，已确认其对象缓存存在。

固定Lean Init/Data/Nat/Gcd.lean:20–35明确说明kernel/compiler均对gcd提供任意精度高效求值，逻辑模型仍是欧几里得递归。这是选择有界试验的机制依据，实际性能仍须测量。先通用prime/chain声性、P等式和真实末端20000093单点，成功才测同512边+原题消费者。所有新数据同步Elab.async=false。

## 原20分钟试验成功结束，计算槽归还

实际成功根为143618Z（通用checker/chain声音性、6330bit乘积等式、真实20000093单Prime）与143846Z（同512边及完整原题消费者）。都在原14:51:18截止前结束，没有延期、提内存、切native或跑整链。

完整结果与源码/object/log SHA、源码快照、内存及实际axioms见 `experiments/extension-primorial/result.json`。basis4473_prod_eq与single last_check真实零公理；prime/chain声音性、last_prime和原题消费者均只含标准三公理。

512边与消费者同一模块实际11.662秒、峰值工作集1093787648字节、peak pagefile2423091200字节，对象758656字节。原Basis本体66.398秒，当前含消费者仍快约5.69倍。若比较原本体加独立消费者78.832秒则约6.76倍，但该比较含少一次进程导入，不把它冒充纯GCD算法倍率。序列化对象基本同量级，主要收益在计算时间和峰值。

P是6330bit、1906十进制位的自然数literal，kernel已证明607列表的prod=P；每个大p的checker只读此literal进行gcd，未在每次检查里展开列表乘积。该有限带仍为19912523≤n≤20000000、i≥185、全部合法j，没有因该样本宣称20m全段通过。

主线程随后明确采纳GCD方案进行完整20m源码生成。这是新阶段授权，原20分钟试验到此结束。继续保护全部既有成功/失败源，完整链只轻量生成/静态核对，不由本子任务启动Lean。

## 完整20m链生成、静态核对与冻结交接

主线程在GCD有界试验成功结束后另行授权完整生成；2026-09-09 14:47:46 UTC实际生成228叶、15组、AllBlocks和Complete，共245个新模块。每叶至多512边、每kernel真值至多16边，7292份证书；全部Elab.async=false。仅生成源码，没有由本子任务运行全链Lean或外部素性检查。

`full-chain-generation.json`含每模块准确路径、quoted import、源SHA及叶输入下标。独立`full-chain-audit.py`从实际源码重建116667节点/116666边，与原输入逐项一致；核对每个真值的显式P literal接口、所有叶/组trans树、共享端点、全局2→20000093、静态最大gap184以及square bound。245新源同步/证明词政策均通过，182份既有成功/失败/高度源SHA不变。详细模块清单与270项目源完整闭包在`full-chain-static-audit.json`。

额外`full-chain-sample-identity.json`比较Basis与GCD512样本的每个起始素数和完整tail，32份实际证书的payload完全相同，重建的513节点与原输入末端一致，避免只比较非共享尾部。这里没有再次验外部素性。

最终源根为lean/extension/primeChain/Complete.lean；无证书前提的接口为B699MiddleExtension.twenty_million_prime_chain和B699MiddleExtension.common_le_twenty_million，完整签名见`full-chain-handoff.json`。当前接受状态仍是pending，实际完整815原题结论由主线程ExtendedComplete新的完整闭包验收决定。

主线程已通知即将启动约404模块完整验收。所有新旧Lean源从交接起冻结；本子任务只补notes/manifest，不运行Lean，不边编边改。原20分钟试验在截止前结束与当前另行授权的完整生成阶段已分开记录，未发生试验延期。
