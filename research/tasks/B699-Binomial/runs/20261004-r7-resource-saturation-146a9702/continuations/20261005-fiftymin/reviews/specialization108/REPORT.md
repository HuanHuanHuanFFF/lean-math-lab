# SPEC108：二维源核全部射影方向的独立验收

核验者 `/root/verify_reg3_module`；Complex established target，gpt-6.1-sol/xhigh。固定基线a3090b6ce85e45137a1b9909346858d8a262ec8a，分支huan/b699-r7-paper-20261004-01a0e34b。唯一写入本目录；已签SPEC107与更旧签件未改。原共同截止2026-10-04 17:44:48 UTC，无延长。无Lean、CI、安装、子代理、提交或新颖性验收。

接受固定候选 [03-h108-projective-candidate.md](../../notes/main/03-h108-projective-candidate.md)，SHAd60f04c8382c634823c0f7a857c4376332e85e07f226708f63e57f3ee0123b26。**任意非零Q[N,X]多项式G，若q≤108、D_(1,2)≤305并满足固定21源下阶，其非竖Q不可约因子按重数计至多6。** 因此该源域不含七个不同非竖因子的G。若原七可载结构及源桥适用，则该必要域的最低h为109；原桥的历史条件采用等级不变，不推出COVER7→COVER6或R7减少。

## 1. 完整模源核，不是部分基构造

input.txt头为(108,305,257,0,21)，全部21个(r,s,w,m)与SPEC107及此前已验源一致（文本换行不同不改变整数输入）。采用的普通局部坐标是N=r+u,X=s(r−s)+t；中心r=2s时X=s²+s u+t，权(1,2)。所有源系数条件为整数齐次Hasse线性条件。

重新编译、实际运行固定旧独立接收器SHA487596ab5c3ed683aef60cc5e0a930d0002e54a40e90edea471407827fa8e196，完整接收新trace SHA9c09a25030758968ea0c489c6305407c8878781059048016985f5d4edf6f8706。结果 [receive-e108.json](receive-e108.json)：23476条件、21580非冗余条件，109项weight数组只有两项305，其余306，D305截面维数2。逐条件/点/jet/pivot及全模更新均实际通过，与作者全数组相同。

接收算法不变量沿独立已验算法且本次审查：条件次序对u前驱封闭，δ(A(N)f)=A(r)δ(f)；每次最小(weight,index)pivot替换精确生成新δ的完整核，weak Popov的不同leading X位置保证组合的最大leading项不被消去。故Σmax(0,305−weight+1)=2是完整截面维数，不是候选向量数量。短或额外trace被拒绝。257为素数，所有整型模乘均在安全范围。

P0的原字节与刚签SPEC107的P完全相同，SHAeca754a4695ac7cd9a9bc35f22f62c195b235272c5a872fc2e4dba1ccce5c5fe；其21401项、q107/D305及全部23476个直接jets的签件复用。新P1 SHA d681ed4679ede80f0a316cdfa897ee82a2435e5e9d2fd993041e62dea77380bf，21499项、q108/D305；独立 [direct_basis1_jets.cpp](direct_basis1_jets.cpp) 用双Horner直接重建全部21源，23476个所需Hasse系数全零，见 [basis1-direct-source-result.json](basis1-direct-source-result.json)。不依赖作者回代算法。

q不同保证两者在F257上独立，因此是维2模源核的完整基。只检查两个基向量就足以覆盖其所有线性组合的源条件；没有重复检查258次jets，也没有遗漏方向。

## 2. 射影覆盖和全部专化逐项重建

固定projective-certificates.json为774289 bytes，SHAfd4332af4a7a687f711a7104bc4ff0050b152e30b87eb74dc10672778249c334。独立 [prepare_certificates.py](prepare_certificates.py) 检查精确258条、顺序0…256及infinity各一次，无遗漏、重复或未解决方向。它们分别是P0+tP1与P1，非零标量倍不影响次数和Ω；任何模源核非零向量都落在其中唯一方向。

脚本从两份原TSV逐系数计算P_i(c,X)，再组合方向；所有258个所选专化均非零。实际所选c仅0、2、17。独立核所选degree、unit、Ω及108−degree，degree分布为107一次和108共257次。所有单项式支持、模系数、source hash与完整输入schema均检查。生成的独立C++输入为212500 bytes，SHA bf1c7353aabb1ba9792634ee3d28d79323f4e6bf7cfe2b336d6366765bc13523，位于D盘；全来源与逐方向结果在 [prepare-receipt.json](prepare-receipt.json)。

