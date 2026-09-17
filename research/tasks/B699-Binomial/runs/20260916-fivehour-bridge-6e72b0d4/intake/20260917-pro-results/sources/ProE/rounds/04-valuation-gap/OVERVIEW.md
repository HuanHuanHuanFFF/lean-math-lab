# B699 Pro E：下一轮单文件接续入口

更新：2026-09-16。对应本包冻结输入和输出，不代表 GitHub 或其他会话的实时新交付。

## 原题与当前状态

∀自然数 1≤i<j≤floor(n/2)，存在同一个 p≥i 同除 binom(n,i)、binom(n,j)。本轮只研究 i=3。完整 i3 未闭合，R7={3,4,5,6,7,8,9} 不变。

**本轮主定理 VG8：** NC3(n,j) ⇒ v2(n)≥4v2(j)+9。全部合法、违反此必要条件的数对都已闭合，n、j 无上界。作者纸面证明 + 完备整数证书 + 同作者第二实现；未 Lean、未独立研究者审稿。

## 实际输入与证明依赖

输入：当前会话 B699-ProE-three-allocations-20260916.zip，SHA256 9d40a01c80ff1da846bc0485ffc3d95d21b9f415fc0b8a52abcc7e81b99dceb8。只读必要证明及历史输入，未刷新/修改远端。

旧 THREE、t>100000、C≥423、ω(t)≥2 保持旧交付等级。VG8 的正向证明不使用它们，也不使用出版椭圆整点表。所需前置在本轮 PROOFS.md §1自含重建；原字节位于 sources/。没有全历史覆盖差集/首创性审计。

## 精确接口

NC3 下置 k=n−j, g=gcd(n,j), α=n/g=c2^s, β=j/g, γ=k/g，其中 c=1或3，s≥3，c=3要求v3(n)=1。β、γ奇，j<n/2。

λ=3 iff v3(n−1)=1，否则1；μ=3 iff v3((n−2)/2)=1，否则1；N=(n−1)/λ，K=(n−2)/(2μ)。N,K互素奇数，均与g互素；λμ≤3。

N|j(j−1)，K|j(j−1)(j−2)。令 H=gcd(K,j−1), C=K/H。完整幂分配给

    u=βγ/(NC) 是正奇整数，t=Cu；
    z=(j−1)(k−1)/(NH²) 是正整数；
    Cu g²−zH²=λ，n=2μCH+2；
    g⁴u²z≤λ³μ²n⁴/[16(n−1)³]；g⁴<3n；t≡λ mod8.

令 g=m2^e，m奇，r=s−3e=v2(n)−4v2(j)。反设r≤8时 m³<3c2^r。

## VG8闭合机制

e≥2：乘积界与z模8下界强迫m=1；故 c1时r≥−1，c3时r≥−3。令 n0=c2^(8+r)，

    u²z≤floor[λ³μ² c2^r/16 · (n0/(n0−1))³]；
    z≡−λ³μ²u² mod16；gcd(u,z)|λ；
    c3⇒3|z；λ3⇒(3|u iff3|z).

λ、μ由c2^(4e+r) mod9决定，只依赖e mod3。以上完整有限分类只剩37种(c,r,λ,μ,u,z)。令Y=4^e，它们必须满足

    μzH³+μλH=uc2^(r−1)Y³−uY.

37种全部由实际全指数模证书排除：27种周期60、8种周期180、2种周期360，模数≤673。该证书没有任何未覆盖的允许指数类。

e=0,1：m³<3c2^r和3−3e≤r≤8给72个参数行，恢复13519个原始数对，全部有直接共同奇素数；第一窗口的12个末端也全部被第二窗口排除。

所以r≤8不存在，VG8成立。幂次分母 d4=n/gcd(n,j⁴)=c2^max(r,0)，故剩余c1时d4≥512、c3时d4≥1536。

## 复现与冻结输出

正文 PROOFS.md；摘要 REPORT.md；来源 SOURCE_ADOPTION.md；失败路线 notes/FAILURES_AND_DECISIONS.md。

    python3 -S -B scripts/build_certificate.py --output /tmp/b699-vg8/certificate.json
    python3 -S -B scripts/verify_certificate.py --certificate /tmp/b699-vg8/certificate.json --output /tmp/b699-vg8/acceptance.json

生成器和第二检查器不互相导入。冻结证书 verification/VALUATION_CERTIFICATE.json，验收 verification/ACCEPTANCE.json；8种损坏证书拒绝。上述 --output 保持历史输出不被覆盖。

## 下一轮的真实缺口

最初ω(t)=2目标尚未成功。固定两个端部素数仍有无界的支持、指数和同一二幂分母，不能把改写成因子表算成排除。

剩余r≥9、t,C、粗素数支持及指数均仍无界。本轮没有一般有限化；不能以新增有限系数个数计算完成率。

最值得验证：能否将L/R的额外算术加入乘积界，使r或u²z有更一般控制，或找到保持完整NC输入的下降。r≤9尚未尝试；直接升一档只缩小另一个估值条带，未消去核心无界参数。无需重跑旧139候选、已闭合缺位分支或本轮未修改的完整证据。
