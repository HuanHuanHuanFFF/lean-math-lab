# ProB 2026-09-19 行政接续摘要

本文件只做今天 ProB 材料的来源绑定、证据分级和前沿接续，不作数学验收；没有重跑 Lean、证明、重放脚本或交付代码。阅读入口为 [ProB README](../sources/ProB/README.md)、[SESSION_SUMMARY](../sources/ProB/SESSION_SUMMARY.md)、[SESSION_HANDOFF](../sources/ProB/SESSION_HANDOFF.md)，嵌套成员的实际路径以 [MEMBERS.json](../MEMBERS.json) 的 `retained_path` 为准。昨天的同级接收摘要见 [20260918 notes/B.md](../../20260918-pro-results/notes/B.md)。

## 1. 来源、包完整性和证据边界

今天的 ProB 根包是 `B699-ProB-session-reasoning-20260919.zip`，成员表登记 SHA-256 `18e65985ea50403c9479c25bad420688784cd8a108c2577a1ecf202b8e88ce4f`、大小 `196850` bytes。整批 intake 的 [MEMBERS.json](../MEMBERS.json) 摘要为 30 个归档容器、1606 条普通成员记录（其中 374 条复用、1232 条提取）；其边界明确为“byte intake only；delivered code was not executed; no new mathematical acceptance”。根目录清单见 [ProB MANIFEST.sha256](../sources/ProB/MANIFEST.sha256)。两个阶段原始 ZIP 的清单哈希分别登记在 [global-recovery SHA256SUMS](../sources/ProB/original_zips/B699-ProB-i3-global-recovery-20260918.zip.sha256) 和 [joint-elimination SHA256SUMS](../sources/ProB/original_zips/B699-ProB-i3-joint-elimination-20260918.zip.sha256)。

阶段文件均从 `MEMBERS.json` 的 `retained_path` 读取： [global-recovery REPORT](../sources/ProB/rounds/B699-ProB-i3-global-recovery-20260918/REPORT.md)、[PROOFS](../sources/ProB/rounds/B699-ProB-i3-global-recovery-20260918/proofs/PROOFS.md)、[HANDOFF](../sources/ProB/rounds/B699-ProB-i3-global-recovery-20260918/HANDOFF.md)、[FAILURES](../sources/ProB/rounds/B699-ProB-i3-global-recovery-20260918/FAILURES.md)，以及 [joint-elimination REPORT](../sources/ProB/rounds/B699-ProB-i3-joint-elimination-20260918/REPORT.md)、[PROOFS](../sources/ProB/rounds/B699-ProB-i3-joint-elimination-20260918/proofs/PROOFS.md)、[HANDOFF](../sources/ProB/rounds/B699-ProB-i3-joint-elimination-20260918/HANDOFF.md)、[FAILURES](../sources/ProB/rounds/B699-ProB-i3-joint-elimination-20260918/FAILURES.md)。`GLOBAL_INTERFACE.md` 和 `ADOPTED_INTERFACE_TRANSCRIPTION.md` 明确是接口转录，不是旧原件字节副本；原固定来源为 `e90cd78f9115071c3cbb5a7dc1d2995a5c51e06b`，raw 保存曾因 DNS 失败，不能把转录升级为原件验收。

证据等级保持分离：两阶段的无限量词和代数推导是作者纸面证明；有限末端是同一作者的精确证书/第二实现；局部构造只说明所标注的方法边界。没有 Lean 内核验收、独立数学审读、人审、全球新颖性审计或原题反例。

## 2. 两阶段共用的原题接口和全部必要前提

报告中的 `Common3(n,j)` 是：自然数 `4≤j≤floor(n/2)` 时，存在同一个素数 `p≥3` 同时整除 `C(n,3)` 和 `C(n,j)`；`NC3` 是其完整否定，并包含 `p=3`。两阶段所有正整数变量都必须来自同一个原始 `(n,j)`，保留 `p=3`、完整素数幂和孤立一次 3。

在反设同一 `NC3` 输入时，采用的作者级必要系统是

