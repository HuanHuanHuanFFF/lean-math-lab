# A/E1 候选联合几何必要条件

状态：纸面候选，待具名独立审读；不宣告 E1 排空。固定前置见 01-route-checkpoint.md 与主 run notes/a/01..07。目标是将唯一非平衡因子 H 与同一 G 的整个真实商联立，而不是只统计各因子费用。

令 Gbar 为剥尽六条源竖线后的同一 G，E=1，h=deg_X Gbar。唯一非平衡可载因子 H 满足 q=deg_X H，D(H)=2q+1，出现一次。写 R=Gbar/H，s=h−q。R 非零、全部因子平衡，故 D(R)=2s；其 X 首项为非零常数，可按该常数归一。H 与 R 互素；不要求 R 可载、不可约或在原 NC9 点取零。

## 1. 非平衡 H 自动绝对不可约

一般事实：若 Q-不可约多项式 F 的 X 次数为 q、加权次数为 D，且 gcd(q,D)=1，则 F 绝对不可约。特征零下，所有绝对不可约因子由 Galois 群传递置换，因而有相同 X 次数 q0 和相同加权次数 D0。若其个数为 d，则 q=d q0，D=d D0，故 d=1。本例 D=2q+1，自动互素。此论证不能直接移植到平衡因子。

## 2. 真实商的统一交数约束

非中心源 P_(r,a)，令 L=max(OFF_(r,a)−v_r,0)，m=ord_P(H)。R 的普通阶至少 max(L−m,0)，因此该点局部交数至少 m max(L−m,0)。

中心源采用 u=N−r，t=X−a²−a u。令 H 普通阶 m、权(1,2)阶 w，kappa=2m−w，0≤kappa≤m。令

    W=max(DIAG_r−v_r−w,0).

R 的权阶至少 W。若 M 为其普通阶，则 M≥ceil(W/2)。在 t=u z 图中，H 严格变换在指定无穷近点的普通阶恰 w−m；R 严格变换的普通阶至少 max(W−M,0)。两次局部交数分解给

    I_P(H,R) ≥ m M +(w−m) max(W−M,0)
               ≥ m W−kappa floor(W/2).

最后一步对 M≥ceil(W/2) 的整数完全最小化：M≤W 时表达式=(w−m)W+kappa M，在最小 M 取最小值；M≥W 时为mM≥mW。因此无需引入商中心普通阶变量，也没有把中心权阶误当普通阶。

令

    J_v(H)=sum_off m_P max(OFF_P−v_r−m_P,0)
            +sum_center [m_r W_r−kappa_r floor(W_r/2)].

则同一 G 中的任何上述 H 必满足

    J_v(H) ≤ (2q+1)(h−q).                    (J)

证明总上界：R 是 X 首一，Res_X(H,R) 非零。由系数次数 deg_N [X^i]H≤2q+1−2i、deg_N [X^j]R≤2s−2j 及结式的双齐次性，其 N 次数≤(2q+1)s。每个有限源的局部交数都计入相应 N=r 的结式阶；所有额外有限交点只占用剩余非负次数。故源交数之和不超过此上界。R 的重复平衡因子仍按重数计入结式，论证不假设 R 平方自由。

这个条件保留固定状态的 v 和完整21源；仅知道费用 c 时不可代入别的 H 源型或别的状态。

## 3. 同一 H 的亏格必要条件

可在 Hirzebruch 曲面 F_2 上紧化 H。以负截面 C0、纤维 f 记 C0²=−2，C0.f=1，f²=0，K=−2C0−4f。多项式系数的次数界给闭包类

    [H]=q C0+(2q+1)f.

无额外无穷纤维成分，因为加权次数恰2q+1；无额外C0成分，因为 X 次数恰q。故 H.C0=1，且此唯一交点是Q有理光滑点（首项系数在基底上的一次齐次化给它）。伴随公式算得 p_a(H)=q(q−1)。由§1绝对不可约，归一化亏格非负。

各非中心源的普通吹起至少扣除 binom(m,2)；中心源再在指定无穷近点扣除 binom(w−m,2)。于是

    sum_off binom(m_P,2)
      +sum_center [binom(m_r,2)+binom(w_r−m_r,2)] ≤ q(q−1).   (G)

这是对 epsilon1 的公式；平衡情况下右端为(q−1)²，不应混用。它不要求源是唯一奇点，遗漏其它奇点仅放松下界。

局部吹起交数标准公式的来源核对：Jana Chalmovianska / Pavel Chalmoviansky, Computing local intersection multiplicity of plane curves via blowup (2019), https://arxiv.org/abs/1905.00701。伴随公式与光滑曲面的交数规则可参见 https://math.umd.edu/~pbrosnan/notes/Surfaces/sect0016.html；本节F2类、K和数值由上面逐项计算，尚待本轮独立语义审查。

## 4. 可否证测试和边界

完整 E1 候选须同时满足 q、21个源m/w、z≥14、各行Delta/kappa、九条源线交数、(G)、(J)、完整系数jet和真实商核。计划先对低q作廉价几何诊断，检验(J)/(G)是否已经自动矛盾；即使存在整数源型也仅说明这些必要条件未排除，不能称有实际H或G。

预期若(J)排除全部58态内全部允许源型，可统一排E1；目前尚未取得这种穷尽证明。原n/j/g、模板指数与完整粗支持/指数仍无界，COVER7与R7不变。该接口是纸面新候选，不是Lean或原题闭合。

