# 首个原题统一比例区域：独立技术接受

核验者runtime_review，2026-10-01 16:26 UTC；AI技术审查，不是第二内核/人工同行复审。采用续轮基线4e3bbbc7与原4d22485下固定N/EC/Uniform成果。

接受新 `tail/Consumers.lean` 的两根。准确结论为全部自然数n,i,j，当 `i≥131072,i<j,j≤floor(n/2),n≥4096i`，存在**同一**素数p满足 `p≥i,p∣C(n,i),p∣C(n,j)`。没有额外A、EC、Gap、PNT/RS、有限n上界或筛表假设。反例根准确推出n<4096i；比例边界n=4096i也被包含于共同素数区域。

Common否定式与终端均保留i≤p，p=i没有排除；输入j≤n/2是Nat商。N来源的primePart明确乘完整p^factorization、阈值i≤p，已验三窗口/实值π(i−1)与归一化body完整复用。新修订只将不存在的gcd投影API换为 `dvd_trans` 加 `gcd_dvd_left/right`，证明和声明没有弱化；旧被冻结源未覆盖。

固定新source SHA256 `4e8ce05ff8abf9aa00b8147c489fcf68f7c7eeabf1904dbc8a68ba6b9a7c8a2c`，object SHA256 `468f8bed9749855a264e11b8e4ac7e40c1130d646b29ddb89a653f314958675d`。source/snapshot/object/receipt/stdout五hash独立全部匹配 `tail/verification/20261001T161710323Z/evidence.json`；17个旧source/receipt/新旧对象字节复用绑定也全部匹配，不把复用称为重编译。seed清单存在重复同一object sidecar条目，实际唯一复制17路径，字节正确；新seed语法已修复，旧stage清单不改。

新消费者实际fresh Lean4.33.1命令 `-j1 -M3132 -DElab.async=false`，exit0、17.011秒、树WS1674.62MiB，Native0x2030/committed限0，实际3072启动/1792WS/900余量与单锁2CPU约束。完整公开原题类型与两个传递axioms输出已审读，只含propext/Classical.choice/Quot.sound；stderr空，拒绝式审计真实通过。source前后不变，没有placeholder或项目axiom。

该原题区域现在确有源接通的内核接受。与旧覆盖关系不可只看此前完整指标集合：它与旧 `n>effectiveHeight(i)`、`j^4<n^3` 均可能重叠；与旧n≤2e7输入不重叠（最小n=536870912）。准确区域比较另见coverage-comparison.md，不能把stage里有限输入的disjoint描述扩大为所有旧区域互不相交。

完整指标新增 **0**。尚有 `4883≤i<131072` 的无界n区、所有大i的n<4096i及Gap/短区间供应等原题消费者。研究进展是高指标反例统一高度从旧非线性effectiveHeight压到线性4096i（在所列指标域），不是完整i≥4883尾部或完整B699解答。不主张原创数学或新颖性。