```text
k=n-j, g=gcd(n,j), alpha=n/g=c*2^s, c∈{1,3}, s≥3;
c=3 => v3(n)=1 且 3∤g; beta=j/g、gamma=k/g 为互素奇数，j<n/2;
lambda=3 ⇔ v3(n−1)=1, mu=3 ⇔ v3((n−2)/2)=1,
其余 lambda,mu=1；只移除孤立一次3，高次3幂完整保留；
(lambda,mu)∈{(1,1),(1,3),(3,1)}, A_*=lambda^3*mu^2∈{1,9,27};
N=(n−1)/lambda, K=(n−2)/(2*mu), H=gcd(K,j−1), C=K/H;
u=j*k/(g^2*N*C), z=(j−1)(k−1)/(N*H^2), delta=(n−2*j)/(2*g*H);
u,C,H,delta 为正奇整数，x=u*g^2, epsilon=lambda*mu*H−2*x>0;
T=T_rho=(z*epsilon^2+A_*)/x>0, rho=epsilon*T，epsilon,T 为奇数;
x*C−z*H^2=lambda;
x*T−z*epsilon^2=A_*;
(lambda*mu)^2*C=4*z*x+4*z*epsilon+T;
n=2*mu*C*H+2;
z*(n−1)=lambda*(mu^2*C^2−g^2*delta^2).
```

因此 `alpha=c*2^s` 在假设 `NC3` 的必要系统中已经给出 `4|n`；它不是今天 §5.1 消费者另加的一条独立输入限制。恢复三次

```text
P_rho(Y)=rho*Y^3−2*A_*Y^2−2*A_*Y+A_*
```

和实际内容三次

```text
F(Y)=sum_{r=0}^3 C(j,r) C(k,3−r) Y^r,
Psi(Z)=Z^3 F(1−1/Z)/content(F)
```

始终分开；`P_rho` 的可约性、判别式和 `vQ0`/`u z T_rho` 的平方性都不能改写成实际 `Psi` 的命题。

## 3. 今日阶段一：joint-elimination

入口：[README](../sources/ProB/rounds/B699-ProB-i3-joint-elimination-20260918/README.md) · [REPORT](../sources/ProB/rounds/B699-ProB-i3-joint-elimination-20260918/REPORT.md) · [PROOFS](../sources/ProB/rounds/B699-ProB-i3-joint-elimination-20260918/proofs/PROOFS.md)。

### 精确增量

在同一个 `NC3` 输入上令 `sigma=rho/A_*`、`y=lambda*mu*H/epsilon`。范数与同一原始 `j` 的判别式联立得到

```text
n/2 = sigma*y^3 − 2*y^2 − 2*y + 1,
z*epsilon^2/A_* = (sigma*(y−1)−2)/2,
2*sigma^2*y^3−8*sigma*y^2+(8−5*sigma)*y+sigma+10
  = 2*(g*epsilon*delta/(lambda*mu))^2.
```

第三式仍是原始 `j` 的真实判别式。形式结式 `−sigma^5*(sigma−3)` 不能被当作两个同时为零的方程：左式恢复值是 `n/2`，右侧是非零平方量。这一轮因此没有产生新的 NC3 无限域闭合。

实际 `Psi` 的不变量仍是

```text
I=9*C*u/(c^2*lambda),
J_B=54*u*delta/(c^3*lambda*mu),
Delta=27*u^2*z/(c^4*lambda^3*mu^2),
lambda*delta^2+z*(alpha/2)^2=mu^2*u*C^3.
```

对 `p≥5`，作者推导 `v_p(gcd(I,J_B))=v_p(u)`；在两底可约模型，活动素数来自 `rho−4*A_*`，与 `M、B_*、Q0、theta` 的 `p≥5` 支持互斥。不能把活动支持换成 `rad(rho)`，也不能将 `P_rho` 和 `Psi` 的可约性互推。

### 方法边界和失败修正

第一负根族取 `d≡157 (mod 256)`、`d≡2 (mod 3)`，并逐位提升 `v17(B_*)=e`。对每个 `e≥1`，2/3/17 局部范数、矩恢复和实际 `Psi` 的 2 分裂/17 不可约局部条件可同时相容；不可约 `P_rho` 还保留 `rho=84765+91392*t` 的同类局部族。这只证明“这些局部条件必冲突”是错误方法，局部根未必来自同一个普通整数全局恢复。

CRT 产生的同一普通整数 `g,n,j` 近似例保留真实 gcd、`H`、`delta`、`alpha` 和孤立 3 检查，但 `rho` 只局部近似目标而不在 `Q` 中相等；其 `u<1` 且 `v5(C(n,3))=1`、`v5(C(n,j))=11`，已有共同素数 5。因此不是 NC3 反例，也不能证明真实 NC3 参数无界。

## 4. 今日阶段二：global-recovery

入口：[README](../sources/ProB/rounds/B699-ProB-i3-global-recovery-20260918/README.md) · [REPORT](../sources/ProB/rounds/B699-ProB-i3-global-recovery-20260918/REPORT.md) · [PROOFS](../sources/ProB/rounds/B699-ProB-i3-global-recovery-20260918/proofs/PROOFS.md)。这是今天唯一产生原题必要分支删减的阶段。

### GSB：两个可约负根族的平方型全排

