# REG3新N-colon成员：独立最小验收

核验者/root/verify_reg3_module，Complex established target，gpt-6.1-sol/xhigh；固定基线a3090b6ce85e45137a1b9909346858d8a262ec8a。唯一写入本目录，无Lean、CI、安装、提交或旧签件修改。接受notes/b/02-exact-N-colon-member.md中的完整身份及原合法域等价性；不接受B9成分解释、模扫描或普通消元诊断。

固定one-step-N-colon.json为401965 bytes，SHA9151546b31ec8f2e6882acf142364c234226ce55eefee12ee70a151fa1d2d45f。独立从MEMBERS/retained_path读取B06完整原件，六件逐个核原字节SHA；使用完整N,V1,V0，未以概述截取高项。W/C0/C1分别11536/541/604项，支持无重复、全部非负整数指数与非零整数系数，W总次数82、多重次数(39,42,8)、最大系数81bits。

独立 [independent_verify.py](independent_verify.py) 不运行作者checker、也不使用SymPy：用另一原件解析器及Python整数稀疏字典乘法逐项展开，完整实核

    N W = (u−1)[2 C0 V1 − y(u−1)(y−1)² C1 V0]。

左右各15249个非零单项式，所有整数系数完全相等；不是模重构、有限点代入或几份余式的推测。结果 [independent-result.json](independent-result.json)，日志 [independent-run.log](independent-run.log)，exit0，约0.57秒。

令J=(P5,V4,V3,V2,V1,V0)。右边显式为J的多项式线性组合，故全局N W∈J、W∈J:N。原h=B0DNK，局部化Q[u,y,r,1/h]中N是单位，显式逆元B0DK/h；因此W=(B0DK/h)(NW)∈J局部化，给准确理想等式

    J Q[u,y,r,1/h]=(J,W) Q[u,y,r,1/h]。

所有原六式及r/D/N/K/B0基本门保留，不添加新非零假设。W的r次8，加入九维商表示无需r9降阶。没有证明W不在原J，因此不宣称这个新生成关系独立或严格缩小已有理想；也没有证明h幂成员、UNIT、合法域为空或完整允许点表。

作者B9一般边界的发现说明不是(★)验收前置，本次不重签它，也不证明加入W后的消元更快。原a、工作底/完整指数、n/j仍无界，原恢复门全部保留，R7不变，无新增原(n,j)净删域认证。无Lean或新颖性声明。
