# REG3阶段一：两次严格支撑收缩与r²成员独立验收

核验者/root/verify_reg3_module，Complex established target，gpt-6.1-sol/xhigh。基线dfed05f112279e5cd55dc1dff2371680d66f735b，唯一写入本目录。固定七件STAGE1-FROZEN.json SHA22b6bc0ab4a97638e3642f9721342b8cc4e98e76b9692609db382644e713fc6e，逐成员原字节全部核对。

接受两份固定稿02-W-strict-support.md、03-r2-saturation.md中的最小身份、两个见证及h局部化消费者。03的一般r=0曲线/gcd解释及其它消元未签，旧签件未覆盖或改写。无Lean、CI、安装、提交或新颖性认证。

## 1. W严格性见证：接受

独立从MEMBERS读取并核hash的六个完整原件，使用完整P5,V4,V3,V2,V1,V0,N,K,D及前轮已接受W。取A=Q[t]/q(t)，q为固定九次非恒定多项式，u=t、y=2、r为证书所列有理八次多项式。

独立标准库Fraction商多项式运算，直接验证六式全部0、N=K=0，W及r/D/u/u−1/E的每份明确逆元乘回1。A非零，因为deg q=9，q不能整除1；不需要q不可约或平方自由。若W^m∈J，则其像为0，但W的像是单位，矛盾。故W∉sqrt(J)，从而W∉J且J严格包含于(J,W)。任取q的复根，W逆元身份也给实际复点W≠0，所以普通复零集严格缩小。

该整个见证族N=K=0，在原h=B0DNK允许域外。前轮N W成员身份仍使h局部化后J与(J,W)相等；严格性没有证明合法域空或原题新增删域。

## 2. 新r²全整数身份：接受

Z/M/B1/Jcal完整系数支持无重复、指数非负、整数系数；独立原件解析和Python整数字典乘法逐系数实核

    r²u²y² Z = −Jcal² V0 − (Jcal M+r B1)P5。

Jcal另核为u²+uy²−3uy+y。Z1744项、总次39、多重次数(18,17,7)、最大整数系数41bits与数据完全一致。不是采样点或模数重构。完整结果在 [independent-result.json](independent-result.json)。

故全局Z∈J:(r²u²y²)。h=B0DNK中r/u/y本来均为单位，乘子g=r²u²y²的显式逆元为[(u−1)(y−1)DNK]²/h²。与已接受W关系合并得

    J Q[u,y,r,1/h]=(J,W,Z) Q[u,y,r,1/h]。

未除Jcal，Jcal=0保留；没有新门或统一首一七次声明。

## 3. Z再次严格收缩见证：接受

独立在Q[t]/(t²+1)，u=t、y2、r0，直接核六式与W全0，Z=402192+187056t，且给定(931−433t)/455436000乘回1。N=12+6t、K=−6+12t、D=12t的全部值及逆元均直接验证。

非零商环中Z为单位而J/W为0，故Z∉sqrt(J,W)，再次严格收缩普通复零集，且理想(J,W)严格包含于(J,W,Z)。N/K/D非零但r0，因此该见证仍只有r门失败，是门外支撑；不计合法规范点或原(n,j)删除。

## 4. 独立路径与未覆盖

[独立程序](independent_verify.py) 不调用作者verify_stage1.py，也不用SymPy：全局身份是整数稀疏字典，两个商环是标准库Fraction乘法/长除。共21份完整值及10份单位身份实际通过，约0.236秒，日志 [independent-run.log](independent-run.log)，exit0；原六件成员SHA逐个实核。

未接受03§3一般r0/F0曲线删除、B9其它边界、完整未饱和支撑分类、UNIT/h幂成员、全部合法点或原输入界、计算提速、COVER/R7减少。原恢复门、完整素数幂及原a/工作底/指数/n/j仍开放。
