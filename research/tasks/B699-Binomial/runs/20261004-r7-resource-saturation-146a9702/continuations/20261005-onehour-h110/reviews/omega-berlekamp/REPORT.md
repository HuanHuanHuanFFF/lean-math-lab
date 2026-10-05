# 计重Ω的独立框架：平方自由分解与Berlekamp零度

核验者/root/verify_reg3_module；Complex established target，gpt-6.1-sol/xhigh，固定基线dfed05f112279e5cd55dc1dff2371680d66f735b。唯一写入本目录；旧签件只读。原共同截止2026-10-04 19:09:35 UTC，本框架不启动未经成本校准的全量扫描。无Lean、CI、安装或新颖性验收。

本稿接受独立数学计数法与其受控实现/对照，不接受h110整层结论。代码 [omega_berlekamp.cpp](omega_berlekamp.cpp) 与作者DDF路径不同：逐层平方自由分解，再以Frobenius固定空间的维数数不可约因子。当前可执行实例限Fp11与Fp257；数学证明适用于任何素数域。非零常数Ω0；零多项式拒绝，不能当Ω0。

## 1. 平方自由计重及p次幂完备性

把非零F除首项成为monic，写F=∏f_j^e_j，f_j为不同monic不可约因子。Fp完美，所以非恒定不可约f_j均可分，f_j不整除f_j′。若p不整除e_j，F′在f_j的阶恰e_j−1；若p整除e_j，该求导项消失，其它项仍被f_j^e_j整除。因此C=gcd(F,F′)的指数分别e_j−1或e_j；W=F/C恰含所有p不整除e_j的因子各一次。

从i=1开始重复Y=gcd(W,C)，Z=W/Y，随后W=Y、C=C/Y、i增加。Z恰是原重数i（且p不整除i）的平方自由层；每层用i·Ω_distinct(Z)加入计数。W=1后，剩下C只含p整除的原重数，因而C′=0、所有非零指数为p倍数。在Fp中系数的p次根仍为自身，逐系数得到唯一monic R且C=R^p。递归贡献p·Ω(R)。次数严格缩小，所以终止，完全覆盖纯p幂、混合重数、p+1或更高非p倍重数。

实现每次整除均验证余式0；每个非恒定层再核gcd(Z,Z′)=1；残余同时核导数0和全部支持指数为p倍数。不是在char p错误使用char0 Yun公式，也不靠找根或数不同因子代替重数。

## 2. 平方自由层的Berlekamp完整计数

平方自由monic g次数n，Fp[X]/g由CRT分解成∏Fp^(d_j)。Frobenius T:a↦a^p为Fp线性映射；在每个有限域分量，固定元素恰Fp（X^p−X的p个Fp根已经穷尽其根数），故ker(T−I)维数恰不同不可约因子数。

在基1,X,…,X^(n−1)下，T第j列是X^(p j) mod g。独立代码先求X^p mod g，逐次相乘构造全部n列，再以精确Fp高斯消元求rank(T−I)，返回n−rank。列空间消元与矩阵秩等价，没有用DDF的degree分块或作者计数器。所有单位逆元经乘回1验证；模乘用long long整数卷积，约化系数严格为0…p−1。

这个零度只用于已证平方自由层，再乘真实重数；不能对非平方自由F直接把Berlekamp零度当计重Ω。

## 3. 已实跑对照与门控制

用前轮已独立验证全部因子乘积及Rabin不可约性的F257全部258份、F11全部1482份专化，共1740份作为对照；旧完整输入hash先与签件receipt比对，期望Ω由已验重数给出，不从作者新DDF取得。

另18份控制覆盖非零常数、X^p、(X+1)^p、p倍重数与普通重数混合、p+1、平方再p幂、两个重复线性因子，以及不可约二次的p幂和它与linear^5的混合。二次取X²−a且a经Euler判为非平方，故不可约。1758例全部相等，约1.42秒，见 [corpus-expanded-result.json](corpus-expanded-result.json) 与 [corpus-expanded-run.log](corpus-expanded-run.log)。早期1754例回执也保留。

零式输入明确返回reject/exit1，见 [zero-case-receipt.json](zero-case-receipt.json)；partial文件不是成功证书。框架单例最高degree519（p257控制），实际源专化degree≤110；实现输送上界1000只为资源守卫，不限制数学命题。

## 4. h110首1000方向仅为成本探针

从当时六基快照直接重建前1000规范方向，在0、1、2、9、10里取首个非零专化，不按预算搜索。独立Berlekamp计数用时约0.624秒，观测peak working set5365760 bytes；仅734份满足Ω+110−deg≤6，其余未用别的c或联合证书尝试。见 [h110-probe-receipt.json](h110-probe-receipt.json)、[h110-probe-result.json](h110-probe-result.json)、[h110-probe-resource.json](h110-probe-resource.json)。此试验不是随机抽样证明，也不排整层。

当前成本允许完整177156条已选专化独立复算，预估分钟量级；实际仍须全方向coverage、从六原TSV独立重建每份F、非零门、计重Ω与预算或联合短证全部核对。只验1000份或把作者DDF输出改名，不支持全源域结论。流式逐方向输入/输出及约177KB覆盖bitmap可保持内存<200MB；任何未解决方向须明确保留。

起始可用物理约1.75GB，16可见逻辑核、额外CPU配额未确认；临时exe与输入仅D:/Temp/b699-r7-onehour-h110-20261005/review-omega。所有工作串行、不安装依赖、不操作他人进程。没有R7、COVER或原n/j前沿减少声明。
