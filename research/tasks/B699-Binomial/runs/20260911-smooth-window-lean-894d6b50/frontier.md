# 锁定目标与依赖

全域 R9={3,4,5,6,7,8,9,10,14}保持不变。完成子族也不能减少此集合。

最终声明：
1. 任意 a,b,r∈ℕ，r≤3，n=2^a3^b+r，5≤j≤n/2，存在素数p≥5整除n.choose 4和n.choose j。
2. 对m≥4，P_m=∏_{5≤p≤m,prime}p，若满足上述窗口且n≡4 mod P_m，则每个合法j有同一p>m，同时整除n.choose j和所有4≤i≤m且i<j的n.choose i。
3. n=2^(60k+2),k≥1给p≥17和4≤i≤14；n=2^(m!k+2),m≥5,k≥1给通用结论。素数量词在n,j之后。

反向依赖：转移与同余 ← 窗口存在性 ← 完备467行和58行CRT + 无限尾部 ← a<40、b<24、min(a,b)≤1 ← 完整2/3部分U的上界及必要下界 ← I/J/W整式、正性、实际二项式系数内容。

首个检查点：真实编译通用转移及严格端点反例，公理仅std3。后续从无限尾部优先连接显式行族，不等待有限证书。不得把未证必要界当最终定理假设。

## 2026-09-11 检查点

通用转移四条声明已整文件内核验收，std3，新增全域指标0、完整子族0。下一步仍是同余与窗口链。

新增候选简化：显式60周期族满足n≡4 mod9，可能直接使完整小素数部分U=n/4，进而仅用I下界即可排除；此路线正在形式化，尚未接受。

I/J/W代数9条已验，源码e6b711c、证据stage3；仍未推出实际窗口必要界。两份400MiB分卷再次504后拆为8份100MiB，现已取得并通过原400MiB哈希；开始解包真实本机环境。

同余模块9条已验，见verification/latest-Congruence.json。本机真实Lean v4.33.1与匹配缓存已恢复并通过最小相关导入；串行编译整树观测峰值约3.3GiB。继续实际系数和必要界。

## 完整显式子族闭环

两条用户要求的显式无限行族已完整Lean验收（ExplicitFamilies），且中间结果覆盖所有2^a≡4 mod9的2幂行。全域R9未减少。下一项：W必要界，再接一般光滑窗口尾部和有限证书；不在本闭环收束。

W必要界已验，含实际W负性、严格上界、任意互素因子消费者与noCommon消费者。下一步并行于数学审读准备有限检查器；Lean重负载继续串行。

FiniteChecker已通过Lean编译与std3审计：大小证书声音性、任意无2/3因子的互素桥、Kummer单carry与完整p^e模约束。467行具体证书尚在接入，不因检查器已验而宣称有限覆盖已验。

WindowPrimary的6条声明已通过真实Lean编译和std3审计：24倍二项式的自然数乘积、素因子指数和、最高2幂的精确位置、3幂上界及4U≤AB。证明仅分n mod4、n mod9，不遗漏四偏移或双3倍数。轴估值和阈值仍未完成。

FiniteCRT全部58条完整行定理已验（源SHA256 d85a362d9183e9767e4785ac547b38b30d1f1657ef2ad71a88b2974a8e5dd4df），每行所有合法j，传递公理仅std3。86个原始p^e约束，n=27采用5²。余数分类至多4项/步，不枚举j。409条I/W行与生成完备性尚待验收，不能声称467整体已完成。

B699: accept finite bound block 00, 48 complete rows, std3 audited

B699: prove uniform full-prime-power bounds on both axis neighbours via LTE

B699: accept full two-axis collision subfamily; noCommon forces min(a,b) at most one

B699: accept finite bound block 01, 48 further complete rows, std3 audited

B699: accept all seven neighbour cases and scaling bridges, std3 audited

B699: accept all four unbounded axis branches and all four window offsets

B699: kernel-prove monotone exponential thresholds a<40 and b<24 from W

B699: accept complete unbounded reduction to a<40, b<24, min(a,b)<=1

B699: accept finite bound block 02, all row consumers std3 audited
