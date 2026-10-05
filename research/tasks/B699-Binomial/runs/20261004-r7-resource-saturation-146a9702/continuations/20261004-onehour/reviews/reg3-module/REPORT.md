# B/REG3 九维关系模与完整门饱和：独立验收

核验者 `/root/verify_reg3_module`；Complex established target，gpt-6.1-sol / xhigh。固定起点 f08ead6b850d3f88188f1acc7769cce9ee565482，分支 huan/b699-r7-paper-20261004-01a0e34b。只写本目录，无 Lean、CI、下载、提交、子代理或原件修改。共享截止2026-10-04 16:56:50 UTC，本核验于16:33 UTC交回。

**接受下列三项指定范围的纸面命题及精确证书。** 这是具名独立AI审读与实跑证书复算；不是Lean验收、人工同行评审或新颖性认定。

## 1. 固定源与采用前置

候选固定为本continuation [01](../../notes/b/01-nine-module-saturation.md)、[02](../../notes/b/02-h2-bounded-space.md)、[03](../../notes/b/03-five-power-sharpening.md)。初始核验SHA/字节数在 [fixed-inputs.json](fixed-inputs.json)；作者最终23文件共134464 bytes的清单SHA为956405d5bd692b39a6d90ad8962cbaa558d579a4cc99760da3d691cf7456aa73，逐件核对结果见 [final-author-freeze-check.json](final-author-freeze-check.json)。两项后增差异及处理见 [source-transition.json](source-transition.json)，原件成员SHA在 [independent-checks.json](independent-checks.json)。独立入口 [independent_verify.py](independent_verify.py) 不运行作者的 `__main__`，也不替换作者输出。

通过主run的固定 `reg3_source.py` 按MEMBERS/retained_path读取B06六件原字节；generic的B5=P5、N、K，colon_4…colon_0的V4…V0。每件SHA已实核，全部支持无重复、非负，三坐标/零第四坐标与整数系数均检查。N全系数身份另实核。

B0=r u(u−1)y(y−1)，D=8r u²y²−6(u−1)²(y−1)²；其定义采用主run notes/b/01-source-and-routes.md，与此前具名 reviews/b-nonzero/REPORT.md/acceptance.json 的B0及E非零前置一致。本次不重做该E非零论证；前置签件冻结哈希另记 [adopted-dependencies.json](adopted-dependencies.json)。六式允许点的B0DNK≠0保证基本因子与r/D/N/K全部保留。

## 2. 九维表示与秩判据：接受

基本开集U为u(u−1)y(y−1)(uy−y+1)≠0。完整原件实核

    [r⁹]V0=L=−1105920u⁸y⁷(u−1)²(y−1)³(uy−y+1)⁵，deg_r V0=9。

L在U处为单位，故首一V0/L给自由基1,r,…,r⁸。取乘r矩阵C，A=LC；对P5,V4,V3,V2,V1各取w_F=L F(C)e0与A^j w_F（0≤j≤8），共45列。所有源F的r次数≤9，故w_F中唯一需要降的r⁹项正是作者公式，不漏高项。任意乘子可模首一V0化为次数≤8；这45列覆盖完整生成理想，并在乘r下稳定。它不是有限次数ansatz。

s=rDNK的完整r次数为6；S=Σs_kL^(6−k)A^k=L⁶s(C)，单位缩放不改变成员性。固定任一复基点，商为C[r]/g，g为完整六式首一gcd，长度≤9。所有共同根均被门s删去，当且仅当g|s⁹，包括所有重根。故

    允许共同r根存在 ⇔ S⁹e0不在R列空间 ⇔ rank[R,S⁹e0]>rank R。

判据方向、全部五组关系列、首项降次、零代数g=1、重根及D/N/K/r各门均已审查。没有增加P5、V4…V1或门的最高项非零条件；它们的特化降次保留。九次是逐复纤维长度界，未接受全局局部化环上的colon指数、乘子或UNIT。

## 3. 五次幂与P5非恒零：接受

独立从原P5逐系数重建p0/p5的两条分解。P5恒零且u(u−1)y(y−1)≠0将迫使A5=0、JF0=0、p1=0。四个固定尺寸Sylvester结式的u次数为3/2、2/9、3/2、2/9；完整y次数界12、34、12、34。

独立实现使用有理高斯行列式，不使用作者Bareiss代码；分别在13、35、13、35个整数节点核对，合计96。节点数严格大于各完整次数界，故证实完整一元多项式身份，而不是抽样排空。两个QQ多项式Bézout身份另用独立SymPy多项式运算逐系数核对为1。固定尺寸矩阵没有除未知首项，特化降次或最高项消失时，共同有限根仍迫使结式零。因此P5在每个基本允许复基点为非零一元式，次数≤5。这个命题是旧R4作者结果的当前源复核，不记作新发现。