不以作者326次搜索尝试或未成功的试值为证据；只接受这258个实际成功、完整给系数的证书。

## 3. 全部完整乘积与Rabin不可约性：实际通过

独立 [check_all_factors.cpp](check_all_factors.cpp) 从独立重建的专化系数开始，对每个方向核单位乘全部首一因子及重数的完整乘积。全部1162个因子出现、1129份不同因子多项式均通过。相同完整系数的因子重复出现时复用已算不可约性，按完整vector键缓存，不依赖hash碰撞；重复出现及重数仍逐项计入每个乘积和Ω。

每个次数d因子检验x^(257^d)−x mod f=0，并对d所有素除数l检验gcd(f,x^(257^(d/l))−x)=1。包括d1的线性情形；不调用SymPy或外部factor/irreducible函数。共27830次Frobenius迭代及1433次Rabin gcd测试，所有身份精确成立。多项式乘法先用long long整卷积再模约化，余式/Euclid/逆元均为标准精确域运算；系数、次数、monic、正重数、乘积总次、EOF及预算都实检。没有概率检验或抽样方向。

结果在 [all-factor-result.json](all-factor-result.json)，日志 [all-factor-run.log](all-factor-run.log)，退出码0。完整258个预算b=Ω+108−deg均≤6，分布

    b1:2，b2:11，b3:43，b4:63，b5:76，b6:63。

独立准备器、C++消费者与作者保存的分布及每项degree/Ω/budget逐一一致。

## 4. primitive/Gauss/退度consumer：接受

原非零Q多项式G清分母、除内容成primitive整数相伴式；整数齐次源条件保持，primitive保证模257非零。已核完整模核及射影覆盖给Gbar=a·P_direction，a≠0。对该方向的保存c，F=Gbar(c,X)非零，因子数据差别仅非零单位a，Ω和次数完全相同。

Gauss分解G_Z=±∏H_i^e_i，所有本原整数H_i包括竖和非竖因子。整体F非零保证每个Hbar_i(c,X)非零；其X次数t_i满足0≤t_i≤q_i。专化仍非常数的原非竖因子按重数计≤Ω(F)。专化变常数的每一份原非竖因子q_i≥1至少消耗1单位整体X次数损失。因此

    k_nonvertical ≤ Ω(F)+deg_XG−deg_XF
                  ≤ Ω(F)+108−deg_XF ≤6。

原竖因子q_i=0只贡献非零常数，重复因子及不同因子的模化碰撞按e_i完整计数。不要求mod化保不可约、不要求所有因子保次数、不要求各因子满足完整源条件，也不从模非零核反推Q上G存在。F=0不在任何一次应用中。

这个结论对固定源域自身不依赖DP、global649、E≤1或小系数消费者；原七可载应用仅需其已有非竖与源桥合同。h109及更高空间不在本签件范围。

## 5. 前沿与限定接受

该定理排除七非竖源G的全部h≤108层；与既有低端界合并为h≥109。原n/j、模板参数、完整粗素数支持和指数仍无一般绝对界，R7仍{3,4,5,6,7,8,9}。不证明109≤h≤152的七可载配置为空，不改变原COVER7/COVER6逻辑。

候选所述E0的354→332及21个h107/1个h108态删除，作为已采用固定必要表的条件应用；本次没有重签该表完整DP或global649链，也未独立统计其状态数。E1的51态亦不重签。本签件的无条件接受是上面V108的代数因子数界；有限必要表不是实际曲线或原(n,j)点数。

## 6. 实跑、环境与固定字节

每条命令均在指定C:隔离树，旧接收器/新直接jet/新Rabin程序分别以g++13.1.0编译到D:/Temp/b699-r7-fiftymin-20261005/review108；Python输入重建使用-B、不写缓存。操作串行，没有下载、改变依赖、处理他人进程或触碰并行Lean树。全部退出码0，Rabin消费者约1.46秒，准备器约0.09秒；完整trace接收已实跑完成。

初始可用物理约2.7GB，CPU可见16，额外CPU配额未确认；C约21.9GB/D约15.9GB可用，是本次即时观察。所有源码、旧采用签件、输入、实际结果及哈希将由本目录fixed-inputs/evidence-manifest与acceptance绑定。无Lean或人工同行评审；新颖性未核验。