额外进入的是旧作者根分类和全局普通整数恢复。两族精确为：

```text
kappa=1: d≥3 为奇数，M=d^2+2*d−2，rho=A_* d M；c=1 或3，且 c=3 只允许 A_*=1；
kappa=3: d≥5 为奇数、3∤d，M=d^2+6*d−18，A_*=27，c=1。
```

统一写 `M=d^2+2*kappa*d−2*kappa^2`、`B_*=d^2+kappa*d−3*kappa^2`、`rho/A_*=d*M/kappa^3`。令

```text
h=gcd(lambda*mu*H,epsilon)=gcd(u,lambda*mu)∈{1,3},
E=epsilon/h, W=lambda*mu*H/h, U=u/h, V=W/kappa,
W−E=2*U*g^2;
d=a*b, M=m*v, E=a*m,
gcd(a,b)=gcd(m,v)=1;
zeta=kappa^3*z*h^2/A_*∈Z_{>0},
U*g^2*b*v−zeta*a^2*m^2=kappa^3;
Q=M*V^2−(d+2*kappa)*V*E+E^2,
L0=(d*V+E)/a^3, Q0=Q/m^3,
L0*Q0=n/2=c*g*2^(s−1), Q0 为奇数，Q0|c*oddpart(g) 且 Q0≤c*g.
```

这里 `v` 是 `M` 未进入 `E` 的完整素数幂补侧。GSB 的精确声明是：在同一 `NC3` 输入的这两个可约负根族、上述真实完整酉分拆和真实 `Q0` 下，

```text
v*Q0 不是整数平方。
```

证明先得对所有负根输入有效的相对界 `32*a^12*B_*^4 < kappa^8*c^4*d^3*M^3`；只有反设 `v*Q0=r^2` 后，才由整数 `tau=S−X` 得 `0<tau<kappa*a`、`tau` 奇以及 `M | F_kappa(a,tau)^2`，进而得到 `a` 的绝对界并排空两族末端。`c=3` 没有误用 `Q0=gcd(B,n)`；GSB 只需 `Q0≤c*g`，旧 B-SPLIT 的孤立 3 修正仍保留。

有限末端的准确含义是：第一族的 `a` 绝对界后直接矛盾；第二族 `d≥9` 只剩 `a=1,tau=1` 和 9 个 `M|253^2` 候选，逐一检查 `M+27` 非平方；`d=5,7` 的非单位 `a` 另有完备分析。它们不是一般原题实例计数。

### GNS：一般 NC3 的第二范数平方型全排

不假设 `P_rho` 可约，也不使用 `d、M、B_*、Q0`。反设真实 `u*z*T_rho` 是平方，令

```text
e0=gcd(u*T_rho,z), u*T_rho=e0*f^2, z=e0*h0^2, gcd(f,h0)=1.
```

由真实第二范数得到 `e0*((f*g)^2−(h0*epsilon)^2)=A_*`，故 `e0|A_*`，并进入 `(X−Y)(X+Y)=A_*/e0∈{1,3,9,27}`。全部因子对只有 6 项；完整恢复产生 30 个范数状态，其中仅 17 项使 `H,C` 同为整数。再用同一原始 `j` 的

```text
n=2*mu*C*H+2,
delta^2=(lambda*mu^2*C^2−z*(n−1))/(lambda*g^2)
```

检查，9 项的 `delta^2` 非整数、另外 8 项为非平方整数，0 项通过。这里 `6→30→17→0` 是已证明完备的有限末端，不是“一般 i3 只剩 17 个输入”。因此作者纸面结论为

```text
任意 NC3 输入都满足 u*z*T_rho 不是整数平方。
```

### §5.1 原始整数消费者的精确前提

PROOFS §5.1 对原始合法 `n,j` 令 `k=n−j`、`J=j*k`、`D=(n−1)(n−2)`、`R1=J−n+1=(j−1)(k−1)>0`，并定义

```text
S(n,j)=R1*((n−1)*D^2 + R1*(D−4*J)^2)
     =J*R1*(D^2−8*D*R1+16*J*R1).
```

原文先在“`4≤j≤floor(n/2)` 的原始合法输入”上定义它；随后明确是在假设 `NC3`、取得第 2 节全部真实必要参数（包括 `alpha=c*2^s`，从而 `4|n`，孤立 3 的真实 `lambda,mu`，正整数 `u,z,delta,epsilon,T` 和同一原始 `j` 判别式）时使用恒等式

```text
u*z*T_rho = lambda^4*mu^2*S(n,j)
             /(g^2*H^2*(n−1)^2*D^2).
```

