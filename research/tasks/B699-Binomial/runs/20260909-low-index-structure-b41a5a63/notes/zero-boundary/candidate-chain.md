# 有限候选恢复与所有合法 j 的覆盖

Owner `/root/low_index_mechanism`；本目录零边界工作。当前结论由主线程接受为纸面加精确计算层：对 i∈{28,31,34}，所有自然数 n,j 满足 i<j≤floor(n/2) 时，都存在素数p≥i整除gcd(C(n,i),C(n,j))。尚非完整Lean结果，也没有原创性或外部评审接受声明。

## 完整性：从原始反例到一个被检查的行

1. [M64和Matveev原版推导](README.md) 给反例n<2^(2^52)，原始两大幂指数小于2^52。[有理log证书](verification/20260909T090620Z/certificate.json) 经独立checker给共同严格界n<10^25。
2. 若n≤4096，合法性必给n≥2i+2，故该行已在完整低分支[2i+2,4096]。
3. 若n≥4097，M64与CofactorCover给两个不同素数p,q<i，且n≤64p^e、n≤64q^f，其中e、f是实际C(n,i)赋值。
4. 对p令v=v_p(i)，定位后原始指数h=e+v，存在0≤a<i使p^h|n−a。写n−a=A p^h，则
   `A p^(e+v)≤n≤64p^e`，从而`A p^v≤64`。
   所以1≤A≤floor(64/p^v)。由于n>4096，e>0，故h>v。
5. p^h≤n<10^25，而`2^84=2^80·16>(10^3)^8·10=10^25`（2^10=1024>1000），所以h<84。也可直接按p^h<10^25逐次乘p，不使用浮点log边界。
6. 该n于是属于一个闭区间 `[A p^h,A p^h+i−1]`，裁剪到 `[4097,10^25−1]`。另一个不同q给第二种颜色。因此n在不同素数颜色区间的交集中。两大幂位置是否相同不会破坏这步覆盖；大n时不同位置已在Matveev固定差桥中另行证明。

生成器枚举p<i、h>v_p(i)、p^h<10^25和上述A界，完全涵盖此范围。p=i在小素数定位来源中保留额外v_p(i)；本步骤只选p<i的小素数，后面大因子D允许p=i。

## 两个不同实现

[生成器](generate_zero_candidates.py) 构造每个素数颜色的所有闭区间，使用开始点与结束点+1的整数事件扫描；统计非零颜色数而非区间数量，保留至少两种颜色的区间。相同素数的重复区间不会被误当成两个素数。

[独立checker](check_zero_candidates.py) 不导入生成器。它按A优先、p幂逐次增长重建区间，先合并每个素数自己的区间，再对所有不同素数对做双指针交集，最后取并。它分别比较完整高分支、加低分支后的并集、原始区间个数和行数；不信任生成器的覆盖摘要。

两个程序都以精确整数复核2^84>10^25、三项零净指数恒等式及三个M64比较。它们采用的对数证书必须逐字节匹配已验SHA256，不能从一个未经验证的高度参数启动。

## 每行证书直接覆盖所有 j

给定候选n，生成器通过只除去C(n,i)中的p<i部分构造D，然后检查

- D>0；
- D与(i−1)!互素；
- i!D整除n的i项下降阶乘；
- `n^E < K D^λ`。

独立checker不计算C(n,i)的完整因数分解，也不要求给定D等于实际V。它重新乘下降阶乘、做gcd/整除及严格幂比较。已开发Lean接口 [LargeDivisorWitness](../../lean/LargeDivisorWitness.lean) 的 `common_of_large_divisor` 正好把这些前提送到原题的raw存在素数结论；因此不必枚举j。

顶端素数见证p则检查`p≤lower≤upper<p+i`，使用 [GapBridge](../../../20260909-large-prime-structure-cb4764f0/lean/GapBridge.lean) 的 `common_of_top_prime` 覆盖整个闭区间。检查器最后把全部见证区间的并与完整候选并集逐端点比较，不允许缺口。

## 素数证明与失败策略

小素数使用精确试除；证书限定p≤10^6，checker重新检查所有可能的小因子。生成器对大数的Miller–Rabin只作搜索过滤，不能生成被接受的probable-prime证书。

大数备用方案已写为递归Lucas/Pratt证书：完整分解p−1，每个因子有更小素数证书；找到a使a^(p−1)=1 modp，且对p−1的每个不同素因子q验证gcd(a^((p−1)/q)−1,p)=1。checker独立核完整乘积、递归素性和全部模幂/gcd；这些条件保证a模p的阶为p−1，故p为素数。

本地Mathlib已有 `Mathlib.NumberTheory.LucasPrimality.lucas_primality`，可供必要时接入Lean。普通NormNum.Prime源码说明较大素数的现有证明有栈深风险，不能把巨大p直接交给未认证probable测试或盲目Bool试除。

本次实际输出没有任何Lucas分支：314份素数证书全部为精确小素数trial，`large_prime_lean_bridge_needed=[]`。因此本次没有新增巨素数Lean桥的债务。若未来某行找不到严格D比较或精确素数证明，程序会保留unresolved并输出incomplete/exit1；这次全部unresolved为空。

## 真实执行与最大候选

| i | 完整候选行数 | 高分支区间数 | 最大候选n | topPrime片段 | largeDivisor单行 | unresolved |
|---|---|---|---|---|---|---|
| 28 | 6768 | 167 | 301823 | 174 | 2735 | 0 |
| 31 | 9302 | 249 | 688157 | 152 | 5272 | 0 |
| 34 | 9397 | 237 | 1102281 | 140 | 5370 | 0 |

候选最大值是完整恢复后的最大端点，不是扫描预设上限；预设严格高度是10^25。没有声称只试到一百多万就覆盖了其后所有n，覆盖其后的依据是前面的完整区间恢复和对数界。

09:24:50.044至09:24:51.245 UTC运行生成器，1.1995893秒、exit0；随后09:24:51.276至09:24:52.545运行独立checker，1.2692053秒、exit0，stderr为空。实际argv、前后源码/输入哈希、输出及完整数据位于 [运行证据](verification/20260909T092400Z/run-manifest.json)。两个自有Python进程和托管PowerShell进程已全部正常结束；没有超时，没有扩大参数，没有j枚举。

## 精确依赖与仍未Lean的部分

数学前提链使用主线程本批 ThreeWindowWeights/ThreeWindowSize、CofactorCover、SmallPrimeLocalization 和已开发LargeDivisorWitness；实际模块源码哈希见本目录manifest。对数绝对高度使用Matveev 2000原文Cor2.3，没有作为新Lean公理加入仓库。

纸面加精确计算链现在完整排除了三个零指标的全部合法n,j；不过以下并未自动成为Lean成果：Matveev及其参数消费者；有限有理log区间/距离证书到实数定理的桥；本次恢复并集的内核证书；本次有限行数据的逐项内核装配。通用Lean消费者已经通过开发编译，并不替代这四项具体连接。

独立数学审读已由主线程要求，路径和冻结哈希已发给 `/root/independent_math_review`。其意见尚未被本记录预判为通过。脚本、M64原始整数、两份计算证书和原运行日志均已冻结，不覆盖或重写成功证据。
