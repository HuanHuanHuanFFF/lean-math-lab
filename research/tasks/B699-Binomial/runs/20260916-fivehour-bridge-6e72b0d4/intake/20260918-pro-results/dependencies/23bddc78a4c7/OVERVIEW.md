# B699 Pro E：下一轮唯一工作入口（本包快照）

任务日期2026-09-18。本文件接续原2026-09-17累计入口与本会话已交付四轮，不声称其他会话或Git实时状态。全项目持续入口仍为用户原OVERVIEW；此文件是本轮单包自足交接，供协调者回填，不冒充已更新远端。

## 1. 原题、状态和证据等级

对全部自然数1≤i<j≤floor(n/2)，存在同一个素数p≥i同除binom(n,i)、binom(n,j)。本角色只做i=3，保留p=3与完整素数幂、同一原始(n,j)。NC3指原合法数对无共同奇素数。

完整i3未闭合，R7={3,4,5,6,7,8,9}不变。原作者前沿均保留原等级；本轮是作者纸面+精确证书+同作者另一实现，没有Lean、外部独立审稿或新出版定理依赖。没有全历史非空差集认证。

## 2. 必须统一使用的原输入符号

k=n-j，g=gcd(n,j)，alpha=n/g=c2^s，c∈{1,3}；c=3要求v3(n)=1。beta=j/g，gamma=k/g。

lambda=3 iff v3(n-1)=1，否则1；mu=3 iff v3((n-2)/2)=1，否则1。N=(n-1)/lambda，K=(n-2)/(2mu)。完整NC必要窗口：

    N|j(j-1)，K|j(j-1)(j-2)。

N=ab，a=gcd(N,j)，b=gcd(N,j-1)。K=LHR，L=gcd(K,j)，H=gcd(K,j-1)，R=gcd(K,j-2)，每个完整源幂完整进入单个块。

    t3=beta gamma/N，C=gcd(K,t3)=LR，H=K/C，u=t3/C，
    z=(j-1)(k-1)/(NH²)>0，Cug²-zH²=lambda。
    n=2mu CH+2，j=(mu C-m)H+1，
    1≤m<mu C，g|m，
    lambda(mu²C²-m²)H²=(t3 g²-lambda)(2mu CH+1)。

这些是同一原输入的必要条件；弱解不能反向称NC。每次反向恢复须检查真实gcd、alpha、孤立3、整数性、区间、完整源幂以及原始二项式。

原累计作者前沿：a,b,L,R≥11，H>1；t3>100000，omega(t3)≥2；n≤3(C²-1)，n<11u^5z^4g^7，v2(n)≥4v2(j)+9。它们均非一般绝对高度。本轮主证明没有依赖那些旧闭合证书。

## 3. 本会话此前成果，避免重攻

- CUBE：原 (njk)^2(n-2)(j-1)(k-1) 为立方的充分消费者；对应2Delta/ell三次匹配（此ell是B首项，不是本轮辅助奇素数）。
- IQ3：Q=(n-1)(n-2)/(jk)为整数的NC输入有omega(t3)≥3，因此两底g=u=1整片已排。辅助Vieta轨道分类不是保持NC的下降。
- SPLIT：Theta=Q/2，Theta(Theta-2)为有理平方的分支已在两窗口层排空。非整数Theta仍一般无界。
- TP：整数反射r=(j-1)(j-2)/k的新数对(j+r,r)必收到旧H完整幂的共同因子，故不能将它当保持NC的严格下降。固定g=2,u=1,H=5的无限弱窗口族已存在，但不满足alpha且有共同素数197。

精确原件入口为 sources/PREVIOUS_OVERVIEW.md 与 PREVIOUS_PROOFS.md；早三轮仅沿用其交接边界，不在本轮假称重验。

## 4. 本轮最强新增：P2-POWER

    NC3，g=2，u=1，n=2^(M e+1)，
    M∈{4,6,10,14,22}，e≥1  ==>  omega(t3)≥3。