所以精确逻辑是：若原始合法 `(n,j)` 的 `S(n,j)` 为整数平方，则反设 `NC3` 会使 `u*z*T_rho` 成为正整数平方，违反 GNS，故该同一 `(n,j)` 满足 `Common3`。`4|n` 等是 NC3 反设下继承的必要系统，不应被漏写成“对任意整数的无条件恒等式”；也不能把 `S` 平方误说成实际 `Psi` 判别式条件或一般 i3 闭合。

## 5. 与 20260918 同级摘要的差异

昨天 [notes/B.md](../../20260918-pro-results/notes/B.md) 接收的是七轮旧结果：GAP31、BAL/rho、STRIP/EXP/RAT-HEIGHT、RECOVERY-DISC-NEG、NEG-SPLIT、ODD13 和 B-SPLIT/saturation。昨天已登记 `3<Q0<B`、`omega(M)≥2`、`omega(B)≥2`、`theta=c*B/Q0` 的相对高度，以及 `c=3` 时不能直接写 `Q0=gcd(B,n)`；但 `d、rho、delta、Q0、theta、S13(n)` 等可共同无界，`R7={3,4,5,6,7,8,9}` 不变。

今天的差异只有两点：

1. `joint-elimination` 没有把旧局部条件提升为结论，反而用同输入消元、真实 `Psi` 活动赋值和 2/3/17 无界局部相容族，修正了“结式共同零点”“局部冲突”“P_rho 与 Psi 可约性相同”等误用。
2. `global-recovery` 把全局普通整数恢复接回同一 `n,j`，新增两个必要排除：可约负根族的 `vQ0` 平方分支，及一般 NC3 的 `u z T_rho` 平方分支。两项都不改变 `R7`，也没有一般 i3 有效有限化；剩下的是对应的非平方区域。

## 6. 失败边界、仍无界参数和下一具体门检

必须保留的修正：

- GSB 的 `tau=2*m*sqrt(v*Q0)−X` 只在 `v*Q0` 为平方时是整数。准确失败例为 `kappa=1,d=3,a=1,m=1,v=13,V=3`，此时 `M=13,E=1,Q0=103`，`sqrt(5356)−73` 在 0 和 1 之间但不是整数；它没有给出真实 `g、zeta、alpha` 回传，不能当 NC3 解。
- GNS 的 `6→30→17→0` 只在反设 `u*z*T_rho` 为平方时可用；“非平方”不是已证明的存在族，也不能反向作为 NC3 判定。
- `32*a^12*B_*^4 < kappa^8*c^4*d^3*M^3` 只约束 `a` 相对 `d` 的增长；没有平方间距就没有 `d` 的一般绝对界。固定 `delta、rho、Q0、theta` 的有限化也没有消灭它们的共同增长。
- 局部根、CRT 近似、弱模型和共同素数例子都不构成原题反例；没有重做昨天已空的有限表。`P_rho`、实际 `Psi`、`Disc(P_rho)`、`Disc(Psi)`、`vQ0` 平方性和 `u z T_rho` 平方性是不同命题。

今天仍无统一界的参数包括：非平方域中的 `d、rho、delta、Q0、theta、S13(n)、n、j、g、C、H、u、z`，`M/B_*` 的完整块分配，`t3` 的粗素数支持、所有完整指数和两底交叉指数；一般不可约 `P_rho` 的全局整数恢复也未闭合。没有 Lean、独立审读、完整原题反例或新指标。

下一具体门检按 [global HANDOFF](../sources/ProB/rounds/B699-ProB-i3-global-recovery-20260918/HANDOFF.md) 执行：

1. 优先在 `vQ0` 非平方域，把全局恢复给出的
   `X^2+(3*d^2+4*kappa*d−12*kappa^2)*a^2=4*m^2*v*Q0`
   与真实 `g*epsilon*delta` 平方身份联立，寻找由普通整数恢复强制出的新整数间距或第二范数。不能把含 `sqrt(v*Q0)` 的无理差直接当成 `tau`。
2. 若该门没有产生完整指数冲突，再在一般 `u z T_rho` 非平方域把实际 `Psi` 的活动支持（只能沿 `rho−4*A_*` 的完整赋值）接回 `u,z` 和同一原始 `j`，寻找两底交叉指数界；不能把 `v/Q0` 或 `B_*` 支持冒充 `u` 支持。

首个可否证检查是：候选必须同时通过真实 `Q0` 饱和/孤立 3 修正、完整范数 `U*g^2*b*v−zeta*a^2*m^2=kappa^3`、`W−E=2*U*g^2` 和同一 `j` 的 `delta` 判别式；若只叠加旧的相对界，`d` 的共同增长仍未被消灭。无需扩大固定二次域、类群表或重复昨天的有限扫描。