g整除非零P5，故deg g≤5。沿第2节同一论证可用S⁵e0=L³⁰s(C)⁵e0，仍精确等价于允许根存在时秩增长。五次仍仅为逐纤维长度界。

三种有限代数的完整证书用另一套SymPy QQ[t]/(q)算术复核：QQ基点u=y=2；四次q=8t⁴+16t³+4t²−4t+3、u=t、y=(4t³+4t²−2t+1)/3；q=t²+1、u=t、y=2。各q平方自由另核，所有实际求逆均实核为单位，无需假设q不可约。全部六式被g整除且完整Bézout组合等于g，因此是整纤维证书；门gcd身份、全部45列与每一步1…9门幂均复核。秩及五次/九次增广秩分别为9/9、8/8、8/8。

四次边界g=r+(16t³+24t²+8t+3)/18，K在完整商上恒零；两个复基点g=r，被r门删去。它们不是Ω内合法点，不能用有限检查证明全U排空，不能从36,855中扣四。完整结果见 [independent-checks.json](independent-checks.json) 与 [independent-run-3.log](independent-run-3.log)。

## 4. h²有限乘子空间：接受

独立原件重建h²=B0²D²N²K²：3405项，多重次数(26,20,12)，总次数56，最大整数系数48bits。对各源F，乘子逐项满足作者明列的a/b/c盒与总次数截断；移位数P5/V4/V3/V2/V1/V0分别1768/144/96/84/95/263，总2450。完整坐标单项式7367，次序规则与审读源码一致。32003经试除确认素数。

独立输入原字节与作者回执完全匹配：276510 bytes，SHA d29549cff082b450564836a32626ac71025d1ca3a3c851b9c54ded22bfce9824。重新编译、执行审读并冻结的新C++（SHA e6f6bbcf1eddf8ee35d69cacb8d0a44d9e594c2bce0bc7e6c2d5cc88a11d3e38），实际结果见 [h2-independent-result.json](h2-independent-result.json)：原行秩2450；目标归约非零，故增广秩2451；首个未约项(26,16,12)，系数23077，与作者一致。不是仅检查作者JSON。另编译、审读最终新增verify_minor.cpp，直接从同一独立整数输入和2451个指定坐标重建方阵，实算det=29924 mod32003，exit0，约4.14秒，见 [minor-independent-run.log](minor-independent-run.log)；此路径不复用第一求秩程序的消元行。

消元中的输入整系数位宽、唯一单项式、指数盒与列索引均由独立生成审计约束；uint16容纳0…32002，模乘使用long long，每次相减规范回域。不存在重复项覆盖或整型溢出。完整源码、输入hash、EOF/整数读取规则与本次运行一致。

有理结论安全：原行数2450给Q上秩≤2450；模32003的非零2451阶增广子式给Q上增广秩≥2451。故h²不在指定Q乘子空间。**未接受h²不在整个J_new，更未接受所有h^m失败或允许域无点。** 高次数乘子之间抵消仍可能产生其他证书。

## 5. 命令、资源与诊断

实际工作目录始终为指定C:隔离树。独立执行为 `python -B <本目录>/independent_verify.py`；随后g++13.1.0以 `-O2 -std=c++17` 编译固定C++到D:/Temp/b699-r7-onehour-20261004/review-reg3，再用本目录独立重建输入运行。Python3.14.0、SymPy1.14.0。独立小证书共约5.08秒；大矩阵约1.52秒。编译日志、运行stderr及 [h2-run-receipt.json](h2-run-receipt.json) 保存，退出码0，观测峰值42389504 bytes。

开始时Windows实际可用物理约2.2GB，16可见逻辑核，C/D各约21.9/20.2GB可用；CPU额外配额未确认，无Linux cgroup可用。这是本次观察，不作为机器常量。所有重任务串行，未操作已有进程、缓存或并行Lean仓库。

第一轮独立脚本错误只发生在输入字节hash：我的重建用了LF，作者Windows文本输入为CRLF；逐字节规范化证实内容完全相同。保留 [independent-run.log](independent-run.log)，改为相同Windows换行后严格字节hash通过，最终 [independent-run-3.log](independent-run-3.log) 通过；不是数学或证书失败。

## 6. 对全题的实际变化及下一步

接受完成可执行的完整9维关系表示与逐纤维全门判据，并把同一判据幂从9降为5；排除一个固定h²证书空间。未求解两变量秩子式条件，因此未新增认证原(n,j)删域，R7仍{3,4,5,6,7,8,9}。全域UNIT、完整RUR/允许点表、原a与工作底/指数/n/j恢复、原题闭合均未接受。E非零仍按旧独立签件采用；本轮不改变旧恢复契约的状态。

下一步可执行检查是利用固定R与v5处理全部基点子式/代数分解，再把剩余候选送入已核验完整纤维终端；不能只扩大模抽样、重复旧边界点或提高h幂就宣称全域闭合。
