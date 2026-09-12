# 实际参数、缩放与率公式

证据等级：纸面推导与源码对齐。数值端点由 review.py 的整数/有理运算检查；本文件没有声明新的 Lean 接受结果。

## 1. 真实对象和两步 factorial 身份

令 c>d≥1，m≥1，δ∈{0,1}，u=d m−δ，v=(c−d)m+δ−1，f=floor(v/2)。实际

    Dδ(m)=rationalDivisor(u,v)=(u+f)! f!/(u! v!).

它可为非整数。已验 RationalDivisor.Content 给 qContent(u,v,u)/Dδ(m) 为正整数及 qContent≥Dδ(m)，不是断言 Dδ(m) 自身为整数。

记 r=c−d。对固定 δ、同一 m 的奇偶轨道，m→m+2 给 u→u+2d，v→v+2r，f→f+r，因此

    Dδ(m+2)/Dδ(m)
      = [∏(i=1..c+d)(u+f+i)] [∏(i=1..r)(f+i)]
        /([∏(i=1..2d)(u+i)] [∏(i=1..2r)(v+i)]).

所有阶乘参数非负且分母正；没有对 floor 或自然数减法越界作近似。每轨道最高次相同，令

    B=(c+d)^(c+d)/(d^(2d) r^r),
    R²=B/4^c,    γD=log R=(log B)/2−c log2.

这是真实每 m 率。两步比趋于 R²，每条奇偶正序列由最终上下几何夹逼得到 log Dδ(m)/m→log R；有限的起点和 δ 位移不影响极限。该论证可用正有理函数比与初等幂夹逼完成，不需要把有限样本外推。

## 2. 核与精确驻点

源码 Growth.Affine 和 ActualKernel 定义

    qCore(x)=x^r(1−x)^d(1−(1−z)x)^d,
    eCore(x)=x^d(1−x)^d(1−zx)^r,
    z=Dseed/(aP),    0<z<d/c<1.

固定权重是

    qWeightδ=x^(r−1+δ)(1−x)^(d−δ)(1−(1−z)x)^(d−δ),
    eWeightδ=x^(d−δ)(1−x)^(d−δ)(1−zx)^(r−1+δ).

实际 Kernel=Weightδ Core^(m−1)。每个权重在内点严格正。两个 core 在边界为 0，其对数在 (0,1) 严格凹。导数清去正分母后分别给

    (c+d)(1−z)x²−c(2−z)x+r=0,
    (c+d)z x²−(2d+c z)x+d=0.

写 t=d/c，S=sqrt(z²+4t²(1−z))，唯一最大点为

    xQ=2(1−t)/(2−z+S),
    xE=2t/(2t+z+S).

定义 λQ=qCore(xQ)，λE=eCore(xE)，Qbase=B λQ，Ebase=B λE。
这与旧源的 mathcalQ^d、mathcalE^d 相同：其 alpha^d=B，驻点只是有理化后的同一根。固定 factorial 前因子的每 m 率为 B；正核积分的每 m 率为各自最大值，所以 δ 固定常数、m 的多项式因子不会改变 Qbase/Ebase 的指数率。此处没有给出新统一有限 m 上界。

## 3. a,b,Dseed 的实际 Hom 缩放

每个种子 P=p^k0，Q=q^l0 满足 aP−bQ=Dseed>0。置 y=aP，z=Dseed/y，u+v+1=cm。已验真实归一化 Hom 恒等式为

    y^(cm) pNorm−(bQ)^(cm) qNorm
      = y^v Dseed^(2u+1) Eδ(z)/Gδ.

两个真实整数取 Uδ=a^(cm)pNorm、Vδ=b^(cm)qNorm，于是

    P^(cm)Uδ−Q^(cm)Vδ=Rδ,
    Rδ=y^v Dseed^(2u+1)Eδ(z)/Gδ.

同时 |qNorm|=y^u |Qδ(z)|/Gδ。这里 Gδ=actual qContent(u,v,u)；δ0 与 δ1 使用各自的 G，不能混合替换。