所以全部这些行的两底g=2,u=1切片闭合。不是这些行的所有j闭合。

纯二幂n=2^v的同一两底切片现在只可能满足

    v偶；或者 v奇且gcd((v-1)/2,2310)=1。

## 5. 可直接复用的新证明机制

16|n、两窗口、真实g=2,u=1下，m=(n/2-j)/H为正偶整数。

    T=lambda mu H，E=lambda mu C-zH，A=lambda mu E-2z，
    A²-(lambda²mu m)²=4z²(T+1)，
    4A=z(T²-4T-8)+lambda³mu²。

两个偶整数平方间隙强迫T<4z+6；T≡7mod8、z奇给T≤4z+3，于是

    H⁴<16n/(lambda mu²)。                         G2-H4

不是只由范数推出；必须保留原m。仅4|n时仍有T<4z+6，不能省略16|n就使用H4。

n=2x⁴的三个互素源块为(x-1)/delta_-、(x+1)/delta_+、x²+1，delta_-delta_+=mu。x≥64时，二次块靠大小；线性块B进入H会给B|±16-nu eta，同时nu eta≤3、B≥21，矛盾。

n=2x⁶用(x²-1)、Phi3、Phi6，将共同的一次3移入第一块，得到三个互素完整块；x≥64时任何块进入H都违反H4。

对奇辅助素数ell，n=2x^(2ell)：将Phi_ell或Phi_2ell中的一次ell完整移入第一块，得到B0,B+,B-。若x^(2ell-4)>162ell⁴，两个大块都遇C；两底迫使B=(x²-1)/mu|H。写y=x²,H=B eta：

    C eta=Q_ell(y)，4Q_ell(y)-eta=zB²eta³，eta正奇，
    eta⁴<32mu² y^ell/(y-1)^4。

一阶：y-1>4ell mu且(y-1)^8>32mu^6 y^ell，则0<eta,4ell<B而B|4ell-eta，奇偶矛盾。

二阶：F=y-1，R=4ell+2ell(ell-1)F；R<B²且F^12>32mu^10 y^ell，则0<eta,R<B²而B²|R-eta，奇偶矛盾。

实际阈值ell5/x8、ell7/x256、ell11/x2048；无限段有严格单调延伸，完整尾部见PROOFS §6。

## 6. 实际证据和可执行入口

80个不同n、1780个完整源分配；1774个非整z、5个负原判别式、1个严格非平方。142个递归满阶素性结点；18个坏证书拒绝；26个精确多项式恒等式。最大端点2^221不是逐n扫描范围。

    python3 -S -B scripts/verify_certificate.py --certificate outputs/CERTIFICATE.json --output /tmp/power-acceptance.json --negative-tests
    python3 -S -B scripts/check_algebra.py --output /tmp/power-algebra.json
    python3 -B scripts/replay.py --output-dir /tmp/power-replay --rebuild

前两命令只需标准库；最后的--rebuild需SymPy，分解只是提议，仍由前述精确证书验收。

## 7. 剩余无界量、失败和下一项

一般n,j,g,t3,C,u,z、粗素数支持和完整指数仍无界。整个g=2,u=1、一般omega(t3)=2、n=3·2^v均未闭合。原题反例为零，不把任何弱模型作为候选反例报告。

值得继续的具体缺口是ell≥13的同源余式：二阶高度的次数12低于ell，无法通过扩大x或扫描解决。三阶的右侧zB²eta³不消失；必须对z或eta添加真正的新约束。也可转向纯二幂偶指数的同一切片，但不能沿已排的五个倍数族重复工作。

首个可证伪实验应保留实际恢复判别式；范数弱族H=47+48r,z=3,C=(3H²+1)/4,n=2CH+2已明确违反H4而没有原j。新命题若遗漏m，先用此族测试。完整推导与失败记录见本包PROOFS、FAILURES。
