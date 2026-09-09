# Primorial gcd有界计算对象替换

开始2026-09-09 14:31:18 UTC；原截止14:51:18 UTC，共20分钟，不滚动延长。唯一计算槽由主线程明确授予；-j1/-M1280、每模块180秒。旧677、已验basis与512模块全部冻结，不加内存，不使用native，不运行116667整链，不开始其它算法。

动机：原512边基底试除需要66.398秒，整链等成本排期约4.21h。新计算对象P是已验607基底的乘积literal；每个大p检查gcd(p,P)=1，代替逐项607次mod。外部乘积只生成候选，ps.prod=P必须实际decide+kernel通过，且checker参数只接P literal，不能在每个p展开ps.prod。

声音性沿用BasisComplete：任意d≥2且d≤sqrt(p)整除p，取Prime q∣d，小于B，故q属于ps并整除其prod=P；q也整除gcd(p,P)=1，与Prime.not_dvd_one矛盾。List.dvd_prod使用固定Mathlib.Algebra.BigOperators.Group.List.Lemmas:154，已确认其对象缓存存在。

固定Lean Init/Data/Nat/Gcd.lean:20–35明确说明kernel/compiler均对gcd提供任意精度高效求值，逻辑模型仍是欧几里得递归。这是选择有界试验的机制依据，实际性能仍须测量。先通用prime/chain声性、P等式和真实末端20000093单点，成功才测同512边+原题消费者。所有新数据同步Elab.async=false。