若实际窗口 Np=P^(cm)X、Nq=Q^(cm)Z，带符号差 η=Np−Nq 可正、负、零，非退化邻项给两 δ 中至少一行整数 Uδ Z−Vδ X 非零。由

    P^(cm)Q^(cm)(Uδ Z−Vδ X)=Rδ Nq−Q^(cm)Vδ η

及 Nq≤2Y、|η|≤24，可用的充分矛盾证书是两 δ 都满足

    2Y * y^v Dseed^(2u+1)|Eδ(z)|/[P^(cm)Q^(cm)Gδ]
      +24 * b^(cm)y^u |Qδ(z)|/[P^(cm)Gδ] <1.

此式保持分别清分母的实际整数结构；没有把 pNorm/qNorm 的有理求值直接当作整数。上式只取绝对值，因此 η=0 也保留；并未额外声称这个充分估计对实际 η=0 是最紧界。

将 m 指数分离：E 项的固定 δ 因子为

    y^(δ−1) Dseed^(1−2δ),

即 δ0 为 Dseed/y、δ1 为 1/Dseed；Q 项固定 δ 因子为 y^(−δ)，即 1 与 1/y。两 δ 的每 m 基数分别为

    AE = P^d Q^c exp(γ) / [a^r Dseed^(2d) Ebase],
    AQ = P^r exp(γ) / [a^d b^c Qbase].

因此 b 的 cm 幂必须出现在 Q 项；Dseed 的 2dm 幂必须出现在 E 项。E 的 b 依赖已通过 z 和种子等式体现，不应再额外乘一个 b 因子。Dseed=3,7,4 的原行都按此完整公式检查。

## 4. 共同 m 容量和临界率

原边失败给两个严格小余因子界。现有 Capacity 结构以纯整数幂条件

    P^(1000 c m)≤Y^(1000−wp),
    Q^(1000 c m)≤Y^(1000−wq)

保证足够的实际 p、q 指数提取。用对数只描述渐近容量，令

    κ=min((1−wp/1000)/(c logP),(1−wq/1000)/(c logQ)).

共同可保证的 m 至多 κ logY，取最大 m 的整数误差是固定 O(1)。若 T=log AE>0，则 E 项中 Y 的最好线性指数由 1−κT 决定。为这套统一充分界需

    log AQ>0,     κT>1.

令

    e0=d logP+c logQ−r loga−2d logDseed−logEbase,
    q0=r logP−d loga−c logb−logQbase,
    γE=1/κ−e0,    γQ=−q0,    γmin=max(γE,γQ).

严格正余量要求 γ>γmin。每条原配置用 γ=0 的同程序基线检查：提高 γ 后 logAQ 与 κT−1 都严格增加。程序绝不把 γ 当作 L 的底数；若以 G≥L^(dm) 输入，必须 γ=d log L。

## 5. ProC 的可行接口与仍缺前置

R2 纸面 N=C2(em,dm,fm) 的第 p^h 层指数为

    [(em mod p^h)+(dm mod p^h)+(fm mod p^h)≥2p^h+1].

对本次 diagonal e=d，f=c−d，它逐层给 N|Qδ 的每个整数系数，两 δ 使用同一 N。每层下界针对同一个任意系数；不能交换 min 与求和。本次只审查已有纸面来源及参数覆盖，没有形式化或枚举新素数乘积。

R2 的双缺陷商界给 Gδ1/N | d m；它证明 N 与 Gδ1 只差至多一个线性因子，但不提供 Gδ1 的有效指数下界。旧原参数 BFT L1 若被采用且完成证明，可给 N≥L1^(dm)/(dm)。原 L1 率八条都足够的精确检查仅说明这项强输入的用途，绝不代表它已 Lean 接受。

六份 R2 已供应阈值依赖旧共同素数积/有限块/theta 尾部，且参数不匹配本次四个负率族。因此最低剩余实质义务是这四族的有效 N 下界；公因子存在本身并不清除负率。
